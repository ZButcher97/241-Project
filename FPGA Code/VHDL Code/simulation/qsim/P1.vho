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

-- DATE "05/14/2018 20:20:44"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

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
	Buffer5 : OUT std_logic_vector(11 DOWNTO 0);
	Buffer6 : OUT std_logic_vector(11 DOWNTO 0);
	Buffer7 : OUT std_logic_vector(11 DOWNTO 0);
	Buffer8 : OUT std_logic_vector(11 DOWNTO 0);
	Buffer9 : OUT std_logic_vector(11 DOWNTO 0);
	Clock_Count : OUT std_logic_vector(4 DOWNTO 0);
	OUT2MCU : OUT std_logic_vector(3 DOWNTO 0);
	OUTPUTCHECK : OUT std_logic_vector(7 DOWNTO 0)
	);
END P1;

-- Design Ports Information
-- ADC_OUT[11]	-- ADC_OUT[10]	-- ADC_OUT[9]	-- ADC_OUT[8]	-- ADC_OUT[7]	-- ADC_OUT[6]	-- ADC_OUT[5]	-- ADC_OUT[4]	-- ADC_OUT[3]	-- ADC_OUT[2]	-- ADC_OUT[1]	-- ADC_OUT[0]	-- Buffer1[11]	-- Buffer1[10]	-- Buffer1[9]	-- Buffer1[8]	-- Buffer1[7]	-- Buffer1[6]	-- Buffer1[5]	-- Buffer1[4]	-- Buffer1[3]	-- Buffer1[2]	-- Buffer1[1]	-- Buffer1[0]	-- Buffer2[11]	-- Buffer2[10]	-- Buffer2[9]	-- Buffer2[8]	-- Buffer2[7]	-- Buffer2[6]	-- Buffer2[5]	-- Buffer2[4]	-- Buffer2[3]	-- Buffer2[2]	-- Buffer2[1]	-- Buffer2[0]	-- Buffer3[11]	-- Buffer3[10]	-- Buffer3[9]	-- Buffer3[8]	-- Buffer3[7]	-- Buffer3[6]	-- Buffer3[5]	-- Buffer3[4]	-- Buffer3[3]	-- Buffer3[2]	-- Buffer3[1]	-- Buffer3[0]	-- Buffer4[11]	-- Buffer4[10]	-- Buffer4[9]	-- Buffer4[8]	-- Buffer4[7]	-- Buffer4[6]	-- Buffer4[5]	-- Buffer4[4]	-- Buffer4[3]	-- Buffer4[2]	-- Buffer4[1]	-- Buffer4[0]	-- Buffer5[11]	-- Buffer5[10]	-- Buffer5[9]	-- Buffer5[8]	-- Buffer5[7]	-- Buffer5[6]	-- Buffer5[5]	-- Buffer5[4]	-- Buffer5[3]	-- Buffer5[2]	-- Buffer5[1]	-- Buffer5[0]	-- Buffer6[11]	-- Buffer6[10]	-- Buffer6[9]	-- Buffer6[8]	-- Buffer6[7]	-- Buffer6[6]	-- Buffer6[5]	-- Buffer6[4]	-- Buffer6[3]	-- Buffer6[2]	-- Buffer6[1]	-- Buffer6[0]	-- Buffer7[11]	-- Buffer7[10]	-- Buffer7[9]	-- Buffer7[8]	-- Buffer7[7]	-- Buffer7[6]	-- Buffer7[5]	-- Buffer7[4]	-- Buffer7[3]	-- Buffer7[2]	-- Buffer7[1]	-- Buffer7[0]	-- Buffer8[11]	-- Buffer8[10]	-- Buffer8[9]	-- Buffer8[8]	-- Buffer8[7]	-- Buffer8[6]	-- Buffer8[5]	-- Buffer8[4]	-- Buffer8[3]	-- Buffer8[2]	-- Buffer8[1]	-- Buffer8[0]	-- Buffer9[11]	-- Buffer9[10]	-- Buffer9[9]	-- Buffer9[8]	-- Buffer9[7]	-- Buffer9[6]	-- Buffer9[5]	-- Buffer9[4]	-- Buffer9[3]	-- Buffer9[2]	-- Buffer9[1]	-- Buffer9[0]	-- Clock_Count[4]	-- Clock_Count[3]	-- Clock_Count[2]	-- Clock_Count[1]	-- Clock_Count[0]	-- OUT2MCU[3]	-- OUT2MCU[2]	-- OUT2MCU[1]	-- OUT2MCU[0]	-- OUTPUTCHECK[7]	-- OUTPUTCHECK[6]	-- OUTPUTCHECK[5]	-- OUTPUTCHECK[4]	-- OUTPUTCHECK[3]	-- OUTPUTCHECK[2]	-- OUTPUTCHECK[1]	-- OUTPUTCHECK[0]	-- CLK	-- MCU_IN[7]	-- MCU_IN[6]	-- MCU_IN[5]	-- MCU_IN[4]	-- MCU_IN[2]	-- MCU_IN[1]	-- MCU_IN[0]	-- MCU_IN[3]	-- ADC_IN[11]	-- ADC_IN[10]	-- ADC_IN[9]	-- ADC_IN[8]	-- ADC_IN[7]	-- ADC_IN[6]	-- ADC_IN[5]	-- ADC_IN[4]	-- ADC_IN[3]	-- ADC_IN[2]	-- ADC_IN[1]	-- ADC_IN[0]	

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
SIGNAL ww_Buffer5 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_Buffer6 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_Buffer7 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_Buffer8 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_Buffer9 : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_Clock_Count : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_OUT2MCU : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OUTPUTCHECK : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|OUTPUT[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|OUTPUT[2]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_nCEO~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \~ALTERA_nCEO~~obuf_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \ADC_IN[11]~input_o\ : std_logic;
SIGNAL \MCU_IN[7]~input_o\ : std_logic;
SIGNAL \MCU_IN[6]~input_o\ : std_logic;
SIGNAL \MCU_IN[5]~input_o\ : std_logic;
SIGNAL \MCU_IN[4]~input_o\ : std_logic;
SIGNAL \inst1|Equal5~0_combout\ : std_logic;
SIGNAL \MCU_IN[3]~input_o\ : std_logic;
SIGNAL \inst1|Equal1~2_combout\ : std_logic;
SIGNAL \MCU_IN[2]~input_o\ : std_logic;
SIGNAL \MCU_IN[1]~input_o\ : std_logic;
SIGNAL \MCU_IN[0]~input_o\ : std_logic;
SIGNAL \inst1|OUTPUT~9_combout\ : std_logic;
SIGNAL \inst1|Equal2~0_combout\ : std_logic;
SIGNAL \inst|Equal46~0_combout\ : std_logic;
SIGNAL \inst|Equal46~1_combout\ : std_logic;
SIGNAL \ADC_IN[0]~input_o\ : std_logic;
SIGNAL \inst|Equal4~0_combout\ : std_logic;
SIGNAL \ADC_IN[1]~input_o\ : std_logic;
SIGNAL \inst|buffer1~172_combout\ : std_logic;
SIGNAL \inst|counter~20_combout\ : std_logic;
SIGNAL \inst1|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|Equal1~1_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~6_combout\ : std_logic;
SIGNAL \inst1|Latch~2_combout\ : std_logic;
SIGNAL \inst1|Latch~3_combout\ : std_logic;
SIGNAL \inst1|Latch~q\ : std_logic;
SIGNAL \inst1|OUTPUT[1]~11_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~15_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~7_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[0]~16_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[1]~12_combout\ : std_logic;
SIGNAL \inst|buffer1[135]~171_combout\ : std_logic;
SIGNAL \inst1|Equal4~0_combout\ : std_logic;
SIGNAL \inst|bufferout[23]~0_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[2]~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|OUTPUT[3]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Equal32~1_combout\ : std_logic;
SIGNAL \inst|Equal41~0_combout\ : std_logic;
SIGNAL \ADC_IN[2]~input_o\ : std_logic;
SIGNAL \inst|buffer1~173_combout\ : std_logic;
SIGNAL \inst|buffer1~203_combout\ : std_logic;
SIGNAL \inst|Equal8~0_combout\ : std_logic;
SIGNAL \inst|buffer1[120]~200_combout\ : std_logic;
SIGNAL \ADC_IN[3]~input_o\ : std_logic;
SIGNAL \inst|buffer1~174_combout\ : std_logic;
SIGNAL \inst|buffer1~204_combout\ : std_logic;
SIGNAL \inst|Equal39~0_combout\ : std_logic;
SIGNAL \ADC_IN[4]~input_o\ : std_logic;
SIGNAL \inst|buffer1~175_combout\ : std_logic;
SIGNAL \inst|buffer1~205_combout\ : std_logic;
SIGNAL \ADC_IN[5]~input_o\ : std_logic;
SIGNAL \inst|buffer1~176_combout\ : std_logic;
SIGNAL \inst|buffer1~206_combout\ : std_logic;
SIGNAL \ADC_IN[6]~input_o\ : std_logic;
SIGNAL \inst|buffer1~177_combout\ : std_logic;
SIGNAL \inst|buffer1~207_combout\ : std_logic;
SIGNAL \ADC_IN[7]~input_o\ : std_logic;
SIGNAL \inst|buffer1~178_combout\ : std_logic;
SIGNAL \inst|buffer1~208_combout\ : std_logic;
SIGNAL \inst|Equal39~1_combout\ : std_logic;
SIGNAL \ADC_IN[8]~input_o\ : std_logic;
SIGNAL \inst|buffer1~179_combout\ : std_logic;
SIGNAL \inst|buffer1~209_combout\ : std_logic;
SIGNAL \ADC_IN[9]~input_o\ : std_logic;
SIGNAL \inst|buffer1~180_combout\ : std_logic;
SIGNAL \inst|buffer1~210_combout\ : std_logic;
SIGNAL \ADC_IN[10]~input_o\ : std_logic;
SIGNAL \inst|buffer1~181_combout\ : std_logic;
SIGNAL \inst|buffer1~211_combout\ : std_logic;
SIGNAL \inst|Equal39~2_combout\ : std_logic;
SIGNAL \inst|Equal39~3_combout\ : std_logic;
SIGNAL \inst|buffer1~168_combout\ : std_logic;
SIGNAL \inst|buffer1[120]~201_combout\ : std_logic;
SIGNAL \inst|Equal32~0_combout\ : std_logic;
SIGNAL \inst|Equal16~1_combout\ : std_logic;
SIGNAL \inst|Equal12~4_combout\ : std_logic;
SIGNAL \inst|Equal12~5_combout\ : std_logic;
SIGNAL \inst|buffer1[23]~35_combout\ : std_logic;
SIGNAL \inst|buffer1~51_combout\ : std_logic;
SIGNAL \inst|Equal4~1_combout\ : std_logic;
SIGNAL \inst|buffer1[23]~37_combout\ : std_logic;
SIGNAL \inst|buffer1[23]~40_combout\ : std_logic;
SIGNAL \inst|Equal9~0_combout\ : std_logic;
SIGNAL \inst|buffer1~189_combout\ : std_logic;
SIGNAL \inst|buffer1[117]~185_combout\ : std_logic;
SIGNAL \inst|buffer1[117]~186_combout\ : std_logic;
SIGNAL \inst|buffer1~161_combout\ : std_logic;
SIGNAL \inst|buffer1[107]~152_combout\ : std_logic;
SIGNAL \inst|buffer1[107]~153_combout\ : std_logic;
SIGNAL \inst|buffer1~146_combout\ : std_logic;
SIGNAL \inst|buffer1[84]~137_combout\ : std_logic;
SIGNAL \inst|buffer1~104_combout\ : std_logic;
SIGNAL \inst|buffer1~162_combout\ : std_logic;
SIGNAL \inst|buffer1~147_combout\ : std_logic;
SIGNAL \inst|Equal27~0_combout\ : std_logic;
SIGNAL \inst|buffer1~193_combout\ : std_logic;
SIGNAL \inst|buffer1~157_combout\ : std_logic;
SIGNAL \inst|buffer1~142_combout\ : std_logic;
SIGNAL \inst|buffer1~192_combout\ : std_logic;
SIGNAL \inst|buffer1~158_combout\ : std_logic;
SIGNAL \inst|buffer1~143_combout\ : std_logic;
SIGNAL \inst|buffer1~191_combout\ : std_logic;
SIGNAL \inst|buffer1~159_combout\ : std_logic;
SIGNAL \inst|buffer1~144_combout\ : std_logic;
SIGNAL \inst|buffer1~190_combout\ : std_logic;
SIGNAL \inst|buffer1~160_combout\ : std_logic;
SIGNAL \inst|buffer1~145_combout\ : std_logic;
SIGNAL \inst|Equal27~1_combout\ : std_logic;
SIGNAL \inst|buffer1~196_combout\ : std_logic;
SIGNAL \inst|buffer1~154_combout\ : std_logic;
SIGNAL \inst|buffer1~139_combout\ : std_logic;
SIGNAL \inst|buffer1~195_combout\ : std_logic;
SIGNAL \inst|buffer1~155_combout\ : std_logic;
SIGNAL \inst|buffer1~140_combout\ : std_logic;
SIGNAL \inst|buffer1~194_combout\ : std_logic;
SIGNAL \inst|buffer1~156_combout\ : std_logic;
SIGNAL \inst|buffer1~141_combout\ : std_logic;
SIGNAL \inst|Equal27~2_combout\ : std_logic;
SIGNAL \inst|Equal27~3_combout\ : std_logic;
SIGNAL \inst|buffer1~220_combout\ : std_logic;
SIGNAL \inst|buffer1[84]~138_combout\ : std_logic;
SIGNAL \inst|buffer1~131_combout\ : std_logic;
SIGNAL \inst|buffer1[72]~120_combout\ : std_logic;
SIGNAL \inst|buffer1~127_combout\ : std_logic;
SIGNAL \inst|buffer1~128_combout\ : std_logic;
SIGNAL \inst|buffer1~129_combout\ : std_logic;
SIGNAL \inst|buffer1~130_combout\ : std_logic;
SIGNAL \inst|Equal23~0_combout\ : std_logic;
SIGNAL \inst|buffer1~124_combout\ : std_logic;
SIGNAL \inst|buffer1~125_combout\ : std_logic;
SIGNAL \inst|buffer1~126_combout\ : std_logic;
SIGNAL \inst|Equal23~1_combout\ : std_logic;
SIGNAL \inst|buffer1~132_combout\ : std_logic;
SIGNAL \inst|Equal23~2_combout\ : std_logic;
SIGNAL \inst|buffer1~121_combout\ : std_logic;
SIGNAL \inst|buffer1~122_combout\ : std_logic;
SIGNAL \inst|buffer1[72]~123_combout\ : std_logic;
SIGNAL \inst|buffer1~114_combout\ : std_logic;
SIGNAL \inst|buffer1~115_combout\ : std_logic;
SIGNAL \inst|Equal19~0_combout\ : std_logic;
SIGNAL \inst|buffer1~110_combout\ : std_logic;
SIGNAL \inst|buffer1~111_combout\ : std_logic;
SIGNAL \inst|buffer1~112_combout\ : std_logic;
SIGNAL \inst|buffer1~113_combout\ : std_logic;
SIGNAL \inst|Equal19~1_combout\ : std_logic;
SIGNAL \inst|buffer1~107_combout\ : std_logic;
SIGNAL \inst|buffer1~108_combout\ : std_logic;
SIGNAL \inst|buffer1~109_combout\ : std_logic;
SIGNAL \inst|Equal19~2_combout\ : std_logic;
SIGNAL \inst|Equal19~3_combout\ : std_logic;
SIGNAL \inst|buffer1~217_combout\ : std_logic;
SIGNAL \inst|buffer1[60]~105_combout\ : std_logic;
SIGNAL \inst|buffer1[60]~106_combout\ : std_logic;
SIGNAL \inst|buffer1~98_combout\ : std_logic;
SIGNAL \inst|buffer1~99_combout\ : std_logic;
SIGNAL \inst|Equal15~0_combout\ : std_logic;
SIGNAL \inst|buffer1~94_combout\ : std_logic;
SIGNAL \inst|buffer1~95_combout\ : std_logic;
SIGNAL \inst|buffer1~96_combout\ : std_logic;
SIGNAL \inst|buffer1~97_combout\ : std_logic;
SIGNAL \inst|Equal15~1_combout\ : std_logic;
SIGNAL \inst|buffer1~91_combout\ : std_logic;
SIGNAL \inst|buffer1~92_combout\ : std_logic;
SIGNAL \inst|buffer1~93_combout\ : std_logic;
SIGNAL \inst|Equal15~2_combout\ : std_logic;
SIGNAL \inst|Equal15~3_combout\ : std_logic;
SIGNAL \inst|buffer1~88_combout\ : std_logic;
SIGNAL \inst|buffer1~75_combout\ : std_logic;
SIGNAL \inst|buffer1~82_combout\ : std_logic;
SIGNAL \inst|Equal11~0_combout\ : std_logic;
SIGNAL \inst|buffer1~77_combout\ : std_logic;
SIGNAL \inst|buffer1~78_combout\ : std_logic;
SIGNAL \inst|buffer1~79_combout\ : std_logic;
SIGNAL \inst|buffer1~80_combout\ : std_logic;
SIGNAL \inst|Equal11~1_combout\ : std_logic;
SIGNAL \inst|buffer1~74_combout\ : std_logic;
SIGNAL \inst|buffer1~76_combout\ : std_logic;
SIGNAL \inst|Equal11~2_combout\ : std_logic;
SIGNAL \inst|Equal11~3_combout\ : std_logic;
SIGNAL \inst|buffer1~71_combout\ : std_logic;
SIGNAL \inst|buffer1[36]~72_combout\ : std_logic;
SIGNAL \inst|buffer1[36]~73_combout\ : std_logic;
SIGNAL \inst|Equal17~5_combout\ : std_logic;
SIGNAL \inst|Equal17~6_combout\ : std_logic;
SIGNAL \inst|Equal17~7_combout\ : std_logic;
SIGNAL \inst|buffer1[59]~89_combout\ : std_logic;
SIGNAL \inst|buffer1[59]~90_combout\ : std_logic;
SIGNAL \inst|buffer1~81_combout\ : std_logic;
SIGNAL \inst|buffer1~64_combout\ : std_logic;
SIGNAL \inst|buffer1[24]~54_combout\ : std_logic;
SIGNAL \inst|buffer1~65_combout\ : std_logic;
SIGNAL \inst|Equal7~0_combout\ : std_logic;
SIGNAL \inst|buffer1~60_combout\ : std_logic;
SIGNAL \inst|buffer1~61_combout\ : std_logic;
SIGNAL \inst|buffer1~62_combout\ : std_logic;
SIGNAL \inst|buffer1~63_combout\ : std_logic;
SIGNAL \inst|Equal7~1_combout\ : std_logic;
SIGNAL \inst|buffer1~57_combout\ : std_logic;
SIGNAL \inst|buffer1~58_combout\ : std_logic;
SIGNAL \inst|buffer1~59_combout\ : std_logic;
SIGNAL \inst|Equal7~2_combout\ : std_logic;
SIGNAL \inst|Equal7~3_combout\ : std_logic;
SIGNAL \inst|buffer1~55_combout\ : std_logic;
SIGNAL \inst|buffer1[24]~56_combout\ : std_logic;
SIGNAL \inst|buffer1~48_combout\ : std_logic;
SIGNAL \inst|buffer1~49_combout\ : std_logic;
SIGNAL \inst|Equal9~1_combout\ : std_logic;
SIGNAL \inst|buffer1~46_combout\ : std_logic;
SIGNAL \inst|buffer1~47_combout\ : std_logic;
SIGNAL \inst|Equal9~2_combout\ : std_logic;
SIGNAL \inst|buffer1~44_combout\ : std_logic;
SIGNAL \inst|buffer1~45_combout\ : std_logic;
SIGNAL \inst|Equal9~3_combout\ : std_logic;
SIGNAL \inst|Equal9~4_combout\ : std_logic;
SIGNAL \inst|buffer1~42_combout\ : std_logic;
SIGNAL \inst|buffer1~43_combout\ : std_logic;
SIGNAL \inst|Equal9~5_combout\ : std_logic;
SIGNAL \inst|buffer1~41_combout\ : std_logic;
SIGNAL \inst|Equal9~6_combout\ : std_logic;
SIGNAL \inst|Equal9~7_combout\ : std_logic;
SIGNAL \inst|buffer1[24]~215_combout\ : std_logic;
SIGNAL \inst|buffer1[24]~52_combout\ : std_logic;
SIGNAL \inst|buffer1~67_combout\ : std_logic;
SIGNAL \inst|Equal13~0_combout\ : std_logic;
SIGNAL \inst|Equal13~1_combout\ : std_logic;
SIGNAL \inst|Equal13~2_combout\ : std_logic;
SIGNAL \inst|Equal13~3_combout\ : std_logic;
SIGNAL \inst|Equal13~4_combout\ : std_logic;
SIGNAL \inst|Equal13~5_combout\ : std_logic;
SIGNAL \inst|Equal13~6_combout\ : std_logic;
SIGNAL \inst|buffer1[36]~68_combout\ : std_logic;
SIGNAL \inst|buffer1[36]~69_combout\ : std_logic;
SIGNAL \inst|buffer1~84_combout\ : std_logic;
SIGNAL \inst|Equal17~0_combout\ : std_logic;
SIGNAL \inst|Equal17~1_combout\ : std_logic;
SIGNAL \inst|Equal17~2_combout\ : std_logic;
SIGNAL \inst|Equal17~3_combout\ : std_logic;
SIGNAL \inst|Equal17~4_combout\ : std_logic;
SIGNAL \inst|buffer1[59]~85_combout\ : std_logic;
SIGNAL \inst|buffer1[59]~86_combout\ : std_logic;
SIGNAL \inst|buffer1~101_combout\ : std_logic;
SIGNAL \inst|Equal21~0_combout\ : std_logic;
SIGNAL \inst|Equal21~1_combout\ : std_logic;
SIGNAL \inst|Equal21~2_combout\ : std_logic;
SIGNAL \inst|Equal21~3_combout\ : std_logic;
SIGNAL \inst|Equal21~4_combout\ : std_logic;
SIGNAL \inst|Equal21~5_combout\ : std_logic;
SIGNAL \inst|Equal21~6_combout\ : std_logic;
SIGNAL \inst|Equal21~7_combout\ : std_logic;
SIGNAL \inst|buffer1[60]~216_combout\ : std_logic;
SIGNAL \inst|buffer1[60]~102_combout\ : std_logic;
SIGNAL \inst|buffer1~117_combout\ : std_logic;
SIGNAL \inst|Equal25~0_combout\ : std_logic;
SIGNAL \inst|Equal25~1_combout\ : std_logic;
SIGNAL \inst|Equal25~2_combout\ : std_logic;
SIGNAL \inst|Equal25~3_combout\ : std_logic;
SIGNAL \inst|Equal25~4_combout\ : std_logic;
SIGNAL \inst|Equal25~5_combout\ : std_logic;
SIGNAL \inst|Equal25~6_combout\ : std_logic;
SIGNAL \inst|Equal25~7_combout\ : std_logic;
SIGNAL \inst|buffer1[72]~218_combout\ : std_logic;
SIGNAL \inst|buffer1[72]~118_combout\ : std_logic;
SIGNAL \inst|buffer1~134_combout\ : std_logic;
SIGNAL \inst|Equal29~0_combout\ : std_logic;
SIGNAL \inst|Equal29~1_combout\ : std_logic;
SIGNAL \inst|Equal29~2_combout\ : std_logic;
SIGNAL \inst|Equal29~3_combout\ : std_logic;
SIGNAL \inst|Equal29~4_combout\ : std_logic;
SIGNAL \inst|Equal29~5_combout\ : std_logic;
SIGNAL \inst|Equal29~6_combout\ : std_logic;
SIGNAL \inst|Equal29~7_combout\ : std_logic;
SIGNAL \inst|buffer1[84]~219_combout\ : std_logic;
SIGNAL \inst|buffer1[84]~135_combout\ : std_logic;
SIGNAL \inst|buffer1~149_combout\ : std_logic;
SIGNAL \inst|Equal33~0_combout\ : std_logic;
SIGNAL \inst|Equal33~1_combout\ : std_logic;
SIGNAL \inst|Equal33~2_combout\ : std_logic;
SIGNAL \inst|Equal33~3_combout\ : std_logic;
SIGNAL \inst|Equal33~4_combout\ : std_logic;
SIGNAL \inst|Equal33~5_combout\ : std_logic;
SIGNAL \inst|Equal33~6_combout\ : std_logic;
SIGNAL \inst|Equal33~7_combout\ : std_logic;
SIGNAL \inst|buffer1[107]~150_combout\ : std_logic;
SIGNAL \inst|buffer1~164_combout\ : std_logic;
SIGNAL \inst|Equal37~0_combout\ : std_logic;
SIGNAL \inst|Equal37~1_combout\ : std_logic;
SIGNAL \inst|Equal37~2_combout\ : std_logic;
SIGNAL \inst|Equal37~3_combout\ : std_logic;
SIGNAL \inst|Equal37~4_combout\ : std_logic;
SIGNAL \inst|Equal37~5_combout\ : std_logic;
SIGNAL \inst|Equal37~6_combout\ : std_logic;
SIGNAL \inst|Equal37~7_combout\ : std_logic;
SIGNAL \inst|buffer1[117]~223_combout\ : std_logic;
SIGNAL \inst|buffer1[117]~183_combout\ : std_logic;
SIGNAL \inst|buffer1~188_combout\ : std_logic;
SIGNAL \inst|Equal41~1_combout\ : std_logic;
SIGNAL \inst|Equal41~2_combout\ : std_logic;
SIGNAL \inst|Equal41~3_combout\ : std_logic;
SIGNAL \inst|Equal41~4_combout\ : std_logic;
SIGNAL \inst|Equal41~5_combout\ : std_logic;
SIGNAL \inst|Equal41~6_combout\ : std_logic;
SIGNAL \inst|Equal41~7_combout\ : std_logic;
SIGNAL \inst|buffer1[120]~222_combout\ : std_logic;
SIGNAL \inst|buffer1[120]~198_combout\ : std_logic;
SIGNAL \inst|buffer1~202_combout\ : std_logic;
SIGNAL \inst|buffer1~187_combout\ : std_logic;
SIGNAL \inst|buffer1~163_combout\ : std_logic;
SIGNAL \inst|buffer1~148_combout\ : std_logic;
SIGNAL \inst|buffer1~133_combout\ : std_logic;
SIGNAL \inst|buffer1~116_combout\ : std_logic;
SIGNAL \inst|buffer1~100_combout\ : std_logic;
SIGNAL \inst|buffer1~83_combout\ : std_logic;
SIGNAL \inst|buffer1~66_combout\ : std_logic;
SIGNAL \inst|buffer1~50_combout\ : std_logic;
SIGNAL \inst|buffer1~33_combout\ : std_logic;
SIGNAL \inst|buffer1~24_combout\ : std_logic;
SIGNAL \inst|buffer1~25_combout\ : std_logic;
SIGNAL \inst|buffer1~26_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|buffer1~27_combout\ : std_logic;
SIGNAL \inst|buffer1~28_combout\ : std_logic;
SIGNAL \inst|buffer1~29_combout\ : std_logic;
SIGNAL \inst|buffer1~30_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|buffer1~31_combout\ : std_logic;
SIGNAL \inst|buffer1~32_combout\ : std_logic;
SIGNAL \inst|buffer1~34_combout\ : std_logic;
SIGNAL \inst|Equal1~2_combout\ : std_logic;
SIGNAL \inst|Equal1~3_combout\ : std_logic;
SIGNAL \inst|buffer1~213_combout\ : std_logic;
SIGNAL \inst|buffer1[1]~23_combout\ : std_logic;
SIGNAL \inst|Equal5~0_combout\ : std_logic;
SIGNAL \inst|Equal5~1_combout\ : std_logic;
SIGNAL \inst|Equal5~2_combout\ : std_logic;
SIGNAL \inst|Equal5~3_combout\ : std_logic;
SIGNAL \inst|Equal5~4_combout\ : std_logic;
SIGNAL \inst|Equal5~5_combout\ : std_logic;
SIGNAL \inst|Equal5~6_combout\ : std_logic;
SIGNAL \inst|Equal5~7_combout\ : std_logic;
SIGNAL \inst|buffer1[23]~214_combout\ : std_logic;
SIGNAL \inst|BufferCount~3_combout\ : std_logic;
SIGNAL \inst|BufferCount~4_combout\ : std_logic;
SIGNAL \inst|BufferCount~5_combout\ : std_logic;
SIGNAL \inst|buffer10[11]~0_combout\ : std_logic;
SIGNAL \inst|counter~67_combout\ : std_logic;
SIGNAL \inst|BufferCount~0_combout\ : std_logic;
SIGNAL \inst|BufferCount~1_combout\ : std_logic;
SIGNAL \inst|counter[10]~70_combout\ : std_logic;
SIGNAL \inst|counter[10]~71_combout\ : std_logic;
SIGNAL \inst|BufferCount[3]~6_combout\ : std_logic;
SIGNAL \inst1|Current~1_combout\ : std_logic;
SIGNAL \inst|BufferCount~2_combout\ : std_logic;
SIGNAL \inst1|Current~2_combout\ : std_logic;
SIGNAL \inst|BufferCount~7_combout\ : std_logic;
SIGNAL \inst1|Current~3_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~6_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~7_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[0]~13_combout\ : std_logic;
SIGNAL \inst|buffer1~170_combout\ : std_logic;
SIGNAL \inst|buffer1~199_combout\ : std_logic;
SIGNAL \inst|buffer1~184_combout\ : std_logic;
SIGNAL \inst|Equal35~0_combout\ : std_logic;
SIGNAL \inst|Equal35~1_combout\ : std_logic;
SIGNAL \inst|Equal35~2_combout\ : std_logic;
SIGNAL \inst|Equal35~3_combout\ : std_logic;
SIGNAL \inst|buffer1~167_combout\ : std_logic;
SIGNAL \inst|counter~29_combout\ : std_logic;
SIGNAL \inst|BufferCount~8_combout\ : std_logic;
SIGNAL \inst1|Current~0_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~2_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~3_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~4_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~5_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[3]~10_combout\ : std_logic;
SIGNAL \inst|counter~17_combout\ : std_logic;
SIGNAL \inst|counter~18_combout\ : std_logic;
SIGNAL \inst|Equal43~0_combout\ : std_logic;
SIGNAL \inst|Equal43~1_combout\ : std_logic;
SIGNAL \inst|Equal43~2_combout\ : std_logic;
SIGNAL \inst|Equal43~3_combout\ : std_logic;
SIGNAL \inst|counter[10]~15_combout\ : std_logic;
SIGNAL \inst|Equal23~3_combout\ : std_logic;
SIGNAL \inst|Equal31~0_combout\ : std_logic;
SIGNAL \inst|Equal31~1_combout\ : std_logic;
SIGNAL \inst|Equal31~2_combout\ : std_logic;
SIGNAL \inst|Equal31~3_combout\ : std_logic;
SIGNAL \inst|counter~14_combout\ : std_logic;
SIGNAL \inst|counter~19_combout\ : std_logic;
SIGNAL \inst|Equal3~0_combout\ : std_logic;
SIGNAL \inst|Equal3~1_combout\ : std_logic;
SIGNAL \inst|Equal3~2_combout\ : std_logic;
SIGNAL \inst|Equal3~3_combout\ : std_logic;
SIGNAL \inst|counter~12_combout\ : std_logic;
SIGNAL \inst|counter~13_combout\ : std_logic;
SIGNAL \inst|counter~75_combout\ : std_logic;
SIGNAL \inst|counter[3]~21_combout\ : std_logic;
SIGNAL \inst|Equal16~2_combout\ : std_logic;
SIGNAL \inst|counter[10]~38_combout\ : std_logic;
SIGNAL \inst|counter~39_combout\ : std_logic;
SIGNAL \inst|counter~40_combout\ : std_logic;
SIGNAL \inst|counter~41_combout\ : std_logic;
SIGNAL \inst|counter~42_combout\ : std_logic;
SIGNAL \inst|counter~43_combout\ : std_logic;
SIGNAL \inst|counter[10]~44_combout\ : std_logic;
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
SIGNAL \inst|counter~55_combout\ : std_logic;
SIGNAL \inst|counter~56_combout\ : std_logic;
SIGNAL \inst|counter~57_combout\ : std_logic;
SIGNAL \inst|Equal45~0_combout\ : std_logic;
SIGNAL \inst|Equal45~1_combout\ : std_logic;
SIGNAL \inst|Equal45~2_combout\ : std_logic;
SIGNAL \inst|Equal45~3_combout\ : std_logic;
SIGNAL \inst|Equal45~4_combout\ : std_logic;
SIGNAL \inst|Equal45~5_combout\ : std_logic;
SIGNAL \inst|Equal45~6_combout\ : std_logic;
SIGNAL \inst|Equal45~7_combout\ : std_logic;
SIGNAL \inst|counter~58_combout\ : std_logic;
SIGNAL \inst|counter~59_combout\ : std_logic;
SIGNAL \inst|counter~60_combout\ : std_logic;
SIGNAL \inst|counter~61_combout\ : std_logic;
SIGNAL \inst|counter~62_combout\ : std_logic;
SIGNAL \inst|counter~63_combout\ : std_logic;
SIGNAL \inst|counter~64_combout\ : std_logic;
SIGNAL \inst|counter~65_combout\ : std_logic;
SIGNAL \inst|counter[1]~2_combout\ : std_logic;
SIGNAL \inst|Equal16~0_combout\ : std_logic;
SIGNAL \inst|buffer1~39_combout\ : std_logic;
SIGNAL \inst|counter~66_combout\ : std_logic;
SIGNAL \inst|counter~78_combout\ : std_logic;
SIGNAL \inst|counter[10]~68_combout\ : std_logic;
SIGNAL \inst|counter~69_combout\ : std_logic;
SIGNAL \inst|counter[10]~72_combout\ : std_logic;
SIGNAL \inst|counter[10]~73_combout\ : std_logic;
SIGNAL \inst|counter[10]~74_combout\ : std_logic;
SIGNAL \inst|buffer1~38_combout\ : std_logic;
SIGNAL \inst|buffer1~165_combout\ : std_logic;
SIGNAL \inst|buffer1~166_combout\ : std_logic;
SIGNAL \inst|counter~22_combout\ : std_logic;
SIGNAL \inst|counter~23_combout\ : std_logic;
SIGNAL \inst|counter~24_combout\ : std_logic;
SIGNAL \inst|counter~25_combout\ : std_logic;
SIGNAL \inst|counter~26_combout\ : std_logic;
SIGNAL \inst|counter~76_combout\ : std_logic;
SIGNAL \inst|counter~77_combout\ : std_logic;
SIGNAL \inst|counter~27_combout\ : std_logic;
SIGNAL \inst|counter~28_combout\ : std_logic;
SIGNAL \inst|counter~30_combout\ : std_logic;
SIGNAL \inst|counter~31_combout\ : std_logic;
SIGNAL \inst|counter~32_combout\ : std_logic;
SIGNAL \inst|counter~33_combout\ : std_logic;
SIGNAL \inst|counter~34_combout\ : std_logic;
SIGNAL \inst|counter~35_combout\ : std_logic;
SIGNAL \inst|counter~36_combout\ : std_logic;
SIGNAL \inst|counter~37_combout\ : std_logic;
SIGNAL \inst|counter[2]~1_combout\ : std_logic;
SIGNAL \inst|buffer1~221_combout\ : std_logic;
SIGNAL \inst|counter~11_combout\ : std_logic;
SIGNAL \inst|counter~16_combout\ : std_logic;
SIGNAL \inst|counter[4]~0_combout\ : std_logic;
SIGNAL \inst|Equal44~0_combout\ : std_logic;
SIGNAL \inst|buffer1[135]~169_combout\ : std_logic;
SIGNAL \inst|buffer1~182_combout\ : std_logic;
SIGNAL \inst|buffer1~212_combout\ : std_logic;
SIGNAL \inst|buffer1~197_combout\ : std_logic;
SIGNAL \inst|buffer1~151_combout\ : std_logic;
SIGNAL \inst|buffer1~136_combout\ : std_logic;
SIGNAL \inst|buffer1~119_combout\ : std_logic;
SIGNAL \inst|buffer1~103_combout\ : std_logic;
SIGNAL \inst|buffer1~87_combout\ : std_logic;
SIGNAL \inst|buffer1~70_combout\ : std_logic;
SIGNAL \inst|buffer1~53_combout\ : std_logic;
SIGNAL \inst|buffer1~36_combout\ : std_logic;
SIGNAL \inst|buffer1~22_combout\ : std_logic;
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
SIGNAL \inst|AVAILABLE~0_combout\ : std_logic;
SIGNAL \inst|AVAILABLE~q\ : std_logic;
SIGNAL \inst1|OUTPUT~8_combout\ : std_logic;
SIGNAL \inst1|OUTPUT~14_combout\ : std_logic;
SIGNAL \inst|buffer1\ : std_logic_vector(143 DOWNTO 0);
SIGNAL \inst|buffer40\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|buffer50\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|ADC_out\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|buffer10\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|buffer20\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|buffer30\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|buffer60\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|buffer70\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|buffer80\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|buffer90\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|clock_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|BUFFER_READ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|OUTPUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|SPACE_AVAILABLE\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|Current\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|BufferCount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|BufferCheck\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|bufferout\ : std_logic_vector(143 DOWNTO 0);
SIGNAL \inst2|bufferout\ : std_logic_vector(143 DOWNTO 0);
SIGNAL \inst2|buffer1\ : std_logic_vector(143 DOWNTO 0);
SIGNAL \inst1|ALT_INV_OUTPUT\ : std_logic_vector(1 DOWNTO 1);

BEGIN

ADC_OUT <= ww_ADC_OUT;
ww_CLK <= CLK;
ww_ADC_IN <= ADC_IN;
ww_MCU_IN <= MCU_IN;
Buffer1 <= ww_Buffer1;
Buffer2 <= ww_Buffer2;
Buffer3 <= ww_Buffer3;
Buffer4 <= ww_Buffer4;
Buffer5 <= ww_Buffer5;
Buffer6 <= ww_Buffer6;
Buffer7 <= ww_Buffer7;
Buffer8 <= ww_Buffer8;
Buffer9 <= ww_Buffer9;
Clock_Count <= ww_Clock_Count;
OUT2MCU <= ww_OUT2MCU;
OUTPUTCHECK <= ww_OUTPUTCHECK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|OUTPUT[3]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|OUTPUT\(3));

