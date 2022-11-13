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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/13/2022 17:41:00"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          calculator
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY calculator_vhd_vec_tst IS
END calculator_vhd_vec_tst;
ARCHITECTURE calculator_arch OF calculator_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL Done : STD_LOGIC;
SIGNAL Operation : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Remainder : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL Result : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL RST_N : STD_LOGIC;
SIGNAL Start : STD_LOGIC;
COMPONENT calculator
	PORT (
	A : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	CLK : IN STD_LOGIC;
	Done : OUT STD_LOGIC;
	Operation : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Remainder : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	Result : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	RST_N : IN STD_LOGIC;
	Start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : calculator
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	CLK => CLK,
	Done => Done,
	Operation => Operation,
	Remainder => Remainder,
	Result => Result,
	RST_N => RST_N,
	Start => Start
	);
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	A(4) <= '0';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '0';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '1';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '1';
WAIT;
END PROCESS t_prcs_A_0;
-- B[4]
t_prcs_B_4: PROCESS
BEGIN
	B(4) <= '0';
WAIT;
END PROCESS t_prcs_B_4;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '1';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '0';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '1';
WAIT;
END PROCESS t_prcs_B_0;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
-- Operation[1]
t_prcs_Operation_1: PROCESS
BEGIN
	Operation(1) <= '0';
WAIT;
END PROCESS t_prcs_Operation_1;
-- Operation[0]
t_prcs_Operation_0: PROCESS
BEGIN
	Operation(0) <= '0';
WAIT;
END PROCESS t_prcs_Operation_0;

-- RST_N
t_prcs_RST_N: PROCESS
BEGIN
	RST_N <= '0';
WAIT;
END PROCESS t_prcs_RST_N;

-- Start
t_prcs_Start: PROCESS
BEGIN
	Start <= '1';
	WAIT FOR 30000 ps;
	Start <= '0';
WAIT;
END PROCESS t_prcs_Start;
END calculator_arch;
