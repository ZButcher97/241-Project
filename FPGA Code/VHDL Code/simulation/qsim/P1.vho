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

-- DATE "05/14/2018 16:32:03"

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
	ADC_OUT : OUT std_logic_vector(11 DOWNTO 0);
	CLK : IN std_logic;
	ADC_IN : IN std_logic_vector(11 DOWNTO 0);
	MCU_IN : IN std_logic_vector(7 DOWNTO 0);
	Buffer1 : OUT std_logic_vector(11 DOWNTO 0);
	Buffer2 : OUT std_logic_vector(11 DOWNTO 0);
	Buffer3 : OUT std_logic_vector(11 DOWNTO 0);
	Buffer4 : OUT std_logic_vector(11 DOWNTO 0);
	BUFFERCHEQ : OUT std_logic_vector(3 DOWNTO 0);
	Clock_Count : OUT std_logic_vector(3 DOWNTO 0);
	Clock_Shift : OUT std_logic_vector(3 DOWNTO 0);
	OUT2MCU : OUT std_logic_vector(3 DOWNTO 0);
	OUTPUTCHECK : OUT std_logic_vector(7 DOWNTO 0)
	);
END P1;

-- Design Ports Information
-- ADC_OUT[11]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[10]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[9]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[8]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[4]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[1]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[11]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[10]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[9]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[8]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[6]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[5]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[4]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[2]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer1[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[11]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[10]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[9]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[8]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[6]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[5]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer2[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[11]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[10]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[9]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[8]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[6]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[5]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[2]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[1]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer3[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[11]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[10]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[9]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[8]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[6]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[5]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[4]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[1]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Buffer4[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUFFERCHEQ[3]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUFFERCHEQ[2]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUFFERCHEQ[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUFFERCHEQ[0]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_Count[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_Count[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_Count[1]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_Count[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_Shift[3]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_Shift[2]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_Shift[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock_Shift[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2MCU[3]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2MCU[2]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2MCU[1]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2MCU[0]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[7]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[6]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[5]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[4]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[3]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[2]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[7]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[5]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[11]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[10]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[9]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[8]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[5]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[2]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_ADC_OUT : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_ADC_IN : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_MCU_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Buffer1 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_Buffer2 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_Buffer3 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_Buffer4 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_BUFFERCHEQ : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Clock_Count : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Clock_Shift : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OUT2MCU : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OUTPUTCHECK : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|OUTPUT[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|OUTPUT[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \Clock_Shift[3]~output_o\ : std_logic;
SIGNAL \Clock_Shift[2]~output_o\ : std_logic;
SIGNAL \Clock_Shift[1]~output_o\ : std_logic;
SIGNAL \Clock_Shift[0]~output_o\ : std_logic;
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
SIGNAL \MCU_IN[5]~input_o\ : std_logic;
SIGNAL \MCU_IN[7]~input_o\ : std_logic;
SIGNAL \MCU_IN[6]~input_o\ : std_logic;
SIGNAL \MCU_IN[4]~input_o\ : std_logic;
SIGNAL \inst1|Equal5~0_combout\ : std_logic;
SIGNAL \MCU_IN[3]~input_o\ : std_logic;
SIGNAL \inst1|Equal1~1_combout\ : std_logic;
SIGNAL \MCU_IN[1]~input_o\ : std_logic;
SIGNAL \MCU_IN[0]~input_o\ : std_logic;
SIGNAL \inst1|Equal2~0_combout\ : std_logic;
SIGNAL \ADC_IN[5]~input_o\ : std_logic;
SIGNAL \inst1|OUTPUT~2_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~13_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~6_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~11_combout\ : std_logic;
SIGNAL \inst1|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|Equal1~2_combout\ : std_logic;
SIGNAL \inst1|Latch~0_combout\ : std_logic;
SIGNAL \inst1|Latch~1_combout\ : std_logic;
SIGNAL \inst1|Latch~q\ : std_logic;
SIGNAL \inst1|OUTPUT~9_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~10_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[6]~3_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~12_combout\ : std_logic;
SIGNAL \ADC_IN[9]~input_o\ : std_logic;
SIGNAL \ADC_IN[8]~input_o\ : std_logic;
SIGNAL \inst|buffer1~77_combout\ : std_logic;
SIGNAL \inst|buffer1[10]~9_combout\ : std_logic;
SIGNAL \ADC_IN[0]~input_o\ : std_logic;
SIGNAL \inst|buffer1~85_combout\ : std_logic;
SIGNAL \inst|buffer1[36]~feeder_combout\ : std_logic;
SIGNAL \ADC_IN[1]~input_o\ : std_logic;
SIGNAL \inst|buffer1~84_combout\ : std_logic;
SIGNAL \inst|buffer1~70_combout\ : std_logic;
SIGNAL \inst|buffer1[42]~72_combout\ : std_logic;
SIGNAL \ADC_IN[11]~input_o\ : std_logic;
SIGNAL \inst|buffer1~67_combout\ : std_logic;
SIGNAL \ADC_IN[7]~input_o\ : std_logic;
SIGNAL \inst|buffer1~78_combout\ : std_logic;
SIGNAL \ADC_IN[6]~input_o\ : std_logic;
SIGNAL \inst|buffer1~79_combout\ : std_logic;
SIGNAL \inst|buffer1~68_combout\ : std_logic;
SIGNAL \ADC_IN[10]~input_o\ : std_logic;
SIGNAL \inst|buffer1~75_combout\ : std_logic;
SIGNAL \inst|buffer1~69_combout\ : std_logic;
SIGNAL \inst|buffer1[42]~73_combout\ : std_logic;
SIGNAL \inst|buffer1[42]~74_combout\ : std_logic;
SIGNAL \inst1|Equal4~0_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~8_combout\ : std_logic;
SIGNAL \inst|bufferout[23]~0_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[2]~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|OUTPUT[3]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|buffer1~58_combout\ : std_logic;
SIGNAL \inst|buffer1~65_combout\ : std_logic;
SIGNAL \inst|buffer1~66_combout\ : std_logic;
SIGNAL \inst|buffer1~51_combout\ : std_logic;
SIGNAL \inst|buffer1[29]~53_combout\ : std_logic;
SIGNAL \inst|buffer1[29]~54_combout\ : std_logic;
SIGNAL \inst|buffer1[29]~55_combout\ : std_logic;
SIGNAL \inst|Equal13~5_combout\ : std_logic;
SIGNAL \inst|buffer1~56_combout\ : std_logic;
SIGNAL \inst|Equal13~6_combout\ : std_logic;
SIGNAL \ADC_IN[3]~input_o\ : std_logic;
SIGNAL \inst|buffer1~82_combout\ : std_logic;
SIGNAL \inst|buffer1~63_combout\ : std_logic;
SIGNAL \ADC_IN[2]~input_o\ : std_logic;
SIGNAL \inst|buffer1~83_combout\ : std_logic;
SIGNAL \inst|buffer1~64_combout\ : std_logic;
SIGNAL \inst|Equal13~1_combout\ : std_logic;
SIGNAL \inst|buffer1~60_combout\ : std_logic;
SIGNAL \inst|buffer1~59_combout\ : std_logic;
SIGNAL \inst|Equal13~3_combout\ : std_logic;
SIGNAL \inst|buffer1~61_combout\ : std_logic;
SIGNAL \inst|Equal13~2_combout\ : std_logic;
SIGNAL \inst|Equal13~0_combout\ : std_logic;
SIGNAL \inst|Equal13~4_combout\ : std_logic;
SIGNAL \inst|Equal13~7_combout\ : std_logic;
SIGNAL \inst|buffer1~76_combout\ : std_logic;
SIGNAL \inst|buffer1~57_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|buffer1~36_combout\ : std_logic;
SIGNAL \inst|buffer1~28_combout\ : std_logic;
SIGNAL \inst|buffer1~38_combout\ : std_logic;
SIGNAL \inst|buffer1~40_combout\ : std_logic;
SIGNAL \inst|buffer1~39_combout\ : std_logic;
SIGNAL \inst|buffer1~29_combout\ : std_logic;
SIGNAL \inst|buffer1~30_combout\ : std_logic;
SIGNAL \inst|buffer1~44_combout\ : std_logic;
SIGNAL \inst|buffer1~41_combout\ : std_logic;
SIGNAL \ADC_IN[4]~input_o\ : std_logic;
SIGNAL \inst|buffer1~42_combout\ : std_logic;
SIGNAL \inst|buffer1~43_combout\ : std_logic;
SIGNAL \inst|buffer1~32_combout\ : std_logic;
SIGNAL \inst|buffer1~46_combout\ : std_logic;
SIGNAL \inst|buffer1~45_combout\ : std_logic;
SIGNAL \inst|buffer1~31_combout\ : std_logic;
SIGNAL \inst|buffer1[17]~33_combout\ : std_logic;
SIGNAL \inst|buffer1[17]~34_combout\ : std_logic;
SIGNAL \inst|buffer1[17]~35_combout\ : std_logic;
SIGNAL \inst|buffer1~8_combout\ : std_logic;
SIGNAL \inst|buffer1~16_combout\ : std_logic;
SIGNAL \inst|buffer1~11_combout\ : std_logic;
SIGNAL \inst|buffer1~20_combout\ : std_logic;
SIGNAL \inst|buffer1~17_combout\ : std_logic;
SIGNAL \inst|buffer1~18_combout\ : std_logic;
SIGNAL \inst|buffer1~19_combout\ : std_logic;
SIGNAL \inst|buffer1~12_combout\ : std_logic;
SIGNAL \inst|buffer1~25_combout\ : std_logic;
SIGNAL \inst|buffer1~26_combout\ : std_logic;
SIGNAL \inst|buffer1~14_combout\ : std_logic;
SIGNAL \inst|buffer1~22_combout\ : std_logic;
SIGNAL \inst|buffer1~21_combout\ : std_logic;
SIGNAL \inst|buffer1~24_combout\ : std_logic;
SIGNAL \inst|buffer1~23_combout\ : std_logic;
SIGNAL \inst|buffer1~13_combout\ : std_logic;
SIGNAL \inst|buffer1~15_combout\ : std_logic;
SIGNAL \inst|buffer1[10]~89_combout\ : std_logic;
SIGNAL \inst|Equal5~6_combout\ : std_logic;
SIGNAL \inst|Equal5~5_combout\ : std_logic;
SIGNAL \inst|Equal5~1_combout\ : std_logic;
SIGNAL \inst|Equal5~2_combout\ : std_logic;
SIGNAL \inst|Equal5~0_combout\ : std_logic;
SIGNAL \inst|Equal5~3_combout\ : std_logic;
SIGNAL \inst|Equal5~4_combout\ : std_logic;
SIGNAL \inst|Equal5~7_combout\ : std_logic;
SIGNAL \inst|buffer1[17]~27_combout\ : std_logic;
SIGNAL \inst|buffer1~37_combout\ : std_logic;
SIGNAL \inst|Equal9~5_combout\ : std_logic;
SIGNAL \inst|Equal9~6_combout\ : std_logic;
SIGNAL \inst|Equal9~3_combout\ : std_logic;
SIGNAL \inst|Equal9~1_combout\ : std_logic;
SIGNAL \inst|Equal9~2_combout\ : std_logic;
SIGNAL \inst|Equal9~0_combout\ : std_logic;
SIGNAL \inst|Equal9~4_combout\ : std_logic;
SIGNAL \inst|Equal9~7_combout\ : std_logic;
SIGNAL \inst|buffer1[29]~47_combout\ : std_logic;
SIGNAL \inst|buffer1~48_combout\ : std_logic;
SIGNAL \inst|buffer1~49_combout\ : std_logic;
SIGNAL \inst|buffer1~50_combout\ : std_logic;
SIGNAL \inst|buffer1~87_combout\ : std_logic;
SIGNAL \inst|counter~0_combout\ : std_logic;
SIGNAL \inst|counter~1_combout\ : std_logic;
SIGNAL \inst|buffer1~88_combout\ : std_logic;
SIGNAL \inst|counter~2_combout\ : std_logic;
SIGNAL \inst|counter~3_combout\ : std_logic;
SIGNAL \inst|counter~4_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|counter~5_combout\ : std_logic;
SIGNAL \inst|counter~6_combout\ : std_logic;
SIGNAL \inst|counter~7_combout\ : std_logic;
SIGNAL \inst|counter~8_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|buffer10[11]~0_combout\ : std_logic;
SIGNAL \inst|BufferCount[2]~0_combout\ : std_logic;
SIGNAL \inst|BufferCount[2]~1_combout\ : std_logic;
SIGNAL \inst|BufferCount[2]~3_combout\ : std_logic;
SIGNAL \inst|BufferCheck[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|Current~0_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~1_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[2]~7_combout\ : std_logic;
SIGNAL \inst|buffer1[10]~10_combout\ : std_logic;
SIGNAL \inst|buffer1~80_combout\ : std_logic;
SIGNAL \inst|buffer1~71_combout\ : std_logic;
SIGNAL \inst|buffer1~86_combout\ : std_logic;
SIGNAL \inst|counter~9_combout\ : std_logic;
SIGNAL \inst|counter~10_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|buffer1~81_combout\ : std_logic;
SIGNAL \inst|buffer1~62_combout\ : std_logic;
SIGNAL \inst|buffer1~52_combout\ : std_logic;
SIGNAL \inst|BufferCount~2_combout\ : std_logic;
SIGNAL \inst|BufferCheck[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|Current~1_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~3_combout\ : std_logic;
SIGNAL \inst|BufferCount~4_combout\ : std_logic;
SIGNAL \inst1|Current~2_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~4_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~2_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~0_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[6]~4_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[6]~5_combout\ : std_logic;
SIGNAL \inst|ADC_out~0_combout\ : std_logic;
SIGNAL \inst|ADC_out[10]~1_combout\ : std_logic;
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
SIGNAL \inst|buffer10[7]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer10[6]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer10[5]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer10[3]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer10[0]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer20[11]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer20[8]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer20[4]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer20[1]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer30[11]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer30[10]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer30[9]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer30[8]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer30[7]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer30[6]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer30[5]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer30[2]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer40[11]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer40[10]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer40[7]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer40[3]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer40[1]~feeder_combout\ : std_logic;
SIGNAL \inst|clock_counter[2]~feeder_combout\ : std_logic;
SIGNAL \inst|clock_counter[1]~feeder_combout\ : std_logic;
SIGNAL \inst|clock_counter[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|BUFFER_READ[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|BUFFER_READ[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|BUFFER_READ[1]~feeder_combout\ : std_logic;
SIGNAL \inst|AVAILABLE~0_combout\ : std_logic;
SIGNAL \inst|AVAILABLE~q\ : std_logic;
SIGNAL \inst1|OUTPUT[7]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer1\ : std_logic_vector(143 DOWNTO 0);
SIGNAL \inst|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|ADC_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|buffer10\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|buffer20\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|buffer30\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|buffer40\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|clock_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|BufferCheck\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|BUFFER_READ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|OUTPUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|BufferCount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|SPACE_AVAILABLE\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|Current\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|bufferout\ : std_logic_vector(143 DOWNTO 0);
SIGNAL \inst2|bufferout\ : std_logic_vector(143 DOWNTO 0);
SIGNAL \inst2|buffer1\ : std_logic_vector(143 DOWNTO 0);

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
Clock_Shift <= ww_Clock_Shift;
OUT2MCU <= ww_OUT2MCU;
OUTPUTCHECK <= ww_OUTPUTCHECK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|OUTPUT[3]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|OUTPUT\(3));

\inst1|OUTPUT[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|OUTPUT\(2));

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y22_N2
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

-- Location: IOOBUF_X0_Y23_N2
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

-- Location: IOOBUF_X53_Y10_N16
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

-- Location: IOOBUF_X53_Y21_N23
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

-- Location: IOOBUF_X53_Y30_N2
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

-- Location: IOOBUF_X53_Y30_N9
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

-- Location: IOOBUF_X53_Y25_N2
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

-- Location: IOOBUF_X53_Y9_N16
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

-- Location: IOOBUF_X53_Y26_N23
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

-- Location: IOOBUF_X49_Y0_N9
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

-- Location: IOOBUF_X0_Y23_N16
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

-- Location: IOOBUF_X45_Y0_N16
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

-- Location: IOOBUF_X9_Y34_N9
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

-- Location: IOOBUF_X14_Y34_N23
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

-- Location: IOOBUF_X47_Y34_N23
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

-- Location: IOOBUF_X0_Y24_N23
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

-- Location: IOOBUF_X40_Y34_N9
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

-- Location: IOOBUF_X53_Y14_N9
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

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOOBUF_X31_Y34_N2
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

-- Location: IOOBUF_X53_Y22_N9
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

-- Location: IOOBUF_X14_Y34_N16
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

-- Location: IOOBUF_X38_Y0_N9
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

-- Location: IOOBUF_X53_Y14_N2
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

-- Location: IOOBUF_X40_Y0_N16
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

-- Location: IOOBUF_X16_Y34_N9
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

-- Location: IOOBUF_X34_Y0_N2
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

-- Location: IOOBUF_X34_Y0_N23
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

-- Location: IOOBUF_X20_Y34_N23
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

-- Location: IOOBUF_X7_Y34_N9
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

-- Location: IOOBUF_X36_Y0_N23
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

-- Location: IOOBUF_X49_Y34_N2
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

-- Location: IOOBUF_X34_Y0_N16
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

-- Location: IOOBUF_X29_Y34_N16
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

-- Location: IOOBUF_X36_Y0_N16
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

-- Location: IOOBUF_X31_Y34_N9
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

-- Location: IOOBUF_X49_Y34_N9
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

-- Location: IOOBUF_X7_Y34_N2
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

-- Location: IOOBUF_X18_Y34_N23
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

-- Location: IOOBUF_X18_Y34_N2
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

-- Location: IOOBUF_X40_Y34_N2
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

-- Location: IOOBUF_X20_Y34_N16
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

-- Location: IOOBUF_X0_Y24_N16
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

-- Location: IOOBUF_X51_Y34_N16
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

-- Location: IOOBUF_X34_Y34_N9
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

-- Location: IOOBUF_X11_Y34_N2
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

-- Location: IOOBUF_X16_Y34_N16
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

-- Location: IOOBUF_X43_Y0_N16
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

-- Location: IOOBUF_X45_Y0_N23
\Buffer4[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(11),
	devoe => ww_devoe,
	o => \Buffer4[11]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\Buffer4[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(10),
	devoe => ww_devoe,
	o => \Buffer4[10]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\Buffer4[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(9),
	devoe => ww_devoe,
	o => \Buffer4[9]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\Buffer4[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(8),
	devoe => ww_devoe,
	o => \Buffer4[8]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\Buffer4[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(7),
	devoe => ww_devoe,
	o => \Buffer4[7]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\Buffer4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(6),
	devoe => ww_devoe,
	o => \Buffer4[6]~output_o\);

-- Location: IOOBUF_X9_Y34_N23
\Buffer4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(5),
	devoe => ww_devoe,
	o => \Buffer4[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\Buffer4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(4),
	devoe => ww_devoe,
	o => \Buffer4[4]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\Buffer4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(3),
	devoe => ww_devoe,
	o => \Buffer4[3]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\Buffer4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(2),
	devoe => ww_devoe,
	o => \Buffer4[2]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\Buffer4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(1),
	devoe => ww_devoe,
	o => \Buffer4[1]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\Buffer4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(0),
	devoe => ww_devoe,
	o => \Buffer4[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X53_Y6_N23
\BUFFERCHEQ[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BufferCheck\(2),
	devoe => ww_devoe,
	o => \BUFFERCHEQ[2]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\BUFFERCHEQ[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BufferCheck\(1),
	devoe => ww_devoe,
	o => \BUFFERCHEQ[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\BUFFERCHEQ[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BufferCheck\(0),
	devoe => ww_devoe,
	o => \BUFFERCHEQ[0]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
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

-- Location: IOOBUF_X20_Y0_N9
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

-- Location: IOOBUF_X43_Y0_N23
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

-- Location: IOOBUF_X0_Y23_N23
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

-- Location: IOOBUF_X14_Y0_N2
\Clock_Shift[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Clock_Shift[3]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\Clock_Shift[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Clock_Shift[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\Clock_Shift[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Clock_Shift[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\Clock_Shift[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Clock_Shift[0]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\OUT2MCU[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BUFFER_READ\(3),
	devoe => ww_devoe,
	o => \OUT2MCU[3]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
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

-- Location: IOOBUF_X53_Y11_N9
\OUT2MCU[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BUFFER_READ\(1),
	devoe => ww_devoe,
	o => \OUT2MCU[1]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\OUT2MCU[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BUFFER_READ\(0),
	devoe => ww_devoe,
	o => \OUT2MCU[0]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\OUTPUTCHECK[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|OUTPUT\(7),
	devoe => ww_devoe,
	o => \OUTPUTCHECK[7]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\OUTPUTCHECK[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|OUTPUT\(6),
	devoe => ww_devoe,
	o => \OUTPUTCHECK[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
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

-- Location: IOOBUF_X14_Y0_N9
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

-- Location: IOOBUF_X53_Y20_N23
\OUTPUTCHECK[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|OUTPUT\(3),
	devoe => ww_devoe,
	o => \OUTPUTCHECK[3]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
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

-- Location: IOOBUF_X53_Y24_N23
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

-- Location: IOOBUF_X53_Y20_N16
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

-- Location: IOIBUF_X47_Y0_N22
\MCU_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(2),
	o => \MCU_IN[2]~input_o\);

-- Location: IOIBUF_X51_Y34_N8
\MCU_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(5),
	o => \MCU_IN[5]~input_o\);

-- Location: IOIBUF_X53_Y7_N8
\MCU_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(7),
	o => \MCU_IN[7]~input_o\);

-- Location: IOIBUF_X51_Y34_N1
\MCU_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(6),
	o => \MCU_IN[6]~input_o\);

-- Location: IOIBUF_X53_Y16_N8
\MCU_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(4),
	o => \MCU_IN[4]~input_o\);

-- Location: LCCOMB_X47_Y23_N26
\inst1|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal5~0_combout\ = (!\MCU_IN[5]~input_o\ & (!\MCU_IN[7]~input_o\ & (!\MCU_IN[6]~input_o\ & !\MCU_IN[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[5]~input_o\,
	datab => \MCU_IN[7]~input_o\,
	datac => \MCU_IN[6]~input_o\,
	datad => \MCU_IN[4]~input_o\,
	combout => \inst1|Equal5~0_combout\);

-- Location: IOIBUF_X53_Y9_N22
\MCU_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(3),
	o => \MCU_IN[3]~input_o\);

-- Location: LCCOMB_X47_Y23_N18
\inst1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~1_combout\ = (\inst1|Equal5~0_combout\ & !\MCU_IN[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal5~0_combout\,
	datad => \MCU_IN[3]~input_o\,
	combout => \inst1|Equal1~1_combout\);

-- Location: IOIBUF_X49_Y0_N1
\MCU_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(1),
	o => \MCU_IN[1]~input_o\);

-- Location: IOIBUF_X51_Y34_N22
\MCU_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(0),
	o => \MCU_IN[0]~input_o\);

-- Location: LCCOMB_X47_Y23_N16
\inst1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal2~0_combout\ = (!\MCU_IN[2]~input_o\ & (\inst1|Equal1~1_combout\ & (!\MCU_IN[1]~input_o\ & \MCU_IN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[2]~input_o\,
	datab => \inst1|Equal1~1_combout\,
	datac => \MCU_IN[1]~input_o\,
	datad => \MCU_IN[0]~input_o\,
	combout => \inst1|Equal2~0_combout\);

-- Location: IOIBUF_X45_Y34_N1
\ADC_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(5),
	o => \ADC_IN[5]~input_o\);

-- Location: LCCOMB_X47_Y23_N20
\inst1|OUTPUT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~2_combout\ = ((\MCU_IN[0]~input_o\) # (\MCU_IN[2]~input_o\ $ (!\MCU_IN[1]~input_o\))) # (!\inst1|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[2]~input_o\,
	datab => \inst1|Equal1~1_combout\,
	datac => \MCU_IN[1]~input_o\,
	datad => \MCU_IN[0]~input_o\,
	combout => \inst1|OUTPUT~2_combout\);

-- Location: LCCOMB_X47_Y23_N30
\inst1|OUTPUT~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~13_combout\ = (\MCU_IN[2]~input_o\) # (((\MCU_IN[1]~input_o\) # (\MCU_IN[3]~input_o\)) # (!\inst1|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[2]~input_o\,
	datab => \inst1|Equal5~0_combout\,
	datac => \MCU_IN[1]~input_o\,
	datad => \MCU_IN[3]~input_o\,
	combout => \inst1|OUTPUT~13_combout\);

-- Location: LCCOMB_X46_Y23_N2
\inst1|OUTPUT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~6_combout\ = (\inst1|Equal0~0_combout\) # ((\inst1|OUTPUT~2_combout\ & \inst1|OUTPUT~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT~2_combout\,
	datac => \inst1|OUTPUT~13_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|OUTPUT~6_combout\);

-- Location: LCCOMB_X47_Y23_N10
\inst1|OUTPUT~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~11_combout\ = (\inst1|OUTPUT~13_combout\ & (!\inst1|Equal0~0_combout\ & \inst1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT~13_combout\,
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|OUTPUT~11_combout\);

-- Location: LCCOMB_X47_Y23_N4
\inst1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~0_combout\ = (!\MCU_IN[1]~input_o\ & (!\MCU_IN[2]~input_o\ & !\MCU_IN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[1]~input_o\,
	datac => \MCU_IN[2]~input_o\,
	datad => \MCU_IN[0]~input_o\,
	combout => \inst1|Equal1~0_combout\);

-- Location: LCCOMB_X47_Y23_N22
\inst1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~2_combout\ = (\inst1|Equal5~0_combout\ & (\inst1|Equal1~0_combout\ & !\MCU_IN[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal5~0_combout\,
	datac => \inst1|Equal1~0_combout\,
	datad => \MCU_IN[3]~input_o\,
	combout => \inst1|Equal1~2_combout\);

-- Location: LCCOMB_X47_Y23_N12
\inst1|Latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Latch~0_combout\ = (\inst1|Latch~q\ & (((\inst1|Equal1~2_combout\) # (!\inst1|LessThan0~0_combout\)) # (!\inst1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~0_combout\,
	datab => \inst1|Latch~q\,
	datac => \inst1|Equal1~2_combout\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|Latch~0_combout\);

-- Location: LCCOMB_X47_Y23_N0
\inst1|Latch~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Latch~1_combout\ = (\inst1|Latch~0_combout\ & (((!\inst1|OUTPUT~2_combout\ & \inst1|OUTPUT~11_combout\)) # (!\inst1|Equal0~0_combout\))) # (!\inst1|Latch~0_combout\ & (!\inst1|OUTPUT~2_combout\ & ((\inst1|OUTPUT~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Latch~0_combout\,
	datab => \inst1|OUTPUT~2_combout\,
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|OUTPUT~11_combout\,
	combout => \inst1|Latch~1_combout\);

-- Location: FF_X47_Y23_N1
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

-- Location: LCCOMB_X47_Y23_N2
\inst1|OUTPUT~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~9_combout\ = (\inst1|Equal1~2_combout\ & (\inst1|LessThan0~0_combout\ & (!\inst1|Equal0~0_combout\ & \inst1|Latch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal1~2_combout\,
	datab => \inst1|LessThan0~0_combout\,
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|Latch~q\,
	combout => \inst1|OUTPUT~9_combout\);

-- Location: LCCOMB_X47_Y23_N8
\inst1|OUTPUT~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~10_combout\ = (!\inst1|Equal0~0_combout\ & (\inst1|OUTPUT\(1) & ((\inst1|OUTPUT~13_combout\) # (!\inst1|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT~13_combout\,
	datab => \inst1|LessThan0~0_combout\,
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|OUTPUT\(1),
	combout => \inst1|OUTPUT~10_combout\);

-- Location: LCCOMB_X47_Y23_N6
\inst1|OUTPUT[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[6]~3_combout\ = ((\inst1|Equal5~0_combout\ & (\inst1|Equal1~0_combout\ & \MCU_IN[3]~input_o\))) # (!\inst1|OUTPUT~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal5~0_combout\,
	datab => \inst1|OUTPUT~2_combout\,
	datac => \inst1|Equal1~0_combout\,
	datad => \MCU_IN[3]~input_o\,
	combout => \inst1|OUTPUT[6]~3_combout\);

-- Location: LCCOMB_X47_Y23_N28
\inst1|OUTPUT~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~12_combout\ = (\inst1|OUTPUT~9_combout\) # ((\inst1|OUTPUT~10_combout\) # ((\inst1|OUTPUT~11_combout\ & \inst1|OUTPUT[6]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT~11_combout\,
	datab => \inst1|OUTPUT~9_combout\,
	datac => \inst1|OUTPUT~10_combout\,
	datad => \inst1|OUTPUT[6]~3_combout\,
	combout => \inst1|OUTPUT~12_combout\);

-- Location: FF_X47_Y23_N29
\inst1|OUTPUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|OUTPUT~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTPUT\(1));

-- Location: IOIBUF_X36_Y0_N8
\ADC_IN[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(9),
	o => \ADC_IN[9]~input_o\);

-- Location: IOIBUF_X0_Y25_N8
\ADC_IN[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(8),
	o => \ADC_IN[8]~input_o\);

-- Location: LCCOMB_X37_Y23_N16
\inst|buffer1~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~77_combout\ = (\inst|buffer1[10]~10_combout\ & (\ADC_IN[8]~input_o\ & ((!\inst|Equal13~7_combout\) # (!\inst|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Equal13~7_combout\,
	datac => \inst|buffer1[10]~10_combout\,
	datad => \ADC_IN[8]~input_o\,
	combout => \inst|buffer1~77_combout\);

-- Location: LCCOMB_X46_Y23_N24
\inst|buffer1[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[10]~9_combout\ = (!\inst1|OUTPUT\(0) & !\inst1|OUTPUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|OUTPUT\(0),
	datad => \inst1|OUTPUT\(1),
	combout => \inst|buffer1[10]~9_combout\);

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

-- Location: LCCOMB_X45_Y23_N28
\inst|buffer1~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~85_combout\ = (\ADC_IN[0]~input_o\ & (\inst|buffer1[10]~10_combout\ & ((!\inst|Equal13~7_combout\) # (!\inst|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \ADC_IN[0]~input_o\,
	datac => \inst|buffer1[10]~10_combout\,
	datad => \inst|Equal13~7_combout\,
	combout => \inst|buffer1~85_combout\);

-- Location: LCCOMB_X35_Y23_N28
\inst|buffer1[36]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[36]~feeder_combout\ = \inst|buffer1~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1~85_combout\,
	combout => \inst|buffer1[36]~feeder_combout\);

-- Location: FF_X35_Y23_N29
\inst|buffer1[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1[36]~feeder_combout\,
	ena => \inst|buffer1[42]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(36));

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

-- Location: LCCOMB_X37_Y23_N22
\inst|buffer1~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~84_combout\ = (\inst|buffer1[10]~10_combout\ & (\ADC_IN[1]~input_o\ & ((!\inst|Equal13~7_combout\) # (!\inst|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Equal13~7_combout\,
	datac => \inst|buffer1[10]~10_combout\,
	datad => \ADC_IN[1]~input_o\,
	combout => \inst|buffer1~84_combout\);

-- Location: FF_X37_Y23_N23
\inst|buffer1[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~84_combout\,
	ena => \inst|buffer1[42]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(37));

-- Location: LCCOMB_X36_Y23_N18
\inst|buffer1~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~70_combout\ = (!\inst|buffer1\(36) & (!\inst|buffer1\(37) & (!\inst|counter\(1) & \inst|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(36),
	datab => \inst|buffer1\(37),
	datac => \inst|counter\(1),
	datad => \inst|counter\(2),
	combout => \inst|buffer1~70_combout\);

-- Location: LCCOMB_X36_Y23_N6
\inst|buffer1[42]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[42]~72_combout\ = (!\inst|buffer1~70_combout\) # (!\inst|buffer1~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~71_combout\,
	datad => \inst|buffer1~70_combout\,
	combout => \inst|buffer1[42]~72_combout\);

-- Location: IOIBUF_X34_Y34_N1
\ADC_IN[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(11),
	o => \ADC_IN[11]~input_o\);

-- Location: LCCOMB_X37_Y23_N6
\inst|buffer1~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~67_combout\ = (\inst|buffer1[10]~10_combout\ & (\ADC_IN[11]~input_o\ & ((!\inst|Equal13~7_combout\) # (!\inst|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Equal13~7_combout\,
	datac => \inst|buffer1[10]~10_combout\,
	datad => \ADC_IN[11]~input_o\,
	combout => \inst|buffer1~67_combout\);

-- Location: FF_X37_Y23_N7
\inst|buffer1[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~67_combout\,
	ena => \inst|buffer1[42]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(47));

-- Location: IOIBUF_X38_Y34_N1
\ADC_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(7),
	o => \ADC_IN[7]~input_o\);

-- Location: LCCOMB_X37_Y23_N28
\inst|buffer1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~78_combout\ = (\inst|buffer1[10]~10_combout\ & (\ADC_IN[7]~input_o\ & ((!\inst|Equal13~7_combout\) # (!\inst|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Equal13~7_combout\,
	datac => \inst|buffer1[10]~10_combout\,
	datad => \ADC_IN[7]~input_o\,
	combout => \inst|buffer1~78_combout\);

-- Location: FF_X37_Y23_N29
\inst|buffer1[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~78_combout\,
	ena => \inst|buffer1[42]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(43));

-- Location: IOIBUF_X23_Y34_N22
\ADC_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(6),
	o => \ADC_IN[6]~input_o\);

-- Location: LCCOMB_X37_Y23_N10
\inst|buffer1~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~79_combout\ = (\ADC_IN[6]~input_o\ & (\inst|buffer1[10]~10_combout\ & ((!\inst|Equal13~7_combout\) # (!\inst|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \ADC_IN[6]~input_o\,
	datac => \inst|buffer1[10]~10_combout\,
	datad => \inst|Equal13~7_combout\,
	combout => \inst|buffer1~79_combout\);

-- Location: FF_X37_Y23_N11
\inst|buffer1[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~79_combout\,
	ena => \inst|buffer1[42]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(42));

-- Location: LCCOMB_X36_Y23_N2
\inst|buffer1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~68_combout\ = (!\inst|buffer1\(44) & (!\inst|buffer1\(43) & (!\inst|buffer1\(42) & !\inst|buffer1\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(44),
	datab => \inst|buffer1\(43),
	datac => \inst|buffer1\(42),
	datad => \inst|buffer1\(45),
	combout => \inst|buffer1~68_combout\);

-- Location: IOIBUF_X34_Y34_N15
\ADC_IN[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(10),
	o => \ADC_IN[10]~input_o\);

-- Location: LCCOMB_X37_Y23_N8
\inst|buffer1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~75_combout\ = (\inst|buffer1[10]~10_combout\ & (\ADC_IN[10]~input_o\ & ((!\inst|Equal13~7_combout\) # (!\inst|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Equal13~7_combout\,
	datac => \inst|buffer1[10]~10_combout\,
	datad => \ADC_IN[10]~input_o\,
	combout => \inst|buffer1~75_combout\);

-- Location: FF_X37_Y23_N9
\inst|buffer1[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~75_combout\,
	ena => \inst|buffer1[42]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(46));

-- Location: LCCOMB_X36_Y23_N8
\inst|buffer1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~69_combout\ = (!\inst|buffer1\(47) & (\inst|buffer1~68_combout\ & (!\inst|buffer1\(46) & \inst|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(47),
	datab => \inst|buffer1~68_combout\,
	datac => \inst|buffer1\(46),
	datad => \inst|counter\(0),
	combout => \inst|buffer1~69_combout\);

-- Location: LCCOMB_X37_Y23_N2
\inst|buffer1[42]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[42]~73_combout\ = (!\inst1|OUTPUT\(3) & (!\inst1|OUTPUT\(0) & ((\inst|buffer1[42]~72_combout\) # (!\inst|buffer1~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst1|OUTPUT\(0),
	datac => \inst|buffer1[42]~72_combout\,
	datad => \inst|buffer1~69_combout\,
	combout => \inst|buffer1[42]~73_combout\);

-- Location: LCCOMB_X37_Y23_N12
\inst|buffer1[42]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[42]~74_combout\ = (!\inst|buffer1[10]~9_combout\ & (((\inst|Equal0~2_combout\ & \inst|Equal13~7_combout\)) # (!\inst|buffer1[42]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|buffer1[10]~9_combout\,
	datac => \inst|buffer1[42]~73_combout\,
	datad => \inst|Equal13~7_combout\,
	combout => \inst|buffer1[42]~74_combout\);

-- Location: FF_X37_Y23_N17
\inst|buffer1[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~77_combout\,
	ena => \inst|buffer1[42]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(44));

-- Location: LCCOMB_X47_Y23_N14
\inst1|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~0_combout\ = (!\MCU_IN[1]~input_o\ & (\MCU_IN[2]~input_o\ & !\MCU_IN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[1]~input_o\,
	datac => \MCU_IN[2]~input_o\,
	datad => \MCU_IN[0]~input_o\,
	combout => \inst1|Equal4~0_combout\);

-- Location: LCCOMB_X46_Y23_N6
\inst1|OUTPUT~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~8_combout\ = (!\inst1|Equal0~0_combout\ & (\inst1|Equal4~0_combout\ & (!\MCU_IN[3]~input_o\ & \inst1|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|Equal4~0_combout\,
	datac => \MCU_IN[3]~input_o\,
	datad => \inst1|Equal5~0_combout\,
	combout => \inst1|OUTPUT~8_combout\);

-- Location: FF_X46_Y23_N7
\inst1|OUTPUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|OUTPUT~8_combout\,
	ena => \inst1|OUTPUT[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTPUT\(2));

-- Location: LCCOMB_X45_Y23_N30
\inst|bufferout[23]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bufferout[23]~0_combout\ = (\inst1|OUTPUT\(1) & (!\inst1|OUTPUT\(0) & \inst1|OUTPUT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst1|OUTPUT\(0),
	datac => \inst1|OUTPUT\(2),
	combout => \inst|bufferout[23]~0_combout\);

-- Location: FF_X44_Y23_N23
\inst|bufferout[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(44),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(44));

-- Location: CLKCTRL_G8
\inst1|OUTPUT[2]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|OUTPUT[2]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|OUTPUT[2]~clkctrl_outclk\);

-- Location: LCCOMB_X44_Y23_N22
\inst2|buffer1[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(32) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(44)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(32),
	datac => \inst|bufferout\(44),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(32));

-- Location: CLKCTRL_G9
\inst1|OUTPUT[3]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|OUTPUT[3]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|OUTPUT[3]~clkctrl_outclk\);

-- Location: LCCOMB_X44_Y23_N2
\inst2|bufferout[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(32) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(32))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(32),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(32),
	combout => \inst2|bufferout\(32));

-- Location: LCCOMB_X44_Y23_N14
\inst|buffer1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~58_combout\ = (!\inst|buffer1[29]~47_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(32)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datab => \inst2|bufferout\(32),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[29]~47_combout\,
	combout => \inst|buffer1~58_combout\);

-- Location: FF_X43_Y23_N11
\inst|bufferout[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(37),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(37));

-- Location: LCCOMB_X43_Y23_N10
\inst2|buffer1[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(25) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(37)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(25),
	datac => \inst|bufferout\(37),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(25));

-- Location: LCCOMB_X43_Y23_N20
\inst2|bufferout[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(25) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(25)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|bufferout\(25),
	datac => \inst2|buffer1\(25),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(25));

-- Location: LCCOMB_X43_Y23_N24
\inst|buffer1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~65_combout\ = (!\inst|buffer1[29]~47_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(25)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[1]~input_o\,
	datab => \inst|buffer1[29]~47_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(25),
	combout => \inst|buffer1~65_combout\);

-- Location: FF_X43_Y23_N25
\inst|buffer1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~65_combout\,
	ena => \inst|buffer1[29]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(25));

-- Location: FF_X43_Y23_N1
\inst|bufferout[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(36),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(36));

-- Location: LCCOMB_X43_Y23_N0
\inst2|buffer1[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(24) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(36)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(24),
	datac => \inst|bufferout\(36),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(24));

-- Location: LCCOMB_X43_Y23_N26
\inst2|bufferout[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(24) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(24))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(24),
	datac => \inst2|bufferout\(24),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(24));

-- Location: LCCOMB_X43_Y23_N22
\inst|buffer1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~66_combout\ = (!\inst|buffer1[29]~47_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(24))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(24),
	datab => \inst|buffer1[29]~47_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \ADC_IN[0]~input_o\,
	combout => \inst|buffer1~66_combout\);

-- Location: FF_X43_Y23_N23
\inst|buffer1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~66_combout\,
	ena => \inst|buffer1[29]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(24));

-- Location: LCCOMB_X45_Y23_N12
\inst|buffer1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~51_combout\ = (!\inst|buffer1\(25) & (!\inst|buffer1\(24) & (\inst|counter\(1) & !\inst|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(25),
	datab => \inst|buffer1\(24),
	datac => \inst|counter\(1),
	datad => \inst|counter\(2),
	combout => \inst|buffer1~51_combout\);

-- Location: LCCOMB_X45_Y23_N14
\inst|buffer1[29]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[29]~53_combout\ = (!\inst|buffer1~52_combout\) # (!\inst|buffer1~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~51_combout\,
	datad => \inst|buffer1~52_combout\,
	combout => \inst|buffer1[29]~53_combout\);

-- Location: LCCOMB_X45_Y23_N20
\inst|buffer1[29]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[29]~54_combout\ = (!\inst1|OUTPUT\(0) & (!\inst1|OUTPUT\(3) & ((\inst|buffer1[29]~53_combout\) # (!\inst|buffer1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst1|OUTPUT\(3),
	datac => \inst|buffer1[29]~53_combout\,
	datad => \inst|buffer1~50_combout\,
	combout => \inst|buffer1[29]~54_combout\);

-- Location: LCCOMB_X45_Y23_N6
\inst|buffer1[29]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[29]~55_combout\ = (!\inst|buffer1[10]~9_combout\ & (((\inst|Equal0~1_combout\ & \inst|Equal9~7_combout\)) # (!\inst|buffer1[29]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|buffer1[10]~9_combout\,
	datac => \inst|buffer1[29]~54_combout\,
	datad => \inst|Equal9~7_combout\,
	combout => \inst|buffer1[29]~55_combout\);

-- Location: FF_X44_Y23_N15
\inst|buffer1[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~58_combout\,
	ena => \inst|buffer1[29]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(32));

-- Location: LCCOMB_X44_Y23_N4
\inst|Equal13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~5_combout\ = (\inst|buffer1\(44) & (\inst|buffer1\(32) & (\inst|buffer1\(33) $ (!\inst|buffer1\(45))))) # (!\inst|buffer1\(44) & (!\inst|buffer1\(32) & (\inst|buffer1\(33) $ (!\inst|buffer1\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(44),
	datab => \inst|buffer1\(32),
	datac => \inst|buffer1\(33),
	datad => \inst|buffer1\(45),
	combout => \inst|Equal13~5_combout\);

-- Location: FF_X43_Y23_N17
\inst|bufferout[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(46),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(46));

-- Location: LCCOMB_X43_Y23_N16
\inst2|buffer1[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(34) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(46)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(34),
	datac => \inst|bufferout\(46),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(34));

-- Location: LCCOMB_X43_Y23_N2
\inst2|bufferout[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(34) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(34))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(34),
	datab => \inst2|bufferout\(34),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(34));

-- Location: LCCOMB_X43_Y23_N6
\inst|buffer1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~56_combout\ = (!\inst|buffer1[29]~47_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(34)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[10]~input_o\,
	datab => \inst|buffer1[29]~47_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(34),
	combout => \inst|buffer1~56_combout\);

-- Location: FF_X43_Y23_N7
\inst|buffer1[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~56_combout\,
	ena => \inst|buffer1[29]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(34));

-- Location: LCCOMB_X39_Y23_N22
\inst|Equal13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~6_combout\ = (\inst|buffer1\(46) & (\inst|buffer1\(34) & (\inst|buffer1\(47) $ (!\inst|buffer1\(35))))) # (!\inst|buffer1\(46) & (!\inst|buffer1\(34) & (\inst|buffer1\(47) $ (!\inst|buffer1\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(46),
	datab => \inst|buffer1\(47),
	datac => \inst|buffer1\(34),
	datad => \inst|buffer1\(35),
	combout => \inst|Equal13~6_combout\);

-- Location: IOIBUF_X43_Y34_N15
\ADC_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(3),
	o => \ADC_IN[3]~input_o\);

-- Location: LCCOMB_X37_Y23_N30
\inst|buffer1~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~82_combout\ = (\inst|buffer1[10]~10_combout\ & (\ADC_IN[3]~input_o\ & ((!\inst|Equal13~7_combout\) # (!\inst|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Equal13~7_combout\,
	datac => \inst|buffer1[10]~10_combout\,
	datad => \ADC_IN[3]~input_o\,
	combout => \inst|buffer1~82_combout\);

-- Location: FF_X37_Y23_N31
\inst|buffer1[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~82_combout\,
	ena => \inst|buffer1[42]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(39));

-- Location: FF_X44_Y26_N23
\inst|bufferout[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(39),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(39));

-- Location: LCCOMB_X44_Y26_N22
\inst2|buffer1[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(27) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(39)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(27),
	datac => \inst|bufferout\(39),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(27));

-- Location: LCCOMB_X44_Y26_N20
\inst2|bufferout[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(27) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(27))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(27),
	datac => \inst2|bufferout\(27),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(27));

-- Location: LCCOMB_X44_Y24_N0
\inst|buffer1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~63_combout\ = (!\inst|buffer1[29]~47_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(27)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[3]~input_o\,
	datab => \inst|buffer1[29]~47_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(27),
	combout => \inst|buffer1~63_combout\);

-- Location: FF_X44_Y24_N1
\inst|buffer1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~63_combout\,
	ena => \inst|buffer1[29]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(27));

-- Location: IOIBUF_X45_Y34_N8
\ADC_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(2),
	o => \ADC_IN[2]~input_o\);

-- Location: LCCOMB_X37_Y23_N26
\inst|buffer1~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~83_combout\ = (\inst|buffer1[10]~10_combout\ & (\ADC_IN[2]~input_o\ & ((!\inst|Equal13~7_combout\) # (!\inst|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Equal13~7_combout\,
	datac => \inst|buffer1[10]~10_combout\,
	datad => \ADC_IN[2]~input_o\,
	combout => \inst|buffer1~83_combout\);

-- Location: FF_X37_Y23_N27
\inst|buffer1[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~83_combout\,
	ena => \inst|buffer1[42]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(38));

-- Location: FF_X43_Y24_N29
\inst|bufferout[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(38),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(38));

-- Location: LCCOMB_X43_Y24_N28
\inst2|buffer1[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(26) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(38)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(26),
	datac => \inst|bufferout\(38),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(26));

-- Location: LCCOMB_X43_Y24_N18
\inst2|bufferout[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(26) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(26))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(26),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(26),
	combout => \inst2|bufferout\(26));

-- Location: LCCOMB_X44_Y24_N10
\inst|buffer1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~64_combout\ = (!\inst|buffer1[29]~47_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(26)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[2]~input_o\,
	datab => \inst|buffer1[29]~47_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(26),
	combout => \inst|buffer1~64_combout\);

-- Location: FF_X44_Y24_N11
\inst|buffer1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~64_combout\,
	ena => \inst|buffer1[29]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(26));

-- Location: LCCOMB_X44_Y23_N26
\inst|Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~1_combout\ = (\inst|buffer1\(39) & (\inst|buffer1\(27) & (\inst|buffer1\(38) $ (!\inst|buffer1\(26))))) # (!\inst|buffer1\(39) & (!\inst|buffer1\(27) & (\inst|buffer1\(38) $ (!\inst|buffer1\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(39),
	datab => \inst|buffer1\(27),
	datac => \inst|buffer1\(38),
	datad => \inst|buffer1\(26),
	combout => \inst|Equal13~1_combout\);

-- Location: FF_X36_Y23_N31
\inst|bufferout[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(42),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(42));

-- Location: LCCOMB_X36_Y23_N30
\inst2|buffer1[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(30) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(42)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(30),
	datac => \inst|bufferout\(42),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(30));

-- Location: LCCOMB_X36_Y23_N0
\inst2|bufferout[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(30) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(30)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datab => \inst2|bufferout\(30),
	datad => \inst2|buffer1\(30),
	combout => \inst2|bufferout\(30));

-- Location: LCCOMB_X44_Y24_N20
\inst|buffer1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~60_combout\ = (!\inst|buffer1[29]~47_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(30)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[6]~input_o\,
	datab => \inst|buffer1[29]~47_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(30),
	combout => \inst|buffer1~60_combout\);

-- Location: FF_X44_Y24_N21
\inst|buffer1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~60_combout\,
	ena => \inst|buffer1[29]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(30));

-- Location: FF_X36_Y23_N5
\inst|bufferout[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(43),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(43));

-- Location: LCCOMB_X36_Y23_N4
\inst2|buffer1[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(31) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(43)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(31),
	datac => \inst|bufferout\(43),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(31));

-- Location: LCCOMB_X36_Y23_N20
\inst2|bufferout[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(31) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(31))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(31),
	datab => \inst2|bufferout\(31),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(31));

-- Location: LCCOMB_X44_Y23_N16
\inst|buffer1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~59_combout\ = (!\inst|buffer1[29]~47_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(31))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(31),
	datab => \ADC_IN[7]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[29]~47_combout\,
	combout => \inst|buffer1~59_combout\);

-- Location: FF_X44_Y23_N17
\inst|buffer1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~59_combout\,
	ena => \inst|buffer1[29]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(31));

-- Location: LCCOMB_X44_Y23_N8
\inst|Equal13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~3_combout\ = (\inst|buffer1\(30) & (\inst|buffer1\(42) & (\inst|buffer1\(31) $ (!\inst|buffer1\(43))))) # (!\inst|buffer1\(30) & (!\inst|buffer1\(42) & (\inst|buffer1\(31) $ (!\inst|buffer1\(43)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(30),
	datab => \inst|buffer1\(31),
	datac => \inst|buffer1\(42),
	datad => \inst|buffer1\(43),
	combout => \inst|Equal13~3_combout\);

-- Location: FF_X44_Y26_N3
\inst|bufferout[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(41),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(41));

-- Location: LCCOMB_X44_Y26_N2
\inst2|buffer1[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(29) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(41)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(29),
	datac => \inst|bufferout\(41),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(29));

-- Location: LCCOMB_X44_Y26_N16
\inst2|bufferout[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(29) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(29))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(29),
	datab => \inst2|bufferout\(29),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(29));

-- Location: LCCOMB_X44_Y24_N30
\inst|buffer1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~61_combout\ = (!\inst|buffer1[29]~47_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(29)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[5]~input_o\,
	datab => \inst|buffer1[29]~47_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(29),
	combout => \inst|buffer1~61_combout\);

-- Location: FF_X44_Y24_N31
\inst|buffer1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~61_combout\,
	ena => \inst|buffer1[29]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(29));

-- Location: LCCOMB_X41_Y23_N2
\inst|Equal13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~2_combout\ = (\inst|buffer1\(41) & (\inst|buffer1\(29) & (\inst|buffer1\(28) $ (!\inst|buffer1\(40))))) # (!\inst|buffer1\(41) & (!\inst|buffer1\(29) & (\inst|buffer1\(28) $ (!\inst|buffer1\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(41),
	datab => \inst|buffer1\(29),
	datac => \inst|buffer1\(28),
	datad => \inst|buffer1\(40),
	combout => \inst|Equal13~2_combout\);

-- Location: LCCOMB_X43_Y23_N18
\inst|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~0_combout\ = (\inst|buffer1\(24) & (\inst|buffer1\(36) & (\inst|buffer1\(25) $ (!\inst|buffer1\(37))))) # (!\inst|buffer1\(24) & (!\inst|buffer1\(36) & (\inst|buffer1\(25) $ (!\inst|buffer1\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(24),
	datab => \inst|buffer1\(25),
	datac => \inst|buffer1\(36),
	datad => \inst|buffer1\(37),
	combout => \inst|Equal13~0_combout\);

-- Location: LCCOMB_X44_Y23_N18
\inst|Equal13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~4_combout\ = (\inst|Equal13~1_combout\ & (\inst|Equal13~3_combout\ & (\inst|Equal13~2_combout\ & \inst|Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal13~1_combout\,
	datab => \inst|Equal13~3_combout\,
	datac => \inst|Equal13~2_combout\,
	datad => \inst|Equal13~0_combout\,
	combout => \inst|Equal13~4_combout\);

-- Location: LCCOMB_X44_Y23_N30
\inst|Equal13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~7_combout\ = (\inst|Equal13~5_combout\ & (\inst|Equal13~6_combout\ & \inst|Equal13~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal13~5_combout\,
	datac => \inst|Equal13~6_combout\,
	datad => \inst|Equal13~4_combout\,
	combout => \inst|Equal13~7_combout\);

-- Location: LCCOMB_X37_Y23_N24
\inst|buffer1~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~76_combout\ = (\inst|buffer1[10]~10_combout\ & (\ADC_IN[9]~input_o\ & ((!\inst|Equal13~7_combout\) # (!\inst|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Equal13~7_combout\,
	datac => \inst|buffer1[10]~10_combout\,
	datad => \ADC_IN[9]~input_o\,
	combout => \inst|buffer1~76_combout\);

-- Location: FF_X37_Y23_N25
\inst|buffer1[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~76_combout\,
	ena => \inst|buffer1[42]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(45));

-- Location: FF_X44_Y23_N29
\inst|bufferout[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(45),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(45));

-- Location: LCCOMB_X44_Y23_N28
\inst2|buffer1[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(33) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(45)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(33),
	datac => \inst|bufferout\(45),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(33));

-- Location: LCCOMB_X44_Y23_N24
\inst2|bufferout[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(33) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(33))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(33),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(33),
	combout => \inst2|bufferout\(33));

-- Location: LCCOMB_X44_Y23_N12
\inst|buffer1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~57_combout\ = (!\inst|buffer1[29]~47_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(33)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[9]~input_o\,
	datab => \inst2|bufferout\(33),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[29]~47_combout\,
	combout => \inst|buffer1~57_combout\);

-- Location: FF_X44_Y23_N13
\inst|buffer1[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~57_combout\,
	ena => \inst|buffer1[29]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(33));

-- Location: LCCOMB_X45_Y23_N4
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|counter\(1) & (!\inst|counter\(0) & !\inst|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datac => \inst|counter\(0),
	datad => \inst|counter\(2),
	combout => \inst|Equal0~0_combout\);

-- Location: FF_X40_Y24_N17
\inst|bufferout[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(34),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(34));

-- Location: LCCOMB_X40_Y24_N16
\inst2|buffer1[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(22) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(34)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(22),
	datac => \inst|bufferout\(34),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(22));

-- Location: LCCOMB_X40_Y24_N8
\inst2|bufferout[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(22) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(22))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(22),
	datac => \inst2|bufferout\(22),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(22));

-- Location: LCCOMB_X40_Y23_N16
\inst|buffer1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~36_combout\ = (!\inst|buffer1[17]~27_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(22)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[17]~27_combout\,
	datab => \ADC_IN[10]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(22),
	combout => \inst|buffer1~36_combout\);

-- Location: FF_X38_Y24_N17
\inst|bufferout[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(35),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(35));

-- Location: LCCOMB_X38_Y24_N16
\inst2|buffer1[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(23) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(35)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(23),
	datac => \inst|bufferout\(35),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(23));

-- Location: LCCOMB_X38_Y24_N8
\inst2|bufferout[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(23) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(23))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(23),
	datac => \inst2|bufferout\(23),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(23));

-- Location: LCCOMB_X38_Y23_N10
\inst|buffer1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~28_combout\ = (!\inst|buffer1[17]~27_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(23)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[11]~input_o\,
	datab => \inst|buffer1[17]~27_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(23),
	combout => \inst|buffer1~28_combout\);

-- Location: FF_X38_Y23_N11
\inst|buffer1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~28_combout\,
	ena => \inst|buffer1[17]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(23));

-- Location: FF_X39_Y23_N5
\inst|bufferout[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(32),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(32));

-- Location: LCCOMB_X39_Y23_N4
\inst2|buffer1[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(20) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(32)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(20),
	datac => \inst|bufferout\(32),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(20));

-- Location: LCCOMB_X39_Y23_N14
\inst2|bufferout[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(20) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(20))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(20),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(20),
	combout => \inst2|bufferout\(20));

-- Location: LCCOMB_X39_Y23_N6
\inst|buffer1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~38_combout\ = (!\inst|buffer1[17]~27_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(20)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datab => \inst|buffer1[17]~27_combout\,
	datac => \inst2|bufferout\(20),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~38_combout\);

-- Location: FF_X39_Y23_N7
\inst|buffer1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~38_combout\,
	ena => \inst|buffer1[17]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(20));

-- Location: FF_X43_Y23_N5
\inst|bufferout[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(30),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(30));

-- Location: LCCOMB_X43_Y23_N4
\inst2|buffer1[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(18) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(30)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(18),
	datac => \inst|bufferout\(30),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(18));

-- Location: LCCOMB_X43_Y23_N14
\inst2|bufferout[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(18) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(18))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(18),
	datac => \inst2|bufferout\(18),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(18));

-- Location: LCCOMB_X39_Y23_N26
\inst|buffer1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~40_combout\ = (!\inst|buffer1[17]~27_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(18)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[6]~input_o\,
	datab => \inst|buffer1[17]~27_combout\,
	datac => \inst2|bufferout\(18),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~40_combout\);

-- Location: FF_X39_Y23_N27
\inst|buffer1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~40_combout\,
	ena => \inst|buffer1[17]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(18));

-- Location: FF_X39_Y23_N3
\inst|bufferout[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(31),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(31));

-- Location: LCCOMB_X39_Y23_N2
\inst2|buffer1[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(19) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(31)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(19),
	datac => \inst|bufferout\(31),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(19));

-- Location: LCCOMB_X39_Y23_N12
\inst2|bufferout[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(19) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(19))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(19),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(19),
	combout => \inst2|bufferout\(19));

-- Location: LCCOMB_X39_Y23_N0
\inst|buffer1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~39_combout\ = (!\inst|buffer1[17]~27_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(19)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[7]~input_o\,
	datab => \inst|buffer1[17]~27_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(19),
	combout => \inst|buffer1~39_combout\);

-- Location: FF_X39_Y23_N1
\inst|buffer1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~39_combout\,
	ena => \inst|buffer1[17]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(19));

-- Location: LCCOMB_X39_Y23_N24
\inst|buffer1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~29_combout\ = (!\inst|buffer1\(20) & (!\inst|buffer1\(21) & (!\inst|buffer1\(18) & !\inst|buffer1\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(20),
	datab => \inst|buffer1\(21),
	datac => \inst|buffer1\(18),
	datad => \inst|buffer1\(19),
	combout => \inst|buffer1~29_combout\);

-- Location: LCCOMB_X38_Y23_N6
\inst|buffer1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~30_combout\ = (!\inst|buffer1\(22) & (\inst|counter\(0) & (!\inst|buffer1\(23) & \inst|buffer1~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(22),
	datab => \inst|counter\(0),
	datac => \inst|buffer1\(23),
	datad => \inst|buffer1~29_combout\,
	combout => \inst|buffer1~30_combout\);

-- Location: FF_X40_Y23_N5
\inst|bufferout[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(26),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(26));

-- Location: LCCOMB_X40_Y23_N4
\inst2|buffer1[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(14) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(26)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(14),
	datac => \inst|bufferout\(26),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(14));

-- Location: LCCOMB_X40_Y23_N22
\inst2|bufferout[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(14) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(14)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(14),
	datab => \inst2|buffer1\(14),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(14));

-- Location: LCCOMB_X40_Y23_N10
\inst|buffer1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~44_combout\ = (!\inst|buffer1[17]~27_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(14)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[17]~27_combout\,
	datab => \ADC_IN[2]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(14),
	combout => \inst|buffer1~44_combout\);

-- Location: FF_X40_Y23_N11
\inst|buffer1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~44_combout\,
	ena => \inst|buffer1[17]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(14));

-- Location: FF_X40_Y23_N1
\inst|bufferout[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(29),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(29));

-- Location: LCCOMB_X40_Y23_N0
\inst2|buffer1[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(17) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(29)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(17),
	datac => \inst|bufferout\(29),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(17));

-- Location: LCCOMB_X40_Y23_N14
\inst2|bufferout[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(17) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(17))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(17),
	datab => \inst2|bufferout\(17),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(17));

-- Location: LCCOMB_X40_Y23_N2
\inst|buffer1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~41_combout\ = (!\inst|buffer1[17]~27_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(17))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[17]~27_combout\,
	datab => \inst2|bufferout\(17),
	datac => \inst1|OUTPUT\(3),
	datad => \ADC_IN[5]~input_o\,
	combout => \inst|buffer1~41_combout\);

-- Location: FF_X40_Y23_N3
\inst|buffer1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~41_combout\,
	ena => \inst|buffer1[17]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(17));

-- Location: IOIBUF_X45_Y34_N15
\ADC_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(4),
	o => \ADC_IN[4]~input_o\);

-- Location: FF_X36_Y23_N29
\inst|bufferout[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(28),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(28));

-- Location: LCCOMB_X36_Y23_N28
\inst2|buffer1[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(16) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(28)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(16),
	datac => \inst|bufferout\(28),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(16));

-- Location: LCCOMB_X36_Y23_N10
\inst2|bufferout[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(16) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(16)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(16),
	datab => \inst2|buffer1\(16),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(16));

-- Location: LCCOMB_X38_Y23_N28
\inst|buffer1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~42_combout\ = (!\inst|buffer1[17]~27_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(16)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[4]~input_o\,
	datab => \inst|buffer1[17]~27_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(16),
	combout => \inst|buffer1~42_combout\);

-- Location: FF_X38_Y23_N29
\inst|buffer1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~42_combout\,
	ena => \inst|buffer1[17]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(16));

-- Location: FF_X40_Y23_N31
\inst|bufferout[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(27),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(27));

-- Location: LCCOMB_X40_Y23_N30
\inst2|buffer1[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(15) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(27)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(15),
	datac => \inst|bufferout\(27),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(15));

-- Location: LCCOMB_X40_Y23_N8
\inst2|bufferout[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(15) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(15))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(15),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(15),
	combout => \inst2|bufferout\(15));

-- Location: LCCOMB_X40_Y23_N24
\inst|buffer1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~43_combout\ = (!\inst|buffer1[17]~27_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(15))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[17]~27_combout\,
	datab => \inst2|bufferout\(15),
	datac => \inst1|OUTPUT\(3),
	datad => \ADC_IN[3]~input_o\,
	combout => \inst|buffer1~43_combout\);

-- Location: FF_X40_Y23_N25
\inst|buffer1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~43_combout\,
	ena => \inst|buffer1[17]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(15));

-- Location: LCCOMB_X40_Y23_N28
\inst|buffer1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~32_combout\ = (!\inst|buffer1\(14) & (!\inst|buffer1\(17) & (!\inst|buffer1\(16) & !\inst|buffer1\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(14),
	datab => \inst|buffer1\(17),
	datac => \inst|buffer1\(16),
	datad => \inst|buffer1\(15),
	combout => \inst|buffer1~32_combout\);

-- Location: FF_X36_Y23_N23
\inst|bufferout[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(24),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(24));

-- Location: LCCOMB_X36_Y23_N22
\inst2|buffer1[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(12) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(24)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(12),
	datac => \inst|bufferout\(24),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(12));

-- Location: LCCOMB_X36_Y23_N12
\inst2|bufferout[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(12) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(12)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datab => \inst2|bufferout\(12),
	datad => \inst2|buffer1\(12),
	combout => \inst2|bufferout\(12));

-- Location: LCCOMB_X40_Y23_N12
\inst|buffer1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~46_combout\ = (!\inst|buffer1[17]~27_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(12)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[17]~27_combout\,
	datab => \ADC_IN[0]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(12),
	combout => \inst|buffer1~46_combout\);

-- Location: FF_X40_Y23_N13
\inst|buffer1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~46_combout\,
	ena => \inst|buffer1[17]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(12));

-- Location: FF_X39_Y23_N29
\inst|bufferout[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(25),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(25));

-- Location: LCCOMB_X39_Y23_N28
\inst2|buffer1[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(13) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(25)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(13),
	datac => \inst|bufferout\(25),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(13));

-- Location: LCCOMB_X39_Y23_N30
\inst2|bufferout[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(13) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(13)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(13),
	datab => \inst2|buffer1\(13),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(13));

-- Location: LCCOMB_X39_Y23_N16
\inst|buffer1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~45_combout\ = (!\inst|buffer1[17]~27_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(13))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(13),
	datab => \inst|buffer1[17]~27_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \ADC_IN[1]~input_o\,
	combout => \inst|buffer1~45_combout\);

-- Location: FF_X39_Y23_N17
\inst|buffer1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~45_combout\,
	ena => \inst|buffer1[17]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(13));

-- Location: LCCOMB_X40_Y23_N6
\inst|buffer1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~31_combout\ = (!\inst|buffer1\(12) & (!\inst|counter\(1) & (!\inst|buffer1\(13) & !\inst|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(12),
	datab => \inst|counter\(1),
	datac => \inst|buffer1\(13),
	datad => \inst|counter\(2),
	combout => \inst|buffer1~31_combout\);

-- Location: LCCOMB_X37_Y23_N18
\inst|buffer1[17]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[17]~33_combout\ = (!\inst|buffer1~31_combout\) # (!\inst|buffer1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~32_combout\,
	datad => \inst|buffer1~31_combout\,
	combout => \inst|buffer1[17]~33_combout\);

-- Location: LCCOMB_X37_Y23_N4
\inst|buffer1[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[17]~34_combout\ = (!\inst1|OUTPUT\(0) & (!\inst1|OUTPUT\(3) & ((\inst|buffer1[17]~33_combout\) # (!\inst|buffer1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~30_combout\,
	datab => \inst1|OUTPUT\(0),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[17]~33_combout\,
	combout => \inst|buffer1[17]~34_combout\);

-- Location: LCCOMB_X37_Y23_N0
\inst|buffer1[17]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[17]~35_combout\ = (!\inst|buffer1[10]~9_combout\ & (((\inst|Equal0~0_combout\ & \inst|Equal5~7_combout\)) # (!\inst|buffer1[17]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|buffer1[10]~9_combout\,
	datac => \inst|buffer1[17]~34_combout\,
	datad => \inst|Equal5~7_combout\,
	combout => \inst|buffer1[17]~35_combout\);

-- Location: FF_X40_Y23_N17
\inst|buffer1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~36_combout\,
	ena => \inst|buffer1[17]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(22));

-- Location: FF_X40_Y24_N5
\inst|bufferout[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(23),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(23));

-- Location: LCCOMB_X40_Y24_N4
\inst2|buffer1[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(11) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(23)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(11),
	datac => \inst|bufferout\(23),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(11));

-- Location: LCCOMB_X40_Y24_N28
\inst2|bufferout[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(11) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(11))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(11),
	datac => \inst2|bufferout\(11),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(11));

-- Location: LCCOMB_X39_Y24_N12
\inst|buffer1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~8_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(11)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[11]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(11),
	combout => \inst|buffer1~8_combout\);

-- Location: FF_X41_Y24_N23
\inst|bufferout[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(22),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(22));

-- Location: LCCOMB_X41_Y24_N22
\inst2|buffer1[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(10) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(22)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(10),
	datac => \inst|bufferout\(22),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(10));

-- Location: LCCOMB_X41_Y24_N4
\inst2|bufferout[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(10) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(10))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(10),
	datac => \inst2|bufferout\(10),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(10));

-- Location: LCCOMB_X39_Y24_N14
\inst|buffer1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~16_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(10)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[10]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(10),
	combout => \inst|buffer1~16_combout\);

-- Location: FF_X39_Y24_N15
\inst|buffer1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~16_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[10]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(10));

-- Location: LCCOMB_X40_Y23_N26
\inst|buffer1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~11_combout\ = (\inst|buffer1\(10)) # ((\inst|buffer1\(11)) # ((\inst|counter\(2)) # (\inst|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(10),
	datab => \inst|buffer1\(11),
	datac => \inst|counter\(2),
	datad => \inst|counter\(1),
	combout => \inst|buffer1~11_combout\);

-- Location: FF_X41_Y24_N17
\inst|bufferout[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(18),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(18));

-- Location: LCCOMB_X41_Y24_N16
\inst2|buffer1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(6) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(18)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(6),
	datac => \inst|bufferout\(18),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(6));

-- Location: LCCOMB_X41_Y24_N14
\inst2|bufferout[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(6) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(6))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(6),
	datac => \inst2|bufferout\(6),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(6));

-- Location: LCCOMB_X39_Y24_N22
\inst|buffer1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~20_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(6)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[6]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(6),
	combout => \inst|buffer1~20_combout\);

-- Location: FF_X39_Y24_N23
\inst|buffer1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~20_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[10]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(6));

-- Location: FF_X41_Y24_N29
\inst|bufferout[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(21),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(21));

-- Location: LCCOMB_X41_Y24_N28
\inst2|buffer1[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(9) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(21)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(9),
	datac => \inst|bufferout\(21),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(9));

-- Location: LCCOMB_X41_Y24_N30
\inst2|bufferout[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(9) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(9))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(9),
	datac => \inst2|bufferout\(9),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(9));

-- Location: LCCOMB_X39_Y24_N24
\inst|buffer1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~17_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(9)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[9]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(9),
	combout => \inst|buffer1~17_combout\);

-- Location: FF_X39_Y24_N25
\inst|buffer1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~17_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[10]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(9));

-- Location: FF_X40_Y24_N3
\inst|bufferout[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(20),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(20));

-- Location: LCCOMB_X40_Y24_N2
\inst2|buffer1[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(8) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(20)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(8),
	datac => \inst|bufferout\(20),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(8));

-- Location: LCCOMB_X40_Y24_N22
\inst2|bufferout[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(8) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(8))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(8),
	datac => \inst2|bufferout\(8),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(8));

-- Location: LCCOMB_X39_Y24_N26
\inst|buffer1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~18_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(8)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[8]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(8),
	combout => \inst|buffer1~18_combout\);

-- Location: FF_X39_Y24_N27
\inst|buffer1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~18_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[10]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(8));

-- Location: FF_X41_Y24_N27
\inst|bufferout[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(19),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(19));

-- Location: LCCOMB_X41_Y24_N26
\inst2|buffer1[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(7) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(19)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(7),
	datac => \inst|bufferout\(19),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(7));

-- Location: LCCOMB_X41_Y24_N8
\inst2|bufferout[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(7) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(7))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(7),
	datac => \inst2|bufferout\(7),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(7));

-- Location: LCCOMB_X39_Y24_N16
\inst|buffer1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~19_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(7)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[7]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(7),
	combout => \inst|buffer1~19_combout\);

-- Location: FF_X39_Y24_N17
\inst|buffer1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~19_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[10]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(7));

-- Location: LCCOMB_X39_Y24_N2
\inst|buffer1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~12_combout\ = (\inst|buffer1\(6)) # ((\inst|buffer1\(9)) # ((\inst|buffer1\(8)) # (\inst|buffer1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(6),
	datab => \inst|buffer1\(9),
	datac => \inst|buffer1\(8),
	datad => \inst|buffer1\(7),
	combout => \inst|buffer1~12_combout\);

-- Location: FF_X38_Y24_N13
\inst|bufferout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(13),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(13));

-- Location: LCCOMB_X38_Y24_N12
\inst2|buffer1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(1) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(13)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(1),
	datac => \inst|bufferout\(13),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(1));

-- Location: LCCOMB_X38_Y24_N0
\inst2|bufferout[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(1) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(1)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(1),
	datab => \inst2|buffer1\(1),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(1));

-- Location: LCCOMB_X39_Y24_N8
\inst|buffer1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~25_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(1)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[1]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(1),
	combout => \inst|buffer1~25_combout\);

-- Location: FF_X39_Y24_N9
\inst|buffer1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~25_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[10]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(1));

-- Location: FF_X38_Y24_N19
\inst|bufferout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(12),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(12));

-- Location: LCCOMB_X38_Y24_N18
\inst2|buffer1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(0) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(12)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(0),
	datac => \inst|bufferout\(12),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(0));

-- Location: LCCOMB_X38_Y24_N4
\inst2|bufferout[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(0) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(0))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(0),
	datab => \inst2|bufferout\(0),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(0));

-- Location: LCCOMB_X39_Y24_N18
\inst|buffer1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~26_combout\ = (\inst1|OUTPUT\(3) & (\inst2|bufferout\(0))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|bufferout\(0),
	datac => \inst1|OUTPUT\(3),
	datad => \ADC_IN[0]~input_o\,
	combout => \inst|buffer1~26_combout\);

-- Location: FF_X39_Y24_N19
\inst|buffer1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~26_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[10]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(0));

-- Location: LCCOMB_X39_Y23_N10
\inst|buffer1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~14_combout\ = (\inst|buffer1\(1)) # ((\inst|buffer1\(0)) # (\inst|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buffer1\(1),
	datac => \inst|buffer1\(0),
	datad => \inst|counter\(0),
	combout => \inst|buffer1~14_combout\);

-- Location: FF_X38_Y24_N27
\inst|bufferout[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(16),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(16));

-- Location: LCCOMB_X38_Y24_N26
\inst2|buffer1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(4) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(16)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(4),
	datac => \inst|bufferout\(16),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(4));

-- Location: LCCOMB_X38_Y24_N22
\inst2|bufferout[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(4) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(4)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(4),
	datab => \inst2|buffer1\(4),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(4));

-- Location: LCCOMB_X39_Y24_N6
\inst|buffer1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~22_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(4)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[4]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(4),
	combout => \inst|buffer1~22_combout\);

-- Location: FF_X39_Y24_N7
\inst|buffer1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~22_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[10]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(4));

-- Location: FF_X41_Y24_N3
\inst|bufferout[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(17),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(17));

-- Location: LCCOMB_X41_Y24_N2
\inst2|buffer1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(5) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(17)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(5),
	datac => \inst|bufferout\(17),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(5));

-- Location: LCCOMB_X41_Y24_N24
\inst2|bufferout[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(5) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(5))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(5),
	datab => \inst2|bufferout\(5),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(5));

-- Location: LCCOMB_X39_Y24_N0
\inst|buffer1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~21_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(5)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[5]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(5),
	combout => \inst|buffer1~21_combout\);

-- Location: FF_X39_Y24_N1
\inst|buffer1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~21_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[10]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(5));

-- Location: FF_X38_Y24_N7
\inst|bufferout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(14),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(14));

-- Location: LCCOMB_X38_Y24_N6
\inst2|buffer1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(2) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(14)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(2),
	datac => \inst|bufferout\(14),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(2));

-- Location: LCCOMB_X38_Y24_N20
\inst2|bufferout[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(2) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(2)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(2),
	datab => \inst2|buffer1\(2),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(2));

-- Location: LCCOMB_X39_Y24_N30
\inst|buffer1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~24_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(2)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[2]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(2),
	combout => \inst|buffer1~24_combout\);

-- Location: FF_X39_Y24_N31
\inst|buffer1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~24_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[10]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(2));

-- Location: FF_X38_Y24_N25
\inst|bufferout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(15),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(15));

-- Location: LCCOMB_X38_Y24_N24
\inst2|buffer1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(3) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(15)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(3),
	datac => \inst|bufferout\(15),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(3));

