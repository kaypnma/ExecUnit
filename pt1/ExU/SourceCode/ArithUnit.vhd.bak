library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity ArithUnit is
	Generic ( N : natural := 64 );
	Port ( 	A, B : in std_logic_vector( N-1 downto 0 );
		AddY, Y : out std_logic_vector( N-1 downto 0 );
	-- Control signals
		NotA, AddnSub, ExtWord : in std_logic := '0';
	-- Status signals
		Cout, Ovfl, Zero, AltB, AltBu : out std_logic );
End Entity ArithUnit;

architecture rtl of ArithUnit is
	signal y_a, y_b, sum : std_logic_vector(N-1 downto 0);
	signal c64 : std_logic;
	signal sign : std_logic;
	signal overflow : std_logic;
	signal zeros : std_logic_vector(N-1 downto 0) := (others => '0');
begin	
	-- select inputs for 64-bit adder
	with AddnSub select
		y_b <=	B when '0',
			NOT B when others;
	with NotA select
		y_a <=	A when '0',
			NOT A when others;
	
	-- instantiate adder entity
	adder64: entity work.Adder port map (A => y_a, B => y_b, Y => sum, 
						Cin => AddnSub, Cout => c64, Ovfl => overflow);

	-- calculate status signals
	-- Overflow
	Ovfl <= overflow;

	-- Cout
	Cout <= c64;
	
	-- Zero
	process(sum, zeros)
	begin
		if (sum = zeros) then
			Zero <= '1';
		else Zero <= '0';
		end if;
	end process;	

	-- AltBu (unsigned)
	-- lecture 7
	AltBu <= NOT c64;

	-- AltB (signed)
	-- lecture 7 --> sum63, Ovfl (c64 XOR c63)
	AltB <= sum(63) XOR overflow;

	-- sign extend
	sign <= sum(31);

	with ExtWord select
		Y <= 	sum when '0',
			(N-1 downto 32 => sign) & sum(31 downto 0) when others;			
end architecture rtl;



