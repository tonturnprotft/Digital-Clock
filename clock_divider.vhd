library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clock_divider is
    Port (
        clk_in  : in  STD_LOGIC;
        reset   : in  STD_LOGIC;
        clk_out : out STD_LOGIC;
		  blink   : out STD_LOGIC
    );
end clock_divider;

architecture Behavioral of clock_divider is
    signal counter     : unsigned(24 downto 0) := (others => '0');
    signal clk_divided : STD_LOGIC := '0';
	 signal blink_reg   : STD_LOGIC := '0';
begin
    process(clk_in, reset)
    begin
        if reset = '0' then
            counter     <= (others => '0');
            clk_divided <= '0';
        elsif rising_edge(clk_in) then
            if counter = 24_999_999 then  -- Adjust based on your input clock frequency
                counter     <= (others => '0');
                clk_divided <= not clk_divided;
					 blink_reg   <= not blink_reg;
					 
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    -- Assign internal signal to output port
    clk_out <= clk_divided;
	 blink   <=  blink_reg;
end Behavioral;