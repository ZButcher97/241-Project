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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "05/13/2018 16:29:12"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	P1 IS
    PORT (
	ADC_OUT : OUT std_logic_vector(15 DOWNTO 0);
	CLK : IN std_logic;
	ADC_IN : IN std_logic_vector(11 DOWNTO 0);
	MCU_IN : IN std_logic_vector(7 DOWNTO 0);
	Buffer1 : OUT std_logic_vector(11 DOWNTO 0);
	Buffer2 : OUT std_logic_vector(11 DOWNTO 0);
	Buffer3 : OUT std_logic_vector(11 DOWNTO 0);
	Buffer4 : OUT std_logic_vector(11 DOWNTO 0);
	BUFFERCHEQ : OUT std_logic_vector(3 DOWNTO 0);
	Clock_Count : OUT std_logic_vector(3 DOWNTO 0);
	OUT2MCU : OUT std_logic_vector(3 DOWNTO 0);
	OUTPUTCHECK : OUT std_logic_vector(7 DOWNTO 0)
	);
END P1;

-- Design Ports Information
-- ADC_OUT[15]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[14]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[13]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[12]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[11]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[10]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[9]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[8]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[7]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[4]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[1]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[11]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[10]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[9]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[8]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[7]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[0]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[11]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[10]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[9]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[8]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[7]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[5]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[1]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[11]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[10]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[9]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[8]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[7]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[5]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[4]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[11]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[10]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[9]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[8]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[7]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[6]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[4]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[3]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[2]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[1]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[0]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUFFERCHEQ[3]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUFFERCHEQ[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUFFERCHEQ[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUFFERCHEQ[0]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_Count[3]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_Count[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_Count[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_Count[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2MCU[3]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2MCU[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2MCU[1]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2MCU[0]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[7]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[5]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[4]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[3]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[2]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[6]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[5]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[4]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[2]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[1]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[11]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[10]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[9]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[8]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[0]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF P1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ADC_OUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_ADC_IN : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_MCU_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Buffer1 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_Buffer2 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_Buffer3 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_Buffer4 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_BUFFERCHEQ : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Clock_Count : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OUT2MCU : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OUTPUTCHECK : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ADC_OUT[15]~output_o\ : std_logic;
SIGNAL \ADC_OUT[14]~output_o\ : std_logic;
SIGNAL \ADC_OUT[13]~output_o\ : std_logic;
SIGNAL \ADC_OUT[12]~output_o\ : std_logic;
SIGNAL \ADC_OUT[11]~output_o\ : std_logic;
SIGNAL \ADC_OUT[10]~output_o\ : std_logic;
SIGNAL \ADC_OUT[9]~output_o\ : std_logic;
SIGNAL \ADC_OUT[8]~output_o\ : std_logic;
SIGNAL \ADC_OUT[7]~output_o\ : std_logic;
SIGNAL \ADC_OUT[6]~output_o\ : std_logic;
SIGNAL \ADC_OUT[5]~output_o\ : std_logic;
SIGNAL \ADC_OUT[4]~output_o\ : std_logic;
SIGNAL \ADC_OUT[3]~output_o\ : std_logic;
SIGNAL \ADC_OUT[2]~output_o\ : std_logic;
SIGNAL \ADC_OUT[1]~output_o\ : std_logic;
SIGNAL \ADC_OUT[0]~output_o\ : std_logic;
SIGNAL \Buffer1[11]~output_o\ : std_logic;
SIGNAL \Buffer1[10]~output_o\ : std_logic;
SIGNAL \Buffer1[9]~output_o\ : std_logic;
SIGNAL \Buffer1[8]~output_o\ : std_logic;
SIGNAL \Buffer1[7]~output_o\ : std_logic;
SIGNAL \Buffer1[6]~output_o\ : std_logic;
SIGNAL \Buffer1[5]~output_o\ : std_logic;
SIGNAL \Buffer1[4]~output_o\ : std_logic;
SIGNAL \Buffer1[3]~output_o\ : std_logic;
SIGNAL \Buffer1[2]~output_o\ : std_logic;
SIGNAL \Buffer1[1]~output_o\ : std_logic;
SIGNAL \Buffer1[0]~output_o\ : std_logic;
SIGNAL \Buffer2[11]~output_o\ : std_logic;
SIGNAL \Buffer2[10]~output_o\ : std_logic;
SIGNAL \Buffer2[9]~output_o\ : std_logic;
SIGNAL \Buffer2[8]~output_o\ : std_logic;
SIGNAL \Buffer2[7]~output_o\ : std_logic;
SIGNAL \Buffer2[6]~output_o\ : std_logic;
SIGNAL \Buffer2[5]~output_o\ : std_logic;
SIGNAL \Buffer2[4]~output_o\ : std_logic;
SIGNAL \Buffer2[3]~output_o\ : std_logic;
SIGNAL \Buffer2[2]~output_o\ : std_logic;
SIGNAL \Buffer2[1]~output_o\ : std_logic;
SIGNAL \Buffer2[0]~output_o\ : std_logic;
SIGNAL \Buffer3[11]~output_o\ : std_logic;
SIGNAL \Buffer3[10]~output_o\ : std_logic;
SIGNAL \Buffer3[9]~output_o\ : std_logic;
SIGNAL \Buffer3[8]~output_o\ : std_logic;
SIGNAL \Buffer3[7]~output_o\ : std_logic;
SIGNAL \Buffer3[6]~output_o\ : std_logic;
SIGNAL \Buffer3[5]~output_o\ : std_logic;
SIGNAL \Buffer3[4]~output_o\ : std_logic;
SIGNAL \Buffer3[3]~output_o\ : std_logic;
SIGNAL \Buffer3[2]~output_o\ : std_logic;
SIGNAL \Buffer3[1]~output_o\ : std_logic;
SIGNAL \Buffer3[0]~output_o\ : std_logic;
SIGNAL \Buffer4[11]~output_o\ : std_logic;
SIGNAL \Buffer4[10]~output_o\ : std_logic;
SIGNAL \Buffer4[9]~output_o\ : std_logic;
SIGNAL \Buffer4[8]~output_o\ : std_logic;
SIGNAL \Buffer4[7]~output_o\ : std_logic;
SIGNAL \Buffer4[6]~output_o\ : std_logic;
SIGNAL \Buffer4[5]~output_o\ : std_logic;
SIGNAL \Buffer4[4]~output_o\ : std_logic;
SIGNAL \Buffer4[3]~output_o\ : std_logic;
SIGNAL \Buffer4[2]~output_o\ : std_logic;
SIGNAL \Buffer4[1]~output_o\ : std_logic;
SIGNAL \Buffer4[0]~output_o\ : std_logic;
SIGNAL \BUFFERCHEQ[3]~output_o\ : std_logic;
SIGNAL \BUFFERCHEQ[2]~output_o\ : std_logic;
SIGNAL \BUFFERCHEQ[1]~output_o\ : std_logic;
SIGNAL \BUFFERCHEQ[0]~output_o\ : std_logic;
SIGNAL \Clock_Count[3]~output_o\ : std_logic;
SIGNAL \Clock_Count[2]~output_o\ : std_logic;
SIGNAL \Clock_Count[1]~output_o\ : std_logic;
SIGNAL \Clock_Count[0]~output_o\ : std_logic;
SIGNAL \OUT2MCU[3]~output_o\ : std_logic;
SIGNAL \OUT2MCU[2]~output_o\ : std_logic;
SIGNAL \OUT2MCU[1]~output_o\ : std_logic;
SIGNAL \OUT2MCU[0]~output_o\ : std_logic;
SIGNAL \OUTPUTCHECK[7]~output_o\ : std_logic;
SIGNAL \OUTPUTCHECK[6]~output_o\ : std_logic;
SIGNAL \OUTPUTCHECK[5]~output_o\ : std_logic;
SIGNAL \OUTPUTCHECK[4]~output_o\ : std_logic;
SIGNAL \OUTPUTCHECK[3]~output_o\ : std_logic;
SIGNAL \OUTPUTCHECK[2]~output_o\ : std_logic;
SIGNAL \OUTPUTCHECK[1]~output_o\ : std_logic;
SIGNAL \OUTPUTCHECK[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \ADC_IN[11]~input_o\ : std_logic;
SIGNAL \ADC_IN[5]~input_o\ : std_logic;
SIGNAL \ADC_IN[8]~input_o\ : std_logic;
SIGNAL \ADC_IN[6]~input_o\ : std_logic;
SIGNAL \ADC_IN[7]~input_o\ : std_logic;
SIGNAL \inst|buffer1[11]~6_combout\ : std_logic;
SIGNAL \ADC_IN[9]~input_o\ : std_logic;
SIGNAL \ADC_IN[10]~input_o\ : std_logic;
SIGNAL \inst|buffer1[11]~7_combout\ : std_logic;
SIGNAL \ADC_IN[3]~input_o\ : std_logic;
SIGNAL \inst|buffer1[35]~31_combout\ : std_logic;
SIGNAL \inst|buffer1[34]~32_combout\ : std_logic;
SIGNAL \ADC_IN[2]~input_o\ : std_logic;
SIGNAL \inst|buffer1[26]~40_combout\ : std_logic;
SIGNAL \inst|buffer1[14]~23_combout\ : std_logic;
SIGNAL \inst|buffer1[15]~22_combout\ : std_logic;
SIGNAL \inst|Equal9~1_combout\ : std_logic;
SIGNAL \ADC_IN[1]~input_o\ : std_logic;
SIGNAL \inst|buffer1[25]~41_combout\ : std_logic;
SIGNAL \ADC_IN[0]~input_o\ : std_logic;
SIGNAL \inst|buffer1[24]~42_combout\ : std_logic;
SIGNAL \inst|buffer1[13]~24_combout\ : std_logic;
SIGNAL \inst|buffer1[12]~25_combout\ : std_logic;
SIGNAL \inst|Equal9~0_combout\ : std_logic;
SIGNAL \inst|buffer1[31]~35_combout\ : std_logic;
SIGNAL \inst|buffer1[30]~36_combout\ : std_logic;
SIGNAL \inst|buffer1[18]~19_combout\ : std_logic;
SIGNAL \inst|buffer1[19]~18_combout\ : std_logic;
SIGNAL \inst|Equal9~3_combout\ : std_logic;
SIGNAL \inst|buffer1[29]~37_combout\ : std_logic;
SIGNAL \ADC_IN[4]~input_o\ : std_logic;
SIGNAL \inst|buffer1[16]~21_combout\ : std_logic;
SIGNAL \inst|buffer1[28]~38_combout\ : std_logic;
SIGNAL \inst|buffer1[17]~20_combout\ : std_logic;
SIGNAL \inst|Equal9~2_combout\ : std_logic;
SIGNAL \inst|Equal9~4_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|buffer1[32]~34_combout\ : std_logic;
SIGNAL \inst|buffer1[33]~33_combout\ : std_logic;
SIGNAL \inst|buffer1[20]~17_combout\ : std_logic;
SIGNAL \inst|Equal9~5_combout\ : std_logic;
SIGNAL \inst|Equal9~7_combout\ : std_logic;
SIGNAL \inst|counter[2]~0_combout\ : std_logic;
SIGNAL \inst|counter[2]~3_combout\ : std_logic;
SIGNAL \inst|counter~1_combout\ : std_logic;
SIGNAL \inst|counter~2_combout\ : std_logic;
SIGNAL \inst|Equal5~2_combout\ : std_logic;
SIGNAL \inst|Equal5~3_combout\ : std_logic;
SIGNAL \inst|buffer1[0]~feeder_combout\ : std_logic;
SIGNAL \inst|Equal5~0_combout\ : std_logic;
SIGNAL \inst|Equal5~1_combout\ : std_logic;
SIGNAL \inst|Equal5~4_combout\ : std_logic;
SIGNAL \inst|buffer1[23]~14_combout\ : std_logic;
SIGNAL \inst|Equal5~6_combout\ : std_logic;
SIGNAL \inst|Equal5~5_combout\ : std_logic;
SIGNAL \inst|Equal5~7_combout\ : std_logic;
SIGNAL \inst|counter[1]~4_combout\ : std_logic;
SIGNAL \inst|counter[1]~5_combout\ : std_logic;
SIGNAL \inst|counter[1]~6_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|buffer1~43_combout\ : std_logic;
SIGNAL \inst|buffer1[21]~16_combout\ : std_logic;
SIGNAL \inst|buffer1~12_combout\ : std_logic;
SIGNAL \inst|buffer1~10_combout\ : std_logic;
SIGNAL \inst|buffer1~9_combout\ : std_logic;
SIGNAL \inst|buffer1~11_combout\ : std_logic;
SIGNAL \inst|buffer1~13_combout\ : std_logic;
SIGNAL \inst|buffer1[22]~15_combout\ : std_logic;
SIGNAL \inst|Equal9~6_combout\ : std_logic;
SIGNAL \inst|buffer1~44_combout\ : std_logic;
SIGNAL \inst|buffer1[27]~39_combout\ : std_logic;
SIGNAL \inst|buffer1~27_combout\ : std_logic;
SIGNAL \inst|buffer1~29_combout\ : std_logic;
SIGNAL \inst|buffer1~28_combout\ : std_logic;
SIGNAL \inst|buffer1~26_combout\ : std_logic;
SIGNAL \inst|buffer1~30_combout\ : std_logic;
SIGNAL \inst|counter~7_combout\ : std_logic;
SIGNAL \inst|counter~8_combout\ : std_logic;
SIGNAL \inst|buffer1[11]~4_combout\ : std_logic;
SIGNAL \inst|buffer1[11]~5_combout\ : std_logic;
SIGNAL \inst|buffer1[11]~8_combout\ : std_logic;
SIGNAL \inst|ADC_out[11]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out[10]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out[9]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out[8]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out[7]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out[6]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out[5]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out[4]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out[3]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out[2]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out[1]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out[0]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer10[11]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer10[9]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer10[8]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer10[7]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer10[6]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer10[5]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer10[4]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer10[3]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer10[2]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer10[1]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer10[0]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer20[11]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer20[10]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer20[9]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer20[8]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer20[7]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer20[6]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer20[5]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer20[4]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer20[3]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer20[2]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer20[1]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer30[10]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer30[9]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer30[8]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer30[7]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer30[6]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer30[5]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer30[3]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer30[2]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer30[1]~feeder_combout\ : std_logic;
SIGNAL \MCU_IN[0]~input_o\ : std_logic;
SIGNAL \MCU_IN[4]~input_o\ : std_logic;
SIGNAL \MCU_IN[5]~input_o\ : std_logic;
SIGNAL \MCU_IN[6]~input_o\ : std_logic;
SIGNAL \MCU_IN[7]~input_o\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \MCU_IN[1]~input_o\ : std_logic;
SIGNAL \MCU_IN[3]~input_o\ : std_logic;
SIGNAL \MCU_IN[2]~input_o\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE[2]~0_combout\ : std_logic;
SIGNAL \inst1|BUFFER_READ[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal2~0_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~0_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~1_combout\ : std_logic;
SIGNAL \inst1|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|Latch~0_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[0]~4_combout\ : std_logic;
SIGNAL \inst1|Latch~q\ : std_logic;
SIGNAL \inst1|OUTPUT~2_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~3_combout\ : std_logic;
SIGNAL \inst|ADC_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|buffer10\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|buffer20\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|BUFFER_READ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|buffer30\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|OUTPUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|clock_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|buffer1\ : std_logic_vector(143 DOWNTO 0);
SIGNAL \inst|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|SPACE_AVAILABLE\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ADC_OUT <= ww_ADC_OUT;
ww_CLK <= CLK;
ww_ADC_IN <= ADC_IN;
ww_MCU_IN <= MCU_IN;
Buffer1 <= ww_Buffer1;
Buffer2 <= ww_Buffer2;
Buffer3 <= ww_Buffer3;
Buffer4 <= ww_Buffer4;
BUFFERCHEQ <= ww_BUFFERCHEQ;
Clock_Count <= ww_Clock_Count;
OUT2MCU <= ww_OUT2MCU;
OUTPUTCHECK <= ww_OUTPUTCHECK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X20_Y0_N9
\ADC_OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ADC_OUT[15]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\ADC_OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ADC_OUT[14]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\ADC_OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ADC_OUT[13]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\ADC_OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ADC_OUT[12]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\ADC_OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(11),
	devoe => ww_devoe,
	o => \ADC_OUT[11]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\ADC_OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(10),
	devoe => ww_devoe,
	o => \ADC_OUT[10]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\ADC_OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(9),
	devoe => ww_devoe,
	o => \ADC_OUT[9]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\ADC_OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(8),
	devoe => ww_devoe,
	o => \ADC_OUT[8]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\ADC_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(7),
	devoe => ww_devoe,
	o => \ADC_OUT[7]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\ADC_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(6),
	devoe => ww_devoe,
	o => \ADC_OUT[6]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\ADC_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(5),
	devoe => ww_devoe,
	o => \ADC_OUT[5]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\ADC_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(4),
	devoe => ww_devoe,
	o => \ADC_OUT[4]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\ADC_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(3),
	devoe => ww_devoe,
	o => \ADC_OUT[3]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\ADC_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(2),
	devoe => ww_devoe,
	o => \ADC_OUT[2]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\ADC_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(1),
	devoe => ww_devoe,
	o => \ADC_OUT[1]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\ADC_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(0),
	devoe => ww_devoe,
	o => \ADC_OUT[0]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\Buffer1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(11),
	devoe => ww_devoe,
	o => \Buffer1[11]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\Buffer1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(10),
	devoe => ww_devoe,
	o => \Buffer1[10]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\Buffer1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(9),
	devoe => ww_devoe,
	o => \Buffer1[9]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\Buffer1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(8),
	devoe => ww_devoe,
	o => \Buffer1[8]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\Buffer1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(7),
	devoe => ww_devoe,
	o => \Buffer1[7]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\Buffer1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(6),
	devoe => ww_devoe,
	o => \Buffer1[6]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\Buffer1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(5),
	devoe => ww_devoe,
	o => \Buffer1[5]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\Buffer1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(4),
	devoe => ww_devoe,
	o => \Buffer1[4]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\Buffer1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(3),
	devoe => ww_devoe,
	o => \Buffer1[3]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\Buffer1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(2),
	devoe => ww_devoe,
	o => \Buffer1[2]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\Buffer1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(1),
	devoe => ww_devoe,
	o => \Buffer1[1]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\Buffer1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(0),
	devoe => ww_devoe,
	o => \Buffer1[0]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\Buffer2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(11),
	devoe => ww_devoe,
	o => \Buffer2[11]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\Buffer2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(10),
	devoe => ww_devoe,
	o => \Buffer2[10]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\Buffer2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(9),
	devoe => ww_devoe,
	o => \Buffer2[9]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\Buffer2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(8),
	devoe => ww_devoe,
	o => \Buffer2[8]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\Buffer2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(7),
	devoe => ww_devoe,
	o => \Buffer2[7]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\Buffer2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(6),
	devoe => ww_devoe,
	o => \Buffer2[6]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\Buffer2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(5),
	devoe => ww_devoe,
	o => \Buffer2[5]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\Buffer2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(4),
	devoe => ww_devoe,
	o => \Buffer2[4]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\Buffer2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(3),
	devoe => ww_devoe,
	o => \Buffer2[3]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\Buffer2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(2),
	devoe => ww_devoe,
	o => \Buffer2[2]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\Buffer2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(1),
	devoe => ww_devoe,
	o => \Buffer2[1]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\Buffer2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(0),
	devoe => ww_devoe,
	o => \Buffer2[0]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\Buffer3[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(11),
	devoe => ww_devoe,
	o => \Buffer3[11]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\Buffer3[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(10),
	devoe => ww_devoe,
	o => \Buffer3[10]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\Buffer3[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(9),
	devoe => ww_devoe,
	o => \Buffer3[9]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\Buffer3[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(8),
	devoe => ww_devoe,
	o => \Buffer3[8]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\Buffer3[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(7),
	devoe => ww_devoe,
	o => \Buffer3[7]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\Buffer3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(6),
	devoe => ww_devoe,
	o => \Buffer3[6]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\Buffer3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(5),
	devoe => ww_devoe,
	o => \Buffer3[5]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\Buffer3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(4),
	devoe => ww_devoe,
	o => \Buffer3[4]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\Buffer3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(3),
	devoe => ww_devoe,
	o => \Buffer3[3]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\Buffer3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(2),
	devoe => ww_devoe,
	o => \Buffer3[2]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\Buffer3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(1),
	devoe => ww_devoe,
	o => \Buffer3[1]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\Buffer3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(0),
	devoe => ww_devoe,
	o => \Buffer3[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\Buffer4[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Buffer4[11]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\Buffer4[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Buffer4[10]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\Buffer4[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Buffer4[9]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\Buffer4[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Buffer4[8]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\Buffer4[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Buffer4[7]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\Buffer4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Buffer4[6]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\Buffer4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Buffer4[5]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\Buffer4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Buffer4[4]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\Buffer4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Buffer4[3]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\Buffer4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Buffer4[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\Buffer4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Buffer4[1]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\Buffer4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Buffer4[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\BUFFERCHEQ[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BUFFERCHEQ[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\BUFFERCHEQ[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BUFFERCHEQ[2]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\BUFFERCHEQ[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BUFFERCHEQ[1]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\BUFFERCHEQ[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BUFFERCHEQ[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\Clock_Count[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Clock_Count[3]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\Clock_Count[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|clock_counter\(2),
	devoe => ww_devoe,
	o => \Clock_Count[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\Clock_Count[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|clock_counter\(1),
	devoe => ww_devoe,
	o => \Clock_Count[1]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\Clock_Count[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|clock_counter\(0),
	devoe => ww_devoe,
	o => \Clock_Count[0]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\OUT2MCU[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUT2MCU[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\OUT2MCU[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BUFFER_READ\(2),
	devoe => ww_devoe,
	o => \OUT2MCU[2]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\OUT2MCU[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUT2MCU[1]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\OUT2MCU[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUT2MCU[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\OUTPUTCHECK[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUTPUTCHECK[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\OUTPUTCHECK[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUTPUTCHECK[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\OUTPUTCHECK[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUTPUTCHECK[5]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\OUTPUTCHECK[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUTPUTCHECK[4]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\OUTPUTCHECK[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUTPUTCHECK[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\OUTPUTCHECK[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|OUTPUT\(2),
	devoe => ww_devoe,
	o => \OUTPUTCHECK[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\OUTPUTCHECK[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|OUTPUT\(1),
	devoe => ww_devoe,
	o => \OUTPUTCHECK[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\OUTPUTCHECK[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|OUTPUT\(0),
	devoe => ww_devoe,
	o => \OUTPUTCHECK[0]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X14_Y34_N15
\ADC_IN[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(11),
	o => \ADC_IN[11]~input_o\);

-- Location: IOIBUF_X9_Y34_N8
\ADC_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(5),
	o => \ADC_IN[5]~input_o\);

-- Location: FF_X37_Y30_N7
\inst|buffer1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[5]~input_o\,
	sload => VCC,
	ena => \inst|buffer1[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(5));

-- Location: IOIBUF_X11_Y34_N1
\ADC_IN[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(8),
	o => \ADC_IN[8]~input_o\);

-- Location: FF_X36_Y30_N13
\inst|buffer1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[8]~input_o\,
	sload => VCC,
	ena => \inst|buffer1[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(8));

-- Location: IOIBUF_X34_Y34_N15
\ADC_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(6),
	o => \ADC_IN[6]~input_o\);

-- Location: FF_X36_Y30_N11
\inst|buffer1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[6]~input_o\,
	sload => VCC,
	ena => \inst|buffer1[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(6));

-- Location: IOIBUF_X53_Y30_N1
\ADC_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(7),
	o => \ADC_IN[7]~input_o\);

-- Location: FF_X37_Y30_N5
\inst|buffer1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[7]~input_o\,
	sload => VCC,
	ena => \inst|buffer1[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(7));

-- Location: LCCOMB_X36_Y30_N10
\inst|buffer1[11]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[11]~6_combout\ = (!\inst|buffer1\(5) & (!\inst|buffer1\(8) & (!\inst|buffer1\(6) & !\inst|buffer1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(5),
	datab => \inst|buffer1\(8),
	datac => \inst|buffer1\(6),
	datad => \inst|buffer1\(7),
	combout => \inst|buffer1[11]~6_combout\);

-- Location: IOIBUF_X38_Y34_N15
\ADC_IN[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(9),
	o => \ADC_IN[9]~input_o\);

-- Location: FF_X36_Y30_N17
\inst|buffer1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[9]~input_o\,
	sload => VCC,
	ena => \inst|buffer1[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(9));

-- Location: IOIBUF_X16_Y34_N15
\ADC_IN[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(10),
	o => \ADC_IN[10]~input_o\);

-- Location: FF_X36_Y30_N27
\inst|buffer1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[10]~input_o\,
	sload => VCC,
	ena => \inst|buffer1[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(10));

-- Location: LCCOMB_X36_Y30_N24
\inst|buffer1[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[11]~7_combout\ = (!\inst|buffer1\(9) & (!\inst|buffer1\(10) & !\inst|buffer1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(9),
	datac => \inst|buffer1\(10),
	datad => \inst|buffer1\(11),
	combout => \inst|buffer1[11]~7_combout\);

-- Location: IOIBUF_X40_Y34_N8
\ADC_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(3),
	o => \ADC_IN[3]~input_o\);

-- Location: LCCOMB_X32_Y30_N16
\inst|buffer1[35]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[35]~31_combout\ = (!\inst|buffer1~44_combout\ & ((\inst|buffer1~30_combout\ & (\ADC_IN[11]~input_o\)) # (!\inst|buffer1~30_combout\ & ((\inst|buffer1\(35))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~30_combout\,
	datab => \ADC_IN[11]~input_o\,
	datac => \inst|buffer1\(35),
	datad => \inst|buffer1~44_combout\,
	combout => \inst|buffer1[35]~31_combout\);

-- Location: FF_X32_Y30_N17
\inst|buffer1[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[35]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(35));

-- Location: LCCOMB_X32_Y30_N14
\inst|buffer1[34]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[34]~32_combout\ = (!\inst|buffer1~44_combout\ & ((\inst|buffer1~30_combout\ & (\ADC_IN[10]~input_o\)) # (!\inst|buffer1~30_combout\ & ((\inst|buffer1\(34))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~30_combout\,
	datab => \ADC_IN[10]~input_o\,
	datac => \inst|buffer1\(34),
	datad => \inst|buffer1~44_combout\,
	combout => \inst|buffer1[34]~32_combout\);

-- Location: FF_X32_Y30_N15
\inst|buffer1[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[34]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(34));

-- Location: IOIBUF_X53_Y30_N8
\ADC_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(2),
	o => \ADC_IN[2]~input_o\);

-- Location: LCCOMB_X34_Y30_N28
\inst|buffer1[26]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[26]~40_combout\ = (!\inst|buffer1~44_combout\ & ((\inst|buffer1~30_combout\ & (\ADC_IN[2]~input_o\)) # (!\inst|buffer1~30_combout\ & ((\inst|buffer1\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[2]~input_o\,
	datab => \inst|buffer1~44_combout\,
	datac => \inst|buffer1\(26),
	datad => \inst|buffer1~30_combout\,
	combout => \inst|buffer1[26]~40_combout\);

-- Location: FF_X34_Y30_N29
\inst|buffer1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[26]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(26));

-- Location: LCCOMB_X37_Y30_N20
\inst|buffer1[14]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[14]~23_combout\ = (!\inst|buffer1~43_combout\ & ((\inst|buffer1~13_combout\ & (\ADC_IN[2]~input_o\)) # (!\inst|buffer1~13_combout\ & ((\inst|buffer1\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~43_combout\,
	datab => \ADC_IN[2]~input_o\,
	datac => \inst|buffer1\(14),
	datad => \inst|buffer1~13_combout\,
	combout => \inst|buffer1[14]~23_combout\);

-- Location: FF_X37_Y30_N21
\inst|buffer1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[14]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(14));

-- Location: LCCOMB_X37_Y30_N28
\inst|buffer1[15]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[15]~22_combout\ = (!\inst|buffer1~43_combout\ & ((\inst|buffer1~13_combout\ & (\ADC_IN[3]~input_o\)) # (!\inst|buffer1~13_combout\ & ((\inst|buffer1\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~43_combout\,
	datab => \ADC_IN[3]~input_o\,
	datac => \inst|buffer1\(15),
	datad => \inst|buffer1~13_combout\,
	combout => \inst|buffer1[15]~22_combout\);

-- Location: FF_X37_Y30_N29
\inst|buffer1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[15]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(15));

-- Location: LCCOMB_X34_Y30_N12
\inst|Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~1_combout\ = (\inst|buffer1\(27) & (\inst|buffer1\(15) & (\inst|buffer1\(26) $ (!\inst|buffer1\(14))))) # (!\inst|buffer1\(27) & (!\inst|buffer1\(15) & (\inst|buffer1\(26) $ (!\inst|buffer1\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(27),
	datab => \inst|buffer1\(26),
	datac => \inst|buffer1\(14),
	datad => \inst|buffer1\(15),
	combout => \inst|Equal9~1_combout\);

-- Location: IOIBUF_X25_Y34_N1
\ADC_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(1),
	o => \ADC_IN[1]~input_o\);

-- Location: LCCOMB_X34_Y30_N22
\inst|buffer1[25]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[25]~41_combout\ = (!\inst|buffer1~44_combout\ & ((\inst|buffer1~30_combout\ & (\ADC_IN[1]~input_o\)) # (!\inst|buffer1~30_combout\ & ((\inst|buffer1\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[1]~input_o\,
	datab => \inst|buffer1~44_combout\,
	datac => \inst|buffer1\(25),
	datad => \inst|buffer1~30_combout\,
	combout => \inst|buffer1[25]~41_combout\);

-- Location: FF_X34_Y30_N23
\inst|buffer1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[25]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(25));

-- Location: IOIBUF_X25_Y34_N8
\ADC_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(0),
	o => \ADC_IN[0]~input_o\);

-- Location: LCCOMB_X36_Y30_N14
\inst|buffer1[24]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[24]~42_combout\ = (!\inst|buffer1~44_combout\ & ((\inst|buffer1~30_combout\ & ((\ADC_IN[0]~input_o\))) # (!\inst|buffer1~30_combout\ & (\inst|buffer1\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~44_combout\,
	datab => \inst|buffer1~30_combout\,
	datac => \inst|buffer1\(24),
	datad => \ADC_IN[0]~input_o\,
	combout => \inst|buffer1[24]~42_combout\);

-- Location: FF_X36_Y30_N15
\inst|buffer1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[24]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(24));

-- Location: LCCOMB_X37_Y30_N24
\inst|buffer1[13]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[13]~24_combout\ = (!\inst|buffer1~43_combout\ & ((\inst|buffer1~13_combout\ & (\ADC_IN[1]~input_o\)) # (!\inst|buffer1~13_combout\ & ((\inst|buffer1\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~13_combout\,
	datab => \ADC_IN[1]~input_o\,
	datac => \inst|buffer1\(13),
	datad => \inst|buffer1~43_combout\,
	combout => \inst|buffer1[13]~24_combout\);

-- Location: FF_X37_Y30_N25
\inst|buffer1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(13));

-- Location: LCCOMB_X37_Y30_N14
\inst|buffer1[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[12]~25_combout\ = (!\inst|buffer1~43_combout\ & ((\inst|buffer1~13_combout\ & (\ADC_IN[0]~input_o\)) # (!\inst|buffer1~13_combout\ & ((\inst|buffer1\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~43_combout\,
	datab => \ADC_IN[0]~input_o\,
	datac => \inst|buffer1\(12),
	datad => \inst|buffer1~13_combout\,
	combout => \inst|buffer1[12]~25_combout\);

-- Location: FF_X37_Y30_N15
\inst|buffer1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[12]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(12));

-- Location: LCCOMB_X34_Y30_N24
\inst|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~0_combout\ = (\inst|buffer1\(25) & (\inst|buffer1\(13) & (\inst|buffer1\(24) $ (!\inst|buffer1\(12))))) # (!\inst|buffer1\(25) & (!\inst|buffer1\(13) & (\inst|buffer1\(24) $ (!\inst|buffer1\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(25),
	datab => \inst|buffer1\(24),
	datac => \inst|buffer1\(13),
	datad => \inst|buffer1\(12),
	combout => \inst|Equal9~0_combout\);

-- Location: LCCOMB_X34_Y30_N0
\inst|buffer1[31]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[31]~35_combout\ = (!\inst|buffer1~44_combout\ & ((\inst|buffer1~30_combout\ & (\ADC_IN[7]~input_o\)) # (!\inst|buffer1~30_combout\ & ((\inst|buffer1\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~30_combout\,
	datab => \ADC_IN[7]~input_o\,
	datac => \inst|buffer1\(31),
	datad => \inst|buffer1~44_combout\,
	combout => \inst|buffer1[31]~35_combout\);

-- Location: FF_X34_Y30_N1
\inst|buffer1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[31]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(31));

-- Location: LCCOMB_X34_Y30_N20
\inst|buffer1[30]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[30]~36_combout\ = (!\inst|buffer1~44_combout\ & ((\inst|buffer1~30_combout\ & (\ADC_IN[6]~input_o\)) # (!\inst|buffer1~30_combout\ & ((\inst|buffer1\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[6]~input_o\,
	datab => \inst|buffer1~44_combout\,
	datac => \inst|buffer1\(30),
	datad => \inst|buffer1~30_combout\,
	combout => \inst|buffer1[30]~36_combout\);

-- Location: FF_X34_Y30_N21
\inst|buffer1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[30]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(30));

-- Location: LCCOMB_X37_Y30_N0
\inst|buffer1[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[18]~19_combout\ = (!\inst|buffer1~43_combout\ & ((\inst|buffer1~13_combout\ & (\ADC_IN[6]~input_o\)) # (!\inst|buffer1~13_combout\ & ((\inst|buffer1\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~43_combout\,
	datab => \ADC_IN[6]~input_o\,
	datac => \inst|buffer1\(18),
	datad => \inst|buffer1~13_combout\,
	combout => \inst|buffer1[18]~19_combout\);

-- Location: FF_X37_Y30_N1
\inst|buffer1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[18]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(18));

-- Location: LCCOMB_X37_Y30_N8
\inst|buffer1[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[19]~18_combout\ = (!\inst|buffer1~43_combout\ & ((\inst|buffer1~13_combout\ & (\ADC_IN[7]~input_o\)) # (!\inst|buffer1~13_combout\ & ((\inst|buffer1\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[7]~input_o\,
	datab => \inst|buffer1~43_combout\,
	datac => \inst|buffer1\(19),
	datad => \inst|buffer1~13_combout\,
	combout => \inst|buffer1[19]~18_combout\);

-- Location: FF_X37_Y30_N9
\inst|buffer1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(19));

-- Location: LCCOMB_X34_Y30_N30
\inst|Equal9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~3_combout\ = (\inst|buffer1\(31) & (\inst|buffer1\(19) & (\inst|buffer1\(30) $ (!\inst|buffer1\(18))))) # (!\inst|buffer1\(31) & (!\inst|buffer1\(19) & (\inst|buffer1\(30) $ (!\inst|buffer1\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(31),
	datab => \inst|buffer1\(30),
	datac => \inst|buffer1\(18),
	datad => \inst|buffer1\(19),
	combout => \inst|Equal9~3_combout\);

-- Location: LCCOMB_X34_Y30_N26
\inst|buffer1[29]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[29]~37_combout\ = (!\inst|buffer1~44_combout\ & ((\inst|buffer1~30_combout\ & (\ADC_IN[5]~input_o\)) # (!\inst|buffer1~30_combout\ & ((\inst|buffer1\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~30_combout\,
	datab => \ADC_IN[5]~input_o\,
	datac => \inst|buffer1\(29),
	datad => \inst|buffer1~44_combout\,
	combout => \inst|buffer1[29]~37_combout\);

-- Location: FF_X34_Y30_N27
\inst|buffer1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[29]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(29));

-- Location: IOIBUF_X38_Y34_N1
\ADC_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(4),
	o => \ADC_IN[4]~input_o\);

-- Location: LCCOMB_X37_Y30_N12
\inst|buffer1[16]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[16]~21_combout\ = (!\inst|buffer1~43_combout\ & ((\inst|buffer1~13_combout\ & (\ADC_IN[4]~input_o\)) # (!\inst|buffer1~13_combout\ & ((\inst|buffer1\(16))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~43_combout\,
	datab => \ADC_IN[4]~input_o\,
	datac => \inst|buffer1\(16),
	datad => \inst|buffer1~13_combout\,
	combout => \inst|buffer1[16]~21_combout\);

-- Location: FF_X37_Y30_N13
\inst|buffer1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[16]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(16));

-- Location: LCCOMB_X34_Y30_N8
\inst|buffer1[28]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[28]~38_combout\ = (!\inst|buffer1~44_combout\ & ((\inst|buffer1~30_combout\ & (\ADC_IN[4]~input_o\)) # (!\inst|buffer1~30_combout\ & ((\inst|buffer1\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~30_combout\,
	datab => \ADC_IN[4]~input_o\,
	datac => \inst|buffer1\(28),
	datad => \inst|buffer1~44_combout\,
	combout => \inst|buffer1[28]~38_combout\);

-- Location: FF_X34_Y30_N9
\inst|buffer1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[28]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(28));

-- Location: LCCOMB_X37_Y30_N30
\inst|buffer1[17]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[17]~20_combout\ = (!\inst|buffer1~43_combout\ & ((\inst|buffer1~13_combout\ & (\ADC_IN[5]~input_o\)) # (!\inst|buffer1~13_combout\ & ((\inst|buffer1\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~43_combout\,
	datab => \ADC_IN[5]~input_o\,
	datac => \inst|buffer1\(17),
	datad => \inst|buffer1~13_combout\,
	combout => \inst|buffer1[17]~20_combout\);

-- Location: FF_X37_Y30_N31
\inst|buffer1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(17));

-- Location: LCCOMB_X34_Y30_N2
\inst|Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~2_combout\ = (\inst|buffer1\(29) & (\inst|buffer1\(17) & (\inst|buffer1\(16) $ (!\inst|buffer1\(28))))) # (!\inst|buffer1\(29) & (!\inst|buffer1\(17) & (\inst|buffer1\(16) $ (!\inst|buffer1\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(29),
	datab => \inst|buffer1\(16),
	datac => \inst|buffer1\(28),
	datad => \inst|buffer1\(17),
	combout => \inst|Equal9~2_combout\);

-- Location: LCCOMB_X34_Y30_N16
\inst|Equal9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~4_combout\ = (\inst|Equal9~1_combout\ & (\inst|Equal9~0_combout\ & (\inst|Equal9~3_combout\ & \inst|Equal9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal9~1_combout\,
	datab => \inst|Equal9~0_combout\,
	datac => \inst|Equal9~3_combout\,
	datad => \inst|Equal9~2_combout\,
	combout => \inst|Equal9~4_combout\);

-- Location: LCCOMB_X35_Y30_N12
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|counter\(2) & (!\inst|counter\(0) & !\inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(2),
	datac => \inst|counter\(0),
	datad => \inst|counter\(1),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y30_N30
\inst|buffer1[32]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[32]~34_combout\ = (!\inst|buffer1~44_combout\ & ((\inst|buffer1~30_combout\ & (\ADC_IN[8]~input_o\)) # (!\inst|buffer1~30_combout\ & ((\inst|buffer1\(32))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~30_combout\,
	datab => \ADC_IN[8]~input_o\,
	datac => \inst|buffer1\(32),
	datad => \inst|buffer1~44_combout\,
	combout => \inst|buffer1[32]~34_combout\);

-- Location: FF_X32_Y30_N31
\inst|buffer1[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[32]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(32));

-- Location: LCCOMB_X32_Y30_N12
\inst|buffer1[33]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[33]~33_combout\ = (!\inst|buffer1~44_combout\ & ((\inst|buffer1~30_combout\ & (\ADC_IN[9]~input_o\)) # (!\inst|buffer1~30_combout\ & ((\inst|buffer1\(33))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~30_combout\,
	datab => \ADC_IN[9]~input_o\,
	datac => \inst|buffer1\(33),
	datad => \inst|buffer1~44_combout\,
	combout => \inst|buffer1[33]~33_combout\);

-- Location: FF_X32_Y30_N13
\inst|buffer1[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[33]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(33));

-- Location: LCCOMB_X35_Y30_N24
\inst|buffer1[20]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[20]~17_combout\ = (!\inst|buffer1~43_combout\ & ((\inst|buffer1~13_combout\ & (\ADC_IN[8]~input_o\)) # (!\inst|buffer1~13_combout\ & ((\inst|buffer1\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datab => \inst|buffer1~13_combout\,
	datac => \inst|buffer1\(20),
	datad => \inst|buffer1~43_combout\,
	combout => \inst|buffer1[20]~17_combout\);

-- Location: FF_X35_Y30_N25
\inst|buffer1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[20]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(20));

-- Location: LCCOMB_X32_Y30_N26
\inst|Equal9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~5_combout\ = (\inst|buffer1\(32) & (\inst|buffer1\(20) & (\inst|buffer1\(33) $ (!\inst|buffer1\(21))))) # (!\inst|buffer1\(32) & (!\inst|buffer1\(20) & (\inst|buffer1\(33) $ (!\inst|buffer1\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(32),
	datab => \inst|buffer1\(33),
	datac => \inst|buffer1\(21),
	datad => \inst|buffer1\(20),
	combout => \inst|Equal9~5_combout\);

-- Location: LCCOMB_X32_Y30_N10
\inst|Equal9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~7_combout\ = (\inst|Equal9~5_combout\ & \inst|Equal9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal9~5_combout\,
	datad => \inst|Equal9~6_combout\,
	combout => \inst|Equal9~7_combout\);

-- Location: LCCOMB_X35_Y30_N2
\inst|counter[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[2]~0_combout\ = (\inst|Equal0~1_combout\ & (((!\inst|Equal9~7_combout\)) # (!\inst|Equal9~4_combout\))) # (!\inst|Equal0~1_combout\ & (((\inst|buffer1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal9~4_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal9~7_combout\,
	datad => \inst|buffer1~30_combout\,
	combout => \inst|counter[2]~0_combout\);

-- Location: LCCOMB_X35_Y30_N6
\inst|counter[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[2]~3_combout\ = (\inst|counter~2_combout\ & ((\inst|counter[2]~0_combout\))) # (!\inst|counter~2_combout\ & (\inst|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter~2_combout\,
	datac => \inst|counter\(2),
	datad => \inst|counter[2]~0_combout\,
	combout => \inst|counter[2]~3_combout\);

-- Location: FF_X35_Y30_N7
\inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(2));

-- Location: LCCOMB_X35_Y30_N16
\inst|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~1_combout\ = (!\inst|counter\(0) & (\inst|counter\(2) $ (\inst|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datac => \inst|counter\(0),
	datad => \inst|counter\(1),
	combout => \inst|counter~1_combout\);

-- Location: LCCOMB_X35_Y30_N20
\inst|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~2_combout\ = (\inst|counter~1_combout\) # ((\inst|buffer1[11]~8_combout\) # ((\inst|buffer1~13_combout\) # (\inst|buffer1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~1_combout\,
	datab => \inst|buffer1[11]~8_combout\,
	datac => \inst|buffer1~13_combout\,
	datad => \inst|buffer1~30_combout\,
	combout => \inst|counter~2_combout\);

-- Location: FF_X37_Y30_N3
\inst|buffer1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[4]~input_o\,
	sload => VCC,
	ena => \inst|buffer1[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(4));

-- Location: LCCOMB_X37_Y30_N6
\inst|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~2_combout\ = (\inst|buffer1\(17) & (\inst|buffer1\(5) & (\inst|buffer1\(4) $ (!\inst|buffer1\(16))))) # (!\inst|buffer1\(17) & (!\inst|buffer1\(5) & (\inst|buffer1\(4) $ (!\inst|buffer1\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(17),
	datab => \inst|buffer1\(4),
	datac => \inst|buffer1\(5),
	datad => \inst|buffer1\(16),
	combout => \inst|Equal5~2_combout\);

-- Location: LCCOMB_X37_Y30_N4
\inst|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~3_combout\ = (\inst|buffer1\(18) & (\inst|buffer1\(6) & (\inst|buffer1\(19) $ (!\inst|buffer1\(7))))) # (!\inst|buffer1\(18) & (!\inst|buffer1\(6) & (\inst|buffer1\(19) $ (!\inst|buffer1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(18),
	datab => \inst|buffer1\(19),
	datac => \inst|buffer1\(7),
	datad => \inst|buffer1\(6),
	combout => \inst|Equal5~3_combout\);

-- Location: LCCOMB_X36_Y30_N6
\inst|buffer1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[0]~feeder_combout\ = \ADC_IN[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_IN[0]~input_o\,
	combout => \inst|buffer1[0]~feeder_combout\);

-- Location: FF_X36_Y30_N7
\inst|buffer1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[0]~feeder_combout\,
	ena => \inst|buffer1[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(0));

-- Location: FF_X37_Y30_N19
\inst|buffer1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[1]~input_o\,
	sload => VCC,
	ena => \inst|buffer1[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(1));

-- Location: LCCOMB_X37_Y30_N10
\inst|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~0_combout\ = (\inst|buffer1\(0) & (\inst|buffer1\(12) & (\inst|buffer1\(13) $ (!\inst|buffer1\(1))))) # (!\inst|buffer1\(0) & (!\inst|buffer1\(12) & (\inst|buffer1\(13) $ (!\inst|buffer1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(0),
	datab => \inst|buffer1\(13),
	datac => \inst|buffer1\(12),
	datad => \inst|buffer1\(1),
	combout => \inst|Equal5~0_combout\);

-- Location: FF_X37_Y30_N17
\inst|buffer1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[3]~input_o\,
	sload => VCC,
	ena => \inst|buffer1[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(3));

-- Location: FF_X36_Y30_N31
\inst|buffer1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[2]~input_o\,
	sload => VCC,
	ena => \inst|buffer1[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(2));

-- Location: LCCOMB_X37_Y30_N16
\inst|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~1_combout\ = (\inst|buffer1\(14) & (\inst|buffer1\(2) & (\inst|buffer1\(15) $ (!\inst|buffer1\(3))))) # (!\inst|buffer1\(14) & (!\inst|buffer1\(2) & (\inst|buffer1\(15) $ (!\inst|buffer1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(14),
	datab => \inst|buffer1\(15),
	datac => \inst|buffer1\(3),
	datad => \inst|buffer1\(2),
	combout => \inst|Equal5~1_combout\);

-- Location: LCCOMB_X37_Y30_N22
\inst|Equal5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~4_combout\ = (\inst|Equal5~2_combout\ & (\inst|Equal5~3_combout\ & (\inst|Equal5~0_combout\ & \inst|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~2_combout\,
	datab => \inst|Equal5~3_combout\,
	datac => \inst|Equal5~0_combout\,
	datad => \inst|Equal5~1_combout\,
	combout => \inst|Equal5~4_combout\);

-- Location: LCCOMB_X35_Y30_N0
\inst|buffer1[23]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[23]~14_combout\ = (!\inst|buffer1~43_combout\ & ((\inst|buffer1~13_combout\ & (\ADC_IN[11]~input_o\)) # (!\inst|buffer1~13_combout\ & ((\inst|buffer1\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[11]~input_o\,
	datab => \inst|buffer1~13_combout\,
	datac => \inst|buffer1\(23),
	datad => \inst|buffer1~43_combout\,
	combout => \inst|buffer1[23]~14_combout\);

-- Location: FF_X35_Y30_N1
\inst|buffer1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[23]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(23));

-- Location: LCCOMB_X36_Y30_N26
\inst|Equal5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~6_combout\ = (\inst|buffer1\(23) & (\inst|buffer1\(11) & (\inst|buffer1\(10) $ (!\inst|buffer1\(22))))) # (!\inst|buffer1\(23) & (!\inst|buffer1\(11) & (\inst|buffer1\(10) $ (!\inst|buffer1\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(23),
	datab => \inst|buffer1\(11),
	datac => \inst|buffer1\(10),
	datad => \inst|buffer1\(22),
	combout => \inst|Equal5~6_combout\);

-- Location: LCCOMB_X36_Y30_N16
\inst|Equal5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~5_combout\ = (\inst|buffer1\(20) & (\inst|buffer1\(8) & (\inst|buffer1\(9) $ (!\inst|buffer1\(21))))) # (!\inst|buffer1\(20) & (!\inst|buffer1\(8) & (\inst|buffer1\(9) $ (!\inst|buffer1\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(20),
	datab => \inst|buffer1\(8),
	datac => \inst|buffer1\(9),
	datad => \inst|buffer1\(21),
	combout => \inst|Equal5~5_combout\);

-- Location: LCCOMB_X36_Y30_N12
\inst|Equal5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~7_combout\ = (\inst|Equal5~6_combout\ & \inst|Equal5~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal5~6_combout\,
	datad => \inst|Equal5~5_combout\,
	combout => \inst|Equal5~7_combout\);

-- Location: LCCOMB_X36_Y30_N2
\inst|counter[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[1]~4_combout\ = (\inst|Equal0~0_combout\ & (((!\inst|Equal5~7_combout\)) # (!\inst|Equal5~4_combout\))) # (!\inst|Equal0~0_combout\ & (((\inst|buffer1~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~4_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|buffer1~13_combout\,
	datad => \inst|Equal5~7_combout\,
	combout => \inst|counter[1]~4_combout\);

-- Location: LCCOMB_X36_Y30_N0
\inst|counter[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[1]~5_combout\ = (!\inst|buffer1~30_combout\ & (\inst|counter~2_combout\ & (!\inst|Equal0~1_combout\ & \inst|counter[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~30_combout\,
	datab => \inst|counter~2_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|counter[1]~4_combout\,
	combout => \inst|counter[1]~5_combout\);

-- Location: LCCOMB_X36_Y30_N22
\inst|counter[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[1]~6_combout\ = (\inst|counter[1]~5_combout\) # ((\inst|counter~2_combout\ & (\inst|buffer1~44_combout\)) # (!\inst|counter~2_combout\ & ((\inst|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~44_combout\,
	datab => \inst|counter~2_combout\,
	datac => \inst|counter\(1),
	datad => \inst|counter[1]~5_combout\,
	combout => \inst|counter[1]~6_combout\);

-- Location: FF_X36_Y30_N23
\inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(1));

-- Location: LCCOMB_X36_Y30_N20
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|counter\(1) & (!\inst|counter\(2) & !\inst|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datac => \inst|counter\(2),
	datad => \inst|counter\(0),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y30_N26
\inst|buffer1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~43_combout\ = (\inst|Equal0~0_combout\ & (\inst|Equal5~4_combout\ & (\inst|Equal5~6_combout\ & \inst|Equal5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Equal5~4_combout\,
	datac => \inst|Equal5~6_combout\,
	datad => \inst|Equal5~5_combout\,
	combout => \inst|buffer1~43_combout\);

-- Location: LCCOMB_X35_Y30_N30
\inst|buffer1[21]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[21]~16_combout\ = (!\inst|buffer1~43_combout\ & ((\inst|buffer1~13_combout\ & (\ADC_IN[9]~input_o\)) # (!\inst|buffer1~13_combout\ & ((\inst|buffer1\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[9]~input_o\,
	datab => \inst|buffer1~13_combout\,
	datac => \inst|buffer1\(21),
	datad => \inst|buffer1~43_combout\,
	combout => \inst|buffer1[21]~16_combout\);

-- Location: FF_X35_Y30_N31
\inst|buffer1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[21]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(21));

-- Location: LCCOMB_X35_Y30_N26
\inst|buffer1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~12_combout\ = (!\inst|buffer1\(21) & (!\inst|buffer1\(22) & !\inst|buffer1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(21),
	datac => \inst|buffer1\(22),
	datad => \inst|buffer1\(23),
	combout => \inst|buffer1~12_combout\);

-- Location: LCCOMB_X35_Y30_N18
\inst|buffer1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~10_combout\ = (!\inst|buffer1\(15) & (!\inst|buffer1\(16) & (!\inst|buffer1\(14) & !\inst|buffer1\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(15),
	datab => \inst|buffer1\(16),
	datac => \inst|buffer1\(14),
	datad => \inst|buffer1\(13),
	combout => \inst|buffer1~10_combout\);

-- Location: LCCOMB_X35_Y30_N22
\inst|buffer1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~9_combout\ = (!\inst|buffer1\(12) & (!\inst|counter\(1) & (\inst|counter\(0) & !\inst|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(12),
	datab => \inst|counter\(1),
	datac => \inst|counter\(0),
	datad => \inst|counter\(2),
	combout => \inst|buffer1~9_combout\);

-- Location: LCCOMB_X35_Y30_N10
\inst|buffer1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~11_combout\ = (!\inst|buffer1\(18) & (!\inst|buffer1\(20) & (!\inst|buffer1\(19) & !\inst|buffer1\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(18),
	datab => \inst|buffer1\(20),
	datac => \inst|buffer1\(19),
	datad => \inst|buffer1\(17),
	combout => \inst|buffer1~11_combout\);

-- Location: LCCOMB_X35_Y30_N4
\inst|buffer1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~13_combout\ = (\inst|buffer1~12_combout\ & (\inst|buffer1~10_combout\ & (\inst|buffer1~9_combout\ & \inst|buffer1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~12_combout\,
	datab => \inst|buffer1~10_combout\,
	datac => \inst|buffer1~9_combout\,
	datad => \inst|buffer1~11_combout\,
	combout => \inst|buffer1~13_combout\);

-- Location: LCCOMB_X35_Y30_N8
\inst|buffer1[22]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[22]~15_combout\ = (!\inst|buffer1~43_combout\ & ((\inst|buffer1~13_combout\ & (\ADC_IN[10]~input_o\)) # (!\inst|buffer1~13_combout\ & ((\inst|buffer1\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[10]~input_o\,
	datab => \inst|buffer1~13_combout\,
	datac => \inst|buffer1\(22),
	datad => \inst|buffer1~43_combout\,
	combout => \inst|buffer1[22]~15_combout\);

-- Location: FF_X35_Y30_N9
\inst|buffer1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[22]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(22));

-- Location: LCCOMB_X32_Y30_N28
\inst|Equal9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~6_combout\ = (\inst|buffer1\(35) & (\inst|buffer1\(23) & (\inst|buffer1\(34) $ (!\inst|buffer1\(22))))) # (!\inst|buffer1\(35) & (!\inst|buffer1\(23) & (\inst|buffer1\(34) $ (!\inst|buffer1\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(35),
	datab => \inst|buffer1\(34),
	datac => \inst|buffer1\(22),
	datad => \inst|buffer1\(23),
	combout => \inst|Equal9~6_combout\);

-- Location: LCCOMB_X34_Y30_N18
\inst|buffer1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~44_combout\ = (\inst|Equal9~6_combout\ & (\inst|Equal0~1_combout\ & (\inst|Equal9~5_combout\ & \inst|Equal9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal9~6_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal9~5_combout\,
	datad => \inst|Equal9~4_combout\,
	combout => \inst|buffer1~44_combout\);

-- Location: LCCOMB_X34_Y30_N10
\inst|buffer1[27]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[27]~39_combout\ = (!\inst|buffer1~44_combout\ & ((\inst|buffer1~30_combout\ & (\ADC_IN[3]~input_o\)) # (!\inst|buffer1~30_combout\ & ((\inst|buffer1\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[3]~input_o\,
	datab => \inst|buffer1~44_combout\,
	datac => \inst|buffer1\(27),
	datad => \inst|buffer1~30_combout\,
	combout => \inst|buffer1[27]~39_combout\);

-- Location: FF_X34_Y30_N11
\inst|buffer1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[27]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(27));

-- Location: LCCOMB_X34_Y30_N6
\inst|buffer1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~27_combout\ = (!\inst|buffer1\(27) & (!\inst|buffer1\(28) & (!\inst|buffer1\(25) & !\inst|buffer1\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(27),
	datab => \inst|buffer1\(28),
	datac => \inst|buffer1\(25),
	datad => \inst|buffer1\(26),
	combout => \inst|buffer1~27_combout\);

-- Location: LCCOMB_X32_Y30_N0
\inst|buffer1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~29_combout\ = (!\inst|buffer1\(33) & (!\inst|buffer1\(34) & !\inst|buffer1\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(33),
	datac => \inst|buffer1\(34),
	datad => \inst|buffer1\(35),
	combout => \inst|buffer1~29_combout\);

-- Location: LCCOMB_X34_Y30_N4
\inst|buffer1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~28_combout\ = (!\inst|buffer1\(29) & (!\inst|buffer1\(30) & (!\inst|buffer1\(32) & !\inst|buffer1\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(29),
	datab => \inst|buffer1\(30),
	datac => \inst|buffer1\(32),
	datad => \inst|buffer1\(31),
	combout => \inst|buffer1~28_combout\);

-- Location: LCCOMB_X36_Y30_N28
\inst|buffer1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~26_combout\ = (\inst|counter\(1) & (!\inst|counter\(2) & (!\inst|buffer1\(24) & \inst|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(2),
	datac => \inst|buffer1\(24),
	datad => \inst|counter\(0),
	combout => \inst|buffer1~26_combout\);

-- Location: LCCOMB_X34_Y30_N14
\inst|buffer1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~30_combout\ = (\inst|buffer1~27_combout\ & (\inst|buffer1~29_combout\ & (\inst|buffer1~28_combout\ & \inst|buffer1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~27_combout\,
	datab => \inst|buffer1~29_combout\,
	datac => \inst|buffer1~28_combout\,
	datad => \inst|buffer1~26_combout\,
	combout => \inst|buffer1~30_combout\);

-- Location: LCCOMB_X35_Y30_N28
\inst|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~7_combout\ = (!\inst|buffer1~13_combout\ & (!\inst|buffer1~30_combout\ & ((\inst|buffer1[11]~8_combout\) # (\inst|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[11]~8_combout\,
	datab => \inst|counter\(0),
	datac => \inst|buffer1~13_combout\,
	datad => \inst|buffer1~30_combout\,
	combout => \inst|counter~7_combout\);

-- Location: LCCOMB_X35_Y30_N14
\inst|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~8_combout\ = (\inst|Equal0~1_combout\) # ((\inst|counter~7_combout\) # ((!\inst|buffer1~30_combout\ & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~30_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|counter~7_combout\,
	combout => \inst|counter~8_combout\);

-- Location: FF_X35_Y30_N15
\inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(0));

-- Location: LCCOMB_X36_Y30_N4
\inst|buffer1[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[11]~4_combout\ = (!\inst|counter\(0) & (!\inst|counter\(2) & (!\inst|counter\(1) & !\inst|buffer1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(2),
	datac => \inst|counter\(1),
	datad => \inst|buffer1\(0),
	combout => \inst|buffer1[11]~4_combout\);

-- Location: LCCOMB_X37_Y30_N2
\inst|buffer1[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[11]~5_combout\ = (!\inst|buffer1\(3) & (!\inst|buffer1\(1) & (!\inst|buffer1\(4) & !\inst|buffer1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(3),
	datab => \inst|buffer1\(1),
	datac => \inst|buffer1\(4),
	datad => \inst|buffer1\(2),
	combout => \inst|buffer1[11]~5_combout\);

-- Location: LCCOMB_X36_Y30_N18
\inst|buffer1[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[11]~8_combout\ = (\inst|buffer1[11]~6_combout\ & (\inst|buffer1[11]~7_combout\ & (\inst|buffer1[11]~4_combout\ & \inst|buffer1[11]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[11]~6_combout\,
	datab => \inst|buffer1[11]~7_combout\,
	datac => \inst|buffer1[11]~4_combout\,
	datad => \inst|buffer1[11]~5_combout\,
	combout => \inst|buffer1[11]~8_combout\);

-- Location: FF_X36_Y30_N9
\inst|buffer1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[11]~input_o\,
	sload => VCC,
	ena => \inst|buffer1[11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(11));

-- Location: LCCOMB_X27_Y30_N4
\inst|ADC_out[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[11]~feeder_combout\ = \inst|buffer1\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(11),
	combout => \inst|ADC_out[11]~feeder_combout\);

-- Location: FF_X27_Y30_N5
\inst|ADC_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(11));

-- Location: LCCOMB_X27_Y30_N26
\inst|ADC_out[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[10]~feeder_combout\ = \inst|buffer1\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(10),
	combout => \inst|ADC_out[10]~feeder_combout\);

-- Location: FF_X27_Y30_N27
\inst|ADC_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(10));

-- Location: LCCOMB_X36_Y18_N28
\inst|ADC_out[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[9]~feeder_combout\ = \inst|buffer1\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(9),
	combout => \inst|ADC_out[9]~feeder_combout\);

-- Location: FF_X36_Y18_N29
\inst|ADC_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(9));

-- Location: LCCOMB_X36_Y18_N2
\inst|ADC_out[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[8]~feeder_combout\ = \inst|buffer1\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(8),
	combout => \inst|ADC_out[8]~feeder_combout\);

-- Location: FF_X36_Y18_N3
\inst|ADC_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(8));

-- Location: LCCOMB_X36_Y18_N12
\inst|ADC_out[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[7]~feeder_combout\ = \inst|buffer1\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(7),
	combout => \inst|ADC_out[7]~feeder_combout\);

-- Location: FF_X36_Y18_N13
\inst|ADC_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(7));

-- Location: LCCOMB_X27_Y30_N20
\inst|ADC_out[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[6]~feeder_combout\ = \inst|buffer1\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(6),
	combout => \inst|ADC_out[6]~feeder_combout\);

-- Location: FF_X27_Y30_N21
\inst|ADC_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(6));

-- Location: LCCOMB_X52_Y30_N8
\inst|ADC_out[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[5]~feeder_combout\ = \inst|buffer1\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(5),
	combout => \inst|ADC_out[5]~feeder_combout\);

-- Location: FF_X52_Y30_N9
\inst|ADC_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(5));

-- Location: LCCOMB_X52_Y30_N2
\inst|ADC_out[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[4]~feeder_combout\ = \inst|buffer1\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(4),
	combout => \inst|ADC_out[4]~feeder_combout\);

-- Location: FF_X52_Y30_N3
\inst|ADC_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(4));

-- Location: LCCOMB_X52_Y30_N4
\inst|ADC_out[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[3]~feeder_combout\ = \inst|buffer1\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(3),
	combout => \inst|ADC_out[3]~feeder_combout\);

-- Location: FF_X52_Y30_N5
\inst|ADC_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(3));

-- Location: LCCOMB_X52_Y30_N30
\inst|ADC_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[2]~feeder_combout\ = \inst|buffer1\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(2),
	combout => \inst|ADC_out[2]~feeder_combout\);

-- Location: FF_X52_Y30_N31
\inst|ADC_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(2));

-- Location: LCCOMB_X52_Y30_N20
\inst|ADC_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[1]~feeder_combout\ = \inst|buffer1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(1),
	combout => \inst|ADC_out[1]~feeder_combout\);

-- Location: FF_X52_Y30_N21
\inst|ADC_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(1));

-- Location: LCCOMB_X36_Y18_N22
\inst|ADC_out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[0]~feeder_combout\ = \inst|buffer1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(0),
	combout => \inst|ADC_out[0]~feeder_combout\);

-- Location: FF_X36_Y18_N23
\inst|ADC_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(0));

-- Location: LCCOMB_X27_Y30_N2
\inst|buffer10[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer10[11]~feeder_combout\ = \inst|buffer1\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(11),
	combout => \inst|buffer10[11]~feeder_combout\);

-- Location: FF_X27_Y30_N3
\inst|buffer10[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(11));

-- Location: FF_X36_Y30_N25
\inst|buffer10[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(10));

-- Location: LCCOMB_X36_Y18_N24
\inst|buffer10[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer10[9]~feeder_combout\ = \inst|buffer1\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(9),
	combout => \inst|buffer10[9]~feeder_combout\);

-- Location: FF_X36_Y18_N25
\inst|buffer10[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(9));

-- Location: LCCOMB_X36_Y18_N26
\inst|buffer10[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer10[8]~feeder_combout\ = \inst|buffer1\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(8),
	combout => \inst|buffer10[8]~feeder_combout\);

-- Location: FF_X36_Y18_N27
\inst|buffer10[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(8));

-- Location: LCCOMB_X36_Y18_N4
\inst|buffer10[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer10[7]~feeder_combout\ = \inst|buffer1\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(7),
	combout => \inst|buffer10[7]~feeder_combout\);

-- Location: FF_X36_Y18_N5
\inst|buffer10[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(7));

-- Location: LCCOMB_X27_Y30_N16
\inst|buffer10[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer10[6]~feeder_combout\ = \inst|buffer1\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(6),
	combout => \inst|buffer10[6]~feeder_combout\);

-- Location: FF_X27_Y30_N17
\inst|buffer10[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(6));

-- Location: LCCOMB_X52_Y30_N6
\inst|buffer10[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer10[5]~feeder_combout\ = \inst|buffer1\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(5),
	combout => \inst|buffer10[5]~feeder_combout\);

-- Location: FF_X52_Y30_N7
\inst|buffer10[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(5));

-- Location: LCCOMB_X52_Y30_N24
\inst|buffer10[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer10[4]~feeder_combout\ = \inst|buffer1\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(4),
	combout => \inst|buffer10[4]~feeder_combout\);

-- Location: FF_X52_Y30_N25
\inst|buffer10[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(4));

-- Location: LCCOMB_X52_Y30_N10
\inst|buffer10[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer10[3]~feeder_combout\ = \inst|buffer1\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(3),
	combout => \inst|buffer10[3]~feeder_combout\);

-- Location: FF_X52_Y30_N11
\inst|buffer10[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(3));

-- Location: LCCOMB_X52_Y30_N0
\inst|buffer10[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer10[2]~feeder_combout\ = \inst|buffer1\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(2),
	combout => \inst|buffer10[2]~feeder_combout\);

-- Location: FF_X52_Y30_N1
\inst|buffer10[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(2));

-- Location: LCCOMB_X52_Y30_N22
\inst|buffer10[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer10[1]~feeder_combout\ = \inst|buffer1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(1),
	combout => \inst|buffer10[1]~feeder_combout\);

-- Location: FF_X52_Y30_N23
\inst|buffer10[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(1));

-- Location: LCCOMB_X36_Y18_N6
\inst|buffer10[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer10[0]~feeder_combout\ = \inst|buffer1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(0),
	combout => \inst|buffer10[0]~feeder_combout\);

-- Location: FF_X36_Y18_N7
\inst|buffer10[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(0));

-- Location: LCCOMB_X32_Y30_N20
\inst|buffer20[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[11]~feeder_combout\ = \inst|buffer1\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(23),
	combout => \inst|buffer20[11]~feeder_combout\);

-- Location: FF_X32_Y30_N21
\inst|buffer20[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(11));

-- Location: LCCOMB_X32_Y30_N2
\inst|buffer20[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[10]~feeder_combout\ = \inst|buffer1\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(22),
	combout => \inst|buffer20[10]~feeder_combout\);

-- Location: FF_X32_Y30_N3
\inst|buffer20[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(10));

-- Location: LCCOMB_X32_Y30_N4
\inst|buffer20[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[9]~feeder_combout\ = \inst|buffer1\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(21),
	combout => \inst|buffer20[9]~feeder_combout\);

-- Location: FF_X32_Y30_N5
\inst|buffer20[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(9));

-- Location: LCCOMB_X32_Y30_N22
\inst|buffer20[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[8]~feeder_combout\ = \inst|buffer1\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(20),
	combout => \inst|buffer20[8]~feeder_combout\);

-- Location: FF_X32_Y30_N23
\inst|buffer20[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(8));

-- Location: LCCOMB_X30_Y30_N0
\inst|buffer20[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[7]~feeder_combout\ = \inst|buffer1\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(19),
	combout => \inst|buffer20[7]~feeder_combout\);

-- Location: FF_X30_Y30_N1
\inst|buffer20[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(7));

-- Location: LCCOMB_X43_Y30_N24
\inst|buffer20[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[6]~feeder_combout\ = \inst|buffer1\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(18),
	combout => \inst|buffer20[6]~feeder_combout\);

-- Location: FF_X43_Y30_N25
\inst|buffer20[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(6));

-- Location: LCCOMB_X29_Y30_N0
\inst|buffer20[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[5]~feeder_combout\ = \inst|buffer1\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(17),
	combout => \inst|buffer20[5]~feeder_combout\);

-- Location: FF_X29_Y30_N1
\inst|buffer20[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(5));

-- Location: LCCOMB_X32_Y30_N24
\inst|buffer20[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[4]~feeder_combout\ = \inst|buffer1\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(16),
	combout => \inst|buffer20[4]~feeder_combout\);

-- Location: FF_X32_Y30_N25
\inst|buffer20[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(4));

-- Location: LCCOMB_X46_Y30_N24
\inst|buffer20[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[3]~feeder_combout\ = \inst|buffer1\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(15),
	combout => \inst|buffer20[3]~feeder_combout\);

-- Location: FF_X46_Y30_N25
\inst|buffer20[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(3));

-- Location: LCCOMB_X45_Y30_N0
\inst|buffer20[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[2]~feeder_combout\ = \inst|buffer1\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(14),
	combout => \inst|buffer20[2]~feeder_combout\);

-- Location: FF_X45_Y30_N1
\inst|buffer20[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(2));

-- Location: LCCOMB_X30_Y30_N26
\inst|buffer20[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[1]~feeder_combout\ = \inst|buffer1\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(13),
	combout => \inst|buffer20[1]~feeder_combout\);

-- Location: FF_X30_Y30_N27
\inst|buffer20[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(1));

-- Location: FF_X37_Y30_N11
\inst|buffer20[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(0));

-- Location: FF_X32_Y30_N7
\inst|buffer30[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(35),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(11));

-- Location: LCCOMB_X32_Y30_N8
\inst|buffer30[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[10]~feeder_combout\ = \inst|buffer1\(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(34),
	combout => \inst|buffer30[10]~feeder_combout\);

-- Location: FF_X32_Y30_N9
\inst|buffer30[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(10));

-- Location: LCCOMB_X32_Y30_N18
\inst|buffer30[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[9]~feeder_combout\ = \inst|buffer1\(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(33),
	combout => \inst|buffer30[9]~feeder_combout\);

-- Location: FF_X32_Y30_N19
\inst|buffer30[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(9));

-- Location: LCCOMB_X30_Y30_N8
\inst|buffer30[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[8]~feeder_combout\ = \inst|buffer1\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(32),
	combout => \inst|buffer30[8]~feeder_combout\);

-- Location: FF_X30_Y30_N9
\inst|buffer30[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(8));

-- Location: LCCOMB_X38_Y30_N4
\inst|buffer30[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[7]~feeder_combout\ = \inst|buffer1\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(31),
	combout => \inst|buffer30[7]~feeder_combout\);

-- Location: FF_X38_Y30_N5
\inst|buffer30[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(7));

-- Location: LCCOMB_X38_Y30_N30
\inst|buffer30[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[6]~feeder_combout\ = \inst|buffer1\(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(30),
	combout => \inst|buffer30[6]~feeder_combout\);

-- Location: FF_X38_Y30_N31
\inst|buffer30[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(6));

-- Location: LCCOMB_X38_Y30_N12
\inst|buffer30[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[5]~feeder_combout\ = \inst|buffer1\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(29),
	combout => \inst|buffer30[5]~feeder_combout\);

-- Location: FF_X38_Y30_N13
\inst|buffer30[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(5));

-- Location: FF_X34_Y30_N3
\inst|buffer30[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(4));

-- Location: LCCOMB_X38_Y30_N6
\inst|buffer30[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[3]~feeder_combout\ = \inst|buffer1\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(27),
	combout => \inst|buffer30[3]~feeder_combout\);

-- Location: FF_X38_Y30_N7
\inst|buffer30[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(3));

-- Location: LCCOMB_X27_Y30_N10
\inst|buffer30[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[2]~feeder_combout\ = \inst|buffer1\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(26),
	combout => \inst|buffer30[2]~feeder_combout\);

-- Location: FF_X27_Y30_N11
\inst|buffer30[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(2));

-- Location: LCCOMB_X52_Y30_N28
\inst|buffer30[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[1]~feeder_combout\ = \inst|buffer1\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(25),
	combout => \inst|buffer30[1]~feeder_combout\);

-- Location: FF_X52_Y30_N29
\inst|buffer30[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(1));

-- Location: FF_X36_Y30_N29
\inst|buffer30[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(24),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(0));

-- Location: FF_X36_Y30_N21
\inst|clock_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|counter\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(2));

-- Location: FF_X36_Y30_N5
\inst|clock_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|counter\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(1));

-- Location: FF_X35_Y30_N23
\inst|clock_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|counter\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(0));

-- Location: IOIBUF_X14_Y0_N22
\MCU_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(0),
	o => \MCU_IN[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\MCU_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(4),
	o => \MCU_IN[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\MCU_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(5),
	o => \MCU_IN[5]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\MCU_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(6),
	o => \MCU_IN[6]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\MCU_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(7),
	o => \MCU_IN[7]~input_o\);

-- Location: LCCOMB_X16_Y1_N20
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\MCU_IN[4]~input_o\ & (!\MCU_IN[5]~input_o\ & (!\MCU_IN[6]~input_o\ & !\MCU_IN[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[4]~input_o\,
	datab => \MCU_IN[5]~input_o\,
	datac => \MCU_IN[6]~input_o\,
	datad => \MCU_IN[7]~input_o\,
	combout => \inst1|Equal0~0_combout\);

-- Location: IOIBUF_X14_Y0_N15
\MCU_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(1),
	o => \MCU_IN[1]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\MCU_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(3),
	o => \MCU_IN[3]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\MCU_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(2),
	o => \MCU_IN[2]~input_o\);

-- Location: LCCOMB_X15_Y1_N12
\inst1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (\inst1|Equal0~0_combout\ & (!\MCU_IN[1]~input_o\ & (!\MCU_IN[3]~input_o\ & !\MCU_IN[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \MCU_IN[1]~input_o\,
	datac => \MCU_IN[3]~input_o\,
	datad => \MCU_IN[2]~input_o\,
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X15_Y1_N0
\inst1|SPACE_AVAILABLE[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE[2]~0_combout\ = (\inst1|SPACE_AVAILABLE\(2)) # ((\MCU_IN[0]~input_o\ & \inst1|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[0]~input_o\,
	datac => \inst1|SPACE_AVAILABLE\(2),
	datad => \inst1|Equal0~2_combout\,
	combout => \inst1|SPACE_AVAILABLE[2]~0_combout\);

-- Location: FF_X15_Y1_N1
\inst1|SPACE_AVAILABLE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|SPACE_AVAILABLE[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SPACE_AVAILABLE\(2));

-- Location: LCCOMB_X15_Y1_N28
\inst1|BUFFER_READ[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|BUFFER_READ[2]~feeder_combout\ = \inst1|SPACE_AVAILABLE\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SPACE_AVAILABLE\(2),
	combout => \inst1|BUFFER_READ[2]~feeder_combout\);

-- Location: FF_X15_Y1_N29
\inst1|BUFFER_READ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|BUFFER_READ[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BUFFER_READ\(2));

-- Location: LCCOMB_X15_Y1_N26
\inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (\inst1|Equal0~0_combout\ & !\MCU_IN[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datac => \MCU_IN[3]~input_o\,
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X15_Y1_N4
\inst1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal2~0_combout\ = (!\MCU_IN[3]~input_o\ & (\inst1|Equal0~0_combout\ & !\MCU_IN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[3]~input_o\,
	datac => \inst1|Equal0~0_combout\,
	datad => \MCU_IN[0]~input_o\,
	combout => \inst1|Equal2~0_combout\);

-- Location: LCCOMB_X15_Y1_N10
\inst1|OUTPUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~0_combout\ = (\MCU_IN[1]~input_o\ & (\inst1|OUTPUT\(2) & ((\MCU_IN[0]~input_o\) # (\MCU_IN[2]~input_o\)))) # (!\MCU_IN[1]~input_o\ & (((\MCU_IN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[0]~input_o\,
	datab => \MCU_IN[2]~input_o\,
	datac => \MCU_IN[1]~input_o\,
	datad => \inst1|OUTPUT\(2),
	combout => \inst1|OUTPUT~0_combout\);

-- Location: LCCOMB_X15_Y1_N18
\inst1|OUTPUT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~1_combout\ = (\inst1|OUTPUT\(2) & (((\inst1|OUTPUT~0_combout\)) # (!\inst1|Equal0~1_combout\))) # (!\inst1|OUTPUT\(2) & (((\inst1|Equal2~0_combout\ & \inst1|OUTPUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~1_combout\,
	datab => \inst1|Equal2~0_combout\,
	datac => \inst1|OUTPUT\(2),
	datad => \inst1|OUTPUT~0_combout\,
	combout => \inst1|OUTPUT~1_combout\);

-- Location: FF_X15_Y1_N19
\inst1|OUTPUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|OUTPUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTPUT\(2));

-- Location: LCCOMB_X15_Y1_N22
\inst1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~0_combout\ = (\MCU_IN[0]~input_o\ & (!\MCU_IN[1]~input_o\ & (\inst1|Equal0~1_combout\ & !\MCU_IN[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[0]~input_o\,
	datab => \MCU_IN[1]~input_o\,
	datac => \inst1|Equal0~1_combout\,
	datad => \MCU_IN[2]~input_o\,
	combout => \inst1|Equal1~0_combout\);

-- Location: LCCOMB_X15_Y1_N30
\inst1|Latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Latch~0_combout\ = !\inst1|Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal1~0_combout\,
	combout => \inst1|Latch~0_combout\);

-- Location: LCCOMB_X15_Y1_N6
\inst1|OUTPUT[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[0]~4_combout\ = (\inst1|Equal0~1_combout\ & ((\MCU_IN[0]~input_o\ & (!\MCU_IN[1]~input_o\ & !\MCU_IN[2]~input_o\)) # (!\MCU_IN[0]~input_o\ & (\MCU_IN[1]~input_o\ $ (\MCU_IN[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[0]~input_o\,
	datab => \MCU_IN[1]~input_o\,
	datac => \inst1|Equal0~1_combout\,
	datad => \MCU_IN[2]~input_o\,
	combout => \inst1|OUTPUT[0]~4_combout\);

-- Location: FF_X15_Y1_N31
\inst1|Latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Latch~0_combout\,
	ena => \inst1|OUTPUT[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Latch~q\);

-- Location: LCCOMB_X15_Y1_N24
\inst1|OUTPUT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~2_combout\ = (\inst1|OUTPUT\(1)) # ((\inst1|Equal2~0_combout\ & (\MCU_IN[2]~input_o\ $ (\MCU_IN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[2]~input_o\,
	datab => \MCU_IN[1]~input_o\,
	datac => \inst1|Equal2~0_combout\,
	datad => \inst1|OUTPUT\(1),
	combout => \inst1|OUTPUT~2_combout\);

-- Location: LCCOMB_X15_Y1_N20
\inst1|OUTPUT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~3_combout\ = (\inst1|Equal0~2_combout\ & (!\MCU_IN[0]~input_o\ & (\inst1|Latch~q\))) # (!\inst1|Equal0~2_combout\ & (((\inst1|OUTPUT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~2_combout\,
	datab => \MCU_IN[0]~input_o\,
	datac => \inst1|Latch~q\,
	datad => \inst1|OUTPUT~2_combout\,
	combout => \inst1|OUTPUT~3_combout\);

-- Location: FF_X15_Y1_N21
\inst1|OUTPUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|OUTPUT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTPUT\(1));

-- Location: FF_X15_Y1_N23
\inst1|OUTPUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Equal1~0_combout\,
	ena => \inst1|OUTPUT[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTPUT\(0));

ww_ADC_OUT(15) <= \ADC_OUT[15]~output_o\;

ww_ADC_OUT(14) <= \ADC_OUT[14]~output_o\;

ww_ADC_OUT(13) <= \ADC_OUT[13]~output_o\;

ww_ADC_OUT(12) <= \ADC_OUT[12]~output_o\;

ww_ADC_OUT(11) <= \ADC_OUT[11]~output_o\;

ww_ADC_OUT(10) <= \ADC_OUT[10]~output_o\;

ww_ADC_OUT(9) <= \ADC_OUT[9]~output_o\;

ww_ADC_OUT(8) <= \ADC_OUT[8]~output_o\;

ww_ADC_OUT(7) <= \ADC_OUT[7]~output_o\;

ww_ADC_OUT(6) <= \ADC_OUT[6]~output_o\;

ww_ADC_OUT(5) <= \ADC_OUT[5]~output_o\;

ww_ADC_OUT(4) <= \ADC_OUT[4]~output_o\;

ww_ADC_OUT(3) <= \ADC_OUT[3]~output_o\;

ww_ADC_OUT(2) <= \ADC_OUT[2]~output_o\;

ww_ADC_OUT(1) <= \ADC_OUT[1]~output_o\;

ww_ADC_OUT(0) <= \ADC_OUT[0]~output_o\;

ww_Buffer1(11) <= \Buffer1[11]~output_o\;

ww_Buffer1(10) <= \Buffer1[10]~output_o\;

ww_Buffer1(9) <= \Buffer1[9]~output_o\;

ww_Buffer1(8) <= \Buffer1[8]~output_o\;

ww_Buffer1(7) <= \Buffer1[7]~output_o\;

ww_Buffer1(6) <= \Buffer1[6]~output_o\;

ww_Buffer1(5) <= \Buffer1[5]~output_o\;

ww_Buffer1(4) <= \Buffer1[4]~output_o\;

ww_Buffer1(3) <= \Buffer1[3]~output_o\;

ww_Buffer1(2) <= \Buffer1[2]~output_o\;

ww_Buffer1(1) <= \Buffer1[1]~output_o\;

ww_Buffer1(0) <= \Buffer1[0]~output_o\;

ww_Buffer2(11) <= \Buffer2[11]~output_o\;

ww_Buffer2(10) <= \Buffer2[10]~output_o\;

ww_Buffer2(9) <= \Buffer2[9]~output_o\;

ww_Buffer2(8) <= \Buffer2[8]~output_o\;

ww_Buffer2(7) <= \Buffer2[7]~output_o\;

ww_Buffer2(6) <= \Buffer2[6]~output_o\;

ww_Buffer2(5) <= \Buffer2[5]~output_o\;

ww_Buffer2(4) <= \Buffer2[4]~output_o\;

ww_Buffer2(3) <= \Buffer2[3]~output_o\;

ww_Buffer2(2) <= \Buffer2[2]~output_o\;

ww_Buffer2(1) <= \Buffer2[1]~output_o\;

ww_Buffer2(0) <= \Buffer2[0]~output_o\;

ww_Buffer3(11) <= \Buffer3[11]~output_o\;

ww_Buffer3(10) <= \Buffer3[10]~output_o\;

ww_Buffer3(9) <= \Buffer3[9]~output_o\;

ww_Buffer3(8) <= \Buffer3[8]~output_o\;

ww_Buffer3(7) <= \Buffer3[7]~output_o\;

ww_Buffer3(6) <= \Buffer3[6]~output_o\;

ww_Buffer3(5) <= \Buffer3[5]~output_o\;

ww_Buffer3(4) <= \Buffer3[4]~output_o\;

ww_Buffer3(3) <= \Buffer3[3]~output_o\;

ww_Buffer3(2) <= \Buffer3[2]~output_o\;

ww_Buffer3(1) <= \Buffer3[1]~output_o\;

ww_Buffer3(0) <= \Buffer3[0]~output_o\;

ww_Buffer4(11) <= \Buffer4[11]~output_o\;

ww_Buffer4(10) <= \Buffer4[10]~output_o\;

ww_Buffer4(9) <= \Buffer4[9]~output_o\;

ww_Buffer4(8) <= \Buffer4[8]~output_o\;

ww_Buffer4(7) <= \Buffer4[7]~output_o\;

ww_Buffer4(6) <= \Buffer4[6]~output_o\;

ww_Buffer4(5) <= \Buffer4[5]~output_o\;

ww_Buffer4(4) <= \Buffer4[4]~output_o\;

ww_Buffer4(3) <= \Buffer4[3]~output_o\;

ww_Buffer4(2) <= \Buffer4[2]~output_o\;

ww_Buffer4(1) <= \Buffer4[1]~output_o\;

ww_Buffer4(0) <= \Buffer4[0]~output_o\;

ww_BUFFERCHEQ(3) <= \BUFFERCHEQ[3]~output_o\;

ww_BUFFERCHEQ(2) <= \BUFFERCHEQ[2]~output_o\;

ww_BUFFERCHEQ(1) <= \BUFFERCHEQ[1]~output_o\;

ww_BUFFERCHEQ(0) <= \BUFFERCHEQ[0]~output_o\;

ww_Clock_Count(3) <= \Clock_Count[3]~output_o\;

ww_Clock_Count(2) <= \Clock_Count[2]~output_o\;

ww_Clock_Count(1) <= \Clock_Count[1]~output_o\;

ww_Clock_Count(0) <= \Clock_Count[0]~output_o\;

ww_OUT2MCU(3) <= \OUT2MCU[3]~output_o\;

ww_OUT2MCU(2) <= \OUT2MCU[2]~output_o\;

ww_OUT2MCU(1) <= \OUT2MCU[1]~output_o\;

ww_OUT2MCU(0) <= \OUT2MCU[0]~output_o\;

ww_OUTPUTCHECK(7) <= \OUTPUTCHECK[7]~output_o\;

ww_OUTPUTCHECK(6) <= \OUTPUTCHECK[6]~output_o\;

ww_OUTPUTCHECK(5) <= \OUTPUTCHECK[5]~output_o\;

ww_OUTPUTCHECK(4) <= \OUTPUTCHECK[4]~output_o\;

ww_OUTPUTCHECK(3) <= \OUTPUTCHECK[3]~output_o\;

ww_OUTPUTCHECK(2) <= \OUTPUTCHECK[2]~output_o\;

ww_OUTPUTCHECK(1) <= \OUTPUTCHECK[1]~output_o\;

ww_OUTPUTCHECK(0) <= \OUTPUTCHECK[0]~output_o\;
END structure;


