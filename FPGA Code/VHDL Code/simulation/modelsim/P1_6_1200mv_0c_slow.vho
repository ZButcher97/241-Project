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

-- DATE "05/16/2018 16:21:02"

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
	MASK : OUT std_logic_vector(3 DOWNTO 0);
	OUT2MCU : OUT std_logic_vector(3 DOWNTO 0);
	OUTPUTCHECK : OUT std_logic_vector(7 DOWNTO 0)
	);
END P1;

-- Design Ports Information
-- ADC_OUT[11]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[10]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[9]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[8]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[7]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[5]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[4]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MASK[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MASK[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MASK[1]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MASK[0]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2MCU[3]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2MCU[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2MCU[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2MCU[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[5]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[4]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[2]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[1]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[7]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[4]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[2]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[0]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[11]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[10]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[9]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[8]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[6]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[5]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_MASK : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \MASK[3]~output_o\ : std_logic;
SIGNAL \MASK[2]~output_o\ : std_logic;
SIGNAL \MASK[1]~output_o\ : std_logic;
SIGNAL \MASK[0]~output_o\ : std_logic;
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
SIGNAL \MCU_IN[3]~input_o\ : std_logic;
SIGNAL \MCU_IN[4]~input_o\ : std_logic;
SIGNAL \MCU_IN[7]~input_o\ : std_logic;
SIGNAL \MCU_IN[5]~input_o\ : std_logic;
SIGNAL \MCU_IN[6]~input_o\ : std_logic;
SIGNAL \inst1|Equal5~0_combout\ : std_logic;
SIGNAL \inst1|Equal1~2_combout\ : std_logic;
SIGNAL \MCU_IN[0]~input_o\ : std_logic;
SIGNAL \MCU_IN[2]~input_o\ : std_logic;
SIGNAL \MCU_IN[1]~input_o\ : std_logic;
SIGNAL \inst1|OUTPUT~9_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~6_combout\ : std_logic;
SIGNAL \inst1|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~7_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~15_combout\ : std_logic;
SIGNAL \inst1|Equal2~0_combout\ : std_logic;
SIGNAL \ADC_IN[7]~input_o\ : std_logic;
SIGNAL \ADC_IN[10]~input_o\ : std_logic;
SIGNAL \inst|Equal44~4_combout\ : std_logic;
SIGNAL \inst|buffer1[137]~195_combout\ : std_logic;
SIGNAL \inst|buffer1~208_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[0]~16_combout\ : std_logic;
SIGNAL \inst1|Equal1~1_combout\ : std_logic;
SIGNAL \inst1|Latch~2_combout\ : std_logic;
SIGNAL \inst1|Latch~3_combout\ : std_logic;
SIGNAL \inst1|Latch~q\ : std_logic;
SIGNAL \inst1|OUTPUT[1]~11_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[1]~12_combout\ : std_logic;
SIGNAL \inst|buffer1[137]~197_combout\ : std_logic;
SIGNAL \inst1|Equal4~0_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[2]~feeder_combout\ : std_logic;
SIGNAL \inst|bufferout[23]~1_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[2]~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|OUTPUT[3]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|buffer1~194_combout\ : std_logic;
SIGNAL \inst|Equal8~1_combout\ : std_logic;
SIGNAL \ADC_IN[9]~input_o\ : std_logic;
SIGNAL \inst|buffer1~206_combout\ : std_logic;
SIGNAL \inst|buffer1~192_combout\ : std_logic;
SIGNAL \inst|buffer1~177_combout\ : std_logic;
SIGNAL \ADC_IN[8]~input_o\ : std_logic;
SIGNAL \inst|buffer1~176_combout\ : std_logic;
SIGNAL \inst|Equal35~2_combout\ : std_logic;
SIGNAL \ADC_IN[3]~input_o\ : std_logic;
SIGNAL \inst|buffer1~200_combout\ : std_logic;
SIGNAL \inst|buffer1~186_combout\ : std_logic;
SIGNAL \inst|buffer1~171_combout\ : std_logic;
SIGNAL \ADC_IN[2]~input_o\ : std_logic;
SIGNAL \inst|buffer1~199_combout\ : std_logic;
SIGNAL \inst|buffer1~185_combout\ : std_logic;
SIGNAL \inst|buffer1~170_combout\ : std_logic;
SIGNAL \ADC_IN[1]~input_o\ : std_logic;
SIGNAL \inst|buffer1~198_combout\ : std_logic;
SIGNAL \inst|buffer1~184_combout\ : std_logic;
SIGNAL \inst|buffer1~169_combout\ : std_logic;
SIGNAL \ADC_IN[0]~input_o\ : std_logic;
SIGNAL \inst|buffer1~196_combout\ : std_logic;
SIGNAL \inst|buffer1~181_combout\ : std_logic;
SIGNAL \inst|buffer1~166_combout\ : std_logic;
SIGNAL \inst|Equal35~0_combout\ : std_logic;
SIGNAL \ADC_IN[5]~input_o\ : std_logic;
SIGNAL \inst|buffer1~202_combout\ : std_logic;
SIGNAL \inst|buffer1~188_combout\ : std_logic;
SIGNAL \inst|buffer1~173_combout\ : std_logic;
SIGNAL \ADC_IN[4]~input_o\ : std_logic;
SIGNAL \inst|buffer1~201_combout\ : std_logic;
SIGNAL \inst|buffer1~187_combout\ : std_logic;
SIGNAL \inst|buffer1~172_combout\ : std_logic;
SIGNAL \ADC_IN[6]~input_o\ : std_logic;
SIGNAL \inst|buffer1~203_combout\ : std_logic;
SIGNAL \inst|buffer1~189_combout\ : std_logic;
SIGNAL \inst|buffer1~174_combout\ : std_logic;
SIGNAL \inst|buffer1~204_combout\ : std_logic;
SIGNAL \inst|buffer1~190_combout\ : std_logic;
SIGNAL \inst|buffer1~175_combout\ : std_logic;
SIGNAL \inst|Equal35~1_combout\ : std_logic;
SIGNAL \inst|buffer1~29_combout\ : std_logic;
SIGNAL \inst|buffer1~30_combout\ : std_logic;
SIGNAL \inst|buffer1[108]~167_combout\ : std_logic;
SIGNAL \inst|buffer1[108]~168_combout\ : std_logic;
SIGNAL \inst|Equal41~5_combout\ : std_logic;
SIGNAL \inst|Equal41~1_combout\ : std_logic;
SIGNAL \inst|Equal41~0_combout\ : std_logic;
SIGNAL \inst|Equal41~3_combout\ : std_logic;
SIGNAL \inst|Equal41~2_combout\ : std_logic;
SIGNAL \inst|Equal41~4_combout\ : std_logic;
SIGNAL \inst|buffer1~207_combout\ : std_logic;
SIGNAL \inst|buffer1~193_combout\ : std_logic;
SIGNAL \inst|Equal41~6_combout\ : std_logic;
SIGNAL \inst|Equal41~7_combout\ : std_logic;
SIGNAL \inst|buffer1[131]~182_combout\ : std_logic;
SIGNAL \inst|Equal39~0_combout\ : std_logic;
SIGNAL \inst|Equal39~1_combout\ : std_logic;
SIGNAL \inst|Equal39~2_combout\ : std_logic;
SIGNAL \inst|buffer1~32_combout\ : std_logic;
SIGNAL \inst|buffer1~33_combout\ : std_logic;
SIGNAL \inst|buffer1[131]~183_combout\ : std_logic;
SIGNAL \inst|buffer1~179_combout\ : std_logic;
SIGNAL \inst|buffer1~70_combout\ : std_logic;
SIGNAL \inst|Equal16~0_combout\ : std_logic;
SIGNAL \inst|counter[0]~6_combout\ : std_logic;
SIGNAL \inst|Equal4~0_combout\ : std_logic;
SIGNAL \inst|counter[0]~13_combout\ : std_logic;
SIGNAL \inst|counter[0]~14_combout\ : std_logic;
SIGNAL \inst|counter~5_combout\ : std_logic;
SIGNAL \inst|counter[0]~62_combout\ : std_logic;
SIGNAL \inst|Equal16~1_combout\ : std_logic;
SIGNAL \inst|Equal8~0_combout\ : std_logic;
SIGNAL \inst|buffer1~61_combout\ : std_logic;
SIGNAL \inst|buffer1~155_combout\ : std_logic;
SIGNAL \inst|buffer1~67_combout\ : std_logic;
SIGNAL \inst|buffer1~161_combout\ : std_logic;
SIGNAL \inst|buffer1~162_combout\ : std_logic;
SIGNAL \inst|Equal27~2_combout\ : std_logic;
SIGNAL \inst|buffer1~62_combout\ : std_logic;
SIGNAL \inst|buffer1~154_combout\ : std_logic;
SIGNAL \inst|buffer1~60_combout\ : std_logic;
SIGNAL \inst|buffer1~150_combout\ : std_logic;
SIGNAL \inst|buffer1~57_combout\ : std_logic;
SIGNAL \inst|buffer1~153_combout\ : std_logic;
SIGNAL \inst|Equal27~0_combout\ : std_logic;
SIGNAL \inst|buffer1~158_combout\ : std_logic;
SIGNAL \inst|buffer1~64_combout\ : std_logic;
SIGNAL \inst|buffer1~156_combout\ : std_logic;
SIGNAL \inst|buffer1~63_combout\ : std_logic;
SIGNAL \inst|buffer1~157_combout\ : std_logic;
SIGNAL \inst|buffer1~65_combout\ : std_logic;
SIGNAL \inst|buffer1~159_combout\ : std_logic;
SIGNAL \inst|Equal27~1_combout\ : std_logic;
SIGNAL \inst|Equal27~3_combout\ : std_logic;
SIGNAL \inst|buffer1~38_combout\ : std_logic;
SIGNAL \inst|buffer1[84]~151_combout\ : std_logic;
SIGNAL \inst|buffer1[84]~152_combout\ : std_logic;
SIGNAL \inst|buffer1~46_combout\ : std_logic;
SIGNAL \inst|buffer1~53_combout\ : std_logic;
SIGNAL \inst|buffer1~52_combout\ : std_logic;
SIGNAL \inst|Equal23~2_combout\ : std_logic;
SIGNAL \inst|buffer1~51_combout\ : std_logic;
SIGNAL \inst|buffer1~49_combout\ : std_logic;
SIGNAL \inst|buffer1~50_combout\ : std_logic;
SIGNAL \inst|buffer1~48_combout\ : std_logic;
SIGNAL \inst|Equal23~1_combout\ : std_logic;
SIGNAL \inst|buffer1~45_combout\ : std_logic;
SIGNAL \inst|buffer1~42_combout\ : std_logic;
SIGNAL \inst|buffer1~47_combout\ : std_logic;
SIGNAL \inst|Equal23~0_combout\ : std_logic;
SIGNAL \inst|Equal23~3_combout\ : std_logic;
SIGNAL \inst|buffer1~19_combout\ : std_logic;
SIGNAL \inst|buffer1[72]~43_combout\ : std_logic;
SIGNAL \inst|buffer1[72]~44_combout\ : std_logic;
SIGNAL \inst|buffer1~147_combout\ : std_logic;
SIGNAL \inst|buffer1~144_combout\ : std_logic;
SIGNAL \inst|buffer1~145_combout\ : std_logic;
SIGNAL \inst|Equal19~2_combout\ : std_logic;
SIGNAL \inst|buffer1~26_combout\ : std_logic;
SIGNAL \inst|buffer1~139_combout\ : std_logic;
SIGNAL \inst|buffer1~137_combout\ : std_logic;
SIGNAL \inst|buffer1~134_combout\ : std_logic;
SIGNAL \inst|Equal19~0_combout\ : std_logic;
SIGNAL \inst|buffer1~140_combout\ : std_logic;
SIGNAL \inst|buffer1~141_combout\ : std_logic;
SIGNAL \inst|buffer1~142_combout\ : std_logic;
SIGNAL \inst|buffer1~143_combout\ : std_logic;
SIGNAL \inst|Equal19~1_combout\ : std_logic;
SIGNAL \inst|buffer1~27_combout\ : std_logic;
SIGNAL \inst|buffer1[60]~135_combout\ : std_logic;
SIGNAL \inst|buffer1[60]~136_combout\ : std_logic;
SIGNAL \inst|buffer1~85_combout\ : std_logic;
SIGNAL \inst|buffer1[48]~73_combout\ : std_logic;
SIGNAL \inst|buffer1[48]~74_combout\ : std_logic;
SIGNAL \inst|buffer1~84_combout\ : std_logic;
SIGNAL \inst|Equal21~6_combout\ : std_logic;
SIGNAL \inst|Equal20~0_combout\ : std_logic;
SIGNAL \inst|buffer1~83_combout\ : std_logic;
SIGNAL \inst|buffer1~82_combout\ : std_logic;
SIGNAL \inst|Equal21~5_combout\ : std_logic;
SIGNAL \inst|buffer1~78_combout\ : std_logic;
SIGNAL \inst|buffer1~79_combout\ : std_logic;
SIGNAL \inst|Equal21~2_combout\ : std_logic;
SIGNAL \inst|Equal21~1_combout\ : std_logic;
SIGNAL \inst|buffer1~80_combout\ : std_logic;
SIGNAL \inst|buffer1~81_combout\ : std_logic;
SIGNAL \inst|Equal21~3_combout\ : std_logic;
SIGNAL \inst|buffer1~75_combout\ : std_logic;
SIGNAL \inst|buffer1~72_combout\ : std_logic;
SIGNAL \inst|Equal21~0_combout\ : std_logic;
SIGNAL \inst|Equal21~4_combout\ : std_logic;
SIGNAL \inst|buffer1[60]~132_combout\ : std_logic;
SIGNAL \inst|buffer1[60]~133_combout\ : std_logic;
SIGNAL \inst|buffer1~138_combout\ : std_logic;
SIGNAL \inst|buffer1~76_combout\ : std_logic;
SIGNAL \inst|buffer1~122_combout\ : std_logic;
SIGNAL \inst|buffer1[39]~119_combout\ : std_logic;
SIGNAL \inst|buffer1[39]~120_combout\ : std_logic;
SIGNAL \inst|buffer1~91_combout\ : std_logic;
SIGNAL \inst|buffer1~20_combout\ : std_logic;
SIGNAL \inst|buffer1~123_combout\ : std_logic;
SIGNAL \inst|buffer1~92_combout\ : std_logic;
SIGNAL \inst|buffer1~121_combout\ : std_logic;
SIGNAL \inst|buffer1~90_combout\ : std_logic;
SIGNAL \inst|buffer1~118_combout\ : std_logic;
SIGNAL \inst|buffer1~87_combout\ : std_logic;
SIGNAL \inst|Equal7~0_combout\ : std_logic;
SIGNAL \inst|buffer1~125_combout\ : std_logic;
SIGNAL \inst|buffer1~94_combout\ : std_logic;
SIGNAL \inst|buffer1~126_combout\ : std_logic;
SIGNAL \inst|buffer1~95_combout\ : std_logic;
SIGNAL \inst|buffer1~127_combout\ : std_logic;
SIGNAL \inst|buffer1~96_combout\ : std_logic;
SIGNAL \inst|buffer1~124_combout\ : std_logic;
SIGNAL \inst|buffer1~93_combout\ : std_logic;
SIGNAL \inst|Equal7~1_combout\ : std_logic;
SIGNAL \inst|buffer1~130_combout\ : std_logic;
SIGNAL \inst|buffer1~99_combout\ : std_logic;
SIGNAL \inst|buffer1~131_combout\ : std_logic;
SIGNAL \inst|buffer1~100_combout\ : std_logic;
SIGNAL \inst|buffer1~128_combout\ : std_logic;
SIGNAL \inst|buffer1~97_combout\ : std_logic;
SIGNAL \inst|Equal7~2_combout\ : std_logic;
SIGNAL \inst|Equal7~3_combout\ : std_logic;
SIGNAL \inst|buffer1~22_combout\ : std_logic;
SIGNAL \inst|buffer1[31]~88_combout\ : std_logic;
SIGNAL \inst|buffer1[31]~89_combout\ : std_logic;
SIGNAL \inst|buffer1~112_combout\ : std_logic;
SIGNAL \inst|buffer1~105_combout\ : std_logic;
SIGNAL \inst|buffer1~102_combout\ : std_logic;
SIGNAL \inst|buffer1~107_combout\ : std_logic;
SIGNAL \inst|Equal3~0_combout\ : std_logic;
SIGNAL \inst|buffer1~108_combout\ : std_logic;
SIGNAL \inst|buffer1~111_combout\ : std_logic;
SIGNAL \inst|buffer1~110_combout\ : std_logic;
SIGNAL \inst|buffer1~109_combout\ : std_logic;
SIGNAL \inst|Equal3~1_combout\ : std_logic;
SIGNAL \inst|buffer1~115_combout\ : std_logic;
SIGNAL \inst|buffer1~114_combout\ : std_logic;
SIGNAL \inst|buffer1~113_combout\ : std_logic;
SIGNAL \inst|Equal3~2_combout\ : std_logic;
SIGNAL \inst|buffer1~25_combout\ : std_logic;
SIGNAL \inst|buffer1~37_combout\ : std_logic;
SIGNAL \inst|buffer1[16]~103_combout\ : std_logic;
SIGNAL \inst|buffer1[16]~104_combout\ : std_logic;
SIGNAL \inst|buffer1~9_combout\ : std_logic;
SIGNAL \inst|buffer1~16_combout\ : std_logic;
SIGNAL \inst|buffer1~17_combout\ : std_logic;
SIGNAL \inst|buffer1~14_combout\ : std_logic;
SIGNAL \inst|buffer1~15_combout\ : std_logic;
SIGNAL \inst|Equal1~2_combout\ : std_logic;
SIGNAL \inst|buffer1~8_combout\ : std_logic;
SIGNAL \inst|buffer1~7_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|buffer1~13_combout\ : std_logic;
SIGNAL \inst|buffer1~12_combout\ : std_logic;
SIGNAL \inst|buffer1~11_combout\ : std_logic;
SIGNAL \inst|buffer1~10_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|Equal1~3_combout\ : std_logic;
SIGNAL \inst|buffer1~5_combout\ : std_logic;
SIGNAL \inst|buffer1[1]~6_combout\ : std_logic;
SIGNAL \inst|Equal5~5_combout\ : std_logic;
SIGNAL \inst|Equal5~0_combout\ : std_logic;
SIGNAL \inst|Equal5~2_combout\ : std_logic;
SIGNAL \inst|Equal5~1_combout\ : std_logic;
SIGNAL \inst|Equal5~3_combout\ : std_logic;
SIGNAL \inst|Equal5~4_combout\ : std_logic;
SIGNAL \inst|Equal5~6_combout\ : std_logic;
SIGNAL \inst|Equal5~7_combout\ : std_logic;
SIGNAL \inst|buffer1[16]~39_combout\ : std_logic;
SIGNAL \inst|buffer1[16]~101_combout\ : std_logic;
SIGNAL \inst|buffer1~106_combout\ : std_logic;
SIGNAL \inst|Equal9~1_combout\ : std_logic;
SIGNAL \inst|Equal9~2_combout\ : std_logic;
SIGNAL \inst|Equal9~3_combout\ : std_logic;
SIGNAL \inst|Equal9~0_combout\ : std_logic;
SIGNAL \inst|Equal9~4_combout\ : std_logic;
SIGNAL \inst|Equal9~6_combout\ : std_logic;
SIGNAL \inst|Equal9~5_combout\ : std_logic;
SIGNAL \inst|buffer1[31]~23_combout\ : std_logic;
SIGNAL \inst|buffer1[31]~86_combout\ : std_logic;
SIGNAL \inst|buffer1~98_combout\ : std_logic;
SIGNAL \inst|Equal13~5_combout\ : std_logic;
SIGNAL \inst|Equal13~3_combout\ : std_logic;
SIGNAL \inst|Equal13~2_combout\ : std_logic;
SIGNAL \inst|Equal13~0_combout\ : std_logic;
SIGNAL \inst|Equal13~1_combout\ : std_logic;
SIGNAL \inst|Equal13~4_combout\ : std_logic;
SIGNAL \inst|Equal13~6_combout\ : std_logic;
SIGNAL \inst|Equal12~1_combout\ : std_logic;
SIGNAL \inst|buffer1[39]~116_combout\ : std_logic;
SIGNAL \inst|buffer1[39]~117_combout\ : std_logic;
SIGNAL \inst|buffer1~129_combout\ : std_logic;
SIGNAL \inst|Equal17~5_combout\ : std_logic;
SIGNAL \inst|Equal17~6_combout\ : std_logic;
SIGNAL \inst|Equal17~0_combout\ : std_logic;
SIGNAL \inst|Equal17~2_combout\ : std_logic;
SIGNAL \inst|Equal17~3_combout\ : std_logic;
SIGNAL \inst|Equal17~1_combout\ : std_logic;
SIGNAL \inst|Equal17~4_combout\ : std_logic;
SIGNAL \inst|Equal17~7_combout\ : std_logic;
SIGNAL \inst|buffer1[48]~71_combout\ : std_logic;
SIGNAL \inst|buffer1~77_combout\ : std_logic;
SIGNAL \inst|Equal15~0_combout\ : std_logic;
SIGNAL \inst|Equal15~1_combout\ : std_logic;
SIGNAL \inst|Equal12~0_combout\ : std_logic;
SIGNAL \inst|Equal15~2_combout\ : std_logic;
SIGNAL \inst|buffer1~210_combout\ : std_logic;
SIGNAL \inst|buffer1~36_combout\ : std_logic;
SIGNAL \inst|counter~61_combout\ : std_logic;
SIGNAL \inst|counter~63_combout\ : std_logic;
SIGNAL \inst|counter~30_combout\ : std_logic;
SIGNAL \inst|Equal11~1_combout\ : std_logic;
SIGNAL \inst|Equal11~0_combout\ : std_logic;
SIGNAL \inst|Equal11~2_combout\ : std_logic;
SIGNAL \inst|Equal11~3_combout\ : std_logic;
SIGNAL \inst|Equal15~3_combout\ : std_logic;
SIGNAL \inst|counter[0]~56_combout\ : std_logic;
SIGNAL \inst|Equal43~1_combout\ : std_logic;
SIGNAL \inst|Equal43~0_combout\ : std_logic;
SIGNAL \inst|buffer1~205_combout\ : std_logic;
SIGNAL \inst|Equal43~2_combout\ : std_logic;
SIGNAL \inst|Equal39~3_combout\ : std_logic;
SIGNAL \inst|counter[0]~58_combout\ : std_logic;
SIGNAL \inst|counter[0]~59_combout\ : std_logic;
SIGNAL \inst|counter[0]~64_combout\ : std_logic;
SIGNAL \inst|counter~65_combout\ : std_logic;
SIGNAL \inst|buffer1~31_combout\ : std_logic;
SIGNAL \inst|buffer1~34_combout\ : std_logic;
SIGNAL \inst|BufferCount~2_combout\ : std_logic;
SIGNAL \inst|counter[0]~66_combout\ : std_logic;
SIGNAL \inst|counter[0]~67_combout\ : std_logic;
SIGNAL \inst|counter[0]~68_combout\ : std_logic;
SIGNAL \inst|counter[0]~69_combout\ : std_logic;
SIGNAL \inst|buffer1~18_combout\ : std_logic;
SIGNAL \inst|buffer1~209_combout\ : std_logic;
SIGNAL \inst|buffer1[96]~58_combout\ : std_logic;
SIGNAL \inst|buffer1[96]~59_combout\ : std_logic;
SIGNAL \inst|Equal33~6_combout\ : std_logic;
SIGNAL \inst|Equal33~0_combout\ : std_logic;
SIGNAL \inst|Equal33~1_combout\ : std_logic;
SIGNAL \inst|Equal33~3_combout\ : std_logic;
SIGNAL \inst|Equal33~2_combout\ : std_logic;
SIGNAL \inst|Equal33~4_combout\ : std_logic;
SIGNAL \inst|Equal33~7_combout\ : std_logic;
SIGNAL \inst|Equal32~1_combout\ : std_logic;
SIGNAL \inst|counter~55_combout\ : std_logic;
SIGNAL \inst|counter~60_combout\ : std_logic;
SIGNAL \inst|counter[4]~2_combout\ : std_logic;
SIGNAL \inst|Equal32~0_combout\ : std_logic;
SIGNAL \inst|Equal36~0_combout\ : std_logic;
SIGNAL \inst|buffer1~68_combout\ : std_logic;
SIGNAL \inst|Equal37~5_combout\ : std_logic;
SIGNAL \inst|Equal37~6_combout\ : std_logic;
SIGNAL \inst|Equal37~3_combout\ : std_logic;
SIGNAL \inst|Equal37~2_combout\ : std_logic;
SIGNAL \inst|Equal37~1_combout\ : std_logic;
SIGNAL \inst|Equal37~0_combout\ : std_logic;
SIGNAL \inst|Equal37~4_combout\ : std_logic;
SIGNAL \inst|buffer1[108]~164_combout\ : std_logic;
SIGNAL \inst|buffer1[108]~165_combout\ : std_logic;
SIGNAL \inst|buffer1~178_combout\ : std_logic;
SIGNAL \inst|buffer1~69_combout\ : std_logic;
SIGNAL \inst|buffer1~163_combout\ : std_logic;
SIGNAL \inst|buffer1~54_combout\ : std_logic;
SIGNAL \inst|buffer1~146_combout\ : std_logic;
SIGNAL \inst|Equal25~6_combout\ : std_logic;
SIGNAL \inst|Equal25~5_combout\ : std_logic;
SIGNAL \inst|Equal24~0_combout\ : std_logic;
SIGNAL \inst|Equal25~3_combout\ : std_logic;
SIGNAL \inst|Equal25~2_combout\ : std_logic;
SIGNAL \inst|Equal25~1_combout\ : std_logic;
SIGNAL \inst|Equal25~0_combout\ : std_logic;
SIGNAL \inst|Equal25~4_combout\ : std_logic;
SIGNAL \inst|buffer1[72]~40_combout\ : std_logic;
SIGNAL \inst|buffer1[72]~41_combout\ : std_logic;
SIGNAL \inst|buffer1~55_combout\ : std_logic;
SIGNAL \inst|Equal29~6_combout\ : std_logic;
SIGNAL \inst|Equal29~5_combout\ : std_logic;
SIGNAL \inst|Equal28~4_combout\ : std_logic;
SIGNAL \inst|Equal29~1_combout\ : std_logic;
SIGNAL \inst|Equal29~0_combout\ : std_logic;
SIGNAL \inst|Equal29~3_combout\ : std_logic;
SIGNAL \inst|Equal29~2_combout\ : std_logic;
SIGNAL \inst|Equal29~4_combout\ : std_logic;
SIGNAL \inst|buffer1[84]~148_combout\ : std_logic;
SIGNAL \inst|buffer1[84]~149_combout\ : std_logic;
SIGNAL \inst|buffer1~160_combout\ : std_logic;
SIGNAL \inst|Equal33~5_combout\ : std_logic;
SIGNAL \inst|buffer1~28_combout\ : std_logic;
SIGNAL \inst|buffer1[96]~56_combout\ : std_logic;
SIGNAL \inst|buffer1~66_combout\ : std_logic;
SIGNAL \inst|Equal31~1_combout\ : std_logic;
SIGNAL \inst|Equal31~0_combout\ : std_logic;
SIGNAL \inst|Equal31~2_combout\ : std_logic;
SIGNAL \inst|Equal31~3_combout\ : std_logic;
SIGNAL \inst|Equal19~3_combout\ : std_logic;
SIGNAL \inst|counter[0]~57_combout\ : std_logic;
SIGNAL \inst|counter~72_combout\ : std_logic;
SIGNAL \inst|counter~76_combout\ : std_logic;
SIGNAL \inst|counter~70_combout\ : std_logic;
SIGNAL \inst|counter~71_combout\ : std_logic;
SIGNAL \inst|counter~73_combout\ : std_logic;
SIGNAL \inst|counter~74_combout\ : std_logic;
SIGNAL \inst|counter[3]~75_combout\ : std_logic;
SIGNAL \inst|Equal46~4_combout\ : std_logic;
SIGNAL \inst|Equal46~5_combout\ : std_logic;
SIGNAL \inst|BufferCount~3_combout\ : std_logic;
SIGNAL \inst|BufferCount~4_combout\ : std_logic;
SIGNAL \inst|BufferCount~5_combout\ : std_logic;
SIGNAL \inst|bufferout[16]~0_combout\ : std_logic;
SIGNAL \inst|BufferCount[3]~6_combout\ : std_logic;
SIGNAL \inst|BufferCheck[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|Current~1_combout\ : std_logic;
SIGNAL \inst|BufferCount~7_combout\ : std_logic;
SIGNAL \inst|BufferCount~8_combout\ : std_logic;
SIGNAL \inst|BufferCheck[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|Current~3_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~3_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~4_combout\ : std_logic;
SIGNAL \inst|counter~44_combout\ : std_logic;
SIGNAL \inst|BufferCount~9_combout\ : std_logic;
SIGNAL \inst|BufferCheck[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|Current~0_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~2_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~5_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~7_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[0]~13_combout\ : std_logic;
SIGNAL \inst|Equal40~0_combout\ : std_logic;
SIGNAL \inst|buffer1[131]~180_combout\ : std_logic;
SIGNAL \inst|buffer1~191_combout\ : std_logic;
SIGNAL \inst|Equal45~5_combout\ : std_logic;
SIGNAL \inst|Equal45~2_combout\ : std_logic;
SIGNAL \inst|Equal45~1_combout\ : std_logic;
SIGNAL \inst|Equal45~0_combout\ : std_logic;
SIGNAL \inst|Equal45~3_combout\ : std_logic;
SIGNAL \inst|Equal45~4_combout\ : std_logic;
SIGNAL \inst|Equal45~6_combout\ : std_logic;
SIGNAL \inst|Equal45~7_combout\ : std_logic;
SIGNAL \inst|Equal37~7_combout\ : std_logic;
SIGNAL \inst|counter~26_combout\ : std_logic;
SIGNAL \inst|counter~27_combout\ : std_logic;
SIGNAL \inst|counter~28_combout\ : std_logic;
SIGNAL \inst|Equal21~7_combout\ : std_logic;
SIGNAL \inst|counter~23_combout\ : std_logic;
SIGNAL \inst|Equal25~7_combout\ : std_logic;
SIGNAL \inst|counter~24_combout\ : std_logic;
SIGNAL \inst|counter~25_combout\ : std_logic;
SIGNAL \inst|counter~7_combout\ : std_logic;
SIGNAL \inst|counter~18_combout\ : std_logic;
SIGNAL \inst|buffer1~21_combout\ : std_logic;
SIGNAL \inst|counter~16_combout\ : std_logic;
SIGNAL \inst|Equal13~7_combout\ : std_logic;
SIGNAL \inst|counter~15_combout\ : std_logic;
SIGNAL \inst|counter~12_combout\ : std_logic;
SIGNAL \inst|counter~17_combout\ : std_logic;
SIGNAL \inst|counter~8_combout\ : std_logic;
SIGNAL \inst|counter~9_combout\ : std_logic;
SIGNAL \inst|counter~10_combout\ : std_logic;
SIGNAL \inst|counter~11_combout\ : std_logic;
SIGNAL \inst|counter~19_combout\ : std_logic;
SIGNAL \inst|counter~20_combout\ : std_logic;
SIGNAL \inst|Equal29~7_combout\ : std_logic;
SIGNAL \inst|counter~21_combout\ : std_logic;
SIGNAL \inst|counter~22_combout\ : std_logic;
SIGNAL \inst|counter~29_combout\ : std_logic;
SIGNAL \inst|counter~36_combout\ : std_logic;
SIGNAL \inst|Equal43~3_combout\ : std_logic;
SIGNAL \inst|counter~37_combout\ : std_logic;
SIGNAL \inst|counter~33_combout\ : std_logic;
SIGNAL \inst|counter~34_combout\ : std_logic;
SIGNAL \inst|counter~31_combout\ : std_logic;
SIGNAL \inst|counter~32_combout\ : std_logic;
SIGNAL \inst|counter~35_combout\ : std_logic;
SIGNAL \inst|counter~38_combout\ : std_logic;
SIGNAL \inst|counter[1]~0_combout\ : std_logic;
SIGNAL \inst|buffer1~35_combout\ : std_logic;
SIGNAL \inst|counter~39_combout\ : std_logic;
SIGNAL \inst|Equal9~7_combout\ : std_logic;
SIGNAL \inst|counter~42_combout\ : std_logic;
SIGNAL \inst|counter~40_combout\ : std_logic;
SIGNAL \inst|counter~41_combout\ : std_logic;
SIGNAL \inst|counter~43_combout\ : std_logic;
SIGNAL \inst|counter~45_combout\ : std_logic;
SIGNAL \inst|counter~46_combout\ : std_logic;
SIGNAL \inst|counter~47_combout\ : std_logic;
SIGNAL \inst|counter~48_combout\ : std_logic;
SIGNAL \inst|counter~49_combout\ : std_logic;
SIGNAL \inst|counter~50_combout\ : std_logic;
SIGNAL \inst|counter~51_combout\ : std_logic;
SIGNAL \inst|counter~52_combout\ : std_logic;
SIGNAL \inst|counter~53_combout\ : std_logic;
SIGNAL \inst|counter~54_combout\ : std_logic;
SIGNAL \inst|counter[2]~1_combout\ : std_logic;
SIGNAL \inst|buffer1~24_combout\ : std_logic;
SIGNAL \inst|BufferCount~0_combout\ : std_logic;
SIGNAL \inst|BufferCount~1_combout\ : std_logic;
SIGNAL \inst1|Current~2_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~6_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[3]~10_combout\ : std_logic;
SIGNAL \inst|buffer1~4_combout\ : std_logic;
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
SIGNAL \inst|MASK[2]~0_combout\ : std_logic;
SIGNAL \inst1|BUFFER_READ[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|BUFFER_READ[1]~feeder_combout\ : std_logic;
SIGNAL \inst|AVAILABLE~0_combout\ : std_logic;
SIGNAL \inst|AVAILABLE~q\ : std_logic;
SIGNAL \inst1|OUTPUT[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~8_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~14_combout\ : std_logic;
SIGNAL \inst|buffer1\ : std_logic_vector(143 DOWNTO 0);
SIGNAL \inst|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|Current\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|ADC_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|MASK\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|BUFFER_READ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|OUTPUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|BufferCount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|SPACE_AVAILABLE\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|BufferCheck\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|bufferout\ : std_logic_vector(143 DOWNTO 0);
SIGNAL \inst2|bufferout\ : std_logic_vector(143 DOWNTO 0);
SIGNAL \inst2|buffer1\ : std_logic_vector(143 DOWNTO 0);
SIGNAL \inst1|ALT_INV_OUTPUT\ : std_logic_vector(1 DOWNTO 1);

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
MASK <= ww_MASK;
OUT2MCU <= ww_OUT2MCU;
OUTPUTCHECK <= ww_OUTPUTCHECK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|OUTPUT[3]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|OUTPUT\(3));

\inst1|OUTPUT[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|OUTPUT\(2));

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst1|ALT_INV_OUTPUT\(1) <= NOT \inst1|OUTPUT\(1);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X20_Y0_N9
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X0_Y24_N16
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X34_Y0_N16
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

-- Location: IOOBUF_X16_Y34_N2
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

-- Location: IOOBUF_X18_Y0_N9
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

-- Location: IOOBUF_X25_Y0_N16
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

-- Location: IOOBUF_X20_Y0_N2
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

-- Location: IOOBUF_X34_Y0_N2
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

-- Location: IOOBUF_X9_Y34_N23
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

-- Location: IOOBUF_X0_Y15_N9
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

-- Location: IOOBUF_X16_Y0_N16
\MASK[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MASK\(2),
	devoe => ww_devoe,
	o => \MASK[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\MASK[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MASK\(2),
	devoe => ww_devoe,
	o => \MASK[2]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\MASK[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \MASK[1]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\MASK[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \MASK[0]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
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

-- Location: IOOBUF_X31_Y34_N2
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

-- Location: IOOBUF_X18_Y34_N2
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

-- Location: IOOBUF_X20_Y34_N9
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

-- Location: IOOBUF_X40_Y34_N2
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

-- Location: IOOBUF_X34_Y34_N16
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

-- Location: IOOBUF_X45_Y0_N16
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

-- Location: IOOBUF_X1_Y34_N2
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

-- Location: IOOBUF_X29_Y34_N16
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

-- Location: IOOBUF_X9_Y34_N9
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

-- Location: IOOBUF_X34_Y0_N23
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

-- Location: IOOBUF_X34_Y34_N2
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

-- Location: IOIBUF_X11_Y34_N1
\ADC_IN[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(11),
	o => \ADC_IN[11]~input_o\);

-- Location: IOIBUF_X23_Y34_N15
\MCU_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(3),
	o => \MCU_IN[3]~input_o\);

-- Location: IOIBUF_X20_Y34_N15
\MCU_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(4),
	o => \MCU_IN[4]~input_o\);

-- Location: IOIBUF_X16_Y34_N15
\MCU_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(7),
	o => \MCU_IN[7]~input_o\);

-- Location: IOIBUF_X14_Y34_N22
\MCU_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(5),
	o => \MCU_IN[5]~input_o\);

-- Location: IOIBUF_X20_Y34_N22
\MCU_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(6),
	o => \MCU_IN[6]~input_o\);

-- Location: LCCOMB_X20_Y30_N4
\inst1|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal5~0_combout\ = (!\MCU_IN[4]~input_o\ & (!\MCU_IN[7]~input_o\ & (!\MCU_IN[5]~input_o\ & !\MCU_IN[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[4]~input_o\,
	datab => \MCU_IN[7]~input_o\,
	datac => \MCU_IN[5]~input_o\,
	datad => \MCU_IN[6]~input_o\,
	combout => \inst1|Equal5~0_combout\);

-- Location: LCCOMB_X24_Y30_N4
\inst1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~2_combout\ = (!\MCU_IN[3]~input_o\ & \inst1|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MCU_IN[3]~input_o\,
	datac => \inst1|Equal5~0_combout\,
	combout => \inst1|Equal1~2_combout\);

-- Location: IOIBUF_X7_Y34_N8
\MCU_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(0),
	o => \MCU_IN[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\MCU_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(2),
	o => \MCU_IN[2]~input_o\);

-- Location: IOIBUF_X34_Y34_N8
\MCU_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(1),
	o => \MCU_IN[1]~input_o\);

-- Location: LCCOMB_X27_Y22_N0
\inst1|OUTPUT~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~9_combout\ = ((\MCU_IN[0]~input_o\ & ((\MCU_IN[2]~input_o\) # (\MCU_IN[1]~input_o\))) # (!\MCU_IN[0]~input_o\ & (\MCU_IN[2]~input_o\ & \MCU_IN[1]~input_o\))) # (!\inst1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal1~2_combout\,
	datab => \MCU_IN[0]~input_o\,
	datac => \MCU_IN[2]~input_o\,
	datad => \MCU_IN[1]~input_o\,
	combout => \inst1|OUTPUT~9_combout\);

-- Location: LCCOMB_X26_Y30_N24
\inst1|OUTPUT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~6_combout\ = (\MCU_IN[0]~input_o\) # ((\MCU_IN[2]~input_o\ $ (!\MCU_IN[1]~input_o\)) # (!\inst1|Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[0]~input_o\,
	datab => \inst1|Equal1~2_combout\,
	datac => \MCU_IN[2]~input_o\,
	datad => \MCU_IN[1]~input_o\,
	combout => \inst1|OUTPUT~6_combout\);

-- Location: LCCOMB_X26_Y30_N16
\inst1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~0_combout\ = (!\MCU_IN[0]~input_o\ & (!\MCU_IN[2]~input_o\ & !\MCU_IN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[0]~input_o\,
	datac => \MCU_IN[2]~input_o\,
	datad => \MCU_IN[1]~input_o\,
	combout => \inst1|Equal1~0_combout\);

-- Location: LCCOMB_X26_Y30_N26
\inst1|OUTPUT~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~7_combout\ = ((\inst1|Equal5~0_combout\ & (\MCU_IN[3]~input_o\ & \inst1|Equal1~0_combout\))) # (!\inst1|OUTPUT~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal5~0_combout\,
	datab => \inst1|OUTPUT~6_combout\,
	datac => \MCU_IN[3]~input_o\,
	datad => \inst1|Equal1~0_combout\,
	combout => \inst1|OUTPUT~7_combout\);

-- Location: LCCOMB_X26_Y30_N14
\inst1|OUTPUT~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~15_combout\ = (\MCU_IN[2]~input_o\) # (((\MCU_IN[3]~input_o\) # (\MCU_IN[1]~input_o\)) # (!\inst1|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[2]~input_o\,
	datab => \inst1|Equal5~0_combout\,
	datac => \MCU_IN[3]~input_o\,
	datad => \MCU_IN[1]~input_o\,
	combout => \inst1|OUTPUT~15_combout\);

-- Location: LCCOMB_X26_Y30_N4
\inst1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal2~0_combout\ = (\MCU_IN[0]~input_o\ & (\inst1|Equal1~2_combout\ & (!\MCU_IN[2]~input_o\ & !\MCU_IN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[0]~input_o\,
	datab => \inst1|Equal1~2_combout\,
	datac => \MCU_IN[2]~input_o\,
	datad => \MCU_IN[1]~input_o\,
	combout => \inst1|Equal2~0_combout\);

-- Location: IOIBUF_X31_Y34_N8
\ADC_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(7),
	o => \ADC_IN[7]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\ADC_IN[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(10),
	o => \ADC_IN[10]~input_o\);

-- Location: LCCOMB_X26_Y22_N10
\inst|Equal44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal44~4_combout\ = (\inst|counter\(2) & (\inst|counter\(1) & \inst|Equal32~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(2),
	datac => \inst|counter\(1),
	datad => \inst|Equal32~0_combout\,
	combout => \inst|Equal44~4_combout\);

-- Location: LCCOMB_X27_Y22_N26
\inst|buffer1[137]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[137]~195_combout\ = (!\inst1|OUTPUT\(3) & ((!\inst|Equal45~7_combout\) # (!\inst|Equal44~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(3),
	datac => \inst|Equal44~4_combout\,
	datad => \inst|Equal45~7_combout\,
	combout => \inst|buffer1[137]~195_combout\);

-- Location: LCCOMB_X29_Y26_N0
\inst|buffer1~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~208_combout\ = (\ADC_IN[11]~input_o\ & (!\inst1|OUTPUT\(0) & \inst|buffer1[137]~195_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[11]~input_o\,
	datac => \inst1|OUTPUT\(0),
	datad => \inst|buffer1[137]~195_combout\,
	combout => \inst|buffer1~208_combout\);

-- Location: FF_X26_Y30_N13
\inst1|SPACE_AVAILABLE[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|SPACE_AVAILABLE~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SPACE_AVAILABLE\(4));

-- Location: LCCOMB_X26_Y30_N8
\inst1|OUTPUT[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[0]~16_combout\ = (\inst1|OUTPUT~7_combout\ & ((\inst1|SPACE_AVAILABLE\(10)) # ((\inst1|SPACE_AVAILABLE\(4)) # (!\inst1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT~7_combout\,
	datab => \inst1|SPACE_AVAILABLE\(10),
	datac => \inst1|SPACE_AVAILABLE\(4),
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|OUTPUT[0]~16_combout\);

-- Location: LCCOMB_X26_Y30_N10
\inst1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~1_combout\ = (!\MCU_IN[3]~input_o\ & (\inst1|Equal5~0_combout\ & \inst1|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MCU_IN[3]~input_o\,
	datac => \inst1|Equal5~0_combout\,
	datad => \inst1|Equal1~0_combout\,
	combout => \inst1|Equal1~1_combout\);

-- Location: LCCOMB_X26_Y30_N28
\inst1|Latch~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Latch~2_combout\ = (\inst1|Equal1~1_combout\ & (((\inst1|Latch~q\)))) # (!\inst1|Equal1~1_combout\ & (!\inst1|Equal2~0_combout\ & ((\inst1|Latch~q\) # (!\inst1|OUTPUT~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal1~1_combout\,
	datab => \inst1|OUTPUT~6_combout\,
	datac => \inst1|Equal2~0_combout\,
	datad => \inst1|Latch~q\,
	combout => \inst1|Latch~2_combout\);

-- Location: LCCOMB_X26_Y30_N0
\inst1|Latch~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Latch~3_combout\ = (\inst1|Latch~2_combout\ & (((\inst1|SPACE_AVAILABLE\(4)) # (\inst1|SPACE_AVAILABLE\(10))) # (!\inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|Latch~2_combout\,
	datac => \inst1|SPACE_AVAILABLE\(4),
	datad => \inst1|SPACE_AVAILABLE\(10),
	combout => \inst1|Latch~3_combout\);

-- Location: FF_X26_Y30_N1
\inst1|Latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Latch~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Latch~q\);

-- Location: LCCOMB_X29_Y26_N16
\inst1|OUTPUT[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[1]~11_combout\ = (\inst1|Equal0~1_combout\ & (((\inst1|OUTPUT\(1))))) # (!\inst1|Equal0~1_combout\ & (\inst1|Latch~q\ & ((\inst1|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Latch~q\,
	datab => \inst1|OUTPUT\(1),
	datac => \inst1|Equal1~1_combout\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|OUTPUT[1]~11_combout\);

-- Location: LCCOMB_X29_Y26_N24
\inst1|OUTPUT[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[1]~12_combout\ = (\inst1|OUTPUT[1]~11_combout\) # ((\inst1|OUTPUT~15_combout\ & ((\inst1|OUTPUT[0]~16_combout\) # (\inst1|OUTPUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT[0]~16_combout\,
	datab => \inst1|OUTPUT~15_combout\,
	datac => \inst1|OUTPUT\(1),
	datad => \inst1|OUTPUT[1]~11_combout\,
	combout => \inst1|OUTPUT[1]~12_combout\);

-- Location: FF_X29_Y26_N25
\inst1|OUTPUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|OUTPUT[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTPUT\(1));

-- Location: LCCOMB_X29_Y26_N26
\inst|buffer1[137]~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[137]~197_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & ((\inst|buffer1~35_combout\) # (!\inst|buffer1[137]~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst|buffer1[137]~195_combout\,
	datac => \inst1|OUTPUT\(1),
	datad => \inst|buffer1~35_combout\,
	combout => \inst|buffer1[137]~197_combout\);

-- Location: FF_X29_Y26_N1
\inst|buffer1[143]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~208_combout\,
	ena => \inst|buffer1[137]~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(143));

-- Location: LCCOMB_X23_Y22_N2
\inst1|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~0_combout\ = (!\MCU_IN[1]~input_o\ & (\MCU_IN[2]~input_o\ & (\inst1|Equal1~2_combout\ & !\MCU_IN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[1]~input_o\,
	datab => \MCU_IN[2]~input_o\,
	datac => \inst1|Equal1~2_combout\,
	datad => \MCU_IN[0]~input_o\,
	combout => \inst1|Equal4~0_combout\);

-- Location: LCCOMB_X28_Y24_N14
\inst1|OUTPUT[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[2]~feeder_combout\ = \inst1|Equal4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Equal4~0_combout\,
	combout => \inst1|OUTPUT[2]~feeder_combout\);

-- Location: FF_X28_Y24_N15
\inst1|OUTPUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|OUTPUT[2]~feeder_combout\,
	ena => \inst1|OUTPUT[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTPUT\(2));

-- Location: LCCOMB_X28_Y24_N30
\inst|bufferout[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bufferout[23]~1_combout\ = (\inst1|OUTPUT\(2) & (\inst1|OUTPUT\(1) & !\inst1|OUTPUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(2),
	datac => \inst1|OUTPUT\(1),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|bufferout[23]~1_combout\);

-- Location: FF_X25_Y19_N3
\inst|bufferout[143]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(143),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(143));

-- Location: CLKCTRL_G14
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

-- Location: LCCOMB_X25_Y19_N2
\inst2|buffer1[131]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(131) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(143)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(131)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(131),
	datac => \inst|bufferout\(143),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(131));

-- Location: CLKCTRL_G11
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

-- Location: LCCOMB_X25_Y19_N30
\inst2|bufferout[131]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(131) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(131))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(131))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(131),
	datac => \inst2|bufferout\(131),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(131));

-- Location: LCCOMB_X25_Y19_N14
\inst|buffer1~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~194_combout\ = (!\inst|buffer1[131]~180_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(131))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(131),
	datab => \ADC_IN[11]~input_o\,
	datac => \inst|buffer1[131]~180_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~194_combout\);

-- Location: LCCOMB_X27_Y24_N20
\inst|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~1_combout\ = (\inst|counter\(2) & !\inst|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|counter\(2),
	datad => \inst|counter\(1),
	combout => \inst|Equal8~1_combout\);

-- Location: IOIBUF_X16_Y34_N8
\ADC_IN[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(9),
	o => \ADC_IN[9]~input_o\);

-- Location: LCCOMB_X29_Y26_N20
\inst|buffer1~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~206_combout\ = (\inst|buffer1[137]~195_combout\ & (!\inst1|OUTPUT\(0) & \ADC_IN[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[137]~195_combout\,
	datac => \inst1|OUTPUT\(0),
	datad => \ADC_IN[9]~input_o\,
	combout => \inst|buffer1~206_combout\);

-- Location: FF_X29_Y26_N21
\inst|buffer1[141]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~206_combout\,
	ena => \inst|buffer1[137]~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(141));

-- Location: FF_X29_Y23_N29
\inst|bufferout[141]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(141),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(141));

-- Location: LCCOMB_X29_Y23_N28
\inst2|buffer1[129]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(129) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(141)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(129)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(129),
	datac => \inst|bufferout\(141),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(129));

-- Location: LCCOMB_X29_Y23_N22
\inst2|bufferout[129]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(129) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(129))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(129))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(129),
	datac => \inst2|bufferout\(129),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(129));

-- Location: LCCOMB_X29_Y23_N18
\inst|buffer1~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~192_combout\ = (!\inst|buffer1[131]~180_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(129)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[131]~180_combout\,
	datab => \ADC_IN[9]~input_o\,
	datac => \inst2|bufferout\(129),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~192_combout\);

-- Location: FF_X29_Y23_N19
\inst|buffer1[129]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~192_combout\,
	ena => \inst|buffer1[131]~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(129));

-- Location: FF_X28_Y25_N3
\inst|bufferout[129]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(129),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(129));

-- Location: LCCOMB_X28_Y25_N2
\inst2|buffer1[117]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(117) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(129)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(117)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(117),
	datac => \inst|bufferout\(129),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(117));

-- Location: LCCOMB_X28_Y25_N26
\inst2|bufferout[117]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(117) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(117))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(117))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(117),
	datac => \inst2|bufferout\(117),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(117));

-- Location: LCCOMB_X28_Y25_N6
\inst|buffer1~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~177_combout\ = (!\inst|buffer1[108]~165_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(117))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(117),
	datab => \ADC_IN[9]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[108]~165_combout\,
	combout => \inst|buffer1~177_combout\);

-- Location: IOIBUF_X18_Y34_N22
\ADC_IN[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(8),
	o => \ADC_IN[8]~input_o\);

-- Location: FF_X28_Y25_N1
\inst|bufferout[128]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(128),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(128));

-- Location: LCCOMB_X28_Y25_N0
\inst2|buffer1[116]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(116) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(128)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(116)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(116),
	datac => \inst|bufferout\(128),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(116));

-- Location: LCCOMB_X28_Y25_N12
\inst2|bufferout[116]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(116) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(116)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(116)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(116),
	datab => \inst2|buffer1\(116),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(116));

-- Location: LCCOMB_X28_Y25_N24
\inst|buffer1~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~176_combout\ = (!\inst|buffer1[108]~165_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(116)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datab => \inst|buffer1[108]~165_combout\,
	datac => \inst2|bufferout\(116),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~176_combout\);

-- Location: FF_X28_Y25_N25
\inst|buffer1[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~176_combout\,
	ena => \inst|buffer1[108]~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(116));

-- Location: LCCOMB_X29_Y25_N22
\inst|Equal35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal35~2_combout\ = (!\inst|buffer1\(118) & (!\inst|buffer1\(116) & (!\inst|buffer1\(117) & !\inst|buffer1\(119))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(118),
	datab => \inst|buffer1\(116),
	datac => \inst|buffer1\(117),
	datad => \inst|buffer1\(119),
	combout => \inst|Equal35~2_combout\);

-- Location: IOIBUF_X53_Y22_N8
\ADC_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(3),
	o => \ADC_IN[3]~input_o\);

-- Location: LCCOMB_X29_Y26_N8
\inst|buffer1~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~200_combout\ = (\inst|buffer1[137]~195_combout\ & (!\inst1|OUTPUT\(0) & \ADC_IN[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[137]~195_combout\,
	datac => \inst1|OUTPUT\(0),
	datad => \ADC_IN[3]~input_o\,
	combout => \inst|buffer1~200_combout\);

-- Location: FF_X29_Y26_N9
\inst|buffer1[135]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~200_combout\,
	ena => \inst|buffer1[137]~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(135));

-- Location: FF_X28_Y27_N15
\inst|bufferout[135]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(135),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(135));

-- Location: LCCOMB_X28_Y27_N14
\inst2|buffer1[123]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(123) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(135)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(123)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(123),
	datac => \inst|bufferout\(135),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(123));

-- Location: LCCOMB_X28_Y27_N8
\inst2|bufferout[123]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(123) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(123))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(123))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(123),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(123),
	combout => \inst2|bufferout\(123));

