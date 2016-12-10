library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.numeric_STD.all;	   
use IEEE.std_logic_unsigned.all;
entity ALU1 is
	 port(
		 a : in STD_LOGIC_Vector(3 downto 0);
		 b : in STD_LOGIC_Vector(3 downto 0);
		 s : in STD_LOGIC_Vector(3 downto 0);
		 y : out STD_LOGIC_Vector(3 downto 0));
end ALU1;
architecture ALU1archi of ALU1 is
begin
	process(a,b,s)								
	variable temp : unsigned (7 downto 0);
	begin
		case s is
			when "0000"=>y<=a or b;
			when "0001"=>y<=a and b;
			when "0010"=>y<=a;
			when "0011"=>y<=not a;		
			when "0100"=>y<=a xor b;	   
			when "0101"=>y<=a nand b;
			when "0110"=>temp :=resize(unsigned(a)+unsigned(b),8);
			y<=std_logic_vector(resize(temp,4));
			when "0111"=>temp :=resize(unsigned(a)-unsigned(b),8);
			y<=std_logic_vector(resize(temp,4));		 
			when "1000"=>temp :=resize(unsigned(a)*unsigned(b),8);
			y<=std_logic_vector(resize(temp,4));	 
			when "1001"=>temp :=resize(unsigned(a)/unsigned(b),8);
			y<=std_logic_vector(resize(temp,4));	  
			when others =>y<="0000";
		end case;
	end process;		
end ALU1archi;
