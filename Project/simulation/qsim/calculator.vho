-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/13/2022 17:41:01"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	calculator IS
    PORT (
	CLK : IN std_logic;
	RST_N : IN std_logic;
	Start : IN std_logic;
	Operation : IN std_logic_vector(1 DOWNTO 0);
	A : IN std_logic_vector(4 DOWNTO 0);
	B : IN std_logic_vector(4 DOWNTO 0);
	Result : OUT std_logic_vector(9 DOWNTO 0);
	Remainder : OUT std_logic_vector(9 DOWNTO 0);
	Done : OUT std_logic
	);
END calculator;

ARCHITECTURE structure OF calculator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST_N : std_logic;
SIGNAL ww_Start : std_logic;
SIGNAL ww_Operation : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Result : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Remainder : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Done : std_logic;
SIGNAL \Operation[0]~input_o\ : std_logic;
SIGNAL \Operation[1]~input_o\ : std_logic;
SIGNAL \Result[0]~output_o\ : std_logic;
SIGNAL \Result[1]~output_o\ : std_logic;
SIGNAL \Result[2]~output_o\ : std_logic;
SIGNAL \Result[3]~output_o\ : std_logic;
SIGNAL \Result[4]~output_o\ : std_logic;
SIGNAL \Result[5]~output_o\ : std_logic;
SIGNAL \Result[6]~output_o\ : std_logic;
SIGNAL \Result[7]~output_o\ : std_logic;
SIGNAL \Result[8]~output_o\ : std_logic;
SIGNAL \Result[9]~output_o\ : std_logic;
SIGNAL \Remainder[0]~output_o\ : std_logic;
SIGNAL \Remainder[1]~output_o\ : std_logic;
SIGNAL \Remainder[2]~output_o\ : std_logic;
SIGNAL \Remainder[3]~output_o\ : std_logic;
SIGNAL \Remainder[4]~output_o\ : std_logic;
SIGNAL \Remainder[5]~output_o\ : std_logic;
SIGNAL \Remainder[6]~output_o\ : std_logic;
SIGNAL \Remainder[7]~output_o\ : std_logic;
SIGNAL \Remainder[8]~output_o\ : std_logic;
SIGNAL \Remainder[9]~output_o\ : std_logic;
SIGNAL \Done~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \multiplication|Data_A~0_combout\ : std_logic;
SIGNAL \RST_N~input_o\ : std_logic;
SIGNAL \multiplication|Add1~125_sumout\ : std_logic;
SIGNAL \multiplication|bit_counter[0]~0_combout\ : std_logic;
SIGNAL \multiplication|Add1~126\ : std_logic;
SIGNAL \multiplication|Add1~81_sumout\ : std_logic;
SIGNAL \multiplication|Add1~82\ : std_logic;
SIGNAL \multiplication|Add1~77_sumout\ : std_logic;
SIGNAL \multiplication|Add1~78\ : std_logic;
SIGNAL \multiplication|Add1~25_sumout\ : std_logic;
SIGNAL \multiplication|Add1~26\ : std_logic;
SIGNAL \multiplication|Add1~21_sumout\ : std_logic;
SIGNAL \multiplication|Add1~22\ : std_logic;
SIGNAL \multiplication|Add1~17_sumout\ : std_logic;
SIGNAL \multiplication|Add1~18\ : std_logic;
SIGNAL \multiplication|Add1~13_sumout\ : std_logic;
SIGNAL \multiplication|Add1~14\ : std_logic;
SIGNAL \multiplication|Add1~9_sumout\ : std_logic;
SIGNAL \multiplication|Add1~10\ : std_logic;
SIGNAL \multiplication|Add1~5_sumout\ : std_logic;
SIGNAL \multiplication|Add1~6\ : std_logic;
SIGNAL \multiplication|Add1~49_sumout\ : std_logic;
SIGNAL \multiplication|Add1~50\ : std_logic;
SIGNAL \multiplication|Add1~45_sumout\ : std_logic;
SIGNAL \multiplication|Add1~46\ : std_logic;
SIGNAL \multiplication|Add1~41_sumout\ : std_logic;
SIGNAL \multiplication|Add1~42\ : std_logic;
SIGNAL \multiplication|Add1~37_sumout\ : std_logic;
SIGNAL \multiplication|Add1~38\ : std_logic;
SIGNAL \multiplication|Add1~33_sumout\ : std_logic;
SIGNAL \multiplication|Add1~34\ : std_logic;
SIGNAL \multiplication|Add1~29_sumout\ : std_logic;
SIGNAL \multiplication|Add1~30\ : std_logic;
SIGNAL \multiplication|Add1~73_sumout\ : std_logic;
SIGNAL \multiplication|Add1~74\ : std_logic;
SIGNAL \multiplication|Add1~69_sumout\ : std_logic;
SIGNAL \multiplication|Add1~70\ : std_logic;
SIGNAL \multiplication|Add1~65_sumout\ : std_logic;
SIGNAL \multiplication|Add1~66\ : std_logic;
SIGNAL \multiplication|Add1~61_sumout\ : std_logic;
SIGNAL \multiplication|Add1~62\ : std_logic;
SIGNAL \multiplication|Add1~57_sumout\ : std_logic;
SIGNAL \multiplication|Add1~58\ : std_logic;
SIGNAL \multiplication|Add1~101_sumout\ : std_logic;
SIGNAL \multiplication|Add1~102\ : std_logic;
SIGNAL \multiplication|Add1~53_sumout\ : std_logic;
SIGNAL \multiplication|Add1~54\ : std_logic;
SIGNAL \multiplication|Add1~121_sumout\ : std_logic;
SIGNAL \multiplication|Add1~122\ : std_logic;
SIGNAL \multiplication|Add1~117_sumout\ : std_logic;
SIGNAL \multiplication|Add1~118\ : std_logic;
SIGNAL \multiplication|Add1~113_sumout\ : std_logic;
SIGNAL \multiplication|Add1~114\ : std_logic;
SIGNAL \multiplication|Add1~109_sumout\ : std_logic;
SIGNAL \multiplication|Add1~110\ : std_logic;
SIGNAL \multiplication|Add1~105_sumout\ : std_logic;
SIGNAL \multiplication|Add1~106\ : std_logic;
SIGNAL \multiplication|Add1~85_sumout\ : std_logic;
SIGNAL \multiplication|Add1~86\ : std_logic;
SIGNAL \multiplication|Add1~97_sumout\ : std_logic;
SIGNAL \multiplication|Add1~98\ : std_logic;
SIGNAL \multiplication|Add1~93_sumout\ : std_logic;
SIGNAL \multiplication|Add1~94\ : std_logic;
SIGNAL \multiplication|Add1~89_sumout\ : std_logic;
SIGNAL \multiplication|Add1~90\ : std_logic;
SIGNAL \multiplication|Add1~1_sumout\ : std_logic;
SIGNAL \multiplication|LessThan0~0_combout\ : std_logic;
SIGNAL \multiplication|LessThan0~1_combout\ : std_logic;
SIGNAL \multiplication|LessThan0~2_combout\ : std_logic;
SIGNAL \multiplication|LessThan0~3_combout\ : std_logic;
SIGNAL \multiplication|LessThan0~4_combout\ : std_logic;
SIGNAL \multiplication|LessThan0~5_combout\ : std_logic;
SIGNAL \multiplication|DONE~1_combout\ : std_logic;
SIGNAL \multiplication|state~q\ : std_logic;
SIGNAL \multiplication|Add0~1_sumout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \multiplication|Data_B~0_combout\ : std_logic;
SIGNAL \multiplication|Data_B~1_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \multiplication|Data_B~2_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \multiplication|Data_B~3_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \multiplication|Data_B~4_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \multiplication|Data_B~5_combout\ : std_logic;
SIGNAL \multiplication|Mux0~0_combout\ : std_logic;
SIGNAL \multiplication|Data_Product[0]~0_combout\ : std_logic;
SIGNAL \multiplication|R[9]~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \multiplication|Data_A~1_combout\ : std_logic;
SIGNAL \multiplication|Data_A[4]~2_combout\ : std_logic;
SIGNAL \multiplication|Add0~2\ : std_logic;
SIGNAL \multiplication|Add0~5_sumout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \multiplication|Data_A~3_combout\ : std_logic;
SIGNAL \multiplication|Add0~6\ : std_logic;
SIGNAL \multiplication|Add0~9_sumout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \multiplication|Data_A~4_combout\ : std_logic;
SIGNAL \multiplication|Add0~10\ : std_logic;
SIGNAL \multiplication|Add0~13_sumout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \multiplication|Data_A~5_combout\ : std_logic;
SIGNAL \multiplication|Add0~14\ : std_logic;
SIGNAL \multiplication|Add0~17_sumout\ : std_logic;
SIGNAL \multiplication|Add0~18\ : std_logic;
SIGNAL \multiplication|Add0~21_sumout\ : std_logic;
SIGNAL \multiplication|Add0~22\ : std_logic;
SIGNAL \multiplication|Add0~25_sumout\ : std_logic;
SIGNAL \multiplication|Add0~26\ : std_logic;
SIGNAL \multiplication|Add0~29_sumout\ : std_logic;
SIGNAL \multiplication|Add0~30\ : std_logic;
SIGNAL \multiplication|Add0~33_sumout\ : std_logic;
SIGNAL \multiplication|Add0~34\ : std_logic;
SIGNAL \multiplication|Add0~37_sumout\ : std_logic;
SIGNAL \multiplication|DONE~0_combout\ : std_logic;
SIGNAL \multiplication|DONE~q\ : std_logic;
SIGNAL \multiplication|Data_Product\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \multiplication|bit_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \multiplication|Data_A\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \multiplication|R\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \multiplication|Data_B\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \multiplication|ALT_INV_bit_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \multiplication|ALT_INV_Data_Product\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Start~input_o\ : std_logic;
SIGNAL \ALT_INV_RST_N~input_o\ : std_logic;
SIGNAL \multiplication|ALT_INV_Data_A\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \multiplication|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \multiplication|ALT_INV_Data_B\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \multiplication|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \multiplication|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \multiplication|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \multiplication|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \multiplication|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \multiplication|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \multiplication|ALT_INV_state~q\ : std_logic;
SIGNAL \multiplication|ALT_INV_DONE~q\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RST_N <= RST_N;
ww_Start <= Start;
ww_Operation <= Operation;
ww_A <= A;
ww_B <= B;
Result <= ww_Result;
Remainder <= ww_Remainder;
Done <= ww_Done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\multiplication|ALT_INV_bit_counter\(25) <= NOT \multiplication|bit_counter\(25);
\multiplication|ALT_INV_bit_counter\(26) <= NOT \multiplication|bit_counter\(26);
\multiplication|ALT_INV_bit_counter\(20) <= NOT \multiplication|bit_counter\(20);
\multiplication|ALT_INV_bit_counter\(28) <= NOT \multiplication|bit_counter\(28);
\multiplication|ALT_INV_bit_counter\(29) <= NOT \multiplication|bit_counter\(29);
\multiplication|ALT_INV_bit_counter\(30) <= NOT \multiplication|bit_counter\(30);
\multiplication|ALT_INV_bit_counter\(27) <= NOT \multiplication|bit_counter\(27);
\multiplication|ALT_INV_bit_counter\(1) <= NOT \multiplication|bit_counter\(1);
\multiplication|ALT_INV_bit_counter\(2) <= NOT \multiplication|bit_counter\(2);
\multiplication|ALT_INV_bit_counter\(15) <= NOT \multiplication|bit_counter\(15);
\multiplication|ALT_INV_bit_counter\(16) <= NOT \multiplication|bit_counter\(16);
\multiplication|ALT_INV_bit_counter\(17) <= NOT \multiplication|bit_counter\(17);
\multiplication|ALT_INV_bit_counter\(18) <= NOT \multiplication|bit_counter\(18);
\multiplication|ALT_INV_bit_counter\(19) <= NOT \multiplication|bit_counter\(19);
\multiplication|ALT_INV_bit_counter\(21) <= NOT \multiplication|bit_counter\(21);
\multiplication|ALT_INV_bit_counter\(9) <= NOT \multiplication|bit_counter\(9);
\multiplication|ALT_INV_bit_counter\(10) <= NOT \multiplication|bit_counter\(10);
\multiplication|ALT_INV_bit_counter\(11) <= NOT \multiplication|bit_counter\(11);
\multiplication|ALT_INV_bit_counter\(12) <= NOT \multiplication|bit_counter\(12);
\multiplication|ALT_INV_bit_counter\(13) <= NOT \multiplication|bit_counter\(13);
\multiplication|ALT_INV_bit_counter\(14) <= NOT \multiplication|bit_counter\(14);
\multiplication|ALT_INV_bit_counter\(3) <= NOT \multiplication|bit_counter\(3);
\multiplication|ALT_INV_bit_counter\(4) <= NOT \multiplication|bit_counter\(4);
\multiplication|ALT_INV_bit_counter\(5) <= NOT \multiplication|bit_counter\(5);
\multiplication|ALT_INV_bit_counter\(6) <= NOT \multiplication|bit_counter\(6);
\multiplication|ALT_INV_bit_counter\(7) <= NOT \multiplication|bit_counter\(7);
\multiplication|ALT_INV_bit_counter\(8) <= NOT \multiplication|bit_counter\(8);
\multiplication|ALT_INV_bit_counter\(31) <= NOT \multiplication|bit_counter\(31);
\multiplication|ALT_INV_Data_Product\(0) <= NOT \multiplication|Data_Product\(0);
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_Start~input_o\ <= NOT \Start~input_o\;
\ALT_INV_RST_N~input_o\ <= NOT \RST_N~input_o\;
\multiplication|ALT_INV_Data_A\(4) <= NOT \multiplication|Data_A\(4);
\multiplication|ALT_INV_Data_A\(3) <= NOT \multiplication|Data_A\(3);
\multiplication|ALT_INV_Data_A\(2) <= NOT \multiplication|Data_A\(2);
\multiplication|ALT_INV_Data_A\(1) <= NOT \multiplication|Data_A\(1);
\multiplication|ALT_INV_Mux0~0_combout\ <= NOT \multiplication|Mux0~0_combout\;
\multiplication|ALT_INV_Data_B\(3) <= NOT \multiplication|Data_B\(3);
\multiplication|ALT_INV_Data_B\(2) <= NOT \multiplication|Data_B\(2);
\multiplication|ALT_INV_Data_B\(1) <= NOT \multiplication|Data_B\(1);
\multiplication|ALT_INV_Data_B\(0) <= NOT \multiplication|Data_B\(0);
\multiplication|ALT_INV_Data_B\(4) <= NOT \multiplication|Data_B\(4);
\multiplication|ALT_INV_LessThan0~5_combout\ <= NOT \multiplication|LessThan0~5_combout\;
\multiplication|ALT_INV_LessThan0~4_combout\ <= NOT \multiplication|LessThan0~4_combout\;
\multiplication|ALT_INV_LessThan0~3_combout\ <= NOT \multiplication|LessThan0~3_combout\;
\multiplication|ALT_INV_LessThan0~2_combout\ <= NOT \multiplication|LessThan0~2_combout\;
\multiplication|ALT_INV_LessThan0~1_combout\ <= NOT \multiplication|LessThan0~1_combout\;
\multiplication|ALT_INV_LessThan0~0_combout\ <= NOT \multiplication|LessThan0~0_combout\;
\multiplication|ALT_INV_state~q\ <= NOT \multiplication|state~q\;
\multiplication|ALT_INV_DONE~q\ <= NOT \multiplication|DONE~q\;
\multiplication|ALT_INV_Data_A\(9) <= NOT \multiplication|Data_A\(9);
\multiplication|ALT_INV_Data_A\(8) <= NOT \multiplication|Data_A\(8);
\multiplication|ALT_INV_Data_A\(7) <= NOT \multiplication|Data_A\(7);
\multiplication|ALT_INV_Data_A\(6) <= NOT \multiplication|Data_A\(6);
\multiplication|ALT_INV_Data_A\(5) <= NOT \multiplication|Data_A\(5);
\multiplication|ALT_INV_Data_A\(0) <= NOT \multiplication|Data_A\(0);
\multiplication|ALT_INV_bit_counter\(0) <= NOT \multiplication|bit_counter\(0);
\multiplication|ALT_INV_Data_Product\(9) <= NOT \multiplication|Data_Product\(9);
\multiplication|ALT_INV_Data_Product\(8) <= NOT \multiplication|Data_Product\(8);
\multiplication|ALT_INV_Data_Product\(7) <= NOT \multiplication|Data_Product\(7);
\multiplication|ALT_INV_Data_Product\(6) <= NOT \multiplication|Data_Product\(6);
\multiplication|ALT_INV_Data_Product\(5) <= NOT \multiplication|Data_Product\(5);
\multiplication|ALT_INV_Data_Product\(4) <= NOT \multiplication|Data_Product\(4);
\multiplication|ALT_INV_Data_Product\(3) <= NOT \multiplication|Data_Product\(3);
\multiplication|ALT_INV_Data_Product\(2) <= NOT \multiplication|Data_Product\(2);
\multiplication|ALT_INV_Data_Product\(1) <= NOT \multiplication|Data_Product\(1);
\multiplication|ALT_INV_bit_counter\(22) <= NOT \multiplication|bit_counter\(22);
\multiplication|ALT_INV_bit_counter\(23) <= NOT \multiplication|bit_counter\(23);
\multiplication|ALT_INV_bit_counter\(24) <= NOT \multiplication|bit_counter\(24);

