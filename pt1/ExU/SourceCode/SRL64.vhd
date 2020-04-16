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
signal S1: std_logic_vector(3 downto 0);
signal S2: std_logic_vector(3 downto 0);
signal S3: std_logic_vector(3 downto 0);
signal S4: std_logic_vector(3 downto 0);
signal R1: std_logic_vector(3 downto 0);
signal R2: std_logic_vector(3 downto 0);
signal R3: std_logic_vector(3 downto 0);
signal R4: std_logic_vector(3 downto 0);

component mux
      port(input0    : in  std_logic_vector (3 downto 0);
           input1    : in  std_logic_vector (3 downto 0);
           ctl    : in  std_logic;
           result : out std_logic_vector (3 downto 0));
end component;

begin
  a1:  S1 <= '0' & X(3 downto 1); 
  a2:  mux port map (input0=>X(3 downto 0), input1=>S1, ctl=>ShiftCount(0), result=>R1);
  a3:  S2 <= "00" & R1(3 downto 2); 
  a4:  mux port map (input0=>R1, input1=>S2, ctl=>ShiftCount(1), result=>R2);
  a5:  S3 <= '0' & X(7 downto 5); 
  a6:  mux port map (input0=>X(7 downto 4), input1=>S3, ctl=>ShiftCount(2), result=>R3);
  a7:  S4 <= "00" & R3(7 downto 6); 
  a8:  mux port map (input0=>R3, input1=>S4, ctl=>ShiftCount(3), result=>R4);

end architecture rtl;
