library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity ExecUnit is
	Generic ( N : natural := 64 );
	Port ( A, B : in std_logic_vector( N-1 downto 0 );
		NotA : in std_logic := '0';
		FuncClass : in std_logic_vector( 1 downto 0 );
		LogicFN : in std_logic_vector( 1 downto 0 );
		ShiftFN : in std_logic_vector( 1 downto 0 );
		AddnSub, ExtWord : in std_logic := '0';
		Y : out std_logic_vector( N-1 downto 0 );
		Zero, AltB, AltBu : out std_logic);
End Entity ExecUnit;

architecture rtl of ExecUnit is
	signal y_arith, y_logic, y_shift, add_Y, AltB_sig, AltBu_sig: std_logic_vector(N-1 downto 0);
	signal AltB_flag, AltBu_flag: std_logic; 

begin	
 	-- instantiate ArithUnit entity
	arithUnit: entity work.ArithUnit port map (A => A, B => B, AddY => add_Y, 
							Y => y_arith, NotA => NotA, AddnSub => AddnSub, ExtWord => ExtWord, 
							Zero => Zero, AltB => AltB_flag, AltBu => AltBu_flag);
	
	-- set less than
	AltB <= AltB_flag;
	AltBu <= AltBu_flag; 
	
	AltB_sig <= (N-1 downto 1 => '0') & AltB_flag;
	AltBu_sig <= (N-1 downto 1 => '0') & AltBu_flag;

	-- instantiate shiftUnit entity 	
	-- C is the output AddY from ArithUnit 
	shiftUnit: entity work.ShiftUnit port map (A => A, B => B, C => add_Y, Y => y_shift, ShiftFN => ShiftFN, ExtWord => ExtWord); 
	
	-- instantiate logicUnit entity 
	logicUnit: entity work.LogicUnit port map (A => A, B => B, Y => y_logic, LogicFN => LogicFN); 
	
	--FuncClass MUX for ExecUnit output
	with FuncClass select 
		Y <=	AltBu_sig when "00", 
			AltB_sig when "01", 
			y_shift when "10", 
			y_logic when others; 

end architecture rtl;