-- Location: LCCOMB_X28_Y27_N30
\inst|buffer1~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~186_combout\ = (!\inst|buffer1[131]~180_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(123)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[3]~input_o\,
	datab => \inst2|bufferout\(123),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[131]~180_combout\,
	combout => \inst|buffer1~186_combout\);

-- Location: FF_X28_Y27_N31
\inst|buffer1[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~186_combout\,
	ena => \inst|buffer1[131]~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(123));

-- Location: FF_X29_Y27_N17
\inst|bufferout[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(123),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(123));

-- Location: LCCOMB_X29_Y27_N16
\inst2|buffer1[111]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(111) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(123)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(111)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(111),
	datac => \inst|bufferout\(123),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(111));

-- Location: LCCOMB_X29_Y27_N4
\inst2|bufferout[111]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(111) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(111))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(111))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(111),
	datac => \inst2|bufferout\(111),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(111));

-- Location: LCCOMB_X29_Y27_N6
\inst|buffer1~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~171_combout\ = (!\inst|buffer1[108]~165_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(111))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst2|bufferout\(111),
	datac => \inst|buffer1[108]~165_combout\,
	datad => \ADC_IN[3]~input_o\,
	combout => \inst|buffer1~171_combout\);

-- Location: FF_X29_Y27_N7
\inst|buffer1[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~171_combout\,
	ena => \inst|buffer1[108]~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(111));

-- Location: IOIBUF_X40_Y34_N8
\ADC_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(2),
	o => \ADC_IN[2]~input_o\);

-- Location: LCCOMB_X29_Y26_N6
\inst|buffer1~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~199_combout\ = (\inst|buffer1[137]~195_combout\ & (!\inst1|OUTPUT\(0) & \ADC_IN[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[137]~195_combout\,
	datac => \inst1|OUTPUT\(0),
	datad => \ADC_IN[2]~input_o\,
	combout => \inst|buffer1~199_combout\);

-- Location: FF_X29_Y26_N7
\inst|buffer1[134]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~199_combout\,
	ena => \inst|buffer1[137]~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(134));

-- Location: FF_X28_Y27_N1
\inst|bufferout[134]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(134),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(134));

-- Location: LCCOMB_X28_Y27_N0
\inst2|buffer1[122]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(122) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(134)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(122)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(122),
	datac => \inst|bufferout\(134),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(122));

-- Location: LCCOMB_X28_Y27_N26
\inst2|bufferout[122]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(122) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(122)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(122)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(122),
	datab => \inst2|buffer1\(122),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(122));

-- Location: LCCOMB_X28_Y27_N4
\inst|buffer1~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~185_combout\ = (!\inst|buffer1[131]~180_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(122)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[2]~input_o\,
	datab => \inst1|OUTPUT\(3),
	datac => \inst2|bufferout\(122),
	datad => \inst|buffer1[131]~180_combout\,
	combout => \inst|buffer1~185_combout\);

-- Location: FF_X28_Y27_N5
\inst|buffer1[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~185_combout\,
	ena => \inst|buffer1[131]~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(122));

-- Location: FF_X29_Y27_N15
\inst|bufferout[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(122),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(122));

-- Location: LCCOMB_X29_Y27_N14
\inst2|buffer1[110]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(110) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(122)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(110)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(110),
	datac => \inst|bufferout\(122),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(110));

-- Location: LCCOMB_X29_Y27_N26
\inst2|bufferout[110]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(110) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(110))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(110))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(110),
	datac => \inst2|bufferout\(110),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(110));

-- Location: LCCOMB_X29_Y27_N8
\inst|buffer1~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~170_combout\ = (!\inst|buffer1[108]~165_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(110))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(110),
	datab => \ADC_IN[2]~input_o\,
	datac => \inst|buffer1[108]~165_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~170_combout\);

-- Location: FF_X29_Y27_N9
\inst|buffer1[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~170_combout\,
	ena => \inst|buffer1[108]~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(110));

-- Location: IOIBUF_X38_Y34_N1
\ADC_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(1),
	o => \ADC_IN[1]~input_o\);

-- Location: LCCOMB_X28_Y26_N18
\inst|buffer1~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~198_combout\ = (!\inst1|OUTPUT\(0) & (\inst|buffer1[137]~195_combout\ & \ADC_IN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(0),
	datac => \inst|buffer1[137]~195_combout\,
	datad => \ADC_IN[1]~input_o\,
	combout => \inst|buffer1~198_combout\);

-- Location: FF_X29_Y26_N13
\inst|buffer1[133]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1~198_combout\,
	sload => VCC,
	ena => \inst|buffer1[137]~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(133));

-- Location: FF_X28_Y27_N19
\inst|bufferout[133]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(133),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(133));

-- Location: LCCOMB_X28_Y27_N18
\inst2|buffer1[121]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(121) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(133)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(121)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(121),
	datac => \inst|bufferout\(133),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(121));

-- Location: LCCOMB_X28_Y27_N28
\inst2|bufferout[121]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(121) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(121))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(121))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(121),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(121),
	combout => \inst2|bufferout\(121));

-- Location: LCCOMB_X28_Y27_N2
\inst|buffer1~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~184_combout\ = (!\inst|buffer1[131]~180_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(121)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[1]~input_o\,
	datab => \inst1|OUTPUT\(3),
	datac => \inst|buffer1[131]~180_combout\,
	datad => \inst2|bufferout\(121),
	combout => \inst|buffer1~184_combout\);

-- Location: FF_X28_Y27_N3
\inst|buffer1[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~184_combout\,
	ena => \inst|buffer1[131]~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(121));

-- Location: FF_X29_Y27_N29
\inst|bufferout[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(121),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(121));

-- Location: LCCOMB_X29_Y27_N28
\inst2|buffer1[109]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(109) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(121)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(109)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(109),
	datac => \inst|bufferout\(121),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(109));

-- Location: LCCOMB_X29_Y27_N24
\inst2|bufferout[109]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(109) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(109))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(109))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(109),
	datac => \inst2|bufferout\(109),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(109));

-- Location: LCCOMB_X29_Y27_N22
\inst|buffer1~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~169_combout\ = (!\inst|buffer1[108]~165_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(109)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[1]~input_o\,
	datab => \inst1|OUTPUT\(3),
	datac => \inst|buffer1[108]~165_combout\,
	datad => \inst2|bufferout\(109),
	combout => \inst|buffer1~169_combout\);

-- Location: FF_X29_Y27_N23
\inst|buffer1[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~169_combout\,
	ena => \inst|buffer1[108]~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(109));

-- Location: IOIBUF_X38_Y34_N15
\ADC_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(0),
	o => \ADC_IN[0]~input_o\);

-- Location: LCCOMB_X29_Y26_N30
\inst|buffer1~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~196_combout\ = (\ADC_IN[0]~input_o\ & (!\inst1|OUTPUT\(0) & \inst|buffer1[137]~195_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[0]~input_o\,
	datac => \inst1|OUTPUT\(0),
	datad => \inst|buffer1[137]~195_combout\,
	combout => \inst|buffer1~196_combout\);

-- Location: FF_X29_Y26_N31
\inst|buffer1[132]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~196_combout\,
	ena => \inst|buffer1[137]~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(132));

-- Location: FF_X28_Y27_N21
\inst|bufferout[132]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(132),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(132));

-- Location: LCCOMB_X28_Y27_N20
\inst2|buffer1[120]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(120) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(132)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(120)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(120),
	datac => \inst|bufferout\(132),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(120));

-- Location: LCCOMB_X28_Y27_N22
\inst2|bufferout[120]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(120) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(120)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(120)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(120),
	datab => \inst2|buffer1\(120),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(120));

-- Location: LCCOMB_X28_Y27_N16
\inst|buffer1~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~181_combout\ = (!\inst|buffer1[131]~180_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(120)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[0]~input_o\,
	datab => \inst1|OUTPUT\(3),
	datac => \inst2|bufferout\(120),
	datad => \inst|buffer1[131]~180_combout\,
	combout => \inst|buffer1~181_combout\);

-- Location: FF_X28_Y27_N17
\inst|buffer1[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~181_combout\,
	ena => \inst|buffer1[131]~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(120));

-- Location: FF_X29_Y27_N19
\inst|bufferout[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(120),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(120));

-- Location: LCCOMB_X29_Y27_N18
\inst2|buffer1[108]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(108) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(120)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(108)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(108),
	datac => \inst|bufferout\(120),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(108));

-- Location: LCCOMB_X29_Y27_N10
\inst2|bufferout[108]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(108) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(108)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(108)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(108),
	datab => \inst2|buffer1\(108),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(108));

-- Location: LCCOMB_X29_Y27_N12
\inst|buffer1~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~166_combout\ = (!\inst|buffer1[108]~165_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(108)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[108]~165_combout\,
	datab => \ADC_IN[0]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(108),
	combout => \inst|buffer1~166_combout\);

-- Location: FF_X29_Y27_N13
\inst|buffer1[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~166_combout\,
	ena => \inst|buffer1[108]~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(108));

-- Location: LCCOMB_X29_Y27_N0
\inst|Equal35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal35~0_combout\ = (!\inst|buffer1\(111) & (!\inst|buffer1\(110) & (!\inst|buffer1\(109) & !\inst|buffer1\(108))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(111),
	datab => \inst|buffer1\(110),
	datac => \inst|buffer1\(109),
	datad => \inst|buffer1\(108),
	combout => \inst|Equal35~0_combout\);

-- Location: IOIBUF_X53_Y24_N22
\ADC_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(5),
	o => \ADC_IN[5]~input_o\);

-- Location: LCCOMB_X29_Y26_N28
\inst|buffer1~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~202_combout\ = (\inst|buffer1[137]~195_combout\ & (!\inst1|OUTPUT\(0) & \ADC_IN[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[137]~195_combout\,
	datac => \inst1|OUTPUT\(0),
	datad => \ADC_IN[5]~input_o\,
	combout => \inst|buffer1~202_combout\);

-- Location: FF_X29_Y26_N29
\inst|buffer1[137]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~202_combout\,
	ena => \inst|buffer1[137]~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(137));

-- Location: FF_X29_Y23_N15
\inst|bufferout[137]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(137),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(137));

-- Location: LCCOMB_X29_Y23_N14
\inst2|buffer1[125]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(125) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(137)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(125)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(125),
	datac => \inst|bufferout\(137),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(125));

-- Location: LCCOMB_X29_Y23_N4
\inst2|bufferout[125]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(125) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(125))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(125))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(125),
	datac => \inst2|bufferout\(125),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(125));

-- Location: LCCOMB_X29_Y23_N16
\inst|buffer1~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~188_combout\ = (!\inst|buffer1[131]~180_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(125)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[131]~180_combout\,
	datab => \ADC_IN[5]~input_o\,
	datac => \inst2|bufferout\(125),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~188_combout\);

-- Location: FF_X29_Y23_N17
\inst|buffer1[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~188_combout\,
	ena => \inst|buffer1[131]~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(125));

-- Location: FF_X29_Y22_N25
\inst|bufferout[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(125),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(125));

-- Location: LCCOMB_X29_Y22_N24
\inst2|buffer1[113]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(113) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(125)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(113)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(113),
	datac => \inst|bufferout\(125),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(113));

-- Location: LCCOMB_X29_Y22_N4
\inst2|bufferout[113]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(113) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(113))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(113))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(113),
	datac => \inst2|bufferout\(113),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(113));

-- Location: LCCOMB_X29_Y22_N28
\inst|buffer1~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~173_combout\ = (!\inst|buffer1[108]~165_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(113)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[5]~input_o\,
	datab => \inst|buffer1[108]~165_combout\,
	datac => \inst2|bufferout\(113),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~173_combout\);

-- Location: FF_X29_Y22_N29
\inst|buffer1[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~173_combout\,
	ena => \inst|buffer1[108]~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(113));

-- Location: IOIBUF_X53_Y22_N1
\ADC_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(4),
	o => \ADC_IN[4]~input_o\);

-- Location: LCCOMB_X28_Y26_N22
\inst|buffer1~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~201_combout\ = (\inst|buffer1[137]~195_combout\ & (!\inst1|OUTPUT\(0) & \ADC_IN[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[137]~195_combout\,
	datab => \inst1|OUTPUT\(0),
	datac => \ADC_IN[4]~input_o\,
	combout => \inst|buffer1~201_combout\);

-- Location: FF_X28_Y26_N23
\inst|buffer1[136]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~201_combout\,
	ena => \inst|buffer1[137]~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(136));

-- Location: FF_X29_Y23_N25
\inst|bufferout[136]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(136),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(136));

-- Location: LCCOMB_X29_Y23_N24
\inst2|buffer1[124]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(124) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(136)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(124)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(124),
	datac => \inst|bufferout\(136),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(124));

-- Location: LCCOMB_X29_Y23_N6
\inst2|bufferout[124]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(124) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(124)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(124)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(124),
	datab => \inst2|buffer1\(124),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(124));

-- Location: LCCOMB_X29_Y23_N10
\inst|buffer1~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~187_combout\ = (!\inst|buffer1[131]~180_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(124)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[131]~180_combout\,
	datab => \ADC_IN[4]~input_o\,
	datac => \inst2|bufferout\(124),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~187_combout\);

-- Location: FF_X29_Y23_N11
\inst|buffer1[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~187_combout\,
	ena => \inst|buffer1[131]~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(124));

-- Location: FF_X28_Y24_N9
\inst|bufferout[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(124),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(124));

-- Location: LCCOMB_X28_Y24_N8
\inst2|buffer1[112]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(112) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(124)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(112)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(112),
	datac => \inst|bufferout\(124),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(112));

-- Location: LCCOMB_X28_Y24_N26
\inst2|bufferout[112]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(112) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(112))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(112))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(112),
	datac => \inst2|bufferout\(112),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(112));

-- Location: LCCOMB_X29_Y25_N28
\inst|buffer1~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~172_combout\ = (!\inst|buffer1[108]~165_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(112)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[108]~165_combout\,
	datab => \inst1|OUTPUT\(3),
	datac => \ADC_IN[4]~input_o\,
	datad => \inst2|bufferout\(112),
	combout => \inst|buffer1~172_combout\);

-- Location: FF_X29_Y25_N29
\inst|buffer1[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~172_combout\,
	ena => \inst|buffer1[108]~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(112));

-- Location: IOIBUF_X14_Y34_N15
\ADC_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(6),
	o => \ADC_IN[6]~input_o\);

-- Location: LCCOMB_X28_Y26_N8
\inst|buffer1~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~203_combout\ = (\inst|buffer1[137]~195_combout\ & (!\inst1|OUTPUT\(0) & \ADC_IN[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[137]~195_combout\,
	datab => \inst1|OUTPUT\(0),
	datad => \ADC_IN[6]~input_o\,
	combout => \inst|buffer1~203_combout\);

-- Location: FF_X28_Y26_N9
\inst|buffer1[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~203_combout\,
	ena => \inst|buffer1[137]~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(138));

-- Location: FF_X28_Y27_N13
\inst|bufferout[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(138),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(138));

-- Location: LCCOMB_X28_Y27_N12
\inst2|buffer1[126]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(126) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(138)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(126),
	datac => \inst|bufferout\(138),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(126));

-- Location: LCCOMB_X28_Y27_N6
\inst2|bufferout[126]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(126) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(126))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(126),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(126),
	combout => \inst2|bufferout\(126));

-- Location: LCCOMB_X28_Y27_N10
\inst|buffer1~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~189_combout\ = (!\inst|buffer1[131]~180_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(126))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(126),
	datab => \inst1|OUTPUT\(3),
	datac => \inst|buffer1[131]~180_combout\,
	datad => \ADC_IN[6]~input_o\,
	combout => \inst|buffer1~189_combout\);

-- Location: FF_X28_Y27_N11
\inst|buffer1[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~189_combout\,
	ena => \inst|buffer1[131]~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(126));

-- Location: FF_X28_Y25_N29
\inst|bufferout[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(126),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(126));

-- Location: LCCOMB_X28_Y25_N28
\inst2|buffer1[114]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(114) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(126)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(114)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(114),
	datac => \inst|bufferout\(126),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(114));

-- Location: LCCOMB_X28_Y25_N8
\inst2|bufferout[114]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(114) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(114))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(114))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(114),
	datac => \inst2|bufferout\(114),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(114));

-- Location: LCCOMB_X28_Y25_N4
\inst|buffer1~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~174_combout\ = (!\inst|buffer1[108]~165_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(114))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[108]~165_combout\,
	datab => \inst2|bufferout\(114),
	datac => \inst1|OUTPUT\(3),
	datad => \ADC_IN[6]~input_o\,
	combout => \inst|buffer1~174_combout\);

-- Location: FF_X28_Y25_N5
\inst|buffer1[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~174_combout\,
	ena => \inst|buffer1[108]~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(114));

-- Location: LCCOMB_X28_Y26_N10
\inst|buffer1~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~204_combout\ = (\inst|buffer1[137]~195_combout\ & (!\inst1|OUTPUT\(0) & \ADC_IN[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[137]~195_combout\,
	datab => \inst1|OUTPUT\(0),
	datac => \ADC_IN[7]~input_o\,
	combout => \inst|buffer1~204_combout\);

-- Location: FF_X28_Y26_N11
\inst|buffer1[139]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~204_combout\,
	ena => \inst|buffer1[137]~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(139));

-- Location: FF_X29_Y23_N1
\inst|bufferout[139]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(139),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(139));

-- Location: LCCOMB_X29_Y23_N0
\inst2|buffer1[127]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(127) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(139)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(127)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(127),
	datac => \inst|bufferout\(139),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(127));

-- Location: LCCOMB_X29_Y23_N26
\inst2|bufferout[127]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(127) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(127))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(127))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(127),
	datac => \inst2|bufferout\(127),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(127));

-- Location: LCCOMB_X29_Y23_N30
\inst|buffer1~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~190_combout\ = (!\inst|buffer1[131]~180_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(127)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[131]~180_combout\,
	datab => \ADC_IN[7]~input_o\,
	datac => \inst2|bufferout\(127),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~190_combout\);

-- Location: FF_X29_Y23_N31
\inst|buffer1[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~190_combout\,
	ena => \inst|buffer1[131]~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(127));

-- Location: FF_X28_Y25_N19
\inst|bufferout[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(127),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(127));

-- Location: LCCOMB_X28_Y25_N18
\inst2|buffer1[115]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(115) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(127)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(115)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(115),
	datac => \inst|bufferout\(127),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(115));

-- Location: LCCOMB_X28_Y25_N14
\inst2|bufferout[115]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(115) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(115))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(115))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(115),
	datac => \inst2|bufferout\(115),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(115));

-- Location: LCCOMB_X28_Y25_N10
\inst|buffer1~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~175_combout\ = (!\inst|buffer1[108]~165_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(115)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[7]~input_o\,
	datab => \inst2|bufferout\(115),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[108]~165_combout\,
	combout => \inst|buffer1~175_combout\);

-- Location: FF_X28_Y25_N11
\inst|buffer1[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~175_combout\,
	ena => \inst|buffer1[108]~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(115));

-- Location: LCCOMB_X29_Y25_N30
\inst|Equal35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal35~1_combout\ = (!\inst|buffer1\(113) & (!\inst|buffer1\(112) & (!\inst|buffer1\(114) & !\inst|buffer1\(115))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(113),
	datab => \inst|buffer1\(112),
	datac => \inst|buffer1\(114),
	datad => \inst|buffer1\(115),
	combout => \inst|Equal35~1_combout\);

-- Location: LCCOMB_X29_Y25_N16
\inst|buffer1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~29_combout\ = (!\inst|counter\(2) & (!\inst|counter\(1) & \inst|Equal46~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datac => \inst|counter\(1),
	datad => \inst|Equal46~4_combout\,
	combout => \inst|buffer1~29_combout\);

-- Location: LCCOMB_X29_Y25_N14
\inst|buffer1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~30_combout\ = (\inst|Equal35~2_combout\ & (\inst|Equal35~0_combout\ & (\inst|Equal35~1_combout\ & \inst|buffer1~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal35~2_combout\,
	datab => \inst|Equal35~0_combout\,
	datac => \inst|Equal35~1_combout\,
	datad => \inst|buffer1~29_combout\,
	combout => \inst|buffer1~30_combout\);

-- Location: LCCOMB_X28_Y25_N16
\inst|buffer1[108]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[108]~167_combout\ = ((!\inst1|OUTPUT\(3) & (!\inst|buffer1~30_combout\ & !\inst|buffer1[108]~164_combout\))) # (!\inst1|OUTPUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst1|OUTPUT\(1),
	datac => \inst|buffer1~30_combout\,
	datad => \inst|buffer1[108]~164_combout\,
	combout => \inst|buffer1[108]~167_combout\);

-- Location: LCCOMB_X28_Y25_N30
\inst|buffer1[108]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[108]~168_combout\ = (\inst1|OUTPUT\(0)) # (!\inst|buffer1[108]~167_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1[108]~167_combout\,
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[108]~168_combout\);

-- Location: FF_X28_Y25_N7
\inst|buffer1[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~177_combout\,
	ena => \inst|buffer1[108]~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(117));

-- Location: LCCOMB_X29_Y25_N8
\inst|Equal41~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~5_combout\ = (\inst|buffer1\(129) & (\inst|buffer1\(117) & (\inst|buffer1\(128) $ (!\inst|buffer1\(116))))) # (!\inst|buffer1\(129) & (!\inst|buffer1\(117) & (\inst|buffer1\(128) $ (!\inst|buffer1\(116)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(129),
	datab => \inst|buffer1\(117),
	datac => \inst|buffer1\(128),
	datad => \inst|buffer1\(116),
	combout => \inst|Equal41~5_combout\);

-- Location: LCCOMB_X29_Y27_N20
\inst|Equal41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~1_combout\ = (\inst|buffer1\(111) & (\inst|buffer1\(123) & (\inst|buffer1\(110) $ (!\inst|buffer1\(122))))) # (!\inst|buffer1\(111) & (!\inst|buffer1\(123) & (\inst|buffer1\(110) $ (!\inst|buffer1\(122)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(111),
	datab => \inst|buffer1\(110),
	datac => \inst|buffer1\(122),
	datad => \inst|buffer1\(123),
	combout => \inst|Equal41~1_combout\);

-- Location: LCCOMB_X29_Y27_N30
\inst|Equal41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~0_combout\ = (\inst|buffer1\(109) & (\inst|buffer1\(121) & (\inst|buffer1\(108) $ (!\inst|buffer1\(120))))) # (!\inst|buffer1\(109) & (!\inst|buffer1\(121) & (\inst|buffer1\(108) $ (!\inst|buffer1\(120)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(109),
	datab => \inst|buffer1\(108),
	datac => \inst|buffer1\(120),
	datad => \inst|buffer1\(121),
	combout => \inst|Equal41~0_combout\);

-- Location: LCCOMB_X29_Y25_N4
\inst|Equal41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~3_combout\ = (\inst|buffer1\(115) & (\inst|buffer1\(127) & (\inst|buffer1\(114) $ (!\inst|buffer1\(126))))) # (!\inst|buffer1\(115) & (!\inst|buffer1\(127) & (\inst|buffer1\(114) $ (!\inst|buffer1\(126)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(115),
	datab => \inst|buffer1\(114),
	datac => \inst|buffer1\(126),
	datad => \inst|buffer1\(127),
	combout => \inst|Equal41~3_combout\);

-- Location: LCCOMB_X29_Y25_N2
\inst|Equal41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~2_combout\ = (\inst|buffer1\(113) & (\inst|buffer1\(125) & (\inst|buffer1\(112) $ (!\inst|buffer1\(124))))) # (!\inst|buffer1\(113) & (!\inst|buffer1\(125) & (\inst|buffer1\(112) $ (!\inst|buffer1\(124)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(113),
	datab => \inst|buffer1\(112),
	datac => \inst|buffer1\(125),
	datad => \inst|buffer1\(124),
	combout => \inst|Equal41~2_combout\);

