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

-- DATE "05/01/2018 13:23:44"

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
-- Y[15]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- USER_BUTTON	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[11]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[10]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[9]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[8]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[7]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[6]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[5]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[4]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[2]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[1]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ADC_IN[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \USER_BUTTON~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \USER_BUTTON~input_o\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst|comb~0_combout\ : std_logic;
SIGNAL \USER_BUTTON~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \ADC_IN[11]~input_o\ : std_logic;
SIGNAL \ADC_IN[8]~input_o\ : std_logic;
SIGNAL \ADC_IN[10]~input_o\ : std_logic;
SIGNAL \ADC_IN[9]~input_o\ : std_logic;
SIGNAL \ADC_IN[7]~input_o\ : std_logic;
SIGNAL \inst|Buffer1[11]~2_combout\ : std_logic;
SIGNAL \ADC_IN[1]~input_o\ : std_logic;
SIGNAL \ADC_IN[2]~input_o\ : std_logic;
SIGNAL \inst|Buffer1[11]~0_combout\ : std_logic;
SIGNAL \ADC_IN[3]~input_o\ : std_logic;
SIGNAL \ADC_IN[5]~input_o\ : std_logic;
SIGNAL \ADC_IN[6]~input_o\ : std_logic;
SIGNAL \ADC_IN[4]~input_o\ : std_logic;
SIGNAL \inst|Buffer1[11]~1_combout\ : std_logic;
SIGNAL \inst|latched~combout\ : std_logic;
SIGNAL \ADC_IN[0]~input_o\ : std_logic;
SIGNAL \inst|Buffer1[11]~3_combout\ : std_logic;
SIGNAL \inst|Buffer1[11]~4_combout\ : std_logic;
SIGNAL \inst|Buffer1\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|ADC_out\ : std_logic_vector(15 DOWNTO 0);

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

\USER_BUTTON~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \USER_BUTTON~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X20_Y0_N2
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

-- Location: IOOBUF_X49_Y0_N9
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

-- Location: IOOBUF_X20_Y34_N16
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ADC_out\(13),
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
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

-- Location: IOOBUF_X29_Y34_N16
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

-- Location: IOOBUF_X0_Y23_N16
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

-- Location: IOOBUF_X16_Y0_N16
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

-- Location: IOOBUF_X14_Y34_N23
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

-- Location: IOOBUF_X18_Y0_N9
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

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X23_Y34_N23
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

-- Location: IOOBUF_X0_Y23_N2
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

-- Location: IOOBUF_X0_Y15_N2
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

-- Location: IOOBUF_X14_Y34_N16
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

-- Location: IOOBUF_X18_Y34_N2
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

-- Location: IOOBUF_X11_Y34_N2
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

-- Location: IOIBUF_X0_Y16_N15
\USER_BUTTON~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_USER_BUTTON,
	o => \USER_BUTTON~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: LCCOMB_X20_Y19_N2
\inst|ADC_out[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out\(15) = (!\RESET~input_o\ & ((\USER_BUTTON~input_o\) # (\inst|ADC_out\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USER_BUTTON~input_o\,
	datac => \RESET~input_o\,
	datad => \inst|ADC_out\(15),
	combout => \inst|ADC_out\(15));

-- Location: LCCOMB_X20_Y19_N28
\inst|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|comb~0_combout\ = (\USER_BUTTON~input_o\ & !\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USER_BUTTON~input_o\,
	datab => \RESET~input_o\,
	combout => \inst|comb~0_combout\);

-- Location: LCCOMB_X20_Y19_N0
\inst|ADC_out[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out\(13) = (!\inst|comb~0_combout\ & ((\RESET~input_o\) # (\inst|ADC_out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|comb~0_combout\,
	datac => \RESET~input_o\,
	datad => \inst|ADC_out\(13),
	combout => \inst|ADC_out\(13));

-- Location: LCCOMB_X20_Y19_N6
\inst|ADC_out[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out\(12) = (!\inst|comb~0_combout\ & ((\RESET~input_o\) # (\inst|ADC_out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|comb~0_combout\,
	datac => \RESET~input_o\,
	datad => \inst|ADC_out\(12),
	combout => \inst|ADC_out\(12));

-- Location: CLKCTRL_G4
\USER_BUTTON~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \USER_BUTTON~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \USER_BUTTON~inputclkctrl_outclk\);

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

-- Location: IOIBUF_X20_Y34_N8
\ADC_IN[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(11),
	o => \ADC_IN[11]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\ADC_IN[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(8),
	o => \ADC_IN[8]~input_o\);

-- Location: FF_X19_Y19_N13
\inst|Buffer1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[8]~input_o\,
	sload => VCC,
	ena => \inst|Buffer1[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(8));

-- Location: IOIBUF_X0_Y23_N22
\ADC_IN[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(10),
	o => \ADC_IN[10]~input_o\);

-- Location: FF_X19_Y19_N9
\inst|Buffer1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[10]~input_o\,
	sload => VCC,
	ena => \inst|Buffer1[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(10));

-- Location: IOIBUF_X16_Y34_N1
\ADC_IN[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(9),
	o => \ADC_IN[9]~input_o\);

-- Location: FF_X19_Y19_N15
\inst|Buffer1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[9]~input_o\,
	sload => VCC,
	ena => \inst|Buffer1[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(9));

-- Location: IOIBUF_X16_Y34_N15
\ADC_IN[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(7),
	o => \ADC_IN[7]~input_o\);

-- Location: FF_X19_Y19_N3
\inst|Buffer1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[7]~input_o\,
	sload => VCC,
	ena => \inst|Buffer1[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(7));

-- Location: LCCOMB_X19_Y19_N30
\inst|Buffer1[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1[11]~2_combout\ = (!\inst|Buffer1\(8) & (!\inst|Buffer1\(10) & (!\inst|Buffer1\(9) & !\inst|Buffer1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer1\(8),
	datab => \inst|Buffer1\(10),
	datac => \inst|Buffer1\(9),
	datad => \inst|Buffer1\(7),
	combout => \inst|Buffer1[11]~2_combout\);

-- Location: IOIBUF_X16_Y34_N8
\ADC_IN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(1),
	o => \ADC_IN[1]~input_o\);

-- Location: FF_X19_Y19_N27
\inst|Buffer1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[1]~input_o\,
	sload => VCC,
	ena => \inst|Buffer1[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(1));

-- Location: IOIBUF_X18_Y34_N22
\ADC_IN[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(2),
	o => \ADC_IN[2]~input_o\);

-- Location: FF_X19_Y19_N25
\inst|Buffer1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[2]~input_o\,
	sload => VCC,
	ena => \inst|Buffer1[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(2));

-- Location: LCCOMB_X19_Y19_N10
\inst|Buffer1[11]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1[11]~0_combout\ = (!\inst|Buffer1\(1) & (!\RESET~input_o\ & (\USER_BUTTON~input_o\ & !\inst|Buffer1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer1\(1),
	datab => \RESET~input_o\,
	datac => \USER_BUTTON~input_o\,
	datad => \inst|Buffer1\(2),
	combout => \inst|Buffer1[11]~0_combout\);

-- Location: IOIBUF_X23_Y34_N15
\ADC_IN[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(3),
	o => \ADC_IN[3]~input_o\);

-- Location: FF_X19_Y19_N23
\inst|Buffer1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[3]~input_o\,
	sload => VCC,
	ena => \inst|Buffer1[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(3));

-- Location: IOIBUF_X18_Y0_N22
\ADC_IN[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(5),
	o => \ADC_IN[5]~input_o\);

-- Location: FF_X19_Y19_N19
\inst|Buffer1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[5]~input_o\,
	sload => VCC,
	ena => \inst|Buffer1[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(5));

-- Location: IOIBUF_X0_Y15_N8
\ADC_IN[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(6),
	o => \ADC_IN[6]~input_o\);

-- Location: FF_X19_Y19_N5
\inst|Buffer1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[6]~input_o\,
	sload => VCC,
	ena => \inst|Buffer1[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(6));

-- Location: IOIBUF_X20_Y0_N8
\ADC_IN[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(4),
	o => \ADC_IN[4]~input_o\);

-- Location: FF_X19_Y19_N29
\inst|Buffer1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[4]~input_o\,
	sload => VCC,
	ena => \inst|Buffer1[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(4));

-- Location: LCCOMB_X19_Y19_N16
\inst|Buffer1[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1[11]~1_combout\ = (!\inst|Buffer1\(3) & (!\inst|Buffer1\(5) & (!\inst|Buffer1\(6) & !\inst|Buffer1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer1\(3),
	datab => \inst|Buffer1\(5),
	datac => \inst|Buffer1\(6),
	datad => \inst|Buffer1\(4),
	combout => \inst|Buffer1[11]~1_combout\);

-- Location: LCCOMB_X20_Y19_N10
\inst|latched\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|latched~combout\ = (!\RESET~input_o\ & ((\USER_BUTTON~input_o\) # (\inst|latched~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \USER_BUTTON~input_o\,
	datac => \RESET~input_o\,
	datad => \inst|latched~combout\,
	combout => \inst|latched~combout\);

-- Location: IOIBUF_X0_Y24_N15
\ADC_IN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADC_IN(0),
	o => \ADC_IN[0]~input_o\);

-- Location: FF_X19_Y19_N21
\inst|Buffer1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[0]~input_o\,
	sload => VCC,
	ena => \inst|Buffer1[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(0));

-- Location: LCCOMB_X19_Y19_N0
\inst|Buffer1[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1[11]~3_combout\ = (\inst|latched~combout\ & (!\inst|Buffer1\(0) & !\inst|Buffer1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|latched~combout\,
	datab => \inst|Buffer1\(0),
	datad => \inst|Buffer1\(11),
	combout => \inst|Buffer1[11]~3_combout\);

-- Location: LCCOMB_X19_Y19_N6
\inst|Buffer1[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Buffer1[11]~4_combout\ = (\inst|Buffer1[11]~2_combout\ & (\inst|Buffer1[11]~0_combout\ & (\inst|Buffer1[11]~1_combout\ & \inst|Buffer1[11]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Buffer1[11]~2_combout\,
	datab => \inst|Buffer1[11]~0_combout\,
	datac => \inst|Buffer1[11]~1_combout\,
	datad => \inst|Buffer1[11]~3_combout\,
	combout => \inst|Buffer1[11]~4_combout\);

-- Location: FF_X20_Y19_N29
\inst|Buffer1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \ADC_IN[11]~input_o\,
	sload => VCC,
	ena => \inst|Buffer1[11]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Buffer1\(11));

-- Location: LCCOMB_X20_Y19_N12
\inst|ADC_out[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out\(11) = (!\RESET~input_o\ & ((GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & ((\inst|Buffer1\(11)))) # (!GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & (\inst|ADC_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ADC_out\(11),
	datab => \RESET~input_o\,
	datac => \USER_BUTTON~inputclkctrl_outclk\,
	datad => \inst|Buffer1\(11),
	combout => \inst|ADC_out\(11));

-- Location: LCCOMB_X19_Y19_N8
\inst|ADC_out[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out\(10) = (!\RESET~input_o\ & ((GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & ((\inst|Buffer1\(10)))) # (!GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & (\inst|ADC_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ADC_out\(10),
	datab => \RESET~input_o\,
	datac => \inst|Buffer1\(10),
	datad => \USER_BUTTON~inputclkctrl_outclk\,
	combout => \inst|ADC_out\(10));

-- Location: LCCOMB_X19_Y19_N14
\inst|ADC_out[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out\(9) = (!\RESET~input_o\ & ((GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & ((\inst|Buffer1\(9)))) # (!GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & (\inst|ADC_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ADC_out\(9),
	datab => \RESET~input_o\,
	datac => \inst|Buffer1\(9),
	datad => \USER_BUTTON~inputclkctrl_outclk\,
	combout => \inst|ADC_out\(9));

-- Location: LCCOMB_X19_Y19_N12
\inst|ADC_out[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out\(8) = (!\RESET~input_o\ & ((GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & ((\inst|Buffer1\(8)))) # (!GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & (\inst|ADC_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst|ADC_out\(8),
	datac => \inst|Buffer1\(8),
	datad => \USER_BUTTON~inputclkctrl_outclk\,
	combout => \inst|ADC_out\(8));

-- Location: LCCOMB_X19_Y19_N2
\inst|ADC_out[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out\(7) = (!\RESET~input_o\ & ((GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & ((\inst|Buffer1\(7)))) # (!GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & (\inst|ADC_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst|ADC_out\(7),
	datac => \inst|Buffer1\(7),
	datad => \USER_BUTTON~inputclkctrl_outclk\,
	combout => \inst|ADC_out\(7));

-- Location: LCCOMB_X19_Y19_N4
\inst|ADC_out[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out\(6) = (!\RESET~input_o\ & ((GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & ((\inst|Buffer1\(6)))) # (!GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & (\inst|ADC_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ADC_out\(6),
	datab => \RESET~input_o\,
	datac => \inst|Buffer1\(6),
	datad => \USER_BUTTON~inputclkctrl_outclk\,
	combout => \inst|ADC_out\(6));

-- Location: LCCOMB_X19_Y19_N18
\inst|ADC_out[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out\(5) = (!\RESET~input_o\ & ((GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & ((\inst|Buffer1\(5)))) # (!GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & (\inst|ADC_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ADC_out\(5),
	datab => \RESET~input_o\,
	datac => \inst|Buffer1\(5),
	datad => \USER_BUTTON~inputclkctrl_outclk\,
	combout => \inst|ADC_out\(5));

-- Location: LCCOMB_X19_Y19_N28
\inst|ADC_out[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out\(4) = (!\RESET~input_o\ & ((GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & ((\inst|Buffer1\(4)))) # (!GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & (\inst|ADC_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst|ADC_out\(4),
	datac => \inst|Buffer1\(4),
	datad => \USER_BUTTON~inputclkctrl_outclk\,
	combout => \inst|ADC_out\(4));

-- Location: LCCOMB_X19_Y19_N22
\inst|ADC_out[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out\(3) = (!\RESET~input_o\ & ((GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & ((\inst|Buffer1\(3)))) # (!GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & (\inst|ADC_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst|ADC_out\(3),
	datac => \inst|Buffer1\(3),
	datad => \USER_BUTTON~inputclkctrl_outclk\,
	combout => \inst|ADC_out\(3));

-- Location: LCCOMB_X19_Y19_N24
\inst|ADC_out[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out\(2) = (!\RESET~input_o\ & ((GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & ((\inst|Buffer1\(2)))) # (!GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & (\inst|ADC_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst|ADC_out\(2),
	datac => \inst|Buffer1\(2),
	datad => \USER_BUTTON~inputclkctrl_outclk\,
	combout => \inst|ADC_out\(2));

-- Location: LCCOMB_X19_Y19_N26
\inst|ADC_out[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out\(1) = (!\RESET~input_o\ & ((GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & ((\inst|Buffer1\(1)))) # (!GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & (\inst|ADC_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst|ADC_out\(1),
	datac => \inst|Buffer1\(1),
	datad => \USER_BUTTON~inputclkctrl_outclk\,
	combout => \inst|ADC_out\(1));

-- Location: LCCOMB_X19_Y19_N20
\inst|ADC_out[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ADC_out\(0) = (!\RESET~input_o\ & ((GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & ((\inst|Buffer1\(0)))) # (!GLOBAL(\USER_BUTTON~inputclkctrl_outclk\) & (\inst|ADC_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \inst|ADC_out\(0),
	datac => \inst|Buffer1\(0),
	datad => \USER_BUTTON~inputclkctrl_outclk\,
	combout => \inst|ADC_out\(0));

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