-- Location: LCCOMB_X38_Y24_N30
\inst2|bufferout[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(3) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(3))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(3),
	datac => \inst2|bufferout\(3),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(3));

-- Location: LCCOMB_X39_Y24_N28
\inst|buffer1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~23_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(3)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[3]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(3),
	combout => \inst|buffer1~23_combout\);

-- Location: FF_X39_Y24_N29
\inst|buffer1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~23_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[10]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(3));

-- Location: LCCOMB_X39_Y24_N20
\inst|buffer1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~13_combout\ = (\inst|buffer1\(4)) # ((\inst|buffer1\(5)) # ((\inst|buffer1\(2)) # (\inst|buffer1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(4),
	datab => \inst|buffer1\(5),
	datac => \inst|buffer1\(2),
	datad => \inst|buffer1\(3),
	combout => \inst|buffer1~13_combout\);

-- Location: LCCOMB_X40_Y23_N20
\inst|buffer1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~15_combout\ = (\inst|buffer1~11_combout\) # ((\inst|buffer1~12_combout\) # ((\inst|buffer1~14_combout\) # (\inst|buffer1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~11_combout\,
	datab => \inst|buffer1~12_combout\,
	datac => \inst|buffer1~14_combout\,
	datad => \inst|buffer1~13_combout\,
	combout => \inst|buffer1~15_combout\);

