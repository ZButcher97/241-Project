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
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Standard Edition"

-- DATE "04/30/2018 16:27:54"

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
	ADC_IN : IN std_logic_vector(11 DOWNTO 0)
	);
END P1;

-- Design Ports Information
-- Y[15]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- USER_BUTTON	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[11]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[10]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[9]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[8]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[7]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[5]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[2]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|ADC_out[15]~feeder_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \USER_BUTTON~input_o\ : std_logic;
SIGNAL \inst|latched~combout\ : std_logic;
SIGNAL \inst|ADC_out[15]~0_combout\ : std_logic;
SIGNAL \inst|ADC_out[13]~feeder_combout\ : std_logic;
SIGNAL \inst|ADC_out[12]~feeder_combout\ : std_logic;
SIGNAL \ADC_IN[11]~input_o\ : std_logic;
SIGNAL \inst|ADC_out[11]~feeder_combout\ : std_logic;
SIGNAL \ADC_IN[10]~input_o\ : std_logic;
SIGNAL \inst|ADC_out[10]~feeder_combout\ : std_logic;
SIGNAL \ADC_IN[9]~input_o\ : std_logic;
SIGNAL \inst|ADC_out[9]~feeder_combout\ : std_logic;
SIGNAL \ADC_IN[8]~input_o\ : std_logic;
SIGNAL \ADC_IN[7]~input_o\ : std_logic;
SIGNAL \ADC_IN[6]~input_o\ : std_logic;
SIGNAL \ADC_IN[5]~input_o\ : std_logic;
SIGNAL \inst|ADC_out[5]~feeder_combout\ : std_logic;
SIGNAL \ADC_IN[4]~input_o\ : std_logic;
SIGNAL \inst|ADC_out[4]~feeder_combout\ : std_logic;
SIGNAL \ADC_IN[3]~input_o\ : std_logic;
SIGNAL \inst|ADC_out[3]~feeder_combout\ : std_logic;
SIGNAL \ADC_IN[2]~input_o\ : std_logic;
SIGNAL \ADC_IN[1]~input_o\ : std_logic;
SIGNAL \ADC_IN[0]~input_o\ : std_logic;
SIGNAL \inst|ADC_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_ADC_out\ : std_logic_vector(13 DOWNTO 12);

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RESET~inputclkctrl_outclk\ <= NOT \RESET~inputclkctrl_outclk\;
\inst|ALT_INV_ADC_out\(12) <= NOT \inst|ADC_out\(12);
\inst|ALT_INV_ADC_out\(13) <= NOT \inst|ADC_out\(13);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y6_N23
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

-- Location: IOOBUF_X1_Y0_N9
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

-- Location: IOOBUF_X36_Y0_N9
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_ADC_out\(13),
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_ADC_out\(12),
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
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

-- Location: IOOBUF_X45_Y0_N16
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

-- Location: IOOBUF_X40_Y0_N16
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

-- Location: IOOBUF_X47_Y0_N23
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

-- Location: IOOBUF_X53_Y13_N9
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

-- Location: IOOBUF_X43_Y0_N23
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

-- Location: IOOBUF_X53_Y7_N9
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

-- Location: IOOBUF_X53_Y9_N23
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

-- Location: IOOBUF_X53_Y9_N9
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

-- Location: IOOBUF_X0_Y10_N23
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

-- Location: IOOBUF_X53_Y12_N2
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

-- Location: IOOBUF_X53_Y16_N9
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

-- Location: LCCOMB_X47_Y8_N24
\inst|ADC_out[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[15]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|ADC_out[15]~feeder_combout\);

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

-- Location: CLKCTRL_G4
\RESET~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

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

-- Location: LCCOMB_X5_Y15_N10
\inst|latched\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|latched~combout\ = (!\RESET~input_o\ & ((\USER_BUTTON~input_o\) # (\inst|latched~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datac => \USER_BUTTON~input_o\,
	datad => \inst|latched~combout\,
	combout => \inst|latched~combout\);

-- Location: LCCOMB_X5_Y15_N16
\inst|ADC_out[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[15]~0_combout\ = (!\USER_BUTTON~input_o\ & \inst|latched~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \USER_BUTTON~input_o\,
	datad => \inst|latched~combout\,
	combout => \inst|ADC_out[15]~0_combout\);

-- Location: FF_X47_Y8_N25
\inst|ADC_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[15]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(15));

-- Location: LCCOMB_X47_Y8_N10
\inst|ADC_out[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[13]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|ADC_out[13]~feeder_combout\);

-- Location: FF_X47_Y8_N11
\inst|ADC_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[13]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(13));

