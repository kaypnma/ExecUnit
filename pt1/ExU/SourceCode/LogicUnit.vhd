library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LogicUnit is 
	generic(N: natural := 64); 
	port(A, B: in std_logic_vector(N-1 downto 0); 
	    Y: out std_logic_vector(N-1 downto 0); 
	    LogicFN: in std_logic_vector(1 downto 0));
	
end entity LogicUnit; 

architecture rt1 of LogicUnit is 
	signal logicFnSel : std_logic_vector(1 downto 0); 
	signal Aand, Band, Yand : std_logic_vector(N-1 downto 0); 
	signal Aor, Bor, Yor : std_logic_vector(N-1 downto 0); 
	signal Axor, Bxor, Yxor : std_logic_vector(N-1 downto 0); 
begin
	logicFnSel <= LogicFN; 
-- AND gate
	Aand <= A; 
	Band <= B; 
	Yand <= Aand AND Band; 

-- OR gate 
	Aor <= A; 
	Bor <= B; 
	Yor <= Aor OR Bor; 

-- XOR gate 
	Axor <= A; 
	Bxor <= B; 
	Yxor <= Axor XOR Bxor; 

-- MUX with logicFnSel bits 
with logicFnSel select
	Y <= B when "00", 
		Yxor when "01", 
		Yor when "10", 
		Yand when others; 
end architecture rt1;  