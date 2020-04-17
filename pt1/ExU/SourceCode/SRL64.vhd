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
signal S1: std_logic_vector(63 downto 0);
signal S2: std_logic_vector(63 downto 0);
signal S3: std_logic_vector(63 downto 0);
signal S4: std_logic_vector(63 downto 0);
signal S5: std_logic_vector(63 downto 0);
signal S6: std_logic_vector(63 downto 0);
signal S7: std_logic_vector(63 downto 0);
signal S8: std_logic_vector(63 downto 0);
signal S9: std_logic_vector(63 downto 0);
signal R1: std_logic_vector(63 downto 0);
signal R2: std_logic_vector(63 downto 0);


component mux
      port(input0    : in  std_logic_vector (63 downto 0);
           input1    : in  std_logic_vector (63 downto 0);
	   input2    : in  std_logic_vector (63 downto 0);
	   input3    : in  std_logic_vector (63 downto 0);
           sel1    : in  std_logic;
	   sel2    : in std_logic;
           result : out std_logic_vector (63 downto 0));
end component;

begin
  a1:  S1 <= "00000000000000000000000000000000" & X(63 downto 32); 
  a2:  S2 <= "0000000000000000" & X(63 downto 16); 
  a3:  S3 <= "000000000000000000000000000000000000000000000000" & X(63 downto 48); 
  a4:  mux port map (input0=>X, input1=>S1, input2=>S2, input3=>S3, sel1=>ShiftCount(5), sel2=>ShiftCount(4), result=>R1);
  a5:  S4 <= "0000" & R1(63 downto 4); 
  a6:  S5 <= "00000000" & R1(63 downto 8); 
  a7:  S6 <= "000000000000" & R1(63 downto 12); 
  a8:  mux port map (input0=>R1, input1=>S4, input2=>S5, input3=>S6, sel1=>ShiftCount(3), sel2=>ShiftCount(2), result=>R2);
  a9:  S7 <= "00" & R2(63 downto 2); 
  a10: S8 <= '0' & R2(63 downto 1);
  a11: S9 <= "000" & R2(63 downto 3);   
  a12: mux port map (input0=>R2, input1=>S7, input2=>S8, input3=>S9, sel1=>ShiftCount(1), sel2=>ShiftCount(0), result=>Y);
end architecture rtl;
