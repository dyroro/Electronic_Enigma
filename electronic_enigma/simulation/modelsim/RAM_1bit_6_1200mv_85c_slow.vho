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

-- DATE "05/06/2024 23:19:43"

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

ENTITY 	RAM_1bit IS
    PORT (
	di : IN std_logic;
	clock : IN std_logic;
	R : IN std_logic;
	W : IN std_logic;
	sin : IN std_logic;
	out_incri : IN std_logic;
	sout : BUFFER std_logic
	);
END RAM_1bit;

-- Design Ports Information
-- sout	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_incri	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sin	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RAM_1bit IS
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
SIGNAL ww_sin : std_logic;
SIGNAL ww_out_incri : std_logic;
SIGNAL ww_sout : std_logic;
SIGNAL \sout~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \sin~input_o\ : std_logic;
SIGNAL \di~input_o\ : std_logic;
SIGNAL \W~input_o\ : std_logic;
SIGNAL \out_incri~input_o\ : std_logic;
SIGNAL \pass2|U1|q~0_combout\ : std_logic;
SIGNAL \pass2|U1|q~1_combout\ : std_logic;
SIGNAL \pass2|U1|q~q\ : std_logic;
SIGNAL \R~input_o\ : std_logic;
SIGNAL \pass2|DOUT~combout\ : std_logic;

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

-- Location: IOOBUF_X10_Y0_N9
\sout~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pass2|DOUT~combout\,
	devoe => ww_devoe,
	o => \sout~output_o\);

-- Location: IOIBUF_X14_Y0_N8
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\sin~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sin,
	o => \sin~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\di~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di,
	o => \di~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\W~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W,
	o => \W~input_o\);

-- Location: IOIBUF_X8_Y0_N1
\out_incri~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_out_incri,
	o => \out_incri~input_o\);

-- Location: LCCOMB_X13_Y1_N2
\pass2|U1|q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pass2|U1|q~0_combout\ = (!\di~input_o\ & ((\W~input_o\ & (\out_incri~input_o\)) # (!\W~input_o\ & ((\pass2|U1|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \di~input_o\,
	datab => \W~input_o\,
	datac => \out_incri~input_o\,
	datad => \pass2|U1|q~q\,
	combout => \pass2|U1|q~0_combout\);

-- Location: LCCOMB_X13_Y1_N12
\pass2|U1|q~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pass2|U1|q~1_combout\ = (\pass2|U1|q~0_combout\) # ((\sin~input_o\ & \di~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sin~input_o\,
	datac => \di~input_o\,
	datad => \pass2|U1|q~0_combout\,
	combout => \pass2|U1|q~1_combout\);

-- Location: FF_X13_Y1_N13
\pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \pass2|U1|q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pass2|U1|q~q\);

-- Location: IOIBUF_X8_Y0_N8
\R~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R,
	o => \R~input_o\);

-- Location: LCCOMB_X12_Y1_N28
\pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \pass2|DOUT~combout\ = (\pass2|U1|q~q\ & \R~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pass2|U1|q~q\,
	datad => \R~input_o\,
	combout => \pass2|DOUT~combout\);

ww_sout <= \sout~output_o\;
END structure;