\Result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplication|R\(0),
	devoe => ww_devoe,
	o => \Result[0]~output_o\);

\Result[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplication|R\(1),
	devoe => ww_devoe,
	o => \Result[1]~output_o\);

\Result[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplication|R\(2),
	devoe => ww_devoe,
	o => \Result[2]~output_o\);

\Result[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplication|R\(3),
	devoe => ww_devoe,
	o => \Result[3]~output_o\);

\Result[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplication|R\(4),
	devoe => ww_devoe,
	o => \Result[4]~output_o\);

\Result[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplication|R\(5),
	devoe => ww_devoe,
	o => \Result[5]~output_o\);

\Result[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplication|R\(6),
	devoe => ww_devoe,
	o => \Result[6]~output_o\);

\Result[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplication|R\(7),
	devoe => ww_devoe,
	o => \Result[7]~output_o\);

\Result[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplication|R\(8),
	devoe => ww_devoe,
	o => \Result[8]~output_o\);

\Result[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplication|R\(9),
	devoe => ww_devoe,
	o => \Result[9]~output_o\);

\Remainder[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Remainder[0]~output_o\);

\Remainder[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Remainder[1]~output_o\);

\Remainder[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Remainder[2]~output_o\);

\Remainder[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Remainder[3]~output_o\);

