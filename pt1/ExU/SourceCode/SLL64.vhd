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
signal S1: std_logic_vector(3 downto 0);
signal S2: std_logic_vector(3 downto 0);
signal S3: std_logic_vector(3 downto 0);
signal S4: std_logic_vector(3 downto 0);
signal L1: std_logic_vector(3 downto 0);
signal L2: std_logic_vector(3 downto 0);
signal L3: std_logic_vector(3 downto 0);
signal L4: std_logic_vector(3 downto 0);

component mux
      port(input0    : in  std_logic_vector (3 downto 0);
           input1    : in  std_logic_vector (3 downto 0);
           ctl    : in  std_logic;
           result : out std_logic_vector (3 downto 0));
end component;

begin
  a1:  S1 <= X(2 downto 0) & '0'; 
  a2:  mux port map (input0=>X(3 downto 0), input1=>S1, ctl=>ShiftCount(0), result=>L1);
  a3:  S2 <= L1(1 downto 0) & "00"; 
  a4:  mux port map (input0=>L1, input1=>S2, ctl=>ShiftCount(1), result=>L2);
  a5:  S3 <= X(6 downto 4) & '0'; 
  a6:  mux port map (input0=>X(7 downto 4), input1=>S3, ctl=>ShiftCount(2), result=>L3);
  a7:  S4 <= L3(5 downto 4) & "00"; 
  a8:  mux port map (input0=>L3, input1=>S4, ctl=>ShiftCount(3), result=>L4);

end architecture rtl;
