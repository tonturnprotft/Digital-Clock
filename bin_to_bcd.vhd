library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bin_to_bcd is
	 Generic (
		  BIN_WIDTH : natural := 6
	);
    Port (
        bin_in  : in  unsigned(BIN_WIDTH - 1 downto 0);
        bcd_out : out unsigned(7 downto 0)  -- Two BCD digits
    );
end bin_to_bcd;

architecture Behavioral of bin_to_bcd is
begin
    process(bin_in)
        variable bcd : unsigned(7 downto 0) := (others => '0');
		  variable bin_value : integer;
    begin
        bin_value := to_integer(bin_in);
        bcd(3 downto 0) := to_unsigned(bin_value mod 10, 4);
        bcd(7 downto 4) := to_unsigned(bin_value / 10, 4);
        bcd_out <= bcd;
    end process;
end Behavioral;