-- Location: LCCOMB_X29_Y25_N26
\inst|Equal41~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~4_combout\ = (\inst|Equal41~1_combout\ & (\inst|Equal41~0_combout\ & (\inst|Equal41~3_combout\ & \inst|Equal41~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal41~1_combout\,
	datab => \inst|Equal41~0_combout\,
	datac => \inst|Equal41~3_combout\,
	datad => \inst|Equal41~2_combout\,
	combout => \inst|Equal41~4_combout\);

-- Location: LCCOMB_X29_Y26_N2
\inst|buffer1~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~207_combout\ = (\inst|buffer1[137]~195_combout\ & (!\inst1|OUTPUT\(0) & \ADC_IN[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[137]~195_combout\,
	datac => \inst1|OUTPUT\(0),
	datad => \ADC_IN[10]~input_o\,
	combout => \inst|buffer1~207_combout\);

-- Location: FF_X29_Y26_N3
\inst|buffer1[142]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~207_combout\,
	ena => \inst|buffer1[137]~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(142));

-- Location: FF_X25_Y19_N29
\inst|bufferout[142]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(142),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(142));

-- Location: LCCOMB_X25_Y19_N28
\inst2|buffer1[130]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(130) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(142)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(130)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(130),
	datac => \inst|bufferout\(142),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(130));

-- Location: LCCOMB_X25_Y19_N8
\inst2|bufferout[130]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(130) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(130))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(130))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(130),
	datac => \inst2|bufferout\(130),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(130));

-- Location: LCCOMB_X25_Y19_N12
\inst|buffer1~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~193_combout\ = (!\inst|buffer1[131]~180_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(130)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[10]~input_o\,
	datab => \inst2|bufferout\(130),
	datac => \inst|buffer1[131]~180_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~193_combout\);

-- Location: FF_X25_Y19_N13
\inst|buffer1[130]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~193_combout\,
	ena => \inst|buffer1[131]~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(130));

-- Location: LCCOMB_X29_Y22_N16
\inst|Equal41~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~6_combout\ = (\inst|buffer1\(119) & (\inst|buffer1\(131) & (\inst|buffer1\(118) $ (!\inst|buffer1\(130))))) # (!\inst|buffer1\(119) & (!\inst|buffer1\(131) & (\inst|buffer1\(118) $ (!\inst|buffer1\(130)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(119),
	datab => \inst|buffer1\(118),
	datac => \inst|buffer1\(131),
	datad => \inst|buffer1\(130),
	combout => \inst|Equal41~6_combout\);

-- Location: LCCOMB_X29_Y25_N18
\inst|Equal41~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~7_combout\ = (\inst|Equal41~5_combout\ & (\inst|Equal41~4_combout\ & \inst|Equal41~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal41~5_combout\,
	datac => \inst|Equal41~4_combout\,
	datad => \inst|Equal41~6_combout\,
	combout => \inst|Equal41~7_combout\);

-- Location: LCCOMB_X27_Y22_N8
\inst|buffer1[131]~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[131]~182_combout\ = (!\inst1|OUTPUT\(3) & (((!\inst|Equal41~7_combout\) # (!\inst|Equal8~1_combout\)) # (!\inst|Equal32~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst|Equal32~0_combout\,
	datac => \inst|Equal8~1_combout\,
	datad => \inst|Equal41~7_combout\,
	combout => \inst|buffer1[131]~182_combout\);

-- Location: LCCOMB_X28_Y27_N24
\inst|Equal39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal39~0_combout\ = (!\inst|buffer1\(123) & (!\inst|buffer1\(120) & (!\inst|buffer1\(122) & !\inst|buffer1\(121))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(123),
	datab => \inst|buffer1\(120),
	datac => \inst|buffer1\(122),
	datad => \inst|buffer1\(121),
	combout => \inst|Equal39~0_combout\);

-- Location: LCCOMB_X28_Y23_N2
\inst|Equal39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal39~1_combout\ = (!\inst|buffer1\(127) & (!\inst|buffer1\(125) & (!\inst|buffer1\(124) & !\inst|buffer1\(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(127),
	datab => \inst|buffer1\(125),
	datac => \inst|buffer1\(124),
	datad => \inst|buffer1\(126),
	combout => \inst|Equal39~1_combout\);

-- Location: LCCOMB_X29_Y25_N0
\inst|Equal39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal39~2_combout\ = (!\inst|buffer1\(129) & (!\inst|buffer1\(128) & (!\inst|buffer1\(131) & !\inst|buffer1\(130))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(129),
	datab => \inst|buffer1\(128),
	datac => \inst|buffer1\(131),
	datad => \inst|buffer1\(130),
	combout => \inst|Equal39~2_combout\);

-- Location: LCCOMB_X29_Y25_N10
\inst|buffer1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~32_combout\ = (!\inst|counter\(2) & (\inst|counter\(1) & \inst|Equal39~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datac => \inst|counter\(1),
	datad => \inst|Equal39~2_combout\,
	combout => \inst|buffer1~32_combout\);

-- Location: LCCOMB_X29_Y25_N20
\inst|buffer1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~33_combout\ = (\inst|Equal39~0_combout\ & (\inst|Equal46~4_combout\ & (\inst|Equal39~1_combout\ & \inst|buffer1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal39~0_combout\,
	datab => \inst|Equal46~4_combout\,
	datac => \inst|Equal39~1_combout\,
	datad => \inst|buffer1~32_combout\,
	combout => \inst|buffer1~33_combout\);

-- Location: LCCOMB_X27_Y22_N12
\inst|buffer1[131]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[131]~183_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & ((\inst|buffer1~33_combout\) # (!\inst|buffer1[131]~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst|buffer1[131]~182_combout\,
	datac => \inst1|OUTPUT\(0),
	datad => \inst|buffer1~33_combout\,
	combout => \inst|buffer1[131]~183_combout\);

-- Location: FF_X25_Y19_N15
\inst|buffer1[131]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~194_combout\,
	ena => \inst|buffer1[131]~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(131));

-- Location: FF_X29_Y22_N19
\inst|bufferout[131]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(131),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(131));

-- Location: LCCOMB_X29_Y22_N18
\inst2|buffer1[119]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(119) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(131)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(119)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(119),
	datac => \inst|bufferout\(131),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(119));

-- Location: LCCOMB_X29_Y22_N14
\inst2|bufferout[119]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(119) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(119))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(119))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(119),
	datac => \inst2|bufferout\(119),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(119));

-- Location: LCCOMB_X29_Y22_N22
\inst|buffer1~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~179_combout\ = (!\inst|buffer1[108]~165_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(119)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[11]~input_o\,
	datab => \inst|buffer1[108]~165_combout\,
	datac => \inst2|bufferout\(119),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~179_combout\);

-- Location: FF_X29_Y22_N23
\inst|buffer1[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~179_combout\,
	ena => \inst|buffer1[108]~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(119));

-- Location: FF_X26_Y19_N15
\inst|bufferout[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(119),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(119));

-- Location: LCCOMB_X26_Y19_N14
\inst2|buffer1[107]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(107) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(119)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(107),
	datac => \inst|bufferout\(119),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(107));

-- Location: LCCOMB_X26_Y19_N4
\inst2|bufferout[107]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(107) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(107))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(107),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(107),
	combout => \inst2|bufferout\(107));

-- Location: LCCOMB_X26_Y19_N12
\inst|buffer1~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~70_combout\ = (!\inst|buffer1[96]~56_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(107)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[96]~56_combout\,
	datab => \ADC_IN[11]~input_o\,
	datac => \inst2|bufferout\(107),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~70_combout\);

-- Location: LCCOMB_X28_Y22_N4
\inst|Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal16~0_combout\ = (!\inst|counter\(4) & (\inst|counter\(3) & !\inst|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datac => \inst|counter\(3),
	datad => \inst|counter\(0),
	combout => \inst|Equal16~0_combout\);

-- Location: LCCOMB_X28_Y23_N22
\inst|counter[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~6_combout\ = (\inst|counter\(1) $ (!\inst|counter\(2))) # (!\inst|Equal16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(1),
	datac => \inst|Equal16~0_combout\,
	datad => \inst|counter\(2),
	combout => \inst|counter[0]~6_combout\);

-- Location: LCCOMB_X25_Y22_N2
\inst|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~0_combout\ = (!\inst|counter\(0) & (!\inst|counter\(4) & !\inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datac => \inst|counter\(4),
	datad => \inst|counter\(3),
	combout => \inst|Equal4~0_combout\);

-- Location: LCCOMB_X25_Y22_N0
\inst|counter[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~13_combout\ = (\inst|counter\(1) $ (!\inst|counter\(2))) # (!\inst|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(2),
	datad => \inst|Equal4~0_combout\,
	combout => \inst|counter[0]~13_combout\);

-- Location: LCCOMB_X25_Y22_N10
\inst|counter[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~14_combout\ = (\inst|counter\(1) & (((!\inst|Equal4~0_combout\)) # (!\inst|counter\(2)))) # (!\inst|counter\(1) & ((\inst|counter\(2)) # ((!\inst|Equal16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(2),
	datac => \inst|Equal16~0_combout\,
	datad => \inst|Equal4~0_combout\,
	combout => \inst|counter[0]~14_combout\);

-- Location: LCCOMB_X28_Y23_N20
\inst|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~5_combout\ = (!\inst|Equal32~0_combout\ & (((!\inst|counter\(2)) # (!\inst|Equal16~0_combout\)) # (!\inst|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal32~0_combout\,
	datab => \inst|counter\(1),
	datac => \inst|Equal16~0_combout\,
	datad => \inst|counter\(2),
	combout => \inst|counter~5_combout\);

-- Location: LCCOMB_X28_Y23_N26
\inst|counter[0]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~62_combout\ = (\inst|counter[0]~6_combout\ & (\inst|counter[0]~13_combout\ & (\inst|counter[0]~14_combout\ & \inst|counter~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter[0]~6_combout\,
	datab => \inst|counter[0]~13_combout\,
	datac => \inst|counter[0]~14_combout\,
	datad => \inst|counter~5_combout\,
	combout => \inst|counter[0]~62_combout\);

-- Location: LCCOMB_X28_Y22_N12
\inst|Equal16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal16~1_combout\ = (!\inst|counter\(1) & (\inst|Equal16~0_combout\ & !\inst|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(1),
	datac => \inst|Equal16~0_combout\,
	datad => \inst|counter\(2),
	combout => \inst|Equal16~1_combout\);

-- Location: LCCOMB_X25_Y22_N30
\inst|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~0_combout\ = (!\inst|counter\(1) & (\inst|counter\(2) & \inst|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(2),
	datad => \inst|Equal4~0_combout\,
	combout => \inst|Equal8~0_combout\);

-- Location: FF_X29_Y20_N25
\inst|bufferout[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(110),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(110));

-- Location: LCCOMB_X29_Y20_N24
\inst2|buffer1[98]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(98) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(110)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(98)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(98),
	datac => \inst|bufferout\(110),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(98));

-- Location: LCCOMB_X29_Y20_N0
\inst2|bufferout[98]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(98) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(98))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(98))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(98),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(98),
	combout => \inst2|bufferout\(98));

-- Location: LCCOMB_X29_Y20_N8
\inst|buffer1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~61_combout\ = (!\inst|buffer1[96]~56_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(98))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst2|bufferout\(98),
	datac => \inst|buffer1[96]~56_combout\,
	datad => \ADC_IN[2]~input_o\,
	combout => \inst|buffer1~61_combout\);

-- Location: FF_X29_Y20_N9
\inst|buffer1[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~61_combout\,
	ena => \inst|buffer1[96]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(98));

-- Location: FF_X29_Y21_N17
\inst|bufferout[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(98),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(98));

-- Location: LCCOMB_X29_Y21_N16
\inst2|buffer1[86]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(86) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(98)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(86)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(86),
	datac => \inst|bufferout\(98),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(86));

-- Location: LCCOMB_X29_Y21_N26
\inst2|bufferout[86]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(86) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(86))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(86))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(86),
	datac => \inst2|bufferout\(86),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(86));

-- Location: LCCOMB_X29_Y21_N20
\inst|buffer1~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~155_combout\ = (!\inst|buffer1[84]~149_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(86))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(86),
	datab => \ADC_IN[2]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[84]~149_combout\,
	combout => \inst|buffer1~155_combout\);

-- Location: FF_X28_Y21_N5
\inst|bufferout[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(116),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(116));

-- Location: LCCOMB_X28_Y21_N4
\inst2|buffer1[104]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(104) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(116)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(104)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(104),
	datac => \inst|bufferout\(116),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(104));

-- Location: LCCOMB_X28_Y21_N22
\inst2|bufferout[104]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(104) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(104))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(104))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(104),
	datac => \inst2|bufferout\(104),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(104));

-- Location: LCCOMB_X28_Y21_N14
\inst|buffer1~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~67_combout\ = (!\inst|buffer1[96]~56_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(104)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datab => \inst|buffer1[96]~56_combout\,
	datac => \inst2|bufferout\(104),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~67_combout\);

-- Location: FF_X28_Y21_N15
\inst|buffer1[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~67_combout\,
	ena => \inst|buffer1[96]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(104));

-- Location: FF_X27_Y24_N19
\inst|bufferout[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(104),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(104));

-- Location: LCCOMB_X27_Y24_N18
\inst2|buffer1[92]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(92) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(104)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(92)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(92),
	datac => \inst|bufferout\(104),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(92));

-- Location: LCCOMB_X27_Y24_N12
\inst2|bufferout[92]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(92) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(92))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(92))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(92),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(92),
	combout => \inst2|bufferout\(92));

-- Location: LCCOMB_X27_Y24_N24
\inst|buffer1~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~161_combout\ = (!\inst|buffer1[84]~149_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(92)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[84]~149_combout\,
	datab => \ADC_IN[8]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(92),
	combout => \inst|buffer1~161_combout\);

-- Location: FF_X27_Y24_N25
\inst|buffer1[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~161_combout\,
	ena => \inst|buffer1[84]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(92));

-- Location: FF_X29_Y21_N3
\inst|bufferout[107]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(107),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(107));

-- Location: LCCOMB_X29_Y21_N2
\inst2|buffer1[95]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(95) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(107)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(95)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(95),
	datac => \inst|bufferout\(107),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(95));

-- Location: LCCOMB_X29_Y21_N4
\inst2|bufferout[95]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(95) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(95))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(95))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(95),
	datac => \inst2|bufferout\(95),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(95));

-- Location: LCCOMB_X29_Y21_N28
\inst|buffer1~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~162_combout\ = (!\inst|buffer1[84]~149_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(95)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[11]~input_o\,
	datab => \inst2|bufferout\(95),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[84]~149_combout\,
	combout => \inst|buffer1~162_combout\);

-- Location: FF_X29_Y21_N29
\inst|buffer1[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~162_combout\,
	ena => \inst|buffer1[84]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(95));

-- Location: LCCOMB_X25_Y24_N10
\inst|Equal27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal27~2_combout\ = (!\inst|buffer1\(92) & (!\inst|buffer1\(93) & (!\inst|buffer1\(95) & !\inst|buffer1\(94))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(92),
	datab => \inst|buffer1\(93),
	datac => \inst|buffer1\(95),
	datad => \inst|buffer1\(94),
	combout => \inst|Equal27~2_combout\);

-- Location: FF_X29_Y20_N19
\inst|bufferout[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(111),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(111));

-- Location: LCCOMB_X29_Y20_N18
\inst2|buffer1[99]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(99) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(111)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(99)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(99),
	datac => \inst|bufferout\(111),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(99));

-- Location: LCCOMB_X29_Y20_N30
\inst2|bufferout[99]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(99) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(99))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(99))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(99),
	datac => \inst2|bufferout\(99),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(99));

-- Location: LCCOMB_X29_Y20_N6
\inst|buffer1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~62_combout\ = (!\inst|buffer1[96]~56_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(99))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(99),
	datab => \ADC_IN[3]~input_o\,
	datac => \inst|buffer1[96]~56_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~62_combout\);

-- Location: FF_X29_Y20_N7
\inst|buffer1[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~62_combout\,
	ena => \inst|buffer1[96]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(99));

-- Location: FF_X27_Y24_N15
\inst|bufferout[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(99),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(99));

-- Location: LCCOMB_X27_Y24_N14
\inst2|buffer1[87]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(87) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(99)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(87)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(87),
	datac => \inst|bufferout\(99),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(87));

-- Location: LCCOMB_X27_Y24_N4
\inst2|bufferout[87]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(87) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(87))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(87))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(87),
	datac => \inst2|bufferout\(87),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(87));

-- Location: LCCOMB_X27_Y24_N16
\inst|buffer1~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~154_combout\ = (!\inst|buffer1[84]~149_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(87))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[84]~149_combout\,
	datab => \inst2|bufferout\(87),
	datac => \ADC_IN[3]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~154_combout\);

-- Location: FF_X27_Y24_N17
\inst|buffer1[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~154_combout\,
	ena => \inst|buffer1[84]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(87));

-- Location: FF_X29_Y20_N15
\inst|bufferout[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(109),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(109));

-- Location: LCCOMB_X29_Y20_N14
\inst2|buffer1[97]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(97) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(109)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(97)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(97),
	datac => \inst|bufferout\(109),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(97));

-- Location: LCCOMB_X29_Y20_N26
\inst2|bufferout[97]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(97) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(97))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(97))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(97),
	datac => \inst2|bufferout\(97),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(97));

-- Location: LCCOMB_X29_Y20_N10
\inst|buffer1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~60_combout\ = (!\inst|buffer1[96]~56_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(97))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(97),
	datab => \ADC_IN[1]~input_o\,
	datac => \inst|buffer1[96]~56_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~60_combout\);

-- Location: FF_X29_Y20_N11
\inst|buffer1[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~60_combout\,
	ena => \inst|buffer1[96]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(97));

-- Location: FF_X28_Y20_N19
\inst|bufferout[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(97),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(97));

-- Location: LCCOMB_X28_Y20_N18
\inst2|buffer1[85]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(85) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(97)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(85)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(85),
	datac => \inst|bufferout\(97),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(85));

-- Location: LCCOMB_X28_Y20_N24
\inst2|bufferout[85]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(85) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(85))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(85))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(85),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(85),
	combout => \inst2|bufferout\(85));

-- Location: LCCOMB_X28_Y20_N4
\inst|buffer1~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~150_combout\ = (!\inst|buffer1[84]~149_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(85)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[84]~149_combout\,
	datab => \ADC_IN[1]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(85),
	combout => \inst|buffer1~150_combout\);

-- Location: FF_X28_Y20_N5
\inst|buffer1[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~150_combout\,
	ena => \inst|buffer1[84]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(85));

-- Location: FF_X29_Y20_N17
\inst|bufferout[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(108),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(108));

-- Location: LCCOMB_X29_Y20_N16
\inst2|buffer1[96]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(96) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(108)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(96)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(96),
	datac => \inst|bufferout\(108),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(96));

-- Location: LCCOMB_X29_Y20_N4
\inst2|bufferout[96]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(96) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(96))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(96))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(96),
	datac => \inst2|bufferout\(96),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(96));

-- Location: LCCOMB_X29_Y20_N28
\inst|buffer1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~57_combout\ = (!\inst|buffer1[96]~56_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(96))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst2|bufferout\(96),
	datac => \inst|buffer1[96]~56_combout\,
	datad => \ADC_IN[0]~input_o\,
	combout => \inst|buffer1~57_combout\);

-- Location: FF_X29_Y20_N29
\inst|buffer1[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~57_combout\,
	ena => \inst|buffer1[96]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(96));

-- Location: FF_X28_Y20_N29
\inst|bufferout[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(96),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(96));

-- Location: LCCOMB_X28_Y20_N28
\inst2|buffer1[84]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(84) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(96)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(84)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(84),
	datac => \inst|bufferout\(96),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(84));

-- Location: LCCOMB_X28_Y20_N26
\inst2|bufferout[84]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(84) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(84))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(84))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(84),
	datac => \inst2|bufferout\(84),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(84));

-- Location: LCCOMB_X28_Y20_N10
\inst|buffer1~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~153_combout\ = (!\inst|buffer1[84]~149_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(84)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[84]~149_combout\,
	datab => \ADC_IN[0]~input_o\,
	datac => \inst2|bufferout\(84),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~153_combout\);

-- Location: FF_X28_Y20_N11
\inst|buffer1[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~153_combout\,
	ena => \inst|buffer1[84]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(84));

-- Location: LCCOMB_X25_Y24_N26
\inst|Equal27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal27~0_combout\ = (!\inst|buffer1\(87) & (!\inst|buffer1\(85) & (!\inst|buffer1\(86) & !\inst|buffer1\(84))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(87),
	datab => \inst|buffer1\(85),
	datac => \inst|buffer1\(86),
	datad => \inst|buffer1\(84),
	combout => \inst|Equal27~0_combout\);

-- Location: FF_X25_Y21_N17
\inst|bufferout[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(103),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(103));

-- Location: LCCOMB_X25_Y21_N16
\inst2|buffer1[91]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(91) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(103)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(91)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(91),
	datac => \inst|bufferout\(103),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(91));

-- Location: LCCOMB_X25_Y21_N26
\inst2|bufferout[91]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(91) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(91))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(91))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(91),
	datac => \inst2|bufferout\(91),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(91));

-- Location: LCCOMB_X27_Y24_N28
\inst|buffer1~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~158_combout\ = (!\inst|buffer1[84]~149_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(91)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[84]~149_combout\,
	datab => \ADC_IN[7]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(91),
	combout => \inst|buffer1~158_combout\);

-- Location: FF_X27_Y24_N29
\inst|buffer1[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~158_combout\,
	ena => \inst|buffer1[84]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(91));

-- Location: FF_X28_Y24_N19
\inst|bufferout[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(113),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(113));

-- Location: LCCOMB_X28_Y24_N18
\inst2|buffer1[101]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(101) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(113)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(101)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(101),
	datac => \inst|bufferout\(113),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(101));

-- Location: LCCOMB_X28_Y24_N20
\inst2|bufferout[101]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(101) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(101))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(101),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(101),
	combout => \inst2|bufferout\(101));

-- Location: LCCOMB_X28_Y21_N26
\inst|buffer1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~64_combout\ = (!\inst|buffer1[96]~56_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(101)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[5]~input_o\,
	datab => \inst|buffer1[96]~56_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(101),
	combout => \inst|buffer1~64_combout\);

-- Location: FF_X28_Y21_N27
\inst|buffer1[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~64_combout\,
	ena => \inst|buffer1[96]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(101));

-- Location: FF_X29_Y21_N15
\inst|bufferout[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(101),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(101));

-- Location: LCCOMB_X29_Y21_N14
\inst2|buffer1[89]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(89) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(101)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(89)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(89),
	datac => \inst|bufferout\(101),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(89));

-- Location: LCCOMB_X29_Y21_N8
\inst2|bufferout[89]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(89) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(89))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(89))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(89),
	datac => \inst2|bufferout\(89),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(89));

-- Location: LCCOMB_X27_Y24_N30
\inst|buffer1~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~156_combout\ = (!\inst|buffer1[84]~149_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(89)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[84]~149_combout\,
	datab => \ADC_IN[5]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(89),
	combout => \inst|buffer1~156_combout\);

-- Location: FF_X27_Y24_N31
\inst|buffer1[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~156_combout\,
	ena => \inst|buffer1[84]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(89));

-- Location: FF_X28_Y24_N5
\inst|bufferout[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(112),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(112));

-- Location: LCCOMB_X28_Y24_N4
\inst2|buffer1[100]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(100) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(112)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(100)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(100),
	datac => \inst|bufferout\(112),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(100));

-- Location: LCCOMB_X28_Y24_N6
\inst2|bufferout[100]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(100) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(100)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(100)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(100),
	datab => \inst2|buffer1\(100),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(100));

-- Location: LCCOMB_X28_Y21_N8
\inst|buffer1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~63_combout\ = (!\inst|buffer1[96]~56_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(100)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[4]~input_o\,
	datab => \inst|buffer1[96]~56_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(100),
	combout => \inst|buffer1~63_combout\);

-- Location: FF_X28_Y21_N9
\inst|buffer1[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~63_combout\,
	ena => \inst|buffer1[96]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(100));

-- Location: FF_X29_Y21_N25
\inst|bufferout[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(100),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(100));

-- Location: LCCOMB_X29_Y21_N24
\inst2|buffer1[88]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(88) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(100)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(88)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(88),
	datac => \inst|bufferout\(100),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(88));

-- Location: LCCOMB_X29_Y21_N22
\inst2|bufferout[88]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(88) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(88))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(88))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(88),
	datac => \inst2|bufferout\(88),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(88));

-- Location: LCCOMB_X29_Y21_N10
\inst|buffer1~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~157_combout\ = (!\inst|buffer1[84]~149_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(88))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(88),
	datab => \ADC_IN[4]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[84]~149_combout\,
	combout => \inst|buffer1~157_combout\);

-- Location: FF_X29_Y21_N11
\inst|buffer1[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~157_combout\,
	ena => \inst|buffer1[84]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(88));

-- Location: FF_X28_Y24_N1
\inst|bufferout[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(114),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(114));

-- Location: LCCOMB_X28_Y24_N0
\inst2|buffer1[102]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(102) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(114)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(102)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(102),
	datac => \inst|bufferout\(114),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(102));

-- Location: LCCOMB_X28_Y24_N24
\inst2|bufferout[102]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(102) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(102))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(102))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(102),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(102),
	combout => \inst2|bufferout\(102));

-- Location: LCCOMB_X28_Y21_N24
\inst|buffer1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~65_combout\ = (!\inst|buffer1[96]~56_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(102)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[6]~input_o\,
	datab => \inst|buffer1[96]~56_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(102),
	combout => \inst|buffer1~65_combout\);

-- Location: FF_X28_Y21_N25
\inst|buffer1[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~65_combout\,
	ena => \inst|buffer1[96]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(102));

-- Location: FF_X28_Y20_N15
\inst|bufferout[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(102),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(102));

-- Location: LCCOMB_X28_Y20_N14
\inst2|buffer1[90]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(90) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(102)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(90)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(90),
	datac => \inst|bufferout\(102),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(90));

-- Location: LCCOMB_X28_Y20_N16
\inst2|bufferout[90]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(90) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(90))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(90))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(90),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(90),
	combout => \inst2|bufferout\(90));

-- Location: LCCOMB_X28_Y20_N12
\inst|buffer1~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~159_combout\ = (!\inst|buffer1[84]~149_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(90)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[84]~149_combout\,
	datab => \ADC_IN[6]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(90),
	combout => \inst|buffer1~159_combout\);

-- Location: FF_X28_Y20_N13
\inst|buffer1[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~159_combout\,
	ena => \inst|buffer1[84]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(90));

-- Location: LCCOMB_X25_Y24_N20
\inst|Equal27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal27~1_combout\ = (!\inst|buffer1\(91) & (!\inst|buffer1\(89) & (!\inst|buffer1\(88) & !\inst|buffer1\(90))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(91),
	datab => \inst|buffer1\(89),
	datac => \inst|buffer1\(88),
	datad => \inst|buffer1\(90),
	combout => \inst|Equal27~1_combout\);

-- Location: LCCOMB_X25_Y24_N30
\inst|Equal27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal27~3_combout\ = (\inst|Equal27~2_combout\ & (\inst|Equal27~0_combout\ & \inst|Equal27~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal27~2_combout\,
	datac => \inst|Equal27~0_combout\,
	datad => \inst|Equal27~1_combout\,
	combout => \inst|Equal27~3_combout\);

-- Location: LCCOMB_X25_Y24_N14
\inst|buffer1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~38_combout\ = (\inst|counter\(2) & (!\inst|counter\(1) & (\inst|Equal27~3_combout\ & \inst|buffer1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|Equal27~3_combout\,
	datad => \inst|buffer1~18_combout\,
	combout => \inst|buffer1~38_combout\);

-- Location: LCCOMB_X27_Y24_N2
\inst|buffer1[84]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[84]~151_combout\ = ((!\inst1|OUTPUT\(3) & (!\inst|buffer1~38_combout\ & !\inst|buffer1[84]~148_combout\))) # (!\inst1|OUTPUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst1|OUTPUT\(3),
	datac => \inst|buffer1~38_combout\,
	datad => \inst|buffer1[84]~148_combout\,
	combout => \inst|buffer1[84]~151_combout\);

-- Location: LCCOMB_X27_Y24_N8
\inst|buffer1[84]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[84]~152_combout\ = (\inst1|OUTPUT\(0)) # (!\inst|buffer1[84]~151_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buffer1[84]~151_combout\,
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[84]~152_combout\);

-- Location: FF_X29_Y21_N21
\inst|buffer1[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~155_combout\,
	ena => \inst|buffer1[84]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(86));

-- Location: FF_X26_Y20_N15
\inst|bufferout[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(86),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(86));

-- Location: LCCOMB_X26_Y20_N14
\inst2|buffer1[74]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(74) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(86)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(74)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(74),
	datac => \inst|bufferout\(86),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(74));

-- Location: LCCOMB_X26_Y20_N22
\inst2|bufferout[74]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(74) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(74))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(74))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(74),
	datac => \inst2|bufferout\(74),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(74));

-- Location: LCCOMB_X26_Y20_N20
\inst|buffer1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~46_combout\ = (!\inst|buffer1[72]~41_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(74))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(74),
	datab => \ADC_IN[2]~input_o\,
	datac => \inst|buffer1[72]~41_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~46_combout\);

-- Location: FF_X26_Y24_N21
\inst|bufferout[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(93),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(93));

-- Location: LCCOMB_X26_Y24_N20
\inst2|buffer1[81]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(81) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(93)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(81)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(81),
	datac => \inst|bufferout\(93),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(81));

-- Location: LCCOMB_X26_Y24_N12
\inst2|bufferout[81]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(81) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(81)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(81)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(81),
	datab => \inst2|buffer1\(81),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(81));

-- Location: LCCOMB_X26_Y24_N10
\inst|buffer1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~53_combout\ = (!\inst|buffer1[72]~41_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(81))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(81),
	datab => \inst|buffer1[72]~41_combout\,
	datac => \ADC_IN[9]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~53_combout\);

-- Location: FF_X26_Y24_N11
\inst|buffer1[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~53_combout\,
	ena => \inst|buffer1[72]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(81));

-- Location: FF_X26_Y24_N7
\inst|bufferout[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(92),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(92));

-- Location: LCCOMB_X26_Y24_N6
\inst2|buffer1[80]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(80) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(92)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(80)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(80),
	datac => \inst|bufferout\(92),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(80));

-- Location: LCCOMB_X26_Y24_N26
\inst2|bufferout[80]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(80) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(80))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(80))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(80),
	datac => \inst2|bufferout\(80),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(80));

-- Location: LCCOMB_X26_Y24_N24
\inst|buffer1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~52_combout\ = (!\inst|buffer1[72]~41_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(80))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(80),
	datab => \inst|buffer1[72]~41_combout\,
	datac => \ADC_IN[8]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~52_combout\);

-- Location: FF_X26_Y24_N25
\inst|buffer1[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~52_combout\,
	ena => \inst|buffer1[72]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(80));

-- Location: LCCOMB_X26_Y24_N0
\inst|Equal23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal23~2_combout\ = (!\inst|buffer1\(81) & (!\inst|buffer1\(80) & (!\inst|buffer1\(83) & !\inst|buffer1\(82))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(81),
	datab => \inst|buffer1\(80),
	datac => \inst|buffer1\(83),
	datad => \inst|buffer1\(82),
	combout => \inst|Equal23~2_combout\);

-- Location: FF_X26_Y21_N17
\inst|bufferout[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(91),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(91));

-- Location: LCCOMB_X26_Y21_N16
\inst2|buffer1[79]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(79) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(91)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(79)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(79),
	datac => \inst|bufferout\(91),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(79));

-- Location: LCCOMB_X26_Y21_N22
\inst2|bufferout[79]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(79) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(79))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(79))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(79),
	datac => \inst2|bufferout\(79),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(79));

-- Location: LCCOMB_X26_Y21_N10
\inst|buffer1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~51_combout\ = (!\inst|buffer1[72]~41_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(79)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[7]~input_o\,
	datab => \inst|buffer1[72]~41_combout\,
	datac => \inst2|bufferout\(79),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~51_combout\);

-- Location: FF_X26_Y21_N11
\inst|buffer1[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~51_combout\,
	ena => \inst|buffer1[72]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(79));

-- Location: FF_X26_Y21_N29
\inst|bufferout[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(89),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(89));

-- Location: LCCOMB_X26_Y21_N28
\inst2|buffer1[77]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(77) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(89)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(77)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(77),
	datac => \inst|bufferout\(89),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(77));

-- Location: LCCOMB_X26_Y21_N24
\inst2|bufferout[77]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(77) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(77))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(77))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(77),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(77),
	combout => \inst2|bufferout\(77));

-- Location: LCCOMB_X26_Y21_N14
\inst|buffer1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~49_combout\ = (!\inst|buffer1[72]~41_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(77)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[5]~input_o\,
	datab => \inst|buffer1[72]~41_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(77),
	combout => \inst|buffer1~49_combout\);

-- Location: FF_X26_Y21_N15
\inst|buffer1[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~49_combout\,
	ena => \inst|buffer1[72]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(77));

-- Location: FF_X26_Y21_N5
\inst|bufferout[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(90),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(90));

-- Location: LCCOMB_X26_Y21_N4
\inst2|buffer1[78]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(78) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(90)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(78)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(78),
	datac => \inst|bufferout\(90),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(78));

-- Location: LCCOMB_X26_Y21_N26
\inst2|bufferout[78]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(78) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(78))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(78))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(78),
	datac => \inst2|bufferout\(78),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(78));

-- Location: LCCOMB_X26_Y21_N30
\inst|buffer1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~50_combout\ = (!\inst|buffer1[72]~41_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(78)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[6]~input_o\,
	datab => \inst|buffer1[72]~41_combout\,
	datac => \inst2|bufferout\(78),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~50_combout\);

-- Location: FF_X26_Y21_N31
\inst|buffer1[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~50_combout\,
	ena => \inst|buffer1[72]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(78));

-- Location: FF_X26_Y21_N19
\inst|bufferout[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(88),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(88));

-- Location: LCCOMB_X26_Y21_N18
\inst2|buffer1[76]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(76) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(88)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(76)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(76),
	datac => \inst|bufferout\(88),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(76));

-- Location: LCCOMB_X26_Y21_N20
\inst2|bufferout[76]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(76) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(76))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(76))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(76),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(76),
	combout => \inst2|bufferout\(76));

-- Location: LCCOMB_X26_Y21_N6
\inst|buffer1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~48_combout\ = (!\inst|buffer1[72]~41_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(76))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(76),
	datab => \inst|buffer1[72]~41_combout\,
	datac => \ADC_IN[4]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~48_combout\);

-- Location: FF_X26_Y21_N7
\inst|buffer1[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~48_combout\,
	ena => \inst|buffer1[72]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(76));

-- Location: LCCOMB_X26_Y21_N0
\inst|Equal23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal23~1_combout\ = (!\inst|buffer1\(79) & (!\inst|buffer1\(77) & (!\inst|buffer1\(78) & !\inst|buffer1\(76))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(79),
	datab => \inst|buffer1\(77),
	datac => \inst|buffer1\(78),
	datad => \inst|buffer1\(76),
	combout => \inst|Equal23~1_combout\);

-- Location: FF_X26_Y20_N17
\inst|bufferout[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(85),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(85));

-- Location: LCCOMB_X26_Y20_N16
\inst2|buffer1[73]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(73) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(85)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(73)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(73),
	datac => \inst|bufferout\(85),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(73));

-- Location: LCCOMB_X26_Y20_N12
\inst2|bufferout[73]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(73) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(73)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(73)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(73),
	datab => \inst2|buffer1\(73),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(73));

-- Location: LCCOMB_X26_Y20_N30
\inst|buffer1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~45_combout\ = (!\inst|buffer1[72]~41_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(73))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(73),
	datab => \ADC_IN[1]~input_o\,
	datac => \inst|buffer1[72]~41_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~45_combout\);

-- Location: FF_X26_Y20_N31
\inst|buffer1[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~45_combout\,
	ena => \inst|buffer1[72]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(73));

-- Location: FF_X26_Y20_N3
\inst|bufferout[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(84),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(84));

-- Location: LCCOMB_X26_Y20_N2
\inst2|buffer1[72]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(72) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(84)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(72)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(72),
	datac => \inst|bufferout\(84),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(72));

-- Location: LCCOMB_X26_Y20_N26
\inst2|bufferout[72]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(72) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(72))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(72))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(72),
	datac => \inst2|bufferout\(72),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(72));

-- Location: LCCOMB_X26_Y20_N8
\inst|buffer1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~42_combout\ = (!\inst|buffer1[72]~41_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(72))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(72),
	datab => \ADC_IN[0]~input_o\,
	datac => \inst|buffer1[72]~41_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~42_combout\);

-- Location: FF_X26_Y20_N9
\inst|buffer1[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~42_combout\,
	ena => \inst|buffer1[72]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(72));

-- Location: FF_X26_Y20_N25
\inst|bufferout[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(87),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(87));

-- Location: LCCOMB_X26_Y20_N24
\inst2|buffer1[75]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(75) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(87)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(75)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(75),
	datac => \inst|bufferout\(87),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(75));

-- Location: LCCOMB_X26_Y20_N4
\inst2|bufferout[75]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(75) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(75))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(75))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(75),
	datac => \inst2|bufferout\(75),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(75));

-- Location: LCCOMB_X26_Y20_N10
\inst|buffer1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~47_combout\ = (!\inst|buffer1[72]~41_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(75)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[3]~input_o\,
	datab => \inst2|bufferout\(75),
	datac => \inst|buffer1[72]~41_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~47_combout\);

-- Location: FF_X26_Y20_N11
\inst|buffer1[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~47_combout\,
	ena => \inst|buffer1[72]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(75));