\inst1|OUTPUT[2]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|OUTPUT\(2));

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst1|ALT_INV_OUTPUT\(1) <= NOT \inst1|OUTPUT\(1);

\ADC_OUT[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(11),
	devoe => ww_devoe,
	o => ww_ADC_OUT(11));

\ADC_OUT[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(10),
	devoe => ww_devoe,
	o => ww_ADC_OUT(10));

\ADC_OUT[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(9),
	devoe => ww_devoe,
	o => ww_ADC_OUT(9));

\ADC_OUT[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(8),
	devoe => ww_devoe,
	o => ww_ADC_OUT(8));

\ADC_OUT[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(7),
	devoe => ww_devoe,
	o => ww_ADC_OUT(7));

\ADC_OUT[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(6),
	devoe => ww_devoe,
	o => ww_ADC_OUT(6));

\ADC_OUT[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(5),
	devoe => ww_devoe,
	o => ww_ADC_OUT(5));

\ADC_OUT[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(4),
	devoe => ww_devoe,
	o => ww_ADC_OUT(4));

\ADC_OUT[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(3),
	devoe => ww_devoe,
	o => ww_ADC_OUT(3));

\ADC_OUT[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(2),
	devoe => ww_devoe,
	o => ww_ADC_OUT(2));

\ADC_OUT[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(1),
	devoe => ww_devoe,
	o => ww_ADC_OUT(1));

\ADC_OUT[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(0),
	devoe => ww_devoe,
	o => ww_ADC_OUT(0));

\Buffer1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(11),
	devoe => ww_devoe,
	o => ww_Buffer1(11));

\Buffer1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(10),
	devoe => ww_devoe,
	o => ww_Buffer1(10));

\Buffer1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(9),
	devoe => ww_devoe,
	o => ww_Buffer1(9));

\Buffer1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(8),
	devoe => ww_devoe,
	o => ww_Buffer1(8));

\Buffer1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(7),
	devoe => ww_devoe,
	o => ww_Buffer1(7));

\Buffer1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(6),
	devoe => ww_devoe,
	o => ww_Buffer1(6));

\Buffer1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(5),
	devoe => ww_devoe,
	o => ww_Buffer1(5));

\Buffer1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(4),
	devoe => ww_devoe,
	o => ww_Buffer1(4));

\Buffer1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(3),
	devoe => ww_devoe,
	o => ww_Buffer1(3));

\Buffer1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(2),
	devoe => ww_devoe,
	o => ww_Buffer1(2));

\Buffer1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(1),
	devoe => ww_devoe,
	o => ww_Buffer1(1));

\Buffer1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer10\(0),
	devoe => ww_devoe,
	o => ww_Buffer1(0));

\Buffer2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(11),
	devoe => ww_devoe,
	o => ww_Buffer2(11));

\Buffer2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(10),
	devoe => ww_devoe,
	o => ww_Buffer2(10));

\Buffer2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(9),
	devoe => ww_devoe,
	o => ww_Buffer2(9));

\Buffer2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(8),
	devoe => ww_devoe,
	o => ww_Buffer2(8));

\Buffer2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(7),
	devoe => ww_devoe,
	o => ww_Buffer2(7));

\Buffer2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(6),
	devoe => ww_devoe,
	o => ww_Buffer2(6));

\Buffer2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(5),
	devoe => ww_devoe,
	o => ww_Buffer2(5));

\Buffer2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(4),
	devoe => ww_devoe,
	o => ww_Buffer2(4));

\Buffer2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(3),
	devoe => ww_devoe,
	o => ww_Buffer2(3));

\Buffer2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(2),
	devoe => ww_devoe,
	o => ww_Buffer2(2));

\Buffer2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(1),
	devoe => ww_devoe,
	o => ww_Buffer2(1));

\Buffer2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer20\(0),
	devoe => ww_devoe,
	o => ww_Buffer2(0));

\Buffer3[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(11),
	devoe => ww_devoe,
	o => ww_Buffer3(11));

\Buffer3[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(10),
	devoe => ww_devoe,
	o => ww_Buffer3(10));

\Buffer3[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(9),
	devoe => ww_devoe,
	o => ww_Buffer3(9));

\Buffer3[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(8),
	devoe => ww_devoe,
	o => ww_Buffer3(8));

\Buffer3[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(7),
	devoe => ww_devoe,
	o => ww_Buffer3(7));

\Buffer3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(6),
	devoe => ww_devoe,
	o => ww_Buffer3(6));

\Buffer3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(5),
	devoe => ww_devoe,
	o => ww_Buffer3(5));

\Buffer3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(4),
	devoe => ww_devoe,
	o => ww_Buffer3(4));

\Buffer3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(3),
	devoe => ww_devoe,
	o => ww_Buffer3(3));

\Buffer3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(2),
	devoe => ww_devoe,
	o => ww_Buffer3(2));

\Buffer3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(1),
	devoe => ww_devoe,
	o => ww_Buffer3(1));

\Buffer3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer30\(0),
	devoe => ww_devoe,
	o => ww_Buffer3(0));

\Buffer4[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(11),
	devoe => ww_devoe,
	o => ww_Buffer4(11));

\Buffer4[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(10),
	devoe => ww_devoe,
	o => ww_Buffer4(10));

\Buffer4[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(9),
	devoe => ww_devoe,
	o => ww_Buffer4(9));

\Buffer4[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(8),
	devoe => ww_devoe,
	o => ww_Buffer4(8));

\Buffer4[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(7),
	devoe => ww_devoe,
	o => ww_Buffer4(7));

\Buffer4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(6),
	devoe => ww_devoe,
	o => ww_Buffer4(6));

\Buffer4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(5),
	devoe => ww_devoe,
	o => ww_Buffer4(5));

\Buffer4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(4),
	devoe => ww_devoe,
	o => ww_Buffer4(4));

\Buffer4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(3),
	devoe => ww_devoe,
	o => ww_Buffer4(3));

\Buffer4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(2),
	devoe => ww_devoe,
	o => ww_Buffer4(2));

\Buffer4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(1),
	devoe => ww_devoe,
	o => ww_Buffer4(1));

\Buffer4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer40\(0),
	devoe => ww_devoe,
	o => ww_Buffer4(0));

\Buffer5[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer50\(11),
	devoe => ww_devoe,
	o => ww_Buffer5(11));

\Buffer5[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer50\(10),
	devoe => ww_devoe,
	o => ww_Buffer5(10));

\Buffer5[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer50\(9),
	devoe => ww_devoe,
	o => ww_Buffer5(9));

\Buffer5[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer50\(8),
	devoe => ww_devoe,
	o => ww_Buffer5(8));

\Buffer5[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer50\(7),
	devoe => ww_devoe,
	o => ww_Buffer5(7));

\Buffer5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer50\(6),
	devoe => ww_devoe,
	o => ww_Buffer5(6));

\Buffer5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer50\(5),
	devoe => ww_devoe,
	o => ww_Buffer5(5));

\Buffer5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer50\(4),
	devoe => ww_devoe,
	o => ww_Buffer5(4));

\Buffer5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer50\(3),
	devoe => ww_devoe,
	o => ww_Buffer5(3));

\Buffer5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer50\(2),
	devoe => ww_devoe,
	o => ww_Buffer5(2));

\Buffer5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer50\(1),
	devoe => ww_devoe,
	o => ww_Buffer5(1));

\Buffer5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer50\(0),
	devoe => ww_devoe,
	o => ww_Buffer5(0));

\Buffer6[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer60\(11),
	devoe => ww_devoe,
	o => ww_Buffer6(11));

\Buffer6[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer60\(10),
	devoe => ww_devoe,
	o => ww_Buffer6(10));

\Buffer6[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer60\(9),
	devoe => ww_devoe,
	o => ww_Buffer6(9));

\Buffer6[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer60\(8),
	devoe => ww_devoe,
	o => ww_Buffer6(8));

\Buffer6[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer60\(7),
	devoe => ww_devoe,
	o => ww_Buffer6(7));

\Buffer6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer60\(6),
	devoe => ww_devoe,
	o => ww_Buffer6(6));

\Buffer6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer60\(5),
	devoe => ww_devoe,
	o => ww_Buffer6(5));

\Buffer6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer60\(4),
	devoe => ww_devoe,
	o => ww_Buffer6(4));

\Buffer6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer60\(3),
	devoe => ww_devoe,
	o => ww_Buffer6(3));

\Buffer6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer60\(2),
	devoe => ww_devoe,
	o => ww_Buffer6(2));

\Buffer6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer60\(1),
	devoe => ww_devoe,
	o => ww_Buffer6(1));

\Buffer6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer60\(0),
	devoe => ww_devoe,
	o => ww_Buffer6(0));

\Buffer7[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer70\(11),
	devoe => ww_devoe,
	o => ww_Buffer7(11));

\Buffer7[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer70\(10),
	devoe => ww_devoe,
	o => ww_Buffer7(10));

\Buffer7[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer70\(9),
	devoe => ww_devoe,
	o => ww_Buffer7(9));

\Buffer7[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer70\(8),
	devoe => ww_devoe,
	o => ww_Buffer7(8));

\Buffer7[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer70\(7),
	devoe => ww_devoe,
	o => ww_Buffer7(7));

\Buffer7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer70\(6),
	devoe => ww_devoe,
	o => ww_Buffer7(6));

\Buffer7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer70\(5),
	devoe => ww_devoe,
	o => ww_Buffer7(5));

\Buffer7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer70\(4),
	devoe => ww_devoe,
	o => ww_Buffer7(4));

\Buffer7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer70\(3),
	devoe => ww_devoe,
	o => ww_Buffer7(3));

\Buffer7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer70\(2),
	devoe => ww_devoe,
	o => ww_Buffer7(2));

\Buffer7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer70\(1),
	devoe => ww_devoe,
	o => ww_Buffer7(1));

\Buffer7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer70\(0),
	devoe => ww_devoe,
	o => ww_Buffer7(0));

\Buffer8[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer80\(11),
	devoe => ww_devoe,
	o => ww_Buffer8(11));

\Buffer8[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer80\(10),
	devoe => ww_devoe,
	o => ww_Buffer8(10));

\Buffer8[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer80\(9),
	devoe => ww_devoe,
	o => ww_Buffer8(9));

\Buffer8[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer80\(8),
	devoe => ww_devoe,
	o => ww_Buffer8(8));

\Buffer8[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer80\(7),
	devoe => ww_devoe,
	o => ww_Buffer8(7));

\Buffer8[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer80\(6),
	devoe => ww_devoe,
	o => ww_Buffer8(6));

\Buffer8[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer80\(5),
	devoe => ww_devoe,
	o => ww_Buffer8(5));

\Buffer8[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer80\(4),
	devoe => ww_devoe,
	o => ww_Buffer8(4));

\Buffer8[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer80\(3),
	devoe => ww_devoe,
	o => ww_Buffer8(3));

\Buffer8[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer80\(2),
	devoe => ww_devoe,
	o => ww_Buffer8(2));

\Buffer8[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer80\(1),
	devoe => ww_devoe,
	o => ww_Buffer8(1));

\Buffer8[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer80\(0),
	devoe => ww_devoe,
	o => ww_Buffer8(0));

\Buffer9[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer90\(11),
	devoe => ww_devoe,
	o => ww_Buffer9(11));

\Buffer9[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer90\(10),
	devoe => ww_devoe,
	o => ww_Buffer9(10));

\Buffer9[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer90\(9),
	devoe => ww_devoe,
	o => ww_Buffer9(9));

\Buffer9[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer90\(8),
	devoe => ww_devoe,
	o => ww_Buffer9(8));

\Buffer9[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer90\(7),
	devoe => ww_devoe,
	o => ww_Buffer9(7));

\Buffer9[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer90\(6),
	devoe => ww_devoe,
	o => ww_Buffer9(6));

\Buffer9[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer90\(5),
	devoe => ww_devoe,
	o => ww_Buffer9(5));

\Buffer9[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer90\(4),
	devoe => ww_devoe,
	o => ww_Buffer9(4));

\Buffer9[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer90\(3),
	devoe => ww_devoe,
	o => ww_Buffer9(3));

\Buffer9[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer90\(2),
	devoe => ww_devoe,
	o => ww_Buffer9(2));

\Buffer9[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer90\(1),
	devoe => ww_devoe,
	o => ww_Buffer9(1));

\Buffer9[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|buffer90\(0),
	devoe => ww_devoe,
	o => ww_Buffer9(0));

\Clock_Count[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|clock_counter\(4),
	devoe => ww_devoe,
	o => ww_Clock_Count(4));

\Clock_Count[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|clock_counter\(3),
	devoe => ww_devoe,
	o => ww_Clock_Count(3));

\Clock_Count[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|clock_counter\(2),
	devoe => ww_devoe,
	o => ww_Clock_Count(2));

\Clock_Count[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|clock_counter\(1),
	devoe => ww_devoe,
	o => ww_Clock_Count(1));

\Clock_Count[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|clock_counter\(0),
	devoe => ww_devoe,
	o => ww_Clock_Count(0));

\OUT2MCU[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BUFFER_READ\(3),
	devoe => ww_devoe,
	o => ww_OUT2MCU(3));

\OUT2MCU[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BUFFER_READ\(2),
	devoe => ww_devoe,
	o => ww_OUT2MCU(2));

\OUT2MCU[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BUFFER_READ\(1),
	devoe => ww_devoe,
	o => ww_OUT2MCU(1));

\OUT2MCU[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|BUFFER_READ\(0),
	devoe => ww_devoe,
	o => ww_OUT2MCU(0));

\OUTPUTCHECK[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|OUTPUT\(7),
	devoe => ww_devoe,
	o => ww_OUTPUTCHECK(7));

\OUTPUTCHECK[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|OUTPUT\(6),
	devoe => ww_devoe,
	o => ww_OUTPUTCHECK(6));

\OUTPUTCHECK[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTPUTCHECK(5));

\OUTPUTCHECK[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_OUTPUTCHECK(4));

\OUTPUTCHECK[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|OUTPUT\(3),
	devoe => ww_devoe,
	o => ww_OUTPUTCHECK(3));

\OUTPUTCHECK[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|OUTPUT\(2),
	devoe => ww_devoe,
	o => ww_OUTPUTCHECK(2));

\OUTPUTCHECK[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|OUTPUT\(1),
	devoe => ww_devoe,
	o => ww_OUTPUTCHECK(1));

\OUTPUTCHECK[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|OUTPUT\(0),
	devoe => ww_devoe,
	o => ww_OUTPUTCHECK(0));

\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

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

\ADC_IN[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(11),
	o => \ADC_IN[11]~input_o\);

\MCU_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(7),
	o => \MCU_IN[7]~input_o\);

\MCU_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(6),
	o => \MCU_IN[6]~input_o\);

\MCU_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(5),
	o => \MCU_IN[5]~input_o\);

\MCU_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(4),
	o => \MCU_IN[4]~input_o\);

\inst1|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal5~0_combout\ = (!\MCU_IN[7]~input_o\ & (!\MCU_IN[6]~input_o\ & (!\MCU_IN[5]~input_o\ & !\MCU_IN[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[7]~input_o\,
	datab => \MCU_IN[6]~input_o\,
	datac => \MCU_IN[5]~input_o\,
	datad => \MCU_IN[4]~input_o\,
	combout => \inst1|Equal5~0_combout\);

\MCU_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(3),
	o => \MCU_IN[3]~input_o\);

\inst1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~2_combout\ = (\inst1|Equal5~0_combout\ & !\MCU_IN[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal5~0_combout\,
	datad => \MCU_IN[3]~input_o\,
	combout => \inst1|Equal1~2_combout\);

\MCU_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(2),
	o => \MCU_IN[2]~input_o\);

\MCU_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(1),
	o => \MCU_IN[1]~input_o\);

\MCU_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(0),
	o => \MCU_IN[0]~input_o\);

\inst1|OUTPUT~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~9_combout\ = ((\MCU_IN[2]~input_o\ & ((\MCU_IN[1]~input_o\) # (\MCU_IN[0]~input_o\))) # (!\MCU_IN[2]~input_o\ & (\MCU_IN[1]~input_o\ & \MCU_IN[0]~input_o\))) # (!\inst1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal1~2_combout\,
	datab => \MCU_IN[2]~input_o\,
	datac => \MCU_IN[1]~input_o\,
	datad => \MCU_IN[0]~input_o\,
	combout => \inst1|OUTPUT~9_combout\);

\inst1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal2~0_combout\ = (\inst1|Equal1~2_combout\ & (\MCU_IN[0]~input_o\ & (!\MCU_IN[2]~input_o\ & !\MCU_IN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal1~2_combout\,
	datab => \MCU_IN[0]~input_o\,
	datac => \MCU_IN[2]~input_o\,
	datad => \MCU_IN[1]~input_o\,
	combout => \inst1|Equal2~0_combout\);

\inst|Equal46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal46~0_combout\ = (\inst|counter\(1) & (\inst|counter\(0) & !\inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(0),
	datad => \inst|counter\(3),
	combout => \inst|Equal46~0_combout\);

\inst|Equal46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal46~1_combout\ = (\inst|counter\(4) & (\inst|counter\(2) & \inst|Equal46~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|counter\(2),
	datac => \inst|Equal46~0_combout\,
	combout => \inst|Equal46~1_combout\);

\ADC_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(0),
	o => \ADC_IN[0]~input_o\);

\inst|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~0_combout\ = (!\inst|counter\(4) & (!\inst|counter\(3) & !\inst|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(4),
	datac => \inst|counter\(3),
	datad => \inst|counter\(0),
	combout => \inst|Equal4~0_combout\);

\ADC_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(1),
	o => \ADC_IN[1]~input_o\);

\inst|buffer1~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~172_combout\ = (\ADC_IN[1]~input_o\ & (\inst|buffer1[135]~169_combout\ & (!\inst1|OUTPUT\(3) & !\inst1|OUTPUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[1]~input_o\,
	datab => \inst|buffer1[135]~169_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1~172_combout\);

\inst|counter~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~20_combout\ = (!\inst1|OUTPUT\(3) & !\inst|buffer1~166_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1~166_combout\,
	combout => \inst|counter~20_combout\);

\inst1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~0_combout\ = (!\MCU_IN[2]~input_o\ & (!\MCU_IN[1]~input_o\ & !\MCU_IN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MCU_IN[2]~input_o\,
	datac => \MCU_IN[1]~input_o\,
	datad => \MCU_IN[0]~input_o\,
	combout => \inst1|Equal1~0_combout\);

\inst1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~1_combout\ = (\inst1|Equal5~0_combout\ & (\inst1|Equal1~0_combout\ & !\MCU_IN[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal5~0_combout\,
	datab => \inst1|Equal1~0_combout\,
	datad => \MCU_IN[3]~input_o\,
	combout => \inst1|Equal1~1_combout\);

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

\inst1|OUTPUT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~6_combout\ = (\MCU_IN[0]~input_o\) # ((\MCU_IN[2]~input_o\ $ (!\MCU_IN[1]~input_o\)) # (!\inst1|Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[0]~input_o\,
	datab => \MCU_IN[2]~input_o\,
	datac => \MCU_IN[1]~input_o\,
	datad => \inst1|Equal1~2_combout\,
	combout => \inst1|OUTPUT~6_combout\);

\inst1|Latch~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Latch~2_combout\ = (\inst1|Equal1~1_combout\ & (\inst1|Latch~q\)) # (!\inst1|Equal1~1_combout\ & (!\inst1|Equal2~0_combout\ & ((\inst1|Latch~q\) # (!\inst1|OUTPUT~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Latch~q\,
	datab => \inst1|Equal1~1_combout\,
	datac => \inst1|OUTPUT~6_combout\,
	datad => \inst1|Equal2~0_combout\,
	combout => \inst1|Latch~2_combout\);

\inst1|Latch~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Latch~3_combout\ = (\inst1|Latch~2_combout\ & (((\inst1|SPACE_AVAILABLE\(4)) # (\inst1|SPACE_AVAILABLE\(10))) # (!\inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|SPACE_AVAILABLE\(4),
	datac => \inst1|SPACE_AVAILABLE\(10),
	datad => \inst1|Latch~2_combout\,
	combout => \inst1|Latch~3_combout\);

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

\inst1|OUTPUT[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[1]~11_combout\ = (\inst1|Equal0~1_combout\ & (\inst1|OUTPUT\(1))) # (!\inst1|Equal0~1_combout\ & (((\inst1|Equal1~1_combout\ & \inst1|Latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst1|Equal1~1_combout\,
	datac => \inst1|Latch~q\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|OUTPUT[1]~11_combout\);

\inst1|OUTPUT~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~15_combout\ = ((\MCU_IN[3]~input_o\) # ((\MCU_IN[2]~input_o\) # (\MCU_IN[1]~input_o\))) # (!\inst1|Equal5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal5~0_combout\,
	datab => \MCU_IN[3]~input_o\,
	datac => \MCU_IN[2]~input_o\,
	datad => \MCU_IN[1]~input_o\,
	combout => \inst1|OUTPUT~15_combout\);

\inst1|OUTPUT~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~7_combout\ = ((\MCU_IN[3]~input_o\ & (\inst1|Equal5~0_combout\ & \inst1|Equal1~0_combout\))) # (!\inst1|OUTPUT~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[3]~input_o\,
	datab => \inst1|Equal5~0_combout\,
	datac => \inst1|Equal1~0_combout\,
	datad => \inst1|OUTPUT~6_combout\,
	combout => \inst1|OUTPUT~7_combout\);

\inst1|OUTPUT[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[0]~16_combout\ = (\inst1|OUTPUT~7_combout\ & (((\inst1|SPACE_AVAILABLE\(4)) # (\inst1|SPACE_AVAILABLE\(10))) # (!\inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|SPACE_AVAILABLE\(4),
	datac => \inst1|SPACE_AVAILABLE\(10),
	datad => \inst1|OUTPUT~7_combout\,
	combout => \inst1|OUTPUT[0]~16_combout\);

\inst1|OUTPUT[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[1]~12_combout\ = (\inst1|OUTPUT[1]~11_combout\) # ((\inst1|OUTPUT~15_combout\ & ((\inst1|OUTPUT\(1)) # (\inst1|OUTPUT[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT[1]~11_combout\,
	datab => \inst1|OUTPUT~15_combout\,
	datac => \inst1|OUTPUT\(1),
	datad => \inst1|OUTPUT[0]~16_combout\,
	combout => \inst1|OUTPUT[1]~12_combout\);

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

\inst|buffer1[135]~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[135]~171_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & ((!\inst|buffer1[135]~169_combout\) # (!\inst|counter~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~20_combout\,
	datab => \inst|buffer1[135]~169_combout\,
	datac => \inst1|OUTPUT\(1),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[135]~171_combout\);

\inst|buffer1[133]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~172_combout\,
	ena => \inst|buffer1[135]~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(133));

\inst1|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal4~0_combout\ = (\inst1|Equal1~2_combout\ & (\MCU_IN[2]~input_o\ & (!\MCU_IN[1]~input_o\ & !\MCU_IN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal1~2_combout\,
	datab => \MCU_IN[2]~input_o\,
	datac => \MCU_IN[1]~input_o\,
	datad => \MCU_IN[0]~input_o\,
	combout => \inst1|Equal4~0_combout\);

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

\inst|bufferout[23]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bufferout[23]~0_combout\ = (\inst1|OUTPUT\(2) & (\inst1|OUTPUT\(1) & !\inst1|OUTPUT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(2),
	datab => \inst1|OUTPUT\(1),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|bufferout[23]~0_combout\);

\inst|bufferout[133]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(133),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(133));

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

\inst2|buffer1[121]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(121) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(133))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(121))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(133),
	datac => \inst2|buffer1\(121),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(121));

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

\inst2|bufferout[121]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(121) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(121))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(121))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(121),
	datac => \inst2|bufferout\(121),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(121));

\inst|Equal32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal32~1_combout\ = (\inst|counter\(4) & (!\inst|counter\(3) & !\inst|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datac => \inst|counter\(3),
	datad => \inst|counter\(0),
	combout => \inst|Equal32~1_combout\);

\inst|Equal41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~0_combout\ = (\inst|buffer1\(108) & (\inst|buffer1\(120) & (\inst|buffer1\(109) $ (!\inst|buffer1\(121))))) # (!\inst|buffer1\(108) & (!\inst|buffer1\(120) & (\inst|buffer1\(109) $ (!\inst|buffer1\(121)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(108),
	datab => \inst|buffer1\(109),
	datac => \inst|buffer1\(121),
	datad => \inst|buffer1\(120),
	combout => \inst|Equal41~0_combout\);

\ADC_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(2),
	o => \ADC_IN[2]~input_o\);

\inst|buffer1~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~173_combout\ = (\ADC_IN[2]~input_o\ & (\inst|buffer1[135]~169_combout\ & (!\inst1|OUTPUT\(3) & !\inst1|OUTPUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[2]~input_o\,
	datab => \inst|buffer1[135]~169_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1~173_combout\);

\inst|buffer1[134]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~173_combout\,
	ena => \inst|buffer1[135]~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(134));

\inst|bufferout[134]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(134),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(134));

\inst2|buffer1[122]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(122) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(134))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(122))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(134),
	datac => \inst2|buffer1\(122),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(122));

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

\inst|buffer1~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~203_combout\ = (!\inst|buffer1[120]~198_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(122))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(122),
	datab => \ADC_IN[2]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[120]~198_combout\,
	combout => \inst|buffer1~203_combout\);

\inst|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal8~0_combout\ = (\inst|counter\(2) & !\inst|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datad => \inst|counter\(1),
	combout => \inst|Equal8~0_combout\);

\inst|buffer1[120]~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[120]~200_combout\ = (!\inst1|OUTPUT\(3) & (((!\inst|Equal41~7_combout\) # (!\inst|Equal32~1_combout\)) # (!\inst|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal8~0_combout\,
	datab => \inst|Equal32~1_combout\,
	datac => \inst|Equal41~7_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1[120]~200_combout\);

\ADC_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(3),
	o => \ADC_IN[3]~input_o\);

\inst|buffer1~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~174_combout\ = (\ADC_IN[3]~input_o\ & (\inst|buffer1[135]~169_combout\ & (!\inst1|OUTPUT\(3) & !\inst1|OUTPUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[3]~input_o\,
	datab => \inst|buffer1[135]~169_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1~174_combout\);

\inst|buffer1[135]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~174_combout\,
	ena => \inst|buffer1[135]~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(135));

\inst|bufferout[135]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(135),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(135));

\inst2|buffer1[123]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(123) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(135))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(123))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(135),
	datac => \inst2|buffer1\(123),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(123));