-- Location: LCCOMB_X39_Y24_N10
\inst|buffer1[10]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[10]~89_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & ((\inst1|OUTPUT\(3)) # (!\inst|buffer1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst1|OUTPUT\(0),
	datac => \inst1|OUTPUT\(1),
	datad => \inst|buffer1~15_combout\,
	combout => \inst|buffer1[10]~89_combout\);

-- Location: FF_X39_Y24_N13
\inst|buffer1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~8_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[10]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(11));

-- Location: LCCOMB_X38_Y23_N26
\inst|Equal5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~6_combout\ = (\inst|buffer1\(22) & (\inst|buffer1\(10) & (\inst|buffer1\(23) $ (!\inst|buffer1\(11))))) # (!\inst|buffer1\(22) & (!\inst|buffer1\(10) & (\inst|buffer1\(23) $ (!\inst|buffer1\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(22),
	datab => \inst|buffer1\(23),
	datac => \inst|buffer1\(11),
	datad => \inst|buffer1\(10),
	combout => \inst|Equal5~6_combout\);

-- Location: LCCOMB_X38_Y23_N16
\inst|Equal5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~5_combout\ = (\inst|buffer1\(20) & (\inst|buffer1\(8) & (\inst|buffer1\(21) $ (!\inst|buffer1\(9))))) # (!\inst|buffer1\(20) & (!\inst|buffer1\(8) & (\inst|buffer1\(21) $ (!\inst|buffer1\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(20),
	datab => \inst|buffer1\(21),
	datac => \inst|buffer1\(8),
	datad => \inst|buffer1\(9),
	combout => \inst|Equal5~5_combout\);

