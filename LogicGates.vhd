--OR Gate
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ORGATE is  	
	port (a:in std_logic;
	      b:in std_logic;
		  c:out std_logic);	
end ORGATE;
architecture orachi of ORGATE is
begin

	 c<=a or b;

end orachi;

--AND Gate
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ANDGATE is  	
	port (a:in std_logic;
	      b:in std_logic;
		  c:out std_logic);	
end ANDGATE;
architecture andachi of ANDGATE is
begin

	 c<=a and b;

end andachi;	
		  
-- NAND GATE
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NANDGATE is  	
	port (a:in std_logic;
	      b:in std_logic;
		  c:out std_logic);	
end NANDGATE;
architecture nandachi of NANDGATE is
begin

	 c<=a nand b;

end nandachi;

-- XOR GATE
library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity XORGATE is  	
	port (a:in std_logic;
	      b:in std_logic;
		  c:out std_logic);	
end XORGATE;
architecture xorachi of XORGATE is
begin

	 c<=a xor b;

end xorachi;