\inst2|bufferout[123]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(123) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(123))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(123))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(123),
	datac => \inst2|bufferout\(123),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(123));

\inst|buffer1~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~204_combout\ = (!\inst|buffer1[120]~198_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(123))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(123),
	datab => \ADC_IN[3]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[120]~198_combout\,
	combout => \inst|buffer1~204_combout\);

\inst|buffer1[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~204_combout\,
	ena => \inst|buffer1[120]~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(123));

\inst|Equal39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal39~0_combout\ = (!\inst|buffer1\(120) & (!\inst|buffer1\(121) & (!\inst|buffer1\(122) & !\inst|buffer1\(123))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(120),
	datab => \inst|buffer1\(121),
	datac => \inst|buffer1\(122),
	datad => \inst|buffer1\(123),
	combout => \inst|Equal39~0_combout\);

\ADC_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(4),
	o => \ADC_IN[4]~input_o\);

\inst|buffer1~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~175_combout\ = (\ADC_IN[4]~input_o\ & (\inst|buffer1[135]~169_combout\ & (!\inst1|OUTPUT\(3) & !\inst1|OUTPUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[4]~input_o\,
	datab => \inst|buffer1[135]~169_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1~175_combout\);

\inst|buffer1[136]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~175_combout\,
	ena => \inst|buffer1[135]~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(136));

\inst|bufferout[136]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(136),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(136));

\inst2|buffer1[124]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(124) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(136))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(124))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(136),
	datac => \inst2|buffer1\(124),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(124));

\inst2|bufferout[124]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(124) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(124))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(124))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(124),
	datac => \inst2|bufferout\(124),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(124));

\inst|buffer1~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~205_combout\ = (!\inst|buffer1[120]~198_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(124))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(124),
	datab => \ADC_IN[4]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[120]~198_combout\,
	combout => \inst|buffer1~205_combout\);

\inst|buffer1[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~205_combout\,
	ena => \inst|buffer1[120]~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(124));

\ADC_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(5),
	o => \ADC_IN[5]~input_o\);

\inst|buffer1~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~176_combout\ = (\ADC_IN[5]~input_o\ & (\inst|buffer1[135]~169_combout\ & (!\inst1|OUTPUT\(3) & !\inst1|OUTPUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[5]~input_o\,
	datab => \inst|buffer1[135]~169_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1~176_combout\);

\inst|buffer1[137]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~176_combout\,
	ena => \inst|buffer1[135]~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(137));

\inst|bufferout[137]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(137),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(137));

\inst2|buffer1[125]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(125) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(137))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(125))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(137),
	datac => \inst2|buffer1\(125),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(125));

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

\inst|buffer1~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~206_combout\ = (!\inst|buffer1[120]~198_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(125))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(125),
	datab => \ADC_IN[5]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[120]~198_combout\,
	combout => \inst|buffer1~206_combout\);

\inst|buffer1[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~206_combout\,
	ena => \inst|buffer1[120]~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(125));

\ADC_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(6),
	o => \ADC_IN[6]~input_o\);

\inst|buffer1~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~177_combout\ = (\ADC_IN[6]~input_o\ & (\inst|buffer1[135]~169_combout\ & (!\inst1|OUTPUT\(3) & !\inst1|OUTPUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[6]~input_o\,
	datab => \inst|buffer1[135]~169_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1~177_combout\);

\inst|buffer1[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~177_combout\,
	ena => \inst|buffer1[135]~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(138));

\inst|bufferout[138]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(138),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(138));

\inst2|buffer1[126]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(126) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(138))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(138),
	datac => \inst2|buffer1\(126),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(126));

\inst2|bufferout[126]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(126) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(126))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(126))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(126),
	datac => \inst2|bufferout\(126),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(126));

\inst|buffer1~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~207_combout\ = (!\inst|buffer1[120]~198_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(126))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(126),
	datab => \ADC_IN[6]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[120]~198_combout\,
	combout => \inst|buffer1~207_combout\);

\inst|buffer1[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~207_combout\,
	ena => \inst|buffer1[120]~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(126));

\ADC_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(7),
	o => \ADC_IN[7]~input_o\);

\inst|buffer1~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~178_combout\ = (\ADC_IN[7]~input_o\ & (\inst|buffer1[135]~169_combout\ & (!\inst1|OUTPUT\(3) & !\inst1|OUTPUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[7]~input_o\,
	datab => \inst|buffer1[135]~169_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1~178_combout\);

\inst|buffer1[139]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~178_combout\,
	ena => \inst|buffer1[135]~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(139));

\inst|bufferout[139]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(139),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(139));

\inst2|buffer1[127]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(127) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(139))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(127))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(139),
	datac => \inst2|buffer1\(127),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(127));

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

\inst|buffer1~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~208_combout\ = (!\inst|buffer1[120]~198_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(127))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(127),
	datab => \ADC_IN[7]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[120]~198_combout\,
	combout => \inst|buffer1~208_combout\);

\inst|buffer1[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~208_combout\,
	ena => \inst|buffer1[120]~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(127));

\inst|Equal39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal39~1_combout\ = (!\inst|buffer1\(124) & (!\inst|buffer1\(125) & (!\inst|buffer1\(126) & !\inst|buffer1\(127))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(124),
	datab => \inst|buffer1\(125),
	datac => \inst|buffer1\(126),
	datad => \inst|buffer1\(127),
	combout => \inst|Equal39~1_combout\);

\ADC_IN[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(8),
	o => \ADC_IN[8]~input_o\);

\inst|buffer1~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~179_combout\ = (\ADC_IN[8]~input_o\ & (\inst|buffer1[135]~169_combout\ & (!\inst1|OUTPUT\(3) & !\inst1|OUTPUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datab => \inst|buffer1[135]~169_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1~179_combout\);

\inst|buffer1[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~179_combout\,
	ena => \inst|buffer1[135]~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(140));

\inst|bufferout[140]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(140),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(140));

\inst2|buffer1[128]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(128) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(140))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(128))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(140),
	datac => \inst2|buffer1\(128),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(128));

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

\inst|buffer1~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~209_combout\ = (!\inst|buffer1[120]~198_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(128))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(128),
	datab => \ADC_IN[8]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[120]~198_combout\,
	combout => \inst|buffer1~209_combout\);

\inst|buffer1[128]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~209_combout\,
	ena => \inst|buffer1[120]~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(128));

\ADC_IN[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(9),
	o => \ADC_IN[9]~input_o\);

\inst|buffer1~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~180_combout\ = (\ADC_IN[9]~input_o\ & (\inst|buffer1[135]~169_combout\ & (!\inst1|OUTPUT\(3) & !\inst1|OUTPUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[9]~input_o\,
	datab => \inst|buffer1[135]~169_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1~180_combout\);

\inst|buffer1[141]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~180_combout\,
	ena => \inst|buffer1[135]~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(141));

\inst|bufferout[141]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(141),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(141));

\inst2|buffer1[129]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(129) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(141))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(129))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(141),
	datac => \inst2|buffer1\(129),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(129));

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

\inst|buffer1~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~210_combout\ = (!\inst|buffer1[120]~198_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(129))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(129),
	datab => \ADC_IN[9]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[120]~198_combout\,
	combout => \inst|buffer1~210_combout\);

\inst|buffer1[129]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~210_combout\,
	ena => \inst|buffer1[120]~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(129));

\ADC_IN[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(10),
	o => \ADC_IN[10]~input_o\);

\inst|buffer1~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~181_combout\ = (\ADC_IN[10]~input_o\ & (\inst|buffer1[135]~169_combout\ & (!\inst1|OUTPUT\(3) & !\inst1|OUTPUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[10]~input_o\,
	datab => \inst|buffer1[135]~169_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1~181_combout\);

\inst|buffer1[142]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~181_combout\,
	ena => \inst|buffer1[135]~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(142));

\inst|bufferout[142]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(142),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(142));

\inst2|buffer1[130]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(130) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(142))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(130))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(142),
	datac => \inst2|buffer1\(130),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(130));

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

\inst|buffer1~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~211_combout\ = (!\inst|buffer1[120]~198_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(130))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(130),
	datab => \ADC_IN[10]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[120]~198_combout\,
	combout => \inst|buffer1~211_combout\);

\inst|buffer1[130]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~211_combout\,
	ena => \inst|buffer1[120]~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(130));

\inst|Equal39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal39~2_combout\ = (!\inst|buffer1\(128) & (!\inst|buffer1\(129) & (!\inst|buffer1\(130) & !\inst|buffer1\(131))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(128),
	datab => \inst|buffer1\(129),
	datac => \inst|buffer1\(130),
	datad => \inst|buffer1\(131),
	combout => \inst|Equal39~2_combout\);

\inst|Equal39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal39~3_combout\ = (\inst|Equal39~0_combout\ & (\inst|Equal39~1_combout\ & \inst|Equal39~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal39~0_combout\,
	datab => \inst|Equal39~1_combout\,
	datac => \inst|Equal39~2_combout\,
	combout => \inst|Equal39~3_combout\);

\inst|buffer1~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~168_combout\ = (\inst|counter\(4) & (\inst|Equal46~0_combout\ & (\inst|Equal39~3_combout\ & !\inst|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|Equal46~0_combout\,
	datac => \inst|Equal39~3_combout\,
	datad => \inst|counter\(2),
	combout => \inst|buffer1~168_combout\);

\inst|buffer1[120]~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[120]~201_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & ((\inst|buffer1~168_combout\) # (!\inst|buffer1[120]~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[120]~200_combout\,
	datab => \inst|buffer1~168_combout\,
	datac => \inst1|OUTPUT\(1),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[120]~201_combout\);

\inst|buffer1[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~203_combout\,
	ena => \inst|buffer1[120]~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(122));

\inst|bufferout[122]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(122),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(122));

\inst2|buffer1[110]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(110) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(122))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(110))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(122),
	datac => \inst2|buffer1\(110),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(110));

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

\inst|bufferout[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(108),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(108));

\inst2|buffer1[96]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(96) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(108))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(96))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(108),
	datac => \inst2|buffer1\(96),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(96));

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

\inst|Equal32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal32~0_combout\ = (\inst|counter\(4) & (\inst|Equal16~0_combout\ & (!\inst|counter\(3) & !\inst|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|Equal16~0_combout\,
	datac => \inst|counter\(3),
	datad => \inst|counter\(0),
	combout => \inst|Equal32~0_combout\);

\inst|bufferout[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(96),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(96));

\inst2|buffer1[84]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(84) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(96))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(84))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(96),
	datac => \inst2|buffer1\(84),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(84));

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

\inst|bufferout[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(84),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(84));

\inst2|buffer1[72]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(72) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(84))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(72))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(84),
	datac => \inst2|buffer1\(72),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(72));

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

\inst|bufferout[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(72),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(72));

\inst2|buffer1[60]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(60) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(72))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(72),
	datac => \inst2|buffer1\(60),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(60));

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

\inst|bufferout[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(60),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(60));

\inst2|buffer1[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(48) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(60))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(60),
	datac => \inst2|buffer1\(48),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(48));

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

\inst|Equal16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal16~1_combout\ = (\inst|counter\(3) & (\inst|Equal16~0_combout\ & (!\inst|counter\(4) & !\inst|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datab => \inst|Equal16~0_combout\,
	datac => \inst|counter\(4),
	datad => \inst|counter\(0),
	combout => \inst|Equal16~1_combout\);

\inst|bufferout[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(48),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(48));

\inst2|buffer1[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(36) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(48))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(48),
	datac => \inst2|buffer1\(36),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(36));

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

\inst|Equal12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal12~4_combout\ = (\inst|counter\(2) & \inst|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	combout => \inst|Equal12~4_combout\);

\inst|Equal12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal12~5_combout\ = (!\inst|counter\(4) & (!\inst|counter\(3) & (!\inst|counter\(0) & \inst|Equal12~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|counter\(3),
	datac => \inst|counter\(0),
	datad => \inst|Equal12~4_combout\,
	combout => \inst|Equal12~5_combout\);

\inst|bufferout[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(36),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(36));

\inst2|buffer1[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(24) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(36))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(36),
	datac => \inst2|buffer1\(24),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(24));

\inst2|bufferout[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(24) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(24))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(24),
	datac => \inst2|bufferout\(24),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(24));

\inst|bufferout[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(24),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(24));

\inst2|buffer1[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(12) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(24))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(24),
	datac => \inst2|buffer1\(12),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(12));

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

\inst|buffer1[23]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[23]~35_combout\ = (\inst1|OUTPUT\(0)) # ((\inst|buffer1[23]~214_combout\ & !\inst1|OUTPUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst|buffer1[23]~214_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1[23]~35_combout\);

\inst|buffer1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~51_combout\ = (!\inst|buffer1[23]~35_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(12))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(12),
	datab => \ADC_IN[0]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[23]~35_combout\,
	combout => \inst|buffer1~51_combout\);

\inst|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~1_combout\ = (\inst|counter\(1) & !\inst|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datad => \inst|counter\(2),
	combout => \inst|Equal4~1_combout\);

\inst|buffer1[23]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[23]~37_combout\ = (!\inst1|OUTPUT\(3) & (((!\inst|Equal5~7_combout\) # (!\inst|Equal4~1_combout\)) # (!\inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~0_combout\,
	datab => \inst|Equal4~1_combout\,
	datac => \inst|Equal5~7_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1[23]~37_combout\);

\inst|buffer1[23]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[23]~40_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & ((\inst|buffer1~39_combout\) # (!\inst|buffer1[23]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[23]~37_combout\,
	datab => \inst|buffer1~39_combout\,
	datac => \inst1|OUTPUT\(1),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[23]~40_combout\);

\inst|buffer1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~51_combout\,
	ena => \inst|buffer1[23]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(12));

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

\inst|bufferout[123]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(123),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(123));

\inst2|buffer1[111]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(111) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(123))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(111))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(123),
	datac => \inst2|buffer1\(111),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(111));

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

\inst|buffer1~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~189_combout\ = (!\inst|buffer1[117]~183_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(111))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(111),
	datab => \ADC_IN[3]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[117]~183_combout\,
	combout => \inst|buffer1~189_combout\);

\inst|buffer1[117]~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[117]~185_combout\ = (!\inst1|OUTPUT\(0) & ((!\inst1|OUTPUT\(1)) # (!\inst|buffer1~167_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst|buffer1~167_combout\,
	datac => \inst1|OUTPUT\(1),
	combout => \inst|buffer1[117]~185_combout\);

\inst|buffer1[117]~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[117]~186_combout\ = ((\inst1|OUTPUT\(1) & ((\inst1|OUTPUT\(3)) # (\inst|buffer1[117]~223_combout\)))) # (!\inst|buffer1[117]~185_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst|buffer1[117]~223_combout\,
	datac => \inst1|OUTPUT\(1),
	datad => \inst|buffer1[117]~185_combout\,
	combout => \inst|buffer1[117]~186_combout\);

\inst|buffer1[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~189_combout\,
	ena => \inst|buffer1[117]~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(111));

\inst|bufferout[111]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(111),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(111));

\inst2|buffer1[99]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(99) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(111))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(99))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(111),
	datac => \inst2|buffer1\(99),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(99));

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

\inst|buffer1~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~161_combout\ = (!\inst|buffer1[107]~150_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(99))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(99),
	datab => \ADC_IN[3]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[107]~150_combout\,
	combout => \inst|buffer1~161_combout\);

\inst|buffer1[107]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[107]~152_combout\ = (!\inst1|OUTPUT\(3) & ((!\inst|Equal33~7_combout\) # (!\inst|Equal32~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal32~0_combout\,
	datac => \inst|Equal33~7_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1[107]~152_combout\);

\inst|buffer1[107]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[107]~153_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & ((\inst|buffer1~221_combout\) # (!\inst|buffer1[107]~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[107]~152_combout\,
	datab => \inst|buffer1~221_combout\,
	datac => \inst1|OUTPUT\(1),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[107]~153_combout\);

\inst|buffer1[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~161_combout\,
	ena => \inst|buffer1[107]~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(99));

\inst|bufferout[99]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(99),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(99));

\inst2|buffer1[87]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(87) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(99))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(87))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(99),
	datac => \inst2|buffer1\(87),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(87));

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

\inst|buffer1~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~146_combout\ = (!\inst|buffer1[84]~135_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(87))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(87),
	datab => \ADC_IN[3]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[84]~135_combout\,
	combout => \inst|buffer1~146_combout\);

\inst|buffer1[84]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[84]~137_combout\ = (!\inst1|OUTPUT\(3) & (((!\inst|Equal29~7_combout\) # (!\inst|Equal16~2_combout\)) # (!\inst|Equal12~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal12~4_combout\,
	datab => \inst|Equal16~2_combout\,
	datac => \inst|Equal29~7_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1[84]~137_combout\);

\inst|buffer1~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~104_combout\ = (\inst|counter\(3) & (\inst|counter\(0) & !\inst|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datab => \inst|counter\(0),
	datad => \inst|counter\(4),
	combout => \inst|buffer1~104_combout\);

\inst|bufferout[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(110),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(110));

\inst2|buffer1[98]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(98) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(110))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(98))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(110),
	datac => \inst2|buffer1\(98),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(98));

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

\inst|buffer1~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~162_combout\ = (!\inst|buffer1[107]~150_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(98))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(98),
	datab => \ADC_IN[2]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[107]~150_combout\,
	combout => \inst|buffer1~162_combout\);

\inst|buffer1[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~162_combout\,
	ena => \inst|buffer1[107]~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(98));

\inst|bufferout[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(98),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(98));

\inst2|buffer1[86]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(86) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(98))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(86))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(98),
	datac => \inst2|buffer1\(86),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(86));

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

\inst|buffer1~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~147_combout\ = (!\inst|buffer1[84]~135_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(86))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(86),
	datab => \ADC_IN[2]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[84]~135_combout\,
	combout => \inst|buffer1~147_combout\);

\inst|buffer1[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~147_combout\,
	ena => \inst|buffer1[84]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(86));

\inst|Equal27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal27~0_combout\ = (!\inst|buffer1\(87) & (!\inst|buffer1\(86) & (!\inst|buffer1\(85) & !\inst|buffer1\(84))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(87),
	datab => \inst|buffer1\(86),
	datac => \inst|buffer1\(85),
	datad => \inst|buffer1\(84),
	combout => \inst|Equal27~0_combout\);

\inst|bufferout[127]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(127),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(127));

\inst2|buffer1[115]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(115) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(127))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(115))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(127),
	datac => \inst2|buffer1\(115),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(115));

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

\inst|buffer1~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~193_combout\ = (!\inst|buffer1[117]~183_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(115))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(115),
	datab => \ADC_IN[7]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[117]~183_combout\,
	combout => \inst|buffer1~193_combout\);

\inst|buffer1[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~193_combout\,
	ena => \inst|buffer1[117]~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(115));

\inst|bufferout[115]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(115),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(115));

\inst2|buffer1[103]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(103) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(115))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(103))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(115),
	datac => \inst2|buffer1\(103),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(103));

\inst2|bufferout[103]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(103) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(103))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(103))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(103),
	datac => \inst2|bufferout\(103),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(103));

\inst|buffer1~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~157_combout\ = (!\inst|buffer1[107]~150_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(103))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(103),
	datab => \ADC_IN[7]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[107]~150_combout\,
	combout => \inst|buffer1~157_combout\);

\inst|buffer1[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~157_combout\,
	ena => \inst|buffer1[107]~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(103));

\inst|bufferout[103]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(103),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(103));

\inst2|buffer1[91]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(91) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(103))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(91))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(103),
	datac => \inst2|buffer1\(91),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(91));

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

\inst|buffer1~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~142_combout\ = (!\inst|buffer1[84]~135_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(91))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(91),
	datab => \ADC_IN[7]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[84]~135_combout\,
	combout => \inst|buffer1~142_combout\);

\inst|buffer1[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~142_combout\,
	ena => \inst|buffer1[84]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(91));

\inst|bufferout[126]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(126),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(126));

\inst2|buffer1[114]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(114) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(126))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(114))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(126),
	datac => \inst2|buffer1\(114),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(114));

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

\inst|buffer1~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~192_combout\ = (!\inst|buffer1[117]~183_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(114))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(114),
	datab => \ADC_IN[6]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[117]~183_combout\,
	combout => \inst|buffer1~192_combout\);

\inst|buffer1[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~192_combout\,
	ena => \inst|buffer1[117]~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(114));

\inst|bufferout[114]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(114),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(114));

\inst2|buffer1[102]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(102) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(114))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(102))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(114),
	datac => \inst2|buffer1\(102),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(102));

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

\inst|buffer1~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~158_combout\ = (!\inst|buffer1[107]~150_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(102))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(102),
	datab => \ADC_IN[6]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[107]~150_combout\,
	combout => \inst|buffer1~158_combout\);

\inst|buffer1[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~158_combout\,
	ena => \inst|buffer1[107]~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(102));

\inst|bufferout[102]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(102),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(102));

\inst2|buffer1[90]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(90) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(102))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(90))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(102),
	datac => \inst2|buffer1\(90),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(90));

\inst2|bufferout[90]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(90) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(90))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(90))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(90),
	datac => \inst2|bufferout\(90),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(90));

\inst|buffer1~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~143_combout\ = (!\inst|buffer1[84]~135_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(90))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(90),
	datab => \ADC_IN[6]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[84]~135_combout\,
	combout => \inst|buffer1~143_combout\);

\inst|buffer1[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~143_combout\,
	ena => \inst|buffer1[84]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(90));

\inst|bufferout[125]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(125),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(125));

\inst2|buffer1[113]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(113) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(125))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(113))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(125),
	datac => \inst2|buffer1\(113),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(113));

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

\inst|buffer1~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~191_combout\ = (!\inst|buffer1[117]~183_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(113))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(113),
	datab => \ADC_IN[5]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[117]~183_combout\,
	combout => \inst|buffer1~191_combout\);

\inst|buffer1[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~191_combout\,
	ena => \inst|buffer1[117]~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(113));

\inst|bufferout[113]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(113),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(113));

\inst2|buffer1[101]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(101) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(113))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(113),
	datac => \inst2|buffer1\(101),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(101));

\inst2|bufferout[101]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(101) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(101))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(101))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(101),
	datac => \inst2|bufferout\(101),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(101));

\inst|buffer1~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~159_combout\ = (!\inst|buffer1[107]~150_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(101))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(101),
	datab => \ADC_IN[5]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[107]~150_combout\,
	combout => \inst|buffer1~159_combout\);

\inst|buffer1[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~159_combout\,
	ena => \inst|buffer1[107]~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(101));

\inst|bufferout[101]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(101),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(101));

\inst2|buffer1[89]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(89) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(101))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(89))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(101),
	datac => \inst2|buffer1\(89),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(89));

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

\inst|buffer1~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~144_combout\ = (!\inst|buffer1[84]~135_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(89))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(89),
	datab => \ADC_IN[5]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[84]~135_combout\,
	combout => \inst|buffer1~144_combout\);

\inst|buffer1[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~144_combout\,
	ena => \inst|buffer1[84]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(89));

\inst|bufferout[124]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(124),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(124));

\inst2|buffer1[112]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(112) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(124))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(112))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(124),
	datac => \inst2|buffer1\(112),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(112));

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

\inst|buffer1~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~190_combout\ = (!\inst|buffer1[117]~183_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(112))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(112),
	datab => \ADC_IN[4]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[117]~183_combout\,
	combout => \inst|buffer1~190_combout\);

\inst|buffer1[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~190_combout\,
	ena => \inst|buffer1[117]~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(112));

\inst|bufferout[112]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(112),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(112));

\inst2|buffer1[100]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(100) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(112))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(100))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(112),
	datac => \inst2|buffer1\(100),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(100));

\inst2|bufferout[100]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(100) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(100))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(100))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(100),
	datac => \inst2|bufferout\(100),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(100));

\inst|buffer1~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~160_combout\ = (!\inst|buffer1[107]~150_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(100))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(100),
	datab => \ADC_IN[4]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[107]~150_combout\,
	combout => \inst|buffer1~160_combout\);

\inst|buffer1[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~160_combout\,
	ena => \inst|buffer1[107]~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(100));

\inst|bufferout[100]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(100),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(100));

\inst2|buffer1[88]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(88) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(100))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(88))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(100),
	datac => \inst2|buffer1\(88),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(88));

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

\inst|buffer1~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~145_combout\ = (!\inst|buffer1[84]~135_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(88))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(88),
	datab => \ADC_IN[4]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[84]~135_combout\,
	combout => \inst|buffer1~145_combout\);

\inst|buffer1[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~145_combout\,
	ena => \inst|buffer1[84]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(88));

\inst|Equal27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal27~1_combout\ = (!\inst|buffer1\(91) & (!\inst|buffer1\(90) & (!\inst|buffer1\(89) & !\inst|buffer1\(88))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(91),
	datab => \inst|buffer1\(90),
	datac => \inst|buffer1\(89),
	datad => \inst|buffer1\(88),
	combout => \inst|Equal27~1_combout\);

\inst|bufferout[130]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(130),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(130));

\inst2|buffer1[118]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(118) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(130))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(118))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(130),
	datac => \inst2|buffer1\(118),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(118));

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

\inst|buffer1~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~196_combout\ = (!\inst|buffer1[117]~183_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(118))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(118),
	datab => \ADC_IN[10]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[117]~183_combout\,
	combout => \inst|buffer1~196_combout\);

\inst|buffer1[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~196_combout\,
	ena => \inst|buffer1[117]~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(118));

\inst|bufferout[118]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(118),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(118));

\inst2|buffer1[106]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(106) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(118))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(118),
	datac => \inst2|buffer1\(106),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(106));

\inst2|bufferout[106]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(106) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(106))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(106))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(106),
	datac => \inst2|bufferout\(106),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(106));

\inst|buffer1~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~154_combout\ = (!\inst|buffer1[107]~150_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(106))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(106),
	datab => \ADC_IN[10]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[107]~150_combout\,
	combout => \inst|buffer1~154_combout\);

\inst|buffer1[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~154_combout\,
	ena => \inst|buffer1[107]~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(106));

\inst|bufferout[106]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(106),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(106));

\inst2|buffer1[94]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(94) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(106))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(94))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(106),
	datac => \inst2|buffer1\(94),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(94));

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

\inst|buffer1~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~139_combout\ = (!\inst|buffer1[84]~135_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(94))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(94),
	datab => \ADC_IN[10]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[84]~135_combout\,
	combout => \inst|buffer1~139_combout\);

\inst|buffer1[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~139_combout\,
	ena => \inst|buffer1[84]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(94));

\inst|bufferout[129]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(129),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(129));

\inst2|buffer1[117]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(117) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(129))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(117))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(129),
	datac => \inst2|buffer1\(117),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(117));

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

\inst|buffer1~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~195_combout\ = (!\inst|buffer1[117]~183_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(117))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(117),
	datab => \ADC_IN[9]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[117]~183_combout\,
	combout => \inst|buffer1~195_combout\);

\inst|buffer1[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~195_combout\,
	ena => \inst|buffer1[117]~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(117));

\inst|bufferout[117]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(117),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(117));

\inst2|buffer1[105]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(105) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(117))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(105))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(117),
	datac => \inst2|buffer1\(105),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(105));

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

\inst|buffer1~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~155_combout\ = (!\inst|buffer1[107]~150_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(105))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(105),
	datab => \ADC_IN[9]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[107]~150_combout\,
	combout => \inst|buffer1~155_combout\);

\inst|buffer1[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~155_combout\,
	ena => \inst|buffer1[107]~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(105));

\inst|bufferout[105]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(105),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(105));

\inst2|buffer1[93]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(93) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(105))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(93))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(105),
	datac => \inst2|buffer1\(93),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(93));

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

\inst|buffer1~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~140_combout\ = (!\inst|buffer1[84]~135_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(93))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(93),
	datab => \ADC_IN[9]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[84]~135_combout\,
	combout => \inst|buffer1~140_combout\);

\inst|buffer1[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~140_combout\,
	ena => \inst|buffer1[84]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(93));

\inst|bufferout[128]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(128),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(128));

\inst2|buffer1[116]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(116) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(128))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(116))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(128),
	datac => \inst2|buffer1\(116),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(116));

\inst2|bufferout[116]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(116) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(116))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(116))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(116),
	datac => \inst2|bufferout\(116),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(116));

\inst|buffer1~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~194_combout\ = (!\inst|buffer1[117]~183_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(116))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(116),
	datab => \ADC_IN[8]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[117]~183_combout\,
	combout => \inst|buffer1~194_combout\);

\inst|buffer1[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~194_combout\,
	ena => \inst|buffer1[117]~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(116));

\inst|bufferout[116]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(116),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(116));

\inst2|buffer1[104]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(104) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(116))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(104))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(116),
	datac => \inst2|buffer1\(104),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(104));

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

\inst|buffer1~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~156_combout\ = (!\inst|buffer1[107]~150_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(104))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(104),
	datab => \ADC_IN[8]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[107]~150_combout\,
	combout => \inst|buffer1~156_combout\);

\inst|buffer1[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~156_combout\,
	ena => \inst|buffer1[107]~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(104));

\inst|bufferout[104]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(104),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(104));

\inst2|buffer1[92]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(92) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(104))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(92))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(104),
	datac => \inst2|buffer1\(92),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(92));

\inst2|bufferout[92]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(92) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(92))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(92))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(92),
	datac => \inst2|bufferout\(92),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(92));

\inst|buffer1~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~141_combout\ = (!\inst|buffer1[84]~135_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(92))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(92),
	datab => \ADC_IN[8]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[84]~135_combout\,
	combout => \inst|buffer1~141_combout\);

\inst|buffer1[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~141_combout\,
	ena => \inst|buffer1[84]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(92));