-- Location: LCCOMB_X38_Y23_N22
\inst|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~1_combout\ = (\inst|buffer1\(14) & (\inst|buffer1\(2) & (\inst|buffer1\(15) $ (!\inst|buffer1\(3))))) # (!\inst|buffer1\(14) & (!\inst|buffer1\(2) & (\inst|buffer1\(15) $ (!\inst|buffer1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(14),
	datab => \inst|buffer1\(2),
	datac => \inst|buffer1\(15),
	datad => \inst|buffer1\(3),
	combout => \inst|Equal5~1_combout\);

-- Location: LCCOMB_X38_Y23_N8
\inst|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~2_combout\ = (\inst|buffer1\(5) & (\inst|buffer1\(17) & (\inst|buffer1\(16) $ (!\inst|buffer1\(4))))) # (!\inst|buffer1\(5) & (!\inst|buffer1\(17) & (\inst|buffer1\(16) $ (!\inst|buffer1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(5),
	datab => \inst|buffer1\(16),
	datac => \inst|buffer1\(17),
	datad => \inst|buffer1\(4),
	combout => \inst|Equal5~2_combout\);

-- Location: LCCOMB_X39_Y23_N8
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

-- Location: LCCOMB_X39_Y23_N18
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

-- Location: LCCOMB_X38_Y23_N2
\inst|Equal5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~4_combout\ = (\inst|Equal5~1_combout\ & (\inst|Equal5~2_combout\ & (\inst|Equal5~0_combout\ & \inst|Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~1_combout\,
	datab => \inst|Equal5~2_combout\,
	datac => \inst|Equal5~0_combout\,
	datad => \inst|Equal5~3_combout\,
	combout => \inst|Equal5~4_combout\);

-- Location: LCCOMB_X38_Y23_N18
\inst|Equal5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~7_combout\ = (\inst|Equal5~6_combout\ & (\inst|Equal5~5_combout\ & \inst|Equal5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~6_combout\,
	datab => \inst|Equal5~5_combout\,
	datad => \inst|Equal5~4_combout\,
	combout => \inst|Equal5~7_combout\);

-- Location: LCCOMB_X38_Y23_N12
\inst|buffer1[17]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[17]~27_combout\ = (\inst1|OUTPUT\(0)) # ((\inst|Equal0~0_combout\ & (!\inst1|OUTPUT\(3) & \inst|Equal5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst1|OUTPUT\(0),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|Equal5~7_combout\,
	combout => \inst|buffer1[17]~27_combout\);

-- Location: FF_X40_Y24_N31
\inst|bufferout[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(33),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(33));

-- Location: LCCOMB_X40_Y24_N30
\inst2|buffer1[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(21) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(33)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(21),
	datac => \inst|bufferout\(33),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(21));

-- Location: LCCOMB_X40_Y24_N26
\inst2|bufferout[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(21) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(21))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(21),
	datac => \inst2|bufferout\(21),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(21));

-- Location: LCCOMB_X39_Y23_N20
\inst|buffer1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~37_combout\ = (!\inst|buffer1[17]~27_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(21)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[9]~input_o\,
	datab => \inst|buffer1[17]~27_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(21),
	combout => \inst|buffer1~37_combout\);

-- Location: FF_X39_Y23_N21
\inst|buffer1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~37_combout\,
	ena => \inst|buffer1[17]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(21));

