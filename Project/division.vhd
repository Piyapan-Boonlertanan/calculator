library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.STD_LOGIC_UNSIGNED.all;

entity division is
	generic (N:integer := 5);
	port (CLK, RST_N, START :in std_logic;
			A,B :in std_logic_vector(N-1 downto 0):= (others => '0');
			Q,R :out std_logic_vector(2*N-1 downto 0):= (others => '0');
			DONE:out std_logic := '0';
			B_OVERFLOW : out std_logic);
			
	end division;
	
architecture data_flow of division is
	type state_type is (S0,S1,S2);
	signal Data_A :std_logic_vector(2*N downto 0):=(others => '0');
	signal Data_B :std_logic_vector(2*N downto 0):=(others => '0');
	signal Data_Quotient :std_logic_vector(2*N-1 downto 0):=(others => '0');
	signal Data_Remainder :std_logic_vector(2*N downto 0):=(others => '0');
	signal bit_counter : integer := 0;
	signal state : state_type := S0;
	signal P_done : std_logic := '0';
	signal S_Start : std_logic := '0';
	
begin
	S_Start <= START;
	
	process (RST_N, CLK, START)
	begin
		if RST_N = '0' then
			state <= S0;
			Data_A <= (others => '0');
			Data_B <= (others => '0');
			Data_Quotient <= (others => '0');
			Q <= (others => '0');
			R <= (others => '0');
			B_OVERFLOW <= '0';
			
		elsif rising_edge(CLK) then
			case state is
				
				when S0 =>
					if S_Start = '0' then
						Data_A (N-1 downto 0) <= A;
						Data_B(2*N-1 downto N)  <= B;

						case B is
							when "00000" =>
								B_OVERFLOW <= '1';
							when others =>
								state <= S1;
						end case;	
						
					else
						state <= S0;
						DONE <= '0';
					end if;
					
				when S1 =>
					if (bit_counter < (N+1)) then
					Data_A <= Data_A - Data_B ;
					state <= S2;
						
					else 
						bit_counter <= 0;
						Data_Quotient <= (others => '0');
						Data_A <= (others => '0');
						Data_B <= (others => '0');
						state <= S0;
						DONE <= '1';
						Q <= Data_Quotient;
						R <= Data_A(2*N-1 downto 0);
					end if;
					
				when S2 =>
					if Data_A(2*N) = '0' then
						Data_Quotient <= std_logic_vector(shift_left(unsigned(Data_Quotient),1));
						Data_Quotient(0) <= '1'; 
						Data_B <= std_logic_vector(shift_right(unsigned(Data_B),1));
						bit_counter <= bit_counter + 1;
					else 
						Data_A <= Data_B + Data_A;
						Data_Quotient <= std_logic_vector(shift_left(unsigned(Data_Quotient),1));
						Data_B <= std_logic_vector(shift_right(unsigned(Data_B),1));
						bit_counter <= bit_counter + 1;
					end if;
						state <= S1;
					
				when others =>
					state <= S0;
			end case;
		end if;
	end process;
end data_flow;
