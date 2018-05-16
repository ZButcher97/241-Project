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

-- DATE "05/16/2018 16:46:35"

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
	FIFO_OUT : OUT std_logic_vector(7 DOWNTO 0);
	CLK : IN std_logic;
	ADC_IN : IN std_logic_vector(11 DOWNTO 0);
	MCU_IN : IN std_logic_vector(7 DOWNTO 0);
	OUTPUTa : OUT std_logic_vector(11 DOWNTO 0);
	OUTPUTb : OUT std_logic_vector(7 DOWNTO 0)
	);
END P1;

-- Design Ports Information
-- FIFO_OUT[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_OUT[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_OUT[5]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_OUT[4]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_OUT[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_OUT[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_OUT[1]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FIFO_OUT[0]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTa[11]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTa[10]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTa[9]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTa[8]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTa[7]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTa[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTa[5]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTa[4]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTa[3]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTa[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTa[1]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTa[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTb[7]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTb[6]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTb[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTb[4]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTb[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTb[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTb[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTb[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[7]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[6]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[5]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[4]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[11]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[10]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[9]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[8]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[7]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[6]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[4]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[3]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[2]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_FIFO_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_ADC_IN : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_MCU_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_OUTPUTa : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_OUTPUTb : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|OUTPUT[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|OUTPUT[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FIFO_OUT[7]~output_o\ : std_logic;
SIGNAL \FIFO_OUT[6]~output_o\ : std_logic;
SIGNAL \FIFO_OUT[5]~output_o\ : std_logic;
SIGNAL \FIFO_OUT[4]~output_o\ : std_logic;
SIGNAL \FIFO_OUT[3]~output_o\ : std_logic;
SIGNAL \FIFO_OUT[2]~output_o\ : std_logic;
SIGNAL \FIFO_OUT[1]~output_o\ : std_logic;
SIGNAL \FIFO_OUT[0]~output_o\ : std_logic;
SIGNAL \OUTPUTa[11]~output_o\ : std_logic;
SIGNAL \OUTPUTa[10]~output_o\ : std_logic;
SIGNAL \OUTPUTa[9]~output_o\ : std_logic;
SIGNAL \OUTPUTa[8]~output_o\ : std_logic;
SIGNAL \OUTPUTa[7]~output_o\ : std_logic;
SIGNAL \OUTPUTa[6]~output_o\ : std_logic;
SIGNAL \OUTPUTa[5]~output_o\ : std_logic;
SIGNAL \OUTPUTa[4]~output_o\ : std_logic;
SIGNAL \OUTPUTa[3]~output_o\ : std_logic;
SIGNAL \OUTPUTa[2]~output_o\ : std_logic;
SIGNAL \OUTPUTa[1]~output_o\ : std_logic;
SIGNAL \OUTPUTa[0]~output_o\ : std_logic;
SIGNAL \OUTPUTb[7]~output_o\ : std_logic;
SIGNAL \OUTPUTb[6]~output_o\ : std_logic;
SIGNAL \OUTPUTb[5]~output_o\ : std_logic;
SIGNAL \OUTPUTb[4]~output_o\ : std_logic;
SIGNAL \OUTPUTb[3]~output_o\ : std_logic;
SIGNAL \OUTPUTb[2]~output_o\ : std_logic;
SIGNAL \OUTPUTb[1]~output_o\ : std_logic;
SIGNAL \OUTPUTb[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \MCU_IN[2]~input_o\ : std_logic;
SIGNAL \MCU_IN[3]~input_o\ : std_logic;
SIGNAL \MCU_IN[4]~input_o\ : std_logic;
SIGNAL \MCU_IN[5]~input_o\ : std_logic;
SIGNAL \MCU_IN[6]~input_o\ : std_logic;
SIGNAL \MCU_IN[7]~input_o\ : std_logic;
SIGNAL \inst1|Equal5~0_combout\ : std_logic;
SIGNAL \inst1|Equal1~2_combout\ : std_logic;
SIGNAL \MCU_IN[1]~input_o\ : std_logic;
SIGNAL \MCU_IN[0]~input_o\ : std_logic;
SIGNAL \inst1|OUTPUT~9_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~15_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~6_combout\ : std_logic;
SIGNAL \inst1|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~7_combout\ : std_logic;
SIGNAL \inst1|Equal2~0_combout\ : std_logic;
SIGNAL \inst|BufferCheck[2]~feeder_combout\ : std_logic;
SIGNAL \ADC_IN[10]~input_o\ : std_logic;
SIGNAL \ADC_IN[11]~input_o\ : std_logic;
SIGNAL \inst1|OUTPUT[3]~clkctrl_outclk\ : std_logic;
SIGNAL \ADC_IN[9]~input_o\ : std_logic;
SIGNAL \inst|Equal16~0_combout\ : std_logic;
SIGNAL \inst|Equal28~0_combout\ : std_logic;
SIGNAL \ADC_IN[8]~input_o\ : std_logic;
SIGNAL \inst|buffer1~158_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[0]~16_combout\ : std_logic;
SIGNAL \inst1|Equal1~1_combout\ : std_logic;
SIGNAL \inst1|Latch~2_combout\ : std_logic;
SIGNAL \inst1|Latch~3_combout\ : std_logic;
SIGNAL \inst1|Latch~q\ : std_logic;
SIGNAL \inst1|OUTPUT[1]~11_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[1]~12_combout\ : std_logic;
SIGNAL \ADC_IN[5]~input_o\ : std_logic;
SIGNAL \inst|buffer1~155_combout\ : std_logic;
SIGNAL \ADC_IN[4]~input_o\ : std_logic;
SIGNAL \inst|buffer1~154_combout\ : std_logic;
SIGNAL \inst1|Equal4~0_combout\ : std_logic;
SIGNAL \inst|bufferout[23]~1_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[2]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|buffer1~133_combout\ : std_logic;
SIGNAL \inst|buffer1~8_combout\ : std_logic;
SIGNAL \inst|buffer1~160_combout\ : std_logic;
SIGNAL \inst|buffer1~141_combout\ : std_logic;
SIGNAL \inst|Equal39~1_combout\ : std_logic;
SIGNAL \ADC_IN[2]~input_o\ : std_logic;
SIGNAL \inst|buffer1~152_combout\ : std_logic;
SIGNAL \inst|buffer1~145_combout\ : std_logic;
SIGNAL \ADC_IN[1]~input_o\ : std_logic;
SIGNAL \inst|buffer1~151_combout\ : std_logic;
SIGNAL \inst|buffer1~144_combout\ : std_logic;
SIGNAL \ADC_IN[0]~input_o\ : std_logic;
SIGNAL \inst|buffer1~148_combout\ : std_logic;
SIGNAL \inst|buffer1~143_combout\ : std_logic;
SIGNAL \ADC_IN[3]~input_o\ : std_logic;
SIGNAL \inst|buffer1~153_combout\ : std_logic;
SIGNAL \inst|buffer1~146_combout\ : std_logic;
SIGNAL \inst|Equal39~2_combout\ : std_logic;
SIGNAL \inst|buffer1~16_combout\ : std_logic;
SIGNAL \inst|buffer1~136_combout\ : std_logic;
SIGNAL \ADC_IN[7]~input_o\ : std_logic;
SIGNAL \inst|buffer1~157_combout\ : std_logic;
SIGNAL \inst|buffer1~138_combout\ : std_logic;
SIGNAL \ADC_IN[6]~input_o\ : std_logic;
SIGNAL \inst|buffer1~156_combout\ : std_logic;
SIGNAL \inst|buffer1~137_combout\ : std_logic;
SIGNAL \inst|Equal39~0_combout\ : std_logic;
SIGNAL \inst|buffer1~17_combout\ : std_logic;
SIGNAL \inst|Equal41~6_combout\ : std_logic;
SIGNAL \inst|buffer1~45_combout\ : std_logic;
SIGNAL \inst|buffer1~40_combout\ : std_logic;
SIGNAL \inst|buffer1~43_combout\ : std_logic;
SIGNAL \inst|buffer1~44_combout\ : std_logic;
SIGNAL \inst|Equal35~0_combout\ : std_logic;
SIGNAL \inst|buffer1~47_combout\ : std_logic;
SIGNAL \inst|buffer1~49_combout\ : std_logic;
SIGNAL \inst|buffer1~48_combout\ : std_logic;
SIGNAL \inst|buffer1~46_combout\ : std_logic;
SIGNAL \inst|Equal35~1_combout\ : std_logic;
SIGNAL \inst|buffer1~51_combout\ : std_logic;
SIGNAL \inst|Equal35~2_combout\ : std_logic;
SIGNAL \inst|Equal35~3_combout\ : std_logic;
SIGNAL \inst|buffer1~9_combout\ : std_logic;
SIGNAL \inst|buffer1[113]~41_combout\ : std_logic;
SIGNAL \inst|buffer1[113]~42_combout\ : std_logic;
SIGNAL \inst|Equal41~1_combout\ : std_logic;
SIGNAL \inst|Equal41~2_combout\ : std_logic;
SIGNAL \inst|Equal41~0_combout\ : std_logic;
SIGNAL \inst|Equal41~3_combout\ : std_logic;
SIGNAL \inst|Equal41~4_combout\ : std_logic;
SIGNAL \inst|Equal41~7_combout\ : std_logic;
SIGNAL \inst|Equal40~0_combout\ : std_logic;
SIGNAL \inst|buffer1[130]~134_combout\ : std_logic;
SIGNAL \inst|buffer1[130]~135_combout\ : std_logic;
SIGNAL \inst|Equal45~2_combout\ : std_logic;
SIGNAL \inst|Equal45~0_combout\ : std_logic;
SIGNAL \inst|Equal45~1_combout\ : std_logic;
SIGNAL \inst|Equal45~3_combout\ : std_logic;
SIGNAL \inst|Equal45~4_combout\ : std_logic;
SIGNAL \inst|Equal45~5_combout\ : std_logic;
SIGNAL \inst|buffer1~161_combout\ : std_logic;
SIGNAL \inst|Equal45~6_combout\ : std_logic;
SIGNAL \inst|Equal45~7_combout\ : std_logic;
SIGNAL \inst|buffer1[143]~149_combout\ : std_logic;
SIGNAL \inst|buffer1[143]~150_combout\ : std_logic;
SIGNAL \inst|buffer1~139_combout\ : std_logic;
SIGNAL \inst|buffer1~50_combout\ : std_logic;
SIGNAL \inst|buffer1[96]~117_combout\ : std_logic;
SIGNAL \inst|buffer1~128_combout\ : std_logic;
SIGNAL \inst|buffer1~11_combout\ : std_logic;
SIGNAL \inst|buffer1~123_combout\ : std_logic;
SIGNAL \inst|buffer1~121_combout\ : std_logic;
SIGNAL \inst|buffer1~122_combout\ : std_logic;
SIGNAL \inst|buffer1~118_combout\ : std_logic;
SIGNAL \inst|Equal31~0_combout\ : std_logic;
SIGNAL \inst|buffer1~129_combout\ : std_logic;
SIGNAL \inst|Equal31~2_combout\ : std_logic;
SIGNAL \inst|buffer1~124_combout\ : std_logic;
SIGNAL \inst|buffer1~125_combout\ : std_logic;
SIGNAL \inst|buffer1~127_combout\ : std_logic;
SIGNAL \inst|buffer1~126_combout\ : std_logic;
SIGNAL \inst|Equal31~1_combout\ : std_logic;
SIGNAL \inst|Equal31~3_combout\ : std_logic;
SIGNAL \inst|buffer1~15_combout\ : std_logic;
SIGNAL \inst|buffer1~79_combout\ : std_logic;
SIGNAL \inst|buffer1[89]~73_combout\ : std_logic;
SIGNAL \inst|buffer1[89]~74_combout\ : std_logic;
SIGNAL \inst|Equal33~5_combout\ : std_logic;
SIGNAL \inst|buffer1~76_combout\ : std_logic;
SIGNAL \inst|buffer1~77_combout\ : std_logic;
SIGNAL \inst|Equal33~3_combout\ : std_logic;
SIGNAL \inst|buffer1~84_combout\ : std_logic;
SIGNAL \inst|buffer1~85_combout\ : std_logic;
SIGNAL \inst|Equal33~1_combout\ : std_logic;
SIGNAL \inst|buffer1~82_combout\ : std_logic;
SIGNAL \inst|buffer1~83_combout\ : std_logic;
SIGNAL \inst|Equal33~0_combout\ : std_logic;
SIGNAL \inst|buffer1~72_combout\ : std_logic;
SIGNAL \inst|buffer1~75_combout\ : std_logic;
SIGNAL \inst|Equal33~2_combout\ : std_logic;
SIGNAL \inst|Equal33~4_combout\ : std_logic;
SIGNAL \inst|Equal33~7_combout\ : std_logic;
SIGNAL \inst|buffer1[96]~119_combout\ : std_logic;
SIGNAL \inst|buffer1[96]~120_combout\ : std_logic;
SIGNAL \inst|buffer1~78_combout\ : std_logic;
SIGNAL \inst|buffer1~206_combout\ : std_logic;
SIGNAL \inst|Equal24~1_combout\ : std_logic;
SIGNAL \inst|buffer1[83]~194_combout\ : std_logic;
SIGNAL \inst|buffer1[83]~195_combout\ : std_logic;
SIGNAL \inst|buffer1~116_combout\ : std_logic;
SIGNAL \inst|buffer1~80_combout\ : std_logic;
SIGNAL \inst|buffer1~205_combout\ : std_logic;
SIGNAL \inst|buffer1~115_combout\ : std_logic;
SIGNAL \inst|buffer1~114_combout\ : std_logic;
SIGNAL \inst|Equal19~2_combout\ : std_logic;
SIGNAL \inst|buffer1~197_combout\ : std_logic;
SIGNAL \inst|buffer1~107_combout\ : std_logic;
SIGNAL \inst|buffer1~198_combout\ : std_logic;
SIGNAL \inst|buffer1~108_combout\ : std_logic;
SIGNAL \inst|buffer1~193_combout\ : std_logic;
SIGNAL \inst|buffer1~103_combout\ : std_logic;
SIGNAL \inst|buffer1~196_combout\ : std_logic;
SIGNAL \inst|buffer1~106_combout\ : std_logic;
SIGNAL \inst|Equal19~0_combout\ : std_logic;
SIGNAL \inst|buffer1~202_combout\ : std_logic;
SIGNAL \inst|buffer1~112_combout\ : std_logic;
SIGNAL \inst|buffer1~201_combout\ : std_logic;
SIGNAL \inst|buffer1~111_combout\ : std_logic;
SIGNAL \inst|buffer1~200_combout\ : std_logic;
SIGNAL \inst|buffer1~110_combout\ : std_logic;
SIGNAL \inst|buffer1~199_combout\ : std_logic;
SIGNAL \inst|buffer1~109_combout\ : std_logic;
SIGNAL \inst|Equal19~1_combout\ : std_logic;
SIGNAL \inst|Equal19~3_combout\ : std_logic;
SIGNAL \inst|buffer1~14_combout\ : std_logic;
SIGNAL \inst|buffer1[62]~104_combout\ : std_logic;
SIGNAL \inst|buffer1[62]~105_combout\ : std_logic;
SIGNAL \inst|buffer1~173_combout\ : std_logic;
SIGNAL \inst|Equal16~1_combout\ : std_logic;
SIGNAL \inst|buffer1~167_combout\ : std_logic;
SIGNAL \inst|Equal12~1_combout\ : std_logic;
SIGNAL \inst|buffer1~70_combout\ : std_logic;
SIGNAL \inst|buffer1~175_combout\ : std_logic;
SIGNAL \inst|buffer1~69_combout\ : std_logic;
SIGNAL \inst|buffer1~67_combout\ : std_logic;
SIGNAL \inst|buffer1~174_combout\ : std_logic;
SIGNAL \inst|buffer1~68_combout\ : std_logic;
SIGNAL \inst|Equal11~2_combout\ : std_logic;
SIGNAL \inst|buffer1~171_combout\ : std_logic;
SIGNAL \inst|buffer1~65_combout\ : std_logic;
SIGNAL \inst|buffer1~169_combout\ : std_logic;
SIGNAL \inst|buffer1~63_combout\ : std_logic;
SIGNAL \inst|buffer1~170_combout\ : std_logic;
SIGNAL \inst|buffer1~64_combout\ : std_logic;
SIGNAL \inst|buffer1~172_combout\ : std_logic;
SIGNAL \inst|buffer1~66_combout\ : std_logic;
SIGNAL \inst|Equal11~1_combout\ : std_logic;
SIGNAL \inst|buffer1~168_combout\ : std_logic;
SIGNAL \inst|buffer1~62_combout\ : std_logic;
SIGNAL \inst|buffer1~166_combout\ : std_logic;
SIGNAL \inst|buffer1~60_combout\ : std_logic;
SIGNAL \inst|buffer1~163_combout\ : std_logic;
SIGNAL \inst|buffer1~57_combout\ : std_logic;
SIGNAL \inst|Equal11~0_combout\ : std_logic;
SIGNAL \inst|Equal11~3_combout\ : std_logic;
SIGNAL \inst|Equal24~0_combout\ : std_logic;
SIGNAL \inst|buffer1~10_combout\ : std_logic;
SIGNAL \inst|buffer1[36]~58_combout\ : std_logic;
SIGNAL \inst|buffer1[36]~59_combout\ : std_logic;
SIGNAL \inst|buffer1~189_combout\ : std_logic;
SIGNAL \inst|buffer1~184_combout\ : std_logic;
SIGNAL \inst|buffer1~185_combout\ : std_logic;
SIGNAL \inst|buffer1~186_combout\ : std_logic;
SIGNAL \inst|buffer1~187_combout\ : std_logic;
SIGNAL \inst|Equal7~1_combout\ : std_logic;
SIGNAL \inst|buffer1~181_combout\ : std_logic;
SIGNAL \inst|buffer1~182_combout\ : std_logic;
SIGNAL \inst|buffer1~183_combout\ : std_logic;
SIGNAL \inst|buffer1~178_combout\ : std_logic;
SIGNAL \inst|Equal7~0_combout\ : std_logic;
SIGNAL \inst|buffer1~190_combout\ : std_logic;
SIGNAL \inst|buffer1~188_combout\ : std_logic;
SIGNAL \inst|Equal7~2_combout\ : std_logic;
SIGNAL \inst|Equal7~3_combout\ : std_logic;
SIGNAL \inst|buffer1~209_combout\ : std_logic;
SIGNAL \inst|buffer1[24]~179_combout\ : std_logic;
SIGNAL \inst|buffer1[24]~180_combout\ : std_logic;
SIGNAL \inst|buffer1~98_combout\ : std_logic;
SIGNAL \inst|Equal12~0_combout\ : std_logic;
SIGNAL \inst|Equal4~5_combout\ : std_logic;
SIGNAL \inst|buffer1~96_combout\ : std_logic;
SIGNAL \inst|buffer1~93_combout\ : std_logic;
SIGNAL \inst|buffer1~94_combout\ : std_logic;
SIGNAL \inst|buffer1~95_combout\ : std_logic;
SIGNAL \inst|Equal3~1_combout\ : std_logic;
SIGNAL \inst|buffer1~92_combout\ : std_logic;
SIGNAL \inst|buffer1~87_combout\ : std_logic;
SIGNAL \inst|buffer1~90_combout\ : std_logic;
SIGNAL \inst|buffer1~91_combout\ : std_logic;
SIGNAL \inst|Equal3~0_combout\ : std_logic;
SIGNAL \inst|buffer1~100_combout\ : std_logic;
SIGNAL \inst|buffer1~99_combout\ : std_logic;
SIGNAL \inst|Equal3~2_combout\ : std_logic;
SIGNAL \inst|Equal3~3_combout\ : std_logic;
SIGNAL \inst|buffer1~35_combout\ : std_logic;
SIGNAL \inst|buffer1~24_combout\ : std_logic;
SIGNAL \inst|buffer1~19_combout\ : std_logic;
SIGNAL \inst|buffer1~26_combout\ : std_logic;
SIGNAL \inst|buffer1~22_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|buffer1~34_combout\ : std_logic;
SIGNAL \inst|buffer1~33_combout\ : std_logic;
SIGNAL \inst|buffer1~31_combout\ : std_logic;
SIGNAL \inst|buffer1~32_combout\ : std_logic;
SIGNAL \inst|Equal1~2_combout\ : std_logic;
SIGNAL \inst|buffer1~29_combout\ : std_logic;
SIGNAL \inst|buffer1~28_combout\ : std_logic;
SIGNAL \inst|buffer1~27_combout\ : std_logic;
SIGNAL \inst|buffer1~30_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|Equal1~3_combout\ : std_logic;
SIGNAL \inst|buffer1~20_combout\ : std_logic;
SIGNAL \inst|buffer1[2]~23_combout\ : std_logic;
SIGNAL \inst|Equal5~6_combout\ : std_logic;
SIGNAL \inst|Equal5~3_combout\ : std_logic;
SIGNAL \inst|Equal5~0_combout\ : std_logic;
SIGNAL \inst|Equal5~1_combout\ : std_logic;
SIGNAL \inst|Equal5~2_combout\ : std_logic;
SIGNAL \inst|Equal5~4_combout\ : std_logic;
SIGNAL \inst|Equal5~7_combout\ : std_logic;
SIGNAL \inst|buffer1[12]~88_combout\ : std_logic;
SIGNAL \inst|buffer1[12]~89_combout\ : std_logic;
SIGNAL \inst|buffer1~25_combout\ : std_logic;
SIGNAL \inst|Equal5~5_combout\ : std_logic;
SIGNAL \inst|buffer1[12]~13_combout\ : std_logic;
SIGNAL \inst|buffer1[12]~86_combout\ : std_logic;
SIGNAL \inst|buffer1~97_combout\ : std_logic;
SIGNAL \inst|Equal9~5_combout\ : std_logic;
SIGNAL \inst|Equal9~6_combout\ : std_logic;
SIGNAL \inst|Equal9~0_combout\ : std_logic;
SIGNAL \inst|Equal9~3_combout\ : std_logic;
SIGNAL \inst|Equal9~1_combout\ : std_logic;
SIGNAL \inst|Equal9~2_combout\ : std_logic;
SIGNAL \inst|Equal9~4_combout\ : std_logic;
SIGNAL \inst|Equal8~0_combout\ : std_logic;
SIGNAL \inst|Equal8~1_combout\ : std_logic;
SIGNAL \inst|buffer1[24]~55_combout\ : std_logic;
SIGNAL \inst|buffer1[24]~177_combout\ : std_logic;
SIGNAL \inst|buffer1~191_combout\ : std_logic;
SIGNAL \inst|Equal13~6_combout\ : std_logic;
SIGNAL \inst|Equal13~5_combout\ : std_logic;
SIGNAL \inst|Equal13~2_combout\ : std_logic;
SIGNAL \inst|Equal13~3_combout\ : std_logic;
SIGNAL \inst|Equal13~0_combout\ : std_logic;
SIGNAL \inst|Equal13~1_combout\ : std_logic;
SIGNAL \inst|Equal13~4_combout\ : std_logic;
SIGNAL \inst|Equal13~7_combout\ : std_logic;
SIGNAL \inst|buffer1[36]~210_combout\ : std_logic;
SIGNAL \inst|buffer1[36]~56_combout\ : std_logic;
SIGNAL \inst|buffer1~61_combout\ : std_logic;
SIGNAL \inst|Equal17~1_combout\ : std_logic;
SIGNAL \inst|Equal17~0_combout\ : std_logic;
SIGNAL \inst|Equal17~3_combout\ : std_logic;
SIGNAL \inst|Equal17~2_combout\ : std_logic;
SIGNAL \inst|Equal17~4_combout\ : std_logic;
SIGNAL \inst|Equal17~6_combout\ : std_logic;
SIGNAL \inst|Equal17~7_combout\ : std_logic;
SIGNAL \inst|buffer1[48]~164_combout\ : std_logic;
SIGNAL \inst|Equal15~1_combout\ : std_logic;
SIGNAL \inst|Equal15~2_combout\ : std_logic;
SIGNAL \inst|Equal15~0_combout\ : std_logic;
SIGNAL \inst|Equal15~3_combout\ : std_logic;
SIGNAL \inst|buffer1~208_combout\ : std_logic;
SIGNAL \inst|buffer1[48]~165_combout\ : std_logic;
SIGNAL \inst|Equal17~5_combout\ : std_logic;
SIGNAL \inst|buffer1[48]~37_combout\ : std_logic;
SIGNAL \inst|buffer1[48]~162_combout\ : std_logic;
SIGNAL \inst|buffer1~176_combout\ : std_logic;
SIGNAL \inst|Equal21~6_combout\ : std_logic;
SIGNAL \inst|Equal21~5_combout\ : std_logic;
SIGNAL \inst|Equal21~3_combout\ : std_logic;
SIGNAL \inst|Equal21~0_combout\ : std_logic;
SIGNAL \inst|Equal21~1_combout\ : std_logic;
SIGNAL \inst|Equal21~2_combout\ : std_logic;
SIGNAL \inst|Equal21~4_combout\ : std_logic;
SIGNAL \inst|Equal21~7_combout\ : std_logic;
SIGNAL \inst|buffer1[62]~101_combout\ : std_logic;
SIGNAL \inst|buffer1[62]~102_combout\ : std_logic;
SIGNAL \inst|buffer1~203_combout\ : std_logic;
SIGNAL \inst|buffer1~113_combout\ : std_logic;
SIGNAL \inst|Equal25~5_combout\ : std_logic;
SIGNAL \inst|Equal25~6_combout\ : std_logic;
SIGNAL \inst|Equal25~3_combout\ : std_logic;
SIGNAL \inst|Equal25~2_combout\ : std_logic;
SIGNAL \inst|Equal25~1_combout\ : std_logic;
SIGNAL \inst|Equal25~0_combout\ : std_logic;
SIGNAL \inst|Equal25~4_combout\ : std_logic;
SIGNAL \inst|Equal25~7_combout\ : std_logic;
SIGNAL \inst|buffer1[83]~192_combout\ : std_logic;
SIGNAL \inst|buffer1~204_combout\ : std_logic;
SIGNAL \inst|Equal29~5_combout\ : std_logic;
SIGNAL \inst|Equal29~6_combout\ : std_logic;
SIGNAL \inst|Equal29~1_combout\ : std_logic;
SIGNAL \inst|Equal29~0_combout\ : std_logic;
SIGNAL \inst|Equal29~2_combout\ : std_logic;
SIGNAL \inst|Equal29~3_combout\ : std_logic;
SIGNAL \inst|Equal29~4_combout\ : std_logic;
SIGNAL \inst|Equal29~7_combout\ : std_logic;
SIGNAL \inst|buffer1[89]~71_combout\ : std_logic;
SIGNAL \inst|buffer1~81_combout\ : std_logic;
SIGNAL \inst|Equal27~1_combout\ : std_logic;
SIGNAL \inst|Equal27~0_combout\ : std_logic;
SIGNAL \inst|Equal27~2_combout\ : std_logic;
SIGNAL \inst|buffer1~207_combout\ : std_logic;
SIGNAL \inst|buffer1~12_combout\ : std_logic;
SIGNAL \inst|counter~18_combout\ : std_logic;
SIGNAL \inst|BufferCount~3_combout\ : std_logic;
SIGNAL \inst|BufferCount~4_combout\ : std_logic;
SIGNAL \inst|counter~19_combout\ : std_logic;
SIGNAL \inst|Equal36~0_combout\ : std_logic;
SIGNAL \inst|counter~28_combout\ : std_logic;
SIGNAL \inst|counter~29_combout\ : std_logic;
SIGNAL \inst|counter[0]~30_combout\ : std_logic;
SIGNAL \inst|counter[0]~76_combout\ : std_logic;
SIGNAL \inst|counter[0]~77_combout\ : std_logic;
SIGNAL \inst|counter[0]~31_combout\ : std_logic;
SIGNAL \inst|Equal27~3_combout\ : std_logic;
SIGNAL \inst|Equal23~2_combout\ : std_logic;
SIGNAL \inst|Equal23~1_combout\ : std_logic;
SIGNAL \inst|Equal23~0_combout\ : std_logic;
SIGNAL \inst|Equal23~3_combout\ : std_logic;
SIGNAL \inst|counter~24_combout\ : std_logic;
SIGNAL \inst|Equal43~2_combout\ : std_logic;
SIGNAL \inst|Equal43~0_combout\ : std_logic;
SIGNAL \inst|Equal43~1_combout\ : std_logic;
SIGNAL \inst|Equal43~3_combout\ : std_logic;
SIGNAL \inst|Equal39~3_combout\ : std_logic;
SIGNAL \inst|counter[0]~25_combout\ : std_logic;
SIGNAL \inst|counter~22_combout\ : std_logic;
SIGNAL \inst|counter~23_combout\ : std_logic;
SIGNAL \inst|counter[0]~27_combout\ : std_logic;
SIGNAL \inst|counter~32_combout\ : std_logic;
SIGNAL \inst|counter~33_combout\ : std_logic;
SIGNAL \inst|counter[0]~34_combout\ : std_logic;
SIGNAL \inst|counter[0]~35_combout\ : std_logic;
SIGNAL \inst|Equal32~0_combout\ : std_logic;
SIGNAL \inst|Equal32~1_combout\ : std_logic;
SIGNAL \inst|counter~21_combout\ : std_logic;
SIGNAL \inst|counter~26_combout\ : std_logic;
SIGNAL \inst|counter[4]~3_combout\ : std_logic;
SIGNAL \inst|Equal44~0_combout\ : std_logic;
SIGNAL \inst|buffer1[143]~147_combout\ : std_logic;
SIGNAL \inst|buffer1~159_combout\ : std_logic;
SIGNAL \inst|buffer1~140_combout\ : std_logic;
SIGNAL \inst|Equal41~5_combout\ : std_logic;
SIGNAL \inst|buffer1[130]~54_combout\ : std_logic;
SIGNAL \inst|buffer1[130]~132_combout\ : std_logic;
SIGNAL \inst|buffer1~142_combout\ : std_logic;
SIGNAL \inst|bufferout[131]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer1~53_combout\ : std_logic;
SIGNAL \inst|bufferout[119]~feeder_combout\ : std_logic;
SIGNAL \inst|buffer1~131_combout\ : std_logic;
SIGNAL \inst|Equal37~6_combout\ : std_logic;
SIGNAL \inst|Equal37~0_combout\ : std_logic;
SIGNAL \inst|Equal37~1_combout\ : std_logic;
SIGNAL \inst|Equal37~3_combout\ : std_logic;
SIGNAL \inst|Equal37~2_combout\ : std_logic;
SIGNAL \inst|Equal37~4_combout\ : std_logic;
SIGNAL \inst|Equal37~5_combout\ : std_logic;
SIGNAL \inst|buffer1[113]~38_combout\ : std_logic;
SIGNAL \inst|buffer1[113]~39_combout\ : std_logic;
SIGNAL \inst|buffer1~52_combout\ : std_logic;
SIGNAL \inst|buffer1~130_combout\ : std_logic;
SIGNAL \inst|Equal33~6_combout\ : std_logic;
SIGNAL \inst|buffer1~36_combout\ : std_logic;
SIGNAL \inst|counter~36_combout\ : std_logic;
SIGNAL \inst|counter~37_combout\ : std_logic;
SIGNAL \inst|counter~38_combout\ : std_logic;
SIGNAL \inst|counter~39_combout\ : std_logic;
SIGNAL \inst|counter[3]~2_combout\ : std_logic;
SIGNAL \inst|Equal46~0_combout\ : std_logic;
SIGNAL \inst|buffer1~18_combout\ : std_logic;
SIGNAL \inst|counter~40_combout\ : std_logic;
SIGNAL \inst|counter~41_combout\ : std_logic;
SIGNAL \inst|counter~46_combout\ : std_logic;
SIGNAL \inst|counter~42_combout\ : std_logic;
SIGNAL \inst|counter~44_combout\ : std_logic;
SIGNAL \inst|Equal4~4_combout\ : std_logic;
SIGNAL \inst|counter~43_combout\ : std_logic;
SIGNAL \inst|counter~78_combout\ : std_logic;
SIGNAL \inst|counter~45_combout\ : std_logic;
SIGNAL \inst|counter~20_combout\ : std_logic;
SIGNAL \inst|counter~81_combout\ : std_logic;
SIGNAL \inst|counter~47_combout\ : std_logic;
SIGNAL \inst|counter~48_combout\ : std_logic;
SIGNAL \inst|counter~51_combout\ : std_logic;
SIGNAL \inst|counter~49_combout\ : std_logic;
SIGNAL \inst|counter~50_combout\ : std_logic;
SIGNAL \inst|counter~52_combout\ : std_logic;
SIGNAL \inst|counter~53_combout\ : std_logic;
SIGNAL \inst|counter[2]~1_combout\ : std_logic;
SIGNAL \inst|Equal46~1_combout\ : std_logic;
SIGNAL \inst|BufferCount~9_combout\ : std_logic;
SIGNAL \inst|BufferCount[10]~5_combout\ : std_logic;
SIGNAL \inst|BufferCount[3]~6_combout\ : std_logic;
SIGNAL \inst1|Current~3_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~5_combout\ : std_logic;
SIGNAL \inst|BufferCount~0_combout\ : std_logic;
SIGNAL \inst|BufferCount~1_combout\ : std_logic;
SIGNAL \inst|BufferCount~2_combout\ : std_logic;
SIGNAL \inst|BufferCheck[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|Current~0_combout\ : std_logic;
SIGNAL \inst|BufferCount~7_combout\ : std_logic;
SIGNAL \inst|BufferCheck[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|Current~1_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~3_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~2_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~4_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~7_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[0]~13_combout\ : std_logic;
SIGNAL \inst|bufferout[16]~0_combout\ : std_logic;
SIGNAL \inst1|Current~2_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~6_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[3]~10_combout\ : std_logic;
SIGNAL \inst|counter~60_combout\ : std_logic;
SIGNAL \inst|counter~61_combout\ : std_logic;
SIGNAL \inst|counter~62_combout\ : std_logic;
SIGNAL \inst|counter~69_combout\ : std_logic;
SIGNAL \inst|counter~56_combout\ : std_logic;
SIGNAL \inst|counter~57_combout\ : std_logic;
SIGNAL \inst|counter~58_combout\ : std_logic;
SIGNAL \inst|counter~79_combout\ : std_logic;
SIGNAL \inst|counter~54_combout\ : std_logic;
SIGNAL \inst|counter~55_combout\ : std_logic;
SIGNAL \inst|counter~59_combout\ : std_logic;
SIGNAL \inst|counter~67_combout\ : std_logic;
SIGNAL \inst|counter~65_combout\ : std_logic;
SIGNAL \inst|counter~66_combout\ : std_logic;
SIGNAL \inst|counter~63_combout\ : std_logic;
SIGNAL \inst|counter~80_combout\ : std_logic;
SIGNAL \inst|counter~64_combout\ : std_logic;
SIGNAL \inst|counter~68_combout\ : std_logic;
SIGNAL \inst|counter~70_combout\ : std_logic;
SIGNAL \inst|counter~71_combout\ : std_logic;
SIGNAL \inst|counter~72_combout\ : std_logic;
SIGNAL \inst|counter~73_combout\ : std_logic;
SIGNAL \inst|counter~74_combout\ : std_logic;
SIGNAL \inst|counter~75_combout\ : std_logic;
SIGNAL \inst|counter[1]~0_combout\ : std_logic;
SIGNAL \inst|buffer1~21_combout\ : std_logic;
SIGNAL \inst|BufferCount~8_combout\ : std_logic;
SIGNAL \inst|AVAILABLE~0_combout\ : std_logic;
SIGNAL \inst|AVAILABLE~q\ : std_logic;
SIGNAL \inst1|OUTPUT[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~8_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~14_combout\ : std_logic;
SIGNAL \inst|ADC_out~0_combout\ : std_logic;
SIGNAL \inst|ADC_out[4]~1_combout\ : std_logic;
SIGNAL \inst3|Final_Output1[11]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out~2_combout\ : std_logic;
SIGNAL \inst3|Final_Output1[10]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out~3_combout\ : std_logic;
SIGNAL \inst3|Final_Output1[9]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out~4_combout\ : std_logic;
SIGNAL \inst3|Final_Output1[8]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out~5_combout\ : std_logic;
SIGNAL \inst3|Final_Output1[7]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out~6_combout\ : std_logic;
SIGNAL \inst3|Final_Output1[6]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out~7_combout\ : std_logic;
SIGNAL \inst3|Final_Output1[5]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out~8_combout\ : std_logic;
SIGNAL \inst3|Final_Output1[4]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out~9_combout\ : std_logic;
SIGNAL \inst3|Final_Output1[3]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out~10_combout\ : std_logic;
SIGNAL \inst3|Final_Output1[2]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out~11_combout\ : std_logic;
SIGNAL \inst3|Final_Output1[1]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out~12_combout\ : std_logic;
SIGNAL \inst3|Final_Output1[0]~feeder_combout\ : std_logic;
SIGNAL \inst|MASK[2]~0_combout\ : std_logic;
SIGNAL \inst3|Final_Output2[6]~feeder_combout\ : std_logic;
SIGNAL \inst3|Final_Output2[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|BUFFER_READ[2]~feeder_combout\ : std_logic;
SIGNAL \inst3|Final_Output2[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|BUFFER_READ[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|Final_Output2[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|BUFFER_READ[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|Final_Output2[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|buffer1\ : std_logic_vector(143 DOWNTO 0);
SIGNAL \inst|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|MASK\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|Final_Output2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|OUTPUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|Final_Output1\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|ADC_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|BUFFER_READ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|BufferCount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|Current\ : std_logic_vector(31 DOWNTO 0);
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

FIFO_OUT <= ww_FIFO_OUT;
ww_CLK <= CLK;
ww_ADC_IN <= ADC_IN;
ww_MCU_IN <= MCU_IN;
OUTPUTa <= ww_OUTPUTa;
OUTPUTb <= ww_OUTPUTb;
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

-- Location: IOOBUF_X34_Y0_N2
\FIFO_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|OUTPUT\(7),
	devoe => ww_devoe,
	o => \FIFO_OUT[7]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\FIFO_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|OUTPUT\(6),
	devoe => ww_devoe,
	o => \FIFO_OUT[6]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\FIFO_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FIFO_OUT[5]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\FIFO_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \FIFO_OUT[4]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\FIFO_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|OUTPUT\(3),
	devoe => ww_devoe,
	o => \FIFO_OUT[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\FIFO_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|OUTPUT\(2),
	devoe => ww_devoe,
	o => \FIFO_OUT[2]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\FIFO_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|OUTPUT\(1),
	devoe => ww_devoe,
	o => \FIFO_OUT[1]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\FIFO_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|OUTPUT\(0),
	devoe => ww_devoe,
	o => \FIFO_OUT[0]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\OUTPUTa[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Final_Output1\(11),
	devoe => ww_devoe,
	o => \OUTPUTa[11]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\OUTPUTa[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Final_Output1\(10),
	devoe => ww_devoe,
	o => \OUTPUTa[10]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\OUTPUTa[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Final_Output1\(9),
	devoe => ww_devoe,
	o => \OUTPUTa[9]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\OUTPUTa[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Final_Output1\(8),
	devoe => ww_devoe,
	o => \OUTPUTa[8]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\OUTPUTa[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Final_Output1\(7),
	devoe => ww_devoe,
	o => \OUTPUTa[7]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\OUTPUTa[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Final_Output1\(6),
	devoe => ww_devoe,
	o => \OUTPUTa[6]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\OUTPUTa[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Final_Output1\(5),
	devoe => ww_devoe,
	o => \OUTPUTa[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\OUTPUTa[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Final_Output1\(4),
	devoe => ww_devoe,
	o => \OUTPUTa[4]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\OUTPUTa[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Final_Output1\(3),
	devoe => ww_devoe,
	o => \OUTPUTa[3]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\OUTPUTa[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Final_Output1\(2),
	devoe => ww_devoe,
	o => \OUTPUTa[2]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\OUTPUTa[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Final_Output1\(1),
	devoe => ww_devoe,
	o => \OUTPUTa[1]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\OUTPUTa[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Final_Output1\(0),
	devoe => ww_devoe,
	o => \OUTPUTa[0]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\OUTPUTb[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Final_Output2\(7),
	devoe => ww_devoe,
	o => \OUTPUTb[7]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\OUTPUTb[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Final_Output2\(6),
	devoe => ww_devoe,
	o => \OUTPUTb[6]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\OUTPUTb[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OUTPUTb[5]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\OUTPUTb[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \OUTPUTb[4]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\OUTPUTb[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Final_Output2\(3),
	devoe => ww_devoe,
	o => \OUTPUTb[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\OUTPUTb[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Final_Output2\(2),
	devoe => ww_devoe,
	o => \OUTPUTb[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\OUTPUTb[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Final_Output2\(1),
	devoe => ww_devoe,
	o => \OUTPUTb[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\OUTPUTb[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Final_Output2\(0),
	devoe => ww_devoe,
	o => \OUTPUTb[0]~output_o\);

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

-- Location: IOIBUF_X16_Y0_N15
\MCU_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(2),
	o => \MCU_IN[2]~input_o\);

-- Location: IOIBUF_X53_Y15_N8
\MCU_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(3),
	o => \MCU_IN[3]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\MCU_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(4),
	o => \MCU_IN[4]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\MCU_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(5),
	o => \MCU_IN[5]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\MCU_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(6),
	o => \MCU_IN[6]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\MCU_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(7),
	o => \MCU_IN[7]~input_o\);

-- Location: LCCOMB_X38_Y1_N12
\inst1|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal5~0_combout\ = (!\MCU_IN[4]~input_o\ & (!\MCU_IN[5]~input_o\ & (!\MCU_IN[6]~input_o\ & !\MCU_IN[7]~input_o\)))

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
	combout => \inst1|Equal5~0_combout\);

-- Location: LCCOMB_X34_Y4_N6
\inst1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~2_combout\ = (!\MCU_IN[3]~input_o\ & \inst1|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MCU_IN[3]~input_o\,
	datad => \inst1|Equal5~0_combout\,
	combout => \inst1|Equal1~2_combout\);

-- Location: IOIBUF_X16_Y0_N22
\MCU_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(1),
	o => \MCU_IN[1]~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\MCU_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(0),
	o => \MCU_IN[0]~input_o\);

-- Location: LCCOMB_X38_Y6_N28
\inst1|OUTPUT~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~9_combout\ = ((\MCU_IN[2]~input_o\ & ((\MCU_IN[1]~input_o\) # (\MCU_IN[0]~input_o\))) # (!\MCU_IN[2]~input_o\ & (\MCU_IN[1]~input_o\ & \MCU_IN[0]~input_o\))) # (!\inst1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[2]~input_o\,
	datab => \inst1|Equal1~2_combout\,
	datac => \MCU_IN[1]~input_o\,
	datad => \MCU_IN[0]~input_o\,
	combout => \inst1|OUTPUT~9_combout\);

-- Location: LCCOMB_X34_Y4_N22
\inst1|OUTPUT~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~15_combout\ = (\MCU_IN[2]~input_o\) # ((\MCU_IN[1]~input_o\) # ((\MCU_IN[3]~input_o\) # (!\inst1|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[2]~input_o\,
	datab => \MCU_IN[1]~input_o\,
	datac => \MCU_IN[3]~input_o\,
	datad => \inst1|Equal5~0_combout\,
	combout => \inst1|OUTPUT~15_combout\);

-- Location: LCCOMB_X34_Y4_N28
\inst1|OUTPUT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~6_combout\ = ((\MCU_IN[0]~input_o\) # (\MCU_IN[2]~input_o\ $ (!\MCU_IN[1]~input_o\))) # (!\inst1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[2]~input_o\,
	datab => \MCU_IN[1]~input_o\,
	datac => \inst1|Equal1~2_combout\,
	datad => \MCU_IN[0]~input_o\,
	combout => \inst1|OUTPUT~6_combout\);

-- Location: LCCOMB_X34_Y4_N2
\inst1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~0_combout\ = (!\MCU_IN[2]~input_o\ & (!\MCU_IN[1]~input_o\ & !\MCU_IN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[2]~input_o\,
	datab => \MCU_IN[1]~input_o\,
	datad => \MCU_IN[0]~input_o\,
	combout => \inst1|Equal1~0_combout\);

-- Location: LCCOMB_X34_Y4_N30
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

-- Location: LCCOMB_X34_Y4_N24
\inst1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal2~0_combout\ = (!\MCU_IN[2]~input_o\ & (!\MCU_IN[1]~input_o\ & (\inst1|Equal1~2_combout\ & \MCU_IN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[2]~input_o\,
	datab => \MCU_IN[1]~input_o\,
	datac => \inst1|Equal1~2_combout\,
	datad => \MCU_IN[0]~input_o\,
	combout => \inst1|Equal2~0_combout\);

-- Location: LCCOMB_X32_Y4_N30
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

-- Location: IOIBUF_X43_Y0_N22
\ADC_IN[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(10),
	o => \ADC_IN[10]~input_o\);

-- Location: IOIBUF_X43_Y0_N15
\ADC_IN[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(11),
	o => \ADC_IN[11]~input_o\);

-- Location: CLKCTRL_G16
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

-- Location: IOIBUF_X36_Y0_N22
\ADC_IN[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(9),
	o => \ADC_IN[9]~input_o\);

-- Location: LCCOMB_X38_Y5_N20
\inst|Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal16~0_combout\ = (\inst|counter\(3) & (!\inst|counter\(0) & !\inst|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(3),
	datac => \inst|counter\(0),
	datad => \inst|counter\(4),
	combout => \inst|Equal16~0_combout\);

-- Location: LCCOMB_X37_Y3_N4
\inst|Equal28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal28~0_combout\ = (\inst|counter\(2) & (\inst|counter\(1) & \inst|Equal16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datac => \inst|counter\(1),
	datad => \inst|Equal16~0_combout\,
	combout => \inst|Equal28~0_combout\);

-- Location: IOIBUF_X53_Y14_N8
\ADC_IN[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(8),
	o => \ADC_IN[8]~input_o\);

-- Location: LCCOMB_X37_Y8_N0
\inst|buffer1~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~158_combout\ = (\ADC_IN[8]~input_o\ & \inst|buffer1[143]~147_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_IN[8]~input_o\,
	datad => \inst|buffer1[143]~147_combout\,
	combout => \inst|buffer1~158_combout\);

-- Location: FF_X34_Y4_N7
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

-- Location: LCCOMB_X34_Y4_N8
\inst1|OUTPUT[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[0]~16_combout\ = (\inst1|OUTPUT~7_combout\ & ((\inst1|SPACE_AVAILABLE\(10)) # ((\inst1|SPACE_AVAILABLE\(4)) # (!\inst1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SPACE_AVAILABLE\(10),
	datab => \inst1|Equal0~0_combout\,
	datac => \inst1|OUTPUT~7_combout\,
	datad => \inst1|SPACE_AVAILABLE\(4),
	combout => \inst1|OUTPUT[0]~16_combout\);

-- Location: LCCOMB_X34_Y4_N4
\inst1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~1_combout\ = (\inst1|Equal1~0_combout\ & (!\MCU_IN[3]~input_o\ & \inst1|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal1~0_combout\,
	datac => \MCU_IN[3]~input_o\,
	datad => \inst1|Equal5~0_combout\,
	combout => \inst1|Equal1~1_combout\);

-- Location: LCCOMB_X34_Y4_N20
\inst1|Latch~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Latch~2_combout\ = (\inst1|Equal1~1_combout\ & (((\inst1|Latch~q\)))) # (!\inst1|Equal1~1_combout\ & (!\inst1|Equal2~0_combout\ & ((\inst1|Latch~q\) # (!\inst1|OUTPUT~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~0_combout\,
	datab => \inst1|OUTPUT~6_combout\,
	datac => \inst1|Equal1~1_combout\,
	datad => \inst1|Latch~q\,
	combout => \inst1|Latch~2_combout\);

-- Location: LCCOMB_X34_Y4_N14
\inst1|Latch~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Latch~3_combout\ = (\inst1|Latch~2_combout\ & ((\inst1|SPACE_AVAILABLE\(4)) # ((\inst1|SPACE_AVAILABLE\(10)) # (!\inst1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SPACE_AVAILABLE\(4),
	datab => \inst1|Latch~2_combout\,
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|SPACE_AVAILABLE\(10),
	combout => \inst1|Latch~3_combout\);

-- Location: FF_X34_Y4_N15
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

-- Location: LCCOMB_X36_Y4_N20
\inst1|OUTPUT[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[1]~11_combout\ = (\inst1|Equal0~1_combout\ & (((\inst1|OUTPUT\(1))))) # (!\inst1|Equal0~1_combout\ & (\inst1|Equal1~1_combout\ & ((\inst1|Latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal1~1_combout\,
	datab => \inst1|OUTPUT\(1),
	datac => \inst1|Equal0~1_combout\,
	datad => \inst1|Latch~q\,
	combout => \inst1|OUTPUT[1]~11_combout\);

-- Location: LCCOMB_X37_Y4_N26
\inst1|OUTPUT[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[1]~12_combout\ = (\inst1|OUTPUT[1]~11_combout\) # ((\inst1|OUTPUT~15_combout\ & ((\inst1|OUTPUT[0]~16_combout\) # (\inst1|OUTPUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT~15_combout\,
	datab => \inst1|OUTPUT[0]~16_combout\,
	datac => \inst1|OUTPUT\(1),
	datad => \inst1|OUTPUT[1]~11_combout\,
	combout => \inst1|OUTPUT[1]~12_combout\);

-- Location: FF_X37_Y4_N27
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

-- Location: IOIBUF_X34_Y0_N15
\ADC_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(5),
	o => \ADC_IN[5]~input_o\);

-- Location: LCCOMB_X38_Y8_N12
\inst|buffer1~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~155_combout\ = (\ADC_IN[5]~input_o\ & \inst|buffer1[143]~147_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[5]~input_o\,
	datac => \inst|buffer1[143]~147_combout\,
	combout => \inst|buffer1~155_combout\);

-- Location: FF_X38_Y8_N13
\inst|buffer1[137]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~155_combout\,
	ena => \inst|buffer1[143]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(137));

-- Location: IOIBUF_X40_Y0_N15
\ADC_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(4),
	o => \ADC_IN[4]~input_o\);

-- Location: LCCOMB_X37_Y8_N6
\inst|buffer1~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~154_combout\ = (\ADC_IN[4]~input_o\ & \inst|buffer1[143]~147_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[4]~input_o\,
	datad => \inst|buffer1[143]~147_combout\,
	combout => \inst|buffer1~154_combout\);

-- Location: FF_X37_Y8_N7
\inst|buffer1[136]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~154_combout\,
	ena => \inst|buffer1[143]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(136));

-- Location: LCCOMB_X41_Y5_N30
\inst1|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~0_combout\ = (!\MCU_IN[1]~input_o\ & (!\MCU_IN[0]~input_o\ & (\MCU_IN[2]~input_o\ & \inst1|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[1]~input_o\,
	datab => \MCU_IN[0]~input_o\,
	datac => \MCU_IN[2]~input_o\,
	datad => \inst1|Equal1~2_combout\,
	combout => \inst1|Equal4~0_combout\);

-- Location: FF_X41_Y5_N31
\inst1|OUTPUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Equal4~0_combout\,
	ena => \inst1|OUTPUT[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTPUT\(2));

-- Location: LCCOMB_X41_Y5_N14
\inst|bufferout[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bufferout[23]~1_combout\ = (\inst1|OUTPUT\(2) & (\inst1|OUTPUT\(1) & !\inst1|OUTPUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(2),
	datab => \inst1|OUTPUT\(1),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|bufferout[23]~1_combout\);

-- Location: FF_X38_Y8_N9
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

-- Location: CLKCTRL_G19
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

-- Location: LCCOMB_X38_Y8_N8
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

-- Location: LCCOMB_X38_Y8_N0
\inst2|bufferout[124]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(124) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(124))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(124))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(124),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(124),
	combout => \inst2|bufferout\(124));

-- Location: LCCOMB_X38_Y9_N30
\inst|buffer1~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~133_combout\ = (!\inst|buffer1[130]~132_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(124)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[4]~input_o\,
	datab => \inst2|bufferout\(124),
	datac => \inst|buffer1[130]~132_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~133_combout\);

-- Location: LCCOMB_X37_Y7_N18
\inst|buffer1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~8_combout\ = (\inst|counter\(0) & (!\inst|counter\(2) & !\inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(2),
	datad => \inst|counter\(3),
	combout => \inst|buffer1~8_combout\);

-- Location: LCCOMB_X37_Y8_N4
\inst|buffer1~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~160_combout\ = (\ADC_IN[10]~input_o\ & \inst|buffer1[143]~147_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_IN[10]~input_o\,
	datad => \inst|buffer1[143]~147_combout\,
	combout => \inst|buffer1~160_combout\);

-- Location: FF_X37_Y8_N5
\inst|buffer1[142]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~160_combout\,
	ena => \inst|buffer1[143]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(142));

-- Location: FF_X36_Y9_N29
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

-- Location: LCCOMB_X36_Y9_N28
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

-- Location: LCCOMB_X36_Y9_N4
\inst2|bufferout[130]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(130) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(130))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(130))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(130),
	datac => \inst2|bufferout\(130),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(130));

-- Location: LCCOMB_X36_Y9_N12
\inst|buffer1~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~141_combout\ = (!\inst|buffer1[130]~132_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(130)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[10]~input_o\,
	datab => \inst|buffer1[130]~132_combout\,
	datac => \inst2|bufferout\(130),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~141_combout\);

-- Location: FF_X36_Y9_N13
\inst|buffer1[130]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~141_combout\,
	ena => \inst|buffer1[130]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(130));

-- Location: LCCOMB_X36_Y9_N24
\inst|Equal39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal39~1_combout\ = (!\inst|buffer1\(130) & (!\inst|buffer1\(128) & (!\inst|buffer1\(131) & !\inst|buffer1\(129))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(130),
	datab => \inst|buffer1\(128),
	datac => \inst|buffer1\(131),
	datad => \inst|buffer1\(129),
	combout => \inst|Equal39~1_combout\);

-- Location: IOIBUF_X53_Y9_N22
\ADC_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(2),
	o => \ADC_IN[2]~input_o\);

-- Location: LCCOMB_X37_Y8_N8
\inst|buffer1~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~152_combout\ = (\ADC_IN[2]~input_o\ & \inst|buffer1[143]~147_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_IN[2]~input_o\,
	datad => \inst|buffer1[143]~147_combout\,
	combout => \inst|buffer1~152_combout\);

-- Location: FF_X37_Y8_N9
\inst|buffer1[134]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~152_combout\,
	ena => \inst|buffer1[143]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(134));

-- Location: FF_X39_Y8_N3
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

-- Location: LCCOMB_X39_Y8_N2
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

-- Location: LCCOMB_X39_Y8_N8
\inst2|bufferout[122]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(122) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(122))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(122))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(122),
	datac => \inst2|bufferout\(122),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(122));

-- Location: LCCOMB_X39_Y8_N10
\inst|buffer1~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~145_combout\ = (!\inst|buffer1[130]~132_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(122))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[130]~132_combout\,
	datab => \inst2|bufferout\(122),
	datac => \ADC_IN[2]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~145_combout\);

-- Location: FF_X39_Y8_N11
\inst|buffer1[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~145_combout\,
	ena => \inst|buffer1[130]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(122));

-- Location: IOIBUF_X53_Y10_N15
\ADC_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(1),
	o => \ADC_IN[1]~input_o\);

-- Location: LCCOMB_X37_Y8_N10
\inst|buffer1~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~151_combout\ = (\ADC_IN[1]~input_o\ & \inst|buffer1[143]~147_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_IN[1]~input_o\,
	datad => \inst|buffer1[143]~147_combout\,
	combout => \inst|buffer1~151_combout\);

-- Location: FF_X37_Y8_N11
\inst|buffer1[133]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~151_combout\,
	ena => \inst|buffer1[143]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(133));

-- Location: FF_X44_Y8_N29
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

-- Location: LCCOMB_X44_Y8_N28
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

-- Location: LCCOMB_X44_Y8_N10
\inst2|bufferout[121]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(121) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(121))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(121))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(121),
	datac => \inst2|bufferout\(121),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(121));

-- Location: LCCOMB_X39_Y8_N24
\inst|buffer1~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~144_combout\ = (!\inst|buffer1[130]~132_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(121)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[130]~132_combout\,
	datab => \ADC_IN[1]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(121),
	combout => \inst|buffer1~144_combout\);

-- Location: FF_X39_Y8_N25
\inst|buffer1[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~144_combout\,
	ena => \inst|buffer1[130]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(121));

-- Location: IOIBUF_X45_Y0_N15
\ADC_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(0),
	o => \ADC_IN[0]~input_o\);

-- Location: LCCOMB_X37_Y8_N24
\inst|buffer1~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~148_combout\ = (\ADC_IN[0]~input_o\ & \inst|buffer1[143]~147_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[0]~input_o\,
	datac => \inst|buffer1[143]~147_combout\,
	combout => \inst|buffer1~148_combout\);

-- Location: FF_X37_Y8_N25
\inst|buffer1[132]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~148_combout\,
	ena => \inst|buffer1[143]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(132));

-- Location: FF_X39_Y8_N21
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

-- Location: LCCOMB_X39_Y8_N20
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

-- Location: LCCOMB_X39_Y8_N22
\inst2|bufferout[120]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(120) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(120))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(120))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(120),
	datac => \inst2|bufferout\(120),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(120));

-- Location: LCCOMB_X39_Y8_N14
\inst|buffer1~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~143_combout\ = (!\inst|buffer1[130]~132_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(120)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[130]~132_combout\,
	datab => \ADC_IN[0]~input_o\,
	datac => \inst2|bufferout\(120),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~143_combout\);

-- Location: FF_X39_Y8_N15
\inst|buffer1[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~143_combout\,
	ena => \inst|buffer1[130]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(120));

-- Location: IOIBUF_X53_Y9_N15
\ADC_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(3),
	o => \ADC_IN[3]~input_o\);

-- Location: LCCOMB_X37_Y8_N22
\inst|buffer1~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~153_combout\ = (\ADC_IN[3]~input_o\ & \inst|buffer1[143]~147_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[3]~input_o\,
	datad => \inst|buffer1[143]~147_combout\,
	combout => \inst|buffer1~153_combout\);

-- Location: FF_X37_Y8_N23
\inst|buffer1[135]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~153_combout\,
	ena => \inst|buffer1[143]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(135));

-- Location: FF_X39_Y8_N29
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

-- Location: LCCOMB_X39_Y8_N28
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

-- Location: LCCOMB_X39_Y8_N30
\inst2|bufferout[123]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(123) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(123))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(123))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(123),
	datac => \inst2|bufferout\(123),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(123));

-- Location: LCCOMB_X39_Y8_N0
\inst|buffer1~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~146_combout\ = (!\inst|buffer1[130]~132_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(123)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[130]~132_combout\,
	datab => \ADC_IN[3]~input_o\,
	datac => \inst2|bufferout\(123),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~146_combout\);

-- Location: FF_X39_Y8_N1
\inst|buffer1[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~146_combout\,
	ena => \inst|buffer1[130]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(123));

-- Location: LCCOMB_X39_Y8_N6
\inst|Equal39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal39~2_combout\ = (!\inst|buffer1\(122) & (!\inst|buffer1\(121) & (!\inst|buffer1\(120) & !\inst|buffer1\(123))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(122),
	datab => \inst|buffer1\(121),
	datac => \inst|buffer1\(120),
	datad => \inst|buffer1\(123),
	combout => \inst|Equal39~2_combout\);

-- Location: LCCOMB_X36_Y5_N30
\inst|buffer1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~16_combout\ = (\inst|counter\(1) & (\inst|Equal39~2_combout\ & \inst|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datac => \inst|Equal39~2_combout\,
	datad => \inst|counter\(4),
	combout => \inst|buffer1~16_combout\);

-- Location: FF_X38_Y8_N3
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

-- Location: LCCOMB_X38_Y8_N2
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

-- Location: LCCOMB_X38_Y8_N22
\inst2|bufferout[125]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(125) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(125)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(125)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(125),
	datab => \inst2|buffer1\(125),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(125));

-- Location: LCCOMB_X38_Y9_N0
\inst|buffer1~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~136_combout\ = (!\inst|buffer1[130]~132_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(125)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[5]~input_o\,
	datab => \inst2|bufferout\(125),
	datac => \inst|buffer1[130]~132_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~136_combout\);

-- Location: FF_X38_Y9_N1
\inst|buffer1[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~136_combout\,
	ena => \inst|buffer1[130]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(125));

-- Location: IOIBUF_X53_Y11_N8
\ADC_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(7),
	o => \ADC_IN[7]~input_o\);

-- Location: LCCOMB_X38_Y8_N18
\inst|buffer1~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~157_combout\ = (\ADC_IN[7]~input_o\ & \inst|buffer1[143]~147_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[7]~input_o\,
	datac => \inst|buffer1[143]~147_combout\,
	combout => \inst|buffer1~157_combout\);

-- Location: FF_X38_Y8_N19
\inst|buffer1[139]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~157_combout\,
	ena => \inst|buffer1[143]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(139));

-- Location: FF_X38_Y8_N21
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

-- Location: LCCOMB_X38_Y8_N20
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

-- Location: LCCOMB_X38_Y8_N16
\inst2|bufferout[127]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(127) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(127))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(127))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(127),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(127),
	combout => \inst2|bufferout\(127));

-- Location: LCCOMB_X39_Y8_N12
\inst|buffer1~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~138_combout\ = (!\inst|buffer1[130]~132_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(127)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[130]~132_combout\,
	datab => \ADC_IN[7]~input_o\,
	datac => \inst2|bufferout\(127),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~138_combout\);

-- Location: FF_X39_Y8_N13
\inst|buffer1[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~138_combout\,
	ena => \inst|buffer1[130]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(127));

-- Location: IOIBUF_X36_Y0_N8
\ADC_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(6),
	o => \ADC_IN[6]~input_o\);

-- Location: LCCOMB_X38_Y8_N26
\inst|buffer1~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~156_combout\ = (\ADC_IN[6]~input_o\ & \inst|buffer1[143]~147_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[6]~input_o\,
	datac => \inst|buffer1[143]~147_combout\,
	combout => \inst|buffer1~156_combout\);

-- Location: FF_X38_Y8_N27
\inst|buffer1[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~156_combout\,
	ena => \inst|buffer1[143]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(138));

-- Location: FF_X38_Y8_N29
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

-- Location: LCCOMB_X38_Y8_N28
\inst2|buffer1[126]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(126) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(138)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(126)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(126),
	datac => \inst|bufferout\(138),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(126));

-- Location: LCCOMB_X38_Y8_N6
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

-- Location: LCCOMB_X38_Y9_N12
\inst|buffer1~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~137_combout\ = (!\inst|buffer1[130]~132_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(126)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[6]~input_o\,
	datab => \inst2|bufferout\(126),
	datac => \inst|buffer1[130]~132_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~137_combout\);

-- Location: FF_X38_Y9_N13
\inst|buffer1[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~137_combout\,
	ena => \inst|buffer1[130]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(126));

-- Location: LCCOMB_X38_Y9_N18
\inst|Equal39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal39~0_combout\ = (!\inst|buffer1\(124) & (!\inst|buffer1\(125) & (!\inst|buffer1\(127) & !\inst|buffer1\(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(124),
	datab => \inst|buffer1\(125),
	datac => \inst|buffer1\(127),
	datad => \inst|buffer1\(126),
	combout => \inst|Equal39~0_combout\);

-- Location: LCCOMB_X36_Y5_N16
\inst|buffer1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~17_combout\ = (\inst|buffer1~8_combout\ & (\inst|Equal39~1_combout\ & (\inst|buffer1~16_combout\ & \inst|Equal39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~8_combout\,
	datab => \inst|Equal39~1_combout\,
	datac => \inst|buffer1~16_combout\,
	datad => \inst|Equal39~0_combout\,
	combout => \inst|buffer1~17_combout\);

-- Location: LCCOMB_X37_Y9_N4
\inst|Equal41~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~6_combout\ = (\inst|buffer1\(130) & (\inst|buffer1\(118) & (\inst|buffer1\(131) $ (!\inst|buffer1\(119))))) # (!\inst|buffer1\(130) & (!\inst|buffer1\(118) & (\inst|buffer1\(131) $ (!\inst|buffer1\(119)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(130),
	datab => \inst|buffer1\(118),
	datac => \inst|buffer1\(131),
	datad => \inst|buffer1\(119),
	combout => \inst|Equal41~6_combout\);

-- Location: FF_X43_Y9_N7
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

-- Location: LCCOMB_X43_Y9_N6
\inst2|buffer1[111]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(111) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(123)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(111)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(111),
	datac => \inst|bufferout\(123),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(111));

-- Location: LCCOMB_X43_Y9_N24
\inst2|bufferout[111]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(111) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(111)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(111)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|bufferout\(111),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|buffer1\(111),
	combout => \inst2|bufferout\(111));

-- Location: LCCOMB_X40_Y9_N6
\inst|buffer1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~45_combout\ = (!\inst|buffer1[113]~39_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(111)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst|buffer1[113]~39_combout\,
	datac => \ADC_IN[3]~input_o\,
	datad => \inst2|bufferout\(111),
	combout => \inst|buffer1~45_combout\);

-- Location: FF_X40_Y9_N21
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

-- Location: LCCOMB_X40_Y9_N20
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

-- Location: LCCOMB_X40_Y9_N8
\inst2|bufferout[108]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(108) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(108))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(108))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(108),
	datab => \inst2|bufferout\(108),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(108));

-- Location: LCCOMB_X40_Y9_N28
\inst|buffer1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~40_combout\ = (!\inst|buffer1[113]~39_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(108)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[0]~input_o\,
	datab => \inst|buffer1[113]~39_combout\,
	datac => \inst2|bufferout\(108),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~40_combout\);

-- Location: FF_X40_Y9_N29
\inst|buffer1[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~40_combout\,
	ena => \inst|buffer1[113]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(108));

-- Location: FF_X40_Y9_N11
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

-- Location: LCCOMB_X40_Y9_N10
\inst2|buffer1[109]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(109) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(121)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(109)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(109),
	datac => \inst|bufferout\(121),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(109));

-- Location: LCCOMB_X40_Y9_N30
\inst2|bufferout[109]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(109) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(109)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(109)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(109),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|buffer1\(109),
	combout => \inst2|bufferout\(109));

-- Location: LCCOMB_X40_Y9_N14
\inst|buffer1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~43_combout\ = (!\inst|buffer1[113]~39_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(109))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(109),
	datab => \inst|buffer1[113]~39_combout\,
	datac => \ADC_IN[1]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~43_combout\);

-- Location: FF_X40_Y9_N15
\inst|buffer1[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~43_combout\,
	ena => \inst|buffer1[113]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(109));

-- Location: FF_X43_Y9_N21
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

-- Location: LCCOMB_X43_Y9_N20
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

-- Location: LCCOMB_X43_Y9_N10
\inst2|bufferout[110]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(110) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(110))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(110))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(110),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(110),
	combout => \inst2|bufferout\(110));

-- Location: LCCOMB_X40_Y9_N12
\inst|buffer1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~44_combout\ = (!\inst|buffer1[113]~39_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(110)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[2]~input_o\,
	datab => \inst|buffer1[113]~39_combout\,
	datac => \inst2|bufferout\(110),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~44_combout\);

-- Location: FF_X40_Y9_N13
\inst|buffer1[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~44_combout\,
	ena => \inst|buffer1[113]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(110));

-- Location: LCCOMB_X40_Y9_N4
\inst|Equal35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal35~0_combout\ = (!\inst|buffer1\(111) & (!\inst|buffer1\(108) & (!\inst|buffer1\(109) & !\inst|buffer1\(110))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(111),
	datab => \inst|buffer1\(108),
	datac => \inst|buffer1\(109),
	datad => \inst|buffer1\(110),
	combout => \inst|Equal35~0_combout\);

-- Location: FF_X41_Y9_N3
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

-- Location: LCCOMB_X41_Y9_N2
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

-- Location: LCCOMB_X41_Y9_N14
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

-- Location: LCCOMB_X41_Y9_N12
\inst|buffer1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~47_combout\ = (!\inst|buffer1[113]~39_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(113)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[113]~39_combout\,
	datab => \ADC_IN[5]~input_o\,
	datac => \inst2|bufferout\(113),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~47_combout\);

-- Location: FF_X41_Y9_N13
\inst|buffer1[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~47_combout\,
	ena => \inst|buffer1[113]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(113));

-- Location: FF_X41_Y9_N19
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

-- Location: LCCOMB_X41_Y9_N18
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

-- Location: LCCOMB_X41_Y9_N26
\inst2|bufferout[115]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(115) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(115))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(115))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(115),
	datac => \inst2|bufferout\(115),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(115));

-- Location: LCCOMB_X41_Y9_N16
\inst|buffer1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~49_combout\ = (!\inst|buffer1[113]~39_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(115)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[113]~39_combout\,
	datab => \ADC_IN[7]~input_o\,
	datac => \inst2|bufferout\(115),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~49_combout\);

-- Location: FF_X41_Y9_N17
\inst|buffer1[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~49_combout\,
	ena => \inst|buffer1[113]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(115));

-- Location: FF_X41_Y9_N29
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

-- Location: LCCOMB_X41_Y9_N28
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

-- Location: LCCOMB_X41_Y9_N8
\inst2|bufferout[114]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(114) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(114))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(114))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(114),
	datac => \inst2|bufferout\(114),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(114));

-- Location: LCCOMB_X41_Y9_N30
\inst|buffer1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~48_combout\ = (!\inst|buffer1[113]~39_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(114)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[113]~39_combout\,
	datab => \ADC_IN[6]~input_o\,
	datac => \inst2|bufferout\(114),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~48_combout\);

-- Location: FF_X41_Y9_N31
\inst|buffer1[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~48_combout\,
	ena => \inst|buffer1[113]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(114));

-- Location: FF_X38_Y9_N21
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

-- Location: LCCOMB_X38_Y9_N20
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

-- Location: LCCOMB_X38_Y9_N22
\inst2|bufferout[112]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(112) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(112))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(112))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(112),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(112),
	combout => \inst2|bufferout\(112));

-- Location: LCCOMB_X40_Y9_N2
\inst|buffer1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~46_combout\ = (!\inst|buffer1[113]~39_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(112)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[4]~input_o\,
	datab => \inst|buffer1[113]~39_combout\,
	datac => \inst2|bufferout\(112),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~46_combout\);

-- Location: FF_X40_Y9_N3
\inst|buffer1[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~46_combout\,
	ena => \inst|buffer1[113]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(112));

-- Location: LCCOMB_X41_Y9_N10
\inst|Equal35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal35~1_combout\ = (!\inst|buffer1\(113) & (!\inst|buffer1\(115) & (!\inst|buffer1\(114) & !\inst|buffer1\(112))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(113),
	datab => \inst|buffer1\(115),
	datac => \inst|buffer1\(114),
	datad => \inst|buffer1\(112),
	combout => \inst|Equal35~1_combout\);

-- Location: FF_X41_Y9_N21
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

-- Location: LCCOMB_X41_Y9_N20
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

-- Location: LCCOMB_X41_Y9_N0
\inst2|bufferout[117]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(117) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(117))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(117))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(117),
	datab => \inst2|bufferout\(117),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(117));

-- Location: LCCOMB_X40_Y9_N0
\inst|buffer1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~51_combout\ = (!\inst|buffer1[113]~39_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(117)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[9]~input_o\,
	datab => \inst|buffer1[113]~39_combout\,
	datac => \inst2|bufferout\(117),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~51_combout\);

-- Location: FF_X40_Y9_N1
\inst|buffer1[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~51_combout\,
	ena => \inst|buffer1[113]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(117));

-- Location: LCCOMB_X37_Y9_N26
\inst|Equal35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal35~2_combout\ = (!\inst|buffer1\(116) & (!\inst|buffer1\(119) & (!\inst|buffer1\(118) & !\inst|buffer1\(117))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(116),
	datab => \inst|buffer1\(119),
	datac => \inst|buffer1\(118),
	datad => \inst|buffer1\(117),
	combout => \inst|Equal35~2_combout\);

-- Location: LCCOMB_X40_Y9_N22
\inst|Equal35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal35~3_combout\ = (\inst|Equal35~0_combout\ & (\inst|Equal35~1_combout\ & \inst|Equal35~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal35~0_combout\,
	datac => \inst|Equal35~1_combout\,
	datad => \inst|Equal35~2_combout\,
	combout => \inst|Equal35~3_combout\);

-- Location: LCCOMB_X36_Y7_N12
\inst|buffer1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~9_combout\ = (!\inst|counter\(1) & (\inst|counter\(4) & (\inst|buffer1~8_combout\ & \inst|Equal35~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(4),
	datac => \inst|buffer1~8_combout\,
	datad => \inst|Equal35~3_combout\,
	combout => \inst|buffer1~9_combout\);

-- Location: LCCOMB_X40_Y9_N16
\inst|buffer1[113]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[113]~41_combout\ = ((!\inst|buffer1[113]~38_combout\ & (!\inst1|OUTPUT\(3) & !\inst|buffer1~9_combout\))) # (!\inst1|OUTPUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[113]~38_combout\,
	datab => \inst1|OUTPUT\(3),
	datac => \inst1|OUTPUT\(1),
	datad => \inst|buffer1~9_combout\,
	combout => \inst|buffer1[113]~41_combout\);

-- Location: LCCOMB_X40_Y9_N18
\inst|buffer1[113]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[113]~42_combout\ = (\inst1|OUTPUT\(0)) # (!\inst|buffer1[113]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1[113]~41_combout\,
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[113]~42_combout\);

-- Location: FF_X40_Y9_N7
\inst|buffer1[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~45_combout\,
	ena => \inst|buffer1[113]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(111));

-- Location: LCCOMB_X39_Y9_N28
\inst|Equal41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~1_combout\ = (\inst|buffer1\(111) & (\inst|buffer1\(123) & (\inst|buffer1\(110) $ (!\inst|buffer1\(122))))) # (!\inst|buffer1\(111) & (!\inst|buffer1\(123) & (\inst|buffer1\(110) $ (!\inst|buffer1\(122)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(111),
	datab => \inst|buffer1\(123),
	datac => \inst|buffer1\(110),
	datad => \inst|buffer1\(122),
	combout => \inst|Equal41~1_combout\);

-- Location: LCCOMB_X38_Y9_N24
\inst|Equal41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~2_combout\ = (\inst|buffer1\(124) & (\inst|buffer1\(112) & (\inst|buffer1\(125) $ (!\inst|buffer1\(113))))) # (!\inst|buffer1\(124) & (!\inst|buffer1\(112) & (\inst|buffer1\(125) $ (!\inst|buffer1\(113)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(124),
	datab => \inst|buffer1\(125),
	datac => \inst|buffer1\(113),
	datad => \inst|buffer1\(112),
	combout => \inst|Equal41~2_combout\);

-- Location: LCCOMB_X40_Y9_N24
\inst|Equal41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~0_combout\ = (\inst|buffer1\(120) & (\inst|buffer1\(108) & (\inst|buffer1\(109) $ (!\inst|buffer1\(121))))) # (!\inst|buffer1\(120) & (!\inst|buffer1\(108) & (\inst|buffer1\(109) $ (!\inst|buffer1\(121)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(120),
	datab => \inst|buffer1\(108),
	datac => \inst|buffer1\(109),
	datad => \inst|buffer1\(121),
	combout => \inst|Equal41~0_combout\);

-- Location: LCCOMB_X38_Y9_N2
\inst|Equal41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~3_combout\ = (\inst|buffer1\(126) & (\inst|buffer1\(114) & (\inst|buffer1\(127) $ (!\inst|buffer1\(115))))) # (!\inst|buffer1\(126) & (!\inst|buffer1\(114) & (\inst|buffer1\(127) $ (!\inst|buffer1\(115)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(126),
	datab => \inst|buffer1\(127),
	datac => \inst|buffer1\(115),
	datad => \inst|buffer1\(114),
	combout => \inst|Equal41~3_combout\);

-- Location: LCCOMB_X37_Y9_N28
\inst|Equal41~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~4_combout\ = (\inst|Equal41~1_combout\ & (\inst|Equal41~2_combout\ & (\inst|Equal41~0_combout\ & \inst|Equal41~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal41~1_combout\,
	datab => \inst|Equal41~2_combout\,
	datac => \inst|Equal41~0_combout\,
	datad => \inst|Equal41~3_combout\,
	combout => \inst|Equal41~4_combout\);

-- Location: LCCOMB_X37_Y9_N30
\inst|Equal41~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~7_combout\ = (\inst|Equal41~5_combout\ & (\inst|Equal41~6_combout\ & \inst|Equal41~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal41~5_combout\,
	datac => \inst|Equal41~6_combout\,
	datad => \inst|Equal41~4_combout\,
	combout => \inst|Equal41~7_combout\);

-- Location: LCCOMB_X37_Y3_N16
\inst|Equal40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal40~0_combout\ = (\inst|counter\(2) & \inst|Equal32~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datac => \inst|Equal32~0_combout\,
	combout => \inst|Equal40~0_combout\);

-- Location: LCCOMB_X38_Y6_N20
\inst|buffer1[130]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[130]~134_combout\ = (!\inst|buffer1~17_combout\ & (!\inst1|OUTPUT\(3) & ((!\inst|Equal40~0_combout\) # (!\inst|Equal41~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~17_combout\,
	datab => \inst1|OUTPUT\(3),
	datac => \inst|Equal41~7_combout\,
	datad => \inst|Equal40~0_combout\,
	combout => \inst|buffer1[130]~134_combout\);

-- Location: LCCOMB_X38_Y6_N14
\inst|buffer1[130]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[130]~135_combout\ = (\inst1|OUTPUT\(0)) # ((!\inst|buffer1[130]~134_combout\ & \inst1|OUTPUT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buffer1[130]~134_combout\,
	datac => \inst1|OUTPUT\(1),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[130]~135_combout\);

-- Location: FF_X38_Y9_N31
\inst|buffer1[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~133_combout\,
	ena => \inst|buffer1[130]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(124));

-- Location: LCCOMB_X38_Y8_N14
\inst|Equal45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal45~2_combout\ = (\inst|buffer1\(137) & (\inst|buffer1\(125) & (\inst|buffer1\(136) $ (!\inst|buffer1\(124))))) # (!\inst|buffer1\(137) & (!\inst|buffer1\(125) & (\inst|buffer1\(136) $ (!\inst|buffer1\(124)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(137),
	datab => \inst|buffer1\(136),
	datac => \inst|buffer1\(124),
	datad => \inst|buffer1\(125),
	combout => \inst|Equal45~2_combout\);

-- Location: LCCOMB_X39_Y8_N16
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

-- Location: LCCOMB_X39_Y8_N26
\inst|Equal45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal45~1_combout\ = (\inst|buffer1\(122) & (\inst|buffer1\(134) & (\inst|buffer1\(123) $ (!\inst|buffer1\(135))))) # (!\inst|buffer1\(122) & (!\inst|buffer1\(134) & (\inst|buffer1\(123) $ (!\inst|buffer1\(135)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(122),
	datab => \inst|buffer1\(123),
	datac => \inst|buffer1\(135),
	datad => \inst|buffer1\(134),
	combout => \inst|Equal45~1_combout\);

-- Location: LCCOMB_X38_Y8_N24
\inst|Equal45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal45~3_combout\ = (\inst|buffer1\(138) & (\inst|buffer1\(126) & (\inst|buffer1\(139) $ (!\inst|buffer1\(127))))) # (!\inst|buffer1\(138) & (!\inst|buffer1\(126) & (\inst|buffer1\(139) $ (!\inst|buffer1\(127)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(138),
	datab => \inst|buffer1\(139),
	datac => \inst|buffer1\(127),
	datad => \inst|buffer1\(126),
	combout => \inst|Equal45~3_combout\);

-- Location: LCCOMB_X39_Y8_N4
\inst|Equal45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal45~4_combout\ = (\inst|Equal45~2_combout\ & (\inst|Equal45~0_combout\ & (\inst|Equal45~1_combout\ & \inst|Equal45~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal45~2_combout\,
	datab => \inst|Equal45~0_combout\,
	datac => \inst|Equal45~1_combout\,
	datad => \inst|Equal45~3_combout\,
	combout => \inst|Equal45~4_combout\);

-- Location: LCCOMB_X36_Y9_N18
\inst|Equal45~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal45~5_combout\ = (\inst|buffer1\(129) & (\inst|buffer1\(141) & (\inst|buffer1\(128) $ (!\inst|buffer1\(140))))) # (!\inst|buffer1\(129) & (!\inst|buffer1\(141) & (\inst|buffer1\(128) $ (!\inst|buffer1\(140)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(129),
	datab => \inst|buffer1\(128),
	datac => \inst|buffer1\(141),
	datad => \inst|buffer1\(140),
	combout => \inst|Equal45~5_combout\);

-- Location: LCCOMB_X37_Y8_N26
\inst|buffer1~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~161_combout\ = (\ADC_IN[11]~input_o\ & \inst|buffer1[143]~147_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[11]~input_o\,
	datad => \inst|buffer1[143]~147_combout\,
	combout => \inst|buffer1~161_combout\);

-- Location: FF_X37_Y8_N27
\inst|buffer1[143]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~161_combout\,
	ena => \inst|buffer1[143]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(143));

-- Location: LCCOMB_X37_Y8_N30
\inst|Equal45~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal45~6_combout\ = (\inst|buffer1\(131) & (\inst|buffer1\(143) & (\inst|buffer1\(142) $ (!\inst|buffer1\(130))))) # (!\inst|buffer1\(131) & (!\inst|buffer1\(143) & (\inst|buffer1\(142) $ (!\inst|buffer1\(130)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(131),
	datab => \inst|buffer1\(143),
	datac => \inst|buffer1\(142),
	datad => \inst|buffer1\(130),
	combout => \inst|Equal45~6_combout\);

-- Location: LCCOMB_X39_Y8_N18
\inst|Equal45~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal45~7_combout\ = (\inst|Equal45~4_combout\ & (\inst|Equal45~5_combout\ & \inst|Equal45~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal45~4_combout\,
	datac => \inst|Equal45~5_combout\,
	datad => \inst|Equal45~6_combout\,
	combout => \inst|Equal45~7_combout\);

-- Location: LCCOMB_X37_Y8_N18
\inst|buffer1[143]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[143]~149_combout\ = (!\inst1|OUTPUT\(3) & ((!\inst|Equal45~7_combout\) # (!\inst|Equal44~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(3),
	datac => \inst|Equal44~0_combout\,
	datad => \inst|Equal45~7_combout\,
	combout => \inst|buffer1[143]~149_combout\);

-- Location: LCCOMB_X37_Y8_N16
\inst|buffer1[143]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[143]~150_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & ((\inst|buffer1~18_combout\) # (!\inst|buffer1[143]~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst1|OUTPUT\(0),
	datac => \inst|buffer1[143]~149_combout\,
	datad => \inst|buffer1~18_combout\,
	combout => \inst|buffer1[143]~150_combout\);

-- Location: FF_X37_Y8_N1
\inst|buffer1[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~158_combout\,
	ena => \inst|buffer1[143]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(140));

-- Location: FF_X36_Y9_N21
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

-- Location: LCCOMB_X36_Y9_N20
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

-- Location: LCCOMB_X36_Y9_N8
\inst2|bufferout[128]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(128) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(128))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(128))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(128),
	datac => \inst2|bufferout\(128),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(128));

