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
signal S1: std_logic_vector(63 downto 0);
signal S2: std_logic_vector(63 downto 0);
signal S3: std_logic_vector(63 downto 0);
signal S4: std_logic_vector(63 downto 0);
signal S5: std_logic_vector(63 downto 0);
signal S6: std_logic_vector(63 downto 0);
signal S7: std_logic_vector(63 downto 0);
signal S8: std_logic_vector(63 downto 0);
signal S9: std_logic_vector(63 downto 0);
signal L1: std_logic_vector(63 downto 0);
signal L2: std_logic_vector(63 downto 0);

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
  a1:  S1 <= X(31 downto 0) & "00000000000000000000000000000000"; 
  a2:  S2 <= X(47 downto 0) & "0000000000000000"; 
  a3:  S3 <= X(15 downto 0) & "000000000000000000000000000000000000000000000000"; 
  a4:  mux port map (input0=>X, input1=>S1, input2=>S2, input3=>S3, sel1=>ShiftCount(5), sel2=>ShiftCount(4), result=>L1);
  a5:  S4 <= L1(59 downto 0) & "0000"; 
  a6:  S5 <= L1(55 downto 0) & "00000000"; 
  a7:  S6 <= L1(51 downto 0) & "000000000000"; 
  a8:  mux port map (input0=>L1, input1=>S4, input2=>S5, input3=>S6, sel1=>ShiftCount(3), sel2=>ShiftCount(2), result=>L2);
  a9:  S7 <= L2(61 downto 0) & "00"; 
  a10: S8 <= L2(62 downto 0) & '0';
  a11: S9 <= L2(60 downto 0) & "000";   
  a12: mux port map (input0=>L2, input1=>S7, input2=>S8, input3=>S9, sel1=>ShiftCount(1), sel2=>ShiftCount(0), result=>Y);
end architecture rtl;