-- Location: LCCOMB_X44_Y23_N0
\inst|Equal9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~5_combout\ = (\inst|buffer1\(33) & (\inst|buffer1\(21) & (\inst|buffer1\(32) $ (!\inst|buffer1\(20))))) # (!\inst|buffer1\(33) & (!\inst|buffer1\(21) & (\inst|buffer1\(32) $ (!\inst|buffer1\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(33),
	datab => \inst|buffer1\(32),
	datac => \inst|buffer1\(21),
	datad => \inst|buffer1\(20),
	combout => \inst|Equal9~5_combout\);

-- Location: LCCOMB_X44_Y24_N8
\inst|Equal9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~6_combout\ = (\inst|buffer1\(22) & (\inst|buffer1\(34) & (\inst|buffer1\(23) $ (!\inst|buffer1\(35))))) # (!\inst|buffer1\(22) & (!\inst|buffer1\(34) & (\inst|buffer1\(23) $ (!\inst|buffer1\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(22),
	datab => \inst|buffer1\(34),
	datac => \inst|buffer1\(23),
	datad => \inst|buffer1\(35),
	combout => \inst|Equal9~6_combout\);

-- Location: LCCOMB_X44_Y24_N12
\inst|Equal9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~3_combout\ = (\inst|buffer1\(19) & (\inst|buffer1\(31) & (\inst|buffer1\(30) $ (!\inst|buffer1\(18))))) # (!\inst|buffer1\(19) & (!\inst|buffer1\(31) & (\inst|buffer1\(30) $ (!\inst|buffer1\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(19),
	datab => \inst|buffer1\(30),
	datac => \inst|buffer1\(31),
	datad => \inst|buffer1\(18),
	combout => \inst|Equal9~3_combout\);

