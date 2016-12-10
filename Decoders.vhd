library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity dec38 is
	 port(din : in STD_LOGIC_Vector(2 downto 0);
		 dout : out STD_LOGIC_Vector(7 downto 0));
end dec38;
architecture dec38archi of dec38 is
begin
	with(din) select
	dout<=
	"00000001" when "000",
	"00000010" when "001",
	"00000100" when "010",
	"00001000" when "011",
    "00010000" when "100",
	"00100000" when "101",
	"01000000" when "110",
	"10000000" when "111",
	"00000000" when others;
end dec38archi;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity dec24 is
	 port(
		 din : in STD_LOGIC_Vector(1 downto 0);
		 dout : out STD_LOGIC_Vector(3 downto 0)
	     );
end dec24;
architecture dec24archi of dec24 is
begin
	with(din) select
	dout<=
	"0001" when "00",
	"0010" when "01",
	"0100" when "10",
	"1000" when "11",  
	"0000" when others;
end dec24archi;
