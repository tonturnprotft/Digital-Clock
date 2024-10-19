library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity debounce_edge_detector is
    Port (
        clk          : in  STD_LOGIC;
        reset        : in  STD_LOGIC; -- Active-Low reset
        button       : in  STD_LOGIC; -- Noisy button input
        edge_detect  : out STD_LOGIC   -- Rising edge detected signal
    );
end debounce_edge_detector;

architecture Behavioral of debounce_edge_detector is
    signal button_sync_0 : STD_LOGIC := '1';
    signal button_sync_1 : STD_LOGIC := '1';
    signal button_prev   : STD_LOGIC := '1';
begin
    -- Synchronize button to clock domain
    process(clk, reset)
    begin
        if reset = '0' then
            button_sync_0 <= '1';
            button_sync_1 <= '1';
        elsif rising_edge(clk) then
            button_sync_0 <= button;
            button_sync_1 <= button_sync_0;
        end if;
    end process;

    -- Edge detection
    process(clk, reset)
    begin
        if reset = '0' then
            button_prev <= '1';
            edge_detect <= '0';
        elsif rising_edge(clk) then
            edge_detect <= '0';
            if button_prev = '1' and button_sync_1 = '0' then
                edge_detect <= '1';
            end if;
            button_prev <= button_sync_1;
        end if;
    end process;
end Behavioral;