-- Location: LCCOMB_X47_Y8_N12
\inst|ADC_out[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[12]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|ADC_out[12]~feeder_combout\);

-- Location: FF_X47_Y8_N13
\inst|ADC_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[12]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(12));

-- Location: IOIBUF_X38_Y0_N8
\ADC_IN[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(11),
	o => \ADC_IN[11]~input_o\);

-- Location: LCCOMB_X43_Y8_N0
\inst|ADC_out[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[11]~feeder_combout\ = \ADC_IN[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_IN[11]~input_o\,
	combout => \inst|ADC_out[11]~feeder_combout\);

-- Location: FF_X43_Y8_N1
\inst|ADC_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[11]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(11));

-- Location: IOIBUF_X53_Y8_N22
\ADC_IN[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(10),
	o => \ADC_IN[10]~input_o\);

-- Location: LCCOMB_X47_Y8_N30
\inst|ADC_out[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[10]~feeder_combout\ = \ADC_IN[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_IN[10]~input_o\,
	combout => \inst|ADC_out[10]~feeder_combout\);

-- Location: FF_X47_Y8_N31
\inst|ADC_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[10]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(10));

-- Location: IOIBUF_X43_Y0_N15
\ADC_IN[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(9),
	o => \ADC_IN[9]~input_o\);

-- Location: LCCOMB_X41_Y8_N16
\inst|ADC_out[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[9]~feeder_combout\ = \ADC_IN[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_IN[9]~input_o\,
	combout => \inst|ADC_out[9]~feeder_combout\);

-- Location: FF_X41_Y8_N17
\inst|ADC_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[9]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(9));

-- Location: IOIBUF_X53_Y11_N1
\ADC_IN[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(8),
	o => \ADC_IN[8]~input_o\);

-- Location: FF_X47_Y8_N17
\inst|ADC_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[8]~input_o\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(8));

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

-- Location: FF_X52_Y8_N1
\inst|ADC_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[7]~input_o\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(7));

-- Location: IOIBUF_X34_Y0_N1
\ADC_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(6),
	o => \ADC_IN[6]~input_o\);

-- Location: FF_X41_Y8_N27
\inst|ADC_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[6]~input_o\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(6));

-- Location: IOIBUF_X53_Y6_N15
\ADC_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(5),
	o => \ADC_IN[5]~input_o\);

-- Location: LCCOMB_X52_Y8_N18
\inst|ADC_out[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[5]~feeder_combout\ = \ADC_IN[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_IN[5]~input_o\,
	combout => \inst|ADC_out[5]~feeder_combout\);

-- Location: FF_X52_Y8_N19
\inst|ADC_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[5]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(5));

-- Location: IOIBUF_X7_Y0_N8
\ADC_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(4),
	o => \ADC_IN[4]~input_o\);

-- Location: LCCOMB_X47_Y8_N26
\inst|ADC_out[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[4]~feeder_combout\ = \ADC_IN[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_IN[4]~input_o\,
	combout => \inst|ADC_out[4]~feeder_combout\);

-- Location: FF_X47_Y8_N27
\inst|ADC_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[4]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(4));

-- Location: IOIBUF_X53_Y15_N8
\ADC_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(3),
	o => \ADC_IN[3]~input_o\);

-- Location: LCCOMB_X47_Y8_N28
\inst|ADC_out[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out[3]~feeder_combout\ = \ADC_IN[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ADC_IN[3]~input_o\,
	combout => \inst|ADC_out[3]~feeder_combout\);

-- Location: FF_X47_Y8_N29
\inst|ADC_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|ADC_out[3]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(3));

-- Location: IOIBUF_X53_Y9_N15
\ADC_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(2),
	o => \ADC_IN[2]~input_o\);

-- Location: FF_X47_Y8_N23
\inst|ADC_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[2]~input_o\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(2));

-- Location: IOIBUF_X53_Y14_N8
\ADC_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(1),
	o => \ADC_IN[1]~input_o\);

-- Location: FF_X52_Y15_N9
\inst|ADC_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[1]~input_o\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(1));

-- Location: IOIBUF_X53_Y14_N1
\ADC_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(0),
	o => \ADC_IN[0]~input_o\);

-- Location: FF_X52_Y8_N13
\inst|ADC_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[0]~input_o\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \inst|ADC_out[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ADC_out\(0));

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
END structure;