-- Location: LCCOMB_X26_Y20_N0
\inst|Equal23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal23~0_combout\ = (!\inst|buffer1\(73) & (!\inst|buffer1\(74) & (!\inst|buffer1\(72) & !\inst|buffer1\(75))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(73),
	datab => \inst|buffer1\(74),
	datac => \inst|buffer1\(72),
	datad => \inst|buffer1\(75),
	combout => \inst|Equal23~0_combout\);

-- Location: LCCOMB_X27_Y25_N30
\inst|Equal23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal23~3_combout\ = (\inst|Equal23~2_combout\ & (\inst|Equal23~1_combout\ & \inst|Equal23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal23~2_combout\,
	datac => \inst|Equal23~1_combout\,
	datad => \inst|Equal23~0_combout\,
	combout => \inst|Equal23~3_combout\);

-- Location: LCCOMB_X27_Y25_N12
\inst|buffer1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~19_combout\ = (\inst|counter\(1) & (!\inst|counter\(2) & (\inst|Equal23~3_combout\ & \inst|buffer1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(2),
	datac => \inst|Equal23~3_combout\,
	datad => \inst|buffer1~18_combout\,
	combout => \inst|buffer1~19_combout\);

-- Location: LCCOMB_X27_Y22_N14
\inst|buffer1[72]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[72]~43_combout\ = ((!\inst1|OUTPUT\(3) & (!\inst|buffer1~19_combout\ & !\inst|buffer1[72]~40_combout\))) # (!\inst1|OUTPUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst|buffer1~19_combout\,
	datac => \inst1|OUTPUT\(1),
	datad => \inst|buffer1[72]~40_combout\,
	combout => \inst|buffer1[72]~43_combout\);

-- Location: LCCOMB_X27_Y22_N10
\inst|buffer1[72]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[72]~44_combout\ = (\inst1|OUTPUT\(0)) # (!\inst|buffer1[72]~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buffer1[72]~43_combout\,
	datac => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[72]~44_combout\);

-- Location: FF_X26_Y20_N21
\inst|buffer1[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~46_combout\,
	ena => \inst|buffer1[72]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(74));

-- Location: FF_X27_Y20_N9
\inst|bufferout[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(74),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(74));

-- Location: LCCOMB_X27_Y20_N8
\inst2|buffer1[62]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(62) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(74)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(62)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(62),
	datac => \inst|bufferout\(74),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(62));

-- Location: LCCOMB_X27_Y20_N30
\inst2|bufferout[62]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(62) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(62))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(62),
	datac => \inst2|bufferout\(62),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(62));

-- Location: FF_X26_Y25_N29
\inst|bufferout[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(83),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(83));

-- Location: LCCOMB_X26_Y25_N28
\inst2|buffer1[71]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(71) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(83)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(71)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(71),
	datac => \inst|bufferout\(83),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(71));

-- Location: LCCOMB_X26_Y25_N2
\inst2|bufferout[71]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(71) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(71))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(71))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(71),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(71),
	combout => \inst2|bufferout\(71));

-- Location: LCCOMB_X26_Y25_N14
\inst|buffer1~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~147_combout\ = (!\inst|buffer1[60]~133_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(71)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[11]~input_o\,
	datab => \inst2|bufferout\(71),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[60]~133_combout\,
	combout => \inst|buffer1~147_combout\);

-- Location: FF_X27_Y21_N9
\inst|bufferout[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(80),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(80));

-- Location: LCCOMB_X27_Y21_N8
\inst2|buffer1[68]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(68) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(80)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(68)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(68),
	datac => \inst|bufferout\(80),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(68));

-- Location: LCCOMB_X27_Y21_N12
\inst2|bufferout[68]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(68) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(68)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(68)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(68),
	datab => \inst2|buffer1\(68),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(68));

-- Location: LCCOMB_X27_Y21_N10
\inst|buffer1~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~144_combout\ = (!\inst|buffer1[60]~133_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(68))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(68),
	datab => \ADC_IN[8]~input_o\,
	datac => \inst|buffer1[60]~133_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~144_combout\);

-- Location: FF_X27_Y21_N11
\inst|buffer1[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~144_combout\,
	ena => \inst|buffer1[60]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(68));

-- Location: FF_X27_Y21_N19
\inst|bufferout[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(81),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(81));

-- Location: LCCOMB_X27_Y21_N18
\inst2|buffer1[69]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(69) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(81)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(69)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(69),
	datac => \inst|bufferout\(81),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(69));

-- Location: LCCOMB_X27_Y21_N26
\inst2|bufferout[69]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(69) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(69))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(69))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(69),
	datac => \inst2|bufferout\(69),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(69));

-- Location: LCCOMB_X27_Y21_N24
\inst|buffer1~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~145_combout\ = (!\inst|buffer1[60]~133_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(69)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[60]~133_combout\,
	datab => \ADC_IN[9]~input_o\,
	datac => \inst2|bufferout\(69),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~145_combout\);

-- Location: FF_X27_Y21_N25
\inst|buffer1[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~145_combout\,
	ena => \inst|buffer1[60]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(69));

-- Location: LCCOMB_X26_Y23_N12
\inst|Equal19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal19~2_combout\ = (!\inst|buffer1\(71) & (!\inst|buffer1\(70) & (!\inst|buffer1\(68) & !\inst|buffer1\(69))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(71),
	datab => \inst|buffer1\(70),
	datac => \inst|buffer1\(68),
	datad => \inst|buffer1\(69),
	combout => \inst|Equal19~2_combout\);

-- Location: LCCOMB_X26_Y23_N10
\inst|buffer1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~26_combout\ = (!\inst|counter\(2) & (!\inst|counter\(1) & \inst|Equal19~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(2),
	datac => \inst|counter\(1),
	datad => \inst|Equal19~2_combout\,
	combout => \inst|buffer1~26_combout\);

-- Location: FF_X27_Y21_N29
\inst|bufferout[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(75),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(75));

-- Location: LCCOMB_X27_Y21_N28
\inst2|buffer1[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(63) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(75)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(63),
	datac => \inst|bufferout\(75),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(63));

-- Location: LCCOMB_X27_Y21_N4
\inst2|bufferout[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(63) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(63))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(63),
	datac => \inst2|bufferout\(63),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(63));

-- Location: LCCOMB_X27_Y21_N20
\inst|buffer1~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~139_combout\ = (!\inst|buffer1[60]~133_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(63))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[60]~133_combout\,
	datab => \inst2|bufferout\(63),
	datac => \ADC_IN[3]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~139_combout\);

-- Location: FF_X27_Y21_N21
\inst|buffer1[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~139_combout\,
	ena => \inst|buffer1[60]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(63));

-- Location: FF_X26_Y25_N13
\inst|bufferout[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(73),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(73));

-- Location: LCCOMB_X26_Y25_N12
\inst2|buffer1[61]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(61) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(73)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(61)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(61),
	datac => \inst|bufferout\(73),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(61));

-- Location: LCCOMB_X26_Y25_N22
\inst2|bufferout[61]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(61) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(61))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(61))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(61),
	datac => \inst2|bufferout\(61),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(61));

-- Location: LCCOMB_X26_Y25_N10
\inst|buffer1~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~137_combout\ = (!\inst|buffer1[60]~133_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(61)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[1]~input_o\,
	datab => \inst2|bufferout\(61),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[60]~133_combout\,
	combout => \inst|buffer1~137_combout\);

-- Location: FF_X26_Y25_N11
\inst|buffer1[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~137_combout\,
	ena => \inst|buffer1[60]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(61));

-- Location: FF_X26_Y25_N19
\inst|bufferout[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(72),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(72));

-- Location: LCCOMB_X26_Y25_N18
\inst2|buffer1[60]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(60) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(72)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(60),
	datac => \inst|bufferout\(72),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(60));

-- Location: LCCOMB_X26_Y25_N8
\inst2|bufferout[60]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(60) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(60))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(60),
	datac => \inst2|bufferout\(60),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(60));

-- Location: LCCOMB_X26_Y25_N0
\inst|buffer1~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~134_combout\ = (!\inst|buffer1[60]~133_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(60)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[0]~input_o\,
	datab => \inst2|bufferout\(60),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[60]~133_combout\,
	combout => \inst|buffer1~134_combout\);

-- Location: FF_X26_Y25_N1
\inst|buffer1[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~134_combout\,
	ena => \inst|buffer1[60]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(60));

-- Location: LCCOMB_X26_Y23_N14
\inst|Equal19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal19~0_combout\ = (!\inst|buffer1\(63) & (!\inst|buffer1\(61) & (!\inst|buffer1\(62) & !\inst|buffer1\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(63),
	datab => \inst|buffer1\(61),
	datac => \inst|buffer1\(62),
	datad => \inst|buffer1\(60),
	combout => \inst|Equal19~0_combout\);

-- Location: FF_X27_Y20_N29
\inst|bufferout[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(76),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(76));

-- Location: LCCOMB_X27_Y20_N28
\inst2|buffer1[64]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(64) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(76)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(64)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(64),
	datac => \inst|bufferout\(76),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(64));

-- Location: LCCOMB_X27_Y20_N26
\inst2|bufferout[64]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(64) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(64))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(64))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(64),
	datac => \inst2|bufferout\(64),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(64));

-- Location: LCCOMB_X27_Y20_N10
\inst|buffer1~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~140_combout\ = (!\inst|buffer1[60]~133_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(64)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[4]~input_o\,
	datac => \inst|buffer1[60]~133_combout\,
	datad => \inst2|bufferout\(64),
	combout => \inst|buffer1~140_combout\);

-- Location: FF_X27_Y20_N11
\inst|buffer1[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~140_combout\,
	ena => \inst|buffer1[60]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(64));

-- Location: FF_X27_Y20_N19
\inst|bufferout[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(77),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(77));

-- Location: LCCOMB_X27_Y20_N18
\inst2|buffer1[65]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(65) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(77)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(65)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(65),
	datac => \inst|bufferout\(77),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(65));

-- Location: LCCOMB_X27_Y20_N22
\inst2|bufferout[65]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(65) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(65))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(65))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(65),
	datac => \inst2|bufferout\(65),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(65));

-- Location: LCCOMB_X27_Y20_N2
\inst|buffer1~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~141_combout\ = (!\inst|buffer1[60]~133_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(65)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[5]~input_o\,
	datac => \inst|buffer1[60]~133_combout\,
	datad => \inst2|bufferout\(65),
	combout => \inst|buffer1~141_combout\);

-- Location: FF_X27_Y20_N3
\inst|buffer1[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~141_combout\,
	ena => \inst|buffer1[60]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(65));

-- Location: FF_X26_Y21_N3
\inst|bufferout[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(78),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(78));

-- Location: LCCOMB_X26_Y21_N2
\inst2|buffer1[66]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(66) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(78)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(66)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(66),
	datac => \inst|bufferout\(78),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(66));

-- Location: LCCOMB_X26_Y21_N8
\inst2|bufferout[66]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(66) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(66))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(66))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(66),
	datac => \inst2|bufferout\(66),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(66));

-- Location: LCCOMB_X27_Y21_N30
\inst|buffer1~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~142_combout\ = (!\inst|buffer1[60]~133_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(66))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(66),
	datab => \ADC_IN[6]~input_o\,
	datac => \inst|buffer1[60]~133_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~142_combout\);

-- Location: FF_X27_Y21_N31
\inst|buffer1[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~142_combout\,
	ena => \inst|buffer1[60]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(66));

-- Location: FF_X27_Y21_N7
\inst|bufferout[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(79),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(79));

-- Location: LCCOMB_X27_Y21_N6
\inst2|buffer1[67]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(67) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(79)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(67)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(67),
	datac => \inst|bufferout\(79),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(67));

-- Location: LCCOMB_X27_Y21_N22
\inst2|bufferout[67]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(67) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(67))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(67))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(67),
	datac => \inst2|bufferout\(67),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(67));

-- Location: LCCOMB_X27_Y21_N0
\inst|buffer1~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~143_combout\ = (!\inst|buffer1[60]~133_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(67))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[60]~133_combout\,
	datab => \inst2|bufferout\(67),
	datac => \inst1|OUTPUT\(3),
	datad => \ADC_IN[7]~input_o\,
	combout => \inst|buffer1~143_combout\);

-- Location: FF_X27_Y21_N1
\inst|buffer1[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~143_combout\,
	ena => \inst|buffer1[60]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(67));

-- Location: LCCOMB_X27_Y20_N24
\inst|Equal19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal19~1_combout\ = (!\inst|buffer1\(64) & (!\inst|buffer1\(65) & (!\inst|buffer1\(66) & !\inst|buffer1\(67))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(64),
	datab => \inst|buffer1\(65),
	datac => \inst|buffer1\(66),
	datad => \inst|buffer1\(67),
	combout => \inst|Equal19~1_combout\);

-- Location: LCCOMB_X26_Y23_N6
\inst|buffer1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~27_combout\ = (\inst|buffer1~26_combout\ & (\inst|Equal19~0_combout\ & (\inst|buffer1~18_combout\ & \inst|Equal19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~26_combout\,
	datab => \inst|Equal19~0_combout\,
	datac => \inst|buffer1~18_combout\,
	datad => \inst|Equal19~1_combout\,
	combout => \inst|buffer1~27_combout\);

-- Location: LCCOMB_X27_Y21_N16
\inst|buffer1[60]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[60]~135_combout\ = ((!\inst1|OUTPUT\(3) & (!\inst|buffer1~27_combout\ & !\inst|buffer1[60]~132_combout\))) # (!\inst1|OUTPUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst1|OUTPUT\(3),
	datac => \inst|buffer1~27_combout\,
	datad => \inst|buffer1[60]~132_combout\,
	combout => \inst|buffer1[60]~135_combout\);

-- Location: LCCOMB_X27_Y21_N14
\inst|buffer1[60]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[60]~136_combout\ = (\inst1|OUTPUT\(0)) # (!\inst|buffer1[60]~135_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1[60]~135_combout\,
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[60]~136_combout\);

-- Location: FF_X26_Y25_N15
\inst|buffer1[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~147_combout\,
	ena => \inst|buffer1[60]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(71));

-- Location: FF_X26_Y23_N25
\inst|bufferout[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(71),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(71));

-- Location: LCCOMB_X26_Y23_N24
\inst2|buffer1[59]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(59) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(71)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(59),
	datac => \inst|bufferout\(71),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(59));

-- Location: LCCOMB_X26_Y23_N26
\inst2|bufferout[59]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(59) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(59))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(59),
	datac => \inst2|bufferout\(59),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(59));

-- Location: LCCOMB_X26_Y23_N22
\inst|buffer1~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~85_combout\ = (!\inst|buffer1[48]~71_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(59))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(59),
	datab => \ADC_IN[11]~input_o\,
	datac => \inst|buffer1[48]~71_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~85_combout\);

-- Location: LCCOMB_X27_Y22_N4
\inst|buffer1[48]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[48]~73_combout\ = (!\inst1|OUTPUT\(3) & ((!\inst|Equal17~7_combout\) # (!\inst|Equal16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datac => \inst|Equal16~1_combout\,
	datad => \inst|Equal17~7_combout\,
	combout => \inst|buffer1[48]~73_combout\);

-- Location: LCCOMB_X27_Y22_N28
\inst|buffer1[48]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[48]~74_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & ((\inst|buffer1~36_combout\) # (!\inst|buffer1[48]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst1|OUTPUT\(0),
	datac => \inst|buffer1[48]~73_combout\,
	datad => \inst|buffer1~36_combout\,
	combout => \inst|buffer1[48]~74_combout\);

-- Location: FF_X26_Y23_N23
\inst|buffer1[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~85_combout\,
	ena => \inst|buffer1[48]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(59));

-- Location: FF_X26_Y23_N1
\inst|bufferout[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(70),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(70));

-- Location: LCCOMB_X26_Y23_N0
\inst2|buffer1[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(58) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(70)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(58)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(58),
	datac => \inst|bufferout\(70),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(58));

-- Location: LCCOMB_X26_Y23_N20
\inst2|bufferout[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(58) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(58))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(58),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(58),
	combout => \inst2|bufferout\(58));

-- Location: LCCOMB_X26_Y23_N4
\inst|buffer1~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~84_combout\ = (!\inst|buffer1[48]~71_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(58)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[10]~input_o\,
	datab => \inst2|bufferout\(58),
	datac => \inst|buffer1[48]~71_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~84_combout\);

-- Location: FF_X26_Y23_N5
\inst|buffer1[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~84_combout\,
	ena => \inst|buffer1[48]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(58));

-- Location: LCCOMB_X26_Y23_N16
\inst|Equal21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal21~6_combout\ = (\inst|buffer1\(59) & (\inst|buffer1\(71) & (\inst|buffer1\(58) $ (!\inst|buffer1\(70))))) # (!\inst|buffer1\(59) & (!\inst|buffer1\(71) & (\inst|buffer1\(58) $ (!\inst|buffer1\(70)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(59),
	datab => \inst|buffer1\(58),
	datac => \inst|buffer1\(70),
	datad => \inst|buffer1\(71),
	combout => \inst|Equal21~6_combout\);

-- Location: LCCOMB_X27_Y23_N24
\inst|Equal20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal20~0_combout\ = (\inst|Equal16~0_combout\ & (!\inst|counter\(2) & \inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal16~0_combout\,
	datab => \inst|counter\(2),
	datad => \inst|counter\(1),
	combout => \inst|Equal20~0_combout\);

-- Location: FF_X25_Y21_N25
\inst|bufferout[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(69),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(69));

-- Location: LCCOMB_X25_Y21_N24
\inst2|buffer1[57]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(57) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(69)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(57),
	datac => \inst|bufferout\(69),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(57));

-- Location: LCCOMB_X25_Y21_N30
\inst2|bufferout[57]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(57) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(57))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(57),
	datac => \inst2|bufferout\(57),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(57));

-- Location: LCCOMB_X24_Y23_N26
\inst|buffer1~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~83_combout\ = (!\inst|buffer1[48]~71_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(57)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[9]~input_o\,
	datab => \inst|buffer1[48]~71_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(57),
	combout => \inst|buffer1~83_combout\);

-- Location: FF_X24_Y23_N27
\inst|buffer1[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~83_combout\,
	ena => \inst|buffer1[48]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(57));

-- Location: FF_X25_Y27_N15
\inst|bufferout[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(68),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(68));

-- Location: LCCOMB_X25_Y27_N14
\inst2|buffer1[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(56) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(68)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(56)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(56),
	datac => \inst|bufferout\(68),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(56));

-- Location: LCCOMB_X25_Y27_N12
\inst2|bufferout[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(56) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(56))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(56),
	datac => \inst2|bufferout\(56),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(56));

-- Location: LCCOMB_X24_Y23_N4
\inst|buffer1~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~82_combout\ = (!\inst|buffer1[48]~71_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(56)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datab => \inst2|bufferout\(56),
	datac => \inst|buffer1[48]~71_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~82_combout\);

-- Location: FF_X24_Y23_N5
\inst|buffer1[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~82_combout\,
	ena => \inst|buffer1[48]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(56));

-- Location: LCCOMB_X24_Y23_N30
\inst|Equal21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal21~5_combout\ = (\inst|buffer1\(57) & (\inst|buffer1\(69) & (\inst|buffer1\(56) $ (!\inst|buffer1\(68))))) # (!\inst|buffer1\(57) & (!\inst|buffer1\(69) & (\inst|buffer1\(56) $ (!\inst|buffer1\(68)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(57),
	datab => \inst|buffer1\(56),
	datac => \inst|buffer1\(68),
	datad => \inst|buffer1\(69),
	combout => \inst|Equal21~5_combout\);

-- Location: FF_X26_Y25_N17
\inst|bufferout[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(64),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(64));

-- Location: LCCOMB_X26_Y25_N16
\inst2|buffer1[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(52) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(64)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(52)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(52),
	datac => \inst|bufferout\(64),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(52));

-- Location: LCCOMB_X26_Y25_N30
\inst2|bufferout[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(52) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(52))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(52),
	datac => \inst2|bufferout\(52),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(52));

-- Location: LCCOMB_X24_Y23_N18
\inst|buffer1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~78_combout\ = (!\inst|buffer1[48]~71_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(52)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[4]~input_o\,
	datab => \inst|buffer1[48]~71_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(52),
	combout => \inst|buffer1~78_combout\);

-- Location: FF_X24_Y23_N19
\inst|buffer1[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~78_combout\,
	ena => \inst|buffer1[48]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(52));

-- Location: FF_X27_Y20_N1
\inst|bufferout[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(65),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(65));

-- Location: LCCOMB_X27_Y20_N0
\inst2|buffer1[53]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(53) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(65)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(53),
	datac => \inst|bufferout\(65),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(53));

-- Location: LCCOMB_X27_Y20_N16
\inst2|bufferout[53]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(53) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(53))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(53),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(53),
	combout => \inst2|bufferout\(53));

-- Location: LCCOMB_X24_Y23_N12
\inst|buffer1~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~79_combout\ = (!\inst|buffer1[48]~71_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(53)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[5]~input_o\,
	datab => \inst|buffer1[48]~71_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(53),
	combout => \inst|buffer1~79_combout\);

-- Location: FF_X24_Y23_N13
\inst|buffer1[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~79_combout\,
	ena => \inst|buffer1[48]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(53));

-- Location: LCCOMB_X27_Y23_N10
\inst|Equal21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal21~2_combout\ = (\inst|buffer1\(65) & (\inst|buffer1\(53) & (\inst|buffer1\(52) $ (!\inst|buffer1\(64))))) # (!\inst|buffer1\(65) & (!\inst|buffer1\(53) & (\inst|buffer1\(52) $ (!\inst|buffer1\(64)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(65),
	datab => \inst|buffer1\(52),
	datac => \inst|buffer1\(53),
	datad => \inst|buffer1\(64),
	combout => \inst|Equal21~2_combout\);

-- Location: LCCOMB_X27_Y23_N0
\inst|Equal21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal21~1_combout\ = (\inst|buffer1\(51) & (\inst|buffer1\(63) & (\inst|buffer1\(62) $ (!\inst|buffer1\(50))))) # (!\inst|buffer1\(51) & (!\inst|buffer1\(63) & (\inst|buffer1\(62) $ (!\inst|buffer1\(50)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(51),
	datab => \inst|buffer1\(62),
	datac => \inst|buffer1\(50),
	datad => \inst|buffer1\(63),
	combout => \inst|Equal21~1_combout\);

-- Location: FF_X25_Y19_N21
\inst|bufferout[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(66),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(66));

-- Location: LCCOMB_X25_Y19_N20
\inst2|buffer1[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(54) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(66)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(54)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(54),
	datac => \inst|bufferout\(66),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(54));

-- Location: LCCOMB_X25_Y19_N24
\inst2|bufferout[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(54) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(54))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(54),
	datac => \inst2|bufferout\(54),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(54));

-- Location: LCCOMB_X24_Y23_N2
\inst|buffer1~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~80_combout\ = (!\inst|buffer1[48]~71_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(54)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[6]~input_o\,
	datab => \inst2|bufferout\(54),
	datac => \inst|buffer1[48]~71_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~80_combout\);

-- Location: FF_X24_Y23_N3
\inst|buffer1[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~80_combout\,
	ena => \inst|buffer1[48]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(54));

-- Location: FF_X25_Y19_N19
\inst|bufferout[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(67),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(67));

-- Location: LCCOMB_X25_Y19_N18
\inst2|buffer1[55]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(55) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(67)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(55)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(55),
	datac => \inst|bufferout\(67),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(55));

-- Location: LCCOMB_X25_Y19_N22
\inst2|bufferout[55]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(55) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(55))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(55),
	datac => \inst2|bufferout\(55),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(55));

-- Location: LCCOMB_X24_Y23_N0
\inst|buffer1~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~81_combout\ = (!\inst|buffer1[48]~71_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(55)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[7]~input_o\,
	datab => \inst|buffer1[48]~71_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(55),
	combout => \inst|buffer1~81_combout\);

-- Location: FF_X24_Y23_N1
\inst|buffer1[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~81_combout\,
	ena => \inst|buffer1[48]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(55));

-- Location: LCCOMB_X28_Y23_N12
\inst|Equal21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal21~3_combout\ = (\inst|buffer1\(66) & (\inst|buffer1\(54) & (\inst|buffer1\(67) $ (!\inst|buffer1\(55))))) # (!\inst|buffer1\(66) & (!\inst|buffer1\(54) & (\inst|buffer1\(67) $ (!\inst|buffer1\(55)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(66),
	datab => \inst|buffer1\(54),
	datac => \inst|buffer1\(67),
	datad => \inst|buffer1\(55),
	combout => \inst|Equal21~3_combout\);

-- Location: FF_X25_Y27_N19
\inst|bufferout[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(61),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(61));

-- Location: LCCOMB_X25_Y27_N18
\inst2|buffer1[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(49) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(61)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(49)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(49),
	datac => \inst|bufferout\(61),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(49));

-- Location: LCCOMB_X25_Y27_N4
\inst2|bufferout[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(49) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(49))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(49))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(49),
	datac => \inst2|bufferout\(49),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(49));

-- Location: LCCOMB_X25_Y27_N26
\inst|buffer1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~75_combout\ = (!\inst|buffer1[48]~71_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(49)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[1]~input_o\,
	datab => \inst2|bufferout\(49),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[48]~71_combout\,
	combout => \inst|buffer1~75_combout\);

-- Location: FF_X25_Y27_N27
\inst|buffer1[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~75_combout\,
	ena => \inst|buffer1[48]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(49));

-- Location: FF_X25_Y27_N17
\inst|bufferout[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(60),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(60));

-- Location: LCCOMB_X25_Y27_N16
\inst2|buffer1[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(48) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(60)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(48)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(48),
	datac => \inst|bufferout\(60),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(48));

-- Location: LCCOMB_X25_Y27_N22
\inst2|bufferout[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(48) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(48))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(48),
	datac => \inst2|bufferout\(48),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(48));

-- Location: LCCOMB_X25_Y27_N20
\inst|buffer1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~72_combout\ = (!\inst|buffer1[48]~71_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(48))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(48),
	datab => \ADC_IN[0]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[48]~71_combout\,
	combout => \inst|buffer1~72_combout\);

-- Location: FF_X25_Y27_N21
\inst|buffer1[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~72_combout\,
	ena => \inst|buffer1[48]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(48));

-- Location: LCCOMB_X25_Y27_N8
\inst|Equal21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal21~0_combout\ = (\inst|buffer1\(49) & (\inst|buffer1\(61) & (\inst|buffer1\(48) $ (!\inst|buffer1\(60))))) # (!\inst|buffer1\(49) & (!\inst|buffer1\(61) & (\inst|buffer1\(48) $ (!\inst|buffer1\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(49),
	datab => \inst|buffer1\(48),
	datac => \inst|buffer1\(61),
	datad => \inst|buffer1\(60),
	combout => \inst|Equal21~0_combout\);

-- Location: LCCOMB_X27_Y23_N16
\inst|Equal21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal21~4_combout\ = (\inst|Equal21~2_combout\ & (\inst|Equal21~1_combout\ & (\inst|Equal21~3_combout\ & \inst|Equal21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal21~2_combout\,
	datab => \inst|Equal21~1_combout\,
	datac => \inst|Equal21~3_combout\,
	datad => \inst|Equal21~0_combout\,
	combout => \inst|Equal21~4_combout\);

-- Location: LCCOMB_X27_Y23_N2
\inst|buffer1[60]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[60]~132_combout\ = (\inst|Equal21~6_combout\ & (\inst|Equal20~0_combout\ & (\inst|Equal21~5_combout\ & \inst|Equal21~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal21~6_combout\,
	datab => \inst|Equal20~0_combout\,
	datac => \inst|Equal21~5_combout\,
	datad => \inst|Equal21~4_combout\,
	combout => \inst|buffer1[60]~132_combout\);

-- Location: LCCOMB_X27_Y21_N2
\inst|buffer1[60]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[60]~133_combout\ = (\inst1|OUTPUT\(0)) # ((!\inst1|OUTPUT\(3) & \inst|buffer1[60]~132_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst1|OUTPUT\(0),
	datad => \inst|buffer1[60]~132_combout\,
	combout => \inst|buffer1[60]~133_combout\);

-- Location: LCCOMB_X27_Y20_N12
\inst|buffer1~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~138_combout\ = (!\inst|buffer1[60]~133_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(62)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[2]~input_o\,
	datac => \inst2|bufferout\(62),
	datad => \inst|buffer1[60]~133_combout\,
	combout => \inst|buffer1~138_combout\);

-- Location: FF_X27_Y20_N13
\inst|buffer1[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~138_combout\,
	ena => \inst|buffer1[60]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(62));

-- Location: FF_X25_Y27_N25
\inst|bufferout[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(62),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(62));

-- Location: LCCOMB_X25_Y27_N24
\inst2|buffer1[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(50) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(62)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(50)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(50),
	datac => \inst|bufferout\(62),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(50));

-- Location: LCCOMB_X25_Y27_N6
\inst2|bufferout[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(50) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(50)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(50)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(50),
	datab => \inst2|buffer1\(50),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(50));

-- Location: LCCOMB_X25_Y27_N0
\inst|buffer1~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~76_combout\ = (!\inst|buffer1[48]~71_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(50))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(50),
	datab => \ADC_IN[2]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[48]~71_combout\,
	combout => \inst|buffer1~76_combout\);

-- Location: FF_X25_Y27_N1
\inst|buffer1[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~76_combout\,
	ena => \inst|buffer1[48]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(50));

-- Location: FF_X24_Y27_N19
\inst|bufferout[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(50),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(50));

-- Location: LCCOMB_X24_Y27_N18
\inst2|buffer1[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(38) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(50)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(38)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(38),
	datac => \inst|bufferout\(50),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(38));

-- Location: LCCOMB_X24_Y27_N26
\inst2|bufferout[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(38) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(38))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(38),
	datac => \inst2|bufferout\(38),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(38));

-- Location: LCCOMB_X24_Y27_N4
\inst|buffer1~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~122_combout\ = (!\inst|buffer1[39]~117_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(38)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[2]~input_o\,
	datab => \inst2|bufferout\(38),
	datac => \inst|buffer1[39]~117_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~122_combout\);

-- Location: LCCOMB_X25_Y23_N0
\inst|buffer1[39]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[39]~119_combout\ = ((!\inst1|OUTPUT\(3) & (!\inst|buffer1~24_combout\ & !\inst|buffer1[39]~116_combout\))) # (!\inst1|OUTPUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst1|OUTPUT\(3),
	datac => \inst|buffer1~24_combout\,
	datad => \inst|buffer1[39]~116_combout\,
	combout => \inst|buffer1[39]~119_combout\);

-- Location: LCCOMB_X25_Y23_N6
\inst|buffer1[39]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[39]~120_combout\ = (\inst1|OUTPUT\(0)) # (!\inst|buffer1[39]~119_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1[39]~119_combout\,
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[39]~120_combout\);

-- Location: FF_X24_Y27_N5
\inst|buffer1[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~122_combout\,
	ena => \inst|buffer1[39]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(38));

-- Location: FF_X24_Y25_N21
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(38));

-- Location: LCCOMB_X24_Y25_N20
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

-- Location: LCCOMB_X24_Y25_N16
\inst2|bufferout[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(26) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(26))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(26),
	datac => \inst2|bufferout\(26),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(26));

-- Location: LCCOMB_X24_Y22_N12
\inst|buffer1~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~91_combout\ = (!\inst|buffer1[31]~86_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(26)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[31]~86_combout\,
	datab => \ADC_IN[2]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(26),
	combout => \inst|buffer1~91_combout\);

-- Location: LCCOMB_X28_Y22_N30
\inst|buffer1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~20_combout\ = (!\inst|counter\(4) & (!\inst|counter\(3) & \inst|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datac => \inst|counter\(3),
	datad => \inst|counter\(0),
	combout => \inst|buffer1~20_combout\);

-- Location: FF_X24_Y27_N25
\inst|bufferout[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(51),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(51));

-- Location: LCCOMB_X24_Y27_N24
\inst2|buffer1[39]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(39) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(51)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(39),
	datac => \inst|bufferout\(51),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(39));

-- Location: LCCOMB_X24_Y27_N12
\inst2|bufferout[39]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(39) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(39)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(39)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(39),
	datab => \inst2|buffer1\(39),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(39));

-- Location: LCCOMB_X24_Y27_N6
\inst|buffer1~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~123_combout\ = (!\inst|buffer1[39]~117_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(39)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[3]~input_o\,
	datab => \inst2|bufferout\(39),
	datac => \inst|buffer1[39]~117_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~123_combout\);

-- Location: FF_X24_Y27_N7
\inst|buffer1[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~123_combout\,
	ena => \inst|buffer1[39]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(39));

-- Location: FF_X24_Y25_N3
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(39));

-- Location: LCCOMB_X24_Y25_N2
\inst2|buffer1[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(27) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(39)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(27),
	datac => \inst|bufferout\(39),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(27));

-- Location: LCCOMB_X24_Y25_N30
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

-- Location: LCCOMB_X24_Y25_N8
\inst|buffer1~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~92_combout\ = (!\inst|buffer1[31]~86_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(27)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[31]~86_combout\,
	datab => \ADC_IN[3]~input_o\,
	datac => \inst2|bufferout\(27),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~92_combout\);

-- Location: FF_X24_Y25_N9
\inst|buffer1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~92_combout\,
	ena => \inst|buffer1[31]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(27));

-- Location: FF_X24_Y27_N21
\inst|bufferout[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(49),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(49));

-- Location: LCCOMB_X24_Y27_N20
\inst2|buffer1[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(37) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(49)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(37)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(37),
	datac => \inst|bufferout\(49),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(37));

-- Location: LCCOMB_X24_Y27_N8
\inst2|bufferout[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(37) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(37))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(37),
	datac => \inst2|bufferout\(37),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(37));

-- Location: LCCOMB_X24_Y27_N22
\inst|buffer1~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~121_combout\ = (!\inst|buffer1[39]~117_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(37))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(37),
	datab => \ADC_IN[1]~input_o\,
	datac => \inst|buffer1[39]~117_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~121_combout\);

-- Location: FF_X24_Y27_N23
\inst|buffer1[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~121_combout\,
	ena => \inst|buffer1[39]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(37));

-- Location: FF_X24_Y25_N7
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(37));

-- Location: LCCOMB_X24_Y25_N6
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

-- Location: LCCOMB_X24_Y25_N26
\inst2|bufferout[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(25) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(25))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(25),
	datac => \inst2|bufferout\(25),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(25));

-- Location: LCCOMB_X24_Y25_N22
\inst|buffer1~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~90_combout\ = (!\inst|buffer1[31]~86_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(25)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[31]~86_combout\,
	datab => \ADC_IN[1]~input_o\,
	datac => \inst2|bufferout\(25),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~90_combout\);

-- Location: FF_X24_Y25_N23
\inst|buffer1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~90_combout\,
	ena => \inst|buffer1[31]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(25));

-- Location: FF_X24_Y27_N3
\inst|bufferout[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(48),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(48));

-- Location: LCCOMB_X24_Y27_N2
\inst2|buffer1[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(36) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(48)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(36),
	datac => \inst|bufferout\(48),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(36));

-- Location: LCCOMB_X24_Y27_N30
\inst2|bufferout[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(36) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(36))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(36),
	datac => \inst2|bufferout\(36),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(36));

-- Location: LCCOMB_X24_Y27_N16
\inst|buffer1~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~118_combout\ = (!\inst|buffer1[39]~117_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(36))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(36),
	datab => \ADC_IN[0]~input_o\,
	datac => \inst|buffer1[39]~117_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~118_combout\);

-- Location: FF_X24_Y27_N17
\inst|buffer1[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~118_combout\,
	ena => \inst|buffer1[39]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(36));

-- Location: FF_X24_Y25_N13
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(36));

-- Location: LCCOMB_X24_Y25_N12
\inst2|buffer1[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(24) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(36)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(24),
	datac => \inst|bufferout\(36),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(24));

-- Location: LCCOMB_X24_Y25_N28
\inst2|bufferout[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(24) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(24))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(24),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(24),
	combout => \inst2|bufferout\(24));

-- Location: LCCOMB_X24_Y25_N4
\inst|buffer1~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~87_combout\ = (!\inst|buffer1[31]~86_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(24))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[31]~86_combout\,
	datab => \inst2|bufferout\(24),
	datac => \ADC_IN[0]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~87_combout\);

-- Location: FF_X24_Y25_N5
\inst|buffer1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~87_combout\,
	ena => \inst|buffer1[31]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(24));

-- Location: LCCOMB_X24_Y22_N18
\inst|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~0_combout\ = (!\inst|buffer1\(26) & (!\inst|buffer1\(27) & (!\inst|buffer1\(25) & !\inst|buffer1\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(26),
	datab => \inst|buffer1\(27),
	datac => \inst|buffer1\(25),
	datad => \inst|buffer1\(24),
	combout => \inst|Equal7~0_combout\);

-- Location: FF_X27_Y20_N21
\inst|bufferout[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(53),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(53));

-- Location: LCCOMB_X27_Y20_N20
\inst2|buffer1[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(41) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(53)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(41),
	datac => \inst|bufferout\(53),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(41));

-- Location: LCCOMB_X27_Y20_N6
\inst2|bufferout[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(41) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(41)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(41),
	datab => \inst2|buffer1\(41),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(41));

-- Location: LCCOMB_X24_Y23_N22
\inst|buffer1~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~125_combout\ = (!\inst|buffer1[39]~117_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(41)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[5]~input_o\,
	datab => \inst|buffer1[39]~117_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(41),
	combout => \inst|buffer1~125_combout\);

-- Location: FF_X24_Y23_N23
\inst|buffer1[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~125_combout\,
	ena => \inst|buffer1[39]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(41));

-- Location: FF_X23_Y21_N21
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(41));

-- Location: LCCOMB_X23_Y21_N20
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

-- Location: LCCOMB_X23_Y21_N14
\inst2|bufferout[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(29) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(29))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(29),
	datac => \inst2|bufferout\(29),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(29));

-- Location: LCCOMB_X24_Y22_N30
\inst|buffer1~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~94_combout\ = (!\inst|buffer1[31]~86_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(29)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[31]~86_combout\,
	datab => \ADC_IN[5]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(29),
	combout => \inst|buffer1~94_combout\);

-- Location: FF_X24_Y22_N31
\inst|buffer1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~94_combout\,
	ena => \inst|buffer1[31]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(29));

-- Location: FF_X25_Y25_N29
\inst|bufferout[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(54),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(54));

-- Location: LCCOMB_X25_Y25_N28
\inst2|buffer1[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(42) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(54)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(42)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(42),
	datac => \inst|bufferout\(54),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(42));

-- Location: LCCOMB_X25_Y25_N12
\inst2|bufferout[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(42) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(42)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(42)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(42),
	datab => \inst2|buffer1\(42),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(42));

-- Location: LCCOMB_X25_Y23_N20
\inst|buffer1~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~126_combout\ = (!\inst|buffer1[39]~117_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(42)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[6]~input_o\,
	datac => \inst|buffer1[39]~117_combout\,
	datad => \inst2|bufferout\(42),
	combout => \inst|buffer1~126_combout\);

