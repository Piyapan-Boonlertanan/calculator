library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Multiplication is 
	generic (N : integer := 5);
	port(CLK,RST_N,START : in std_logic;
			A,B : in std_logic_vector(N-1 downto 0) := (others => '0');
			R : out std_logic_vector(2*N-1 downto 0):= (others => '0');
			DONE : out std_logic := '0');
end Multiplication;

architecture Behave of Multiplication is 
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
	
	process (RST_N, CLK, START)
	begin 
		if RST_N ='1' then --asyn. reset(active-low)
			state <= S0;
			Data_A <= (others => '0');
			Data_B <= (others => '0');
			Data_Product <= (others => '0');
			R  <= (others => '0');
		elsif rising_edge(CLK) then
			case state is 
				
				when S0 =>  -- check Start for Multipli process
					if S_Start ='1' then
						Data_A (N-1 downto 0) <= A; --keep data A
						Data_B <= B;					--Keep data B
						state <= S1;					--goto S1 when START bit Active
					else
						state <= S0;  --Non Active START bit goto S1
						DONE <= '0';
					end if;
					
				when S1 =>  --Multipli process
					if (bit_counter < (N+1)) then
						state <= S1;
						if Data_B(bit_counter) ='1' then
							Data_Product <= Data_Product + Data_A;
							Data_A <= std_logic_vector(shift_left(unsigned(Data_A), 1)); --shift_Left Data_A 1 bit
							R <= Data_Product;
							bit_counter <= (bit_counter+1);
						else
							Data_A <= std_logic_vector(shift_left(unsigned(Data_A), 1)); --shift_Left Data_A 1 bit
							R <= Data_Product;
							bit_counter <= (bit_counter+1);
						end if;
						
					else
						bit_counter <= 0;
						Data_Product <= (others => '0');
						Data_A <=(others => '0');
						Data_B <=(others => '0');
						state <= S0;
						DONE <= '1';
					end if;
					
				when others =>
					state <= S0;
			end case;
		end if;
	end process;
end Behave;