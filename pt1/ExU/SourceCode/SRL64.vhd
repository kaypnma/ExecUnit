library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

Entity SRL64 is
	Generic ( N : natural := 64 );
	Port ( X : in std_logic_vector( N-1 downto 0 );
		Y : out std_logic_vector( N-1 downto 0 );
		ShiftCount : in unsigned( integer(ceil(log2(real(N))))-1 downto 0 ) );
End Entity SRL64;

architecture rtl of SRL64 is
	signal srl1, srl2, srl3: std_logic_vector(N-1 downto 0); 
begin
-- ShiftCount for each stage 
-- determines the number of shifts i.e. N-1 downto #
stage1: --0, 16, 32, 48
	with ShiftCount(5 downto 4) select 	
		srl1 <= (N-1 downto 16 => '0') & X(N-1 downto 48) when "11",  --48 bits
			(N-1 downto 32 => '0') & X(N-1 downto 32) when "10",  --32 bits
			(N-1 downto 48 => '0') & X(N-1 downto 16) when "01", -- 16 bits 
			X when others; 
			
stage2: --0, 4, 8, 12
	with ShiftCount(3 downto 2) select 
		srl2 <= (N-1 downto 52 => '0') & srl1(N-1 downto 12) when "11",  -- 12 bits
			(N-1 downto 56 => '0') & srl1(N-1 downto 8) when "10",  -- 8 bits
			(N-1 downto 60 => '0') & srl1(N-1 downto 4) when "01", -- 4 bits 
			srl1 when others; 

stage3: --0, 1, 2, 3
	with ShiftCount(1 downto 0) select 
		srl3 <= (N-1 downto 61 => '0') & srl2(N-1 downto 3) when "11",  -- 3 bits
			(N-1 downto 62 => '0') & srl2(N-1 downto 2) when "10",  -- 2 bits
			(N-1  => '0') & srl2(N-1 downto 1) when "01", -- 1 bits 
			srl2 when others; 
	Y <= srl3; 
			
end architecture rtl;