-- Location: FF_X25_Y23_N21
\inst|buffer1[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~126_combout\,
	ena => \inst|buffer1[39]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(42));

-- Location: FF_X25_Y25_N17
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(42));

-- Location: LCCOMB_X25_Y25_N16
\inst2|buffer1[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(30) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(42)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(30),
	datac => \inst|bufferout\(42),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(30));

-- Location: LCCOMB_X25_Y25_N24
\inst2|bufferout[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(30) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(30))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(30),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(30),
	combout => \inst2|bufferout\(30));

-- Location: LCCOMB_X24_Y22_N16
\inst|buffer1~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~95_combout\ = (!\inst|buffer1[31]~86_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(30)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[31]~86_combout\,
	datab => \ADC_IN[6]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(30),
	combout => \inst|buffer1~95_combout\);

-- Location: FF_X24_Y22_N17
\inst|buffer1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~95_combout\,
	ena => \inst|buffer1[31]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(30));

-- Location: FF_X25_Y25_N15
\inst|bufferout[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(55),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(55));

-- Location: LCCOMB_X25_Y25_N14
\inst2|buffer1[43]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(43) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(55)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(43),
	datac => \inst|bufferout\(55),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(43));

-- Location: LCCOMB_X25_Y25_N26
\inst2|bufferout[43]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(43) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(43)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(43),
	datab => \inst2|buffer1\(43),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(43));

-- Location: LCCOMB_X24_Y23_N28
\inst|buffer1~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~127_combout\ = (!\inst|buffer1[39]~117_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(43)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[7]~input_o\,
	datab => \inst|buffer1[39]~117_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(43),
	combout => \inst|buffer1~127_combout\);

-- Location: FF_X24_Y23_N29
\inst|buffer1[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~127_combout\,
	ena => \inst|buffer1[39]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(43));

-- Location: FF_X25_Y25_N31
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(43));

-- Location: LCCOMB_X25_Y25_N30
\inst2|buffer1[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(31) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(43)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(31),
	datac => \inst|bufferout\(43),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(31));

-- Location: LCCOMB_X25_Y25_N6
\inst2|bufferout[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(31) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(31))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(31),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(31),
	combout => \inst2|bufferout\(31));

-- Location: LCCOMB_X25_Y25_N0
\inst|buffer1~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~96_combout\ = (!\inst|buffer1[31]~86_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(31))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(31),
	datab => \inst|buffer1[31]~86_combout\,
	datac => \ADC_IN[7]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~96_combout\);

-- Location: FF_X25_Y25_N1
\inst|buffer1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~96_combout\,
	ena => \inst|buffer1[31]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(31));

-- Location: FF_X27_Y20_N5
\inst|bufferout[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(52),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(52));

-- Location: LCCOMB_X27_Y20_N4
\inst2|buffer1[40]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(40) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(52)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(40)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(40),
	datac => \inst|bufferout\(52),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(40));

-- Location: LCCOMB_X27_Y20_N14
\inst2|bufferout[40]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(40) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(40))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(40),
	datac => \inst2|bufferout\(40),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(40));

-- Location: LCCOMB_X24_Y23_N16
\inst|buffer1~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~124_combout\ = (!\inst|buffer1[39]~117_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(40)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[4]~input_o\,
	datab => \inst|buffer1[39]~117_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(40),
	combout => \inst|buffer1~124_combout\);

-- Location: FF_X24_Y23_N17
\inst|buffer1[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~124_combout\,
	ena => \inst|buffer1[39]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(40));

-- Location: FF_X26_Y19_N21
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(40));

-- Location: LCCOMB_X26_Y19_N20
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

-- Location: LCCOMB_X26_Y19_N26
\inst2|bufferout[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(28) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(28)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(28),
	datab => \inst2|buffer1\(28),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(28));

-- Location: LCCOMB_X24_Y22_N28
\inst|buffer1~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~93_combout\ = (!\inst|buffer1[31]~86_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(28)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[31]~86_combout\,
	datab => \ADC_IN[4]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(28),
	combout => \inst|buffer1~93_combout\);

-- Location: FF_X24_Y22_N29
\inst|buffer1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~93_combout\,
	ena => \inst|buffer1[31]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(28));

-- Location: LCCOMB_X24_Y22_N22
\inst|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~1_combout\ = (!\inst|buffer1\(29) & (!\inst|buffer1\(30) & (!\inst|buffer1\(31) & !\inst|buffer1\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(29),
	datab => \inst|buffer1\(30),
	datac => \inst|buffer1\(31),
	datad => \inst|buffer1\(28),
	combout => \inst|Equal7~1_combout\);

-- Location: FF_X26_Y23_N19
\inst|bufferout[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(58),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(58));

-- Location: LCCOMB_X26_Y23_N18
\inst2|buffer1[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(46) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(58)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(46),
	datac => \inst|bufferout\(58),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(46));

-- Location: LCCOMB_X25_Y23_N26
\inst2|bufferout[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(46) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(46)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(46),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|buffer1\(46),
	combout => \inst2|bufferout\(46));

-- Location: LCCOMB_X25_Y23_N10
\inst|buffer1~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~130_combout\ = (!\inst|buffer1[39]~117_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(46))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(46),
	datab => \inst|buffer1[39]~117_combout\,
	datac => \ADC_IN[10]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~130_combout\);

-- Location: FF_X25_Y23_N11
\inst|buffer1[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~130_combout\,
	ena => \inst|buffer1[39]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(46));

-- Location: FF_X23_Y21_N7
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(46));

-- Location: LCCOMB_X23_Y21_N6
\inst2|buffer1[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(34) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(46)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(34),
	datac => \inst|bufferout\(46),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(34));

-- Location: LCCOMB_X23_Y21_N12
\inst2|bufferout[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(34) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(34))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(34),
	datac => \inst2|bufferout\(34),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(34));

-- Location: LCCOMB_X24_Y22_N0
\inst|buffer1~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~99_combout\ = (!\inst|buffer1[31]~86_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(34)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[31]~86_combout\,
	datab => \ADC_IN[10]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(34),
	combout => \inst|buffer1~99_combout\);

-- Location: FF_X24_Y22_N1
\inst|buffer1[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~99_combout\,
	ena => \inst|buffer1[31]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(34));

-- Location: FF_X26_Y23_N9
\inst|bufferout[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(59),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(59));

-- Location: LCCOMB_X26_Y23_N8
\inst2|buffer1[47]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(47) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(59)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(47)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(47),
	datac => \inst|bufferout\(59),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(47));

-- Location: LCCOMB_X26_Y23_N2
\inst2|bufferout[47]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(47) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(47))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(47),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(47),
	combout => \inst2|bufferout\(47));

-- Location: LCCOMB_X25_Y23_N4
\inst|buffer1~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~131_combout\ = (!\inst|buffer1[39]~117_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(47)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[11]~input_o\,
	datab => \inst|buffer1[39]~117_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(47),
	combout => \inst|buffer1~131_combout\);

-- Location: FF_X25_Y23_N5
\inst|buffer1[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~131_combout\,
	ena => \inst|buffer1[39]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(47));

-- Location: FF_X26_Y19_N19
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(47));

-- Location: LCCOMB_X26_Y19_N18
\inst2|buffer1[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(35) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(47)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(35)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(35),
	datac => \inst|bufferout\(47),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(35));

-- Location: LCCOMB_X26_Y19_N16
\inst2|bufferout[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(35) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(35))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(35),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(35),
	combout => \inst2|bufferout\(35));

-- Location: LCCOMB_X24_Y22_N14
\inst|buffer1~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~100_combout\ = (!\inst|buffer1[31]~86_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(35)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[31]~86_combout\,
	datab => \ADC_IN[11]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(35),
	combout => \inst|buffer1~100_combout\);

-- Location: FF_X24_Y22_N15
\inst|buffer1[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~100_combout\,
	ena => \inst|buffer1[31]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(35));

-- Location: FF_X25_Y23_N29
\inst|bufferout[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(56),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(56));

-- Location: LCCOMB_X25_Y23_N28
\inst2|buffer1[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(44) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(56)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(44)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(44),
	datac => \inst|bufferout\(56),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(44));

-- Location: LCCOMB_X25_Y23_N22
\inst2|bufferout[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(44) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(44))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(44),
	datac => \inst2|bufferout\(44),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(44));

-- Location: LCCOMB_X25_Y23_N14
\inst|buffer1~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~128_combout\ = (!\inst|buffer1[39]~117_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(44)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datab => \inst|buffer1[39]~117_combout\,
	datac => \inst2|bufferout\(44),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~128_combout\);

-- Location: FF_X25_Y23_N15
\inst|buffer1[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~128_combout\,
	ena => \inst|buffer1[39]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(44));

-- Location: FF_X21_Y23_N25
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(44));

-- Location: LCCOMB_X21_Y23_N24
\inst2|buffer1[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(32) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(44)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(32)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(32),
	datac => \inst|bufferout\(44),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(32));

-- Location: LCCOMB_X21_Y23_N22
\inst2|bufferout[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(32) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(32))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(32),
	datac => \inst2|bufferout\(32),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(32));

-- Location: LCCOMB_X21_Y23_N28
\inst|buffer1~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~97_combout\ = (!\inst|buffer1[31]~86_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(32)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[31]~86_combout\,
	datab => \inst1|OUTPUT\(3),
	datac => \ADC_IN[8]~input_o\,
	datad => \inst2|bufferout\(32),
	combout => \inst|buffer1~97_combout\);

-- Location: FF_X21_Y23_N29
\inst|buffer1[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~97_combout\,
	ena => \inst|buffer1[31]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(32));

-- Location: LCCOMB_X24_Y22_N24
\inst|Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~2_combout\ = (!\inst|buffer1\(34) & (!\inst|buffer1\(35) & (!\inst|buffer1\(33) & !\inst|buffer1\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(34),
	datab => \inst|buffer1\(35),
	datac => \inst|buffer1\(33),
	datad => \inst|buffer1\(32),
	combout => \inst|Equal7~2_combout\);

-- Location: LCCOMB_X24_Y22_N10
\inst|Equal7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~3_combout\ = (\inst|Equal7~0_combout\ & (\inst|Equal7~1_combout\ & \inst|Equal7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal7~0_combout\,
	datac => \inst|Equal7~1_combout\,
	datad => \inst|Equal7~2_combout\,
	combout => \inst|Equal7~3_combout\);

-- Location: LCCOMB_X24_Y22_N4
\inst|buffer1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~22_combout\ = (!\inst|counter\(2) & (\inst|counter\(1) & (\inst|buffer1~20_combout\ & \inst|Equal7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|buffer1~20_combout\,
	datad => \inst|Equal7~3_combout\,
	combout => \inst|buffer1~22_combout\);

-- Location: LCCOMB_X27_Y22_N18
\inst|buffer1[31]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[31]~88_combout\ = ((!\inst|buffer1~22_combout\ & (!\inst1|OUTPUT\(3) & !\inst|buffer1[31]~23_combout\))) # (!\inst1|OUTPUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~22_combout\,
	datab => \inst1|OUTPUT\(3),
	datac => \inst1|OUTPUT\(1),
	datad => \inst|buffer1[31]~23_combout\,
	combout => \inst|buffer1[31]~88_combout\);

-- Location: LCCOMB_X27_Y22_N30
\inst|buffer1[31]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[31]~89_combout\ = (\inst1|OUTPUT\(0)) # (!\inst|buffer1[31]~88_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buffer1[31]~88_combout\,
	datac => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[31]~89_combout\);

-- Location: FF_X24_Y22_N13
\inst|buffer1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~91_combout\,
	ena => \inst|buffer1[31]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(26));

-- Location: FF_X25_Y21_N21
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(26));

-- Location: LCCOMB_X25_Y21_N20
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

-- Location: LCCOMB_X25_Y21_N22
\inst2|bufferout[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(14) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(14))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(14),
	datac => \inst2|bufferout\(14),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(14));

-- Location: FF_X21_Y23_N11
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(32));

-- Location: LCCOMB_X21_Y23_N10
\inst2|buffer1[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(20) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(32)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(20),
	datac => \inst|bufferout\(32),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(20));

-- Location: LCCOMB_X21_Y23_N20
\inst2|bufferout[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(20) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(20))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(20),
	datab => \inst2|bufferout\(20),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(20));

-- Location: LCCOMB_X23_Y25_N26
\inst|buffer1~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~112_combout\ = (!\inst|buffer1[16]~101_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(20)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[8]~input_o\,
	datac => \inst|buffer1[16]~101_combout\,
	datad => \inst2|bufferout\(20),
	combout => \inst|buffer1~112_combout\);

-- Location: FF_X23_Y25_N29
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(25));

-- Location: LCCOMB_X23_Y25_N28
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

-- Location: LCCOMB_X23_Y25_N20
\inst2|bufferout[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(13) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(13))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(13),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(13),
	combout => \inst2|bufferout\(13));

-- Location: LCCOMB_X23_Y25_N6
\inst|buffer1~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~105_combout\ = (!\inst|buffer1[16]~101_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(13)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[1]~input_o\,
	datac => \inst|buffer1[16]~101_combout\,
	datad => \inst2|bufferout\(13),
	combout => \inst|buffer1~105_combout\);

-- Location: FF_X23_Y25_N7
\inst|buffer1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~105_combout\,
	ena => \inst|buffer1[16]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(13));

-- Location: FF_X25_Y21_N19
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(24));

-- Location: LCCOMB_X25_Y21_N18
\inst2|buffer1[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(12) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(24)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(12),
	datac => \inst|bufferout\(24),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(12));

-- Location: LCCOMB_X25_Y21_N12
\inst2|bufferout[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(12) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(12)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(12),
	datab => \inst2|buffer1\(12),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(12));

-- Location: LCCOMB_X24_Y21_N22
\inst|buffer1~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~102_combout\ = (!\inst|buffer1[16]~101_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(12)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[0]~input_o\,
	datab => \inst2|bufferout\(12),
	datac => \inst|buffer1[16]~101_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~102_combout\);

-- Location: FF_X24_Y21_N23
\inst|buffer1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~102_combout\,
	ena => \inst|buffer1[16]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(12));

-- Location: FF_X25_Y21_N15
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(27));

-- Location: LCCOMB_X25_Y21_N14
\inst2|buffer1[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(15) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(27)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(15),
	datac => \inst|bufferout\(27),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(15));

-- Location: LCCOMB_X25_Y21_N8
\inst2|bufferout[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(15) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(15))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(15),
	datac => \inst2|bufferout\(15),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(15));

-- Location: LCCOMB_X24_Y21_N18
\inst|buffer1~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~107_combout\ = (!\inst|buffer1[16]~101_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(15)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[3]~input_o\,
	datab => \inst|buffer1[16]~101_combout\,
	datac => \inst2|bufferout\(15),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~107_combout\);

-- Location: FF_X24_Y21_N19
\inst|buffer1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~107_combout\,
	ena => \inst|buffer1[16]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(15));

-- Location: LCCOMB_X24_Y24_N22
\inst|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal3~0_combout\ = (!\inst|buffer1\(13) & (!\inst|buffer1\(14) & (!\inst|buffer1\(12) & !\inst|buffer1\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(13),
	datab => \inst|buffer1\(14),
	datac => \inst|buffer1\(12),
	datad => \inst|buffer1\(15),
	combout => \inst|Equal3~0_combout\);

-- Location: FF_X23_Y21_N17
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(28));

-- Location: LCCOMB_X23_Y21_N16
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

-- Location: LCCOMB_X24_Y21_N30
\inst2|bufferout[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(16) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(16)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(16),
	datac => \inst2|buffer1\(16),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(16));

-- Location: LCCOMB_X24_Y21_N10
\inst|buffer1~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~108_combout\ = (!\inst|buffer1[16]~101_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(16))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(16),
	datab => \ADC_IN[4]~input_o\,
	datac => \inst|buffer1[16]~101_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~108_combout\);

-- Location: FF_X24_Y21_N11
\inst|buffer1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~108_combout\,
	ena => \inst|buffer1[16]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(16));

-- Location: FF_X21_Y23_N1
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(31));

-- Location: LCCOMB_X21_Y23_N0
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

-- Location: LCCOMB_X21_Y23_N6
\inst2|bufferout[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(19) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(19)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(19),
	datab => \inst2|buffer1\(19),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(19));

-- Location: LCCOMB_X23_Y25_N14
\inst|buffer1~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~111_combout\ = (!\inst|buffer1[16]~101_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(19)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[7]~input_o\,
	datac => \inst|buffer1[16]~101_combout\,
	datad => \inst2|bufferout\(19),
	combout => \inst|buffer1~111_combout\);

-- Location: FF_X23_Y25_N15
\inst|buffer1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~111_combout\,
	ena => \inst|buffer1[16]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(19));

-- Location: FF_X23_Y21_N29
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(30));

-- Location: LCCOMB_X23_Y21_N28
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

-- Location: LCCOMB_X23_Y21_N24
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

-- Location: LCCOMB_X23_Y25_N30
\inst|buffer1~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~110_combout\ = (!\inst|buffer1[16]~101_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(18)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[6]~input_o\,
	datac => \inst|buffer1[16]~101_combout\,
	datad => \inst2|bufferout\(18),
	combout => \inst|buffer1~110_combout\);

-- Location: FF_X23_Y25_N31
\inst|buffer1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~110_combout\,
	ena => \inst|buffer1[16]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(18));

-- Location: FF_X23_Y21_N19
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(29));

-- Location: LCCOMB_X23_Y21_N18
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

-- Location: LCCOMB_X23_Y21_N10
\inst2|bufferout[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(17) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(17))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(17),
	datac => \inst2|bufferout\(17),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(17));

-- Location: LCCOMB_X23_Y25_N18
\inst|buffer1~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~109_combout\ = (!\inst|buffer1[16]~101_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(17)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[5]~input_o\,
	datac => \inst|buffer1[16]~101_combout\,
	datad => \inst2|bufferout\(17),
	combout => \inst|buffer1~109_combout\);

-- Location: FF_X23_Y25_N19
\inst|buffer1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~109_combout\,
	ena => \inst|buffer1[16]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(17));

-- Location: LCCOMB_X24_Y24_N28
\inst|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal3~1_combout\ = (!\inst|buffer1\(16) & (!\inst|buffer1\(19) & (!\inst|buffer1\(18) & !\inst|buffer1\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(16),
	datab => \inst|buffer1\(19),
	datac => \inst|buffer1\(18),
	datad => \inst|buffer1\(17),
	combout => \inst|Equal3~1_combout\);

-- Location: FF_X23_Y23_N17
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(35));

-- Location: LCCOMB_X23_Y23_N16
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

-- Location: LCCOMB_X23_Y23_N8
\inst2|bufferout[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(23) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(23))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(23),
	datac => \inst2|bufferout\(23),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(23));

-- Location: LCCOMB_X23_Y23_N22
\inst|buffer1~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~115_combout\ = (!\inst|buffer1[16]~101_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(23)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[11]~input_o\,
	datab => \inst2|bufferout\(23),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[16]~101_combout\,
	combout => \inst|buffer1~115_combout\);

-- Location: FF_X23_Y23_N23
\inst|buffer1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~115_combout\,
	ena => \inst|buffer1[16]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(23));

-- Location: FF_X23_Y23_N15
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(34));

-- Location: LCCOMB_X23_Y23_N14
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

-- Location: LCCOMB_X23_Y23_N26
\inst2|bufferout[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(22) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(22))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(22),
	datac => \inst2|bufferout\(22),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(22));

-- Location: LCCOMB_X23_Y25_N24
\inst|buffer1~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~114_combout\ = (!\inst|buffer1[16]~101_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(22)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[10]~input_o\,
	datac => \inst|buffer1[16]~101_combout\,
	datad => \inst2|bufferout\(22),
	combout => \inst|buffer1~114_combout\);

-- Location: FF_X23_Y25_N25
\inst|buffer1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~114_combout\,
	ena => \inst|buffer1[16]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(22));

-- Location: FF_X21_Y23_N5
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(33));

-- Location: LCCOMB_X21_Y23_N4
\inst2|buffer1[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(21) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(33)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(21),
	datac => \inst|bufferout\(33),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(21));

-- Location: LCCOMB_X21_Y23_N26
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

-- Location: LCCOMB_X23_Y25_N8
\inst|buffer1~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~113_combout\ = (!\inst|buffer1[16]~101_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(21)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[9]~input_o\,
	datac => \inst|buffer1[16]~101_combout\,
	datad => \inst2|bufferout\(21),
	combout => \inst|buffer1~113_combout\);

-- Location: FF_X23_Y25_N9
\inst|buffer1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~113_combout\,
	ena => \inst|buffer1[16]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(21));

-- Location: LCCOMB_X23_Y23_N18
\inst|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal3~2_combout\ = (!\inst|buffer1\(23) & (!\inst|buffer1\(22) & (!\inst|buffer1\(20) & !\inst|buffer1\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(23),
	datab => \inst|buffer1\(22),
	datac => \inst|buffer1\(20),
	datad => \inst|buffer1\(21),
	combout => \inst|Equal3~2_combout\);

-- Location: LCCOMB_X24_Y24_N30
\inst|buffer1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~25_combout\ = (\inst|Equal3~0_combout\ & (\inst|Equal3~1_combout\ & (\inst|Equal3~2_combout\ & \inst|buffer1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datab => \inst|Equal3~1_combout\,
	datac => \inst|Equal3~2_combout\,
	datad => \inst|buffer1~20_combout\,
	combout => \inst|buffer1~25_combout\);

-- Location: LCCOMB_X24_Y24_N12
\inst|buffer1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~37_combout\ = (!\inst|counter\(2) & (\inst|buffer1~25_combout\ & !\inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datac => \inst|buffer1~25_combout\,
	datad => \inst|counter\(1),
	combout => \inst|buffer1~37_combout\);

-- Location: LCCOMB_X23_Y25_N22
\inst|buffer1[16]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[16]~103_combout\ = ((!\inst1|OUTPUT\(3) & (!\inst|buffer1~37_combout\ & !\inst|buffer1[16]~39_combout\))) # (!\inst1|OUTPUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst1|OUTPUT\(3),
	datac => \inst|buffer1~37_combout\,
	datad => \inst|buffer1[16]~39_combout\,
	combout => \inst|buffer1[16]~103_combout\);

-- Location: LCCOMB_X23_Y25_N16
\inst|buffer1[16]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[16]~104_combout\ = (\inst1|OUTPUT\(0)) # (!\inst|buffer1[16]~103_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[16]~103_combout\,
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[16]~104_combout\);

-- Location: FF_X23_Y25_N27
\inst|buffer1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~112_combout\,
	ena => \inst|buffer1[16]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(20));

-- Location: FF_X23_Y25_N1
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(20));

-- Location: LCCOMB_X23_Y25_N0
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

-- Location: LCCOMB_X23_Y25_N2
\inst2|bufferout[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(8) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(8))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(8),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(8),
	combout => \inst2|bufferout\(8));

-- Location: LCCOMB_X23_Y22_N22
\inst|buffer1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~9_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(8)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datab => \inst2|bufferout\(8),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~9_combout\);

-- Location: FF_X25_Y27_N11
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(13));

-- Location: LCCOMB_X25_Y27_N10
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

-- Location: LCCOMB_X25_Y27_N28
\inst2|bufferout[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(1) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(1))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(1),
	datab => \inst2|bufferout\(1),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(1));

-- Location: LCCOMB_X23_Y24_N8
\inst|buffer1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~16_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(1)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[1]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(1),
	combout => \inst|buffer1~16_combout\);

-- Location: FF_X23_Y24_N9
\inst|buffer1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~16_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(1));

-- Location: FF_X25_Y19_N11
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(12));

-- Location: LCCOMB_X25_Y19_N10
\inst2|buffer1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(0) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(12)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(0),
	datac => \inst|bufferout\(12),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(0));

-- Location: LCCOMB_X25_Y19_N26
\inst2|bufferout[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(0) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(0))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(0),
	datac => \inst2|bufferout\(0),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(0));

-- Location: LCCOMB_X23_Y22_N16
\inst|buffer1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~17_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(0)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[0]~input_o\,
	datac => \inst2|bufferout\(0),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~17_combout\);

-- Location: FF_X23_Y22_N17
\inst|buffer1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~17_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(0));

-- Location: FF_X23_Y21_N3
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(15));

-- Location: LCCOMB_X23_Y21_N2
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

-- Location: LCCOMB_X23_Y21_N4
\inst2|bufferout[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(3) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(3))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(3),
	datac => \inst2|bufferout\(3),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(3));

-- Location: LCCOMB_X24_Y21_N4
\inst|buffer1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~14_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(3)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[3]~input_o\,
	datac => \inst2|bufferout\(3),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~14_combout\);

-- Location: FF_X24_Y21_N5
\inst|buffer1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~14_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(3));

-- Location: FF_X25_Y19_N17
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(14));

-- Location: LCCOMB_X25_Y19_N16
\inst2|buffer1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(2) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(14)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(2),
	datac => \inst|bufferout\(14),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(2));

-- Location: LCCOMB_X25_Y19_N0
\inst2|bufferout[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(2) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(2))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(2),
	datac => \inst2|bufferout\(2),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(2));

-- Location: LCCOMB_X24_Y21_N6
\inst|buffer1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~15_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(2)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[2]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(2),
	combout => \inst|buffer1~15_combout\);

-- Location: FF_X24_Y21_N7
\inst|buffer1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~15_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(2));

-- Location: LCCOMB_X23_Y24_N30
\inst|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~2_combout\ = (\inst|buffer1\(1)) # ((\inst|buffer1\(0)) # ((\inst|buffer1\(3)) # (\inst|buffer1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(1),
	datab => \inst|buffer1\(0),
	datac => \inst|buffer1\(3),
	datad => \inst|buffer1\(2),
	combout => \inst|Equal1~2_combout\);

-- Location: FF_X23_Y23_N13
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(21));

-- Location: LCCOMB_X23_Y23_N12
\inst2|buffer1[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(9) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(21)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(9),
	datac => \inst|bufferout\(21),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(9));

-- Location: LCCOMB_X23_Y23_N4
\inst2|bufferout[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(9) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(9))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(9),
	datac => \inst2|bufferout\(9),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(9));

-- Location: LCCOMB_X23_Y22_N20
\inst|buffer1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~8_combout\ = (\inst1|OUTPUT\(3) & (\inst2|bufferout\(9))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(3),
	datac => \inst2|bufferout\(9),
	datad => \ADC_IN[9]~input_o\,
	combout => \inst|buffer1~8_combout\);

-- Location: FF_X23_Y22_N21
\inst|buffer1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~8_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(9));

-- Location: FF_X23_Y23_N3
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(22));

-- Location: LCCOMB_X23_Y23_N2
\inst2|buffer1[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(10) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(22)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(10),
	datac => \inst|bufferout\(22),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(10));

-- Location: LCCOMB_X23_Y23_N30
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

-- Location: LCCOMB_X24_Y21_N26
\inst|buffer1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~7_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(10)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[10]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(10),
	combout => \inst|buffer1~7_combout\);

-- Location: FF_X24_Y21_N27
\inst|buffer1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~7_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(10));

-- Location: LCCOMB_X23_Y24_N4
\inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst|buffer1\(8)) # ((\inst|buffer1\(11)) # ((\inst|buffer1\(9)) # (\inst|buffer1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(8),
	datab => \inst|buffer1\(11),
	datac => \inst|buffer1\(9),
	datad => \inst|buffer1\(10),
	combout => \inst|Equal1~0_combout\);

-- Location: FF_X28_Y24_N3
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(16));

-- Location: LCCOMB_X28_Y24_N2
\inst2|buffer1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(4) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(16)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(4),
	datac => \inst|bufferout\(16),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(4));

-- Location: LCCOMB_X28_Y24_N16
\inst2|bufferout[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(4) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(4))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(4),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(4),
	combout => \inst2|bufferout\(4));

-- Location: LCCOMB_X23_Y22_N6
\inst|buffer1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~13_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(4)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[4]~input_o\,
	datab => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(4),
	combout => \inst|buffer1~13_combout\);

-- Location: FF_X23_Y22_N7
\inst|buffer1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~13_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(4));

-- Location: FF_X23_Y21_N9
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(17));

-- Location: LCCOMB_X23_Y21_N8
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

-- Location: LCCOMB_X23_Y21_N22
\inst2|bufferout[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(5) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(5))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(5),
	datac => \inst2|bufferout\(5),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(5));

-- Location: LCCOMB_X23_Y22_N8
\inst|buffer1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~12_combout\ = (\inst1|OUTPUT\(3) & (\inst2|bufferout\(5))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(5),
	datab => \ADC_IN[5]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~12_combout\);

-- Location: FF_X23_Y22_N9
\inst|buffer1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~12_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(5));

-- Location: FF_X25_Y21_N11
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(18));

-- Location: LCCOMB_X25_Y21_N10
\inst2|buffer1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(6) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(18)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(6),
	datac => \inst|bufferout\(18),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(6));

-- Location: LCCOMB_X25_Y21_N0
\inst2|bufferout[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(6) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(6))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(6),
	datab => \inst2|bufferout\(6),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(6));

-- Location: LCCOMB_X23_Y22_N26
\inst|buffer1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~11_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(6)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[6]~input_o\,
	datab => \inst2|bufferout\(6),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~11_combout\);

-- Location: FF_X23_Y22_N27
\inst|buffer1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~11_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(6));

-- Location: FF_X23_Y25_N13
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(19));

-- Location: LCCOMB_X23_Y25_N12
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

-- Location: LCCOMB_X23_Y25_N10
\inst2|bufferout[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(7) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(7))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(7),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(7),
	combout => \inst2|bufferout\(7));

-- Location: LCCOMB_X23_Y22_N24
\inst|buffer1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~10_combout\ = (\inst1|OUTPUT\(3) & (\inst2|bufferout\(7))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(7),
	datab => \inst1|OUTPUT\(3),
	datac => \ADC_IN[7]~input_o\,
	combout => \inst|buffer1~10_combout\);

-- Location: FF_X23_Y22_N25
\inst|buffer1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~10_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(7));

-- Location: LCCOMB_X23_Y22_N0
\inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (\inst|buffer1\(4)) # ((\inst|buffer1\(5)) # ((\inst|buffer1\(6)) # (\inst|buffer1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(4),
	datab => \inst|buffer1\(5),
	datac => \inst|buffer1\(6),
	datad => \inst|buffer1\(7),
	combout => \inst|Equal1~1_combout\);

-- Location: LCCOMB_X23_Y24_N12
\inst|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~3_combout\ = (\inst|Equal1~2_combout\) # ((\inst|Equal1~0_combout\) # (\inst|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~2_combout\,
	datac => \inst|Equal1~0_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|Equal1~3_combout\);

-- Location: LCCOMB_X25_Y22_N8
\inst|buffer1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~5_combout\ = (\inst|counter\(1)) # ((\inst|counter\(2)) # ((\inst|Equal1~3_combout\) # (!\inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(2),
	datac => \inst|Equal1~3_combout\,
	datad => \inst|Equal4~0_combout\,
	combout => \inst|buffer1~5_combout\);

-- Location: LCCOMB_X24_Y21_N12
\inst|buffer1[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[1]~6_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & ((\inst1|OUTPUT\(3)) # (!\inst|buffer1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst1|OUTPUT\(1),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1~5_combout\,
	combout => \inst|buffer1[1]~6_combout\);

-- Location: FF_X23_Y22_N23
\inst|buffer1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~9_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(8));

-- Location: LCCOMB_X23_Y22_N14
\inst|Equal5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~5_combout\ = (\inst|buffer1\(8) & (\inst|buffer1\(20) & (\inst|buffer1\(9) $ (!\inst|buffer1\(21))))) # (!\inst|buffer1\(8) & (!\inst|buffer1\(20) & (\inst|buffer1\(9) $ (!\inst|buffer1\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(8),
	datab => \inst|buffer1\(9),
	datac => \inst|buffer1\(21),
	datad => \inst|buffer1\(20),
	combout => \inst|Equal5~5_combout\);

-- Location: LCCOMB_X23_Y22_N30
\inst|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~0_combout\ = (\inst|buffer1\(13) & (\inst|buffer1\(1) & (\inst|buffer1\(0) $ (!\inst|buffer1\(12))))) # (!\inst|buffer1\(13) & (!\inst|buffer1\(1) & (\inst|buffer1\(0) $ (!\inst|buffer1\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(13),
	datab => \inst|buffer1\(0),
	datac => \inst|buffer1\(12),
	datad => \inst|buffer1\(1),
	combout => \inst|Equal5~0_combout\);

-- Location: LCCOMB_X23_Y22_N28
\inst|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~2_combout\ = (\inst|buffer1\(4) & (\inst|buffer1\(16) & (\inst|buffer1\(5) $ (!\inst|buffer1\(17))))) # (!\inst|buffer1\(4) & (!\inst|buffer1\(16) & (\inst|buffer1\(5) $ (!\inst|buffer1\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(4),
	datab => \inst|buffer1\(5),
	datac => \inst|buffer1\(17),
	datad => \inst|buffer1\(16),
	combout => \inst|Equal5~2_combout\);

-- Location: LCCOMB_X24_Y21_N8
\inst|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~1_combout\ = (\inst|buffer1\(2) & (\inst|buffer1\(14) & (\inst|buffer1\(3) $ (!\inst|buffer1\(15))))) # (!\inst|buffer1\(2) & (!\inst|buffer1\(14) & (\inst|buffer1\(3) $ (!\inst|buffer1\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(2),
	datab => \inst|buffer1\(14),
	datac => \inst|buffer1\(3),
	datad => \inst|buffer1\(15),
	combout => \inst|Equal5~1_combout\);

-- Location: LCCOMB_X23_Y22_N10
\inst|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~3_combout\ = (\inst|buffer1\(6) & (\inst|buffer1\(18) & (\inst|buffer1\(7) $ (!\inst|buffer1\(19))))) # (!\inst|buffer1\(6) & (!\inst|buffer1\(18) & (\inst|buffer1\(7) $ (!\inst|buffer1\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(6),
	datab => \inst|buffer1\(7),
	datac => \inst|buffer1\(19),
	datad => \inst|buffer1\(18),
	combout => \inst|Equal5~3_combout\);

-- Location: LCCOMB_X23_Y22_N4
\inst|Equal5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~4_combout\ = (\inst|Equal5~0_combout\ & (\inst|Equal5~2_combout\ & (\inst|Equal5~1_combout\ & \inst|Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~0_combout\,
	datab => \inst|Equal5~2_combout\,
	datac => \inst|Equal5~1_combout\,
	datad => \inst|Equal5~3_combout\,
	combout => \inst|Equal5~4_combout\);

-- Location: LCCOMB_X24_Y21_N20
\inst|Equal5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~6_combout\ = (\inst|buffer1\(10) & (\inst|buffer1\(22) & (\inst|buffer1\(11) $ (!\inst|buffer1\(23))))) # (!\inst|buffer1\(10) & (!\inst|buffer1\(22) & (\inst|buffer1\(11) $ (!\inst|buffer1\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(10),
	datab => \inst|buffer1\(11),
	datac => \inst|buffer1\(23),
	datad => \inst|buffer1\(22),
	combout => \inst|Equal5~6_combout\);

-- Location: LCCOMB_X23_Y22_N12
\inst|Equal5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~7_combout\ = (\inst|Equal5~5_combout\ & (\inst|Equal5~4_combout\ & \inst|Equal5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal5~5_combout\,
	datac => \inst|Equal5~4_combout\,
	datad => \inst|Equal5~6_combout\,
	combout => \inst|Equal5~7_combout\);

-- Location: LCCOMB_X23_Y22_N18
\inst|buffer1[16]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[16]~39_combout\ = (!\inst|counter\(2) & (\inst|counter\(1) & (\inst|Equal4~0_combout\ & \inst|Equal5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|Equal4~0_combout\,
	datad => \inst|Equal5~7_combout\,
	combout => \inst|buffer1[16]~39_combout\);

-- Location: LCCOMB_X23_Y25_N4
\inst|buffer1[16]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[16]~101_combout\ = (\inst1|OUTPUT\(0)) # ((!\inst1|OUTPUT\(3) & \inst|buffer1[16]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(0),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[16]~39_combout\,
	combout => \inst|buffer1[16]~101_combout\);

-- Location: LCCOMB_X24_Y21_N0
\inst|buffer1~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~106_combout\ = (!\inst|buffer1[16]~101_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(14)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[2]~input_o\,
	datab => \inst2|bufferout\(14),
	datac => \inst|buffer1[16]~101_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~106_combout\);

-- Location: FF_X24_Y21_N1
\inst|buffer1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~106_combout\,
	ena => \inst|buffer1[16]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(14));

-- Location: LCCOMB_X24_Y22_N8
\inst|Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~1_combout\ = (\inst|buffer1\(26) & (\inst|buffer1\(14) & (\inst|buffer1\(27) $ (!\inst|buffer1\(15))))) # (!\inst|buffer1\(26) & (!\inst|buffer1\(14) & (\inst|buffer1\(27) $ (!\inst|buffer1\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(26),
	datab => \inst|buffer1\(14),
	datac => \inst|buffer1\(27),
	datad => \inst|buffer1\(15),
	combout => \inst|Equal9~1_combout\);

-- Location: LCCOMB_X24_Y22_N6
\inst|Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~2_combout\ = (\inst|buffer1\(29) & (\inst|buffer1\(17) & (\inst|buffer1\(28) $ (!\inst|buffer1\(16))))) # (!\inst|buffer1\(29) & (!\inst|buffer1\(17) & (\inst|buffer1\(28) $ (!\inst|buffer1\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(29),
	datab => \inst|buffer1\(28),
	datac => \inst|buffer1\(16),
	datad => \inst|buffer1\(17),
	combout => \inst|Equal9~2_combout\);

-- Location: LCCOMB_X24_Y24_N20
\inst|Equal9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~3_combout\ = (\inst|buffer1\(18) & (\inst|buffer1\(30) & (\inst|buffer1\(31) $ (!\inst|buffer1\(19))))) # (!\inst|buffer1\(18) & (!\inst|buffer1\(30) & (\inst|buffer1\(31) $ (!\inst|buffer1\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(18),
	datab => \inst|buffer1\(31),
	datac => \inst|buffer1\(30),
	datad => \inst|buffer1\(19),
	combout => \inst|Equal9~3_combout\);

-- Location: LCCOMB_X24_Y25_N14
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