-- Location: LCCOMB_X36_Y9_N16
\inst|buffer1~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~139_combout\ = (!\inst|buffer1[130]~132_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(128)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datab => \inst|buffer1[130]~132_combout\,
	datac => \inst2|bufferout\(128),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~139_combout\);

-- Location: FF_X36_Y9_N17
\inst|buffer1[128]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~139_combout\,
	ena => \inst|buffer1[130]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(128));

-- Location: FF_X37_Y9_N21
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

-- Location: LCCOMB_X37_Y9_N20
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

-- Location: LCCOMB_X37_Y9_N8
\inst2|bufferout[116]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(116) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(116))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(116))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(116),
	datac => \inst2|bufferout\(116),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(116));

-- Location: LCCOMB_X37_Y9_N12
\inst|buffer1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~50_combout\ = (!\inst|buffer1[113]~39_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(116)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datab => \inst|buffer1[113]~39_combout\,
	datac => \inst2|bufferout\(116),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~50_combout\);

-- Location: FF_X37_Y9_N13
\inst|buffer1[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~50_combout\,
	ena => \inst|buffer1[113]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(116));

-- Location: FF_X38_Y8_N5
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

-- Location: LCCOMB_X38_Y8_N4
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

-- Location: LCCOMB_X38_Y8_N30
\inst2|bufferout[104]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(104) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(104))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(104))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(104),
	datac => \inst2|bufferout\(104),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(104));

