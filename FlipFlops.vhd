library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity JK is
	 port(
		 J : in STD_LOGIC;
		 K : in STD_LOGIC;
		 CLK : in STD_LOGIC;
		 Q : inout STD_LOGIC;
		 QN : inout STD_LOGIC
	     );
end JK;
architecture JKarchi of JK is
begin
	process(CLK,J,K)
	begin
		if(CLK='1' and CLK'event) then
			if(J='0' and K='0') then
				Q<=Q;
				QN<=QN;
			elsif(J='0' and K='1') then
				Q<='1';
				QN<='0';
			elsif(J='1' and K='0') then
				Q<='0';
				QN<='1';	
			elsif(J='1' and K='1') then
				Q<=Not Q;		
				QN<=Not QN;		
			end if;
			end if;
			end process;

end JKarchi;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DF is
	 port(
		 D : in STD_LOGIC;
		 CLK : in STD_LOGIC;
		 Q : out STD_LOGIC;
		 QN : out STD_LOGIC
	     );
end DF;
architecture DFarchi of DF is
begin
	process(CLK)
	begin
		if CLK='1' then
			Q<=D;
			QN<=NOT D;
		end if;
	end process;
end DFarchi;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity TFF is
	 port(
		 T : in STD_LOGIC;
		 CLK : in STD_LOGIC;
		 Q : out STD_LOGIC;
		 QN : out STD_LOGIC
	     );
end TFF;
architecture TFFarchi of TFF is
begin
process(CLK,T)														
begin	 
	if(CLK='1' and CLK'event) then
		if(T='0') then
			Q<='1';
			QN<='0';
		else
			Q<='0';
			QN<='1';
		end if;
		end if;
		end process;
end TFFarchi;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity SRFF is
	 port(
		 s : in STD_LOGIC;
		 r : in STD_LOGIC;
		 clk : in STD_LOGIC;
		 q : inout STD_LOGIC;
		 qn : inout STD_LOGIC
	     );
end SRFF;
architecture SRarchi of SRFF is
begin

	process(clk,s,r)
	begin
		if(clk='1' and clk'event) then
			if(s='0' and r='0') then
				q<=q;
				qn<=qn;
			elsif(s='1' and r='1') then
				q<='1';
			     qn<='1';
			elsif(s='0' and r='1') then
			    q<='0';
				qn<='1';
		    else
				q<='1';
				qn<='0';
			end if;
			end if;
			end process;
end SRarchi;