-- Location: LCCOMB_X44_Y24_N24
\inst|Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~1_combout\ = (\inst|buffer1\(26) & (\inst|buffer1\(14) & (\inst|buffer1\(27) $ (!\inst|buffer1\(15))))) # (!\inst|buffer1\(26) & (!\inst|buffer1\(14) & (\inst|buffer1\(27) $ (!\inst|buffer1\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(26),
	datab => \inst|buffer1\(27),
	datac => \inst|buffer1\(15),
	datad => \inst|buffer1\(14),
	combout => \inst|Equal9~1_combout\);

-- Location: LCCOMB_X44_Y24_N14
\inst|Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~2_combout\ = (\inst|buffer1\(29) & (\inst|buffer1\(17) & (\inst|buffer1\(28) $ (!\inst|buffer1\(16))))) # (!\inst|buffer1\(29) & (!\inst|buffer1\(17) & (\inst|buffer1\(28) $ (!\inst|buffer1\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(29),
	datab => \inst|buffer1\(28),
	datac => \inst|buffer1\(17),
	datad => \inst|buffer1\(16),
	combout => \inst|Equal9~2_combout\);

-- Location: LCCOMB_X40_Y23_N18
\inst|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~0_combout\ = (\inst|buffer1\(13) & (\inst|buffer1\(25) & (\inst|buffer1\(12) $ (!\inst|buffer1\(24))))) # (!\inst|buffer1\(13) & (!\inst|buffer1\(25) & (\inst|buffer1\(12) $ (!\inst|buffer1\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(13),
	datab => \inst|buffer1\(12),
	datac => \inst|buffer1\(24),
	datad => \inst|buffer1\(25),
	combout => \inst|Equal9~0_combout\);

-- Location: LCCOMB_X44_Y24_N18
\inst|Equal9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~4_combout\ = (\inst|Equal9~3_combout\ & (\inst|Equal9~1_combout\ & (\inst|Equal9~2_combout\ & \inst|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal9~3_combout\,
	datab => \inst|Equal9~1_combout\,
	datac => \inst|Equal9~2_combout\,
	datad => \inst|Equal9~0_combout\,
	combout => \inst|Equal9~4_combout\);

-- Location: LCCOMB_X44_Y24_N26
\inst|Equal9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~7_combout\ = (\inst|Equal9~5_combout\ & (\inst|Equal9~6_combout\ & \inst|Equal9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal9~5_combout\,
	datac => \inst|Equal9~6_combout\,
	datad => \inst|Equal9~4_combout\,
	combout => \inst|Equal9~7_combout\);

-- Location: LCCOMB_X43_Y23_N28
\inst|buffer1[29]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[29]~47_combout\ = (\inst1|OUTPUT\(0)) # ((\inst|Equal0~1_combout\ & (!\inst1|OUTPUT\(3) & \inst|Equal9~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst1|OUTPUT\(3),
	datac => \inst1|OUTPUT\(0),
	datad => \inst|Equal9~7_combout\,
	combout => \inst|buffer1[29]~47_combout\);

-- Location: FF_X43_Y23_N31
\inst|bufferout[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(47),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(47));

-- Location: LCCOMB_X43_Y23_N30
\inst2|buffer1[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(35) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(47)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(35),
	datac => \inst|bufferout\(47),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(35));

-- Location: LCCOMB_X43_Y23_N8
\inst2|bufferout[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(35) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(35))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(35),
	datac => \inst2|bufferout\(35),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(35));

-- Location: LCCOMB_X43_Y23_N12
\inst|buffer1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~48_combout\ = (!\inst|buffer1[29]~47_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(35))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst|buffer1[29]~47_combout\,
	datac => \inst2|bufferout\(35),
	datad => \ADC_IN[11]~input_o\,
	combout => \inst|buffer1~48_combout\);

-- Location: FF_X43_Y23_N13
\inst|buffer1[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~48_combout\,
	ena => \inst|buffer1[29]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(35));

