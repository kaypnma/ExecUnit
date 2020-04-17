library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

Entity SRA64 is
	Generic ( N : natural := 64 );
	Port ( X : in std_logic_vector( N-1 downto 0 );
		Y : out std_logic_vector( N-1 downto 0 );
		ShiftCount : in unsigned( integer(ceil(log2(real(N))))-1 downto 0 ) );
End Entity SRA64;

architecture rtl of SRA64 is
	signal sra1, sra2, sra3: std_logic_vector(N-1 downto 0); 
	signal sign : std_logic; 
begin
	sign <= X(N-1); 
stage1: --0, 16, 32, 48
	with ShiftCount(5 downto 4) select 	
		sra1 <= (N-1 downto 16 => sign) & X(N-1 downto 48) when "11",  --48 bits
			(N-1 downto 32 => sign) & X(N-1 downto 32) when "10",  --32 bits
			(N-1 downto 48 => sign) & X(N-1 downto 16) when "01", -- 16 bits 
		X when others; 
			
stage2: --0, 4, 8, 12
	with ShiftCount(3 downto 2) select 
		sra2 <= (N-1 downto 52 => sign) & sra1(N-1 downto 12) when "11",  -- 12 bits
			(N-1 downto 56 => sign) & sra1(N-1 downto 8) when "10",  -- 8 bits
			(N-1 downto 60 => sign) & sra1(N-1 downto 4) when "01", -- 4 bits 
			sra1 when others; 

stage3: --0, 1, 2, 3
	with ShiftCount(1 downto 0) select 
		sra3 <= (N-1 downto 61 => sign) & sra2(N-1 downto 3) when "11",  -- 3 bits
			(N-1 downto 62 => sign) & sra2(N-1 downto 2) when "10",  -- 2 bits
			(N-1 => sign) & sra2(N-1 downto 1) when "01", -- 1 bits 
			sra2 when others; 

	Y <= sra3; 

end architecture rtl;