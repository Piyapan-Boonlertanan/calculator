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
			Done : out std_logic);
end calculator;

architecture struct of calculator is

signal Result_add : std_logic_vector(2*N-1 downto 0);
signal Result_sub : std_logic_vector(2*N-1 downto 0);
signal Result_multi : std_logic_vector(2*N-1 downto 0);
signal Result_division : std_logic_vector(2*N-1 downto 0); 
signal done_add : std_logic;
signal done_sub : std_logic;
signal done_multi : std_logic;
signal done_division : std_logic;
signal Remainder_division : std_logic_vector(2*N-1 downto 0);

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
					sum => Result_sub);

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
							DONE => done_division);
							
		BCD_2_digit_7_seg_display	:	entity work.BCD_2_digit_7_seg_display(Behavioral)
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
													Remainder_division => Remainder_division);
		
end struct;
		
