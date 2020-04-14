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
	signal swappedA, swappedimmd1, swappedimmd3 : std_logic_vector(N-1 downto 0); 
	signal ShiftCount : std_logic_vector(5 downto 0); 
	signal immd1, immd2, immd3, immd4 : std_logic_vector(N-1 downto 0); 
	signal inputASel : std_logic;
begin	
	
	-- Input select bits 
	inputASel <= ShiftFN(1) AND ExtWord;
	
	-- Input B extract 
	ShiftCount <= B(5 downto 0); 
	
	-- Swap Word
	swappedA(N-1 downto (N/2)) <= A((N/2)-1 downto 0); 
	swappedA((N/2)-1 downto 0) <= "0"; 
	
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
		with ShiftFN(0) select 
			immd1 <= C when '0',  
				sll_out when others; 
		
		swappedimmd1(N-1 downto (N/2)) <= immd1((N/2)-1 downto 0); 
		swappedimmd1((N/2)-1 downto 0) <= '0'; 
		
		with ExtWord select 
			immd2 <= immd1 when '0', 
				swappedimmd1 when others; 
		
	end process; 
		
	-- Upper bits
	process(srl_out, sra_out)
	begin
		with ShiftFN(0) select 
				immd3 <= srl_out when '0',  
					sra_out when others; 
		
		swappedimmd3(N-1 downto (N/2)) <= immd3((N/2)-1 downto 0); 
		swappedimmd3((N/2)-1 downto 0) <= '0'; 
		
		with ExtWord select 
			immd4 <= immd1 when '0', 
				swappedimmd3 when others; 
	end process; 
	
	with ShiftFN(1) select
		Y <= immd2 when '0', 
				immd4 when others; 
		
end architecture rtl; 