library ieee;
use ieee.std_logic_1164.all;

entity Full_Adder is
	port ( cin, x, y : in std_logic;
			 sum, cout : out std_logic);

end Full_Adder;

architecture data_flow of Full_Adder is
begin
	sum <= (x xor y) xor cin;
	cout <= ((x and y) and cin) or (x and y);
	
end data_flow;