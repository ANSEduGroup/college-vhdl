library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity full_subtractor is
     port(
         a : in STD_LOGIC;
         b : in STD_LOGIC;
         c : in STD_LOGIC;
         difference : out STD_LOGIC;
         borrow : out STD_LOGIC
         );
end full_subtractor;
architecture full_subtractor_arc of full_subtractor is
begin

    difference <= a xor b xor c;
    borrow <= ((not a) and b) or
               (b and c) or
               (c and (not a));

end full_subtractor_arc;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity half_subtractor is
     port(
         a : in STD_LOGIC;
         b : in STD_LOGIC;
         diff : out STD_LOGIC;
         borrow : out STD_LOGIC
         );
end half_subtractor;
architecture half_subtractor_arc of half_subtractor is
begin

    diff <= a xor b;
    borrow <= (not a) and b;

end half_subtractor_arc;