-- Location: LCCOMB_X39_Y7_N16
\inst|buffer1[96]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[96]~117_combout\ = (\inst1|OUTPUT\(0)) # ((!\inst1|OUTPUT\(3) & \inst|buffer1~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(3),
	datac => \inst1|OUTPUT\(0),
	datad => \inst|buffer1~36_combout\,
	combout => \inst|buffer1[96]~117_combout\);

-- Location: LCCOMB_X40_Y7_N4
\inst|buffer1~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~128_combout\ = (!\inst|buffer1[96]~117_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(104)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datab => \inst2|bufferout\(104),
	datac => \inst|buffer1[96]~117_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~128_combout\);

-- Location: LCCOMB_X37_Y6_N14
\inst|buffer1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~11_combout\ = (\inst|counter\(3) & (\inst|counter\(0) & !\inst|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datac => \inst|counter\(0),
	datad => \inst|counter\(4),
	combout => \inst|buffer1~11_combout\);

-- Location: FF_X41_Y7_N21
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

-- Location: LCCOMB_X41_Y7_N20
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

-- Location: LCCOMB_X41_Y7_N26
\inst2|bufferout[99]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(99) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(99))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(99))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(99),
	datac => \inst2|bufferout\(99),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(99));

-- Location: LCCOMB_X40_Y7_N18
\inst|buffer1~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~123_combout\ = (!\inst|buffer1[96]~117_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(99)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[3]~input_o\,
	datab => \inst2|bufferout\(99),
	datac => \inst|buffer1[96]~117_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~123_combout\);

-- Location: FF_X40_Y7_N19
\inst|buffer1[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~123_combout\,
	ena => \inst|buffer1[96]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(99));

-- Location: FF_X43_Y7_N7
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

-- Location: LCCOMB_X43_Y7_N6
\inst2|buffer1[97]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(97) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(109)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(97)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(97),
	datac => \inst|bufferout\(109),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(97));

-- Location: LCCOMB_X43_Y7_N16
\inst2|bufferout[97]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(97) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(97))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(97))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(97),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(97),
	combout => \inst2|bufferout\(97));

-- Location: LCCOMB_X40_Y7_N2
\inst|buffer1~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~121_combout\ = (!\inst|buffer1[96]~117_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(97)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[1]~input_o\,
	datab => \inst|buffer1[96]~117_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(97),
	combout => \inst|buffer1~121_combout\);

-- Location: FF_X40_Y7_N3
\inst|buffer1[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~121_combout\,
	ena => \inst|buffer1[96]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(97));

-- Location: FF_X41_Y7_N11
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

-- Location: LCCOMB_X41_Y7_N10
\inst2|buffer1[98]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(98) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(110)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(98)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(98),
	datac => \inst|bufferout\(110),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(98));

-- Location: LCCOMB_X41_Y7_N28
\inst2|bufferout[98]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(98) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(98))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(98))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(98),
	datac => \inst2|bufferout\(98),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(98));

-- Location: LCCOMB_X40_Y7_N8
\inst|buffer1~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~122_combout\ = (!\inst|buffer1[96]~117_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(98)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[2]~input_o\,
	datab => \inst2|bufferout\(98),
	datac => \inst|buffer1[96]~117_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~122_combout\);

-- Location: FF_X40_Y7_N9
\inst|buffer1[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~122_combout\,
	ena => \inst|buffer1[96]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(98));

-- Location: FF_X43_Y7_N25
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

-- Location: LCCOMB_X43_Y7_N24
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

-- Location: LCCOMB_X43_Y7_N22
\inst2|bufferout[96]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(96) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(96))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(96))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(96),
	datac => \inst2|bufferout\(96),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(96));

-- Location: LCCOMB_X40_Y7_N20
\inst|buffer1~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~118_combout\ = (!\inst|buffer1[96]~117_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(96)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[0]~input_o\,
	datab => \inst|buffer1[96]~117_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(96),
	combout => \inst|buffer1~118_combout\);

-- Location: FF_X40_Y7_N21
\inst|buffer1[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~118_combout\,
	ena => \inst|buffer1[96]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(96));

-- Location: LCCOMB_X40_Y7_N12
\inst|Equal31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal31~0_combout\ = (!\inst|buffer1\(99) & (!\inst|buffer1\(97) & (!\inst|buffer1\(98) & !\inst|buffer1\(96))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(99),
	datab => \inst|buffer1\(97),
	datac => \inst|buffer1\(98),
	datad => \inst|buffer1\(96),
	combout => \inst|Equal31~0_combout\);

-- Location: FF_X41_Y9_N7
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

-- Location: LCCOMB_X41_Y9_N6
\inst2|buffer1[105]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(105) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(117)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(105)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(105),
	datac => \inst|bufferout\(117),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(105));

-- Location: LCCOMB_X41_Y9_N22
\inst2|bufferout[105]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(105) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(105))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(105))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(105),
	datac => \inst2|bufferout\(105),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(105));

-- Location: LCCOMB_X40_Y7_N22
\inst|buffer1~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~129_combout\ = (!\inst|buffer1[96]~117_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(105)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[9]~input_o\,
	datab => \inst2|bufferout\(105),
	datac => \inst|buffer1[96]~117_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~129_combout\);

-- Location: FF_X40_Y7_N23
\inst|buffer1[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~129_combout\,
	ena => \inst|buffer1[96]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(105));

-- Location: LCCOMB_X40_Y7_N14
\inst|Equal31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal31~2_combout\ = (!\inst|buffer1\(105) & (!\inst|buffer1\(107) & (!\inst|buffer1\(104) & !\inst|buffer1\(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(105),
	datab => \inst|buffer1\(107),
	datac => \inst|buffer1\(104),
	datad => \inst|buffer1\(106),
	combout => \inst|Equal31~2_combout\);

-- Location: FF_X38_Y9_N5
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

-- Location: LCCOMB_X38_Y9_N4
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

-- Location: LCCOMB_X38_Y9_N6
\inst2|bufferout[100]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(100) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(100))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(100))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(100),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(100),
	combout => \inst2|bufferout\(100));

-- Location: LCCOMB_X40_Y7_N30
\inst|buffer1~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~124_combout\ = (!\inst|buffer1[96]~117_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(100)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[4]~input_o\,
	datac => \inst|buffer1[96]~117_combout\,
	datad => \inst2|bufferout\(100),
	combout => \inst|buffer1~124_combout\);

-- Location: FF_X40_Y7_N31
\inst|buffer1[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~124_combout\,
	ena => \inst|buffer1[96]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(100));

-- Location: FF_X38_Y9_N29
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

-- Location: LCCOMB_X38_Y9_N28
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

-- Location: LCCOMB_X38_Y9_N8
\inst2|bufferout[101]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(101) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(101))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(101),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(101),
	combout => \inst2|bufferout\(101));

-- Location: LCCOMB_X40_Y7_N16
\inst|buffer1~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~125_combout\ = (!\inst|buffer1[96]~117_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(101)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[5]~input_o\,
	datac => \inst|buffer1[96]~117_combout\,
	datad => \inst2|bufferout\(101),
	combout => \inst|buffer1~125_combout\);

-- Location: FF_X40_Y7_N17
\inst|buffer1[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~125_combout\,
	ena => \inst|buffer1[96]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(101));

-- Location: FF_X39_Y7_N25
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

-- Location: LCCOMB_X39_Y7_N24
\inst2|buffer1[103]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(103) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(115)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(103)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(103),
	datac => \inst|bufferout\(115),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(103));

-- Location: LCCOMB_X39_Y7_N14
\inst2|bufferout[103]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(103) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(103))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(103))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(103),
	datac => \inst2|bufferout\(103),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(103));

-- Location: LCCOMB_X39_Y7_N0
\inst|buffer1~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~127_combout\ = (!\inst|buffer1[96]~117_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(103)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[7]~input_o\,
	datab => \inst2|bufferout\(103),
	datac => \inst|buffer1[96]~117_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~127_combout\);

-- Location: FF_X39_Y7_N1
\inst|buffer1[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~127_combout\,
	ena => \inst|buffer1[96]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(103));

-- Location: FF_X39_Y7_N3
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

-- Location: LCCOMB_X39_Y7_N2
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

-- Location: LCCOMB_X39_Y7_N8
\inst2|bufferout[102]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(102) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(102))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(102))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(102),
	datac => \inst2|bufferout\(102),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(102));

-- Location: LCCOMB_X39_Y7_N18
\inst|buffer1~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~126_combout\ = (!\inst|buffer1[96]~117_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(102)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[6]~input_o\,
	datab => \inst2|bufferout\(102),
	datac => \inst|buffer1[96]~117_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~126_combout\);

-- Location: FF_X39_Y7_N19
\inst|buffer1[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~126_combout\,
	ena => \inst|buffer1[96]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(102));

-- Location: LCCOMB_X40_Y7_N6
\inst|Equal31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal31~1_combout\ = (!\inst|buffer1\(100) & (!\inst|buffer1\(101) & (!\inst|buffer1\(103) & !\inst|buffer1\(102))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(100),
	datab => \inst|buffer1\(101),
	datac => \inst|buffer1\(103),
	datad => \inst|buffer1\(102),
	combout => \inst|Equal31~1_combout\);

-- Location: LCCOMB_X40_Y7_N24
\inst|Equal31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal31~3_combout\ = (\inst|Equal31~0_combout\ & (\inst|Equal31~2_combout\ & \inst|Equal31~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal31~0_combout\,
	datac => \inst|Equal31~2_combout\,
	datad => \inst|Equal31~1_combout\,
	combout => \inst|Equal31~3_combout\);

-- Location: LCCOMB_X40_Y7_N26
\inst|buffer1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~15_combout\ = (\inst|counter\(2) & (\inst|counter\(1) & (\inst|buffer1~11_combout\ & \inst|Equal31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|buffer1~11_combout\,
	datad => \inst|Equal31~3_combout\,
	combout => \inst|buffer1~15_combout\);

-- Location: FF_X38_Y7_N29
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

-- Location: LCCOMB_X38_Y7_N28
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

-- Location: LCCOMB_X38_Y7_N8
\inst2|bufferout[93]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(93) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(93))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(93))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(93),
	datac => \inst2|bufferout\(93),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(93));

-- Location: LCCOMB_X38_Y7_N4
\inst|buffer1~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~79_combout\ = (!\inst|buffer1[89]~71_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(93))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[89]~71_combout\,
	datab => \inst2|bufferout\(93),
	datac => \ADC_IN[9]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~79_combout\);

-- Location: LCCOMB_X38_Y6_N4
\inst|buffer1[89]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[89]~73_combout\ = (!\inst1|OUTPUT\(3) & (!\inst|buffer1~12_combout\ & ((!\inst|Equal28~0_combout\) # (!\inst|Equal29~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal29~7_combout\,
	datab => \inst1|OUTPUT\(3),
	datac => \inst|buffer1~12_combout\,
	datad => \inst|Equal28~0_combout\,
	combout => \inst|buffer1[89]~73_combout\);

-- Location: LCCOMB_X38_Y6_N12
\inst|buffer1[89]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[89]~74_combout\ = (\inst1|OUTPUT\(0)) # ((!\inst|buffer1[89]~73_combout\ & \inst1|OUTPUT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[89]~73_combout\,
	datab => \inst1|OUTPUT\(1),
	datac => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[89]~74_combout\);

-- Location: FF_X38_Y7_N5
\inst|buffer1[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~79_combout\,
	ena => \inst|buffer1[89]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(93));

-- Location: LCCOMB_X38_Y7_N24
\inst|Equal33~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~5_combout\ = (\inst|buffer1\(92) & (\inst|buffer1\(104) & (\inst|buffer1\(93) $ (!\inst|buffer1\(105))))) # (!\inst|buffer1\(92) & (!\inst|buffer1\(104) & (\inst|buffer1\(93) $ (!\inst|buffer1\(105)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(92),
	datab => \inst|buffer1\(93),
	datac => \inst|buffer1\(104),
	datad => \inst|buffer1\(105),
	combout => \inst|Equal33~5_combout\);

-- Location: FF_X41_Y7_N3
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

-- Location: LCCOMB_X41_Y7_N2
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

-- Location: LCCOMB_X41_Y7_N0
\inst2|bufferout[90]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(90) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(90)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(90)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(90),
	datab => \inst2|buffer1\(90),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(90));

-- Location: LCCOMB_X38_Y7_N16
\inst|buffer1~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~76_combout\ = (!\inst|buffer1[89]~71_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(90)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[89]~71_combout\,
	datab => \ADC_IN[6]~input_o\,
	datac => \inst2|bufferout\(90),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~76_combout\);

-- Location: FF_X38_Y7_N17
\inst|buffer1[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~76_combout\,
	ena => \inst|buffer1[89]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(90));

-- Location: FF_X40_Y6_N11
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

-- Location: LCCOMB_X40_Y6_N10
\inst2|buffer1[91]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(91) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(103)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(91)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(91),
	datac => \inst|bufferout\(103),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(91));

-- Location: LCCOMB_X40_Y6_N14
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

-- Location: LCCOMB_X40_Y6_N12
\inst|buffer1~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~77_combout\ = (!\inst|buffer1[89]~71_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(91))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst2|bufferout\(91),
	datac => \ADC_IN[7]~input_o\,
	datad => \inst|buffer1[89]~71_combout\,
	combout => \inst|buffer1~77_combout\);

-- Location: FF_X40_Y6_N13
\inst|buffer1[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~77_combout\,
	ena => \inst|buffer1[89]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(91));

-- Location: LCCOMB_X36_Y7_N26
\inst|Equal33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~3_combout\ = (\inst|buffer1\(102) & (\inst|buffer1\(90) & (\inst|buffer1\(103) $ (!\inst|buffer1\(91))))) # (!\inst|buffer1\(102) & (!\inst|buffer1\(90) & (\inst|buffer1\(103) $ (!\inst|buffer1\(91)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(102),
	datab => \inst|buffer1\(90),
	datac => \inst|buffer1\(103),
	datad => \inst|buffer1\(91),
	combout => \inst|Equal33~3_combout\);

-- Location: FF_X41_Y7_N25
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

-- Location: LCCOMB_X41_Y7_N24
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

-- Location: LCCOMB_X41_Y7_N30
\inst2|bufferout[86]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(86) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(86))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(86))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(86),
	datac => \inst2|bufferout\(86),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(86));

-- Location: LCCOMB_X39_Y3_N26
\inst|buffer1~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~84_combout\ = (!\inst|buffer1[89]~71_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(86)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[2]~input_o\,
	datac => \inst|buffer1[89]~71_combout\,
	datad => \inst2|bufferout\(86),
	combout => \inst|buffer1~84_combout\);

-- Location: FF_X39_Y3_N27
\inst|buffer1[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~84_combout\,
	ena => \inst|buffer1[89]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(86));

-- Location: FF_X38_Y7_N11
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

-- Location: LCCOMB_X38_Y7_N10
\inst2|buffer1[87]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(87) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(99)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(87)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(87),
	datac => \inst|bufferout\(99),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(87));

-- Location: LCCOMB_X38_Y7_N22
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

-- Location: LCCOMB_X39_Y3_N24
\inst|buffer1~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~85_combout\ = (!\inst|buffer1[89]~71_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(87)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[3]~input_o\,
	datac => \inst|buffer1[89]~71_combout\,
	datad => \inst2|bufferout\(87),
	combout => \inst|buffer1~85_combout\);

-- Location: FF_X39_Y3_N25
\inst|buffer1[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~85_combout\,
	ena => \inst|buffer1[89]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(87));

-- Location: LCCOMB_X36_Y7_N20
\inst|Equal33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~1_combout\ = (\inst|buffer1\(86) & (\inst|buffer1\(98) & (\inst|buffer1\(99) $ (!\inst|buffer1\(87))))) # (!\inst|buffer1\(86) & (!\inst|buffer1\(98) & (\inst|buffer1\(99) $ (!\inst|buffer1\(87)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(86),
	datab => \inst|buffer1\(99),
	datac => \inst|buffer1\(98),
	datad => \inst|buffer1\(87),
	combout => \inst|Equal33~1_combout\);

-- Location: FF_X40_Y5_N25
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

-- Location: LCCOMB_X40_Y5_N24
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

-- Location: LCCOMB_X40_Y5_N8
\inst2|bufferout[84]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(84) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(84))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(84))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(84),
	datac => \inst2|bufferout\(84),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(84));

-- Location: LCCOMB_X39_Y3_N30
\inst|buffer1~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~82_combout\ = (!\inst|buffer1[89]~71_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(84)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst|buffer1[89]~71_combout\,
	datac => \ADC_IN[0]~input_o\,
	datad => \inst2|bufferout\(84),
	combout => \inst|buffer1~82_combout\);

-- Location: FF_X39_Y3_N31
\inst|buffer1[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~82_combout\,
	ena => \inst|buffer1[89]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(84));

-- Location: FF_X40_Y5_N7
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

-- Location: LCCOMB_X40_Y5_N6
\inst2|buffer1[85]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(85) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(97)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(85)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(85),
	datac => \inst|bufferout\(97),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(85));

-- Location: LCCOMB_X40_Y5_N22
\inst2|bufferout[85]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(85) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(85))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(85))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(85),
	datac => \inst2|bufferout\(85),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(85));

-- Location: LCCOMB_X39_Y3_N20
\inst|buffer1~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~83_combout\ = (!\inst|buffer1[89]~71_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(85)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[1]~input_o\,
	datac => \inst|buffer1[89]~71_combout\,
	datad => \inst2|bufferout\(85),
	combout => \inst|buffer1~83_combout\);

-- Location: FF_X39_Y3_N21
\inst|buffer1[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~83_combout\,
	ena => \inst|buffer1[89]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(85));

-- Location: LCCOMB_X36_Y7_N22
\inst|Equal33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~0_combout\ = (\inst|buffer1\(97) & (\inst|buffer1\(85) & (\inst|buffer1\(84) $ (!\inst|buffer1\(96))))) # (!\inst|buffer1\(97) & (!\inst|buffer1\(85) & (\inst|buffer1\(84) $ (!\inst|buffer1\(96)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(97),
	datab => \inst|buffer1\(84),
	datac => \inst|buffer1\(85),
	datad => \inst|buffer1\(96),
	combout => \inst|Equal33~0_combout\);

-- Location: FF_X40_Y6_N3
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

-- Location: LCCOMB_X40_Y6_N2
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

-- Location: LCCOMB_X40_Y6_N22
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

-- Location: LCCOMB_X40_Y6_N28
\inst|buffer1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~72_combout\ = (!\inst|buffer1[89]~71_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(88))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(88),
	datab => \ADC_IN[4]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[89]~71_combout\,
	combout => \inst|buffer1~72_combout\);

-- Location: FF_X40_Y6_N29
\inst|buffer1[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~72_combout\,
	ena => \inst|buffer1[89]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(88));

-- Location: FF_X40_Y6_N25
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

-- Location: LCCOMB_X40_Y6_N24
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

-- Location: LCCOMB_X40_Y6_N8
\inst2|bufferout[89]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(89) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(89))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(89))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(89),
	datac => \inst2|bufferout\(89),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(89));

-- Location: LCCOMB_X40_Y6_N26
\inst|buffer1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~75_combout\ = (!\inst|buffer1[89]~71_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(89)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[5]~input_o\,
	datab => \inst2|bufferout\(89),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[89]~71_combout\,
	combout => \inst|buffer1~75_combout\);

-- Location: FF_X40_Y6_N27
\inst|buffer1[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~75_combout\,
	ena => \inst|buffer1[89]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(89));

-- Location: LCCOMB_X40_Y6_N30
\inst|Equal33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~2_combout\ = (\inst|buffer1\(100) & (\inst|buffer1\(88) & (\inst|buffer1\(89) $ (!\inst|buffer1\(101))))) # (!\inst|buffer1\(100) & (!\inst|buffer1\(88) & (\inst|buffer1\(89) $ (!\inst|buffer1\(101)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(100),
	datab => \inst|buffer1\(88),
	datac => \inst|buffer1\(89),
	datad => \inst|buffer1\(101),
	combout => \inst|Equal33~2_combout\);

-- Location: LCCOMB_X36_Y7_N8
\inst|Equal33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~4_combout\ = (\inst|Equal33~3_combout\ & (\inst|Equal33~1_combout\ & (\inst|Equal33~0_combout\ & \inst|Equal33~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal33~3_combout\,
	datab => \inst|Equal33~1_combout\,
	datac => \inst|Equal33~0_combout\,
	datad => \inst|Equal33~2_combout\,
	combout => \inst|Equal33~4_combout\);

-- Location: LCCOMB_X37_Y7_N4
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

-- Location: LCCOMB_X38_Y6_N26
\inst|buffer1[96]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[96]~119_combout\ = (!\inst1|OUTPUT\(3) & (!\inst|buffer1~15_combout\ & ((!\inst|Equal33~7_combout\) # (!\inst|Equal32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst|buffer1~15_combout\,
	datac => \inst|Equal32~1_combout\,
	datad => \inst|Equal33~7_combout\,
	combout => \inst|buffer1[96]~119_combout\);

-- Location: LCCOMB_X38_Y6_N24
\inst|buffer1[96]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[96]~120_combout\ = (\inst1|OUTPUT\(0)) # ((!\inst|buffer1[96]~119_combout\ & \inst1|OUTPUT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[96]~119_combout\,
	datab => \inst1|OUTPUT\(1),
	datac => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[96]~120_combout\);

-- Location: FF_X40_Y7_N5
\inst|buffer1[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~128_combout\,
	ena => \inst|buffer1[96]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(104));

-- Location: FF_X38_Y7_N19
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

-- Location: LCCOMB_X38_Y7_N18
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

-- Location: LCCOMB_X38_Y7_N26
\inst2|bufferout[92]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(92) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(92))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(92))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(92),
	datac => \inst2|bufferout\(92),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(92));

-- Location: LCCOMB_X38_Y7_N6
\inst|buffer1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~78_combout\ = (!\inst|buffer1[89]~71_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(92)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[89]~71_combout\,
	datab => \ADC_IN[8]~input_o\,
	datac => \inst2|bufferout\(92),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~78_combout\);

-- Location: FF_X38_Y7_N7
\inst|buffer1[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~78_combout\,
	ena => \inst|buffer1[89]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(92));

-- Location: FF_X40_Y4_N11
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

-- Location: LCCOMB_X40_Y4_N10
\inst2|buffer1[83]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(83) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(95)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(83)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(83),
	datac => \inst|bufferout\(95),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(83));

-- Location: LCCOMB_X40_Y4_N14
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

-- Location: LCCOMB_X40_Y4_N26
\inst|buffer1~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~206_combout\ = (!\inst|buffer1[83]~192_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(83)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[11]~input_o\,
	datac => \inst2|bufferout\(83),
	datad => \inst|buffer1[83]~192_combout\,
	combout => \inst|buffer1~206_combout\);

-- Location: LCCOMB_X38_Y5_N26
\inst|Equal24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal24~1_combout\ = (\inst|counter\(2) & (!\inst|counter\(1) & \inst|Equal16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(2),
	datac => \inst|counter\(1),
	datad => \inst|Equal16~0_combout\,
	combout => \inst|Equal24~1_combout\);

-- Location: LCCOMB_X35_Y4_N16
\inst|buffer1[83]~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[83]~194_combout\ = (!\inst1|OUTPUT\(0) & (((!\inst|Equal25~7_combout\) # (!\inst|Equal24~1_combout\)) # (!\inst1|OUTPUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst1|OUTPUT\(1),
	datac => \inst|Equal24~1_combout\,
	datad => \inst|Equal25~7_combout\,
	combout => \inst|buffer1[83]~194_combout\);

-- Location: LCCOMB_X35_Y4_N6
\inst|buffer1[83]~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[83]~195_combout\ = ((\inst1|OUTPUT\(1) & ((\inst|buffer1~21_combout\) # (\inst1|OUTPUT\(3))))) # (!\inst|buffer1[83]~194_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst|buffer1[83]~194_combout\,
	datac => \inst|buffer1~21_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1[83]~195_combout\);

-- Location: FF_X40_Y4_N27
\inst|buffer1[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~206_combout\,
	ena => \inst|buffer1[83]~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(83));

-- Location: FF_X39_Y5_N7
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

-- Location: LCCOMB_X39_Y5_N6
\inst2|buffer1[71]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(71) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(83)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(71)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(71),
	datac => \inst|bufferout\(83),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(71));

-- Location: LCCOMB_X39_Y5_N4
\inst2|bufferout[71]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(71) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(71))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(71))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(71),
	datac => \inst2|bufferout\(71),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(71));

-- Location: LCCOMB_X39_Y5_N26
\inst|buffer1~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~116_combout\ = (!\inst|buffer1[62]~102_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(71)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[11]~input_o\,
	datab => \inst2|bufferout\(71),
	datac => \inst|buffer1[62]~102_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~116_combout\);

-- Location: FF_X39_Y7_N11
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

-- Location: LCCOMB_X39_Y7_N10
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

-- Location: LCCOMB_X39_Y7_N26
\inst2|bufferout[94]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(94) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(94))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(94))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(94),
	datac => \inst2|bufferout\(94),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(94));

-- Location: LCCOMB_X38_Y7_N30
\inst|buffer1~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~80_combout\ = (!\inst|buffer1[89]~71_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(94)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[89]~71_combout\,
	datab => \ADC_IN[10]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(94),
	combout => \inst|buffer1~80_combout\);

-- Location: FF_X38_Y7_N31
\inst|buffer1[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~80_combout\,
	ena => \inst|buffer1[89]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(94));

-- Location: FF_X43_Y7_N5
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

-- Location: LCCOMB_X43_Y7_N4
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

-- Location: LCCOMB_X43_Y7_N26
\inst2|bufferout[82]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(82) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(82))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(82))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(82),
	datac => \inst2|bufferout\(82),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(82));

-- Location: LCCOMB_X40_Y4_N20
\inst|buffer1~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~205_combout\ = (!\inst|buffer1[83]~192_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(82)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[10]~input_o\,
	datab => \inst|buffer1[83]~192_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(82),
	combout => \inst|buffer1~205_combout\);

-- Location: FF_X40_Y4_N21
\inst|buffer1[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~205_combout\,
	ena => \inst|buffer1[83]~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(82));

-- Location: FF_X39_Y5_N21
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

-- Location: LCCOMB_X39_Y5_N20
\inst2|buffer1[70]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(70) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(82)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(70)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(70),
	datac => \inst|bufferout\(82),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(70));

-- Location: LCCOMB_X39_Y5_N18
\inst2|bufferout[70]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(70) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(70))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(70))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(70),
	datab => \inst2|bufferout\(70),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(70));

-- Location: LCCOMB_X39_Y5_N16
\inst|buffer1~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~115_combout\ = (!\inst|buffer1[62]~102_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(70)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[10]~input_o\,
	datab => \inst1|OUTPUT\(3),
	datac => \inst|buffer1[62]~102_combout\,
	datad => \inst2|bufferout\(70),
	combout => \inst|buffer1~115_combout\);

