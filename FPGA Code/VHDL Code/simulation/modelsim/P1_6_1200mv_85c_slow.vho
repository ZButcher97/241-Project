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

-- DATE "05/12/2018 15:32:12"

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
-- ADC_OUT[15]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[14]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[13]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[12]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[11]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[10]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[9]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[8]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[7]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[6]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[5]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[4]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[3]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[1]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[0]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[11]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[10]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[9]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[8]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[7]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[4]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[2]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[11]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[10]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[9]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[8]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[6]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[4]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[11]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[10]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[9]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[8]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[7]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[5]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[4]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[11]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[10]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[9]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[8]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[6]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[5]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[3]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[2]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUFFERCHEQ[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUFFERCHEQ[2]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUFFERCHEQ[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUFFERCHEQ[0]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_Count[3]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_Count[2]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_Count[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_Count[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2MCU[3]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2MCU[2]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2MCU[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2MCU[0]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[7]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[6]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[5]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[4]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[2]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[2]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[7]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[6]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[5]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[4]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[11]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[10]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[9]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[6]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[5]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[4]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[2]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \MCU_IN[2]~input_o\ : std_logic;
SIGNAL \MCU_IN[7]~input_o\ : std_logic;
SIGNAL \MCU_IN[5]~input_o\ : std_logic;
SIGNAL \MCU_IN[6]~input_o\ : std_logic;
SIGNAL \MCU_IN[4]~input_o\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \MCU_IN[3]~input_o\ : std_logic;
SIGNAL \inst1|Equal2~0_combout\ : std_logic;
SIGNAL \MCU_IN[1]~input_o\ : std_logic;
SIGNAL \MCU_IN[0]~input_o\ : std_logic;
SIGNAL \inst1|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|Equal2~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Latch~0_combout\ : std_logic;
SIGNAL \inst1|Latch~1_combout\ : std_logic;
SIGNAL \inst1|Latch~q\ : std_logic;
SIGNAL \inst|ADC_out[14]~feeder_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~3_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~4_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[2]~5_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[2]~2_combout\ : std_logic;
SIGNAL \inst|ADC_out[14]~0_combout\ : std_logic;
SIGNAL \ADC_IN[11]~input_o\ : std_logic;
SIGNAL \inst|count[4]~0_combout\ : std_logic;
SIGNAL \inst|count[3]~3_combout\ : std_logic;
SIGNAL \inst|buffer3~0_combout\ : std_logic;
SIGNAL \ADC_IN[8]~input_o\ : std_logic;
SIGNAL \ADC_IN[9]~input_o\ : std_logic;
SIGNAL \inst|buffer2~5_combout\ : std_logic;
SIGNAL \inst|buffer2[2]~3_combout\ : std_logic;
SIGNAL \inst|buffer2~6_combout\ : std_logic;
SIGNAL \inst|Equal4~5_combout\ : std_logic;
SIGNAL \ADC_IN[10]~input_o\ : std_logic;
SIGNAL \inst|buffer2~4_combout\ : std_logic;
SIGNAL \inst|buffer2~0_combout\ : std_logic;
SIGNAL \inst|Equal4~6_combout\ : std_logic;
SIGNAL \ADC_IN[6]~input_o\ : std_logic;
SIGNAL \ADC_IN[7]~input_o\ : std_logic;
SIGNAL \inst|buffer2~7_combout\ : std_logic;
SIGNAL \inst|buffer2~8_combout\ : std_logic;
SIGNAL \inst|Equal4~3_combout\ : std_logic;
SIGNAL \ADC_IN[0]~input_o\ : std_logic;
SIGNAL \ADC_IN[1]~input_o\ : std_logic;
SIGNAL \inst|buffer2~13_combout\ : std_logic;
SIGNAL \inst|buffer2~14_combout\ : std_logic;
SIGNAL \inst|Equal4~0_combout\ : std_logic;
SIGNAL \ADC_IN[2]~input_o\ : std_logic;
SIGNAL \ADC_IN[3]~input_o\ : std_logic;
SIGNAL \inst|buffer2~11_combout\ : std_logic;
SIGNAL \inst|buffer2~12_combout\ : std_logic;
SIGNAL \inst|Equal4~1_combout\ : std_logic;
SIGNAL \ADC_IN[4]~input_o\ : std_logic;
SIGNAL \ADC_IN[5]~input_o\ : std_logic;
SIGNAL \inst|buffer2~9_combout\ : std_logic;
SIGNAL \inst|buffer2~10_combout\ : std_logic;
SIGNAL \inst|Equal4~2_combout\ : std_logic;
SIGNAL \inst|Equal4~4_combout\ : std_logic;
SIGNAL \inst|buffer3~1_combout\ : std_logic;
SIGNAL \inst|buffer1~12_combout\ : std_logic;
SIGNAL \inst|buffer1[11]~1_combout\ : std_logic;
SIGNAL \inst|buffer1~9_combout\ : std_logic;
SIGNAL \inst|buffer1~10_combout\ : std_logic;
SIGNAL \inst|buffer1~11_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|buffer1~2_combout\ : std_logic;
SIGNAL \inst|buffer1~3_combout\ : std_logic;
SIGNAL \inst|buffer1~4_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|buffer1~8_combout\ : std_logic;
SIGNAL \inst|buffer1~5_combout\ : std_logic;
SIGNAL \inst|buffer1~6_combout\ : std_logic;
SIGNAL \inst|buffer1~7_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|count[3]~1_combout\ : std_logic;
SIGNAL \inst|count[3]~2_combout\ : std_logic;
SIGNAL \inst|count[1]~4_combout\ : std_logic;
SIGNAL \inst|buffer2~1_combout\ : std_logic;
SIGNAL \inst|Equal2~6_combout\ : std_logic;
SIGNAL \inst|Equal2~5_combout\ : std_logic;
SIGNAL \inst|Equal2~1_combout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|Equal2~3_combout\ : std_logic;
SIGNAL \inst|Equal2~2_combout\ : std_logic;
SIGNAL \inst|Equal2~4_combout\ : std_logic;
SIGNAL \inst|buffer2~2_combout\ : std_logic;
SIGNAL \inst|count[0]~5_combout\ : std_logic;
SIGNAL \inst|count[0]~6_combout\ : std_logic;
SIGNAL \inst|Equal5~0_combout\ : std_logic;
SIGNAL \inst|buffer1~0_combout\ : std_logic;
SIGNAL \inst|ADC_out~1_combout\ : std_logic;
SIGNAL \inst|ADC_out~2_combout\ : std_logic;
SIGNAL \inst|ADC_out~3_combout\ : std_logic;
SIGNAL \inst|ADC_out~4_combout\ : std_logic;
SIGNAL \inst|ADC_out~5_combout\ : std_logic;
SIGNAL \inst|ADC_out~6_combout\ : std_logic;
SIGNAL \inst|ADC_out~7_combout\ : std_logic;
SIGNAL \inst|ADC_out~8_combout\ : std_logic;
SIGNAL \inst|ADC_out~9_combout\ : std_logic;
SIGNAL \inst|ADC_out~10_combout\ : std_logic;
SIGNAL \inst|ADC_out~11_combout\ : std_logic;
SIGNAL \inst|ADC_out~12_combout\ : std_logic;
SIGNAL \inst|buffer10[11]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer10[10]~feeder_combout\ : std_logic;
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
SIGNAL \inst|buffer20[6]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer20[5]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer20[4]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer20[3]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer20[2]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer20[1]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer20[0]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer3~2_combout\ : std_logic;
SIGNAL \inst|buffer3[11]~3_combout\ : std_logic;
SIGNAL \inst|buffer3~4_combout\ : std_logic;
SIGNAL \inst|buffer3~5_combout\ : std_logic;
SIGNAL \inst|buffer30[9]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer3~6_combout\ : std_logic;
SIGNAL \inst|buffer30[8]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer3~7_combout\ : std_logic;
SIGNAL \inst|buffer30[7]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer3~8_combout\ : std_logic;
SIGNAL \inst|buffer30[6]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer3~9_combout\ : std_logic;
SIGNAL \inst|buffer30[5]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer3~10_combout\ : std_logic;
SIGNAL \inst|buffer30[4]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer3~11_combout\ : std_logic;
SIGNAL \inst|buffer30[3]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer3~12_combout\ : std_logic;
SIGNAL \inst|buffer30[2]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer3~13_combout\ : std_logic;
SIGNAL \inst|buffer30[1]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer3~14_combout\ : std_logic;
SIGNAL \inst|buffer30[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE[2]~0_combout\ : std_logic;
SIGNAL \inst1|BUFFER_READ[2]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer1\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|ADC_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|buffer10\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|buffer20\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|OUTPUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|buffer30\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|buffer3\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|BUFFER_READ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|buffer2\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|SPACE_AVAILABLE\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|ALT_INV_Latch~q\ : std_logic;

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
\inst1|ALT_INV_Latch~q\ <= NOT \inst1|Latch~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X49_Y34_N2
\ADC_OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(14),
	devoe => ww_devoe,
	o => \ADC_OUT[15]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\ADC_OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(14),
	devoe => ww_devoe,
	o => \ADC_OUT[14]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
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

-- Location: IOOBUF_X9_Y34_N23
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

-- Location: IOOBUF_X51_Y34_N16
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

-- Location: IOOBUF_X53_Y21_N23
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

-- Location: IOOBUF_X53_Y20_N16
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

-- Location: IOOBUF_X53_Y10_N16
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

-- Location: IOOBUF_X53_Y24_N23
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

-- Location: IOOBUF_X53_Y7_N9
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

-- Location: IOOBUF_X53_Y13_N9
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

-- Location: IOOBUF_X53_Y14_N2
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

-- Location: IOOBUF_X53_Y9_N9
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

-- Location: IOOBUF_X45_Y34_N16
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

-- Location: IOOBUF_X53_Y9_N16
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

-- Location: IOOBUF_X53_Y6_N16
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

-- Location: IOOBUF_X0_Y15_N9
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

-- Location: IOOBUF_X43_Y34_N16
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

-- Location: IOOBUF_X20_Y34_N16
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

-- Location: IOOBUF_X31_Y34_N9
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

-- Location: IOOBUF_X51_Y34_N2
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

-- Location: IOOBUF_X53_Y26_N23
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

-- Location: IOOBUF_X34_Y34_N9
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

-- Location: IOOBUF_X53_Y14_N9
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

-- Location: IOOBUF_X53_Y22_N2
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

-- Location: IOOBUF_X34_Y0_N16
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

-- Location: IOOBUF_X53_Y20_N23
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

-- Location: IOOBUF_X53_Y30_N2
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

-- Location: IOOBUF_X20_Y0_N2
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

-- Location: IOOBUF_X36_Y0_N23
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

-- Location: IOOBUF_X47_Y0_N23
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

-- Location: IOOBUF_X23_Y34_N23
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

-- Location: IOOBUF_X23_Y34_N16
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

-- Location: IOOBUF_X45_Y0_N23
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

-- Location: IOOBUF_X53_Y25_N2
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

-- Location: IOOBUF_X51_Y34_N9
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

-- Location: IOOBUF_X34_Y34_N2
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X20_Y0_N9
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

-- Location: IOOBUF_X25_Y0_N16
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

-- Location: IOOBUF_X34_Y0_N23
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

-- Location: IOOBUF_X34_Y34_N16
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X0_Y15_N2
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

-- Location: IOOBUF_X53_Y9_N23
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

-- Location: IOOBUF_X36_Y0_N16
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

-- Location: IOOBUF_X36_Y0_N9
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

-- Location: IOOBUF_X53_Y6_N23
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

-- Location: IOOBUF_X31_Y34_N2
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

-- Location: IOOBUF_X38_Y34_N16
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

-- Location: IOOBUF_X53_Y8_N23
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

-- Location: IOOBUF_X29_Y34_N16
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

-- Location: IOOBUF_X5_Y34_N16
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

-- Location: IOOBUF_X38_Y0_N9
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

-- Location: IOOBUF_X14_Y0_N16
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

-- Location: IOOBUF_X3_Y34_N2
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

-- Location: IOOBUF_X18_Y34_N2
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

-- Location: IOOBUF_X1_Y34_N9
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

-- Location: IOOBUF_X1_Y34_N2
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

-- Location: IOOBUF_X0_Y24_N16
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

-- Location: IOOBUF_X1_Y0_N2
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

-- Location: IOOBUF_X18_Y0_N9
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X7_Y34_N16
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

-- Location: IOOBUF_X7_Y0_N9
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

-- Location: IOOBUF_X0_Y8_N23
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

-- Location: IOOBUF_X7_Y34_N9
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

-- Location: IOOBUF_X7_Y34_N2
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

-- Location: IOOBUF_X0_Y12_N2
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

-- Location: IOOBUF_X0_Y7_N2
\Clock_Count[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Clock_Count[2]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\Clock_Count[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Clock_Count[1]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\Clock_Count[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Clock_Count[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
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

-- Location: IOOBUF_X43_Y0_N23
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

-- Location: IOOBUF_X5_Y0_N2
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X5_Y0_N9
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

-- Location: IOOBUF_X14_Y0_N23
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

-- Location: IOOBUF_X11_Y0_N16
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

-- Location: IOOBUF_X11_Y0_N23
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

-- Location: IOOBUF_X18_Y34_N23
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

-- Location: IOOBUF_X53_Y11_N9
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

-- Location: IOOBUF_X53_Y15_N9
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

-- Location: IOOBUF_X53_Y16_N9
\OUTPUTCHECK[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_Latch~q\,
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

-- Location: IOIBUF_X45_Y34_N8
\MCU_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(2),
	o => \MCU_IN[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\MCU_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(7),
	o => \MCU_IN[7]~input_o\);

-- Location: IOIBUF_X43_Y0_N15
\MCU_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(5),
	o => \MCU_IN[5]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\MCU_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(6),
	o => \MCU_IN[6]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\MCU_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(4),
	o => \MCU_IN[4]~input_o\);

-- Location: LCCOMB_X44_Y1_N4
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\MCU_IN[7]~input_o\ & (!\MCU_IN[5]~input_o\ & (!\MCU_IN[6]~input_o\ & !\MCU_IN[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[7]~input_o\,
	datab => \MCU_IN[5]~input_o\,
	datac => \MCU_IN[6]~input_o\,
	datad => \MCU_IN[4]~input_o\,
	combout => \inst1|Equal0~0_combout\);

-- Location: IOIBUF_X53_Y30_N8
\MCU_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(3),
	o => \MCU_IN[3]~input_o\);

-- Location: LCCOMB_X41_Y16_N4
\inst1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal2~0_combout\ = (!\MCU_IN[2]~input_o\ & (\inst1|Equal0~0_combout\ & !\MCU_IN[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[2]~input_o\,
	datac => \inst1|Equal0~0_combout\,
	datad => \MCU_IN[3]~input_o\,
	combout => \inst1|Equal2~0_combout\);

-- Location: IOIBUF_X34_Y0_N1
\MCU_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(1),
	o => \MCU_IN[1]~input_o\);

-- Location: IOIBUF_X45_Y34_N1
\MCU_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(0),
	o => \MCU_IN[0]~input_o\);

-- Location: LCCOMB_X41_Y16_N8
\inst1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~0_combout\ = (\inst1|Equal2~0_combout\ & (!\MCU_IN[1]~input_o\ & \MCU_IN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal2~0_combout\,
	datac => \MCU_IN[1]~input_o\,
	datad => \MCU_IN[0]~input_o\,
	combout => \inst1|Equal1~0_combout\);

-- Location: LCCOMB_X41_Y16_N10
\inst1|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal2~1_combout\ = (\MCU_IN[1]~input_o\ & !\MCU_IN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MCU_IN[1]~input_o\,
	datad => \MCU_IN[0]~input_o\,
	combout => \inst1|Equal2~1_combout\);

-- Location: LCCOMB_X41_Y16_N14
\inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (\inst1|Equal0~0_combout\ & (!\MCU_IN[3]~input_o\ & (!\MCU_IN[1]~input_o\ & !\MCU_IN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \MCU_IN[3]~input_o\,
	datac => \MCU_IN[1]~input_o\,
	datad => \MCU_IN[0]~input_o\,
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X41_Y16_N28
\inst1|Latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Latch~0_combout\ = (\inst1|Equal2~1_combout\ & (!\inst1|Equal2~0_combout\ & ((!\MCU_IN[2]~input_o\) # (!\inst1|Equal0~1_combout\)))) # (!\inst1|Equal2~1_combout\ & (((!\MCU_IN[2]~input_o\)) # (!\inst1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~1_combout\,
	datab => \inst1|Equal0~1_combout\,
	datac => \inst1|Equal2~0_combout\,
	datad => \MCU_IN[2]~input_o\,
	combout => \inst1|Latch~0_combout\);

-- Location: LCCOMB_X41_Y16_N2
\inst1|Latch~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Latch~1_combout\ = ((!\inst1|Equal1~0_combout\ & \inst1|Latch~q\)) # (!\inst1|Latch~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal1~0_combout\,
	datac => \inst1|Latch~q\,
	datad => \inst1|Latch~0_combout\,
	combout => \inst1|Latch~1_combout\);

-- Location: FF_X41_Y16_N3
\inst1|Latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Latch~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Latch~q\);

-- Location: LCCOMB_X45_Y17_N0
\inst|ADC_out[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[14]~feeder_combout\ = \inst1|Latch~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Latch~q\,
	combout => \inst|ADC_out[14]~feeder_combout\);

-- Location: LCCOMB_X41_Y16_N30
\inst1|OUTPUT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~3_combout\ = (\inst1|Equal0~1_combout\ & ((\MCU_IN[2]~input_o\ & (\inst1|OUTPUT\(1))) # (!\MCU_IN[2]~input_o\ & ((\inst1|Latch~q\))))) # (!\inst1|Equal0~1_combout\ & (\inst1|OUTPUT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst1|Latch~q\,
	datac => \inst1|Equal0~1_combout\,
	datad => \MCU_IN[2]~input_o\,
	combout => \inst1|OUTPUT~3_combout\);

-- Location: LCCOMB_X41_Y16_N12
\inst1|OUTPUT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~4_combout\ = ((\inst1|OUTPUT~3_combout\ & !\inst1|Equal1~0_combout\)) # (!\inst1|Latch~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT~3_combout\,
	datab => \inst1|Latch~0_combout\,
	datac => \inst1|Equal1~0_combout\,
	combout => \inst1|OUTPUT~4_combout\);

-- Location: FF_X41_Y16_N13
\inst1|OUTPUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|OUTPUT~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTPUT\(1));

-- Location: LCCOMB_X41_Y16_N22
\inst1|OUTPUT[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[2]~5_combout\ = (\inst1|OUTPUT\(2) & ((\MCU_IN[0]~input_o\) # ((!\MCU_IN[1]~input_o\) # (!\inst1|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[0]~input_o\,
	datab => \inst1|Equal2~0_combout\,
	datac => \MCU_IN[1]~input_o\,
	datad => \inst1|OUTPUT\(2),
	combout => \inst1|OUTPUT[2]~5_combout\);

-- Location: LCCOMB_X41_Y16_N18
\inst1|OUTPUT[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[2]~2_combout\ = (\inst1|Equal0~1_combout\ & (((\MCU_IN[2]~input_o\)))) # (!\inst1|Equal0~1_combout\ & (\inst1|OUTPUT[2]~5_combout\ & (!\inst1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT[2]~5_combout\,
	datab => \inst1|Equal0~1_combout\,
	datac => \inst1|Equal1~0_combout\,
	datad => \MCU_IN[2]~input_o\,
	combout => \inst1|OUTPUT[2]~2_combout\);

-- Location: FF_X41_Y16_N19
\inst1|OUTPUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|OUTPUT[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTPUT\(2));

-- Location: LCCOMB_X41_Y16_N24
\inst|ADC_out[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[14]~0_combout\ = ((\inst1|OUTPUT\(1) & \inst1|OUTPUT\(2))) # (!\inst1|Latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst1|Latch~q\,
	datad => \inst1|OUTPUT\(2),
	combout => \inst|ADC_out[14]~0_combout\);

-- Location: FF_X45_Y17_N1
\inst|ADC_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[14]~feeder_combout\,
	ena => \inst|ADC_out[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(14));

-- Location: IOIBUF_X38_Y34_N1
\ADC_IN[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(11),
	o => \ADC_IN[11]~input_o\);

-- Location: LCCOMB_X41_Y16_N26
\inst|count[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[4]~0_combout\ = (\inst1|OUTPUT\(1) & \inst1|Latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datad => \inst1|Latch~q\,
	combout => \inst|count[4]~0_combout\);

-- Location: LCCOMB_X39_Y17_N24
\inst|count[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[3]~3_combout\ = (\inst|count[3]~2_combout\ & (!\inst|Equal5~0_combout\ & (\inst1|OUTPUT\(2)))) # (!\inst|count[3]~2_combout\ & (((\inst|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~0_combout\,
	datab => \inst1|OUTPUT\(2),
	datac => \inst|count\(3),
	datad => \inst|count[3]~2_combout\,
	combout => \inst|count[3]~3_combout\);

-- Location: FF_X39_Y17_N25
\inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|count[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(3));

-- Location: LCCOMB_X39_Y17_N8
\inst|buffer3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer3~0_combout\ = (\inst|count\(1) & (!\inst|count\(0) & !\inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datab => \inst|count\(0),
	datad => \inst|count\(3),
	combout => \inst|buffer3~0_combout\);

-- Location: IOIBUF_X40_Y34_N1
\ADC_IN[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(8),
	o => \ADC_IN[8]~input_o\);

-- Location: IOIBUF_X47_Y34_N22
\ADC_IN[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(9),
	o => \ADC_IN[9]~input_o\);

-- Location: LCCOMB_X43_Y17_N8
\inst|buffer2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer2~5_combout\ = (\ADC_IN[9]~input_o\ & \inst1|Latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[9]~input_o\,
	datad => \inst1|Latch~q\,
	combout => \inst|buffer2~5_combout\);

-- Location: LCCOMB_X39_Y17_N0
\inst|buffer2[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer2[2]~3_combout\ = ((\inst1|OUTPUT\(1) & \inst|buffer2~2_combout\)) # (!\inst1|Latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst1|Latch~q\,
	datad => \inst|buffer2~2_combout\,
	combout => \inst|buffer2[2]~3_combout\);

-- Location: FF_X43_Y17_N9
\inst|buffer2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer2~5_combout\,
	ena => \inst|buffer2[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer2\(9));

-- Location: LCCOMB_X43_Y17_N6
\inst|buffer2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer2~6_combout\ = (\ADC_IN[8]~input_o\ & \inst1|Latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_IN[8]~input_o\,
	datad => \inst1|Latch~q\,
	combout => \inst|buffer2~6_combout\);

-- Location: FF_X43_Y17_N7
\inst|buffer2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer2~6_combout\,
	ena => \inst|buffer2[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer2\(8));

-- Location: LCCOMB_X43_Y17_N30
\inst|Equal4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~5_combout\ = (\ADC_IN[8]~input_o\ & (\inst|buffer2\(8) & (\ADC_IN[9]~input_o\ $ (!\inst|buffer2\(9))))) # (!\ADC_IN[8]~input_o\ & (!\inst|buffer2\(8) & (\ADC_IN[9]~input_o\ $ (!\inst|buffer2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datab => \ADC_IN[9]~input_o\,
	datac => \inst|buffer2\(9),
	datad => \inst|buffer2\(8),
	combout => \inst|Equal4~5_combout\);

-- Location: IOIBUF_X43_Y34_N22
\ADC_IN[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(10),
	o => \ADC_IN[10]~input_o\);

-- Location: LCCOMB_X43_Y17_N26
\inst|buffer2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer2~4_combout\ = (\ADC_IN[10]~input_o\ & \inst1|Latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_IN[10]~input_o\,
	datad => \inst1|Latch~q\,
	combout => \inst|buffer2~4_combout\);

-- Location: FF_X43_Y17_N27
\inst|buffer2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer2~4_combout\,
	ena => \inst|buffer2[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer2\(10));

-- Location: LCCOMB_X43_Y17_N28
\inst|buffer2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer2~0_combout\ = (\ADC_IN[11]~input_o\ & \inst1|Latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_IN[11]~input_o\,
	datad => \inst1|Latch~q\,
	combout => \inst|buffer2~0_combout\);

-- Location: FF_X43_Y17_N29
\inst|buffer2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer2~0_combout\,
	ena => \inst|buffer2[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer2\(11));

-- Location: LCCOMB_X43_Y17_N0
\inst|Equal4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~6_combout\ = (\ADC_IN[10]~input_o\ & (\inst|buffer2\(10) & (\ADC_IN[11]~input_o\ $ (!\inst|buffer2\(11))))) # (!\ADC_IN[10]~input_o\ & (!\inst|buffer2\(10) & (\ADC_IN[11]~input_o\ $ (!\inst|buffer2\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[10]~input_o\,
	datab => \ADC_IN[11]~input_o\,
	datac => \inst|buffer2\(10),
	datad => \inst|buffer2\(11),
	combout => \inst|Equal4~6_combout\);

-- Location: IOIBUF_X53_Y12_N1
\ADC_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(6),
	o => \ADC_IN[6]~input_o\);

-- Location: IOIBUF_X53_Y22_N8
\ADC_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(7),
	o => \ADC_IN[7]~input_o\);

-- Location: LCCOMB_X38_Y17_N4
\inst|buffer2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer2~7_combout\ = (\ADC_IN[7]~input_o\ & \inst1|Latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[7]~input_o\,
	datad => \inst1|Latch~q\,
	combout => \inst|buffer2~7_combout\);

-- Location: FF_X39_Y17_N9
\inst|buffer2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer2~7_combout\,
	sload => VCC,
	ena => \inst|buffer2[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer2\(7));

-- Location: LCCOMB_X38_Y17_N0
\inst|buffer2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer2~8_combout\ = (\ADC_IN[6]~input_o\ & \inst1|Latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[6]~input_o\,
	datad => \inst1|Latch~q\,
	combout => \inst|buffer2~8_combout\);

-- Location: FF_X39_Y17_N15
\inst|buffer2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer2~8_combout\,
	sload => VCC,
	ena => \inst|buffer2[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer2\(6));

-- Location: LCCOMB_X39_Y17_N30
\inst|Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~3_combout\ = (\ADC_IN[6]~input_o\ & (\inst|buffer2\(6) & (\ADC_IN[7]~input_o\ $ (!\inst|buffer2\(7))))) # (!\ADC_IN[6]~input_o\ & (!\inst|buffer2\(6) & (\ADC_IN[7]~input_o\ $ (!\inst|buffer2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[6]~input_o\,
	datab => \ADC_IN[7]~input_o\,
	datac => \inst|buffer2\(7),
	datad => \inst|buffer2\(6),
	combout => \inst|Equal4~3_combout\);

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

-- Location: LCCOMB_X40_Y17_N14
\inst|buffer2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer2~13_combout\ = (\ADC_IN[1]~input_o\ & \inst1|Latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_IN[1]~input_o\,
	datad => \inst1|Latch~q\,
	combout => \inst|buffer2~13_combout\);

-- Location: FF_X39_Y17_N29
\inst|buffer2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer2~13_combout\,
	sload => VCC,
	ena => \inst|buffer2[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer2\(1));

-- Location: LCCOMB_X38_Y17_N26
\inst|buffer2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer2~14_combout\ = (\ADC_IN[0]~input_o\ & \inst1|Latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[0]~input_o\,
	datad => \inst1|Latch~q\,
	combout => \inst|buffer2~14_combout\);

-- Location: FF_X39_Y17_N11
\inst|buffer2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer2~14_combout\,
	sload => VCC,
	ena => \inst|buffer2[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer2\(0));

-- Location: LCCOMB_X39_Y17_N28
\inst|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~0_combout\ = (\ADC_IN[0]~input_o\ & (\inst|buffer2\(0) & (\ADC_IN[1]~input_o\ $ (!\inst|buffer2\(1))))) # (!\ADC_IN[0]~input_o\ & (!\inst|buffer2\(0) & (\ADC_IN[1]~input_o\ $ (!\inst|buffer2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[0]~input_o\,
	datab => \ADC_IN[1]~input_o\,
	datac => \inst|buffer2\(1),
	datad => \inst|buffer2\(0),
	combout => \inst|Equal4~0_combout\);

-- Location: IOIBUF_X53_Y11_N1
\ADC_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(2),
	o => \ADC_IN[2]~input_o\);

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

-- Location: LCCOMB_X41_Y17_N4
\inst|buffer2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer2~11_combout\ = (\ADC_IN[3]~input_o\ & \inst1|Latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[3]~input_o\,
	datad => \inst1|Latch~q\,
	combout => \inst|buffer2~11_combout\);

-- Location: FF_X41_Y17_N5
\inst|buffer2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer2~11_combout\,
	ena => \inst|buffer2[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer2\(3));

-- Location: LCCOMB_X41_Y17_N18
\inst|buffer2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer2~12_combout\ = (\ADC_IN[2]~input_o\ & \inst1|Latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[2]~input_o\,
	datad => \inst1|Latch~q\,
	combout => \inst|buffer2~12_combout\);

-- Location: FF_X41_Y17_N19
\inst|buffer2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer2~12_combout\,
	ena => \inst|buffer2[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer2\(2));

-- Location: LCCOMB_X41_Y17_N22
\inst|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~1_combout\ = (\ADC_IN[2]~input_o\ & (\inst|buffer2\(2) & (\ADC_IN[3]~input_o\ $ (!\inst|buffer2\(3))))) # (!\ADC_IN[2]~input_o\ & (!\inst|buffer2\(2) & (\ADC_IN[3]~input_o\ $ (!\inst|buffer2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[2]~input_o\,
	datab => \ADC_IN[3]~input_o\,
	datac => \inst|buffer2\(3),
	datad => \inst|buffer2\(2),
	combout => \inst|Equal4~1_combout\);

-- Location: IOIBUF_X40_Y0_N22
\ADC_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(4),
	o => \ADC_IN[4]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\ADC_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(5),
	o => \ADC_IN[5]~input_o\);

-- Location: LCCOMB_X41_Y17_N8
\inst|buffer2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer2~9_combout\ = (\ADC_IN[5]~input_o\ & \inst1|Latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_IN[5]~input_o\,
	datad => \inst1|Latch~q\,
	combout => \inst|buffer2~9_combout\);

-- Location: FF_X41_Y17_N9
\inst|buffer2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer2~9_combout\,
	ena => \inst|buffer2[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer2\(5));

-- Location: LCCOMB_X41_Y17_N2
\inst|buffer2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer2~10_combout\ = (\ADC_IN[4]~input_o\ & \inst1|Latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[4]~input_o\,
	datad => \inst1|Latch~q\,
	combout => \inst|buffer2~10_combout\);

-- Location: FF_X41_Y17_N3
\inst|buffer2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer2~10_combout\,
	ena => \inst|buffer2[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer2\(4));

-- Location: LCCOMB_X41_Y17_N28
\inst|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~2_combout\ = (\ADC_IN[4]~input_o\ & (\inst|buffer2\(4) & (\ADC_IN[5]~input_o\ $ (!\inst|buffer2\(5))))) # (!\ADC_IN[4]~input_o\ & (!\inst|buffer2\(4) & (\ADC_IN[5]~input_o\ $ (!\inst|buffer2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[4]~input_o\,
	datab => \ADC_IN[5]~input_o\,
	datac => \inst|buffer2\(5),
	datad => \inst|buffer2\(4),
	combout => \inst|Equal4~2_combout\);

-- Location: LCCOMB_X39_Y17_N16
\inst|Equal4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~4_combout\ = (\inst|Equal4~3_combout\ & (\inst|Equal4~0_combout\ & (\inst|Equal4~1_combout\ & \inst|Equal4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~3_combout\,
	datab => \inst|Equal4~0_combout\,
	datac => \inst|Equal4~1_combout\,
	datad => \inst|Equal4~2_combout\,
	combout => \inst|Equal4~4_combout\);

-- Location: LCCOMB_X39_Y17_N18
\inst|buffer3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer3~1_combout\ = (\inst|buffer3~0_combout\ & (((!\inst|Equal4~4_combout\) # (!\inst|Equal4~6_combout\)) # (!\inst|Equal4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer3~0_combout\,
	datab => \inst|Equal4~5_combout\,
	datac => \inst|Equal4~6_combout\,
	datad => \inst|Equal4~4_combout\,
	combout => \inst|buffer3~1_combout\);

-- Location: LCCOMB_X40_Y17_N22
\inst|buffer1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~12_combout\ = (\inst|Equal5~0_combout\ & (\inst|buffer2\(0))) # (!\inst|Equal5~0_combout\ & ((\ADC_IN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer2\(0),
	datac => \ADC_IN[0]~input_o\,
	datad => \inst|Equal5~0_combout\,
	combout => \inst|buffer1~12_combout\);

-- Location: LCCOMB_X40_Y17_N4
\inst|buffer1[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[11]~1_combout\ = ((\inst1|OUTPUT\(1) & ((\inst|Equal5~0_combout\) # (!\inst|Equal0~3_combout\)))) # (!\inst1|Latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Latch~q\,
	datab => \inst1|OUTPUT\(1),
	datac => \inst|Equal5~0_combout\,
	datad => \inst|Equal0~3_combout\,
	combout => \inst|buffer1[11]~1_combout\);

-- Location: FF_X40_Y17_N23
\inst|buffer1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~12_combout\,
	sclr => \inst1|ALT_INV_Latch~q\,
	ena => \inst|buffer1[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(0));

-- Location: LCCOMB_X40_Y17_N0
\inst|buffer1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~9_combout\ = (\inst|Equal5~0_combout\ & ((\inst|buffer2\(3)))) # (!\inst|Equal5~0_combout\ & (\ADC_IN[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~0_combout\,
	datab => \ADC_IN[3]~input_o\,
	datad => \inst|buffer2\(3),
	combout => \inst|buffer1~9_combout\);

-- Location: FF_X40_Y17_N1
\inst|buffer1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~9_combout\,
	sclr => \inst1|ALT_INV_Latch~q\,
	ena => \inst|buffer1[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(3));

-- Location: LCCOMB_X40_Y17_N26
\inst|buffer1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~10_combout\ = (\inst|Equal5~0_combout\ & ((\inst|buffer2\(2)))) # (!\inst|Equal5~0_combout\ & (\ADC_IN[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[2]~input_o\,
	datac => \inst|Equal5~0_combout\,
	datad => \inst|buffer2\(2),
	combout => \inst|buffer1~10_combout\);

-- Location: FF_X40_Y17_N27
\inst|buffer1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~10_combout\,
	sclr => \inst1|ALT_INV_Latch~q\,
	ena => \inst|buffer1[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(2));

-- Location: LCCOMB_X40_Y17_N16
\inst|buffer1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~11_combout\ = (\inst|Equal5~0_combout\ & ((\inst|buffer2\(1)))) # (!\inst|Equal5~0_combout\ & (\ADC_IN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~0_combout\,
	datab => \ADC_IN[1]~input_o\,
	datad => \inst|buffer2\(1),
	combout => \inst|buffer1~11_combout\);

-- Location: FF_X40_Y17_N17
\inst|buffer1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~11_combout\,
	sclr => \inst1|ALT_INV_Latch~q\,
	ena => \inst|buffer1[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(1));

-- Location: LCCOMB_X40_Y17_N8
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|buffer1\(0)) # ((\inst|buffer1\(3)) # ((\inst|buffer1\(2)) # (\inst|buffer1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(0),
	datab => \inst|buffer1\(3),
	datac => \inst|buffer1\(2),
	datad => \inst|buffer1\(1),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X43_Y17_N22
\inst|buffer1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~2_combout\ = (\inst|Equal5~0_combout\ & (\inst|buffer2\(10))) # (!\inst|Equal5~0_combout\ & ((\ADC_IN[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer2\(10),
	datac => \inst|Equal5~0_combout\,
	datad => \ADC_IN[10]~input_o\,
	combout => \inst|buffer1~2_combout\);

-- Location: FF_X43_Y17_N23
\inst|buffer1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~2_combout\,
	sclr => \inst1|ALT_INV_Latch~q\,
	ena => \inst|buffer1[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(10));

-- Location: LCCOMB_X43_Y17_N4
\inst|buffer1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~3_combout\ = (\inst|Equal5~0_combout\ & (\inst|buffer2\(9))) # (!\inst|Equal5~0_combout\ & ((\ADC_IN[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buffer2\(9),
	datac => \inst|Equal5~0_combout\,
	datad => \ADC_IN[9]~input_o\,
	combout => \inst|buffer1~3_combout\);

-- Location: FF_X43_Y17_N5
\inst|buffer1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~3_combout\,
	sclr => \inst1|ALT_INV_Latch~q\,
	ena => \inst|buffer1[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(9));

-- Location: LCCOMB_X43_Y17_N2
\inst|buffer1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~4_combout\ = (\inst|Equal5~0_combout\ & ((\inst|buffer2\(8)))) # (!\inst|Equal5~0_combout\ & (\ADC_IN[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[8]~input_o\,
	datac => \inst|Equal5~0_combout\,
	datad => \inst|buffer2\(8),
	combout => \inst|buffer1~4_combout\);

-- Location: FF_X43_Y17_N3
\inst|buffer1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~4_combout\,
	sclr => \inst1|ALT_INV_Latch~q\,
	ena => \inst|buffer1[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(8));

-- Location: LCCOMB_X43_Y17_N20
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|buffer1\(10)) # ((\inst|buffer1\(11)) # ((\inst|buffer1\(9)) # (\inst|buffer1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(10),
	datab => \inst|buffer1\(11),
	datac => \inst|buffer1\(9),
	datad => \inst|buffer1\(8),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X41_Y17_N10
\inst|buffer1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~8_combout\ = (\inst|Equal5~0_combout\ & (\inst|buffer2\(4))) # (!\inst|Equal5~0_combout\ & ((\ADC_IN[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal5~0_combout\,
	datac => \inst|buffer2\(4),
	datad => \ADC_IN[4]~input_o\,
	combout => \inst|buffer1~8_combout\);

-- Location: FF_X41_Y17_N11
\inst|buffer1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~8_combout\,
	sclr => \inst1|ALT_INV_Latch~q\,
	ena => \inst|buffer1[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(4));

-- Location: LCCOMB_X41_Y17_N0
\inst|buffer1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~5_combout\ = (\inst|Equal5~0_combout\ & (\inst|buffer2\(7))) # (!\inst|Equal5~0_combout\ & ((\ADC_IN[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal5~0_combout\,
	datac => \inst|buffer2\(7),
	datad => \ADC_IN[7]~input_o\,
	combout => \inst|buffer1~5_combout\);

-- Location: FF_X41_Y17_N1
\inst|buffer1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~5_combout\,
	sclr => \inst1|ALT_INV_Latch~q\,
	ena => \inst|buffer1[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(7));

-- Location: LCCOMB_X41_Y17_N26
\inst|buffer1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~6_combout\ = (\inst|Equal5~0_combout\ & (\inst|buffer2\(6))) # (!\inst|Equal5~0_combout\ & ((\ADC_IN[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal5~0_combout\,
	datac => \inst|buffer2\(6),
	datad => \ADC_IN[6]~input_o\,
	combout => \inst|buffer1~6_combout\);

-- Location: FF_X41_Y17_N27
\inst|buffer1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~6_combout\,
	sclr => \inst1|ALT_INV_Latch~q\,
	ena => \inst|buffer1[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(6));

-- Location: LCCOMB_X41_Y17_N16
\inst|buffer1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~7_combout\ = (\inst|Equal5~0_combout\ & ((\inst|buffer2\(5)))) # (!\inst|Equal5~0_combout\ & (\ADC_IN[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[5]~input_o\,
	datac => \inst|buffer2\(5),
	datad => \inst|Equal5~0_combout\,
	combout => \inst|buffer1~7_combout\);

-- Location: FF_X41_Y17_N17
\inst|buffer1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~7_combout\,
	sclr => \inst1|ALT_INV_Latch~q\,
	ena => \inst|buffer1[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(5));

-- Location: LCCOMB_X41_Y17_N24
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|buffer1\(4)) # ((\inst|buffer1\(7)) # ((\inst|buffer1\(6)) # (\inst|buffer1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(4),
	datab => \inst|buffer1\(7),
	datac => \inst|buffer1\(6),
	datad => \inst|buffer1\(5),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X40_Y17_N18
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\inst|Equal0~2_combout\) # ((\inst|Equal0~0_combout\) # (\inst|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~2_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X39_Y17_N10
\inst|count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[3]~1_combout\ = (\inst|Equal5~0_combout\) # ((\inst1|OUTPUT\(2)) # (!\inst|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~0_combout\,
	datab => \inst1|OUTPUT\(2),
	datad => \inst|Equal0~3_combout\,
	combout => \inst|count[3]~1_combout\);