-- Location: LCCOMB_X25_Y22_N16
\inst|Equal9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~4_combout\ = (\inst|Equal9~1_combout\ & (\inst|Equal9~2_combout\ & (\inst|Equal9~3_combout\ & \inst|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal9~1_combout\,
	datab => \inst|Equal9~2_combout\,
	datac => \inst|Equal9~3_combout\,
	datad => \inst|Equal9~0_combout\,
	combout => \inst|Equal9~4_combout\);

-- Location: LCCOMB_X23_Y23_N24
\inst|Equal9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~6_combout\ = (\inst|buffer1\(23) & (\inst|buffer1\(35) & (\inst|buffer1\(22) $ (!\inst|buffer1\(34))))) # (!\inst|buffer1\(23) & (!\inst|buffer1\(35) & (\inst|buffer1\(22) $ (!\inst|buffer1\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(23),
	datab => \inst|buffer1\(22),
	datac => \inst|buffer1\(35),
	datad => \inst|buffer1\(34),
	combout => \inst|Equal9~6_combout\);

-- Location: LCCOMB_X21_Y23_N12
\inst|Equal9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~5_combout\ = (\inst|buffer1\(33) & (\inst|buffer1\(21) & (\inst|buffer1\(32) $ (!\inst|buffer1\(20))))) # (!\inst|buffer1\(33) & (!\inst|buffer1\(21) & (\inst|buffer1\(32) $ (!\inst|buffer1\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(33),
	datab => \inst|buffer1\(32),
	datac => \inst|buffer1\(20),
	datad => \inst|buffer1\(21),
	combout => \inst|Equal9~5_combout\);

-- Location: LCCOMB_X25_Y22_N26
\inst|buffer1[31]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[31]~23_combout\ = (\inst|Equal8~0_combout\ & (\inst|Equal9~4_combout\ & (\inst|Equal9~6_combout\ & \inst|Equal9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal8~0_combout\,
	datab => \inst|Equal9~4_combout\,
	datac => \inst|Equal9~6_combout\,
	datad => \inst|Equal9~5_combout\,
	combout => \inst|buffer1[31]~23_combout\);

-- Location: LCCOMB_X24_Y25_N18
\inst|buffer1[31]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[31]~86_combout\ = (\inst1|OUTPUT\(0)) # ((!\inst1|OUTPUT\(3) & \inst|buffer1[31]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(0),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[31]~23_combout\,
	combout => \inst|buffer1[31]~86_combout\);

-- Location: FF_X21_Y23_N3
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(45));

-- Location: LCCOMB_X21_Y23_N2
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

-- Location: LCCOMB_X21_Y23_N16
\inst2|bufferout[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(33) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(33)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(33)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|bufferout\(33),
	datac => \inst2|buffer1\(33),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(33));

-- Location: LCCOMB_X21_Y23_N30
\inst|buffer1~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~98_combout\ = (!\inst|buffer1[31]~86_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(33)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[31]~86_combout\,
	datab => \inst1|OUTPUT\(3),
	datac => \ADC_IN[9]~input_o\,
	datad => \inst2|bufferout\(33),
	combout => \inst|buffer1~98_combout\);

-- Location: FF_X21_Y23_N31
\inst|buffer1[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~98_combout\,
	ena => \inst|buffer1[31]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(33));

-- Location: LCCOMB_X21_Y23_N18
\inst|Equal13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~5_combout\ = (\inst|buffer1\(33) & (\inst|buffer1\(45) & (\inst|buffer1\(32) $ (!\inst|buffer1\(44))))) # (!\inst|buffer1\(33) & (!\inst|buffer1\(45) & (\inst|buffer1\(32) $ (!\inst|buffer1\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(33),
	datab => \inst|buffer1\(32),
	datac => \inst|buffer1\(44),
	datad => \inst|buffer1\(45),
	combout => \inst|Equal13~5_combout\);

-- Location: LCCOMB_X25_Y25_N22
\inst|Equal13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~3_combout\ = (\inst|buffer1\(43) & (\inst|buffer1\(31) & (\inst|buffer1\(42) $ (!\inst|buffer1\(30))))) # (!\inst|buffer1\(43) & (!\inst|buffer1\(31) & (\inst|buffer1\(42) $ (!\inst|buffer1\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(43),
	datab => \inst|buffer1\(31),
	datac => \inst|buffer1\(42),
	datad => \inst|buffer1\(30),
	combout => \inst|Equal13~3_combout\);

-- Location: LCCOMB_X24_Y25_N24
\inst|Equal13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~2_combout\ = (\inst|buffer1\(28) & (\inst|buffer1\(40) & (\inst|buffer1\(41) $ (!\inst|buffer1\(29))))) # (!\inst|buffer1\(28) & (!\inst|buffer1\(40) & (\inst|buffer1\(41) $ (!\inst|buffer1\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(28),
	datab => \inst|buffer1\(40),
	datac => \inst|buffer1\(41),
	datad => \inst|buffer1\(29),
	combout => \inst|Equal13~2_combout\);

-- Location: LCCOMB_X24_Y25_N0
\inst|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~0_combout\ = (\inst|buffer1\(37) & (\inst|buffer1\(25) & (\inst|buffer1\(24) $ (!\inst|buffer1\(36))))) # (!\inst|buffer1\(37) & (!\inst|buffer1\(25) & (\inst|buffer1\(24) $ (!\inst|buffer1\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(37),
	datab => \inst|buffer1\(24),
	datac => \inst|buffer1\(36),
	datad => \inst|buffer1\(25),
	combout => \inst|Equal13~0_combout\);

-- Location: LCCOMB_X24_Y25_N10
\inst|Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~1_combout\ = (\inst|buffer1\(38) & (\inst|buffer1\(26) & (\inst|buffer1\(27) $ (!\inst|buffer1\(39))))) # (!\inst|buffer1\(38) & (!\inst|buffer1\(26) & (\inst|buffer1\(27) $ (!\inst|buffer1\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(38),
	datab => \inst|buffer1\(27),
	datac => \inst|buffer1\(26),
	datad => \inst|buffer1\(39),
	combout => \inst|Equal13~1_combout\);

-- Location: LCCOMB_X25_Y25_N20
\inst|Equal13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~4_combout\ = (\inst|Equal13~3_combout\ & (\inst|Equal13~2_combout\ & (\inst|Equal13~0_combout\ & \inst|Equal13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal13~3_combout\,
	datab => \inst|Equal13~2_combout\,
	datac => \inst|Equal13~0_combout\,
	datad => \inst|Equal13~1_combout\,
	combout => \inst|Equal13~4_combout\);

-- Location: LCCOMB_X23_Y23_N28
\inst|Equal13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~6_combout\ = (\inst|buffer1\(46) & (\inst|buffer1\(34) & (\inst|buffer1\(47) $ (!\inst|buffer1\(35))))) # (!\inst|buffer1\(46) & (!\inst|buffer1\(34) & (\inst|buffer1\(47) $ (!\inst|buffer1\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(46),
	datab => \inst|buffer1\(47),
	datac => \inst|buffer1\(35),
	datad => \inst|buffer1\(34),
	combout => \inst|Equal13~6_combout\);

-- Location: LCCOMB_X24_Y22_N20
\inst|Equal12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal12~1_combout\ = (\inst|Equal4~0_combout\ & (\inst|counter\(2) & \inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~0_combout\,
	datac => \inst|counter\(2),
	datad => \inst|counter\(1),
	combout => \inst|Equal12~1_combout\);

-- Location: LCCOMB_X26_Y23_N28
\inst|buffer1[39]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[39]~116_combout\ = (\inst|Equal13~5_combout\ & (\inst|Equal13~4_combout\ & (\inst|Equal13~6_combout\ & \inst|Equal12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal13~5_combout\,
	datab => \inst|Equal13~4_combout\,
	datac => \inst|Equal13~6_combout\,
	datad => \inst|Equal12~1_combout\,
	combout => \inst|buffer1[39]~116_combout\);

-- Location: LCCOMB_X23_Y23_N0
\inst|buffer1[39]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[39]~117_combout\ = (\inst1|OUTPUT\(0)) # ((!\inst1|OUTPUT\(3) & \inst|buffer1[39]~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(3),
	datac => \inst1|OUTPUT\(0),
	datad => \inst|buffer1[39]~116_combout\,
	combout => \inst|buffer1[39]~117_combout\);

-- Location: FF_X25_Y23_N3
\inst|bufferout[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(57),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(57));

-- Location: LCCOMB_X25_Y23_N2
\inst2|buffer1[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(45) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(57)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(45),
	datac => \inst|bufferout\(57),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(45));

-- Location: LCCOMB_X25_Y23_N8
\inst2|bufferout[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(45) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(45))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(45),
	datac => \inst2|bufferout\(45),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(45));

-- Location: LCCOMB_X25_Y23_N12
\inst|buffer1~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~129_combout\ = (!\inst|buffer1[39]~117_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(45)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[9]~input_o\,
	datab => \inst|buffer1[39]~117_combout\,
	datac => \inst2|bufferout\(45),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~129_combout\);

-- Location: FF_X25_Y23_N13
\inst|buffer1[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~129_combout\,
	ena => \inst|buffer1[39]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(45));

-- Location: LCCOMB_X25_Y23_N24
\inst|Equal17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal17~5_combout\ = (\inst|buffer1\(45) & (\inst|buffer1\(57) & (\inst|buffer1\(44) $ (!\inst|buffer1\(56))))) # (!\inst|buffer1\(45) & (!\inst|buffer1\(57) & (\inst|buffer1\(44) $ (!\inst|buffer1\(56)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(45),
	datab => \inst|buffer1\(44),
	datac => \inst|buffer1\(57),
	datad => \inst|buffer1\(56),
	combout => \inst|Equal17~5_combout\);

-- Location: LCCOMB_X25_Y25_N8
\inst|Equal17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal17~6_combout\ = (\inst|buffer1\(47) & (\inst|buffer1\(59) & (\inst|buffer1\(46) $ (!\inst|buffer1\(58))))) # (!\inst|buffer1\(47) & (!\inst|buffer1\(59) & (\inst|buffer1\(46) $ (!\inst|buffer1\(58)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(47),
	datab => \inst|buffer1\(59),
	datac => \inst|buffer1\(46),
	datad => \inst|buffer1\(58),
	combout => \inst|Equal17~6_combout\);

-- Location: LCCOMB_X25_Y27_N30
\inst|Equal17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal17~0_combout\ = (\inst|buffer1\(49) & (\inst|buffer1\(37) & (\inst|buffer1\(48) $ (!\inst|buffer1\(36))))) # (!\inst|buffer1\(49) & (!\inst|buffer1\(37) & (\inst|buffer1\(48) $ (!\inst|buffer1\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(49),
	datab => \inst|buffer1\(48),
	datac => \inst|buffer1\(36),
	datad => \inst|buffer1\(37),
	combout => \inst|Equal17~0_combout\);

-- Location: LCCOMB_X24_Y23_N20
\inst|Equal17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal17~2_combout\ = (\inst|buffer1\(53) & (\inst|buffer1\(41) & (\inst|buffer1\(40) $ (!\inst|buffer1\(52))))) # (!\inst|buffer1\(53) & (!\inst|buffer1\(41) & (\inst|buffer1\(40) $ (!\inst|buffer1\(52)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(53),
	datab => \inst|buffer1\(40),
	datac => \inst|buffer1\(41),
	datad => \inst|buffer1\(52),
	combout => \inst|Equal17~2_combout\);

-- Location: LCCOMB_X25_Y25_N4
\inst|Equal17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal17~3_combout\ = (\inst|buffer1\(43) & (\inst|buffer1\(55) & (\inst|buffer1\(42) $ (!\inst|buffer1\(54))))) # (!\inst|buffer1\(43) & (!\inst|buffer1\(55) & (\inst|buffer1\(42) $ (!\inst|buffer1\(54)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(43),
	datab => \inst|buffer1\(42),
	datac => \inst|buffer1\(55),
	datad => \inst|buffer1\(54),
	combout => \inst|Equal17~3_combout\);

-- Location: LCCOMB_X25_Y25_N2
\inst|Equal17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal17~1_combout\ = (\inst|buffer1\(38) & (\inst|buffer1\(50) & (\inst|buffer1\(39) $ (!\inst|buffer1\(51))))) # (!\inst|buffer1\(38) & (!\inst|buffer1\(50) & (\inst|buffer1\(39) $ (!\inst|buffer1\(51)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(38),
	datab => \inst|buffer1\(50),
	datac => \inst|buffer1\(39),
	datad => \inst|buffer1\(51),
	combout => \inst|Equal17~1_combout\);

-- Location: LCCOMB_X25_Y25_N10
\inst|Equal17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal17~4_combout\ = (\inst|Equal17~0_combout\ & (\inst|Equal17~2_combout\ & (\inst|Equal17~3_combout\ & \inst|Equal17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal17~0_combout\,
	datab => \inst|Equal17~2_combout\,
	datac => \inst|Equal17~3_combout\,
	datad => \inst|Equal17~1_combout\,
	combout => \inst|Equal17~4_combout\);

-- Location: LCCOMB_X25_Y25_N18
\inst|Equal17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal17~7_combout\ = (\inst|Equal17~5_combout\ & (\inst|Equal17~6_combout\ & \inst|Equal17~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal17~5_combout\,
	datac => \inst|Equal17~6_combout\,
	datad => \inst|Equal17~4_combout\,
	combout => \inst|Equal17~7_combout\);

-- Location: LCCOMB_X30_Y23_N22
\inst|buffer1[48]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[48]~71_combout\ = (\inst1|OUTPUT\(0)) # ((\inst|Equal16~1_combout\ & (!\inst1|OUTPUT\(3) & \inst|Equal17~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal16~1_combout\,
	datab => \inst1|OUTPUT\(0),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|Equal17~7_combout\,
	combout => \inst|buffer1[48]~71_combout\);

-- Location: FF_X30_Y23_N25
\inst|bufferout[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(63),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(63));

-- Location: LCCOMB_X30_Y23_N24
\inst2|buffer1[51]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(51) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(63)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(51),
	datac => \inst|bufferout\(63),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(51));

-- Location: LCCOMB_X30_Y23_N30
\inst2|bufferout[51]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(51) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(51)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(51),
	datab => \inst2|buffer1\(51),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(51));

-- Location: LCCOMB_X30_Y23_N16
\inst|buffer1~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~77_combout\ = (!\inst|buffer1[48]~71_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(51)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[3]~input_o\,
	datab => \inst|buffer1[48]~71_combout\,
	datac => \inst2|bufferout\(51),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~77_combout\);

-- Location: FF_X30_Y23_N17
\inst|buffer1[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~77_combout\,
	ena => \inst|buffer1[48]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(51));

-- Location: LCCOMB_X24_Y23_N8
\inst|Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal15~0_combout\ = (!\inst|buffer1\(51) & (!\inst|buffer1\(48) & (!\inst|buffer1\(50) & !\inst|buffer1\(49))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(51),
	datab => \inst|buffer1\(48),
	datac => \inst|buffer1\(50),
	datad => \inst|buffer1\(49),
	combout => \inst|Equal15~0_combout\);

-- Location: LCCOMB_X24_Y23_N14
\inst|Equal15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal15~1_combout\ = (!\inst|buffer1\(53) & (!\inst|buffer1\(52) & (!\inst|buffer1\(55) & !\inst|buffer1\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(53),
	datab => \inst|buffer1\(52),
	datac => \inst|buffer1\(55),
	datad => \inst|buffer1\(54),
	combout => \inst|Equal15~1_combout\);

-- Location: LCCOMB_X28_Y23_N0
\inst|Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal12~0_combout\ = (\inst|counter\(2) & \inst|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(2),
	datac => \inst|counter\(1),
	combout => \inst|Equal12~0_combout\);

-- Location: LCCOMB_X24_Y23_N24
\inst|Equal15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal15~2_combout\ = (!\inst|buffer1\(57) & (!\inst|buffer1\(56) & (!\inst|buffer1\(58) & !\inst|buffer1\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(57),
	datab => \inst|buffer1\(56),
	datac => \inst|buffer1\(58),
	datad => \inst|buffer1\(59),
	combout => \inst|Equal15~2_combout\);

-- Location: LCCOMB_X25_Y23_N16
\inst|buffer1~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~210_combout\ = (\inst|counter\(0) & (!\inst|counter\(4) & (!\inst|counter\(3) & \inst|Equal15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(4),
	datac => \inst|counter\(3),
	datad => \inst|Equal15~2_combout\,
	combout => \inst|buffer1~210_combout\);

-- Location: LCCOMB_X25_Y23_N30
\inst|buffer1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~36_combout\ = (\inst|Equal15~0_combout\ & (\inst|Equal15~1_combout\ & (\inst|Equal12~0_combout\ & \inst|buffer1~210_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal15~0_combout\,
	datab => \inst|Equal15~1_combout\,
	datac => \inst|Equal12~0_combout\,
	datad => \inst|buffer1~210_combout\,
	combout => \inst|buffer1~36_combout\);

-- Location: LCCOMB_X25_Y22_N28
\inst|counter~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~61_combout\ = (!\inst|buffer1~36_combout\ & (!\inst|buffer1~27_combout\ & (!\inst|buffer1~209_combout\ & !\inst|buffer1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~36_combout\,
	datab => \inst|buffer1~27_combout\,
	datac => \inst|buffer1~209_combout\,
	datad => \inst|buffer1~30_combout\,
	combout => \inst|counter~61_combout\);

-- Location: LCCOMB_X25_Y22_N6
\inst|counter~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~63_combout\ = (\inst|counter~61_combout\ & (!\inst|BufferCount~1_combout\ & ((!\inst|buffer1~37_combout\) # (!\inst|counter[0]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter[0]~62_combout\,
	datab => \inst|counter~61_combout\,
	datac => \inst|buffer1~37_combout\,
	datad => \inst|BufferCount~1_combout\,
	combout => \inst|counter~63_combout\);

-- Location: LCCOMB_X24_Y24_N16
\inst|counter~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~30_combout\ = (\inst|Equal1~3_combout\ & (((!\inst|Equal3~2_combout\) # (!\inst|Equal3~1_combout\)) # (!\inst|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datab => \inst|Equal3~1_combout\,
	datac => \inst|Equal3~2_combout\,
	datad => \inst|Equal1~3_combout\,
	combout => \inst|counter~30_combout\);

-- Location: LCCOMB_X24_Y23_N10
\inst|Equal11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal11~1_combout\ = (!\inst|buffer1\(41) & (!\inst|buffer1\(43) & (!\inst|buffer1\(42) & !\inst|buffer1\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(41),
	datab => \inst|buffer1\(43),
	datac => \inst|buffer1\(42),
	datad => \inst|buffer1\(40),
	combout => \inst|Equal11~1_combout\);

-- Location: LCCOMB_X24_Y27_N28
\inst|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal11~0_combout\ = (!\inst|buffer1\(39) & (!\inst|buffer1\(36) & (!\inst|buffer1\(37) & !\inst|buffer1\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(39),
	datab => \inst|buffer1\(36),
	datac => \inst|buffer1\(37),
	datad => \inst|buffer1\(38),
	combout => \inst|Equal11~0_combout\);

-- Location: LCCOMB_X25_Y23_N18
\inst|Equal11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal11~2_combout\ = (!\inst|buffer1\(46) & (!\inst|buffer1\(44) & (!\inst|buffer1\(47) & !\inst|buffer1\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(46),
	datab => \inst|buffer1\(44),
	datac => \inst|buffer1\(47),
	datad => \inst|buffer1\(45),
	combout => \inst|Equal11~2_combout\);

-- Location: LCCOMB_X25_Y24_N18
\inst|Equal11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal11~3_combout\ = (\inst|Equal11~1_combout\ & (\inst|Equal11~0_combout\ & \inst|Equal11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal11~1_combout\,
	datab => \inst|Equal11~0_combout\,
	datad => \inst|Equal11~2_combout\,
	combout => \inst|Equal11~3_combout\);

-- Location: LCCOMB_X23_Y23_N10
\inst|Equal15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal15~3_combout\ = (\inst|Equal15~1_combout\ & (\inst|Equal15~0_combout\ & \inst|Equal15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal15~1_combout\,
	datac => \inst|Equal15~0_combout\,
	datad => \inst|Equal15~2_combout\,
	combout => \inst|Equal15~3_combout\);

-- Location: LCCOMB_X24_Y24_N18
\inst|counter[0]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~56_combout\ = (!\inst|Equal7~3_combout\ & (\inst|counter~30_combout\ & (!\inst|Equal11~3_combout\ & !\inst|Equal15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal7~3_combout\,
	datab => \inst|counter~30_combout\,
	datac => \inst|Equal11~3_combout\,
	datad => \inst|Equal15~3_combout\,
	combout => \inst|counter[0]~56_combout\);

-- Location: LCCOMB_X28_Y26_N12
\inst|Equal43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal43~1_combout\ = (\inst|buffer1\(139)) # ((\inst|buffer1\(138)) # ((\inst|buffer1\(136)) # (\inst|buffer1\(137))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(139),
	datab => \inst|buffer1\(138),
	datac => \inst|buffer1\(136),
	datad => \inst|buffer1\(137),
	combout => \inst|Equal43~1_combout\);

-- Location: LCCOMB_X29_Y26_N18
\inst|Equal43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal43~0_combout\ = (\inst|buffer1\(134)) # ((\inst|buffer1\(135)) # ((\inst|buffer1\(132)) # (\inst|buffer1\(133))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(134),
	datab => \inst|buffer1\(135),
	datac => \inst|buffer1\(132),
	datad => \inst|buffer1\(133),
	combout => \inst|Equal43~0_combout\);

-- Location: LCCOMB_X29_Y26_N22
\inst|buffer1~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~205_combout\ = (\ADC_IN[8]~input_o\ & (!\inst1|OUTPUT\(0) & \inst|buffer1[137]~195_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datac => \inst1|OUTPUT\(0),
	datad => \inst|buffer1[137]~195_combout\,
	combout => \inst|buffer1~205_combout\);

-- Location: FF_X29_Y26_N23
\inst|buffer1[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~205_combout\,
	ena => \inst|buffer1[137]~197_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(140));

-- Location: LCCOMB_X29_Y26_N10
\inst|Equal43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal43~2_combout\ = (\inst|buffer1\(140)) # ((\inst|buffer1\(142)) # ((\inst|buffer1\(141)) # (\inst|buffer1\(143))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(140),
	datab => \inst|buffer1\(142),
	datac => \inst|buffer1\(141),
	datad => \inst|buffer1\(143),
	combout => \inst|Equal43~2_combout\);

-- Location: LCCOMB_X28_Y26_N0
\inst|Equal39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal39~3_combout\ = (\inst|Equal39~0_combout\ & (\inst|Equal39~1_combout\ & \inst|Equal39~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal39~0_combout\,
	datac => \inst|Equal39~1_combout\,
	datad => \inst|Equal39~2_combout\,
	combout => \inst|Equal39~3_combout\);

-- Location: LCCOMB_X28_Y26_N16
\inst|counter[0]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~58_combout\ = (!\inst|Equal39~3_combout\ & ((\inst|Equal43~1_combout\) # ((\inst|Equal43~0_combout\) # (\inst|Equal43~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal43~1_combout\,
	datab => \inst|Equal43~0_combout\,
	datac => \inst|Equal43~2_combout\,
	datad => \inst|Equal39~3_combout\,
	combout => \inst|counter[0]~58_combout\);

-- Location: LCCOMB_X26_Y22_N22
\inst|counter[0]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~59_combout\ = (\inst|counter[0]~58_combout\ & (((!\inst|Equal35~0_combout\) # (!\inst|Equal35~1_combout\)) # (!\inst|Equal35~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal35~2_combout\,
	datab => \inst|Equal35~1_combout\,
	datac => \inst|Equal35~0_combout\,
	datad => \inst|counter[0]~58_combout\,
	combout => \inst|counter[0]~59_combout\);

-- Location: LCCOMB_X25_Y22_N4
\inst|counter[0]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~64_combout\ = ((\inst|counter[0]~56_combout\ & (\inst|counter[0]~57_combout\ & \inst|counter[0]~59_combout\))) # (!\inst1|OUTPUT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst|counter[0]~56_combout\,
	datac => \inst|counter[0]~57_combout\,
	datad => \inst|counter[0]~59_combout\,
	combout => \inst|counter[0]~64_combout\);

-- Location: LCCOMB_X25_Y22_N12
\inst|counter~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~65_combout\ = (\inst|counter[0]~64_combout\ & (\inst|counter~63_combout\)) # (!\inst|counter[0]~64_combout\ & ((\inst|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~63_combout\,
	datac => \inst|Equal1~3_combout\,
	datad => \inst|counter[0]~64_combout\,
	combout => \inst|counter~65_combout\);

-- Location: LCCOMB_X25_Y24_N8
\inst|buffer1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~31_combout\ = (\inst|Equal27~2_combout\ & (\inst|Equal27~1_combout\ & (\inst|Equal27~0_combout\ & \inst|buffer1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal27~2_combout\,
	datab => \inst|Equal27~1_combout\,
	datac => \inst|Equal27~0_combout\,
	datad => \inst|buffer1~18_combout\,
	combout => \inst|buffer1~31_combout\);

-- Location: LCCOMB_X28_Y26_N26
\inst|buffer1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~34_combout\ = (!\inst|Equal43~1_combout\ & (!\inst|Equal43~0_combout\ & (!\inst|Equal43~2_combout\ & \inst|Equal46~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal43~1_combout\,
	datab => \inst|Equal43~0_combout\,
	datac => \inst|Equal43~2_combout\,
	datad => \inst|Equal46~4_combout\,
	combout => \inst|buffer1~34_combout\);

-- Location: LCCOMB_X25_Y24_N0
\inst|BufferCount~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~2_combout\ = (!\inst|buffer1~24_combout\ & (((!\inst|buffer1~31_combout\ & !\inst|buffer1~34_combout\)) # (!\inst|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal8~1_combout\,
	datab => \inst|buffer1~31_combout\,
	datac => \inst|buffer1~34_combout\,
	datad => \inst|buffer1~24_combout\,
	combout => \inst|BufferCount~2_combout\);

-- Location: LCCOMB_X25_Y22_N14
\inst|counter[0]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~66_combout\ = (!\inst|buffer1~22_combout\ & (!\inst|buffer1~19_combout\ & !\inst|buffer1~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buffer1~22_combout\,
	datac => \inst|buffer1~19_combout\,
	datad => \inst|buffer1~33_combout\,
	combout => \inst|counter[0]~66_combout\);

-- Location: LCCOMB_X25_Y22_N20
\inst|counter[0]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~67_combout\ = (\inst|BufferCount~2_combout\ & (\inst|buffer1~5_combout\ & (\inst|counter[0]~66_combout\ & \inst|counter~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BufferCount~2_combout\,
	datab => \inst|buffer1~5_combout\,
	datac => \inst|counter[0]~66_combout\,
	datad => \inst|counter~61_combout\,
	combout => \inst|counter[0]~67_combout\);

-- Location: LCCOMB_X25_Y22_N22
\inst|counter[0]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~68_combout\ = (!\inst1|OUTPUT\(0) & (((!\inst|buffer1~37_combout\ & \inst|counter[0]~62_combout\)) # (!\inst1|OUTPUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst1|OUTPUT\(0),
	datac => \inst|buffer1~37_combout\,
	datad => \inst|counter[0]~62_combout\,
	combout => \inst|counter[0]~68_combout\);

-- Location: LCCOMB_X25_Y22_N24
\inst|counter[0]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~69_combout\ = ((\inst1|OUTPUT\(1) & ((!\inst|counter[0]~64_combout\) # (!\inst|counter[0]~67_combout\)))) # (!\inst|counter[0]~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst|counter[0]~67_combout\,
	datac => \inst|counter[0]~68_combout\,
	datad => \inst|counter[0]~64_combout\,
	combout => \inst|counter[0]~69_combout\);

-- Location: FF_X25_Y22_N13
\inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter~65_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|counter[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(0));

-- Location: LCCOMB_X28_Y22_N24
\inst|buffer1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~18_combout\ = (!\inst|counter\(4) & (\inst|counter\(3) & \inst|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datac => \inst|counter\(3),
	datad => \inst|counter\(0),
	combout => \inst|buffer1~18_combout\);

-- Location: LCCOMB_X28_Y21_N18
\inst|buffer1~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~209_combout\ = (\inst|counter\(2) & (\inst|counter\(1) & (\inst|buffer1~18_combout\ & \inst|Equal31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|buffer1~18_combout\,
	datad => \inst|Equal31~3_combout\,
	combout => \inst|buffer1~209_combout\);

-- Location: LCCOMB_X27_Y22_N2
\inst|buffer1[96]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[96]~58_combout\ = ((!\inst1|OUTPUT\(3) & (!\inst|buffer1~28_combout\ & !\inst|buffer1~209_combout\))) # (!\inst1|OUTPUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst1|OUTPUT\(3),
	datac => \inst|buffer1~28_combout\,
	datad => \inst|buffer1~209_combout\,
	combout => \inst|buffer1[96]~58_combout\);

-- Location: LCCOMB_X27_Y22_N22
\inst|buffer1[96]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[96]~59_combout\ = (\inst1|OUTPUT\(0)) # (!\inst|buffer1[96]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buffer1[96]~58_combout\,
	datac => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[96]~59_combout\);

-- Location: FF_X26_Y19_N13
\inst|buffer1[107]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~70_combout\,
	ena => \inst|buffer1[96]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(107));

-- Location: LCCOMB_X27_Y19_N28
\inst|Equal33~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~6_combout\ = (\inst|buffer1\(107) & (\inst|buffer1\(95) & (\inst|buffer1\(106) $ (!\inst|buffer1\(94))))) # (!\inst|buffer1\(107) & (!\inst|buffer1\(95) & (\inst|buffer1\(106) $ (!\inst|buffer1\(94)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(107),
	datab => \inst|buffer1\(106),
	datac => \inst|buffer1\(94),
	datad => \inst|buffer1\(95),
	combout => \inst|Equal33~6_combout\);

-- Location: LCCOMB_X28_Y20_N22
\inst|Equal33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~0_combout\ = (\inst|buffer1\(84) & (\inst|buffer1\(96) & (\inst|buffer1\(85) $ (!\inst|buffer1\(97))))) # (!\inst|buffer1\(84) & (!\inst|buffer1\(96) & (\inst|buffer1\(85) $ (!\inst|buffer1\(97)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(84),
	datab => \inst|buffer1\(85),
	datac => \inst|buffer1\(97),
	datad => \inst|buffer1\(96),
	combout => \inst|Equal33~0_combout\);

-- Location: LCCOMB_X28_Y20_N8
\inst|Equal33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~1_combout\ = (\inst|buffer1\(99) & (\inst|buffer1\(87) & (\inst|buffer1\(98) $ (!\inst|buffer1\(86))))) # (!\inst|buffer1\(99) & (!\inst|buffer1\(87) & (\inst|buffer1\(98) $ (!\inst|buffer1\(86)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(99),
	datab => \inst|buffer1\(98),
	datac => \inst|buffer1\(86),
	datad => \inst|buffer1\(87),
	combout => \inst|Equal33~1_combout\);

-- Location: LCCOMB_X28_Y20_N30
\inst|Equal33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~3_combout\ = (\inst|buffer1\(90) & (\inst|buffer1\(102) & (\inst|buffer1\(103) $ (!\inst|buffer1\(91))))) # (!\inst|buffer1\(90) & (!\inst|buffer1\(102) & (\inst|buffer1\(103) $ (!\inst|buffer1\(91)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(90),
	datab => \inst|buffer1\(102),
	datac => \inst|buffer1\(103),
	datad => \inst|buffer1\(91),
	combout => \inst|Equal33~3_combout\);

-- Location: LCCOMB_X28_Y21_N28
\inst|Equal33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~2_combout\ = (\inst|buffer1\(101) & (\inst|buffer1\(89) & (\inst|buffer1\(100) $ (!\inst|buffer1\(88))))) # (!\inst|buffer1\(101) & (!\inst|buffer1\(89) & (\inst|buffer1\(100) $ (!\inst|buffer1\(88)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(101),
	datab => \inst|buffer1\(100),
	datac => \inst|buffer1\(88),
	datad => \inst|buffer1\(89),
	combout => \inst|Equal33~2_combout\);

-- Location: LCCOMB_X28_Y20_N20
\inst|Equal33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~4_combout\ = (\inst|Equal33~0_combout\ & (\inst|Equal33~1_combout\ & (\inst|Equal33~3_combout\ & \inst|Equal33~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal33~0_combout\,
	datab => \inst|Equal33~1_combout\,
	datac => \inst|Equal33~3_combout\,
	datad => \inst|Equal33~2_combout\,
	combout => \inst|Equal33~4_combout\);

-- Location: LCCOMB_X28_Y20_N6
\inst|Equal33~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~7_combout\ = (\inst|Equal33~5_combout\ & (\inst|Equal33~6_combout\ & \inst|Equal33~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal33~5_combout\,
	datac => \inst|Equal33~6_combout\,
	datad => \inst|Equal33~4_combout\,
	combout => \inst|Equal33~7_combout\);

-- Location: LCCOMB_X28_Y22_N18
\inst|Equal32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal32~1_combout\ = (\inst|Equal32~0_combout\ & (!\inst|counter\(1) & !\inst|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal32~0_combout\,
	datac => \inst|counter\(1),
	datad => \inst|counter\(2),
	combout => \inst|Equal32~1_combout\);

-- Location: LCCOMB_X28_Y21_N10
\inst|counter~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~55_combout\ = (\inst|Equal32~1_combout\ & (((!\inst|Equal33~7_combout\)))) # (!\inst|Equal32~1_combout\ & ((\inst|counter\(4)) # ((\inst|buffer1~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|Equal33~7_combout\,
	datac => \inst|Equal32~1_combout\,
	datad => \inst|buffer1~209_combout\,
	combout => \inst|counter~55_combout\);

-- Location: LCCOMB_X28_Y22_N2
\inst|counter~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~60_combout\ = (\inst|counter[0]~56_combout\ & (\inst|counter[0]~57_combout\ & ((\inst|counter~55_combout\) # (!\inst|counter[0]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter[0]~56_combout\,
	datab => \inst|counter~55_combout\,
	datac => \inst|counter[0]~59_combout\,
	datad => \inst|counter[0]~57_combout\,
	combout => \inst|counter~60_combout\);

-- Location: LCCOMB_X28_Y22_N26
\inst|counter[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[4]~2_combout\ = (\inst1|OUTPUT\(3) & ((\inst|counter~60_combout\))) # (!\inst1|OUTPUT\(3) & (\inst|counter~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst|counter~55_combout\,
	datad => \inst|counter~60_combout\,
	combout => \inst|counter[4]~2_combout\);

-- Location: FF_X28_Y22_N27
\inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter[4]~2_combout\,
	asdata => \inst|counter\(4),
	sclr => \inst1|OUTPUT\(0),
	sload => \inst1|ALT_INV_OUTPUT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(4));

-- Location: LCCOMB_X28_Y22_N10
\inst|Equal32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal32~0_combout\ = (\inst|counter\(4) & (!\inst|counter\(3) & !\inst|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datac => \inst|counter\(3),
	datad => \inst|counter\(0),
	combout => \inst|Equal32~0_combout\);

-- Location: LCCOMB_X28_Y22_N14
\inst|Equal36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal36~0_combout\ = (\inst|Equal32~0_combout\ & (\inst|counter\(1) & !\inst|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal32~0_combout\,
	datac => \inst|counter\(1),
	datad => \inst|counter\(2),
	combout => \inst|Equal36~0_combout\);

-- Location: FF_X26_Y19_N3
\inst|bufferout[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(117),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(117));

-- Location: LCCOMB_X26_Y19_N2
\inst2|buffer1[105]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(105) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(117)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(105),
	datac => \inst|bufferout\(117),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(105));

-- Location: LCCOMB_X26_Y19_N8
\inst2|bufferout[105]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(105) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(105))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(105))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(105),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(105),
	combout => \inst2|bufferout\(105));

-- Location: LCCOMB_X26_Y19_N0
\inst|buffer1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~68_combout\ = (!\inst|buffer1[96]~56_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(105)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[96]~56_combout\,
	datab => \ADC_IN[9]~input_o\,
	datac => \inst2|bufferout\(105),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~68_combout\);

-- Location: FF_X26_Y19_N1
\inst|buffer1[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~68_combout\,
	ena => \inst|buffer1[96]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(105));

-- Location: LCCOMB_X29_Y21_N0
\inst|Equal37~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal37~5_combout\ = (\inst|buffer1\(104) & (\inst|buffer1\(116) & (\inst|buffer1\(117) $ (!\inst|buffer1\(105))))) # (!\inst|buffer1\(104) & (!\inst|buffer1\(116) & (\inst|buffer1\(117) $ (!\inst|buffer1\(105)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(104),
	datab => \inst|buffer1\(117),
	datac => \inst|buffer1\(105),
	datad => \inst|buffer1\(116),
	combout => \inst|Equal37~5_combout\);

-- Location: LCCOMB_X29_Y22_N30
\inst|Equal37~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal37~6_combout\ = (\inst|buffer1\(119) & (\inst|buffer1\(107) & (\inst|buffer1\(106) $ (!\inst|buffer1\(118))))) # (!\inst|buffer1\(119) & (!\inst|buffer1\(107) & (\inst|buffer1\(106) $ (!\inst|buffer1\(118)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(119),
	datab => \inst|buffer1\(106),
	datac => \inst|buffer1\(118),
	datad => \inst|buffer1\(107),
	combout => \inst|Equal37~6_combout\);

-- Location: LCCOMB_X29_Y22_N6
\inst|Equal37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal37~3_combout\ = (\inst|buffer1\(103) & (\inst|buffer1\(115) & (\inst|buffer1\(114) $ (!\inst|buffer1\(102))))) # (!\inst|buffer1\(103) & (!\inst|buffer1\(115) & (\inst|buffer1\(114) $ (!\inst|buffer1\(102)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(103),
	datab => \inst|buffer1\(114),
	datac => \inst|buffer1\(115),
	datad => \inst|buffer1\(102),
	combout => \inst|Equal37~3_combout\);

-- Location: LCCOMB_X29_Y22_N0
\inst|Equal37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal37~2_combout\ = (\inst|buffer1\(100) & (\inst|buffer1\(112) & (\inst|buffer1\(113) $ (!\inst|buffer1\(101))))) # (!\inst|buffer1\(100) & (!\inst|buffer1\(112) & (\inst|buffer1\(113) $ (!\inst|buffer1\(101)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(100),
	datab => \inst|buffer1\(113),
	datac => \inst|buffer1\(112),
	datad => \inst|buffer1\(101),
	combout => \inst|Equal37~2_combout\);

-- Location: LCCOMB_X29_Y20_N2
\inst|Equal37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal37~1_combout\ = (\inst|buffer1\(99) & (\inst|buffer1\(111) & (\inst|buffer1\(98) $ (!\inst|buffer1\(110))))) # (!\inst|buffer1\(99) & (!\inst|buffer1\(111) & (\inst|buffer1\(98) $ (!\inst|buffer1\(110)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(99),
	datab => \inst|buffer1\(98),
	datac => \inst|buffer1\(111),
	datad => \inst|buffer1\(110),
	combout => \inst|Equal37~1_combout\);

-- Location: LCCOMB_X29_Y20_N12
\inst|Equal37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal37~0_combout\ = (\inst|buffer1\(97) & (\inst|buffer1\(109) & (\inst|buffer1\(96) $ (!\inst|buffer1\(108))))) # (!\inst|buffer1\(97) & (!\inst|buffer1\(109) & (\inst|buffer1\(96) $ (!\inst|buffer1\(108)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(97),
	datab => \inst|buffer1\(96),
	datac => \inst|buffer1\(109),
	datad => \inst|buffer1\(108),
	combout => \inst|Equal37~0_combout\);

-- Location: LCCOMB_X29_Y22_N12
\inst|Equal37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal37~4_combout\ = (\inst|Equal37~3_combout\ & (\inst|Equal37~2_combout\ & (\inst|Equal37~1_combout\ & \inst|Equal37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal37~3_combout\,
	datab => \inst|Equal37~2_combout\,
	datac => \inst|Equal37~1_combout\,
	datad => \inst|Equal37~0_combout\,
	combout => \inst|Equal37~4_combout\);

-- Location: LCCOMB_X29_Y22_N2
\inst|buffer1[108]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[108]~164_combout\ = (\inst|Equal36~0_combout\ & (\inst|Equal37~5_combout\ & (\inst|Equal37~6_combout\ & \inst|Equal37~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal36~0_combout\,
	datab => \inst|Equal37~5_combout\,
	datac => \inst|Equal37~6_combout\,
	datad => \inst|Equal37~4_combout\,
	combout => \inst|buffer1[108]~164_combout\);

-- Location: LCCOMB_X28_Y25_N22
\inst|buffer1[108]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[108]~165_combout\ = (\inst1|OUTPUT\(0)) # ((!\inst1|OUTPUT\(3) & \inst|buffer1[108]~164_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(0),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[108]~164_combout\,
	combout => \inst|buffer1[108]~165_combout\);

-- Location: FF_X28_Y24_N29
\inst|bufferout[130]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(130),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(130));

-- Location: LCCOMB_X28_Y24_N28
\inst2|buffer1[118]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(118) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(130)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(118)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(118),
	datac => \inst|bufferout\(130),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(118));

-- Location: LCCOMB_X28_Y24_N10
\inst2|bufferout[118]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(118) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(118))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(118))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(118),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(118),
	combout => \inst2|bufferout\(118));

-- Location: LCCOMB_X29_Y25_N12
\inst|buffer1~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~178_combout\ = (!\inst|buffer1[108]~165_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(118))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[108]~165_combout\,
	datab => \inst1|OUTPUT\(3),
	datac => \inst2|bufferout\(118),
	datad => \ADC_IN[10]~input_o\,
	combout => \inst|buffer1~178_combout\);

-- Location: FF_X29_Y25_N13
\inst|buffer1[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~178_combout\,
	ena => \inst|buffer1[108]~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(118));

-- Location: FF_X26_Y19_N29
\inst|bufferout[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(118),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(118));

-- Location: LCCOMB_X26_Y19_N28
\inst2|buffer1[106]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(106) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(118)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(106),
	datac => \inst|bufferout\(118),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(106));

-- Location: LCCOMB_X26_Y19_N30
\inst2|bufferout[106]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(106) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(106)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(106)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(106),
	datab => \inst2|buffer1\(106),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(106));

-- Location: LCCOMB_X26_Y19_N6
\inst|buffer1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~69_combout\ = (!\inst|buffer1[96]~56_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(106)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[96]~56_combout\,
	datab => \ADC_IN[10]~input_o\,
	datac => \inst2|bufferout\(106),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~69_combout\);

-- Location: FF_X26_Y19_N7
\inst|buffer1[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~69_combout\,
	ena => \inst|buffer1[96]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(106));

-- Location: FF_X29_Y21_N13
\inst|bufferout[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(106),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(106));

-- Location: LCCOMB_X29_Y21_N12
\inst2|buffer1[94]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(94) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(106)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(94)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(94),
	datac => \inst|bufferout\(106),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(94));

-- Location: LCCOMB_X29_Y21_N18
\inst2|bufferout[94]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(94) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(94))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(94))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(94),
	datab => \inst2|bufferout\(94),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(94));

-- Location: LCCOMB_X29_Y21_N6
\inst|buffer1~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~163_combout\ = (!\inst|buffer1[84]~149_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(94)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[10]~input_o\,
	datab => \inst2|bufferout\(94),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[84]~149_combout\,
	combout => \inst|buffer1~163_combout\);

-- Location: FF_X29_Y21_N7
\inst|buffer1[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~163_combout\,
	ena => \inst|buffer1[84]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(94));

-- Location: FF_X26_Y24_N19
\inst|bufferout[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(94),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(94));

-- Location: LCCOMB_X26_Y24_N18
\inst2|buffer1[82]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(82) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(94)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(82)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(82),
	datac => \inst|bufferout\(94),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(82));

-- Location: LCCOMB_X26_Y24_N30
\inst2|bufferout[82]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(82) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(82))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(82))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(82),
	datac => \inst2|bufferout\(82),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(82));

-- Location: LCCOMB_X26_Y24_N16
\inst|buffer1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~54_combout\ = (!\inst|buffer1[72]~41_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(82)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[10]~input_o\,
	datab => \inst|buffer1[72]~41_combout\,
	datac => \inst2|bufferout\(82),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~54_combout\);

-- Location: FF_X26_Y24_N17
\inst|buffer1[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~54_combout\,
	ena => \inst|buffer1[72]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(82));

-- Location: FF_X26_Y25_N27
\inst|bufferout[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(82),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(82));

-- Location: LCCOMB_X26_Y25_N26
\inst2|buffer1[70]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(70) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(82)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(70)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(70),
	datac => \inst|bufferout\(82),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(70));

-- Location: LCCOMB_X26_Y25_N4
\inst2|bufferout[70]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(70) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(70))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(70))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(70),
	datac => \inst2|bufferout\(70),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(70));

-- Location: LCCOMB_X26_Y25_N24
\inst|buffer1~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~146_combout\ = (!\inst|buffer1[60]~133_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(70)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[10]~input_o\,
	datab => \inst2|bufferout\(70),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[60]~133_combout\,
	combout => \inst|buffer1~146_combout\);

-- Location: FF_X26_Y25_N25
\inst|buffer1[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~146_combout\,
	ena => \inst|buffer1[60]~136_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(70));

-- Location: LCCOMB_X26_Y25_N6
\inst|Equal25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal25~6_combout\ = (\inst|buffer1\(70) & (\inst|buffer1\(82) & (\inst|buffer1\(71) $ (!\inst|buffer1\(83))))) # (!\inst|buffer1\(70) & (!\inst|buffer1\(82) & (\inst|buffer1\(71) $ (!\inst|buffer1\(83)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(70),
	datab => \inst|buffer1\(71),
	datac => \inst|buffer1\(83),
	datad => \inst|buffer1\(82),
	combout => \inst|Equal25~6_combout\);

-- Location: LCCOMB_X27_Y23_N8
\inst|Equal25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal25~5_combout\ = (\inst|buffer1\(68) & (\inst|buffer1\(80) & (\inst|buffer1\(69) $ (!\inst|buffer1\(81))))) # (!\inst|buffer1\(68) & (!\inst|buffer1\(80) & (\inst|buffer1\(69) $ (!\inst|buffer1\(81)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(68),
	datab => \inst|buffer1\(69),
	datac => \inst|buffer1\(80),
	datad => \inst|buffer1\(81),
	combout => \inst|Equal25~5_combout\);

-- Location: LCCOMB_X27_Y23_N26
\inst|Equal24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal24~0_combout\ = (\inst|Equal16~0_combout\ & (\inst|counter\(2) & !\inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal16~0_combout\,
	datab => \inst|counter\(2),
	datad => \inst|counter\(1),
	combout => \inst|Equal24~0_combout\);

-- Location: LCCOMB_X27_Y23_N12
\inst|Equal25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal25~3_combout\ = (\inst|buffer1\(66) & (\inst|buffer1\(78) & (\inst|buffer1\(67) $ (!\inst|buffer1\(79))))) # (!\inst|buffer1\(66) & (!\inst|buffer1\(78) & (\inst|buffer1\(67) $ (!\inst|buffer1\(79)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(66),
	datab => \inst|buffer1\(67),
	datac => \inst|buffer1\(79),
	datad => \inst|buffer1\(78),
	combout => \inst|Equal25~3_combout\);

-- Location: LCCOMB_X27_Y23_N14
\inst|Equal25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal25~2_combout\ = (\inst|buffer1\(65) & (\inst|buffer1\(77) & (\inst|buffer1\(76) $ (!\inst|buffer1\(64))))) # (!\inst|buffer1\(65) & (!\inst|buffer1\(77) & (\inst|buffer1\(76) $ (!\inst|buffer1\(64)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(65),
	datab => \inst|buffer1\(76),
	datac => \inst|buffer1\(77),
	datad => \inst|buffer1\(64),
	combout => \inst|Equal25~2_combout\);

-- Location: LCCOMB_X26_Y20_N18
\inst|Equal25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal25~1_combout\ = (\inst|buffer1\(75) & (\inst|buffer1\(63) & (\inst|buffer1\(74) $ (!\inst|buffer1\(62))))) # (!\inst|buffer1\(75) & (!\inst|buffer1\(63) & (\inst|buffer1\(74) $ (!\inst|buffer1\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(75),
	datab => \inst|buffer1\(74),
	datac => \inst|buffer1\(62),
	datad => \inst|buffer1\(63),
	combout => \inst|Equal25~1_combout\);

-- Location: LCCOMB_X26_Y25_N20
\inst|Equal25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal25~0_combout\ = (\inst|buffer1\(61) & (\inst|buffer1\(73) & (\inst|buffer1\(60) $ (!\inst|buffer1\(72))))) # (!\inst|buffer1\(61) & (!\inst|buffer1\(73) & (\inst|buffer1\(60) $ (!\inst|buffer1\(72)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(61),
	datab => \inst|buffer1\(60),
	datac => \inst|buffer1\(72),
	datad => \inst|buffer1\(73),
	combout => \inst|Equal25~0_combout\);

-- Location: LCCOMB_X27_Y23_N6
\inst|Equal25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal25~4_combout\ = (\inst|Equal25~3_combout\ & (\inst|Equal25~2_combout\ & (\inst|Equal25~1_combout\ & \inst|Equal25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal25~3_combout\,
	datab => \inst|Equal25~2_combout\,
	datac => \inst|Equal25~1_combout\,
	datad => \inst|Equal25~0_combout\,
	combout => \inst|Equal25~4_combout\);

-- Location: LCCOMB_X27_Y23_N20
\inst|buffer1[72]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[72]~40_combout\ = (\inst|Equal25~6_combout\ & (\inst|Equal25~5_combout\ & (\inst|Equal24~0_combout\ & \inst|Equal25~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal25~6_combout\,
	datab => \inst|Equal25~5_combout\,
	datac => \inst|Equal24~0_combout\,
	datad => \inst|Equal25~4_combout\,
	combout => \inst|buffer1[72]~40_combout\);

-- Location: LCCOMB_X26_Y20_N28
\inst|buffer1[72]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[72]~41_combout\ = (\inst1|OUTPUT\(0)) # ((!\inst1|OUTPUT\(3) & \inst|buffer1[72]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(0),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[72]~40_combout\,
	combout => \inst|buffer1[72]~41_combout\);

-- Location: FF_X26_Y24_N29
\inst|bufferout[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(95),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(95));

-- Location: LCCOMB_X26_Y24_N28
\inst2|buffer1[83]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(83) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(95)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(83)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(83),
	datac => \inst|bufferout\(95),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(83));

-- Location: LCCOMB_X26_Y24_N4
\inst2|bufferout[83]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(83) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(83))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(83))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(83),
	datac => \inst2|bufferout\(83),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(83));

-- Location: LCCOMB_X26_Y24_N22
\inst|buffer1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~55_combout\ = (!\inst|buffer1[72]~41_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(83)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[11]~input_o\,
	datab => \inst|buffer1[72]~41_combout\,
	datac => \inst2|bufferout\(83),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~55_combout\);

-- Location: FF_X26_Y24_N23
\inst|buffer1[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~55_combout\,
	ena => \inst|buffer1[72]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(83));

-- Location: LCCOMB_X26_Y24_N8
\inst|Equal29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal29~6_combout\ = (\inst|buffer1\(83) & (\inst|buffer1\(95) & (\inst|buffer1\(82) $ (!\inst|buffer1\(94))))) # (!\inst|buffer1\(83) & (!\inst|buffer1\(95) & (\inst|buffer1\(82) $ (!\inst|buffer1\(94)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(83),
	datab => \inst|buffer1\(82),
	datac => \inst|buffer1\(94),
	datad => \inst|buffer1\(95),
	combout => \inst|Equal29~6_combout\);

-- Location: LCCOMB_X26_Y24_N14
\inst|Equal29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal29~5_combout\ = (\inst|buffer1\(81) & (\inst|buffer1\(93) & (\inst|buffer1\(80) $ (!\inst|buffer1\(92))))) # (!\inst|buffer1\(81) & (!\inst|buffer1\(93) & (\inst|buffer1\(80) $ (!\inst|buffer1\(92)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(81),
	datab => \inst|buffer1\(80),
	datac => \inst|buffer1\(93),
	datad => \inst|buffer1\(92),
	combout => \inst|Equal29~5_combout\);

-- Location: LCCOMB_X28_Y22_N20
\inst|Equal28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal28~4_combout\ = (\inst|counter\(1) & (\inst|Equal16~0_combout\ & \inst|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(1),
	datac => \inst|Equal16~0_combout\,
	datad => \inst|counter\(2),
	combout => \inst|Equal28~4_combout\);

-- Location: LCCOMB_X30_Y23_N12
\inst|Equal29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal29~1_combout\ = (\inst|buffer1\(75) & (\inst|buffer1\(87) & (\inst|buffer1\(86) $ (!\inst|buffer1\(74))))) # (!\inst|buffer1\(75) & (!\inst|buffer1\(87) & (\inst|buffer1\(86) $ (!\inst|buffer1\(74)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(75),
	datab => \inst|buffer1\(86),
	datac => \inst|buffer1\(74),
	datad => \inst|buffer1\(87),
	combout => \inst|Equal29~1_combout\);

-- Location: LCCOMB_X29_Y20_N22
\inst|Equal29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal29~0_combout\ = (\inst|buffer1\(84) & (\inst|buffer1\(72) & (\inst|buffer1\(73) $ (!\inst|buffer1\(85))))) # (!\inst|buffer1\(84) & (!\inst|buffer1\(72) & (\inst|buffer1\(73) $ (!\inst|buffer1\(85)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(84),
	datab => \inst|buffer1\(72),
	datac => \inst|buffer1\(73),
	datad => \inst|buffer1\(85),
	combout => \inst|Equal29~0_combout\);

-- Location: LCCOMB_X30_Y23_N14
\inst|Equal29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal29~3_combout\ = (\inst|buffer1\(79) & (\inst|buffer1\(91) & (\inst|buffer1\(90) $ (!\inst|buffer1\(78))))) # (!\inst|buffer1\(79) & (!\inst|buffer1\(91) & (\inst|buffer1\(90) $ (!\inst|buffer1\(78)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(79),
	datab => \inst|buffer1\(90),
	datac => \inst|buffer1\(91),
	datad => \inst|buffer1\(78),
	combout => \inst|Equal29~3_combout\);

