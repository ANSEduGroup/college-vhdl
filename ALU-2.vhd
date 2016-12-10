library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.numeric_std.all;
entity alu3 is
	 port(
		 a : in signed(3 downto 0);
		 b : in signed(3 downto 0);
		 sel : in STD_LOGIC_vector(2 downto 0);
		 op : out signed(3 downto 0));
end alu3;
architecture alu3archi of alu3 is
begin
	process(a,b,sel)
	begin
		case sel is			 
			when "000"=>op<=a+b;
			when "001"=>op<=a-b;
			when "010"=>op<=a-1;
			when "011"=>op<=a+1;
			when "100"=>op<=a and b;
			when "101"=>op<=a or b;
			when "110"=>op<=not a;
			when "111"=>op<=a xor b;
			when others=>NULL;
		end case;
	end process;
end alu3archi;