\inst|Equal27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal27~2_combout\ = (!\inst|buffer1\(95) & (!\inst|buffer1\(94) & (!\inst|buffer1\(93) & !\inst|buffer1\(92))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(95),
	datab => \inst|buffer1\(94),
	datac => \inst|buffer1\(93),
	datad => \inst|buffer1\(92),
	combout => \inst|Equal27~2_combout\);

\inst|Equal27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal27~3_combout\ = (\inst|Equal27~0_combout\ & (\inst|Equal27~1_combout\ & \inst|Equal27~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal27~0_combout\,
	datab => \inst|Equal27~1_combout\,
	datac => \inst|Equal27~2_combout\,
	combout => \inst|Equal27~3_combout\);

\inst|buffer1~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~220_combout\ = (\inst|counter\(2) & (!\inst|counter\(1) & (\inst|buffer1~104_combout\ & \inst|Equal27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|buffer1~104_combout\,
	datad => \inst|Equal27~3_combout\,
	combout => \inst|buffer1~220_combout\);

\inst|buffer1[84]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[84]~138_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & ((\inst|buffer1~220_combout\) # (!\inst|buffer1[84]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[84]~137_combout\,
	datab => \inst|buffer1~220_combout\,
	datac => \inst1|OUTPUT\(1),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[84]~138_combout\);

\inst|buffer1[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~146_combout\,
	ena => \inst|buffer1[84]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(87));

\inst|bufferout[87]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(87),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(87));

\inst2|buffer1[75]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(75) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(87))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(75))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(87),
	datac => \inst2|buffer1\(75),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(75));

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

\inst|buffer1~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~131_combout\ = (!\inst|buffer1[72]~118_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(75))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(75),
	datab => \ADC_IN[3]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[72]~118_combout\,
	combout => \inst|buffer1~131_combout\);

\inst|buffer1[72]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[72]~120_combout\ = (!\inst1|OUTPUT\(3) & (((!\inst|Equal25~7_combout\) # (!\inst|Equal16~2_combout\)) # (!\inst|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal8~0_combout\,
	datab => \inst|Equal16~2_combout\,
	datac => \inst|Equal25~7_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1[72]~120_combout\);

\inst|bufferout[91]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(91),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(91));

\inst2|buffer1[79]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(79) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(91))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(79))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(91),
	datac => \inst2|buffer1\(79),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(79));

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

\inst|buffer1~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~127_combout\ = (!\inst|buffer1[72]~118_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(79))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(79),
	datab => \ADC_IN[7]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[72]~118_combout\,
	combout => \inst|buffer1~127_combout\);

\inst|buffer1[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~127_combout\,
	ena => \inst|buffer1[72]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(79));

\inst|bufferout[90]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(90),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(90));

\inst2|buffer1[78]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(78) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(90))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(78))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(90),
	datac => \inst2|buffer1\(78),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(78));

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

\inst|buffer1~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~128_combout\ = (!\inst|buffer1[72]~118_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(78))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(78),
	datab => \ADC_IN[6]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[72]~118_combout\,
	combout => \inst|buffer1~128_combout\);

\inst|buffer1[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~128_combout\,
	ena => \inst|buffer1[72]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(78));

\inst|bufferout[89]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(89),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(89));

\inst2|buffer1[77]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(77) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(89))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(77))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(89),
	datac => \inst2|buffer1\(77),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(77));

\inst2|bufferout[77]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(77) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(77))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(77))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(77),
	datac => \inst2|bufferout\(77),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(77));

\inst|buffer1~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~129_combout\ = (!\inst|buffer1[72]~118_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(77))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(77),
	datab => \ADC_IN[5]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[72]~118_combout\,
	combout => \inst|buffer1~129_combout\);

\inst|buffer1[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~129_combout\,
	ena => \inst|buffer1[72]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(77));

\inst|bufferout[88]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(88),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(88));

\inst2|buffer1[76]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(76) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(88))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(76))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(88),
	datac => \inst2|buffer1\(76),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(76));

\inst2|bufferout[76]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(76) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(76))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(76))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(76),
	datac => \inst2|bufferout\(76),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(76));

\inst|buffer1~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~130_combout\ = (!\inst|buffer1[72]~118_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(76))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(76),
	datab => \ADC_IN[4]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[72]~118_combout\,
	combout => \inst|buffer1~130_combout\);

\inst|buffer1[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~130_combout\,
	ena => \inst|buffer1[72]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(76));

\inst|Equal23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal23~0_combout\ = (!\inst|buffer1\(79) & (!\inst|buffer1\(78) & (!\inst|buffer1\(77) & !\inst|buffer1\(76))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(79),
	datab => \inst|buffer1\(78),
	datac => \inst|buffer1\(77),
	datad => \inst|buffer1\(76),
	combout => \inst|Equal23~0_combout\);

\inst|bufferout[94]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(94),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(94));

\inst2|buffer1[82]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(82) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(94))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(82))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(94),
	datac => \inst2|buffer1\(82),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(82));

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

\inst|buffer1~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~124_combout\ = (!\inst|buffer1[72]~118_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(82))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(82),
	datab => \ADC_IN[10]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[72]~118_combout\,
	combout => \inst|buffer1~124_combout\);

\inst|buffer1[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~124_combout\,
	ena => \inst|buffer1[72]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(82));

\inst|bufferout[93]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(93),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(93));

\inst2|buffer1[81]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(81) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(93))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(81))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(93),
	datac => \inst2|buffer1\(81),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(81));

\inst2|bufferout[81]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(81) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(81))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(81))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(81),
	datac => \inst2|bufferout\(81),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(81));

\inst|buffer1~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~125_combout\ = (!\inst|buffer1[72]~118_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(81))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(81),
	datab => \ADC_IN[9]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[72]~118_combout\,
	combout => \inst|buffer1~125_combout\);

\inst|buffer1[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~125_combout\,
	ena => \inst|buffer1[72]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(81));

\inst|bufferout[92]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(92),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(92));

\inst2|buffer1[80]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(80) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(92))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(80))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(92),
	datac => \inst2|buffer1\(80),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(80));

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

\inst|buffer1~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~126_combout\ = (!\inst|buffer1[72]~118_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(80))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(80),
	datab => \ADC_IN[8]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[72]~118_combout\,
	combout => \inst|buffer1~126_combout\);

\inst|buffer1[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~126_combout\,
	ena => \inst|buffer1[72]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(80));

\inst|Equal23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal23~1_combout\ = (!\inst|buffer1\(83) & (!\inst|buffer1\(82) & (!\inst|buffer1\(81) & !\inst|buffer1\(80))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(83),
	datab => \inst|buffer1\(82),
	datac => \inst|buffer1\(81),
	datad => \inst|buffer1\(80),
	combout => \inst|Equal23~1_combout\);

\inst|bufferout[86]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(86),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(86));

\inst2|buffer1[74]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(74) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(86))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(74))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(86),
	datac => \inst2|buffer1\(74),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(74));

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

\inst|buffer1~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~132_combout\ = (!\inst|buffer1[72]~118_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(74))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(74),
	datab => \ADC_IN[2]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[72]~118_combout\,
	combout => \inst|buffer1~132_combout\);

\inst|buffer1[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~132_combout\,
	ena => \inst|buffer1[72]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(74));

\inst|Equal23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal23~2_combout\ = (!\inst|buffer1\(75) & (!\inst|buffer1\(74) & (!\inst|buffer1\(73) & !\inst|buffer1\(72))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(75),
	datab => \inst|buffer1\(74),
	datac => \inst|buffer1\(73),
	datad => \inst|buffer1\(72),
	combout => \inst|Equal23~2_combout\);

\inst|buffer1~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~121_combout\ = (\inst|counter\(1) & (!\inst|counter\(2) & \inst|Equal23~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(2),
	datac => \inst|Equal23~2_combout\,
	combout => \inst|buffer1~121_combout\);

\inst|buffer1~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~122_combout\ = (\inst|buffer1~104_combout\ & (\inst|Equal23~0_combout\ & (\inst|Equal23~1_combout\ & \inst|buffer1~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~104_combout\,
	datab => \inst|Equal23~0_combout\,
	datac => \inst|Equal23~1_combout\,
	datad => \inst|buffer1~121_combout\,
	combout => \inst|buffer1~122_combout\);

\inst|buffer1[72]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[72]~123_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & ((\inst|buffer1~122_combout\) # (!\inst|buffer1[72]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[72]~120_combout\,
	datab => \inst|buffer1~122_combout\,
	datac => \inst1|OUTPUT\(1),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[72]~123_combout\);

\inst|buffer1[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~131_combout\,
	ena => \inst|buffer1[72]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(75));

\inst|bufferout[75]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(75),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(75));

\inst2|buffer1[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(63) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(75))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(75),
	datac => \inst2|buffer1\(63),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(63));

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

\inst|buffer1~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~114_combout\ = (!\inst|buffer1[60]~102_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(63))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(63),
	datab => \ADC_IN[3]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[60]~102_combout\,
	combout => \inst|buffer1~114_combout\);

\inst|bufferout[74]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(74),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(74));

\inst2|buffer1[62]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(62) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(74))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(62))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(74),
	datac => \inst2|buffer1\(62),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(62));

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

\inst|buffer1~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~115_combout\ = (!\inst|buffer1[60]~102_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(62))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(62),
	datab => \ADC_IN[2]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[60]~102_combout\,
	combout => \inst|buffer1~115_combout\);

\inst|buffer1[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~115_combout\,
	ena => \inst|buffer1[60]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(62));

\inst|Equal19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal19~0_combout\ = (!\inst|buffer1\(63) & (!\inst|buffer1\(62) & (!\inst|buffer1\(61) & !\inst|buffer1\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(63),
	datab => \inst|buffer1\(62),
	datac => \inst|buffer1\(61),
	datad => \inst|buffer1\(60),
	combout => \inst|Equal19~0_combout\);

\inst|bufferout[79]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(79),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(79));

\inst2|buffer1[67]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(67) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(79))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(67))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(79),
	datac => \inst2|buffer1\(67),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(67));

\inst2|bufferout[67]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(67) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(67))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(67))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(67),
	datac => \inst2|bufferout\(67),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(67));

\inst|buffer1~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~110_combout\ = (!\inst|buffer1[60]~102_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(67))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(67),
	datab => \ADC_IN[7]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[60]~102_combout\,
	combout => \inst|buffer1~110_combout\);

\inst|buffer1[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~110_combout\,
	ena => \inst|buffer1[60]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(67));

\inst|bufferout[78]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(78),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(78));

\inst2|buffer1[66]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(66) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(78))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(66))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(78),
	datac => \inst2|buffer1\(66),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(66));

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

\inst|buffer1~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~111_combout\ = (!\inst|buffer1[60]~102_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(66))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(66),
	datab => \ADC_IN[6]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[60]~102_combout\,
	combout => \inst|buffer1~111_combout\);

\inst|buffer1[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~111_combout\,
	ena => \inst|buffer1[60]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(66));

\inst|bufferout[77]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(77),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(77));

\inst2|buffer1[65]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(65) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(77))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(65))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(77),
	datac => \inst2|buffer1\(65),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(65));

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

\inst|buffer1~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~112_combout\ = (!\inst|buffer1[60]~102_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(65))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(65),
	datab => \ADC_IN[5]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[60]~102_combout\,
	combout => \inst|buffer1~112_combout\);

\inst|buffer1[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~112_combout\,
	ena => \inst|buffer1[60]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(65));

\inst|bufferout[76]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(76),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(76));

\inst2|buffer1[64]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(64) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(76))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(64))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(76),
	datac => \inst2|buffer1\(64),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(64));

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

\inst|buffer1~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~113_combout\ = (!\inst|buffer1[60]~102_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(64))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(64),
	datab => \ADC_IN[4]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[60]~102_combout\,
	combout => \inst|buffer1~113_combout\);

\inst|buffer1[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~113_combout\,
	ena => \inst|buffer1[60]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(64));

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

\inst|bufferout[82]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(82),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(82));

\inst2|buffer1[70]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(70) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(82))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(70))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(82),
	datac => \inst2|buffer1\(70),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(70));

\inst2|bufferout[70]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(70) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(70))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(70))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(70),
	datac => \inst2|bufferout\(70),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(70));

\inst|buffer1~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~107_combout\ = (!\inst|buffer1[60]~102_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(70))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(70),
	datab => \ADC_IN[10]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[60]~102_combout\,
	combout => \inst|buffer1~107_combout\);

\inst|buffer1[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~107_combout\,
	ena => \inst|buffer1[60]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(70));

\inst|bufferout[81]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(81),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(81));

\inst2|buffer1[69]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(69) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(81))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(69))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(81),
	datac => \inst2|buffer1\(69),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(69));

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

\inst|buffer1~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~108_combout\ = (!\inst|buffer1[60]~102_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(69))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(69),
	datab => \ADC_IN[9]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[60]~102_combout\,
	combout => \inst|buffer1~108_combout\);

\inst|buffer1[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~108_combout\,
	ena => \inst|buffer1[60]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(69));

\inst|bufferout[80]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(80),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(80));

\inst2|buffer1[68]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(68) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(80))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(68))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(80),
	datac => \inst2|buffer1\(68),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(68));

\inst2|bufferout[68]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(68) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(68))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(68))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(68),
	datac => \inst2|bufferout\(68),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(68));

\inst|buffer1~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~109_combout\ = (!\inst|buffer1[60]~102_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(68))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(68),
	datab => \ADC_IN[8]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[60]~102_combout\,
	combout => \inst|buffer1~109_combout\);

\inst|buffer1[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~109_combout\,
	ena => \inst|buffer1[60]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(68));

\inst|Equal19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal19~2_combout\ = (!\inst|buffer1\(71) & (!\inst|buffer1\(70) & (!\inst|buffer1\(69) & !\inst|buffer1\(68))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(71),
	datab => \inst|buffer1\(70),
	datac => \inst|buffer1\(69),
	datad => \inst|buffer1\(68),
	combout => \inst|Equal19~2_combout\);

\inst|Equal19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal19~3_combout\ = (\inst|Equal19~0_combout\ & (\inst|Equal19~1_combout\ & \inst|Equal19~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal19~0_combout\,
	datab => \inst|Equal19~1_combout\,
	datac => \inst|Equal19~2_combout\,
	combout => \inst|Equal19~3_combout\);

\inst|buffer1~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~217_combout\ = (!\inst|counter\(2) & (!\inst|counter\(1) & (\inst|buffer1~104_combout\ & \inst|Equal19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|buffer1~104_combout\,
	datad => \inst|Equal19~3_combout\,
	combout => \inst|buffer1~217_combout\);

\inst|buffer1[60]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[60]~105_combout\ = (!\inst1|OUTPUT\(0) & ((!\inst1|OUTPUT\(1)) # (!\inst|buffer1~217_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst|buffer1~217_combout\,
	datac => \inst1|OUTPUT\(1),
	combout => \inst|buffer1[60]~105_combout\);

\inst|buffer1[60]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[60]~106_combout\ = ((\inst1|OUTPUT\(1) & ((\inst1|OUTPUT\(3)) # (\inst|buffer1[60]~216_combout\)))) # (!\inst|buffer1[60]~105_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst|buffer1[60]~216_combout\,
	datac => \inst1|OUTPUT\(1),
	datad => \inst|buffer1[60]~105_combout\,
	combout => \inst|buffer1[60]~106_combout\);

\inst|buffer1[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~114_combout\,
	ena => \inst|buffer1[60]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(63));

\inst|bufferout[63]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(63),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(63));

\inst2|buffer1[51]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(51) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(63))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(63),
	datac => \inst2|buffer1\(51),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(51));

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

\inst|buffer1~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~98_combout\ = (!\inst|buffer1[59]~86_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(51))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(51),
	datab => \ADC_IN[3]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[59]~86_combout\,
	combout => \inst|buffer1~98_combout\);

\inst|bufferout[62]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(62),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(62));

\inst2|buffer1[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(50) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(62))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(62),
	datac => \inst2|buffer1\(50),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(50));

\inst2|bufferout[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(50) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(50))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(50),
	datac => \inst2|bufferout\(50),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(50));

\inst|buffer1~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~99_combout\ = (!\inst|buffer1[59]~86_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(50))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(50),
	datab => \ADC_IN[2]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[59]~86_combout\,
	combout => \inst|buffer1~99_combout\);

\inst|buffer1[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~99_combout\,
	ena => \inst|buffer1[59]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(50));

\inst|Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal15~0_combout\ = (!\inst|buffer1\(51) & (!\inst|buffer1\(50) & (!\inst|buffer1\(49) & !\inst|buffer1\(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(51),
	datab => \inst|buffer1\(50),
	datac => \inst|buffer1\(49),
	datad => \inst|buffer1\(48),
	combout => \inst|Equal15~0_combout\);

\inst|bufferout[67]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(67),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(67));

\inst2|buffer1[55]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(55) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(67))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(55))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(67),
	datac => \inst2|buffer1\(55),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(55));

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

\inst|buffer1~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~94_combout\ = (!\inst|buffer1[59]~86_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(55))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(55),
	datab => \ADC_IN[7]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[59]~86_combout\,
	combout => \inst|buffer1~94_combout\);

\inst|buffer1[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~94_combout\,
	ena => \inst|buffer1[59]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(55));

\inst|bufferout[66]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(66),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(66));

\inst2|buffer1[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(54) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(66))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(66),
	datac => \inst2|buffer1\(54),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(54));

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

\inst|buffer1~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~95_combout\ = (!\inst|buffer1[59]~86_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(54))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(54),
	datab => \ADC_IN[6]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[59]~86_combout\,
	combout => \inst|buffer1~95_combout\);

\inst|buffer1[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~95_combout\,
	ena => \inst|buffer1[59]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(54));

\inst|bufferout[65]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(65),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(65));

\inst2|buffer1[53]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(53) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(65))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(53))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(65),
	datac => \inst2|buffer1\(53),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(53));

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

\inst|buffer1~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~96_combout\ = (!\inst|buffer1[59]~86_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(53))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(53),
	datab => \ADC_IN[5]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[59]~86_combout\,
	combout => \inst|buffer1~96_combout\);

\inst|buffer1[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~96_combout\,
	ena => \inst|buffer1[59]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(53));

\inst|bufferout[64]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(64),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(64));

\inst2|buffer1[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(52) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(64))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(64),
	datac => \inst2|buffer1\(52),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(52));

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

\inst|buffer1~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~97_combout\ = (!\inst|buffer1[59]~86_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(52))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(52),
	datab => \ADC_IN[4]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[59]~86_combout\,
	combout => \inst|buffer1~97_combout\);

\inst|buffer1[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~97_combout\,
	ena => \inst|buffer1[59]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(52));

\inst|Equal15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal15~1_combout\ = (!\inst|buffer1\(55) & (!\inst|buffer1\(54) & (!\inst|buffer1\(53) & !\inst|buffer1\(52))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(55),
	datab => \inst|buffer1\(54),
	datac => \inst|buffer1\(53),
	datad => \inst|buffer1\(52),
	combout => \inst|Equal15~1_combout\);

\inst|bufferout[70]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(70),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(70));

\inst2|buffer1[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(58) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(70))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(70),
	datac => \inst2|buffer1\(58),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(58));

\inst2|bufferout[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(58) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(58))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(58))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(58),
	datac => \inst2|bufferout\(58),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(58));

\inst|buffer1~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~91_combout\ = (!\inst|buffer1[59]~86_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(58))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(58),
	datab => \ADC_IN[10]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[59]~86_combout\,
	combout => \inst|buffer1~91_combout\);

\inst|buffer1[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~91_combout\,
	ena => \inst|buffer1[59]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(58));

\inst|bufferout[69]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(69),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(69));

\inst2|buffer1[57]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(57) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(69))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(69),
	datac => \inst2|buffer1\(57),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(57));

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

\inst|buffer1~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~92_combout\ = (!\inst|buffer1[59]~86_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(57))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(57),
	datab => \ADC_IN[9]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[59]~86_combout\,
	combout => \inst|buffer1~92_combout\);

\inst|buffer1[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~92_combout\,
	ena => \inst|buffer1[59]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(57));

\inst|bufferout[68]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(68),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(68));

\inst2|buffer1[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(56) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(68))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(68),
	datac => \inst2|buffer1\(56),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(56));

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

\inst|buffer1~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~93_combout\ = (!\inst|buffer1[59]~86_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(56))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(56),
	datab => \ADC_IN[8]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[59]~86_combout\,
	combout => \inst|buffer1~93_combout\);

\inst|buffer1[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~93_combout\,
	ena => \inst|buffer1[59]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(56));

\inst|Equal15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal15~2_combout\ = (!\inst|buffer1\(59) & (!\inst|buffer1\(58) & (!\inst|buffer1\(57) & !\inst|buffer1\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(59),
	datab => \inst|buffer1\(58),
	datac => \inst|buffer1\(57),
	datad => \inst|buffer1\(56),
	combout => \inst|Equal15~2_combout\);

\inst|Equal15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal15~3_combout\ = (\inst|Equal15~0_combout\ & (\inst|Equal15~1_combout\ & \inst|Equal15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal15~0_combout\,
	datab => \inst|Equal15~1_combout\,
	datac => \inst|Equal15~2_combout\,
	combout => \inst|Equal15~3_combout\);

\inst|buffer1~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~88_combout\ = (\inst|counter\(2) & (\inst|Equal46~0_combout\ & (\inst|Equal15~3_combout\ & !\inst|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|Equal46~0_combout\,
	datac => \inst|Equal15~3_combout\,
	datad => \inst|counter\(4),
	combout => \inst|buffer1~88_combout\);

\inst|bufferout[57]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(57),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(57));

\inst2|buffer1[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(45) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(57))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(57),
	datac => \inst2|buffer1\(45),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(45));

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

\inst|buffer1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~75_combout\ = (!\inst|buffer1[36]~69_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(45))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(45),
	datab => \ADC_IN[9]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[36]~69_combout\,
	combout => \inst|buffer1~75_combout\);

\inst|bufferout[50]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(50),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(50));

\inst2|buffer1[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(38) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(50))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(50),
	datac => \inst2|buffer1\(38),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(38));

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

\inst|buffer1~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~82_combout\ = (!\inst|buffer1[36]~69_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(38))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(38),
	datab => \ADC_IN[2]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[36]~69_combout\,
	combout => \inst|buffer1~82_combout\);

\inst|buffer1[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~82_combout\,
	ena => \inst|buffer1[36]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(38));

\inst|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal11~0_combout\ = (!\inst|buffer1\(39) & (!\inst|buffer1\(38) & (!\inst|buffer1\(37) & !\inst|buffer1\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(39),
	datab => \inst|buffer1\(38),
	datac => \inst|buffer1\(37),
	datad => \inst|buffer1\(36),
	combout => \inst|Equal11~0_combout\);

\inst|bufferout[55]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(55),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(55));

\inst2|buffer1[43]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(43) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(55))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(55),
	datac => \inst2|buffer1\(43),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(43));

\inst2|bufferout[43]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(43) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(43))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(43),
	datac => \inst2|bufferout\(43),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(43));

\inst|buffer1~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~77_combout\ = (!\inst|buffer1[36]~69_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(43))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(43),
	datab => \ADC_IN[7]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[36]~69_combout\,
	combout => \inst|buffer1~77_combout\);

\inst|buffer1[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~77_combout\,
	ena => \inst|buffer1[36]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(43));

\inst|bufferout[54]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(54),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(54));

\inst2|buffer1[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(42) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(54))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(54),
	datac => \inst2|buffer1\(42),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(42));

\inst2|bufferout[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(42) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(42))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(42),
	datac => \inst2|bufferout\(42),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(42));

\inst|buffer1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~78_combout\ = (!\inst|buffer1[36]~69_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(42))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(42),
	datab => \ADC_IN[6]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[36]~69_combout\,
	combout => \inst|buffer1~78_combout\);

\inst|buffer1[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~78_combout\,
	ena => \inst|buffer1[36]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(42));

\inst|bufferout[53]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(53),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(53));

\inst2|buffer1[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(41) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(53))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(41))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(53),
	datac => \inst2|buffer1\(41),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(41));

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

\inst|buffer1~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~79_combout\ = (!\inst|buffer1[36]~69_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(41))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(41),
	datab => \ADC_IN[5]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[36]~69_combout\,
	combout => \inst|buffer1~79_combout\);

\inst|buffer1[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~79_combout\,
	ena => \inst|buffer1[36]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(41));

\inst|bufferout[52]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(52),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(52));

\inst2|buffer1[40]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(40) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(52))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(52),
	datac => \inst2|buffer1\(40),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(40));

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

\inst|buffer1~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~80_combout\ = (!\inst|buffer1[36]~69_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(40))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(40),
	datab => \ADC_IN[4]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[36]~69_combout\,
	combout => \inst|buffer1~80_combout\);

\inst|buffer1[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~80_combout\,
	ena => \inst|buffer1[36]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(40));

\inst|Equal11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal11~1_combout\ = (!\inst|buffer1\(43) & (!\inst|buffer1\(42) & (!\inst|buffer1\(41) & !\inst|buffer1\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(43),
	datab => \inst|buffer1\(42),
	datac => \inst|buffer1\(41),
	datad => \inst|buffer1\(40),
	combout => \inst|Equal11~1_combout\);

\inst|bufferout[58]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(58),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(58));

\inst2|buffer1[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(46) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(58))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(58),
	datac => \inst2|buffer1\(46),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(46));

\inst2|bufferout[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(46) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(46))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(46),
	datac => \inst2|bufferout\(46),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(46));

\inst|buffer1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~74_combout\ = (!\inst|buffer1[36]~69_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(46))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(46),
	datab => \ADC_IN[10]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[36]~69_combout\,
	combout => \inst|buffer1~74_combout\);

\inst|buffer1[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~74_combout\,
	ena => \inst|buffer1[36]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(46));

\inst|bufferout[56]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(56),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(56));

\inst2|buffer1[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(44) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(56))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(56),
	datac => \inst2|buffer1\(44),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(44));

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

\inst|buffer1~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~76_combout\ = (!\inst|buffer1[36]~69_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(44))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(44),
	datab => \ADC_IN[8]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[36]~69_combout\,
	combout => \inst|buffer1~76_combout\);

\inst|buffer1[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~76_combout\,
	ena => \inst|buffer1[36]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(44));

\inst|Equal11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal11~2_combout\ = (!\inst|buffer1\(47) & (!\inst|buffer1\(46) & (!\inst|buffer1\(45) & !\inst|buffer1\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(47),
	datab => \inst|buffer1\(46),
	datac => \inst|buffer1\(45),
	datad => \inst|buffer1\(44),
	combout => \inst|Equal11~2_combout\);

\inst|Equal11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal11~3_combout\ = (\inst|Equal11~0_combout\ & (\inst|Equal11~1_combout\ & \inst|Equal11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal11~0_combout\,
	datab => \inst|Equal11~1_combout\,
	datac => \inst|Equal11~2_combout\,
	combout => \inst|Equal11~3_combout\);

\inst|buffer1~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~71_combout\ = (\inst|buffer1~38_combout\ & (\inst|Equal8~0_combout\ & (\inst|Equal11~3_combout\ & !\inst|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~38_combout\,
	datab => \inst|Equal8~0_combout\,
	datac => \inst|Equal11~3_combout\,
	datad => \inst|counter\(4),
	combout => \inst|buffer1~71_combout\);

\inst|buffer1[36]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[36]~72_combout\ = (!\inst1|OUTPUT\(0) & ((!\inst1|OUTPUT\(1)) # (!\inst|buffer1~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst|buffer1~71_combout\,
	datac => \inst1|OUTPUT\(1),
	combout => \inst|buffer1[36]~72_combout\);

\inst|buffer1[36]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[36]~73_combout\ = ((\inst1|OUTPUT\(1) & ((\inst1|OUTPUT\(3)) # (\inst|buffer1[36]~68_combout\)))) # (!\inst|buffer1[36]~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst|buffer1[36]~68_combout\,
	datac => \inst1|OUTPUT\(1),
	datad => \inst|buffer1[36]~72_combout\,
	combout => \inst|buffer1[36]~73_combout\);

\inst|buffer1[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~75_combout\,
	ena => \inst|buffer1[36]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(45));

\inst|Equal17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal17~5_combout\ = (\inst|buffer1\(45) & (\inst|buffer1\(57) & (\inst|buffer1\(44) $ (!\inst|buffer1\(56))))) # (!\inst|buffer1\(45) & (!\inst|buffer1\(57) & (\inst|buffer1\(44) $ (!\inst|buffer1\(56)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(45),
	datab => \inst|buffer1\(44),
	datac => \inst|buffer1\(56),
	datad => \inst|buffer1\(57),
	combout => \inst|Equal17~5_combout\);

\inst|Equal17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal17~6_combout\ = (\inst|buffer1\(47) & (\inst|buffer1\(59) & (\inst|buffer1\(46) $ (!\inst|buffer1\(58))))) # (!\inst|buffer1\(47) & (!\inst|buffer1\(59) & (\inst|buffer1\(46) $ (!\inst|buffer1\(58)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(47),
	datab => \inst|buffer1\(46),
	datac => \inst|buffer1\(58),
	datad => \inst|buffer1\(59),
	combout => \inst|Equal17~6_combout\);

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

\inst|buffer1[59]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[59]~89_combout\ = (!\inst1|OUTPUT\(0) & (((!\inst|Equal17~7_combout\) # (!\inst|Equal16~1_combout\)) # (!\inst1|OUTPUT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst1|OUTPUT\(0),
	datac => \inst|Equal16~1_combout\,
	datad => \inst|Equal17~7_combout\,
	combout => \inst|buffer1[59]~89_combout\);

\inst|buffer1[59]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[59]~90_combout\ = ((\inst1|OUTPUT\(1) & ((\inst1|OUTPUT\(3)) # (\inst|buffer1~88_combout\)))) # (!\inst|buffer1[59]~89_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst1|OUTPUT\(3),
	datac => \inst|buffer1~88_combout\,
	datad => \inst|buffer1[59]~89_combout\,
	combout => \inst|buffer1[59]~90_combout\);

\inst|buffer1[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~98_combout\,
	ena => \inst|buffer1[59]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(51));

\inst|bufferout[51]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(51),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(51));

\inst2|buffer1[39]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(39) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(51))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(51),
	datac => \inst2|buffer1\(39),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(39));

\inst2|bufferout[39]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(39) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(39))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(39),
	datac => \inst2|bufferout\(39),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(39));

\inst|buffer1~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~81_combout\ = (!\inst|buffer1[36]~69_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(39))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(39),
	datab => \ADC_IN[3]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[36]~69_combout\,
	combout => \inst|buffer1~81_combout\);

\inst|buffer1[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~81_combout\,
	ena => \inst|buffer1[36]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(39));

\inst|bufferout[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(39),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(39));

\inst2|buffer1[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(27) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(39))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(39),
	datac => \inst2|buffer1\(27),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(27));

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

\inst|buffer1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~64_combout\ = (!\inst|buffer1[24]~52_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(27))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(27),
	datab => \ADC_IN[3]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[24]~52_combout\,
	combout => \inst|buffer1~64_combout\);

\inst|buffer1[24]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[24]~54_combout\ = (!\inst1|OUTPUT\(3) & (((!\inst|Equal9~7_combout\) # (!\inst|Equal8~0_combout\)) # (!\inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~0_combout\,
	datab => \inst|Equal8~0_combout\,
	datac => \inst|Equal9~7_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1[24]~54_combout\);

\inst|bufferout[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(38),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(38));

\inst2|buffer1[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(26) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(38))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(38),
	datac => \inst2|buffer1\(26),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(26));

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

\inst|buffer1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~65_combout\ = (!\inst|buffer1[24]~52_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(26))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(26),
	datab => \ADC_IN[2]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[24]~52_combout\,
	combout => \inst|buffer1~65_combout\);

\inst|buffer1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~65_combout\,
	ena => \inst|buffer1[24]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(26));

\inst|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~0_combout\ = (!\inst|buffer1\(27) & (!\inst|buffer1\(26) & (!\inst|buffer1\(25) & !\inst|buffer1\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(27),
	datab => \inst|buffer1\(26),
	datac => \inst|buffer1\(25),
	datad => \inst|buffer1\(24),
	combout => \inst|Equal7~0_combout\);

\inst|bufferout[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(43),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(43));

\inst2|buffer1[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(31) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(43))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(43),
	datac => \inst2|buffer1\(31),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(31));

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

\inst|buffer1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~60_combout\ = (!\inst|buffer1[24]~52_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(31))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(31),
	datab => \ADC_IN[7]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[24]~52_combout\,
	combout => \inst|buffer1~60_combout\);

\inst|buffer1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~60_combout\,
	ena => \inst|buffer1[24]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(31));

