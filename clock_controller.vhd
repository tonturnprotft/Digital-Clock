library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clock_controller is
    Port (
        clk_in        : in  STD_LOGIC;
        reset         : in  STD_LOGIC;
        mode          : in  STD_LOGIC;
        set           : in  STD_LOGIC;
        up_down       : in  STD_LOGIC;
		  sw1 			 : in  STD_LOGIC;
		  sw0 			 : in  STD_LOGIC;
		  led_out 	    : out STD_LOGIC;
        seg_hour_high : out STD_LOGIC_VECTOR(6 downto 0);
        seg_hour_low  : out STD_LOGIC_VECTOR(6 downto 0);
        seg_min_high  : out STD_LOGIC_VECTOR(6 downto 0);
        seg_min_low   : out STD_LOGIC_VECTOR(6 downto 0);
		  dp_blink_min  : out STD_LOGIC
    );
end clock_controller;

architecture Behavioral of clock_controller is

    -- State Type Definition
    type state_type is (NORMAL, SET_MINUTE, SET_HOUR);
    signal current_state : state_type := NORMAL;

    -- Clock Divider Output
    signal clk_1hz : STD_LOGIC;
	 
	 signal dp_blink: STD_LOGIC;

    -- Counters and Carry Signals
    signal sec_count  : unsigned(5 downto 0) := (others => '0');
    signal min_count  : unsigned(5 downto 0) := (others => '0');
    signal hour_count : unsigned(4 downto 0) := (others => '0');

    signal sec_carry  : STD_LOGIC;
    signal min_carry  : STD_LOGIC := '0';

    -- BCD Conversion Signals
    signal min_bcd         : unsigned(7 downto 0);
    signal hour_bcd        : unsigned(7 downto 0);
    signal min_digit_high  : unsigned(3 downto 0);
    signal min_digit_low   : unsigned(3 downto 0);
    signal hour_digit_high : unsigned(3 downto 0);
    signal hour_digit_low  : unsigned(3 downto 0);

    -- Debounced and Edge-Detected Signals
    signal mode_edge_detected : STD_LOGIC;
    signal set_edge_detected  : STD_LOGIC;
	 
	 signal sec_carry_sync1 : STD_LOGIC := '0';
	 signal sec_carry_sync2 : STD_LOGIC := '0';
	 signal sec_carry_edge  : STD_LOGIC := '0';
	 signal min_carry_sync1 : STD_LOGIC := '0';
	 signal min_carry_sync2 : STD_LOGIC := '0';
	 signal min_carry_edge  : STD_LOGIC := '0';
	 
	 -- Notification Logic
	 signal sw_setting      : STD_LOGIC_VECTOR(1 downto 0);
	 signal led_timer       : unsigned(1 downto 0) := (others => '0');
	 signal led_state       : STD_LOGIC := '0';
	 signal led_on          : STD_LOGIC := '0';
	 signal notification_triggered : STD_LOGIC := '0';
	 