\Remainder[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Remainder[4]~output_o\);

\Remainder[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Remainder[5]~output_o\);

\Remainder[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Remainder[6]~output_o\);

\Remainder[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Remainder[7]~output_o\);

\Remainder[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Remainder[8]~output_o\);

\Remainder[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Remainder[9]~output_o\);

\Done~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \multiplication|DONE~q\,
	devoe => ww_devoe,
	o => \Done~output_o\);

\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

\Start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\multiplication|Data_A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Data_A~0_combout\ = (!\Start~input_o\ & (\multiplication|Data_A\(0))) # (\Start~input_o\ & ((\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start~input_o\,
	datab => \multiplication|ALT_INV_Data_A\(0),
	datac => \ALT_INV_A[0]~input_o\,
	combout => \multiplication|Data_A~0_combout\);

\RST_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST_N,
	o => \RST_N~input_o\);

\multiplication|Add1~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~125_sumout\ = SUM(( \multiplication|bit_counter\(0) ) + ( VCC ) + ( !VCC ))
-- \multiplication|Add1~126\ = CARRY(( \multiplication|bit_counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(0),
	cin => GND,
	sumout => \multiplication|Add1~125_sumout\,
	cout => \multiplication|Add1~126\);

\multiplication|bit_counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|bit_counter[0]~0_combout\ = (!\RST_N~input_o\ & \multiplication|state~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N~input_o\,
	datab => \multiplication|ALT_INV_state~q\,
	combout => \multiplication|bit_counter[0]~0_combout\);

\multiplication|bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~125_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(0));

\multiplication|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~81_sumout\ = SUM(( \multiplication|bit_counter\(1) ) + ( GND ) + ( \multiplication|Add1~126\ ))
-- \multiplication|Add1~82\ = CARRY(( \multiplication|bit_counter\(1) ) + ( GND ) + ( \multiplication|Add1~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(1),
	cin => \multiplication|Add1~126\,
	sumout => \multiplication|Add1~81_sumout\,
	cout => \multiplication|Add1~82\);

\multiplication|bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~81_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(1));

\multiplication|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~77_sumout\ = SUM(( \multiplication|bit_counter\(2) ) + ( GND ) + ( \multiplication|Add1~82\ ))
-- \multiplication|Add1~78\ = CARRY(( \multiplication|bit_counter\(2) ) + ( GND ) + ( \multiplication|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(2),
	cin => \multiplication|Add1~82\,
	sumout => \multiplication|Add1~77_sumout\,
	cout => \multiplication|Add1~78\);

\multiplication|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~77_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(2));

\multiplication|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~25_sumout\ = SUM(( \multiplication|bit_counter\(3) ) + ( GND ) + ( \multiplication|Add1~78\ ))
-- \multiplication|Add1~26\ = CARRY(( \multiplication|bit_counter\(3) ) + ( GND ) + ( \multiplication|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(3),
	cin => \multiplication|Add1~78\,
	sumout => \multiplication|Add1~25_sumout\,
	cout => \multiplication|Add1~26\);

\multiplication|bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~25_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(3));