-- Location: FF_X39_Y5_N17
\inst|buffer1[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~115_combout\,
	ena => \inst|buffer1[62]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(70));

-- Location: FF_X41_Y4_N3
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

-- Location: LCCOMB_X41_Y4_N2
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

-- Location: LCCOMB_X41_Y4_N22
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

-- Location: LCCOMB_X41_Y4_N14
\inst|buffer1~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~114_combout\ = (!\inst|buffer1[62]~102_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(69)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[9]~input_o\,
	datac => \inst2|bufferout\(69),
	datad => \inst|buffer1[62]~102_combout\,
	combout => \inst|buffer1~114_combout\);

-- Location: FF_X41_Y4_N15
\inst|buffer1[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~114_combout\,
	ena => \inst|buffer1[62]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(69));

-- Location: LCCOMB_X38_Y4_N26
\inst|Equal19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal19~2_combout\ = (!\inst|buffer1\(70) & (!\inst|buffer1\(68) & (!\inst|buffer1\(69) & !\inst|buffer1\(71))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(70),
	datab => \inst|buffer1\(68),
	datac => \inst|buffer1\(69),
	datad => \inst|buffer1\(71),
	combout => \inst|Equal19~2_combout\);

-- Location: FF_X40_Y4_N29
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

-- Location: LCCOMB_X40_Y4_N28
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

-- Location: LCCOMB_X40_Y4_N8
\inst2|bufferout[74]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(74) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(74))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(74))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(74),
	datac => \inst2|bufferout\(74),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(74));

-- Location: LCCOMB_X40_Y4_N18
\inst|buffer1~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~197_combout\ = (!\inst|buffer1[83]~192_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(74)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[2]~input_o\,
	datab => \inst2|bufferout\(74),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[83]~192_combout\,
	combout => \inst|buffer1~197_combout\);

-- Location: FF_X40_Y4_N19
\inst|buffer1[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~197_combout\,
	ena => \inst|buffer1[83]~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(74));

-- Location: FF_X41_Y4_N21
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

-- Location: LCCOMB_X41_Y4_N20
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

-- Location: LCCOMB_X41_Y4_N4
\inst2|bufferout[62]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(62) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(62))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(62),
	datac => \inst2|bufferout\(62),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(62));

-- Location: LCCOMB_X41_Y4_N12
\inst|buffer1~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~107_combout\ = (!\inst|buffer1[62]~102_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(62)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[2]~input_o\,
	datac => \inst2|bufferout\(62),
	datad => \inst|buffer1[62]~102_combout\,
	combout => \inst|buffer1~107_combout\);

-- Location: FF_X41_Y4_N13
\inst|buffer1[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~107_combout\,
	ena => \inst|buffer1[62]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(62));

-- Location: FF_X40_Y4_N3
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

-- Location: LCCOMB_X40_Y4_N2
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

-- Location: LCCOMB_X40_Y4_N30
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

-- Location: LCCOMB_X40_Y4_N12
\inst|buffer1~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~198_combout\ = (!\inst|buffer1[83]~192_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(75))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(75),
	datab => \ADC_IN[3]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[83]~192_combout\,
	combout => \inst|buffer1~198_combout\);

-- Location: FF_X40_Y4_N13
\inst|buffer1[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~198_combout\,
	ena => \inst|buffer1[83]~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(75));

-- Location: FF_X41_Y4_N11
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

-- Location: LCCOMB_X41_Y4_N10
\inst2|buffer1[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(63) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(75)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(63)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(63),
	datac => \inst|bufferout\(75),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(63));

-- Location: LCCOMB_X41_Y4_N26
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

-- Location: LCCOMB_X41_Y4_N18
\inst|buffer1~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~108_combout\ = (!\inst|buffer1[62]~102_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(63)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[3]~input_o\,
	datac => \inst2|bufferout\(63),
	datad => \inst|buffer1[62]~102_combout\,
	combout => \inst|buffer1~108_combout\);

-- Location: FF_X41_Y4_N19
\inst|buffer1[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~108_combout\,
	ena => \inst|buffer1[62]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(63));

-- Location: FF_X40_Y5_N21
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

-- Location: LCCOMB_X40_Y5_N20
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

-- Location: LCCOMB_X40_Y5_N0
\inst2|bufferout[72]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(72) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(72))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(72))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(72),
	datab => \inst2|bufferout\(72),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(72));

-- Location: LCCOMB_X40_Y5_N16
\inst|buffer1~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~193_combout\ = (!\inst|buffer1[83]~192_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(72)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[83]~192_combout\,
	datab => \inst1|OUTPUT\(3),
	datac => \ADC_IN[0]~input_o\,
	datad => \inst2|bufferout\(72),
	combout => \inst|buffer1~193_combout\);

-- Location: FF_X40_Y5_N17
\inst|buffer1[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~193_combout\,
	ena => \inst|buffer1[83]~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(72));

-- Location: FF_X38_Y3_N21
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

-- Location: LCCOMB_X38_Y3_N20
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

-- Location: LCCOMB_X38_Y3_N8
\inst2|bufferout[60]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(60) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(60))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(60),
	datac => \inst2|bufferout\(60),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(60));

-- Location: LCCOMB_X38_Y3_N16
\inst|buffer1~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~103_combout\ = (!\inst|buffer1[62]~102_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(60)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[0]~input_o\,
	datab => \inst2|bufferout\(60),
	datac => \inst|buffer1[62]~102_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~103_combout\);

-- Location: FF_X38_Y3_N17
\inst|buffer1[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~103_combout\,
	ena => \inst|buffer1[62]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(60));

-- Location: FF_X40_Y5_N11
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

-- Location: LCCOMB_X40_Y5_N10
\inst2|buffer1[73]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(73) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(85)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(73)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(73),
	datac => \inst|bufferout\(85),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(73));

-- Location: LCCOMB_X40_Y5_N30
\inst2|bufferout[73]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(73) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(73))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(73))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(73),
	datac => \inst2|bufferout\(73),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(73));

-- Location: LCCOMB_X40_Y4_N16
\inst|buffer1~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~196_combout\ = (!\inst|buffer1[83]~192_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(73)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[1]~input_o\,
	datac => \inst2|bufferout\(73),
	datad => \inst|buffer1[83]~192_combout\,
	combout => \inst|buffer1~196_combout\);

-- Location: FF_X40_Y4_N17
\inst|buffer1[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~196_combout\,
	ena => \inst|buffer1[83]~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(73));

-- Location: FF_X38_Y3_N11
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

-- Location: LCCOMB_X38_Y3_N10
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

-- Location: LCCOMB_X38_Y3_N26
\inst2|bufferout[61]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(61) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(61))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(61))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(61),
	datac => \inst2|bufferout\(61),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(61));

-- Location: LCCOMB_X38_Y3_N22
\inst|buffer1~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~106_combout\ = (!\inst|buffer1[62]~102_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(61))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(61),
	datab => \ADC_IN[1]~input_o\,
	datac => \inst|buffer1[62]~102_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~106_combout\);

-- Location: FF_X38_Y3_N23
\inst|buffer1[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~106_combout\,
	ena => \inst|buffer1[62]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(61));

-- Location: LCCOMB_X39_Y4_N10
\inst|Equal19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal19~0_combout\ = (!\inst|buffer1\(62) & (!\inst|buffer1\(63) & (!\inst|buffer1\(60) & !\inst|buffer1\(61))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(62),
	datab => \inst|buffer1\(63),
	datac => \inst|buffer1\(60),
	datad => \inst|buffer1\(61),
	combout => \inst|Equal19~0_combout\);

-- Location: FF_X40_Y4_N25
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

-- Location: LCCOMB_X40_Y4_N24
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

-- Location: LCCOMB_X40_Y4_N4
\inst2|bufferout[79]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(79) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(79))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(79))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(79),
	datac => \inst2|bufferout\(79),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(79));

-- Location: LCCOMB_X40_Y4_N0
\inst|buffer1~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~202_combout\ = (!\inst|buffer1[83]~192_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(79)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[7]~input_o\,
	datac => \inst2|bufferout\(79),
	datad => \inst|buffer1[83]~192_combout\,
	combout => \inst|buffer1~202_combout\);

-- Location: FF_X40_Y4_N1
\inst|buffer1[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~202_combout\,
	ena => \inst|buffer1[83]~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(79));

-- Location: FF_X38_Y3_N19
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

-- Location: LCCOMB_X38_Y3_N18
\inst2|buffer1[67]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(67) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(79)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(67)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(67),
	datac => \inst|bufferout\(79),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(67));

-- Location: LCCOMB_X38_Y3_N2
\inst2|bufferout[67]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(67) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(67))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(67))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(67),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(67),
	combout => \inst2|bufferout\(67));

-- Location: LCCOMB_X38_Y3_N14
\inst|buffer1~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~112_combout\ = (!\inst|buffer1[62]~102_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(67)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[7]~input_o\,
	datab => \inst2|bufferout\(67),
	datac => \inst|buffer1[62]~102_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~112_combout\);

-- Location: FF_X38_Y3_N15
\inst|buffer1[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~112_combout\,
	ena => \inst|buffer1[62]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(67));

-- Location: FF_X35_Y4_N25
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

-- Location: LCCOMB_X35_Y4_N24
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

-- Location: LCCOMB_X35_Y4_N12
\inst2|bufferout[78]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(78) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(78))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(78))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(78),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(78),
	combout => \inst2|bufferout\(78));

-- Location: LCCOMB_X35_Y4_N28
\inst|buffer1~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~201_combout\ = (!\inst|buffer1[83]~192_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(78)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[83]~192_combout\,
	datab => \ADC_IN[6]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(78),
	combout => \inst|buffer1~201_combout\);

-- Location: FF_X35_Y4_N29
\inst|buffer1[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~201_combout\,
	ena => \inst|buffer1[83]~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(78));

-- Location: FF_X38_Y3_N29
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

-- Location: LCCOMB_X38_Y3_N28
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

-- Location: LCCOMB_X38_Y3_N4
\inst2|bufferout[66]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(66) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(66))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(66))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(66),
	datac => \inst2|bufferout\(66),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(66));

-- Location: LCCOMB_X38_Y3_N0
\inst|buffer1~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~111_combout\ = (!\inst|buffer1[62]~102_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(66)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[6]~input_o\,
	datab => \inst2|bufferout\(66),
	datac => \inst|buffer1[62]~102_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~111_combout\);

-- Location: FF_X38_Y3_N1
\inst|buffer1[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~111_combout\,
	ena => \inst|buffer1[62]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(66));

-- Location: FF_X35_Y4_N11
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

-- Location: LCCOMB_X35_Y4_N10
\inst2|buffer1[77]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(77) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(89)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(77)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(77),
	datac => \inst|bufferout\(89),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(77));

-- Location: LCCOMB_X35_Y4_N18
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

-- Location: LCCOMB_X35_Y4_N26
\inst|buffer1~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~200_combout\ = (!\inst|buffer1[83]~192_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(77)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[83]~192_combout\,
	datab => \ADC_IN[5]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(77),
	combout => \inst|buffer1~200_combout\);

-- Location: FF_X35_Y4_N27
\inst|buffer1[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~200_combout\,
	ena => \inst|buffer1[83]~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(77));

-- Location: FF_X36_Y4_N25
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

-- Location: LCCOMB_X36_Y4_N24
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

-- Location: LCCOMB_X36_Y4_N14
\inst2|bufferout[65]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(65) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(65))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(65))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(65),
	datac => \inst2|bufferout\(65),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(65));

-- Location: LCCOMB_X36_Y4_N30
\inst|buffer1~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~110_combout\ = (!\inst|buffer1[62]~102_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(65))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[62]~102_combout\,
	datab => \inst2|bufferout\(65),
	datac => \inst1|OUTPUT\(3),
	datad => \ADC_IN[5]~input_o\,
	combout => \inst|buffer1~110_combout\);

-- Location: FF_X36_Y4_N31
\inst|buffer1[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~110_combout\,
	ena => \inst|buffer1[62]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(65));

-- Location: FF_X35_Y4_N21
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

-- Location: LCCOMB_X35_Y4_N20
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

-- Location: LCCOMB_X35_Y4_N8
\inst2|bufferout[76]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(76) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(76))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(76))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(76),
	datac => \inst2|bufferout\(76),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(76));

-- Location: LCCOMB_X35_Y4_N4
\inst|buffer1~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~199_combout\ = (!\inst|buffer1[83]~192_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(76))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[83]~192_combout\,
	datab => \inst2|bufferout\(76),
	datac => \inst1|OUTPUT\(3),
	datad => \ADC_IN[4]~input_o\,
	combout => \inst|buffer1~199_combout\);

-- Location: FF_X35_Y4_N5
\inst|buffer1[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~199_combout\,
	ena => \inst|buffer1[83]~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(76));

-- Location: FF_X41_Y4_N29
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

-- Location: LCCOMB_X41_Y4_N28
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

-- Location: LCCOMB_X41_Y4_N8
\inst2|bufferout[64]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(64) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(64))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(64))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(64),
	datac => \inst2|bufferout\(64),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(64));

-- Location: LCCOMB_X41_Y4_N24
\inst|buffer1~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~109_combout\ = (!\inst|buffer1[62]~102_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(64)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \ADC_IN[4]~input_o\,
	datac => \inst2|bufferout\(64),
	datad => \inst|buffer1[62]~102_combout\,
	combout => \inst|buffer1~109_combout\);

-- Location: FF_X41_Y4_N25
\inst|buffer1[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~109_combout\,
	ena => \inst|buffer1[62]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(64));

-- Location: LCCOMB_X38_Y4_N28
\inst|Equal19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal19~1_combout\ = (!\inst|buffer1\(67) & (!\inst|buffer1\(66) & (!\inst|buffer1\(65) & !\inst|buffer1\(64))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(67),
	datab => \inst|buffer1\(66),
	datac => \inst|buffer1\(65),
	datad => \inst|buffer1\(64),
	combout => \inst|Equal19~1_combout\);

-- Location: LCCOMB_X38_Y4_N20
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

-- Location: LCCOMB_X38_Y4_N22
\inst|buffer1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~14_combout\ = (\inst|buffer1~11_combout\ & (!\inst|counter\(1) & (!\inst|counter\(2) & \inst|Equal19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~11_combout\,
	datab => \inst|counter\(1),
	datac => \inst|counter\(2),
	datad => \inst|Equal19~3_combout\,
	combout => \inst|buffer1~14_combout\);

-- Location: LCCOMB_X37_Y7_N20
\inst|buffer1[62]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[62]~104_combout\ = (!\inst1|OUTPUT\(0) & ((!\inst|buffer1~14_combout\) # (!\inst1|OUTPUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datac => \inst1|OUTPUT\(1),
	datad => \inst|buffer1~14_combout\,
	combout => \inst|buffer1[62]~104_combout\);

-- Location: LCCOMB_X37_Y7_N22
\inst|buffer1[62]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[62]~105_combout\ = ((\inst1|OUTPUT\(1) & ((\inst1|OUTPUT\(3)) # (\inst|buffer1[62]~101_combout\)))) # (!\inst|buffer1[62]~104_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst|buffer1[62]~104_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[62]~101_combout\,
	combout => \inst|buffer1[62]~105_combout\);

-- Location: FF_X39_Y5_N27
\inst|buffer1[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~116_combout\,
	ena => \inst|buffer1[62]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(71));

-- Location: FF_X36_Y4_N5
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

-- Location: LCCOMB_X36_Y4_N4
\inst2|buffer1[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(56) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(68)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(56)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(56),
	datac => \inst|bufferout\(68),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(56));

-- Location: LCCOMB_X36_Y4_N16
\inst2|bufferout[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(56) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(56))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(56),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(56),
	combout => \inst2|bufferout\(56));

-- Location: LCCOMB_X39_Y6_N6
\inst|buffer1~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~173_combout\ = (!\inst|buffer1[48]~162_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(56)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datab => \inst|buffer1[48]~162_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(56),
	combout => \inst|buffer1~173_combout\);

-- Location: LCCOMB_X38_Y5_N30
\inst|Equal16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal16~1_combout\ = (!\inst|counter\(2) & (!\inst|counter\(1) & \inst|Equal16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(2),
	datac => \inst|counter\(1),
	datad => \inst|Equal16~0_combout\,
	combout => \inst|Equal16~1_combout\);

-- Location: FF_X43_Y4_N29
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

-- Location: LCCOMB_X43_Y4_N28
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

-- Location: LCCOMB_X43_Y4_N14
\inst2|bufferout[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(50) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(50))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(50),
	datac => \inst2|bufferout\(50),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(50));

-- Location: LCCOMB_X43_Y4_N20
\inst|buffer1~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~167_combout\ = (!\inst|buffer1[48]~162_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(50)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[2]~input_o\,
	datab => \inst2|bufferout\(50),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[48]~162_combout\,
	combout => \inst|buffer1~167_combout\);

-- Location: FF_X43_Y4_N21
\inst|buffer1[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~167_combout\,
	ena => \inst|buffer1[48]~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(50));

-- Location: FF_X43_Y6_N3
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

-- Location: LCCOMB_X43_Y6_N2
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

-- Location: LCCOMB_X43_Y6_N22
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

-- Location: LCCOMB_X37_Y4_N6
\inst|Equal12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal12~1_combout\ = (\inst|counter\(1) & (\inst|counter\(2) & !\inst|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(1),
	datac => \inst|counter\(2),
	datad => \inst|counter\(4),
	combout => \inst|Equal12~1_combout\);

-- Location: FF_X38_Y5_N19
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

-- Location: LCCOMB_X38_Y5_N18
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

-- Location: LCCOMB_X38_Y5_N8
\inst2|bufferout[47]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(47) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(47))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(47),
	datac => \inst2|bufferout\(47),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(47));

-- Location: LCCOMB_X39_Y4_N2
\inst|buffer1~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~70_combout\ = (!\inst|buffer1[36]~56_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(47)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[36]~56_combout\,
	datab => \inst1|OUTPUT\(3),
	datac => \ADC_IN[11]~input_o\,
	datad => \inst2|bufferout\(47),
	combout => \inst|buffer1~70_combout\);

-- Location: FF_X39_Y6_N29
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

-- Location: LCCOMB_X39_Y6_N28
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

-- Location: LCCOMB_X39_Y6_N26
\inst2|bufferout[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(58) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(58))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(58),
	datac => \inst2|bufferout\(58),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(58));

-- Location: LCCOMB_X39_Y6_N22
\inst|buffer1~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~175_combout\ = (!\inst|buffer1[48]~162_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(58)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[10]~input_o\,
	datab => \inst|buffer1[48]~162_combout\,
	datac => \inst2|bufferout\(58),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~175_combout\);

-- Location: FF_X39_Y6_N23
\inst|buffer1[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~175_combout\,
	ena => \inst|buffer1[48]~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(58));

-- Location: FF_X39_Y6_N11
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

-- Location: LCCOMB_X39_Y6_N10
\inst2|buffer1[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(46) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(58)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(46),
	datac => \inst|bufferout\(58),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(46));

-- Location: LCCOMB_X39_Y6_N12
\inst2|bufferout[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(46) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(46)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(46),
	datab => \inst2|buffer1\(46),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(46));

-- Location: LCCOMB_X39_Y4_N12
\inst|buffer1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~69_combout\ = (!\inst|buffer1[36]~56_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(46)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[36]~56_combout\,
	datab => \inst1|OUTPUT\(3),
	datac => \ADC_IN[10]~input_o\,
	datad => \inst2|bufferout\(46),
	combout => \inst|buffer1~69_combout\);

-- Location: FF_X39_Y4_N13
\inst|buffer1[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~69_combout\,
	ena => \inst|buffer1[36]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(46));

-- Location: FF_X39_Y4_N7
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

-- Location: LCCOMB_X39_Y4_N6
\inst2|buffer1[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(44) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(56)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(44)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(44),
	datac => \inst|bufferout\(56),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(44));

-- Location: LCCOMB_X39_Y4_N22
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

-- Location: LCCOMB_X39_Y4_N8
\inst|buffer1~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~67_combout\ = (!\inst|buffer1[36]~56_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(44)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[36]~56_combout\,
	datab => \ADC_IN[8]~input_o\,
	datac => \inst2|bufferout\(44),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~67_combout\);

-- Location: FF_X39_Y4_N9
\inst|buffer1[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~67_combout\,
	ena => \inst|buffer1[36]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(44));

-- Location: FF_X43_Y9_N29
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

-- Location: LCCOMB_X43_Y9_N28
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

-- Location: LCCOMB_X43_Y9_N22
\inst2|bufferout[57]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(57) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(57))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(57),
	datac => \inst2|bufferout\(57),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(57));

-- Location: LCCOMB_X39_Y6_N4
\inst|buffer1~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~174_combout\ = (!\inst|buffer1[48]~162_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(57)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst|buffer1[48]~162_combout\,
	datac => \ADC_IN[9]~input_o\,
	datad => \inst2|bufferout\(57),
	combout => \inst|buffer1~174_combout\);

-- Location: FF_X39_Y6_N5
\inst|buffer1[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~174_combout\,
	ena => \inst|buffer1[48]~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(57));

-- Location: FF_X39_Y4_N29
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

-- Location: LCCOMB_X39_Y4_N28
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

-- Location: LCCOMB_X39_Y4_N20
\inst2|bufferout[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(45) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(45))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(45),
	datab => \inst2|bufferout\(45),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(45));

-- Location: LCCOMB_X39_Y4_N18
\inst|buffer1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~68_combout\ = (!\inst|buffer1[36]~56_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(45)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[36]~56_combout\,
	datab => \inst1|OUTPUT\(3),
	datac => \ADC_IN[9]~input_o\,
	datad => \inst2|bufferout\(45),
	combout => \inst|buffer1~68_combout\);

-- Location: FF_X39_Y4_N19
\inst|buffer1[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~68_combout\,
	ena => \inst|buffer1[36]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(45));

-- Location: LCCOMB_X39_Y4_N4
\inst|Equal11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal11~2_combout\ = (!\inst|buffer1\(46) & (!\inst|buffer1\(47) & (!\inst|buffer1\(44) & !\inst|buffer1\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(46),
	datab => \inst|buffer1\(47),
	datac => \inst|buffer1\(44),
	datad => \inst|buffer1\(45),
	combout => \inst|Equal11~2_combout\);

-- Location: FF_X40_Y3_N21
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

-- Location: LCCOMB_X40_Y3_N20
\inst2|buffer1[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(54) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(66)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(54)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(54),
	datac => \inst|bufferout\(66),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(54));

-- Location: LCCOMB_X40_Y3_N4
\inst2|bufferout[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(54) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(54))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(54),
	datac => \inst2|bufferout\(54),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(54));

-- Location: LCCOMB_X40_Y3_N24
\inst|buffer1~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~171_combout\ = (!\inst|buffer1[48]~162_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(54))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[48]~162_combout\,
	datab => \inst2|bufferout\(54),
	datac => \ADC_IN[6]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~171_combout\);

-- Location: FF_X40_Y3_N25
\inst|buffer1[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~171_combout\,
	ena => \inst|buffer1[48]~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(54));

-- Location: FF_X41_Y6_N11
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

-- Location: LCCOMB_X41_Y6_N10
\inst2|buffer1[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(42) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(54)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(42)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(42),
	datac => \inst|bufferout\(54),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(42));

-- Location: LCCOMB_X41_Y6_N30
\inst2|bufferout[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(42) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(42)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(42)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(42),
	datab => \inst2|buffer1\(42),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(42));

-- Location: LCCOMB_X41_Y6_N18
\inst|buffer1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~65_combout\ = (!\inst|buffer1[36]~56_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(42))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[36]~56_combout\,
	datab => \inst1|OUTPUT\(3),
	datac => \inst2|bufferout\(42),
	datad => \ADC_IN[6]~input_o\,
	combout => \inst|buffer1~65_combout\);

-- Location: FF_X41_Y6_N19
\inst|buffer1[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~65_combout\,
	ena => \inst|buffer1[36]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(42));

-- Location: FF_X40_Y3_N29
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

-- Location: LCCOMB_X40_Y3_N28
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

-- Location: LCCOMB_X40_Y3_N8
\inst2|bufferout[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(52) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(52))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(52),
	datac => \inst2|bufferout\(52),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(52));

-- Location: LCCOMB_X40_Y3_N12
\inst|buffer1~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~169_combout\ = (!\inst|buffer1[48]~162_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(52)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[48]~162_combout\,
	datab => \ADC_IN[4]~input_o\,
	datac => \inst2|bufferout\(52),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~169_combout\);

-- Location: FF_X40_Y3_N13
\inst|buffer1[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~169_combout\,
	ena => \inst|buffer1[48]~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(52));

-- Location: FF_X43_Y7_N29
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

-- Location: LCCOMB_X43_Y7_N28
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

-- Location: LCCOMB_X43_Y7_N30
\inst2|bufferout[40]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(40) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(40))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(40),
	datac => \inst2|bufferout\(40),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(40));

-- Location: LCCOMB_X41_Y6_N14
\inst|buffer1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~63_combout\ = (!\inst|buffer1[36]~56_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(40)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[36]~56_combout\,
	datab => \inst1|OUTPUT\(3),
	datac => \ADC_IN[4]~input_o\,
	datad => \inst2|bufferout\(40),
	combout => \inst|buffer1~63_combout\);

-- Location: FF_X41_Y6_N15
\inst|buffer1[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~63_combout\,
	ena => \inst|buffer1[36]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(40));

-- Location: FF_X40_Y3_N11
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

-- Location: LCCOMB_X40_Y3_N10
\inst2|buffer1[53]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(53) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(65)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(53)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(53),
	datac => \inst|bufferout\(65),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(53));

-- Location: LCCOMB_X40_Y3_N30
\inst2|bufferout[53]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(53) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(53))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(53),
	datac => \inst2|bufferout\(53),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(53));

-- Location: LCCOMB_X40_Y3_N2
\inst|buffer1~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~170_combout\ = (!\inst|buffer1[48]~162_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(53)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[48]~162_combout\,
	datab => \ADC_IN[5]~input_o\,
	datac => \inst2|bufferout\(53),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~170_combout\);

-- Location: FF_X40_Y3_N3
\inst|buffer1[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~170_combout\,
	ena => \inst|buffer1[48]~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(53));

-- Location: FF_X43_Y7_N11
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

-- Location: LCCOMB_X43_Y7_N10
\inst2|buffer1[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(41) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(53)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(41),
	datac => \inst|bufferout\(53),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(41));

-- Location: LCCOMB_X43_Y7_N8
\inst2|bufferout[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(41) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(41))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(41),
	datac => \inst2|bufferout\(41),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(41));

-- Location: LCCOMB_X41_Y6_N8
\inst|buffer1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~64_combout\ = (!\inst|buffer1[36]~56_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(41)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[36]~56_combout\,
	datab => \inst1|OUTPUT\(3),
	datac => \ADC_IN[5]~input_o\,
	datad => \inst2|bufferout\(41),
	combout => \inst|buffer1~64_combout\);

-- Location: FF_X41_Y6_N9
\inst|buffer1[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~64_combout\,
	ena => \inst|buffer1[36]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(41));

-- Location: FF_X40_Y3_N7
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

-- Location: LCCOMB_X40_Y3_N6
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

-- Location: LCCOMB_X40_Y3_N14
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

-- Location: LCCOMB_X40_Y3_N26
\inst|buffer1~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~172_combout\ = (!\inst|buffer1[48]~162_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(55)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[48]~162_combout\,
	datab => \ADC_IN[7]~input_o\,
	datac => \inst2|bufferout\(55),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~172_combout\);

-- Location: FF_X40_Y3_N27
\inst|buffer1[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~172_combout\,
	ena => \inst|buffer1[48]~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(55));

-- Location: FF_X40_Y6_N17
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

-- Location: LCCOMB_X40_Y6_N16
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

-- Location: LCCOMB_X41_Y6_N2
\inst2|bufferout[43]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(43) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(43)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(43)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|bufferout\(43),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|buffer1\(43),
	combout => \inst2|bufferout\(43));

-- Location: LCCOMB_X41_Y6_N16
\inst|buffer1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~66_combout\ = (!\inst|buffer1[36]~56_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(43)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[36]~56_combout\,
	datab => \inst1|OUTPUT\(3),
	datac => \ADC_IN[7]~input_o\,
	datad => \inst2|bufferout\(43),
	combout => \inst|buffer1~66_combout\);

-- Location: FF_X41_Y6_N17
\inst|buffer1[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~66_combout\,
	ena => \inst|buffer1[36]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(43));

-- Location: LCCOMB_X41_Y6_N0
\inst|Equal11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal11~1_combout\ = (!\inst|buffer1\(42) & (!\inst|buffer1\(40) & (!\inst|buffer1\(41) & !\inst|buffer1\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(42),
	datab => \inst|buffer1\(40),
	datac => \inst|buffer1\(41),
	datad => \inst|buffer1\(43),
	combout => \inst|Equal11~1_combout\);

-- Location: FF_X43_Y4_N7
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

-- Location: LCCOMB_X43_Y4_N6
\inst2|buffer1[51]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(51) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(63)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(51)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(51),
	datac => \inst|bufferout\(63),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(51));

-- Location: LCCOMB_X43_Y4_N8
\inst2|bufferout[51]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(51) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(51))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(51),
	datac => \inst2|bufferout\(51),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(51));

-- Location: LCCOMB_X43_Y4_N22
\inst|buffer1~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~168_combout\ = (!\inst|buffer1[48]~162_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(51)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[3]~input_o\,
	datab => \inst2|bufferout\(51),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[48]~162_combout\,
	combout => \inst|buffer1~168_combout\);

-- Location: FF_X43_Y4_N23
\inst|buffer1[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~168_combout\,
	ena => \inst|buffer1[48]~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(51));

-- Location: FF_X43_Y6_N21
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

-- Location: LCCOMB_X43_Y6_N20
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

-- Location: LCCOMB_X43_Y6_N4
\inst2|bufferout[39]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(39) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(39))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(39),
	datac => \inst2|bufferout\(39),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(39));

-- Location: LCCOMB_X43_Y6_N28
\inst|buffer1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~62_combout\ = (!\inst|buffer1[36]~56_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(39)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[3]~input_o\,
	datab => \inst2|bufferout\(39),
	datac => \inst|buffer1[36]~56_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~62_combout\);

-- Location: FF_X43_Y6_N29
\inst|buffer1[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~62_combout\,
	ena => \inst|buffer1[36]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(39));

-- Location: FF_X43_Y4_N3
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

-- Location: LCCOMB_X43_Y4_N2
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

-- Location: LCCOMB_X43_Y4_N4
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

-- Location: LCCOMB_X43_Y4_N26
\inst|buffer1~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~166_combout\ = (!\inst|buffer1[48]~162_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(49)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[1]~input_o\,
	datab => \inst2|bufferout\(49),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[48]~162_combout\,
	combout => \inst|buffer1~166_combout\);

-- Location: FF_X43_Y4_N27
\inst|buffer1[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~166_combout\,
	ena => \inst|buffer1[48]~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(49));

-- Location: FF_X41_Y6_N21
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

-- Location: LCCOMB_X41_Y6_N20
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

-- Location: LCCOMB_X41_Y6_N22
\inst2|bufferout[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(37) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(37))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(37),
	datac => \inst2|bufferout\(37),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(37));

-- Location: LCCOMB_X41_Y6_N24
\inst|buffer1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~60_combout\ = (!\inst|buffer1[36]~56_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(37))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[36]~56_combout\,
	datab => \inst1|OUTPUT\(3),
	datac => \inst2|bufferout\(37),
	datad => \ADC_IN[1]~input_o\,
	combout => \inst|buffer1~60_combout\);

-- Location: FF_X41_Y6_N25
\inst|buffer1[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~60_combout\,
	ena => \inst|buffer1[36]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(37));

-- Location: FF_X43_Y4_N25
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

-- Location: LCCOMB_X43_Y4_N24
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

-- Location: LCCOMB_X43_Y4_N30
\inst2|bufferout[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(48) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(48))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(48),
	datac => \inst2|bufferout\(48),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(48));

-- Location: LCCOMB_X43_Y4_N16
\inst|buffer1~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~163_combout\ = (!\inst|buffer1[48]~162_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(48))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(48),
	datab => \ADC_IN[0]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[48]~162_combout\,
	combout => \inst|buffer1~163_combout\);

-- Location: FF_X43_Y4_N17
\inst|buffer1[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~163_combout\,
	ena => \inst|buffer1[48]~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(48));

-- Location: FF_X40_Y6_N7
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

-- Location: LCCOMB_X40_Y6_N6
\inst2|buffer1[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(36) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(48)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(36)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(36),
	datac => \inst|bufferout\(48),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(36));

-- Location: LCCOMB_X40_Y6_N4
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

-- Location: LCCOMB_X43_Y6_N12
\inst|buffer1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~57_combout\ = (!\inst|buffer1[36]~56_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(36)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[0]~input_o\,
	datab => \inst1|OUTPUT\(3),
	datac => \inst|buffer1[36]~56_combout\,
	datad => \inst2|bufferout\(36),
	combout => \inst|buffer1~57_combout\);

-- Location: FF_X43_Y6_N13
\inst|buffer1[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~57_combout\,
	ena => \inst|buffer1[36]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(36));

-- Location: LCCOMB_X43_Y6_N10
\inst|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal11~0_combout\ = (!\inst|buffer1\(38) & (!\inst|buffer1\(39) & (!\inst|buffer1\(37) & !\inst|buffer1\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(38),
	datab => \inst|buffer1\(39),
	datac => \inst|buffer1\(37),
	datad => \inst|buffer1\(36),
	combout => \inst|Equal11~0_combout\);

-- Location: LCCOMB_X39_Y4_N26
\inst|Equal11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal11~3_combout\ = (\inst|Equal11~2_combout\ & (\inst|Equal11~1_combout\ & \inst|Equal11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal11~2_combout\,
	datac => \inst|Equal11~1_combout\,
	datad => \inst|Equal11~0_combout\,
	combout => \inst|Equal11~3_combout\);

-- Location: LCCOMB_X37_Y7_N24
\inst|Equal24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal24~0_combout\ = (\inst|counter\(2) & !\inst|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(2),
	datad => \inst|counter\(1),
	combout => \inst|Equal24~0_combout\);

-- Location: LCCOMB_X39_Y4_N0
\inst|buffer1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~10_combout\ = (!\inst|counter\(4) & (\inst|Equal46~0_combout\ & (\inst|Equal11~3_combout\ & \inst|Equal24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|Equal46~0_combout\,
	datac => \inst|Equal11~3_combout\,
	datad => \inst|Equal24~0_combout\,
	combout => \inst|buffer1~10_combout\);

-- Location: LCCOMB_X39_Y4_N30
\inst|buffer1[36]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[36]~58_combout\ = (!\inst1|OUTPUT\(0) & ((!\inst|buffer1~10_combout\) # (!\inst1|OUTPUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(1),
	datac => \inst1|OUTPUT\(0),
	datad => \inst|buffer1~10_combout\,
	combout => \inst|buffer1[36]~58_combout\);

-- Location: LCCOMB_X39_Y4_N24
\inst|buffer1[36]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[36]~59_combout\ = ((\inst1|OUTPUT\(1) & ((\inst1|OUTPUT\(3)) # (\inst|buffer1[36]~210_combout\)))) # (!\inst|buffer1[36]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst1|OUTPUT\(1),
	datac => \inst|buffer1[36]~58_combout\,
	datad => \inst|buffer1[36]~210_combout\,
	combout => \inst|buffer1[36]~59_combout\);

-- Location: FF_X39_Y4_N3
\inst|buffer1[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~70_combout\,
	ena => \inst|buffer1[36]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(47));

-- Location: FF_X44_Y7_N25
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

-- Location: LCCOMB_X44_Y7_N24
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

-- Location: LCCOMB_X44_Y7_N14
\inst2|bufferout[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(35) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(35))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(35),
	datac => \inst2|bufferout\(35),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(35));

-- Location: FF_X38_Y7_N21
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

-- Location: LCCOMB_X38_Y7_N20
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

-- Location: LCCOMB_X38_Y7_N0
\inst2|bufferout[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(33) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(33))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(33),
	datab => \inst2|bufferout\(33),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(33));

-- Location: LCCOMB_X44_Y7_N18
\inst|buffer1~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~189_combout\ = (!\inst|buffer1[24]~177_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(33)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[24]~177_combout\,
	datab => \ADC_IN[9]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(33),
	combout => \inst|buffer1~189_combout\);

-- Location: FF_X39_Y5_N25
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

-- Location: LCCOMB_X39_Y5_N24
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

-- Location: LCCOMB_X39_Y5_N14
\inst2|bufferout[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(28) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(28))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(28),
	datac => \inst2|bufferout\(28),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(28));

-- Location: LCCOMB_X44_Y6_N26
\inst|buffer1~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~184_combout\ = (!\inst|buffer1[24]~177_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(28)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[24]~177_combout\,
	datab => \ADC_IN[4]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(28),
	combout => \inst|buffer1~184_combout\);

-- Location: FF_X44_Y6_N27
\inst|buffer1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~184_combout\,
	ena => \inst|buffer1[24]~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(28));

-- Location: FF_X41_Y6_N29
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

-- Location: LCCOMB_X41_Y6_N28
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

-- Location: LCCOMB_X41_Y6_N6
\inst2|bufferout[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(29) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(29))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(29),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(29),
	combout => \inst2|bufferout\(29));

-- Location: LCCOMB_X44_Y6_N16
\inst|buffer1~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~185_combout\ = (!\inst|buffer1[24]~177_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(29)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[24]~177_combout\,
	datab => \ADC_IN[5]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(29),
	combout => \inst|buffer1~185_combout\);

-- Location: FF_X44_Y6_N17
\inst|buffer1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~185_combout\,
	ena => \inst|buffer1[24]~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(29));

-- Location: FF_X44_Y6_N3
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

-- Location: LCCOMB_X44_Y6_N2
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

-- Location: LCCOMB_X44_Y6_N22
\inst2|bufferout[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(30) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(30))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(30),
	datac => \inst2|bufferout\(30),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(30));

-- Location: LCCOMB_X44_Y6_N8
\inst|buffer1~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~186_combout\ = (!\inst|buffer1[24]~177_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(30)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[24]~177_combout\,
	datab => \ADC_IN[6]~input_o\,
	datac => \inst2|bufferout\(30),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~186_combout\);

-- Location: FF_X44_Y6_N9
\inst|buffer1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~186_combout\,
	ena => \inst|buffer1[24]~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(30));

