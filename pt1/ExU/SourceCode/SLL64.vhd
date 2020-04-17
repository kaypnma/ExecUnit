library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

Entity SLL64 is
	Generic ( N : natural := 64 );
	Port ( X : in std_logic_vector( N-1 downto 0 );
		Y : out std_logic_vector( N-1 downto 0 );
		ShiftCount : in unsigned( integer(ceil(log2(real(N))))-1 downto 0 ) );
End Entity SLL64;

architecture rtl of SLL64 is
	signal sll1, sll2, sll3: std_logic_vector(N-1 downto 0); 
begin
-- ShiftCount for each stage 
stage1: --0, 16, 32, 48                                                                                            
	with ShiftCount(5 downto 4) select 
		sll1 <= X(15 downto 0) & (N-17 downto 0 => '0') when "11",  --48 bits
			X(31 downto 0) & (N-33 downto 0 => '0') when "10",  --32 bits
			X(47 downto 0) & (N-49 downto 0 => '0') when "01", -- 16 bits 
			X when others; 
			
--stage2: --0, 4, 8, 12
	with ShiftCount(3 downto 2) select 
		sll2 <= sll1(51 downto 0) & (N-53 downto 0 => '0') when "11", --12 bits
			sll1(55 downto 0) & (N-57 downto 0 => '0') when "10", -- 8 bits
			sll1(59 downto 0) & (N-61 downto 0 => '0') when "01", -- 4 bits
			sll1 when others; 

--stage3: --0, 1, 2, 3
	with ShiftCount(1 downto 0) select 
		sll3 <= sll2(60 downto 0) & (N-62 downto 0 => '0') when "11", -- 3 bits
			sll2(61 downto 0) & (N-63 downto 0 => '0') when "10", -- 2 bits
			sll2(62 downto 0) & (N-64 => '0') when "01", -- 1 bit
			sll2 when others; 
			
	Y <= sll3; 
			
end architecture rtl;