-- Location: LCCOMB_X39_Y17_N26
\inst|count[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[3]~2_combout\ = (\inst|count[4]~0_combout\ & ((\inst|buffer3~1_combout\) # ((\inst|buffer2~2_combout\) # (\inst|count[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count[4]~0_combout\,
	datab => \inst|buffer3~1_combout\,
	datac => \inst|buffer2~2_combout\,
	datad => \inst|count[3]~1_combout\,
	combout => \inst|count[3]~2_combout\);

-- Location: LCCOMB_X39_Y17_N6
\inst|count[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[1]~4_combout\ = (\inst|count[3]~2_combout\ & (!\inst1|OUTPUT\(2) & (\inst|buffer2~2_combout\))) # (!\inst|count[3]~2_combout\ & (((\inst|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(2),
	datab => \inst|buffer2~2_combout\,
	datac => \inst|count\(1),
	datad => \inst|count[3]~2_combout\,
	combout => \inst|count[1]~4_combout\);

-- Location: FF_X39_Y17_N7
\inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|count[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(1));

-- Location: LCCOMB_X39_Y17_N22
\inst|buffer2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer2~1_combout\ = (!\inst|count\(1) & (\inst|count\(0) & !\inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datac => \inst|count\(0),
	datad => \inst|count\(3),
	combout => \inst|buffer2~1_combout\);

-- Location: LCCOMB_X43_Y17_N12
\inst|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal2~6_combout\ = (\ADC_IN[10]~input_o\ & (\inst|buffer1\(10) & (\ADC_IN[11]~input_o\ $ (!\inst|buffer1\(11))))) # (!\ADC_IN[10]~input_o\ & (!\inst|buffer1\(10) & (\ADC_IN[11]~input_o\ $ (!\inst|buffer1\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[10]~input_o\,
	datab => \ADC_IN[11]~input_o\,
	datac => \inst|buffer1\(10),
	datad => \inst|buffer1\(11),
	combout => \inst|Equal2~6_combout\);

-- Location: LCCOMB_X43_Y17_N14
\inst|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal2~5_combout\ = (\ADC_IN[8]~input_o\ & (\inst|buffer1\(8) & (\ADC_IN[9]~input_o\ $ (!\inst|buffer1\(9))))) # (!\ADC_IN[8]~input_o\ & (!\inst|buffer1\(8) & (\ADC_IN[9]~input_o\ $ (!\inst|buffer1\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datab => \ADC_IN[9]~input_o\,
	datac => \inst|buffer1\(9),
	datad => \inst|buffer1\(8),
	combout => \inst|Equal2~5_combout\);

-- Location: LCCOMB_X40_Y17_N20
\inst|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal2~1_combout\ = (\ADC_IN[2]~input_o\ & (\inst|buffer1\(2) & (\ADC_IN[3]~input_o\ $ (!\inst|buffer1\(3))))) # (!\ADC_IN[2]~input_o\ & (!\inst|buffer1\(2) & (\ADC_IN[3]~input_o\ $ (!\inst|buffer1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[2]~input_o\,
	datab => \ADC_IN[3]~input_o\,
	datac => \inst|buffer1\(2),
	datad => \inst|buffer1\(3),
	combout => \inst|Equal2~1_combout\);

