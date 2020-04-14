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
	Zero, AltB, AltBu : out std_logic
);
End Entity ExecUnit;


architecture rtl of ExecUnit is
	signal y_arith, y_logic, y_shift, sum, AltB_sig, AltBu_sig: std_logic_vector(N-1 downto 0);
	-- ArithUnit 
	signal FuncClassSel : std_logic_vector(1 downto 0); 
	signal AltB_flag, AltBu_flag: std_logic; 

begin	
 -- instantiate ArithUnit entity
	-- omits some output signals 
	arithUnit: entity work.ArithUnit port map (A => A, B => B, Y => y_arith, NotA => NotA, AddnSub => AddnSub, ExtWord => ExtWord, Zero => Zero, AltB => AltB_flag, AltBu => AltB_flag);

	AltB <= AltB_flag;
	AltBu <= AltBu_flag; 
	process(AltB_flag, AltBu_flag)
	begin
		if(AltB_flag = '1') then
			AltB_sig <= (others => '0'); 
			AltB_sig(0) <= AltB_flag; 
			--AltB_sig <= resize(AltB_sig, N);  
		end if; 
		if(AltBu_flag = '1') then
			AltBu_sig <= (others => '0'); 
			AltBu_sig(0) <= AltBu_flag; 
			--AltBu_sig <= AltBu_flag & "0"; 
		end if; 
	end process; 
-- instantiate shiftUnit entity 	
	-- C is the output Y from ArithUnit 

	shiftUnit: entity work.ShiftUnit port map (A => A, B => B, C => y_arith, Y => y_shift, ShiftFN => ShiftFN, ExtWord => ExtWord); 
	
-- instantiate logicUnit entity 
	
	logicUnit: entity work.LogicUnit port map (A => A, B => B, Y => y_logic, LogicFN => LogicFN); 
	
	with FuncClassSel select 
		Y <= AltBu_sig when "00", 
			AltB_sig when "01", 
			y_shift when "10", 
			y_logic when others; 

	
end architecture rtl;