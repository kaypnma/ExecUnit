library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity ShiftUnit is
	Generic ( N : natural := 64 );
	Port ( A, B, C : in std_logic_vector( N-1 downto 0 );
	Y : out std_logic_vector( N-1 downto 0 );
	ShiftFN : in std_logic_vector( 1 downto 0 );
	ExtWord : in std_logic );	
End Entity ShiftUnit;

architecture rtl of ShiftUnit is
	signal y_a, y_b, y_c, sll_out, srl_out, sra_out : std_logic_vector(N-1 downto 0);
	signal swappedA, swappedinter1, swappedinter3 : std_logic_vector(N-1 downto 0); 
	signal ShiftCount : unsigned(5 downto 0); 

--changed to inter
	signal inter1, inter2, inter3, inter4 : std_logic_vector(N-1 downto 0); 
	signal inputASel : std_logic;
begin	
	
	-- Input select bits 
	inputASel <= ShiftFN(1) AND ExtWord;
	
	-- Input B extract( 6-bits for 64-bit or 5-bits for 32-bit) 
	with ExtWord select
		ShiftCount <= unsigned("0" & B(4 downto 0)) when '0', 
			unsigned(B(5 downto 0)) when others;
	
	-- Swap Word
	swappedA(N-1 downto (N/2)) <= A((N/2)-1 downto 0); 
	swappedA((N/2)-1 downto 0) <= (others => '0'); 
	
	-- Input into 64-bit barrel shifter
	with inputASel select 
		y_a <= A when '0', 
			swappedA when others; 
			
	-- instantiate Shifter entities 
	sll_op: entity work.SLL64 port map (X => y_a, Y => sll_out, ShiftCount => ShiftCount); 
	
	srl_op: entity work.SLL64 port map (X => y_a, Y => sll_out, ShiftCount => ShiftCount); 
	
	sra_op: entity work.SLL64 port map (X => y_a, Y => sll_out, ShiftCount => ShiftCount); 
	
	-- Lower bits
	process(sll_out)
	begin
		if(ShiftFN(0) = '0') then
			inter1 <= C;
		else 
			inter1 <= sll_out; 
		end if; 
		
		swappedinter1(N-1 downto (N/2)) <= inter1((N/2)-1 downto 0); 
		swappedinter1((N/2)-1 downto 0) <= (others => '0'); 

		if(ExtWord = '0') then
			inter2 <= inter1;
		else 
			inter2 <= swappedinter1; 
		end if; 
		
	end process; 
		
	-- Upper bits
	process(srl_out, sra_out)
	begin
		if(ShiftFN(0) = '0') then
			inter3 <= srl_out;
		else 
			inter3 <= sra_out; 
		end if; 
		
		swappedinter3(N-1 downto (N/2)) <= inter3((N/2)-1 downto 0); 
		swappedinter3((N/2)-1 downto 0) <= (others => '0'); 

		if(ExtWord = '0') then
			inter4 <= inter3;
		else 
			inter4 <= swappedinter3; 
		end if; 
	end process; 
	
	with ShiftFN(1) select
		Y <= inter2 when '0', 
				inter4 when others; 
		
end architecture rtl; 