\inst|bufferout[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(42),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(42));

\inst2|buffer1[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(30) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(42))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(42),
	datac => \inst2|buffer1\(30),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(30));

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

\inst|buffer1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~61_combout\ = (!\inst|buffer1[24]~52_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(30))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(30),
	datab => \ADC_IN[6]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[24]~52_combout\,
	combout => \inst|buffer1~61_combout\);

\inst|buffer1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~61_combout\,
	ena => \inst|buffer1[24]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(30));

\inst|bufferout[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(41),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(41));

\inst2|buffer1[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(29) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(41))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(41),
	datac => \inst2|buffer1\(29),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(29));

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

\inst|buffer1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~62_combout\ = (!\inst|buffer1[24]~52_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(29))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(29),
	datab => \ADC_IN[5]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[24]~52_combout\,
	combout => \inst|buffer1~62_combout\);

\inst|buffer1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~62_combout\,
	ena => \inst|buffer1[24]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(29));

\inst|bufferout[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(40),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(40));

\inst2|buffer1[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(28) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(40))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(40),
	datac => \inst2|buffer1\(28),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(28));

\inst2|bufferout[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(28) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(28))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(28),
	datac => \inst2|bufferout\(28),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(28));

\inst|buffer1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~63_combout\ = (!\inst|buffer1[24]~52_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(28))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(28),
	datab => \ADC_IN[4]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[24]~52_combout\,
	combout => \inst|buffer1~63_combout\);

\inst|buffer1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~63_combout\,
	ena => \inst|buffer1[24]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(28));

\inst|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~1_combout\ = (!\inst|buffer1\(31) & (!\inst|buffer1\(30) & (!\inst|buffer1\(29) & !\inst|buffer1\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(31),
	datab => \inst|buffer1\(30),
	datac => \inst|buffer1\(29),
	datad => \inst|buffer1\(28),
	combout => \inst|Equal7~1_combout\);

\inst|bufferout[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(46),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(46));

\inst2|buffer1[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(34) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(46))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(46),
	datac => \inst2|buffer1\(34),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(34));

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

\inst|buffer1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~57_combout\ = (!\inst|buffer1[24]~52_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(34))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(34),
	datab => \ADC_IN[10]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[24]~52_combout\,
	combout => \inst|buffer1~57_combout\);

\inst|buffer1[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~57_combout\,
	ena => \inst|buffer1[24]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(34));

\inst|bufferout[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(45),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(45));

\inst2|buffer1[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(33) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(45))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(45),
	datac => \inst2|buffer1\(33),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(33));

\inst2|bufferout[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(33) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(33))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(33))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(33),
	datac => \inst2|bufferout\(33),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(33));

\inst|buffer1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~58_combout\ = (!\inst|buffer1[24]~52_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(33))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(33),
	datab => \ADC_IN[9]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[24]~52_combout\,
	combout => \inst|buffer1~58_combout\);

\inst|buffer1[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~58_combout\,
	ena => \inst|buffer1[24]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(33));

\inst|bufferout[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(44),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(44));

\inst2|buffer1[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(32) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(44))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(44),
	datac => \inst2|buffer1\(32),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(32));

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

\inst|buffer1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~59_combout\ = (!\inst|buffer1[24]~52_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(32))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(32),
	datab => \ADC_IN[8]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[24]~52_combout\,
	combout => \inst|buffer1~59_combout\);

\inst|buffer1[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~59_combout\,
	ena => \inst|buffer1[24]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(32));

\inst|Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~2_combout\ = (!\inst|buffer1\(35) & (!\inst|buffer1\(34) & (!\inst|buffer1\(33) & !\inst|buffer1\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(35),
	datab => \inst|buffer1\(34),
	datac => \inst|buffer1\(33),
	datad => \inst|buffer1\(32),
	combout => \inst|Equal7~2_combout\);

\inst|Equal7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal7~3_combout\ = (\inst|Equal7~0_combout\ & (\inst|Equal7~1_combout\ & \inst|Equal7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal7~0_combout\,
	datab => \inst|Equal7~1_combout\,
	datac => \inst|Equal7~2_combout\,
	combout => \inst|Equal7~3_combout\);

\inst|buffer1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~55_combout\ = (\inst|Equal46~0_combout\ & (\inst|Equal7~3_combout\ & (!\inst|counter\(4) & !\inst|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal46~0_combout\,
	datab => \inst|Equal7~3_combout\,
	datac => \inst|counter\(4),
	datad => \inst|counter\(2),
	combout => \inst|buffer1~55_combout\);

\inst|buffer1[24]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[24]~56_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & ((\inst|buffer1~55_combout\) # (!\inst|buffer1[24]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[24]~54_combout\,
	datab => \inst|buffer1~55_combout\,
	datac => \inst1|OUTPUT\(1),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[24]~56_combout\);

\inst|buffer1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~64_combout\,
	ena => \inst|buffer1[24]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(27));

\inst|bufferout[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(27),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(27));

\inst2|buffer1[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(15) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(27))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(27),
	datac => \inst2|buffer1\(15),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(15));

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

\inst|buffer1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~48_combout\ = (!\inst|buffer1[23]~35_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(15))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(15),
	datab => \ADC_IN[3]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[23]~35_combout\,
	combout => \inst|buffer1~48_combout\);

\inst|buffer1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~48_combout\,
	ena => \inst|buffer1[23]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(15));

\inst|bufferout[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(26),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(26));

\inst2|buffer1[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(14) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(26))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(26),
	datac => \inst2|buffer1\(14),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(14));

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

\inst|buffer1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~49_combout\ = (!\inst|buffer1[23]~35_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(14))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(14),
	datab => \ADC_IN[2]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[23]~35_combout\,
	combout => \inst|buffer1~49_combout\);

\inst|buffer1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~49_combout\,
	ena => \inst|buffer1[23]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(14));

\inst|Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~1_combout\ = (\inst|buffer1\(15) & (\inst|buffer1\(27) & (\inst|buffer1\(14) $ (!\inst|buffer1\(26))))) # (!\inst|buffer1\(15) & (!\inst|buffer1\(27) & (\inst|buffer1\(14) $ (!\inst|buffer1\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(15),
	datab => \inst|buffer1\(14),
	datac => \inst|buffer1\(26),
	datad => \inst|buffer1\(27),
	combout => \inst|Equal9~1_combout\);

\inst|bufferout[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(29),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(29));

\inst2|buffer1[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(17) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(29))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(29),
	datac => \inst2|buffer1\(17),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(17));

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

\inst|buffer1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~46_combout\ = (!\inst|buffer1[23]~35_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(17))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(17),
	datab => \ADC_IN[5]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[23]~35_combout\,
	combout => \inst|buffer1~46_combout\);

\inst|buffer1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~46_combout\,
	ena => \inst|buffer1[23]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(17));

\inst|bufferout[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(28),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(28));

\inst2|buffer1[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(16) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(28))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(28),
	datac => \inst2|buffer1\(16),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(16));

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

\inst|buffer1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~47_combout\ = (!\inst|buffer1[23]~35_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(16))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(16),
	datab => \ADC_IN[4]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[23]~35_combout\,
	combout => \inst|buffer1~47_combout\);

\inst|buffer1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~47_combout\,
	ena => \inst|buffer1[23]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(16));

\inst|Equal9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~2_combout\ = (\inst|buffer1\(17) & (\inst|buffer1\(29) & (\inst|buffer1\(16) $ (!\inst|buffer1\(28))))) # (!\inst|buffer1\(17) & (!\inst|buffer1\(29) & (\inst|buffer1\(16) $ (!\inst|buffer1\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(17),
	datab => \inst|buffer1\(16),
	datac => \inst|buffer1\(28),
	datad => \inst|buffer1\(29),
	combout => \inst|Equal9~2_combout\);

\inst|bufferout[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(31),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(31));

\inst2|buffer1[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(19) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(31))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(31),
	datac => \inst2|buffer1\(19),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(19));

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

\inst|buffer1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~44_combout\ = (!\inst|buffer1[23]~35_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(19))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(19),
	datab => \ADC_IN[7]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[23]~35_combout\,
	combout => \inst|buffer1~44_combout\);

\inst|buffer1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~44_combout\,
	ena => \inst|buffer1[23]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(19));

\inst|bufferout[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(30),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(30));

\inst2|buffer1[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(18) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(30))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(30),
	datac => \inst2|buffer1\(18),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(18));

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

\inst|buffer1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~45_combout\ = (!\inst|buffer1[23]~35_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(18))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(18),
	datab => \ADC_IN[6]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[23]~35_combout\,
	combout => \inst|buffer1~45_combout\);

\inst|buffer1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~45_combout\,
	ena => \inst|buffer1[23]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(18));

\inst|Equal9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~3_combout\ = (\inst|buffer1\(19) & (\inst|buffer1\(31) & (\inst|buffer1\(18) $ (!\inst|buffer1\(30))))) # (!\inst|buffer1\(19) & (!\inst|buffer1\(31) & (\inst|buffer1\(18) $ (!\inst|buffer1\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(19),
	datab => \inst|buffer1\(18),
	datac => \inst|buffer1\(30),
	datad => \inst|buffer1\(31),
	combout => \inst|Equal9~3_combout\);

\inst|Equal9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~4_combout\ = (\inst|Equal9~0_combout\ & (\inst|Equal9~1_combout\ & (\inst|Equal9~2_combout\ & \inst|Equal9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal9~0_combout\,
	datab => \inst|Equal9~1_combout\,
	datac => \inst|Equal9~2_combout\,
	datad => \inst|Equal9~3_combout\,
	combout => \inst|Equal9~4_combout\);

\inst|bufferout[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(33),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(33));

\inst2|buffer1[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(21) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(33))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(33),
	datac => \inst2|buffer1\(21),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(21));

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

\inst|buffer1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~42_combout\ = (!\inst|buffer1[23]~35_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(21))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(21),
	datab => \ADC_IN[9]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[23]~35_combout\,
	combout => \inst|buffer1~42_combout\);

\inst|buffer1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~42_combout\,
	ena => \inst|buffer1[23]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(21));

\inst|bufferout[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(32),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(32));

\inst2|buffer1[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(20) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(32))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(32),
	datac => \inst2|buffer1\(20),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(20));

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

\inst|buffer1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~43_combout\ = (!\inst|buffer1[23]~35_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(20))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(20),
	datab => \ADC_IN[8]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[23]~35_combout\,
	combout => \inst|buffer1~43_combout\);

\inst|buffer1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~43_combout\,
	ena => \inst|buffer1[23]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(20));

\inst|Equal9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~5_combout\ = (\inst|buffer1\(21) & (\inst|buffer1\(33) & (\inst|buffer1\(20) $ (!\inst|buffer1\(32))))) # (!\inst|buffer1\(21) & (!\inst|buffer1\(33) & (\inst|buffer1\(20) $ (!\inst|buffer1\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(21),
	datab => \inst|buffer1\(20),
	datac => \inst|buffer1\(32),
	datad => \inst|buffer1\(33),
	combout => \inst|Equal9~5_combout\);

\inst|bufferout[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(34),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(34));

\inst2|buffer1[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(22) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(34))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(34),
	datac => \inst2|buffer1\(22),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(22));

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

\inst|buffer1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~41_combout\ = (!\inst|buffer1[23]~35_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(22))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(22),
	datab => \ADC_IN[10]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[23]~35_combout\,
	combout => \inst|buffer1~41_combout\);

\inst|buffer1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~41_combout\,
	ena => \inst|buffer1[23]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(22));

\inst|Equal9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~6_combout\ = (\inst|buffer1\(23) & (\inst|buffer1\(35) & (\inst|buffer1\(22) $ (!\inst|buffer1\(34))))) # (!\inst|buffer1\(23) & (!\inst|buffer1\(35) & (\inst|buffer1\(22) $ (!\inst|buffer1\(34)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(23),
	datab => \inst|buffer1\(22),
	datac => \inst|buffer1\(34),
	datad => \inst|buffer1\(35),
	combout => \inst|Equal9~6_combout\);

\inst|Equal9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal9~7_combout\ = (\inst|Equal9~4_combout\ & (\inst|Equal9~5_combout\ & \inst|Equal9~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal9~4_combout\,
	datab => \inst|Equal9~5_combout\,
	datac => \inst|Equal9~6_combout\,
	combout => \inst|Equal9~7_combout\);

\inst|buffer1[24]~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[24]~215_combout\ = (\inst|counter\(2) & (!\inst|counter\(1) & (\inst|Equal4~0_combout\ & \inst|Equal9~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|Equal4~0_combout\,
	datad => \inst|Equal9~7_combout\,
	combout => \inst|buffer1[24]~215_combout\);

\inst|buffer1[24]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[24]~52_combout\ = (\inst1|OUTPUT\(0)) # ((\inst|buffer1[24]~215_combout\ & !\inst1|OUTPUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst|buffer1[24]~215_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1[24]~52_combout\);

\inst|buffer1~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~67_combout\ = (!\inst|buffer1[24]~52_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(24))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(24),
	datab => \ADC_IN[0]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[24]~52_combout\,
	combout => \inst|buffer1~67_combout\);

\inst|buffer1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~67_combout\,
	ena => \inst|buffer1[24]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(24));

\inst|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~0_combout\ = (\inst|buffer1\(25) & (\inst|buffer1\(37) & (\inst|buffer1\(24) $ (!\inst|buffer1\(36))))) # (!\inst|buffer1\(25) & (!\inst|buffer1\(37) & (\inst|buffer1\(24) $ (!\inst|buffer1\(36)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(25),
	datab => \inst|buffer1\(24),
	datac => \inst|buffer1\(36),
	datad => \inst|buffer1\(37),
	combout => \inst|Equal13~0_combout\);

\inst|Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~1_combout\ = (\inst|buffer1\(27) & (\inst|buffer1\(39) & (\inst|buffer1\(26) $ (!\inst|buffer1\(38))))) # (!\inst|buffer1\(27) & (!\inst|buffer1\(39) & (\inst|buffer1\(26) $ (!\inst|buffer1\(38)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(27),
	datab => \inst|buffer1\(26),
	datac => \inst|buffer1\(38),
	datad => \inst|buffer1\(39),
	combout => \inst|Equal13~1_combout\);

\inst|Equal13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~2_combout\ = (\inst|buffer1\(29) & (\inst|buffer1\(41) & (\inst|buffer1\(28) $ (!\inst|buffer1\(40))))) # (!\inst|buffer1\(29) & (!\inst|buffer1\(41) & (\inst|buffer1\(28) $ (!\inst|buffer1\(40)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(29),
	datab => \inst|buffer1\(28),
	datac => \inst|buffer1\(40),
	datad => \inst|buffer1\(41),
	combout => \inst|Equal13~2_combout\);

\inst|Equal13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~3_combout\ = (\inst|buffer1\(31) & (\inst|buffer1\(43) & (\inst|buffer1\(30) $ (!\inst|buffer1\(42))))) # (!\inst|buffer1\(31) & (!\inst|buffer1\(43) & (\inst|buffer1\(30) $ (!\inst|buffer1\(42)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(31),
	datab => \inst|buffer1\(30),
	datac => \inst|buffer1\(42),
	datad => \inst|buffer1\(43),
	combout => \inst|Equal13~3_combout\);

\inst|Equal13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~4_combout\ = (\inst|Equal13~0_combout\ & (\inst|Equal13~1_combout\ & (\inst|Equal13~2_combout\ & \inst|Equal13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal13~0_combout\,
	datab => \inst|Equal13~1_combout\,
	datac => \inst|Equal13~2_combout\,
	datad => \inst|Equal13~3_combout\,
	combout => \inst|Equal13~4_combout\);

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

\inst|Equal13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal13~6_combout\ = (\inst|buffer1\(35) & (\inst|buffer1\(47) & (\inst|buffer1\(34) $ (!\inst|buffer1\(46))))) # (!\inst|buffer1\(35) & (!\inst|buffer1\(47) & (\inst|buffer1\(34) $ (!\inst|buffer1\(46)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(35),
	datab => \inst|buffer1\(34),
	datac => \inst|buffer1\(46),
	datad => \inst|buffer1\(47),
	combout => \inst|Equal13~6_combout\);

\inst|buffer1[36]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[36]~68_combout\ = (\inst|Equal12~5_combout\ & (\inst|Equal13~4_combout\ & (\inst|Equal13~5_combout\ & \inst|Equal13~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal12~5_combout\,
	datab => \inst|Equal13~4_combout\,
	datac => \inst|Equal13~5_combout\,
	datad => \inst|Equal13~6_combout\,
	combout => \inst|buffer1[36]~68_combout\);

\inst|buffer1[36]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[36]~69_combout\ = (\inst1|OUTPUT\(0)) # ((\inst|buffer1[36]~68_combout\ & !\inst1|OUTPUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst|buffer1[36]~68_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1[36]~69_combout\);

\inst|buffer1~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~84_combout\ = (!\inst|buffer1[36]~69_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(36))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(36),
	datab => \ADC_IN[0]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[36]~69_combout\,
	combout => \inst|buffer1~84_combout\);

\inst|buffer1[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~84_combout\,
	ena => \inst|buffer1[36]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(36));

\inst|Equal17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal17~0_combout\ = (\inst|buffer1\(37) & (\inst|buffer1\(49) & (\inst|buffer1\(36) $ (!\inst|buffer1\(48))))) # (!\inst|buffer1\(37) & (!\inst|buffer1\(49) & (\inst|buffer1\(36) $ (!\inst|buffer1\(48)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(37),
	datab => \inst|buffer1\(36),
	datac => \inst|buffer1\(48),
	datad => \inst|buffer1\(49),
	combout => \inst|Equal17~0_combout\);

\inst|Equal17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal17~1_combout\ = (\inst|buffer1\(39) & (\inst|buffer1\(51) & (\inst|buffer1\(38) $ (!\inst|buffer1\(50))))) # (!\inst|buffer1\(39) & (!\inst|buffer1\(51) & (\inst|buffer1\(38) $ (!\inst|buffer1\(50)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(39),
	datab => \inst|buffer1\(38),
	datac => \inst|buffer1\(50),
	datad => \inst|buffer1\(51),
	combout => \inst|Equal17~1_combout\);

\inst|Equal17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal17~2_combout\ = (\inst|buffer1\(41) & (\inst|buffer1\(53) & (\inst|buffer1\(40) $ (!\inst|buffer1\(52))))) # (!\inst|buffer1\(41) & (!\inst|buffer1\(53) & (\inst|buffer1\(40) $ (!\inst|buffer1\(52)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(41),
	datab => \inst|buffer1\(40),
	datac => \inst|buffer1\(52),
	datad => \inst|buffer1\(53),
	combout => \inst|Equal17~2_combout\);

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

\inst|Equal17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal17~4_combout\ = (\inst|Equal17~0_combout\ & (\inst|Equal17~1_combout\ & (\inst|Equal17~2_combout\ & \inst|Equal17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal17~0_combout\,
	datab => \inst|Equal17~1_combout\,
	datac => \inst|Equal17~2_combout\,
	datad => \inst|Equal17~3_combout\,
	combout => \inst|Equal17~4_combout\);

\inst|buffer1[59]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[59]~85_combout\ = (\inst|Equal16~1_combout\ & (\inst|Equal17~4_combout\ & (\inst|Equal17~5_combout\ & \inst|Equal17~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal16~1_combout\,
	datab => \inst|Equal17~4_combout\,
	datac => \inst|Equal17~5_combout\,
	datad => \inst|Equal17~6_combout\,
	combout => \inst|buffer1[59]~85_combout\);

\inst|buffer1[59]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[59]~86_combout\ = (\inst1|OUTPUT\(0)) # ((\inst|buffer1[59]~85_combout\ & !\inst1|OUTPUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst|buffer1[59]~85_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1[59]~86_combout\);

\inst|buffer1~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~101_combout\ = (!\inst|buffer1[59]~86_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(48))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(48),
	datab => \ADC_IN[0]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[59]~86_combout\,
	combout => \inst|buffer1~101_combout\);

\inst|buffer1[48]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~101_combout\,
	ena => \inst|buffer1[59]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(48));

\inst|Equal21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal21~0_combout\ = (\inst|buffer1\(49) & (\inst|buffer1\(61) & (\inst|buffer1\(48) $ (!\inst|buffer1\(60))))) # (!\inst|buffer1\(49) & (!\inst|buffer1\(61) & (\inst|buffer1\(48) $ (!\inst|buffer1\(60)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(49),
	datab => \inst|buffer1\(48),
	datac => \inst|buffer1\(60),
	datad => \inst|buffer1\(61),
	combout => \inst|Equal21~0_combout\);

\inst|Equal21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal21~1_combout\ = (\inst|buffer1\(51) & (\inst|buffer1\(63) & (\inst|buffer1\(50) $ (!\inst|buffer1\(62))))) # (!\inst|buffer1\(51) & (!\inst|buffer1\(63) & (\inst|buffer1\(50) $ (!\inst|buffer1\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(51),
	datab => \inst|buffer1\(50),
	datac => \inst|buffer1\(62),
	datad => \inst|buffer1\(63),
	combout => \inst|Equal21~1_combout\);

\inst|Equal21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal21~2_combout\ = (\inst|buffer1\(53) & (\inst|buffer1\(65) & (\inst|buffer1\(52) $ (!\inst|buffer1\(64))))) # (!\inst|buffer1\(53) & (!\inst|buffer1\(65) & (\inst|buffer1\(52) $ (!\inst|buffer1\(64)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(53),
	datab => \inst|buffer1\(52),
	datac => \inst|buffer1\(64),
	datad => \inst|buffer1\(65),
	combout => \inst|Equal21~2_combout\);

\inst|Equal21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal21~3_combout\ = (\inst|buffer1\(55) & (\inst|buffer1\(67) & (\inst|buffer1\(54) $ (!\inst|buffer1\(66))))) # (!\inst|buffer1\(55) & (!\inst|buffer1\(67) & (\inst|buffer1\(54) $ (!\inst|buffer1\(66)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(55),
	datab => \inst|buffer1\(54),
	datac => \inst|buffer1\(66),
	datad => \inst|buffer1\(67),
	combout => \inst|Equal21~3_combout\);

\inst|Equal21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal21~4_combout\ = (\inst|Equal21~0_combout\ & (\inst|Equal21~1_combout\ & (\inst|Equal21~2_combout\ & \inst|Equal21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal21~0_combout\,
	datab => \inst|Equal21~1_combout\,
	datac => \inst|Equal21~2_combout\,
	datad => \inst|Equal21~3_combout\,
	combout => \inst|Equal21~4_combout\);

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

\inst|Equal21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal21~7_combout\ = (\inst|Equal21~4_combout\ & (\inst|Equal21~5_combout\ & \inst|Equal21~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal21~4_combout\,
	datab => \inst|Equal21~5_combout\,
	datac => \inst|Equal21~6_combout\,
	combout => \inst|Equal21~7_combout\);

\inst|buffer1[60]~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[60]~216_combout\ = (\inst|counter\(1) & (!\inst|counter\(2) & (\inst|Equal16~2_combout\ & \inst|Equal21~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(2),
	datac => \inst|Equal16~2_combout\,
	datad => \inst|Equal21~7_combout\,
	combout => \inst|buffer1[60]~216_combout\);

\inst|buffer1[60]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[60]~102_combout\ = (\inst1|OUTPUT\(0)) # ((\inst|buffer1[60]~216_combout\ & !\inst1|OUTPUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst|buffer1[60]~216_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1[60]~102_combout\);

\inst|buffer1~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~117_combout\ = (!\inst|buffer1[60]~102_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(60))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(60),
	datab => \ADC_IN[0]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[60]~102_combout\,
	combout => \inst|buffer1~117_combout\);

\inst|buffer1[60]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~117_combout\,
	ena => \inst|buffer1[60]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(60));

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

\inst|Equal25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal25~1_combout\ = (\inst|buffer1\(63) & (\inst|buffer1\(75) & (\inst|buffer1\(62) $ (!\inst|buffer1\(74))))) # (!\inst|buffer1\(63) & (!\inst|buffer1\(75) & (\inst|buffer1\(62) $ (!\inst|buffer1\(74)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(63),
	datab => \inst|buffer1\(62),
	datac => \inst|buffer1\(74),
	datad => \inst|buffer1\(75),
	combout => \inst|Equal25~1_combout\);

\inst|Equal25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal25~2_combout\ = (\inst|buffer1\(65) & (\inst|buffer1\(77) & (\inst|buffer1\(64) $ (!\inst|buffer1\(76))))) # (!\inst|buffer1\(65) & (!\inst|buffer1\(77) & (\inst|buffer1\(64) $ (!\inst|buffer1\(76)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(65),
	datab => \inst|buffer1\(64),
	datac => \inst|buffer1\(76),
	datad => \inst|buffer1\(77),
	combout => \inst|Equal25~2_combout\);

\inst|Equal25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal25~3_combout\ = (\inst|buffer1\(67) & (\inst|buffer1\(79) & (\inst|buffer1\(66) $ (!\inst|buffer1\(78))))) # (!\inst|buffer1\(67) & (!\inst|buffer1\(79) & (\inst|buffer1\(66) $ (!\inst|buffer1\(78)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(67),
	datab => \inst|buffer1\(66),
	datac => \inst|buffer1\(78),
	datad => \inst|buffer1\(79),
	combout => \inst|Equal25~3_combout\);

\inst|Equal25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal25~4_combout\ = (\inst|Equal25~0_combout\ & (\inst|Equal25~1_combout\ & (\inst|Equal25~2_combout\ & \inst|Equal25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal25~0_combout\,
	datab => \inst|Equal25~1_combout\,
	datac => \inst|Equal25~2_combout\,
	datad => \inst|Equal25~3_combout\,
	combout => \inst|Equal25~4_combout\);

\inst|Equal25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal25~5_combout\ = (\inst|buffer1\(69) & (\inst|buffer1\(81) & (\inst|buffer1\(68) $ (!\inst|buffer1\(80))))) # (!\inst|buffer1\(69) & (!\inst|buffer1\(81) & (\inst|buffer1\(68) $ (!\inst|buffer1\(80)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(69),
	datab => \inst|buffer1\(68),
	datac => \inst|buffer1\(80),
	datad => \inst|buffer1\(81),
	combout => \inst|Equal25~5_combout\);

\inst|Equal25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal25~6_combout\ = (\inst|buffer1\(71) & (\inst|buffer1\(83) & (\inst|buffer1\(70) $ (!\inst|buffer1\(82))))) # (!\inst|buffer1\(71) & (!\inst|buffer1\(83) & (\inst|buffer1\(70) $ (!\inst|buffer1\(82)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(71),
	datab => \inst|buffer1\(70),
	datac => \inst|buffer1\(82),
	datad => \inst|buffer1\(83),
	combout => \inst|Equal25~6_combout\);

\inst|Equal25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal25~7_combout\ = (\inst|Equal25~4_combout\ & (\inst|Equal25~5_combout\ & \inst|Equal25~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal25~4_combout\,
	datab => \inst|Equal25~5_combout\,
	datac => \inst|Equal25~6_combout\,
	combout => \inst|Equal25~7_combout\);

\inst|buffer1[72]~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[72]~218_combout\ = (\inst|counter\(2) & (!\inst|counter\(1) & (\inst|Equal16~2_combout\ & \inst|Equal25~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|Equal16~2_combout\,
	datad => \inst|Equal25~7_combout\,
	combout => \inst|buffer1[72]~218_combout\);

\inst|buffer1[72]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[72]~118_combout\ = (\inst1|OUTPUT\(0)) # ((\inst|buffer1[72]~218_combout\ & !\inst1|OUTPUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst|buffer1[72]~218_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1[72]~118_combout\);

\inst|buffer1~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~134_combout\ = (!\inst|buffer1[72]~118_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(72))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(72),
	datab => \ADC_IN[0]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[72]~118_combout\,
	combout => \inst|buffer1~134_combout\);

\inst|buffer1[72]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~134_combout\,
	ena => \inst|buffer1[72]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(72));

\inst|Equal29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal29~0_combout\ = (\inst|buffer1\(73) & (\inst|buffer1\(85) & (\inst|buffer1\(72) $ (!\inst|buffer1\(84))))) # (!\inst|buffer1\(73) & (!\inst|buffer1\(85) & (\inst|buffer1\(72) $ (!\inst|buffer1\(84)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(73),
	datab => \inst|buffer1\(72),
	datac => \inst|buffer1\(84),
	datad => \inst|buffer1\(85),
	combout => \inst|Equal29~0_combout\);

\inst|Equal29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal29~1_combout\ = (\inst|buffer1\(75) & (\inst|buffer1\(87) & (\inst|buffer1\(74) $ (!\inst|buffer1\(86))))) # (!\inst|buffer1\(75) & (!\inst|buffer1\(87) & (\inst|buffer1\(74) $ (!\inst|buffer1\(86)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(75),
	datab => \inst|buffer1\(74),
	datac => \inst|buffer1\(86),
	datad => \inst|buffer1\(87),
	combout => \inst|Equal29~1_combout\);

\inst|Equal29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal29~2_combout\ = (\inst|buffer1\(77) & (\inst|buffer1\(89) & (\inst|buffer1\(76) $ (!\inst|buffer1\(88))))) # (!\inst|buffer1\(77) & (!\inst|buffer1\(89) & (\inst|buffer1\(76) $ (!\inst|buffer1\(88)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(77),
	datab => \inst|buffer1\(76),
	datac => \inst|buffer1\(88),
	datad => \inst|buffer1\(89),
	combout => \inst|Equal29~2_combout\);

\inst|Equal29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal29~3_combout\ = (\inst|buffer1\(79) & (\inst|buffer1\(91) & (\inst|buffer1\(78) $ (!\inst|buffer1\(90))))) # (!\inst|buffer1\(79) & (!\inst|buffer1\(91) & (\inst|buffer1\(78) $ (!\inst|buffer1\(90)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(79),
	datab => \inst|buffer1\(78),
	datac => \inst|buffer1\(90),
	datad => \inst|buffer1\(91),
	combout => \inst|Equal29~3_combout\);