-- Location: LCCOMB_X26_Y21_N12
\inst|Equal29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal29~2_combout\ = (\inst|buffer1\(76) & (\inst|buffer1\(88) & (\inst|buffer1\(77) $ (!\inst|buffer1\(89))))) # (!\inst|buffer1\(76) & (!\inst|buffer1\(88) & (\inst|buffer1\(77) $ (!\inst|buffer1\(89)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(76),
	datab => \inst|buffer1\(77),
	datac => \inst|buffer1\(88),
	datad => \inst|buffer1\(89),
	combout => \inst|Equal29~2_combout\);

-- Location: LCCOMB_X30_Y23_N28
\inst|Equal29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal29~4_combout\ = (\inst|Equal29~1_combout\ & (\inst|Equal29~0_combout\ & (\inst|Equal29~3_combout\ & \inst|Equal29~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal29~1_combout\,
	datab => \inst|Equal29~0_combout\,
	datac => \inst|Equal29~3_combout\,
	datad => \inst|Equal29~2_combout\,
	combout => \inst|Equal29~4_combout\);

-- Location: LCCOMB_X30_Y23_N0
\inst|buffer1[84]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[84]~148_combout\ = (\inst|Equal29~6_combout\ & (\inst|Equal29~5_combout\ & (\inst|Equal28~4_combout\ & \inst|Equal29~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal29~6_combout\,
	datab => \inst|Equal29~5_combout\,
	datac => \inst|Equal28~4_combout\,
	datad => \inst|Equal29~4_combout\,
	combout => \inst|buffer1[84]~148_combout\);

-- Location: LCCOMB_X29_Y21_N30
\inst|buffer1[84]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[84]~149_combout\ = (\inst1|OUTPUT\(0)) # ((!\inst1|OUTPUT\(3) & \inst|buffer1[84]~148_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(0),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[84]~148_combout\,
	combout => \inst|buffer1[84]~149_combout\);

-- Location: FF_X27_Y24_N1
\inst|bufferout[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(105),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(105));

-- Location: LCCOMB_X27_Y24_N0
\inst2|buffer1[93]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(93) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(105)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(93)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(93),
	datac => \inst|bufferout\(105),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(93));

-- Location: LCCOMB_X27_Y24_N22
\inst2|bufferout[93]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(93) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(93))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(93))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(93),
	datac => \inst2|bufferout\(93),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(93));

-- Location: LCCOMB_X27_Y24_N10
\inst|buffer1~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~160_combout\ = (!\inst|buffer1[84]~149_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(93)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[84]~149_combout\,
	datab => \ADC_IN[9]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(93),
	combout => \inst|buffer1~160_combout\);

-- Location: FF_X27_Y24_N11
\inst|buffer1[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~160_combout\,
	ena => \inst|buffer1[84]~152_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(93));

-- Location: LCCOMB_X27_Y24_N6
\inst|Equal33~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~5_combout\ = (\inst|buffer1\(93) & (\inst|buffer1\(105) & (\inst|buffer1\(92) $ (!\inst|buffer1\(104))))) # (!\inst|buffer1\(93) & (!\inst|buffer1\(105) & (\inst|buffer1\(92) $ (!\inst|buffer1\(104)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(93),
	datab => \inst|buffer1\(92),
	datac => \inst|buffer1\(104),
	datad => \inst|buffer1\(105),
	combout => \inst|Equal33~5_combout\);

-- Location: LCCOMB_X28_Y22_N0
\inst|buffer1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~28_combout\ = (\inst|Equal33~5_combout\ & (\inst|Equal32~1_combout\ & (\inst|Equal33~6_combout\ & \inst|Equal33~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal33~5_combout\,
	datab => \inst|Equal32~1_combout\,
	datac => \inst|Equal33~6_combout\,
	datad => \inst|Equal33~4_combout\,
	combout => \inst|buffer1~28_combout\);

-- Location: LCCOMB_X28_Y21_N16
\inst|buffer1[96]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[96]~56_combout\ = (\inst1|OUTPUT\(0)) # ((\inst|buffer1~28_combout\ & !\inst1|OUTPUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datac => \inst|buffer1~28_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1[96]~56_combout\);

-- Location: FF_X28_Y21_N7
\inst|bufferout[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(115),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(115));

-- Location: LCCOMB_X28_Y21_N6
\inst2|buffer1[103]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(103) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(115)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(103)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(103),
	datac => \inst|bufferout\(115),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(103));

-- Location: LCCOMB_X28_Y21_N20
\inst2|bufferout[103]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(103) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(103))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(103))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(103),
	datab => \inst2|bufferout\(103),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(103));

-- Location: LCCOMB_X28_Y21_N30
\inst|buffer1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~66_combout\ = (!\inst|buffer1[96]~56_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(103)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[7]~input_o\,
	datab => \inst|buffer1[96]~56_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(103),
	combout => \inst|buffer1~66_combout\);

-- Location: FF_X28_Y21_N31
\inst|buffer1[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~66_combout\,
	ena => \inst|buffer1[96]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(103));

-- Location: LCCOMB_X28_Y21_N0
\inst|Equal31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal31~1_combout\ = (!\inst|buffer1\(103) & (!\inst|buffer1\(100) & (!\inst|buffer1\(101) & !\inst|buffer1\(102))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(103),
	datab => \inst|buffer1\(100),
	datac => \inst|buffer1\(101),
	datad => \inst|buffer1\(102),
	combout => \inst|Equal31~1_combout\);

-- Location: LCCOMB_X29_Y20_N20
\inst|Equal31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal31~0_combout\ = (!\inst|buffer1\(99) & (!\inst|buffer1\(96) & (!\inst|buffer1\(98) & !\inst|buffer1\(97))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(99),
	datab => \inst|buffer1\(96),
	datac => \inst|buffer1\(98),
	datad => \inst|buffer1\(97),
	combout => \inst|Equal31~0_combout\);

-- Location: LCCOMB_X28_Y21_N12
\inst|Equal31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal31~2_combout\ = (!\inst|buffer1\(105) & (!\inst|buffer1\(104) & (!\inst|buffer1\(107) & !\inst|buffer1\(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(105),
	datab => \inst|buffer1\(104),
	datac => \inst|buffer1\(107),
	datad => \inst|buffer1\(106),
	combout => \inst|Equal31~2_combout\);

-- Location: LCCOMB_X28_Y21_N2
\inst|Equal31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal31~3_combout\ = (\inst|Equal31~1_combout\ & (\inst|Equal31~0_combout\ & \inst|Equal31~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal31~1_combout\,
	datac => \inst|Equal31~0_combout\,
	datad => \inst|Equal31~2_combout\,
	combout => \inst|Equal31~3_combout\);

-- Location: LCCOMB_X26_Y23_N30
\inst|Equal19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal19~3_combout\ = (\inst|Equal19~2_combout\ & (\inst|Equal19~0_combout\ & \inst|Equal19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal19~2_combout\,
	datac => \inst|Equal19~0_combout\,
	datad => \inst|Equal19~1_combout\,
	combout => \inst|Equal19~3_combout\);

-- Location: LCCOMB_X27_Y25_N14
\inst|counter[0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~57_combout\ = (!\inst|Equal31~3_combout\ & (!\inst|Equal23~3_combout\ & (!\inst|Equal27~3_combout\ & !\inst|Equal19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal31~3_combout\,
	datab => \inst|Equal23~3_combout\,
	datac => \inst|Equal27~3_combout\,
	datad => \inst|Equal19~3_combout\,
	combout => \inst|counter[0]~57_combout\);

-- Location: LCCOMB_X27_Y22_N24
\inst|counter~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~72_combout\ = ((\inst|counter[0]~56_combout\ & \inst|counter[0]~59_combout\)) # (!\inst1|OUTPUT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter[0]~56_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|counter[0]~59_combout\,
	combout => \inst|counter~72_combout\);

-- Location: LCCOMB_X28_Y22_N22
\inst|counter~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~76_combout\ = (\inst|counter\(3)) # (((\inst|counter\(0)) # (!\inst|counter\(4))) # (!\inst|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datab => \inst|counter\(2),
	datac => \inst|counter\(4),
	datad => \inst|counter\(0),
	combout => \inst|counter~76_combout\);

-- Location: LCCOMB_X30_Y23_N26
\inst|counter~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~70_combout\ = (\inst|Equal16~1_combout\ & (((!\inst|Equal17~7_combout\)))) # (!\inst|Equal16~1_combout\ & ((\inst|counter\(3)) # ((\inst|buffer1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal16~1_combout\,
	datab => \inst|counter\(3),
	datac => \inst|buffer1~36_combout\,
	datad => \inst|Equal17~7_combout\,
	combout => \inst|counter~70_combout\);

-- Location: LCCOMB_X30_Y23_N20
\inst|counter~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~71_combout\ = (\inst|buffer1~28_combout\) # ((!\inst|Equal32~1_combout\ & (!\inst|buffer1~209_combout\ & \inst|counter~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal32~1_combout\,
	datab => \inst|buffer1~209_combout\,
	datac => \inst|counter~70_combout\,
	datad => \inst|buffer1~28_combout\,
	combout => \inst|counter~71_combout\);

-- Location: LCCOMB_X27_Y22_N20
\inst|counter~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~73_combout\ = (!\inst|buffer1~35_combout\ & (\inst|counter~72_combout\ & (\inst|counter~76_combout\ & \inst|counter~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~35_combout\,
	datab => \inst|counter~72_combout\,
	datac => \inst|counter~76_combout\,
	datad => \inst|counter~71_combout\,
	combout => \inst|counter~73_combout\);

-- Location: LCCOMB_X27_Y22_N16
\inst|counter~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~74_combout\ = (\inst|counter~73_combout\) # ((!\inst|counter[0]~57_combout\ & (\inst1|OUTPUT\(3) & \inst|counter[0]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter[0]~57_combout\,
	datab => \inst|counter~73_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|counter[0]~56_combout\,
	combout => \inst|counter~74_combout\);

-- Location: LCCOMB_X26_Y22_N14
\inst|counter[3]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[3]~75_combout\ = (\inst1|OUTPUT\(0)) # (\inst1|OUTPUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datad => \inst1|OUTPUT\(1),
	combout => \inst|counter[3]~75_combout\);

-- Location: FF_X27_Y22_N17
\inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter~74_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|counter[3]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(3));

-- Location: LCCOMB_X28_Y26_N20
\inst|Equal46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal46~4_combout\ = (!\inst|counter\(3) & (\inst|counter\(4) & \inst|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(3),
	datac => \inst|counter\(4),
	datad => \inst|counter\(0),
	combout => \inst|Equal46~4_combout\);

-- Location: LCCOMB_X25_Y24_N4
\inst|Equal46~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal46~5_combout\ = (\inst|counter\(1) & (\inst|counter\(2) & \inst|Equal46~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(1),
	datac => \inst|counter\(2),
	datad => \inst|Equal46~4_combout\,
	combout => \inst|Equal46~5_combout\);

-- Location: LCCOMB_X25_Y24_N28
\inst|BufferCount~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~3_combout\ = (\inst|buffer1~24_combout\) # ((\inst|buffer1~27_combout\) # ((\inst|buffer1~38_combout\) # (\inst|buffer1[16]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~24_combout\,
	datab => \inst|buffer1~27_combout\,
	datac => \inst|buffer1~38_combout\,
	datad => \inst|buffer1[16]~39_combout\,
	combout => \inst|BufferCount~3_combout\);

-- Location: LCCOMB_X25_Y24_N22
\inst|BufferCount~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~4_combout\ = (!\inst|buffer1~33_combout\ & ((\inst|buffer1~30_combout\) # ((!\inst|buffer1~209_combout\ & \inst|BufferCount~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~33_combout\,
	datab => \inst|buffer1~30_combout\,
	datac => \inst|buffer1~209_combout\,
	datad => \inst|BufferCount~3_combout\,
	combout => \inst|BufferCount~4_combout\);

-- Location: LCCOMB_X25_Y24_N16
\inst|BufferCount~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~5_combout\ = (!\inst|Equal46~5_combout\ & ((\inst|BufferCount~4_combout\) # (\inst|buffer1~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal46~5_combout\,
	datac => \inst|BufferCount~4_combout\,
	datad => \inst|buffer1~35_combout\,
	combout => \inst|BufferCount~5_combout\);

-- Location: LCCOMB_X26_Y26_N10
\inst|bufferout[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bufferout[16]~0_combout\ = (!\inst1|OUTPUT\(0) & \inst1|OUTPUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|OUTPUT\(0),
	datad => \inst1|OUTPUT\(1),
	combout => \inst|bufferout[16]~0_combout\);

-- Location: LCCOMB_X25_Y22_N18
\inst|BufferCount[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount[3]~6_combout\ = (\inst|bufferout[16]~0_combout\ & ((\inst|buffer1[16]~39_combout\) # ((\inst|Equal46~5_combout\) # (!\inst|counter[0]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|bufferout[16]~0_combout\,
	datab => \inst|buffer1[16]~39_combout\,
	datac => \inst|Equal46~5_combout\,
	datad => \inst|counter[0]~67_combout\,
	combout => \inst|BufferCount[3]~6_combout\);

-- Location: FF_X25_Y24_N17
\inst|BufferCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCount~5_combout\,
	ena => \inst|BufferCount[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCount\(0));

-- Location: LCCOMB_X26_Y26_N12
\inst|BufferCheck[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCheck[0]~feeder_combout\ = \inst|BufferCount\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|BufferCount\(0),
	combout => \inst|BufferCheck[0]~feeder_combout\);

-- Location: FF_X26_Y26_N13
\inst|BufferCheck[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCheck[0]~feeder_combout\,
	ena => \inst|bufferout[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCheck\(0));

-- Location: LCCOMB_X26_Y26_N16
\inst1|Current~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Current~1_combout\ = (\inst|BufferCheck\(0) & ((\inst1|Equal0~1_combout\) # (!\inst1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BufferCheck\(0),
	datac => \inst1|Equal2~0_combout\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|Current~1_combout\);

-- Location: FF_X26_Y26_N17
\inst1|Current[0]\ : dffeas
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
	q => \inst1|Current\(0));

-- Location: LCCOMB_X26_Y22_N0
\inst|BufferCount~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~7_combout\ = (!\inst|buffer1~27_combout\ & !\inst|buffer1~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buffer1~27_combout\,
	datad => \inst|buffer1~36_combout\,
	combout => \inst|BufferCount~7_combout\);

-- Location: LCCOMB_X26_Y22_N18
\inst|BufferCount~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~8_combout\ = (\inst|buffer1~38_combout\) # ((\inst|Equal46~5_combout\) # ((\inst|buffer1~19_combout\) # (!\inst|BufferCount~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~38_combout\,
	datab => \inst|Equal46~5_combout\,
	datac => \inst|buffer1~19_combout\,
	datad => \inst|BufferCount~7_combout\,
	combout => \inst|BufferCount~8_combout\);

-- Location: FF_X26_Y22_N19
\inst|BufferCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCount~8_combout\,
	ena => \inst|BufferCount[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCount\(2));

-- Location: LCCOMB_X26_Y26_N30
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

-- Location: FF_X26_Y26_N31
\inst|BufferCheck[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCheck[2]~feeder_combout\,
	ena => \inst|bufferout[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCheck\(2));

-- Location: LCCOMB_X26_Y26_N20
\inst1|Current~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Current~3_combout\ = (\inst|BufferCheck\(2)) # ((\inst1|Equal2~0_combout\ & !\inst1|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BufferCheck\(2),
	datac => \inst1|Equal2~0_combout\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|Current~3_combout\);

-- Location: FF_X26_Y26_N21
\inst1|Current[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Current~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Current\(2));

-- Location: LCCOMB_X26_Y26_N6
\inst1|SPACE_AVAILABLE~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~3_combout\ = (\inst1|SPACE_AVAILABLE~7_combout\) # (\inst1|Current\(2) $ (((!\inst1|Current\(1) & !\inst1|Current\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Current\(1),
	datab => \inst1|Current\(0),
	datac => \inst1|SPACE_AVAILABLE~7_combout\,
	datad => \inst1|Current\(2),
	combout => \inst1|SPACE_AVAILABLE~3_combout\);

-- Location: FF_X26_Y26_N7
\inst1|SPACE_AVAILABLE[2]\ : dffeas
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
	q => \inst1|SPACE_AVAILABLE\(2));

-- Location: LCCOMB_X26_Y26_N28
\inst1|SPACE_AVAILABLE~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~4_combout\ = (\inst1|Equal2~0_combout\ & (\inst1|Equal0~1_combout\ & (\inst1|Current\(1) $ (\inst1|Current\(0))))) # (!\inst1|Equal2~0_combout\ & (\inst1|Current\(1) $ ((\inst1|Current\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Current\(1),
	datab => \inst1|Current\(0),
	datac => \inst1|Equal2~0_combout\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|SPACE_AVAILABLE~4_combout\);

-- Location: FF_X26_Y26_N29
\inst1|SPACE_AVAILABLE[1]\ : dffeas
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
	q => \inst1|SPACE_AVAILABLE\(1));

-- Location: LCCOMB_X29_Y25_N24
\inst|counter~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~44_combout\ = (!\inst|buffer1~33_combout\ & (!\inst|buffer1~30_combout\ & !\inst|buffer1~209_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buffer1~33_combout\,
	datac => \inst|buffer1~30_combout\,
	datad => \inst|buffer1~209_combout\,
	combout => \inst|counter~44_combout\);

-- Location: LCCOMB_X26_Y22_N12
\inst|BufferCount~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~9_combout\ = (\inst|buffer1~35_combout\) # ((\inst|Equal46~5_combout\) # (!\inst|counter~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buffer1~35_combout\,
	datac => \inst|Equal46~5_combout\,
	datad => \inst|counter~44_combout\,
	combout => \inst|BufferCount~9_combout\);

-- Location: FF_X26_Y22_N13
\inst|BufferCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCount~9_combout\,
	ena => \inst|BufferCount[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCount\(3));

-- Location: LCCOMB_X26_Y26_N24
\inst|BufferCheck[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCheck[3]~feeder_combout\ = \inst|BufferCount\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|BufferCount\(3),
	combout => \inst|BufferCheck[3]~feeder_combout\);

-- Location: FF_X26_Y26_N25
\inst|BufferCheck[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCheck[3]~feeder_combout\,
	ena => \inst|bufferout[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCheck\(3));

-- Location: LCCOMB_X26_Y30_N18
\inst1|Current~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Current~0_combout\ = (\inst|BufferCheck\(3)) # ((!\inst1|Equal0~1_combout\ & \inst1|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~1_combout\,
	datab => \inst1|Equal2~0_combout\,
	datad => \inst|BufferCheck\(3),
	combout => \inst1|Current~0_combout\);

-- Location: FF_X26_Y30_N19
\inst1|Current[3]\ : dffeas
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
	q => \inst1|Current\(3));

-- Location: LCCOMB_X26_Y26_N14
\inst1|SPACE_AVAILABLE~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~2_combout\ = (\inst1|Equal2~0_combout\ & ((\inst1|Current\(3) $ (\inst1|Add0~0_combout\)) # (!\inst1|Equal0~1_combout\))) # (!\inst1|Equal2~0_combout\ & (\inst1|Current\(3) $ ((\inst1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Current\(3),
	datab => \inst1|Add0~0_combout\,
	datac => \inst1|Equal2~0_combout\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|SPACE_AVAILABLE~2_combout\);

-- Location: FF_X26_Y26_N15
\inst1|SPACE_AVAILABLE[3]\ : dffeas
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
	q => \inst1|SPACE_AVAILABLE\(3));

-- Location: LCCOMB_X26_Y26_N0
\inst1|SPACE_AVAILABLE~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~5_combout\ = (\inst1|Current\(0) & ((\inst1|Equal0~1_combout\) # (!\inst1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Current\(0),
	datac => \inst1|Equal2~0_combout\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|SPACE_AVAILABLE~5_combout\);

-- Location: FF_X26_Y26_N1
\inst1|SPACE_AVAILABLE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|SPACE_AVAILABLE~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SPACE_AVAILABLE\(0));

-- Location: LCCOMB_X26_Y26_N2
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|SPACE_AVAILABLE\(2) & (!\inst1|SPACE_AVAILABLE\(1) & (!\inst1|SPACE_AVAILABLE\(3) & !\inst1|SPACE_AVAILABLE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SPACE_AVAILABLE\(2),
	datab => \inst1|SPACE_AVAILABLE\(1),
	datac => \inst1|SPACE_AVAILABLE\(3),
	datad => \inst1|SPACE_AVAILABLE\(0),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y30_N6
\inst1|SPACE_AVAILABLE~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~7_combout\ = (\inst1|Equal2~0_combout\ & (((\inst1|SPACE_AVAILABLE\(4)) # (\inst1|SPACE_AVAILABLE\(10))) # (!\inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|SPACE_AVAILABLE\(4),
	datac => \inst1|Equal2~0_combout\,
	datad => \inst1|SPACE_AVAILABLE\(10),
	combout => \inst1|SPACE_AVAILABLE~7_combout\);

-- Location: LCCOMB_X29_Y26_N14
\inst1|OUTPUT[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[0]~13_combout\ = (\inst1|Equal1~1_combout\ & (((\inst1|OUTPUT\(0))))) # (!\inst1|Equal1~1_combout\ & ((\inst1|SPACE_AVAILABLE~7_combout\) # ((\inst1|OUTPUT\(0) & !\inst1|OUTPUT[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SPACE_AVAILABLE~7_combout\,
	datab => \inst1|Equal1~1_combout\,
	datac => \inst1|OUTPUT\(0),
	datad => \inst1|OUTPUT[0]~16_combout\,
	combout => \inst1|OUTPUT[0]~13_combout\);

-- Location: FF_X29_Y26_N15
\inst1|OUTPUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|OUTPUT[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTPUT\(0));

-- Location: LCCOMB_X28_Y22_N28
\inst|Equal40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal40~0_combout\ = (\inst|Equal32~0_combout\ & (!\inst|counter\(1) & \inst|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal32~0_combout\,
	datac => \inst|counter\(1),
	datad => \inst|counter\(2),
	combout => \inst|Equal40~0_combout\);

-- Location: LCCOMB_X30_Y23_N10
\inst|buffer1[131]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[131]~180_combout\ = (\inst1|OUTPUT\(0)) # ((\inst|Equal40~0_combout\ & (!\inst1|OUTPUT\(3) & \inst|Equal41~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst|Equal40~0_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|Equal41~7_combout\,
	combout => \inst|buffer1[131]~180_combout\);

-- Location: FF_X29_Y23_N3
\inst|bufferout[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|buffer1\(140),
	sload => VCC,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(140));

-- Location: LCCOMB_X29_Y23_N2
\inst2|buffer1[128]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(128) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(140)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(128)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(128),
	datac => \inst|bufferout\(140),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(128));

-- Location: LCCOMB_X29_Y23_N8
\inst2|bufferout[128]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(128) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(128))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(128))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(128),
	datac => \inst2|bufferout\(128),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(128));

-- Location: LCCOMB_X29_Y23_N12
\inst|buffer1~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~191_combout\ = (!\inst|buffer1[131]~180_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(128))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[131]~180_combout\,
	datab => \inst2|bufferout\(128),
	datac => \ADC_IN[8]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~191_combout\);

-- Location: FF_X29_Y23_N13
\inst|buffer1[128]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~191_combout\,
	ena => \inst|buffer1[131]~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(128));

-- Location: LCCOMB_X29_Y26_N4
\inst|Equal45~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal45~5_combout\ = (\inst|buffer1\(128) & (\inst|buffer1\(140) & (\inst|buffer1\(141) $ (!\inst|buffer1\(129))))) # (!\inst|buffer1\(128) & (!\inst|buffer1\(140) & (\inst|buffer1\(141) $ (!\inst|buffer1\(129)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(128),
	datab => \inst|buffer1\(141),
	datac => \inst|buffer1\(140),
	datad => \inst|buffer1\(129),
	combout => \inst|Equal45~5_combout\);

-- Location: LCCOMB_X28_Y26_N6
\inst|Equal45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal45~2_combout\ = (\inst|buffer1\(136) & (\inst|buffer1\(124) & (\inst|buffer1\(125) $ (!\inst|buffer1\(137))))) # (!\inst|buffer1\(136) & (!\inst|buffer1\(124) & (\inst|buffer1\(125) $ (!\inst|buffer1\(137)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(136),
	datab => \inst|buffer1\(125),
	datac => \inst|buffer1\(124),
	datad => \inst|buffer1\(137),
	combout => \inst|Equal45~2_combout\);

-- Location: LCCOMB_X28_Y26_N4
\inst|Equal45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal45~1_combout\ = (\inst|buffer1\(134) & (\inst|buffer1\(122) & (\inst|buffer1\(135) $ (!\inst|buffer1\(123))))) # (!\inst|buffer1\(134) & (!\inst|buffer1\(122) & (\inst|buffer1\(135) $ (!\inst|buffer1\(123)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(134),
	datab => \inst|buffer1\(135),
	datac => \inst|buffer1\(123),
	datad => \inst|buffer1\(122),
	combout => \inst|Equal45~1_combout\);

-- Location: LCCOMB_X29_Y26_N12
\inst|Equal45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal45~0_combout\ = (\inst|buffer1\(132) & (\inst|buffer1\(120) & (\inst|buffer1\(133) $ (!\inst|buffer1\(121))))) # (!\inst|buffer1\(132) & (!\inst|buffer1\(120) & (\inst|buffer1\(133) $ (!\inst|buffer1\(121)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(132),
	datab => \inst|buffer1\(120),
	datac => \inst|buffer1\(133),
	datad => \inst|buffer1\(121),
	combout => \inst|Equal45~0_combout\);