-- Location: FF_X44_Y6_N7
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

-- Location: LCCOMB_X44_Y6_N6
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

-- Location: LCCOMB_X44_Y6_N4
\inst2|bufferout[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(31) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(31))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(31),
	datac => \inst2|bufferout\(31),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(31));

-- Location: LCCOMB_X44_Y6_N12
\inst|buffer1~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~187_combout\ = (!\inst|buffer1[24]~177_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(31)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[24]~177_combout\,
	datab => \ADC_IN[7]~input_o\,
	datac => \inst2|bufferout\(31),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~187_combout\);

-- Location: FF_X44_Y6_N13
\inst|buffer1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~187_combout\,
	ena => \inst|buffer1[24]~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(31));

-- Location: LCCOMB_X44_Y6_N30
\inst|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~1_combout\ = (!\inst|buffer1\(28) & (!\inst|buffer1\(29) & (!\inst|buffer1\(30) & !\inst|buffer1\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(28),
	datab => \inst|buffer1\(29),
	datac => \inst|buffer1\(30),
	datad => \inst|buffer1\(31),
	combout => \inst|Equal7~1_combout\);

-- Location: FF_X44_Y8_N5
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

-- Location: LCCOMB_X44_Y8_N4
\inst2|buffer1[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(25) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(37)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(25),
	datac => \inst|bufferout\(37),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(25));

-- Location: LCCOMB_X44_Y8_N18
\inst2|bufferout[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(25) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(25))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(25),
	datab => \inst2|bufferout\(25),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(25));

-- Location: LCCOMB_X44_Y8_N22
\inst|buffer1~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~181_combout\ = (!\inst|buffer1[24]~177_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(25)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[1]~input_o\,
	datab => \inst|buffer1[24]~177_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(25),
	combout => \inst|buffer1~181_combout\);

-- Location: FF_X44_Y8_N23
\inst|buffer1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~181_combout\,
	ena => \inst|buffer1[24]~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(25));

-- Location: FF_X44_Y8_N7
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

-- Location: LCCOMB_X44_Y8_N6
\inst2|buffer1[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(26) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(38)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(26),
	datac => \inst|bufferout\(38),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(26));

-- Location: LCCOMB_X44_Y8_N12
\inst2|bufferout[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(26) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(26)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(26),
	datab => \inst2|buffer1\(26),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(26));

-- Location: LCCOMB_X44_Y8_N8
\inst|buffer1~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~182_combout\ = (!\inst|buffer1[24]~177_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(26)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[2]~input_o\,
	datab => \inst|buffer1[24]~177_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(26),
	combout => \inst|buffer1~182_combout\);

-- Location: FF_X44_Y8_N9
\inst|buffer1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~182_combout\,
	ena => \inst|buffer1[24]~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(26));

-- Location: FF_X44_Y8_N25
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

-- Location: LCCOMB_X44_Y8_N24
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

-- Location: LCCOMB_X44_Y8_N14
\inst2|bufferout[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(27) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(27))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(27),
	datac => \inst2|bufferout\(27),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(27));

-- Location: LCCOMB_X44_Y8_N26
\inst|buffer1~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~183_combout\ = (!\inst|buffer1[24]~177_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(27)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[3]~input_o\,
	datab => \inst|buffer1[24]~177_combout\,
	datac => \inst2|bufferout\(27),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~183_combout\);

-- Location: FF_X44_Y8_N27
\inst|buffer1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~183_combout\,
	ena => \inst|buffer1[24]~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(27));

-- Location: FF_X44_Y8_N3
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

-- Location: LCCOMB_X44_Y8_N2
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

-- Location: LCCOMB_X44_Y8_N16
\inst2|bufferout[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(24) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(24))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(24),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(24),
	combout => \inst2|bufferout\(24));

-- Location: LCCOMB_X44_Y8_N0
\inst|buffer1~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~178_combout\ = (!\inst|buffer1[24]~177_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(24)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[0]~input_o\,
	datab => \inst|buffer1[24]~177_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(24),
	combout => \inst|buffer1~178_combout\);

-- Location: FF_X44_Y8_N1
\inst|buffer1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~178_combout\,
	ena => \inst|buffer1[24]~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(24));

-- Location: LCCOMB_X44_Y8_N20
\inst|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~0_combout\ = (!\inst|buffer1\(25) & (!\inst|buffer1\(26) & (!\inst|buffer1\(27) & !\inst|buffer1\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(25),
	datab => \inst|buffer1\(26),
	datac => \inst|buffer1\(27),
	datad => \inst|buffer1\(24),
	combout => \inst|Equal7~0_combout\);

-- Location: FF_X43_Y5_N3
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

-- Location: LCCOMB_X43_Y5_N2
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

-- Location: LCCOMB_X43_Y5_N4
\inst2|bufferout[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(34) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(34))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(34),
	datac => \inst2|bufferout\(34),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(34));

-- Location: LCCOMB_X44_Y7_N12
\inst|buffer1~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~190_combout\ = (!\inst|buffer1[24]~177_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(34)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[24]~177_combout\,
	datab => \ADC_IN[10]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(34),
	combout => \inst|buffer1~190_combout\);

-- Location: FF_X44_Y7_N13
\inst|buffer1[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~190_combout\,
	ena => \inst|buffer1[24]~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(34));

-- Location: FF_X45_Y7_N29
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

-- Location: LCCOMB_X45_Y7_N28
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

-- Location: LCCOMB_X45_Y7_N26
\inst2|bufferout[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(32) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(32))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(32),
	datac => \inst2|bufferout\(32),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(32));

-- Location: LCCOMB_X44_Y7_N20
\inst|buffer1~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~188_combout\ = (!\inst|buffer1[24]~177_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(32)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[24]~177_combout\,
	datab => \ADC_IN[8]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(32),
	combout => \inst|buffer1~188_combout\);

-- Location: FF_X44_Y7_N21
\inst|buffer1[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~188_combout\,
	ena => \inst|buffer1[24]~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(32));

-- Location: LCCOMB_X44_Y7_N16
\inst|Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~2_combout\ = (!\inst|buffer1\(34) & (!\inst|buffer1\(33) & (!\inst|buffer1\(35) & !\inst|buffer1\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(34),
	datab => \inst|buffer1\(33),
	datac => \inst|buffer1\(35),
	datad => \inst|buffer1\(32),
	combout => \inst|Equal7~2_combout\);

-- Location: LCCOMB_X36_Y5_N2
\inst|Equal7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~3_combout\ = (\inst|Equal7~1_combout\ & (\inst|Equal7~0_combout\ & \inst|Equal7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal7~1_combout\,
	datac => \inst|Equal7~0_combout\,
	datad => \inst|Equal7~2_combout\,
	combout => \inst|Equal7~3_combout\);

-- Location: LCCOMB_X36_Y5_N22
\inst|buffer1~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~209_combout\ = (\inst|buffer1~8_combout\ & (!\inst|counter\(4) & (\inst|counter\(1) & \inst|Equal7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~8_combout\,
	datab => \inst|counter\(4),
	datac => \inst|counter\(1),
	datad => \inst|Equal7~3_combout\,
	combout => \inst|buffer1~209_combout\);

-- Location: LCCOMB_X44_Y7_N0
\inst|buffer1[24]~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[24]~179_combout\ = (!\inst1|OUTPUT\(0) & ((!\inst|buffer1~209_combout\) # (!\inst1|OUTPUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datac => \inst1|OUTPUT\(0),
	datad => \inst|buffer1~209_combout\,
	combout => \inst|buffer1[24]~179_combout\);

-- Location: LCCOMB_X44_Y7_N2
\inst|buffer1[24]~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[24]~180_combout\ = ((\inst1|OUTPUT\(1) & ((\inst|buffer1[24]~55_combout\) # (\inst1|OUTPUT\(3))))) # (!\inst|buffer1[24]~179_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst|buffer1[24]~55_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[24]~179_combout\,
	combout => \inst|buffer1[24]~180_combout\);

-- Location: FF_X44_Y7_N19
\inst|buffer1[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~189_combout\,
	ena => \inst|buffer1[24]~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(33));

-- Location: FF_X45_Y6_N7
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

-- Location: LCCOMB_X45_Y6_N6
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

-- Location: LCCOMB_X45_Y6_N22
\inst2|bufferout[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(20) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(20))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(20),
	datac => \inst2|bufferout\(20),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(20));

-- Location: FF_X45_Y6_N21
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

-- Location: LCCOMB_X45_Y6_N20
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

-- Location: LCCOMB_X45_Y6_N8
\inst2|bufferout[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(21) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(21))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(21),
	datac => \inst2|bufferout\(21),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(21));

-- Location: LCCOMB_X45_Y6_N12
\inst|buffer1~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~98_combout\ = (!\inst|buffer1[12]~86_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(21)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[9]~input_o\,
	datab => \inst1|OUTPUT\(3),
	datac => \inst2|bufferout\(21),
	datad => \inst|buffer1[12]~86_combout\,
	combout => \inst|buffer1~98_combout\);

-- Location: LCCOMB_X37_Y3_N0
\inst|Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal12~0_combout\ = (!\inst|counter\(3) & !\inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(3),
	datad => \inst|counter\(0),
	combout => \inst|Equal12~0_combout\);

-- Location: LCCOMB_X37_Y3_N18
\inst|Equal4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~5_combout\ = (\inst|counter\(1) & (!\inst|counter\(4) & (!\inst|counter\(2) & \inst|Equal12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(4),
	datac => \inst|counter\(2),
	datad => \inst|Equal12~0_combout\,
	combout => \inst|Equal4~5_combout\);

-- Location: FF_X44_Y6_N11
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

-- Location: LCCOMB_X44_Y6_N10
\inst2|buffer1[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(19) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(31)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(19),
	datac => \inst|bufferout\(31),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(19));

-- Location: LCCOMB_X44_Y6_N28
\inst2|bufferout[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(19) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(19))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(19),
	datac => \inst2|bufferout\(19),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(19));

-- Location: LCCOMB_X45_Y6_N30
\inst|buffer1~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~96_combout\ = (!\inst|buffer1[12]~86_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(19)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[7]~input_o\,
	datab => \inst1|OUTPUT\(3),
	datac => \inst|buffer1[12]~86_combout\,
	datad => \inst2|bufferout\(19),
	combout => \inst|buffer1~96_combout\);

-- Location: FF_X45_Y6_N31
\inst|buffer1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~96_combout\,
	ena => \inst|buffer1[12]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(19));

-- Location: FF_X45_Y6_N11
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

-- Location: LCCOMB_X45_Y6_N10
\inst2|buffer1[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(16) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(28)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(16),
	datac => \inst|bufferout\(28),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(16));

-- Location: LCCOMB_X45_Y6_N2
\inst2|bufferout[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(16) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(16))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(16),
	datac => \inst2|bufferout\(16),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(16));

-- Location: LCCOMB_X45_Y6_N16
\inst|buffer1~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~93_combout\ = (!\inst|buffer1[12]~86_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(16)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[4]~input_o\,
	datab => \inst2|bufferout\(16),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[12]~86_combout\,
	combout => \inst|buffer1~93_combout\);

-- Location: FF_X45_Y6_N17
\inst|buffer1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~93_combout\,
	ena => \inst|buffer1[12]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(16));

-- Location: FF_X44_Y4_N25
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

-- Location: LCCOMB_X44_Y4_N24
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

-- Location: LCCOMB_X44_Y4_N14
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

-- Location: LCCOMB_X44_Y4_N22
\inst|buffer1~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~94_combout\ = (!\inst|buffer1[12]~86_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(17))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst|buffer1[12]~86_combout\,
	datac => \inst2|bufferout\(17),
	datad => \ADC_IN[5]~input_o\,
	combout => \inst|buffer1~94_combout\);

-- Location: FF_X44_Y4_N23
\inst|buffer1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~94_combout\,
	ena => \inst|buffer1[12]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(17));

-- Location: FF_X44_Y6_N25
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

-- Location: LCCOMB_X44_Y6_N24
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

-- Location: LCCOMB_X44_Y6_N18
\inst2|bufferout[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(18) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(18))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(18),
	datab => \inst2|bufferout\(18),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(18));

-- Location: LCCOMB_X43_Y5_N14
\inst|buffer1~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~95_combout\ = (!\inst|buffer1[12]~86_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(18)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[6]~input_o\,
	datab => \inst2|bufferout\(18),
	datac => \inst|buffer1[12]~86_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~95_combout\);

-- Location: FF_X43_Y5_N15
\inst|buffer1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~95_combout\,
	ena => \inst|buffer1[12]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(18));

-- Location: LCCOMB_X45_Y5_N12
\inst|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal3~1_combout\ = (!\inst|buffer1\(19) & (!\inst|buffer1\(16) & (!\inst|buffer1\(17) & !\inst|buffer1\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(19),
	datab => \inst|buffer1\(16),
	datac => \inst|buffer1\(17),
	datad => \inst|buffer1\(18),
	combout => \inst|Equal3~1_combout\);

-- Location: FF_X44_Y4_N3
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

-- Location: LCCOMB_X44_Y4_N2
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

-- Location: LCCOMB_X44_Y4_N4
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

-- Location: LCCOMB_X44_Y4_N0
\inst|buffer1~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~92_combout\ = (!\inst|buffer1[12]~86_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(15)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[3]~input_o\,
	datab => \inst|buffer1[12]~86_combout\,
	datac => \inst2|bufferout\(15),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~92_combout\);

-- Location: FF_X44_Y4_N1
\inst|buffer1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~92_combout\,
	ena => \inst|buffer1[12]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(15));

-- Location: FF_X43_Y5_N11
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

-- Location: LCCOMB_X43_Y5_N10
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

-- Location: LCCOMB_X43_Y5_N22
\inst2|bufferout[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(12) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(12))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(12),
	datac => \inst2|bufferout\(12),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(12));

-- Location: LCCOMB_X43_Y5_N0
\inst|buffer1~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~87_combout\ = (!\inst|buffer1[12]~86_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(12))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(12),
	datab => \ADC_IN[0]~input_o\,
	datac => \inst|buffer1[12]~86_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~87_combout\);

-- Location: FF_X43_Y5_N1
\inst|buffer1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~87_combout\,
	ena => \inst|buffer1[12]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(12));

-- Location: FF_X43_Y5_N25
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

-- Location: LCCOMB_X43_Y5_N24
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

-- Location: LCCOMB_X43_Y5_N8
\inst2|bufferout[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(13) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(13))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(13),
	datac => \inst2|bufferout\(13),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(13));

-- Location: LCCOMB_X43_Y5_N26
\inst|buffer1~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~90_combout\ = (!\inst|buffer1[12]~86_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(13))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(13),
	datab => \ADC_IN[1]~input_o\,
	datac => \inst|buffer1[12]~86_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~90_combout\);

-- Location: FF_X43_Y5_N27
\inst|buffer1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~90_combout\,
	ena => \inst|buffer1[12]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(13));

-- Location: FF_X45_Y6_N29
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

-- Location: LCCOMB_X45_Y6_N28
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

-- Location: LCCOMB_X45_Y6_N14
\inst2|bufferout[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(14) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(14))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(14),
	datac => \inst2|bufferout\(14),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(14));

-- Location: LCCOMB_X45_Y6_N4
\inst|buffer1~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~91_combout\ = (!\inst|buffer1[12]~86_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(14)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[2]~input_o\,
	datab => \inst1|OUTPUT\(3),
	datac => \inst2|bufferout\(14),
	datad => \inst|buffer1[12]~86_combout\,
	combout => \inst|buffer1~91_combout\);

-- Location: FF_X45_Y6_N5
\inst|buffer1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~91_combout\,
	ena => \inst|buffer1[12]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(14));

-- Location: LCCOMB_X45_Y5_N14
\inst|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal3~0_combout\ = (!\inst|buffer1\(15) & (!\inst|buffer1\(12) & (!\inst|buffer1\(13) & !\inst|buffer1\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(15),
	datab => \inst|buffer1\(12),
	datac => \inst|buffer1\(13),
	datad => \inst|buffer1\(14),
	combout => \inst|Equal3~0_combout\);

-- Location: FF_X43_Y5_N29
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

-- Location: LCCOMB_X43_Y5_N28
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

-- Location: LCCOMB_X43_Y5_N16
\inst2|bufferout[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(23) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(23))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(23),
	datab => \inst2|bufferout\(23),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(23));

-- Location: LCCOMB_X43_Y5_N6
\inst|buffer1~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~100_combout\ = (!\inst|buffer1[12]~86_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(23))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(23),
	datab => \ADC_IN[11]~input_o\,
	datac => \inst|buffer1[12]~86_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~100_combout\);

-- Location: FF_X43_Y5_N7
\inst|buffer1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~100_combout\,
	ena => \inst|buffer1[12]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(23));

-- Location: FF_X44_Y4_N11
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

-- Location: LCCOMB_X44_Y4_N10
\inst2|buffer1[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(22) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(34)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(22),
	datac => \inst|bufferout\(34),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(22));

-- Location: LCCOMB_X44_Y4_N16
\inst2|bufferout[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(22) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(22))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(22),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(22),
	combout => \inst2|bufferout\(22));

-- Location: LCCOMB_X44_Y4_N20
\inst|buffer1~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~99_combout\ = (!\inst|buffer1[12]~86_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(22)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst|buffer1[12]~86_combout\,
	datac => \ADC_IN[10]~input_o\,
	datad => \inst2|bufferout\(22),
	combout => \inst|buffer1~99_combout\);

-- Location: FF_X44_Y4_N21
\inst|buffer1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~99_combout\,
	ena => \inst|buffer1[12]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(22));

-- Location: LCCOMB_X45_Y5_N10
\inst|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal3~2_combout\ = (!\inst|buffer1\(23) & (!\inst|buffer1\(21) & (!\inst|buffer1\(22) & !\inst|buffer1\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(23),
	datab => \inst|buffer1\(21),
	datac => \inst|buffer1\(22),
	datad => \inst|buffer1\(20),
	combout => \inst|Equal3~2_combout\);

-- Location: LCCOMB_X45_Y5_N16
\inst|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal3~3_combout\ = (\inst|Equal3~1_combout\ & (\inst|Equal3~0_combout\ & \inst|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~1_combout\,
	datac => \inst|Equal3~0_combout\,
	datad => \inst|Equal3~2_combout\,
	combout => \inst|Equal3~3_combout\);

-- Location: LCCOMB_X38_Y5_N22
\inst|buffer1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~35_combout\ = (!\inst|counter\(1) & (!\inst|counter\(4) & (\inst|buffer1~8_combout\ & \inst|Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(4),
	datac => \inst|buffer1~8_combout\,
	datad => \inst|Equal3~3_combout\,
	combout => \inst|buffer1~35_combout\);

-- Location: FF_X44_Y4_N7
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

-- Location: LCCOMB_X44_Y4_N6
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

-- Location: LCCOMB_X44_Y4_N8
\inst2|bufferout[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(10) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(10))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(10),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(10),
	combout => \inst2|bufferout\(10));

-- Location: LCCOMB_X44_Y5_N22
\inst|buffer1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~24_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(10)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[10]~input_o\,
	datac => \inst2|bufferout\(10),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~24_combout\);

-- Location: LCCOMB_X37_Y6_N16
\inst|buffer1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~19_combout\ = (\inst|counter\(4)) # ((\inst|counter\(3)) # ((\inst|counter\(0)) # (\inst|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|counter\(3),
	datac => \inst|counter\(0),
	datad => \inst|counter\(1),
	combout => \inst|buffer1~19_combout\);

-- Location: FF_X43_Y7_N3
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

-- Location: LCCOMB_X43_Y7_N2
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

-- Location: LCCOMB_X43_Y7_N12
\inst2|bufferout[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(8) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(8)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(8),
	datab => \inst2|buffer1\(8),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(8));

-- Location: LCCOMB_X44_Y5_N14
\inst|buffer1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~26_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(8)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[8]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(8),
	combout => \inst|buffer1~26_combout\);

-- Location: FF_X44_Y5_N15
\inst|buffer1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~26_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[2]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(8));

-- Location: FF_X41_Y9_N25
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

-- Location: LCCOMB_X41_Y9_N24
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

-- Location: LCCOMB_X41_Y9_N4
\inst2|bufferout[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(11) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(11))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(11),
	datac => \inst2|bufferout\(11),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(11));

-- Location: LCCOMB_X44_Y5_N0
\inst|buffer1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~22_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(11)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[11]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(11),
	combout => \inst|buffer1~22_combout\);

-- Location: FF_X44_Y5_N1
\inst|buffer1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~22_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[2]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(11));

-- Location: LCCOMB_X43_Y5_N12
\inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst|buffer1\(9)) # ((\inst|buffer1\(8)) # ((\inst|buffer1\(11)) # (\inst|buffer1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(9),
	datab => \inst|buffer1\(8),
	datac => \inst|buffer1\(11),
	datad => \inst|buffer1\(10),
	combout => \inst|Equal1~0_combout\);

-- Location: FF_X39_Y5_N11
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

-- Location: LCCOMB_X39_Y5_N10
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

-- Location: LCCOMB_X39_Y5_N8
\inst2|bufferout[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(0) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(0))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(0),
	datac => \inst2|bufferout\(0),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(0));

-- Location: LCCOMB_X44_Y5_N30
\inst|buffer1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~34_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(0)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[0]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(0),
	combout => \inst|buffer1~34_combout\);

-- Location: FF_X44_Y5_N31
\inst|buffer1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~34_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[2]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(0));

-- Location: FF_X39_Y5_N29
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

-- Location: LCCOMB_X39_Y5_N28
\inst2|buffer1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(1) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(13)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(1),
	datac => \inst|bufferout\(13),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(1));

-- Location: LCCOMB_X39_Y5_N22
\inst2|bufferout[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(1) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(1))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(1),
	datac => \inst2|bufferout\(1),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(1));

-- Location: LCCOMB_X44_Y5_N24
\inst|buffer1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~33_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(1)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[1]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(1),
	combout => \inst|buffer1~33_combout\);

-- Location: FF_X44_Y5_N25
\inst|buffer1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~33_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[2]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(1));

-- Location: FF_X44_Y4_N29
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

-- Location: LCCOMB_X44_Y4_N28
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

-- Location: LCCOMB_X44_Y4_N26
\inst2|bufferout[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(3) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(3))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(3),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(3),
	combout => \inst2|bufferout\(3));

-- Location: LCCOMB_X45_Y5_N0
\inst|buffer1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~31_combout\ = (\inst1|OUTPUT\(3) & (\inst2|bufferout\(3))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(3),
	datac => \ADC_IN[3]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~31_combout\);

-- Location: FF_X45_Y5_N1
\inst|buffer1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~31_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[2]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(3));

-- Location: FF_X45_Y6_N25
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

-- Location: LCCOMB_X45_Y6_N24
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

-- Location: LCCOMB_X45_Y6_N18
\inst2|bufferout[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(2) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(2))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(2),
	datab => \inst2|bufferout\(2),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(2));

-- Location: LCCOMB_X45_Y5_N26
\inst|buffer1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~32_combout\ = (\inst1|OUTPUT\(3) & (\inst2|bufferout\(2))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|bufferout\(2),
	datac => \ADC_IN[2]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~32_combout\);

-- Location: FF_X45_Y5_N27
\inst|buffer1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~32_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[2]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(2));

-- Location: LCCOMB_X44_Y5_N10
\inst|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~2_combout\ = (\inst|buffer1\(0)) # ((\inst|buffer1\(1)) # ((\inst|buffer1\(3)) # (\inst|buffer1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(0),
	datab => \inst|buffer1\(1),
	datac => \inst|buffer1\(3),
	datad => \inst|buffer1\(2),
	combout => \inst|Equal1~2_combout\);

-- Location: FF_X43_Y4_N11
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

-- Location: LCCOMB_X43_Y4_N10
\inst2|buffer1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(5) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(17)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(5),
	datac => \inst|bufferout\(17),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(5));

-- Location: LCCOMB_X43_Y4_N0
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

-- Location: LCCOMB_X44_Y5_N26
\inst|buffer1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~29_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(5)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[5]~input_o\,
	datac => \inst2|bufferout\(5),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~29_combout\);

-- Location: FF_X44_Y5_N27
\inst|buffer1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~29_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[2]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(5));

-- Location: FF_X43_Y5_N21
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

-- Location: LCCOMB_X43_Y5_N20
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

-- Location: LCCOMB_X43_Y5_N30
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

-- Location: LCCOMB_X44_Y5_N20
\inst|buffer1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~28_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(6)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[6]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(6),
	combout => \inst|buffer1~28_combout\);

-- Location: FF_X44_Y5_N21
\inst|buffer1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~28_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[2]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(6));

-- Location: FF_X44_Y6_N21
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

-- Location: LCCOMB_X44_Y6_N20
\inst2|buffer1[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(7) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(19)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(7),
	datac => \inst|bufferout\(19),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(7));

-- Location: LCCOMB_X44_Y6_N14
\inst2|bufferout[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(7) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(7))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(7),
	datac => \inst2|bufferout\(7),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(7));

-- Location: LCCOMB_X45_Y5_N4
\inst|buffer1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~27_combout\ = (\inst1|OUTPUT\(3) & (\inst2|bufferout\(7))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|bufferout\(7),
	datac => \ADC_IN[7]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~27_combout\);

-- Location: FF_X45_Y5_N5
\inst|buffer1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~27_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[2]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(7));

-- Location: FF_X41_Y5_N29
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

-- Location: LCCOMB_X41_Y5_N28
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

-- Location: LCCOMB_X41_Y5_N12
\inst2|bufferout[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(4) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(4))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(4),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|bufferout\(4),
	combout => \inst2|bufferout\(4));

-- Location: LCCOMB_X45_Y5_N18
\inst|buffer1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~30_combout\ = (\inst1|OUTPUT\(3) & (\inst2|bufferout\(4))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(4),
	datac => \ADC_IN[4]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~30_combout\);

-- Location: FF_X45_Y5_N19
\inst|buffer1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~30_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[2]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(4));

-- Location: LCCOMB_X45_Y5_N24
\inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (\inst|buffer1\(5)) # ((\inst|buffer1\(6)) # ((\inst|buffer1\(7)) # (\inst|buffer1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(5),
	datab => \inst|buffer1\(6),
	datac => \inst|buffer1\(7),
	datad => \inst|buffer1\(4),
	combout => \inst|Equal1~1_combout\);

-- Location: LCCOMB_X41_Y5_N16
\inst|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~3_combout\ = (\inst|Equal1~0_combout\) # ((\inst|Equal1~2_combout\) # (\inst|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal1~0_combout\,
	datac => \inst|Equal1~2_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|Equal1~3_combout\);

-- Location: LCCOMB_X41_Y5_N18
\inst|buffer1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~20_combout\ = (\inst|counter\(2)) # ((\inst|buffer1~19_combout\) # (\inst|Equal1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datac => \inst|buffer1~19_combout\,
	datad => \inst|Equal1~3_combout\,
	combout => \inst|buffer1~20_combout\);

-- Location: LCCOMB_X39_Y5_N0
\inst|buffer1[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[2]~23_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & ((\inst1|OUTPUT\(3)) # (!\inst|buffer1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst1|OUTPUT\(0),
	datac => \inst|buffer1~20_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1[2]~23_combout\);

-- Location: FF_X44_Y5_N23
\inst|buffer1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~24_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[2]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(10));

-- Location: LCCOMB_X44_Y5_N16
\inst|Equal5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~6_combout\ = (\inst|buffer1\(10) & (\inst|buffer1\(22) & (\inst|buffer1\(23) $ (!\inst|buffer1\(11))))) # (!\inst|buffer1\(10) & (!\inst|buffer1\(22) & (\inst|buffer1\(23) $ (!\inst|buffer1\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(10),
	datab => \inst|buffer1\(23),
	datac => \inst|buffer1\(22),
	datad => \inst|buffer1\(11),
	combout => \inst|Equal5~6_combout\);

-- Location: LCCOMB_X45_Y5_N6
\inst|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~3_combout\ = (\inst|buffer1\(19) & (\inst|buffer1\(7) & (\inst|buffer1\(18) $ (!\inst|buffer1\(6))))) # (!\inst|buffer1\(19) & (!\inst|buffer1\(7) & (\inst|buffer1\(18) $ (!\inst|buffer1\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(19),
	datab => \inst|buffer1\(7),
	datac => \inst|buffer1\(18),
	datad => \inst|buffer1\(6),
	combout => \inst|Equal5~3_combout\);

-- Location: LCCOMB_X44_Y5_N28
\inst|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~0_combout\ = (\inst|buffer1\(0) & (\inst|buffer1\(12) & (\inst|buffer1\(1) $ (!\inst|buffer1\(13))))) # (!\inst|buffer1\(0) & (!\inst|buffer1\(12) & (\inst|buffer1\(1) $ (!\inst|buffer1\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(0),
	datab => \inst|buffer1\(1),
	datac => \inst|buffer1\(13),
	datad => \inst|buffer1\(12),
	combout => \inst|Equal5~0_combout\);

-- Location: LCCOMB_X45_Y5_N22
\inst|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~1_combout\ = (\inst|buffer1\(2) & (\inst|buffer1\(14) & (\inst|buffer1\(3) $ (!\inst|buffer1\(15))))) # (!\inst|buffer1\(2) & (!\inst|buffer1\(14) & (\inst|buffer1\(3) $ (!\inst|buffer1\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(2),
	datab => \inst|buffer1\(3),
	datac => \inst|buffer1\(15),
	datad => \inst|buffer1\(14),
	combout => \inst|Equal5~1_combout\);

-- Location: LCCOMB_X45_Y5_N20
\inst|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~2_combout\ = (\inst|buffer1\(5) & (\inst|buffer1\(17) & (\inst|buffer1\(4) $ (!\inst|buffer1\(16))))) # (!\inst|buffer1\(5) & (!\inst|buffer1\(17) & (\inst|buffer1\(4) $ (!\inst|buffer1\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(5),
	datab => \inst|buffer1\(4),
	datac => \inst|buffer1\(17),
	datad => \inst|buffer1\(16),
	combout => \inst|Equal5~2_combout\);

-- Location: LCCOMB_X45_Y5_N8
\inst|Equal5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~4_combout\ = (\inst|Equal5~3_combout\ & (\inst|Equal5~0_combout\ & (\inst|Equal5~1_combout\ & \inst|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~3_combout\,
	datab => \inst|Equal5~0_combout\,
	datac => \inst|Equal5~1_combout\,
	datad => \inst|Equal5~2_combout\,
	combout => \inst|Equal5~4_combout\);

-- Location: LCCOMB_X45_Y5_N2
\inst|Equal5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~7_combout\ = (\inst|Equal5~6_combout\ & (\inst|Equal5~4_combout\ & \inst|Equal5~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~6_combout\,
	datac => \inst|Equal5~4_combout\,
	datad => \inst|Equal5~5_combout\,
	combout => \inst|Equal5~7_combout\);

-- Location: LCCOMB_X38_Y6_N2
\inst|buffer1[12]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[12]~88_combout\ = (!\inst1|OUTPUT\(3) & (!\inst|buffer1~35_combout\ & ((!\inst|Equal5~7_combout\) # (!\inst|Equal4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~5_combout\,
	datab => \inst1|OUTPUT\(3),
	datac => \inst|buffer1~35_combout\,
	datad => \inst|Equal5~7_combout\,
	combout => \inst|buffer1[12]~88_combout\);

-- Location: LCCOMB_X38_Y6_N18
\inst|buffer1[12]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[12]~89_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & !\inst|buffer1[12]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(1),
	datac => \inst|buffer1[12]~88_combout\,
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[12]~89_combout\);

-- Location: FF_X45_Y6_N13
\inst|buffer1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~98_combout\,
	ena => \inst|buffer1[12]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(21));

-- Location: FF_X43_Y7_N21
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

-- Location: LCCOMB_X43_Y7_N20
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

-- Location: LCCOMB_X43_Y7_N14
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

-- Location: LCCOMB_X44_Y5_N8
\inst|buffer1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~25_combout\ = (\inst1|OUTPUT\(3) & ((\inst2|bufferout\(9)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[9]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(9),
	combout => \inst|buffer1~25_combout\);

-- Location: FF_X44_Y5_N9
\inst|buffer1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~25_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|buffer1[2]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(9));

-- Location: LCCOMB_X44_Y5_N2
\inst|Equal5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~5_combout\ = (\inst|buffer1\(9) & (\inst|buffer1\(21) & (\inst|buffer1\(8) $ (!\inst|buffer1\(20))))) # (!\inst|buffer1\(9) & (!\inst|buffer1\(21) & (\inst|buffer1\(8) $ (!\inst|buffer1\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(9),
	datab => \inst|buffer1\(8),
	datac => \inst|buffer1\(20),
	datad => \inst|buffer1\(21),
	combout => \inst|Equal5~5_combout\);

-- Location: LCCOMB_X45_Y5_N30
\inst|buffer1[12]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[12]~13_combout\ = (\inst|Equal5~5_combout\ & (\inst|Equal5~4_combout\ & (\inst|Equal5~6_combout\ & \inst|Equal4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~5_combout\,
	datab => \inst|Equal5~4_combout\,
	datac => \inst|Equal5~6_combout\,
	datad => \inst|Equal4~5_combout\,
	combout => \inst|buffer1[12]~13_combout\);

-- Location: LCCOMB_X43_Y5_N18
\inst|buffer1[12]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[12]~86_combout\ = (\inst1|OUTPUT\(0)) # ((!\inst1|OUTPUT\(3) & \inst|buffer1[12]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst1|OUTPUT\(0),
	datad => \inst|buffer1[12]~13_combout\,
	combout => \inst|buffer1[12]~86_combout\);

-- Location: LCCOMB_X45_Y6_N26
\inst|buffer1~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~97_combout\ = (!\inst|buffer1[12]~86_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(20)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datab => \inst1|OUTPUT\(3),
	datac => \inst2|bufferout\(20),
	datad => \inst|buffer1[12]~86_combout\,
	combout => \inst|buffer1~97_combout\);

-- Location: FF_X45_Y6_N27
\inst|buffer1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~97_combout\,
	ena => \inst|buffer1[12]~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(20));

-- Location: LCCOMB_X44_Y7_N6
\inst|Equal9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~5_combout\ = (\inst|buffer1\(33) & (\inst|buffer1\(21) & (\inst|buffer1\(20) $ (!\inst|buffer1\(32))))) # (!\inst|buffer1\(33) & (!\inst|buffer1\(21) & (\inst|buffer1\(20) $ (!\inst|buffer1\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(33),
	datab => \inst|buffer1\(20),
	datac => \inst|buffer1\(21),
	datad => \inst|buffer1\(32),
	combout => \inst|Equal9~5_combout\);

-- Location: LCCOMB_X44_Y7_N28
\inst|Equal9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~6_combout\ = (\inst|buffer1\(34) & (\inst|buffer1\(22) & (\inst|buffer1\(23) $ (!\inst|buffer1\(35))))) # (!\inst|buffer1\(34) & (!\inst|buffer1\(22) & (\inst|buffer1\(23) $ (!\inst|buffer1\(35)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(34),
	datab => \inst|buffer1\(23),
	datac => \inst|buffer1\(35),
	datad => \inst|buffer1\(22),
	combout => \inst|Equal9~6_combout\);

-- Location: LCCOMB_X44_Y7_N22
\inst|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~0_combout\ = (\inst|buffer1\(24) & (\inst|buffer1\(12) & (\inst|buffer1\(25) $ (!\inst|buffer1\(13))))) # (!\inst|buffer1\(24) & (!\inst|buffer1\(12) & (\inst|buffer1\(25) $ (!\inst|buffer1\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(24),
	datab => \inst|buffer1\(25),
	datac => \inst|buffer1\(13),
	datad => \inst|buffer1\(12),
	combout => \inst|Equal9~0_combout\);

-- Location: LCCOMB_X44_Y6_N0
\inst|Equal9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~3_combout\ = (\inst|buffer1\(31) & (\inst|buffer1\(19) & (\inst|buffer1\(30) $ (!\inst|buffer1\(18))))) # (!\inst|buffer1\(31) & (!\inst|buffer1\(19) & (\inst|buffer1\(30) $ (!\inst|buffer1\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(31),
	datab => \inst|buffer1\(30),
	datac => \inst|buffer1\(19),
	datad => \inst|buffer1\(18),
	combout => \inst|Equal9~3_combout\);

