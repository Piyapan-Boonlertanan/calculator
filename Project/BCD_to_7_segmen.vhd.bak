library ieee;
use ieee.std_logic_1164.all;

entity BCD_to_7_segmen is
	generic (N : natural := 5);
	port(
			BCD_i : in std_logic_vector (N-1 downto 0);
			clk_i : in std_logic;
			seven_seg : out std_logic_vector (6 downto 0));
				
end BCD_to_7_segmen;

architecture data_process of BCD_to_7_segmen is
begin
  process(clk_i)  -- sensitivity list
	 begin
		if clk_i'event and clk_i='1' THEN   
				case BCD_i is             --gfedcba
					when "00000" => seven_seg <= "1000000"; --7-segment display number 0
					when "00001" => seven_seg <= "1111001"; --7-segment display number 1
					when "00010" => seven_seg <= "0100100"; --7-segment display number 2
					when "00011" => seven_seg <= "0110000"; --7-segment display number 3
					when "00100" => seven_seg <= "0011001"; --7-segment display number 4 
					when "00101" => seven_seg <= "0010010"; --7-segment display number 5
					when "00110" => seven_seg <= "0000010"; --7-segment display number 6
					when "00111" => seven_seg <= "1111000"; --7-segment display number 7
					when "01000" => seven_seg <= "0000000"; --7-segment display number 8
					when "01001" => seven_seg <= "0010000"; --7-segment display number 9
					when others => seven_seg <= "0000111"; --7-segment display F
				
				end case;
		end if;
	end process;
end data_process;