begin
    process(clk_in)
	 begin
		if rising_edge(clk_in) then
			 sec_carry_sync1 <= sec_carry;
			 sec_carry_sync2 <= sec_carry_sync1;
          sec_carry_edge <= sec_carry_sync2 and not sec_carry_sync1;
      end if;
    end process;
    process(clk_in)
	 begin
		if rising_edge(clk_in) then
			 min_carry_sync1 <= min_carry;
			 min_carry_sync2 <= min_carry_sync1;
          min_carry_edge <= min_carry_sync1 and not min_carry_sync2;
      end if;
    end process;
    -- Instantiate Clock Divider
    clock_divider_inst : entity work.clock_divider
        port map (
            clk_in  => clk_in,
            reset   => reset,
            clk_out => clk_1hz,
				blink=> dp_blink
        );

    -- Debounce and Edge Detection for Mode Button
    debounce_mode : entity work.debounce_edge_detector
        port map (
            clk         => clk_in,
            reset       => reset,
            button      => mode,
            edge_detect => mode_edge_detected
        );

    -- Debounce and Edge Detection for Set Button
    debounce_set : entity work.debounce_edge_detector
        port map (
            clk         => clk_in,
            reset       => reset,
            button      => set,
            edge_detect => set_edge_detected
        );

    -- State Transition Using Debounced Edge
    process(clk_in, reset)
    begin
        if reset = '0' then
            current_state <= NORMAL;
        elsif rising_edge(clk_in) then
            if mode_edge_detected = '1' then
                case current_state is
                    when NORMAL =>
                        current_state <= SET_MINUTE;
                    when SET_MINUTE =>
                        current_state <= SET_HOUR;
                    when SET_HOUR =>
                        current_state <= NORMAL;
                    when others =>
                        current_state <= NORMAL;
                end case;
            end if;
        end if;
    end process;

    -- Seconds Counter
    sec_counter : entity work.mod_counter
        generic map (
            MAX_COUNT     => 59,
            COUNTER_WIDTH => 6
        )
        port map (
            clk          => clk_1hz,
            reset        => reset,
            enable       => '1',
            load         => '0',
            load_value   => (others => '0'),
            current_mode => "00",
            count        => sec_count,
            carry_out    => sec_carry
        );

    -- Minute Adjustment Process
    process(clk_1hz, reset)
    begin
        if reset = '0' then
            min_count <= (others => '0');
            min_carry <= '0';
        elsif rising_edge(clk_in) then
            if current_state = SET_MINUTE and set_edge_detected = '1' then
                if up_down = '1' then
                    min_count <= (min_count + 1) mod 60;
                else
                    if min_count = 0 then
                        min_count <= to_unsigned(59, min_count'length);
                    else
                        min_count <= min_count - 1;
                    end if;
                end if;
            elsif current_state = NORMAL then
                if sec_carry_edge = '1' then
                    if min_count = 59 then
                        min_count <= (others => '0');
                        min_carry <= '1';
                    else
                        min_count <= min_count + 1;
                        min_carry <= '0';
                    end if;
                end if;
            end if;
        end if;
    end process;

    -- Hour Adjustment Process
    process(clk_in, reset)
    begin
        if reset = '0' then
            hour_count <= (others => '0');
        elsif rising_edge(clk_in) then
            if current_state = SET_HOUR and set_edge_detected = '1' then
                if up_down = '1' then
                    hour_count <= (hour_count + 1) mod 24;
                else
                    if hour_count = 0 then
                        hour_count <= to_unsigned(23, hour_count'length);
                    else
                        hour_count <= hour_count - 1;
                    end if;
                end if;
            elsif current_state = NORMAL then
                if min_carry_edge = '1' then
                    if hour_count = 23 then
                        hour_count <= (others => '0');
                    else
                        hour_count <= hour_count + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;
	 -- Switch Setting Assignment
	 sw_setting <= sw1 & sw0;
    -- Notification Process
    process(clk_1hz, reset)
    begin
        if reset = '0' then
            led_state <= '0';
            led_timer <= (others => '0');
            led_on    <= '0';
        elsif rising_edge(clk_1hz) then
            -- Check if LED is currently on
				if not ((sw_setting = "01" and (min_count mod 15) = 0) or
						  (sw_setting = "10" and min_count = 0)) then
						  notification_triggered <= '0';
				end if;
				-- Check if LED is currently on
            if led_on = '1' then
                if led_timer = "011" then  -- 3 seconds elapsed
                    led_state <= '0';      -- Turn off LED
                    led_timer <= (others => '0');
                    led_on    <= '0';
						  notification_triggered <= '1'; -- Indicate notification has been sent
                else
                    led_timer <= led_timer + 1;
                end if;
            else
                -- Check for notification conditions
					 if notification_triggered = '0' then
						  case sw_setting is
							   when "01" =>  -- Every 15 minutes
									 if (min_count mod 15) = 0 then
										  led_state <= '1';  -- Turn on LED
                                led_on    <= '1';
                                led_timer <= (others => '0');
									     notification_triggered <= '1'; -- Indicate notification has been sent
                            end if;
								when "10" =>  -- Every 60 minutes
									 if min_count = 0 then
										  led_state <= '1';  -- Turn on LED
										  led_on    <= '1';
										  led_timer <= (others => '0');
										  notification_triggered <= '1'; -- Indicate notification has been sent
									 end if;
								when others =>
                        -- No notification
									  led_state <= '0';
                    end case;
                end if;
			   end if;
        end if;
    end process;

    -- Assign LED Output
    led_out <= led_state;
    
	 -- Convert Minutes to BCD
    min_bin_to_bcd : entity work.bin_to_bcd
        generic map (
            BIN_WIDTH => 6
        )
        port map (
            bin_in  => min_count,
            bcd_out => min_bcd
        );

    -- Convert Hours to BCD
    hour_bin_to_bcd : entity work.bin_to_bcd
        generic map (
            BIN_WIDTH => 5
        )
        port map (
            bin_in  => hour_count,
            bcd_out => hour_bcd
        );

    -- Split BCD into Digits
    min_digit_high <= min_bcd(7 downto 4);
    min_digit_low  <= min_bcd(3 downto 0);

    hour_digit_high <= hour_bcd(7 downto 4);
    hour_digit_low  <= hour_bcd(3 downto 0);

    -- Convert BCD Digits to 7-Segment Outputs
    -- Minutes High Digit
    min_high_bcd_to_7seg : entity work.bcd_to_7seg
        port map (
            bcd_in  => min_digit_high,
            seg_out => seg_min_high
        );

    -- Minutes Low Digit
    min_low_bcd_to_7seg : entity work.bcd_to_7seg
        port map (
            bcd_in  => min_digit_low,
            seg_out => seg_min_low
        );

    -- Hours High Digit
    hour_high_bcd_to_7seg : entity work.bcd_to_7seg
        port map (
            bcd_in  => hour_digit_high,
            seg_out => seg_hour_high
        );

    -- Hours Low Digit
    hour_low_bcd_to_7seg : entity work.bcd_to_7seg
        port map (
            bcd_in  => hour_digit_low,
            seg_out => seg_hour_low
        );
    dp_blink_min <= dp_blink;
end Behavioral;