-- Location: LCCOMB_X40_Y17_N10
\inst|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = (\ADC_IN[0]~input_o\ & (\inst|buffer1\(0) & (\ADC_IN[1]~input_o\ $ (!\inst|buffer1\(1))))) # (!\ADC_IN[0]~input_o\ & (!\inst|buffer1\(0) & (\ADC_IN[1]~input_o\ $ (!\inst|buffer1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[0]~input_o\,
	datab => \ADC_IN[1]~input_o\,
	datac => \inst|buffer1\(0),
	datad => \inst|buffer1\(1),
	combout => \inst|Equal2~0_combout\);

-- Location: LCCOMB_X41_Y17_N20
\inst|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal2~3_combout\ = (\ADC_IN[6]~input_o\ & (\inst|buffer1\(6) & (\ADC_IN[7]~input_o\ $ (!\inst|buffer1\(7))))) # (!\ADC_IN[6]~input_o\ & (!\inst|buffer1\(6) & (\ADC_IN[7]~input_o\ $ (!\inst|buffer1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[6]~input_o\,
	datab => \ADC_IN[7]~input_o\,
	datac => \inst|buffer1\(6),
	datad => \inst|buffer1\(7),
	combout => \inst|Equal2~3_combout\);

-- Location: LCCOMB_X41_Y17_N30
\inst|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal2~2_combout\ = (\ADC_IN[5]~input_o\ & (\inst|buffer1\(5) & (\ADC_IN[4]~input_o\ $ (!\inst|buffer1\(4))))) # (!\ADC_IN[5]~input_o\ & (!\inst|buffer1\(5) & (\ADC_IN[4]~input_o\ $ (!\inst|buffer1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[5]~input_o\,
	datab => \inst|buffer1\(5),
	datac => \ADC_IN[4]~input_o\,
	datad => \inst|buffer1\(4),
	combout => \inst|Equal2~2_combout\);