\inst|Equal29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal29~4_combout\ = (\inst|Equal29~0_combout\ & (\inst|Equal29~1_combout\ & (\inst|Equal29~2_combout\ & \inst|Equal29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal29~0_combout\,
	datab => \inst|Equal29~1_combout\,
	datac => \inst|Equal29~2_combout\,
	datad => \inst|Equal29~3_combout\,
	combout => \inst|Equal29~4_combout\);

\inst|Equal29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal29~5_combout\ = (\inst|buffer1\(81) & (\inst|buffer1\(93) & (\inst|buffer1\(80) $ (!\inst|buffer1\(92))))) # (!\inst|buffer1\(81) & (!\inst|buffer1\(93) & (\inst|buffer1\(80) $ (!\inst|buffer1\(92)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(81),
	datab => \inst|buffer1\(80),
	datac => \inst|buffer1\(92),
	datad => \inst|buffer1\(93),
	combout => \inst|Equal29~5_combout\);

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

\inst|Equal29~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal29~7_combout\ = (\inst|Equal29~4_combout\ & (\inst|Equal29~5_combout\ & \inst|Equal29~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal29~4_combout\,
	datab => \inst|Equal29~5_combout\,
	datac => \inst|Equal29~6_combout\,
	combout => \inst|Equal29~7_combout\);

\inst|buffer1[84]~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[84]~219_combout\ = (\inst|counter\(2) & (\inst|counter\(1) & (\inst|Equal16~2_combout\ & \inst|Equal29~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|Equal16~2_combout\,
	datad => \inst|Equal29~7_combout\,
	combout => \inst|buffer1[84]~219_combout\);

\inst|buffer1[84]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[84]~135_combout\ = (\inst1|OUTPUT\(0)) # ((\inst|buffer1[84]~219_combout\ & !\inst1|OUTPUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst|buffer1[84]~219_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1[84]~135_combout\);

\inst|buffer1~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~149_combout\ = (!\inst|buffer1[84]~135_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(84))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(84),
	datab => \ADC_IN[0]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[84]~135_combout\,
	combout => \inst|buffer1~149_combout\);

\inst|buffer1[84]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~149_combout\,
	ena => \inst|buffer1[84]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(84));

\inst|Equal33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~0_combout\ = (\inst|buffer1\(85) & (\inst|buffer1\(97) & (\inst|buffer1\(84) $ (!\inst|buffer1\(96))))) # (!\inst|buffer1\(85) & (!\inst|buffer1\(97) & (\inst|buffer1\(84) $ (!\inst|buffer1\(96)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(85),
	datab => \inst|buffer1\(84),
	datac => \inst|buffer1\(96),
	datad => \inst|buffer1\(97),
	combout => \inst|Equal33~0_combout\);

\inst|Equal33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~1_combout\ = (\inst|buffer1\(87) & (\inst|buffer1\(99) & (\inst|buffer1\(86) $ (!\inst|buffer1\(98))))) # (!\inst|buffer1\(87) & (!\inst|buffer1\(99) & (\inst|buffer1\(86) $ (!\inst|buffer1\(98)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(87),
	datab => \inst|buffer1\(86),
	datac => \inst|buffer1\(98),
	datad => \inst|buffer1\(99),
	combout => \inst|Equal33~1_combout\);

\inst|Equal33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~2_combout\ = (\inst|buffer1\(89) & (\inst|buffer1\(101) & (\inst|buffer1\(88) $ (!\inst|buffer1\(100))))) # (!\inst|buffer1\(89) & (!\inst|buffer1\(101) & (\inst|buffer1\(88) $ (!\inst|buffer1\(100)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(89),
	datab => \inst|buffer1\(88),
	datac => \inst|buffer1\(100),
	datad => \inst|buffer1\(101),
	combout => \inst|Equal33~2_combout\);

\inst|Equal33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~3_combout\ = (\inst|buffer1\(91) & (\inst|buffer1\(103) & (\inst|buffer1\(90) $ (!\inst|buffer1\(102))))) # (!\inst|buffer1\(91) & (!\inst|buffer1\(103) & (\inst|buffer1\(90) $ (!\inst|buffer1\(102)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(91),
	datab => \inst|buffer1\(90),
	datac => \inst|buffer1\(102),
	datad => \inst|buffer1\(103),
	combout => \inst|Equal33~3_combout\);

\inst|Equal33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~4_combout\ = (\inst|Equal33~0_combout\ & (\inst|Equal33~1_combout\ & (\inst|Equal33~2_combout\ & \inst|Equal33~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal33~0_combout\,
	datab => \inst|Equal33~1_combout\,
	datac => \inst|Equal33~2_combout\,
	datad => \inst|Equal33~3_combout\,
	combout => \inst|Equal33~4_combout\);

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

\inst|Equal33~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~6_combout\ = (\inst|buffer1\(95) & (\inst|buffer1\(107) & (\inst|buffer1\(94) $ (!\inst|buffer1\(106))))) # (!\inst|buffer1\(95) & (!\inst|buffer1\(107) & (\inst|buffer1\(94) $ (!\inst|buffer1\(106)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(95),
	datab => \inst|buffer1\(94),
	datac => \inst|buffer1\(106),
	datad => \inst|buffer1\(107),
	combout => \inst|Equal33~6_combout\);

\inst|Equal33~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal33~7_combout\ = (\inst|Equal33~4_combout\ & (\inst|Equal33~5_combout\ & \inst|Equal33~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal33~4_combout\,
	datab => \inst|Equal33~5_combout\,
	datac => \inst|Equal33~6_combout\,
	combout => \inst|Equal33~7_combout\);

\inst|buffer1[107]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[107]~150_combout\ = (\inst1|OUTPUT\(0)) # ((\inst|Equal32~0_combout\ & (\inst|Equal33~7_combout\ & !\inst1|OUTPUT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst|Equal32~0_combout\,
	datac => \inst|Equal33~7_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1[107]~150_combout\);

\inst|buffer1~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~164_combout\ = (!\inst|buffer1[107]~150_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(96))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(96),
	datab => \ADC_IN[0]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[107]~150_combout\,
	combout => \inst|buffer1~164_combout\);

\inst|buffer1[96]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~164_combout\,
	ena => \inst|buffer1[107]~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(96));

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

\inst|Equal37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal37~1_combout\ = (\inst|buffer1\(99) & (\inst|buffer1\(111) & (\inst|buffer1\(98) $ (!\inst|buffer1\(110))))) # (!\inst|buffer1\(99) & (!\inst|buffer1\(111) & (\inst|buffer1\(98) $ (!\inst|buffer1\(110)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(99),
	datab => \inst|buffer1\(98),
	datac => \inst|buffer1\(110),
	datad => \inst|buffer1\(111),
	combout => \inst|Equal37~1_combout\);

\inst|Equal37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal37~2_combout\ = (\inst|buffer1\(101) & (\inst|buffer1\(113) & (\inst|buffer1\(100) $ (!\inst|buffer1\(112))))) # (!\inst|buffer1\(101) & (!\inst|buffer1\(113) & (\inst|buffer1\(100) $ (!\inst|buffer1\(112)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(101),
	datab => \inst|buffer1\(100),
	datac => \inst|buffer1\(112),
	datad => \inst|buffer1\(113),
	combout => \inst|Equal37~2_combout\);

\inst|Equal37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal37~3_combout\ = (\inst|buffer1\(103) & (\inst|buffer1\(115) & (\inst|buffer1\(102) $ (!\inst|buffer1\(114))))) # (!\inst|buffer1\(103) & (!\inst|buffer1\(115) & (\inst|buffer1\(102) $ (!\inst|buffer1\(114)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(103),
	datab => \inst|buffer1\(102),
	datac => \inst|buffer1\(114),
	datad => \inst|buffer1\(115),
	combout => \inst|Equal37~3_combout\);

\inst|Equal37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal37~4_combout\ = (\inst|Equal37~0_combout\ & (\inst|Equal37~1_combout\ & (\inst|Equal37~2_combout\ & \inst|Equal37~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal37~0_combout\,
	datab => \inst|Equal37~1_combout\,
	datac => \inst|Equal37~2_combout\,
	datad => \inst|Equal37~3_combout\,
	combout => \inst|Equal37~4_combout\);

\inst|Equal37~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal37~5_combout\ = (\inst|buffer1\(105) & (\inst|buffer1\(117) & (\inst|buffer1\(104) $ (!\inst|buffer1\(116))))) # (!\inst|buffer1\(105) & (!\inst|buffer1\(117) & (\inst|buffer1\(104) $ (!\inst|buffer1\(116)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(105),
	datab => \inst|buffer1\(104),
	datac => \inst|buffer1\(116),
	datad => \inst|buffer1\(117),
	combout => \inst|Equal37~5_combout\);

\inst|Equal37~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal37~6_combout\ = (\inst|buffer1\(107) & (\inst|buffer1\(119) & (\inst|buffer1\(106) $ (!\inst|buffer1\(118))))) # (!\inst|buffer1\(107) & (!\inst|buffer1\(119) & (\inst|buffer1\(106) $ (!\inst|buffer1\(118)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(107),
	datab => \inst|buffer1\(106),
	datac => \inst|buffer1\(118),
	datad => \inst|buffer1\(119),
	combout => \inst|Equal37~6_combout\);

\inst|Equal37~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal37~7_combout\ = (\inst|Equal37~4_combout\ & (\inst|Equal37~5_combout\ & \inst|Equal37~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal37~4_combout\,
	datab => \inst|Equal37~5_combout\,
	datac => \inst|Equal37~6_combout\,
	combout => \inst|Equal37~7_combout\);

\inst|buffer1[117]~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[117]~223_combout\ = (\inst|counter\(1) & (!\inst|counter\(2) & (\inst|Equal32~1_combout\ & \inst|Equal37~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(2),
	datac => \inst|Equal32~1_combout\,
	datad => \inst|Equal37~7_combout\,
	combout => \inst|buffer1[117]~223_combout\);

\inst|buffer1[117]~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[117]~183_combout\ = (\inst1|OUTPUT\(0)) # ((\inst|buffer1[117]~223_combout\ & !\inst1|OUTPUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst|buffer1[117]~223_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1[117]~183_combout\);

\inst|buffer1~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~188_combout\ = (!\inst|buffer1[117]~183_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(110))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(110),
	datab => \ADC_IN[2]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[117]~183_combout\,
	combout => \inst|buffer1~188_combout\);

\inst|buffer1[110]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~188_combout\,
	ena => \inst|buffer1[117]~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(110));

\inst|Equal41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~1_combout\ = (\inst|buffer1\(110) & (\inst|buffer1\(122) & (\inst|buffer1\(111) $ (!\inst|buffer1\(123))))) # (!\inst|buffer1\(110) & (!\inst|buffer1\(122) & (\inst|buffer1\(111) $ (!\inst|buffer1\(123)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(110),
	datab => \inst|buffer1\(111),
	datac => \inst|buffer1\(123),
	datad => \inst|buffer1\(122),
	combout => \inst|Equal41~1_combout\);

\inst|Equal41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~2_combout\ = (\inst|buffer1\(112) & (\inst|buffer1\(124) & (\inst|buffer1\(113) $ (!\inst|buffer1\(125))))) # (!\inst|buffer1\(112) & (!\inst|buffer1\(124) & (\inst|buffer1\(113) $ (!\inst|buffer1\(125)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(112),
	datab => \inst|buffer1\(113),
	datac => \inst|buffer1\(125),
	datad => \inst|buffer1\(124),
	combout => \inst|Equal41~2_combout\);

\inst|Equal41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~3_combout\ = (\inst|buffer1\(114) & (\inst|buffer1\(126) & (\inst|buffer1\(115) $ (!\inst|buffer1\(127))))) # (!\inst|buffer1\(114) & (!\inst|buffer1\(126) & (\inst|buffer1\(115) $ (!\inst|buffer1\(127)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(114),
	datab => \inst|buffer1\(115),
	datac => \inst|buffer1\(127),
	datad => \inst|buffer1\(126),
	combout => \inst|Equal41~3_combout\);

\inst|Equal41~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~4_combout\ = (\inst|Equal41~0_combout\ & (\inst|Equal41~1_combout\ & (\inst|Equal41~2_combout\ & \inst|Equal41~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal41~0_combout\,
	datab => \inst|Equal41~1_combout\,
	datac => \inst|Equal41~2_combout\,
	datad => \inst|Equal41~3_combout\,
	combout => \inst|Equal41~4_combout\);

\inst|Equal41~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~5_combout\ = (\inst|buffer1\(116) & (\inst|buffer1\(128) & (\inst|buffer1\(117) $ (!\inst|buffer1\(129))))) # (!\inst|buffer1\(116) & (!\inst|buffer1\(128) & (\inst|buffer1\(117) $ (!\inst|buffer1\(129)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(116),
	datab => \inst|buffer1\(117),
	datac => \inst|buffer1\(129),
	datad => \inst|buffer1\(128),
	combout => \inst|Equal41~5_combout\);

\inst|Equal41~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~6_combout\ = (\inst|buffer1\(118) & (\inst|buffer1\(130) & (\inst|buffer1\(119) $ (!\inst|buffer1\(131))))) # (!\inst|buffer1\(118) & (!\inst|buffer1\(130) & (\inst|buffer1\(119) $ (!\inst|buffer1\(131)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(118),
	datab => \inst|buffer1\(119),
	datac => \inst|buffer1\(131),
	datad => \inst|buffer1\(130),
	combout => \inst|Equal41~6_combout\);

\inst|Equal41~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal41~7_combout\ = (\inst|Equal41~4_combout\ & (\inst|Equal41~5_combout\ & \inst|Equal41~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal41~4_combout\,
	datab => \inst|Equal41~5_combout\,
	datac => \inst|Equal41~6_combout\,
	combout => \inst|Equal41~7_combout\);

\inst|buffer1[120]~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[120]~222_combout\ = (\inst|counter\(2) & (!\inst|counter\(1) & (\inst|Equal32~1_combout\ & \inst|Equal41~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|Equal32~1_combout\,
	datad => \inst|Equal41~7_combout\,
	combout => \inst|buffer1[120]~222_combout\);

\inst|buffer1[120]~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[120]~198_combout\ = (\inst1|OUTPUT\(0)) # ((\inst|buffer1[120]~222_combout\ & !\inst1|OUTPUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst|buffer1[120]~222_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1[120]~198_combout\);

\inst|buffer1~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~202_combout\ = (!\inst|buffer1[120]~198_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(121))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(121),
	datab => \ADC_IN[1]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[120]~198_combout\,
	combout => \inst|buffer1~202_combout\);

\inst|buffer1[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~202_combout\,
	ena => \inst|buffer1[120]~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(121));

\inst|bufferout[121]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(121),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(121));

\inst2|buffer1[109]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(109) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(121))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(109))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(121),
	datac => \inst2|buffer1\(109),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(109));

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

\inst|buffer1~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~187_combout\ = (!\inst|buffer1[117]~183_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(109))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(109),
	datab => \ADC_IN[1]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[117]~183_combout\,
	combout => \inst|buffer1~187_combout\);

\inst|buffer1[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~187_combout\,
	ena => \inst|buffer1[117]~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(109));

\inst|bufferout[109]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(109),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(109));

\inst2|buffer1[97]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(97) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(109))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(97))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(109),
	datac => \inst2|buffer1\(97),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(97));

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

\inst|buffer1~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~163_combout\ = (!\inst|buffer1[107]~150_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(97))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(97),
	datab => \ADC_IN[1]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[107]~150_combout\,
	combout => \inst|buffer1~163_combout\);

\inst|buffer1[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~163_combout\,
	ena => \inst|buffer1[107]~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(97));

\inst|bufferout[97]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(97),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(97));

\inst2|buffer1[85]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(85) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(97))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(85))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(97),
	datac => \inst2|buffer1\(85),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(85));

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

\inst|buffer1~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~148_combout\ = (!\inst|buffer1[84]~135_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(85))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(85),
	datab => \ADC_IN[1]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[84]~135_combout\,
	combout => \inst|buffer1~148_combout\);

\inst|buffer1[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~148_combout\,
	ena => \inst|buffer1[84]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(85));

\inst|bufferout[85]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(85),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(85));

\inst2|buffer1[73]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(73) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(85))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(73))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(85),
	datac => \inst2|buffer1\(73),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(73));

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

\inst|buffer1~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~133_combout\ = (!\inst|buffer1[72]~118_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(73))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(73),
	datab => \ADC_IN[1]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[72]~118_combout\,
	combout => \inst|buffer1~133_combout\);

\inst|buffer1[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~133_combout\,
	ena => \inst|buffer1[72]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(73));

\inst|bufferout[73]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(73),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(73));

\inst2|buffer1[61]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(61) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(73))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(61))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(73),
	datac => \inst2|buffer1\(61),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(61));

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

\inst|buffer1~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~116_combout\ = (!\inst|buffer1[60]~102_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(61))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(61),
	datab => \ADC_IN[1]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[60]~102_combout\,
	combout => \inst|buffer1~116_combout\);

\inst|buffer1[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~116_combout\,
	ena => \inst|buffer1[60]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(61));

\inst|bufferout[61]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(61),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(61));

\inst2|buffer1[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(49) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(61))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(49))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(61),
	datac => \inst2|buffer1\(49),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(49));

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

\inst|buffer1~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~100_combout\ = (!\inst|buffer1[59]~86_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(49))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(49),
	datab => \ADC_IN[1]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[59]~86_combout\,
	combout => \inst|buffer1~100_combout\);

\inst|buffer1[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~100_combout\,
	ena => \inst|buffer1[59]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(49));

\inst|bufferout[49]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(49),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(49));

\inst2|buffer1[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(37) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(49))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(49),
	datac => \inst2|buffer1\(37),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(37));

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

\inst|buffer1~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~83_combout\ = (!\inst|buffer1[36]~69_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(37))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(37),
	datab => \ADC_IN[1]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[36]~69_combout\,
	combout => \inst|buffer1~83_combout\);

\inst|buffer1[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~83_combout\,
	ena => \inst|buffer1[36]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(37));

\inst|bufferout[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(37),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(37));

\inst2|buffer1[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(25) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(37))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(37),
	datac => \inst2|buffer1\(25),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(25));

\inst2|bufferout[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(25) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(25))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(25),
	datac => \inst2|bufferout\(25),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(25));

\inst|buffer1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~66_combout\ = (!\inst|buffer1[24]~52_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(25))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(25),
	datab => \ADC_IN[1]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[24]~52_combout\,
	combout => \inst|buffer1~66_combout\);

\inst|buffer1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~66_combout\,
	ena => \inst|buffer1[24]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(25));

\inst|bufferout[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(25),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(25));

\inst2|buffer1[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(13) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(25))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(25),
	datac => \inst2|buffer1\(13),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(13));

\inst2|bufferout[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(13) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(13))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(13),
	datac => \inst2|bufferout\(13),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(13));

\inst|buffer1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~50_combout\ = (!\inst|buffer1[23]~35_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(13))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(13),
	datab => \ADC_IN[1]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[23]~35_combout\,
	combout => \inst|buffer1~50_combout\);

\inst|buffer1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~50_combout\,
	ena => \inst|buffer1[23]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(13));

\inst|bufferout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(13),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(13));

\inst2|buffer1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(1) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(13))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(13),
	datac => \inst2|buffer1\(1),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(1));

\inst2|bufferout[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(1) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(1))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(1),
	datac => \inst2|bufferout\(1),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(1));

\inst|buffer1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~33_combout\ = (\inst1|OUTPUT\(3) & (\inst2|bufferout\(1))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(1),
	datab => \ADC_IN[1]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~33_combout\);

\inst|bufferout[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(22),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(22));

\inst2|buffer1[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(10) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(22))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(22),
	datac => \inst2|buffer1\(10),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(10));

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

\inst|buffer1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~24_combout\ = (\inst1|OUTPUT\(3) & (\inst2|bufferout\(10))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(10),
	datab => \ADC_IN[10]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~24_combout\);

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
	ena => \inst|buffer1[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(10));

\inst|bufferout[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(21),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(21));

\inst2|buffer1[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(9) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(21))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(21),
	datac => \inst2|buffer1\(9),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(9));

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

\inst|buffer1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~25_combout\ = (\inst1|OUTPUT\(3) & (\inst2|bufferout\(9))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(9),
	datab => \ADC_IN[9]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~25_combout\);

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
	ena => \inst|buffer1[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(9));

\inst|bufferout[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(20),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(20));

\inst2|buffer1[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(8) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(20))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(20),
	datac => \inst2|buffer1\(8),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(8));

\inst2|bufferout[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(8) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(8))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(8),
	datac => \inst2|bufferout\(8),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(8));

\inst|buffer1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~26_combout\ = (\inst1|OUTPUT\(3) & (\inst2|bufferout\(8))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(8),
	datab => \ADC_IN[8]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~26_combout\);

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
	ena => \inst|buffer1[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(8));

\inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst|buffer1\(11)) # ((\inst|buffer1\(10)) # ((\inst|buffer1\(9)) # (\inst|buffer1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(11),
	datab => \inst|buffer1\(10),
	datac => \inst|buffer1\(9),
	datad => \inst|buffer1\(8),
	combout => \inst|Equal1~0_combout\);

\inst|bufferout[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(19),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(19));

\inst2|buffer1[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(7) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(19))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(19),
	datac => \inst2|buffer1\(7),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(7));

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

\inst|buffer1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~27_combout\ = (\inst1|OUTPUT\(3) & (\inst2|bufferout\(7))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(7),
	datab => \ADC_IN[7]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~27_combout\);

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
	ena => \inst|buffer1[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(7));

\inst|bufferout[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(18),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(18));

\inst2|buffer1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(6) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(18))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(18),
	datac => \inst2|buffer1\(6),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(6));

\inst2|bufferout[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(6) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(6))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(6),
	datac => \inst2|bufferout\(6),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(6));

\inst|buffer1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~28_combout\ = (\inst1|OUTPUT\(3) & (\inst2|bufferout\(6))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(6),
	datab => \ADC_IN[6]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~28_combout\);

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
	ena => \inst|buffer1[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(6));

\inst|bufferout[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(17),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(17));

\inst2|buffer1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(5) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(17))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(17),
	datac => \inst2|buffer1\(5),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(5));

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

\inst|buffer1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~29_combout\ = (\inst1|OUTPUT\(3) & (\inst2|bufferout\(5))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(5),
	datab => \ADC_IN[5]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~29_combout\);

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
	ena => \inst|buffer1[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(5));

\inst|bufferout[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(16),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(16));

\inst2|buffer1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(4) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(16))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(16),
	datac => \inst2|buffer1\(4),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(4));

\inst2|bufferout[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(4) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(4))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(4),
	datac => \inst2|bufferout\(4),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(4));

\inst|buffer1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~30_combout\ = (\inst1|OUTPUT\(3) & (\inst2|bufferout\(4))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(4),
	datab => \ADC_IN[4]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~30_combout\);

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
	ena => \inst|buffer1[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(4));

\inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (\inst|buffer1\(7)) # ((\inst|buffer1\(6)) # ((\inst|buffer1\(5)) # (\inst|buffer1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(7),
	datab => \inst|buffer1\(6),
	datac => \inst|buffer1\(5),
	datad => \inst|buffer1\(4),
	combout => \inst|Equal1~1_combout\);

\inst|bufferout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(15),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(15));

\inst2|buffer1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(3) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(15))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(15),
	datac => \inst2|buffer1\(3),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(3));

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

\inst|buffer1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~31_combout\ = (\inst1|OUTPUT\(3) & (\inst2|bufferout\(3))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(3),
	datab => \ADC_IN[3]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~31_combout\);

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
	ena => \inst|buffer1[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(3));

\inst|bufferout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(14),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(14));

\inst2|buffer1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(2) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(14))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(14),
	datac => \inst2|buffer1\(2),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(2));

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

\inst|buffer1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~32_combout\ = (\inst1|OUTPUT\(3) & (\inst2|bufferout\(2))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(2),
	datab => \ADC_IN[2]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~32_combout\);

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
	ena => \inst|buffer1[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(2));

\inst|bufferout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(12),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(12));

\inst2|buffer1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(0) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(12))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(12),
	datac => \inst2|buffer1\(0),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(0));

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

\inst|buffer1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~34_combout\ = (\inst1|OUTPUT\(3) & (\inst2|bufferout\(0))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(0),
	datab => \ADC_IN[0]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~34_combout\);

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
	ena => \inst|buffer1[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(0));

\inst|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~2_combout\ = (\inst|buffer1\(3)) # ((\inst|buffer1\(2)) # ((\inst|buffer1\(1)) # (\inst|buffer1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(3),
	datab => \inst|buffer1\(2),
	datac => \inst|buffer1\(1),
	datad => \inst|buffer1\(0),
	combout => \inst|Equal1~2_combout\);

\inst|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~3_combout\ = (\inst|Equal1~0_combout\) # ((\inst|Equal1~1_combout\) # (\inst|Equal1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|Equal1~1_combout\,
	datac => \inst|Equal1~2_combout\,
	combout => \inst|Equal1~3_combout\);

\inst|buffer1~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~213_combout\ = (\inst|counter\(2)) # ((\inst|counter\(1)) # ((\inst|Equal1~3_combout\) # (!\inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|Equal1~3_combout\,
	datad => \inst|Equal4~0_combout\,
	combout => \inst|buffer1~213_combout\);

\inst|buffer1[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[1]~23_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & ((\inst1|OUTPUT\(3)) # (!\inst|buffer1~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~213_combout\,
	datab => \inst1|OUTPUT\(3),
	datac => \inst1|OUTPUT\(1),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1[1]~23_combout\);

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
	ena => \inst|buffer1[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(1));

\inst|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~0_combout\ = (\inst|buffer1\(1) & (\inst|buffer1\(13) & (\inst|buffer1\(0) $ (!\inst|buffer1\(12))))) # (!\inst|buffer1\(1) & (!\inst|buffer1\(13) & (\inst|buffer1\(0) $ (!\inst|buffer1\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(1),
	datab => \inst|buffer1\(0),
	datac => \inst|buffer1\(12),
	datad => \inst|buffer1\(13),
	combout => \inst|Equal5~0_combout\);

\inst|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~1_combout\ = (\inst|buffer1\(3) & (\inst|buffer1\(15) & (\inst|buffer1\(2) $ (!\inst|buffer1\(14))))) # (!\inst|buffer1\(3) & (!\inst|buffer1\(15) & (\inst|buffer1\(2) $ (!\inst|buffer1\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(3),
	datab => \inst|buffer1\(2),
	datac => \inst|buffer1\(14),
	datad => \inst|buffer1\(15),
	combout => \inst|Equal5~1_combout\);

\inst|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~2_combout\ = (\inst|buffer1\(5) & (\inst|buffer1\(17) & (\inst|buffer1\(4) $ (!\inst|buffer1\(16))))) # (!\inst|buffer1\(5) & (!\inst|buffer1\(17) & (\inst|buffer1\(4) $ (!\inst|buffer1\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(5),
	datab => \inst|buffer1\(4),
	datac => \inst|buffer1\(16),
	datad => \inst|buffer1\(17),
	combout => \inst|Equal5~2_combout\);

\inst|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~3_combout\ = (\inst|buffer1\(7) & (\inst|buffer1\(19) & (\inst|buffer1\(6) $ (!\inst|buffer1\(18))))) # (!\inst|buffer1\(7) & (!\inst|buffer1\(19) & (\inst|buffer1\(6) $ (!\inst|buffer1\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(7),
	datab => \inst|buffer1\(6),
	datac => \inst|buffer1\(18),
	datad => \inst|buffer1\(19),
	combout => \inst|Equal5~3_combout\);