\multiplication|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~21_sumout\ = SUM(( \multiplication|bit_counter\(4) ) + ( GND ) + ( \multiplication|Add1~26\ ))
-- \multiplication|Add1~22\ = CARRY(( \multiplication|bit_counter\(4) ) + ( GND ) + ( \multiplication|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(4),
	cin => \multiplication|Add1~26\,
	sumout => \multiplication|Add1~21_sumout\,
	cout => \multiplication|Add1~22\);

\multiplication|bit_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~21_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(4));

\multiplication|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~17_sumout\ = SUM(( \multiplication|bit_counter\(5) ) + ( GND ) + ( \multiplication|Add1~22\ ))
-- \multiplication|Add1~18\ = CARRY(( \multiplication|bit_counter\(5) ) + ( GND ) + ( \multiplication|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(5),
	cin => \multiplication|Add1~22\,
	sumout => \multiplication|Add1~17_sumout\,
	cout => \multiplication|Add1~18\);

\multiplication|bit_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~17_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(5));

\multiplication|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~13_sumout\ = SUM(( \multiplication|bit_counter\(6) ) + ( GND ) + ( \multiplication|Add1~18\ ))
-- \multiplication|Add1~14\ = CARRY(( \multiplication|bit_counter\(6) ) + ( GND ) + ( \multiplication|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(6),
	cin => \multiplication|Add1~18\,
	sumout => \multiplication|Add1~13_sumout\,
	cout => \multiplication|Add1~14\);

\multiplication|bit_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~13_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(6));

\multiplication|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~9_sumout\ = SUM(( \multiplication|bit_counter\(7) ) + ( GND ) + ( \multiplication|Add1~14\ ))
-- \multiplication|Add1~10\ = CARRY(( \multiplication|bit_counter\(7) ) + ( GND ) + ( \multiplication|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(7),
	cin => \multiplication|Add1~14\,
	sumout => \multiplication|Add1~9_sumout\,
	cout => \multiplication|Add1~10\);

\multiplication|bit_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~9_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(7));

\multiplication|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~5_sumout\ = SUM(( \multiplication|bit_counter\(8) ) + ( GND ) + ( \multiplication|Add1~10\ ))
-- \multiplication|Add1~6\ = CARRY(( \multiplication|bit_counter\(8) ) + ( GND ) + ( \multiplication|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(8),
	cin => \multiplication|Add1~10\,
	sumout => \multiplication|Add1~5_sumout\,
	cout => \multiplication|Add1~6\);

\multiplication|bit_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~5_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(8));

\multiplication|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~49_sumout\ = SUM(( \multiplication|bit_counter\(9) ) + ( GND ) + ( \multiplication|Add1~6\ ))
-- \multiplication|Add1~50\ = CARRY(( \multiplication|bit_counter\(9) ) + ( GND ) + ( \multiplication|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(9),
	cin => \multiplication|Add1~6\,
	sumout => \multiplication|Add1~49_sumout\,
	cout => \multiplication|Add1~50\);

\multiplication|bit_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~49_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(9));

\multiplication|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~45_sumout\ = SUM(( \multiplication|bit_counter\(10) ) + ( GND ) + ( \multiplication|Add1~50\ ))
-- \multiplication|Add1~46\ = CARRY(( \multiplication|bit_counter\(10) ) + ( GND ) + ( \multiplication|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(10),
	cin => \multiplication|Add1~50\,
	sumout => \multiplication|Add1~45_sumout\,
	cout => \multiplication|Add1~46\);

\multiplication|bit_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~45_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(10));

\multiplication|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~41_sumout\ = SUM(( \multiplication|bit_counter\(11) ) + ( GND ) + ( \multiplication|Add1~46\ ))
-- \multiplication|Add1~42\ = CARRY(( \multiplication|bit_counter\(11) ) + ( GND ) + ( \multiplication|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(11),
	cin => \multiplication|Add1~46\,
	sumout => \multiplication|Add1~41_sumout\,
	cout => \multiplication|Add1~42\);

\multiplication|bit_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~41_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(11));

\multiplication|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~37_sumout\ = SUM(( \multiplication|bit_counter\(12) ) + ( GND ) + ( \multiplication|Add1~42\ ))
-- \multiplication|Add1~38\ = CARRY(( \multiplication|bit_counter\(12) ) + ( GND ) + ( \multiplication|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(12),
	cin => \multiplication|Add1~42\,
	sumout => \multiplication|Add1~37_sumout\,
	cout => \multiplication|Add1~38\);

\multiplication|bit_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~37_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(12));

\multiplication|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~33_sumout\ = SUM(( \multiplication|bit_counter\(13) ) + ( GND ) + ( \multiplication|Add1~38\ ))
-- \multiplication|Add1~34\ = CARRY(( \multiplication|bit_counter\(13) ) + ( GND ) + ( \multiplication|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(13),
	cin => \multiplication|Add1~38\,
	sumout => \multiplication|Add1~33_sumout\,
	cout => \multiplication|Add1~34\);

\multiplication|bit_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~33_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(13));

\multiplication|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~29_sumout\ = SUM(( \multiplication|bit_counter\(14) ) + ( GND ) + ( \multiplication|Add1~34\ ))
-- \multiplication|Add1~30\ = CARRY(( \multiplication|bit_counter\(14) ) + ( GND ) + ( \multiplication|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(14),
	cin => \multiplication|Add1~34\,
	sumout => \multiplication|Add1~29_sumout\,
	cout => \multiplication|Add1~30\);

\multiplication|bit_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~29_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(14));

\multiplication|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~73_sumout\ = SUM(( \multiplication|bit_counter\(15) ) + ( GND ) + ( \multiplication|Add1~30\ ))
-- \multiplication|Add1~74\ = CARRY(( \multiplication|bit_counter\(15) ) + ( GND ) + ( \multiplication|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(15),
	cin => \multiplication|Add1~30\,
	sumout => \multiplication|Add1~73_sumout\,
	cout => \multiplication|Add1~74\);

\multiplication|bit_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~73_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(15));

\multiplication|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~69_sumout\ = SUM(( \multiplication|bit_counter\(16) ) + ( GND ) + ( \multiplication|Add1~74\ ))
-- \multiplication|Add1~70\ = CARRY(( \multiplication|bit_counter\(16) ) + ( GND ) + ( \multiplication|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(16),
	cin => \multiplication|Add1~74\,
	sumout => \multiplication|Add1~69_sumout\,
	cout => \multiplication|Add1~70\);

\multiplication|bit_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~69_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(16));

\multiplication|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~65_sumout\ = SUM(( \multiplication|bit_counter\(17) ) + ( GND ) + ( \multiplication|Add1~70\ ))
-- \multiplication|Add1~66\ = CARRY(( \multiplication|bit_counter\(17) ) + ( GND ) + ( \multiplication|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(17),
	cin => \multiplication|Add1~70\,
	sumout => \multiplication|Add1~65_sumout\,
	cout => \multiplication|Add1~66\);

\multiplication|bit_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~65_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(17));

\multiplication|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~61_sumout\ = SUM(( \multiplication|bit_counter\(18) ) + ( GND ) + ( \multiplication|Add1~66\ ))
-- \multiplication|Add1~62\ = CARRY(( \multiplication|bit_counter\(18) ) + ( GND ) + ( \multiplication|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(18),
	cin => \multiplication|Add1~66\,
	sumout => \multiplication|Add1~61_sumout\,
	cout => \multiplication|Add1~62\);

\multiplication|bit_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~61_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(18));