-- Location: LCCOMB_X44_Y8_N30
\inst|Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~1_combout\ = (\inst|buffer1\(27) & (\inst|buffer1\(15) & (\inst|buffer1\(26) $ (!\inst|buffer1\(14))))) # (!\inst|buffer1\(27) & (!\inst|buffer1\(15) & (\inst|buffer1\(26) $ (!\inst|buffer1\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(27),
	datab => \inst|buffer1\(26),
	datac => \inst|buffer1\(15),
	datad => \inst|buffer1\(14),
	combout => \inst|Equal9~1_combout\);

-- Location: LCCOMB_X45_Y6_N0
\inst|Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~2_combout\ = (\inst|buffer1\(28) & (\inst|buffer1\(16) & (\inst|buffer1\(29) $ (!\inst|buffer1\(17))))) # (!\inst|buffer1\(28) & (!\inst|buffer1\(16) & (\inst|buffer1\(29) $ (!\inst|buffer1\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(28),
	datab => \inst|buffer1\(16),
	datac => \inst|buffer1\(29),
	datad => \inst|buffer1\(17),
	combout => \inst|Equal9~2_combout\);

-- Location: LCCOMB_X44_Y7_N8
\inst|Equal9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~4_combout\ = (\inst|Equal9~0_combout\ & (\inst|Equal9~3_combout\ & (\inst|Equal9~1_combout\ & \inst|Equal9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal9~0_combout\,
	datab => \inst|Equal9~3_combout\,
	datac => \inst|Equal9~1_combout\,
	datad => \inst|Equal9~2_combout\,
	combout => \inst|Equal9~4_combout\);

-- Location: LCCOMB_X38_Y5_N16
\inst|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~0_combout\ = (!\inst|counter\(0) & (!\inst|counter\(3) & (!\inst|counter\(1) & \inst|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(3),
	datac => \inst|counter\(1),
	datad => \inst|counter\(2),
	combout => \inst|Equal8~0_combout\);

-- Location: LCCOMB_X39_Y7_N6
\inst|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~1_combout\ = (!\inst|counter\(4) & \inst|Equal8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|counter\(4),
	datad => \inst|Equal8~0_combout\,
	combout => \inst|Equal8~1_combout\);

-- Location: LCCOMB_X44_Y7_N4
\inst|buffer1[24]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[24]~55_combout\ = (\inst|Equal9~5_combout\ & (\inst|Equal9~6_combout\ & (\inst|Equal9~4_combout\ & \inst|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal9~5_combout\,
	datab => \inst|Equal9~6_combout\,
	datac => \inst|Equal9~4_combout\,
	datad => \inst|Equal8~1_combout\,
	combout => \inst|buffer1[24]~55_combout\);

-- Location: LCCOMB_X44_Y7_N26
\inst|buffer1[24]~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[24]~177_combout\ = (\inst1|OUTPUT\(0)) # ((!\inst1|OUTPUT\(3) & \inst|buffer1[24]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datac => \inst|buffer1[24]~55_combout\,
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[24]~177_combout\);

-- Location: LCCOMB_X44_Y7_N30
\inst|buffer1~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~191_combout\ = (!\inst|buffer1[24]~177_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(35)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[11]~input_o\,
	datab => \inst2|bufferout\(35),
	datac => \inst|buffer1[24]~177_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~191_combout\);

-- Location: FF_X44_Y7_N31
\inst|buffer1[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~191_combout\,
	ena => \inst|buffer1[24]~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(35));

-- Location: LCCOMB_X36_Y6_N30
\inst|Equal13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~6_combout\ = (\inst|buffer1\(35) & (\inst|buffer1\(47) & (\inst|buffer1\(46) $ (!\inst|buffer1\(34))))) # (!\inst|buffer1\(35) & (!\inst|buffer1\(47) & (\inst|buffer1\(46) $ (!\inst|buffer1\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(35),
	datab => \inst|buffer1\(47),
	datac => \inst|buffer1\(46),
	datad => \inst|buffer1\(34),
	combout => \inst|Equal13~6_combout\);

-- Location: LCCOMB_X36_Y6_N28
\inst|Equal13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~5_combout\ = (\inst|buffer1\(45) & (\inst|buffer1\(33) & (\inst|buffer1\(32) $ (!\inst|buffer1\(44))))) # (!\inst|buffer1\(45) & (!\inst|buffer1\(33) & (\inst|buffer1\(32) $ (!\inst|buffer1\(44)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(45),
	datab => \inst|buffer1\(32),
	datac => \inst|buffer1\(44),
	datad => \inst|buffer1\(33),
	combout => \inst|Equal13~5_combout\);

-- Location: LCCOMB_X41_Y6_N26
\inst|Equal13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~2_combout\ = (\inst|buffer1\(29) & (\inst|buffer1\(41) & (\inst|buffer1\(40) $ (!\inst|buffer1\(28))))) # (!\inst|buffer1\(29) & (!\inst|buffer1\(41) & (\inst|buffer1\(40) $ (!\inst|buffer1\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(29),
	datab => \inst|buffer1\(40),
	datac => \inst|buffer1\(41),
	datad => \inst|buffer1\(28),
	combout => \inst|Equal13~2_combout\);

-- Location: LCCOMB_X41_Y6_N4
\inst|Equal13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~3_combout\ = (\inst|buffer1\(31) & (\inst|buffer1\(43) & (\inst|buffer1\(30) $ (!\inst|buffer1\(42))))) # (!\inst|buffer1\(31) & (!\inst|buffer1\(43) & (\inst|buffer1\(30) $ (!\inst|buffer1\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(31),
	datab => \inst|buffer1\(43),
	datac => \inst|buffer1\(30),
	datad => \inst|buffer1\(42),
	combout => \inst|Equal13~3_combout\);

-- Location: LCCOMB_X43_Y6_N6
\inst|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~0_combout\ = (\inst|buffer1\(37) & (\inst|buffer1\(25) & (\inst|buffer1\(36) $ (!\inst|buffer1\(24))))) # (!\inst|buffer1\(37) & (!\inst|buffer1\(25) & (\inst|buffer1\(36) $ (!\inst|buffer1\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(37),
	datab => \inst|buffer1\(36),
	datac => \inst|buffer1\(24),
	datad => \inst|buffer1\(25),
	combout => \inst|Equal13~0_combout\);

-- Location: LCCOMB_X43_Y6_N16
\inst|Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~1_combout\ = (\inst|buffer1\(38) & (\inst|buffer1\(26) & (\inst|buffer1\(39) $ (!\inst|buffer1\(27))))) # (!\inst|buffer1\(38) & (!\inst|buffer1\(26) & (\inst|buffer1\(39) $ (!\inst|buffer1\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(38),
	datab => \inst|buffer1\(39),
	datac => \inst|buffer1\(27),
	datad => \inst|buffer1\(26),
	combout => \inst|Equal13~1_combout\);

-- Location: LCCOMB_X41_Y6_N12
\inst|Equal13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~4_combout\ = (\inst|Equal13~2_combout\ & (\inst|Equal13~3_combout\ & (\inst|Equal13~0_combout\ & \inst|Equal13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal13~2_combout\,
	datab => \inst|Equal13~3_combout\,
	datac => \inst|Equal13~0_combout\,
	datad => \inst|Equal13~1_combout\,
	combout => \inst|Equal13~4_combout\);

-- Location: LCCOMB_X36_Y6_N8
\inst|Equal13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~7_combout\ = (\inst|Equal13~6_combout\ & (\inst|Equal13~5_combout\ & \inst|Equal13~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal13~6_combout\,
	datac => \inst|Equal13~5_combout\,
	datad => \inst|Equal13~4_combout\,
	combout => \inst|Equal13~7_combout\);

-- Location: LCCOMB_X36_Y6_N26
\inst|buffer1[36]~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[36]~210_combout\ = (!\inst|counter\(3) & (!\inst|counter\(0) & (\inst|Equal12~1_combout\ & \inst|Equal13~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datab => \inst|counter\(0),
	datac => \inst|Equal12~1_combout\,
	datad => \inst|Equal13~7_combout\,
	combout => \inst|buffer1[36]~210_combout\);

-- Location: LCCOMB_X40_Y6_N20
\inst|buffer1[36]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[36]~56_combout\ = (\inst1|OUTPUT\(0)) # ((!\inst1|OUTPUT\(3) & \inst|buffer1[36]~210_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datac => \inst1|OUTPUT\(0),
	datad => \inst|buffer1[36]~210_combout\,
	combout => \inst|buffer1[36]~56_combout\);

-- Location: LCCOMB_X43_Y6_N26
\inst|buffer1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~61_combout\ = (!\inst|buffer1[36]~56_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(38))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(38),
	datab => \ADC_IN[2]~input_o\,
	datac => \inst|buffer1[36]~56_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~61_combout\);

-- Location: FF_X43_Y6_N27
\inst|buffer1[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~61_combout\,
	ena => \inst|buffer1[36]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(38));

-- Location: LCCOMB_X43_Y6_N30
\inst|Equal17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal17~1_combout\ = (\inst|buffer1\(38) & (\inst|buffer1\(50) & (\inst|buffer1\(51) $ (!\inst|buffer1\(39))))) # (!\inst|buffer1\(38) & (!\inst|buffer1\(50) & (\inst|buffer1\(51) $ (!\inst|buffer1\(39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(38),
	datab => \inst|buffer1\(50),
	datac => \inst|buffer1\(51),
	datad => \inst|buffer1\(39),
	combout => \inst|Equal17~1_combout\);

-- Location: LCCOMB_X43_Y6_N8
\inst|Equal17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal17~0_combout\ = (\inst|buffer1\(36) & (\inst|buffer1\(48) & (\inst|buffer1\(49) $ (!\inst|buffer1\(37))))) # (!\inst|buffer1\(36) & (!\inst|buffer1\(48) & (\inst|buffer1\(49) $ (!\inst|buffer1\(37)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(36),
	datab => \inst|buffer1\(49),
	datac => \inst|buffer1\(37),
	datad => \inst|buffer1\(48),
	combout => \inst|Equal17~0_combout\);

-- Location: LCCOMB_X43_Y6_N14
\inst|Equal17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal17~3_combout\ = (\inst|buffer1\(43) & (\inst|buffer1\(55) & (\inst|buffer1\(42) $ (!\inst|buffer1\(54))))) # (!\inst|buffer1\(43) & (!\inst|buffer1\(55) & (\inst|buffer1\(42) $ (!\inst|buffer1\(54)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(43),
	datab => \inst|buffer1\(42),
	datac => \inst|buffer1\(54),
	datad => \inst|buffer1\(55),
	combout => \inst|Equal17~3_combout\);

-- Location: LCCOMB_X43_Y6_N0
\inst|Equal17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal17~2_combout\ = (\inst|buffer1\(40) & (\inst|buffer1\(52) & (\inst|buffer1\(41) $ (!\inst|buffer1\(53))))) # (!\inst|buffer1\(40) & (!\inst|buffer1\(52) & (\inst|buffer1\(41) $ (!\inst|buffer1\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(40),
	datab => \inst|buffer1\(41),
	datac => \inst|buffer1\(53),
	datad => \inst|buffer1\(52),
	combout => \inst|Equal17~2_combout\);

-- Location: LCCOMB_X43_Y6_N24
\inst|Equal17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal17~4_combout\ = (\inst|Equal17~1_combout\ & (\inst|Equal17~0_combout\ & (\inst|Equal17~3_combout\ & \inst|Equal17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal17~1_combout\,
	datab => \inst|Equal17~0_combout\,
	datac => \inst|Equal17~3_combout\,
	datad => \inst|Equal17~2_combout\,
	combout => \inst|Equal17~4_combout\);

-- Location: LCCOMB_X39_Y6_N8
\inst|Equal17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal17~6_combout\ = (\inst|buffer1\(59) & (\inst|buffer1\(47) & (\inst|buffer1\(58) $ (!\inst|buffer1\(46))))) # (!\inst|buffer1\(59) & (!\inst|buffer1\(47) & (\inst|buffer1\(58) $ (!\inst|buffer1\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(59),
	datab => \inst|buffer1\(47),
	datac => \inst|buffer1\(58),
	datad => \inst|buffer1\(46),
	combout => \inst|Equal17~6_combout\);

-- Location: LCCOMB_X39_Y6_N0
\inst|Equal17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal17~7_combout\ = (\inst|Equal17~4_combout\ & (\inst|Equal17~5_combout\ & \inst|Equal17~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal17~4_combout\,
	datab => \inst|Equal17~5_combout\,
	datac => \inst|Equal17~6_combout\,
	combout => \inst|Equal17~7_combout\);

-- Location: LCCOMB_X39_Y6_N20
\inst|buffer1[48]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[48]~164_combout\ = (!\inst1|OUTPUT\(3) & ((!\inst|Equal17~7_combout\) # (!\inst|Equal16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(3),
	datac => \inst|Equal16~1_combout\,
	datad => \inst|Equal17~7_combout\,
	combout => \inst|buffer1[48]~164_combout\);

-- Location: LCCOMB_X40_Y3_N0
\inst|Equal15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal15~1_combout\ = (!\inst|buffer1\(52) & (!\inst|buffer1\(53) & (!\inst|buffer1\(55) & !\inst|buffer1\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(52),
	datab => \inst|buffer1\(53),
	datac => \inst|buffer1\(55),
	datad => \inst|buffer1\(54),
	combout => \inst|Equal15~1_combout\);

-- Location: LCCOMB_X38_Y4_N8
\inst|Equal15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal15~2_combout\ = (!\inst|buffer1\(56) & (!\inst|buffer1\(58) & (!\inst|buffer1\(59) & !\inst|buffer1\(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(56),
	datab => \inst|buffer1\(58),
	datac => \inst|buffer1\(59),
	datad => \inst|buffer1\(57),
	combout => \inst|Equal15~2_combout\);

-- Location: LCCOMB_X43_Y4_N12
\inst|Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal15~0_combout\ = (!\inst|buffer1\(49) & (!\inst|buffer1\(50) & (!\inst|buffer1\(51) & !\inst|buffer1\(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(49),
	datab => \inst|buffer1\(50),
	datac => \inst|buffer1\(51),
	datad => \inst|buffer1\(48),
	combout => \inst|Equal15~0_combout\);

-- Location: LCCOMB_X38_Y4_N10
\inst|Equal15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal15~3_combout\ = (\inst|Equal15~1_combout\ & (\inst|Equal15~2_combout\ & \inst|Equal15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal15~1_combout\,
	datac => \inst|Equal15~2_combout\,
	datad => \inst|Equal15~0_combout\,
	combout => \inst|Equal15~3_combout\);

-- Location: LCCOMB_X38_Y4_N4
\inst|buffer1~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~208_combout\ = (!\inst|counter\(3) & (\inst|Equal12~1_combout\ & (\inst|counter\(0) & \inst|Equal15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datab => \inst|Equal12~1_combout\,
	datac => \inst|counter\(0),
	datad => \inst|Equal15~3_combout\,
	combout => \inst|buffer1~208_combout\);

-- Location: LCCOMB_X39_Y6_N18
\inst|buffer1[48]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[48]~165_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & ((\inst|buffer1~208_combout\) # (!\inst|buffer1[48]~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[48]~164_combout\,
	datab => \inst1|OUTPUT\(0),
	datac => \inst1|OUTPUT\(1),
	datad => \inst|buffer1~208_combout\,
	combout => \inst|buffer1[48]~165_combout\);

-- Location: FF_X39_Y6_N7
\inst|buffer1[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~173_combout\,
	ena => \inst|buffer1[48]~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(56));

-- Location: LCCOMB_X39_Y6_N16
\inst|Equal17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal17~5_combout\ = (\inst|buffer1\(56) & (\inst|buffer1\(44) & (\inst|buffer1\(57) $ (!\inst|buffer1\(45))))) # (!\inst|buffer1\(56) & (!\inst|buffer1\(44) & (\inst|buffer1\(57) $ (!\inst|buffer1\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(56),
	datab => \inst|buffer1\(57),
	datac => \inst|buffer1\(44),
	datad => \inst|buffer1\(45),
	combout => \inst|Equal17~5_combout\);

-- Location: LCCOMB_X38_Y5_N28
\inst|buffer1[48]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[48]~37_combout\ = (\inst|Equal17~5_combout\ & (\inst|Equal17~6_combout\ & (\inst|Equal16~1_combout\ & \inst|Equal17~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal17~5_combout\,
	datab => \inst|Equal17~6_combout\,
	datac => \inst|Equal16~1_combout\,
	datad => \inst|Equal17~4_combout\,
	combout => \inst|buffer1[48]~37_combout\);

-- Location: LCCOMB_X39_Y5_N30
\inst|buffer1[48]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[48]~162_combout\ = (\inst1|OUTPUT\(0)) # ((\inst|buffer1[48]~37_combout\ & !\inst1|OUTPUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[48]~37_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[48]~162_combout\);

-- Location: FF_X39_Y6_N3
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

-- Location: LCCOMB_X39_Y6_N2
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

-- Location: LCCOMB_X39_Y6_N14
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

-- Location: LCCOMB_X39_Y6_N30
\inst|buffer1~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~176_combout\ = (!\inst|buffer1[48]~162_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(59)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[11]~input_o\,
	datab => \inst|buffer1[48]~162_combout\,
	datac => \inst2|bufferout\(59),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~176_combout\);

-- Location: FF_X39_Y6_N31
\inst|buffer1[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~176_combout\,
	ena => \inst|buffer1[48]~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(59));

-- Location: LCCOMB_X39_Y5_N12
\inst|Equal21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal21~6_combout\ = (\inst|buffer1\(71) & (\inst|buffer1\(59) & (\inst|buffer1\(70) $ (!\inst|buffer1\(58))))) # (!\inst|buffer1\(71) & (!\inst|buffer1\(59) & (\inst|buffer1\(70) $ (!\inst|buffer1\(58)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(71),
	datab => \inst|buffer1\(70),
	datac => \inst|buffer1\(59),
	datad => \inst|buffer1\(58),
	combout => \inst|Equal21~6_combout\);

-- Location: LCCOMB_X38_Y4_N30
\inst|Equal21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal21~5_combout\ = (\inst|buffer1\(69) & (\inst|buffer1\(57) & (\inst|buffer1\(68) $ (!\inst|buffer1\(56))))) # (!\inst|buffer1\(69) & (!\inst|buffer1\(57) & (\inst|buffer1\(68) $ (!\inst|buffer1\(56)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(69),
	datab => \inst|buffer1\(68),
	datac => \inst|buffer1\(56),
	datad => \inst|buffer1\(57),
	combout => \inst|Equal21~5_combout\);

-- Location: LCCOMB_X38_Y3_N30
\inst|Equal21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal21~3_combout\ = (\inst|buffer1\(55) & (\inst|buffer1\(67) & (\inst|buffer1\(66) $ (!\inst|buffer1\(54))))) # (!\inst|buffer1\(55) & (!\inst|buffer1\(67) & (\inst|buffer1\(66) $ (!\inst|buffer1\(54)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(55),
	datab => \inst|buffer1\(66),
	datac => \inst|buffer1\(67),
	datad => \inst|buffer1\(54),
	combout => \inst|Equal21~3_combout\);

-- Location: LCCOMB_X38_Y3_N24
\inst|Equal21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal21~0_combout\ = (\inst|buffer1\(61) & (\inst|buffer1\(49) & (\inst|buffer1\(60) $ (!\inst|buffer1\(48))))) # (!\inst|buffer1\(61) & (!\inst|buffer1\(49) & (\inst|buffer1\(60) $ (!\inst|buffer1\(48)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(61),
	datab => \inst|buffer1\(60),
	datac => \inst|buffer1\(49),
	datad => \inst|buffer1\(48),
	combout => \inst|Equal21~0_combout\);

-- Location: LCCOMB_X41_Y4_N30
\inst|Equal21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal21~1_combout\ = (\inst|buffer1\(62) & (\inst|buffer1\(50) & (\inst|buffer1\(63) $ (!\inst|buffer1\(51))))) # (!\inst|buffer1\(62) & (!\inst|buffer1\(50) & (\inst|buffer1\(63) $ (!\inst|buffer1\(51)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(62),
	datab => \inst|buffer1\(63),
	datac => \inst|buffer1\(51),
	datad => \inst|buffer1\(50),
	combout => \inst|Equal21~1_combout\);

-- Location: LCCOMB_X40_Y3_N18
\inst|Equal21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal21~2_combout\ = (\inst|buffer1\(52) & (\inst|buffer1\(64) & (\inst|buffer1\(53) $ (!\inst|buffer1\(65))))) # (!\inst|buffer1\(52) & (!\inst|buffer1\(64) & (\inst|buffer1\(53) $ (!\inst|buffer1\(65)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(52),
	datab => \inst|buffer1\(53),
	datac => \inst|buffer1\(65),
	datad => \inst|buffer1\(64),
	combout => \inst|Equal21~2_combout\);

-- Location: LCCOMB_X38_Y3_N12
\inst|Equal21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal21~4_combout\ = (\inst|Equal21~3_combout\ & (\inst|Equal21~0_combout\ & (\inst|Equal21~1_combout\ & \inst|Equal21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal21~3_combout\,
	datab => \inst|Equal21~0_combout\,
	datac => \inst|Equal21~1_combout\,
	datad => \inst|Equal21~2_combout\,
	combout => \inst|Equal21~4_combout\);

-- Location: LCCOMB_X38_Y3_N6
\inst|Equal21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal21~7_combout\ = (\inst|Equal21~6_combout\ & (\inst|Equal21~5_combout\ & \inst|Equal21~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal21~6_combout\,
	datac => \inst|Equal21~5_combout\,
	datad => \inst|Equal21~4_combout\,
	combout => \inst|Equal21~7_combout\);

-- Location: LCCOMB_X37_Y7_N12
\inst|buffer1[62]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[62]~101_combout\ = (\inst|counter\(1) & (!\inst|counter\(2) & (\inst|Equal16~0_combout\ & \inst|Equal21~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(2),
	datac => \inst|Equal16~0_combout\,
	datad => \inst|Equal21~7_combout\,
	combout => \inst|buffer1[62]~101_combout\);

-- Location: LCCOMB_X37_Y7_N26
\inst|buffer1[62]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[62]~102_combout\ = (\inst1|OUTPUT\(0)) # ((!\inst1|OUTPUT\(3) & \inst|buffer1[62]~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(3),
	datac => \inst1|OUTPUT\(0),
	datad => \inst|buffer1[62]~101_combout\,
	combout => \inst|buffer1[62]~102_combout\);

-- Location: FF_X35_Y4_N3
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

-- Location: LCCOMB_X35_Y4_N2
\inst2|buffer1[80]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(80) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(92)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(80)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(80),
	datac => \inst|bufferout\(92),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(80));

-- Location: LCCOMB_X35_Y4_N30
\inst2|bufferout[80]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(80) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(80))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(80))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(80),
	datac => \inst2|bufferout\(80),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(80));

-- Location: LCCOMB_X35_Y4_N0
\inst|buffer1~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~203_combout\ = (!\inst|buffer1[83]~192_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(80)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[83]~192_combout\,
	datab => \ADC_IN[8]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(80),
	combout => \inst|buffer1~203_combout\);

-- Location: FF_X35_Y4_N1
\inst|buffer1[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~203_combout\,
	ena => \inst|buffer1[83]~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(80));

-- Location: FF_X36_Y4_N29
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

-- Location: LCCOMB_X36_Y4_N28
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

-- Location: LCCOMB_X36_Y4_N8
\inst2|bufferout[68]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(68) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(68))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(68))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(68),
	datac => \inst2|bufferout\(68),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(68));

-- Location: LCCOMB_X36_Y4_N26
\inst|buffer1~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~113_combout\ = (!\inst|buffer1[62]~102_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(68))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[62]~102_combout\,
	datab => \inst2|bufferout\(68),
	datac => \inst1|OUTPUT\(3),
	datad => \ADC_IN[8]~input_o\,
	combout => \inst|buffer1~113_combout\);

-- Location: FF_X36_Y4_N27
\inst|buffer1[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~113_combout\,
	ena => \inst|buffer1[62]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(68));

-- Location: LCCOMB_X36_Y4_N10
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

-- Location: LCCOMB_X39_Y5_N2
\inst|Equal25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal25~6_combout\ = (\inst|buffer1\(71) & (\inst|buffer1\(83) & (\inst|buffer1\(82) $ (!\inst|buffer1\(70))))) # (!\inst|buffer1\(71) & (!\inst|buffer1\(83) & (\inst|buffer1\(82) $ (!\inst|buffer1\(70)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(71),
	datab => \inst|buffer1\(83),
	datac => \inst|buffer1\(82),
	datad => \inst|buffer1\(70),
	combout => \inst|Equal25~6_combout\);

-- Location: LCCOMB_X36_Y4_N6
\inst|Equal25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal25~3_combout\ = (\inst|buffer1\(66) & (\inst|buffer1\(78) & (\inst|buffer1\(67) $ (!\inst|buffer1\(79))))) # (!\inst|buffer1\(66) & (!\inst|buffer1\(78) & (\inst|buffer1\(67) $ (!\inst|buffer1\(79)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(66),
	datab => \inst|buffer1\(78),
	datac => \inst|buffer1\(67),
	datad => \inst|buffer1\(79),
	combout => \inst|Equal25~3_combout\);

-- Location: LCCOMB_X36_Y4_N18
\inst|Equal25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal25~2_combout\ = (\inst|buffer1\(77) & (\inst|buffer1\(65) & (\inst|buffer1\(76) $ (!\inst|buffer1\(64))))) # (!\inst|buffer1\(77) & (!\inst|buffer1\(65) & (\inst|buffer1\(76) $ (!\inst|buffer1\(64)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(77),
	datab => \inst|buffer1\(65),
	datac => \inst|buffer1\(76),
	datad => \inst|buffer1\(64),
	combout => \inst|Equal25~2_combout\);

-- Location: LCCOMB_X41_Y4_N16
\inst|Equal25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal25~1_combout\ = (\inst|buffer1\(62) & (\inst|buffer1\(74) & (\inst|buffer1\(63) $ (!\inst|buffer1\(75))))) # (!\inst|buffer1\(62) & (!\inst|buffer1\(74) & (\inst|buffer1\(63) $ (!\inst|buffer1\(75)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(62),
	datab => \inst|buffer1\(63),
	datac => \inst|buffer1\(75),
	datad => \inst|buffer1\(74),
	combout => \inst|Equal25~1_combout\);

-- Location: LCCOMB_X39_Y4_N16
\inst|Equal25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal25~0_combout\ = (\inst|buffer1\(73) & (\inst|buffer1\(61) & (\inst|buffer1\(60) $ (!\inst|buffer1\(72))))) # (!\inst|buffer1\(73) & (!\inst|buffer1\(61) & (\inst|buffer1\(60) $ (!\inst|buffer1\(72)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(73),
	datab => \inst|buffer1\(61),
	datac => \inst|buffer1\(60),
	datad => \inst|buffer1\(72),
	combout => \inst|Equal25~0_combout\);

-- Location: LCCOMB_X36_Y4_N2
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

-- Location: LCCOMB_X36_Y4_N22
\inst|Equal25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal25~7_combout\ = (\inst|Equal25~5_combout\ & (\inst|Equal25~6_combout\ & \inst|Equal25~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal25~5_combout\,
	datac => \inst|Equal25~6_combout\,
	datad => \inst|Equal25~4_combout\,
	combout => \inst|Equal25~7_combout\);

-- Location: LCCOMB_X35_Y4_N14
\inst|buffer1[83]~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[83]~192_combout\ = (\inst1|OUTPUT\(0)) # ((\inst|Equal25~7_combout\ & (\inst|Equal24~1_combout\ & !\inst1|OUTPUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst|Equal25~7_combout\,
	datac => \inst|Equal24~1_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1[83]~192_combout\);

-- Location: FF_X40_Y5_N29
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

-- Location: LCCOMB_X40_Y5_N28
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

-- Location: LCCOMB_X40_Y5_N4
\inst2|bufferout[81]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(81) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(81))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(81))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(81),
	datac => \inst2|bufferout\(81),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(81));

-- Location: LCCOMB_X40_Y4_N22
\inst|buffer1~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~204_combout\ = (!\inst|buffer1[83]~192_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(81)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst|buffer1[83]~192_combout\,
	datac => \ADC_IN[9]~input_o\,
	datad => \inst2|bufferout\(81),
	combout => \inst|buffer1~204_combout\);

-- Location: FF_X40_Y4_N23
\inst|buffer1[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~204_combout\,
	ena => \inst|buffer1[83]~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(81));

-- Location: LCCOMB_X39_Y3_N6
\inst|Equal29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal29~5_combout\ = (\inst|buffer1\(92) & (\inst|buffer1\(80) & (\inst|buffer1\(93) $ (!\inst|buffer1\(81))))) # (!\inst|buffer1\(92) & (!\inst|buffer1\(80) & (\inst|buffer1\(93) $ (!\inst|buffer1\(81)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(92),
	datab => \inst|buffer1\(93),
	datac => \inst|buffer1\(81),
	datad => \inst|buffer1\(80),
	combout => \inst|Equal29~5_combout\);

-- Location: LCCOMB_X39_Y7_N28
\inst|Equal29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal29~6_combout\ = (\inst|buffer1\(82) & (\inst|buffer1\(94) & (\inst|buffer1\(95) $ (!\inst|buffer1\(83))))) # (!\inst|buffer1\(82) & (!\inst|buffer1\(94) & (\inst|buffer1\(95) $ (!\inst|buffer1\(83)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(82),
	datab => \inst|buffer1\(94),
	datac => \inst|buffer1\(95),
	datad => \inst|buffer1\(83),
	combout => \inst|Equal29~6_combout\);

-- Location: LCCOMB_X39_Y3_N10
\inst|Equal29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal29~1_combout\ = (\inst|buffer1\(86) & (\inst|buffer1\(74) & (\inst|buffer1\(87) $ (!\inst|buffer1\(75))))) # (!\inst|buffer1\(86) & (!\inst|buffer1\(74) & (\inst|buffer1\(87) $ (!\inst|buffer1\(75)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(86),
	datab => \inst|buffer1\(87),
	datac => \inst|buffer1\(74),
	datad => \inst|buffer1\(75),
	combout => \inst|Equal29~1_combout\);

-- Location: LCCOMB_X39_Y3_N28
\inst|Equal29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal29~0_combout\ = (\inst|buffer1\(84) & (\inst|buffer1\(72) & (\inst|buffer1\(85) $ (!\inst|buffer1\(73))))) # (!\inst|buffer1\(84) & (!\inst|buffer1\(72) & (\inst|buffer1\(85) $ (!\inst|buffer1\(73)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(84),
	datab => \inst|buffer1\(85),
	datac => \inst|buffer1\(73),
	datad => \inst|buffer1\(72),
	combout => \inst|Equal29~0_combout\);

-- Location: LCCOMB_X39_Y3_N4
\inst|Equal29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal29~2_combout\ = (\inst|buffer1\(77) & (\inst|buffer1\(89) & (\inst|buffer1\(76) $ (!\inst|buffer1\(88))))) # (!\inst|buffer1\(77) & (!\inst|buffer1\(89) & (\inst|buffer1\(76) $ (!\inst|buffer1\(88)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(77),
	datab => \inst|buffer1\(89),
	datac => \inst|buffer1\(76),
	datad => \inst|buffer1\(88),
	combout => \inst|Equal29~2_combout\);

-- Location: LCCOMB_X39_Y3_N2
\inst|Equal29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal29~3_combout\ = (\inst|buffer1\(90) & (\inst|buffer1\(78) & (\inst|buffer1\(91) $ (!\inst|buffer1\(79))))) # (!\inst|buffer1\(90) & (!\inst|buffer1\(78) & (\inst|buffer1\(91) $ (!\inst|buffer1\(79)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(90),
	datab => \inst|buffer1\(91),
	datac => \inst|buffer1\(79),
	datad => \inst|buffer1\(78),
	combout => \inst|Equal29~3_combout\);