\inst|Equal5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~4_combout\ = (\inst|Equal5~0_combout\ & (\inst|Equal5~1_combout\ & (\inst|Equal5~2_combout\ & \inst|Equal5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~0_combout\,
	datab => \inst|Equal5~1_combout\,
	datac => \inst|Equal5~2_combout\,
	datad => \inst|Equal5~3_combout\,
	combout => \inst|Equal5~4_combout\);

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

\inst|Equal5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~6_combout\ = (\inst|buffer1\(11) & (\inst|buffer1\(23) & (\inst|buffer1\(10) $ (!\inst|buffer1\(22))))) # (!\inst|buffer1\(11) & (!\inst|buffer1\(23) & (\inst|buffer1\(10) $ (!\inst|buffer1\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(11),
	datab => \inst|buffer1\(10),
	datac => \inst|buffer1\(22),
	datad => \inst|buffer1\(23),
	combout => \inst|Equal5~6_combout\);

\inst|Equal5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~7_combout\ = (\inst|Equal5~4_combout\ & (\inst|Equal5~5_combout\ & \inst|Equal5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~4_combout\,
	datab => \inst|Equal5~5_combout\,
	datac => \inst|Equal5~6_combout\,
	combout => \inst|Equal5~7_combout\);

\inst|buffer1[23]~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[23]~214_combout\ = (\inst|counter\(1) & (!\inst|counter\(2) & (\inst|Equal4~0_combout\ & \inst|Equal5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(2),
	datac => \inst|Equal4~0_combout\,
	datad => \inst|Equal5~7_combout\,
	combout => \inst|buffer1[23]~214_combout\);

\inst|BufferCount~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~3_combout\ = (\inst|buffer1[23]~214_combout\) # ((\inst|buffer1~71_combout\) # ((\inst|buffer1~217_combout\) # (\inst|buffer1~220_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[23]~214_combout\,
	datab => \inst|buffer1~71_combout\,
	datac => \inst|buffer1~217_combout\,
	datad => \inst|buffer1~220_combout\,
	combout => \inst|BufferCount~3_combout\);

\inst|BufferCount~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~4_combout\ = (!\inst|buffer1~168_combout\ & ((\inst|buffer1~167_combout\) # ((\inst|BufferCount~3_combout\ & !\inst|buffer1~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~167_combout\,
	datab => \inst|BufferCount~3_combout\,
	datac => \inst|buffer1~221_combout\,
	datad => \inst|buffer1~168_combout\,
	combout => \inst|BufferCount~4_combout\);

\inst|BufferCount~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~5_combout\ = (!\inst|Equal46~1_combout\ & ((\inst|buffer1~166_combout\) # (\inst|BufferCount~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~166_combout\,
	datab => \inst|BufferCount~4_combout\,
	datad => \inst|Equal46~1_combout\,
	combout => \inst|BufferCount~5_combout\);

\inst|buffer10[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer10[11]~0_combout\ = (\inst1|OUTPUT\(1) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer10[11]~0_combout\);

\inst|counter~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~67_combout\ = (!\inst|buffer1~221_combout\ & !\inst|buffer1~167_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buffer1~221_combout\,
	datad => \inst|buffer1~167_combout\,
	combout => \inst|counter~67_combout\);

\inst|BufferCount~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~0_combout\ = (!\inst|buffer1~88_combout\ & (((!\inst|Equal19~3_combout\) # (!\inst|buffer1~104_combout\)) # (!\inst|Equal16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal16~0_combout\,
	datab => \inst|buffer1~104_combout\,
	datac => \inst|Equal19~3_combout\,
	datad => \inst|buffer1~88_combout\,
	combout => \inst|BufferCount~0_combout\);

\inst|BufferCount~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~1_combout\ = (!\inst|buffer1~55_combout\ & (!\inst|buffer1~122_combout\ & (!\inst|buffer1~166_combout\ & !\inst|buffer1~168_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~55_combout\,
	datab => \inst|buffer1~122_combout\,
	datac => \inst|buffer1~166_combout\,
	datad => \inst|buffer1~168_combout\,
	combout => \inst|BufferCount~1_combout\);

\inst|counter[10]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[10]~70_combout\ = (\inst|buffer1~213_combout\ & (!\inst|buffer1~71_combout\ & !\inst|buffer1~220_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~213_combout\,
	datab => \inst|buffer1~71_combout\,
	datac => \inst|buffer1~220_combout\,
	combout => \inst|counter[10]~70_combout\);

\inst|counter[10]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[10]~71_combout\ = (\inst|counter~67_combout\ & (\inst|BufferCount~0_combout\ & (\inst|BufferCount~1_combout\ & \inst|counter[10]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~67_combout\,
	datab => \inst|BufferCount~0_combout\,
	datac => \inst|BufferCount~1_combout\,
	datad => \inst|counter[10]~70_combout\,
	combout => \inst|counter[10]~71_combout\);

\inst|BufferCount[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount[3]~6_combout\ = (\inst|buffer10[11]~0_combout\ & ((\inst|buffer1[23]~214_combout\) # ((\inst|Equal46~1_combout\) # (!\inst|counter[10]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer10[11]~0_combout\,
	datab => \inst|buffer1[23]~214_combout\,
	datac => \inst|Equal46~1_combout\,
	datad => \inst|counter[10]~71_combout\,
	combout => \inst|BufferCount[3]~6_combout\);

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

\inst|BufferCheck[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCount\(0),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCheck\(0));

\inst1|Current~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Current~1_combout\ = (\inst|BufferCheck\(0) & ((\inst1|Equal0~1_combout\) # (!\inst1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BufferCheck\(0),
	datab => \inst1|Equal0~1_combout\,
	datad => \inst1|Equal2~0_combout\,
	combout => \inst1|Current~1_combout\);

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

\inst|BufferCount~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~2_combout\ = ((\inst|buffer1~71_combout\) # (\inst|buffer1~220_combout\)) # (!\inst|BufferCount~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BufferCount~1_combout\,
	datac => \inst|buffer1~71_combout\,
	datad => \inst|buffer1~220_combout\,
	combout => \inst|BufferCount~2_combout\);

\inst|BufferCount[1]\ : dffeas
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
	q => \inst|BufferCount\(1));

\inst|BufferCheck[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCount\(1),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCheck\(1));

\inst1|Current~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Current~2_combout\ = (\inst|BufferCheck\(1) & ((\inst1|Equal0~1_combout\) # (!\inst1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BufferCheck\(1),
	datab => \inst1|Equal0~1_combout\,
	datad => \inst1|Equal2~0_combout\,
	combout => \inst1|Current~2_combout\);

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

\inst|BufferCount~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~7_combout\ = (\inst|buffer1~122_combout\) # ((\inst|buffer1~220_combout\) # ((\inst|Equal46~1_combout\) # (!\inst|BufferCount~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~122_combout\,
	datab => \inst|buffer1~220_combout\,
	datac => \inst|Equal46~1_combout\,
	datad => \inst|BufferCount~0_combout\,
	combout => \inst|BufferCount~7_combout\);

\inst|BufferCount[2]\ : dffeas
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
	q => \inst|BufferCount\(2));

\inst|BufferCheck[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCount\(2),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCheck\(2));

\inst1|Current~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Current~3_combout\ = (\inst|BufferCheck\(2)) # ((\inst1|Equal2~0_combout\ & !\inst1|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BufferCheck\(2),
	datab => \inst1|Equal2~0_combout\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|Current~3_combout\);

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

\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = ((!\inst1|Current\(0) & !\inst1|Current\(1))) # (!\inst1|Current\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Current\(0),
	datac => \inst1|Current\(1),
	datad => \inst1|Current\(2),
	combout => \inst1|Add0~0_combout\);

\inst1|SPACE_AVAILABLE~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~6_combout\ = (!\inst1|Add0~0_combout\ & (\inst1|Current\(3) & ((\inst1|Equal0~1_combout\) # (!\inst1|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~0_combout\,
	datab => \inst1|Equal2~0_combout\,
	datac => \inst1|Equal0~1_combout\,
	datad => \inst1|Current\(3),
	combout => \inst1|SPACE_AVAILABLE~6_combout\);

\inst1|SPACE_AVAILABLE[4]\ : dffeas
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
	q => \inst1|SPACE_AVAILABLE\(4));

\inst1|SPACE_AVAILABLE~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~7_combout\ = (\inst1|Equal2~0_combout\ & (((\inst1|SPACE_AVAILABLE\(4)) # (\inst1|SPACE_AVAILABLE\(10))) # (!\inst1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|SPACE_AVAILABLE\(4),
	datac => \inst1|SPACE_AVAILABLE\(10),
	datad => \inst1|Equal2~0_combout\,
	combout => \inst1|SPACE_AVAILABLE~7_combout\);

\inst1|OUTPUT[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[0]~13_combout\ = (\inst1|Equal1~1_combout\ & (\inst1|OUTPUT\(0))) # (!\inst1|Equal1~1_combout\ & ((\inst1|SPACE_AVAILABLE~7_combout\) # ((\inst1|OUTPUT\(0) & !\inst1|OUTPUT[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst1|SPACE_AVAILABLE~7_combout\,
	datac => \inst1|OUTPUT[0]~16_combout\,
	datad => \inst1|Equal1~1_combout\,
	combout => \inst1|OUTPUT[0]~13_combout\);

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

\inst|buffer1~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~170_combout\ = (\ADC_IN[0]~input_o\ & (\inst|buffer1[135]~169_combout\ & (!\inst1|OUTPUT\(3) & !\inst1|OUTPUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[0]~input_o\,
	datab => \inst|buffer1[135]~169_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1~170_combout\);

\inst|buffer1[132]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~170_combout\,
	ena => \inst|buffer1[135]~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(132));

\inst|bufferout[132]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(132),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(132));

\inst2|buffer1[120]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(120) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(132))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(120))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(132),
	datac => \inst2|buffer1\(120),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(120));

\inst2|bufferout[120]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(120) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(120))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(120))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(120),
	datac => \inst2|bufferout\(120),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(120));

\inst|buffer1~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~199_combout\ = (!\inst|buffer1[120]~198_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(120))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(120),
	datab => \ADC_IN[0]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[120]~198_combout\,
	combout => \inst|buffer1~199_combout\);

\inst|buffer1[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~199_combout\,
	ena => \inst|buffer1[120]~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(120));

\inst|bufferout[120]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(120),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(120));

\inst2|buffer1[108]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(108) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(120))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(108))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(120),
	datac => \inst2|buffer1\(108),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(108));

\inst2|bufferout[108]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(108) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(108))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(108))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(108),
	datac => \inst2|bufferout\(108),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(108));

\inst|buffer1~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~184_combout\ = (!\inst|buffer1[117]~183_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(108))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(108),
	datab => \ADC_IN[0]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[117]~183_combout\,
	combout => \inst|buffer1~184_combout\);

\inst|buffer1[108]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~184_combout\,
	ena => \inst|buffer1[117]~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(108));

