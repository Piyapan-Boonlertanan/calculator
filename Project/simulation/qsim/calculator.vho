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

-- DATE "11/14/2022 00:27:29"

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
	Result : BUFFER std_logic_vector(9 DOWNTO 0);
	Remainder : BUFFER std_logic_vector(9 DOWNTO 0);
	Done : BUFFER std_logic
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
SIGNAL \Operation[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Operation[0]~input_o\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \multiplication|Data_A~0_combout\ : std_logic;
SIGNAL \RST_N~input_o\ : std_logic;
SIGNAL \multiplication|Add1~125_sumout\ : std_logic;
SIGNAL \multiplication|bit_counter[0]~0_combout\ : std_logic;
SIGNAL \multiplication|Add1~126\ : std_logic;
SIGNAL \multiplication|Add1~81_sumout\ : std_logic;
SIGNAL \multiplication|Add1~82\ : std_logic;
SIGNAL \multiplication|Add1~77_sumout\ : std_logic;
SIGNAL \multiplication|Add1~78\ : std_logic;
SIGNAL \multiplication|Add1~69_sumout\ : std_logic;
SIGNAL \multiplication|Add1~70\ : std_logic;
SIGNAL \multiplication|Add1~65_sumout\ : std_logic;
SIGNAL \multiplication|Add1~66\ : std_logic;
SIGNAL \multiplication|Add1~61_sumout\ : std_logic;
SIGNAL \multiplication|Add1~62\ : std_logic;
SIGNAL \multiplication|Add1~57_sumout\ : std_logic;
SIGNAL \multiplication|Add1~58\ : std_logic;
SIGNAL \multiplication|Add1~53_sumout\ : std_logic;
SIGNAL \multiplication|Add1~54\ : std_logic;
SIGNAL \multiplication|Add1~121_sumout\ : std_logic;
SIGNAL \multiplication|Add1~122\ : std_logic;
SIGNAL \multiplication|Add1~117_sumout\ : std_logic;
SIGNAL \multiplication|Add1~118\ : std_logic;
SIGNAL \multiplication|Add1~109_sumout\ : std_logic;
SIGNAL \multiplication|Add1~110\ : std_logic;
SIGNAL \multiplication|Add1~105_sumout\ : std_logic;
SIGNAL \multiplication|Add1~106\ : std_logic;
SIGNAL \multiplication|Add1~101_sumout\ : std_logic;
SIGNAL \multiplication|Add1~102\ : std_logic;
SIGNAL \multiplication|Add1~25_sumout\ : std_logic;
SIGNAL \multiplication|Add1~26\ : std_logic;
SIGNAL \multiplication|Add1~13_sumout\ : std_logic;
SIGNAL \multiplication|Add1~14\ : std_logic;
SIGNAL \multiplication|Add1~21_sumout\ : std_logic;
SIGNAL \multiplication|Add1~22\ : std_logic;
SIGNAL \multiplication|Add1~17_sumout\ : std_logic;
SIGNAL \multiplication|Add1~18\ : std_logic;
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
SIGNAL \multiplication|Add1~97_sumout\ : std_logic;
SIGNAL \multiplication|Add1~98\ : std_logic;
SIGNAL \multiplication|Add1~93_sumout\ : std_logic;
SIGNAL \multiplication|Add1~94\ : std_logic;
SIGNAL \multiplication|Add1~89_sumout\ : std_logic;
SIGNAL \multiplication|Add1~90\ : std_logic;
SIGNAL \multiplication|Add1~113_sumout\ : std_logic;
SIGNAL \multiplication|Add1~114\ : std_logic;
SIGNAL \multiplication|Add1~85_sumout\ : std_logic;
SIGNAL \multiplication|Add1~86\ : std_logic;
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
SIGNAL \division|Add2~125_sumout\ : std_logic;
SIGNAL \division|LessThan0~1_combout\ : std_logic;
SIGNAL \division|LessThan0~2_combout\ : std_logic;
SIGNAL \division|LessThan0~3_combout\ : std_logic;
SIGNAL \division|LessThan0~4_combout\ : std_logic;
SIGNAL \division|LessThan0~5_combout\ : std_logic;
SIGNAL \division|Selector20~1_combout\ : std_logic;
SIGNAL \division|state.S0~q\ : std_logic;
SIGNAL \division|Selector21~0_combout\ : std_logic;
SIGNAL \division|state.S1~q\ : std_logic;
SIGNAL \division|bit_counter[2]~2_combout\ : std_logic;
SIGNAL \division|Add2~126\ : std_logic;
SIGNAL \division|Add2~81_sumout\ : std_logic;
SIGNAL \division|Add2~82\ : std_logic;
SIGNAL \division|Add2~77_sumout\ : std_logic;
SIGNAL \division|Add2~78\ : std_logic;
SIGNAL \division|Add2~45_sumout\ : std_logic;
SIGNAL \division|Add2~46\ : std_logic;
SIGNAL \division|Add2~41_sumout\ : std_logic;
SIGNAL \division|Add2~42\ : std_logic;
SIGNAL \division|Add2~37_sumout\ : std_logic;
SIGNAL \division|Add2~38\ : std_logic;
SIGNAL \division|Add2~33_sumout\ : std_logic;
SIGNAL \division|Add2~34\ : std_logic;
SIGNAL \division|Add2~29_sumout\ : std_logic;
SIGNAL \division|Add2~30\ : std_logic;
SIGNAL \division|Add2~73_sumout\ : std_logic;
SIGNAL \division|Add2~74\ : std_logic;
SIGNAL \division|Add2~69_sumout\ : std_logic;
SIGNAL \division|Add2~70\ : std_logic;
SIGNAL \division|Add2~65_sumout\ : std_logic;
SIGNAL \division|Add2~66\ : std_logic;
SIGNAL \division|Add2~61_sumout\ : std_logic;
SIGNAL \division|Add2~62\ : std_logic;
SIGNAL \division|Add2~57_sumout\ : std_logic;
SIGNAL \division|Add2~58\ : std_logic;
SIGNAL \division|Add2~53_sumout\ : std_logic;
SIGNAL \division|Add2~54\ : std_logic;
SIGNAL \division|Add2~121_sumout\ : std_logic;
SIGNAL \division|Add2~122\ : std_logic;
SIGNAL \division|Add2~117_sumout\ : std_logic;
SIGNAL \division|Add2~118\ : std_logic;
SIGNAL \division|Add2~113_sumout\ : std_logic;
SIGNAL \division|Add2~114\ : std_logic;
SIGNAL \division|Add2~49_sumout\ : std_logic;
SIGNAL \division|Add2~50\ : std_logic;
SIGNAL \division|Add2~109_sumout\ : std_logic;
SIGNAL \division|Add2~110\ : std_logic;
SIGNAL \division|Add2~105_sumout\ : std_logic;
SIGNAL \division|Add2~106\ : std_logic;
SIGNAL \division|Add2~101_sumout\ : std_logic;
SIGNAL \division|Add2~102\ : std_logic;
SIGNAL \division|Add2~97_sumout\ : std_logic;
SIGNAL \division|Add2~98\ : std_logic;
SIGNAL \division|Add2~93_sumout\ : std_logic;
SIGNAL \division|Add2~94\ : std_logic;
SIGNAL \division|Add2~89_sumout\ : std_logic;
SIGNAL \division|Add2~90\ : std_logic;
SIGNAL \division|Add2~85_sumout\ : std_logic;
SIGNAL \division|Add2~86\ : std_logic;
SIGNAL \division|Add2~25_sumout\ : std_logic;
SIGNAL \division|Add2~26\ : std_logic;
SIGNAL \division|Add2~21_sumout\ : std_logic;
SIGNAL \division|Add2~22\ : std_logic;
SIGNAL \division|Add2~17_sumout\ : std_logic;
SIGNAL \division|Add2~18\ : std_logic;
SIGNAL \division|Add2~13_sumout\ : std_logic;
SIGNAL \division|Add2~14\ : std_logic;
SIGNAL \division|Add2~9_sumout\ : std_logic;
SIGNAL \division|Add2~10\ : std_logic;
SIGNAL \division|Add2~5_sumout\ : std_logic;
SIGNAL \division|LessThan0~0_combout\ : std_logic;
SIGNAL \division|bit_counter[24]~3_combout\ : std_logic;
SIGNAL \division|state.S2~q\ : std_logic;
SIGNAL \division|Add2~6\ : std_logic;
SIGNAL \division|Add2~1_sumout\ : std_logic;
SIGNAL \division|bit_counter[31]~1_combout\ : std_logic;
SIGNAL \division|LessThan0~6_combout\ : std_logic;
SIGNAL \division|Selector10~0_combout\ : std_logic;
SIGNAL \division|Selector11~0_combout\ : std_logic;
SIGNAL \division|Data_B[8]~0_combout\ : std_logic;
SIGNAL \division|Selector12~0_combout\ : std_logic;
SIGNAL \division|Selector13~0_combout\ : std_logic;
SIGNAL \division|Selector14~0_combout\ : std_logic;
SIGNAL \division|bit_counter[24]~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \division|Add1~1_sumout\ : std_logic;
SIGNAL \division|Add0~1_sumout\ : std_logic;
SIGNAL \division|Selector9~0_combout\ : std_logic;
SIGNAL \division|Data_A[3]~0_combout\ : std_logic;
SIGNAL \division|Add1~2\ : std_logic;
SIGNAL \division|Add1~5_sumout\ : std_logic;
SIGNAL \division|Add0~2\ : std_logic;
SIGNAL \division|Add0~3\ : std_logic;
SIGNAL \division|Add0~5_sumout\ : std_logic;
SIGNAL \division|Selector8~0_combout\ : std_logic;
SIGNAL \division|Add1~6\ : std_logic;
SIGNAL \division|Add1~9_sumout\ : std_logic;
SIGNAL \division|Add0~6\ : std_logic;
SIGNAL \division|Add0~7\ : std_logic;
SIGNAL \division|Add0~9_sumout\ : std_logic;
SIGNAL \division|Selector7~0_combout\ : std_logic;
SIGNAL \division|Add1~10\ : std_logic;
SIGNAL \division|Add1~13_sumout\ : std_logic;
SIGNAL \division|Add0~10\ : std_logic;
SIGNAL \division|Add0~11\ : std_logic;
SIGNAL \division|Add0~13_sumout\ : std_logic;
SIGNAL \division|Selector6~0_combout\ : std_logic;
SIGNAL \division|Add1~14\ : std_logic;
SIGNAL \division|Add1~17_sumout\ : std_logic;
SIGNAL \division|Add0~14\ : std_logic;
SIGNAL \division|Add0~15\ : std_logic;
SIGNAL \division|Add0~17_sumout\ : std_logic;
SIGNAL \division|Selector5~0_combout\ : std_logic;
SIGNAL \division|Add1~18\ : std_logic;
SIGNAL \division|Add1~21_sumout\ : std_logic;
SIGNAL \division|Add0~18\ : std_logic;
SIGNAL \division|Add0~19\ : std_logic;
SIGNAL \division|Add0~21_sumout\ : std_logic;
SIGNAL \division|Selector4~0_combout\ : std_logic;
SIGNAL \division|Data_A[8]~1_combout\ : std_logic;
SIGNAL \division|Add1~22\ : std_logic;
SIGNAL \division|Add1~25_sumout\ : std_logic;
SIGNAL \division|Add0~22\ : std_logic;
SIGNAL \division|Add0~23\ : std_logic;
SIGNAL \division|Add0~25_sumout\ : std_logic;
SIGNAL \division|Selector3~0_combout\ : std_logic;
SIGNAL \division|Add1~26\ : std_logic;
SIGNAL \division|Add1~29_sumout\ : std_logic;
SIGNAL \division|Add0~26\ : std_logic;
SIGNAL \division|Add0~27\ : std_logic;
SIGNAL \division|Add0~29_sumout\ : std_logic;
SIGNAL \division|Selector2~0_combout\ : std_logic;
SIGNAL \division|Add1~30\ : std_logic;
SIGNAL \division|Add1~33_sumout\ : std_logic;
SIGNAL \division|Add0~30\ : std_logic;
SIGNAL \division|Add0~31\ : std_logic;
SIGNAL \division|Add0~33_sumout\ : std_logic;
SIGNAL \division|Selector1~0_combout\ : std_logic;
SIGNAL \division|Add0~34\ : std_logic;
SIGNAL \division|Add0~35\ : std_logic;
SIGNAL \division|Add0~37_sumout\ : std_logic;
SIGNAL \division|Add1~34\ : std_logic;
SIGNAL \division|Add1~37_sumout\ : std_logic;
SIGNAL \division|Selector0~0_combout\ : std_logic;
SIGNAL \division|Data_A[9]~_wirecell_combout\ : std_logic;
SIGNAL \division|Selector20~0_combout\ : std_logic;
SIGNAL \BCD_2_digit_7_seg_display|Mux9~0_combout\ : std_logic;
SIGNAL \multiplication|Data_A~1_combout\ : std_logic;
SIGNAL \multiplication|Data_A[4]~2_combout\ : std_logic;
SIGNAL \multiplication|Add0~2\ : std_logic;
SIGNAL \multiplication|Add0~5_sumout\ : std_logic;
SIGNAL \BCD_2_digit_7_seg_display|Mux8~0_combout\ : std_logic;
SIGNAL \multiplication|Data_A~3_combout\ : std_logic;
SIGNAL \multiplication|Add0~6\ : std_logic;
SIGNAL \multiplication|Add0~9_sumout\ : std_logic;
SIGNAL \BCD_2_digit_7_seg_display|Mux7~0_combout\ : std_logic;
SIGNAL \multiplication|Data_A~4_combout\ : std_logic;
SIGNAL \multiplication|Add0~10\ : std_logic;
SIGNAL \multiplication|Add0~13_sumout\ : std_logic;
SIGNAL \BCD_2_digit_7_seg_display|Mux6~0_combout\ : std_logic;
SIGNAL \multiplication|Data_A~5_combout\ : std_logic;
SIGNAL \multiplication|Add0~14\ : std_logic;
SIGNAL \multiplication|Add0~17_sumout\ : std_logic;
SIGNAL \BCD_2_digit_7_seg_display|Mux5~0_combout\ : std_logic;
SIGNAL \multiplication|Add0~18\ : std_logic;
SIGNAL \multiplication|Add0~21_sumout\ : std_logic;
SIGNAL \BCD_2_digit_7_seg_display|Mux4~0_combout\ : std_logic;
SIGNAL \multiplication|Add0~22\ : std_logic;
SIGNAL \multiplication|Add0~25_sumout\ : std_logic;
SIGNAL \BCD_2_digit_7_seg_display|Mux3~0_combout\ : std_logic;
SIGNAL \multiplication|Add0~26\ : std_logic;
SIGNAL \multiplication|Add0~29_sumout\ : std_logic;
SIGNAL \BCD_2_digit_7_seg_display|Mux2~0_combout\ : std_logic;
SIGNAL \multiplication|Add0~30\ : std_logic;
SIGNAL \multiplication|Add0~33_sumout\ : std_logic;
SIGNAL \BCD_2_digit_7_seg_display|Mux1~0_combout\ : std_logic;
SIGNAL \multiplication|Add0~34\ : std_logic;
SIGNAL \multiplication|Add0~37_sumout\ : std_logic;
SIGNAL \BCD_2_digit_7_seg_display|Mux0~0_combout\ : std_logic;
SIGNAL \BCD_2_digit_7_seg_display|Remainder[0]~0_combout\ : std_logic;
SIGNAL \multiplication|DONE~0_combout\ : std_logic;
SIGNAL \multiplication|DONE~q\ : std_logic;
SIGNAL \division|DONE~0_combout\ : std_logic;
SIGNAL \division|DONE~q\ : std_logic;
SIGNAL \BCD_2_digit_7_seg_display|Mux10~0_combout\ : std_logic;
SIGNAL \BCD_2_digit_7_seg_display|Done~q\ : std_logic;
SIGNAL \multiplication|Data_Product\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BCD_2_digit_7_seg_display|Remainder\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \multiplication|bit_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \multiplication|Data_A\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \division|Data_Quotient\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \multiplication|R\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \division|bit_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \add|sum\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \division|Data_B\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \BCD_2_digit_7_seg_display|Result\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \division|Q\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sub|sum\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sub|cout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \division|Data_A\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \add|cout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \division|R\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \multiplication|Data_B\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \division|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \division|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \division|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \division|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \division|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \division|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \division|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \division|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \division|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \division|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \division|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \division|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \division|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \division|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \division|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \division|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \division|ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL \division|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \division|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \division|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \division|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \division|ALT_INV_bit_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \multiplication|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \multiplication|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \multiplication|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \multiplication|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \multiplication|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \multiplication|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \multiplication|ALT_INV_state~q\ : std_logic;
SIGNAL \division|ALT_INV_DONE~q\ : std_logic;
SIGNAL \multiplication|ALT_INV_DONE~q\ : std_logic;
SIGNAL \division|ALT_INV_Q\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \multiplication|ALT_INV_R\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \add|ALT_INV_sum\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \sub|ALT_INV_sum\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \add|ALT_INV_cout\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \sub|ALT_INV_cout\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \division|ALT_INV_Data_B\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \multiplication|ALT_INV_Data_A\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \division|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \division|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \division|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \division|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \multiplication|ALT_INV_bit_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \multiplication|ALT_INV_Data_Product\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_Start~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_RST_N~input_o\ : std_logic;
SIGNAL \ALT_INV_Operation[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Operation[1]~input_o\ : std_logic;
SIGNAL \division|ALT_INV_state.S0~q\ : std_logic;
SIGNAL \multiplication|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \multiplication|ALT_INV_Data_B\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \division|ALT_INV_state.S2~q\ : std_logic;
SIGNAL \division|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \division|ALT_INV_Data_A\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \division|ALT_INV_state.S1~q\ : std_logic;
SIGNAL \division|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \division|ALT_INV_LessThan0~4_combout\ : std_logic;

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
\division|ALT_INV_Add0~29_sumout\ <= NOT \division|Add0~29_sumout\;
\division|ALT_INV_Add1~29_sumout\ <= NOT \division|Add1~29_sumout\;
\division|ALT_INV_Add0~25_sumout\ <= NOT \division|Add0~25_sumout\;
\division|ALT_INV_Add1~25_sumout\ <= NOT \division|Add1~25_sumout\;
\division|ALT_INV_Add0~21_sumout\ <= NOT \division|Add0~21_sumout\;
\division|ALT_INV_Add1~21_sumout\ <= NOT \division|Add1~21_sumout\;
\division|ALT_INV_Add0~17_sumout\ <= NOT \division|Add0~17_sumout\;
\division|ALT_INV_Add1~17_sumout\ <= NOT \division|Add1~17_sumout\;
\division|ALT_INV_Add0~13_sumout\ <= NOT \division|Add0~13_sumout\;
\division|ALT_INV_Add1~13_sumout\ <= NOT \division|Add1~13_sumout\;
\division|ALT_INV_Add0~9_sumout\ <= NOT \division|Add0~9_sumout\;
\division|ALT_INV_Add1~9_sumout\ <= NOT \division|Add1~9_sumout\;
\division|ALT_INV_Add0~5_sumout\ <= NOT \division|Add0~5_sumout\;
\division|ALT_INV_Add1~5_sumout\ <= NOT \division|Add1~5_sumout\;
\division|ALT_INV_Add0~1_sumout\ <= NOT \division|Add0~1_sumout\;
\division|ALT_INV_Add1~1_sumout\ <= NOT \division|Add1~1_sumout\;
\division|ALT_INV_Add2~1_sumout\ <= NOT \division|Add2~1_sumout\;
\division|ALT_INV_LessThan0~3_combout\ <= NOT \division|LessThan0~3_combout\;
\division|ALT_INV_LessThan0~2_combout\ <= NOT \division|LessThan0~2_combout\;
\division|ALT_INV_LessThan0~1_combout\ <= NOT \division|LessThan0~1_combout\;
\division|ALT_INV_LessThan0~0_combout\ <= NOT \division|LessThan0~0_combout\;
\division|ALT_INV_bit_counter\(31) <= NOT \division|bit_counter\(31);
\multiplication|ALT_INV_LessThan0~5_combout\ <= NOT \multiplication|LessThan0~5_combout\;
\multiplication|ALT_INV_LessThan0~4_combout\ <= NOT \multiplication|LessThan0~4_combout\;
\multiplication|ALT_INV_LessThan0~3_combout\ <= NOT \multiplication|LessThan0~3_combout\;
\multiplication|ALT_INV_LessThan0~2_combout\ <= NOT \multiplication|LessThan0~2_combout\;
\multiplication|ALT_INV_LessThan0~1_combout\ <= NOT \multiplication|LessThan0~1_combout\;
\multiplication|ALT_INV_LessThan0~0_combout\ <= NOT \multiplication|LessThan0~0_combout\;
\multiplication|ALT_INV_state~q\ <= NOT \multiplication|state~q\;
\division|ALT_INV_DONE~q\ <= NOT \division|DONE~q\;
\multiplication|ALT_INV_DONE~q\ <= NOT \multiplication|DONE~q\;
\division|ALT_INV_Q\(9) <= NOT \division|Q\(9);
\multiplication|ALT_INV_R\(9) <= NOT \multiplication|R\(9);
\division|ALT_INV_Q\(8) <= NOT \division|Q\(8);
\multiplication|ALT_INV_R\(8) <= NOT \multiplication|R\(8);
\division|ALT_INV_Q\(7) <= NOT \division|Q\(7);
\multiplication|ALT_INV_R\(7) <= NOT \multiplication|R\(7);
\division|ALT_INV_Q\(6) <= NOT \division|Q\(6);
\multiplication|ALT_INV_R\(6) <= NOT \multiplication|R\(6);
\division|ALT_INV_Q\(5) <= NOT \division|Q\(5);
\multiplication|ALT_INV_R\(5) <= NOT \multiplication|R\(5);
\add|ALT_INV_sum\(4) <= NOT \add|sum\(4);
\sub|ALT_INV_sum\(4) <= NOT \sub|sum\(4);
\multiplication|ALT_INV_R\(4) <= NOT \multiplication|R\(4);
\division|ALT_INV_Q\(4) <= NOT \division|Q\(4);
\add|ALT_INV_sum\(3) <= NOT \add|sum\(3);
\add|ALT_INV_cout\(3) <= NOT \add|cout\(3);
\sub|ALT_INV_sum\(3) <= NOT \sub|sum\(3);
\sub|ALT_INV_cout\(3) <= NOT \sub|cout\(3);
\multiplication|ALT_INV_R\(3) <= NOT \multiplication|R\(3);
\division|ALT_INV_Q\(3) <= NOT \division|Q\(3);
\add|ALT_INV_sum\(2) <= NOT \add|sum\(2);
\sub|ALT_INV_sum\(2) <= NOT \sub|sum\(2);
\multiplication|ALT_INV_R\(2) <= NOT \multiplication|R\(2);
\division|ALT_INV_Q\(2) <= NOT \division|Q\(2);
\add|ALT_INV_sum\(1) <= NOT \add|sum\(1);
\sub|ALT_INV_sum\(1) <= NOT \sub|sum\(1);
\multiplication|ALT_INV_R\(1) <= NOT \multiplication|R\(1);
\division|ALT_INV_Q\(1) <= NOT \division|Q\(1);
\division|ALT_INV_Q\(0) <= NOT \division|Q\(0);
\multiplication|ALT_INV_R\(0) <= NOT \multiplication|R\(0);
\division|ALT_INV_bit_counter\(0) <= NOT \division|bit_counter\(0);
\division|ALT_INV_Data_B\(8) <= NOT \division|Data_B\(8);
\division|ALT_INV_Data_B\(7) <= NOT \division|Data_B\(7);
\division|ALT_INV_Data_B\(6) <= NOT \division|Data_B\(6);
\division|ALT_INV_Data_B\(5) <= NOT \division|Data_B\(5);
\division|ALT_INV_Data_B\(4) <= NOT \division|Data_B\(4);
\division|ALT_INV_Data_B\(3) <= NOT \division|Data_B\(3);
\division|ALT_INV_Data_B\(2) <= NOT \division|Data_B\(2);
\division|ALT_INV_Data_B\(1) <= NOT \division|Data_B\(1);
\division|ALT_INV_Data_B\(0) <= NOT \division|Data_B\(0);
\multiplication|ALT_INV_Data_A\(9) <= NOT \multiplication|Data_A\(9);
\multiplication|ALT_INV_Data_A\(8) <= NOT \multiplication|Data_A\(8);
\multiplication|ALT_INV_Data_A\(7) <= NOT \multiplication|Data_A\(7);
\multiplication|ALT_INV_Data_A\(6) <= NOT \multiplication|Data_A\(6);
\multiplication|ALT_INV_Data_A\(5) <= NOT \multiplication|Data_A\(5);
\multiplication|ALT_INV_Data_A\(0) <= NOT \multiplication|Data_A\(0);
\division|ALT_INV_Add1~37_sumout\ <= NOT \division|Add1~37_sumout\;
\division|ALT_INV_Add0~37_sumout\ <= NOT \division|Add0~37_sumout\;
\division|ALT_INV_Add0~33_sumout\ <= NOT \division|Add0~33_sumout\;
\division|ALT_INV_Add1~33_sumout\ <= NOT \division|Add1~33_sumout\;
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
\division|ALT_INV_bit_counter\(14) <= NOT \division|bit_counter\(14);
\division|ALT_INV_bit_counter\(15) <= NOT \division|bit_counter\(15);
\division|ALT_INV_bit_counter\(16) <= NOT \division|bit_counter\(16);
\division|ALT_INV_bit_counter\(18) <= NOT \division|bit_counter\(18);
\division|ALT_INV_bit_counter\(19) <= NOT \division|bit_counter\(19);
\division|ALT_INV_bit_counter\(20) <= NOT \division|bit_counter\(20);
\division|ALT_INV_bit_counter\(21) <= NOT \division|bit_counter\(21);
\division|ALT_INV_bit_counter\(22) <= NOT \division|bit_counter\(22);
\division|ALT_INV_bit_counter\(23) <= NOT \division|bit_counter\(23);
\division|ALT_INV_bit_counter\(24) <= NOT \division|bit_counter\(24);
\division|ALT_INV_bit_counter\(1) <= NOT \division|bit_counter\(1);
\division|ALT_INV_bit_counter\(2) <= NOT \division|bit_counter\(2);
\division|ALT_INV_bit_counter\(8) <= NOT \division|bit_counter\(8);
\division|ALT_INV_bit_counter\(9) <= NOT \division|bit_counter\(9);
\division|ALT_INV_bit_counter\(10) <= NOT \division|bit_counter\(10);
\division|ALT_INV_bit_counter\(11) <= NOT \division|bit_counter\(11);
\division|ALT_INV_bit_counter\(12) <= NOT \division|bit_counter\(12);
\division|ALT_INV_bit_counter\(13) <= NOT \division|bit_counter\(13);
\division|ALT_INV_bit_counter\(17) <= NOT \division|bit_counter\(17);
\division|ALT_INV_bit_counter\(3) <= NOT \division|bit_counter\(3);
\division|ALT_INV_bit_counter\(4) <= NOT \division|bit_counter\(4);
\division|ALT_INV_bit_counter\(5) <= NOT \division|bit_counter\(5);
\division|ALT_INV_bit_counter\(6) <= NOT \division|bit_counter\(6);
\division|ALT_INV_bit_counter\(7) <= NOT \division|bit_counter\(7);
\division|ALT_INV_bit_counter\(25) <= NOT \division|bit_counter\(25);
\division|ALT_INV_bit_counter\(26) <= NOT \division|bit_counter\(26);
\division|ALT_INV_bit_counter\(27) <= NOT \division|bit_counter\(27);
\division|ALT_INV_bit_counter\(28) <= NOT \division|bit_counter\(28);
\division|ALT_INV_bit_counter\(29) <= NOT \division|bit_counter\(29);
\division|ALT_INV_bit_counter\(30) <= NOT \division|bit_counter\(30);
\multiplication|ALT_INV_bit_counter\(8) <= NOT \multiplication|bit_counter\(8);
\multiplication|ALT_INV_bit_counter\(9) <= NOT \multiplication|bit_counter\(9);
\multiplication|ALT_INV_bit_counter\(29) <= NOT \multiplication|bit_counter\(29);
\multiplication|ALT_INV_bit_counter\(10) <= NOT \multiplication|bit_counter\(10);
\multiplication|ALT_INV_bit_counter\(11) <= NOT \multiplication|bit_counter\(11);
\multiplication|ALT_INV_bit_counter\(12) <= NOT \multiplication|bit_counter\(12);
\multiplication|ALT_INV_bit_counter\(26) <= NOT \multiplication|bit_counter\(26);
\multiplication|ALT_INV_bit_counter\(27) <= NOT \multiplication|bit_counter\(27);
\multiplication|ALT_INV_bit_counter\(28) <= NOT \multiplication|bit_counter\(28);
\multiplication|ALT_INV_bit_counter\(30) <= NOT \multiplication|bit_counter\(30);
\multiplication|ALT_INV_bit_counter\(1) <= NOT \multiplication|bit_counter\(1);
\multiplication|ALT_INV_bit_counter\(2) <= NOT \multiplication|bit_counter\(2);
\multiplication|ALT_INV_bit_counter\(25) <= NOT \multiplication|bit_counter\(25);
\multiplication|ALT_INV_bit_counter\(3) <= NOT \multiplication|bit_counter\(3);
\multiplication|ALT_INV_bit_counter\(4) <= NOT \multiplication|bit_counter\(4);
\multiplication|ALT_INV_bit_counter\(5) <= NOT \multiplication|bit_counter\(5);
\multiplication|ALT_INV_bit_counter\(6) <= NOT \multiplication|bit_counter\(6);
\multiplication|ALT_INV_bit_counter\(7) <= NOT \multiplication|bit_counter\(7);
\multiplication|ALT_INV_bit_counter\(19) <= NOT \multiplication|bit_counter\(19);
\multiplication|ALT_INV_bit_counter\(20) <= NOT \multiplication|bit_counter\(20);
\multiplication|ALT_INV_bit_counter\(21) <= NOT \multiplication|bit_counter\(21);
\multiplication|ALT_INV_bit_counter\(22) <= NOT \multiplication|bit_counter\(22);
\multiplication|ALT_INV_bit_counter\(23) <= NOT \multiplication|bit_counter\(23);
\multiplication|ALT_INV_bit_counter\(24) <= NOT \multiplication|bit_counter\(24);
\multiplication|ALT_INV_bit_counter\(13) <= NOT \multiplication|bit_counter\(13);
\multiplication|ALT_INV_bit_counter\(15) <= NOT \multiplication|bit_counter\(15);
\multiplication|ALT_INV_bit_counter\(16) <= NOT \multiplication|bit_counter\(16);
\multiplication|ALT_INV_bit_counter\(14) <= NOT \multiplication|bit_counter\(14);
\multiplication|ALT_INV_bit_counter\(17) <= NOT \multiplication|bit_counter\(17);
\multiplication|ALT_INV_bit_counter\(18) <= NOT \multiplication|bit_counter\(18);
\multiplication|ALT_INV_bit_counter\(31) <= NOT \multiplication|bit_counter\(31);
\multiplication|ALT_INV_Data_Product\(0) <= NOT \multiplication|Data_Product\(0);
\ALT_INV_Start~input_o\ <= NOT \Start~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_RST_N~input_o\ <= NOT \RST_N~input_o\;
\ALT_INV_Operation[0]~input_o\ <= NOT \Operation[0]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_Operation[1]~input_o\ <= NOT \Operation[1]~input_o\;
\division|ALT_INV_Data_B\(9) <= NOT \division|Data_B\(9);
\multiplication|ALT_INV_Data_A\(4) <= NOT \multiplication|Data_A\(4);
\multiplication|ALT_INV_Data_A\(3) <= NOT \multiplication|Data_A\(3);
\multiplication|ALT_INV_Data_A\(2) <= NOT \multiplication|Data_A\(2);
\multiplication|ALT_INV_Data_A\(1) <= NOT \multiplication|Data_A\(1);
\division|ALT_INV_state.S0~q\ <= NOT \division|state.S0~q\;
\multiplication|ALT_INV_Mux0~0_combout\ <= NOT \multiplication|Mux0~0_combout\;
\multiplication|ALT_INV_Data_B\(3) <= NOT \multiplication|Data_B\(3);
\multiplication|ALT_INV_Data_B\(2) <= NOT \multiplication|Data_B\(2);
\multiplication|ALT_INV_Data_B\(1) <= NOT \multiplication|Data_B\(1);
\multiplication|ALT_INV_Data_B\(0) <= NOT \multiplication|Data_B\(0);
\multiplication|ALT_INV_Data_B\(4) <= NOT \multiplication|Data_B\(4);
\division|ALT_INV_state.S2~q\ <= NOT \division|state.S2~q\;
\division|ALT_INV_LessThan0~6_combout\ <= NOT \division|LessThan0~6_combout\;
\division|ALT_INV_Data_A\(9) <= NOT \division|Data_A\(9);
\division|ALT_INV_Data_A\(8) <= NOT \division|Data_A\(8);
\division|ALT_INV_Data_A\(7) <= NOT \division|Data_A\(7);
\division|ALT_INV_Data_A\(6) <= NOT \division|Data_A\(6);
\division|ALT_INV_Data_A\(5) <= NOT \division|Data_A\(5);
\division|ALT_INV_Data_A\(4) <= NOT \division|Data_A\(4);
\division|ALT_INV_Data_A\(3) <= NOT \division|Data_A\(3);
\division|ALT_INV_Data_A\(2) <= NOT \division|Data_A\(2);
\division|ALT_INV_Data_A\(1) <= NOT \division|Data_A\(1);
\division|ALT_INV_Data_A\(0) <= NOT \division|Data_A\(0);
\division|ALT_INV_state.S1~q\ <= NOT \division|state.S1~q\;
\division|ALT_INV_LessThan0~5_combout\ <= NOT \division|LessThan0~5_combout\;
\division|ALT_INV_LessThan0~4_combout\ <= NOT \division|LessThan0~4_combout\;

\Result[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \BCD_2_digit_7_seg_display|Result\(0),
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
	i => \BCD_2_digit_7_seg_display|Result\(1),
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
	i => \BCD_2_digit_7_seg_display|Result\(2),
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
	i => \BCD_2_digit_7_seg_display|Result\(3),
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
	i => \BCD_2_digit_7_seg_display|Result\(4),
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
	i => \BCD_2_digit_7_seg_display|Result\(5),
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
	i => \BCD_2_digit_7_seg_display|Result\(6),
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
	i => \BCD_2_digit_7_seg_display|Result\(7),
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
	i => \BCD_2_digit_7_seg_display|Result\(8),
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
	i => \BCD_2_digit_7_seg_display|Result\(9),
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
	i => \BCD_2_digit_7_seg_display|Remainder\(0),
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
	i => \BCD_2_digit_7_seg_display|Remainder\(1),
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
	i => \BCD_2_digit_7_seg_display|Remainder\(2),
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
	i => \BCD_2_digit_7_seg_display|Remainder\(3),
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
	i => \BCD_2_digit_7_seg_display|Remainder\(4),
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
	i => \BCD_2_digit_7_seg_display|Remainder\(5),
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
	i => \BCD_2_digit_7_seg_display|Remainder\(6),
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
	i => \BCD_2_digit_7_seg_display|Remainder\(7),
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
	i => \BCD_2_digit_7_seg_display|Remainder\(8),
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
	i => \BCD_2_digit_7_seg_display|Remainder\(9),
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
	i => \BCD_2_digit_7_seg_display|Done~q\,
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

\Operation[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Operation(1),
	o => \Operation[1]~input_o\);

\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

\Operation[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Operation(0),
	o => \Operation[0]~input_o\);

\Start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

\multiplication|Data_A~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Data_A~0_combout\ = (!\Start~input_o\ & ((\multiplication|Data_A\(0)))) # (\Start~input_o\ & (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_Start~input_o\,
	datac => \multiplication|ALT_INV_Data_A\(0),
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

\multiplication|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~69_sumout\ = SUM(( \multiplication|bit_counter\(3) ) + ( GND ) + ( \multiplication|Add1~78\ ))
-- \multiplication|Add1~70\ = CARRY(( \multiplication|bit_counter\(3) ) + ( GND ) + ( \multiplication|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(3),
	cin => \multiplication|Add1~78\,
	sumout => \multiplication|Add1~69_sumout\,
	cout => \multiplication|Add1~70\);

\multiplication|bit_counter[3]\ : dffeas
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
	q => \multiplication|bit_counter\(3));

\multiplication|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~65_sumout\ = SUM(( \multiplication|bit_counter\(4) ) + ( GND ) + ( \multiplication|Add1~70\ ))
-- \multiplication|Add1~66\ = CARRY(( \multiplication|bit_counter\(4) ) + ( GND ) + ( \multiplication|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(4),
	cin => \multiplication|Add1~70\,
	sumout => \multiplication|Add1~65_sumout\,
	cout => \multiplication|Add1~66\);

\multiplication|bit_counter[4]\ : dffeas
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
	q => \multiplication|bit_counter\(4));

\multiplication|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~61_sumout\ = SUM(( \multiplication|bit_counter\(5) ) + ( GND ) + ( \multiplication|Add1~66\ ))
-- \multiplication|Add1~62\ = CARRY(( \multiplication|bit_counter\(5) ) + ( GND ) + ( \multiplication|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(5),
	cin => \multiplication|Add1~66\,
	sumout => \multiplication|Add1~61_sumout\,
	cout => \multiplication|Add1~62\);

\multiplication|bit_counter[5]\ : dffeas
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
	q => \multiplication|bit_counter\(5));

\multiplication|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~57_sumout\ = SUM(( \multiplication|bit_counter\(6) ) + ( GND ) + ( \multiplication|Add1~62\ ))
-- \multiplication|Add1~58\ = CARRY(( \multiplication|bit_counter\(6) ) + ( GND ) + ( \multiplication|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(6),
	cin => \multiplication|Add1~62\,
	sumout => \multiplication|Add1~57_sumout\,
	cout => \multiplication|Add1~58\);

\multiplication|bit_counter[6]\ : dffeas
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
	q => \multiplication|bit_counter\(6));

\multiplication|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~53_sumout\ = SUM(( \multiplication|bit_counter\(7) ) + ( GND ) + ( \multiplication|Add1~58\ ))
-- \multiplication|Add1~54\ = CARRY(( \multiplication|bit_counter\(7) ) + ( GND ) + ( \multiplication|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(7),
	cin => \multiplication|Add1~58\,
	sumout => \multiplication|Add1~53_sumout\,
	cout => \multiplication|Add1~54\);

\multiplication|bit_counter[7]\ : dffeas
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
	q => \multiplication|bit_counter\(7));

\multiplication|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~121_sumout\ = SUM(( \multiplication|bit_counter\(8) ) + ( GND ) + ( \multiplication|Add1~54\ ))
-- \multiplication|Add1~122\ = CARRY(( \multiplication|bit_counter\(8) ) + ( GND ) + ( \multiplication|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(8),
	cin => \multiplication|Add1~54\,
	sumout => \multiplication|Add1~121_sumout\,
	cout => \multiplication|Add1~122\);

\multiplication|bit_counter[8]\ : dffeas
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
	q => \multiplication|bit_counter\(8));

\multiplication|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~117_sumout\ = SUM(( \multiplication|bit_counter\(9) ) + ( GND ) + ( \multiplication|Add1~122\ ))
-- \multiplication|Add1~118\ = CARRY(( \multiplication|bit_counter\(9) ) + ( GND ) + ( \multiplication|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(9),
	cin => \multiplication|Add1~122\,
	sumout => \multiplication|Add1~117_sumout\,
	cout => \multiplication|Add1~118\);

\multiplication|bit_counter[9]\ : dffeas
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
	q => \multiplication|bit_counter\(9));

\multiplication|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~109_sumout\ = SUM(( \multiplication|bit_counter\(10) ) + ( GND ) + ( \multiplication|Add1~118\ ))
-- \multiplication|Add1~110\ = CARRY(( \multiplication|bit_counter\(10) ) + ( GND ) + ( \multiplication|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(10),
	cin => \multiplication|Add1~118\,
	sumout => \multiplication|Add1~109_sumout\,
	cout => \multiplication|Add1~110\);

\multiplication|bit_counter[10]\ : dffeas
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
	q => \multiplication|bit_counter\(10));

\multiplication|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~105_sumout\ = SUM(( \multiplication|bit_counter\(11) ) + ( GND ) + ( \multiplication|Add1~110\ ))
-- \multiplication|Add1~106\ = CARRY(( \multiplication|bit_counter\(11) ) + ( GND ) + ( \multiplication|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(11),
	cin => \multiplication|Add1~110\,
	sumout => \multiplication|Add1~105_sumout\,
	cout => \multiplication|Add1~106\);

\multiplication|bit_counter[11]\ : dffeas
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
	q => \multiplication|bit_counter\(11));

\multiplication|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~101_sumout\ = SUM(( \multiplication|bit_counter\(12) ) + ( GND ) + ( \multiplication|Add1~106\ ))
-- \multiplication|Add1~102\ = CARRY(( \multiplication|bit_counter\(12) ) + ( GND ) + ( \multiplication|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(12),
	cin => \multiplication|Add1~106\,
	sumout => \multiplication|Add1~101_sumout\,
	cout => \multiplication|Add1~102\);

\multiplication|bit_counter[12]\ : dffeas
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
	q => \multiplication|bit_counter\(12));

\multiplication|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~25_sumout\ = SUM(( \multiplication|bit_counter\(13) ) + ( GND ) + ( \multiplication|Add1~102\ ))
-- \multiplication|Add1~26\ = CARRY(( \multiplication|bit_counter\(13) ) + ( GND ) + ( \multiplication|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(13),
	cin => \multiplication|Add1~102\,
	sumout => \multiplication|Add1~25_sumout\,
	cout => \multiplication|Add1~26\);

\multiplication|bit_counter[13]\ : dffeas
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
	q => \multiplication|bit_counter\(13));

\multiplication|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~13_sumout\ = SUM(( \multiplication|bit_counter\(14) ) + ( GND ) + ( \multiplication|Add1~26\ ))
-- \multiplication|Add1~14\ = CARRY(( \multiplication|bit_counter\(14) ) + ( GND ) + ( \multiplication|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(14),
	cin => \multiplication|Add1~26\,
	sumout => \multiplication|Add1~13_sumout\,
	cout => \multiplication|Add1~14\);

\multiplication|bit_counter[14]\ : dffeas
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
	q => \multiplication|bit_counter\(14));

\multiplication|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~21_sumout\ = SUM(( \multiplication|bit_counter\(15) ) + ( GND ) + ( \multiplication|Add1~14\ ))
-- \multiplication|Add1~22\ = CARRY(( \multiplication|bit_counter\(15) ) + ( GND ) + ( \multiplication|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(15),
	cin => \multiplication|Add1~14\,
	sumout => \multiplication|Add1~21_sumout\,
	cout => \multiplication|Add1~22\);

\multiplication|bit_counter[15]\ : dffeas
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
	q => \multiplication|bit_counter\(15));

\multiplication|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~17_sumout\ = SUM(( \multiplication|bit_counter\(16) ) + ( GND ) + ( \multiplication|Add1~22\ ))
-- \multiplication|Add1~18\ = CARRY(( \multiplication|bit_counter\(16) ) + ( GND ) + ( \multiplication|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(16),
	cin => \multiplication|Add1~22\,
	sumout => \multiplication|Add1~17_sumout\,
	cout => \multiplication|Add1~18\);

\multiplication|bit_counter[16]\ : dffeas
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
	q => \multiplication|bit_counter\(16));

\multiplication|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~9_sumout\ = SUM(( \multiplication|bit_counter\(17) ) + ( GND ) + ( \multiplication|Add1~18\ ))
-- \multiplication|Add1~10\ = CARRY(( \multiplication|bit_counter\(17) ) + ( GND ) + ( \multiplication|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(17),
	cin => \multiplication|Add1~18\,
	sumout => \multiplication|Add1~9_sumout\,
	cout => \multiplication|Add1~10\);

\multiplication|bit_counter[17]\ : dffeas
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
	q => \multiplication|bit_counter\(17));

\multiplication|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~5_sumout\ = SUM(( \multiplication|bit_counter\(18) ) + ( GND ) + ( \multiplication|Add1~10\ ))
-- \multiplication|Add1~6\ = CARRY(( \multiplication|bit_counter\(18) ) + ( GND ) + ( \multiplication|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(18),
	cin => \multiplication|Add1~10\,
	sumout => \multiplication|Add1~5_sumout\,
	cout => \multiplication|Add1~6\);

\multiplication|bit_counter[18]\ : dffeas
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
	q => \multiplication|bit_counter\(18));

\multiplication|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~49_sumout\ = SUM(( \multiplication|bit_counter\(19) ) + ( GND ) + ( \multiplication|Add1~6\ ))
-- \multiplication|Add1~50\ = CARRY(( \multiplication|bit_counter\(19) ) + ( GND ) + ( \multiplication|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(19),
	cin => \multiplication|Add1~6\,
	sumout => \multiplication|Add1~49_sumout\,
	cout => \multiplication|Add1~50\);

\multiplication|bit_counter[19]\ : dffeas
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
	q => \multiplication|bit_counter\(19));

\multiplication|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~45_sumout\ = SUM(( \multiplication|bit_counter\(20) ) + ( GND ) + ( \multiplication|Add1~50\ ))
-- \multiplication|Add1~46\ = CARRY(( \multiplication|bit_counter\(20) ) + ( GND ) + ( \multiplication|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(20),
	cin => \multiplication|Add1~50\,
	sumout => \multiplication|Add1~45_sumout\,
	cout => \multiplication|Add1~46\);

\multiplication|bit_counter[20]\ : dffeas
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
	q => \multiplication|bit_counter\(20));

\multiplication|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~41_sumout\ = SUM(( \multiplication|bit_counter\(21) ) + ( GND ) + ( \multiplication|Add1~46\ ))
-- \multiplication|Add1~42\ = CARRY(( \multiplication|bit_counter\(21) ) + ( GND ) + ( \multiplication|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(21),
	cin => \multiplication|Add1~46\,
	sumout => \multiplication|Add1~41_sumout\,
	cout => \multiplication|Add1~42\);

\multiplication|bit_counter[21]\ : dffeas
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
	q => \multiplication|bit_counter\(21));

\multiplication|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~37_sumout\ = SUM(( \multiplication|bit_counter\(22) ) + ( GND ) + ( \multiplication|Add1~42\ ))
-- \multiplication|Add1~38\ = CARRY(( \multiplication|bit_counter\(22) ) + ( GND ) + ( \multiplication|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(22),
	cin => \multiplication|Add1~42\,
	sumout => \multiplication|Add1~37_sumout\,
	cout => \multiplication|Add1~38\);

\multiplication|bit_counter[22]\ : dffeas
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
	q => \multiplication|bit_counter\(22));

\multiplication|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~33_sumout\ = SUM(( \multiplication|bit_counter\(23) ) + ( GND ) + ( \multiplication|Add1~38\ ))
-- \multiplication|Add1~34\ = CARRY(( \multiplication|bit_counter\(23) ) + ( GND ) + ( \multiplication|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(23),
	cin => \multiplication|Add1~38\,
	sumout => \multiplication|Add1~33_sumout\,
	cout => \multiplication|Add1~34\);

\multiplication|bit_counter[23]\ : dffeas
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
	q => \multiplication|bit_counter\(23));

\multiplication|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~29_sumout\ = SUM(( \multiplication|bit_counter\(24) ) + ( GND ) + ( \multiplication|Add1~34\ ))
-- \multiplication|Add1~30\ = CARRY(( \multiplication|bit_counter\(24) ) + ( GND ) + ( \multiplication|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(24),
	cin => \multiplication|Add1~34\,
	sumout => \multiplication|Add1~29_sumout\,
	cout => \multiplication|Add1~30\);

\multiplication|bit_counter[24]\ : dffeas
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
	q => \multiplication|bit_counter\(24));

\multiplication|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~73_sumout\ = SUM(( \multiplication|bit_counter\(25) ) + ( GND ) + ( \multiplication|Add1~30\ ))
-- \multiplication|Add1~74\ = CARRY(( \multiplication|bit_counter\(25) ) + ( GND ) + ( \multiplication|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(25),
	cin => \multiplication|Add1~30\,
	sumout => \multiplication|Add1~73_sumout\,
	cout => \multiplication|Add1~74\);

\multiplication|bit_counter[25]\ : dffeas
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
	q => \multiplication|bit_counter\(25));

\multiplication|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~97_sumout\ = SUM(( \multiplication|bit_counter\(26) ) + ( GND ) + ( \multiplication|Add1~74\ ))
-- \multiplication|Add1~98\ = CARRY(( \multiplication|bit_counter\(26) ) + ( GND ) + ( \multiplication|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(26),
	cin => \multiplication|Add1~74\,
	sumout => \multiplication|Add1~97_sumout\,
	cout => \multiplication|Add1~98\);

\multiplication|bit_counter[26]\ : dffeas
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
	q => \multiplication|bit_counter\(26));

\multiplication|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~93_sumout\ = SUM(( \multiplication|bit_counter\(27) ) + ( GND ) + ( \multiplication|Add1~98\ ))
-- \multiplication|Add1~94\ = CARRY(( \multiplication|bit_counter\(27) ) + ( GND ) + ( \multiplication|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(27),
	cin => \multiplication|Add1~98\,
	sumout => \multiplication|Add1~93_sumout\,
	cout => \multiplication|Add1~94\);

\multiplication|bit_counter[27]\ : dffeas
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
	q => \multiplication|bit_counter\(27));

\multiplication|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~89_sumout\ = SUM(( \multiplication|bit_counter\(28) ) + ( GND ) + ( \multiplication|Add1~94\ ))
-- \multiplication|Add1~90\ = CARRY(( \multiplication|bit_counter\(28) ) + ( GND ) + ( \multiplication|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(28),
	cin => \multiplication|Add1~94\,
	sumout => \multiplication|Add1~89_sumout\,
	cout => \multiplication|Add1~90\);

\multiplication|bit_counter[28]\ : dffeas
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
	q => \multiplication|bit_counter\(28));

\multiplication|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~113_sumout\ = SUM(( \multiplication|bit_counter\(29) ) + ( GND ) + ( \multiplication|Add1~90\ ))
-- \multiplication|Add1~114\ = CARRY(( \multiplication|bit_counter\(29) ) + ( GND ) + ( \multiplication|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(29),
	cin => \multiplication|Add1~90\,
	sumout => \multiplication|Add1~113_sumout\,
	cout => \multiplication|Add1~114\);

\multiplication|bit_counter[29]\ : dffeas
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
	q => \multiplication|bit_counter\(29));

\multiplication|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~85_sumout\ = SUM(( \multiplication|bit_counter\(30) ) + ( GND ) + ( \multiplication|Add1~114\ ))
-- \multiplication|Add1~86\ = CARRY(( \multiplication|bit_counter\(30) ) + ( GND ) + ( \multiplication|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(30),
	cin => \multiplication|Add1~114\,
	sumout => \multiplication|Add1~85_sumout\,
	cout => \multiplication|Add1~86\);

\multiplication|bit_counter[30]\ : dffeas
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
	q => \multiplication|bit_counter\(30));

\multiplication|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Add1~1_sumout\ = SUM(( \multiplication|bit_counter\(31) ) + ( GND ) + ( \multiplication|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \multiplication|ALT_INV_bit_counter\(31),
	cin => \multiplication|Add1~86\,
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
-- \multiplication|LessThan0~0_combout\ = ( !\multiplication|bit_counter\(15) & ( !\multiplication|bit_counter\(13) & ( (!\multiplication|bit_counter\(18) & (!\multiplication|bit_counter\(17) & (!\multiplication|bit_counter\(14) & 
-- !\multiplication|bit_counter\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_bit_counter\(18),
	datab => \multiplication|ALT_INV_bit_counter\(17),
	datac => \multiplication|ALT_INV_bit_counter\(14),
	datad => \multiplication|ALT_INV_bit_counter\(16),
	datae => \multiplication|ALT_INV_bit_counter\(15),
	dataf => \multiplication|ALT_INV_bit_counter\(13),
	combout => \multiplication|LessThan0~0_combout\);

\multiplication|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|LessThan0~1_combout\ = ( !\multiplication|bit_counter\(20) & ( !\multiplication|bit_counter\(19) & ( (!\multiplication|bit_counter\(24) & (!\multiplication|bit_counter\(23) & (!\multiplication|bit_counter\(22) & 
-- !\multiplication|bit_counter\(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_bit_counter\(24),
	datab => \multiplication|ALT_INV_bit_counter\(23),
	datac => \multiplication|ALT_INV_bit_counter\(22),
	datad => \multiplication|ALT_INV_bit_counter\(21),
	datae => \multiplication|ALT_INV_bit_counter\(20),
	dataf => \multiplication|ALT_INV_bit_counter\(19),
	combout => \multiplication|LessThan0~1_combout\);

\multiplication|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|LessThan0~2_combout\ = ( !\multiplication|bit_counter\(3) & ( !\multiplication|bit_counter\(25) & ( (!\multiplication|bit_counter\(7) & (!\multiplication|bit_counter\(6) & (!\multiplication|bit_counter\(5) & 
-- !\multiplication|bit_counter\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_bit_counter\(7),
	datab => \multiplication|ALT_INV_bit_counter\(6),
	datac => \multiplication|ALT_INV_bit_counter\(5),
	datad => \multiplication|ALT_INV_bit_counter\(4),
	datae => \multiplication|ALT_INV_bit_counter\(3),
	dataf => \multiplication|ALT_INV_bit_counter\(25),
	combout => \multiplication|LessThan0~2_combout\);

\multiplication|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|LessThan0~3_combout\ = ( !\multiplication|bit_counter\(27) & ( !\multiplication|bit_counter\(26) & ( (!\multiplication|bit_counter\(30) & (!\multiplication|bit_counter\(28) & ((!\multiplication|bit_counter\(2)) # 
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
	datac => \multiplication|ALT_INV_bit_counter\(30),
	datad => \multiplication|ALT_INV_bit_counter\(28),
	datae => \multiplication|ALT_INV_bit_counter\(27),
	dataf => \multiplication|ALT_INV_bit_counter\(26),
	combout => \multiplication|LessThan0~3_combout\);

\multiplication|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|LessThan0~4_combout\ = ( !\multiplication|bit_counter\(9) & ( !\multiplication|bit_counter\(8) & ( (!\multiplication|bit_counter\(12) & (!\multiplication|bit_counter\(11) & (!\multiplication|bit_counter\(10) & 
-- !\multiplication|bit_counter\(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \multiplication|ALT_INV_bit_counter\(12),
	datab => \multiplication|ALT_INV_bit_counter\(11),
	datac => \multiplication|ALT_INV_bit_counter\(10),
	datad => \multiplication|ALT_INV_bit_counter\(29),
	datae => \multiplication|ALT_INV_bit_counter\(9),
	dataf => \multiplication|ALT_INV_bit_counter\(8),
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
-- \multiplication|Data_B~0_combout\ = (\B[4]~input_o\ & !\multiplication|state~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \multiplication|ALT_INV_state~q\,
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

\multiplication|Data_B~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Data_B~2_combout\ = (\B[0]~input_o\ & !\multiplication|state~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \multiplication|ALT_INV_state~q\,
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
-- \multiplication|Data_B~3_combout\ = (\B[1]~input_o\ & !\multiplication|state~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \multiplication|ALT_INV_state~q\,
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
-- \multiplication|Data_B~4_combout\ = (\B[2]~input_o\ & !\multiplication|state~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \multiplication|ALT_INV_state~q\,
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
-- \multiplication|Data_B~5_combout\ = (\B[3]~input_o\ & !\multiplication|state~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \multiplication|ALT_INV_state~q\,
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

\division|Add2~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~125_sumout\ = SUM(( \division|bit_counter\(0) ) + ( VCC ) + ( !VCC ))
-- \division|Add2~126\ = CARRY(( \division|bit_counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(0),
	cin => GND,
	sumout => \division|Add2~125_sumout\,
	cout => \division|Add2~126\);

\division|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|LessThan0~1_combout\ = ( !\division|bit_counter\(3) & ( !\division|bit_counter\(17) & ( (!\division|bit_counter\(7) & (!\division|bit_counter\(6) & (!\division|bit_counter\(5) & !\division|bit_counter\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_bit_counter\(7),
	datab => \division|ALT_INV_bit_counter\(6),
	datac => \division|ALT_INV_bit_counter\(5),
	datad => \division|ALT_INV_bit_counter\(4),
	datae => \division|ALT_INV_bit_counter\(3),
	dataf => \division|ALT_INV_bit_counter\(17),
	combout => \division|LessThan0~1_combout\);

\division|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|LessThan0~2_combout\ = ( !\division|bit_counter\(9) & ( !\division|bit_counter\(8) & ( (!\division|bit_counter\(13) & (!\division|bit_counter\(12) & (!\division|bit_counter\(11) & !\division|bit_counter\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_bit_counter\(13),
	datab => \division|ALT_INV_bit_counter\(12),
	datac => \division|ALT_INV_bit_counter\(11),
	datad => \division|ALT_INV_bit_counter\(10),
	datae => \division|ALT_INV_bit_counter\(9),
	dataf => \division|ALT_INV_bit_counter\(8),
	combout => \division|LessThan0~2_combout\);

\division|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|LessThan0~3_combout\ = ( !\division|bit_counter\(22) & ( !\division|bit_counter\(21) & ( (!\division|bit_counter\(24) & (!\division|bit_counter\(23) & ((!\division|bit_counter\(2)) # (!\division|bit_counter\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_bit_counter\(2),
	datab => \division|ALT_INV_bit_counter\(1),
	datac => \division|ALT_INV_bit_counter\(24),
	datad => \division|ALT_INV_bit_counter\(23),
	datae => \division|ALT_INV_bit_counter\(22),
	dataf => \division|ALT_INV_bit_counter\(21),
	combout => \division|LessThan0~3_combout\);

\division|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|LessThan0~4_combout\ = ( !\division|bit_counter\(15) & ( !\division|bit_counter\(14) & ( (!\division|bit_counter\(20) & (!\division|bit_counter\(19) & (!\division|bit_counter\(18) & !\division|bit_counter\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_bit_counter\(20),
	datab => \division|ALT_INV_bit_counter\(19),
	datac => \division|ALT_INV_bit_counter\(18),
	datad => \division|ALT_INV_bit_counter\(16),
	datae => \division|ALT_INV_bit_counter\(15),
	dataf => \division|ALT_INV_bit_counter\(14),
	combout => \division|LessThan0~4_combout\);

\division|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|LessThan0~5_combout\ = (\division|LessThan0~1_combout\ & (\division|LessThan0~2_combout\ & (\division|LessThan0~3_combout\ & \division|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_LessThan0~1_combout\,
	datab => \division|ALT_INV_LessThan0~2_combout\,
	datac => \division|ALT_INV_LessThan0~3_combout\,
	datad => \division|ALT_INV_LessThan0~4_combout\,
	combout => \division|LessThan0~5_combout\);

\division|Selector20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Selector20~1_combout\ = ( \Start~input_o\ & ( \division|state.S0~q\ & ( ((!\division|state.S1~q\) # ((\division|LessThan0~0_combout\ & \division|LessThan0~5_combout\))) # (\division|bit_counter\(31)) ) ) ) # ( !\Start~input_o\ & ( 
-- \division|state.S0~q\ & ( ((!\division|state.S1~q\) # ((\division|LessThan0~0_combout\ & \division|LessThan0~5_combout\))) # (\division|bit_counter\(31)) ) ) ) # ( \Start~input_o\ & ( !\division|state.S0~q\ & ( ((!\division|state.S1~q\) # 
-- ((\division|LessThan0~0_combout\ & \division|LessThan0~5_combout\))) # (\division|bit_counter\(31)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101011111111111010101111111111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_bit_counter\(31),
	datab => \division|ALT_INV_LessThan0~0_combout\,
	datac => \division|ALT_INV_LessThan0~5_combout\,
	datad => \division|ALT_INV_state.S1~q\,
	datae => \ALT_INV_Start~input_o\,
	dataf => \division|ALT_INV_state.S0~q\,
	combout => \division|Selector20~1_combout\);

\division|state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Selector20~1_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|state.S0~q\);

\division|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Selector21~0_combout\ = ((\Start~input_o\ & !\division|state.S0~q\)) # (\division|state.S2~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001101110011011100110111001101110011011100110111001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Start~input_o\,
	datab => \division|ALT_INV_state.S2~q\,
	datac => \division|ALT_INV_state.S0~q\,
	combout => \division|Selector21~0_combout\);

\division|state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Selector21~0_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|state.S1~q\);

\division|bit_counter[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|bit_counter[2]~2_combout\ = ( \division|state.S1~q\ & ( \division|state.S0~q\ & ( (!\RST_N~input_o\ & (!\division|bit_counter\(31) & ((!\division|LessThan0~0_combout\) # (!\division|LessThan0~5_combout\)))) ) ) ) # ( !\division|state.S1~q\ & ( 
-- \division|state.S0~q\ & ( !\RST_N~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N~input_o\,
	datab => \division|ALT_INV_bit_counter\(31),
	datac => \division|ALT_INV_LessThan0~0_combout\,
	datad => \division|ALT_INV_LessThan0~5_combout\,
	datae => \division|ALT_INV_state.S1~q\,
	dataf => \division|ALT_INV_state.S0~q\,
	combout => \division|bit_counter[2]~2_combout\);

\division|bit_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~125_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(0));

\division|Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~81_sumout\ = SUM(( \division|bit_counter\(1) ) + ( GND ) + ( \division|Add2~126\ ))
-- \division|Add2~82\ = CARRY(( \division|bit_counter\(1) ) + ( GND ) + ( \division|Add2~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(1),
	cin => \division|Add2~126\,
	sumout => \division|Add2~81_sumout\,
	cout => \division|Add2~82\);

\division|bit_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~81_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(1));

\division|Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~77_sumout\ = SUM(( \division|bit_counter\(2) ) + ( GND ) + ( \division|Add2~82\ ))
-- \division|Add2~78\ = CARRY(( \division|bit_counter\(2) ) + ( GND ) + ( \division|Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(2),
	cin => \division|Add2~82\,
	sumout => \division|Add2~77_sumout\,
	cout => \division|Add2~78\);

\division|bit_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~77_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(2));

\division|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~45_sumout\ = SUM(( \division|bit_counter\(3) ) + ( GND ) + ( \division|Add2~78\ ))
-- \division|Add2~46\ = CARRY(( \division|bit_counter\(3) ) + ( GND ) + ( \division|Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(3),
	cin => \division|Add2~78\,
	sumout => \division|Add2~45_sumout\,
	cout => \division|Add2~46\);

\division|bit_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~45_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(3));

\division|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~41_sumout\ = SUM(( \division|bit_counter\(4) ) + ( GND ) + ( \division|Add2~46\ ))
-- \division|Add2~42\ = CARRY(( \division|bit_counter\(4) ) + ( GND ) + ( \division|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(4),
	cin => \division|Add2~46\,
	sumout => \division|Add2~41_sumout\,
	cout => \division|Add2~42\);

\division|bit_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~41_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(4));

\division|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~37_sumout\ = SUM(( \division|bit_counter\(5) ) + ( GND ) + ( \division|Add2~42\ ))
-- \division|Add2~38\ = CARRY(( \division|bit_counter\(5) ) + ( GND ) + ( \division|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(5),
	cin => \division|Add2~42\,
	sumout => \division|Add2~37_sumout\,
	cout => \division|Add2~38\);

\division|bit_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~37_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(5));

\division|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~33_sumout\ = SUM(( \division|bit_counter\(6) ) + ( GND ) + ( \division|Add2~38\ ))
-- \division|Add2~34\ = CARRY(( \division|bit_counter\(6) ) + ( GND ) + ( \division|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(6),
	cin => \division|Add2~38\,
	sumout => \division|Add2~33_sumout\,
	cout => \division|Add2~34\);

\division|bit_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~33_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(6));

\division|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~29_sumout\ = SUM(( \division|bit_counter\(7) ) + ( GND ) + ( \division|Add2~34\ ))
-- \division|Add2~30\ = CARRY(( \division|bit_counter\(7) ) + ( GND ) + ( \division|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(7),
	cin => \division|Add2~34\,
	sumout => \division|Add2~29_sumout\,
	cout => \division|Add2~30\);

\division|bit_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~29_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(7));

\division|Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~73_sumout\ = SUM(( \division|bit_counter\(8) ) + ( GND ) + ( \division|Add2~30\ ))
-- \division|Add2~74\ = CARRY(( \division|bit_counter\(8) ) + ( GND ) + ( \division|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(8),
	cin => \division|Add2~30\,
	sumout => \division|Add2~73_sumout\,
	cout => \division|Add2~74\);

\division|bit_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~73_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(8));

\division|Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~69_sumout\ = SUM(( \division|bit_counter\(9) ) + ( GND ) + ( \division|Add2~74\ ))
-- \division|Add2~70\ = CARRY(( \division|bit_counter\(9) ) + ( GND ) + ( \division|Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(9),
	cin => \division|Add2~74\,
	sumout => \division|Add2~69_sumout\,
	cout => \division|Add2~70\);

\division|bit_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~69_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(9));

\division|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~65_sumout\ = SUM(( \division|bit_counter\(10) ) + ( GND ) + ( \division|Add2~70\ ))
-- \division|Add2~66\ = CARRY(( \division|bit_counter\(10) ) + ( GND ) + ( \division|Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(10),
	cin => \division|Add2~70\,
	sumout => \division|Add2~65_sumout\,
	cout => \division|Add2~66\);

\division|bit_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~65_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(10));

\division|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~61_sumout\ = SUM(( \division|bit_counter\(11) ) + ( GND ) + ( \division|Add2~66\ ))
-- \division|Add2~62\ = CARRY(( \division|bit_counter\(11) ) + ( GND ) + ( \division|Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(11),
	cin => \division|Add2~66\,
	sumout => \division|Add2~61_sumout\,
	cout => \division|Add2~62\);

\division|bit_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~61_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(11));

\division|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~57_sumout\ = SUM(( \division|bit_counter\(12) ) + ( GND ) + ( \division|Add2~62\ ))
-- \division|Add2~58\ = CARRY(( \division|bit_counter\(12) ) + ( GND ) + ( \division|Add2~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(12),
	cin => \division|Add2~62\,
	sumout => \division|Add2~57_sumout\,
	cout => \division|Add2~58\);

\division|bit_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~57_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(12));

\division|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~53_sumout\ = SUM(( \division|bit_counter\(13) ) + ( GND ) + ( \division|Add2~58\ ))
-- \division|Add2~54\ = CARRY(( \division|bit_counter\(13) ) + ( GND ) + ( \division|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(13),
	cin => \division|Add2~58\,
	sumout => \division|Add2~53_sumout\,
	cout => \division|Add2~54\);

\division|bit_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~53_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(13));

\division|Add2~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~121_sumout\ = SUM(( \division|bit_counter\(14) ) + ( GND ) + ( \division|Add2~54\ ))
-- \division|Add2~122\ = CARRY(( \division|bit_counter\(14) ) + ( GND ) + ( \division|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(14),
	cin => \division|Add2~54\,
	sumout => \division|Add2~121_sumout\,
	cout => \division|Add2~122\);

\division|bit_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~121_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(14));

\division|Add2~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~117_sumout\ = SUM(( \division|bit_counter\(15) ) + ( GND ) + ( \division|Add2~122\ ))
-- \division|Add2~118\ = CARRY(( \division|bit_counter\(15) ) + ( GND ) + ( \division|Add2~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(15),
	cin => \division|Add2~122\,
	sumout => \division|Add2~117_sumout\,
	cout => \division|Add2~118\);

\division|bit_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~117_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(15));

\division|Add2~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~113_sumout\ = SUM(( \division|bit_counter\(16) ) + ( GND ) + ( \division|Add2~118\ ))
-- \division|Add2~114\ = CARRY(( \division|bit_counter\(16) ) + ( GND ) + ( \division|Add2~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(16),
	cin => \division|Add2~118\,
	sumout => \division|Add2~113_sumout\,
	cout => \division|Add2~114\);

\division|bit_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~113_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(16));

\division|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~49_sumout\ = SUM(( \division|bit_counter\(17) ) + ( GND ) + ( \division|Add2~114\ ))
-- \division|Add2~50\ = CARRY(( \division|bit_counter\(17) ) + ( GND ) + ( \division|Add2~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(17),
	cin => \division|Add2~114\,
	sumout => \division|Add2~49_sumout\,
	cout => \division|Add2~50\);

\division|bit_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~49_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(17));

\division|Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~109_sumout\ = SUM(( \division|bit_counter\(18) ) + ( GND ) + ( \division|Add2~50\ ))
-- \division|Add2~110\ = CARRY(( \division|bit_counter\(18) ) + ( GND ) + ( \division|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(18),
	cin => \division|Add2~50\,
	sumout => \division|Add2~109_sumout\,
	cout => \division|Add2~110\);

\division|bit_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~109_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(18));

\division|Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~105_sumout\ = SUM(( \division|bit_counter\(19) ) + ( GND ) + ( \division|Add2~110\ ))
-- \division|Add2~106\ = CARRY(( \division|bit_counter\(19) ) + ( GND ) + ( \division|Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(19),
	cin => \division|Add2~110\,
	sumout => \division|Add2~105_sumout\,
	cout => \division|Add2~106\);

\division|bit_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~105_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(19));

\division|Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~101_sumout\ = SUM(( \division|bit_counter\(20) ) + ( GND ) + ( \division|Add2~106\ ))
-- \division|Add2~102\ = CARRY(( \division|bit_counter\(20) ) + ( GND ) + ( \division|Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(20),
	cin => \division|Add2~106\,
	sumout => \division|Add2~101_sumout\,
	cout => \division|Add2~102\);

\division|bit_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~101_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(20));

\division|Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~97_sumout\ = SUM(( \division|bit_counter\(21) ) + ( GND ) + ( \division|Add2~102\ ))
-- \division|Add2~98\ = CARRY(( \division|bit_counter\(21) ) + ( GND ) + ( \division|Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(21),
	cin => \division|Add2~102\,
	sumout => \division|Add2~97_sumout\,
	cout => \division|Add2~98\);

\division|bit_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~97_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(21));

\division|Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~93_sumout\ = SUM(( \division|bit_counter\(22) ) + ( GND ) + ( \division|Add2~98\ ))
-- \division|Add2~94\ = CARRY(( \division|bit_counter\(22) ) + ( GND ) + ( \division|Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(22),
	cin => \division|Add2~98\,
	sumout => \division|Add2~93_sumout\,
	cout => \division|Add2~94\);

\division|bit_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~93_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(22));

\division|Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~89_sumout\ = SUM(( \division|bit_counter\(23) ) + ( GND ) + ( \division|Add2~94\ ))
-- \division|Add2~90\ = CARRY(( \division|bit_counter\(23) ) + ( GND ) + ( \division|Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(23),
	cin => \division|Add2~94\,
	sumout => \division|Add2~89_sumout\,
	cout => \division|Add2~90\);

\division|bit_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~89_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(23));

\division|Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~85_sumout\ = SUM(( \division|bit_counter\(24) ) + ( GND ) + ( \division|Add2~90\ ))
-- \division|Add2~86\ = CARRY(( \division|bit_counter\(24) ) + ( GND ) + ( \division|Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(24),
	cin => \division|Add2~90\,
	sumout => \division|Add2~85_sumout\,
	cout => \division|Add2~86\);

\division|bit_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~85_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(24));

\division|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~25_sumout\ = SUM(( \division|bit_counter\(25) ) + ( GND ) + ( \division|Add2~86\ ))
-- \division|Add2~26\ = CARRY(( \division|bit_counter\(25) ) + ( GND ) + ( \division|Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(25),
	cin => \division|Add2~86\,
	sumout => \division|Add2~25_sumout\,
	cout => \division|Add2~26\);

\division|bit_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~25_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(25));

\division|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~21_sumout\ = SUM(( \division|bit_counter\(26) ) + ( GND ) + ( \division|Add2~26\ ))
-- \division|Add2~22\ = CARRY(( \division|bit_counter\(26) ) + ( GND ) + ( \division|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(26),
	cin => \division|Add2~26\,
	sumout => \division|Add2~21_sumout\,
	cout => \division|Add2~22\);

\division|bit_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~21_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(26));

\division|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~17_sumout\ = SUM(( \division|bit_counter\(27) ) + ( GND ) + ( \division|Add2~22\ ))
-- \division|Add2~18\ = CARRY(( \division|bit_counter\(27) ) + ( GND ) + ( \division|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(27),
	cin => \division|Add2~22\,
	sumout => \division|Add2~17_sumout\,
	cout => \division|Add2~18\);

\division|bit_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~17_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(27));

\division|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~13_sumout\ = SUM(( \division|bit_counter\(28) ) + ( GND ) + ( \division|Add2~18\ ))
-- \division|Add2~14\ = CARRY(( \division|bit_counter\(28) ) + ( GND ) + ( \division|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(28),
	cin => \division|Add2~18\,
	sumout => \division|Add2~13_sumout\,
	cout => \division|Add2~14\);

\division|bit_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~13_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(28));

\division|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~9_sumout\ = SUM(( \division|bit_counter\(29) ) + ( GND ) + ( \division|Add2~14\ ))
-- \division|Add2~10\ = CARRY(( \division|bit_counter\(29) ) + ( GND ) + ( \division|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(29),
	cin => \division|Add2~14\,
	sumout => \division|Add2~9_sumout\,
	cout => \division|Add2~10\);

\division|bit_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~9_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(29));

\division|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~5_sumout\ = SUM(( \division|bit_counter\(30) ) + ( GND ) + ( \division|Add2~10\ ))
-- \division|Add2~6\ = CARRY(( \division|bit_counter\(30) ) + ( GND ) + ( \division|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(30),
	cin => \division|Add2~10\,
	sumout => \division|Add2~5_sumout\,
	cout => \division|Add2~6\);

\division|bit_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Add2~5_sumout\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(30));

\division|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|LessThan0~0_combout\ = ( !\division|bit_counter\(26) & ( !\division|bit_counter\(25) & ( (!\division|bit_counter\(30) & (!\division|bit_counter\(29) & (!\division|bit_counter\(28) & !\division|bit_counter\(27)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_bit_counter\(30),
	datab => \division|ALT_INV_bit_counter\(29),
	datac => \division|ALT_INV_bit_counter\(28),
	datad => \division|ALT_INV_bit_counter\(27),
	datae => \division|ALT_INV_bit_counter\(26),
	dataf => \division|ALT_INV_bit_counter\(25),
	combout => \division|LessThan0~0_combout\);

\division|bit_counter[24]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|bit_counter[24]~3_combout\ = (\division|state.S1~q\ & (((\division|LessThan0~0_combout\ & \division|LessThan0~5_combout\)) # (\division|bit_counter\(31))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010111000000000101011100000000010101110000000001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_bit_counter\(31),
	datab => \division|ALT_INV_LessThan0~0_combout\,
	datac => \division|ALT_INV_LessThan0~5_combout\,
	datad => \division|ALT_INV_state.S1~q\,
	combout => \division|bit_counter[24]~3_combout\);

\division|state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|bit_counter[24]~3_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|state.S2~q\);

\division|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add2~1_sumout\ = SUM(( \division|bit_counter\(31) ) + ( GND ) + ( \division|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_bit_counter\(31),
	cin => \division|Add2~6\,
	sumout => \division|Add2~1_sumout\);

\division|bit_counter[31]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|bit_counter[31]~1_combout\ = (!\RST_N~input_o\ & ((!\division|state.S2~q\ & (\division|bit_counter\(31))) # (\division|state.S2~q\ & ((\division|Add2~1_sumout\))))) # (\RST_N~input_o\ & (\division|bit_counter\(31)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100111011001100010011101100110001001110110011000100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N~input_o\,
	datab => \division|ALT_INV_bit_counter\(31),
	datac => \division|ALT_INV_state.S2~q\,
	datad => \division|ALT_INV_Add2~1_sumout\,
	combout => \division|bit_counter[31]~1_combout\);

\division|bit_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|bit_counter[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|bit_counter\(31));

\division|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|LessThan0~6_combout\ = ( \division|LessThan0~3_combout\ & ( \division|LessThan0~4_combout\ & ( (!\division|bit_counter\(31) & ((!\division|LessThan0~0_combout\) # ((!\division|LessThan0~1_combout\) # (!\division|LessThan0~2_combout\)))) ) ) ) # 
-- ( !\division|LessThan0~3_combout\ & ( \division|LessThan0~4_combout\ & ( !\division|bit_counter\(31) ) ) ) # ( \division|LessThan0~3_combout\ & ( !\division|LessThan0~4_combout\ & ( !\division|bit_counter\(31) ) ) ) # ( !\division|LessThan0~3_combout\ & ( 
-- !\division|LessThan0~4_combout\ & ( !\division|bit_counter\(31) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_bit_counter\(31),
	datab => \division|ALT_INV_LessThan0~0_combout\,
	datac => \division|ALT_INV_LessThan0~1_combout\,
	datad => \division|ALT_INV_LessThan0~2_combout\,
	datae => \division|ALT_INV_LessThan0~3_combout\,
	dataf => \division|ALT_INV_LessThan0~4_combout\,
	combout => \division|LessThan0~6_combout\);

\division|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Selector10~0_combout\ = ( \division|state.S0~q\ & ( \division|Data_B\(9) & ( (!\division|LessThan0~6_combout\ & \division|state.S1~q\) ) ) ) # ( !\division|state.S0~q\ & ( \division|Data_B\(9) & ( ((!\Start~input_o\) # 
-- ((!\division|LessThan0~6_combout\ & \division|state.S1~q\))) # (\B[4]~input_o\) ) ) ) # ( !\division|state.S0~q\ & ( !\division|Data_B\(9) & ( (\B[4]~input_o\ & \Start~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000000000011111111010111010000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \division|ALT_INV_LessThan0~6_combout\,
	datac => \division|ALT_INV_state.S1~q\,
	datad => \ALT_INV_Start~input_o\,
	datae => \division|ALT_INV_state.S0~q\,
	dataf => \division|ALT_INV_Data_B\(9),
	combout => \division|Selector10~0_combout\);

\division|Data_B[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Selector10~0_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_B\(9));

\division|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Selector11~0_combout\ = (!\division|state.S2~q\ & (\B[3]~input_o\)) # (\division|state.S2~q\ & ((\division|Data_B\(9))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \division|ALT_INV_state.S2~q\,
	datac => \division|ALT_INV_Data_B\(9),
	combout => \division|Selector11~0_combout\);

\division|Data_B[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Data_B[8]~0_combout\ = ( \Start~input_o\ & ( \division|state.S0~q\ & ( (!\division|state.S1~q\) # ((!\division|bit_counter\(31) & ((!\division|LessThan0~0_combout\) # (!\division|LessThan0~5_combout\)))) ) ) ) # ( !\Start~input_o\ & ( 
-- \division|state.S0~q\ & ( (!\division|state.S1~q\) # ((!\division|bit_counter\(31) & ((!\division|LessThan0~0_combout\) # (!\division|LessThan0~5_combout\)))) ) ) ) # ( \Start~input_o\ & ( !\division|state.S0~q\ & ( (!\division|state.S1~q\) # 
-- ((!\division|bit_counter\(31) & ((!\division|LessThan0~0_combout\) # (!\division|LessThan0~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010100011111111101010001111111110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_bit_counter\(31),
	datab => \division|ALT_INV_LessThan0~0_combout\,
	datac => \division|ALT_INV_LessThan0~5_combout\,
	datad => \division|ALT_INV_state.S1~q\,
	datae => \ALT_INV_Start~input_o\,
	dataf => \division|ALT_INV_state.S0~q\,
	combout => \division|Data_B[8]~0_combout\);

\division|Data_B[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Selector11~0_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \division|state.S1~q\,
	ena => \division|Data_B[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_B\(8));

\division|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Selector12~0_combout\ = (!\division|state.S2~q\ & (\B[2]~input_o\)) # (\division|state.S2~q\ & ((\division|Data_B\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \division|ALT_INV_state.S2~q\,
	datac => \division|ALT_INV_Data_B\(8),
	combout => \division|Selector12~0_combout\);

\division|Data_B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Selector12~0_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \division|state.S1~q\,
	ena => \division|Data_B[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_B\(7));

\division|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Selector13~0_combout\ = (!\division|state.S2~q\ & (\B[1]~input_o\)) # (\division|state.S2~q\ & ((\division|Data_B\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \division|ALT_INV_state.S2~q\,
	datac => \division|ALT_INV_Data_B\(7),
	combout => \division|Selector13~0_combout\);

\division|Data_B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Selector13~0_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \division|state.S1~q\,
	ena => \division|Data_B[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_B\(6));

\division|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Selector14~0_combout\ = (!\division|state.S2~q\ & (\B[0]~input_o\)) # (\division|state.S2~q\ & ((\division|Data_B\(6))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \division|ALT_INV_state.S2~q\,
	datac => \division|ALT_INV_Data_B\(6),
	combout => \division|Selector14~0_combout\);

\division|Data_B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Selector14~0_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \division|state.S1~q\,
	ena => \division|Data_B[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_B\(5));

\division|bit_counter[24]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|bit_counter[24]~0_combout\ = ( \division|state.S0~q\ & ( (!\division|state.S1~q\) # ((!\division|bit_counter\(31) & ((!\division|LessThan0~0_combout\) # (!\division|LessThan0~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010100000000000000000001111111110101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_bit_counter\(31),
	datab => \division|ALT_INV_LessThan0~0_combout\,
	datac => \division|ALT_INV_LessThan0~5_combout\,
	datad => \division|ALT_INV_state.S1~q\,
	datae => \division|ALT_INV_state.S0~q\,
	combout => \division|bit_counter[24]~0_combout\);

\division|Data_B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_B\(5),
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_B\(4));

\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

\division|Data_B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_B\(4),
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_B\(3));

\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

\division|Data_B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_B\(3),
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_B\(2));

\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

\division|Data_B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_B\(2),
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_B\(1));

\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

\division|Data_B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_B\(1),
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_B\(0));

\division|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add1~1_sumout\ = SUM(( \division|Data_B\(0) ) + ( \division|Data_A\(0) ) + ( !VCC ))
-- \division|Add1~2\ = CARRY(( \division|Data_B\(0) ) + ( \division|Data_A\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_Data_B\(0),
	dataf => \division|ALT_INV_Data_A\(0),
	cin => GND,
	sumout => \division|Add1~1_sumout\,
	cout => \division|Add1~2\);

\division|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add0~1_sumout\ = SUM(( !\division|Data_A\(0) $ (!\division|Data_B\(0)) ) + ( !VCC ) + ( !VCC ))
-- \division|Add0~2\ = CARRY(( !\division|Data_A\(0) $ (!\division|Data_B\(0)) ) + ( !VCC ) + ( !VCC ))
-- \division|Add0~3\ = SHARE((!\division|Data_B\(0)) # (\division|Data_A\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \division|ALT_INV_Data_A\(0),
	datad => \division|ALT_INV_Data_B\(0),
	cin => GND,
	sharein => GND,
	sumout => \division|Add0~1_sumout\,
	cout => \division|Add0~2\,
	shareout => \division|Add0~3\);

\division|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Selector9~0_combout\ = ( \division|Add1~1_sumout\ & ( \division|Add0~1_sumout\ & ( ((!\division|state.S1~q\ & (\A[0]~input_o\)) # (\division|state.S1~q\ & ((!\division|LessThan0~6_combout\)))) # (\division|state.S2~q\) ) ) ) # ( 
-- !\division|Add1~1_sumout\ & ( \division|Add0~1_sumout\ & ( (!\division|state.S1~q\ & (\A[0]~input_o\ & ((!\division|state.S2~q\)))) # (\division|state.S1~q\ & (((!\division|LessThan0~6_combout\) # (\division|state.S2~q\)))) ) ) ) # ( 
-- \division|Add1~1_sumout\ & ( !\division|Add0~1_sumout\ & ( (!\division|state.S1~q\ & ((\division|state.S2~q\) # (\A[0]~input_o\))) ) ) ) # ( !\division|Add1~1_sumout\ & ( !\division|Add0~1_sumout\ & ( (\A[0]~input_o\ & (!\division|state.S1~q\ & 
-- !\division|state.S2~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100001111000001011100000011110101110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \division|ALT_INV_LessThan0~6_combout\,
	datac => \division|ALT_INV_state.S1~q\,
	datad => \division|ALT_INV_state.S2~q\,
	datae => \division|ALT_INV_Add1~1_sumout\,
	dataf => \division|ALT_INV_Add0~1_sumout\,
	combout => \division|Selector9~0_combout\);

\division|Data_A[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Data_A[3]~0_combout\ = (!\division|Data_A\(9) & (!\division|state.S2~q\ & ((\division|state.S0~q\) # (\Start~input_o\)))) # (\division|Data_A\(9) & (((\division|state.S0~q\)) # (\Start~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000111110101001100011111010100110001111101010011000111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_Data_A\(9),
	datab => \ALT_INV_Start~input_o\,
	datac => \division|ALT_INV_state.S2~q\,
	datad => \division|ALT_INV_state.S0~q\,
	combout => \division|Data_A[3]~0_combout\);

\division|Data_A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Selector9~0_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Data_A[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_A\(0));

\division|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add1~5_sumout\ = SUM(( \division|Data_B\(1) ) + ( \division|Data_A\(1) ) + ( \division|Add1~2\ ))
-- \division|Add1~6\ = CARRY(( \division|Data_B\(1) ) + ( \division|Data_A\(1) ) + ( \division|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_Data_B\(1),
	dataf => \division|ALT_INV_Data_A\(1),
	cin => \division|Add1~2\,
	sumout => \division|Add1~5_sumout\,
	cout => \division|Add1~6\);

\division|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add0~5_sumout\ = SUM(( !\division|Data_A\(1) $ (\division|Data_B\(1)) ) + ( \division|Add0~3\ ) + ( \division|Add0~2\ ))
-- \division|Add0~6\ = CARRY(( !\division|Data_A\(1) $ (\division|Data_B\(1)) ) + ( \division|Add0~3\ ) + ( \division|Add0~2\ ))
-- \division|Add0~7\ = SHARE((\division|Data_A\(1) & !\division|Data_B\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \division|ALT_INV_Data_A\(1),
	datad => \division|ALT_INV_Data_B\(1),
	cin => \division|Add0~2\,
	sharein => \division|Add0~3\,
	sumout => \division|Add0~5_sumout\,
	cout => \division|Add0~6\,
	shareout => \division|Add0~7\);

\division|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Selector8~0_combout\ = ( \division|Add1~5_sumout\ & ( \division|Add0~5_sumout\ & ( ((!\division|state.S1~q\ & (\A[1]~input_o\)) # (\division|state.S1~q\ & ((!\division|LessThan0~6_combout\)))) # (\division|state.S2~q\) ) ) ) # ( 
-- !\division|Add1~5_sumout\ & ( \division|Add0~5_sumout\ & ( (!\division|state.S1~q\ & (\A[1]~input_o\ & ((!\division|state.S2~q\)))) # (\division|state.S1~q\ & (((!\division|LessThan0~6_combout\) # (\division|state.S2~q\)))) ) ) ) # ( 
-- \division|Add1~5_sumout\ & ( !\division|Add0~5_sumout\ & ( (!\division|state.S1~q\ & ((\division|state.S2~q\) # (\A[1]~input_o\))) ) ) ) # ( !\division|Add1~5_sumout\ & ( !\division|Add0~5_sumout\ & ( (\A[1]~input_o\ & (!\division|state.S1~q\ & 
-- !\division|state.S2~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100001111000001011100000011110101110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \division|ALT_INV_LessThan0~6_combout\,
	datac => \division|ALT_INV_state.S1~q\,
	datad => \division|ALT_INV_state.S2~q\,
	datae => \division|ALT_INV_Add1~5_sumout\,
	dataf => \division|ALT_INV_Add0~5_sumout\,
	combout => \division|Selector8~0_combout\);

\division|Data_A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Selector8~0_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Data_A[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_A\(1));

\division|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add1~9_sumout\ = SUM(( \division|Data_B\(2) ) + ( \division|Data_A\(2) ) + ( \division|Add1~6\ ))
-- \division|Add1~10\ = CARRY(( \division|Data_B\(2) ) + ( \division|Data_A\(2) ) + ( \division|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_Data_B\(2),
	dataf => \division|ALT_INV_Data_A\(2),
	cin => \division|Add1~6\,
	sumout => \division|Add1~9_sumout\,
	cout => \division|Add1~10\);

\division|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add0~9_sumout\ = SUM(( !\division|Data_A\(2) $ (\division|Data_B\(2)) ) + ( \division|Add0~7\ ) + ( \division|Add0~6\ ))
-- \division|Add0~10\ = CARRY(( !\division|Data_A\(2) $ (\division|Data_B\(2)) ) + ( \division|Add0~7\ ) + ( \division|Add0~6\ ))
-- \division|Add0~11\ = SHARE((\division|Data_A\(2) & !\division|Data_B\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \division|ALT_INV_Data_A\(2),
	datad => \division|ALT_INV_Data_B\(2),
	cin => \division|Add0~6\,
	sharein => \division|Add0~7\,
	sumout => \division|Add0~9_sumout\,
	cout => \division|Add0~10\,
	shareout => \division|Add0~11\);

\division|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Selector7~0_combout\ = ( \division|Add1~9_sumout\ & ( \division|Add0~9_sumout\ & ( ((!\division|state.S1~q\ & (\A[2]~input_o\)) # (\division|state.S1~q\ & ((!\division|LessThan0~6_combout\)))) # (\division|state.S2~q\) ) ) ) # ( 
-- !\division|Add1~9_sumout\ & ( \division|Add0~9_sumout\ & ( (!\division|state.S1~q\ & (\A[2]~input_o\ & ((!\division|state.S2~q\)))) # (\division|state.S1~q\ & (((!\division|LessThan0~6_combout\) # (\division|state.S2~q\)))) ) ) ) # ( 
-- \division|Add1~9_sumout\ & ( !\division|Add0~9_sumout\ & ( (!\division|state.S1~q\ & ((\division|state.S2~q\) # (\A[2]~input_o\))) ) ) ) # ( !\division|Add1~9_sumout\ & ( !\division|Add0~9_sumout\ & ( (\A[2]~input_o\ & (!\division|state.S1~q\ & 
-- !\division|state.S2~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100001111000001011100000011110101110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \division|ALT_INV_LessThan0~6_combout\,
	datac => \division|ALT_INV_state.S1~q\,
	datad => \division|ALT_INV_state.S2~q\,
	datae => \division|ALT_INV_Add1~9_sumout\,
	dataf => \division|ALT_INV_Add0~9_sumout\,
	combout => \division|Selector7~0_combout\);

\division|Data_A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Selector7~0_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Data_A[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_A\(2));

\division|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add1~13_sumout\ = SUM(( \division|Data_B\(3) ) + ( \division|Data_A\(3) ) + ( \division|Add1~10\ ))
-- \division|Add1~14\ = CARRY(( \division|Data_B\(3) ) + ( \division|Data_A\(3) ) + ( \division|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_Data_B\(3),
	dataf => \division|ALT_INV_Data_A\(3),
	cin => \division|Add1~10\,
	sumout => \division|Add1~13_sumout\,
	cout => \division|Add1~14\);

\division|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add0~13_sumout\ = SUM(( !\division|Data_A\(3) $ (\division|Data_B\(3)) ) + ( \division|Add0~11\ ) + ( \division|Add0~10\ ))
-- \division|Add0~14\ = CARRY(( !\division|Data_A\(3) $ (\division|Data_B\(3)) ) + ( \division|Add0~11\ ) + ( \division|Add0~10\ ))
-- \division|Add0~15\ = SHARE((\division|Data_A\(3) & !\division|Data_B\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \division|ALT_INV_Data_A\(3),
	datad => \division|ALT_INV_Data_B\(3),
	cin => \division|Add0~10\,
	sharein => \division|Add0~11\,
	sumout => \division|Add0~13_sumout\,
	cout => \division|Add0~14\,
	shareout => \division|Add0~15\);

\division|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Selector6~0_combout\ = ( \division|Add1~13_sumout\ & ( \division|Add0~13_sumout\ & ( ((!\division|state.S1~q\ & (\A[3]~input_o\)) # (\division|state.S1~q\ & ((!\division|LessThan0~6_combout\)))) # (\division|state.S2~q\) ) ) ) # ( 
-- !\division|Add1~13_sumout\ & ( \division|Add0~13_sumout\ & ( (!\division|state.S1~q\ & (\A[3]~input_o\ & ((!\division|state.S2~q\)))) # (\division|state.S1~q\ & (((!\division|LessThan0~6_combout\) # (\division|state.S2~q\)))) ) ) ) # ( 
-- \division|Add1~13_sumout\ & ( !\division|Add0~13_sumout\ & ( (!\division|state.S1~q\ & ((\division|state.S2~q\) # (\A[3]~input_o\))) ) ) ) # ( !\division|Add1~13_sumout\ & ( !\division|Add0~13_sumout\ & ( (\A[3]~input_o\ & (!\division|state.S1~q\ & 
-- !\division|state.S2~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100001111000001011100000011110101110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \division|ALT_INV_LessThan0~6_combout\,
	datac => \division|ALT_INV_state.S1~q\,
	datad => \division|ALT_INV_state.S2~q\,
	datae => \division|ALT_INV_Add1~13_sumout\,
	dataf => \division|ALT_INV_Add0~13_sumout\,
	combout => \division|Selector6~0_combout\);

\division|Data_A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Selector6~0_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Data_A[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_A\(3));

\division|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add1~17_sumout\ = SUM(( \division|Data_B\(4) ) + ( \division|Data_A\(4) ) + ( \division|Add1~14\ ))
-- \division|Add1~18\ = CARRY(( \division|Data_B\(4) ) + ( \division|Data_A\(4) ) + ( \division|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_Data_B\(4),
	dataf => \division|ALT_INV_Data_A\(4),
	cin => \division|Add1~14\,
	sumout => \division|Add1~17_sumout\,
	cout => \division|Add1~18\);

\division|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add0~17_sumout\ = SUM(( !\division|Data_A\(4) $ (\division|Data_B\(4)) ) + ( \division|Add0~15\ ) + ( \division|Add0~14\ ))
-- \division|Add0~18\ = CARRY(( !\division|Data_A\(4) $ (\division|Data_B\(4)) ) + ( \division|Add0~15\ ) + ( \division|Add0~14\ ))
-- \division|Add0~19\ = SHARE((\division|Data_A\(4) & !\division|Data_B\(4)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \division|ALT_INV_Data_A\(4),
	datad => \division|ALT_INV_Data_B\(4),
	cin => \division|Add0~14\,
	sharein => \division|Add0~15\,
	sumout => \division|Add0~17_sumout\,
	cout => \division|Add0~18\,
	shareout => \division|Add0~19\);

\division|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Selector5~0_combout\ = ( \division|Add1~17_sumout\ & ( \division|Add0~17_sumout\ & ( ((!\division|state.S1~q\ & (\A[4]~input_o\)) # (\division|state.S1~q\ & ((!\division|LessThan0~6_combout\)))) # (\division|state.S2~q\) ) ) ) # ( 
-- !\division|Add1~17_sumout\ & ( \division|Add0~17_sumout\ & ( (!\division|state.S1~q\ & (\A[4]~input_o\ & ((!\division|state.S2~q\)))) # (\division|state.S1~q\ & (((!\division|LessThan0~6_combout\) # (\division|state.S2~q\)))) ) ) ) # ( 
-- \division|Add1~17_sumout\ & ( !\division|Add0~17_sumout\ & ( (!\division|state.S1~q\ & ((\division|state.S2~q\) # (\A[4]~input_o\))) ) ) ) # ( !\division|Add1~17_sumout\ & ( !\division|Add0~17_sumout\ & ( (\A[4]~input_o\ & (!\division|state.S1~q\ & 
-- !\division|state.S2~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100001111000001011100000011110101110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \division|ALT_INV_LessThan0~6_combout\,
	datac => \division|ALT_INV_state.S1~q\,
	datad => \division|ALT_INV_state.S2~q\,
	datae => \division|ALT_INV_Add1~17_sumout\,
	dataf => \division|ALT_INV_Add0~17_sumout\,
	combout => \division|Selector5~0_combout\);

\division|Data_A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Selector5~0_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Data_A[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_A\(4));

\division|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add1~21_sumout\ = SUM(( \division|Data_B\(5) ) + ( \division|Data_A\(5) ) + ( \division|Add1~18\ ))
-- \division|Add1~22\ = CARRY(( \division|Data_B\(5) ) + ( \division|Data_A\(5) ) + ( \division|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_Data_B\(5),
	dataf => \division|ALT_INV_Data_A\(5),
	cin => \division|Add1~18\,
	sumout => \division|Add1~21_sumout\,
	cout => \division|Add1~22\);

\division|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add0~21_sumout\ = SUM(( !\division|Data_A\(5) $ (\division|Data_B\(5)) ) + ( \division|Add0~19\ ) + ( \division|Add0~18\ ))
-- \division|Add0~22\ = CARRY(( !\division|Data_A\(5) $ (\division|Data_B\(5)) ) + ( \division|Add0~19\ ) + ( \division|Add0~18\ ))
-- \division|Add0~23\ = SHARE((\division|Data_A\(5) & !\division|Data_B\(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \division|ALT_INV_Data_A\(5),
	datad => \division|ALT_INV_Data_B\(5),
	cin => \division|Add0~18\,
	sharein => \division|Add0~19\,
	sumout => \division|Add0~21_sumout\,
	cout => \division|Add0~22\,
	shareout => \division|Add0~23\);

\division|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Selector4~0_combout\ = (!\division|state.S2~q\ & (!\division|LessThan0~6_combout\ & ((\division|Add0~21_sumout\)))) # (\division|state.S2~q\ & (((\division|Add1~21_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101100000011100010110000001110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_LessThan0~6_combout\,
	datab => \division|ALT_INV_state.S2~q\,
	datac => \division|ALT_INV_Add1~21_sumout\,
	datad => \division|ALT_INV_Add0~21_sumout\,
	combout => \division|Selector4~0_combout\);

\division|Data_A[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Data_A[8]~1_combout\ = (\division|state.S0~q\ & ((!\division|state.S2~q\) # (\division|Data_A\(9))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_Data_A\(9),
	datab => \division|ALT_INV_state.S2~q\,
	datac => \division|ALT_INV_state.S0~q\,
	combout => \division|Data_A[8]~1_combout\);

\division|Data_A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Selector4~0_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Data_A[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_A\(5));

\division|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add1~25_sumout\ = SUM(( \division|Data_B\(6) ) + ( \division|Data_A\(6) ) + ( \division|Add1~22\ ))
-- \division|Add1~26\ = CARRY(( \division|Data_B\(6) ) + ( \division|Data_A\(6) ) + ( \division|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_Data_B\(6),
	dataf => \division|ALT_INV_Data_A\(6),
	cin => \division|Add1~22\,
	sumout => \division|Add1~25_sumout\,
	cout => \division|Add1~26\);

\division|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add0~25_sumout\ = SUM(( !\division|Data_A\(6) $ (\division|Data_B\(6)) ) + ( \division|Add0~23\ ) + ( \division|Add0~22\ ))
-- \division|Add0~26\ = CARRY(( !\division|Data_A\(6) $ (\division|Data_B\(6)) ) + ( \division|Add0~23\ ) + ( \division|Add0~22\ ))
-- \division|Add0~27\ = SHARE((\division|Data_A\(6) & !\division|Data_B\(6)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \division|ALT_INV_Data_A\(6),
	datad => \division|ALT_INV_Data_B\(6),
	cin => \division|Add0~22\,
	sharein => \division|Add0~23\,
	sumout => \division|Add0~25_sumout\,
	cout => \division|Add0~26\,
	shareout => \division|Add0~27\);

\division|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Selector3~0_combout\ = (!\division|state.S2~q\ & (!\division|LessThan0~6_combout\ & ((\division|Add0~25_sumout\)))) # (\division|state.S2~q\ & (((\division|Add1~25_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101100000011100010110000001110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_LessThan0~6_combout\,
	datab => \division|ALT_INV_state.S2~q\,
	datac => \division|ALT_INV_Add1~25_sumout\,
	datad => \division|ALT_INV_Add0~25_sumout\,
	combout => \division|Selector3~0_combout\);

\division|Data_A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Selector3~0_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Data_A[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_A\(6));

\division|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add1~29_sumout\ = SUM(( \division|Data_B\(7) ) + ( \division|Data_A\(7) ) + ( \division|Add1~26\ ))
-- \division|Add1~30\ = CARRY(( \division|Data_B\(7) ) + ( \division|Data_A\(7) ) + ( \division|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_Data_B\(7),
	dataf => \division|ALT_INV_Data_A\(7),
	cin => \division|Add1~26\,
	sumout => \division|Add1~29_sumout\,
	cout => \division|Add1~30\);

\division|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add0~29_sumout\ = SUM(( !\division|Data_A\(7) $ (\division|Data_B\(7)) ) + ( \division|Add0~27\ ) + ( \division|Add0~26\ ))
-- \division|Add0~30\ = CARRY(( !\division|Data_A\(7) $ (\division|Data_B\(7)) ) + ( \division|Add0~27\ ) + ( \division|Add0~26\ ))
-- \division|Add0~31\ = SHARE((\division|Data_A\(7) & !\division|Data_B\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \division|ALT_INV_Data_A\(7),
	datad => \division|ALT_INV_Data_B\(7),
	cin => \division|Add0~26\,
	sharein => \division|Add0~27\,
	sumout => \division|Add0~29_sumout\,
	cout => \division|Add0~30\,
	shareout => \division|Add0~31\);

\division|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Selector2~0_combout\ = (!\division|state.S2~q\ & (!\division|LessThan0~6_combout\ & ((\division|Add0~29_sumout\)))) # (\division|state.S2~q\ & (((\division|Add1~29_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101100000011100010110000001110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_LessThan0~6_combout\,
	datab => \division|ALT_INV_state.S2~q\,
	datac => \division|ALT_INV_Add1~29_sumout\,
	datad => \division|ALT_INV_Add0~29_sumout\,
	combout => \division|Selector2~0_combout\);

\division|Data_A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Selector2~0_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Data_A[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_A\(7));

\division|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add1~33_sumout\ = SUM(( \division|Data_B\(8) ) + ( \division|Data_A\(8) ) + ( \division|Add1~30\ ))
-- \division|Add1~34\ = CARRY(( \division|Data_B\(8) ) + ( \division|Data_A\(8) ) + ( \division|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_Data_B\(8),
	dataf => \division|ALT_INV_Data_A\(8),
	cin => \division|Add1~30\,
	sumout => \division|Add1~33_sumout\,
	cout => \division|Add1~34\);

\division|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add0~33_sumout\ = SUM(( !\division|Data_A\(8) $ (\division|Data_B\(8)) ) + ( \division|Add0~31\ ) + ( \division|Add0~30\ ))
-- \division|Add0~34\ = CARRY(( !\division|Data_A\(8) $ (\division|Data_B\(8)) ) + ( \division|Add0~31\ ) + ( \division|Add0~30\ ))
-- \division|Add0~35\ = SHARE((\division|Data_A\(8) & !\division|Data_B\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \division|ALT_INV_Data_A\(8),
	datad => \division|ALT_INV_Data_B\(8),
	cin => \division|Add0~30\,
	sharein => \division|Add0~31\,
	sumout => \division|Add0~33_sumout\,
	cout => \division|Add0~34\,
	shareout => \division|Add0~35\);

\division|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Selector1~0_combout\ = (!\division|state.S2~q\ & (!\division|LessThan0~6_combout\ & ((\division|Add0~33_sumout\)))) # (\division|state.S2~q\ & (((\division|Add1~33_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101100000011100010110000001110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_LessThan0~6_combout\,
	datab => \division|ALT_INV_state.S2~q\,
	datac => \division|ALT_INV_Add1~33_sumout\,
	datad => \division|ALT_INV_Add0~33_sumout\,
	combout => \division|Selector1~0_combout\);

\division|Data_A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Selector1~0_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Data_A[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_A\(8));

\division|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add0~37_sumout\ = SUM(( !\division|Data_A\(9) $ (\division|Data_B\(9)) ) + ( \division|Add0~35\ ) + ( \division|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \division|ALT_INV_Data_A\(9),
	datad => \division|ALT_INV_Data_B\(9),
	cin => \division|Add0~34\,
	sharein => \division|Add0~35\,
	sumout => \division|Add0~37_sumout\);

\division|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Add1~37_sumout\ = SUM(( \division|Data_B\(9) ) + ( \division|Data_A\(9) ) + ( \division|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \division|ALT_INV_Data_B\(9),
	dataf => \division|ALT_INV_Data_A\(9),
	cin => \division|Add1~34\,
	sumout => \division|Add1~37_sumout\);

\division|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Selector0~0_combout\ = ( \division|Add0~37_sumout\ & ( \division|Add1~37_sumout\ & ( (!\division|state.S1~q\ & (((\division|Data_A\(9))))) # (\division|state.S1~q\ & ((!\division|state.S2~q\ & (!\division|LessThan0~6_combout\)) # 
-- (\division|state.S2~q\ & ((\division|Data_A\(9)))))) ) ) ) # ( !\division|Add0~37_sumout\ & ( \division|Add1~37_sumout\ & ( (\division|Data_A\(9) & ((!\division|state.S1~q\) # (\division|state.S2~q\))) ) ) ) # ( \division|Add0~37_sumout\ & ( 
-- !\division|Add1~37_sumout\ & ( (!\division|state.S2~q\ & ((!\division|state.S1~q\ & ((\division|Data_A\(9)))) # (\division|state.S1~q\ & (!\division|LessThan0~6_combout\)))) ) ) ) # ( !\division|Add0~37_sumout\ & ( !\division|Add1~37_sumout\ & ( 
-- (!\division|state.S1~q\ & (\division|Data_A\(9) & !\division|state.S2~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000001011100000000000001100000011110010111000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_LessThan0~6_combout\,
	datab => \division|ALT_INV_state.S1~q\,
	datac => \division|ALT_INV_Data_A\(9),
	datad => \division|ALT_INV_state.S2~q\,
	datae => \division|ALT_INV_Add0~37_sumout\,
	dataf => \division|ALT_INV_Add1~37_sumout\,
	combout => \division|Selector0~0_combout\);

\division|Data_A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Selector0~0_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_A\(9));

\division|Data_A[9]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Data_A[9]~_wirecell_combout\ = !\division|Data_A\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_Data_A\(9),
	combout => \division|Data_A[9]~_wirecell_combout\);

\division|Data_Quotient[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_A[9]~_wirecell_combout\,
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_Quotient\(0));

\division|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|Selector20~0_combout\ = (!\division|bit_counter\(31) & (\division|state.S1~q\ & ((!\division|LessThan0~0_combout\) # (!\division|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000001010100000000000101010000000000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_bit_counter\(31),
	datab => \division|ALT_INV_LessThan0~0_combout\,
	datac => \division|ALT_INV_LessThan0~5_combout\,
	datad => \division|ALT_INV_state.S1~q\,
	combout => \division|Selector20~0_combout\);

\division|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_Quotient\(0),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Q\(0));

\BCD_2_digit_7_seg_display|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD_2_digit_7_seg_display|Mux9~0_combout\ = ( \multiplication|R\(0) & ( \division|Q\(0) & ( (!\Operation[1]~input_o\) # (!\A[0]~input_o\ $ (!\B[0]~input_o\)) ) ) ) # ( !\multiplication|R\(0) & ( \division|Q\(0) & ( (!\Operation[1]~input_o\ & 
-- (((!\Operation[0]~input_o\)))) # (\Operation[1]~input_o\ & (!\A[0]~input_o\ $ ((!\B[0]~input_o\)))) ) ) ) # ( \multiplication|R\(0) & ( !\division|Q\(0) & ( (!\Operation[1]~input_o\ & (((\Operation[0]~input_o\)))) # (\Operation[1]~input_o\ & 
-- (!\A[0]~input_o\ $ ((!\B[0]~input_o\)))) ) ) ) # ( !\multiplication|R\(0) & ( !\division|Q\(0) & ( (\Operation[1]~input_o\ & (!\A[0]~input_o\ $ (!\B[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101001011111010111110000101001011111010111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operation[1]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_Operation[0]~input_o\,
	datae => \multiplication|ALT_INV_R\(0),
	dataf => \division|ALT_INV_Q\(0),
	combout => \BCD_2_digit_7_seg_display|Mux9~0_combout\);

\BCD_2_digit_7_seg_display|Result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \BCD_2_digit_7_seg_display|Mux9~0_combout\,
	ena => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_2_digit_7_seg_display|Result\(0));

\division|Data_Quotient[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_Quotient\(0),
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_Quotient\(1));

\division|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_Quotient\(1),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Q\(1));

\multiplication|Data_A~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Data_A~1_combout\ = (!\multiplication|state~q\ & (\A[1]~input_o\)) # (\multiplication|state~q\ & (((!\multiplication|LessThan0~5_combout\ & \multiplication|Data_A\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110100010001000111010001000100011101000100010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \multiplication|ALT_INV_state~q\,
	datac => \multiplication|ALT_INV_LessThan0~5_combout\,
	datad => \multiplication|ALT_INV_Data_A\(0),
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

\sub|sum[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub|sum\(1) = !\A[1]~input_o\ $ (!\B[1]~input_o\ $ (((!\B[0]~input_o\) # (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001000101101110100100010110111010010001011011101001000101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	combout => \sub|sum\(1));

\add|sum[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add|sum\(1) = !\A[1]~input_o\ $ (!\B[1]~input_o\ $ (((\A[0]~input_o\ & \B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000100011110111000010001111011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	combout => \add|sum\(1));

\BCD_2_digit_7_seg_display|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD_2_digit_7_seg_display|Mux8~0_combout\ = ( \Operation[0]~input_o\ & ( \Operation[1]~input_o\ & ( \add|sum\(1) ) ) ) # ( !\Operation[0]~input_o\ & ( \Operation[1]~input_o\ & ( !\sub|sum\(1) ) ) ) # ( \Operation[0]~input_o\ & ( !\Operation[1]~input_o\ & 
-- ( \multiplication|R\(1) ) ) ) # ( !\Operation[0]~input_o\ & ( !\Operation[1]~input_o\ & ( \division|Q\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_Q\(1),
	datab => \multiplication|ALT_INV_R\(1),
	datac => \sub|ALT_INV_sum\(1),
	datad => \add|ALT_INV_sum\(1),
	datae => \ALT_INV_Operation[0]~input_o\,
	dataf => \ALT_INV_Operation[1]~input_o\,
	combout => \BCD_2_digit_7_seg_display|Mux8~0_combout\);

\BCD_2_digit_7_seg_display|Result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \BCD_2_digit_7_seg_display|Mux8~0_combout\,
	ena => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_2_digit_7_seg_display|Result\(1));

\division|Data_Quotient[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_Quotient\(1),
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_Quotient\(2));

\division|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_Quotient\(2),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Q\(2));

\multiplication|Data_A~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Data_A~3_combout\ = (!\multiplication|state~q\ & (\A[2]~input_o\)) # (\multiplication|state~q\ & (((!\multiplication|LessThan0~5_combout\ & \multiplication|Data_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110100010001000111010001000100011101000100010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \multiplication|ALT_INV_state~q\,
	datac => \multiplication|ALT_INV_LessThan0~5_combout\,
	datad => \multiplication|ALT_INV_Data_A\(1),
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

\sub|sum[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub|sum\(2) = ( \A[2]~input_o\ & ( \B[2]~input_o\ & ( (!\A[1]~input_o\ & (!\B[1]~input_o\ & ((!\B[0]~input_o\) # (\A[0]~input_o\)))) # (\A[1]~input_o\ & (((!\B[0]~input_o\) # (!\B[1]~input_o\)) # (\A[0]~input_o\))) ) ) ) # ( !\A[2]~input_o\ & ( 
-- \B[2]~input_o\ & ( (!\A[1]~input_o\ & (((!\A[0]~input_o\ & \B[0]~input_o\)) # (\B[1]~input_o\))) # (\A[1]~input_o\ & (!\A[0]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\))) ) ) ) # ( \A[2]~input_o\ & ( !\B[2]~input_o\ & ( (!\A[1]~input_o\ & 
-- (((!\A[0]~input_o\ & \B[0]~input_o\)) # (\B[1]~input_o\))) # (\A[1]~input_o\ & (!\A[0]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\))) ) ) ) # ( !\A[2]~input_o\ & ( !\B[2]~input_o\ & ( (!\A[1]~input_o\ & (!\B[1]~input_o\ & ((!\B[0]~input_o\) # 
-- (\A[0]~input_o\)))) # (\A[1]~input_o\ & (((!\B[0]~input_o\) # (!\B[1]~input_o\)) # (\A[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111100001101001000001111001000100000111100101101111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \sub|sum\(2));

\add|sum[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add|sum\(2) = ( \A[2]~input_o\ & ( \B[2]~input_o\ & ( (!\A[1]~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\))) # (\A[1]~input_o\ & (((\A[0]~input_o\ & \B[0]~input_o\)) # (\B[1]~input_o\))) ) ) ) # ( !\A[2]~input_o\ & ( \B[2]~input_o\ & ( 
-- (!\A[1]~input_o\ & ((!\A[0]~input_o\) # ((!\B[0]~input_o\) # (!\B[1]~input_o\)))) # (\A[1]~input_o\ & (!\B[1]~input_o\ & ((!\A[0]~input_o\) # (!\B[0]~input_o\)))) ) ) ) # ( \A[2]~input_o\ & ( !\B[2]~input_o\ & ( (!\A[1]~input_o\ & ((!\A[0]~input_o\) # 
-- ((!\B[0]~input_o\) # (!\B[1]~input_o\)))) # (\A[1]~input_o\ & (!\B[1]~input_o\ & ((!\A[0]~input_o\) # (!\B[0]~input_o\)))) ) ) ) # ( !\A[2]~input_o\ & ( !\B[2]~input_o\ & ( (!\A[1]~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\))) # 
-- (\A[1]~input_o\ & (((\A[0]~input_o\ & \B[0]~input_o\)) # (\B[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111111111101110000011111110111000000000000100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \add|sum\(2));

\BCD_2_digit_7_seg_display|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD_2_digit_7_seg_display|Mux7~0_combout\ = ( \Operation[0]~input_o\ & ( \Operation[1]~input_o\ & ( \add|sum\(2) ) ) ) # ( !\Operation[0]~input_o\ & ( \Operation[1]~input_o\ & ( !\sub|sum\(2) ) ) ) # ( \Operation[0]~input_o\ & ( !\Operation[1]~input_o\ & 
-- ( \multiplication|R\(2) ) ) ) # ( !\Operation[0]~input_o\ & ( !\Operation[1]~input_o\ & ( \division|Q\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_Q\(2),
	datab => \multiplication|ALT_INV_R\(2),
	datac => \sub|ALT_INV_sum\(2),
	datad => \add|ALT_INV_sum\(2),
	datae => \ALT_INV_Operation[0]~input_o\,
	dataf => \ALT_INV_Operation[1]~input_o\,
	combout => \BCD_2_digit_7_seg_display|Mux7~0_combout\);

\BCD_2_digit_7_seg_display|Result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \BCD_2_digit_7_seg_display|Mux7~0_combout\,
	ena => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_2_digit_7_seg_display|Result\(2));

\division|Data_Quotient[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_Quotient\(2),
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_Quotient\(3));

\division|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_Quotient\(3),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Q\(3));

\multiplication|Data_A~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Data_A~4_combout\ = (!\multiplication|state~q\ & (\A[3]~input_o\)) # (\multiplication|state~q\ & (((!\multiplication|LessThan0~5_combout\ & \multiplication|Data_A\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110100010001000111010001000100011101000100010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \multiplication|ALT_INV_state~q\,
	datac => \multiplication|ALT_INV_LessThan0~5_combout\,
	datad => \multiplication|ALT_INV_Data_A\(2),
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

\sub|cout[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub|cout\(3) = ( \A[2]~input_o\ & ( \B[2]~input_o\ & ( (!\A[1]~input_o\ & (((!\A[0]~input_o\ & \B[0]~input_o\)) # (\B[1]~input_o\))) # (\A[1]~input_o\ & (!\A[0]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\))) ) ) ) # ( !\A[2]~input_o\ & ( \B[2]~input_o\ ) 
-- ) # ( !\A[2]~input_o\ & ( !\B[2]~input_o\ & ( (!\A[1]~input_o\ & (((!\A[0]~input_o\ & \B[0]~input_o\)) # (\B[1]~input_o\))) # (\A[1]~input_o\ & (!\A[0]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011110010000000000000000011111111111111110010000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \sub|cout\(3));

\sub|sum[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub|sum\(3) = !\A[3]~input_o\ $ (!\B[3]~input_o\ $ (!\sub|cout\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \sub|ALT_INV_cout\(3),
	combout => \sub|sum\(3));

\add|cout[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add|cout\(3) = ( \A[2]~input_o\ & ( \B[2]~input_o\ ) ) # ( !\A[2]~input_o\ & ( \B[2]~input_o\ & ( (!\A[1]~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\))) # (\A[1]~input_o\ & (((\A[0]~input_o\ & \B[0]~input_o\)) # (\B[1]~input_o\))) ) ) ) 
-- # ( \A[2]~input_o\ & ( !\B[2]~input_o\ & ( (!\A[1]~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\ & \B[1]~input_o\))) # (\A[1]~input_o\ & (((\A[0]~input_o\ & \B[0]~input_o\)) # (\B[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010001111100000001000111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \add|cout\(3));

\add|sum[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add|sum\(3) = !\A[3]~input_o\ $ (!\B[3]~input_o\ $ (\add|cout\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \add|ALT_INV_cout\(3),
	combout => \add|sum\(3));

\BCD_2_digit_7_seg_display|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD_2_digit_7_seg_display|Mux6~0_combout\ = ( \Operation[0]~input_o\ & ( \Operation[1]~input_o\ & ( \add|sum\(3) ) ) ) # ( !\Operation[0]~input_o\ & ( \Operation[1]~input_o\ & ( !\sub|sum\(3) ) ) ) # ( \Operation[0]~input_o\ & ( !\Operation[1]~input_o\ & 
-- ( \multiplication|R\(3) ) ) ) # ( !\Operation[0]~input_o\ & ( !\Operation[1]~input_o\ & ( \division|Q\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_Q\(3),
	datab => \multiplication|ALT_INV_R\(3),
	datac => \sub|ALT_INV_sum\(3),
	datad => \add|ALT_INV_sum\(3),
	datae => \ALT_INV_Operation[0]~input_o\,
	dataf => \ALT_INV_Operation[1]~input_o\,
	combout => \BCD_2_digit_7_seg_display|Mux6~0_combout\);

\BCD_2_digit_7_seg_display|Result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \BCD_2_digit_7_seg_display|Mux6~0_combout\,
	ena => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_2_digit_7_seg_display|Result\(3));

\division|Data_Quotient[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_Quotient\(3),
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_Quotient\(4));

\division|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_Quotient\(4),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Q\(4));

\multiplication|Data_A~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|Data_A~5_combout\ = (!\multiplication|state~q\ & (\A[4]~input_o\)) # (\multiplication|state~q\ & (((!\multiplication|LessThan0~5_combout\ & \multiplication|Data_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110100010001000111010001000100011101000100010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \multiplication|ALT_INV_state~q\,
	datac => \multiplication|ALT_INV_LessThan0~5_combout\,
	datad => \multiplication|ALT_INV_Data_A\(3),
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

\sub|sum[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \sub|sum\(4) = ( \B[4]~input_o\ & ( !\A[4]~input_o\ $ (((!\A[3]~input_o\ & (!\B[3]~input_o\ & !\sub|cout\(3))) # (\A[3]~input_o\ & ((!\B[3]~input_o\) # (!\sub|cout\(3)))))) ) ) # ( !\B[4]~input_o\ & ( !\A[4]~input_o\ $ (((!\A[3]~input_o\ & 
-- ((\sub|cout\(3)) # (\B[3]~input_o\))) # (\A[3]~input_o\ & (\B[3]~input_o\ & \sub|cout\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010000101011001010111101010011010100001010110010101111010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \sub|ALT_INV_cout\(3),
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	combout => \sub|sum\(4));

\add|sum[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \add|sum\(4) = ( \B[4]~input_o\ & ( !\A[4]~input_o\ $ (((!\A[3]~input_o\ & (\B[3]~input_o\ & \add|cout\(3))) # (\A[3]~input_o\ & ((\add|cout\(3)) # (\B[3]~input_o\))))) ) ) # ( !\B[4]~input_o\ & ( !\A[4]~input_o\ $ (((!\A[3]~input_o\ & ((!\B[3]~input_o\) 
-- # (!\add|cout\(3)))) # (\A[3]~input_o\ & (!\B[3]~input_o\ & !\add|cout\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000111010000001011100010111111010001110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \add|ALT_INV_cout\(3),
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	combout => \add|sum\(4));

\BCD_2_digit_7_seg_display|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD_2_digit_7_seg_display|Mux5~0_combout\ = ( \Operation[0]~input_o\ & ( \Operation[1]~input_o\ & ( \add|sum\(4) ) ) ) # ( !\Operation[0]~input_o\ & ( \Operation[1]~input_o\ & ( !\sub|sum\(4) ) ) ) # ( \Operation[0]~input_o\ & ( !\Operation[1]~input_o\ & 
-- ( \multiplication|R\(4) ) ) ) # ( !\Operation[0]~input_o\ & ( !\Operation[1]~input_o\ & ( \division|Q\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001111110000111100000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \division|ALT_INV_Q\(4),
	datab => \multiplication|ALT_INV_R\(4),
	datac => \sub|ALT_INV_sum\(4),
	datad => \add|ALT_INV_sum\(4),
	datae => \ALT_INV_Operation[0]~input_o\,
	dataf => \ALT_INV_Operation[1]~input_o\,
	combout => \BCD_2_digit_7_seg_display|Mux5~0_combout\);

\BCD_2_digit_7_seg_display|Result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \BCD_2_digit_7_seg_display|Mux5~0_combout\,
	ena => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_2_digit_7_seg_display|Result\(4));

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

\division|Data_Quotient[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_Quotient\(4),
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_Quotient\(5));

\division|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_Quotient\(5),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Q\(5));

\BCD_2_digit_7_seg_display|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD_2_digit_7_seg_display|Mux4~0_combout\ = (!\Operation[1]~input_o\ & ((!\Operation[0]~input_o\ & ((\division|Q\(5)))) # (\Operation[0]~input_o\ & (\multiplication|R\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operation[1]~input_o\,
	datab => \ALT_INV_Operation[0]~input_o\,
	datac => \multiplication|ALT_INV_R\(5),
	datad => \division|ALT_INV_Q\(5),
	combout => \BCD_2_digit_7_seg_display|Mux4~0_combout\);

\BCD_2_digit_7_seg_display|Result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \BCD_2_digit_7_seg_display|Mux4~0_combout\,
	ena => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_2_digit_7_seg_display|Result\(5));

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

\division|Data_Quotient[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_Quotient\(5),
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_Quotient\(6));

\division|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_Quotient\(6),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Q\(6));

\BCD_2_digit_7_seg_display|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD_2_digit_7_seg_display|Mux3~0_combout\ = (!\Operation[1]~input_o\ & ((!\Operation[0]~input_o\ & ((\division|Q\(6)))) # (\Operation[0]~input_o\ & (\multiplication|R\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operation[1]~input_o\,
	datab => \ALT_INV_Operation[0]~input_o\,
	datac => \multiplication|ALT_INV_R\(6),
	datad => \division|ALT_INV_Q\(6),
	combout => \BCD_2_digit_7_seg_display|Mux3~0_combout\);

\BCD_2_digit_7_seg_display|Result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \BCD_2_digit_7_seg_display|Mux3~0_combout\,
	ena => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_2_digit_7_seg_display|Result\(6));

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

\division|Data_Quotient[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_Quotient\(6),
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_Quotient\(7));

\division|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_Quotient\(7),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Q\(7));

\BCD_2_digit_7_seg_display|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD_2_digit_7_seg_display|Mux2~0_combout\ = (!\Operation[1]~input_o\ & ((!\Operation[0]~input_o\ & ((\division|Q\(7)))) # (\Operation[0]~input_o\ & (\multiplication|R\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operation[1]~input_o\,
	datab => \ALT_INV_Operation[0]~input_o\,
	datac => \multiplication|ALT_INV_R\(7),
	datad => \division|ALT_INV_Q\(7),
	combout => \BCD_2_digit_7_seg_display|Mux2~0_combout\);

\BCD_2_digit_7_seg_display|Result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \BCD_2_digit_7_seg_display|Mux2~0_combout\,
	ena => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_2_digit_7_seg_display|Result\(7));

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

\division|Data_Quotient[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_Quotient\(7),
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_Quotient\(8));

\division|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_Quotient\(8),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Q\(8));

\BCD_2_digit_7_seg_display|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD_2_digit_7_seg_display|Mux1~0_combout\ = (!\Operation[1]~input_o\ & ((!\Operation[0]~input_o\ & ((\division|Q\(8)))) # (\Operation[0]~input_o\ & (\multiplication|R\(8)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operation[1]~input_o\,
	datab => \ALT_INV_Operation[0]~input_o\,
	datac => \multiplication|ALT_INV_R\(8),
	datad => \division|ALT_INV_Q\(8),
	combout => \BCD_2_digit_7_seg_display|Mux1~0_combout\);

\BCD_2_digit_7_seg_display|Result[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \BCD_2_digit_7_seg_display|Mux1~0_combout\,
	ena => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_2_digit_7_seg_display|Result\(8));

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

\division|Data_Quotient[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_Quotient\(8),
	clrn => \ALT_INV_RST_N~input_o\,
	sclr => \division|ALT_INV_state.S2~q\,
	ena => \division|bit_counter[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Data_Quotient\(9));

\division|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_Quotient\(9),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|Q\(9));

\BCD_2_digit_7_seg_display|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD_2_digit_7_seg_display|Mux0~0_combout\ = (!\Operation[1]~input_o\ & ((!\Operation[0]~input_o\ & ((\division|Q\(9)))) # (\Operation[0]~input_o\ & (\multiplication|R\(9)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operation[1]~input_o\,
	datab => \ALT_INV_Operation[0]~input_o\,
	datac => \multiplication|ALT_INV_R\(9),
	datad => \division|ALT_INV_Q\(9),
	combout => \BCD_2_digit_7_seg_display|Mux0~0_combout\);

\BCD_2_digit_7_seg_display|Result[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \BCD_2_digit_7_seg_display|Mux0~0_combout\,
	ena => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_2_digit_7_seg_display|Result\(9));

\division|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_A\(0),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|R\(0));

\BCD_2_digit_7_seg_display|Remainder[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD_2_digit_7_seg_display|Remainder[0]~0_combout\ = (!\Operation[1]~input_o\ & (!\Operation[0]~input_o\ & !\RST_N~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operation[1]~input_o\,
	datab => \ALT_INV_Operation[0]~input_o\,
	datac => \ALT_INV_RST_N~input_o\,
	combout => \BCD_2_digit_7_seg_display|Remainder[0]~0_combout\);

\BCD_2_digit_7_seg_display|Remainder[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|R\(0),
	ena => \BCD_2_digit_7_seg_display|Remainder[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_2_digit_7_seg_display|Remainder\(0));

\division|R[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_A\(1),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|R\(1));

\BCD_2_digit_7_seg_display|Remainder[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|R\(1),
	ena => \BCD_2_digit_7_seg_display|Remainder[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_2_digit_7_seg_display|Remainder\(1));

\division|R[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_A\(2),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|R\(2));

\BCD_2_digit_7_seg_display|Remainder[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|R\(2),
	ena => \BCD_2_digit_7_seg_display|Remainder[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_2_digit_7_seg_display|Remainder\(2));

\division|R[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_A\(3),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|R\(3));

\BCD_2_digit_7_seg_display|Remainder[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|R\(3),
	ena => \BCD_2_digit_7_seg_display|Remainder[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_2_digit_7_seg_display|Remainder\(3));

\division|R[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_A\(4),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|R\(4));

\BCD_2_digit_7_seg_display|Remainder[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|R\(4),
	ena => \BCD_2_digit_7_seg_display|Remainder[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_2_digit_7_seg_display|Remainder\(4));

\division|R[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_A\(5),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|R\(5));

\BCD_2_digit_7_seg_display|Remainder[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|R\(5),
	ena => \BCD_2_digit_7_seg_display|Remainder[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_2_digit_7_seg_display|Remainder\(5));

\division|R[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_A\(6),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|R\(6));

\BCD_2_digit_7_seg_display|Remainder[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|R\(6),
	ena => \BCD_2_digit_7_seg_display|Remainder[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_2_digit_7_seg_display|Remainder\(6));

\division|R[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_A\(7),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|R\(7));

\BCD_2_digit_7_seg_display|Remainder[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|R\(7),
	ena => \BCD_2_digit_7_seg_display|Remainder[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_2_digit_7_seg_display|Remainder\(7));

\division|R[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_A\(8),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|R\(8));

\BCD_2_digit_7_seg_display|Remainder[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|R\(8),
	ena => \BCD_2_digit_7_seg_display|Remainder[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_2_digit_7_seg_display|Remainder\(8));

\division|R[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|Data_A\(9),
	clrn => \ALT_INV_RST_N~input_o\,
	ena => \division|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|R\(9));

\BCD_2_digit_7_seg_display|Remainder[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|R\(9),
	ena => \BCD_2_digit_7_seg_display|Remainder[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_2_digit_7_seg_display|Remainder\(9));

\multiplication|DONE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \multiplication|DONE~0_combout\ = ( \Start~input_o\ & ( ((!\RST_N~input_o\ & (\multiplication|state~q\ & \multiplication|LessThan0~5_combout\))) # (\multiplication|DONE~q\) ) ) # ( !\Start~input_o\ & ( (!\RST_N~input_o\ & (\multiplication|state~q\ & 
-- ((\multiplication|LessThan0~5_combout\) # (\multiplication|DONE~q\)))) # (\RST_N~input_o\ & (\multiplication|DONE~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100011011001100110011101100010011000110110011001100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N~input_o\,
	datab => \multiplication|ALT_INV_DONE~q\,
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

\division|DONE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \division|DONE~0_combout\ = ( \Start~input_o\ & ( \division|state.S2~q\ & ( \division|DONE~q\ ) ) ) # ( !\Start~input_o\ & ( \division|state.S2~q\ & ( \division|DONE~q\ ) ) ) # ( \Start~input_o\ & ( !\division|state.S2~q\ & ( ((!\RST_N~input_o\ & 
-- (\division|LessThan0~6_combout\ & \division|state.S1~q\))) # (\division|DONE~q\) ) ) ) # ( !\Start~input_o\ & ( !\division|state.S2~q\ & ( (!\RST_N~input_o\ & (\division|state.S1~q\ & ((\division|LessThan0~6_combout\) # (\division|DONE~q\)))) # 
-- (\RST_N~input_o\ & (\division|DONE~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100111011001100110011101100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RST_N~input_o\,
	datab => \division|ALT_INV_DONE~q\,
	datac => \division|ALT_INV_LessThan0~6_combout\,
	datad => \division|ALT_INV_state.S1~q\,
	datae => \ALT_INV_Start~input_o\,
	dataf => \division|ALT_INV_state.S2~q\,
	combout => \division|DONE~0_combout\);

\division|DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \division|DONE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \division|DONE~q\);

\BCD_2_digit_7_seg_display|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BCD_2_digit_7_seg_display|Mux10~0_combout\ = ((!\Operation[0]~input_o\ & ((\division|DONE~q\))) # (\Operation[0]~input_o\ & (\multiplication|DONE~q\))) # (\Operation[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011111011111010101111101111101010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Operation[1]~input_o\,
	datab => \ALT_INV_Operation[0]~input_o\,
	datac => \multiplication|ALT_INV_DONE~q\,
	datad => \division|ALT_INV_DONE~q\,
	combout => \BCD_2_digit_7_seg_display|Mux10~0_combout\);

\BCD_2_digit_7_seg_display|Done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \BCD_2_digit_7_seg_display|Mux10~0_combout\,
	ena => \ALT_INV_RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD_2_digit_7_seg_display|Done~q\);

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


