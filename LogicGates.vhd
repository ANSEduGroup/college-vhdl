-------------------------------------------------------------------------------
-- Title       : LogicGates
-- Design      : logic_gates
-- Author      : Aurghyadip Kundu
-- Company     : N/A
-------------------------------------------------------------------------------
-- Description : This is a design consisting of four gates, OR, AND, NAND & XOR
-- feel free to add any kind of changes to it and submit a pull request. When
-- submitting, please be sure to mention the change and the cause of the change.
-- Thank You.
-------------------------------------------------------------------------------
-- Section below this comment contains the actual code for running the sim.
-- You have to create your own workspace and add this source file in order to
-- run the sim.
-------------------------------------------------------------------------------

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