\inst|Equal35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal35~0_combout\ = (!\inst|buffer1\(108) & (!\inst|buffer1\(109) & (!\inst|buffer1\(110) & !\inst|buffer1\(111))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(108),
	datab => \inst|buffer1\(109),
	datac => \inst|buffer1\(110),
	datad => \inst|buffer1\(111),
	combout => \inst|Equal35~0_combout\);

\inst|Equal35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal35~1_combout\ = (!\inst|buffer1\(112) & (!\inst|buffer1\(113) & (!\inst|buffer1\(114) & !\inst|buffer1\(115))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(112),
	datab => \inst|buffer1\(113),
	datac => \inst|buffer1\(114),
	datad => \inst|buffer1\(115),
	combout => \inst|Equal35~1_combout\);

\inst|Equal35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal35~2_combout\ = (!\inst|buffer1\(116) & (!\inst|buffer1\(117) & (!\inst|buffer1\(118) & !\inst|buffer1\(119))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(116),
	datab => \inst|buffer1\(117),
	datac => \inst|buffer1\(118),
	datad => \inst|buffer1\(119),
	combout => \inst|Equal35~2_combout\);

\inst|Equal35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal35~3_combout\ = (\inst|Equal35~0_combout\ & (\inst|Equal35~1_combout\ & \inst|Equal35~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal35~0_combout\,
	datab => \inst|Equal35~1_combout\,
	datac => \inst|Equal35~2_combout\,
	combout => \inst|Equal35~3_combout\);

\inst|buffer1~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~167_combout\ = (\inst|counter\(4) & (\inst|Equal16~0_combout\ & (\inst|buffer1~38_combout\ & \inst|Equal35~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|Equal16~0_combout\,
	datac => \inst|buffer1~38_combout\,
	datad => \inst|Equal35~3_combout\,
	combout => \inst|buffer1~167_combout\);

\inst|counter~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~29_combout\ = (!\inst|buffer1~221_combout\ & (!\inst|buffer1~167_combout\ & !\inst|buffer1~168_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buffer1~221_combout\,
	datac => \inst|buffer1~167_combout\,
	datad => \inst|buffer1~168_combout\,
	combout => \inst|counter~29_combout\);

\inst|BufferCount~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~8_combout\ = (\inst|buffer1~166_combout\) # ((\inst|Equal46~1_combout\) # (!\inst|counter~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~166_combout\,
	datab => \inst|Equal46~1_combout\,
	datad => \inst|counter~29_combout\,
	combout => \inst|BufferCount~8_combout\);

\inst|BufferCount[3]\ : dffeas
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
	q => \inst|BufferCount\(3));

\inst|BufferCheck[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCount\(3),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCheck\(3));

\inst1|Current~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Current~0_combout\ = (\inst|BufferCheck\(3)) # ((\inst1|Equal2~0_combout\ & !\inst1|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BufferCheck\(3),
	datab => \inst1|Equal2~0_combout\,
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|Current~0_combout\);

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

\inst1|SPACE_AVAILABLE~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~2_combout\ = (\inst1|Equal2~0_combout\ & ((\inst1|Current\(3) $ (\inst1|Add0~0_combout\)) # (!\inst1|Equal0~1_combout\))) # (!\inst1|Equal2~0_combout\ & ((\inst1|Current\(3) $ (\inst1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~0_combout\,
	datab => \inst1|Equal0~1_combout\,
	datac => \inst1|Current\(3),
	datad => \inst1|Add0~0_combout\,
	combout => \inst1|SPACE_AVAILABLE~2_combout\);

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

\inst1|SPACE_AVAILABLE~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~3_combout\ = (\inst1|SPACE_AVAILABLE~7_combout\) # (\inst1|Current\(2) $ (((!\inst1|Current\(0) & !\inst1|Current\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SPACE_AVAILABLE~7_combout\,
	datab => \inst1|Current\(2),
	datac => \inst1|Current\(0),
	datad => \inst1|Current\(1),
	combout => \inst1|SPACE_AVAILABLE~3_combout\);

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

\inst1|SPACE_AVAILABLE~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~4_combout\ = (\inst1|Equal0~1_combout\ & ((\inst1|Current\(0) $ (\inst1|Current\(1))))) # (!\inst1|Equal0~1_combout\ & (!\inst1|Equal2~0_combout\ & (\inst1|Current\(0) $ (\inst1|Current\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~1_combout\,
	datab => \inst1|Equal2~0_combout\,
	datac => \inst1|Current\(0),
	datad => \inst1|Current\(1),
	combout => \inst1|SPACE_AVAILABLE~4_combout\);

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

\inst1|SPACE_AVAILABLE~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~5_combout\ = (\inst1|Current\(0) & ((\inst1|Equal0~1_combout\) # (!\inst1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Current\(0),
	datab => \inst1|Equal0~1_combout\,
	datad => \inst1|Equal2~0_combout\,
	combout => \inst1|SPACE_AVAILABLE~5_combout\);

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

\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|SPACE_AVAILABLE\(3) & (!\inst1|SPACE_AVAILABLE\(2) & (!\inst1|SPACE_AVAILABLE\(1) & !\inst1|SPACE_AVAILABLE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SPACE_AVAILABLE\(3),
	datab => \inst1|SPACE_AVAILABLE\(2),
	datac => \inst1|SPACE_AVAILABLE\(1),
	datad => \inst1|SPACE_AVAILABLE\(0),
	combout => \inst1|Equal0~0_combout\);

\inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (\inst1|Equal0~0_combout\ & (!\inst1|SPACE_AVAILABLE\(4) & !\inst1|SPACE_AVAILABLE\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datac => \inst1|SPACE_AVAILABLE\(4),
	datad => \inst1|SPACE_AVAILABLE\(10),
	combout => \inst1|Equal0~1_combout\);

\inst1|OUTPUT[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[3]~10_combout\ = (!\inst1|Equal0~1_combout\ & ((\inst1|OUTPUT~7_combout\) # (!\inst1|OUTPUT~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~1_combout\,
	datab => \inst1|OUTPUT~15_combout\,
	datad => \inst1|OUTPUT~7_combout\,
	combout => \inst1|OUTPUT[3]~10_combout\);

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

\inst|counter~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~17_combout\ = (\inst|Equal16~1_combout\ & (((!\inst|Equal17~7_combout\)))) # (!\inst|Equal16~1_combout\ & ((\inst|counter\(3)) # ((\inst|buffer1~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datab => \inst|buffer1~88_combout\,
	datac => \inst|Equal16~1_combout\,
	datad => \inst|Equal17~7_combout\,
	combout => \inst|counter~17_combout\);

\inst|counter~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~18_combout\ = (\inst|Equal32~0_combout\ & (\inst|Equal33~7_combout\)) # (!\inst|Equal32~0_combout\ & (((\inst|counter~17_combout\ & !\inst|buffer1~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal33~7_combout\,
	datab => \inst|Equal32~0_combout\,
	datac => \inst|counter~17_combout\,
	datad => \inst|buffer1~221_combout\,
	combout => \inst|counter~18_combout\);

\inst|Equal43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal43~0_combout\ = (\inst|buffer1\(132)) # ((\inst|buffer1\(133)) # ((\inst|buffer1\(134)) # (\inst|buffer1\(135))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(132),
	datab => \inst|buffer1\(133),
	datac => \inst|buffer1\(134),
	datad => \inst|buffer1\(135),
	combout => \inst|Equal43~0_combout\);

\inst|Equal43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal43~1_combout\ = (\inst|buffer1\(136)) # ((\inst|buffer1\(137)) # ((\inst|buffer1\(138)) # (\inst|buffer1\(139))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(136),
	datab => \inst|buffer1\(137),
	datac => \inst|buffer1\(138),
	datad => \inst|buffer1\(139),
	combout => \inst|Equal43~1_combout\);

\inst|Equal43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal43~2_combout\ = (\inst|buffer1\(140)) # ((\inst|buffer1\(141)) # ((\inst|buffer1\(142)) # (\inst|buffer1\(143))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(140),
	datab => \inst|buffer1\(141),
	datac => \inst|buffer1\(142),
	datad => \inst|buffer1\(143),
	combout => \inst|Equal43~2_combout\);

\inst|Equal43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal43~3_combout\ = (\inst|Equal43~0_combout\) # ((\inst|Equal43~1_combout\) # (\inst|Equal43~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal43~0_combout\,
	datab => \inst|Equal43~1_combout\,
	datac => \inst|Equal43~2_combout\,
	combout => \inst|Equal43~3_combout\);

\inst|counter[10]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[10]~15_combout\ = (\inst|Equal43~3_combout\ & (!\inst|Equal35~3_combout\ & !\inst|Equal39~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal43~3_combout\,
	datac => \inst|Equal35~3_combout\,
	datad => \inst|Equal39~3_combout\,
	combout => \inst|counter[10]~15_combout\);

\inst|Equal23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal23~3_combout\ = (\inst|Equal23~2_combout\ & (\inst|Equal23~0_combout\ & \inst|Equal23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal23~2_combout\,
	datab => \inst|Equal23~0_combout\,
	datac => \inst|Equal23~1_combout\,
	combout => \inst|Equal23~3_combout\);

\inst|Equal31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal31~0_combout\ = (!\inst|buffer1\(99) & (!\inst|buffer1\(98) & (!\inst|buffer1\(97) & !\inst|buffer1\(96))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(99),
	datab => \inst|buffer1\(98),
	datac => \inst|buffer1\(97),
	datad => \inst|buffer1\(96),
	combout => \inst|Equal31~0_combout\);

\inst|Equal31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal31~1_combout\ = (!\inst|buffer1\(103) & (!\inst|buffer1\(102) & (!\inst|buffer1\(101) & !\inst|buffer1\(100))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(103),
	datab => \inst|buffer1\(102),
	datac => \inst|buffer1\(101),
	datad => \inst|buffer1\(100),
	combout => \inst|Equal31~1_combout\);

\inst|Equal31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal31~2_combout\ = (!\inst|buffer1\(107) & (!\inst|buffer1\(106) & (!\inst|buffer1\(105) & !\inst|buffer1\(104))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(107),
	datab => \inst|buffer1\(106),
	datac => \inst|buffer1\(105),
	datad => \inst|buffer1\(104),
	combout => \inst|Equal31~2_combout\);

\inst|Equal31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal31~3_combout\ = (\inst|Equal31~0_combout\ & (\inst|Equal31~1_combout\ & \inst|Equal31~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal31~0_combout\,
	datab => \inst|Equal31~1_combout\,
	datac => \inst|Equal31~2_combout\,
	combout => \inst|Equal31~3_combout\);

\inst|counter~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~14_combout\ = (!\inst|Equal19~3_combout\ & (!\inst|Equal23~3_combout\ & (!\inst|Equal27~3_combout\ & !\inst|Equal31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal19~3_combout\,
	datab => \inst|Equal23~3_combout\,
	datac => \inst|Equal27~3_combout\,
	datad => \inst|Equal31~3_combout\,
	combout => \inst|counter~14_combout\);

\inst|counter~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~19_combout\ = (\inst1|OUTPUT\(3) & (((\inst|counter~18_combout\ & \inst|counter[10]~15_combout\)) # (!\inst|counter~14_combout\))) # (!\inst1|OUTPUT\(3) & (\inst|counter~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~18_combout\,
	datab => \inst|counter[10]~15_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|counter~14_combout\,
	combout => \inst|counter~19_combout\);

\inst|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal3~0_combout\ = (!\inst|buffer1\(15) & (!\inst|buffer1\(14) & (!\inst|buffer1\(13) & !\inst|buffer1\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(15),
	datab => \inst|buffer1\(14),
	datac => \inst|buffer1\(13),
	datad => \inst|buffer1\(12),
	combout => \inst|Equal3~0_combout\);

\inst|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal3~1_combout\ = (!\inst|buffer1\(19) & (!\inst|buffer1\(18) & (!\inst|buffer1\(17) & !\inst|buffer1\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(19),
	datab => \inst|buffer1\(18),
	datac => \inst|buffer1\(17),
	datad => \inst|buffer1\(16),
	combout => \inst|Equal3~1_combout\);

\inst|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal3~2_combout\ = (!\inst|buffer1\(23) & (!\inst|buffer1\(22) & (!\inst|buffer1\(21) & !\inst|buffer1\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(23),
	datab => \inst|buffer1\(22),
	datac => \inst|buffer1\(21),
	datad => \inst|buffer1\(20),
	combout => \inst|Equal3~2_combout\);

\inst|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal3~3_combout\ = (\inst|Equal3~0_combout\ & (\inst|Equal3~1_combout\ & \inst|Equal3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datab => \inst|Equal3~1_combout\,
	datac => \inst|Equal3~2_combout\,
	combout => \inst|Equal3~3_combout\);

\inst|counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~12_combout\ = (\inst|Equal1~3_combout\ & (!\inst|Equal3~3_combout\ & !\inst|Equal7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~3_combout\,
	datac => \inst|Equal3~3_combout\,
	datad => \inst|Equal7~3_combout\,
	combout => \inst|counter~12_combout\);

\inst|counter~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~13_combout\ = (\inst|counter~12_combout\ & (!\inst|Equal11~3_combout\ & !\inst|Equal15~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~12_combout\,
	datac => \inst|Equal11~3_combout\,
	datad => \inst|Equal15~3_combout\,
	combout => \inst|counter~13_combout\);

\inst|counter~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~75_combout\ = (\inst|counter~19_combout\ & ((\inst1|OUTPUT\(3) & ((\inst|counter~13_combout\))) # (!\inst1|OUTPUT\(3) & (!\inst|buffer1~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(3),
	datab => \inst|buffer1~166_combout\,
	datac => \inst|counter~19_combout\,
	datad => \inst|counter~13_combout\,
	combout => \inst|counter~75_combout\);

\inst|counter[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[3]~21_combout\ = (\inst1|OUTPUT\(1)) # (\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst1|OUTPUT\(0),
	combout => \inst|counter[3]~21_combout\);

\inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter~75_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|counter[3]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(3));

\inst|Equal16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal16~2_combout\ = (\inst|counter\(3) & (!\inst|counter\(4) & !\inst|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datac => \inst|counter\(4),
	datad => \inst|counter\(0),
	combout => \inst|Equal16~2_combout\);

\inst|counter[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[10]~38_combout\ = (!\inst|Equal32~1_combout\ & (((!\inst|counter\(2) & !\inst|counter\(1))) # (!\inst|Equal16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|Equal16~2_combout\,
	datad => \inst|Equal32~1_combout\,
	combout => \inst|counter[10]~38_combout\);

\inst|counter~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~39_combout\ = (\inst|counter[10]~38_combout\ & (!\inst|buffer1~122_combout\ & !\inst|buffer1~221_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter[10]~38_combout\,
	datac => \inst|buffer1~122_combout\,
	datad => \inst|buffer1~221_combout\,
	combout => \inst|counter~39_combout\);

\inst|counter~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~40_combout\ = (\inst|counter\(1) & (!\inst|counter\(2) & (!\inst|Equal5~7_combout\ & !\inst|buffer1~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|counter\(2),
	datac => \inst|Equal5~7_combout\,
	datad => \inst|buffer1~55_combout\,
	combout => \inst|counter~40_combout\);

\inst|counter~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~41_combout\ = (\inst|buffer1[24]~215_combout\) # ((\inst|buffer1~71_combout\) # ((\inst|Equal4~0_combout\ & \inst|counter~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~0_combout\,
	datab => \inst|buffer1[24]~215_combout\,
	datac => \inst|buffer1~71_combout\,
	datad => \inst|counter~40_combout\,
	combout => \inst|counter~41_combout\);

\inst|counter~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~42_combout\ = (!\inst|Equal12~5_combout\ & (!\inst|Equal16~1_combout\ & (!\inst|buffer1~88_combout\ & \inst|counter~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal12~5_combout\,
	datab => \inst|Equal16~1_combout\,
	datac => \inst|buffer1~88_combout\,
	datad => \inst|counter~41_combout\,
	combout => \inst|counter~42_combout\);

\inst|counter~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~43_combout\ = (\inst|Equal16~1_combout\) # ((\inst|Equal13~4_combout\ & (\inst|Equal13~5_combout\ & \inst|Equal13~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal13~4_combout\,
	datab => \inst|Equal13~5_combout\,
	datac => \inst|Equal13~6_combout\,
	datad => \inst|Equal16~1_combout\,
	combout => \inst|counter~43_combout\);

\inst|counter[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[10]~44_combout\ = (\inst|counter\(2) & (((!\inst|Equal4~0_combout\)))) # (!\inst|counter\(2) & ((\inst|counter\(1) & ((!\inst|Equal4~0_combout\))) # (!\inst|counter\(1) & (!\inst|Equal16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|Equal16~2_combout\,
	datad => \inst|Equal4~0_combout\,
	combout => \inst|counter[10]~44_combout\);

\inst|counter~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~45_combout\ = (\inst|counter[10]~44_combout\ & (!\inst|buffer1~55_combout\ & ((\inst|counter\(1)) # (\inst|buffer1~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter[10]~44_combout\,
	datab => \inst|counter\(1),
	datac => \inst|buffer1~39_combout\,
	datad => \inst|buffer1~55_combout\,
	combout => \inst|counter~45_combout\);

\inst|counter~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~46_combout\ = (!\inst|buffer1~88_combout\ & ((\inst|counter~45_combout\) # ((\inst|Equal12~5_combout\ & !\inst|counter~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal12~5_combout\,
	datab => \inst|buffer1~88_combout\,
	datac => \inst|counter~43_combout\,
	datad => \inst|counter~45_combout\,
	combout => \inst|counter~46_combout\);

\inst|counter~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~47_combout\ = (\inst|buffer1[59]~85_combout\) # ((\inst|Equal16~0_combout\ & (\inst|buffer1~104_combout\ & \inst|Equal19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1[59]~85_combout\,
	datab => \inst|Equal16~0_combout\,
	datac => \inst|buffer1~104_combout\,
	datad => \inst|Equal19~3_combout\,
	combout => \inst|counter~47_combout\);

\inst|counter~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~48_combout\ = (\inst|counter~39_combout\ & ((\inst|counter~42_combout\) # ((\inst|counter~46_combout\) # (\inst|counter~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~39_combout\,
	datab => \inst|counter~42_combout\,
	datac => \inst|counter~46_combout\,
	datad => \inst|counter~47_combout\,
	combout => \inst|counter~48_combout\);

\inst|counter~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~49_combout\ = (\inst|Equal12~4_combout\ & (\inst|Equal16~2_combout\ & (!\inst|buffer1~221_combout\ & !\inst|Equal29~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal12~4_combout\,
	datab => \inst|Equal16~2_combout\,
	datac => \inst|buffer1~221_combout\,
	datad => \inst|Equal29~7_combout\,
	combout => \inst|counter~49_combout\);

\inst|counter~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~50_combout\ = (\inst|buffer1~167_combout\) # ((\inst|Equal32~0_combout\ & (\inst|Equal33~7_combout\)) # (!\inst|Equal32~0_combout\ & ((\inst|counter~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~167_combout\,
	datab => \inst|Equal32~0_combout\,
	datac => \inst|Equal33~7_combout\,
	datad => \inst|counter~49_combout\,
	combout => \inst|counter~50_combout\);

\inst|counter~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~51_combout\ = (\inst|counter~50_combout\ & (((!\inst|counter\(2) & !\inst|counter\(1))) # (!\inst|Equal32~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|Equal32~1_combout\,
	datad => \inst|counter~50_combout\,
	combout => \inst|counter~51_combout\);

\inst|counter~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~52_combout\ = (!\inst|Equal32~1_combout\ & (((!\inst|Equal16~2_combout\) # (!\inst|counter\(1))) # (!\inst|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|Equal16~2_combout\,
	datad => \inst|Equal32~1_combout\,
	combout => \inst|counter~52_combout\);

\inst|counter~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~53_combout\ = (\inst|Equal16~2_combout\ & (!\inst|counter\(2) & (!\inst|Equal21~7_combout\ & !\inst|buffer1~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal16~2_combout\,
	datab => \inst|counter\(2),
	datac => \inst|Equal21~7_combout\,
	datad => \inst|buffer1~122_combout\,
	combout => \inst|counter~53_combout\);

\inst|counter~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~54_combout\ = (\inst|buffer1[72]~218_combout\) # ((\inst|buffer1~220_combout\) # ((\inst|counter\(1) & \inst|counter~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datab => \inst|buffer1[72]~218_combout\,
	datac => \inst|buffer1~220_combout\,
	datad => \inst|counter~53_combout\,
	combout => \inst|counter~54_combout\);

\inst|counter~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~55_combout\ = (\inst|counter~51_combout\) # ((\inst|counter~52_combout\ & (\inst|counter~54_combout\ & !\inst|buffer1~221_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~51_combout\,
	datab => \inst|counter~52_combout\,
	datac => \inst|counter~54_combout\,
	datad => \inst|buffer1~221_combout\,
	combout => \inst|counter~55_combout\);

\inst|counter~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~56_combout\ = (\inst|buffer1~168_combout\) # ((\inst|Equal4~1_combout\ & (\inst|Equal32~1_combout\ & !\inst|Equal37~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~168_combout\,
	datab => \inst|Equal4~1_combout\,
	datac => \inst|Equal32~1_combout\,
	datad => \inst|Equal37~7_combout\,
	combout => \inst|counter~56_combout\);

\inst|counter~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~57_combout\ = (\inst|counter~56_combout\ & (!\inst|Equal44~0_combout\ & ((!\inst|Equal32~1_combout\) # (!\inst|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~56_combout\,
	datab => \inst|Equal8~0_combout\,
	datac => \inst|Equal32~1_combout\,
	datad => \inst|Equal44~0_combout\,
	combout => \inst|counter~57_combout\);

\inst|Equal45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal45~0_combout\ = (\inst|buffer1\(120) & (\inst|buffer1\(132) & (\inst|buffer1\(121) $ (!\inst|buffer1\(133))))) # (!\inst|buffer1\(120) & (!\inst|buffer1\(132) & (\inst|buffer1\(121) $ (!\inst|buffer1\(133)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(120),
	datab => \inst|buffer1\(121),
	datac => \inst|buffer1\(133),
	datad => \inst|buffer1\(132),
	combout => \inst|Equal45~0_combout\);

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

\inst|Equal45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal45~2_combout\ = (\inst|buffer1\(124) & (\inst|buffer1\(136) & (\inst|buffer1\(125) $ (!\inst|buffer1\(137))))) # (!\inst|buffer1\(124) & (!\inst|buffer1\(136) & (\inst|buffer1\(125) $ (!\inst|buffer1\(137)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(124),
	datab => \inst|buffer1\(125),
	datac => \inst|buffer1\(137),
	datad => \inst|buffer1\(136),
	combout => \inst|Equal45~2_combout\);

\inst|Equal45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal45~3_combout\ = (\inst|buffer1\(126) & (\inst|buffer1\(138) & (\inst|buffer1\(127) $ (!\inst|buffer1\(139))))) # (!\inst|buffer1\(126) & (!\inst|buffer1\(138) & (\inst|buffer1\(127) $ (!\inst|buffer1\(139)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(126),
	datab => \inst|buffer1\(127),
	datac => \inst|buffer1\(139),
	datad => \inst|buffer1\(138),
	combout => \inst|Equal45~3_combout\);

\inst|Equal45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal45~4_combout\ = (\inst|Equal45~0_combout\ & (\inst|Equal45~1_combout\ & (\inst|Equal45~2_combout\ & \inst|Equal45~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal45~0_combout\,
	datab => \inst|Equal45~1_combout\,
	datac => \inst|Equal45~2_combout\,
	datad => \inst|Equal45~3_combout\,
	combout => \inst|Equal45~4_combout\);

\inst|Equal45~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal45~5_combout\ = (\inst|buffer1\(128) & (\inst|buffer1\(140) & (\inst|buffer1\(129) $ (!\inst|buffer1\(141))))) # (!\inst|buffer1\(128) & (!\inst|buffer1\(140) & (\inst|buffer1\(129) $ (!\inst|buffer1\(141)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(128),
	datab => \inst|buffer1\(129),
	datac => \inst|buffer1\(141),
	datad => \inst|buffer1\(140),
	combout => \inst|Equal45~5_combout\);

\inst|Equal45~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal45~6_combout\ = (\inst|buffer1\(130) & (\inst|buffer1\(142) & (\inst|buffer1\(131) $ (!\inst|buffer1\(143))))) # (!\inst|buffer1\(130) & (!\inst|buffer1\(142) & (\inst|buffer1\(131) $ (!\inst|buffer1\(143)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(130),
	datab => \inst|buffer1\(131),
	datac => \inst|buffer1\(143),
	datad => \inst|buffer1\(142),
	combout => \inst|Equal45~6_combout\);

\inst|Equal45~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal45~7_combout\ = (\inst|Equal45~4_combout\ & (\inst|Equal45~5_combout\ & \inst|Equal45~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal45~4_combout\,
	datab => \inst|Equal45~5_combout\,
	datac => \inst|Equal45~6_combout\,
	combout => \inst|Equal45~7_combout\);

\inst|counter~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~58_combout\ = (\inst|Equal44~0_combout\ & (((!\inst|Equal45~7_combout\)))) # (!\inst|Equal44~0_combout\ & ((\inst|buffer1~166_combout\) # ((\inst|buffer1[120]~222_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~166_combout\,
	datab => \inst|buffer1[120]~222_combout\,
	datac => \inst|Equal44~0_combout\,
	datad => \inst|Equal45~7_combout\,
	combout => \inst|counter~58_combout\);

\inst|counter~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~59_combout\ = (\inst|counter~48_combout\) # ((\inst|counter~55_combout\) # ((\inst|counter~57_combout\) # (\inst|counter~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~48_combout\,
	datab => \inst|counter~55_combout\,
	datac => \inst|counter~57_combout\,
	datad => \inst|counter~58_combout\,
	combout => \inst|counter~59_combout\);

\inst|counter~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~60_combout\ = (\inst|Equal23~3_combout\) # ((!\inst|Equal27~3_combout\ & \inst|Equal31~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal23~3_combout\,
	datab => \inst|Equal27~3_combout\,
	datac => \inst|Equal31~3_combout\,
	combout => \inst|counter~60_combout\);

\inst|counter~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~61_combout\ = (!\inst|Equal11~3_combout\ & ((\inst|Equal15~3_combout\) # ((!\inst|Equal19~3_combout\ & \inst|counter~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal15~3_combout\,
	datab => \inst|Equal19~3_combout\,
	datac => \inst|Equal11~3_combout\,
	datad => \inst|counter~60_combout\,
	combout => \inst|counter~61_combout\);

\inst|counter~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~62_combout\ = (!\inst|Equal3~3_combout\ & ((\inst|Equal1~0_combout\) # ((\inst|Equal1~1_combout\) # (\inst|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|Equal1~1_combout\,
	datac => \inst|Equal1~2_combout\,
	datad => \inst|Equal3~3_combout\,
	combout => \inst|counter~62_combout\);

\inst|counter~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~63_combout\ = (\inst|Equal11~3_combout\) # ((\inst|Equal19~3_combout\) # ((\inst|Equal27~3_combout\) # (\inst|Equal35~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal11~3_combout\,
	datab => \inst|Equal19~3_combout\,
	datac => \inst|Equal27~3_combout\,
	datad => \inst|Equal35~3_combout\,
	combout => \inst|counter~63_combout\);

\inst|counter~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~64_combout\ = (!\inst|counter~63_combout\ & ((\inst|Equal39~3_combout\) # ((\inst|Equal43~3_combout\ & \inst|counter~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal39~3_combout\,
	datab => \inst|Equal43~3_combout\,
	datac => \inst|counter~59_combout\,
	datad => \inst|counter~63_combout\,
	combout => \inst|counter~64_combout\);

\inst|counter~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~65_combout\ = (\inst|counter~62_combout\ & ((\inst|Equal7~3_combout\) # ((\inst|counter~61_combout\) # (\inst|counter~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal7~3_combout\,
	datab => \inst|counter~61_combout\,
	datac => \inst|counter~62_combout\,
	datad => \inst|counter~64_combout\,
	combout => \inst|counter~65_combout\);

\inst|counter[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[1]~2_combout\ = (\inst1|OUTPUT\(3) & ((\inst|counter~65_combout\))) # (!\inst1|OUTPUT\(3) & (\inst|counter~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~59_combout\,
	datab => \inst|counter~65_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|counter[1]~2_combout\);

\inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter[1]~2_combout\,
	asdata => \inst|counter\(1),
	sclr => \inst1|OUTPUT\(0),
	sload => \inst1|ALT_INV_OUTPUT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(1));

\inst|Equal16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal16~0_combout\ = (!\inst|counter\(2) & !\inst|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|counter\(2),
	datad => \inst|counter\(1),
	combout => \inst|Equal16~0_combout\);

\inst|buffer1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~39_combout\ = (\inst|Equal16~0_combout\ & (\inst|buffer1~38_combout\ & (\inst|Equal3~3_combout\ & !\inst|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal16~0_combout\,
	datab => \inst|buffer1~38_combout\,
	datac => \inst|Equal3~3_combout\,
	datad => \inst|counter\(4),
	combout => \inst|buffer1~39_combout\);

\inst|counter~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~66_combout\ = ((!\inst|counter[10]~38_combout\) # (!\inst|counter[10]~44_combout\)) # (!\inst|buffer1~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|buffer1~39_combout\,
	datac => \inst|counter[10]~44_combout\,
	datad => \inst|counter[10]~38_combout\,
	combout => \inst|counter~66_combout\);

\inst|counter~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~78_combout\ = (!\inst|buffer1~221_combout\ & (!\inst|buffer1~167_combout\ & (\inst|BufferCount~0_combout\ & !\inst|BufferCount~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~221_combout\,
	datab => \inst|buffer1~167_combout\,
	datac => \inst|BufferCount~0_combout\,
	datad => \inst|BufferCount~2_combout\,
	combout => \inst|counter~78_combout\);

\inst|counter[10]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[10]~68_combout\ = ((\inst|counter[10]~15_combout\ & (\inst|counter~13_combout\ & \inst|counter~14_combout\))) # (!\inst1|OUTPUT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter[10]~15_combout\,
	datab => \inst|counter~13_combout\,
	datac => \inst|counter~14_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|counter[10]~68_combout\);

\inst|counter~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~69_combout\ = (\inst|counter[10]~68_combout\ & (\inst|counter~66_combout\ & (\inst|counter~78_combout\))) # (!\inst|counter[10]~68_combout\ & (((\inst|Equal1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~66_combout\,
	datab => \inst|counter~78_combout\,
	datac => \inst|Equal1~3_combout\,
	datad => \inst|counter[10]~68_combout\,
	combout => \inst|counter~69_combout\);

\inst|counter[10]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[10]~72_combout\ = (\inst|counter[10]~44_combout\ & (\inst|counter[10]~38_combout\ & (\inst|counter[10]~71_combout\ & !\inst|buffer1~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter[10]~44_combout\,
	datab => \inst|counter[10]~38_combout\,
	datac => \inst|counter[10]~71_combout\,
	datad => \inst|buffer1~39_combout\,
	combout => \inst|counter[10]~72_combout\);

\inst|counter[10]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[10]~73_combout\ = (\inst1|OUTPUT\(3) & (((!\inst|counter~14_combout\) # (!\inst|counter~13_combout\)) # (!\inst|counter[10]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter[10]~15_combout\,
	datab => \inst|counter~13_combout\,
	datac => \inst|counter~14_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|counter[10]~73_combout\);

\inst|counter[10]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[10]~74_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & ((\inst|counter[10]~73_combout\) # (!\inst|counter[10]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst1|OUTPUT\(0),
	datac => \inst|counter[10]~72_combout\,
	datad => \inst|counter[10]~73_combout\,
	combout => \inst|counter[10]~74_combout\);

\inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter~69_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|counter[10]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(0));

\inst|buffer1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~38_combout\ = (\inst|counter\(0) & !\inst|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datad => \inst|counter\(3),
	combout => \inst|buffer1~38_combout\);

\inst|buffer1~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~165_combout\ = (\inst|counter\(4) & (!\inst|Equal43~0_combout\ & !\inst|Equal43~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|Equal43~0_combout\,
	datac => \inst|Equal43~2_combout\,
	combout => \inst|buffer1~165_combout\);

\inst|buffer1~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~166_combout\ = (\inst|buffer1~38_combout\ & (\inst|Equal8~0_combout\ & (!\inst|Equal43~1_combout\ & \inst|buffer1~165_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~38_combout\,
	datab => \inst|Equal8~0_combout\,
	datac => \inst|Equal43~1_combout\,
	datad => \inst|buffer1~165_combout\,
	combout => \inst|buffer1~166_combout\);

\inst|counter~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~22_combout\ = ((!\inst|Equal12~4_combout\ & ((\inst|Equal41~7_combout\) # (!\inst|Equal8~0_combout\)))) # (!\inst|Equal32~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal41~7_combout\,
	datab => \inst|Equal8~0_combout\,
	datac => \inst|Equal12~4_combout\,
	datad => \inst|Equal32~1_combout\,
	combout => \inst|counter~22_combout\);

\inst|counter~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~23_combout\ = (\inst|Equal32~1_combout\ & (\inst|Equal33~7_combout\ & (!\inst|counter\(2) & !\inst|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal32~1_combout\,
	datab => \inst|Equal33~7_combout\,
	datac => \inst|counter\(2),
	datad => \inst|counter\(1),
	combout => \inst|counter~23_combout\);

\inst|counter~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~24_combout\ = (\inst|counter~22_combout\ & ((\inst|buffer1~167_combout\) # ((\inst|buffer1~168_combout\) # (!\inst|counter~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~22_combout\,
	datab => \inst|buffer1~167_combout\,
	datac => \inst|buffer1~168_combout\,
	datad => \inst|counter~23_combout\,
	combout => \inst|counter~24_combout\);

\inst|counter~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~25_combout\ = (\inst|Equal16~1_combout\ & (\inst|Equal17~7_combout\ & ((!\inst|Equal16~2_combout\) # (!\inst|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal16~1_combout\,
	datab => \inst|Equal17~7_combout\,
	datac => \inst|Equal8~0_combout\,
	datad => \inst|Equal16~2_combout\,
	combout => \inst|counter~25_combout\);

\inst|counter~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~26_combout\ = (!\inst|Equal16~1_combout\ & (!\inst|buffer1~88_combout\ & ((!\inst|Equal16~2_combout\) # (!\inst|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal8~0_combout\,
	datab => \inst|Equal16~2_combout\,
	datac => \inst|Equal16~1_combout\,
	datad => \inst|buffer1~88_combout\,
	combout => \inst|counter~26_combout\);

\inst|counter~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~76_combout\ = (\inst|counter\(2) & (!\inst|counter\(1) & (\inst|Equal4~0_combout\ & !\inst|Equal9~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|Equal4~0_combout\,
	datad => \inst|Equal9~7_combout\,
	combout => \inst|counter~76_combout\);

\inst|counter~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~77_combout\ = (\inst|counter\(2) & ((\inst|counter\(1)) # ((!\inst|Equal4~0_combout\)))) # (!\inst|counter\(2) & (((\inst|buffer1~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|buffer1~55_combout\,
	datad => \inst|Equal4~0_combout\,
	combout => \inst|counter~77_combout\);

\inst|counter~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~27_combout\ = (\inst|counter~25_combout\) # ((\inst|counter~26_combout\ & ((\inst|counter~76_combout\) # (\inst|counter~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~25_combout\,
	datab => \inst|counter~26_combout\,
	datac => \inst|counter~76_combout\,
	datad => \inst|counter~77_combout\,
	combout => \inst|counter~27_combout\);

\inst|counter~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~28_combout\ = (\inst|Equal8~0_combout\ & ((\inst|Equal16~2_combout\ & ((!\inst|Equal25~7_combout\))) # (!\inst|Equal16~2_combout\ & (\inst|buffer1~122_combout\)))) # (!\inst|Equal8~0_combout\ & (\inst|buffer1~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~122_combout\,
	datab => \inst|Equal8~0_combout\,
	datac => \inst|Equal16~2_combout\,
	datad => \inst|Equal25~7_combout\,
	combout => \inst|counter~28_combout\);

\inst|counter~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~30_combout\ = (\inst|counter~29_combout\ & (((\inst|counter\(2) & \inst|counter\(1))) # (!\inst|Equal32~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~29_combout\,
	datab => \inst|counter\(2),
	datac => \inst|counter\(1),
	datad => \inst|Equal32~1_combout\,
	combout => \inst|counter~30_combout\);

\inst|counter~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~31_combout\ = (\inst|counter~24_combout\ & (((!\inst|counter~27_combout\ & !\inst|counter~28_combout\)) # (!\inst|counter~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~24_combout\,
	datab => \inst|counter~27_combout\,
	datac => \inst|counter~28_combout\,
	datad => \inst|counter~30_combout\,
	combout => \inst|counter~31_combout\);

\inst|counter~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~32_combout\ = (\inst|buffer1~166_combout\) # (!\inst|counter~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1~166_combout\,
	datad => \inst|counter~31_combout\,
	combout => \inst|counter~32_combout\);

\inst|counter~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~33_combout\ = (\inst|Equal39~3_combout\) # ((\inst|Equal19~3_combout\) # (\inst|Equal23~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal39~3_combout\,
	datab => \inst|Equal19~3_combout\,
	datac => \inst|Equal23~3_combout\,
	combout => \inst|counter~33_combout\);

\inst|counter~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~34_combout\ = (!\inst|Equal35~3_combout\ & (!\inst|counter~33_combout\ & ((!\inst|counter~31_combout\) # (!\inst|Equal43~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal35~3_combout\,
	datab => \inst|Equal43~3_combout\,
	datac => \inst|counter~31_combout\,
	datad => \inst|counter~33_combout\,
	combout => \inst|counter~34_combout\);

\inst|counter~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~35_combout\ = (!\inst|Equal23~3_combout\ & ((\inst|Equal27~3_combout\) # (\inst|Equal31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal23~3_combout\,
	datab => \inst|Equal27~3_combout\,
	datac => \inst|Equal31~3_combout\,
	combout => \inst|counter~35_combout\);

\inst|counter~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~36_combout\ = (\inst|Equal11~3_combout\) # ((\inst|Equal15~3_combout\) # ((!\inst|Equal19~3_combout\ & \inst|counter~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal19~3_combout\,
	datab => \inst|Equal11~3_combout\,
	datac => \inst|Equal15~3_combout\,
	datad => \inst|counter~35_combout\,
	combout => \inst|counter~36_combout\);

\inst|counter~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~37_combout\ = (\inst|counter~12_combout\ & ((\inst|counter~34_combout\) # (\inst|counter~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~12_combout\,
	datab => \inst|counter~34_combout\,
	datac => \inst|counter~36_combout\,
	combout => \inst|counter~37_combout\);

\inst|counter[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[2]~1_combout\ = (\inst1|OUTPUT\(3) & ((\inst|counter~37_combout\))) # (!\inst1|OUTPUT\(3) & (\inst|counter~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~32_combout\,
	datab => \inst|counter~37_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|counter[2]~1_combout\);

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

\inst|buffer1~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~221_combout\ = (\inst|counter\(2) & (\inst|counter\(1) & (\inst|buffer1~104_combout\ & \inst|Equal31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(2),
	datab => \inst|counter\(1),
	datac => \inst|buffer1~104_combout\,
	datad => \inst|Equal31~3_combout\,
	combout => \inst|buffer1~221_combout\);

\inst|counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~11_combout\ = (\inst|Equal32~0_combout\ & (((!\inst|Equal33~7_combout\)))) # (!\inst|Equal32~0_combout\ & ((\inst|counter\(4)) # ((\inst|buffer1~221_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|buffer1~221_combout\,
	datac => \inst|Equal32~0_combout\,
	datad => \inst|Equal33~7_combout\,
	combout => \inst|counter~11_combout\);

\inst|counter~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~16_combout\ = (\inst|counter~13_combout\ & (\inst|counter~14_combout\ & ((\inst|counter~11_combout\) # (!\inst|counter[10]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~13_combout\,
	datab => \inst|counter~14_combout\,
	datac => \inst|counter~11_combout\,
	datad => \inst|counter[10]~15_combout\,
	combout => \inst|counter~16_combout\);

\inst|counter[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[4]~0_combout\ = (\inst1|OUTPUT\(3) & ((\inst|counter~16_combout\))) # (!\inst1|OUTPUT\(3) & (\inst|counter~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter~11_combout\,
	datab => \inst|counter~16_combout\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|counter[4]~0_combout\);

\inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter[4]~0_combout\,
	asdata => \inst|counter\(4),
	sclr => \inst1|OUTPUT\(0),
	sload => \inst1|ALT_INV_OUTPUT\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(4));

\inst|Equal44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal44~0_combout\ = (\inst|counter\(4) & (\inst|Equal12~4_combout\ & (!\inst|counter\(3) & !\inst|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datab => \inst|Equal12~4_combout\,
	datac => \inst|counter\(3),
	datad => \inst|counter\(0),
	combout => \inst|Equal44~0_combout\);

\inst|buffer1[135]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1[135]~169_combout\ = (((!\inst|Equal45~6_combout\) # (!\inst|Equal45~5_combout\)) # (!\inst|Equal45~4_combout\)) # (!\inst|Equal44~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal44~0_combout\,
	datab => \inst|Equal45~4_combout\,
	datac => \inst|Equal45~5_combout\,
	datad => \inst|Equal45~6_combout\,
	combout => \inst|buffer1[135]~169_combout\);

\inst|buffer1~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~182_combout\ = (\ADC_IN[11]~input_o\ & (\inst|buffer1[135]~169_combout\ & (!\inst1|OUTPUT\(3) & !\inst1|OUTPUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[11]~input_o\,
	datab => \inst|buffer1[135]~169_combout\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|buffer1~182_combout\);

\inst|buffer1[143]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~182_combout\,
	ena => \inst|buffer1[135]~171_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(143));

\inst|bufferout[143]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(143),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(143));

\inst2|buffer1[131]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(131) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(143))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(131))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(143),
	datac => \inst2|buffer1\(131),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(131));

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

\inst|buffer1~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~212_combout\ = (!\inst|buffer1[120]~198_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(131))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(131),
	datab => \ADC_IN[11]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[120]~198_combout\,
	combout => \inst|buffer1~212_combout\);

\inst|buffer1[131]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~212_combout\,
	ena => \inst|buffer1[120]~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(131));

\inst|bufferout[131]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(131),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(131));

\inst2|buffer1[119]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(119) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(131))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(119))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(131),
	datac => \inst2|buffer1\(119),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(119));

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

\inst|buffer1~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~197_combout\ = (!\inst|buffer1[117]~183_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(119))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(119),
	datab => \ADC_IN[11]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[117]~183_combout\,
	combout => \inst|buffer1~197_combout\);

\inst|buffer1[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~197_combout\,
	ena => \inst|buffer1[117]~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(119));

\inst|bufferout[119]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(119),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(119));

\inst2|buffer1[107]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(107) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(119))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(107))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(119),
	datac => \inst2|buffer1\(107),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(107));

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

\inst|buffer1~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~151_combout\ = (!\inst|buffer1[107]~150_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(107))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(107),
	datab => \ADC_IN[11]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[107]~150_combout\,
	combout => \inst|buffer1~151_combout\);

\inst|buffer1[107]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~151_combout\,
	ena => \inst|buffer1[107]~153_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(107));

\inst|bufferout[107]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(107),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(107));

\inst2|buffer1[95]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(95) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(107))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(95))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(107),
	datac => \inst2|buffer1\(95),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(95));

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

\inst|buffer1~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~136_combout\ = (!\inst|buffer1[84]~135_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(95))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(95),
	datab => \ADC_IN[11]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[84]~135_combout\,
	combout => \inst|buffer1~136_combout\);

\inst|buffer1[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~136_combout\,
	ena => \inst|buffer1[84]~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(95));

\inst|bufferout[95]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(95),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(95));

\inst2|buffer1[83]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(83) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(95))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(83))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(95),
	datac => \inst2|buffer1\(83),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(83));

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

\inst|buffer1~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~119_combout\ = (!\inst|buffer1[72]~118_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(83))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(83),
	datab => \ADC_IN[11]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[72]~118_combout\,
	combout => \inst|buffer1~119_combout\);

\inst|buffer1[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~119_combout\,
	ena => \inst|buffer1[72]~123_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(83));

\inst|bufferout[83]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(83),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(83));

\inst2|buffer1[71]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(71) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(83))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(71))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(83),
	datac => \inst2|buffer1\(71),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(71));

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

\inst|buffer1~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~103_combout\ = (!\inst|buffer1[60]~102_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(71))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(71),
	datab => \ADC_IN[11]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[60]~102_combout\,
	combout => \inst|buffer1~103_combout\);

\inst|buffer1[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~103_combout\,
	ena => \inst|buffer1[60]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(71));

\inst|bufferout[71]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(71),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(71));

\inst2|buffer1[59]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(59) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(71))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(59))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(71),
	datac => \inst2|buffer1\(59),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(59));

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

\inst|buffer1~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~87_combout\ = (!\inst|buffer1[59]~86_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(59))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(59),
	datab => \ADC_IN[11]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[59]~86_combout\,
	combout => \inst|buffer1~87_combout\);

\inst|buffer1[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~87_combout\,
	ena => \inst|buffer1[59]~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(59));

\inst|bufferout[59]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(59),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(59));

\inst2|buffer1[47]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(47) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(59))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(59),
	datac => \inst2|buffer1\(47),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(47));

\inst2|bufferout[47]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|bufferout\(47) = (GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & (\inst2|buffer1\(47))) # (!GLOBAL(\inst1|OUTPUT[3]~clkctrl_outclk\) & ((\inst2|bufferout\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|buffer1\(47),
	datac => \inst2|bufferout\(47),
	datad => \inst1|OUTPUT[3]~clkctrl_outclk\,
	combout => \inst2|bufferout\(47));

\inst|buffer1~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~70_combout\ = (!\inst|buffer1[36]~69_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(47))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(47),
	datab => \ADC_IN[11]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[36]~69_combout\,
	combout => \inst|buffer1~70_combout\);

\inst|buffer1[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~70_combout\,
	ena => \inst|buffer1[36]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(47));

\inst|bufferout[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(47),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(47));

\inst2|buffer1[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(35) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(47))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(47),
	datac => \inst2|buffer1\(35),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(35));

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

\inst|buffer1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~53_combout\ = (!\inst|buffer1[24]~52_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(35))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(35),
	datab => \ADC_IN[11]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[24]~52_combout\,
	combout => \inst|buffer1~53_combout\);

\inst|buffer1[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~53_combout\,
	ena => \inst|buffer1[24]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(35));

\inst|bufferout[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(35),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(35));

\inst2|buffer1[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(23) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(35))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(35),
	datac => \inst2|buffer1\(23),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(23));

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

\inst|buffer1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~36_combout\ = (!\inst|buffer1[23]~35_combout\ & ((\inst1|OUTPUT\(3) & (\inst2|bufferout\(23))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(23),
	datab => \ADC_IN[11]~input_o\,
	datac => \inst1|OUTPUT\(3),
	datad => \inst|buffer1[23]~35_combout\,
	combout => \inst|buffer1~36_combout\);

\inst|buffer1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1~36_combout\,
	ena => \inst|buffer1[23]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(23));

\inst|bufferout[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(23),
	ena => \inst|bufferout[23]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|bufferout\(23));

\inst2|buffer1[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|buffer1\(11) = (GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & (\inst|bufferout\(23))) # (!GLOBAL(\inst1|OUTPUT[2]~clkctrl_outclk\) & ((\inst2|buffer1\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|bufferout\(23),
	datac => \inst2|buffer1\(11),
	datad => \inst1|OUTPUT[2]~clkctrl_outclk\,
	combout => \inst2|buffer1\(11));

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

\inst|buffer1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|buffer1~22_combout\ = (\inst1|OUTPUT\(3) & (\inst2|bufferout\(11))) # (!\inst1|OUTPUT\(3) & ((\ADC_IN[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|bufferout\(11),
	datab => \ADC_IN[11]~input_o\,
	datad => \inst1|OUTPUT\(3),
	combout => \inst|buffer1~22_combout\);

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
	ena => \inst|buffer1[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer1\(11));

\inst|ADC_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~0_combout\ = (\inst|buffer1\(11) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(11),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~0_combout\);

\inst|ADC_out[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[10]~1_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(2) & \inst1|OUTPUT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(2),
	datac => \inst1|OUTPUT\(1),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out[10]~1_combout\);

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

\inst|ADC_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~2_combout\ = (\inst|buffer1\(10) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(10),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~2_combout\);

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

\inst|ADC_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~3_combout\ = (\inst|buffer1\(9) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(9),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~3_combout\);

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

\inst|ADC_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~4_combout\ = (\inst|buffer1\(8) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(8),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~4_combout\);

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

\inst|ADC_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~5_combout\ = (\inst|buffer1\(7) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(7),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~5_combout\);

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

\inst|ADC_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~6_combout\ = (\inst|buffer1\(6) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(6),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~6_combout\);

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

\inst|ADC_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~7_combout\ = (\inst|buffer1\(5) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(5),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~7_combout\);

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

\inst|ADC_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~8_combout\ = (\inst|buffer1\(4) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(4),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~8_combout\);

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

\inst|ADC_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~10_combout\ = (\inst|buffer1\(2) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(2),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~10_combout\);

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

\inst|ADC_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~11_combout\ = (\inst|buffer1\(1) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(1),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~11_combout\);

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

\inst|ADC_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~12_combout\ = (\inst|buffer1\(0) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|buffer1\(0),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~12_combout\);

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

\inst|buffer10[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(11),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(11));

\inst|buffer10[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(10),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(10));

\inst|buffer10[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(9),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(9));

\inst|buffer10[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(8),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(8));

\inst|buffer10[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(7),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(7));

\inst|buffer10[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(6),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(6));

\inst|buffer10[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(5),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(5));

\inst|buffer10[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(4),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(4));

\inst|buffer10[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(3),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(3));

\inst|buffer10[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(2),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(2));

\inst|buffer10[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(1),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(1));

\inst|buffer10[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(0),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer10\(0));

\inst|buffer20[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(23),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(11));

\inst|buffer20[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(22),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(10));

\inst|buffer20[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(21),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(9));

\inst|buffer20[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(20),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(8));

\inst|buffer20[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(19),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(7));

\inst|buffer20[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(18),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(6));

\inst|buffer20[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(17),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(5));

\inst|buffer20[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(16),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(4));

\inst|buffer20[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(15),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(3));

\inst|buffer20[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(14),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(2));

\inst|buffer20[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(13),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(1));

\inst|buffer20[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(12),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer20\(0));

\inst|buffer30[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(35),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(11));

\inst|buffer30[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(34),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(10));

\inst|buffer30[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(33),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(9));

\inst|buffer30[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(32),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(8));

\inst|buffer30[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(31),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(7));

\inst|buffer30[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(30),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(6));

\inst|buffer30[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(29),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(5));

\inst|buffer30[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(28),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(4));

\inst|buffer30[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(27),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(3));

\inst|buffer30[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(26),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(2));

\inst|buffer30[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(25),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(1));

\inst|buffer30[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(24),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer30\(0));

\inst|buffer40[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(47),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(11));

\inst|buffer40[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(46),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(10));

\inst|buffer40[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(45),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(9));

\inst|buffer40[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(44),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(8));

\inst|buffer40[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(43),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(7));

\inst|buffer40[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(42),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(6));

\inst|buffer40[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(41),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(5));

\inst|buffer40[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(40),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(4));

\inst|buffer40[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(39),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(3));

\inst|buffer40[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(38),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(2));

\inst|buffer40[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(37),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(1));

\inst|buffer40[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(36),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer40\(0));

\inst|buffer50[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(59),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer50\(11));

\inst|buffer50[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(58),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer50\(10));

\inst|buffer50[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(57),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer50\(9));

\inst|buffer50[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(56),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer50\(8));

\inst|buffer50[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(55),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer50\(7));

\inst|buffer50[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(54),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer50\(6));

\inst|buffer50[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(53),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer50\(5));

\inst|buffer50[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(52),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer50\(4));

\inst|buffer50[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(51),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer50\(3));

\inst|buffer50[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(50),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer50\(2));

\inst|buffer50[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(49),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer50\(1));

\inst|buffer50[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(48),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer50\(0));

\inst|buffer60[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(71),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer60\(11));

\inst|buffer60[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(70),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer60\(10));

\inst|buffer60[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(69),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer60\(9));

\inst|buffer60[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(68),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer60\(8));

\inst|buffer60[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(67),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer60\(7));

\inst|buffer60[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(66),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer60\(6));

\inst|buffer60[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(65),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer60\(5));

\inst|buffer60[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(64),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer60\(4));

\inst|buffer60[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(63),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer60\(3));

\inst|buffer60[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(62),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer60\(2));

\inst|buffer60[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(61),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer60\(1));

\inst|buffer60[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(60),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer60\(0));

\inst|buffer70[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(83),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer70\(11));

\inst|buffer70[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(82),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer70\(10));

\inst|buffer70[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(81),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer70\(9));

\inst|buffer70[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(80),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer70\(8));

\inst|buffer70[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(79),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer70\(7));

\inst|buffer70[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(78),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer70\(6));

\inst|buffer70[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(77),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer70\(5));

\inst|buffer70[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(76),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer70\(4));

\inst|buffer70[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(75),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer70\(3));

\inst|buffer70[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(74),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer70\(2));

\inst|buffer70[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(73),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer70\(1));

\inst|buffer70[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(72),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer70\(0));

\inst|buffer80[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(95),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer80\(11));

\inst|buffer80[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(94),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer80\(10));

\inst|buffer80[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(93),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer80\(9));

\inst|buffer80[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(92),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer80\(8));

\inst|buffer80[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(91),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer80\(7));

\inst|buffer80[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(90),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer80\(6));

\inst|buffer80[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(89),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer80\(5));

\inst|buffer80[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(88),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer80\(4));

\inst|buffer80[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(87),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer80\(3));

\inst|buffer80[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(86),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer80\(2));

\inst|buffer80[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(85),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer80\(1));

\inst|buffer80[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(84),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer80\(0));

\inst|buffer90[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(107),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer90\(11));

\inst|buffer90[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(106),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer90\(10));

\inst|buffer90[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(105),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer90\(9));

\inst|buffer90[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(104),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer90\(8));

\inst|buffer90[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(103),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer90\(7));

\inst|buffer90[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(102),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer90\(6));

\inst|buffer90[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(101),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer90\(5));

\inst|buffer90[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(100),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer90\(4));

\inst|buffer90[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(99),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer90\(3));

\inst|buffer90[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(98),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer90\(2));

\inst|buffer90[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(97),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer90\(1));

\inst|buffer90[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|buffer1\(96),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buffer90\(0));

\inst|clock_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter\(4),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(4));

\inst|clock_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter\(3),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(3));

\inst|clock_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter\(2),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(2));

\inst|clock_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter\(1),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(1));

\inst|clock_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|counter\(0),
	ena => \inst|buffer10[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_counter\(0));

\inst1|BUFFER_READ[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|SPACE_AVAILABLE\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BUFFER_READ\(3));

\inst1|BUFFER_READ[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|SPACE_AVAILABLE\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BUFFER_READ\(2));

\inst1|BUFFER_READ[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|SPACE_AVAILABLE\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BUFFER_READ\(1));

\inst1|BUFFER_READ[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|SPACE_AVAILABLE\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|BUFFER_READ\(0));

\inst|AVAILABLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|AVAILABLE~0_combout\ = (\inst|BufferCount\(0)) # ((\inst|BufferCount\(1)) # ((\inst|BufferCount\(2)) # (\inst|BufferCount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BufferCount\(0),
	datab => \inst|BufferCount\(1),
	datac => \inst|BufferCount\(2),
	datad => \inst|BufferCount\(3),
	combout => \inst|AVAILABLE~0_combout\);

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

\inst1|OUTPUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|AVAILABLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTPUT\(7));

\inst1|OUTPUT~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~8_combout\ = (\inst1|OUTPUT\(6) & ((\inst1|Equal1~1_combout\) # ((!\inst1|OUTPUT~7_combout\ & !\inst1|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(6),
	datab => \inst1|Equal1~1_combout\,
	datac => \inst1|OUTPUT~7_combout\,
	datad => \inst1|Equal2~0_combout\,
	combout => \inst1|OUTPUT~8_combout\);

\inst1|OUTPUT~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT~14_combout\ = (\inst1|OUTPUT~8_combout\) # ((\inst1|Equal0~0_combout\ & (!\inst1|SPACE_AVAILABLE\(4) & !\inst1|SPACE_AVAILABLE\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~0_combout\,
	datab => \inst1|SPACE_AVAILABLE\(4),
	datac => \inst1|SPACE_AVAILABLE\(10),
	datad => \inst1|OUTPUT~8_combout\,
	combout => \inst1|OUTPUT~14_combout\);

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

\~QUARTUS_CREATED_GND~I\ : cycloneive_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
;
END structure;