-- Location: LCCOMB_X39_Y3_N12
\inst|Equal29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal29~4_combout\ = (\inst|Equal29~1_combout\ & (\inst|Equal29~0_combout\ & (\inst|Equal29~2_combout\ & \inst|Equal29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal29~1_combout\,
	datab => \inst|Equal29~0_combout\,
	datac => \inst|Equal29~2_combout\,
	datad => \inst|Equal29~3_combout\,
	combout => \inst|Equal29~4_combout\);

-- Location: LCCOMB_X39_Y3_N8
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

-- Location: LCCOMB_X39_Y6_N24
\inst|buffer1[89]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[89]~71_combout\ = (\inst1|OUTPUT\(0)) # ((\inst|Equal28~0_combout\ & (!\inst1|OUTPUT\(3) & \inst|Equal29~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal28~0_combout\,
	datab => \inst1|OUTPUT\(0),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|Equal29~7_combout\,
	combout => \inst|buffer1[89]~71_combout\);

-- Location: FF_X40_Y5_N3
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

-- Location: LCCOMB_X40_Y5_N2
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

-- Location: LCCOMB_X40_Y5_N26
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

-- Location: LCCOMB_X38_Y7_N12
\inst|buffer1~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~81_combout\ = (!\inst|buffer1[89]~71_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(95)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[89]~71_combout\,
	datab => \ADC_IN[11]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst2|bufferout\(95),
	combout => \inst|buffer1~81_combout\);

-- Location: FF_X38_Y7_N13
\inst|buffer1[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~81_combout\,
	ena => \inst|buffer1[89]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(95));

-- Location: LCCOMB_X38_Y7_N14
\inst|Equal27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal27~1_combout\ = (!\inst|buffer1\(95) & (!\inst|buffer1\(93) & (!\inst|buffer1\(94) & !\inst|buffer1\(92))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(95),
	datab => \inst|buffer1\(93),
	datac => \inst|buffer1\(94),
	datad => \inst|buffer1\(92),
	combout => \inst|Equal27~1_combout\);

-- Location: LCCOMB_X39_Y3_N16
\inst|Equal27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal27~0_combout\ = (!\inst|buffer1\(90) & (!\inst|buffer1\(88) & (!\inst|buffer1\(91) & !\inst|buffer1\(89))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(90),
	datab => \inst|buffer1\(88),
	datac => \inst|buffer1\(91),
	datad => \inst|buffer1\(89),
	combout => \inst|Equal27~0_combout\);

-- Location: LCCOMB_X39_Y3_N14
\inst|Equal27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal27~2_combout\ = (!\inst|buffer1\(86) & (!\inst|buffer1\(85) & (!\inst|buffer1\(84) & !\inst|buffer1\(87))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(86),
	datab => \inst|buffer1\(85),
	datac => \inst|buffer1\(84),
	datad => \inst|buffer1\(87),
	combout => \inst|Equal27~2_combout\);

-- Location: LCCOMB_X39_Y3_N18
\inst|buffer1~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~207_combout\ = (\inst|counter\(0) & (\inst|Equal27~2_combout\ & (\inst|counter\(3) & !\inst|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|Equal27~2_combout\,
	datac => \inst|counter\(3),
	datad => \inst|counter\(4),
	combout => \inst|buffer1~207_combout\);

-- Location: LCCOMB_X39_Y3_N0
\inst|buffer1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~12_combout\ = (\inst|Equal27~1_combout\ & (\inst|Equal27~0_combout\ & (\inst|Equal24~0_combout\ & \inst|buffer1~207_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal27~1_combout\,
	datab => \inst|Equal27~0_combout\,
	datac => \inst|Equal24~0_combout\,
	datad => \inst|buffer1~207_combout\,
	combout => \inst|buffer1~12_combout\);

-- Location: LCCOMB_X37_Y4_N22
\inst|counter~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~18_combout\ = (!\inst|buffer1~12_combout\ & (!\inst|buffer1~10_combout\ & !\inst|buffer1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~12_combout\,
	datac => \inst|buffer1~10_combout\,
	datad => \inst|buffer1~15_combout\,
	combout => \inst|counter~18_combout\);

-- Location: LCCOMB_X37_Y4_N16
\inst|BufferCount~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~3_combout\ = (!\inst|buffer1~208_combout\ & !\inst|buffer1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~208_combout\,
	datad => \inst|buffer1~14_combout\,
	combout => \inst|BufferCount~3_combout\);

-- Location: LCCOMB_X36_Y5_N20
\inst|BufferCount~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~4_combout\ = (!\inst|buffer1~209_combout\ & (!\inst|buffer1~17_combout\ & (!\inst|buffer1~18_combout\ & !\inst|buffer1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~209_combout\,
	datab => \inst|buffer1~17_combout\,
	datac => \inst|buffer1~18_combout\,
	datad => \inst|buffer1~21_combout\,
	combout => \inst|BufferCount~4_combout\);

-- Location: LCCOMB_X37_Y4_N0
\inst|counter~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~19_combout\ = (\inst|counter~18_combout\ & (\inst|BufferCount~3_combout\ & (!\inst|buffer1~9_combout\ & \inst|BufferCount~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~18_combout\,
	datab => \inst|BufferCount~3_combout\,
	datac => \inst|buffer1~9_combout\,
	datad => \inst|BufferCount~4_combout\,
	combout => \inst|counter~19_combout\);

-- Location: LCCOMB_X37_Y3_N30
\inst|Equal36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal36~0_combout\ = (!\inst|counter\(2) & (\inst|counter\(4) & (\inst|counter\(1) & \inst|Equal12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(4),
	datac => \inst|counter\(1),
	datad => \inst|Equal12~0_combout\,
	combout => \inst|Equal36~0_combout\);

-- Location: LCCOMB_X37_Y3_N12
\inst|counter~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~28_combout\ = (!\inst|Equal36~0_combout\ & ((!\inst|Equal32~0_combout\) # (!\inst|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datac => \inst|Equal36~0_combout\,
	datad => \inst|Equal32~0_combout\,
	combout => \inst|counter~28_combout\);

-- Location: LCCOMB_X37_Y3_N6
\inst|counter~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~29_combout\ = (!\inst|Equal44~0_combout\ & (!\inst|Equal32~1_combout\ & (!\inst|Equal28~0_combout\ & \inst|counter~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal44~0_combout\,
	datab => \inst|Equal32~1_combout\,
	datac => \inst|Equal28~0_combout\,
	datad => \inst|counter~28_combout\,
	combout => \inst|counter~29_combout\);

-- Location: LCCOMB_X37_Y3_N8
\inst|counter[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~30_combout\ = (\inst|counter~29_combout\ & ((\inst|counter\(2) $ (!\inst|counter\(1))) # (!\inst|Equal16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|Equal16~0_combout\,
	datac => \inst|counter\(1),
	datad => \inst|counter~29_combout\,
	combout => \inst|counter[0]~30_combout\);

-- Location: LCCOMB_X38_Y5_N12
\inst|counter[0]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~76_combout\ = ((\inst|counter\(3)) # ((\inst|counter\(0)) # (\inst|counter\(4)))) # (!\inst|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(3),
	datac => \inst|counter\(0),
	datad => \inst|counter\(4),
	combout => \inst|counter[0]~76_combout\);

-- Location: LCCOMB_X38_Y5_N6
\inst|counter[0]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~77_combout\ = (\inst|counter[0]~76_combout\ & (!\inst|Equal16~1_combout\ & ((\inst|counter\(4)) # (!\inst|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter[0]~76_combout\,
	datab => \inst|counter\(4),
	datac => \inst|Equal16~1_combout\,
	datad => \inst|Equal8~0_combout\,
	combout => \inst|counter[0]~77_combout\);

-- Location: LCCOMB_X37_Y3_N10
\inst|counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~31_combout\ = (\inst|counter[0]~30_combout\ & \inst|counter[0]~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|counter[0]~30_combout\,
	datad => \inst|counter[0]~77_combout\,
	combout => \inst|counter[0]~31_combout\);

-- Location: LCCOMB_X39_Y3_N22
\inst|Equal27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal27~3_combout\ = (\inst|Equal27~1_combout\ & (\inst|Equal27~2_combout\ & \inst|Equal27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal27~1_combout\,
	datac => \inst|Equal27~2_combout\,
	datad => \inst|Equal27~0_combout\,
	combout => \inst|Equal27~3_combout\);

-- Location: LCCOMB_X36_Y4_N0
\inst|Equal23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal23~2_combout\ = (!\inst|buffer1\(80) & (!\inst|buffer1\(82) & (!\inst|buffer1\(81) & !\inst|buffer1\(83))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(80),
	datab => \inst|buffer1\(82),
	datac => \inst|buffer1\(81),
	datad => \inst|buffer1\(83),
	combout => \inst|Equal23~2_combout\);

-- Location: LCCOMB_X35_Y4_N22
\inst|Equal23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal23~1_combout\ = (!\inst|buffer1\(77) & (!\inst|buffer1\(78) & (!\inst|buffer1\(76) & !\inst|buffer1\(79))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(77),
	datab => \inst|buffer1\(78),
	datac => \inst|buffer1\(76),
	datad => \inst|buffer1\(79),
	combout => \inst|Equal23~1_combout\);

-- Location: LCCOMB_X40_Y4_N6
\inst|Equal23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal23~0_combout\ = (!\inst|buffer1\(75) & (!\inst|buffer1\(73) & (!\inst|buffer1\(74) & !\inst|buffer1\(72))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(75),
	datab => \inst|buffer1\(73),
	datac => \inst|buffer1\(74),
	datad => \inst|buffer1\(72),
	combout => \inst|Equal23~0_combout\);

-- Location: LCCOMB_X36_Y5_N0
\inst|Equal23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal23~3_combout\ = (\inst|Equal23~2_combout\ & (\inst|Equal23~1_combout\ & \inst|Equal23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal23~2_combout\,
	datac => \inst|Equal23~1_combout\,
	datad => \inst|Equal23~0_combout\,
	combout => \inst|Equal23~3_combout\);

-- Location: LCCOMB_X37_Y6_N20
\inst|counter~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~24_combout\ = (!\inst|Equal27~3_combout\ & (!\inst|Equal19~3_combout\ & (!\inst|Equal23~3_combout\ & !\inst|Equal31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal27~3_combout\,
	datab => \inst|Equal19~3_combout\,
	datac => \inst|Equal23~3_combout\,
	datad => \inst|Equal31~3_combout\,
	combout => \inst|counter~24_combout\);

-- Location: LCCOMB_X37_Y8_N28
\inst|Equal43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal43~2_combout\ = (\inst|buffer1\(143)) # ((\inst|buffer1\(140)) # ((\inst|buffer1\(142)) # (\inst|buffer1\(141))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(143),
	datab => \inst|buffer1\(140),
	datac => \inst|buffer1\(142),
	datad => \inst|buffer1\(141),
	combout => \inst|Equal43~2_combout\);

-- Location: LCCOMB_X37_Y8_N12
\inst|Equal43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal43~0_combout\ = (\inst|buffer1\(135)) # ((\inst|buffer1\(132)) # ((\inst|buffer1\(134)) # (\inst|buffer1\(133))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(135),
	datab => \inst|buffer1\(132),
	datac => \inst|buffer1\(134),
	datad => \inst|buffer1\(133),
	combout => \inst|Equal43~0_combout\);

-- Location: LCCOMB_X38_Y8_N10
\inst|Equal43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal43~1_combout\ = (\inst|buffer1\(138)) # ((\inst|buffer1\(139)) # ((\inst|buffer1\(136)) # (\inst|buffer1\(137))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(138),
	datab => \inst|buffer1\(139),
	datac => \inst|buffer1\(136),
	datad => \inst|buffer1\(137),
	combout => \inst|Equal43~1_combout\);

-- Location: LCCOMB_X36_Y5_N18
\inst|Equal43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal43~3_combout\ = (\inst|Equal43~2_combout\) # ((\inst|Equal43~0_combout\) # (\inst|Equal43~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal43~2_combout\,
	datac => \inst|Equal43~0_combout\,
	datad => \inst|Equal43~1_combout\,
	combout => \inst|Equal43~3_combout\);

-- Location: LCCOMB_X38_Y9_N16
\inst|Equal39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal39~3_combout\ = (\inst|Equal39~0_combout\ & (\inst|Equal39~2_combout\ & \inst|Equal39~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal39~0_combout\,
	datac => \inst|Equal39~2_combout\,
	datad => \inst|Equal39~1_combout\,
	combout => \inst|Equal39~3_combout\);

-- Location: LCCOMB_X37_Y6_N6
\inst|counter[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~25_combout\ = (\inst|Equal43~3_combout\ & (!\inst|Equal35~3_combout\ & !\inst|Equal39~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal43~3_combout\,
	datac => \inst|Equal35~3_combout\,
	datad => \inst|Equal39~3_combout\,
	combout => \inst|counter[0]~25_combout\);

-- Location: LCCOMB_X37_Y6_N24
\inst|counter~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~22_combout\ = (!\inst|Equal3~3_combout\ & ((\inst|Equal1~2_combout\) # ((\inst|Equal1~0_combout\) # (\inst|Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~2_combout\,
	datab => \inst|Equal1~0_combout\,
	datac => \inst|Equal1~1_combout\,
	datad => \inst|Equal3~3_combout\,
	combout => \inst|counter~22_combout\);

-- Location: LCCOMB_X37_Y6_N18
\inst|counter~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~23_combout\ = (!\inst|Equal15~3_combout\ & (!\inst|Equal7~3_combout\ & (!\inst|Equal11~3_combout\ & \inst|counter~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal15~3_combout\,
	datab => \inst|Equal7~3_combout\,
	datac => \inst|Equal11~3_combout\,
	datad => \inst|counter~22_combout\,
	combout => \inst|counter~23_combout\);

-- Location: LCCOMB_X38_Y6_N22
\inst|counter[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~27_combout\ = ((\inst|counter~24_combout\ & (\inst|counter[0]~25_combout\ & \inst|counter~23_combout\))) # (!\inst1|OUTPUT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst|counter~24_combout\,
	datac => \inst|counter[0]~25_combout\,
	datad => \inst|counter~23_combout\,
	combout => \inst|counter[0]~27_combout\);

-- Location: LCCOMB_X38_Y6_N6
\inst|counter~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~32_combout\ = (\inst|counter~19_combout\ & (\inst|counter[0]~27_combout\ & ((!\inst|buffer1~35_combout\) # (!\inst|counter[0]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~19_combout\,
	datab => \inst|counter[0]~31_combout\,
	datac => \inst|buffer1~35_combout\,
	datad => \inst|counter[0]~27_combout\,
	combout => \inst|counter~32_combout\);

-- Location: LCCOMB_X38_Y6_N30
\inst|counter~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~33_combout\ = (\inst|counter~32_combout\) # ((!\inst|counter[0]~27_combout\ & \inst|Equal1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter~32_combout\,
	datac => \inst|counter[0]~27_combout\,
	datad => \inst|Equal1~3_combout\,
	combout => \inst|counter~33_combout\);

-- Location: LCCOMB_X38_Y6_N10
\inst|counter[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~34_combout\ = (\inst|buffer1~20_combout\ & (!\inst|buffer1~35_combout\ & (\inst|counter[0]~31_combout\ & \inst|counter~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~20_combout\,
	datab => \inst|buffer1~35_combout\,
	datac => \inst|counter[0]~31_combout\,
	datad => \inst|counter~19_combout\,
	combout => \inst|counter[0]~34_combout\);

-- Location: LCCOMB_X38_Y6_N8
\inst|counter[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~35_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & ((!\inst|counter[0]~34_combout\) # (!\inst|counter[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter[0]~27_combout\,
	datab => \inst1|OUTPUT\(0),
	datac => \inst1|OUTPUT\(1),
	datad => \inst|counter[0]~34_combout\,
	combout => \inst|counter[0]~35_combout\);

-- Location: FF_X38_Y6_N31
\inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter~33_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|counter[0]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(0));

-- Location: LCCOMB_X37_Y3_N26
\inst|Equal32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal32~0_combout\ = (!\inst|counter\(1) & (\inst|counter\(4) & (!\inst|counter\(3) & !\inst|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(4),
	datac => \inst|counter\(3),
	datad => \inst|counter\(0),
	combout => \inst|Equal32~0_combout\);

-- Location: LCCOMB_X37_Y3_N24
\inst|Equal32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal32~1_combout\ = (!\inst|counter\(2) & \inst|Equal32~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datac => \inst|Equal32~0_combout\,
	combout => \inst|Equal32~1_combout\);

-- Location: LCCOMB_X37_Y6_N26
\inst|counter~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~21_combout\ = (\inst|Equal32~1_combout\ & (((!\inst|Equal33~7_combout\)))) # (!\inst|Equal32~1_combout\ & ((\inst|counter\(4)) # ((\inst|buffer1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|Equal32~1_combout\,
	datac => \inst|Equal33~7_combout\,
	datad => \inst|buffer1~15_combout\,
	combout => \inst|counter~21_combout\);

-- Location: LCCOMB_X37_Y6_N8
\inst|counter~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~26_combout\ = (\inst|counter~23_combout\ & (\inst|counter~24_combout\ & ((\inst|counter~21_combout\) # (!\inst|counter[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter[0]~25_combout\,
	datab => \inst|counter~23_combout\,
	datac => \inst|counter~21_combout\,
	datad => \inst|counter~24_combout\,
	combout => \inst|counter~26_combout\);

-- Location: LCCOMB_X37_Y6_N12
\inst|counter[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[4]~3_combout\ = (\inst1|OUTPUT\(3) & ((\inst|counter~26_combout\))) # (!\inst1|OUTPUT\(3) & (\inst|counter~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~21_combout\,
	datab => \inst|counter~26_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|counter[4]~3_combout\);

-- Location: FF_X37_Y6_N13
\inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter[4]~3_combout\,
	asdata => \inst|counter\(4),
	sclr => \inst1|OUTPUT\(0),
	sload => \inst1|ALT_INV_OUTPUT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(4));

-- Location: LCCOMB_X37_Y3_N22
\inst|Equal44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal44~0_combout\ = (\inst|counter\(1) & (\inst|counter\(4) & (\inst|counter\(2) & \inst|Equal12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(4),
	datac => \inst|counter\(2),
	datad => \inst|Equal12~0_combout\,
	combout => \inst|Equal44~0_combout\);

-- Location: LCCOMB_X37_Y8_N20
\inst|buffer1[143]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[143]~147_combout\ = (!\inst1|OUTPUT\(0) & (!\inst1|OUTPUT\(3) & ((!\inst|Equal45~7_combout\) # (!\inst|Equal44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal44~0_combout\,
	datab => \inst1|OUTPUT\(0),
	datac => \inst1|OUTPUT\(3),
	datad => \inst|Equal45~7_combout\,
	combout => \inst|buffer1[143]~147_combout\);

-- Location: LCCOMB_X37_Y8_N2
\inst|buffer1~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~159_combout\ = (\ADC_IN[9]~input_o\ & \inst|buffer1[143]~147_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ADC_IN[9]~input_o\,
	datad => \inst|buffer1[143]~147_combout\,
	combout => \inst|buffer1~159_combout\);

-- Location: FF_X37_Y8_N3
\inst|buffer1[141]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~159_combout\,
	ena => \inst|buffer1[143]~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(141));

-- Location: FF_X36_Y9_N3
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

-- Location: LCCOMB_X36_Y9_N2
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

-- Location: LCCOMB_X36_Y9_N22
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

-- Location: LCCOMB_X36_Y9_N10
\inst|buffer1~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~140_combout\ = (!\inst|buffer1[130]~132_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(129)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[9]~input_o\,
	datab => \inst|buffer1[130]~132_combout\,
	datac => \inst2|bufferout\(129),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~140_combout\);

-- Location: FF_X36_Y9_N11
\inst|buffer1[129]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~140_combout\,
	ena => \inst|buffer1[130]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(129));

-- Location: LCCOMB_X37_Y9_N6
\inst|Equal41~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~5_combout\ = (\inst|buffer1\(129) & (\inst|buffer1\(117) & (\inst|buffer1\(128) $ (!\inst|buffer1\(116))))) # (!\inst|buffer1\(129) & (!\inst|buffer1\(117) & (\inst|buffer1\(128) $ (!\inst|buffer1\(116)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(129),
	datab => \inst|buffer1\(128),
	datac => \inst|buffer1\(116),
	datad => \inst|buffer1\(117),
	combout => \inst|Equal41~5_combout\);

-- Location: LCCOMB_X37_Y9_N10
\inst|buffer1[130]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[130]~54_combout\ = (\inst|Equal41~5_combout\ & (\inst|Equal41~6_combout\ & (\inst|Equal40~0_combout\ & \inst|Equal41~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal41~5_combout\,
	datab => \inst|Equal41~6_combout\,
	datac => \inst|Equal40~0_combout\,
	datad => \inst|Equal41~4_combout\,
	combout => \inst|buffer1[130]~54_combout\);

-- Location: LCCOMB_X39_Y9_N0
\inst|buffer1[130]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[130]~132_combout\ = (\inst1|OUTPUT\(0)) # ((!\inst1|OUTPUT\(3) & \inst|buffer1[130]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst|buffer1[130]~54_combout\,
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[130]~132_combout\);

-- Location: FF_X36_Y9_N7
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

-- Location: LCCOMB_X36_Y9_N6
\inst2|buffer1[131]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(131) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(143)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(131)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(131),
	datac => \inst|bufferout\(143),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(131));

-- Location: LCCOMB_X36_Y9_N30
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

-- Location: LCCOMB_X36_Y9_N26
\inst|buffer1~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~142_combout\ = (!\inst|buffer1[130]~132_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(131)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[11]~input_o\,
	datab => \inst|buffer1[130]~132_combout\,
	datac => \inst2|bufferout\(131),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~142_combout\);

-- Location: FF_X36_Y9_N27
\inst|buffer1[131]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~142_combout\,
	ena => \inst|buffer1[130]~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(131));

-- Location: LCCOMB_X38_Y9_N26
\inst|bufferout[131]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bufferout[131]~feeder_combout\ = \inst|buffer1\(131)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(131),
	combout => \inst|bufferout[131]~feeder_combout\);

-- Location: FF_X38_Y9_N27
\inst|bufferout[131]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|bufferout[131]~feeder_combout\,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(131));

-- Location: LCCOMB_X38_Y9_N10
\inst2|buffer1[119]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(119) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(131)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(119)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(119),
	datac => \inst|bufferout\(131),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(119));

-- Location: LCCOMB_X38_Y9_N14
\inst2|bufferout[119]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(119) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|buffer1\(119)))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|bufferout\(119)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|bufferout\(119),
	datac => \inst1|OUTPUT[3]~clkctrl_outclk\,
	datad => \inst2|buffer1\(119),
	combout => \inst2|bufferout\(119));

-- Location: LCCOMB_X37_Y9_N16
\inst|buffer1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~53_combout\ = (!\inst|buffer1[113]~39_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(119)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[11]~input_o\,
	datab => \inst|buffer1[113]~39_combout\,
	datac => \inst2|bufferout\(119),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~53_combout\);

-- Location: FF_X37_Y9_N17
\inst|buffer1[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~53_combout\,
	ena => \inst|buffer1[113]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(119));

-- Location: LCCOMB_X41_Y7_N14
\inst|bufferout[119]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bufferout[119]~feeder_combout\ = \inst|buffer1\(119)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|buffer1\(119),
	combout => \inst|bufferout[119]~feeder_combout\);

-- Location: FF_X41_Y7_N15
\inst|bufferout[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|bufferout[119]~feeder_combout\,
	ena => \inst|bufferout[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(119));

-- Location: LCCOMB_X41_Y7_N6
\inst2|buffer1[107]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(107) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst|bufferout\(119)))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst2|buffer1\(107)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(107),
	datac => \inst|bufferout\(119),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(107));

-- Location: LCCOMB_X41_Y7_N4
\inst2|bufferout[107]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(107) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(107))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(107),
	datac => \inst2|bufferout\(107),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(107));

-- Location: LCCOMB_X40_Y7_N0
\inst|buffer1~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~131_combout\ = (!\inst|buffer1[96]~117_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(107)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[11]~input_o\,
	datab => \inst2|bufferout\(107),
	datac => \inst|buffer1[96]~117_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~131_combout\);

-- Location: FF_X40_Y7_N1
\inst|buffer1[107]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~131_combout\,
	ena => \inst|buffer1[96]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(107));

-- Location: LCCOMB_X39_Y7_N12
\inst|Equal37~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal37~6_combout\ = (\inst|buffer1\(106) & (\inst|buffer1\(118) & (\inst|buffer1\(107) $ (!\inst|buffer1\(119))))) # (!\inst|buffer1\(106) & (!\inst|buffer1\(118) & (\inst|buffer1\(107) $ (!\inst|buffer1\(119)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(106),
	datab => \inst|buffer1\(107),
	datac => \inst|buffer1\(119),
	datad => \inst|buffer1\(118),
	combout => \inst|Equal37~6_combout\);

-- Location: LCCOMB_X41_Y7_N12
\inst|Equal37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal37~0_combout\ = (\inst|buffer1\(97) & (\inst|buffer1\(109) & (\inst|buffer1\(96) $ (!\inst|buffer1\(108))))) # (!\inst|buffer1\(97) & (!\inst|buffer1\(109) & (\inst|buffer1\(96) $ (!\inst|buffer1\(108)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(97),
	datab => \inst|buffer1\(96),
	datac => \inst|buffer1\(108),
	datad => \inst|buffer1\(109),
	combout => \inst|Equal37~0_combout\);

-- Location: LCCOMB_X41_Y7_N18
\inst|Equal37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal37~1_combout\ = (\inst|buffer1\(98) & (\inst|buffer1\(110) & (\inst|buffer1\(99) $ (!\inst|buffer1\(111))))) # (!\inst|buffer1\(98) & (!\inst|buffer1\(110) & (\inst|buffer1\(99) $ (!\inst|buffer1\(111)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(98),
	datab => \inst|buffer1\(99),
	datac => \inst|buffer1\(111),
	datad => \inst|buffer1\(110),
	combout => \inst|Equal37~1_combout\);

-- Location: LCCOMB_X41_Y7_N22
\inst|Equal37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal37~3_combout\ = (\inst|buffer1\(103) & (\inst|buffer1\(115) & (\inst|buffer1\(102) $ (!\inst|buffer1\(114))))) # (!\inst|buffer1\(103) & (!\inst|buffer1\(115) & (\inst|buffer1\(102) $ (!\inst|buffer1\(114)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(103),
	datab => \inst|buffer1\(102),
	datac => \inst|buffer1\(115),
	datad => \inst|buffer1\(114),
	combout => \inst|Equal37~3_combout\);

-- Location: LCCOMB_X41_Y7_N16
\inst|Equal37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal37~2_combout\ = (\inst|buffer1\(101) & (\inst|buffer1\(113) & (\inst|buffer1\(100) $ (!\inst|buffer1\(112))))) # (!\inst|buffer1\(101) & (!\inst|buffer1\(113) & (\inst|buffer1\(100) $ (!\inst|buffer1\(112)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(101),
	datab => \inst|buffer1\(113),
	datac => \inst|buffer1\(100),
	datad => \inst|buffer1\(112),
	combout => \inst|Equal37~2_combout\);

-- Location: LCCOMB_X41_Y7_N8
\inst|Equal37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal37~4_combout\ = (\inst|Equal37~0_combout\ & (\inst|Equal37~1_combout\ & (\inst|Equal37~3_combout\ & \inst|Equal37~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal37~0_combout\,
	datab => \inst|Equal37~1_combout\,
	datac => \inst|Equal37~3_combout\,
	datad => \inst|Equal37~2_combout\,
	combout => \inst|Equal37~4_combout\);

-- Location: LCCOMB_X37_Y9_N0
\inst|Equal37~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal37~5_combout\ = (\inst|buffer1\(117) & (\inst|buffer1\(105) & (\inst|buffer1\(116) $ (!\inst|buffer1\(104))))) # (!\inst|buffer1\(117) & (!\inst|buffer1\(105) & (\inst|buffer1\(116) $ (!\inst|buffer1\(104)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(117),
	datab => \inst|buffer1\(105),
	datac => \inst|buffer1\(116),
	datad => \inst|buffer1\(104),
	combout => \inst|Equal37~5_combout\);

-- Location: LCCOMB_X40_Y9_N26
\inst|buffer1[113]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[113]~38_combout\ = (\inst|Equal37~6_combout\ & (\inst|Equal37~4_combout\ & (\inst|Equal36~0_combout\ & \inst|Equal37~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal37~6_combout\,
	datab => \inst|Equal37~4_combout\,
	datac => \inst|Equal36~0_combout\,
	datad => \inst|Equal37~5_combout\,
	combout => \inst|buffer1[113]~38_combout\);

-- Location: LCCOMB_X39_Y9_N26
\inst|buffer1[113]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[113]~39_combout\ = (\inst1|OUTPUT\(0)) # ((!\inst1|OUTPUT\(3) & \inst|buffer1[113]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst1|OUTPUT\(0),
	datad => \inst|buffer1[113]~38_combout\,
	combout => \inst|buffer1[113]~39_combout\);

-- Location: FF_X37_Y9_N3
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

-- Location: LCCOMB_X37_Y9_N2
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

-- Location: LCCOMB_X37_Y9_N14
\inst2|bufferout[118]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(118) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(118))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(118))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(118),
	datac => \inst2|bufferout\(118),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(118));

-- Location: LCCOMB_X37_Y9_N22
\inst|buffer1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~52_combout\ = (!\inst|buffer1[113]~39_combout\ & ((\inst1|OUTPUT\(3) & ((\inst2|bufferout\(118)))) # (!\inst1|OUTPUT\(3) & (\ADC_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[10]~input_o\,
	datab => \inst|buffer1[113]~39_combout\,
	datac => \inst2|bufferout\(118),
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~52_combout\);

-- Location: FF_X37_Y9_N23
\inst|buffer1[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~52_combout\,
	ena => \inst|buffer1[113]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(118));

-- Location: FF_X39_Y7_N21
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

-- Location: LCCOMB_X39_Y7_N20
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

-- Location: LCCOMB_X39_Y7_N22
\inst2|bufferout[106]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(106) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(106))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|buffer1\(106),
	datac => \inst2|bufferout\(106),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(106));

-- Location: LCCOMB_X39_Y7_N30
\inst|buffer1~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~130_combout\ = (!\inst|buffer1[96]~117_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(106))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(106),
	datab => \ADC_IN[10]~input_o\,
	datac => \inst|buffer1[96]~117_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~130_combout\);

-- Location: FF_X39_Y7_N31
\inst|buffer1[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~130_combout\,
	ena => \inst|buffer1[96]~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(106));

-- Location: LCCOMB_X39_Y7_N4
\inst|Equal33~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~6_combout\ = (\inst|buffer1\(106) & (\inst|buffer1\(94) & (\inst|buffer1\(107) $ (!\inst|buffer1\(95))))) # (!\inst|buffer1\(106) & (!\inst|buffer1\(94) & (\inst|buffer1\(107) $ (!\inst|buffer1\(95)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(106),
	datab => \inst|buffer1\(107),
	datac => \inst|buffer1\(95),
	datad => \inst|buffer1\(94),
	combout => \inst|Equal33~6_combout\);

-- Location: LCCOMB_X36_Y7_N6
\inst|buffer1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~36_combout\ = (\inst|Equal33~6_combout\ & (\inst|Equal33~4_combout\ & (\inst|Equal33~5_combout\ & \inst|Equal32~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal33~6_combout\,
	datab => \inst|Equal33~4_combout\,
	datac => \inst|Equal33~5_combout\,
	datad => \inst|Equal32~1_combout\,
	combout => \inst|buffer1~36_combout\);

-- Location: LCCOMB_X37_Y6_N10
\inst|counter~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~36_combout\ = (\inst|counter\(3) & (((\inst|counter\(2))) # (!\inst|Equal32~0_combout\))) # (!\inst|counter\(3) & (\inst|buffer1~208_combout\ & ((\inst|counter\(2)) # (!\inst|Equal32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datab => \inst|Equal32~0_combout\,
	datac => \inst|buffer1~208_combout\,
	datad => \inst|counter\(2),
	combout => \inst|counter~36_combout\);

-- Location: LCCOMB_X37_Y6_N4
\inst|counter~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~37_combout\ = (\inst|Equal16~1_combout\ & (!\inst|Equal32~1_combout\ & (!\inst|Equal17~7_combout\))) # (!\inst|Equal16~1_combout\ & (((\inst|counter~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal16~1_combout\,
	datab => \inst|Equal32~1_combout\,
	datac => \inst|Equal17~7_combout\,
	datad => \inst|counter~36_combout\,
	combout => \inst|counter~37_combout\);

-- Location: LCCOMB_X37_Y6_N22
\inst|counter~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~38_combout\ = (\inst|buffer1~36_combout\) # ((\inst|counter~37_combout\ & !\inst|buffer1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~36_combout\,
	datac => \inst|counter~37_combout\,
	datad => \inst|buffer1~15_combout\,
	combout => \inst|counter~38_combout\);

-- Location: LCCOMB_X37_Y6_N28
\inst|counter~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~39_combout\ = (\inst|counter~23_combout\ & (((\inst|counter[0]~25_combout\ & \inst|counter~38_combout\)) # (!\inst|counter~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter[0]~25_combout\,
	datab => \inst|counter~23_combout\,
	datac => \inst|counter~38_combout\,
	datad => \inst|counter~24_combout\,
	combout => \inst|counter~39_combout\);

-- Location: LCCOMB_X37_Y6_N30
\inst|counter[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[3]~2_combout\ = (\inst1|OUTPUT\(3) & ((\inst|counter~39_combout\))) # (!\inst1|OUTPUT\(3) & (\inst|counter~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~38_combout\,
	datab => \inst|counter~39_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|counter[3]~2_combout\);

-- Location: FF_X37_Y6_N31
\inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter[3]~2_combout\,
	asdata => \inst|counter\(3),
	sclr => \inst1|OUTPUT\(0),
	sload => \inst1|ALT_INV_OUTPUT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(3));

-- Location: LCCOMB_X37_Y6_N0
\inst|Equal46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal46~0_combout\ = (!\inst|counter\(3) & \inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datac => \inst|counter\(0),
	combout => \inst|Equal46~0_combout\);

-- Location: LCCOMB_X36_Y5_N4
\inst|buffer1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~18_combout\ = (\inst|Equal46~0_combout\ & (\inst|counter\(4) & (\inst|Equal24~0_combout\ & !\inst|Equal43~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal46~0_combout\,
	datab => \inst|counter\(4),
	datac => \inst|Equal24~0_combout\,
	datad => \inst|Equal43~3_combout\,
	combout => \inst|buffer1~18_combout\);

-- Location: LCCOMB_X36_Y7_N28
\inst|counter~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~40_combout\ = (\inst|buffer1~36_combout\ & (!\inst|buffer1~17_combout\ & (\inst|counter~28_combout\ & !\inst|buffer1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~36_combout\,
	datab => \inst|buffer1~17_combout\,
	datac => \inst|counter~28_combout\,
	datad => \inst|buffer1~9_combout\,
	combout => \inst|counter~40_combout\);

-- Location: LCCOMB_X36_Y7_N30
\inst|counter~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~41_combout\ = (!\inst|Equal44~0_combout\ & (!\inst|counter~40_combout\ & ((\inst|Equal41~7_combout\) # (!\inst|Equal40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal40~0_combout\,
	datab => \inst|Equal44~0_combout\,
	datac => \inst|Equal41~7_combout\,
	datad => \inst|counter~40_combout\,
	combout => \inst|counter~41_combout\);

-- Location: LCCOMB_X36_Y7_N16
\inst|counter~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~46_combout\ = (\inst|Equal24~1_combout\ & (!\inst|Equal25~7_combout\)) # (!\inst|Equal24~1_combout\ & ((\inst|buffer1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal24~1_combout\,
	datac => \inst|Equal25~7_combout\,
	datad => \inst|buffer1~21_combout\,
	combout => \inst|counter~46_combout\);

-- Location: LCCOMB_X38_Y4_N16
\inst|counter~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~42_combout\ = (!\inst|Equal16~1_combout\ & (((!\inst|Equal15~3_combout\) # (!\inst|Equal12~1_combout\)) # (!\inst|Equal46~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal46~0_combout\,
	datab => \inst|Equal12~1_combout\,
	datac => \inst|Equal16~1_combout\,
	datad => \inst|Equal15~3_combout\,
	combout => \inst|counter~42_combout\);

-- Location: LCCOMB_X44_Y7_N10
\inst|counter~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~44_combout\ = ((!\inst|Equal9~5_combout\) # (!\inst|Equal9~4_combout\)) # (!\inst|Equal9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal9~6_combout\,
	datac => \inst|Equal9~4_combout\,
	datad => \inst|Equal9~5_combout\,
	combout => \inst|counter~44_combout\);

-- Location: LCCOMB_X37_Y7_N30
\inst|Equal4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~4_combout\ = (!\inst|counter\(4) & \inst|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|counter\(4),
	datad => \inst|counter\(1),
	combout => \inst|Equal4~4_combout\);

-- Location: LCCOMB_X37_Y7_N2
\inst|counter~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~43_combout\ = (\inst|counter\(2)) # ((\inst|buffer1~8_combout\ & (\inst|Equal7~3_combout\ & \inst|Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~8_combout\,
	datab => \inst|counter\(2),
	datac => \inst|Equal7~3_combout\,
	datad => \inst|Equal4~4_combout\,
	combout => \inst|counter~43_combout\);

-- Location: LCCOMB_X37_Y7_N8
\inst|counter~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~78_combout\ = (\inst|Equal8~0_combout\ & ((\inst|counter\(4) & ((\inst|counter~43_combout\))) # (!\inst|counter\(4) & (\inst|counter~44_combout\)))) # (!\inst|Equal8~0_combout\ & (((\inst|counter~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal8~0_combout\,
	datab => \inst|counter\(4),
	datac => \inst|counter~44_combout\,
	datad => \inst|counter~43_combout\,
	combout => \inst|counter~78_combout\);

-- Location: LCCOMB_X37_Y7_N0
\inst|counter~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~45_combout\ = (!\inst|Equal24~1_combout\ & ((\inst|buffer1[48]~37_combout\) # ((\inst|counter~42_combout\ & \inst|counter~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal24~1_combout\,
	datab => \inst|counter~42_combout\,
	datac => \inst|counter~78_combout\,
	datad => \inst|buffer1[48]~37_combout\,
	combout => \inst|counter~45_combout\);

-- Location: LCCOMB_X40_Y7_N28
\inst|counter~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~20_combout\ = (!\inst|buffer1~15_combout\ & (!\inst|buffer1~17_combout\ & !\inst|buffer1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~15_combout\,
	datac => \inst|buffer1~17_combout\,
	datad => \inst|buffer1~9_combout\,
	combout => \inst|counter~20_combout\);

-- Location: LCCOMB_X40_Y7_N10
\inst|counter~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~81_combout\ = (!\inst|Equal32~0_combout\ & (!\inst|Equal36~0_combout\ & \inst|counter~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal32~0_combout\,
	datac => \inst|Equal36~0_combout\,
	datad => \inst|counter~20_combout\,
	combout => \inst|counter~81_combout\);

-- Location: LCCOMB_X36_Y7_N18
\inst|counter~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~47_combout\ = (\inst|counter~41_combout\ & (((!\inst|counter~46_combout\ & !\inst|counter~45_combout\)) # (!\inst|counter~81_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~41_combout\,
	datab => \inst|counter~46_combout\,
	datac => \inst|counter~45_combout\,
	datad => \inst|counter~81_combout\,
	combout => \inst|counter~47_combout\);

-- Location: LCCOMB_X36_Y7_N0
\inst|counter~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~48_combout\ = (\inst|buffer1~18_combout\) # (!\inst|counter~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~18_combout\,
	datad => \inst|counter~47_combout\,
	combout => \inst|counter~48_combout\);

-- Location: LCCOMB_X36_Y7_N10
\inst|counter~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~51_combout\ = (\inst|Equal27~3_combout\) # ((\inst|Equal31~3_combout\) # (!\inst|Equal43~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal27~3_combout\,
	datab => \inst|Equal43~3_combout\,
	datad => \inst|Equal31~3_combout\,
	combout => \inst|counter~51_combout\);

-- Location: LCCOMB_X36_Y5_N26
\inst|counter~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~49_combout\ = (\inst|Equal31~3_combout\) # ((\inst|Equal27~3_combout\) # ((!\inst|Equal39~3_combout\ & !\inst|Equal35~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal31~3_combout\,
	datab => \inst|Equal39~3_combout\,
	datac => \inst|Equal35~3_combout\,
	datad => \inst|Equal27~3_combout\,
	combout => \inst|counter~49_combout\);

-- Location: LCCOMB_X36_Y5_N28
\inst|counter~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~50_combout\ = (!\inst|Equal23~3_combout\ & (\inst|counter~49_combout\ & !\inst|Equal19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal23~3_combout\,
	datac => \inst|counter~49_combout\,
	datad => \inst|Equal19~3_combout\,
	combout => \inst|counter~50_combout\);

-- Location: LCCOMB_X36_Y7_N24
\inst|counter~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~52_combout\ = (\inst|Equal15~3_combout\) # ((\inst|counter~50_combout\ & ((\inst|counter~51_combout\) # (!\inst|counter~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~51_combout\,
	datab => \inst|Equal15~3_combout\,
	datac => \inst|counter~50_combout\,
	datad => \inst|counter~47_combout\,
	combout => \inst|counter~52_combout\);

-- Location: LCCOMB_X37_Y7_N6
\inst|counter~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~53_combout\ = (\inst|counter~22_combout\ & (!\inst|Equal7~3_combout\ & ((\inst|Equal11~3_combout\) # (\inst|counter~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~22_combout\,
	datab => \inst|Equal11~3_combout\,
	datac => \inst|Equal7~3_combout\,
	datad => \inst|counter~52_combout\,
	combout => \inst|counter~53_combout\);

-- Location: LCCOMB_X37_Y7_N28
\inst|counter[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[2]~1_combout\ = (\inst1|OUTPUT\(3) & ((\inst|counter~53_combout\))) # (!\inst1|OUTPUT\(3) & (\inst|counter~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~48_combout\,
	datab => \inst1|OUTPUT\(3),
	datad => \inst|counter~53_combout\,
	combout => \inst|counter[2]~1_combout\);

-- Location: FF_X37_Y7_N29
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

-- Location: LCCOMB_X37_Y4_N20
\inst|Equal46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal46~1_combout\ = (\inst|counter\(2) & (\inst|counter\(1) & (\inst|Equal46~0_combout\ & \inst|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|Equal46~0_combout\,
	datad => \inst|counter\(4),
	combout => \inst|Equal46~1_combout\);

-- Location: LCCOMB_X37_Y4_N14
\inst|BufferCount~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~9_combout\ = (\inst|Equal46~1_combout\) # ((\inst|buffer1~18_combout\) # (!\inst|counter~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal46~1_combout\,
	datac => \inst|buffer1~18_combout\,
	datad => \inst|counter~20_combout\,
	combout => \inst|BufferCount~9_combout\);

-- Location: LCCOMB_X37_Y4_N10
\inst|BufferCount[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount[10]~5_combout\ = (\inst|Equal46~1_combout\) # (((\inst|buffer1[12]~13_combout\) # (!\inst|counter~19_combout\)) # (!\inst|buffer1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal46~1_combout\,
	datab => \inst|buffer1~20_combout\,
	datac => \inst|buffer1[12]~13_combout\,
	datad => \inst|counter~19_combout\,
	combout => \inst|BufferCount[10]~5_combout\);

-- Location: LCCOMB_X37_Y4_N8
\inst|BufferCount[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount[3]~6_combout\ = (!\inst1|OUTPUT\(0) & (\inst1|OUTPUT\(1) & \inst|BufferCount[10]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(0),
	datac => \inst1|OUTPUT\(1),
	datad => \inst|BufferCount[10]~5_combout\,
	combout => \inst|BufferCount[3]~6_combout\);

-- Location: FF_X37_Y4_N15
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

-- Location: FF_X32_Y4_N9
\inst|BufferCheck[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|BufferCount\(3),
	sload => VCC,
	ena => \inst|bufferout[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCheck\(3));

-- Location: LCCOMB_X32_Y4_N18
\inst1|Current~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Current~3_combout\ = (\inst|BufferCheck\(3)) # ((\inst1|Equal2~0_combout\ & !\inst1|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~0_combout\,
	datac => \inst|BufferCheck\(3),
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|Current~3_combout\);

-- Location: FF_X32_Y4_N19
\inst1|Current[3]\ : dffeas
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
	q => \inst1|Current\(3));

-- Location: LCCOMB_X32_Y4_N22
\inst1|SPACE_AVAILABLE~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~5_combout\ = (\inst1|Equal2~0_combout\ & ((\inst1|Add0~0_combout\ $ (\inst1|Current\(3))) # (!\inst1|Equal0~1_combout\))) # (!\inst1|Equal2~0_combout\ & (\inst1|Add0~0_combout\ $ ((\inst1|Current\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~0_combout\,
	datab => \inst1|Current\(3),
	datac => \inst1|Equal2~0_combout\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|SPACE_AVAILABLE~5_combout\);

-- Location: FF_X32_Y4_N23
\inst1|SPACE_AVAILABLE[3]\ : dffeas
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
	q => \inst1|SPACE_AVAILABLE\(3));

-- Location: LCCOMB_X38_Y4_N24
\inst|BufferCount~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~0_combout\ = (\inst|buffer1~12_combout\) # ((\inst|buffer1~10_combout\) # ((\inst|buffer1~14_combout\) # (\inst|buffer1[12]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~12_combout\,
	datab => \inst|buffer1~10_combout\,
	datac => \inst|buffer1~14_combout\,
	datad => \inst|buffer1[12]~13_combout\,
	combout => \inst|BufferCount~0_combout\);

-- Location: LCCOMB_X38_Y4_N2
\inst|BufferCount~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~1_combout\ = (!\inst|buffer1~17_combout\ & ((\inst|buffer1~9_combout\) # ((\inst|BufferCount~0_combout\ & !\inst|buffer1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~17_combout\,
	datab => \inst|BufferCount~0_combout\,
	datac => \inst|buffer1~15_combout\,
	datad => \inst|buffer1~9_combout\,
	combout => \inst|BufferCount~1_combout\);

-- Location: LCCOMB_X37_Y4_N28
\inst|BufferCount~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~2_combout\ = (!\inst|Equal46~1_combout\ & ((\inst|buffer1~18_combout\) # (\inst|BufferCount~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal46~1_combout\,
	datac => \inst|buffer1~18_combout\,
	datad => \inst|BufferCount~1_combout\,
	combout => \inst|BufferCount~2_combout\);

-- Location: FF_X37_Y4_N29
\inst|BufferCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCount~2_combout\,
	ena => \inst|BufferCount[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCount\(0));

-- Location: LCCOMB_X32_Y4_N10
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

-- Location: FF_X32_Y4_N11
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

-- Location: LCCOMB_X32_Y4_N28
\inst1|Current~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Current~0_combout\ = (\inst|BufferCheck\(0) & ((\inst1|Equal0~1_combout\) # (!\inst1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BufferCheck\(0),
	datac => \inst1|Equal2~0_combout\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|Current~0_combout\);

-- Location: FF_X32_Y4_N29
\inst1|Current[0]\ : dffeas
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
	q => \inst1|Current\(0));

-- Location: LCCOMB_X37_Y4_N2
\inst|BufferCount~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~7_combout\ = (\inst|buffer1~12_combout\) # ((\inst|buffer1~10_combout\) # (!\inst|BufferCount~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~12_combout\,
	datac => \inst|buffer1~10_combout\,
	datad => \inst|BufferCount~4_combout\,
	combout => \inst|BufferCount~7_combout\);

-- Location: FF_X37_Y4_N3
\inst|BufferCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCount~7_combout\,
	ena => \inst|BufferCount[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCount\(1));

-- Location: LCCOMB_X32_Y4_N16
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

-- Location: FF_X32_Y4_N17
\inst|BufferCheck[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCheck[1]~feeder_combout\,
	ena => \inst|bufferout[16]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCheck\(1));

-- Location: LCCOMB_X32_Y4_N14
\inst1|Current~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Current~1_combout\ = (\inst|BufferCheck\(1) & ((\inst1|Equal0~1_combout\) # (!\inst1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|BufferCheck\(1),
	datac => \inst1|Equal2~0_combout\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|Current~1_combout\);

-- Location: FF_X32_Y4_N15
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

-- Location: LCCOMB_X32_Y4_N2
\inst1|SPACE_AVAILABLE~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~3_combout\ = (\inst1|Equal2~0_combout\ & (\inst1|Equal0~1_combout\ & (\inst1|Current\(0) $ (\inst1|Current\(1))))) # (!\inst1|Equal2~0_combout\ & (\inst1|Current\(0) $ ((\inst1|Current\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~0_combout\,
	datab => \inst1|Current\(0),
	datac => \inst1|Current\(1),
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|SPACE_AVAILABLE~3_combout\);

-- Location: FF_X32_Y4_N3
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

-- Location: LCCOMB_X32_Y4_N4
\inst1|SPACE_AVAILABLE~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~2_combout\ = (\inst1|Current\(0) & ((\inst1|Equal0~1_combout\) # (!\inst1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Current\(0),
	datac => \inst1|Equal2~0_combout\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|SPACE_AVAILABLE~2_combout\);

-- Location: FF_X32_Y4_N5
\inst1|SPACE_AVAILABLE[0]\ : dffeas
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
	q => \inst1|SPACE_AVAILABLE\(0));

-- Location: LCCOMB_X32_Y4_N24
\inst1|SPACE_AVAILABLE~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~4_combout\ = (\inst1|SPACE_AVAILABLE~7_combout\) # (\inst1|Current\(2) $ (((!\inst1|Current\(1) & !\inst1|Current\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SPACE_AVAILABLE~7_combout\,
	datab => \inst1|Current\(2),
	datac => \inst1|Current\(1),
	datad => \inst1|Current\(0),
	combout => \inst1|SPACE_AVAILABLE~4_combout\);

-- Location: FF_X32_Y4_N25
\inst1|SPACE_AVAILABLE[2]\ : dffeas
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
	q => \inst1|SPACE_AVAILABLE\(2));

-- Location: LCCOMB_X32_Y4_N0
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|SPACE_AVAILABLE\(3) & (!\inst1|SPACE_AVAILABLE\(1) & (!\inst1|SPACE_AVAILABLE\(0) & !\inst1|SPACE_AVAILABLE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SPACE_AVAILABLE\(3),
	datab => \inst1|SPACE_AVAILABLE\(1),
	datac => \inst1|SPACE_AVAILABLE\(0),
	datad => \inst1|SPACE_AVAILABLE\(2),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y4_N10
\inst1|SPACE_AVAILABLE~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~7_combout\ = (\inst1|Equal2~0_combout\ & ((\inst1|SPACE_AVAILABLE\(10)) # ((\inst1|SPACE_AVAILABLE\(4)) # (!\inst1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SPACE_AVAILABLE\(10),
	datab => \inst1|Equal0~0_combout\,
	datac => \inst1|Equal2~0_combout\,
	datad => \inst1|SPACE_AVAILABLE\(4),
	combout => \inst1|SPACE_AVAILABLE~7_combout\);

-- Location: LCCOMB_X37_Y4_N4
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

-- Location: FF_X37_Y4_N5
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

-- Location: LCCOMB_X36_Y4_N12
\inst|bufferout[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bufferout[16]~0_combout\ = (!\inst1|OUTPUT\(0) & \inst1|OUTPUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datad => \inst1|OUTPUT\(1),
	combout => \inst|bufferout[16]~0_combout\);

-- Location: FF_X32_Y4_N31
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

-- Location: LCCOMB_X32_Y4_N20
\inst1|Current~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Current~2_combout\ = (\inst|BufferCheck\(2)) # ((\inst1|Equal2~0_combout\ & !\inst1|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~0_combout\,
	datac => \inst|BufferCheck\(2),
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|Current~2_combout\);

-- Location: FF_X32_Y4_N21
\inst1|Current[2]\ : dffeas
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
	q => \inst1|Current\(2));

-- Location: LCCOMB_X32_Y4_N12
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = ((!\inst1|Current\(1) & !\inst1|Current\(0))) # (!\inst1|Current\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Current\(2),
	datac => \inst1|Current\(1),
	datad => \inst1|Current\(0),
	combout => \inst1|Add0~0_combout\);

-- Location: LCCOMB_X34_Y4_N12
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

-- Location: FF_X34_Y4_N13
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

-- Location: LCCOMB_X34_Y4_N18
\inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (!\inst1|SPACE_AVAILABLE\(10) & (\inst1|Equal0~0_combout\ & !\inst1|SPACE_AVAILABLE\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SPACE_AVAILABLE\(10),
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|SPACE_AVAILABLE\(4),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X34_Y4_N16
\inst1|OUTPUT[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[3]~10_combout\ = (!\inst1|Equal0~1_combout\ & ((\inst1|OUTPUT~7_combout\) # (!\inst1|OUTPUT~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT~15_combout\,
	datac => \inst1|OUTPUT~7_combout\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|OUTPUT[3]~10_combout\);

-- Location: FF_X38_Y6_N29
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

-- Location: LCCOMB_X37_Y9_N24
\inst|counter~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~60_combout\ = (\inst|Equal36~0_combout\ & (((!\inst|Equal37~4_combout\) # (!\inst|Equal37~5_combout\)) # (!\inst|Equal37~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal37~6_combout\,
	datab => \inst|Equal37~5_combout\,
	datac => \inst|Equal37~4_combout\,
	datad => \inst|Equal36~0_combout\,
	combout => \inst|counter~60_combout\);

-- Location: LCCOMB_X37_Y9_N18
\inst|counter~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~61_combout\ = (\inst|buffer1~18_combout\) # ((!\inst|Equal40~0_combout\ & ((\inst|buffer1~17_combout\) # (\inst|counter~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~18_combout\,
	datab => \inst|Equal40~0_combout\,
	datac => \inst|buffer1~17_combout\,
	datad => \inst|counter~60_combout\,
	combout => \inst|counter~61_combout\);

-- Location: LCCOMB_X37_Y5_N30
\inst|counter~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~62_combout\ = (\inst|Equal44~0_combout\ & (!\inst|Equal45~7_combout\)) # (!\inst|Equal44~0_combout\ & (((\inst|counter~61_combout\) # (\inst|buffer1[130]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal44~0_combout\,
	datab => \inst|Equal45~7_combout\,
	datac => \inst|counter~61_combout\,
	datad => \inst|buffer1[130]~54_combout\,
	combout => \inst|counter~62_combout\);

-- Location: LCCOMB_X37_Y5_N2
\inst|counter~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~69_combout\ = (!\inst|buffer1~15_combout\ & (!\inst|buffer1~21_combout\ & \inst|counter[0]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buffer1~15_combout\,
	datac => \inst|buffer1~21_combout\,
	datad => \inst|counter[0]~30_combout\,
	combout => \inst|counter~69_combout\);

-- Location: LCCOMB_X38_Y5_N0
\inst|counter~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~56_combout\ = (!\inst|counter\(2) & (\inst|counter\(1) & \inst|Equal16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(2),
	datac => \inst|counter\(1),
	datad => \inst|Equal16~0_combout\,
	combout => \inst|counter~56_combout\);

-- Location: LCCOMB_X37_Y5_N8
\inst|counter~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~57_combout\ = (\inst|counter~56_combout\ & (!\inst|buffer1~21_combout\ & !\inst|Equal21~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter~56_combout\,
	datac => \inst|buffer1~21_combout\,
	datad => \inst|Equal21~7_combout\,
	combout => \inst|counter~57_combout\);

-- Location: LCCOMB_X37_Y5_N14
\inst|counter~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~58_combout\ = (\inst|buffer1~12_combout\) # ((\inst|counter~57_combout\) # ((\inst|Equal25~7_combout\ & \inst|Equal24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal25~7_combout\,
	datab => \inst|buffer1~12_combout\,
	datac => \inst|counter~57_combout\,
	datad => \inst|Equal24~1_combout\,
	combout => \inst|counter~58_combout\);

-- Location: LCCOMB_X37_Y3_N28
\inst|counter~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~79_combout\ = (!\inst|Equal36~0_combout\ & (!\inst|Equal44~0_combout\ & ((!\inst|counter\(2)) # (!\inst|Equal32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal32~0_combout\,
	datab => \inst|Equal36~0_combout\,
	datac => \inst|Equal44~0_combout\,
	datad => \inst|counter\(2),
	combout => \inst|counter~79_combout\);

-- Location: LCCOMB_X37_Y5_N28
\inst|counter~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~54_combout\ = (!\inst|Equal32~1_combout\ & (!\inst|buffer1~15_combout\ & (!\inst|Equal29~7_combout\ & \inst|Equal28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal32~1_combout\,
	datab => \inst|buffer1~15_combout\,
	datac => \inst|Equal29~7_combout\,
	datad => \inst|Equal28~0_combout\,
	combout => \inst|counter~54_combout\);

-- Location: LCCOMB_X37_Y5_N6
\inst|counter~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~55_combout\ = (\inst|counter~79_combout\ & ((\inst|buffer1~36_combout\) # ((\inst|buffer1~9_combout\) # (\inst|counter~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~36_combout\,
	datab => \inst|counter~79_combout\,
	datac => \inst|buffer1~9_combout\,
	datad => \inst|counter~54_combout\,
	combout => \inst|counter~55_combout\);

-- Location: LCCOMB_X37_Y5_N4
\inst|counter~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~59_combout\ = (\inst|counter~55_combout\) # ((\inst|counter~29_combout\ & (!\inst|buffer1~15_combout\ & \inst|counter~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~29_combout\,
	datab => \inst|buffer1~15_combout\,
	datac => \inst|counter~58_combout\,
	datad => \inst|counter~55_combout\,
	combout => \inst|counter~59_combout\);

-- Location: LCCOMB_X37_Y5_N26
\inst|counter~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~67_combout\ = (\inst|Equal12~1_combout\ & (\inst|Equal12~0_combout\ & (\inst|counter~42_combout\ & !\inst|Equal13~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal12~1_combout\,
	datab => \inst|Equal12~0_combout\,
	datac => \inst|counter~42_combout\,
	datad => \inst|Equal13~7_combout\,
	combout => \inst|counter~67_combout\);

-- Location: LCCOMB_X38_Y5_N14
\inst|counter~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~65_combout\ = (\inst|counter[0]~77_combout\ & ((\inst|counter\(1)) # (\inst|buffer1~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datac => \inst|buffer1~35_combout\,
	datad => \inst|counter[0]~77_combout\,
	combout => \inst|counter~65_combout\);

-- Location: LCCOMB_X37_Y5_N0
\inst|counter~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~66_combout\ = (\inst|buffer1[48]~37_combout\) # ((!\inst|buffer1~208_combout\ & (\inst|counter~65_combout\ & !\inst|buffer1~209_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~208_combout\,
	datab => \inst|buffer1[48]~37_combout\,
	datac => \inst|counter~65_combout\,
	datad => \inst|buffer1~209_combout\,
	combout => \inst|counter~66_combout\);

-- Location: LCCOMB_X37_Y5_N12
\inst|counter~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~63_combout\ = (!\inst|Equal5~7_combout\ & (\inst|Equal4~5_combout\ & (!\inst|Equal8~1_combout\ & !\inst|buffer1~209_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~7_combout\,
	datab => \inst|Equal4~5_combout\,
	datac => \inst|Equal8~1_combout\,
	datad => \inst|buffer1~209_combout\,
	combout => \inst|counter~63_combout\);

-- Location: LCCOMB_X38_Y4_N6
\inst|counter~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~80_combout\ = (\inst|counter~42_combout\ & ((\inst|counter\(3)) # ((\inst|counter\(0)) # (!\inst|Equal12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datab => \inst|Equal12~1_combout\,
	datac => \inst|counter\(0),
	datad => \inst|counter~42_combout\,
	combout => \inst|counter~80_combout\);

-- Location: LCCOMB_X37_Y5_N18
\inst|counter~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~64_combout\ = (\inst|counter~80_combout\ & ((\inst|counter~63_combout\) # ((\inst|buffer1~10_combout\) # (\inst|buffer1[24]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~63_combout\,
	datab => \inst|buffer1~10_combout\,
	datac => \inst|counter~80_combout\,
	datad => \inst|buffer1[24]~55_combout\,
	combout => \inst|counter~64_combout\);

-- Location: LCCOMB_X37_Y5_N20
\inst|counter~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~68_combout\ = (\inst|counter~67_combout\) # ((\inst|counter~66_combout\) # ((\inst|buffer1~14_combout\) # (\inst|counter~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~67_combout\,
	datab => \inst|counter~66_combout\,
	datac => \inst|buffer1~14_combout\,
	datad => \inst|counter~64_combout\,
	combout => \inst|counter~68_combout\);

-- Location: LCCOMB_X37_Y5_N16
\inst|counter~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~70_combout\ = (\inst|counter~62_combout\) # ((\inst|counter~59_combout\) # ((\inst|counter~69_combout\ & \inst|counter~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~62_combout\,
	datab => \inst|counter~69_combout\,
	datac => \inst|counter~59_combout\,
	datad => \inst|counter~68_combout\,
	combout => \inst|counter~70_combout\);

-- Location: LCCOMB_X38_Y5_N24
\inst|counter~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~71_combout\ = (\inst|Equal23~3_combout\) # ((\inst|Equal31~3_combout\ & !\inst|Equal27~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal31~3_combout\,
	datac => \inst|Equal27~3_combout\,
	datad => \inst|Equal23~3_combout\,
	combout => \inst|counter~71_combout\);

-- Location: LCCOMB_X36_Y5_N14
\inst|counter~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~72_combout\ = (!\inst|Equal11~3_combout\ & ((\inst|Equal15~3_combout\) # ((\inst|counter~71_combout\ & !\inst|Equal19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~71_combout\,
	datab => \inst|Equal19~3_combout\,
	datac => \inst|Equal15~3_combout\,
	datad => \inst|Equal11~3_combout\,
	combout => \inst|counter~72_combout\);

-- Location: LCCOMB_X36_Y5_N8
\inst|counter~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~73_combout\ = (\inst|Equal27~3_combout\) # ((\inst|Equal19~3_combout\) # ((\inst|Equal35~3_combout\) # (\inst|Equal11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal27~3_combout\,
	datab => \inst|Equal19~3_combout\,
	datac => \inst|Equal35~3_combout\,
	datad => \inst|Equal11~3_combout\,
	combout => \inst|counter~73_combout\);

-- Location: LCCOMB_X36_Y5_N10
\inst|counter~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~74_combout\ = (!\inst|counter~73_combout\ & ((\inst|Equal39~3_combout\) # ((\inst|Equal43~3_combout\ & \inst|counter~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal39~3_combout\,
	datab => \inst|Equal43~3_combout\,
	datac => \inst|counter~73_combout\,
	datad => \inst|counter~70_combout\,
	combout => \inst|counter~74_combout\);

-- Location: LCCOMB_X36_Y5_N24
\inst|counter~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~75_combout\ = (\inst|counter~22_combout\ & ((\inst|Equal7~3_combout\) # ((\inst|counter~72_combout\) # (\inst|counter~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~22_combout\,
	datab => \inst|Equal7~3_combout\,
	datac => \inst|counter~72_combout\,
	datad => \inst|counter~74_combout\,
	combout => \inst|counter~75_combout\);

-- Location: LCCOMB_X36_Y5_N12
\inst|counter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[1]~0_combout\ = (\inst1|OUTPUT\(3) & ((\inst|counter~75_combout\))) # (!\inst1|OUTPUT\(3) & (\inst|counter~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst|counter~70_combout\,
	datad => \inst|counter~75_combout\,
	combout => \inst|counter[1]~0_combout\);

-- Location: FF_X36_Y5_N13
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

-- Location: LCCOMB_X36_Y5_N6
\inst|buffer1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~21_combout\ = (\inst|counter\(1) & (!\inst|counter\(2) & (\inst|buffer1~11_combout\ & \inst|Equal23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(2),
	datac => \inst|buffer1~11_combout\,
	datad => \inst|Equal23~3_combout\,
	combout => \inst|buffer1~21_combout\);

-- Location: LCCOMB_X37_Y4_N12
\inst|BufferCount~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~8_combout\ = (\inst|buffer1~21_combout\) # ((\inst|Equal46~1_combout\) # ((\inst|buffer1~12_combout\) # (!\inst|BufferCount~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~21_combout\,
	datab => \inst|Equal46~1_combout\,
	datac => \inst|buffer1~12_combout\,
	datad => \inst|BufferCount~3_combout\,
	combout => \inst|BufferCount~8_combout\);

-- Location: FF_X37_Y4_N13
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

-- Location: LCCOMB_X37_Y4_N18
\inst|AVAILABLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|AVAILABLE~0_combout\ = (\inst|BufferCount\(2)) # ((\inst|BufferCount\(1)) # ((\inst|BufferCount\(3)) # (\inst|BufferCount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BufferCount\(2),
	datab => \inst|BufferCount\(1),
	datac => \inst|BufferCount\(3),
	datad => \inst|BufferCount\(0),
	combout => \inst|AVAILABLE~0_combout\);

-- Location: FF_X37_Y4_N19
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

-- Location: LCCOMB_X37_Y4_N24
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

-- Location: FF_X37_Y4_N25
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

-- Location: LCCOMB_X34_Y4_N26
\inst1|OUTPUT~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~8_combout\ = (\inst1|OUTPUT\(6) & ((\inst1|Equal1~1_combout\) # ((!\inst1|Equal2~0_combout\ & !\inst1|OUTPUT~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~0_combout\,
	datab => \inst1|Equal1~1_combout\,
	datac => \inst1|OUTPUT~7_combout\,
	datad => \inst1|OUTPUT\(6),
	combout => \inst1|OUTPUT~8_combout\);

-- Location: LCCOMB_X34_Y4_N0
\inst1|OUTPUT~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~14_combout\ = (\inst1|OUTPUT~8_combout\) # ((!\inst1|SPACE_AVAILABLE\(10) & (\inst1|Equal0~0_combout\ & !\inst1|SPACE_AVAILABLE\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SPACE_AVAILABLE\(10),
	datab => \inst1|Equal0~0_combout\,
	datac => \inst1|OUTPUT~8_combout\,
	datad => \inst1|SPACE_AVAILABLE\(4),
	combout => \inst1|OUTPUT~14_combout\);

-- Location: FF_X34_Y4_N1
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

-- Location: LCCOMB_X44_Y5_N12
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

-- Location: LCCOMB_X41_Y5_N26
\inst|ADC_out[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[4]~1_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(2) & \inst1|OUTPUT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(2),
	datab => \inst1|OUTPUT\(1),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out[4]~1_combout\);

-- Location: FF_X44_Y5_N13
\inst|ADC_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~0_combout\,
	ena => \inst|ADC_out[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(11));

-- Location: LCCOMB_X48_Y5_N24
\inst3|Final_Output1[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Final_Output1[11]~feeder_combout\ = \inst|ADC_out\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ADC_out\(11),
	combout => \inst3|Final_Output1[11]~feeder_combout\);

-- Location: FF_X48_Y5_N25
\inst3|Final_Output1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Final_Output1[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Final_Output1\(11));

-- Location: LCCOMB_X44_Y5_N18
\inst|ADC_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~2_combout\ = (\inst|buffer1\(10) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(10),
	datac => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~2_combout\);

-- Location: FF_X44_Y5_N19
\inst|ADC_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~2_combout\,
	ena => \inst|ADC_out[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(10));

-- Location: LCCOMB_X48_Y5_N26
\inst3|Final_Output1[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Final_Output1[10]~feeder_combout\ = \inst|ADC_out\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ADC_out\(10),
	combout => \inst3|Final_Output1[10]~feeder_combout\);

-- Location: FF_X48_Y5_N27
\inst3|Final_Output1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Final_Output1[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Final_Output1\(10));

-- Location: LCCOMB_X48_Y5_N12
\inst|ADC_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~3_combout\ = (!\inst1|OUTPUT\(0) & \inst|buffer1\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(0),
	datad => \inst|buffer1\(9),
	combout => \inst|ADC_out~3_combout\);

-- Location: FF_X48_Y5_N13
\inst|ADC_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~3_combout\,
	ena => \inst|ADC_out[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(9));

-- Location: LCCOMB_X49_Y5_N16
\inst3|Final_Output1[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Final_Output1[9]~feeder_combout\ = \inst|ADC_out\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ADC_out\(9),
	combout => \inst3|Final_Output1[9]~feeder_combout\);

-- Location: FF_X49_Y5_N17
\inst3|Final_Output1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Final_Output1[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Final_Output1\(9));

-- Location: LCCOMB_X44_Y5_N4
\inst|ADC_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~4_combout\ = (\inst|buffer1\(8) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buffer1\(8),
	datac => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~4_combout\);

-- Location: FF_X44_Y5_N5
\inst|ADC_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~4_combout\,
	ena => \inst|ADC_out[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(8));

-- Location: LCCOMB_X45_Y4_N20
\inst3|Final_Output1[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Final_Output1[8]~feeder_combout\ = \inst|ADC_out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ADC_out\(8),
	combout => \inst3|Final_Output1[8]~feeder_combout\);

-- Location: FF_X45_Y4_N21
\inst3|Final_Output1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Final_Output1[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Final_Output1\(8));

-- Location: LCCOMB_X48_Y5_N22
\inst|ADC_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~5_combout\ = (\inst|buffer1\(7) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(7),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~5_combout\);

-- Location: FF_X48_Y5_N23
\inst|ADC_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~5_combout\,
	ena => \inst|ADC_out[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(7));

-- Location: LCCOMB_X49_Y5_N2
\inst3|Final_Output1[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Final_Output1[7]~feeder_combout\ = \inst|ADC_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ADC_out\(7),
	combout => \inst3|Final_Output1[7]~feeder_combout\);

-- Location: FF_X49_Y5_N3
\inst3|Final_Output1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Final_Output1[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Final_Output1\(7));

-- Location: LCCOMB_X45_Y5_N28
\inst|ADC_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~6_combout\ = (!\inst1|OUTPUT\(0) & \inst|buffer1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(0),
	datad => \inst|buffer1\(6),
	combout => \inst|ADC_out~6_combout\);

-- Location: FF_X45_Y5_N29
\inst|ADC_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~6_combout\,
	ena => \inst|ADC_out[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(6));

-- Location: LCCOMB_X49_Y5_N12
\inst3|Final_Output1[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Final_Output1[6]~feeder_combout\ = \inst|ADC_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ADC_out\(6),
	combout => \inst3|Final_Output1[6]~feeder_combout\);

-- Location: FF_X49_Y5_N13
\inst3|Final_Output1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Final_Output1[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Final_Output1\(6));

-- Location: LCCOMB_X44_Y5_N6
\inst|ADC_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~7_combout\ = (\inst|buffer1\(5) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(5),
	datac => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~7_combout\);

-- Location: FF_X44_Y5_N7
\inst|ADC_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~7_combout\,
	ena => \inst|ADC_out[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(5));

-- Location: LCCOMB_X52_Y5_N12
\inst3|Final_Output1[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Final_Output1[5]~feeder_combout\ = \inst|ADC_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ADC_out\(5),
	combout => \inst3|Final_Output1[5]~feeder_combout\);

-- Location: FF_X52_Y5_N13
\inst3|Final_Output1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Final_Output1[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Final_Output1\(5));

-- Location: LCCOMB_X48_Y5_N8
\inst|ADC_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~8_combout\ = (\inst|buffer1\(4) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(4),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~8_combout\);

-- Location: FF_X48_Y5_N9
\inst|ADC_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~8_combout\,
	ena => \inst|ADC_out[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(4));

-- Location: LCCOMB_X49_Y4_N24
\inst3|Final_Output1[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Final_Output1[4]~feeder_combout\ = \inst|ADC_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ADC_out\(4),
	combout => \inst3|Final_Output1[4]~feeder_combout\);

-- Location: FF_X49_Y4_N25
\inst3|Final_Output1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Final_Output1[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Final_Output1\(4));

-- Location: LCCOMB_X48_Y5_N10
\inst|ADC_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~9_combout\ = (\inst|buffer1\(3) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(3),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~9_combout\);

-- Location: FF_X48_Y5_N11
\inst|ADC_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~9_combout\,
	ena => \inst|ADC_out[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(3));

-- Location: LCCOMB_X48_Y5_N0
\inst3|Final_Output1[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Final_Output1[3]~feeder_combout\ = \inst|ADC_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ADC_out\(3),
	combout => \inst3|Final_Output1[3]~feeder_combout\);

-- Location: FF_X48_Y5_N1
\inst3|Final_Output1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Final_Output1[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Final_Output1\(3));

-- Location: LCCOMB_X48_Y5_N20
\inst|ADC_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~10_combout\ = (!\inst1|OUTPUT\(0) & \inst|buffer1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(0),
	datad => \inst|buffer1\(2),
	combout => \inst|ADC_out~10_combout\);

-- Location: FF_X48_Y5_N21
\inst|ADC_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~10_combout\,
	ena => \inst|ADC_out[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(2));

-- Location: LCCOMB_X49_Y5_N26
\inst3|Final_Output1[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Final_Output1[2]~feeder_combout\ = \inst|ADC_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ADC_out\(2),
	combout => \inst3|Final_Output1[2]~feeder_combout\);

-- Location: FF_X49_Y5_N27
\inst3|Final_Output1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Final_Output1[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Final_Output1\(2));

-- Location: LCCOMB_X48_Y5_N18
\inst|ADC_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~11_combout\ = (!\inst1|OUTPUT\(0) & \inst|buffer1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(0),
	datac => \inst|buffer1\(1),
	combout => \inst|ADC_out~11_combout\);

-- Location: FF_X48_Y5_N19
\inst|ADC_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~11_combout\,
	ena => \inst|ADC_out[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(1));

-- Location: LCCOMB_X49_Y5_N0
\inst3|Final_Output1[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Final_Output1[1]~feeder_combout\ = \inst|ADC_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ADC_out\(1),
	combout => \inst3|Final_Output1[1]~feeder_combout\);

-- Location: FF_X49_Y5_N1
\inst3|Final_Output1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Final_Output1[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Final_Output1\(1));

-- Location: LCCOMB_X48_Y5_N28
\inst|ADC_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~12_combout\ = (\inst|buffer1\(0) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1\(0),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~12_combout\);

-- Location: FF_X48_Y5_N29
\inst|ADC_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~12_combout\,
	ena => \inst|ADC_out[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(0));

-- Location: LCCOMB_X49_Y5_N30
\inst3|Final_Output1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Final_Output1[0]~feeder_combout\ = \inst|ADC_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|ADC_out\(0),
	combout => \inst3|Final_Output1[0]~feeder_combout\);

-- Location: FF_X49_Y5_N31
\inst3|Final_Output1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Final_Output1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Final_Output1\(0));

-- Location: LCCOMB_X48_Y5_N2
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

-- Location: FF_X48_Y5_N3
\inst|MASK[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|MASK[2]~0_combout\,
	ena => \inst|ADC_out[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|MASK\(2));

-- Location: FF_X52_Y6_N5
\inst3|Final_Output2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|MASK\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Final_Output2\(7));

-- Location: LCCOMB_X48_Y5_N6
\inst3|Final_Output2[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Final_Output2[6]~feeder_combout\ = \inst|MASK\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|MASK\(2),
	combout => \inst3|Final_Output2[6]~feeder_combout\);

-- Location: FF_X48_Y5_N7
\inst3|Final_Output2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Final_Output2[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Final_Output2\(6));

-- Location: FF_X32_Y4_N7
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

-- Location: LCCOMB_X31_Y4_N24
\inst3|Final_Output2[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Final_Output2[3]~feeder_combout\ = \inst1|BUFFER_READ\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|BUFFER_READ\(3),
	combout => \inst3|Final_Output2[3]~feeder_combout\);

-- Location: FF_X31_Y4_N25
\inst3|Final_Output2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Final_Output2[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Final_Output2\(3));

-- Location: LCCOMB_X31_Y4_N26
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

-- Location: FF_X31_Y4_N27
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

-- Location: LCCOMB_X30_Y4_N24
\inst3|Final_Output2[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Final_Output2[2]~feeder_combout\ = \inst1|BUFFER_READ\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|BUFFER_READ\(2),
	combout => \inst3|Final_Output2[2]~feeder_combout\);

-- Location: FF_X30_Y4_N25
\inst3|Final_Output2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Final_Output2[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Final_Output2\(2));

-- Location: LCCOMB_X31_Y4_N28
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

-- Location: FF_X31_Y4_N29
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

-- Location: LCCOMB_X28_Y4_N8
\inst3|Final_Output2[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Final_Output2[1]~feeder_combout\ = \inst1|BUFFER_READ\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|BUFFER_READ\(1),
	combout => \inst3|Final_Output2[1]~feeder_combout\);

-- Location: FF_X28_Y4_N9
\inst3|Final_Output2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Final_Output2[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Final_Output2\(1));

-- Location: LCCOMB_X31_Y4_N6
\inst1|BUFFER_READ[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|BUFFER_READ[0]~feeder_combout\ = \inst1|SPACE_AVAILABLE\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SPACE_AVAILABLE\(0),
	combout => \inst1|BUFFER_READ[0]~feeder_combout\);

-- Location: FF_X31_Y4_N7
\inst1|BUFFER_READ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|BUFFER_READ[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BUFFER_READ\(0));

-- Location: LCCOMB_X30_Y4_N26
\inst3|Final_Output2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Final_Output2[0]~feeder_combout\ = \inst1|BUFFER_READ\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|BUFFER_READ\(0),
	combout => \inst3|Final_Output2[0]~feeder_combout\);

-- Location: FF_X30_Y4_N27
\inst3|Final_Output2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|Final_Output2[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|Final_Output2\(0));

ww_FIFO_OUT(7) <= \FIFO_OUT[7]~output_o\;

ww_FIFO_OUT(6) <= \FIFO_OUT[6]~output_o\;

ww_FIFO_OUT(5) <= \FIFO_OUT[5]~output_o\;

ww_FIFO_OUT(4) <= \FIFO_OUT[4]~output_o\;

ww_FIFO_OUT(3) <= \FIFO_OUT[3]~output_o\;

ww_FIFO_OUT(2) <= \FIFO_OUT[2]~output_o\;

ww_FIFO_OUT(1) <= \FIFO_OUT[1]~output_o\;

ww_FIFO_OUT(0) <= \FIFO_OUT[0]~output_o\;

ww_OUTPUTa(11) <= \OUTPUTa[11]~output_o\;

ww_OUTPUTa(10) <= \OUTPUTa[10]~output_o\;

ww_OUTPUTa(9) <= \OUTPUTa[9]~output_o\;

ww_OUTPUTa(8) <= \OUTPUTa[8]~output_o\;

ww_OUTPUTa(7) <= \OUTPUTa[7]~output_o\;

ww_OUTPUTa(6) <= \OUTPUTa[6]~output_o\;

ww_OUTPUTa(5) <= \OUTPUTa[5]~output_o\;

ww_OUTPUTa(4) <= \OUTPUTa[4]~output_o\;

ww_OUTPUTa(3) <= \OUTPUTa[3]~output_o\;

ww_OUTPUTa(2) <= \OUTPUTa[2]~output_o\;

ww_OUTPUTa(1) <= \OUTPUTa[1]~output_o\;

ww_OUTPUTa(0) <= \OUTPUTa[0]~output_o\;

ww_OUTPUTb(7) <= \OUTPUTb[7]~output_o\;

ww_OUTPUTb(6) <= \OUTPUTb[6]~output_o\;

ww_OUTPUTb(5) <= \OUTPUTb[5]~output_o\;

ww_OUTPUTb(4) <= \OUTPUTb[4]~output_o\;

ww_OUTPUTb(3) <= \OUTPUTb[3]~output_o\;

ww_OUTPUTb(2) <= \OUTPUTb[2]~output_o\;

ww_OUTPUTb(1) <= \OUTPUTb[1]~output_o\;

ww_OUTPUTb(0) <= \OUTPUTb[0]~output_o\;
END structure;