-- Location: LCCOMB_X39_Y17_N20
\inst|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal2~4_combout\ = (\inst|Equal2~1_combout\ & (\inst|Equal2~0_combout\ & (\inst|Equal2~3_combout\ & \inst|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~1_combout\,
	datab => \inst|Equal2~0_combout\,
	datac => \inst|Equal2~3_combout\,
	datad => \inst|Equal2~2_combout\,
	combout => \inst|Equal2~4_combout\);

-- Location: LCCOMB_X39_Y17_N2
\inst|buffer2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer2~2_combout\ = (\inst|buffer2~1_combout\ & (((!\inst|Equal2~4_combout\) # (!\inst|Equal2~5_combout\)) # (!\inst|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer2~1_combout\,
	datab => \inst|Equal2~6_combout\,
	datac => \inst|Equal2~5_combout\,
	datad => \inst|Equal2~4_combout\,
	combout => \inst|buffer2~2_combout\);

-- Location: LCCOMB_X39_Y17_N14
\inst|count[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[0]~5_combout\ = (\inst|Equal5~0_combout\) # ((!\inst1|OUTPUT\(2) & !\inst|buffer2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~0_combout\,
	datab => \inst1|OUTPUT\(2),
	datad => \inst|buffer2~2_combout\,
	combout => \inst|count[0]~5_combout\);

-- Location: LCCOMB_X39_Y17_N4
\inst|count[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[0]~6_combout\ = (\inst|count[3]~2_combout\ & (\inst|count[0]~5_combout\)) # (!\inst|count[3]~2_combout\ & ((\inst|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count[0]~5_combout\,
	datac => \inst|count\(0),
	datad => \inst|count[3]~2_combout\,
	combout => \inst|count[0]~6_combout\);

-- Location: FF_X39_Y17_N5
\inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|count[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(0));

-- Location: LCCOMB_X40_Y17_N30
\inst|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~0_combout\ = (!\inst|count\(0) & (!\inst|count\(1) & \inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(0),
	datac => \inst|count\(1),
	datad => \inst|count\(3),
	combout => \inst|Equal5~0_combout\);

-- Location: LCCOMB_X43_Y17_N24
\inst|buffer1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~0_combout\ = (\inst|Equal5~0_combout\ & ((\inst|buffer2\(11)))) # (!\inst|Equal5~0_combout\ & (\ADC_IN[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[11]~input_o\,
	datac => \inst|Equal5~0_combout\,
	datad => \inst|buffer2\(11),
	combout => \inst|buffer1~0_combout\);

-- Location: FF_X43_Y17_N25
\inst|buffer1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~0_combout\,
	sclr => \inst1|ALT_INV_Latch~q\,
	ena => \inst|buffer1[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(11));

-- Location: LCCOMB_X45_Y17_N6
\inst|ADC_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~1_combout\ = (\inst|buffer1\(11) & \inst1|Latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(11),
	datac => \inst1|Latch~q\,
	combout => \inst|ADC_out~1_combout\);

-- Location: FF_X45_Y17_N7
\inst|ADC_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~1_combout\,
	ena => \inst|ADC_out[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(11));

-- Location: LCCOMB_X45_Y17_N8
\inst|ADC_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~2_combout\ = (\inst1|Latch~q\ & \inst|buffer1\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Latch~q\,
	datad => \inst|buffer1\(10),
	combout => \inst|ADC_out~2_combout\);

-- Location: FF_X45_Y17_N9
\inst|ADC_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~2_combout\,
	ena => \inst|ADC_out[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(10));

-- Location: LCCOMB_X45_Y17_N2
\inst|ADC_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~3_combout\ = (\inst|buffer1\(9) & \inst1|Latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buffer1\(9),
	datac => \inst1|Latch~q\,
	combout => \inst|ADC_out~3_combout\);

-- Location: FF_X45_Y17_N3
\inst|ADC_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~3_combout\,
	ena => \inst|ADC_out[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(9));

-- Location: LCCOMB_X45_Y17_N20
\inst|ADC_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~4_combout\ = (\inst1|Latch~q\ & \inst|buffer1\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Latch~q\,
	datac => \inst|buffer1\(8),
	combout => \inst|ADC_out~4_combout\);

-- Location: FF_X45_Y17_N21
\inst|ADC_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~4_combout\,
	ena => \inst|ADC_out[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(8));

-- Location: LCCOMB_X45_Y17_N18
\inst|ADC_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~5_combout\ = (\inst1|Latch~q\ & \inst|buffer1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Latch~q\,
	datad => \inst|buffer1\(7),
	combout => \inst|ADC_out~5_combout\);

-- Location: FF_X45_Y17_N19
\inst|ADC_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~5_combout\,
	ena => \inst|ADC_out[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(7));

-- Location: LCCOMB_X45_Y17_N4
\inst|ADC_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~6_combout\ = (\inst1|Latch~q\ & \inst|buffer1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Latch~q\,
	datad => \inst|buffer1\(6),
	combout => \inst|ADC_out~6_combout\);

-- Location: FF_X45_Y17_N5
\inst|ADC_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~6_combout\,
	ena => \inst|ADC_out[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(6));

-- Location: LCCOMB_X45_Y17_N30
\inst|ADC_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~7_combout\ = (\inst1|Latch~q\ & \inst|buffer1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Latch~q\,
	datad => \inst|buffer1\(5),
	combout => \inst|ADC_out~7_combout\);

-- Location: FF_X45_Y17_N31
\inst|ADC_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~7_combout\,
	ena => \inst|ADC_out[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(5));

-- Location: LCCOMB_X45_Y17_N12
\inst|ADC_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~8_combout\ = (\inst1|Latch~q\ & \inst|buffer1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Latch~q\,
	datad => \inst|buffer1\(4),
	combout => \inst|ADC_out~8_combout\);

-- Location: FF_X45_Y17_N13
\inst|ADC_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~8_combout\,
	ena => \inst|ADC_out[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(4));

-- Location: LCCOMB_X45_Y17_N14
\inst|ADC_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~9_combout\ = (\inst1|Latch~q\ & \inst|buffer1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Latch~q\,
	datac => \inst|buffer1\(3),
	combout => \inst|ADC_out~9_combout\);

-- Location: FF_X45_Y17_N15
\inst|ADC_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~9_combout\,
	ena => \inst|ADC_out[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(3));

-- Location: LCCOMB_X45_Y17_N28
\inst|ADC_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~10_combout\ = (\inst1|Latch~q\ & \inst|buffer1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Latch~q\,
	datad => \inst|buffer1\(2),
	combout => \inst|ADC_out~10_combout\);

-- Location: FF_X45_Y17_N29
\inst|ADC_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~10_combout\,
	ena => \inst|ADC_out[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(2));

-- Location: LCCOMB_X45_Y17_N22
\inst|ADC_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~11_combout\ = (\inst1|Latch~q\ & \inst|buffer1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Latch~q\,
	datad => \inst|buffer1\(1),
	combout => \inst|ADC_out~11_combout\);

-- Location: FF_X45_Y17_N23
\inst|ADC_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~11_combout\,
	ena => \inst|ADC_out[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(1));

-- Location: LCCOMB_X45_Y17_N16
\inst|ADC_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~12_combout\ = (\inst1|Latch~q\ & \inst|buffer1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Latch~q\,
	datac => \inst|buffer1\(0),
	combout => \inst|ADC_out~12_combout\);

-- Location: FF_X45_Y17_N17
\inst|ADC_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~12_combout\,
	ena => \inst|ADC_out[14]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(0));

-- Location: LCCOMB_X37_Y17_N12
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

-- Location: FF_X37_Y17_N13
\inst|buffer10[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[11]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(11));

-- Location: LCCOMB_X44_Y17_N12
\inst|buffer10[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer10[10]~feeder_combout\ = \inst|buffer1\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(10),
	combout => \inst|buffer10[10]~feeder_combout\);

-- Location: FF_X44_Y17_N13
\inst|buffer10[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[10]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(10));

-- Location: LCCOMB_X44_Y17_N6
\inst|buffer10[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer10[9]~feeder_combout\ = \inst|buffer1\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(9),
	combout => \inst|buffer10[9]~feeder_combout\);

-- Location: FF_X44_Y17_N7
\inst|buffer10[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[9]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(9));

-- Location: LCCOMB_X37_Y17_N26
\inst|buffer10[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer10[8]~feeder_combout\ = \inst|buffer1\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(8),
	combout => \inst|buffer10[8]~feeder_combout\);

-- Location: FF_X37_Y17_N27
\inst|buffer10[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[8]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(8));

-- Location: LCCOMB_X44_Y17_N24
\inst|buffer10[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer10[7]~feeder_combout\ = \inst|buffer1\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(7),
	combout => \inst|buffer10[7]~feeder_combout\);

-- Location: FF_X44_Y17_N25
\inst|buffer10[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[7]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(7));

-- Location: LCCOMB_X44_Y17_N26
\inst|buffer10[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer10[6]~feeder_combout\ = \inst|buffer1\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(6),
	combout => \inst|buffer10[6]~feeder_combout\);

-- Location: FF_X44_Y17_N27
\inst|buffer10[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[6]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(6));

-- Location: LCCOMB_X38_Y17_N12
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

-- Location: FF_X38_Y17_N13
\inst|buffer10[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[5]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(5));

-- Location: LCCOMB_X45_Y17_N10
\inst|buffer10[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer10[4]~feeder_combout\ = \inst|buffer1\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(4),
	combout => \inst|buffer10[4]~feeder_combout\);

-- Location: FF_X45_Y17_N11
\inst|buffer10[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[4]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(4));

-- Location: LCCOMB_X45_Y17_N24
\inst|buffer10[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer10[3]~feeder_combout\ = \inst|buffer1\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(3),
	combout => \inst|buffer10[3]~feeder_combout\);

-- Location: FF_X45_Y17_N25
\inst|buffer10[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[3]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(3));

-- Location: LCCOMB_X38_Y17_N18
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

-- Location: FF_X38_Y17_N19
\inst|buffer10[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[2]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(2));

-- Location: LCCOMB_X45_Y17_N26
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

-- Location: FF_X45_Y17_N27
\inst|buffer10[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[1]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(1));

-- Location: LCCOMB_X44_Y17_N28
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

-- Location: FF_X44_Y17_N29
\inst|buffer10[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[0]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(0));

-- Location: LCCOMB_X37_Y17_N24
\inst|buffer20[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[11]~feeder_combout\ = \inst|buffer2\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer2\(11),
	combout => \inst|buffer20[11]~feeder_combout\);

-- Location: FF_X37_Y17_N25
\inst|buffer20[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[11]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(11));

-- Location: LCCOMB_X37_Y17_N2
\inst|buffer20[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[10]~feeder_combout\ = \inst|buffer2\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer2\(10),
	combout => \inst|buffer20[10]~feeder_combout\);

-- Location: FF_X37_Y17_N3
\inst|buffer20[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[10]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(10));

-- Location: LCCOMB_X44_Y17_N18
\inst|buffer20[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[9]~feeder_combout\ = \inst|buffer2\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer2\(9),
	combout => \inst|buffer20[9]~feeder_combout\);

-- Location: FF_X44_Y17_N19
\inst|buffer20[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[9]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(9));

-- Location: LCCOMB_X38_Y17_N24
\inst|buffer20[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[8]~feeder_combout\ = \inst|buffer2\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer2\(8),
	combout => \inst|buffer20[8]~feeder_combout\);

-- Location: FF_X38_Y17_N25
\inst|buffer20[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[8]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(8));

-- Location: FF_X38_Y17_N5
\inst|buffer20[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer2\(7),
	sload => VCC,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(7));

-- Location: LCCOMB_X44_Y17_N8
\inst|buffer20[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[6]~feeder_combout\ = \inst|buffer2\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer2\(6),
	combout => \inst|buffer20[6]~feeder_combout\);

-- Location: FF_X44_Y17_N9
\inst|buffer20[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[6]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(6));

-- Location: LCCOMB_X44_Y17_N14
\inst|buffer20[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[5]~feeder_combout\ = \inst|buffer2\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer2\(5),
	combout => \inst|buffer20[5]~feeder_combout\);

-- Location: FF_X44_Y17_N15
\inst|buffer20[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[5]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(5));

-- Location: LCCOMB_X44_Y17_N20
\inst|buffer20[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[4]~feeder_combout\ = \inst|buffer2\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer2\(4),
	combout => \inst|buffer20[4]~feeder_combout\);

-- Location: FF_X44_Y17_N21
\inst|buffer20[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[4]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(4));

-- Location: LCCOMB_X38_Y17_N2
\inst|buffer20[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[3]~feeder_combout\ = \inst|buffer2\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer2\(3),
	combout => \inst|buffer20[3]~feeder_combout\);

-- Location: FF_X38_Y17_N3
\inst|buffer20[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[3]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(3));

-- Location: LCCOMB_X37_Y17_N4
\inst|buffer20[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[2]~feeder_combout\ = \inst|buffer2\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer2\(2),
	combout => \inst|buffer20[2]~feeder_combout\);

-- Location: FF_X37_Y17_N5
\inst|buffer20[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[2]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(2));

-- Location: LCCOMB_X37_Y17_N10
\inst|buffer20[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[1]~feeder_combout\ = \inst|buffer2\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer2\(1),
	combout => \inst|buffer20[1]~feeder_combout\);

-- Location: FF_X37_Y17_N11
\inst|buffer20[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[1]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(1));

-- Location: LCCOMB_X37_Y17_N28
\inst|buffer20[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[0]~feeder_combout\ = \inst|buffer2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer2\(0),
	combout => \inst|buffer20[0]~feeder_combout\);

-- Location: FF_X37_Y17_N29
\inst|buffer20[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[0]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(0));

-- Location: LCCOMB_X38_Y17_N8
\inst|buffer3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer3~2_combout\ = (\ADC_IN[11]~input_o\ & (\inst1|Latch~q\ & \inst|buffer3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[11]~input_o\,
	datab => \inst1|Latch~q\,
	datad => \inst|buffer3~1_combout\,
	combout => \inst|buffer3~2_combout\);

-- Location: LCCOMB_X39_Y17_N12
\inst|buffer3[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer3[11]~3_combout\ = ((\inst1|OUTPUT\(1) & ((\inst|buffer3~1_combout\) # (\inst|buffer2~2_combout\)))) # (!\inst1|Latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst|buffer3~1_combout\,
	datac => \inst1|Latch~q\,
	datad => \inst|buffer2~2_combout\,
	combout => \inst|buffer3[11]~3_combout\);

-- Location: FF_X38_Y17_N9
\inst|buffer3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer3~2_combout\,
	ena => \inst|buffer3[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer3\(11));

-- Location: FF_X38_Y17_N1
\inst|buffer30[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer3\(11),
	sload => VCC,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(11));

-- Location: LCCOMB_X38_Y17_N22
\inst|buffer3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer3~4_combout\ = (\inst1|Latch~q\ & (\ADC_IN[10]~input_o\ & \inst|buffer3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Latch~q\,
	datac => \ADC_IN[10]~input_o\,
	datad => \inst|buffer3~1_combout\,
	combout => \inst|buffer3~4_combout\);

-- Location: FF_X38_Y17_N23
\inst|buffer3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer3~4_combout\,
	ena => \inst|buffer3[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer3\(10));

-- Location: FF_X38_Y17_N27
\inst|buffer30[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer3\(10),
	sload => VCC,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(10));

-- Location: LCCOMB_X38_Y17_N20
\inst|buffer3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer3~5_combout\ = (\ADC_IN[9]~input_o\ & (\inst1|Latch~q\ & \inst|buffer3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[9]~input_o\,
	datab => \inst1|Latch~q\,
	datad => \inst|buffer3~1_combout\,
	combout => \inst|buffer3~5_combout\);

-- Location: FF_X38_Y17_N21
\inst|buffer3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer3~5_combout\,
	ena => \inst|buffer3[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer3\(9));

-- Location: LCCOMB_X37_Y17_N30
\inst|buffer30[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[9]~feeder_combout\ = \inst|buffer3\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer3\(9),
	combout => \inst|buffer30[9]~feeder_combout\);

-- Location: FF_X37_Y17_N31
\inst|buffer30[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[9]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(9));

-- Location: LCCOMB_X38_Y17_N6
\inst|buffer3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer3~6_combout\ = (\ADC_IN[8]~input_o\ & (\inst1|Latch~q\ & \inst|buffer3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datab => \inst1|Latch~q\,
	datad => \inst|buffer3~1_combout\,
	combout => \inst|buffer3~6_combout\);

-- Location: FF_X38_Y17_N7
\inst|buffer3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer3~6_combout\,
	ena => \inst|buffer3[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer3\(8));

-- Location: LCCOMB_X37_Y17_N20
\inst|buffer30[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[8]~feeder_combout\ = \inst|buffer3\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer3\(8),
	combout => \inst|buffer30[8]~feeder_combout\);

-- Location: FF_X37_Y17_N21
\inst|buffer30[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[8]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(8));

-- Location: LCCOMB_X40_Y17_N24
\inst|buffer3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer3~7_combout\ = (\inst1|Latch~q\ & (\ADC_IN[7]~input_o\ & \inst|buffer3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Latch~q\,
	datab => \ADC_IN[7]~input_o\,
	datad => \inst|buffer3~1_combout\,
	combout => \inst|buffer3~7_combout\);

-- Location: FF_X40_Y17_N25
\inst|buffer3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer3~7_combout\,
	ena => \inst|buffer3[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer3\(7));

-- Location: LCCOMB_X44_Y17_N2
\inst|buffer30[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[7]~feeder_combout\ = \inst|buffer3\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer3\(7),
	combout => \inst|buffer30[7]~feeder_combout\);

-- Location: FF_X44_Y17_N3
\inst|buffer30[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[7]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(7));

-- Location: LCCOMB_X38_Y17_N30
\inst|buffer3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer3~8_combout\ = (\inst1|Latch~q\ & (\ADC_IN[6]~input_o\ & \inst|buffer3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Latch~q\,
	datac => \ADC_IN[6]~input_o\,
	datad => \inst|buffer3~1_combout\,
	combout => \inst|buffer3~8_combout\);

-- Location: FF_X38_Y17_N31
\inst|buffer3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer3~8_combout\,
	ena => \inst|buffer3[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer3\(6));

-- Location: LCCOMB_X37_Y17_N18
\inst|buffer30[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[6]~feeder_combout\ = \inst|buffer3\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer3\(6),
	combout => \inst|buffer30[6]~feeder_combout\);

-- Location: FF_X37_Y17_N19
\inst|buffer30[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[6]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(6));

-- Location: LCCOMB_X38_Y17_N28
\inst|buffer3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer3~9_combout\ = (\inst1|Latch~q\ & (\ADC_IN[5]~input_o\ & \inst|buffer3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Latch~q\,
	datac => \ADC_IN[5]~input_o\,
	datad => \inst|buffer3~1_combout\,
	combout => \inst|buffer3~9_combout\);

-- Location: FF_X38_Y17_N29
\inst|buffer3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer3~9_combout\,
	ena => \inst|buffer3[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer3\(5));

-- Location: LCCOMB_X37_Y17_N8
\inst|buffer30[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[5]~feeder_combout\ = \inst|buffer3\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer3\(5),
	combout => \inst|buffer30[5]~feeder_combout\);

-- Location: FF_X37_Y17_N9
\inst|buffer30[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[5]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(5));

-- Location: LCCOMB_X40_Y17_N6
\inst|buffer3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer3~10_combout\ = (\inst1|Latch~q\ & (\ADC_IN[4]~input_o\ & \inst|buffer3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Latch~q\,
	datac => \ADC_IN[4]~input_o\,
	datad => \inst|buffer3~1_combout\,
	combout => \inst|buffer3~10_combout\);

-- Location: FF_X40_Y17_N7
\inst|buffer3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer3~10_combout\,
	ena => \inst|buffer3[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer3\(4));

-- Location: LCCOMB_X44_Y17_N4
\inst|buffer30[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[4]~feeder_combout\ = \inst|buffer3\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer3\(4),
	combout => \inst|buffer30[4]~feeder_combout\);

-- Location: FF_X44_Y17_N5
\inst|buffer30[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[4]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(4));

-- Location: LCCOMB_X40_Y17_N28
\inst|buffer3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer3~11_combout\ = (\inst1|Latch~q\ & (\ADC_IN[3]~input_o\ & \inst|buffer3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Latch~q\,
	datab => \ADC_IN[3]~input_o\,
	datad => \inst|buffer3~1_combout\,
	combout => \inst|buffer3~11_combout\);

-- Location: FF_X40_Y17_N29
\inst|buffer3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer3~11_combout\,
	ena => \inst|buffer3[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer3\(3));

-- Location: LCCOMB_X38_Y17_N14
\inst|buffer30[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[3]~feeder_combout\ = \inst|buffer3\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer3\(3),
	combout => \inst|buffer30[3]~feeder_combout\);

-- Location: FF_X38_Y17_N15
\inst|buffer30[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[3]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(3));

-- Location: LCCOMB_X40_Y17_N2
\inst|buffer3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer3~12_combout\ = (\inst1|Latch~q\ & (\ADC_IN[2]~input_o\ & \inst|buffer3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Latch~q\,
	datac => \ADC_IN[2]~input_o\,
	datad => \inst|buffer3~1_combout\,
	combout => \inst|buffer3~12_combout\);

-- Location: FF_X40_Y17_N3
\inst|buffer3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer3~12_combout\,
	ena => \inst|buffer3[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer3\(2));

-- Location: LCCOMB_X38_Y17_N16
\inst|buffer30[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[2]~feeder_combout\ = \inst|buffer3\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer3\(2),
	combout => \inst|buffer30[2]~feeder_combout\);

-- Location: FF_X38_Y17_N17
\inst|buffer30[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[2]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(2));

-- Location: LCCOMB_X40_Y17_N12
\inst|buffer3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer3~13_combout\ = (\inst1|Latch~q\ & (\ADC_IN[1]~input_o\ & \inst|buffer3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Latch~q\,
	datac => \ADC_IN[1]~input_o\,
	datad => \inst|buffer3~1_combout\,
	combout => \inst|buffer3~13_combout\);

-- Location: FF_X40_Y17_N13
\inst|buffer3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer3~13_combout\,
	ena => \inst|buffer3[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer3\(1));

-- Location: LCCOMB_X44_Y17_N10
\inst|buffer30[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[1]~feeder_combout\ = \inst|buffer3\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer3\(1),
	combout => \inst|buffer30[1]~feeder_combout\);

-- Location: FF_X44_Y17_N11
\inst|buffer30[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[1]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(1));

-- Location: LCCOMB_X38_Y17_N10
\inst|buffer3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer3~14_combout\ = (\ADC_IN[0]~input_o\ & (\inst1|Latch~q\ & \inst|buffer3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[0]~input_o\,
	datab => \inst1|Latch~q\,
	datad => \inst|buffer3~1_combout\,
	combout => \inst|buffer3~14_combout\);

-- Location: FF_X38_Y17_N11
\inst|buffer3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer3~14_combout\,
	ena => \inst|buffer3[11]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer3\(0));

-- Location: LCCOMB_X37_Y17_N22
\inst|buffer30[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[0]~feeder_combout\ = \inst|buffer3\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer3\(0),
	combout => \inst|buffer30[0]~feeder_combout\);

-- Location: FF_X37_Y17_N23
\inst|buffer30[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[0]~feeder_combout\,
	ena => \inst|count[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(0));

-- Location: LCCOMB_X41_Y16_N20
\inst1|SPACE_AVAILABLE[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE[2]~0_combout\ = (\inst1|SPACE_AVAILABLE\(2)) # ((!\MCU_IN[1]~input_o\ & (\inst1|Equal2~0_combout\ & \MCU_IN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[1]~input_o\,
	datab => \inst1|Equal2~0_combout\,
	datac => \inst1|SPACE_AVAILABLE\(2),
	datad => \MCU_IN[0]~input_o\,
	combout => \inst1|SPACE_AVAILABLE[2]~0_combout\);

-- Location: FF_X41_Y16_N21
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

-- Location: LCCOMB_X41_Y16_N16
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

-- Location: FF_X41_Y16_N17
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


