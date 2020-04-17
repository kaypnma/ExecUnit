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
signal sbit: std_logic_vector(63 downto 0);

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
	a0: sbit <= (63 downto 1 => X(63)) & X; 
	a1:  S1 <= sbit(31 downto 0) & X(63 downto 32); 
  			a2:  S2 <= sbit(15 downto 0) & X(63 downto 16); 
			a3:  S3 <= sbit(47 downto 0) & X(63 downto 48); 
  			a4:  mux port map (input0=>X, input1=>S1, input2=>S2, input3=>S3, sel1=>ShiftCount(5), sel2=>ShiftCount(4), result=>R1);
  			a5:  S4 <= sbit(3 downto 0) & R1(63 downto 4); 
  			a6:  S5 <= sbit(7 downto 0) & R1(63 downto 8); 
  			a7:  S6 <= sbit(11 downto 0) & R1(63 downto 12); 
  			a8:  mux port map (input0=>R1, input1=>S4, input2=>S5, input3=>S6, sel1=>ShiftCount(3), sel2=>ShiftCount(2), result=>R2);
  			a9:  S7 <= sbit(1 downto 0) & R2(63 downto 2); 
  			a10: S8 <= sbit(0) & R2(63 downto 1);
  			a11: S9 <= sbit(2 downto 0) & R2(63 downto 3);   
  			a12: mux port map (input0=>R2, input1=>S7, input2=>S8, input3=>S9, sel1=>ShiftCount(1), sel2=>ShiftCount(0), result=>Y);
		
end architecture rtl;
