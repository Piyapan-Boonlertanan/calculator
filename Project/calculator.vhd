library ieee;
use ieee.std_logic_1164.all;

entity calculator is
	generic (N : natural := 5);
	port (CLK :  std_logic;
			RST_N : std_logic;
			Start : std_logic;
			Operation : in std_logic_vector(1 downto 0);
			A, B : in std_logic_vector(N-1 downto 0);
			Result : out std_logic_vector(2*N-1 downto 0);
			Remainder : out std_logic_vector(2*N-1 downto 0);
			Done : out std_logic;
			seven_seg_digit_1 : out std_logic_vector(6 downto 0);
			seven_seg_digit_2 : out std_logic_vector(6 downto 0);
			seven_seg_digit_3 : out std_logic_vector(6 downto 0);
			seven_seg_digit_4r : out std_logic_vector(6 downto 0);
			seven_seg_digit_5r : out std_logic_vector(6 downto 0);
			seven_seg_digit_6r : out std_logic_vector(6 downto 0));
end calculator;

architecture struct of calculator is

	signal BCD_data_digit_1 : std_logic_vector(3 downto 0);
	signal BCD_data_digit_2 : std_logic_vector(3 downto 0);
	signal BCD_data_digit_3 : std_logic_vector(3 downto 0);
	signal BCD_data_digit_4r : std_logic_vector(3 downto 0);
	signal BCD_data_digit_5r : std_logic_vector(3 downto 0);
	signal BCD_data_digit_6r : std_logic_vector(3 downto 0);
	signal Result_add : std_logic_vector(2*N-1 downto 0);
	signal Result_sub : std_logic_vector(2*N-1 downto 0);
	signal Result_multi : std_logic_vector(2*N-1 downto 0);
	signal Result_division : std_logic_vector(2*N-1 downto 0); 
	signal done_add : std_logic;
	signal done_sub : std_logic;
	signal done_multi : std_logic;
	signal done_division : std_logic;
	signal Remainder_division : std_logic_vector(2*N-1 downto 0);
	signal overflow_sub : std_logic;
	signal overflow_div : std_logic;

	begin
		add : entity work.adder_and_subtractor(data_flow)
					port map(
					clock => CLK,
					reset => RST_N,
					START => Start,
					DONE => done_add,
					M => '0',
					A => A,
					B => B,
					sum => Result_add);
		
		sub : entity work.adder_and_subtractor(data_flow)
					port map(
					clock => CLK,
					reset => RST_N,
					START => Start,
					DONE => done_sub,
					M => '1',
					A => A,
					B => B,
					sum => Result_sub,
					cout_sub_overflow => overflow_sub);

		multiplication : entity work.Multiplication(Behave)
								port map(
								CLK => CLK,
								RST_N => RST_N,
								START => Start,
								A => A,
								B => B,
								R => Result_multi,
								DONE => done_multi);
								
		division	:	entity work.division(data_flow)
							port map(
							CLK => CLK,
							RST_N => RST_N,
							START => Start,
							A => A,
							B => B,
							Q => Result_division,
							R => Remainder_division,
							DONE => done_division,
							B_OVERFLOW => overflow_div);
							
		convert_binary	:	entity work.BCD_2_digit_7_seg_display(Behavioral)
													port map(
													clk_i => CLK,
													rst_i => RST_N,
													mode => Operation,
													overflow => '1',
													result_add => Result_add,
													result_sub => Result_sub,
													result_multi => Result_multi,
													result_division => Result_division,
													Done_add => done_add,
													Done_sub => done_sub,
													Done_multi => done_multi,
													Done_division => done_division,
													Result => Result,
													Remainder => Remainder,
													Done => Done,
													Remainder_division => Remainder_division,
													BCD_digit_1 => BCD_data_digit_1,
													BCD_digit_2 => BCD_data_digit_2,
													BCD_digit_3 => BCD_data_digit_3,
													BCD_digit_4r => BCD_data_digit_4r,
													BCD_digit_5r => BCD_data_digit_5r,
													BCD_digit_6r => BCD_data_digit_6r,
													Overflow_sub => overflow_sub,
													B_overflow_div => overflow_div);
													
													
		seven_seg_display_1	:	entity work.BCD_to_7_segmen(data_process)
											port map(
											BCD_i => BCD_data_digit_1,
											clk_i => CLK,
											seven_seg => seven_seg_digit_1);
		seven_seg_display_2	:	entity work.BCD_to_7_segmen(data_process)
											port map(
											BCD_i => BCD_data_digit_2,
											clk_i => CLK,
											seven_seg => seven_seg_digit_2);
		seven_seg_display_3	:	entity work.BCD_to_7_segmen(data_process)
											port map(
											BCD_i => BCD_data_digit_3,
											clk_i => CLK,
											seven_seg => seven_seg_digit_3);
		seven_seg_display_4	:	entity work.BCD_to_7_segmen(data_process)
											port map(
											BCD_i => BCD_data_digit_4r,
											clk_i => CLK,
											seven_seg => seven_seg_digit_4r);
		seven_seg_display_5	:	entity work.BCD_to_7_segmen(data_process)
											port map(
											BCD_i => BCD_data_digit_5r,
											clk_i => CLK,
											seven_seg => seven_seg_digit_5r);
		seven_seg_display_6	:	entity work.BCD_to_7_segmen(data_process)
											port map(
											BCD_i => BCD_data_digit_6r,
											clk_i => CLK,
											seven_seg => seven_seg_digit_6r);
		
end struct;
		
