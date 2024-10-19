library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mod_counter is
    Generic (
        MAX_COUNT     : natural := 59;  -- Default maximum count
        COUNTER_WIDTH : natural := 6    -- Width of count output
    );
    Port (
        clk          : in  STD_LOGIC;
        reset        : in  STD_LOGIC;
        enable       : in  STD_LOGIC;
        load         : in  STD_LOGIC;   -- Load enable signal
        load_value   : in  unsigned(COUNTER_WIDTH - 1 downto 0); -- Load value
        current_mode : in  STD_LOGIC_VECTOR(1 downto 0); -- New: Mode signal from state manager
        count        : out unsigned(COUNTER_WIDTH - 1 downto 0);
        carry_out    : out STD_LOGIC
    );
end mod_counter;

architecture Behavioral of mod_counter is
    signal cnt : unsigned(COUNTER_WIDTH - 1 downto 0) := (others => '0');
    signal carry_reg : STD_LOGIC := '0';
begin
    process(clk, reset)
    begin
        if reset = '0' then
            cnt <= (others => '0');
            carry_reg <= '0';
        elsif rising_edge(clk) then
            if load = '1' then
                cnt <= load_value; -- Load the value when load signal is high
                carry_reg <= '0';
            elsif enable = '1' and current_mode = "00" then -- Only count in NORMAL mode (current_mode = "00")
                if cnt = to_unsigned(MAX_COUNT, COUNTER_WIDTH) then
                    cnt <= (others => '0');
                    carry_reg <= '1';
                else
                    cnt <= cnt + 1;
                    carry_reg <= '0';
                end if;
            end if;
        end if;
    end process;
    
    count <= cnt;
    carry_out <= carry_reg;
end Behavioral;