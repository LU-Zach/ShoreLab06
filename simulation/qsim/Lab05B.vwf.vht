-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/18/2021 16:48:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ShoreLab05
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ShoreLab05_vhd_vec_tst IS
END ShoreLab05_vhd_vec_tst;
ARCHITECTURE ShoreLab05_arch OF ShoreLab05_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALU_result_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Branch_Not_Equal_out : STD_LOGIC;
SIGNAL Branch_out : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL Instruction_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Jump_out : STD_LOGIC;
SIGNAL memory_write_data_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Memwrite_out : STD_LOGIC;
SIGNAL PC : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL read_data_1_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL read_data_2_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Regwrite_out : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL write_data_out : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Zero_out : STD_LOGIC;
COMPONENT ShoreLab05
	PORT (
	ALU_result_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	Branch_Not_Equal_out : BUFFER STD_LOGIC;
	Branch_out : BUFFER STD_LOGIC;
	clock : IN STD_LOGIC;
	Instruction_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	Jump_out : BUFFER STD_LOGIC;
	memory_write_data_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	Memwrite_out : BUFFER STD_LOGIC;
	PC : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
	read_data_1_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	read_data_2_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	Regwrite_out : BUFFER STD_LOGIC;
	reset : IN STD_LOGIC;
	write_data_out : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	Zero_out : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ShoreLab05
	PORT MAP (
-- list connections between master ports and signals
	ALU_result_out => ALU_result_out,
	Branch_Not_Equal_out => Branch_Not_Equal_out,
	Branch_out => Branch_out,
	clock => clock,
	Instruction_out => Instruction_out,
	Jump_out => Jump_out,
	memory_write_data_out => memory_write_data_out,
	Memwrite_out => Memwrite_out,
	PC => PC,
	read_data_1_out => read_data_1_out,
	read_data_2_out => read_data_2_out,
	Regwrite_out => Regwrite_out,
	reset => reset,
	write_data_out => write_data_out,
	Zero_out => Zero_out
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		clock <= '0';
		WAIT FOR 35000 ps;
		clock <= '1';
		WAIT FOR 35000 ps;
	END LOOP;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 40000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END ShoreLab05_arch;
