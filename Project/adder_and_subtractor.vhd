library ieee;
use ieee.std_logic_1164.all;

entity adder_and_subtractor is
	generic (N : natural := 5);
	port ( clock : in std_logic;
			 reset : in std_logic;
			 START : in std_logic;
			 M : in std_logic;
			 A,B : in std_logic_vector(N-1 downto 0);
			 sum : out STD_LOGIC_VECTOR (2*N-1 downto 0);
			 DONE:out std_logic := '0');

end adder_and_subtractor;

architecture data_flow of adder_and_subtractor is

signal cin : std_logic;
signal cout : std_logic_vector(N downto 0);

	begin
		cout(0) <= M;
		
		Full_adder : for i in 0 to N-1 generate
		
			sum(i) <= (A(i) xor (B(i) xor M)) xor cout(i);
			cout(i+1) <= ((A(i) xor (B(i) xor M)) and cout(i)) or (A(i) and (B(i) xor M));
			
		end generate Full_adder;
		
		DONE <= '1';

end data_flow;

	
			 
