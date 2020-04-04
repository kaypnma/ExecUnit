library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Adder is
	Generic ( N : natural := 64 );
	Port ( 	A, B : in std_logic_vector( N-1 downto 0 );
		Y : out std_logic_vector( N-1 downto 0 );
	-- Control signals
		Cin : in std_logic;
	-- Status signals
		Cout, Ovfl : out std_logic );
End Entity Adder;

architecture rtl of Adder is
	signal carry : std_logic_vector(N downto 0);
	signal g, p : std_logic_vector(N-1 downto 0);
begin
	carry(0) <= Cin;
	Cout <= carry(64);
	Ovfl <= carry(63) XOR carry(64); 

	-- generate for loop for ripple adder
	gen_rip: for i in 0 to N-1 generate
		-- calculate generates and propagates
		g(i) <= A(i) AND B(i);
		p(i) <= A(i) XOR B(i);

		-- calculate carries and sums
		carry(i+1) <= g(i) OR (carry(i) AND p(i));
		Y(i) <= carry(i) XOR p(i);
 	end generate gen_rip;
end architecture rtl;