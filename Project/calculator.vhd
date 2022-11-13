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

signal S_Start : std_logic := '0';

begin

	begin
		add : entity work.adder_and_subtractor(data_flow)
					port map(
					clock => CLK,
					reset => RST_N,
					START => Start,
					DONE => Done,
					M => '0',
					A => A,
					B => B,
					sum => Result);
		
		sub : entity work.adder_and_subtractor(data_flow)
					port map(
					clock => CLK,
					reset => RST_N,
					START => Start,
					DONE => Done,
					M => '1',
					A => A,
					B => B,
					sum => Result);

		multiplication : entity work.Multiplication(Behave)
								port map(
								CLK => CLK,
								RST_N => RST_N,
								START => Start,
								A => A,
								B => B,
								R => Result,
								DONE => Done);
		division	:	entity work.division(data_flow)
							port map(
							CLK => CLK,
							RST_N => RST_N,
							START => Start,
							A => A,
							B => B,
							Q => Result,
							R => Remainder,
							DONE => Done);
		
end struct;
		