-- Location: LCCOMB_X44_Y23_N6
\inst|buffer1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~49_combout\ = (!\inst|buffer1\(33) & (!\inst|buffer1\(31) & (!\inst|buffer1\(32) & !\inst|buffer1\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(33),
	datab => \inst|buffer1\(31),
	datac => \inst|buffer1\(32),
	datad => \inst|buffer1\(30),
	combout => \inst|buffer1~49_combout\);

-- Location: LCCOMB_X44_Y23_N20
\inst|buffer1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~50_combout\ = (!\inst|buffer1\(35) & (\inst|counter\(0) & (!\inst|buffer1\(34) & \inst|buffer1~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(35),
	datab => \inst|counter\(0),
	datac => \inst|buffer1\(34),
	datad => \inst|buffer1~49_combout\,
	combout => \inst|buffer1~50_combout\);

-- Location: LCCOMB_X45_Y23_N18
\inst|buffer1~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~87_combout\ = (\inst|buffer1~52_combout\ & (\inst|buffer1~50_combout\ & \inst|buffer1~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~52_combout\,
	datab => \inst|buffer1~50_combout\,
	datad => \inst|buffer1~51_combout\,
	combout => \inst|buffer1~87_combout\);

-- Location: LCCOMB_X45_Y23_N0
\inst|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~0_combout\ = (\inst|buffer1~87_combout\) # ((\inst|buffer1~86_combout\) # ((\inst|Equal0~1_combout\ & !\inst|Equal9~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|buffer1~87_combout\,
	datac => \inst|buffer1~86_combout\,
	datad => \inst|Equal9~7_combout\,
	combout => \inst|counter~0_combout\);

-- Location: LCCOMB_X41_Y23_N12
\inst|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~1_combout\ = (\inst|counter\(0)) # ((!\inst|counter\(1) & !\inst|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(1),
	datac => \inst|counter\(2),
	datad => \inst|counter\(0),
	combout => \inst|counter~1_combout\);

-- Location: LCCOMB_X41_Y23_N14
\inst|buffer1~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~88_combout\ = (\inst|buffer1~32_combout\ & (\inst|buffer1~31_combout\ & \inst|buffer1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buffer1~32_combout\,
	datac => \inst|buffer1~31_combout\,
	datad => \inst|buffer1~30_combout\,
	combout => \inst|buffer1~88_combout\);

-- Location: LCCOMB_X41_Y23_N20
\inst|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~2_combout\ = (\inst|counter~1_combout\ & (\inst|buffer1~15_combout\ & (!\inst|buffer1~88_combout\ & !\inst|BufferCount~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~1_combout\,
	datab => \inst|buffer1~15_combout\,
	datac => \inst|buffer1~88_combout\,
	datad => \inst|BufferCount~2_combout\,
	combout => \inst|counter~2_combout\);

-- Location: LCCOMB_X45_Y23_N2
\inst|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~3_combout\ = (\inst|counter~2_combout\) # ((!\inst|counter\(0) & \inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datac => \inst|counter\(1),
	datad => \inst|counter~2_combout\,
	combout => \inst|counter~3_combout\);

-- Location: LCCOMB_X45_Y23_N16
\inst|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~4_combout\ = (\inst1|OUTPUT\(1) & ((\inst|counter~0_combout\) # ((\inst|counter\(2) & \inst|counter~3_combout\)))) # (!\inst1|OUTPUT\(1) & (((\inst|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst|counter~0_combout\,
	datac => \inst|counter\(2),
	datad => \inst|counter~3_combout\,
	combout => \inst|counter~4_combout\);

-- Location: FF_X45_Y23_N17
\inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter~4_combout\,
	sclr => \inst1|OUTPUT\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(2));

-- Location: LCCOMB_X45_Y23_N10
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|counter\(1) & (!\inst|counter\(0) & \inst|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datac => \inst|counter\(0),
	datad => \inst|counter\(2),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y23_N24
\inst|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~5_combout\ = (\inst|buffer1~88_combout\) # ((\inst|Equal0~2_combout\ & !\inst|Equal13~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datac => \inst|buffer1~88_combout\,
	datad => \inst|Equal13~7_combout\,
	combout => \inst|counter~5_combout\);

-- Location: LCCOMB_X45_Y23_N26
\inst|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~6_combout\ = (\inst|buffer1~86_combout\) # ((\inst|Equal0~0_combout\ & !\inst|Equal5~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~0_combout\,
	datac => \inst|buffer1~86_combout\,
	datad => \inst|Equal5~7_combout\,
	combout => \inst|counter~6_combout\);

-- Location: LCCOMB_X45_Y23_N8
\inst|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~7_combout\ = (\inst|counter~5_combout\) # ((\inst|counter~6_combout\) # ((\inst|Equal0~1_combout\ & \inst|Equal9~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|counter~5_combout\,
	datac => \inst|counter~6_combout\,
	datad => \inst|Equal9~7_combout\,
	combout => \inst|counter~7_combout\);

-- Location: LCCOMB_X45_Y23_N22
\inst|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~8_combout\ = (\inst1|OUTPUT\(1) & ((\inst|counter~7_combout\) # ((\inst|counter\(1) & \inst|counter~2_combout\)))) # (!\inst1|OUTPUT\(1) & (((\inst|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst|counter~7_combout\,
	datac => \inst|counter\(1),
	datad => \inst|counter~2_combout\,
	combout => \inst|counter~8_combout\);

-- Location: FF_X45_Y23_N23
\inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter~8_combout\,
	sclr => \inst1|OUTPUT\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(1));

-- Location: LCCOMB_X41_Y23_N26
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\inst|counter\(1) & (\inst|counter\(2) & \inst|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(1),
	datac => \inst|counter\(2),
	datad => \inst|counter\(0),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X41_Y23_N0
\inst|buffer10[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer10[11]~0_combout\ = (\inst1|OUTPUT\(1) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(1),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer10[11]~0_combout\);

-- Location: LCCOMB_X38_Y23_N30
\inst|BufferCount[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount[2]~0_combout\ = (\inst|Equal5~6_combout\ & \inst|Equal5~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~6_combout\,
	datad => \inst|Equal5~5_combout\,
	combout => \inst|BufferCount[2]~0_combout\);

-- Location: LCCOMB_X41_Y23_N8
\inst|BufferCount[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount[2]~1_combout\ = ((\inst|Equal0~0_combout\ & (\inst|BufferCount[2]~0_combout\ & \inst|Equal5~4_combout\))) # (!\inst|buffer1~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|BufferCount[2]~0_combout\,
	datac => \inst|Equal5~4_combout\,
	datad => \inst|buffer1~15_combout\,
	combout => \inst|BufferCount[2]~1_combout\);

-- Location: LCCOMB_X41_Y23_N22
\inst|BufferCount[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount[2]~3_combout\ = (\inst|buffer10[11]~0_combout\ & ((\inst|Equal0~3_combout\) # ((\inst|BufferCount[2]~1_combout\) # (\inst|BufferCount~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~3_combout\,
	datab => \inst|buffer10[11]~0_combout\,
	datac => \inst|BufferCount[2]~1_combout\,
	datad => \inst|BufferCount~2_combout\,
	combout => \inst|BufferCount[2]~3_combout\);

-- Location: FF_X41_Y23_N27
\inst|BufferCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Equal0~3_combout\,
	ena => \inst|BufferCount[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCount\(2));

-- Location: LCCOMB_X45_Y22_N10
\inst|BufferCheck[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCheck[2]~feeder_combout\ = \inst|BufferCount\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|BufferCount\(2),
	combout => \inst|BufferCheck[2]~feeder_combout\);

-- Location: FF_X45_Y22_N11
\inst|BufferCheck[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCheck[2]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCheck\(2));

-- Location: LCCOMB_X47_Y19_N30
\inst1|Current~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Current~0_combout\ = (\inst|BufferCheck\(2)) # ((\inst1|Equal2~0_combout\ & (!\inst1|Equal0~0_combout\ & \inst1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~0_combout\,
	datab => \inst1|Equal0~0_combout\,
	datac => \inst|BufferCheck\(2),
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|Current~0_combout\);

-- Location: FF_X47_Y19_N31
\inst1|Current[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Current~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Current\(2));

-- Location: LCCOMB_X47_Y19_N0
\inst1|SPACE_AVAILABLE~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~1_combout\ = (\inst1|Current\(2) & (\inst1|Current\(1) & ((!\inst1|LessThan0~0_combout\) # (!\inst1|SPACE_AVAILABLE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SPACE_AVAILABLE~0_combout\,
	datab => \inst1|LessThan0~0_combout\,
	datac => \inst1|Current\(2),
	datad => \inst1|Current\(1),
	combout => \inst1|SPACE_AVAILABLE~1_combout\);

-- Location: FF_X47_Y19_N1
\inst1|SPACE_AVAILABLE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|SPACE_AVAILABLE~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SPACE_AVAILABLE\(10));

-- Location: LCCOMB_X47_Y23_N24
\inst1|OUTPUT[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[2]~7_combout\ = (!\inst1|SPACE_AVAILABLE\(10) & (((\inst1|Equal0~0_combout\) # (\inst1|OUTPUT[6]~3_combout\)) # (!\inst1|OUTPUT~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT~13_combout\,
	datab => \inst1|Equal0~0_combout\,
	datac => \inst1|SPACE_AVAILABLE\(10),
	datad => \inst1|OUTPUT[6]~3_combout\,
	combout => \inst1|OUTPUT[2]~7_combout\);

-- Location: FF_X37_Y23_N19
\inst1|OUTPUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|OUTPUT~6_combout\,
	sload => VCC,
	ena => \inst1|OUTPUT[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTPUT\(3));

-- Location: LCCOMB_X38_Y23_N14
\inst|buffer1[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[10]~10_combout\ = (!\inst1|OUTPUT\(3) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(3),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[10]~10_combout\);

-- Location: LCCOMB_X37_Y23_N20
\inst|buffer1~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~80_combout\ = (\ADC_IN[5]~input_o\ & (\inst|buffer1[10]~10_combout\ & ((!\inst|Equal13~7_combout\) # (!\inst|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \ADC_IN[5]~input_o\,
	datac => \inst|buffer1[10]~10_combout\,
	datad => \inst|Equal13~7_combout\,
	combout => \inst|buffer1~80_combout\);

-- Location: FF_X37_Y23_N21
\inst|buffer1[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~80_combout\,
	ena => \inst|buffer1[42]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(41));

-- Location: LCCOMB_X36_Y23_N26
\inst|buffer1~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~71_combout\ = (!\inst|buffer1\(41) & (!\inst|buffer1\(39) & (!\inst|buffer1\(40) & !\inst|buffer1\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(41),
	datab => \inst|buffer1\(39),
	datac => \inst|buffer1\(40),
	datad => \inst|buffer1\(38),
	combout => \inst|buffer1~71_combout\);

-- Location: LCCOMB_X36_Y23_N16
\inst|buffer1~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~86_combout\ = (\inst|buffer1~71_combout\ & (\inst|buffer1~69_combout\ & \inst|buffer1~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~71_combout\,
	datab => \inst|buffer1~69_combout\,
	datad => \inst|buffer1~70_combout\,
	combout => \inst|buffer1~86_combout\);

-- Location: LCCOMB_X41_Y23_N6
\inst|counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~9_combout\ = (!\inst|buffer1~86_combout\ & (!\inst|buffer1~88_combout\ & !\inst|buffer1~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~86_combout\,
	datac => \inst|buffer1~88_combout\,
	datad => \inst|buffer1~87_combout\,
	combout => \inst|counter~9_combout\);

-- Location: LCCOMB_X41_Y23_N24
\inst|counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~10_combout\ = (\inst1|OUTPUT\(1) & (\inst|counter~9_combout\ & ((\inst|counter\(0)) # (!\inst|counter~2_combout\)))) # (!\inst1|OUTPUT\(1) & (((\inst|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~9_combout\,
	datab => \inst1|OUTPUT\(1),
	datac => \inst|counter\(0),
	datad => \inst|counter~2_combout\,
	combout => \inst|counter~10_combout\);

-- Location: FF_X41_Y23_N25
\inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter~10_combout\,
	sclr => \inst1|OUTPUT\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(0));

-- Location: LCCOMB_X41_Y23_N16
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|counter\(0) & (\inst|counter\(2) & \inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(0),
	datac => \inst|counter\(2),
	datad => \inst|counter\(1),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X37_Y23_N14
\inst|buffer1~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~81_combout\ = (\ADC_IN[4]~input_o\ & (\inst|buffer1[10]~10_combout\ & ((!\inst|Equal13~7_combout\) # (!\inst|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \ADC_IN[4]~input_o\,
	datac => \inst|buffer1[10]~10_combout\,
	datad => \inst|Equal13~7_combout\,
	combout => \inst|buffer1~81_combout\);

-- Location: FF_X37_Y23_N15
\inst|buffer1[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~81_combout\,
	ena => \inst|buffer1[42]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(40));

-- Location: FF_X44_Y26_N5
\inst|bufferout[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(40),
	sload => VCC,
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(40));

-- Location: LCCOMB_X44_Y26_N4
\inst2|buffer1[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(28) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(40)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(28),
	datac => \inst|bufferout\(40),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(28));

-- Location: LCCOMB_X44_Y26_N6
\inst2|bufferout[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(28) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(28)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(28),
	datab => \inst2|buffer1\(28),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(28));

-- Location: LCCOMB_X44_Y23_N10
\inst|buffer1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~62_combout\ = (!\inst|buffer1[29]~47_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(28))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(28),
	datab => \ADC_IN[4]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[29]~47_combout\,
	combout => \inst|buffer1~62_combout\);

-- Location: FF_X44_Y23_N11
\inst|buffer1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~62_combout\,
	ena => \inst|buffer1[29]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(28));

-- Location: LCCOMB_X41_Y23_N10
\inst|buffer1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~52_combout\ = (!\inst|buffer1\(28) & (!\inst|buffer1\(29) & (!\inst|buffer1\(27) & !\inst|buffer1\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(28),
	datab => \inst|buffer1\(29),
	datac => \inst|buffer1\(27),
	datad => \inst|buffer1\(26),
	combout => \inst|buffer1~52_combout\);

-- Location: LCCOMB_X41_Y23_N28
\inst|BufferCount~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~2_combout\ = (\inst|buffer1~86_combout\) # ((\inst|buffer1~52_combout\ & (\inst|buffer1~50_combout\ & \inst|buffer1~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~52_combout\,
	datab => \inst|buffer1~50_combout\,
	datac => \inst|buffer1~51_combout\,
	datad => \inst|buffer1~86_combout\,
	combout => \inst|BufferCount~2_combout\);

-- Location: FF_X41_Y23_N29
\inst|BufferCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCount~2_combout\,
	ena => \inst|BufferCount[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCount\(1));

-- Location: LCCOMB_X45_Y22_N24
\inst|BufferCheck[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCheck[1]~feeder_combout\ = \inst|BufferCount\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|BufferCount\(1),
	combout => \inst|BufferCheck[1]~feeder_combout\);

-- Location: FF_X45_Y22_N25
\inst|BufferCheck[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCheck[1]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCheck\(1));

-- Location: LCCOMB_X47_Y19_N12
\inst1|Current~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Current~1_combout\ = (\inst|BufferCheck\(1) & (((\inst1|Equal0~0_combout\) # (!\inst1|LessThan0~0_combout\)) # (!\inst1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~0_combout\,
	datab => \inst1|Equal0~0_combout\,
	datac => \inst|BufferCheck\(1),
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|Current~1_combout\);

-- Location: FF_X47_Y19_N13
\inst1|Current[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Current~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Current\(1));

-- Location: LCCOMB_X47_Y19_N20
\inst1|SPACE_AVAILABLE~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~3_combout\ = (\inst1|Current\(1) & ((\inst1|Equal0~0_combout\) # ((!\inst1|LessThan0~0_combout\) # (!\inst1|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Current\(1),
	datab => \inst1|Equal0~0_combout\,
	datac => \inst1|Equal2~0_combout\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|SPACE_AVAILABLE~3_combout\);

-- Location: FF_X47_Y19_N21
\inst1|SPACE_AVAILABLE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|SPACE_AVAILABLE~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SPACE_AVAILABLE\(1));

-- Location: LCCOMB_X41_Y23_N30
\inst|BufferCount~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~4_combout\ = (\inst|buffer1~86_combout\) # ((\inst|Equal0~0_combout\ & \inst|Equal5~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Equal5~7_combout\,
	datad => \inst|buffer1~86_combout\,
	combout => \inst|BufferCount~4_combout\);

-- Location: FF_X41_Y23_N31
\inst|BufferCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCount~4_combout\,
	ena => \inst|BufferCount[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCount\(0));

-- Location: FF_X41_Y22_N29
\inst|BufferCheck[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|BufferCount\(0),
	sload => VCC,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCheck\(0));

-- Location: LCCOMB_X47_Y19_N26
\inst1|Current~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Current~2_combout\ = (\inst|BufferCheck\(0)) # ((\inst1|Equal2~0_combout\ & (!\inst1|Equal0~0_combout\ & \inst1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~0_combout\,
	datab => \inst1|Equal0~0_combout\,
	datac => \inst|BufferCheck\(0),
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|Current~2_combout\);

-- Location: FF_X47_Y19_N27
\inst1|Current[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Current~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Current\(0));

-- Location: LCCOMB_X47_Y19_N22
\inst1|SPACE_AVAILABLE~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~4_combout\ = ((\inst1|Equal2~0_combout\ & (!\inst1|Equal0~0_combout\ & \inst1|LessThan0~0_combout\))) # (!\inst1|Current\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~0_combout\,
	datab => \inst1|Equal0~0_combout\,
	datac => \inst1|Current\(0),
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|SPACE_AVAILABLE~4_combout\);

-- Location: FF_X47_Y19_N23
\inst1|SPACE_AVAILABLE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|SPACE_AVAILABLE~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SPACE_AVAILABLE\(0));

-- Location: LCCOMB_X47_Y19_N24
\inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (!\inst1|SPACE_AVAILABLE\(10) & ((\inst1|SPACE_AVAILABLE\(2)) # ((\inst1|SPACE_AVAILABLE\(1)) # (\inst1|SPACE_AVAILABLE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SPACE_AVAILABLE\(2),
	datab => \inst1|SPACE_AVAILABLE\(1),
	datac => \inst1|SPACE_AVAILABLE\(0),
	datad => \inst1|SPACE_AVAILABLE\(10),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X47_Y19_N10
\inst1|SPACE_AVAILABLE~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~2_combout\ = (\inst1|SPACE_AVAILABLE~0_combout\ & ((\inst1|LessThan0~0_combout\) # (\inst1|Current\(2) $ (!\inst1|Current\(1))))) # (!\inst1|SPACE_AVAILABLE~0_combout\ & ((\inst1|Current\(2) $ (!\inst1|Current\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SPACE_AVAILABLE~0_combout\,
	datab => \inst1|LessThan0~0_combout\,
	datac => \inst1|Current\(2),
	datad => \inst1|Current\(1),
	combout => \inst1|SPACE_AVAILABLE~2_combout\);

-- Location: FF_X47_Y19_N11
\inst1|SPACE_AVAILABLE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|SPACE_AVAILABLE~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SPACE_AVAILABLE\(2));

-- Location: LCCOMB_X47_Y19_N4
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|SPACE_AVAILABLE\(2) & (!\inst1|SPACE_AVAILABLE\(1) & (!\inst1|SPACE_AVAILABLE\(0) & !\inst1|SPACE_AVAILABLE\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SPACE_AVAILABLE\(2),
	datab => \inst1|SPACE_AVAILABLE\(1),
	datac => \inst1|SPACE_AVAILABLE\(0),
	datad => \inst1|SPACE_AVAILABLE\(10),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y19_N6
\inst1|SPACE_AVAILABLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~0_combout\ = (\inst1|Equal2~0_combout\ & !\inst1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~0_combout\,
	datac => \inst1|Equal0~0_combout\,
	combout => \inst1|SPACE_AVAILABLE~0_combout\);

-- Location: LCCOMB_X47_Y19_N8
\inst1|OUTPUT[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[6]~4_combout\ = (!\inst1|Equal2~0_combout\ & (!\inst1|Equal0~0_combout\ & !\inst1|OUTPUT[6]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~0_combout\,
	datab => \inst1|Equal0~0_combout\,
	datad => \inst1|OUTPUT[6]~3_combout\,
	combout => \inst1|OUTPUT[6]~4_combout\);

-- Location: LCCOMB_X47_Y19_N2
\inst1|OUTPUT[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[6]~5_combout\ = (!\inst1|OUTPUT[6]~4_combout\ & (!\inst1|SPACE_AVAILABLE\(10) & ((\inst1|Equal0~0_combout\) # (!\inst1|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal1~2_combout\,
	datab => \inst1|Equal0~0_combout\,
	datac => \inst1|OUTPUT[6]~4_combout\,
	datad => \inst1|SPACE_AVAILABLE\(10),
	combout => \inst1|OUTPUT[6]~5_combout\);

-- Location: FF_X47_Y19_N7
\inst1|OUTPUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|SPACE_AVAILABLE~0_combout\,
	ena => \inst1|OUTPUT[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTPUT\(0));

-- Location: LCCOMB_X46_Y23_N30
\inst|ADC_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~0_combout\ = (!\inst1|OUTPUT\(0) & \inst|buffer1\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|OUTPUT\(0),
	datad => \inst|buffer1\(11),
	combout => \inst|ADC_out~0_combout\);

-- Location: LCCOMB_X46_Y23_N22
\inst|ADC_out[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[10]~1_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(2) & \inst1|OUTPUT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(0),
	datac => \inst1|OUTPUT\(2),
	datad => \inst1|OUTPUT\(1),
	combout => \inst|ADC_out[10]~1_combout\);

-- Location: FF_X46_Y23_N31
\inst|ADC_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~0_combout\,
	ena => \inst|ADC_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(11));

-- Location: LCCOMB_X46_Y23_N16
\inst|ADC_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~2_combout\ = (!\inst1|OUTPUT\(0) & \inst|buffer1\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|OUTPUT\(0),
	datad => \inst|buffer1\(10),
	combout => \inst|ADC_out~2_combout\);

-- Location: FF_X46_Y23_N17
\inst|ADC_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~2_combout\,
	ena => \inst|ADC_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(10));

-- Location: LCCOMB_X46_Y23_N0
\inst|ADC_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~3_combout\ = (!\inst1|OUTPUT\(0) & \inst|buffer1\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|OUTPUT\(0),
	datad => \inst|buffer1\(9),
	combout => \inst|ADC_out~3_combout\);

-- Location: FF_X46_Y23_N1
\inst|ADC_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~3_combout\,
	ena => \inst|ADC_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(9));

-- Location: LCCOMB_X46_Y23_N28
\inst|ADC_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~4_combout\ = (!\inst1|OUTPUT\(0) & \inst|buffer1\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|OUTPUT\(0),
	datad => \inst|buffer1\(8),
	combout => \inst|ADC_out~4_combout\);

-- Location: FF_X46_Y23_N29
\inst|ADC_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~4_combout\,
	ena => \inst|ADC_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(8));

-- Location: LCCOMB_X46_Y23_N26
\inst|ADC_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~5_combout\ = (!\inst1|OUTPUT\(0) & \inst|buffer1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|OUTPUT\(0),
	datad => \inst|buffer1\(7),
	combout => \inst|ADC_out~5_combout\);

-- Location: FF_X46_Y23_N27
\inst|ADC_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~5_combout\,
	ena => \inst|ADC_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(7));

-- Location: LCCOMB_X46_Y23_N12
\inst|ADC_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~6_combout\ = (!\inst1|OUTPUT\(0) & \inst|buffer1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(0),
	datac => \inst|buffer1\(6),
	combout => \inst|ADC_out~6_combout\);

-- Location: FF_X46_Y23_N13
\inst|ADC_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~6_combout\,
	ena => \inst|ADC_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(6));

-- Location: LCCOMB_X46_Y23_N4
\inst|ADC_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~7_combout\ = (!\inst1|OUTPUT\(0) & \inst|buffer1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|OUTPUT\(0),
	datad => \inst|buffer1\(5),
	combout => \inst|ADC_out~7_combout\);

-- Location: FF_X46_Y23_N5
\inst|ADC_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~7_combout\,
	ena => \inst|ADC_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(5));

-- Location: LCCOMB_X46_Y23_N14
\inst|ADC_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~8_combout\ = (!\inst1|OUTPUT\(0) & \inst|buffer1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(0),
	datac => \inst|buffer1\(4),
	combout => \inst|ADC_out~8_combout\);

-- Location: FF_X46_Y23_N15
\inst|ADC_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~8_combout\,
	ena => \inst|ADC_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(4));

-- Location: LCCOMB_X46_Y23_N10
\inst|ADC_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~9_combout\ = (\inst|buffer1\(3) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buffer1\(3),
	datac => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~9_combout\);

-- Location: FF_X46_Y23_N11
\inst|ADC_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~9_combout\,
	ena => \inst|ADC_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(3));

-- Location: LCCOMB_X46_Y23_N8
\inst|ADC_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~10_combout\ = (!\inst1|OUTPUT\(0) & \inst|buffer1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|OUTPUT\(0),
	datad => \inst|buffer1\(2),
	combout => \inst|ADC_out~10_combout\);

-- Location: FF_X46_Y23_N9
\inst|ADC_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~10_combout\,
	ena => \inst|ADC_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(2));

-- Location: LCCOMB_X46_Y23_N20
\inst|ADC_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~11_combout\ = (\inst|buffer1\(1) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(1),
	datac => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~11_combout\);

-- Location: FF_X46_Y23_N21
\inst|ADC_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~11_combout\,
	ena => \inst|ADC_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(1));

-- Location: LCCOMB_X46_Y23_N18
\inst|ADC_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~12_combout\ = (!\inst1|OUTPUT\(0) & \inst|buffer1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|OUTPUT\(0),
	datad => \inst|buffer1\(0),
	combout => \inst|ADC_out~12_combout\);

-- Location: FF_X46_Y23_N19
\inst|ADC_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~12_combout\,
	ena => \inst|ADC_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(0));

-- Location: LCCOMB_X38_Y24_N28
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

-- Location: FF_X38_Y24_N29
\inst|buffer10[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[11]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(11));

-- Location: LCCOMB_X38_Y24_N10
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

-- Location: FF_X38_Y24_N11
\inst|buffer10[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[10]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(10));

-- Location: LCCOMB_X44_Y26_N24
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

-- Location: FF_X44_Y26_N25
\inst|buffer10[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[9]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(9));

-- Location: FF_X38_Y24_N5
\inst|buffer10[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(8),
	sload => VCC,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(8));

-- Location: LCCOMB_X44_Y26_N30
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

-- Location: FF_X44_Y26_N31
\inst|buffer10[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[7]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(7));

-- Location: LCCOMB_X45_Y22_N16
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

-- Location: FF_X45_Y22_N17
\inst|buffer10[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[6]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(6));

-- Location: LCCOMB_X39_Y24_N4
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

-- Location: FF_X39_Y24_N5
\inst|buffer10[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[5]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(5));

-- Location: FF_X38_Y24_N23
\inst|buffer10[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(4),
	sload => VCC,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(4));

-- Location: LCCOMB_X45_Y22_N26
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

-- Location: FF_X45_Y22_N27
\inst|buffer10[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[3]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(3));

-- Location: FF_X38_Y23_N21
\inst|buffer10[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(2),
	sload => VCC,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(2));

-- Location: FF_X38_Y23_N15
\inst|buffer10[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(1),
	sload => VCC,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(1));

-- Location: LCCOMB_X45_Y22_N12
\inst|buffer10[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer10[0]~feeder_combout\ = \inst|buffer1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(0),
	combout => \inst|buffer10[0]~feeder_combout\);

-- Location: FF_X45_Y22_N13
\inst|buffer10[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer10[0]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(0));

-- Location: LCCOMB_X40_Y24_N20
\inst|buffer20[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer20[11]~feeder_combout\ = \inst|buffer1\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(23),
	combout => \inst|buffer20[11]~feeder_combout\);

-- Location: FF_X40_Y24_N21
\inst|buffer20[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[11]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(11));

-- Location: FF_X38_Y24_N21
\inst|buffer20[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(22),
	sload => VCC,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(10));

-- Location: FF_X36_Y23_N21
\inst|buffer20[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(21),
	sload => VCC,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(9));

-- Location: LCCOMB_X38_Y23_N4
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

-- Location: FF_X38_Y23_N5
\inst|buffer20[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[8]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(8));

-- Location: FF_X41_Y24_N21
\inst|buffer20[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(19),
	sload => VCC,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(7));

-- Location: FF_X38_Y23_N19
\inst|buffer20[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(18),
	sload => VCC,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(6));

-- Location: FF_X38_Y23_N9
\inst|buffer20[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(17),
	sload => VCC,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(5));

-- Location: LCCOMB_X45_Y26_N8
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

-- Location: FF_X45_Y26_N9
\inst|buffer20[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[4]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(4));

-- Location: FF_X38_Y23_N23
\inst|buffer20[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(15),
	sload => VCC,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(3));

-- Location: FF_X36_Y23_N7
\inst|buffer20[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(14),
	sload => VCC,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(2));

-- Location: LCCOMB_X38_Y23_N24
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

-- Location: FF_X38_Y23_N25
\inst|buffer20[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer20[1]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(1));

-- Location: FF_X38_Y24_N15
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
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(0));

-- Location: LCCOMB_X44_Y24_N28
\inst|buffer30[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[11]~feeder_combout\ = \inst|buffer1\(35)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(35),
	combout => \inst|buffer30[11]~feeder_combout\);

-- Location: FF_X44_Y24_N29
\inst|buffer30[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[11]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(11));

-- Location: LCCOMB_X40_Y24_N14
\inst|buffer30[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[10]~feeder_combout\ = \inst|buffer1\(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(34),
	combout => \inst|buffer30[10]~feeder_combout\);

-- Location: FF_X40_Y24_N15
\inst|buffer30[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[10]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(10));

-- Location: LCCOMB_X40_Y24_N24
\inst|buffer30[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[9]~feeder_combout\ = \inst|buffer1\(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(33),
	combout => \inst|buffer30[9]~feeder_combout\);

-- Location: FF_X40_Y24_N25
\inst|buffer30[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[9]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(9));

-- Location: LCCOMB_X38_Y22_N0
\inst|buffer30[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[8]~feeder_combout\ = \inst|buffer1\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(32),
	combout => \inst|buffer30[8]~feeder_combout\);

-- Location: FF_X38_Y22_N1
\inst|buffer30[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[8]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(8));

-- Location: LCCOMB_X41_Y26_N24
\inst|buffer30[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer30[7]~feeder_combout\ = \inst|buffer1\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(31),
	combout => \inst|buffer30[7]~feeder_combout\);

-- Location: FF_X41_Y26_N25
\inst|buffer30[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[7]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(7));

-- Location: LCCOMB_X44_Y24_N22
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

-- Location: FF_X44_Y24_N23
\inst|buffer30[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[6]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(6));

-- Location: LCCOMB_X40_Y24_N10
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

-- Location: FF_X40_Y24_N11
\inst|buffer30[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[5]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(5));

-- Location: FF_X45_Y26_N11
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
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(4));

-- Location: FF_X40_Y24_N13
\inst|buffer30[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(27),
	sload => VCC,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(3));

-- Location: LCCOMB_X40_Y24_N18
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

-- Location: FF_X40_Y24_N19
\inst|buffer30[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer30[2]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(2));

-- Location: FF_X38_Y23_N31
\inst|buffer30[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(25),
	sload => VCC,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(1));

-- Location: FF_X43_Y22_N25
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
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(0));

-- Location: LCCOMB_X45_Y22_N2
\inst|buffer40[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer40[11]~feeder_combout\ = \inst|buffer1\(47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(47),
	combout => \inst|buffer40[11]~feeder_combout\);

-- Location: FF_X45_Y22_N3
\inst|buffer40[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer40[11]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(11));

-- Location: LCCOMB_X39_Y22_N20
\inst|buffer40[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer40[10]~feeder_combout\ = \inst|buffer1\(46)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(46),
	combout => \inst|buffer40[10]~feeder_combout\);

-- Location: FF_X39_Y22_N21
\inst|buffer40[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer40[10]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(10));

-- Location: FF_X36_Y23_N17
\inst|buffer40[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(45),
	sload => VCC,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(9));

-- Location: FF_X36_Y23_N11
\inst|buffer40[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(44),
	sload => VCC,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(8));

-- Location: LCCOMB_X36_Y23_N24
\inst|buffer40[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer40[7]~feeder_combout\ = \inst|buffer1\(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(43),
	combout => \inst|buffer40[7]~feeder_combout\);

-- Location: FF_X36_Y23_N25
\inst|buffer40[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer40[7]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(7));

-- Location: FF_X36_Y23_N15
\inst|buffer40[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(42),
	sload => VCC,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(6));

-- Location: FF_X36_Y23_N1
\inst|buffer40[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(41),
	sload => VCC,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(5));

-- Location: FF_X36_Y23_N27
\inst|buffer40[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(40),
	sload => VCC,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(4));

-- Location: LCCOMB_X44_Y26_N12
\inst|buffer40[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer40[3]~feeder_combout\ = \inst|buffer1\(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(39),
	combout => \inst|buffer40[3]~feeder_combout\);

-- Location: FF_X44_Y26_N13
\inst|buffer40[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer40[3]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(3));

-- Location: FF_X38_Y24_N1
\inst|buffer40[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(38),
	sload => VCC,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(2));

-- Location: LCCOMB_X45_Y22_N28
\inst|buffer40[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer40[1]~feeder_combout\ = \inst|buffer1\(37)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(37),
	combout => \inst|buffer40[1]~feeder_combout\);

-- Location: FF_X45_Y22_N29
\inst|buffer40[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer40[1]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(1));

-- Location: FF_X36_Y23_N13
\inst|buffer40[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(36),
	sload => VCC,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(0));

-- Location: LCCOMB_X38_Y22_N18
\inst|clock_counter[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clock_counter[2]~feeder_combout\ = \inst|counter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|counter\(2),
	combout => \inst|clock_counter[2]~feeder_combout\);

-- Location: FF_X38_Y22_N19
\inst|clock_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|clock_counter[2]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(2));

-- Location: LCCOMB_X43_Y22_N2
\inst|clock_counter[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clock_counter[1]~feeder_combout\ = \inst|counter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|counter\(1),
	combout => \inst|clock_counter[1]~feeder_combout\);

-- Location: FF_X43_Y22_N3
\inst|clock_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|clock_counter[1]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(1));

-- Location: LCCOMB_X38_Y23_N0
\inst|clock_counter[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clock_counter[0]~feeder_combout\ = \inst|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|counter\(0),
	combout => \inst|clock_counter[0]~feeder_combout\);

-- Location: FF_X38_Y23_N1
\inst|clock_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|clock_counter[0]~feeder_combout\,
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(0));

-- Location: LCCOMB_X47_Y19_N28
\inst1|BUFFER_READ[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|BUFFER_READ[3]~feeder_combout\ = \inst1|SPACE_AVAILABLE\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SPACE_AVAILABLE\(10),
	combout => \inst1|BUFFER_READ[3]~feeder_combout\);

-- Location: FF_X47_Y19_N29
\inst1|BUFFER_READ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|BUFFER_READ[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BUFFER_READ\(3));

-- Location: LCCOMB_X47_Y19_N14
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

-- Location: FF_X47_Y19_N15
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

-- Location: LCCOMB_X47_Y19_N16
\inst1|BUFFER_READ[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|BUFFER_READ[1]~feeder_combout\ = \inst1|SPACE_AVAILABLE\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SPACE_AVAILABLE\(1),
	combout => \inst1|BUFFER_READ[1]~feeder_combout\);

-- Location: FF_X47_Y19_N17
\inst1|BUFFER_READ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|BUFFER_READ[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BUFFER_READ\(1));

-- Location: FF_X47_Y19_N19
\inst1|BUFFER_READ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|SPACE_AVAILABLE\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BUFFER_READ\(0));

-- Location: LCCOMB_X41_Y23_N4
\inst|AVAILABLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|AVAILABLE~0_combout\ = (\inst|BufferCount\(1)) # ((\inst|BufferCount\(0)) # (\inst|BufferCount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BufferCount\(1),
	datac => \inst|BufferCount\(0),
	datad => \inst|BufferCount\(2),
	combout => \inst|AVAILABLE~0_combout\);

-- Location: FF_X41_Y23_N5
\inst|AVAILABLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|AVAILABLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|AVAILABLE~q\);

-- Location: LCCOMB_X41_Y23_N18
\inst1|OUTPUT[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[7]~feeder_combout\ = \inst|AVAILABLE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|AVAILABLE~q\,
	combout => \inst1|OUTPUT[7]~feeder_combout\);

-- Location: FF_X41_Y23_N19
\inst1|OUTPUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|OUTPUT[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTPUT\(7));

-- Location: FF_X47_Y19_N9
\inst1|OUTPUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|Equal0~0_combout\,
	sload => VCC,
	ena => \inst1|OUTPUT[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTPUT\(6));

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

ww_Clock_Shift(3) <= \Clock_Shift[3]~output_o\;

ww_Clock_Shift(2) <= \Clock_Shift[2]~output_o\;

ww_Clock_Shift(1) <= \Clock_Shift[1]~output_o\;

ww_Clock_Shift(0) <= \Clock_Shift[0]~output_o\;

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


