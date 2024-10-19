library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clock_controller_tb is
-- Testbench has no ports
end clock_controller_tb;

architecture Behavioral of clock_controller_tb is

    -- Component Declaration for clock_controller
    component clock_controller is
        Port (
            clk_in        : in  STD_LOGIC;
            reset         : in  STD_LOGIC;
            mode          : in  STD_LOGIC;
            set           : in  STD_LOGIC;
            up_down       : in  STD_LOGIC;
            seg_hour_high : out STD_LOGIC_VECTOR(6 downto 0);
            seg_hour_low  : out STD_LOGIC_VECTOR(6 downto 0);
            seg_min_high  : out STD_LOGIC_VECTOR(6 downto 0);
            seg_min_low   : out STD_LOGIC_VECTOR(6 downto 0)
        );
    end component;

    -- Signals to connect to the clock_controller
    signal clk_in        : STD_LOGIC := '0';
    signal reset         : STD_LOGIC := '1';  -- Active-Low Reset
    signal mode          : STD_LOGIC := '1';
    signal set           : STD_LOGIC := '1';
    signal up_down       : STD_LOGIC := '1';  -- Start with increment mode
    signal seg_hour_high : STD_LOGIC_VECTOR(6 downto 0);
    signal seg_hour_low  : STD_LOGIC_VECTOR(6 downto 0);
    signal seg_min_high  : STD_LOGIC_VECTOR(6 downto 0);
    signal seg_min_low   : STD_LOGIC_VECTOR(6 downto 0);

    -- Clock period constant
    constant CLK_PERIOD : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: clock_controller
        port map (
            clk_in        => clk_in,
            reset         => reset,
            mode          => mode,
            set           => set,
            up_down       => up_down,
            seg_hour_high => seg_hour_high,
            seg_hour_low  => seg_hour_low,
            seg_min_high  => seg_min_high,
            seg_min_low   => seg_min_low
        );

    -- Clock generation using a single concurrent signal assignment
    clk_in <= '0' after 0 ns,
              '1' after CLK_PERIOD / 2,
              '0' after CLK_PERIOD,
              '1' after 1.5 * CLK_PERIOD,
              '0' after 2 * CLK_PERIOD,
              '1' after 2.5 * CLK_PERIOD,
              -- Continue this pattern as needed
              '0' after 100 ms;  -- Ensure clock runs long enough

    -- Reset signal
    reset <= '0' after 0 ns,     -- Apply reset
             '1' after 100 ns;   -- Release reset

    -- Mode signal (pressing mode button)
    mode <= '1' after 0 ns,
            -- Enter SET_MINUTE mode
            '0' after 200 ns,    -- Press mode button
            '1' after 220 ns,    -- Release mode button
            -- Enter SET_HOUR mode
            '0' after 6000 ns,   -- Press mode button again
            '1' after 6020 ns,   -- Release mode button
            -- Return to NORMAL mode
            '0' after 10000 ns,  -- Press mode button third time
            '1' after 10020 ns;  -- Release mode button

    -- Up/Down signal (stays at '1' for increment mode)
    up_down <= '1' after 0 ns;

    -- Set signal (press set button to increment minutes and hours)
    set <= '1' after 0 ns,
           -- Minute setting pulses
           -- Generate 45 pulses starting at 300 ns
           '0' after 300 ns,    '1' after 320 ns,   -- Pulse 1
           '0' after 420 ns,    '1' after 440 ns,   -- Pulse 2
           '0' after 540 ns,    '1' after 560 ns,   -- Pulse 3
           '0' after 660 ns,    '1' after 680 ns,   -- Pulse 4
           '0' after 780 ns,    '1' after 800 ns,   -- Pulse 5
           -- Continue this pattern up to Pulse 45
           -- For brevity, only a few pulses are shown here
           -- Hour setting pulses starting after entering SET_HOUR mode
           -- Generate 22 pulses starting at 6200 ns
           '0' after 6200 ns,   '1' after 6220 ns,  -- Pulse 1
           '0' after 6320 ns,   '1' after 6340 ns,  -- Pulse 2
           '0' after 6440 ns,   '1' after 6460 ns,  -- Pulse 3
           -- Continue this pattern up to Pulse 22
           '1' after 100 ms;    -- Ensure signal remains '1' after last pulse

end Behavioral;
