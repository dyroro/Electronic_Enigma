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

-- DATE "05/06/2024 23:14:08"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	mux_1bit IS
    PORT (
	sin : IN std_logic;
	out_incri : IN std_logic;
	di : IN std_logic;
	out_put : OUT std_logic
	);
END mux_1bit;

-- Design Ports Information
-- out_put	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sin	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_incri	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF mux_1bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sin : std_logic;
SIGNAL ww_out_incri : std_logic;
SIGNAL ww_di : std_logic;
SIGNAL ww_out_put : std_logic;
SIGNAL \out_put~output_o\ : std_logic;
SIGNAL \sin~input_o\ : std_logic;
SIGNAL \di~input_o\ : std_logic;
SIGNAL \out_incri~input_o\ : std_logic;
SIGNAL \out_put~0_combout\ : std_logic;

BEGIN

ww_sin <= sin;
ww_out_incri <= out_incri;
ww_di <= di;
out_put <= ww_out_put;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X8_Y0_N2
\out_put~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out_put~0_combout\,
	devoe => ww_devoe,
	o => \out_put~output_o\);

-- Location: IOIBUF_X12_Y0_N1
\sin~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sin,
	o => \sin~input_o\);

-- Location: IOIBUF_X14_Y31_N8
\di~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di,
	o => \di~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\out_incri~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_out_incri,
	o => \out_incri~input_o\);

-- Location: LCCOMB_X12_Y18_N0
\out_put~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out_put~0_combout\ = (\di~input_o\ & (\sin~input_o\)) # (!\di~input_o\ & ((\out_incri~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sin~input_o\,
	datac => \di~input_o\,
	datad => \out_incri~input_o\,
	combout => \out_put~0_combout\);

ww_out_put <= \out_put~output_o\;
END structure;


