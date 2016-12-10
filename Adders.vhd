library IEEE;
use IEEE.STD_LOGIC_1164.all;

ENTITY fulladd IS
PORT (    cin,a, b  : IN     STD_LOGIC ;
          s, cout    : OUT    STD_LOGIC ) ;
END fulladd ;
ARCHITECTURE beh OF fulladd IS
BEGIN
s <= a XOR b XOR cin ;
cout <= (a AND b) OR (cin AND a) OR (cin AND b) ;
END beh ;

ENTITY half_adder IS           
PORT(a,b:IN BIT; s,c :OUT BIT); 
END half_adder;
ARCHITECTURE half_adder_beh OF half_adder IS 
BEGIN 
s <= a XOR b;             
c <= a AND b;             
END half_adder_beh;