\multiplication|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~57_sumout\ = SUM(( \multiplication|bit_counter\(19) ) + ( GND ) + ( \multiplication|Add1~62\ ))
-- \multiplication|Add1~58\ = CARRY(( \multiplication|bit_counter\(19) ) + ( GND ) + ( \multiplication|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(19),
	cin => \multiplication|Add1~62\,
	sumout => \multiplication|Add1~57_sumout\,
	cout => \multiplication|Add1~58\);

\multiplication|bit_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~57_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(19));

\multiplication|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~101_sumout\ = SUM(( \multiplication|bit_counter\(20) ) + ( GND ) + ( \multiplication|Add1~58\ ))
-- \multiplication|Add1~102\ = CARRY(( \multiplication|bit_counter\(20) ) + ( GND ) + ( \multiplication|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(20),
	cin => \multiplication|Add1~58\,
	sumout => \multiplication|Add1~101_sumout\,
	cout => \multiplication|Add1~102\);

\multiplication|bit_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~101_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(20));

\multiplication|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~53_sumout\ = SUM(( \multiplication|bit_counter\(21) ) + ( GND ) + ( \multiplication|Add1~102\ ))
-- \multiplication|Add1~54\ = CARRY(( \multiplication|bit_counter\(21) ) + ( GND ) + ( \multiplication|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(21),
	cin => \multiplication|Add1~102\,
	sumout => \multiplication|Add1~53_sumout\,
	cout => \multiplication|Add1~54\);

\multiplication|bit_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~53_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(21));

\multiplication|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~121_sumout\ = SUM(( \multiplication|bit_counter\(22) ) + ( GND ) + ( \multiplication|Add1~54\ ))
-- \multiplication|Add1~122\ = CARRY(( \multiplication|bit_counter\(22) ) + ( GND ) + ( \multiplication|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(22),
	cin => \multiplication|Add1~54\,
	sumout => \multiplication|Add1~121_sumout\,
	cout => \multiplication|Add1~122\);

\multiplication|bit_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~121_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(22));

\multiplication|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~117_sumout\ = SUM(( \multiplication|bit_counter\(23) ) + ( GND ) + ( \multiplication|Add1~122\ ))
-- \multiplication|Add1~118\ = CARRY(( \multiplication|bit_counter\(23) ) + ( GND ) + ( \multiplication|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(23),
	cin => \multiplication|Add1~122\,
	sumout => \multiplication|Add1~117_sumout\,
	cout => \multiplication|Add1~118\);

\multiplication|bit_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~117_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(23));

\multiplication|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~113_sumout\ = SUM(( \multiplication|bit_counter\(24) ) + ( GND ) + ( \multiplication|Add1~118\ ))
-- \multiplication|Add1~114\ = CARRY(( \multiplication|bit_counter\(24) ) + ( GND ) + ( \multiplication|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(24),
	cin => \multiplication|Add1~118\,
	sumout => \multiplication|Add1~113_sumout\,
	cout => \multiplication|Add1~114\);

\multiplication|bit_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~113_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(24));

\multiplication|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~109_sumout\ = SUM(( \multiplication|bit_counter\(25) ) + ( GND ) + ( \multiplication|Add1~114\ ))
-- \multiplication|Add1~110\ = CARRY(( \multiplication|bit_counter\(25) ) + ( GND ) + ( \multiplication|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(25),
	cin => \multiplication|Add1~114\,
	sumout => \multiplication|Add1~109_sumout\,
	cout => \multiplication|Add1~110\);

\multiplication|bit_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~109_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(25));

\multiplication|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~105_sumout\ = SUM(( \multiplication|bit_counter\(26) ) + ( GND ) + ( \multiplication|Add1~110\ ))
-- \multiplication|Add1~106\ = CARRY(( \multiplication|bit_counter\(26) ) + ( GND ) + ( \multiplication|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(26),
	cin => \multiplication|Add1~110\,
	sumout => \multiplication|Add1~105_sumout\,
	cout => \multiplication|Add1~106\);

\multiplication|bit_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~105_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(26));

\multiplication|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~85_sumout\ = SUM(( \multiplication|bit_counter\(27) ) + ( GND ) + ( \multiplication|Add1~106\ ))
-- \multiplication|Add1~86\ = CARRY(( \multiplication|bit_counter\(27) ) + ( GND ) + ( \multiplication|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(27),
	cin => \multiplication|Add1~106\,
	sumout => \multiplication|Add1~85_sumout\,
	cout => \multiplication|Add1~86\);

\multiplication|bit_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~85_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(27));

\multiplication|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~97_sumout\ = SUM(( \multiplication|bit_counter\(28) ) + ( GND ) + ( \multiplication|Add1~86\ ))
-- \multiplication|Add1~98\ = CARRY(( \multiplication|bit_counter\(28) ) + ( GND ) + ( \multiplication|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(28),
	cin => \multiplication|Add1~86\,
	sumout => \multiplication|Add1~97_sumout\,
	cout => \multiplication|Add1~98\);

\multiplication|bit_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~97_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(28));

\multiplication|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~93_sumout\ = SUM(( \multiplication|bit_counter\(29) ) + ( GND ) + ( \multiplication|Add1~98\ ))
-- \multiplication|Add1~94\ = CARRY(( \multiplication|bit_counter\(29) ) + ( GND ) + ( \multiplication|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(29),
	cin => \multiplication|Add1~98\,
	sumout => \multiplication|Add1~93_sumout\,
	cout => \multiplication|Add1~94\);

\multiplication|bit_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~93_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(29));

\multiplication|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~89_sumout\ = SUM(( \multiplication|bit_counter\(30) ) + ( GND ) + ( \multiplication|Add1~94\ ))
-- \multiplication|Add1~90\ = CARRY(( \multiplication|bit_counter\(30) ) + ( GND ) + ( \multiplication|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(30),
	cin => \multiplication|Add1~94\,
	sumout => \multiplication|Add1~89_sumout\,
	cout => \multiplication|Add1~90\);

\multiplication|bit_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~89_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(30));

\multiplication|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~1_sumout\ = SUM(( \multiplication|bit_counter\(31) ) + ( GND ) + ( \multiplication|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(31),
	cin => \multiplication|Add1~90\,
	sumout => \multiplication|Add1~1_sumout\);

\multiplication|bit_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add1~1_sumout\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|bit_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|bit_counter\(31));

