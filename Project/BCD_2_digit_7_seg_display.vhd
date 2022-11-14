library ieee;
use ieee.std_logic_1164.ALL;
use ieee.STD_LOGIC_ARITH.all;

entity BCD_2_digit_7_seg_display is
	generic(N : Natural := 5);
	Port ( clk_i : in  std_logic;	-- system clock
          rst_i : in  std_logic; 	-- synchronous reset, active-high
			 overflow : in std_logic;
			 mode : in std_logic_vector(1 downto 0);
			 result_add : in STD_LOGIC_VECTOR (2*N-1 downto 0);
			 result_sub : in STD_LOGIC_VECTOR (2*N-1 downto 0);
			 result_multi : in STD_LOGIC_VECTOR (2*N-1 downto 0);
			 result_division : in STD_LOGIC_VECTOR (2*N-1 downto 0);
			 Done_add : in std_logic;
			 Done_sub : in std_logic;
			 Done_multi : in std_logic;
			 Done_division : in std_logic;
			 Done : out std_logic;
			 Result : out STD_LOGIC_VECTOR (2*N-1 downto 0);
			 Remainder_division : in std_logic_vector(2*N-1 downto 0);
			 Remainder : out STD_LOGIC_VECTOR (2*N-1 downto 0);
			 BCD_digit_1 : out STD_LOGIC_VECTOR (3 downto 0);
			 BCD_digit_2 : out STD_LOGIC_VECTOR (3 downto 0);
			 BCD_digit_3 : out STD_LOGIC_VECTOR (3 downto 0);
			 BCD_digit_4r : out STD_LOGIC_VECTOR (3 downto 0);
			 BCD_digit_5r : out STD_LOGIC_VECTOR (3 downto 0);
			 BCD_digit_6r : out STD_LOGIC_VECTOR (3 downto 0);
			 Overflow_sub : in std_logic;
			 B_overflow_div : in std_logic);
				 
end BCD_2_digit_7_seg_display ;

architecture Behavioral of BCD_2_digit_7_seg_display is
signal int_data_1 : integer := 0;
signal int_data_2 : integer := 0;
signal int_data_3 : integer := 0;
signal int_data_4r : integer := 0;
signal int_data_5r : integer := 0;
signal int_data_6r : integer := 0;
	begin
		process (clk_i, rst_i)
			begin
				if (rst_i = '1') then
					int_data_6r <= 0;
					int_data_5r <= 0;
					int_data_4r <= 0;
					int_data_3 <= 0;
					int_data_2 <= 0;
					int_data_1 <= 0;
					
				elsif rising_edge(clk_i) then
					case mode is
						when "11" =>
							Result <= Result_add;
							Done <= done_add;
							
							int_data_6r <= 0;
							int_data_5r <= 0;
							int_data_4r <= 0;
							int_data_3 <= conv_integer (unsigned(Result_add)) mod 10;
							int_data_2 <= ((conv_integer (unsigned(Result_add)) / 10) mod 10);
							int_data_1 <= conv_integer (unsigned(Result_add)) / 100;
							
						when "10" =>
							Result <= Result_sub;
							Done <= done_sub;
							
							int_data_6r <= 0;
							int_data_5r <= 0;
							int_data_4r <= 0;
							int_data_3 <= conv_integer (unsigned(Result_sub)) mod 10;
							int_data_2 <= ((conv_integer (unsigned(Result_sub)) / 10) mod 10);
							int_data_1 <= conv_integer (unsigned(Result_sub)) / 100;
							
							if Overflow_sub = '1' then
								int_data_6r <= 10;
								int_data_5r <= 10;
								int_data_4r <= 10;
								int_data_3 <= 10;
								int_data_2 <= 10;
								int_data_1 <= 10;
							end if;
							
						when "01" =>
							Result <= Result_multi;
							Done <= done_multi;
							
							int_data_6r <= 0;
							int_data_5r <= 0;
							int_data_4r <= 0;
							int_data_3 <= conv_integer (unsigned(Result_multi)) mod 10;
							int_data_2 <= ((conv_integer (unsigned(Result_multi)) / 10) mod 10);
							int_data_1 <= conv_integer (unsigned(Result_multi)) / 100;
							
						when "00" =>
							Result <= Result_division;
							Remainder <= Remainder_division;
							Done <= done_division;
							
							int_data_6r <= conv_integer (unsigned(Remainder_division)) mod 10;
							int_data_5r <= ((conv_integer (unsigned(Remainder_division)) / 10) mod 10);
							int_data_4r <= conv_integer (unsigned(Remainder_division)) / 100;
							int_data_3 <= conv_integer (unsigned(Result_division)) mod 10;
							int_data_2 <= ((conv_integer (unsigned(Result_division)) / 10) mod 10);
							int_data_1 <= conv_integer (unsigned(Result_division)) / 100;
							
--							if B_overflow_div = '1' then
--								int_data_6r <= 10;
--								int_data_5r <= 10;
--								int_data_4r <= 10;
--								int_data_3 <= 10;
--								int_data_2 <= 10;
--								int_data_1 <= 10;
--							end if;
						
					end case;
							
				end if;
				
					BCD_digit_1 <= conv_std_logic_vector(int_data_1, 4);
					BCD_digit_2 <= conv_std_logic_vector(int_data_2, 4);
					BCD_digit_3 <= conv_std_logic_vector(int_data_3, 4);
					BCD_digit_4r <= conv_std_logic_vector(int_data_4r, 4);
					BCD_digit_5r <= conv_std_logic_vector(int_data_5r, 4);
					BCD_digit_6r <= conv_std_logic_vector(int_data_6r, 4);
					
		end process;
		
end Behavioral;