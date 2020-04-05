library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LogicUnit is 
	generic(N: natural := 64); 
	port(A, B: in std_logic_vector(N-1 downto 0); 
	    Y: out std_logic_vector(N-1 downto 0); 
	    LogicFN: in std_logic_vector(1 downto 0));
	
end entity LogicUnit; 

architecture rtl of LogicUnit is 
	signal logicFnSel : std_logic_vector(1 downto 0); 
	signal a_sig, b_sig : std_logic_vector(N-1 downto 0); 
	signal y_and, y_or, y_xor : std_logic_vector(N-1 downto 0); 
begin
	logicFnSel <= LogicFN; 
	a_sig <= A;
	b_sig <= B;

-- AND gate
	y_and <= a_sig AND b_sig;

-- OR gate 
	y_or <= a_sig OR b_sig;

-- XOR gate 
	y_xor <= a_sig XOR b_sig;

-- MUX with logicFnSel bits 
	with logicFnSel select
		Y <=	b_sig when "00", 
			y_xor when "01", 
			y_or when "10", 
			y_and when others; 
end architecture rtl;  