\multiplication|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|LessThan0~0_combout\ = ( !\multiplication|bit_counter\(4) & ( !\multiplication|bit_counter\(3) & ( (!\multiplication|bit_counter\(8) & (!\multiplication|bit_counter\(7) & (!\multiplication|bit_counter\(6) & 
-- !\multiplication|bit_counter\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_bit_counter\(8),
	datab => \multiplication|ALT_INV_bit_counter\(7),
	datac => \multiplication|ALT_INV_bit_counter\(6),
	datad => \multiplication|ALT_INV_bit_counter\(5),
	datae => \multiplication|ALT_INV_bit_counter\(4),
	dataf => \multiplication|ALT_INV_bit_counter\(3),
	combout => \multiplication|LessThan0~0_combout\);

\multiplication|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|LessThan0~1_combout\ = ( !\multiplication|bit_counter\(10) & ( !\multiplication|bit_counter\(9) & ( (!\multiplication|bit_counter\(14) & (!\multiplication|bit_counter\(13) & (!\multiplication|bit_counter\(12) & 
-- !\multiplication|bit_counter\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_bit_counter\(14),
	datab => \multiplication|ALT_INV_bit_counter\(13),
	datac => \multiplication|ALT_INV_bit_counter\(12),
	datad => \multiplication|ALT_INV_bit_counter\(11),
	datae => \multiplication|ALT_INV_bit_counter\(10),
	dataf => \multiplication|ALT_INV_bit_counter\(9),
	combout => \multiplication|LessThan0~1_combout\);

\multiplication|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|LessThan0~2_combout\ = ( !\multiplication|bit_counter\(16) & ( !\multiplication|bit_counter\(15) & ( (!\multiplication|bit_counter\(21) & (!\multiplication|bit_counter\(19) & (!\multiplication|bit_counter\(18) & 
-- !\multiplication|bit_counter\(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_bit_counter\(21),
	datab => \multiplication|ALT_INV_bit_counter\(19),
	datac => \multiplication|ALT_INV_bit_counter\(18),
	datad => \multiplication|ALT_INV_bit_counter\(17),
	datae => \multiplication|ALT_INV_bit_counter\(16),
	dataf => \multiplication|ALT_INV_bit_counter\(15),
	combout => \multiplication|LessThan0~2_combout\);

\multiplication|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|LessThan0~3_combout\ = ( !\multiplication|bit_counter\(29) & ( !\multiplication|bit_counter\(28) & ( (!\multiplication|bit_counter\(27) & (!\multiplication|bit_counter\(30) & ((!\multiplication|bit_counter\(2)) # 
-- (!\multiplication|bit_counter\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_bit_counter\(2),
	datab => \multiplication|ALT_INV_bit_counter\(1),
	datac => \multiplication|ALT_INV_bit_counter\(27),
	datad => \multiplication|ALT_INV_bit_counter\(30),
	datae => \multiplication|ALT_INV_bit_counter\(29),
	dataf => \multiplication|ALT_INV_bit_counter\(28),
	combout => \multiplication|LessThan0~3_combout\);

\multiplication|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|LessThan0~4_combout\ = ( !\multiplication|bit_counter\(23) & ( !\multiplication|bit_counter\(22) & ( (!\multiplication|bit_counter\(20) & (!\multiplication|bit_counter\(26) & (!\multiplication|bit_counter\(25) & 
-- !\multiplication|bit_counter\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_bit_counter\(20),
	datab => \multiplication|ALT_INV_bit_counter\(26),
	datac => \multiplication|ALT_INV_bit_counter\(25),
	datad => \multiplication|ALT_INV_bit_counter\(24),
	datae => \multiplication|ALT_INV_bit_counter\(23),
	dataf => \multiplication|ALT_INV_bit_counter\(22),
	combout => \multiplication|LessThan0~4_combout\);

\multiplication|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|LessThan0~5_combout\ = ( \multiplication|LessThan0~3_combout\ & ( \multiplication|LessThan0~4_combout\ & ( (!\multiplication|bit_counter\(31) & ((!\multiplication|LessThan0~0_combout\) # ((!\multiplication|LessThan0~1_combout\) # 
-- (!\multiplication|LessThan0~2_combout\)))) ) ) ) # ( !\multiplication|LessThan0~3_combout\ & ( \multiplication|LessThan0~4_combout\ & ( !\multiplication|bit_counter\(31) ) ) ) # ( \multiplication|LessThan0~3_combout\ & ( 
-- !\multiplication|LessThan0~4_combout\ & ( !\multiplication|bit_counter\(31) ) ) ) # ( !\multiplication|LessThan0~3_combout\ & ( !\multiplication|LessThan0~4_combout\ & ( !\multiplication|bit_counter\(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_bit_counter\(31),
	datab => \multiplication|ALT_INV_LessThan0~0_combout\,
	datac => \multiplication|ALT_INV_LessThan0~1_combout\,
	datad => \multiplication|ALT_INV_LessThan0~2_combout\,
	datae => \multiplication|ALT_INV_LessThan0~3_combout\,
	dataf => \multiplication|ALT_INV_LessThan0~4_combout\,
	combout => \multiplication|LessThan0~5_combout\);

\multiplication|DONE~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|DONE~1_combout\ = (!\multiplication|state~q\ & ((\Start~input_o\))) # (\multiplication|state~q\ & (!\multiplication|LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110010011100100111001001110010011100100111001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_state~q\,
	datab => \multiplication|ALT_INV_LessThan0~5_combout\,
	datac => \ALT_INV_Start~input_o\,
	combout => \multiplication|DONE~1_combout\);

\multiplication|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|DONE~1_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|state~q\);

\multiplication|Data_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_A~0_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \multiplication|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_A\(0));

\multiplication|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add0~1_sumout\ = SUM(( \multiplication|Data_A\(0) ) + ( \multiplication|Data_Product\(0) ) + ( !VCC ))
-- \multiplication|Add0~2\ = CARRY(( \multiplication|Data_A\(0) ) + ( \multiplication|Data_Product\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_Data_A\(0),
	dataf => \multiplication|ALT_INV_Data_Product\(0),
	cin => GND,
	sumout => \multiplication|Add0~1_sumout\,
	cout => \multiplication|Add0~2\);

\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

\multiplication|Data_B~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Data_B~0_combout\ = (!\multiplication|state~q\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_state~q\,
	datab => \ALT_INV_B[4]~input_o\,
	combout => \multiplication|Data_B~0_combout\);

\multiplication|Data_B~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Data_B~1_combout\ = (!\multiplication|state~q\ & ((\Start~input_o\))) # (\multiplication|state~q\ & (\multiplication|LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_state~q\,
	datab => \multiplication|ALT_INV_LessThan0~5_combout\,
	datac => \ALT_INV_Start~input_o\,
	combout => \multiplication|Data_B~1_combout\);

\multiplication|Data_B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_B~0_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \multiplication|Data_B~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_B\(4));

\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\multiplication|Data_B~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Data_B~2_combout\ = (!\multiplication|state~q\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_state~q\,
	datab => \ALT_INV_B[0]~input_o\,
	combout => \multiplication|Data_B~2_combout\);

\multiplication|Data_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_B~2_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \multiplication|Data_B~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_B\(0));

\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

\multiplication|Data_B~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Data_B~3_combout\ = (!\multiplication|state~q\ & \B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_state~q\,
	datab => \ALT_INV_B[1]~input_o\,
	combout => \multiplication|Data_B~3_combout\);

\multiplication|Data_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_B~3_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \multiplication|Data_B~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_B\(1));

\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

\multiplication|Data_B~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Data_B~4_combout\ = (!\multiplication|state~q\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_state~q\,
	datab => \ALT_INV_B[2]~input_o\,
	combout => \multiplication|Data_B~4_combout\);

\multiplication|Data_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_B~4_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \multiplication|Data_B~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_B\(2));

\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

\multiplication|Data_B~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Data_B~5_combout\ = (!\multiplication|state~q\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_state~q\,
	datab => \ALT_INV_B[3]~input_o\,
	combout => \multiplication|Data_B~5_combout\);

\multiplication|Data_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_B~5_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \multiplication|Data_B~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_B\(3));

\multiplication|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Mux0~0_combout\ = ( \multiplication|bit_counter\(0) & ( \multiplication|bit_counter\(1) & ( !\multiplication|Data_B\(3) ) ) ) # ( !\multiplication|bit_counter\(0) & ( \multiplication|bit_counter\(1) & ( !\multiplication|Data_B\(2) ) ) ) # 
-- ( \multiplication|bit_counter\(0) & ( !\multiplication|bit_counter\(1) & ( !\multiplication|Data_B\(1) ) ) ) # ( !\multiplication|bit_counter\(0) & ( !\multiplication|bit_counter\(1) & ( !\multiplication|Data_B\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010110011001100110011110000111100001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_Data_B\(0),
	datab => \multiplication|ALT_INV_Data_B\(1),
	datac => \multiplication|ALT_INV_Data_B\(2),
	datad => \multiplication|ALT_INV_Data_B\(3),
	datae => \multiplication|ALT_INV_bit_counter\(0),
	dataf => \multiplication|ALT_INV_bit_counter\(1),
	combout => \multiplication|Mux0~0_combout\);

\multiplication|Data_Product[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Data_Product[0]~0_combout\ = ( \multiplication|Mux0~0_combout\ & ( (\multiplication|state~q\ & (((\multiplication|bit_counter\(2) & \multiplication|Data_B\(4))) # (\multiplication|LessThan0~5_combout\))) ) ) # ( 
-- !\multiplication|Mux0~0_combout\ & ( (\multiplication|state~q\ & ((!\multiplication|bit_counter\(2)) # ((\multiplication|Data_B\(4)) # (\multiplication|LessThan0~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101010101000001010001010101000101010101010000010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_state~q\,
	datab => \multiplication|ALT_INV_bit_counter\(2),
	datac => \multiplication|ALT_INV_LessThan0~5_combout\,
	datad => \multiplication|ALT_INV_Data_B\(4),
	datae => \multiplication|ALT_INV_Mux0~0_combout\,
	combout => \multiplication|Data_Product[0]~0_combout\);

\multiplication|Data_Product[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add0~1_sumout\,
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|Data_Product[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_Product\(0));

\multiplication|R[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|R[9]~0_combout\ = (\multiplication|state~q\ & !\multiplication|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_state~q\,
	datab => \multiplication|ALT_INV_LessThan0~5_combout\,
	combout => \multiplication|R[9]~0_combout\);

\multiplication|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_Product\(0),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \multiplication|R[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|R\(0));

\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\multiplication|Data_A~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Data_A~1_combout\ = (!\multiplication|state~q\ & (((\A[1]~input_o\)))) # (\multiplication|state~q\ & (!\multiplication|LessThan0~5_combout\ & (\multiplication|Data_A\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000000100101011100000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_state~q\,
	datab => \multiplication|ALT_INV_LessThan0~5_combout\,
	datac => \multiplication|ALT_INV_Data_A\(0),
	datad => \ALT_INV_A[1]~input_o\,
	combout => \multiplication|Data_A~1_combout\);

\multiplication|Data_A[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Data_A[4]~2_combout\ = (\Start~input_o\) # (\multiplication|state~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_state~q\,
	datab => \ALT_INV_Start~input_o\,
	combout => \multiplication|Data_A[4]~2_combout\);

\multiplication|Data_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_A~1_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \multiplication|Data_A[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_A\(1));

\multiplication|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add0~5_sumout\ = SUM(( \multiplication|Data_Product\(1) ) + ( \multiplication|Data_A\(1) ) + ( \multiplication|Add0~2\ ))
-- \multiplication|Add0~6\ = CARRY(( \multiplication|Data_Product\(1) ) + ( \multiplication|Data_A\(1) ) + ( \multiplication|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_Data_Product\(1),
	dataf => \multiplication|ALT_INV_Data_A\(1),
	cin => \multiplication|Add0~2\,
	sumout => \multiplication|Add0~5_sumout\,
	cout => \multiplication|Add0~6\);

\multiplication|Data_Product[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add0~5_sumout\,
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|Data_Product[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_Product\(1));

\multiplication|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_Product\(1),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \multiplication|R[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|R\(1));

\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\multiplication|Data_A~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Data_A~3_combout\ = (!\multiplication|state~q\ & (((\A[2]~input_o\)))) # (\multiplication|state~q\ & (!\multiplication|LessThan0~5_combout\ & (\multiplication|Data_A\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000000100101011100000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_state~q\,
	datab => \multiplication|ALT_INV_LessThan0~5_combout\,
	datac => \multiplication|ALT_INV_Data_A\(1),
	datad => \ALT_INV_A[2]~input_o\,
	combout => \multiplication|Data_A~3_combout\);

\multiplication|Data_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_A~3_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \multiplication|Data_A[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_A\(2));

\multiplication|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add0~9_sumout\ = SUM(( \multiplication|Data_Product\(2) ) + ( \multiplication|Data_A\(2) ) + ( \multiplication|Add0~6\ ))
-- \multiplication|Add0~10\ = CARRY(( \multiplication|Data_Product\(2) ) + ( \multiplication|Data_A\(2) ) + ( \multiplication|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_Data_Product\(2),
	dataf => \multiplication|ALT_INV_Data_A\(2),
	cin => \multiplication|Add0~6\,
	sumout => \multiplication|Add0~9_sumout\,
	cout => \multiplication|Add0~10\);

\multiplication|Data_Product[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add0~9_sumout\,
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|Data_Product[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_Product\(2));

\multiplication|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_Product\(2),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \multiplication|R[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|R\(2));

\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\multiplication|Data_A~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Data_A~4_combout\ = (!\multiplication|state~q\ & (((\A[3]~input_o\)))) # (\multiplication|state~q\ & (!\multiplication|LessThan0~5_combout\ & (\multiplication|Data_A\(2))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000000100101011100000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_state~q\,
	datab => \multiplication|ALT_INV_LessThan0~5_combout\,
	datac => \multiplication|ALT_INV_Data_A\(2),
	datad => \ALT_INV_A[3]~input_o\,
	combout => \multiplication|Data_A~4_combout\);

\multiplication|Data_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_A~4_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \multiplication|Data_A[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_A\(3));

\multiplication|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add0~13_sumout\ = SUM(( \multiplication|Data_Product\(3) ) + ( \multiplication|Data_A\(3) ) + ( \multiplication|Add0~10\ ))
-- \multiplication|Add0~14\ = CARRY(( \multiplication|Data_Product\(3) ) + ( \multiplication|Data_A\(3) ) + ( \multiplication|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_Data_Product\(3),
	dataf => \multiplication|ALT_INV_Data_A\(3),
	cin => \multiplication|Add0~10\,
	sumout => \multiplication|Add0~13_sumout\,
	cout => \multiplication|Add0~14\);

\multiplication|Data_Product[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add0~13_sumout\,
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|Data_Product[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_Product\(3));

\multiplication|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_Product\(3),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \multiplication|R[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|R\(3));

\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

\multiplication|Data_A~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Data_A~5_combout\ = (!\multiplication|state~q\ & (((\A[4]~input_o\)))) # (\multiplication|state~q\ & (!\multiplication|LessThan0~5_combout\ & (\multiplication|Data_A\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000000100101011100000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_state~q\,
	datab => \multiplication|ALT_INV_LessThan0~5_combout\,
	datac => \multiplication|ALT_INV_Data_A\(3),
	datad => \ALT_INV_A[4]~input_o\,
	combout => \multiplication|Data_A~5_combout\);

\multiplication|Data_A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_A~5_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \multiplication|Data_A[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_A\(4));

\multiplication|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add0~17_sumout\ = SUM(( \multiplication|Data_Product\(4) ) + ( \multiplication|Data_A\(4) ) + ( \multiplication|Add0~14\ ))
-- \multiplication|Add0~18\ = CARRY(( \multiplication|Data_Product\(4) ) + ( \multiplication|Data_A\(4) ) + ( \multiplication|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_Data_Product\(4),
	dataf => \multiplication|ALT_INV_Data_A\(4),
	cin => \multiplication|Add0~14\,
	sumout => \multiplication|Add0~17_sumout\,
	cout => \multiplication|Add0~18\);

\multiplication|Data_Product[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add0~17_sumout\,
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|Data_Product[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_Product\(4));

\multiplication|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_Product\(4),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \multiplication|R[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|R\(4));

\multiplication|Data_A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_A\(4),
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_A\(5));

\multiplication|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add0~21_sumout\ = SUM(( \multiplication|Data_Product\(5) ) + ( \multiplication|Data_A\(5) ) + ( \multiplication|Add0~18\ ))
-- \multiplication|Add0~22\ = CARRY(( \multiplication|Data_Product\(5) ) + ( \multiplication|Data_A\(5) ) + ( \multiplication|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_Data_Product\(5),
	dataf => \multiplication|ALT_INV_Data_A\(5),
	cin => \multiplication|Add0~18\,
	sumout => \multiplication|Add0~21_sumout\,
	cout => \multiplication|Add0~22\);

\multiplication|Data_Product[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add0~21_sumout\,
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|Data_Product[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_Product\(5));

\multiplication|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_Product\(5),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \multiplication|R[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|R\(5));

\multiplication|Data_A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_A\(5),
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_A\(6));

\multiplication|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add0~25_sumout\ = SUM(( \multiplication|Data_Product\(6) ) + ( \multiplication|Data_A\(6) ) + ( \multiplication|Add0~22\ ))
-- \multiplication|Add0~26\ = CARRY(( \multiplication|Data_Product\(6) ) + ( \multiplication|Data_A\(6) ) + ( \multiplication|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_Data_Product\(6),
	dataf => \multiplication|ALT_INV_Data_A\(6),
	cin => \multiplication|Add0~22\,
	sumout => \multiplication|Add0~25_sumout\,
	cout => \multiplication|Add0~26\);

\multiplication|Data_Product[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add0~25_sumout\,
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|Data_Product[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_Product\(6));

\multiplication|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_Product\(6),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \multiplication|R[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|R\(6));

\multiplication|Data_A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_A\(6),
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_A\(7));

\multiplication|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add0~29_sumout\ = SUM(( \multiplication|Data_Product\(7) ) + ( \multiplication|Data_A\(7) ) + ( \multiplication|Add0~26\ ))
-- \multiplication|Add0~30\ = CARRY(( \multiplication|Data_Product\(7) ) + ( \multiplication|Data_A\(7) ) + ( \multiplication|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_Data_Product\(7),
	dataf => \multiplication|ALT_INV_Data_A\(7),
	cin => \multiplication|Add0~26\,
	sumout => \multiplication|Add0~29_sumout\,
	cout => \multiplication|Add0~30\);

\multiplication|Data_Product[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add0~29_sumout\,
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|Data_Product[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_Product\(7));

\multiplication|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_Product\(7),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \multiplication|R[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|R\(7));

\multiplication|Data_A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_A\(7),
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_A\(8));

\multiplication|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add0~33_sumout\ = SUM(( \multiplication|Data_Product\(8) ) + ( \multiplication|Data_A\(8) ) + ( \multiplication|Add0~30\ ))
-- \multiplication|Add0~34\ = CARRY(( \multiplication|Data_Product\(8) ) + ( \multiplication|Data_A\(8) ) + ( \multiplication|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_Data_Product\(8),
	dataf => \multiplication|ALT_INV_Data_A\(8),
	cin => \multiplication|Add0~30\,
	sumout => \multiplication|Add0~33_sumout\,
	cout => \multiplication|Add0~34\);

\multiplication|Data_Product[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add0~33_sumout\,
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|Data_Product[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_Product\(8));

\multiplication|R[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_Product\(8),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \multiplication|R[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|R\(8));

\multiplication|Data_A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_A\(8),
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_A\(9));

\multiplication|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add0~37_sumout\ = SUM(( \multiplication|Data_Product\(9) ) + ( \multiplication|Data_A\(9) ) + ( \multiplication|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_Data_Product\(9),
	dataf => \multiplication|ALT_INV_Data_A\(9),
	cin => \multiplication|Add0~34\,
	sumout => \multiplication|Add0~37_sumout\);

\multiplication|Data_Product[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Add0~37_sumout\,
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \multiplication|LessThan0~5_combout\,
	ena => \multiplication|Data_Product[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|Data_Product\(9));

\multiplication|R[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|Data_Product\(9),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \multiplication|R[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|R\(9));

\multiplication|DONE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|DONE~0_combout\ = ( \Start~input_o\ & ( ((!\RST_N~input_o\ & (\multiplication|state~q\ & \multiplication|LessThan0~5_combout\))) # (\multiplication|DONE~q\) ) ) # ( !\Start~input_o\ & ( (!\RST_N~input_o\ & (\multiplication|state~q\ & 
-- ((\multiplication|LessThan0~5_combout\) # (\multiplication|DONE~q\)))) # (\RST_N~input_o\ & (\multiplication|DONE~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100011101010101010101110100010101000111010101010101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_DONE~q\,
	datab => \ALT_INV_RST_N~input_o\,
	datac => \multiplication|ALT_INV_state~q\,
	datad => \multiplication|ALT_INV_LessThan0~5_combout\,
	datae => \ALT_INV_Start~input_o\,
	combout => \multiplication|DONE~0_combout\);

\multiplication|DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplication|DONE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplication|DONE~q\);

\Operation[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Operation(0),
	o => \Operation[0]~input_o\);

\Operation[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Operation(1),
	o => \Operation[1]~input_o\);

ww_Result(0) <= \Result[0]~output_o\;

ww_Result(1) <= \Result[1]~output_o\;

ww_Result(2) <= \Result[2]~output_o\;

ww_Result(3) <= \Result[3]~output_o\;

ww_Result(4) <= \Result[4]~output_o\;

ww_Result(5) <= \Result[5]~output_o\;

ww_Result(6) <= \Result[6]~output_o\;

ww_Result(7) <= \Result[7]~output_o\;

ww_Result(8) <= \Result[8]~output_o\;

ww_Result(9) <= \Result[9]~output_o\;

ww_Remainder(0) <= \Remainder[0]~output_o\;

ww_Remainder(1) <= \Remainder[1]~output_o\;

ww_Remainder(2) <= \Remainder[2]~output_o\;

ww_Remainder(3) <= \Remainder[3]~output_o\;

ww_Remainder(4) <= \Remainder[4]~output_o\;

ww_Remainder(5) <= \Remainder[5]~output_o\;

ww_Remainder(6) <= \Remainder[6]~output_o\;

ww_Remainder(7) <= \Remainder[7]~output_o\;

ww_Remainder(8) <= \Remainder[8]~output_o\;

ww_Remainder(9) <= \Remainder[9]~output_o\;

ww_Done <= \Done~output_o\;
END structure;


