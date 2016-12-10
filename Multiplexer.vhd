library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity multiplexer8_1 is
     port(din : in STD_LOGIC_VECTOR(7 downto 0);
         sel : in STD_LOGIC_VECTOR(2 downto 0);
         dout : out STD_LOGIC);
end multiplexer8_1;
architecture multiplexer8_1_arc of multiplexer8_1 is
begin
	process(din,sel)
	begin
	case sel is
		when"000"=>dout<=din(0);
		when"001"=>dout<=din(1);
		when"010"=>dout<=din(2);
		when"011"=>dout<=din(3);
		when"100"=>dout<=din(4);
		when"101"=>dout<=din(5);
		when"110"=>dout<=din(6);
		when"111"=>dout<=din(7);
		when others=>null;
	end case;
	end process;
	end multiplexer8_1_arc;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity multiplexer4_1 is
     port(
         din : in STD_LOGIC_VECTOR(3 downto 0);
         sel : in STD_LOGIC_VECTOR(1 downto 0);
         dout : out STD_LOGIC
         );
end multiplexer4_1;

architecture multiplexer4_1_arc of multiplexer4_1 is
begin
	process(din,sel)
	begin
	case sel is
		when"00"=>dout<=din(0);
		when"01"=>dout<=din(1);
		when"10"=>dout<=din(2);
		when"11"=>dout<=din(3);
		when others=>null;
	end case;
	end process;
	end multiplexer4_1_arc;
