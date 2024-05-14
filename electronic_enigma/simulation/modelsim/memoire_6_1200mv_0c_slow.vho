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

-- DATE "05/06/2024 23:19:13"

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

ENTITY 	memoire IS
    PORT (
	DIN : IN std_logic;
	CLOCK : IN std_logic;
	W : IN std_logic;
	R : IN std_logic;
	DOUT : BUFFER std_logic
	);
END memoire;

-- Design Ports Information
-- DOUT	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF memoire IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DIN : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_W : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL ww_DOUT : std_logic;
SIGNAL \DOUT~output_o\ : std_logic;
SIGNAL \R~input_o\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \W~input_o\ : std_logic;
SIGNAL \DIN~input_o\ : std_logic;
SIGNAL \U1|q~0_combout\ : std_logic;
SIGNAL \U1|q~q\ : std_logic;
SIGNAL \DOUT~0_combout\ : std_logic;

BEGIN

ww_DIN <= DIN;
ww_CLOCK <= CLOCK;
ww_W <= W;
ww_R <= R;
DOUT <= ww_DOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X12_Y0_N9
\DOUT~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT~0_combout\,
	devoe => ww_devoe,
	o => \DOUT~output_o\);

-- Location: IOIBUF_X12_Y0_N1
\R~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R,
	o => \R~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\CLOCK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\W~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W,
	o => \W~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\DIN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN,
	o => \DIN~input_o\);

-- Location: LCCOMB_X14_Y1_N4
\U1|q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \U1|q~0_combout\ = (\W~input_o\ & ((\DIN~input_o\))) # (!\W~input_o\ & (\U1|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~input_o\,
	datac => \U1|q~q\,
	datad => \DIN~input_o\,
	combout => \U1|q~0_combout\);

-- Location: FF_X14_Y1_N5
\U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~input_o\,
	d => \U1|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|q~q\);

-- Location: LCCOMB_X13_Y1_N28
\DOUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT~0_combout\ = (\R~input_o\ & \U1|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R~input_o\,
	datad => \U1|q~q\,
	combout => \DOUT~0_combout\);

ww_DOUT <= \DOUT~output_o\;
END structure;


