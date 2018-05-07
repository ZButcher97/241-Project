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

-- DATE "05/07/2018 23:30:58"

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
	Y : OUT std_logic_vector(15 DOWNTO 0);
	CLK : IN std_logic;
	RESET : IN std_logic;
	USER_BUTTON : IN std_logic;
	ADC_IN : IN std_logic_vector(11 DOWNTO 0);
	Z : OUT std_logic_vector(3 DOWNTO 0)
	);
END P1;

-- Design Ports Information
-- Y[15]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[2]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- USER_BUTTON	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[11]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[10]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[4]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[7]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[8]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[9]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_Y : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_USER_BUTTON : std_logic;
SIGNAL ww_ADC_IN : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_Z : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Y[15]~output_o\ : std_logic;
SIGNAL \Y[14]~output_o\ : std_logic;
SIGNAL \Y[13]~output_o\ : std_logic;
SIGNAL \Y[12]~output_o\ : std_logic;
SIGNAL \Y[11]~output_o\ : std_logic;
SIGNAL \Y[10]~output_o\ : std_logic;
SIGNAL \Y[9]~output_o\ : std_logic;
SIGNAL \Y[8]~output_o\ : std_logic;
SIGNAL \Y[7]~output_o\ : std_logic;
SIGNAL \Y[6]~output_o\ : std_logic;
SIGNAL \Y[5]~output_o\ : std_logic;
SIGNAL \Y[4]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Z[3]~output_o\ : std_logic;
SIGNAL \Z[2]~output_o\ : std_logic;
SIGNAL \Z[1]~output_o\ : std_logic;
SIGNAL \Z[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst|ADC_out[15]~14_combout\ : std_logic;
SIGNAL \inst|latched~q\ : std_logic;
SIGNAL \USER_BUTTON~input_o\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|Add0~53\ : std_logic;
SIGNAL \inst|Add0~55_combout\ : std_logic;
SIGNAL \inst|Add0~57_combout\ : std_logic;
SIGNAL \inst|clock_count[0]~0_combout\ : std_logic;
SIGNAL \inst|Add0~56\ : std_logic;
SIGNAL \inst|Add0~58_combout\ : std_logic;
SIGNAL \inst|Add0~60_combout\ : std_logic;
SIGNAL \inst|Add0~59\ : std_logic;
SIGNAL \inst|Add0~61_combout\ : std_logic;
SIGNAL \inst|Add0~63_combout\ : std_logic;
SIGNAL \inst|Add0~62\ : std_logic;
SIGNAL \inst|Add0~64_combout\ : std_logic;
SIGNAL \inst|Add0~66_combout\ : std_logic;
SIGNAL \inst|Add0~65\ : std_logic;
SIGNAL \inst|Add0~67_combout\ : std_logic;
SIGNAL \inst|Add0~69_combout\ : std_logic;
SIGNAL \inst|Add0~68\ : std_logic;
SIGNAL \inst|Add0~70_combout\ : std_logic;
SIGNAL \inst|Add0~72_combout\ : std_logic;
SIGNAL \inst|Add0~71\ : std_logic;
SIGNAL \inst|Add0~73_combout\ : std_logic;
SIGNAL \inst|Add0~75_combout\ : std_logic;
SIGNAL \inst|Add0~74\ : std_logic;
SIGNAL \inst|Add0~76_combout\ : std_logic;
SIGNAL \inst|Add0~78_combout\ : std_logic;
SIGNAL \inst|Add0~77\ : std_logic;
SIGNAL \inst|Add0~79_combout\ : std_logic;
SIGNAL \inst|Add0~81_combout\ : std_logic;
SIGNAL \inst|Add0~80\ : std_logic;
SIGNAL \inst|Add0~82_combout\ : std_logic;
SIGNAL \inst|Add0~107_combout\ : std_logic;
SIGNAL \inst|Add0~83\ : std_logic;
SIGNAL \inst|Add0~84_combout\ : std_logic;
SIGNAL \inst|Add0~108_combout\ : std_logic;
SIGNAL \inst|Add0~85\ : std_logic;
SIGNAL \inst|Add0~86_combout\ : std_logic;
SIGNAL \inst|Add0~109_combout\ : std_logic;
SIGNAL \inst|Add0~87\ : std_logic;
SIGNAL \inst|Add0~88_combout\ : std_logic;
SIGNAL \inst|Add0~110_combout\ : std_logic;
SIGNAL \inst|Add0~89\ : std_logic;
SIGNAL \inst|Add0~90_combout\ : std_logic;
SIGNAL \inst|Add0~111_combout\ : std_logic;
SIGNAL \inst|Add0~91\ : std_logic;
SIGNAL \inst|Add0~92_combout\ : std_logic;
SIGNAL \inst|Add0~112_combout\ : std_logic;
SIGNAL \inst|Add0~93\ : std_logic;
SIGNAL \inst|Add0~94_combout\ : std_logic;
SIGNAL \inst|Add0~113_combout\ : std_logic;
SIGNAL \inst|Add0~95\ : std_logic;
SIGNAL \inst|Add0~96_combout\ : std_logic;
SIGNAL \inst|Add0~114_combout\ : std_logic;
SIGNAL \inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|Add0~97\ : std_logic;
SIGNAL \inst|Add0~98_combout\ : std_logic;
SIGNAL \inst|Add0~115_combout\ : std_logic;
SIGNAL \inst|Add0~99\ : std_logic;
SIGNAL \inst|Add0~100_combout\ : std_logic;
SIGNAL \inst|Add0~102_combout\ : std_logic;
SIGNAL \inst|Add0~101\ : std_logic;
SIGNAL \inst|Add0~103_combout\ : std_logic;
SIGNAL \inst|Add0~116_combout\ : std_logic;
SIGNAL \inst|Add0~104\ : std_logic;
SIGNAL \inst|Add0~105_combout\ : std_logic;
SIGNAL \inst|Add0~117_combout\ : std_logic;
SIGNAL \inst|Equal0~8_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|Equal0~9_combout\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~27_combout\ : std_logic;
SIGNAL \inst|Add0~33_combout\ : std_logic;
SIGNAL \inst|Add0~28\ : std_logic;
SIGNAL \inst|Add0~29_combout\ : std_logic;
SIGNAL \inst|Add0~31_combout\ : std_logic;
SIGNAL \inst|Add0~30\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~37_combout\ : std_logic;
SIGNAL \inst|Add0~39_combout\ : std_logic;
SIGNAL \inst|Add0~38\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|Add0~41\ : std_logic;
SIGNAL \inst|Add0~43_combout\ : std_logic;
SIGNAL \inst|Add0~45_combout\ : std_logic;
SIGNAL \inst|Add0~44\ : std_logic;
SIGNAL \inst|Add0~46_combout\ : std_logic;
SIGNAL \inst|Add0~48_combout\ : std_logic;
SIGNAL \inst|Add0~47\ : std_logic;
SIGNAL \inst|Add0~49_combout\ : std_logic;
SIGNAL \inst|Add0~51_combout\ : std_logic;
SIGNAL \inst|Add0~50\ : std_logic;
SIGNAL \inst|Add0~52_combout\ : std_logic;
SIGNAL \inst|Add0~54_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|ADC_out[15]~0_combout\ : std_logic;
SIGNAL \ADC_IN[11]~input_o\ : std_logic;
SIGNAL \inst|Buffer1~0_combout\ : std_logic;
SIGNAL \ADC_IN[1]~input_o\ : std_logic;
SIGNAL \inst|Buffer1~19_combout\ : std_logic;
SIGNAL \ADC_IN[0]~input_o\ : std_logic;
SIGNAL \inst|Buffer1~20_combout\ : std_logic;
SIGNAL \inst|Buffer1~1_combout\ : std_logic;
SIGNAL \ADC_IN[10]~input_o\ : std_logic;
SIGNAL \inst|Buffer1~10_combout\ : std_logic;
SIGNAL \inst|Buffer1~2_combout\ : std_logic;
SIGNAL \ADC_IN[9]~input_o\ : std_logic;
SIGNAL \inst|Buffer1~11_combout\ : std_logic;
SIGNAL \ADC_IN[8]~input_o\ : std_logic;
SIGNAL \inst|Buffer1~12_combout\ : std_logic;
SIGNAL \inst|Equal1~2_combout\ : std_logic;
SIGNAL \ADC_IN[4]~input_o\ : std_logic;
SIGNAL \inst|Buffer1~16_combout\ : std_logic;
SIGNAL \ADC_IN[5]~input_o\ : std_logic;
SIGNAL \inst|Buffer1~15_combout\ : std_logic;
SIGNAL \ADC_IN[7]~input_o\ : std_logic;
SIGNAL \inst|Buffer1~13_combout\ : std_logic;
SIGNAL \ADC_IN[6]~input_o\ : std_logic;
SIGNAL \inst|Buffer1~14_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \ADC_IN[2]~input_o\ : std_logic;
SIGNAL \inst|Buffer1~18_combout\ : std_logic;
SIGNAL \ADC_IN[3]~input_o\ : std_logic;
SIGNAL \inst|Buffer1~17_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Equal1~3_combout\ : std_logic;
SIGNAL \inst|Buffer1~4_combout\ : std_logic;
SIGNAL \inst|Buffer1~6_combout\ : std_logic;
SIGNAL \inst|Buffer1~3_combout\ : std_logic;
SIGNAL \inst|Buffer1~5_combout\ : std_logic;
SIGNAL \inst|Buffer1~7_combout\ : std_logic;
SIGNAL \inst|Buffer1~8_combout\ : std_logic;
SIGNAL \inst|ADC_out[15]~13_combout\ : std_logic;
SIGNAL \inst|Buffer1[8]~9_combout\ : std_logic;
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
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|Add1~11_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Add1~9_combout\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|BufferCheck~0_combout\ : std_logic;
SIGNAL \inst|BufferCheck~1_combout\ : std_logic;
SIGNAL \inst|BufferCheck~2_combout\ : std_logic;
SIGNAL \inst|BufferCheck~3_combout\ : std_logic;
SIGNAL \inst|ADC_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|BufferCheck\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|clock_count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|Buffer1\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|BufferCount\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Y <= ww_Y;
ww_CLK <= CLK;
ww_RESET <= RESET;
ww_USER_BUTTON <= USER_BUTTON;
ww_ADC_IN <= ADC_IN;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X31_Y34_N9
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(15),
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(12),
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(12),
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(11),
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(10),
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(9),
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(8),
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(7),
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(6),
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(5),
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(4),
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(3),
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(2),
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(1),
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(0),
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\Z[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BufferCheck\(3),
	devoe => ww_devoe,
	o => \Z[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\Z[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BufferCheck\(2),
	devoe => ww_devoe,
	o => \Z[2]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\Z[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BufferCheck\(1),
	devoe => ww_devoe,
	o => \Z[1]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\Z[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|BufferCheck\(0),
	devoe => ww_devoe,
	o => \Z[0]~output_o\);

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

-- Location: IOIBUF_X0_Y16_N15
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: LCCOMB_X21_Y30_N14
\inst|ADC_out[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[15]~14_combout\ = !\RESET~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	combout => \inst|ADC_out[15]~14_combout\);

-- Location: FF_X21_Y30_N29
\inst|latched\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|process_0~0_combout\,
	sclr => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|latched~q\);

-- Location: IOIBUF_X0_Y16_N22
\USER_BUTTON~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_USER_BUTTON,
	o => \USER_BUTTON~input_o\);

-- Location: LCCOMB_X21_Y30_N28
\inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (\inst|latched~q\) # (\USER_BUTTON~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|latched~q\,
	datad => \USER_BUTTON~input_o\,
	combout => \inst|process_0~0_combout\);

-- Location: LCCOMB_X20_Y31_N20
\inst|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~52_combout\ = (\inst|clock_count\(10) & (\inst|Add0~50\ $ (GND))) # (!\inst|clock_count\(10) & (!\inst|Add0~50\ & VCC))
-- \inst|Add0~53\ = CARRY((\inst|clock_count\(10) & !\inst|Add0~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(10),
	datad => VCC,
	cin => \inst|Add0~50\,
	combout => \inst|Add0~52_combout\,
	cout => \inst|Add0~53\);

-- Location: LCCOMB_X20_Y31_N22
\inst|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~55_combout\ = (\inst|clock_count\(11) & (!\inst|Add0~53\)) # (!\inst|clock_count\(11) & ((\inst|Add0~53\) # (GND)))
-- \inst|Add0~56\ = CARRY((!\inst|Add0~53\) # (!\inst|clock_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(11),
	datad => VCC,
	cin => \inst|Add0~53\,
	combout => \inst|Add0~55_combout\,
	cout => \inst|Add0~56\);

-- Location: LCCOMB_X19_Y31_N28
\inst|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~57_combout\ = (!\RESET~input_o\ & (\inst|Add0~55_combout\ & ((\inst|Equal0~9_combout\) # (\inst|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~9_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Equal0~4_combout\,
	datad => \inst|Add0~55_combout\,
	combout => \inst|Add0~57_combout\);

-- Location: LCCOMB_X21_Y30_N26
\inst|clock_count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clock_count[0]~0_combout\ = (\USER_BUTTON~input_o\) # ((\RESET~input_o\) # (\inst|latched~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USER_BUTTON~input_o\,
	datac => \RESET~input_o\,
	datad => \inst|latched~q\,
	combout => \inst|clock_count[0]~0_combout\);

-- Location: FF_X19_Y31_N29
\inst|clock_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~57_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(11));

-- Location: LCCOMB_X20_Y31_N24
\inst|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~58_combout\ = (\inst|clock_count\(12) & (\inst|Add0~56\ $ (GND))) # (!\inst|clock_count\(12) & (!\inst|Add0~56\ & VCC))
-- \inst|Add0~59\ = CARRY((\inst|clock_count\(12) & !\inst|Add0~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(12),
	datad => VCC,
	cin => \inst|Add0~56\,
	combout => \inst|Add0~58_combout\,
	cout => \inst|Add0~59\);

-- Location: LCCOMB_X18_Y31_N4
\inst|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~60_combout\ = (!\RESET~input_o\ & (\inst|Add0~58_combout\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst|Equal0~4_combout\,
	datac => \inst|Add0~58_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Add0~60_combout\);

-- Location: FF_X18_Y31_N5
\inst|clock_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~60_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(12));

-- Location: LCCOMB_X20_Y31_N26
\inst|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~61_combout\ = (\inst|clock_count\(13) & (!\inst|Add0~59\)) # (!\inst|clock_count\(13) & ((\inst|Add0~59\) # (GND)))
-- \inst|Add0~62\ = CARRY((!\inst|Add0~59\) # (!\inst|clock_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(13),
	datad => VCC,
	cin => \inst|Add0~59\,
	combout => \inst|Add0~61_combout\,
	cout => \inst|Add0~62\);

-- Location: LCCOMB_X18_Y31_N6
\inst|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~63_combout\ = (!\RESET~input_o\ & (\inst|Add0~61_combout\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst|Equal0~4_combout\,
	datac => \inst|Add0~61_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Add0~63_combout\);

-- Location: FF_X18_Y31_N7
\inst|clock_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~63_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(13));

-- Location: LCCOMB_X20_Y31_N28
\inst|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~64_combout\ = (\inst|clock_count\(14) & (\inst|Add0~62\ $ (GND))) # (!\inst|clock_count\(14) & (!\inst|Add0~62\ & VCC))
-- \inst|Add0~65\ = CARRY((\inst|clock_count\(14) & !\inst|Add0~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(14),
	datad => VCC,
	cin => \inst|Add0~62\,
	combout => \inst|Add0~64_combout\,
	cout => \inst|Add0~65\);

-- Location: LCCOMB_X19_Y31_N16
\inst|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~66_combout\ = (!\RESET~input_o\ & (\inst|Add0~64_combout\ & ((\inst|Equal0~9_combout\) # (\inst|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~9_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Equal0~4_combout\,
	datad => \inst|Add0~64_combout\,
	combout => \inst|Add0~66_combout\);

-- Location: FF_X19_Y31_N17
\inst|clock_count[14]\ : dffeas
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
	q => \inst|clock_count\(14));

-- Location: LCCOMB_X20_Y31_N30
\inst|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~67_combout\ = (\inst|clock_count\(15) & (!\inst|Add0~65\)) # (!\inst|clock_count\(15) & ((\inst|Add0~65\) # (GND)))
-- \inst|Add0~68\ = CARRY((!\inst|Add0~65\) # (!\inst|clock_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(15),
	datad => VCC,
	cin => \inst|Add0~65\,
	combout => \inst|Add0~67_combout\,
	cout => \inst|Add0~68\);

-- Location: LCCOMB_X19_Y31_N6
\inst|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~69_combout\ = (!\RESET~input_o\ & (\inst|Add0~67_combout\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Add0~67_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Add0~69_combout\);

-- Location: FF_X19_Y31_N7
\inst|clock_count[15]\ : dffeas
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
	q => \inst|clock_count\(15));

-- Location: LCCOMB_X20_Y30_N0
\inst|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~70_combout\ = (\inst|clock_count\(16) & (\inst|Add0~68\ $ (GND))) # (!\inst|clock_count\(16) & (!\inst|Add0~68\ & VCC))
-- \inst|Add0~71\ = CARRY((\inst|clock_count\(16) & !\inst|Add0~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(16),
	datad => VCC,
	cin => \inst|Add0~68\,
	combout => \inst|Add0~70_combout\,
	cout => \inst|Add0~71\);

-- Location: LCCOMB_X21_Y31_N26
\inst|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~72_combout\ = (!\RESET~input_o\ & (\inst|Add0~70_combout\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Add0~70_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Add0~72_combout\);

-- Location: FF_X21_Y31_N27
\inst|clock_count[16]\ : dffeas
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
	q => \inst|clock_count\(16));

-- Location: LCCOMB_X20_Y30_N2
\inst|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~73_combout\ = (\inst|clock_count\(17) & (!\inst|Add0~71\)) # (!\inst|clock_count\(17) & ((\inst|Add0~71\) # (GND)))
-- \inst|Add0~74\ = CARRY((!\inst|Add0~71\) # (!\inst|clock_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(17),
	datad => VCC,
	cin => \inst|Add0~71\,
	combout => \inst|Add0~73_combout\,
	cout => \inst|Add0~74\);

-- Location: LCCOMB_X21_Y31_N24
\inst|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~75_combout\ = (!\RESET~input_o\ & (\inst|Add0~73_combout\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Add0~73_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Add0~75_combout\);

-- Location: FF_X21_Y31_N25
\inst|clock_count[17]\ : dffeas
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
	q => \inst|clock_count\(17));

-- Location: LCCOMB_X20_Y30_N4
\inst|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~76_combout\ = (\inst|clock_count\(18) & (\inst|Add0~74\ $ (GND))) # (!\inst|clock_count\(18) & (!\inst|Add0~74\ & VCC))
-- \inst|Add0~77\ = CARRY((\inst|clock_count\(18) & !\inst|Add0~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(18),
	datad => VCC,
	cin => \inst|Add0~74\,
	combout => \inst|Add0~76_combout\,
	cout => \inst|Add0~77\);

-- Location: LCCOMB_X21_Y31_N10
\inst|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~78_combout\ = (!\RESET~input_o\ & (\inst|Add0~76_combout\ & ((\inst|Equal0~9_combout\) # (\inst|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~9_combout\,
	datab => \inst|Equal0~4_combout\,
	datac => \RESET~input_o\,
	datad => \inst|Add0~76_combout\,
	combout => \inst|Add0~78_combout\);

-- Location: FF_X21_Y31_N11
\inst|clock_count[18]\ : dffeas
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
	q => \inst|clock_count\(18));

-- Location: LCCOMB_X20_Y30_N6
\inst|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~79_combout\ = (\inst|clock_count\(19) & (!\inst|Add0~77\)) # (!\inst|clock_count\(19) & ((\inst|Add0~77\) # (GND)))
-- \inst|Add0~80\ = CARRY((!\inst|Add0~77\) # (!\inst|clock_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(19),
	datad => VCC,
	cin => \inst|Add0~77\,
	combout => \inst|Add0~79_combout\,
	cout => \inst|Add0~80\);

-- Location: LCCOMB_X21_Y31_N28
\inst|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~81_combout\ = (!\RESET~input_o\ & (\inst|Add0~79_combout\ & ((\inst|Equal0~9_combout\) # (\inst|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~9_combout\,
	datab => \inst|Equal0~4_combout\,
	datac => \RESET~input_o\,
	datad => \inst|Add0~79_combout\,
	combout => \inst|Add0~81_combout\);

-- Location: FF_X21_Y31_N29
\inst|clock_count[19]\ : dffeas
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
	q => \inst|clock_count\(19));

-- Location: LCCOMB_X20_Y30_N8
\inst|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~82_combout\ = (\inst|clock_count\(20) & (\inst|Add0~80\ $ (GND))) # (!\inst|clock_count\(20) & (!\inst|Add0~80\ & VCC))
-- \inst|Add0~83\ = CARRY((\inst|clock_count\(20) & !\inst|Add0~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(20),
	datad => VCC,
	cin => \inst|Add0~80\,
	combout => \inst|Add0~82_combout\,
	cout => \inst|Add0~83\);

-- Location: LCCOMB_X19_Y30_N28
\inst|Add0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~107_combout\ = (!\RESET~input_o\ & (\inst|Add0~82_combout\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Equal0~9_combout\,
	datad => \inst|Add0~82_combout\,
	combout => \inst|Add0~107_combout\);

-- Location: FF_X19_Y30_N29
\inst|clock_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~107_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(20));

-- Location: LCCOMB_X20_Y30_N10
\inst|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~84_combout\ = (\inst|clock_count\(21) & (!\inst|Add0~83\)) # (!\inst|clock_count\(21) & ((\inst|Add0~83\) # (GND)))
-- \inst|Add0~85\ = CARRY((!\inst|Add0~83\) # (!\inst|clock_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(21),
	datad => VCC,
	cin => \inst|Add0~83\,
	combout => \inst|Add0~84_combout\,
	cout => \inst|Add0~85\);

-- Location: LCCOMB_X19_Y30_N10
\inst|Add0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~108_combout\ = (!\RESET~input_o\ & (\inst|Add0~84_combout\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Equal0~9_combout\,
	datad => \inst|Add0~84_combout\,
	combout => \inst|Add0~108_combout\);

-- Location: FF_X19_Y30_N11
\inst|clock_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~108_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(21));

-- Location: LCCOMB_X20_Y30_N12
\inst|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~86_combout\ = (\inst|clock_count\(22) & (\inst|Add0~85\ $ (GND))) # (!\inst|clock_count\(22) & (!\inst|Add0~85\ & VCC))
-- \inst|Add0~87\ = CARRY((\inst|clock_count\(22) & !\inst|Add0~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(22),
	datad => VCC,
	cin => \inst|Add0~85\,
	combout => \inst|Add0~86_combout\,
	cout => \inst|Add0~87\);

-- Location: LCCOMB_X19_Y30_N8
\inst|Add0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~109_combout\ = (\inst|Add0~86_combout\ & (!\RESET~input_o\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \inst|Equal0~9_combout\,
	datac => \inst|Add0~86_combout\,
	datad => \RESET~input_o\,
	combout => \inst|Add0~109_combout\);

-- Location: FF_X19_Y30_N9
\inst|clock_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~109_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(22));

-- Location: LCCOMB_X20_Y30_N14
\inst|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~88_combout\ = (\inst|clock_count\(23) & (!\inst|Add0~87\)) # (!\inst|clock_count\(23) & ((\inst|Add0~87\) # (GND)))
-- \inst|Add0~89\ = CARRY((!\inst|Add0~87\) # (!\inst|clock_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(23),
	datad => VCC,
	cin => \inst|Add0~87\,
	combout => \inst|Add0~88_combout\,
	cout => \inst|Add0~89\);

-- Location: LCCOMB_X19_Y31_N20
\inst|Add0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~110_combout\ = (!\RESET~input_o\ & (\inst|Add0~88_combout\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Add0~88_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Add0~110_combout\);

-- Location: FF_X19_Y31_N21
\inst|clock_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~110_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(23));

-- Location: LCCOMB_X20_Y30_N16
\inst|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~90_combout\ = (\inst|clock_count\(24) & (\inst|Add0~89\ $ (GND))) # (!\inst|clock_count\(24) & (!\inst|Add0~89\ & VCC))
-- \inst|Add0~91\ = CARRY((\inst|clock_count\(24) & !\inst|Add0~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(24),
	datad => VCC,
	cin => \inst|Add0~89\,
	combout => \inst|Add0~90_combout\,
	cout => \inst|Add0~91\);

-- Location: LCCOMB_X19_Y30_N16
\inst|Add0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~111_combout\ = (!\RESET~input_o\ & (\inst|Add0~90_combout\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Equal0~9_combout\,
	datad => \inst|Add0~90_combout\,
	combout => \inst|Add0~111_combout\);

-- Location: FF_X19_Y30_N17
\inst|clock_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~111_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(24));

-- Location: LCCOMB_X20_Y30_N18
\inst|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~92_combout\ = (\inst|clock_count\(25) & (!\inst|Add0~91\)) # (!\inst|clock_count\(25) & ((\inst|Add0~91\) # (GND)))
-- \inst|Add0~93\ = CARRY((!\inst|Add0~91\) # (!\inst|clock_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(25),
	datad => VCC,
	cin => \inst|Add0~91\,
	combout => \inst|Add0~92_combout\,
	cout => \inst|Add0~93\);

-- Location: LCCOMB_X19_Y30_N18
\inst|Add0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~112_combout\ = (!\RESET~input_o\ & (\inst|Add0~92_combout\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Equal0~9_combout\,
	datad => \inst|Add0~92_combout\,
	combout => \inst|Add0~112_combout\);

-- Location: FF_X19_Y30_N19
\inst|clock_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~112_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(25));

-- Location: LCCOMB_X20_Y30_N20
\inst|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~94_combout\ = (\inst|clock_count\(26) & (\inst|Add0~93\ $ (GND))) # (!\inst|clock_count\(26) & (!\inst|Add0~93\ & VCC))
-- \inst|Add0~95\ = CARRY((\inst|clock_count\(26) & !\inst|Add0~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(26),
	datad => VCC,
	cin => \inst|Add0~93\,
	combout => \inst|Add0~94_combout\,
	cout => \inst|Add0~95\);

-- Location: LCCOMB_X19_Y31_N30
\inst|Add0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~113_combout\ = (!\RESET~input_o\ & (\inst|Add0~94_combout\ & ((\inst|Equal0~9_combout\) # (\inst|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~9_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Equal0~4_combout\,
	datad => \inst|Add0~94_combout\,
	combout => \inst|Add0~113_combout\);

-- Location: FF_X19_Y31_N31
\inst|clock_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~113_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(26));

-- Location: LCCOMB_X20_Y30_N22
\inst|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~96_combout\ = (\inst|clock_count\(27) & (!\inst|Add0~95\)) # (!\inst|clock_count\(27) & ((\inst|Add0~95\) # (GND)))
-- \inst|Add0~97\ = CARRY((!\inst|Add0~95\) # (!\inst|clock_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(27),
	datad => VCC,
	cin => \inst|Add0~95\,
	combout => \inst|Add0~96_combout\,
	cout => \inst|Add0~97\);

-- Location: LCCOMB_X19_Y30_N0
\inst|Add0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~114_combout\ = (!\RESET~input_o\ & (\inst|Add0~96_combout\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Equal0~9_combout\,
	datad => \inst|Add0~96_combout\,
	combout => \inst|Add0~114_combout\);

-- Location: FF_X19_Y30_N1
\inst|clock_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~114_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(27));

-- Location: LCCOMB_X19_Y30_N30
\inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~7_combout\ = (\inst|clock_count\(26)) # ((\inst|clock_count\(27)) # ((\inst|clock_count\(25)) # (\inst|clock_count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(26),
	datab => \inst|clock_count\(27),
	datac => \inst|clock_count\(25),
	datad => \inst|clock_count\(24),
	combout => \inst|Equal0~7_combout\);

-- Location: LCCOMB_X20_Y30_N24
\inst|Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~98_combout\ = (\inst|clock_count\(28) & (\inst|Add0~97\ $ (GND))) # (!\inst|clock_count\(28) & (!\inst|Add0~97\ & VCC))
-- \inst|Add0~99\ = CARRY((\inst|clock_count\(28) & !\inst|Add0~97\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(28),
	datad => VCC,
	cin => \inst|Add0~97\,
	combout => \inst|Add0~98_combout\,
	cout => \inst|Add0~99\);

-- Location: LCCOMB_X19_Y30_N12
\inst|Add0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~115_combout\ = (!\RESET~input_o\ & (\inst|Add0~98_combout\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Equal0~9_combout\,
	datad => \inst|Add0~98_combout\,
	combout => \inst|Add0~115_combout\);

-- Location: FF_X19_Y30_N13
\inst|clock_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~115_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(28));

-- Location: LCCOMB_X20_Y30_N26
\inst|Add0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~100_combout\ = (\inst|clock_count\(29) & (!\inst|Add0~99\)) # (!\inst|clock_count\(29) & ((\inst|Add0~99\) # (GND)))
-- \inst|Add0~101\ = CARRY((!\inst|Add0~99\) # (!\inst|clock_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(29),
	datad => VCC,
	cin => \inst|Add0~99\,
	combout => \inst|Add0~100_combout\,
	cout => \inst|Add0~101\);

-- Location: LCCOMB_X19_Y30_N2
\inst|Add0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~102_combout\ = (!\RESET~input_o\ & (\inst|Add0~100_combout\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Equal0~9_combout\,
	datad => \inst|Add0~100_combout\,
	combout => \inst|Add0~102_combout\);

-- Location: FF_X19_Y30_N3
\inst|clock_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~102_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(29));

-- Location: LCCOMB_X20_Y30_N28
\inst|Add0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~103_combout\ = (\inst|clock_count\(30) & (\inst|Add0~101\ $ (GND))) # (!\inst|clock_count\(30) & (!\inst|Add0~101\ & VCC))
-- \inst|Add0~104\ = CARRY((\inst|clock_count\(30) & !\inst|Add0~101\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(30),
	datad => VCC,
	cin => \inst|Add0~101\,
	combout => \inst|Add0~103_combout\,
	cout => \inst|Add0~104\);

-- Location: LCCOMB_X19_Y30_N20
\inst|Add0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~116_combout\ = (!\RESET~input_o\ & (\inst|Add0~103_combout\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Equal0~9_combout\,
	datad => \inst|Add0~103_combout\,
	combout => \inst|Add0~116_combout\);

-- Location: FF_X19_Y30_N21
\inst|clock_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~116_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(30));

-- Location: LCCOMB_X20_Y30_N30
\inst|Add0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~105_combout\ = \inst|Add0~104\ $ (!\inst|clock_count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|clock_count\(31),
	cin => \inst|Add0~104\,
	combout => \inst|Add0~105_combout\);

-- Location: LCCOMB_X19_Y30_N14
\inst|Add0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~117_combout\ = ((\RESET~input_o\) # ((!\inst|Equal0~4_combout\ & !\inst|Equal0~9_combout\))) # (!\inst|Add0~105_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \inst|Equal0~9_combout\,
	datac => \inst|Add0~105_combout\,
	datad => \RESET~input_o\,
	combout => \inst|Add0~117_combout\);

-- Location: FF_X19_Y30_N15
\inst|clock_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~117_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(31));

-- Location: LCCOMB_X19_Y30_N24
\inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~8_combout\ = (\inst|clock_count\(28)) # ((\inst|clock_count\(30)) # ((\inst|clock_count\(29)) # (!\inst|clock_count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(28),
	datab => \inst|clock_count\(30),
	datac => \inst|clock_count\(31),
	datad => \inst|clock_count\(29),
	combout => \inst|Equal0~8_combout\);

-- Location: LCCOMB_X21_Y31_N30
\inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (\inst|clock_count\(18)) # ((\inst|clock_count\(19)) # ((\inst|clock_count\(16)) # (\inst|clock_count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(18),
	datab => \inst|clock_count\(19),
	datac => \inst|clock_count\(16),
	datad => \inst|clock_count\(17),
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y30_N22
\inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (\inst|clock_count\(21)) # ((\inst|clock_count\(20)) # ((\inst|clock_count\(22)) # (\inst|clock_count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(21),
	datab => \inst|clock_count\(20),
	datac => \inst|clock_count\(22),
	datad => \inst|clock_count\(23),
	combout => \inst|Equal0~6_combout\);

-- Location: LCCOMB_X18_Y30_N4
\inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~9_combout\ = (\inst|Equal0~7_combout\) # ((\inst|Equal0~8_combout\) # ((\inst|Equal0~5_combout\) # (\inst|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~7_combout\,
	datab => \inst|Equal0~8_combout\,
	datac => \inst|Equal0~5_combout\,
	datad => \inst|Equal0~6_combout\,
	combout => \inst|Equal0~9_combout\);

-- Location: LCCOMB_X20_Y31_N0
\inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = \inst|clock_count\(0) $ (GND)
-- \inst|Add0~23\ = CARRY(!\inst|clock_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(0),
	datad => VCC,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: LCCOMB_X21_Y31_N20
\inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = ((\RESET~input_o\) # ((!\inst|Equal0~4_combout\ & !\inst|Equal0~9_combout\))) # (!\inst|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~22_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Equal0~4_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Add0~32_combout\);

-- Location: FF_X21_Y31_N21
\inst|clock_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~32_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(0));

-- Location: LCCOMB_X20_Y31_N2
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|clock_count\(1) & (!\inst|Add0~23\)) # (!\inst|clock_count\(1) & ((\inst|Add0~23\) # (GND)))
-- \inst|Add0~25\ = CARRY((!\inst|Add0~23\) # (!\inst|clock_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(1),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X21_Y31_N12
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|Add0~24_combout\ & (!\RESET~input_o\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~24_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Equal0~4_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Add0~26_combout\);

-- Location: FF_X21_Y31_N13
\inst|clock_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~26_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(1));

-- Location: LCCOMB_X20_Y31_N4
\inst|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~27_combout\ = (\inst|clock_count\(2) & (\inst|Add0~25\ $ (GND))) # (!\inst|clock_count\(2) & (!\inst|Add0~25\ & VCC))
-- \inst|Add0~28\ = CARRY((\inst|clock_count\(2) & !\inst|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(2),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~27_combout\,
	cout => \inst|Add0~28\);

-- Location: LCCOMB_X21_Y31_N22
\inst|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~33_combout\ = (!\RESET~input_o\ & (\inst|Add0~27_combout\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Add0~27_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Add0~33_combout\);

-- Location: FF_X21_Y31_N23
\inst|clock_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~33_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(2));

-- Location: LCCOMB_X20_Y31_N6
\inst|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~29_combout\ = (\inst|clock_count\(3) & (!\inst|Add0~28\)) # (!\inst|clock_count\(3) & ((\inst|Add0~28\) # (GND)))
-- \inst|Add0~30\ = CARRY((!\inst|Add0~28\) # (!\inst|clock_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(3),
	datad => VCC,
	cin => \inst|Add0~28\,
	combout => \inst|Add0~29_combout\,
	cout => \inst|Add0~30\);

-- Location: LCCOMB_X21_Y31_N14
\inst|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~31_combout\ = (!\RESET~input_o\ & (\inst|Add0~29_combout\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Add0~29_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Add0~31_combout\);

-- Location: FF_X21_Y31_N15
\inst|clock_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~31_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(3));

-- Location: LCCOMB_X20_Y31_N8
\inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|clock_count\(4) & (\inst|Add0~30\ $ (GND))) # (!\inst|clock_count\(4) & (!\inst|Add0~30\ & VCC))
-- \inst|Add0~35\ = CARRY((\inst|clock_count\(4) & !\inst|Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(4),
	datad => VCC,
	cin => \inst|Add0~30\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: LCCOMB_X19_Y31_N24
\inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (!\RESET~input_o\ & (\inst|Add0~34_combout\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Add0~34_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Add0~36_combout\);

-- Location: FF_X19_Y31_N25
\inst|clock_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~36_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(4));

-- Location: LCCOMB_X20_Y31_N10
\inst|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~37_combout\ = (\inst|clock_count\(5) & (!\inst|Add0~35\)) # (!\inst|clock_count\(5) & ((\inst|Add0~35\) # (GND)))
-- \inst|Add0~38\ = CARRY((!\inst|Add0~35\) # (!\inst|clock_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(5),
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~37_combout\,
	cout => \inst|Add0~38\);

-- Location: LCCOMB_X19_Y31_N14
\inst|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~39_combout\ = (!\RESET~input_o\ & (\inst|Add0~37_combout\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Add0~37_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Add0~39_combout\);

-- Location: FF_X19_Y31_N15
\inst|clock_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~39_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(5));

-- Location: LCCOMB_X20_Y31_N12
\inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\inst|clock_count\(6) & (\inst|Add0~38\ $ (GND))) # (!\inst|clock_count\(6) & (!\inst|Add0~38\ & VCC))
-- \inst|Add0~41\ = CARRY((\inst|clock_count\(6) & !\inst|Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(6),
	datad => VCC,
	cin => \inst|Add0~38\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: LCCOMB_X19_Y31_N12
\inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (!\RESET~input_o\ & (\inst|Add0~40_combout\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Add0~40_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Add0~42_combout\);

-- Location: FF_X19_Y31_N13
\inst|clock_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~42_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(6));

-- Location: LCCOMB_X20_Y31_N14
\inst|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~43_combout\ = (\inst|clock_count\(7) & (!\inst|Add0~41\)) # (!\inst|clock_count\(7) & ((\inst|Add0~41\) # (GND)))
-- \inst|Add0~44\ = CARRY((!\inst|Add0~41\) # (!\inst|clock_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(7),
	datad => VCC,
	cin => \inst|Add0~41\,
	combout => \inst|Add0~43_combout\,
	cout => \inst|Add0~44\);

-- Location: LCCOMB_X19_Y31_N26
\inst|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~45_combout\ = (!\RESET~input_o\ & (\inst|Add0~43_combout\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Add0~43_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Add0~45_combout\);

-- Location: FF_X19_Y31_N27
\inst|clock_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~45_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(7));

-- Location: LCCOMB_X20_Y31_N16
\inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~46_combout\ = (\inst|clock_count\(8) & (\inst|Add0~44\ $ (GND))) # (!\inst|clock_count\(8) & (!\inst|Add0~44\ & VCC))
-- \inst|Add0~47\ = CARRY((\inst|clock_count\(8) & !\inst|Add0~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(8),
	datad => VCC,
	cin => \inst|Add0~44\,
	combout => \inst|Add0~46_combout\,
	cout => \inst|Add0~47\);

-- Location: LCCOMB_X19_Y31_N2
\inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~48_combout\ = (!\RESET~input_o\ & (\inst|Add0~46_combout\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Add0~46_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Add0~48_combout\);

-- Location: FF_X19_Y31_N3
\inst|clock_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~48_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(8));

-- Location: LCCOMB_X20_Y31_N18
\inst|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~49_combout\ = (\inst|clock_count\(9) & (!\inst|Add0~47\)) # (!\inst|clock_count\(9) & ((\inst|Add0~47\) # (GND)))
-- \inst|Add0~50\ = CARRY((!\inst|Add0~47\) # (!\inst|clock_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clock_count\(9),
	datad => VCC,
	cin => \inst|Add0~47\,
	combout => \inst|Add0~49_combout\,
	cout => \inst|Add0~50\);

-- Location: LCCOMB_X19_Y31_N4
\inst|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~51_combout\ = (!\RESET~input_o\ & (\inst|Add0~49_combout\ & ((\inst|Equal0~9_combout\) # (\inst|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~9_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Equal0~4_combout\,
	datad => \inst|Add0~49_combout\,
	combout => \inst|Add0~51_combout\);

-- Location: FF_X19_Y31_N5
\inst|clock_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~51_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(9));

-- Location: LCCOMB_X19_Y31_N10
\inst|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~54_combout\ = (!\RESET~input_o\ & (\inst|Add0~52_combout\ & ((\inst|Equal0~4_combout\) # (\inst|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~4_combout\,
	datab => \RESET~input_o\,
	datac => \inst|Add0~52_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Add0~54_combout\);

-- Location: FF_X19_Y31_N11
\inst|clock_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add0~54_combout\,
	ena => \inst|clock_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clock_count\(10));

-- Location: LCCOMB_X19_Y31_N22
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|clock_count\(10)) # ((\inst|clock_count\(11)) # ((\inst|clock_count\(9)) # (\inst|clock_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(10),
	datab => \inst|clock_count\(11),
	datac => \inst|clock_count\(9),
	datad => \inst|clock_count\(8),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X19_Y31_N0
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|clock_count\(7)) # ((\inst|clock_count\(4)) # ((\inst|clock_count\(5)) # (\inst|clock_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(7),
	datab => \inst|clock_count\(4),
	datac => \inst|clock_count\(5),
	datad => \inst|clock_count\(6),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y31_N8
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\inst|clock_count\(15)) # ((\inst|clock_count\(13)) # ((\inst|clock_count\(12)) # (\inst|clock_count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(15),
	datab => \inst|clock_count\(13),
	datac => \inst|clock_count\(12),
	datad => \inst|clock_count\(14),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y31_N4
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|clock_count\(1)) # ((\inst|clock_count\(3)) # ((!\inst|clock_count\(0)) # (!\inst|clock_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clock_count\(1),
	datab => \inst|clock_count\(3),
	datac => \inst|clock_count\(2),
	datad => \inst|clock_count\(0),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y31_N18
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|Equal0~2_combout\) # ((\inst|Equal0~1_combout\) # ((\inst|Equal0~3_combout\) # (\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~3_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X21_Y30_N12
\inst|ADC_out[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[15]~0_combout\ = (\RESET~input_o\) # ((\inst|process_0~0_combout\ & (!\inst|Equal0~4_combout\ & !\inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst|process_0~0_combout\,
	datac => \inst|Equal0~4_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|ADC_out[15]~0_combout\);

-- Location: FF_X21_Y30_N15
\inst|ADC_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[15]~14_combout\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(15));

-- Location: FF_X20_Y30_N17
\inst|ADC_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \RESET~input_o\,
	sload => VCC,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(12));

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

-- Location: LCCOMB_X16_Y30_N30
\inst|Buffer1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~0_combout\ = (\ADC_IN[11]~input_o\ & !\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[11]~input_o\,
	datac => \RESET~input_o\,
	combout => \inst|Buffer1~0_combout\);

-- Location: IOIBUF_X0_Y27_N1
\ADC_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(1),
	o => \ADC_IN[1]~input_o\);

-- Location: LCCOMB_X16_Y30_N16
\inst|Buffer1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~19_combout\ = (\ADC_IN[1]~input_o\ & !\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[1]~input_o\,
	datac => \RESET~input_o\,
	combout => \inst|Buffer1~19_combout\);

-- Location: FF_X17_Y30_N21
\inst|Buffer1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Buffer1~19_combout\,
	sload => VCC,
	ena => \inst|Buffer1[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(1));

-- Location: IOIBUF_X9_Y34_N22
\ADC_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(0),
	o => \ADC_IN[0]~input_o\);

-- Location: LCCOMB_X16_Y30_N26
\inst|Buffer1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~20_combout\ = (\ADC_IN[0]~input_o\ & !\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[0]~input_o\,
	datac => \RESET~input_o\,
	combout => \inst|Buffer1~20_combout\);

-- Location: FF_X17_Y30_N15
\inst|Buffer1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Buffer1~20_combout\,
	sload => VCC,
	ena => \inst|Buffer1[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(0));

-- Location: LCCOMB_X16_Y30_N14
\inst|Buffer1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~1_combout\ = (\inst|Buffer1\(1) & (\ADC_IN[1]~input_o\ & (\ADC_IN[0]~input_o\ $ (!\inst|Buffer1\(0))))) # (!\inst|Buffer1\(1) & (!\ADC_IN[1]~input_o\ & (\ADC_IN[0]~input_o\ $ (!\inst|Buffer1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer1\(1),
	datab => \ADC_IN[0]~input_o\,
	datac => \inst|Buffer1\(0),
	datad => \ADC_IN[1]~input_o\,
	combout => \inst|Buffer1~1_combout\);

-- Location: IOIBUF_X7_Y34_N15
\ADC_IN[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(10),
	o => \ADC_IN[10]~input_o\);

-- Location: LCCOMB_X16_Y30_N0
\inst|Buffer1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~10_combout\ = (\ADC_IN[10]~input_o\ & !\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[10]~input_o\,
	datac => \RESET~input_o\,
	combout => \inst|Buffer1~10_combout\);

-- Location: FF_X16_Y30_N1
\inst|Buffer1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer1~10_combout\,
	ena => \inst|Buffer1[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(10));

-- Location: LCCOMB_X16_Y30_N28
\inst|Buffer1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~2_combout\ = (\ADC_IN[11]~input_o\ & (\inst|Buffer1\(11) & (\ADC_IN[10]~input_o\ $ (!\inst|Buffer1\(10))))) # (!\ADC_IN[11]~input_o\ & (!\inst|Buffer1\(11) & (\ADC_IN[10]~input_o\ $ (!\inst|Buffer1\(10)))))

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
	combout => \inst|Buffer1~2_combout\);

-- Location: IOIBUF_X14_Y34_N22
\ADC_IN[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(9),
	o => \ADC_IN[9]~input_o\);

-- Location: LCCOMB_X17_Y30_N18
\inst|Buffer1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~11_combout\ = (!\RESET~input_o\ & \ADC_IN[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET~input_o\,
	datad => \ADC_IN[9]~input_o\,
	combout => \inst|Buffer1~11_combout\);

-- Location: FF_X17_Y30_N5
\inst|Buffer1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Buffer1~11_combout\,
	sload => VCC,
	ena => \inst|Buffer1[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(9));

-- Location: IOIBUF_X5_Y34_N15
\ADC_IN[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(8),
	o => \ADC_IN[8]~input_o\);

-- Location: LCCOMB_X16_Y30_N6
\inst|Buffer1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~12_combout\ = (\ADC_IN[8]~input_o\ & !\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[8]~input_o\,
	datac => \RESET~input_o\,
	combout => \inst|Buffer1~12_combout\);

-- Location: FF_X17_Y30_N19
\inst|Buffer1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Buffer1~12_combout\,
	sload => VCC,
	ena => \inst|Buffer1[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(8));

-- Location: LCCOMB_X16_Y30_N12
\inst|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~2_combout\ = (!\inst|Buffer1\(9) & (!\inst|Buffer1\(10) & (!\inst|Buffer1\(11) & !\inst|Buffer1\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer1\(9),
	datab => \inst|Buffer1\(10),
	datac => \inst|Buffer1\(11),
	datad => \inst|Buffer1\(8),
	combout => \inst|Equal1~2_combout\);

-- Location: IOIBUF_X14_Y34_N15
\ADC_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(4),
	o => \ADC_IN[4]~input_o\);

-- Location: LCCOMB_X17_Y30_N26
\inst|Buffer1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~16_combout\ = (\ADC_IN[4]~input_o\ & !\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[4]~input_o\,
	datac => \RESET~input_o\,
	combout => \inst|Buffer1~16_combout\);

-- Location: FF_X17_Y30_N27
\inst|Buffer1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer1~16_combout\,
	ena => \inst|Buffer1[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(4));

-- Location: IOIBUF_X34_Y34_N15
\ADC_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(5),
	o => \ADC_IN[5]~input_o\);

-- Location: LCCOMB_X17_Y30_N24
\inst|Buffer1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~15_combout\ = (!\RESET~input_o\ & \ADC_IN[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \ADC_IN[5]~input_o\,
	combout => \inst|Buffer1~15_combout\);

-- Location: FF_X17_Y30_N25
\inst|Buffer1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer1~15_combout\,
	ena => \inst|Buffer1[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(5));

-- Location: IOIBUF_X16_Y34_N1
\ADC_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(7),
	o => \ADC_IN[7]~input_o\);

-- Location: LCCOMB_X17_Y30_N14
\inst|Buffer1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~13_combout\ = (!\RESET~input_o\ & \ADC_IN[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET~input_o\,
	datad => \ADC_IN[7]~input_o\,
	combout => \inst|Buffer1~13_combout\);

-- Location: FF_X17_Y30_N13
\inst|Buffer1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Buffer1~13_combout\,
	sload => VCC,
	ena => \inst|Buffer1[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(7));

-- Location: IOIBUF_X16_Y34_N8
\ADC_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(6),
	o => \ADC_IN[6]~input_o\);

-- Location: LCCOMB_X17_Y30_N4
\inst|Buffer1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~14_combout\ = (\ADC_IN[6]~input_o\ & !\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[6]~input_o\,
	datad => \RESET~input_o\,
	combout => \inst|Buffer1~14_combout\);

-- Location: FF_X17_Y30_N31
\inst|Buffer1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|Buffer1~14_combout\,
	sload => VCC,
	ena => \inst|Buffer1[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(6));

-- Location: LCCOMB_X17_Y30_N0
\inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (!\inst|Buffer1\(4) & (!\inst|Buffer1\(5) & (!\inst|Buffer1\(7) & !\inst|Buffer1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer1\(4),
	datab => \inst|Buffer1\(5),
	datac => \inst|Buffer1\(7),
	datad => \inst|Buffer1\(6),
	combout => \inst|Equal1~1_combout\);

-- Location: IOIBUF_X38_Y34_N15
\ADC_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(2),
	o => \ADC_IN[2]~input_o\);

-- Location: LCCOMB_X17_Y30_N2
\inst|Buffer1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~18_combout\ = (!\RESET~input_o\ & \ADC_IN[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET~input_o\,
	datad => \ADC_IN[2]~input_o\,
	combout => \inst|Buffer1~18_combout\);

-- Location: FF_X17_Y30_N3
\inst|Buffer1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer1~18_combout\,
	ena => \inst|Buffer1[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(2));

-- Location: IOIBUF_X18_Y34_N1
\ADC_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(3),
	o => \ADC_IN[3]~input_o\);

-- Location: LCCOMB_X17_Y30_N16
\inst|Buffer1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~17_combout\ = (\ADC_IN[3]~input_o\ & !\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ADC_IN[3]~input_o\,
	datac => \RESET~input_o\,
	combout => \inst|Buffer1~17_combout\);

-- Location: FF_X17_Y30_N17
\inst|Buffer1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer1~17_combout\,
	ena => \inst|Buffer1[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(3));

-- Location: LCCOMB_X17_Y30_N20
\inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (!\inst|Buffer1\(0) & (!\inst|Buffer1\(2) & (!\inst|Buffer1\(1) & !\inst|Buffer1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer1\(0),
	datab => \inst|Buffer1\(2),
	datac => \inst|Buffer1\(1),
	datad => \inst|Buffer1\(3),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X17_Y30_N30
\inst|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~3_combout\ = (\inst|Equal1~2_combout\ & (\inst|Equal1~1_combout\ & \inst|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~2_combout\,
	datab => \inst|Equal1~1_combout\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|Equal1~3_combout\);

-- Location: LCCOMB_X17_Y30_N6
\inst|Buffer1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~4_combout\ = (\ADC_IN[5]~input_o\ & (\inst|Buffer1\(5) & (\ADC_IN[4]~input_o\ $ (!\inst|Buffer1\(4))))) # (!\ADC_IN[5]~input_o\ & (!\inst|Buffer1\(5) & (\ADC_IN[4]~input_o\ $ (!\inst|Buffer1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[5]~input_o\,
	datab => \ADC_IN[4]~input_o\,
	datac => \inst|Buffer1\(4),
	datad => \inst|Buffer1\(5),
	combout => \inst|Buffer1~4_combout\);

-- Location: LCCOMB_X16_Y30_N18
\inst|Buffer1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~6_combout\ = (\ADC_IN[9]~input_o\ & (\inst|Buffer1\(9) & (\inst|Buffer1\(8) $ (!\ADC_IN[8]~input_o\)))) # (!\ADC_IN[9]~input_o\ & (!\inst|Buffer1\(9) & (\inst|Buffer1\(8) $ (!\ADC_IN[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[9]~input_o\,
	datab => \inst|Buffer1\(8),
	datac => \ADC_IN[8]~input_o\,
	datad => \inst|Buffer1\(9),
	combout => \inst|Buffer1~6_combout\);

-- Location: LCCOMB_X17_Y30_N8
\inst|Buffer1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~3_combout\ = (\ADC_IN[2]~input_o\ & (\inst|Buffer1\(2) & (\ADC_IN[3]~input_o\ $ (!\inst|Buffer1\(3))))) # (!\ADC_IN[2]~input_o\ & (!\inst|Buffer1\(2) & (\ADC_IN[3]~input_o\ $ (!\inst|Buffer1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[2]~input_o\,
	datab => \ADC_IN[3]~input_o\,
	datac => \inst|Buffer1\(2),
	datad => \inst|Buffer1\(3),
	combout => \inst|Buffer1~3_combout\);

-- Location: LCCOMB_X17_Y30_N28
\inst|Buffer1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~5_combout\ = (\ADC_IN[6]~input_o\ & (\inst|Buffer1\(6) & (\ADC_IN[7]~input_o\ $ (!\inst|Buffer1\(7))))) # (!\ADC_IN[6]~input_o\ & (!\inst|Buffer1\(6) & (\ADC_IN[7]~input_o\ $ (!\inst|Buffer1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ADC_IN[6]~input_o\,
	datab => \ADC_IN[7]~input_o\,
	datac => \inst|Buffer1\(7),
	datad => \inst|Buffer1\(6),
	combout => \inst|Buffer1~5_combout\);

-- Location: LCCOMB_X17_Y30_N10
\inst|Buffer1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~7_combout\ = (\inst|Buffer1~4_combout\ & (\inst|Buffer1~6_combout\ & (\inst|Buffer1~3_combout\ & \inst|Buffer1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer1~4_combout\,
	datab => \inst|Buffer1~6_combout\,
	datac => \inst|Buffer1~3_combout\,
	datad => \inst|Buffer1~5_combout\,
	combout => \inst|Buffer1~7_combout\);

-- Location: LCCOMB_X17_Y30_N22
\inst|Buffer1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1~8_combout\ = (\inst|Buffer1~1_combout\ & (\inst|Buffer1~2_combout\ & (!\inst|Equal1~3_combout\ & \inst|Buffer1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer1~1_combout\,
	datab => \inst|Buffer1~2_combout\,
	datac => \inst|Equal1~3_combout\,
	datad => \inst|Buffer1~7_combout\,
	combout => \inst|Buffer1~8_combout\);

-- Location: LCCOMB_X18_Y30_N22
\inst|ADC_out[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[15]~13_combout\ = (!\inst|Equal0~9_combout\ & (!\inst|Equal0~4_combout\ & ((\inst|latched~q\) # (\USER_BUTTON~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|latched~q\,
	datab => \USER_BUTTON~input_o\,
	datac => \inst|Equal0~9_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|ADC_out[15]~13_combout\);

-- Location: LCCOMB_X17_Y30_N12
\inst|Buffer1[8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1[8]~9_combout\ = (\RESET~input_o\) # ((!\inst|Buffer1~8_combout\ & \inst|ADC_out[15]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer1~8_combout\,
	datab => \RESET~input_o\,
	datad => \inst|ADC_out[15]~13_combout\,
	combout => \inst|Buffer1[8]~9_combout\);

-- Location: FF_X16_Y30_N31
\inst|Buffer1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Buffer1~0_combout\,
	ena => \inst|Buffer1[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(11));

-- Location: LCCOMB_X16_Y30_N20
\inst|ADC_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~1_combout\ = (\inst|Buffer1\(11) & !\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer1\(11),
	datac => \RESET~input_o\,
	combout => \inst|ADC_out~1_combout\);

-- Location: FF_X16_Y30_N21
\inst|ADC_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~1_combout\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(11));

-- Location: LCCOMB_X16_Y30_N10
\inst|ADC_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~2_combout\ = (!\RESET~input_o\ & \inst|Buffer1\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \inst|Buffer1\(10),
	combout => \inst|ADC_out~2_combout\);

-- Location: FF_X16_Y30_N11
\inst|ADC_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~2_combout\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(10));

-- Location: LCCOMB_X16_Y30_N24
\inst|ADC_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~3_combout\ = (!\RESET~input_o\ & \inst|Buffer1\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \inst|Buffer1\(9),
	combout => \inst|ADC_out~3_combout\);

-- Location: FF_X16_Y30_N25
\inst|ADC_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~3_combout\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(9));

-- Location: LCCOMB_X16_Y30_N2
\inst|ADC_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~4_combout\ = (!\RESET~input_o\ & \inst|Buffer1\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \inst|Buffer1\(8),
	combout => \inst|ADC_out~4_combout\);

-- Location: FF_X16_Y30_N3
\inst|ADC_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~4_combout\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(8));

-- Location: LCCOMB_X18_Y30_N26
\inst|ADC_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~5_combout\ = (!\RESET~input_o\ & \inst|Buffer1\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \inst|Buffer1\(7),
	combout => \inst|ADC_out~5_combout\);

-- Location: FF_X20_Y30_N21
\inst|ADC_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|ADC_out~5_combout\,
	sload => VCC,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(7));

-- Location: LCCOMB_X19_Y30_N6
\inst|ADC_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~6_combout\ = (\inst|Buffer1\(6) & !\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer1\(6),
	datac => \RESET~input_o\,
	combout => \inst|ADC_out~6_combout\);

-- Location: FF_X20_Y30_N9
\inst|ADC_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|ADC_out~6_combout\,
	sload => VCC,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(6));

-- Location: LCCOMB_X19_Y30_N4
\inst|ADC_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~7_combout\ = (\inst|Buffer1\(5) & !\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Buffer1\(5),
	datad => \RESET~input_o\,
	combout => \inst|ADC_out~7_combout\);

-- Location: FF_X20_Y30_N15
\inst|ADC_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|ADC_out~7_combout\,
	sload => VCC,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(5));

-- Location: LCCOMB_X18_Y30_N24
\inst|ADC_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~8_combout\ = (\inst|Buffer1\(4) & !\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer1\(4),
	datac => \RESET~input_o\,
	combout => \inst|ADC_out~8_combout\);

-- Location: FF_X20_Y30_N1
\inst|ADC_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|ADC_out~8_combout\,
	sload => VCC,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(4));

-- Location: LCCOMB_X19_Y30_N26
\inst|ADC_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~9_combout\ = (!\RESET~input_o\ & \inst|Buffer1\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \inst|Buffer1\(3),
	combout => \inst|ADC_out~9_combout\);

-- Location: FF_X20_Y30_N5
\inst|ADC_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|ADC_out~9_combout\,
	sload => VCC,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(3));

-- Location: LCCOMB_X16_Y30_N4
\inst|ADC_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~10_combout\ = (!\RESET~input_o\ & \inst|Buffer1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \inst|Buffer1\(2),
	combout => \inst|ADC_out~10_combout\);

-- Location: FF_X16_Y30_N5
\inst|ADC_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~10_combout\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(2));

-- Location: LCCOMB_X16_Y30_N22
\inst|ADC_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~11_combout\ = (\inst|Buffer1\(1) & !\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer1\(1),
	datac => \RESET~input_o\,
	combout => \inst|ADC_out~11_combout\);

-- Location: FF_X16_Y30_N23
\inst|ADC_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~11_combout\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(1));

-- Location: LCCOMB_X16_Y30_N8
\inst|ADC_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out~12_combout\ = (\inst|Buffer1\(0) & !\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Buffer1\(0),
	datac => \RESET~input_o\,
	combout => \inst|ADC_out~12_combout\);

-- Location: FF_X16_Y30_N9
\inst|ADC_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out~12_combout\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(0));

-- Location: LCCOMB_X21_Y30_N2
\inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \inst|BufferCount\(0) $ (GND)
-- \inst|Add1~1\ = CARRY(!\inst|BufferCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|BufferCount\(0),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X21_Y30_N20
\inst|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~11_combout\ = (\RESET~input_o\) # (!\inst|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \inst|Add1~0_combout\,
	combout => \inst|Add1~11_combout\);

-- Location: FF_X21_Y30_N21
\inst|BufferCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~11_combout\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCount\(0));

-- Location: LCCOMB_X21_Y30_N4
\inst|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|BufferCount\(1) & (!\inst|Add1~1\)) # (!\inst|BufferCount\(1) & ((\inst|Add1~1\) # (GND)))
-- \inst|Add1~3\ = CARRY((!\inst|Add1~1\) # (!\inst|BufferCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BufferCount\(1),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X21_Y30_N10
\inst|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (!\RESET~input_o\ & \inst|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET~input_o\,
	datac => \inst|Add1~2_combout\,
	combout => \inst|Add1~10_combout\);

-- Location: FF_X21_Y30_N11
\inst|BufferCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~10_combout\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCount\(1));

-- Location: LCCOMB_X21_Y30_N6
\inst|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\inst|BufferCount\(2) & (\inst|Add1~3\ $ (GND))) # (!\inst|BufferCount\(2) & (!\inst|Add1~3\ & VCC))
-- \inst|Add1~5\ = CARRY((\inst|BufferCount\(2) & !\inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|BufferCount\(2),
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X21_Y30_N16
\inst|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~9_combout\ = (!\RESET~input_o\ & \inst|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \inst|Add1~4_combout\,
	combout => \inst|Add1~9_combout\);

-- Location: FF_X21_Y30_N17
\inst|BufferCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~9_combout\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCount\(2));

-- Location: LCCOMB_X21_Y30_N8
\inst|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = \inst|Add1~5\ $ (\inst|BufferCount\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|BufferCount\(3),
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\);

-- Location: LCCOMB_X21_Y30_N18
\inst|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (!\RESET~input_o\ & \inst|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET~input_o\,
	datac => \inst|Add1~6_combout\,
	combout => \inst|Add1~8_combout\);

-- Location: FF_X21_Y30_N19
\inst|BufferCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Add1~8_combout\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCount\(3));

-- Location: LCCOMB_X21_Y30_N0
\inst|BufferCheck~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCheck~0_combout\ = (!\RESET~input_o\ & \inst|BufferCount\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \inst|BufferCount\(3),
	combout => \inst|BufferCheck~0_combout\);

-- Location: FF_X21_Y30_N1
\inst|BufferCheck[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCheck~0_combout\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCheck\(3));

-- Location: LCCOMB_X21_Y30_N22
\inst|BufferCheck~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCheck~1_combout\ = (!\RESET~input_o\ & \inst|BufferCount\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \inst|BufferCount\(2),
	combout => \inst|BufferCheck~1_combout\);

-- Location: FF_X21_Y30_N23
\inst|BufferCheck[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCheck~1_combout\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCheck\(2));

-- Location: LCCOMB_X21_Y30_N24
\inst|BufferCheck~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCheck~2_combout\ = (!\RESET~input_o\ & \inst|BufferCount\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \inst|BufferCount\(1),
	combout => \inst|BufferCheck~2_combout\);

-- Location: FF_X21_Y30_N25
\inst|BufferCheck[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCheck~2_combout\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCheck\(1));

-- Location: LCCOMB_X21_Y30_N30
\inst|BufferCheck~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|BufferCheck~3_combout\ = (!\RESET~input_o\ & !\inst|BufferCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RESET~input_o\,
	datad => \inst|BufferCount\(0),
	combout => \inst|BufferCheck~3_combout\);

-- Location: FF_X21_Y30_N31
\inst|BufferCheck[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|BufferCheck~3_combout\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|BufferCheck\(0));

ww_Y(15) <= \Y[15]~output_o\;

ww_Y(14) <= \Y[14]~output_o\;

ww_Y(13) <= \Y[13]~output_o\;

ww_Y(12) <= \Y[12]~output_o\;

ww_Y(11) <= \Y[11]~output_o\;

ww_Y(10) <= \Y[10]~output_o\;

ww_Y(9) <= \Y[9]~output_o\;

ww_Y(8) <= \Y[8]~output_o\;

ww_Y(7) <= \Y[7]~output_o\;

ww_Y(6) <= \Y[6]~output_o\;

ww_Y(5) <= \Y[5]~output_o\;

ww_Y(4) <= \Y[4]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(0) <= \Y[0]~output_o\;

ww_Z(3) <= \Z[3]~output_o\;

ww_Z(2) <= \Z[2]~output_o\;

ww_Z(1) <= \Z[1]~output_o\;

ww_Z(0) <= \Z[0]~output_o\;
END structure;


