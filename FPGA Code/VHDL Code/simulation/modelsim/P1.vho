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

-- DATE "05/09/2018 20:15:06"

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
	BUFFERCHEQ : OUT std_logic_vector(3 DOWNTO 0);
	OUT2MCU : OUT std_logic_vector(3 DOWNTO 0);
	OUTPUTCHECK : OUT std_logic_vector(7 DOWNTO 0)
	);
END P1;

-- Design Ports Information
-- ADC_OUT[15]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[14]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[13]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[12]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[11]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[10]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[9]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[8]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[6]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[5]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[3]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_OUT[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUFFERCHEQ[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUFFERCHEQ[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUFFERCHEQ[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BUFFERCHEQ[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2MCU[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2MCU[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2MCU[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2MCU[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[5]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUTCHECK[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[7]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCU_IN[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[11]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[8]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[9]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[10]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[5]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[7]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_BUFFERCHEQ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \BUFFERCHEQ[3]~output_o\ : std_logic;
SIGNAL \BUFFERCHEQ[2]~output_o\ : std_logic;
SIGNAL \BUFFERCHEQ[1]~output_o\ : std_logic;
SIGNAL \BUFFERCHEQ[0]~output_o\ : std_logic;
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
SIGNAL \MCU_IN[3]~input_o\ : std_logic;
SIGNAL \MCU_IN[2]~input_o\ : std_logic;
SIGNAL \MCU_IN[6]~input_o\ : std_logic;
SIGNAL \MCU_IN[5]~input_o\ : std_logic;
SIGNAL \MCU_IN[7]~input_o\ : std_logic;
SIGNAL \MCU_IN[4]~input_o\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \MCU_IN[1]~input_o\ : std_logic;
SIGNAL \MCU_IN[0]~input_o\ : std_logic;
SIGNAL \inst1|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[0]~1_combout\ : std_logic;
SIGNAL \inst1|OUTPUT[1]~0_combout\ : std_logic;
SIGNAL \inst|ADC_out[15]~12_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~94_combout\ : std_logic;
SIGNAL \inst|clock_count[0]~0_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~93_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~92_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~91_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~90_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~89_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~88_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add0~87_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add0~86_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Add0~85_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|Add0~84_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|Add0~83_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|Add0~82_combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|Add0~81_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|Add0~80_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|Equal0~8_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|Add0~79_combout\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|Add0~78_combout\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|Add0~77_combout\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|Add0~76_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Add0~39\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|Add0~75_combout\ : std_logic;
SIGNAL \inst|Add0~41\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|Add0~74_combout\ : std_logic;
SIGNAL \inst|Add0~43\ : std_logic;
SIGNAL \inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|Add0~73_combout\ : std_logic;
SIGNAL \inst|Add0~45\ : std_logic;
SIGNAL \inst|Add0~46_combout\ : std_logic;
SIGNAL \inst|Add0~72_combout\ : std_logic;
SIGNAL \inst|Add0~47\ : std_logic;
SIGNAL \inst|Add0~48_combout\ : std_logic;
SIGNAL \inst|Add0~71_combout\ : std_logic;
SIGNAL \inst|Add0~49\ : std_logic;
SIGNAL \inst|Add0~50_combout\ : std_logic;
SIGNAL \inst|Add0~70_combout\ : std_logic;
SIGNAL \inst|Add0~51\ : std_logic;
SIGNAL \inst|Add0~52_combout\ : std_logic;
SIGNAL \inst|Add0~69_combout\ : std_logic;
SIGNAL \inst|Add0~53\ : std_logic;
SIGNAL \inst|Add0~54_combout\ : std_logic;
SIGNAL \inst|Add0~68_combout\ : std_logic;
SIGNAL \inst|Add0~55\ : std_logic;
SIGNAL \inst|Add0~56_combout\ : std_logic;
SIGNAL \inst|Add0~67_combout\ : std_logic;
SIGNAL \inst|Add0~57\ : std_logic;
SIGNAL \inst|Add0~58_combout\ : std_logic;
SIGNAL \inst|Add0~66_combout\ : std_logic;
SIGNAL \inst|Add0~59\ : std_logic;
SIGNAL \inst|Add0~60_combout\ : std_logic;
SIGNAL \inst|Add0~65_combout\ : std_logic;
SIGNAL \inst|Add0~61\ : std_logic;
SIGNAL \inst|Add0~62_combout\ : std_logic;
SIGNAL \inst|Add0~64_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Equal0~9_combout\ : std_logic;
SIGNAL \inst|clock_count[0]~1_combout\ : std_logic;
SIGNAL \inst|Add0~95_combout\ : std_logic;
SIGNAL \inst|Equal4~0_combout\ : std_logic;
SIGNAL \inst|BufferCount~0_combout\ : std_logic;
SIGNAL \inst|ADC_out[12]~feeder_combout\ : std_logic;
SIGNAL \ADC_IN[10]~input_o\ : std_logic;
SIGNAL \ADC_IN[7]~input_o\ : std_logic;
SIGNAL \inst|Buffer3~13_combout\ : std_logic;
SIGNAL \ADC_IN[11]~input_o\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \ADC_IN[8]~input_o\ : std_logic;
SIGNAL \ADC_IN[9]~input_o\ : std_logic;
SIGNAL \inst|Buffer3~11_combout\ : std_logic;
SIGNAL \inst|Buffer2~14_combout\ : std_logic;
SIGNAL \ADC_IN[0]~input_o\ : std_logic;
SIGNAL \inst|Buffer3~8_combout\ : std_logic;
SIGNAL \ADC_IN[1]~input_o\ : std_logic;
SIGNAL \inst|Buffer3~7_combout\ : std_logic;
SIGNAL \ADC_IN[2]~input_o\ : std_logic;
SIGNAL \inst|Buffer3~6_combout\ : std_logic;
SIGNAL \ADC_IN[5]~input_o\ : std_logic;
SIGNAL \inst|Buffer3~3_combout\ : std_logic;
SIGNAL \ADC_IN[6]~input_o\ : std_logic;
SIGNAL \inst|Buffer3~0_combout\ : std_logic;
SIGNAL \ADC_IN[4]~input_o\ : std_logic;
SIGNAL \inst|Buffer3~4_combout\ : std_logic;
SIGNAL \ADC_IN[3]~input_o\ : std_logic;
SIGNAL \inst|Buffer3~5_combout\ : std_logic;
SIGNAL \inst|Equal3~0_combout\ : std_logic;
SIGNAL \inst|Equal3~1_combout\ : std_logic;
SIGNAL \inst|Buffer2[7]~3_combout\ : std_logic;
SIGNAL \inst|Buffer2[7]~4_combout\ : std_logic;
SIGNAL \inst|Buffer1~0_combout\ : std_logic;
SIGNAL \inst|Buffer1~5_combout\ : std_logic;
SIGNAL \inst|Buffer1[10]~2_combout\ : std_logic;
SIGNAL \inst|Buffer1[10]~3_combout\ : std_logic;
SIGNAL \inst|Buffer3~12_combout\ : std_logic;
SIGNAL \inst|Buffer2~13_combout\ : std_logic;
SIGNAL \inst|Buffer1~6_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Buffer1~13_combout\ : std_logic;
SIGNAL \inst|Buffer2~5_combout\ : std_logic;
SIGNAL \inst|Buffer1~14_combout\ : std_logic;
SIGNAL \inst|Equal1~2_combout\ : std_logic;
SIGNAL \inst|Buffer2~7_combout\ : std_logic;
SIGNAL \inst|Buffer1~12_combout\ : std_logic;
SIGNAL \inst|Buffer2~8_combout\ : std_logic;
SIGNAL \inst|Buffer1~11_combout\ : std_logic;
SIGNAL \inst|Equal1~3_combout\ : std_logic;
SIGNAL \inst|Buffer2~10_combout\ : std_logic;
SIGNAL \inst|Buffer1~9_combout\ : std_logic;
SIGNAL \inst|Buffer2~9_combout\ : std_logic;
SIGNAL \inst|Buffer1~10_combout\ : std_logic;
SIGNAL \inst|Equal1~4_combout\ : std_logic;
SIGNAL \inst|Buffer2~11_combout\ : std_logic;
SIGNAL \inst|Buffer1~8_combout\ : std_logic;
SIGNAL \inst|Buffer2~12_combout\ : std_logic;
SIGNAL \inst|Buffer1~7_combout\ : std_logic;
SIGNAL \inst|Equal1~5_combout\ : std_logic;
SIGNAL \inst|Equal1~6_combout\ : std_logic;
SIGNAL \inst|BufferCount~1_combout\ : std_logic;
SIGNAL \inst|BufferCount~2_combout\ : std_logic;
SIGNAL \inst|Buffer3[8]~1_combout\ : std_logic;
SIGNAL \inst|Buffer3[8]~2_combout\ : std_logic;
SIGNAL \inst|Buffer3~10_combout\ : std_logic;
SIGNAL \inst|Equal3~2_combout\ : std_logic;
SIGNAL \inst|Equal3~3_combout\ : std_logic;
SIGNAL \inst|Buffer2[7]~1_combout\ : std_logic;
SIGNAL \inst|Buffer2~15_combout\ : std_logic;
SIGNAL \inst|Buffer1~4_combout\ : std_logic;
SIGNAL \inst|Equal5~0_combout\ : std_logic;
SIGNAL \inst|Equal5~1_combout\ : std_logic;
SIGNAL \inst|Equal5~2_combout\ : std_logic;
SIGNAL \inst|Equal5~3_combout\ : std_logic;
SIGNAL \inst|Buffer2~0_combout\ : std_logic;
SIGNAL \inst|Buffer2~6_combout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|Equal2~1_combout\ : std_logic;
SIGNAL \inst|Equal2~2_combout\ : std_logic;
SIGNAL \inst|Equal2~3_combout\ : std_logic;
SIGNAL \inst|Buffer3~9_combout\ : std_logic;
SIGNAL \inst|Buffer2~2_combout\ : std_logic;
SIGNAL \inst|Buffer1~1_combout\ : std_logic;
SIGNAL \inst|ADC_out~0_combout\ : std_logic;
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
SIGNAL \inst|BufferCount~3_combout\ : std_logic;
SIGNAL \inst|BufferCount~4_combout\ : std_logic;
SIGNAL \inst|BufferCount~5_combout\ : std_logic;
SIGNAL \inst|BufferCount~6_combout\ : std_logic;
SIGNAL \inst|BufferCheck~0_combout\ : std_logic;
SIGNAL \inst|BufferCount~7_combout\ : std_logic;
SIGNAL \inst|BufferCount~8_combout\ : std_logic;
SIGNAL \inst|BufferCheck~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~0_combout\ : std_logic;
SIGNAL \inst1|BUFFER_READ[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~1_combout\ : std_logic;
SIGNAL \inst1|BUFFER_READ[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|SPACE_AVAILABLE~2_combout\ : std_logic;
SIGNAL \inst|Buffer1\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|ADC_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|OUTPUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|BufferCheck\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|BUFFER_READ\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|clock_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst1|SPACE_AVAILABLE\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|BufferCount\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|Buffer2\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|Buffer3\ : std_logic_vector(11 DOWNTO 0);

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
BUFFERCHEQ <= ww_BUFFERCHEQ;
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

-- Location: IOOBUF_X43_Y34_N16
\ADC_OUT[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(15),
	devoe => ww_devoe,
	o => \ADC_OUT[15]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\ADC_OUT[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ADC_OUT[14]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\ADC_OUT[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(12),
	devoe => ww_devoe,
	o => \ADC_OUT[13]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\ADC_OUT[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(12),
	devoe => ww_devoe,
	o => \ADC_OUT[12]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X29_Y34_N16
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

-- Location: IOOBUF_X11_Y34_N2
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

-- Location: IOOBUF_X40_Y34_N2
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

-- Location: IOOBUF_X7_Y34_N9
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

-- Location: IOOBUF_X7_Y34_N2
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

-- Location: IOOBUF_X40_Y34_N9
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

-- Location: IOOBUF_X14_Y34_N16
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

-- Location: IOOBUF_X51_Y34_N16
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

-- Location: IOOBUF_X51_Y34_N23
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

-- Location: IOOBUF_X18_Y34_N23
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

-- Location: IOOBUF_X36_Y0_N9
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

-- Location: IOOBUF_X7_Y34_N16
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

-- Location: IOOBUF_X34_Y34_N16
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

-- Location: IOOBUF_X43_Y34_N23
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

-- Location: IOOBUF_X20_Y0_N2
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

-- Location: IOOBUF_X53_Y30_N2
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

-- Location: IOOBUF_X53_Y30_N9
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

-- Location: IOOBUF_X38_Y34_N16
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

-- Location: IOOBUF_X51_Y34_N9
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

-- Location: IOOBUF_X18_Y0_N23
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

-- Location: IOOBUF_X53_Y16_N9
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

-- Location: IOOBUF_X49_Y34_N2
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

-- Location: IOOBUF_X49_Y0_N2
\OUTPUTCHECK[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \OUTPUTCHECK[2]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
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

-- Location: IOOBUF_X20_Y34_N9
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

-- Location: IOIBUF_X31_Y34_N1
\MCU_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(3),
	o => \MCU_IN[3]~input_o\);

-- Location: IOIBUF_X45_Y34_N1
\MCU_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(2),
	o => \MCU_IN[2]~input_o\);

-- Location: IOIBUF_X25_Y34_N22
\MCU_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(6),
	o => \MCU_IN[6]~input_o\);

-- Location: IOIBUF_X34_Y34_N8
\MCU_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(5),
	o => \MCU_IN[5]~input_o\);

-- Location: IOIBUF_X25_Y34_N15
\MCU_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(7),
	o => \MCU_IN[7]~input_o\);

-- Location: IOIBUF_X38_Y34_N1
\MCU_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(4),
	o => \MCU_IN[4]~input_o\);

-- Location: LCCOMB_X31_Y30_N28
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\MCU_IN[6]~input_o\ & (!\MCU_IN[5]~input_o\ & (!\MCU_IN[7]~input_o\ & !\MCU_IN[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[6]~input_o\,
	datab => \MCU_IN[5]~input_o\,
	datac => \MCU_IN[7]~input_o\,
	datad => \MCU_IN[4]~input_o\,
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y30_N18
\inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (!\MCU_IN[3]~input_o\ & (!\MCU_IN[2]~input_o\ & \inst1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[3]~input_o\,
	datab => \MCU_IN[2]~input_o\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|Equal0~1_combout\);

-- Location: IOIBUF_X31_Y34_N8
\MCU_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(1),
	o => \MCU_IN[1]~input_o\);

-- Location: IOIBUF_X34_Y34_N1
\MCU_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCU_IN(0),
	o => \MCU_IN[0]~input_o\);

-- Location: LCCOMB_X31_Y30_N30
\inst1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~0_combout\ = (\inst1|Equal0~1_combout\ & (\MCU_IN[1]~input_o\ & !\MCU_IN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~1_combout\,
	datac => \MCU_IN[1]~input_o\,
	datad => \MCU_IN[0]~input_o\,
	combout => \inst1|Equal1~0_combout\);

-- Location: LCCOMB_X31_Y30_N8
\inst1|OUTPUT[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[0]~1_combout\ = !\inst1|Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal1~0_combout\,
	combout => \inst1|OUTPUT[0]~1_combout\);

-- Location: LCCOMB_X31_Y30_N16
\inst1|OUTPUT[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|OUTPUT[1]~0_combout\ = (\inst1|Equal0~1_combout\ & (\MCU_IN[1]~input_o\ $ (\MCU_IN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~1_combout\,
	datac => \MCU_IN[1]~input_o\,
	datad => \MCU_IN[0]~input_o\,
	combout => \inst1|OUTPUT[1]~0_combout\);

-- Location: FF_X31_Y30_N9
\inst1|OUTPUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|OUTPUT[0]~1_combout\,
	ena => \inst1|OUTPUT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTPUT\(0));

-- Location: LCCOMB_X32_Y29_N8
\inst|ADC_out[15]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[15]~12_combout\ = !\inst1|OUTPUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out[15]~12_combout\);

-- Location: FF_X31_Y30_N31
\inst1|OUTPUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|Equal1~0_combout\,
	ena => \inst1|OUTPUT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTPUT\(1));

-- Location: LCCOMB_X28_Y28_N0
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|clock_count\(0) $ (GND)
-- \inst|Add0~1\ = CARRY(!\inst|clock_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X28_Y28_N2
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|clock_count\(1) & (!\inst|Add0~1\)) # (!\inst|clock_count\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|clock_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X29_Y28_N30
\inst|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~94_combout\ = (\inst|Add0~2_combout\ & \inst|clock_count[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~2_combout\,
	datad => \inst|clock_count[0]~1_combout\,
	combout => \inst|Add0~94_combout\);

-- Location: LCCOMB_X28_Y30_N20
\inst|clock_count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clock_count[0]~0_combout\ = (\inst1|OUTPUT\(0)) # (\inst1|OUTPUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(0),
	datac => \inst1|OUTPUT\(1),
	combout => \inst|clock_count[0]~0_combout\);

-- Location: FF_X29_Y28_N31
\inst|clock_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~94_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(1));

-- Location: LCCOMB_X28_Y28_N4
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|clock_count\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|clock_count\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|clock_count\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X29_Y28_N12
\inst|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~93_combout\ = (\inst|Add0~4_combout\ & \inst|clock_count[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~4_combout\,
	datad => \inst|clock_count[0]~1_combout\,
	combout => \inst|Add0~93_combout\);

-- Location: FF_X29_Y28_N13
\inst|clock_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~93_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(2));

-- Location: LCCOMB_X28_Y28_N6
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|clock_count\(3) & (!\inst|Add0~5\)) # (!\inst|clock_count\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|clock_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X29_Y28_N2
\inst|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~92_combout\ = (\inst|Add0~6_combout\ & \inst|clock_count[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~6_combout\,
	datad => \inst|clock_count[0]~1_combout\,
	combout => \inst|Add0~92_combout\);

-- Location: FF_X29_Y28_N3
\inst|clock_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~92_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(3));

-- Location: LCCOMB_X28_Y28_N8
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|clock_count\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|clock_count\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|clock_count\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X29_Y28_N6
\inst|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~91_combout\ = (\inst|Add0~8_combout\ & \inst|clock_count[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~8_combout\,
	datad => \inst|clock_count[0]~1_combout\,
	combout => \inst|Add0~91_combout\);

-- Location: FF_X29_Y28_N7
\inst|clock_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~91_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(4));

-- Location: LCCOMB_X28_Y28_N10
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|clock_count\(5) & (!\inst|Add0~9\)) # (!\inst|clock_count\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|clock_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X29_Y28_N28
\inst|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~90_combout\ = (\inst|Add0~10_combout\ & \inst|clock_count[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~10_combout\,
	datad => \inst|clock_count[0]~1_combout\,
	combout => \inst|Add0~90_combout\);

-- Location: FF_X29_Y28_N29
\inst|clock_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~90_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(5));

-- Location: LCCOMB_X28_Y28_N12
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|clock_count\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|clock_count\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|clock_count\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X29_Y28_N26
\inst|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~89_combout\ = (\inst|Add0~12_combout\ & \inst|clock_count[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~12_combout\,
	datad => \inst|clock_count[0]~1_combout\,
	combout => \inst|Add0~89_combout\);

-- Location: FF_X29_Y28_N27
\inst|clock_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~89_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(6));

-- Location: LCCOMB_X28_Y28_N14
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|clock_count\(7) & (!\inst|Add0~13\)) # (!\inst|clock_count\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|clock_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X29_Y28_N4
\inst|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~88_combout\ = (\inst|Add0~14_combout\ & \inst|clock_count[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~14_combout\,
	datad => \inst|clock_count[0]~1_combout\,
	combout => \inst|Add0~88_combout\);

-- Location: FF_X29_Y28_N5
\inst|clock_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~88_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(7));

-- Location: LCCOMB_X28_Y28_N16
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|clock_count\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|clock_count\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|clock_count\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCCOMB_X27_Y28_N4
\inst|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~87_combout\ = (\inst|Add0~16_combout\ & \inst|clock_count[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~16_combout\,
	datad => \inst|clock_count[0]~1_combout\,
	combout => \inst|Add0~87_combout\);

-- Location: FF_X27_Y28_N5
\inst|clock_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~87_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(8));

-- Location: LCCOMB_X28_Y28_N18
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|clock_count\(9) & (!\inst|Add0~17\)) # (!\inst|clock_count\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|clock_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X27_Y28_N18
\inst|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~86_combout\ = (\inst|Add0~18_combout\ & \inst|clock_count[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~18_combout\,
	datad => \inst|clock_count[0]~1_combout\,
	combout => \inst|Add0~86_combout\);

-- Location: FF_X27_Y28_N19
\inst|clock_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~86_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(9));

-- Location: LCCOMB_X28_Y28_N20
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|clock_count\(10) & (\inst|Add0~19\ $ (GND))) # (!\inst|clock_count\(10) & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|clock_count\(10) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: LCCOMB_X27_Y28_N24
\inst|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~85_combout\ = (\inst|Add0~20_combout\ & \inst|clock_count[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~20_combout\,
	datad => \inst|clock_count[0]~1_combout\,
	combout => \inst|Add0~85_combout\);

-- Location: FF_X27_Y28_N25
\inst|clock_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~85_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(10));

-- Location: LCCOMB_X28_Y28_N22
\inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|clock_count\(11) & (!\inst|Add0~21\)) # (!\inst|clock_count\(11) & ((\inst|Add0~21\) # (GND)))
-- \inst|Add0~23\ = CARRY((!\inst|Add0~21\) # (!\inst|clock_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: LCCOMB_X27_Y28_N14
\inst|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~84_combout\ = (\inst|Add0~22_combout\ & \inst|clock_count[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~22_combout\,
	datad => \inst|clock_count[0]~1_combout\,
	combout => \inst|Add0~84_combout\);

-- Location: FF_X27_Y28_N15
\inst|clock_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~84_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(11));

-- Location: LCCOMB_X28_Y28_N24
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|clock_count\(12) & (\inst|Add0~23\ $ (GND))) # (!\inst|clock_count\(12) & (!\inst|Add0~23\ & VCC))
-- \inst|Add0~25\ = CARRY((\inst|clock_count\(12) & !\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X27_Y28_N22
\inst|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~83_combout\ = (\inst|Add0~24_combout\ & \inst|clock_count[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~24_combout\,
	datad => \inst|clock_count[0]~1_combout\,
	combout => \inst|Add0~83_combout\);

-- Location: FF_X27_Y28_N23
\inst|clock_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~83_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(12));

-- Location: LCCOMB_X28_Y28_N26
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|clock_count\(13) & (!\inst|Add0~25\)) # (!\inst|clock_count\(13) & ((\inst|Add0~25\) # (GND)))
-- \inst|Add0~27\ = CARRY((!\inst|Add0~25\) # (!\inst|clock_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(13),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: LCCOMB_X27_Y28_N28
\inst|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~82_combout\ = (\inst|Add0~26_combout\ & \inst|clock_count[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~26_combout\,
	datad => \inst|clock_count[0]~1_combout\,
	combout => \inst|Add0~82_combout\);

-- Location: FF_X27_Y28_N29
\inst|clock_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~82_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(13));

-- Location: LCCOMB_X28_Y28_N28
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|clock_count\(14) & (\inst|Add0~27\ $ (GND))) # (!\inst|clock_count\(14) & (!\inst|Add0~27\ & VCC))
-- \inst|Add0~29\ = CARRY((\inst|clock_count\(14) & !\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(14),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X27_Y28_N30
\inst|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~81_combout\ = (\inst|Add0~28_combout\ & \inst|clock_count[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~28_combout\,
	datad => \inst|clock_count[0]~1_combout\,
	combout => \inst|Add0~81_combout\);

-- Location: FF_X27_Y28_N31
\inst|clock_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~81_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(14));

-- Location: LCCOMB_X28_Y28_N30
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|clock_count\(15) & (!\inst|Add0~29\)) # (!\inst|clock_count\(15) & ((\inst|Add0~29\) # (GND)))
-- \inst|Add0~31\ = CARRY((!\inst|Add0~29\) # (!\inst|clock_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(15),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: LCCOMB_X27_Y28_N12
\inst|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~80_combout\ = (\inst|Add0~30_combout\ & \inst|clock_count[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~30_combout\,
	datad => \inst|clock_count[0]~1_combout\,
	combout => \inst|Add0~80_combout\);

-- Location: FF_X27_Y28_N13
\inst|clock_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~80_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(15));

-- Location: LCCOMB_X27_Y28_N16
\inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (!\inst|clock_count\(12) & (!\inst|clock_count\(13) & (!\inst|clock_count\(14) & !\inst|clock_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(12),
	datab => \inst|clock_count\(13),
	datac => \inst|clock_count\(14),
	datad => \inst|clock_count\(15),
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X29_Y28_N0
\inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~7_combout\ = (!\inst|clock_count\(4) & (!\inst|clock_count\(7) & (!\inst|clock_count\(6) & !\inst|clock_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(4),
	datab => \inst|clock_count\(7),
	datac => \inst|clock_count\(6),
	datad => \inst|clock_count\(5),
	combout => \inst|Equal0~7_combout\);

-- Location: LCCOMB_X28_Y29_N2
\inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~8_combout\ = (!\inst|clock_count\(3) & (!\inst|clock_count\(2) & \inst|Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(3),
	datac => \inst|clock_count\(2),
	datad => \inst|Equal0~7_combout\,
	combout => \inst|Equal0~8_combout\);

-- Location: LCCOMB_X27_Y28_N26
\inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (!\inst|clock_count\(8) & (!\inst|clock_count\(9) & (!\inst|clock_count\(11) & !\inst|clock_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(8),
	datab => \inst|clock_count\(9),
	datac => \inst|clock_count\(11),
	datad => \inst|clock_count\(10),
	combout => \inst|Equal0~6_combout\);

-- Location: LCCOMB_X28_Y27_N0
\inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|clock_count\(16) & (\inst|Add0~31\ $ (GND))) # (!\inst|clock_count\(16) & (!\inst|Add0~31\ & VCC))
-- \inst|Add0~33\ = CARRY((\inst|clock_count\(16) & !\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(16),
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: LCCOMB_X27_Y27_N22
\inst|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~79_combout\ = (\inst|clock_count[0]~1_combout\ & \inst|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count[0]~1_combout\,
	datac => \inst|Add0~32_combout\,
	combout => \inst|Add0~79_combout\);

-- Location: FF_X27_Y27_N23
\inst|clock_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~79_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(16));

-- Location: LCCOMB_X28_Y27_N2
\inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|clock_count\(17) & (!\inst|Add0~33\)) # (!\inst|clock_count\(17) & ((\inst|Add0~33\) # (GND)))
-- \inst|Add0~35\ = CARRY((!\inst|Add0~33\) # (!\inst|clock_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(17),
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: LCCOMB_X27_Y27_N28
\inst|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~78_combout\ = (\inst|clock_count[0]~1_combout\ & \inst|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clock_count[0]~1_combout\,
	datad => \inst|Add0~34_combout\,
	combout => \inst|Add0~78_combout\);

-- Location: FF_X27_Y27_N29
\inst|clock_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~78_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(17));

-- Location: LCCOMB_X28_Y27_N4
\inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|clock_count\(18) & (\inst|Add0~35\ $ (GND))) # (!\inst|clock_count\(18) & (!\inst|Add0~35\ & VCC))
-- \inst|Add0~37\ = CARRY((\inst|clock_count\(18) & !\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(18),
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: LCCOMB_X27_Y27_N18
\inst|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~77_combout\ = (\inst|clock_count[0]~1_combout\ & \inst|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clock_count[0]~1_combout\,
	datad => \inst|Add0~36_combout\,
	combout => \inst|Add0~77_combout\);

-- Location: FF_X27_Y27_N19
\inst|clock_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~77_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(18));

-- Location: LCCOMB_X28_Y27_N6
\inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\inst|clock_count\(19) & (!\inst|Add0~37\)) # (!\inst|clock_count\(19) & ((\inst|Add0~37\) # (GND)))
-- \inst|Add0~39\ = CARRY((!\inst|Add0~37\) # (!\inst|clock_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(19),
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\,
	cout => \inst|Add0~39\);

-- Location: LCCOMB_X27_Y27_N4
\inst|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~76_combout\ = (\inst|clock_count[0]~1_combout\ & \inst|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clock_count[0]~1_combout\,
	datad => \inst|Add0~38_combout\,
	combout => \inst|Add0~76_combout\);

-- Location: FF_X27_Y27_N5
\inst|clock_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~76_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(19));

-- Location: LCCOMB_X27_Y27_N0
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (!\inst|clock_count\(16) & (!\inst|clock_count\(17) & (!\inst|clock_count\(19) & !\inst|clock_count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(16),
	datab => \inst|clock_count\(17),
	datac => \inst|clock_count\(19),
	datad => \inst|clock_count\(18),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X28_Y27_N8
\inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\inst|clock_count\(20) & (\inst|Add0~39\ $ (GND))) # (!\inst|clock_count\(20) & (!\inst|Add0~39\ & VCC))
-- \inst|Add0~41\ = CARRY((\inst|clock_count\(20) & !\inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(20),
	datad => VCC,
	cin => \inst|Add0~39\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: LCCOMB_X29_Y27_N10
\inst|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~75_combout\ = (\inst|clock_count[0]~1_combout\ & \inst|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clock_count[0]~1_combout\,
	datad => \inst|Add0~40_combout\,
	combout => \inst|Add0~75_combout\);

-- Location: FF_X29_Y27_N11
\inst|clock_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~75_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(20));

-- Location: LCCOMB_X28_Y27_N10
\inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\inst|clock_count\(21) & (!\inst|Add0~41\)) # (!\inst|clock_count\(21) & ((\inst|Add0~41\) # (GND)))
-- \inst|Add0~43\ = CARRY((!\inst|Add0~41\) # (!\inst|clock_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(21),
	datad => VCC,
	cin => \inst|Add0~41\,
	combout => \inst|Add0~42_combout\,
	cout => \inst|Add0~43\);

-- Location: LCCOMB_X29_Y27_N28
\inst|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~74_combout\ = (\inst|clock_count[0]~1_combout\ & \inst|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clock_count[0]~1_combout\,
	datad => \inst|Add0~42_combout\,
	combout => \inst|Add0~74_combout\);

-- Location: FF_X29_Y27_N29
\inst|clock_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~74_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(21));

-- Location: LCCOMB_X28_Y27_N12
\inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = (\inst|clock_count\(22) & (\inst|Add0~43\ $ (GND))) # (!\inst|clock_count\(22) & (!\inst|Add0~43\ & VCC))
-- \inst|Add0~45\ = CARRY((\inst|clock_count\(22) & !\inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(22),
	datad => VCC,
	cin => \inst|Add0~43\,
	combout => \inst|Add0~44_combout\,
	cout => \inst|Add0~45\);

-- Location: LCCOMB_X29_Y27_N18
\inst|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~73_combout\ = (\inst|clock_count[0]~1_combout\ & \inst|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clock_count[0]~1_combout\,
	datad => \inst|Add0~44_combout\,
	combout => \inst|Add0~73_combout\);

-- Location: FF_X29_Y27_N19
\inst|clock_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~73_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(22));

-- Location: LCCOMB_X28_Y27_N14
\inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~46_combout\ = (\inst|clock_count\(23) & (!\inst|Add0~45\)) # (!\inst|clock_count\(23) & ((\inst|Add0~45\) # (GND)))
-- \inst|Add0~47\ = CARRY((!\inst|Add0~45\) # (!\inst|clock_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(23),
	datad => VCC,
	cin => \inst|Add0~45\,
	combout => \inst|Add0~46_combout\,
	cout => \inst|Add0~47\);

-- Location: LCCOMB_X29_Y27_N8
\inst|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~72_combout\ = (\inst|clock_count[0]~1_combout\ & \inst|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clock_count[0]~1_combout\,
	datad => \inst|Add0~46_combout\,
	combout => \inst|Add0~72_combout\);

-- Location: FF_X29_Y27_N9
\inst|clock_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~72_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(23));

-- Location: LCCOMB_X28_Y27_N16
\inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~48_combout\ = (\inst|clock_count\(24) & (\inst|Add0~47\ $ (GND))) # (!\inst|clock_count\(24) & (!\inst|Add0~47\ & VCC))
-- \inst|Add0~49\ = CARRY((\inst|clock_count\(24) & !\inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(24),
	datad => VCC,
	cin => \inst|Add0~47\,
	combout => \inst|Add0~48_combout\,
	cout => \inst|Add0~49\);

-- Location: LCCOMB_X29_Y27_N24
\inst|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~71_combout\ = (\inst|clock_count[0]~1_combout\ & \inst|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count[0]~1_combout\,
	datac => \inst|Add0~48_combout\,
	combout => \inst|Add0~71_combout\);

-- Location: FF_X29_Y27_N25
\inst|clock_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~71_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(24));

-- Location: LCCOMB_X28_Y27_N18
\inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~50_combout\ = (\inst|clock_count\(25) & (!\inst|Add0~49\)) # (!\inst|clock_count\(25) & ((\inst|Add0~49\) # (GND)))
-- \inst|Add0~51\ = CARRY((!\inst|Add0~49\) # (!\inst|clock_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(25),
	datad => VCC,
	cin => \inst|Add0~49\,
	combout => \inst|Add0~50_combout\,
	cout => \inst|Add0~51\);

-- Location: LCCOMB_X29_Y27_N30
\inst|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~70_combout\ = (\inst|clock_count[0]~1_combout\ & \inst|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clock_count[0]~1_combout\,
	datad => \inst|Add0~50_combout\,
	combout => \inst|Add0~70_combout\);

-- Location: FF_X29_Y27_N31
\inst|clock_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~70_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(25));

-- Location: LCCOMB_X28_Y27_N20
\inst|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~52_combout\ = (\inst|clock_count\(26) & (\inst|Add0~51\ $ (GND))) # (!\inst|clock_count\(26) & (!\inst|Add0~51\ & VCC))
-- \inst|Add0~53\ = CARRY((\inst|clock_count\(26) & !\inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(26),
	datad => VCC,
	cin => \inst|Add0~51\,
	combout => \inst|Add0~52_combout\,
	cout => \inst|Add0~53\);

-- Location: LCCOMB_X29_Y27_N4
\inst|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~69_combout\ = (\inst|clock_count[0]~1_combout\ & \inst|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clock_count[0]~1_combout\,
	datad => \inst|Add0~52_combout\,
	combout => \inst|Add0~69_combout\);

-- Location: FF_X29_Y27_N5
\inst|clock_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~69_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(26));

-- Location: LCCOMB_X28_Y27_N22
\inst|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~54_combout\ = (\inst|clock_count\(27) & (!\inst|Add0~53\)) # (!\inst|clock_count\(27) & ((\inst|Add0~53\) # (GND)))
-- \inst|Add0~55\ = CARRY((!\inst|Add0~53\) # (!\inst|clock_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(27),
	datad => VCC,
	cin => \inst|Add0~53\,
	combout => \inst|Add0~54_combout\,
	cout => \inst|Add0~55\);

-- Location: LCCOMB_X29_Y27_N6
\inst|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~68_combout\ = (\inst|clock_count[0]~1_combout\ & \inst|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clock_count[0]~1_combout\,
	datad => \inst|Add0~54_combout\,
	combout => \inst|Add0~68_combout\);

-- Location: FF_X29_Y27_N7
\inst|clock_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~68_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(27));

-- Location: LCCOMB_X28_Y27_N24
\inst|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~56_combout\ = (\inst|clock_count\(28) & (\inst|Add0~55\ $ (GND))) # (!\inst|clock_count\(28) & (!\inst|Add0~55\ & VCC))
-- \inst|Add0~57\ = CARRY((\inst|clock_count\(28) & !\inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(28),
	datad => VCC,
	cin => \inst|Add0~55\,
	combout => \inst|Add0~56_combout\,
	cout => \inst|Add0~57\);

-- Location: LCCOMB_X29_Y27_N26
\inst|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~67_combout\ = (\inst|clock_count[0]~1_combout\ & \inst|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clock_count[0]~1_combout\,
	datad => \inst|Add0~56_combout\,
	combout => \inst|Add0~67_combout\);

-- Location: FF_X29_Y27_N27
\inst|clock_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~67_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(28));

-- Location: LCCOMB_X28_Y27_N26
\inst|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~58_combout\ = (\inst|clock_count\(29) & (!\inst|Add0~57\)) # (!\inst|clock_count\(29) & ((\inst|Add0~57\) # (GND)))
-- \inst|Add0~59\ = CARRY((!\inst|Add0~57\) # (!\inst|clock_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(29),
	datad => VCC,
	cin => \inst|Add0~57\,
	combout => \inst|Add0~58_combout\,
	cout => \inst|Add0~59\);

-- Location: LCCOMB_X29_Y27_N16
\inst|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~66_combout\ = (\inst|clock_count[0]~1_combout\ & \inst|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count[0]~1_combout\,
	datac => \inst|Add0~58_combout\,
	combout => \inst|Add0~66_combout\);

-- Location: FF_X29_Y27_N17
\inst|clock_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~66_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(29));

-- Location: LCCOMB_X28_Y27_N28
\inst|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~60_combout\ = (\inst|clock_count\(30) & (\inst|Add0~59\ $ (GND))) # (!\inst|clock_count\(30) & (!\inst|Add0~59\ & VCC))
-- \inst|Add0~61\ = CARRY((\inst|clock_count\(30) & !\inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(30),
	datad => VCC,
	cin => \inst|Add0~59\,
	combout => \inst|Add0~60_combout\,
	cout => \inst|Add0~61\);

-- Location: LCCOMB_X29_Y27_N22
\inst|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~65_combout\ = (!\inst1|OUTPUT\(0) & (\inst|Equal4~0_combout\ & \inst|Add0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datac => \inst|Equal4~0_combout\,
	datad => \inst|Add0~60_combout\,
	combout => \inst|Add0~65_combout\);

-- Location: FF_X29_Y27_N23
\inst|clock_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~65_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(30));

-- Location: LCCOMB_X28_Y27_N30
\inst|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~62_combout\ = \inst|clock_count\(31) $ (!\inst|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(31),
	cin => \inst|Add0~61\,
	combout => \inst|Add0~62_combout\);

-- Location: LCCOMB_X29_Y27_N20
\inst|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~64_combout\ = (\inst1|OUTPUT\(0)) # ((!\inst|Add0~62_combout\) # (!\inst|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datac => \inst|Equal4~0_combout\,
	datad => \inst|Add0~62_combout\,
	combout => \inst|Add0~64_combout\);

-- Location: FF_X29_Y27_N21
\inst|clock_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~64_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(31));

-- Location: LCCOMB_X29_Y27_N12
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|clock_count\(28) & (!\inst|clock_count\(29) & (!\inst|clock_count\(30) & \inst|clock_count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(28),
	datab => \inst|clock_count\(29),
	datac => \inst|clock_count\(30),
	datad => \inst|clock_count\(31),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y27_N14
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|clock_count\(25) & (!\inst|clock_count\(24) & (!\inst|clock_count\(26) & !\inst|clock_count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(25),
	datab => \inst|clock_count\(24),
	datac => \inst|clock_count\(26),
	datad => \inst|clock_count\(27),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y27_N0
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|clock_count\(20) & (!\inst|clock_count\(21) & (!\inst|clock_count\(23) & !\inst|clock_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(20),
	datab => \inst|clock_count\(21),
	datac => \inst|clock_count\(23),
	datad => \inst|clock_count\(22),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y29_N20
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|Equal0~3_combout\ & (\inst|Equal0~0_combout\ & (\inst|Equal0~1_combout\ & \inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~3_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X28_Y29_N28
\inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~9_combout\ = (\inst|Equal0~5_combout\ & (\inst|Equal0~8_combout\ & (\inst|Equal0~6_combout\ & \inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~5_combout\,
	datab => \inst|Equal0~8_combout\,
	datac => \inst|Equal0~6_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|Equal0~9_combout\);

-- Location: LCCOMB_X29_Y29_N16
\inst|clock_count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clock_count[0]~1_combout\ = (!\inst1|OUTPUT\(0) & (((!\inst|Equal0~9_combout\) # (!\inst|clock_count\(1))) # (!\inst|clock_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(0),
	datab => \inst|clock_count\(1),
	datac => \inst1|OUTPUT\(0),
	datad => \inst|Equal0~9_combout\,
	combout => \inst|clock_count[0]~1_combout\);

-- Location: LCCOMB_X29_Y28_N20
\inst|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~95_combout\ = (!\inst|clock_count[0]~1_combout\) # (!\inst|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~0_combout\,
	datad => \inst|clock_count[0]~1_combout\,
	combout => \inst|Add0~95_combout\);

-- Location: FF_X29_Y28_N21
\inst|clock_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~95_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(0));

-- Location: LCCOMB_X28_Y29_N26
\inst|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~0_combout\ = ((!\inst|Equal0~9_combout\) # (!\inst|clock_count\(1))) # (!\inst|clock_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(0),
	datac => \inst|clock_count\(1),
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Equal4~0_combout\);

-- Location: LCCOMB_X27_Y29_N0
\inst|BufferCount~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~0_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & !\inst|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(0),
	datac => \inst1|OUTPUT\(1),
	datad => \inst|Equal4~0_combout\,
	combout => \inst|BufferCount~0_combout\);

-- Location: FF_X32_Y29_N9
\inst|ADC_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[15]~12_combout\,
	ena => \inst|BufferCount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(15));

-- Location: LCCOMB_X32_Y29_N30
\inst|ADC_out[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[12]~feeder_combout\ = \inst1|OUTPUT\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out[12]~feeder_combout\);

-- Location: FF_X32_Y29_N31
\inst|ADC_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[12]~feeder_combout\,
	ena => \inst|BufferCount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(12));

-- Location: IOIBUF_X18_Y34_N1
\ADC_IN[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(10),
	o => \ADC_IN[10]~input_o\);

-- Location: IOIBUF_X14_Y34_N22
\ADC_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(7),
	o => \ADC_IN[7]~input_o\);

-- Location: LCCOMB_X27_Y29_N24
\inst|Buffer3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer3~13_combout\ = (!\inst1|OUTPUT\(0) & (!\inst|Equal2~3_combout\ & (\ADC_IN[7]~input_o\ & !\inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst|Equal2~3_combout\,
	datac => \ADC_IN[7]~input_o\,
	datad => \inst|Equal4~0_combout\,
	combout => \inst|Buffer3~13_combout\);

-- Location: IOIBUF_X16_Y34_N15
\ADC_IN[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(11),
	o => \ADC_IN[11]~input_o\);

-- Location: LCCOMB_X29_Y29_N12
\inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (\ADC_IN[11]~input_o\ & (\inst|Buffer1\(11) & (\ADC_IN[10]~input_o\ $ (!\inst|Buffer1\(10))))) # (!\ADC_IN[11]~input_o\ & (!\inst|Buffer1\(11) & (\ADC_IN[10]~input_o\ $ (!\inst|Buffer1\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[11]~input_o\,
	datab => \ADC_IN[10]~input_o\,
	datac => \inst|Buffer1\(11),
	datad => \inst|Buffer1\(10),
	combout => \inst|Equal1~1_combout\);

-- Location: IOIBUF_X0_Y28_N8
\ADC_IN[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(8),
	o => \ADC_IN[8]~input_o\);

-- Location: IOIBUF_X20_Y34_N15
\ADC_IN[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(9),
	o => \ADC_IN[9]~input_o\);

-- Location: LCCOMB_X27_Y29_N26
\inst|Buffer3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer3~11_combout\ = (!\inst1|OUTPUT\(0) & (!\inst|Equal2~3_combout\ & (\ADC_IN[9]~input_o\ & !\inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst|Equal2~3_combout\,
	datac => \ADC_IN[9]~input_o\,
	datad => \inst|Equal4~0_combout\,
	combout => \inst|Buffer3~11_combout\);

-- Location: FF_X27_Y29_N27
\inst|Buffer3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer3~11_combout\,
	ena => \inst|Buffer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer3\(9));

-- Location: LCCOMB_X29_Y29_N28
\inst|Buffer2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer2~14_combout\ = (!\inst|Buffer2[7]~1_combout\ & ((\inst|Buffer2~0_combout\ & (\inst|Buffer3\(9))) # (!\inst|Buffer2~0_combout\ & ((\ADC_IN[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer3\(9),
	datab => \inst|Buffer2~0_combout\,
	datac => \ADC_IN[9]~input_o\,
	datad => \inst|Buffer2[7]~1_combout\,
	combout => \inst|Buffer2~14_combout\);

-- Location: IOIBUF_X47_Y34_N22
\ADC_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(0),
	o => \ADC_IN[0]~input_o\);

-- Location: LCCOMB_X28_Y29_N4
\inst|Buffer3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer3~8_combout\ = (!\inst|Equal2~3_combout\ & (\ADC_IN[0]~input_o\ & (!\inst1|OUTPUT\(0) & !\inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~3_combout\,
	datab => \ADC_IN[0]~input_o\,
	datac => \inst1|OUTPUT\(0),
	datad => \inst|Equal4~0_combout\,
	combout => \inst|Buffer3~8_combout\);

-- Location: FF_X28_Y29_N5
\inst|Buffer3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer3~8_combout\,
	ena => \inst|Buffer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer3\(0));

-- Location: IOIBUF_X20_Y34_N22
\ADC_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(1),
	o => \ADC_IN[1]~input_o\);

-- Location: LCCOMB_X27_Y29_N4
\inst|Buffer3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer3~7_combout\ = (!\inst1|OUTPUT\(0) & (!\inst|Equal2~3_combout\ & (\ADC_IN[1]~input_o\ & !\inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst|Equal2~3_combout\,
	datac => \ADC_IN[1]~input_o\,
	datad => \inst|Equal4~0_combout\,
	combout => \inst|Buffer3~7_combout\);

-- Location: FF_X27_Y29_N5
\inst|Buffer3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer3~7_combout\,
	ena => \inst|Buffer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer3\(1));

-- Location: IOIBUF_X23_Y34_N22
\ADC_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(2),
	o => \ADC_IN[2]~input_o\);

-- Location: LCCOMB_X27_Y29_N22
\inst|Buffer3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer3~6_combout\ = (!\inst1|OUTPUT\(0) & (!\inst|Equal2~3_combout\ & (\ADC_IN[2]~input_o\ & !\inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst|Equal2~3_combout\,
	datac => \ADC_IN[2]~input_o\,
	datad => \inst|Equal4~0_combout\,
	combout => \inst|Buffer3~6_combout\);

-- Location: FF_X27_Y29_N23
\inst|Buffer3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer3~6_combout\,
	ena => \inst|Buffer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer3\(2));

-- Location: IOIBUF_X9_Y34_N22
\ADC_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(5),
	o => \ADC_IN[5]~input_o\);

-- Location: LCCOMB_X31_Y29_N30
\inst|Buffer3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer3~3_combout\ = (\ADC_IN[5]~input_o\ & (!\inst1|OUTPUT\(0) & (!\inst|Equal2~3_combout\ & !\inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[5]~input_o\,
	datab => \inst1|OUTPUT\(0),
	datac => \inst|Equal2~3_combout\,
	datad => \inst|Equal4~0_combout\,
	combout => \inst|Buffer3~3_combout\);

-- Location: FF_X31_Y29_N31
\inst|Buffer3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer3~3_combout\,
	ena => \inst|Buffer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer3\(5));

-- Location: IOIBUF_X45_Y34_N8
\ADC_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(6),
	o => \ADC_IN[6]~input_o\);

-- Location: LCCOMB_X31_Y29_N0
\inst|Buffer3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer3~0_combout\ = (!\inst|Equal2~3_combout\ & (!\inst|Equal4~0_combout\ & (\ADC_IN[6]~input_o\ & !\inst1|OUTPUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~3_combout\,
	datab => \inst|Equal4~0_combout\,
	datac => \ADC_IN[6]~input_o\,
	datad => \inst1|OUTPUT\(0),
	combout => \inst|Buffer3~0_combout\);

-- Location: FF_X31_Y29_N1
\inst|Buffer3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer3~0_combout\,
	ena => \inst|Buffer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer3\(6));

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

-- Location: LCCOMB_X31_Y29_N4
\inst|Buffer3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer3~4_combout\ = (!\inst|Equal2~3_combout\ & (!\inst|Equal4~0_combout\ & (\ADC_IN[4]~input_o\ & !\inst1|OUTPUT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~3_combout\,
	datab => \inst|Equal4~0_combout\,
	datac => \ADC_IN[4]~input_o\,
	datad => \inst1|OUTPUT\(0),
	combout => \inst|Buffer3~4_combout\);

-- Location: FF_X31_Y29_N5
\inst|Buffer3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer3~4_combout\,
	ena => \inst|Buffer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer3\(4));

-- Location: IOIBUF_X16_Y34_N1
\ADC_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(3),
	o => \ADC_IN[3]~input_o\);

-- Location: LCCOMB_X31_Y29_N2
\inst|Buffer3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer3~5_combout\ = (!\inst|Equal2~3_combout\ & (!\inst1|OUTPUT\(0) & (\ADC_IN[3]~input_o\ & !\inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~3_combout\,
	datab => \inst1|OUTPUT\(0),
	datac => \ADC_IN[3]~input_o\,
	datad => \inst|Equal4~0_combout\,
	combout => \inst|Buffer3~5_combout\);

-- Location: FF_X31_Y29_N3
\inst|Buffer3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer3~5_combout\,
	ena => \inst|Buffer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer3\(3));

-- Location: LCCOMB_X31_Y29_N24
\inst|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal3~0_combout\ = (!\inst|Buffer3\(5) & (!\inst|Buffer3\(6) & (!\inst|Buffer3\(4) & !\inst|Buffer3\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer3\(5),
	datab => \inst|Buffer3\(6),
	datac => \inst|Buffer3\(4),
	datad => \inst|Buffer3\(3),
	combout => \inst|Equal3~0_combout\);

-- Location: LCCOMB_X31_Y29_N14
\inst|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal3~1_combout\ = (!\inst|Buffer3\(0) & (!\inst|Buffer3\(1) & (!\inst|Buffer3\(2) & \inst|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer3\(0),
	datab => \inst|Buffer3\(1),
	datac => \inst|Buffer3\(2),
	datad => \inst|Equal3~0_combout\,
	combout => \inst|Equal3~1_combout\);

-- Location: LCCOMB_X28_Y29_N8
\inst|Buffer2[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer2[7]~3_combout\ = ((\inst|Equal3~3_combout\ & ((\inst|Equal2~3_combout\) # (!\inst|Equal3~1_combout\)))) # (!\inst|BufferCount~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~3_combout\,
	datab => \inst|Equal3~1_combout\,
	datac => \inst|Equal3~3_combout\,
	datad => \inst|BufferCount~2_combout\,
	combout => \inst|Buffer2[7]~3_combout\);

-- Location: LCCOMB_X28_Y29_N18
\inst|Buffer2[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer2[7]~4_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & (\inst|Buffer2[7]~3_combout\ $ (\inst|Buffer2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst1|OUTPUT\(1),
	datac => \inst|Buffer2[7]~3_combout\,
	datad => \inst|Buffer2~0_combout\,
	combout => \inst|Buffer2[7]~4_combout\);

-- Location: FF_X29_Y29_N29
\inst|Buffer2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer2~14_combout\,
	ena => \inst|Buffer2[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer2\(9));

-- Location: LCCOMB_X28_Y29_N22
\inst|Buffer1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~0_combout\ = (\inst|clock_count\(1) & (\inst|clock_count\(0) & (\inst|Equal5~3_combout\ & \inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(1),
	datab => \inst|clock_count\(0),
	datac => \inst|Equal5~3_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Buffer1~0_combout\);

-- Location: LCCOMB_X29_Y29_N20
\inst|Buffer1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~5_combout\ = (\inst|Buffer1~0_combout\ & ((\ADC_IN[9]~input_o\))) # (!\inst|Buffer1~0_combout\ & (\inst|Buffer2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Buffer2\(9),
	datac => \ADC_IN[9]~input_o\,
	datad => \inst|Buffer1~0_combout\,
	combout => \inst|Buffer1~5_combout\);

-- Location: LCCOMB_X28_Y29_N10
\inst|Buffer1[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1[10]~2_combout\ = (\inst|Buffer1~0_combout\ $ (((\inst|Equal2~3_combout\) # (!\inst|BufferCount~2_combout\)))) # (!\inst1|OUTPUT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~3_combout\,
	datab => \inst1|OUTPUT\(1),
	datac => \inst|Buffer1~0_combout\,
	datad => \inst|BufferCount~2_combout\,
	combout => \inst|Buffer1[10]~2_combout\);

-- Location: LCCOMB_X28_Y29_N24
\inst|Buffer1[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1[10]~3_combout\ = (\inst1|OUTPUT\(0)) # (!\inst|Buffer1[10]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datad => \inst|Buffer1[10]~2_combout\,
	combout => \inst|Buffer1[10]~3_combout\);

-- Location: FF_X29_Y29_N21
\inst|Buffer1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer1~5_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|Buffer1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(9));

-- Location: LCCOMB_X27_Y29_N20
\inst|Buffer3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer3~12_combout\ = (\ADC_IN[8]~input_o\ & (!\inst|Equal2~3_combout\ & (!\inst1|OUTPUT\(0) & !\inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datab => \inst|Equal2~3_combout\,
	datac => \inst1|OUTPUT\(0),
	datad => \inst|Equal4~0_combout\,
	combout => \inst|Buffer3~12_combout\);

-- Location: FF_X27_Y29_N21
\inst|Buffer3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer3~12_combout\,
	ena => \inst|Buffer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer3\(8));

-- Location: LCCOMB_X29_Y29_N22
\inst|Buffer2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer2~13_combout\ = (!\inst|Buffer2[7]~1_combout\ & ((\inst|Buffer2~0_combout\ & ((\inst|Buffer3\(8)))) # (!\inst|Buffer2~0_combout\ & (\ADC_IN[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datab => \inst|Buffer2~0_combout\,
	datac => \inst|Buffer3\(8),
	datad => \inst|Buffer2[7]~1_combout\,
	combout => \inst|Buffer2~13_combout\);

-- Location: FF_X29_Y29_N23
\inst|Buffer2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer2~13_combout\,
	ena => \inst|Buffer2[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer2\(8));

-- Location: LCCOMB_X29_Y29_N10
\inst|Buffer1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~6_combout\ = (\inst|Buffer1~0_combout\ & (\ADC_IN[8]~input_o\)) # (!\inst|Buffer1~0_combout\ & ((\inst|Buffer2\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datac => \inst|Buffer2\(8),
	datad => \inst|Buffer1~0_combout\,
	combout => \inst|Buffer1~6_combout\);

-- Location: FF_X29_Y29_N11
\inst|Buffer1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer1~6_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|Buffer1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(8));

-- Location: LCCOMB_X29_Y29_N2
\inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\ADC_IN[8]~input_o\ & (\inst|Buffer1\(8) & (\inst|Buffer1\(9) $ (!\ADC_IN[9]~input_o\)))) # (!\ADC_IN[8]~input_o\ & (!\inst|Buffer1\(8) & (\inst|Buffer1\(9) $ (!\ADC_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datab => \inst|Buffer1\(9),
	datac => \ADC_IN[9]~input_o\,
	datad => \inst|Buffer1\(8),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X30_Y29_N4
\inst|Buffer1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~13_combout\ = (\inst|Buffer1~0_combout\ & (\ADC_IN[1]~input_o\)) # (!\inst|Buffer1~0_combout\ & ((\inst|Buffer2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[1]~input_o\,
	datac => \inst|Buffer2\(1),
	datad => \inst|Buffer1~0_combout\,
	combout => \inst|Buffer1~13_combout\);

-- Location: FF_X30_Y29_N5
\inst|Buffer1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer1~13_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|Buffer1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(1));

-- Location: LCCOMB_X31_Y29_N20
\inst|Buffer2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer2~5_combout\ = (!\inst|Buffer2[7]~1_combout\ & ((\inst|Buffer2~0_combout\ & (\inst|Buffer3\(0))) # (!\inst|Buffer2~0_combout\ & ((\ADC_IN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer3\(0),
	datab => \inst|Buffer2~0_combout\,
	datac => \ADC_IN[0]~input_o\,
	datad => \inst|Buffer2[7]~1_combout\,
	combout => \inst|Buffer2~5_combout\);

-- Location: FF_X31_Y29_N21
\inst|Buffer2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer2~5_combout\,
	ena => \inst|Buffer2[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer2\(0));

-- Location: LCCOMB_X30_Y29_N18
\inst|Buffer1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~14_combout\ = (\inst|Buffer1~0_combout\ & ((\ADC_IN[0]~input_o\))) # (!\inst|Buffer1~0_combout\ & (\inst|Buffer2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer2\(0),
	datab => \inst|Buffer1~0_combout\,
	datad => \ADC_IN[0]~input_o\,
	combout => \inst|Buffer1~14_combout\);

-- Location: FF_X30_Y29_N19
\inst|Buffer1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer1~14_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|Buffer1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(0));

-- Location: LCCOMB_X30_Y29_N24
\inst|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~2_combout\ = (\ADC_IN[0]~input_o\ & (\inst|Buffer1\(0) & (\ADC_IN[1]~input_o\ $ (!\inst|Buffer1\(1))))) # (!\ADC_IN[0]~input_o\ & (!\inst|Buffer1\(0) & (\ADC_IN[1]~input_o\ $ (!\inst|Buffer1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[0]~input_o\,
	datab => \ADC_IN[1]~input_o\,
	datac => \inst|Buffer1\(1),
	datad => \inst|Buffer1\(0),
	combout => \inst|Equal1~2_combout\);

-- Location: LCCOMB_X31_Y29_N8
\inst|Buffer2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer2~7_combout\ = (!\inst|Buffer2[7]~1_combout\ & ((\inst|Buffer2~0_combout\ & ((\inst|Buffer3\(2)))) # (!\inst|Buffer2~0_combout\ & (\ADC_IN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[2]~input_o\,
	datab => \inst|Buffer2~0_combout\,
	datac => \inst|Buffer3\(2),
	datad => \inst|Buffer2[7]~1_combout\,
	combout => \inst|Buffer2~7_combout\);

-- Location: FF_X31_Y29_N9
\inst|Buffer2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer2~7_combout\,
	ena => \inst|Buffer2[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer2\(2));

-- Location: LCCOMB_X30_Y29_N22
\inst|Buffer1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~12_combout\ = (\inst|Buffer1~0_combout\ & (\ADC_IN[2]~input_o\)) # (!\inst|Buffer1~0_combout\ & ((\inst|Buffer2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[2]~input_o\,
	datac => \inst|Buffer2\(2),
	datad => \inst|Buffer1~0_combout\,
	combout => \inst|Buffer1~12_combout\);

-- Location: FF_X30_Y29_N23
\inst|Buffer1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer1~12_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|Buffer1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(2));

-- Location: LCCOMB_X31_Y29_N10
\inst|Buffer2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer2~8_combout\ = (!\inst|Buffer2[7]~1_combout\ & ((\inst|Buffer2~0_combout\ & (\inst|Buffer3\(3))) # (!\inst|Buffer2~0_combout\ & ((\ADC_IN[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer2~0_combout\,
	datab => \inst|Buffer3\(3),
	datac => \ADC_IN[3]~input_o\,
	datad => \inst|Buffer2[7]~1_combout\,
	combout => \inst|Buffer2~8_combout\);

-- Location: FF_X31_Y29_N11
\inst|Buffer2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer2~8_combout\,
	ena => \inst|Buffer2[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer2\(3));

-- Location: LCCOMB_X30_Y29_N20
\inst|Buffer1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~11_combout\ = (\inst|Buffer1~0_combout\ & ((\ADC_IN[3]~input_o\))) # (!\inst|Buffer1~0_combout\ & (\inst|Buffer2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Buffer2\(3),
	datac => \ADC_IN[3]~input_o\,
	datad => \inst|Buffer1~0_combout\,
	combout => \inst|Buffer1~11_combout\);

-- Location: FF_X30_Y29_N21
\inst|Buffer1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer1~11_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|Buffer1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(3));

-- Location: LCCOMB_X30_Y29_N10
\inst|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~3_combout\ = (\ADC_IN[3]~input_o\ & (\inst|Buffer1\(3) & (\ADC_IN[2]~input_o\ $ (!\inst|Buffer1\(2))))) # (!\ADC_IN[3]~input_o\ & (!\inst|Buffer1\(3) & (\ADC_IN[2]~input_o\ $ (!\inst|Buffer1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[3]~input_o\,
	datab => \ADC_IN[2]~input_o\,
	datac => \inst|Buffer1\(2),
	datad => \inst|Buffer1\(3),
	combout => \inst|Equal1~3_combout\);

-- Location: LCCOMB_X31_Y29_N28
\inst|Buffer2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer2~10_combout\ = (!\inst|Buffer2[7]~1_combout\ & ((\inst|Buffer2~0_combout\ & ((\inst|Buffer3\(5)))) # (!\inst|Buffer2~0_combout\ & (\ADC_IN[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer2~0_combout\,
	datab => \ADC_IN[5]~input_o\,
	datac => \inst|Buffer3\(5),
	datad => \inst|Buffer2[7]~1_combout\,
	combout => \inst|Buffer2~10_combout\);

-- Location: FF_X31_Y29_N29
\inst|Buffer2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer2~10_combout\,
	ena => \inst|Buffer2[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer2\(5));

-- Location: LCCOMB_X32_Y29_N4
\inst|Buffer1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~9_combout\ = (\inst|Buffer1~0_combout\ & (\ADC_IN[5]~input_o\)) # (!\inst|Buffer1~0_combout\ & ((\inst|Buffer2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[5]~input_o\,
	datab => \inst|Buffer2\(5),
	datad => \inst|Buffer1~0_combout\,
	combout => \inst|Buffer1~9_combout\);

-- Location: FF_X32_Y29_N5
\inst|Buffer1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer1~9_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|Buffer1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(5));

-- Location: LCCOMB_X31_Y29_N6
\inst|Buffer2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer2~9_combout\ = (!\inst|Buffer2[7]~1_combout\ & ((\inst|Buffer2~0_combout\ & ((\inst|Buffer3\(4)))) # (!\inst|Buffer2~0_combout\ & (\ADC_IN[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[4]~input_o\,
	datab => \inst|Buffer3\(4),
	datac => \inst|Buffer2~0_combout\,
	datad => \inst|Buffer2[7]~1_combout\,
	combout => \inst|Buffer2~9_combout\);

-- Location: FF_X31_Y29_N7
\inst|Buffer2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer2~9_combout\,
	ena => \inst|Buffer2[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer2\(4));

-- Location: LCCOMB_X32_Y29_N18
\inst|Buffer1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~10_combout\ = (\inst|Buffer1~0_combout\ & (\ADC_IN[4]~input_o\)) # (!\inst|Buffer1~0_combout\ & ((\inst|Buffer2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[4]~input_o\,
	datac => \inst|Buffer2\(4),
	datad => \inst|Buffer1~0_combout\,
	combout => \inst|Buffer1~10_combout\);

-- Location: FF_X32_Y29_N19
\inst|Buffer1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer1~10_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|Buffer1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(4));

-- Location: LCCOMB_X32_Y29_N24
\inst|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~4_combout\ = (\ADC_IN[4]~input_o\ & (\inst|Buffer1\(4) & (\ADC_IN[5]~input_o\ $ (!\inst|Buffer1\(5))))) # (!\ADC_IN[4]~input_o\ & (!\inst|Buffer1\(4) & (\ADC_IN[5]~input_o\ $ (!\inst|Buffer1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[4]~input_o\,
	datab => \ADC_IN[5]~input_o\,
	datac => \inst|Buffer1\(5),
	datad => \inst|Buffer1\(4),
	combout => \inst|Equal1~4_combout\);

-- Location: LCCOMB_X31_Y29_N26
\inst|Buffer2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer2~11_combout\ = (!\inst|Buffer2[7]~1_combout\ & ((\inst|Buffer2~0_combout\ & ((\inst|Buffer3\(6)))) # (!\inst|Buffer2~0_combout\ & (\ADC_IN[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[6]~input_o\,
	datab => \inst|Buffer3\(6),
	datac => \inst|Buffer2~0_combout\,
	datad => \inst|Buffer2[7]~1_combout\,
	combout => \inst|Buffer2~11_combout\);

-- Location: FF_X31_Y29_N27
\inst|Buffer2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer2~11_combout\,
	ena => \inst|Buffer2[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer2\(6));

-- Location: LCCOMB_X32_Y29_N26
\inst|Buffer1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~8_combout\ = (\inst|Buffer1~0_combout\ & (\ADC_IN[6]~input_o\)) # (!\inst|Buffer1~0_combout\ & ((\inst|Buffer2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[6]~input_o\,
	datac => \inst|Buffer2\(6),
	datad => \inst|Buffer1~0_combout\,
	combout => \inst|Buffer1~8_combout\);

-- Location: FF_X32_Y29_N27
\inst|Buffer1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer1~8_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|Buffer1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(6));

-- Location: LCCOMB_X31_Y29_N16
\inst|Buffer2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer2~12_combout\ = (!\inst|Buffer2[7]~1_combout\ & ((\inst|Buffer2~0_combout\ & (\inst|Buffer3\(7))) # (!\inst|Buffer2~0_combout\ & ((\ADC_IN[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer2~0_combout\,
	datab => \inst|Buffer3\(7),
	datac => \ADC_IN[7]~input_o\,
	datad => \inst|Buffer2[7]~1_combout\,
	combout => \inst|Buffer2~12_combout\);

-- Location: FF_X31_Y29_N17
\inst|Buffer2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer2~12_combout\,
	ena => \inst|Buffer2[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer2\(7));

-- Location: LCCOMB_X32_Y29_N16
\inst|Buffer1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~7_combout\ = (\inst|Buffer1~0_combout\ & ((\ADC_IN[7]~input_o\))) # (!\inst|Buffer1~0_combout\ & (\inst|Buffer2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer2\(7),
	datab => \ADC_IN[7]~input_o\,
	datad => \inst|Buffer1~0_combout\,
	combout => \inst|Buffer1~7_combout\);

-- Location: FF_X32_Y29_N17
\inst|Buffer1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer1~7_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|Buffer1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(7));

-- Location: LCCOMB_X32_Y29_N6
\inst|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~5_combout\ = (\ADC_IN[7]~input_o\ & (\inst|Buffer1\(7) & (\ADC_IN[6]~input_o\ $ (!\inst|Buffer1\(6))))) # (!\ADC_IN[7]~input_o\ & (!\inst|Buffer1\(7) & (\ADC_IN[6]~input_o\ $ (!\inst|Buffer1\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[7]~input_o\,
	datab => \ADC_IN[6]~input_o\,
	datac => \inst|Buffer1\(6),
	datad => \inst|Buffer1\(7),
	combout => \inst|Equal1~5_combout\);

-- Location: LCCOMB_X28_Y29_N12
\inst|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~6_combout\ = (\inst|Equal1~2_combout\ & (\inst|Equal1~3_combout\ & (\inst|Equal1~4_combout\ & \inst|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~2_combout\,
	datab => \inst|Equal1~3_combout\,
	datac => \inst|Equal1~4_combout\,
	datad => \inst|Equal1~5_combout\,
	combout => \inst|Equal1~6_combout\);

-- Location: LCCOMB_X28_Y29_N30
\inst|BufferCount~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~1_combout\ = (\inst|Equal1~1_combout\ & (\inst|Equal1~0_combout\ & \inst|Equal1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~1_combout\,
	datac => \inst|Equal1~0_combout\,
	datad => \inst|Equal1~6_combout\,
	combout => \inst|BufferCount~1_combout\);

-- Location: LCCOMB_X28_Y29_N16
\inst|BufferCount~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~2_combout\ = (!\inst|clock_count\(1) & (!\inst|clock_count\(0) & (!\inst|BufferCount~1_combout\ & \inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(1),
	datab => \inst|clock_count\(0),
	datac => \inst|BufferCount~1_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|BufferCount~2_combout\);

-- Location: LCCOMB_X28_Y29_N0
\inst|Buffer3[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer3[8]~1_combout\ = (\inst|Equal2~3_combout\ & (!\inst|Equal3~3_combout\ & ((\inst|BufferCount~2_combout\)))) # (!\inst|Equal2~3_combout\ & (\inst|Equal4~0_combout\ $ (((\inst|Equal3~3_combout\) # (!\inst|BufferCount~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~3_combout\,
	datab => \inst|Equal3~3_combout\,
	datac => \inst|Equal4~0_combout\,
	datad => \inst|BufferCount~2_combout\,
	combout => \inst|Buffer3[8]~1_combout\);

-- Location: LCCOMB_X28_Y29_N6
\inst|Buffer3[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer3[8]~2_combout\ = (\inst1|OUTPUT\(0)) # ((\inst1|OUTPUT\(1) & \inst|Buffer3[8]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(1),
	datac => \inst1|OUTPUT\(0),
	datad => \inst|Buffer3[8]~1_combout\,
	combout => \inst|Buffer3[8]~2_combout\);

-- Location: FF_X27_Y29_N25
\inst|Buffer3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer3~13_combout\,
	ena => \inst|Buffer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer3\(7));

-- Location: LCCOMB_X27_Y29_N28
\inst|Buffer3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer3~10_combout\ = (\ADC_IN[10]~input_o\ & (!\inst|Equal2~3_combout\ & (!\inst1|OUTPUT\(0) & !\inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[10]~input_o\,
	datab => \inst|Equal2~3_combout\,
	datac => \inst1|OUTPUT\(0),
	datad => \inst|Equal4~0_combout\,
	combout => \inst|Buffer3~10_combout\);

-- Location: FF_X27_Y29_N29
\inst|Buffer3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer3~10_combout\,
	ena => \inst|Buffer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer3\(10));

-- Location: LCCOMB_X27_Y29_N6
\inst|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal3~2_combout\ = (!\inst|Buffer3\(9) & (!\inst|Buffer3\(10) & (!\inst|Buffer3\(8) & !\inst|Buffer3\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer3\(9),
	datab => \inst|Buffer3\(10),
	datac => \inst|Buffer3\(8),
	datad => \inst|Buffer3\(11),
	combout => \inst|Equal3~2_combout\);

-- Location: LCCOMB_X28_Y29_N14
\inst|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal3~3_combout\ = (!\inst|Buffer3\(7) & (\inst|Equal3~2_combout\ & \inst|Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Buffer3\(7),
	datac => \inst|Equal3~2_combout\,
	datad => \inst|Equal3~1_combout\,
	combout => \inst|Equal3~3_combout\);

-- Location: LCCOMB_X29_Y29_N24
\inst|Buffer2[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer2[7]~1_combout\ = (\inst1|OUTPUT\(0)) # ((\inst|Equal3~3_combout\ & ((\inst|Equal5~3_combout\) # (\inst|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst|Equal5~3_combout\,
	datac => \inst|Equal4~0_combout\,
	datad => \inst|Equal3~3_combout\,
	combout => \inst|Buffer2[7]~1_combout\);

-- Location: LCCOMB_X29_Y29_N14
\inst|Buffer2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer2~15_combout\ = (!\inst|Buffer2[7]~1_combout\ & ((\inst|Buffer2~0_combout\ & ((\inst|Buffer3\(10)))) # (!\inst|Buffer2~0_combout\ & (\ADC_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer2[7]~1_combout\,
	datab => \ADC_IN[10]~input_o\,
	datac => \inst|Buffer3\(10),
	datad => \inst|Buffer2~0_combout\,
	combout => \inst|Buffer2~15_combout\);

-- Location: FF_X29_Y29_N15
\inst|Buffer2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer2~15_combout\,
	ena => \inst|Buffer2[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer2\(10));

-- Location: LCCOMB_X29_Y29_N6
\inst|Buffer1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~4_combout\ = (\inst|Buffer1~0_combout\ & (\ADC_IN[10]~input_o\)) # (!\inst|Buffer1~0_combout\ & ((\inst|Buffer2\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[10]~input_o\,
	datac => \inst|Buffer2\(10),
	datad => \inst|Buffer1~0_combout\,
	combout => \inst|Buffer1~4_combout\);

-- Location: FF_X29_Y29_N7
\inst|Buffer1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer1~4_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|Buffer1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(10));

-- Location: LCCOMB_X29_Y29_N26
\inst|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~0_combout\ = (!\inst|Buffer1\(10) & (!\inst|Buffer1\(9) & (!\inst|Buffer1\(11) & !\inst|Buffer1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer1\(10),
	datab => \inst|Buffer1\(9),
	datac => \inst|Buffer1\(11),
	datad => \inst|Buffer1\(8),
	combout => \inst|Equal5~0_combout\);

-- Location: LCCOMB_X32_Y29_N14
\inst|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~1_combout\ = (!\inst|Buffer1\(6) & (!\inst|Buffer1\(4) & (!\inst|Buffer1\(5) & !\inst|Buffer1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer1\(6),
	datab => \inst|Buffer1\(4),
	datac => \inst|Buffer1\(5),
	datad => \inst|Buffer1\(7),
	combout => \inst|Equal5~1_combout\);

-- Location: LCCOMB_X30_Y29_N26
\inst|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~2_combout\ = (!\inst|Buffer1\(2) & (!\inst|Buffer1\(0) & (!\inst|Buffer1\(1) & !\inst|Buffer1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer1\(2),
	datab => \inst|Buffer1\(0),
	datac => \inst|Buffer1\(1),
	datad => \inst|Buffer1\(3),
	combout => \inst|Equal5~2_combout\);

-- Location: LCCOMB_X29_Y29_N0
\inst|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~3_combout\ = (\inst|Equal5~0_combout\ & (\inst|Equal5~1_combout\ & \inst|Equal5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal5~0_combout\,
	datac => \inst|Equal5~1_combout\,
	datad => \inst|Equal5~2_combout\,
	combout => \inst|Equal5~3_combout\);

-- Location: LCCOMB_X29_Y29_N18
\inst|Buffer2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer2~0_combout\ = ((\inst|Equal5~3_combout\) # ((!\inst|Equal0~9_combout\) # (!\inst|clock_count\(1)))) # (!\inst|clock_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(0),
	datab => \inst|Equal5~3_combout\,
	datac => \inst|clock_count\(1),
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Buffer2~0_combout\);

-- Location: LCCOMB_X31_Y29_N22
\inst|Buffer2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer2~6_combout\ = (!\inst|Buffer2[7]~1_combout\ & ((\inst|Buffer2~0_combout\ & ((\inst|Buffer3\(1)))) # (!\inst|Buffer2~0_combout\ & (\ADC_IN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer2~0_combout\,
	datab => \ADC_IN[1]~input_o\,
	datac => \inst|Buffer3\(1),
	datad => \inst|Buffer2[7]~1_combout\,
	combout => \inst|Buffer2~6_combout\);

-- Location: FF_X31_Y29_N23
\inst|Buffer2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer2~6_combout\,
	ena => \inst|Buffer2[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer2\(1));

-- Location: LCCOMB_X31_Y29_N12
\inst|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = (!\inst|Buffer2\(1) & (!\inst|Buffer2\(0) & (!\inst|Buffer2\(2) & !\inst|Buffer2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer2\(1),
	datab => \inst|Buffer2\(0),
	datac => \inst|Buffer2\(2),
	datad => \inst|Buffer2\(3),
	combout => \inst|Equal2~0_combout\);

-- Location: LCCOMB_X32_Y29_N12
\inst|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal2~1_combout\ = (!\inst|Buffer2\(7) & (!\inst|Buffer2\(4) & (!\inst|Buffer2\(6) & !\inst|Buffer2\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer2\(7),
	datab => \inst|Buffer2\(4),
	datac => \inst|Buffer2\(6),
	datad => \inst|Buffer2\(5),
	combout => \inst|Equal2~1_combout\);

-- Location: LCCOMB_X29_Y29_N8
\inst|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal2~2_combout\ = (!\inst|Buffer2\(8) & (!\inst|Buffer2\(9) & (!\inst|Buffer2\(10) & !\inst|Buffer2\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer2\(8),
	datab => \inst|Buffer2\(9),
	datac => \inst|Buffer2\(10),
	datad => \inst|Buffer2\(11),
	combout => \inst|Equal2~2_combout\);

-- Location: LCCOMB_X31_Y29_N18
\inst|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal2~3_combout\ = (\inst|Equal2~0_combout\ & (\inst|Equal2~1_combout\ & \inst|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datac => \inst|Equal2~1_combout\,
	datad => \inst|Equal2~2_combout\,
	combout => \inst|Equal2~3_combout\);

-- Location: LCCOMB_X27_Y29_N10
\inst|Buffer3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer3~9_combout\ = (!\inst1|OUTPUT\(0) & (!\inst|Equal2~3_combout\ & (\ADC_IN[11]~input_o\ & !\inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datab => \inst|Equal2~3_combout\,
	datac => \ADC_IN[11]~input_o\,
	datad => \inst|Equal4~0_combout\,
	combout => \inst|Buffer3~9_combout\);

-- Location: FF_X27_Y29_N11
\inst|Buffer3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer3~9_combout\,
	ena => \inst|Buffer3[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer3\(11));

-- Location: LCCOMB_X29_Y29_N30
\inst|Buffer2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer2~2_combout\ = (!\inst|Buffer2[7]~1_combout\ & ((\inst|Buffer2~0_combout\ & (\inst|Buffer3\(11))) # (!\inst|Buffer2~0_combout\ & ((\ADC_IN[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer3\(11),
	datab => \inst|Buffer2~0_combout\,
	datac => \ADC_IN[11]~input_o\,
	datad => \inst|Buffer2[7]~1_combout\,
	combout => \inst|Buffer2~2_combout\);

-- Location: FF_X28_Y29_N25
\inst|Buffer2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Buffer2~2_combout\,
	sload => VCC,
	ena => \inst|Buffer2[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer2\(11));

-- Location: LCCOMB_X29_Y29_N4
\inst|Buffer1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~1_combout\ = (\inst|Buffer1~0_combout\ & ((\ADC_IN[11]~input_o\))) # (!\inst|Buffer1~0_combout\ & (\inst|Buffer2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Buffer2\(11),
	datac => \ADC_IN[11]~input_o\,
	datad => \inst|Buffer1~0_combout\,
	combout => \inst|Buffer1~1_combout\);

-- Location: FF_X29_Y29_N5
\inst|Buffer1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer1~1_combout\,
	sclr => \inst1|OUTPUT\(0),
	ena => \inst|Buffer1[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(11));

-- Location: LCCOMB_X30_Y29_N28
\inst|ADC_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~0_combout\ = (!\inst1|OUTPUT\(0) & \inst|Buffer1\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datac => \inst|Buffer1\(11),
	combout => \inst|ADC_out~0_combout\);

-- Location: FF_X30_Y29_N29
\inst|ADC_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~0_combout\,
	ena => \inst|BufferCount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(11));

-- Location: LCCOMB_X30_Y29_N2
\inst|ADC_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~1_combout\ = (!\inst1|OUTPUT\(0) & \inst|Buffer1\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datac => \inst|Buffer1\(10),
	combout => \inst|ADC_out~1_combout\);

-- Location: FF_X30_Y29_N3
\inst|ADC_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~1_combout\,
	ena => \inst|BufferCount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(10));

-- Location: LCCOMB_X30_Y29_N0
\inst|ADC_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~2_combout\ = (\inst|Buffer1\(9) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer1\(9),
	datac => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~2_combout\);

-- Location: FF_X30_Y29_N1
\inst|ADC_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~2_combout\,
	ena => \inst|BufferCount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(9));

-- Location: LCCOMB_X30_Y29_N6
\inst|ADC_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~3_combout\ = (!\inst1|OUTPUT\(0) & \inst|Buffer1\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|OUTPUT\(0),
	datad => \inst|Buffer1\(8),
	combout => \inst|ADC_out~3_combout\);

-- Location: FF_X30_Y29_N7
\inst|ADC_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~3_combout\,
	ena => \inst|BufferCount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(8));

-- Location: LCCOMB_X32_Y29_N20
\inst|ADC_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~4_combout\ = (!\inst1|OUTPUT\(0) & \inst|Buffer1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(0),
	datad => \inst|Buffer1\(7),
	combout => \inst|ADC_out~4_combout\);

-- Location: FF_X32_Y29_N21
\inst|ADC_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~4_combout\,
	ena => \inst|BufferCount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(7));

-- Location: LCCOMB_X32_Y29_N22
\inst|ADC_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~5_combout\ = (\inst|Buffer1\(6) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Buffer1\(6),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~5_combout\);

-- Location: FF_X32_Y29_N23
\inst|ADC_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~5_combout\,
	ena => \inst|BufferCount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(6));

-- Location: LCCOMB_X32_Y29_N0
\inst|ADC_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~6_combout\ = (\inst|Buffer1\(5) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Buffer1\(5),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~6_combout\);

-- Location: FF_X32_Y29_N1
\inst|ADC_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~6_combout\,
	ena => \inst|BufferCount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(5));

-- Location: LCCOMB_X32_Y29_N10
\inst|ADC_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~7_combout\ = (\inst|Buffer1\(4) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Buffer1\(4),
	datad => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~7_combout\);

-- Location: FF_X32_Y29_N11
\inst|ADC_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~7_combout\,
	ena => \inst|BufferCount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(4));

-- Location: LCCOMB_X30_Y29_N16
\inst|ADC_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~8_combout\ = (\inst|Buffer1\(3) & !\inst1|OUTPUT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer1\(3),
	datac => \inst1|OUTPUT\(0),
	combout => \inst|ADC_out~8_combout\);

-- Location: FF_X30_Y29_N17
\inst|ADC_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~8_combout\,
	ena => \inst|BufferCount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(3));

-- Location: LCCOMB_X30_Y29_N14
\inst|ADC_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~9_combout\ = (!\inst1|OUTPUT\(0) & \inst|Buffer1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datad => \inst|Buffer1\(2),
	combout => \inst|ADC_out~9_combout\);

-- Location: FF_X30_Y29_N15
\inst|ADC_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~9_combout\,
	ena => \inst|BufferCount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(2));

-- Location: LCCOMB_X30_Y29_N12
\inst|ADC_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~10_combout\ = (!\inst1|OUTPUT\(0) & \inst|Buffer1\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datac => \inst|Buffer1\(1),
	combout => \inst|ADC_out~10_combout\);

-- Location: FF_X30_Y29_N13
\inst|ADC_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~10_combout\,
	ena => \inst|BufferCount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(1));

-- Location: LCCOMB_X30_Y29_N30
\inst|ADC_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~11_combout\ = (!\inst1|OUTPUT\(0) & \inst|Buffer1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datad => \inst|Buffer1\(0),
	combout => \inst|ADC_out~11_combout\);

-- Location: FF_X30_Y29_N31
\inst|ADC_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~11_combout\,
	ena => \inst|BufferCount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(0));

-- Location: LCCOMB_X27_Y29_N18
\inst|BufferCount~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~3_combout\ = (\inst|Equal4~0_combout\ & (!\inst|Equal3~3_combout\)) # (!\inst|Equal4~0_combout\ & (((!\inst|Equal5~3_combout\) # (!\inst|Equal2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~3_combout\,
	datab => \inst|Equal2~3_combout\,
	datac => \inst|Equal5~3_combout\,
	datad => \inst|Equal4~0_combout\,
	combout => \inst|BufferCount~3_combout\);

-- Location: LCCOMB_X27_Y29_N14
\inst|BufferCount~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~4_combout\ = (!\inst1|OUTPUT\(0) & (\inst1|OUTPUT\(1) & \inst|BufferCount~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(0),
	datac => \inst1|OUTPUT\(1),
	datad => \inst|BufferCount~3_combout\,
	combout => \inst|BufferCount~4_combout\);

-- Location: LCCOMB_X27_Y29_N8
\inst|BufferCount~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~5_combout\ = (((\inst|Buffer3\(7)) # (!\inst|Equal2~3_combout\)) # (!\inst|Equal3~1_combout\)) # (!\inst|Equal3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~2_combout\,
	datab => \inst|Equal3~1_combout\,
	datac => \inst|Buffer3\(7),
	datad => \inst|Equal2~3_combout\,
	combout => \inst|BufferCount~5_combout\);

-- Location: LCCOMB_X27_Y29_N2
\inst|BufferCount~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~6_combout\ = (\inst|BufferCount~0_combout\) # ((\inst1|OUTPUT\(1) & (\inst|BufferCount~2_combout\ & \inst|BufferCount~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(1),
	datab => \inst|BufferCount~2_combout\,
	datac => \inst|BufferCount~5_combout\,
	datad => \inst|BufferCount~0_combout\,
	combout => \inst|BufferCount~6_combout\);

-- Location: FF_X27_Y29_N15
\inst|BufferCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCount~4_combout\,
	ena => \inst|BufferCount~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCount\(1));

-- Location: LCCOMB_X30_Y29_N8
\inst|BufferCheck~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCheck~0_combout\ = (!\inst1|OUTPUT\(0) & \inst|BufferCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTPUT\(0),
	datac => \inst|BufferCount\(1),
	combout => \inst|BufferCheck~0_combout\);

-- Location: FF_X30_Y29_N9
\inst|BufferCheck[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCheck~0_combout\,
	ena => \inst|BufferCount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCheck\(1));

-- Location: LCCOMB_X27_Y29_N16
\inst|BufferCount~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~7_combout\ = (\inst|Equal2~3_combout\ & (((\inst|Equal5~3_combout\ & !\inst|Equal4~0_combout\)))) # (!\inst|Equal2~3_combout\ & ((\inst|Equal3~3_combout\) # ((!\inst|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~3_combout\,
	datab => \inst|Equal2~3_combout\,
	datac => \inst|Equal5~3_combout\,
	datad => \inst|Equal4~0_combout\,
	combout => \inst|BufferCount~7_combout\);

-- Location: LCCOMB_X27_Y29_N12
\inst|BufferCount~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCount~8_combout\ = (\inst1|OUTPUT\(0)) # ((!\inst|BufferCount~7_combout\) # (!\inst1|OUTPUT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(0),
	datac => \inst1|OUTPUT\(1),
	datad => \inst|BufferCount~7_combout\,
	combout => \inst|BufferCount~8_combout\);

-- Location: FF_X27_Y29_N13
\inst|BufferCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCount~8_combout\,
	ena => \inst|BufferCount~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCount\(0));

-- Location: LCCOMB_X32_Y29_N28
\inst|BufferCheck~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCheck~1_combout\ = (!\inst1|OUTPUT\(0) & !\inst|BufferCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|OUTPUT\(0),
	datad => \inst|BufferCount\(0),
	combout => \inst|BufferCheck~1_combout\);

-- Location: FF_X32_Y29_N29
\inst|BufferCheck[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCheck~1_combout\,
	ena => \inst|BufferCount~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCheck\(0));

-- Location: LCCOMB_X31_Y30_N14
\inst1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (\inst1|Equal0~1_combout\ & (!\MCU_IN[1]~input_o\ & \MCU_IN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~1_combout\,
	datac => \MCU_IN[1]~input_o\,
	datad => \MCU_IN[0]~input_o\,
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X31_Y30_N10
\inst1|SPACE_AVAILABLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~0_combout\ = (\inst1|Equal0~2_combout\) # ((!\inst|BufferCheck\(1) & !\inst|BufferCheck\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BufferCheck\(1),
	datac => \inst1|Equal0~2_combout\,
	datad => \inst|BufferCheck\(0),
	combout => \inst1|SPACE_AVAILABLE~0_combout\);

-- Location: FF_X31_Y30_N11
\inst1|SPACE_AVAILABLE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst1|SPACE_AVAILABLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SPACE_AVAILABLE\(2));

-- Location: LCCOMB_X31_Y30_N12
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

-- Location: FF_X31_Y30_N13
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

-- Location: LCCOMB_X31_Y30_N20
\inst1|SPACE_AVAILABLE~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~1_combout\ = (!\inst1|Equal0~2_combout\ & (\inst|BufferCheck\(1) $ (\inst|BufferCheck\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BufferCheck\(1),
	datac => \inst1|Equal0~2_combout\,
	datad => \inst|BufferCheck\(0),
	combout => \inst1|SPACE_AVAILABLE~1_combout\);

-- Location: FF_X31_Y30_N21
\inst1|SPACE_AVAILABLE[1]\ : dffeas
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
	q => \inst1|SPACE_AVAILABLE\(1));

-- Location: LCCOMB_X31_Y30_N26
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

-- Location: FF_X31_Y30_N27
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

-- Location: LCCOMB_X31_Y30_N22
\inst1|SPACE_AVAILABLE~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|SPACE_AVAILABLE~2_combout\ = (\inst|BufferCheck\(0) & (((\MCU_IN[1]~input_o\) # (!\inst1|Equal0~1_combout\)) # (!\MCU_IN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MCU_IN[0]~input_o\,
	datab => \MCU_IN[1]~input_o\,
	datac => \inst1|Equal0~1_combout\,
	datad => \inst|BufferCheck\(0),
	combout => \inst1|SPACE_AVAILABLE~2_combout\);

-- Location: FF_X31_Y30_N23
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

-- Location: FF_X31_Y30_N25
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

ww_BUFFERCHEQ(3) <= \BUFFERCHEQ[3]~output_o\;

ww_BUFFERCHEQ(2) <= \BUFFERCHEQ[2]~output_o\;

ww_BUFFERCHEQ(1) <= \BUFFERCHEQ[1]~output_o\;

ww_BUFFERCHEQ(0) <= \BUFFERCHEQ[0]~output_o\;

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


