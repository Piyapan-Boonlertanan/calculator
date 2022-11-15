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
			 DONE:out std_logic := '0';
			 cout_sub_overflow : out std_logic);

end adder_and_subtractor;

architecture data_flow of adder_and_subtractor is

	signal cin : std_logic;
	signal cout : std_logic_vector(N downto 0);

	type state_type is (S0,S1);
	signal Data_A :std_logic_vector(2*N-1 downto 0):= (others => '0');
	signal Data_B :std_logic_vector(N-1 downto 0):= (others => '0');
	signal Data_Product :std_logic_vector(2*N-1 downto 0):= (others => '0');
	signal bit_counter : integer := 0;
	signal state : state_type := S0;
	signal P_done : std_logic := '0';
	signal S_Start : std_logic := '0';

	begin

		S_Start <= START;

		process (reset, clock, START)
		begin 
			if reset ='0' then
				state <= s0;
				sum  <= (others => '0');
				cout_sub_overflow <= '0';

			elsif rising_edge(clock) then
				case state is 

					when s0 =>
						if S_Start ='0' then
							cout(0) <= M;
							state <= s1;
						else
							state <= s0;
							DONE <= '0';
						end if;

					when s1 =>
						if (bit_counter < (N+1)) then
							sum(bit_counter) <= (A(bit_counter) xor (B(bit_counter) xor M)) xor cout(bit_counter);
							cout(bit_counter+1) <= ((A(bit_counter) xor (B(bit_counter) xor M)) and cout(bit_counter)) or (A(bit_counter) and (B(bit_counter) xor M));
							bit_counter <= (bit_counter+1);
						else
							state <= s0;
							cout_sub_overflow <= cout(bit_counter) xor '1';
							bit_counter <= 0;
							DONE <= '1';
						end if;

					when others =>
						state <= s0;

				end case;
			end if;
		end process;

end data_flow;

	
			 
