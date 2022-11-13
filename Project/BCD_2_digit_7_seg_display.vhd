library ieee;
use ieee.std_logic_1164.ALL;
use ieee.STD_LOGIC_ARITH.all;

entity BCD_2_digit_7_seg_display is
	generic(N : Natural := 5);
	Port ( clk_i : in  std_logic;	-- system clock
          rst_i : in  std_logic; 	-- synchronous reset, active-high
			 data : in  STD_LOGIC_VECTOR (2*N-1 downto 0);
			 overflow : in std_logic;
			 mode : in std_logic;
			 BCD_digit_1 : out STD_LOGIC_VECTOR (N-1 downto 0);
			 BCD_digit_2 : out STD_LOGIC_VECTOR (N-1 downto 0));
				 
end BCD_2_digit_7_seg_display ;

architecture Behavioral of BCD_2_digit_7_seg_display is
signal int_data_1 : integer := 0;
signal int_data_2 : integer := 0;
	begin
		process (clk_i, rst_i, data)
			begin
				if (rst_i = '0') then
					int_data_1 <= 0;
					int_data_2 <= 0;
				elsif (mode = '0' and overflow = '1') then
					int_data_1 <= 10;
					int_data_2 <= 10;
				elsif (mode = '1' and overflow = '0') then
					int_data_1 <= 10;
					int_data_2 <= 10;
				elsif (clk_i 'event and clk_i = '1') then
					int_data_1 <= conv_integer (unsigned(data)) mod 10;
					int_data_2 <= (conv_integer (unsigned(data)) / 10);
				end if;
					BCD_digit_1 <= conv_std_logic_vector(int_data_1, N);
					BCD_digit_2 <= conv_std_logic_vector(int_data_2, N);
		end process;
		
end Behavioral;