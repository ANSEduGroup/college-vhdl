-------------------------------------------------------------------------------
-- Title       : Adders
-- Design      : adders
-- Author      : Aurghyadip Kundu
-- Company     : N/A
-------------------------------------------------------------------------------
-- Description : This is a design consisting of half adder and full adder.
-- feel free to add any kind of changes to it and submit a pull request. When
-- submitting, please be sure to mention the change and the cause of the change.
-- Thank You.
-------------------------------------------------------------------------------
-- Section below this comment contains the actual code for running the sim.
-- You have to create your own workspace and add this source file in order to
-- run the sim.
-------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- This section of the code contains the full adder
-- entity is "fulladd"

ENTITY fulladd IS
PORT (    cin,a, b  : IN     STD_LOGIC ;
          s, cout    : OUT    STD_LOGIC ) ;
END fulladd ;

-- Architecture of "fulladd" entity is "beh"

ARCHITECTURE full_archi OF fulladd IS
BEGIN
s <= a XOR b XOR cin ;
cout <= (a AND b) OR (cin AND a) OR (cin AND b) ;
END full_archi ;
-- End of the full adder part

-- This section of the code contains the half adder
-- entity is "half_adder"

ENTITY half_adder IS
PORT(a,b:IN BIT; s,c :OUT BIT);
END half_adder;

-- architecture for the entity "half_adder" is "half_adder_archi"

ARCHITECTURE half_adder_archi OF half_adder IS
BEGIN
s <= a XOR b;
c <= a AND b;
END half_adder_archi;
-- end of half adder