-- Location: LCCOMB_X28_Y26_N28
\inst|Equal45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal45~3_combout\ = (\inst|buffer1\(139) & (\inst|buffer1\(127) & (\inst|buffer1\(138) $ (!\inst|buffer1\(126))))) # (!\inst|buffer1\(139) & (!\inst|buffer1\(127) & (\inst|buffer1\(138) $ (!\inst|buffer1\(126)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(139),
	datab => \inst|buffer1\(138),
	datac => \inst|buffer1\(127),
	datad => \inst|buffer1\(126),
	combout => \inst|Equal45~3_combout\);

-- Location: LCCOMB_X28_Y26_N14
\inst|Equal45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal45~4_combout\ = (\inst|Equal45~2_combout\ & (\inst|Equal45~1_combout\ & (\inst|Equal45~0_combout\ & \inst|Equal45~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal45~2_combout\,
	datab => \inst|Equal45~1_combout\,
	datac => \inst|Equal45~0_combout\,
	datad => \inst|Equal45~3_combout\,
	combout => \inst|Equal45~4_combout\);

-- Location: LCCOMB_X28_Y26_N24
\inst|Equal45~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal45~6_combout\ = (\inst|buffer1\(142) & (\inst|buffer1\(130) & (\inst|buffer1\(143) $ (!\inst|buffer1\(131))))) # (!\inst|buffer1\(142) & (!\inst|buffer1\(130) & (\inst|buffer1\(143) $ (!\inst|buffer1\(131)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(142),
	datab => \inst|buffer1\(143),
	datac => \inst|buffer1\(130),
	datad => \inst|buffer1\(131),
	combout => \inst|Equal45~6_combout\);

-- Location: LCCOMB_X28_Y26_N2
\inst|Equal45~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal45~7_combout\ = (\inst|Equal45~5_combout\ & (\inst|Equal45~4_combout\ & \inst|Equal45~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal45~5_combout\,
	datac => \inst|Equal45~4_combout\,
	datad => \inst|Equal45~6_combout\,
	combout => \inst|Equal45~7_combout\);

-- Location: LCCOMB_X29_Y22_N8
\inst|Equal37~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal37~7_combout\ = (\inst|Equal37~5_combout\ & (\inst|Equal37~6_combout\ & \inst|Equal37~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal37~5_combout\,
	datac => \inst|Equal37~6_combout\,
	datad => \inst|Equal37~4_combout\,
	combout => \inst|Equal37~7_combout\);

-- Location: LCCOMB_X29_Y22_N26
\inst|counter~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~26_combout\ = (\inst|counter~76_combout\ & ((\inst|buffer1~33_combout\) # ((\inst|Equal36~0_combout\ & !\inst|Equal37~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal36~0_combout\,
	datab => \inst|counter~76_combout\,
	datac => \inst|Equal37~7_combout\,
	datad => \inst|buffer1~33_combout\,
	combout => \inst|counter~26_combout\);

-- Location: LCCOMB_X29_Y22_N10
\inst|counter~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~27_combout\ = (\inst|Equal8~1_combout\ & ((\inst|buffer1~34_combout\) # ((\inst|Equal40~0_combout\ & \inst|Equal41~7_combout\)))) # (!\inst|Equal8~1_combout\ & (\inst|Equal40~0_combout\ & (\inst|Equal41~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal8~1_combout\,
	datab => \inst|Equal40~0_combout\,
	datac => \inst|Equal41~7_combout\,
	datad => \inst|buffer1~34_combout\,
	combout => \inst|counter~27_combout\);

-- Location: LCCOMB_X29_Y22_N20
\inst|counter~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~28_combout\ = (\inst|counter~26_combout\) # ((\inst|Equal44~4_combout\ & (!\inst|Equal45~7_combout\)) # (!\inst|Equal44~4_combout\ & ((\inst|counter~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal45~7_combout\,
	datab => \inst|Equal44~4_combout\,
	datac => \inst|counter~26_combout\,
	datad => \inst|counter~27_combout\,
	combout => \inst|counter~28_combout\);

-- Location: LCCOMB_X27_Y23_N30
\inst|Equal21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal21~7_combout\ = (\inst|Equal21~6_combout\ & (\inst|Equal21~5_combout\ & \inst|Equal21~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal21~6_combout\,
	datab => \inst|Equal21~5_combout\,
	datad => \inst|Equal21~4_combout\,
	combout => \inst|Equal21~7_combout\);

-- Location: LCCOMB_X27_Y23_N4
\inst|counter~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~23_combout\ = (!\inst|Equal21~7_combout\ & (\inst|Equal20~0_combout\ & (!\inst|Equal24~0_combout\ & !\inst|buffer1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal21~7_combout\,
	datab => \inst|Equal20~0_combout\,
	datac => \inst|Equal24~0_combout\,
	datad => \inst|buffer1~19_combout\,
	combout => \inst|counter~23_combout\);

-- Location: LCCOMB_X27_Y23_N18
\inst|Equal25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal25~7_combout\ = (\inst|Equal25~5_combout\ & (\inst|Equal25~6_combout\ & \inst|Equal25~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal25~5_combout\,
	datac => \inst|Equal25~6_combout\,
	datad => \inst|Equal25~4_combout\,
	combout => \inst|Equal25~7_combout\);

-- Location: LCCOMB_X27_Y23_N28
\inst|counter~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~24_combout\ = (\inst|Equal8~1_combout\ & ((\inst|buffer1~31_combout\) # ((\inst|Equal25~7_combout\ & \inst|Equal24~0_combout\)))) # (!\inst|Equal8~1_combout\ & (\inst|Equal25~7_combout\ & (\inst|Equal24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal8~1_combout\,
	datab => \inst|Equal25~7_combout\,
	datac => \inst|Equal24~0_combout\,
	datad => \inst|buffer1~31_combout\,
	combout => \inst|counter~24_combout\);

-- Location: LCCOMB_X27_Y23_N22
\inst|counter~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~25_combout\ = (\inst|counter~5_combout\ & (!\inst|buffer1~209_combout\ & ((\inst|counter~23_combout\) # (\inst|counter~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~5_combout\,
	datab => \inst|buffer1~209_combout\,
	datac => \inst|counter~23_combout\,
	datad => \inst|counter~24_combout\,
	combout => \inst|counter~25_combout\);

-- Location: LCCOMB_X28_Y23_N10
\inst|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~7_combout\ = (\inst|counter[0]~6_combout\ & (\inst|counter~5_combout\ & (!\inst|buffer1~209_combout\ & !\inst|buffer1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter[0]~6_combout\,
	datab => \inst|counter~5_combout\,
	datac => \inst|buffer1~209_combout\,
	datad => \inst|buffer1~19_combout\,
	combout => \inst|counter~7_combout\);

-- Location: LCCOMB_X28_Y23_N24
\inst|counter~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~18_combout\ = (\inst|buffer1~27_combout\) # ((\inst|Equal16~1_combout\ & \inst|Equal17~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal16~1_combout\,
	datac => \inst|Equal17~7_combout\,
	datad => \inst|buffer1~27_combout\,
	combout => \inst|counter~18_combout\);

-- Location: LCCOMB_X24_Y23_N6
\inst|buffer1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~21_combout\ = (\inst|Equal15~1_combout\ & (\inst|Equal15~2_combout\ & (\inst|Equal15~0_combout\ & \inst|buffer1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal15~1_combout\,
	datab => \inst|Equal15~2_combout\,
	datac => \inst|Equal15~0_combout\,
	datad => \inst|buffer1~20_combout\,
	combout => \inst|buffer1~21_combout\);

-- Location: LCCOMB_X28_Y23_N6
\inst|counter~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~16_combout\ = (\inst|Equal12~1_combout\ & (!\inst|Equal16~1_combout\ & ((!\inst|buffer1~21_combout\) # (!\inst|Equal12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal12~1_combout\,
	datab => \inst|Equal12~0_combout\,
	datac => \inst|Equal16~1_combout\,
	datad => \inst|buffer1~21_combout\,
	combout => \inst|counter~16_combout\);

-- Location: LCCOMB_X28_Y23_N4
\inst|Equal13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~7_combout\ = (\inst|Equal13~5_combout\ & (\inst|Equal13~4_combout\ & \inst|Equal13~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal13~5_combout\,
	datac => \inst|Equal13~4_combout\,
	datad => \inst|Equal13~6_combout\,
	combout => \inst|Equal13~7_combout\);

-- Location: LCCOMB_X28_Y23_N8
\inst|counter~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~15_combout\ = (\inst|counter[0]~14_combout\ & (\inst|counter[0]~13_combout\ & ((!\inst|buffer1~21_combout\) # (!\inst|Equal12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal12~0_combout\,
	datab => \inst|counter[0]~14_combout\,
	datac => \inst|counter[0]~13_combout\,
	datad => \inst|buffer1~21_combout\,
	combout => \inst|counter~15_combout\);

-- Location: LCCOMB_X28_Y23_N18
\inst|counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~12_combout\ = (!\inst|buffer1~22_combout\ & ((\inst|counter\(1)) # ((!\inst|counter\(2) & \inst|buffer1~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|buffer1~25_combout\,
	datad => \inst|buffer1~22_combout\,
	combout => \inst|counter~12_combout\);

-- Location: LCCOMB_X28_Y23_N14
\inst|counter~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~17_combout\ = (\inst|counter~16_combout\ & (((\inst|counter~15_combout\ & \inst|counter~12_combout\)) # (!\inst|Equal13~7_combout\))) # (!\inst|counter~16_combout\ & (((\inst|counter~15_combout\ & \inst|counter~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~16_combout\,
	datab => \inst|Equal13~7_combout\,
	datac => \inst|counter~15_combout\,
	datad => \inst|counter~12_combout\,
	combout => \inst|counter~17_combout\);

-- Location: LCCOMB_X23_Y23_N20
\inst|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~8_combout\ = (!\inst|Equal16~1_combout\ & (!\inst|Equal12~1_combout\ & ((!\inst|Equal12~0_combout\) # (!\inst|buffer1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~21_combout\,
	datab => \inst|Equal12~0_combout\,
	datac => \inst|Equal16~1_combout\,
	datad => \inst|Equal12~1_combout\,
	combout => \inst|counter~8_combout\);

-- Location: LCCOMB_X24_Y22_N26
\inst|counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~9_combout\ = (\inst|Equal4~0_combout\ & (!\inst|counter\(2) & \inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~0_combout\,
	datac => \inst|counter\(2),
	datad => \inst|counter\(1),
	combout => \inst|counter~9_combout\);

-- Location: LCCOMB_X24_Y22_N2
\inst|counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~10_combout\ = (\inst|counter~9_combout\ & (!\inst|buffer1~22_combout\ & !\inst|Equal5~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~9_combout\,
	datac => \inst|buffer1~22_combout\,
	datad => \inst|Equal5~7_combout\,
	combout => \inst|counter~10_combout\);

-- Location: LCCOMB_X28_Y23_N28
\inst|counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~11_combout\ = (\inst|counter~8_combout\ & ((\inst|buffer1~24_combout\) # ((\inst|counter~10_combout\) # (\inst|buffer1[31]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~24_combout\,
	datab => \inst|counter~8_combout\,
	datac => \inst|counter~10_combout\,
	datad => \inst|buffer1[31]~23_combout\,
	combout => \inst|counter~11_combout\);

-- Location: LCCOMB_X28_Y23_N30
\inst|counter~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~19_combout\ = (\inst|counter~7_combout\ & ((\inst|counter~18_combout\) # ((\inst|counter~17_combout\) # (\inst|counter~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~7_combout\,
	datab => \inst|counter~18_combout\,
	datac => \inst|counter~17_combout\,
	datad => \inst|counter~11_combout\,
	combout => \inst|counter~19_combout\);

-- Location: LCCOMB_X30_Y23_N6
\inst|counter~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~20_combout\ = ((!\inst|counter\(2) & !\inst|counter\(1))) # (!\inst|Equal32~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datac => \inst|counter\(1),
	datad => \inst|Equal32~0_combout\,
	combout => \inst|counter~20_combout\);

-- Location: LCCOMB_X30_Y23_N18
\inst|Equal29~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal29~7_combout\ = (\inst|Equal29~5_combout\ & (\inst|Equal29~6_combout\ & \inst|Equal29~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal29~5_combout\,
	datac => \inst|Equal29~6_combout\,
	datad => \inst|Equal29~4_combout\,
	combout => \inst|Equal29~7_combout\);

-- Location: LCCOMB_X30_Y23_N4
\inst|counter~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~21_combout\ = (!\inst|Equal32~1_combout\ & (\inst|Equal28~4_combout\ & (!\inst|buffer1~209_combout\ & !\inst|Equal29~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal32~1_combout\,
	datab => \inst|Equal28~4_combout\,
	datac => \inst|buffer1~209_combout\,
	datad => \inst|Equal29~7_combout\,
	combout => \inst|counter~21_combout\);

-- Location: LCCOMB_X29_Y23_N20
\inst|counter~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~22_combout\ = (\inst|counter~20_combout\ & ((\inst|buffer1~30_combout\) # ((\inst|buffer1~28_combout\) # (\inst|counter~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~20_combout\,
	datab => \inst|buffer1~30_combout\,
	datac => \inst|buffer1~28_combout\,
	datad => \inst|counter~21_combout\,
	combout => \inst|counter~22_combout\);

-- Location: LCCOMB_X28_Y22_N6
\inst|counter~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~29_combout\ = (\inst|counter~28_combout\) # ((\inst|counter~25_combout\) # ((\inst|counter~19_combout\) # (\inst|counter~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~28_combout\,
	datab => \inst|counter~25_combout\,
	datac => \inst|counter~19_combout\,
	datad => \inst|counter~22_combout\,
	combout => \inst|counter~29_combout\);

-- Location: LCCOMB_X26_Y22_N26
\inst|counter~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~36_combout\ = (\inst|Equal27~3_combout\) # ((\inst|Equal35~2_combout\ & (\inst|Equal35~0_combout\ & \inst|Equal35~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal35~2_combout\,
	datab => \inst|Equal35~0_combout\,
	datac => \inst|Equal27~3_combout\,
	datad => \inst|Equal35~1_combout\,
	combout => \inst|counter~36_combout\);

-- Location: LCCOMB_X28_Y26_N30
\inst|Equal43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal43~3_combout\ = (\inst|Equal43~0_combout\) # ((\inst|Equal43~2_combout\) # (\inst|Equal43~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal43~0_combout\,
	datac => \inst|Equal43~2_combout\,
	datad => \inst|Equal43~1_combout\,
	combout => \inst|Equal43~3_combout\);

-- Location: LCCOMB_X26_Y22_N20
\inst|counter~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~37_combout\ = (!\inst|counter~36_combout\ & (\inst|Equal43~3_combout\ & (!\inst|Equal19~3_combout\ & !\inst|Equal11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~36_combout\,
	datab => \inst|Equal43~3_combout\,
	datac => \inst|Equal19~3_combout\,
	datad => \inst|Equal11~3_combout\,
	combout => \inst|counter~37_combout\);

-- Location: LCCOMB_X26_Y22_N2
\inst|counter~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~33_combout\ = (!\inst|Equal27~3_combout\ & (!\inst|Equal19~3_combout\ & !\inst|Equal11~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal27~3_combout\,
	datac => \inst|Equal19~3_combout\,
	datad => \inst|Equal11~3_combout\,
	combout => \inst|counter~33_combout\);

-- Location: LCCOMB_X26_Y22_N8
\inst|counter~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~34_combout\ = (\inst|counter~33_combout\ & (((!\inst|Equal35~0_combout\) # (!\inst|Equal35~1_combout\)) # (!\inst|Equal35~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal35~2_combout\,
	datab => \inst|Equal35~1_combout\,
	datac => \inst|Equal35~0_combout\,
	datad => \inst|counter~33_combout\,
	combout => \inst|counter~34_combout\);

-- Location: LCCOMB_X26_Y22_N30
\inst|counter~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~31_combout\ = (\inst|Equal23~3_combout\) # ((!\inst|Equal27~3_combout\ & \inst|Equal31~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal27~3_combout\,
	datac => \inst|Equal31~3_combout\,
	datad => \inst|Equal23~3_combout\,
	combout => \inst|counter~31_combout\);

-- Location: LCCOMB_X26_Y22_N28
\inst|counter~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~32_combout\ = (!\inst|Equal11~3_combout\ & ((\inst|Equal15~3_combout\) # ((!\inst|Equal19~3_combout\ & \inst|counter~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal19~3_combout\,
	datab => \inst|Equal11~3_combout\,
	datac => \inst|counter~31_combout\,
	datad => \inst|Equal15~3_combout\,
	combout => \inst|counter~32_combout\);

-- Location: LCCOMB_X27_Y22_N6
\inst|counter~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~35_combout\ = (\inst|Equal7~3_combout\) # ((\inst|counter~32_combout\) # ((\inst|counter~34_combout\ & \inst|Equal39~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~34_combout\,
	datab => \inst|Equal39~3_combout\,
	datac => \inst|Equal7~3_combout\,
	datad => \inst|counter~32_combout\,
	combout => \inst|counter~35_combout\);

-- Location: LCCOMB_X28_Y22_N16
\inst|counter~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~38_combout\ = (\inst|counter~30_combout\ & ((\inst|counter~35_combout\) # ((\inst|counter~37_combout\ & \inst|counter~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~30_combout\,
	datab => \inst|counter~37_combout\,
	datac => \inst|counter~35_combout\,
	datad => \inst|counter~29_combout\,
	combout => \inst|counter~38_combout\);

-- Location: LCCOMB_X28_Y22_N8
\inst|counter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[1]~0_combout\ = (\inst1|OUTPUT\(3) & ((\inst|counter~38_combout\))) # (!\inst1|OUTPUT\(3) & (\inst|counter~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~29_combout\,
	datab => \inst1|OUTPUT\(3),
	datad => \inst|counter~38_combout\,
	combout => \inst|counter[1]~0_combout\);

-- Location: FF_X28_Y22_N9
\inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter[1]~0_combout\,
	asdata => \inst|counter\(1),
	sclr => \inst1|OUTPUT\(0),
	sload => \inst1|ALT_INV_OUTPUT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(1));

-- Location: LCCOMB_X27_Y25_N22
\inst|buffer1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~35_combout\ = (!\inst|counter\(1) & (\inst|counter\(2) & (!\inst|Equal43~3_combout\ & \inst|Equal46~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(2),
	datac => \inst|Equal43~3_combout\,
	datad => \inst|Equal46~4_combout\,
	combout => \inst|buffer1~35_combout\);

-- Location: LCCOMB_X28_Y23_N16
\inst|counter~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~39_combout\ = (\inst|counter\(1) & (((!\inst|buffer1~21_combout\)) # (!\inst|counter\(2)))) # (!\inst|counter\(1) & (((!\inst|Equal16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|Equal16~0_combout\,
	datad => \inst|buffer1~21_combout\,
	combout => \inst|counter~39_combout\);

-- Location: LCCOMB_X27_Y25_N0
\inst|Equal9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~7_combout\ = (\inst|Equal9~6_combout\ & (\inst|Equal9~5_combout\ & \inst|Equal9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal9~6_combout\,
	datac => \inst|Equal9~5_combout\,
	datad => \inst|Equal9~4_combout\,
	combout => \inst|Equal9~7_combout\);

-- Location: LCCOMB_X27_Y25_N26
\inst|counter~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~42_combout\ = (\inst|Equal8~0_combout\ & (((!\inst|Equal9~7_combout\)))) # (!\inst|Equal8~0_combout\ & ((\inst|counter\(2)) # ((\inst|buffer1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|Equal8~0_combout\,
	datac => \inst|buffer1~22_combout\,
	datad => \inst|Equal9~7_combout\,
	combout => \inst|counter~42_combout\);

-- Location: LCCOMB_X27_Y25_N4
\inst|counter~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~40_combout\ = (\inst|buffer1~19_combout\) # ((\inst|Equal16~1_combout\ & \inst|Equal17~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~19_combout\,
	datac => \inst|Equal16~1_combout\,
	datad => \inst|Equal17~7_combout\,
	combout => \inst|counter~40_combout\);

-- Location: LCCOMB_X27_Y25_N10
\inst|counter~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~41_combout\ = (\inst|Equal24~0_combout\ & ((!\inst|Equal25~7_combout\))) # (!\inst|Equal24~0_combout\ & (\inst|counter~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal24~0_combout\,
	datac => \inst|counter~40_combout\,
	datad => \inst|Equal25~7_combout\,
	combout => \inst|counter~41_combout\);

-- Location: LCCOMB_X27_Y25_N16
\inst|counter~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~43_combout\ = (\inst|counter~41_combout\) # ((\inst|counter~39_combout\ & \inst|counter~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter~39_combout\,
	datac => \inst|counter~42_combout\,
	datad => \inst|counter~41_combout\,
	combout => \inst|counter~43_combout\);

-- Location: LCCOMB_X29_Y25_N6
\inst|counter~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~45_combout\ = (\inst|counter~44_combout\ & (((\inst|counter\(2) & \inst|counter\(1))) # (!\inst|Equal32~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|Equal32~0_combout\,
	datad => \inst|counter~44_combout\,
	combout => \inst|counter~45_combout\);

-- Location: LCCOMB_X28_Y25_N20
\inst|counter~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~46_combout\ = (((!\inst|counter\(1) & \inst|Equal41~7_combout\)) # (!\inst|counter\(2))) # (!\inst|Equal32~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal32~0_combout\,
	datab => \inst|counter\(1),
	datac => \inst|counter\(2),
	datad => \inst|Equal41~7_combout\,
	combout => \inst|counter~46_combout\);

-- Location: LCCOMB_X28_Y20_N0
\inst|counter~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~47_combout\ = (!\inst|Equal36~0_combout\ & (\inst|Equal32~1_combout\ & (!\inst|Equal40~0_combout\ & \inst|Equal33~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal36~0_combout\,
	datab => \inst|Equal32~1_combout\,
	datac => \inst|Equal40~0_combout\,
	datad => \inst|Equal33~7_combout\,
	combout => \inst|counter~47_combout\);

-- Location: LCCOMB_X27_Y25_N6
\inst|counter~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~48_combout\ = (\inst|counter~46_combout\ & ((\inst|buffer1~33_combout\) # ((\inst|buffer1~30_combout\) # (!\inst|counter~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~33_combout\,
	datab => \inst|buffer1~30_combout\,
	datac => \inst|counter~46_combout\,
	datad => \inst|counter~47_combout\,
	combout => \inst|counter~48_combout\);

-- Location: LCCOMB_X27_Y25_N8
\inst|counter~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~49_combout\ = (\inst|buffer1~35_combout\) # (((\inst|counter~43_combout\ & \inst|counter~45_combout\)) # (!\inst|counter~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~35_combout\,
	datab => \inst|counter~43_combout\,
	datac => \inst|counter~45_combout\,
	datad => \inst|counter~48_combout\,
	combout => \inst|counter~49_combout\);

-- Location: LCCOMB_X28_Y24_N12
\inst|counter~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~50_combout\ = (!\inst|Equal39~3_combout\ & (((!\inst|Equal35~2_combout\) # (!\inst|Equal35~0_combout\)) # (!\inst|Equal35~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal35~1_combout\,
	datab => \inst|Equal35~0_combout\,
	datac => \inst|Equal35~2_combout\,
	datad => \inst|Equal39~3_combout\,
	combout => \inst|counter~50_combout\);

-- Location: LCCOMB_X27_Y25_N2
\inst|counter~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~51_combout\ = (((\inst|counter~45_combout\ & \inst|counter~43_combout\)) # (!\inst|Equal43~3_combout\)) # (!\inst|counter~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~48_combout\,
	datab => \inst|Equal43~3_combout\,
	datac => \inst|counter~45_combout\,
	datad => \inst|counter~43_combout\,
	combout => \inst|counter~51_combout\);

-- Location: LCCOMB_X27_Y25_N28
\inst|counter~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~52_combout\ = (\inst|Equal31~3_combout\) # ((\inst|Equal27~3_combout\) # ((\inst|counter~50_combout\ & \inst|counter~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal31~3_combout\,
	datab => \inst|Equal27~3_combout\,
	datac => \inst|counter~50_combout\,
	datad => \inst|counter~51_combout\,
	combout => \inst|counter~52_combout\);

-- Location: LCCOMB_X27_Y25_N18
\inst|counter~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~53_combout\ = (\inst|Equal15~3_combout\) # ((!\inst|Equal19~3_combout\ & (!\inst|Equal23~3_combout\ & \inst|counter~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal19~3_combout\,
	datab => \inst|Equal15~3_combout\,
	datac => \inst|Equal23~3_combout\,
	datad => \inst|counter~52_combout\,
	combout => \inst|counter~53_combout\);

-- Location: LCCOMB_X27_Y25_N24
\inst|counter~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~54_combout\ = (\inst|counter~30_combout\ & (!\inst|Equal7~3_combout\ & ((\inst|Equal11~3_combout\) # (\inst|counter~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~30_combout\,
	datab => \inst|Equal11~3_combout\,
	datac => \inst|Equal7~3_combout\,
	datad => \inst|counter~53_combout\,
	combout => \inst|counter~54_combout\);

-- Location: LCCOMB_X27_Y25_N20
\inst|counter[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[2]~1_combout\ = (\inst1|OUTPUT\(3) & ((\inst|counter~54_combout\))) # (!\inst1|OUTPUT\(3) & (\inst|counter~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst|counter~49_combout\,
	datad => \inst|counter~54_combout\,
	combout => \inst|counter[2]~1_combout\);

-- Location: FF_X27_Y25_N21
\inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter[2]~1_combout\,
	asdata => \inst|counter\(2),
	sclr => \inst1|OUTPUT\(0),
	sload => \inst1|ALT_INV_OUTPUT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(2));

-- Location: LCCOMB_X25_Y24_N12
\inst|buffer1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~24_combout\ = (\inst|counter\(2) & (\inst|buffer1~20_combout\ & (!\inst|counter\(1) & \inst|Equal11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|buffer1~20_combout\,
	datac => \inst|counter\(1),
	datad => \inst|Equal11~3_combout\,
	combout => \inst|buffer1~24_combout\);

-- Location: LCCOMB_X26_Y22_N4
\inst|BufferCount~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~0_combout\ = (!\inst|buffer1~33_combout\ & (((!\inst|buffer1~34_combout\ & !\inst|buffer1~31_combout\)) # (!\inst|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal8~1_combout\,
	datab => \inst|buffer1~34_combout\,
	datac => \inst|buffer1~31_combout\,
	datad => \inst|buffer1~33_combout\,
	combout => \inst|BufferCount~0_combout\);

-- Location: LCCOMB_X26_Y22_N24
\inst|BufferCount~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~1_combout\ = (\inst|buffer1~24_combout\) # ((\inst|buffer1~19_combout\) # ((\inst|buffer1~22_combout\) # (!\inst|BufferCount~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~24_combout\,
	datab => \inst|buffer1~19_combout\,
	datac => \inst|BufferCount~0_combout\,
	datad => \inst|buffer1~22_combout\,
	combout => \inst|BufferCount~1_combout\);

-- Location: FF_X26_Y22_N25
\inst|BufferCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCount~1_combout\,
	ena => \inst|BufferCount[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCount\(1));

-- Location: FF_X26_Y26_N5
\inst|BufferCheck[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|BufferCount\(1),
	sload => VCC,
	ena => \inst|bufferout[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCheck\(1));

-- Location: LCCOMB_X26_Y26_N22
\inst1|Current~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Current~2_combout\ = (\inst|BufferCheck\(1) & ((\inst1|Equal0~1_combout\) # (!\inst1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal2~0_combout\,
	datac => \inst|BufferCheck\(1),
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|Current~2_combout\);

-- Location: FF_X26_Y26_N23
\inst1|Current[1]\ : dffeas
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
	q => \inst1|Current\(1));

-- Location: LCCOMB_X26_Y26_N26
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = ((!\inst1|Current\(1) & !\inst1|Current\(0))) # (!\inst1|Current\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Current\(1),
	datab => \inst1|Current\(2),
	datad => \inst1|Current\(0),
	combout => \inst1|Add0~0_combout\);

-- Location: LCCOMB_X26_Y30_N22
\inst1|SPACE_AVAILABLE~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~6_combout\ = (!\inst1|Add0~0_combout\ & (\inst1|Current\(3) & ((\inst1|Equal0~1_combout\) # (!\inst1|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~0_combout\,
	datab => \inst1|Current\(3),
	datac => \inst1|Equal2~0_combout\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|SPACE_AVAILABLE~6_combout\);

-- Location: FF_X26_Y30_N23
\inst1|SPACE_AVAILABLE[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|SPACE_AVAILABLE~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SPACE_AVAILABLE\(10));

-- Location: LCCOMB_X26_Y30_N12
\inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (!\inst1|SPACE_AVAILABLE\(10) & (!\inst1|SPACE_AVAILABLE\(4) & \inst1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SPACE_AVAILABLE\(10),
	datac => \inst1|SPACE_AVAILABLE\(4),
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y30_N20
\inst1|OUTPUT[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[3]~10_combout\ = (!\inst1|Equal0~1_combout\ & ((\inst1|OUTPUT~7_combout\) # (!\inst1|OUTPUT~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT~7_combout\,
	datab => \inst1|OUTPUT~15_combout\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|OUTPUT[3]~10_combout\);

-- Location: FF_X27_Y22_N1
\inst1|OUTPUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|OUTPUT~9_combout\,
	ena => \inst1|OUTPUT[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTPUT\(3));

-- Location: FF_X25_Y21_N5
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
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(23));

-- Location: LCCOMB_X25_Y21_N4
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

-- Location: LCCOMB_X25_Y21_N6
\inst2|bufferout[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(11) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(11)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(11),
	datab => \inst2|buffer1\(11),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(11));

-- Location: LCCOMB_X24_Y21_N16
\inst|buffer1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~4_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(11)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[11]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(11),
	combout => \inst|buffer1~4_combout\);

-- Location: FF_X24_Y21_N17
\inst|buffer1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~4_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(11));

-- Location: LCCOMB_X24_Y20_N4
\inst|ADC_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~0_combout\ = (\inst|buffer1\(11) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(11),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~0_combout\);

-- Location: LCCOMB_X28_Y24_N22
\inst|ADC_out[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[10]~1_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & \inst1|OUTPUT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst1|OUTPUT\(2),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out[10]~1_combout\);

-- Location: FF_X24_Y20_N5
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

-- Location: LCCOMB_X24_Y20_N2
\inst|ADC_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~2_combout\ = (\inst|buffer1\(10) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buffer1\(10),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~2_combout\);

-- Location: FF_X24_Y20_N3
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

-- Location: LCCOMB_X23_Y24_N2
\inst|ADC_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~3_combout\ = (\inst|buffer1\(9) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(9),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~3_combout\);

-- Location: FF_X23_Y24_N3
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

-- Location: LCCOMB_X24_Y20_N8
\inst|ADC_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~4_combout\ = (\inst|buffer1\(8) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(8),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~4_combout\);

-- Location: FF_X24_Y20_N9
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

-- Location: LCCOMB_X24_Y19_N28
\inst|ADC_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~5_combout\ = (!\inst1|OUTPUT\(0) & \inst|buffer1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datad => \inst|buffer1\(7),
	combout => \inst|ADC_out~5_combout\);

-- Location: FF_X24_Y19_N29
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

-- Location: LCCOMB_X23_Y24_N24
\inst|ADC_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~6_combout\ = (\inst|buffer1\(6) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(6),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~6_combout\);

-- Location: FF_X23_Y24_N25
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

-- Location: LCCOMB_X23_Y20_N20
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

-- Location: FF_X23_Y20_N21
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

-- Location: LCCOMB_X24_Y19_N14
\inst|ADC_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~8_combout\ = (!\inst1|OUTPUT\(0) & \inst|buffer1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datad => \inst|buffer1\(4),
	combout => \inst|ADC_out~8_combout\);

-- Location: FF_X24_Y19_N15
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

-- Location: LCCOMB_X24_Y20_N6
\inst|ADC_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~9_combout\ = (\inst|buffer1\(3) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(3),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~9_combout\);

-- Location: FF_X24_Y20_N7
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

-- Location: LCCOMB_X24_Y20_N12
\inst|ADC_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~10_combout\ = (\inst|buffer1\(2) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(2),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~10_combout\);

-- Location: FF_X24_Y20_N13
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

-- Location: LCCOMB_X23_Y24_N10
\inst|ADC_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~11_combout\ = (\inst|buffer1\(1) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(1),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~11_combout\);

-- Location: FF_X23_Y24_N11
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

-- Location: LCCOMB_X23_Y20_N14
\inst|ADC_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~12_combout\ = (!\inst1|OUTPUT\(0) & \inst|buffer1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(0),
	datac => \inst|buffer1\(0),
	combout => \inst|ADC_out~12_combout\);

-- Location: FF_X23_Y20_N15
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

-- Location: LCCOMB_X24_Y19_N24
\inst|MASK[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|MASK[2]~0_combout\ = !\inst1|OUTPUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|OUTPUT\(0),
	combout => \inst|MASK[2]~0_combout\);

-- Location: FF_X24_Y19_N25
\inst|MASK[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|MASK[2]~0_combout\,
	ena => \inst|ADC_out[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MASK\(2));

-- Location: FF_X26_Y26_N27
\inst1|BUFFER_READ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|SPACE_AVAILABLE\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BUFFER_READ\(3));

-- Location: LCCOMB_X26_Y26_N8
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

-- Location: FF_X26_Y26_N9
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

-- Location: LCCOMB_X26_Y26_N18
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

-- Location: FF_X26_Y26_N19
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

-- Location: FF_X26_Y30_N21
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

-- Location: LCCOMB_X26_Y22_N6
\inst|AVAILABLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|AVAILABLE~0_combout\ = (\inst|BufferCount\(3)) # ((\inst|BufferCount\(1)) # ((\inst|BufferCount\(0)) # (\inst|BufferCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BufferCount\(3),
	datab => \inst|BufferCount\(1),
	datac => \inst|BufferCount\(0),
	datad => \inst|BufferCount\(2),
	combout => \inst|AVAILABLE~0_combout\);

-- Location: FF_X26_Y22_N7
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

-- Location: LCCOMB_X26_Y22_N16
\inst1|OUTPUT[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[7]~feeder_combout\ = \inst|AVAILABLE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|AVAILABLE~q\,
	combout => \inst1|OUTPUT[7]~feeder_combout\);

-- Location: FF_X26_Y22_N17
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

-- Location: LCCOMB_X26_Y30_N30
\inst1|OUTPUT~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~8_combout\ = (\inst1|OUTPUT\(6) & ((\inst1|Equal1~1_combout\) # ((!\inst1|OUTPUT~7_combout\ & !\inst1|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT~7_combout\,
	datab => \inst1|OUTPUT\(6),
	datac => \inst1|Equal2~0_combout\,
	datad => \inst1|Equal1~1_combout\,
	combout => \inst1|OUTPUT~8_combout\);

-- Location: LCCOMB_X26_Y30_N2
\inst1|OUTPUT~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~14_combout\ = (\inst1|OUTPUT~8_combout\) # ((\inst1|Equal0~0_combout\ & (!\inst1|SPACE_AVAILABLE\(4) & !\inst1|SPACE_AVAILABLE\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|SPACE_AVAILABLE\(4),
	datac => \inst1|OUTPUT~8_combout\,
	datad => \inst1|SPACE_AVAILABLE\(10),
	combout => \inst1|OUTPUT~14_combout\);

-- Location: FF_X26_Y30_N3
\inst1|OUTPUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|OUTPUT~14_combout\,
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

ww_MASK(3) <= \MASK[3]~output_o\;

ww_MASK(2) <= \MASK[2]~output_o\;

ww_MASK(1) <= \MASK[1]~output_o\;

ww_MASK(0) <= \MASK[0]~output_o\;

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


