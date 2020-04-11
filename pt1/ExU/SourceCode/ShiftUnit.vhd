library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity ShiftUnit is
	Generic ( N : natural := 64 );
	Port ( A, B, C : in std_logic_vector( N-1 downto 0 );
	-- Output
		Y : out std_logic_vector( N-1 downto 0 );
	-- Control signals
		ShiftFN : in std_logic_vector( 1 downto 0 );
		ExtWord : in std_logic );
End Entity ShiftUnit;

architecture rtl of ShiftUnit is
begin
end architecture rtl;