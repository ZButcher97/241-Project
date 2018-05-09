-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/09/2018 20:17:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          P1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY P1_vhd_vec_tst IS
END P1_vhd_vec_tst;
ARCHITECTURE P1_arch OF P1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADC_IN : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL ADC_OUT : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL BUFFERCHEQ : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL MCU_IN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL OUT2MCU : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL OUTPUTCHECK : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT P1
	PORT (
	ADC_IN : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	ADC_OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	BUFFERCHEQ : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	CLK : IN STD_LOGIC;
	MCU_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	OUT2MCU : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	OUTPUTCHECK : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : P1
	PORT MAP (
-- list connections between master ports and signals
	ADC_IN => ADC_IN,
	ADC_OUT => ADC_OUT,
	BUFFERCHEQ => BUFFERCHEQ,
	CLK => CLK,
	MCU_IN => MCU_IN,
	OUT2MCU => OUT2MCU,
	OUTPUTCHECK => OUTPUTCHECK
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
-- ADC_IN[11]
t_prcs_ADC_IN_11: PROCESS
BEGIN
	ADC_IN(11) <= '1';
	WAIT FOR 100000 ps;
	ADC_IN(11) <= '0';
	WAIT FOR 400000 ps;
	ADC_IN(11) <= '1';
	WAIT FOR 100000 ps;
	ADC_IN(11) <= '0';
	WAIT FOR 100000 ps;
	ADC_IN(11) <= '1';
	WAIT FOR 100000 ps;
	ADC_IN(11) <= '0';
WAIT;
END PROCESS t_prcs_ADC_IN_11;
-- ADC_IN[10]
t_prcs_ADC_IN_10: PROCESS
BEGIN
	ADC_IN(10) <= '0';
	WAIT FOR 200000 ps;
	ADC_IN(10) <= '1';
	WAIT FOR 200000 ps;
	ADC_IN(10) <= '0';
	WAIT FOR 100000 ps;
	ADC_IN(10) <= '1';
	WAIT FOR 200000 ps;
	ADC_IN(10) <= '0';
WAIT;
END PROCESS t_prcs_ADC_IN_10;
-- ADC_IN[9]
t_prcs_ADC_IN_9: PROCESS
BEGIN
	ADC_IN(9) <= '0';
	WAIT FOR 100000 ps;
	ADC_IN(9) <= '1';
	WAIT FOR 100000 ps;
	ADC_IN(9) <= '0';
	WAIT FOR 200000 ps;
	ADC_IN(9) <= '1';
WAIT;
END PROCESS t_prcs_ADC_IN_9;
-- ADC_IN[8]
t_prcs_ADC_IN_8: PROCESS
BEGIN
	ADC_IN(8) <= '1';
	WAIT FOR 400000 ps;
	ADC_IN(8) <= '0';
	WAIT FOR 300000 ps;
	ADC_IN(8) <= '1';
WAIT;
END PROCESS t_prcs_ADC_IN_8;
-- ADC_IN[7]
t_prcs_ADC_IN_7: PROCESS
BEGIN
	ADC_IN(7) <= '0';
	WAIT FOR 100000 ps;
	ADC_IN(7) <= '1';
	WAIT FOR 300000 ps;
	ADC_IN(7) <= '0';
	WAIT FOR 200000 ps;
	ADC_IN(7) <= '1';
WAIT;
END PROCESS t_prcs_ADC_IN_7;
-- ADC_IN[6]
t_prcs_ADC_IN_6: PROCESS
BEGIN
	ADC_IN(6) <= '1';
	WAIT FOR 300000 ps;
	ADC_IN(6) <= '0';
	WAIT FOR 200000 ps;
	ADC_IN(6) <= '1';
WAIT;
END PROCESS t_prcs_ADC_IN_6;
-- ADC_IN[5]
t_prcs_ADC_IN_5: PROCESS
BEGIN
	ADC_IN(5) <= '1';
	WAIT FOR 100000 ps;
	ADC_IN(5) <= '0';
	WAIT FOR 100000 ps;
	ADC_IN(5) <= '1';
	WAIT FOR 300000 ps;
	ADC_IN(5) <= '0';
	WAIT FOR 200000 ps;
	ADC_IN(5) <= '1';
	WAIT FOR 200000 ps;
	ADC_IN(5) <= '0';
WAIT;
END PROCESS t_prcs_ADC_IN_5;
-- ADC_IN[4]
t_prcs_ADC_IN_4: PROCESS
BEGIN
	ADC_IN(4) <= '1';
	WAIT FOR 100000 ps;
	ADC_IN(4) <= '0';
	WAIT FOR 100000 ps;
	ADC_IN(4) <= '1';
	WAIT FOR 100000 ps;
	ADC_IN(4) <= '0';
	WAIT FOR 100000 ps;
	ADC_IN(4) <= '1';
	WAIT FOR 100000 ps;
	ADC_IN(4) <= '0';
	WAIT FOR 200000 ps;
	ADC_IN(4) <= '1';
WAIT;
END PROCESS t_prcs_ADC_IN_4;
-- ADC_IN[3]
t_prcs_ADC_IN_3: PROCESS
BEGIN
	ADC_IN(3) <= '1';
	WAIT FOR 300000 ps;
	ADC_IN(3) <= '0';
	WAIT FOR 100000 ps;
	ADC_IN(3) <= '1';
	WAIT FOR 100000 ps;
	ADC_IN(3) <= '0';
	WAIT FOR 100000 ps;
	ADC_IN(3) <= '1';
	WAIT FOR 300000 ps;
	ADC_IN(3) <= '0';
WAIT;
END PROCESS t_prcs_ADC_IN_3;
-- ADC_IN[2]
t_prcs_ADC_IN_2: PROCESS
BEGIN
	ADC_IN(2) <= '1';
	WAIT FOR 100000 ps;
	ADC_IN(2) <= '0';
	WAIT FOR 100000 ps;
	ADC_IN(2) <= '1';
	WAIT FOR 100000 ps;
	ADC_IN(2) <= '0';
	WAIT FOR 300000 ps;
	ADC_IN(2) <= '1';
	WAIT FOR 100000 ps;
	ADC_IN(2) <= '0';
	WAIT FOR 100000 ps;
	ADC_IN(2) <= '1';
WAIT;
END PROCESS t_prcs_ADC_IN_2;
-- ADC_IN[1]
t_prcs_ADC_IN_1: PROCESS
BEGIN
	ADC_IN(1) <= '0';
	WAIT FOR 300000 ps;
	ADC_IN(1) <= '1';
	WAIT FOR 100000 ps;
	ADC_IN(1) <= '0';
	WAIT FOR 100000 ps;
	ADC_IN(1) <= '1';
	WAIT FOR 200000 ps;
	ADC_IN(1) <= '0';
	WAIT FOR 200000 ps;
	ADC_IN(1) <= '1';
WAIT;
END PROCESS t_prcs_ADC_IN_1;
-- ADC_IN[0]
t_prcs_ADC_IN_0: PROCESS
BEGIN
	ADC_IN(0) <= '1';
	WAIT FOR 300000 ps;
	ADC_IN(0) <= '0';
	WAIT FOR 400000 ps;
	ADC_IN(0) <= '1';
WAIT;
END PROCESS t_prcs_ADC_IN_0;
-- MCU_IN[7]
t_prcs_MCU_IN_7: PROCESS
BEGIN
	MCU_IN(7) <= '0';
WAIT;
END PROCESS t_prcs_MCU_IN_7;
-- MCU_IN[6]
t_prcs_MCU_IN_6: PROCESS
BEGIN
	MCU_IN(6) <= '0';
WAIT;
END PROCESS t_prcs_MCU_IN_6;
-- MCU_IN[5]
t_prcs_MCU_IN_5: PROCESS
BEGIN
	MCU_IN(5) <= '0';
WAIT;
END PROCESS t_prcs_MCU_IN_5;
-- MCU_IN[4]
t_prcs_MCU_IN_4: PROCESS
BEGIN
	MCU_IN(4) <= '0';
WAIT;
END PROCESS t_prcs_MCU_IN_4;
-- MCU_IN[3]
t_prcs_MCU_IN_3: PROCESS
BEGIN
	MCU_IN(3) <= '0';
WAIT;
END PROCESS t_prcs_MCU_IN_3;
-- MCU_IN[2]
t_prcs_MCU_IN_2: PROCESS
BEGIN
	MCU_IN(2) <= '0';
WAIT;
END PROCESS t_prcs_MCU_IN_2;
-- MCU_IN[1]
t_prcs_MCU_IN_1: PROCESS
BEGIN
	MCU_IN(1) <= '0';
	WAIT FOR 340000 ps;
	MCU_IN(1) <= '1';
	WAIT FOR 10000 ps;
	MCU_IN(1) <= '0';
	WAIT FOR 310000 ps;
	MCU_IN(1) <= '1';
	WAIT FOR 10000 ps;
	MCU_IN(1) <= '0';
WAIT;
END PROCESS t_prcs_MCU_IN_1;
-- MCU_IN[0]
t_prcs_MCU_IN_0: PROCESS
BEGIN
	MCU_IN(0) <= '1';
	WAIT FOR 10000 ps;
	MCU_IN(0) <= '0';
WAIT;
END PROCESS t_prcs_MCU_IN_0;
END P1_arch;
