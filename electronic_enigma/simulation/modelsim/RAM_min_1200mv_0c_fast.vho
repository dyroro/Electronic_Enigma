-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/06/2024 23:21:11"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RAM IS
    PORT (
	di : IN std_logic;
	clock : IN std_logic;
	R : IN std_logic;
	W : IN std_logic;
	sin : IN std_logic_vector(4 DOWNTO 0);
	out_incri : IN std_logic_vector(4 DOWNTO 0);
	sout : OUT std_logic_vector(4 DOWNTO 0)
	);
END RAM;

-- Design Ports Information
-- sout[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sout[1]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sout[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sout[3]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sout[4]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sin[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_incri[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sin[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_incri[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sin[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_incri[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sin[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_incri[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sin[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_incri[4]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RAM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_di : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL ww_W : std_logic;
SIGNAL ww_sin : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_out_incri : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_sout : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sout[0]~output_o\ : std_logic;
SIGNAL \sout[1]~output_o\ : std_logic;
SIGNAL \sout[2]~output_o\ : std_logic;
SIGNAL \sout[3]~output_o\ : std_logic;
SIGNAL \sout[4]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \sin[0]~input_o\ : std_logic;
SIGNAL \out_incri[0]~input_o\ : std_logic;
SIGNAL \di~input_o\ : std_logic;
SIGNAL \bit1|pass2|A~0_combout\ : std_logic;
SIGNAL \W~input_o\ : std_logic;
SIGNAL \bit1|comb~0_combout\ : std_logic;
SIGNAL \bit1|pass2|U1|q~q\ : std_logic;
SIGNAL \R~input_o\ : std_logic;
SIGNAL \bit1|pass2|DOUT~combout\ : std_logic;
SIGNAL \sin[1]~input_o\ : std_logic;
SIGNAL \out_incri[1]~input_o\ : std_logic;
SIGNAL \bit2|pass2|A~0_combout\ : std_logic;
SIGNAL \bit2|pass2|U1|q~q\ : std_logic;
SIGNAL \bit2|pass2|DOUT~combout\ : std_logic;
SIGNAL \out_incri[2]~input_o\ : std_logic;
SIGNAL \sin[2]~input_o\ : std_logic;
SIGNAL \bit3|pass2|A~0_combout\ : std_logic;
SIGNAL \bit3|pass2|U1|q~q\ : std_logic;
SIGNAL \bit3|pass2|DOUT~combout\ : std_logic;
SIGNAL \sin[3]~input_o\ : std_logic;
SIGNAL \out_incri[3]~input_o\ : std_logic;
SIGNAL \bit4|pass2|A~0_combout\ : std_logic;
SIGNAL \bit4|pass2|U1|q~q\ : std_logic;
SIGNAL \bit4|pass2|DOUT~combout\ : std_logic;
SIGNAL \sin[4]~input_o\ : std_logic;
SIGNAL \out_incri[4]~input_o\ : std_logic;
SIGNAL \bit5|pass2|A~0_combout\ : std_logic;
SIGNAL \bit5|pass2|U1|q~q\ : std_logic;
SIGNAL \bit5|pass2|DOUT~combout\ : std_logic;

BEGIN

ww_di <= di;
ww_clock <= clock;
ww_R <= R;
ww_W <= W;
ww_sin <= sin;
ww_out_incri <= out_incri;
sout <= ww_sout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOOBUF_X12_Y0_N2
\sout[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit1|pass2|DOUT~combout\,
	devoe => ww_devoe,
	o => \sout[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\sout[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit2|pass2|DOUT~combout\,
	devoe => ww_devoe,
	o => \sout[1]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\sout[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit3|pass2|DOUT~combout\,
	devoe => ww_devoe,
	o => \sout[2]~output_o\);

-- Location: IOOBUF_X33_Y10_N2
\sout[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit4|pass2|DOUT~combout\,
	devoe => ww_devoe,
	o => \sout[3]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\sout[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bit5|pass2|DOUT~combout\,
	devoe => ww_devoe,
	o => \sout[4]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G17
\clock~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X16_Y0_N1
\sin[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sin(0),
	o => \sin[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\out_incri[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_out_incri(0),
	o => \out_incri[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\di~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di,
	o => \di~input_o\);

-- Location: LCCOMB_X15_Y1_N16
\bit1|pass2|A~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit1|pass2|A~0_combout\ = (\di~input_o\ & (\sin[0]~input_o\)) # (!\di~input_o\ & ((\out_incri[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin[0]~input_o\,
	datab => \out_incri[0]~input_o\,
	datad => \di~input_o\,
	combout => \bit1|pass2|A~0_combout\);

-- Location: IOIBUF_X10_Y31_N1
\W~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W,
	o => \W~input_o\);

-- Location: LCCOMB_X15_Y1_N4
\bit1|comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit1|comb~0_combout\ = (\di~input_o\) # (\W~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \di~input_o\,
	datad => \W~input_o\,
	combout => \bit1|comb~0_combout\);

-- Location: FF_X15_Y1_N17
\bit1|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bit1|pass2|A~0_combout\,
	ena => \bit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit1|pass2|U1|q~q\);

-- Location: IOIBUF_X16_Y0_N8
\R~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R,
	o => \R~input_o\);

-- Location: LCCOMB_X15_Y1_N18
\bit1|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit1|pass2|DOUT~combout\ = (\bit1|pass2|U1|q~q\ & \R~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit1|pass2|U1|q~q\,
	datad => \R~input_o\,
	combout => \bit1|pass2|DOUT~combout\);

-- Location: IOIBUF_X24_Y0_N1
\sin[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sin(1),
	o => \sin[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\out_incri[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_out_incri(1),
	o => \out_incri[1]~input_o\);

-- Location: LCCOMB_X15_Y1_N20
\bit2|pass2|A~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit2|pass2|A~0_combout\ = (\di~input_o\ & (\sin[1]~input_o\)) # (!\di~input_o\ & ((\out_incri[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin[1]~input_o\,
	datab => \out_incri[1]~input_o\,
	datad => \di~input_o\,
	combout => \bit2|pass2|A~0_combout\);

-- Location: FF_X15_Y1_N21
\bit2|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bit2|pass2|A~0_combout\,
	ena => \bit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit2|pass2|U1|q~q\);

-- Location: LCCOMB_X15_Y1_N22
\bit2|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit2|pass2|DOUT~combout\ = (\bit2|pass2|U1|q~q\ & \R~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit2|pass2|U1|q~q\,
	datad => \R~input_o\,
	combout => \bit2|pass2|DOUT~combout\);

-- Location: IOIBUF_X20_Y0_N1
\out_incri[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_out_incri(2),
	o => \out_incri[2]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\sin[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sin(2),
	o => \sin[2]~input_o\);

-- Location: LCCOMB_X15_Y1_N0
\bit3|pass2|A~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit3|pass2|A~0_combout\ = (\di~input_o\ & ((\sin[2]~input_o\))) # (!\di~input_o\ & (\out_incri[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \di~input_o\,
	datab => \out_incri[2]~input_o\,
	datad => \sin[2]~input_o\,
	combout => \bit3|pass2|A~0_combout\);

-- Location: FF_X15_Y1_N1
\bit3|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bit3|pass2|A~0_combout\,
	ena => \bit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit3|pass2|U1|q~q\);

-- Location: LCCOMB_X15_Y1_N10
\bit3|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit3|pass2|DOUT~combout\ = (\bit3|pass2|U1|q~q\ & \R~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit3|pass2|U1|q~q\,
	datad => \R~input_o\,
	combout => \bit3|pass2|DOUT~combout\);

-- Location: IOIBUF_X12_Y0_N8
\sin[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sin(3),
	o => \sin[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\out_incri[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_out_incri(3),
	o => \out_incri[3]~input_o\);

-- Location: LCCOMB_X15_Y1_N12
\bit4|pass2|A~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit4|pass2|A~0_combout\ = (\di~input_o\ & (\sin[3]~input_o\)) # (!\di~input_o\ & ((\out_incri[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin[3]~input_o\,
	datab => \out_incri[3]~input_o\,
	datad => \di~input_o\,
	combout => \bit4|pass2|A~0_combout\);

-- Location: FF_X15_Y1_N13
\bit4|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bit4|pass2|A~0_combout\,
	ena => \bit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit4|pass2|U1|q~q\);

-- Location: LCCOMB_X15_Y1_N6
\bit4|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit4|pass2|DOUT~combout\ = (\bit4|pass2|U1|q~q\ & \R~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bit4|pass2|U1|q~q\,
	datad => \R~input_o\,
	combout => \bit4|pass2|DOUT~combout\);

-- Location: IOIBUF_X12_Y31_N1
\sin[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sin(4),
	o => \sin[4]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\out_incri[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_out_incri(4),
	o => \out_incri[4]~input_o\);

-- Location: LCCOMB_X15_Y1_N24
\bit5|pass2|A~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit5|pass2|A~0_combout\ = (\di~input_o\ & (\sin[4]~input_o\)) # (!\di~input_o\ & ((\out_incri[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \di~input_o\,
	datab => \sin[4]~input_o\,
	datad => \out_incri[4]~input_o\,
	combout => \bit5|pass2|A~0_combout\);

-- Location: FF_X15_Y1_N25
\bit5|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \bit5|pass2|A~0_combout\,
	ena => \bit1|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit5|pass2|U1|q~q\);

-- Location: LCCOMB_X15_Y1_N26
\bit5|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \bit5|pass2|DOUT~combout\ = (\bit5|pass2|U1|q~q\ & \R~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bit5|pass2|U1|q~q\,
	datad => \R~input_o\,
	combout => \bit5|pass2|DOUT~combout\);

ww_sout(0) <= \sout[0]~output_o\;

ww_sout(1) <= \sout[1]~output_o\;

ww_sout(2) <= \sout[2]~output_o\;

ww_sout(3) <= \sout[3]~output_o\;

ww_sout(4) <= \sout[4]~output_o\;
END structure;


