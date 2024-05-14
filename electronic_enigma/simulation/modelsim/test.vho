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

-- DATE "05/06/2024 23:09:24"

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

ENTITY 	test IS
    PORT (
	test_bit : OUT std_logic;
	signal_entree : IN std_logic_vector(7 DOWNTO 0)
	);
END test;

-- Design Ports Information
-- test_bit	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[0]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[3]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[4]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[6]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_test_bit : std_logic;
SIGNAL ww_signal_entree : std_logic_vector(7 DOWNTO 0);
SIGNAL \test_bit~output_o\ : std_logic;
SIGNAL \signal_entree[4]~input_o\ : std_logic;
SIGNAL \signal_entree[5]~input_o\ : std_logic;
SIGNAL \signal_entree[6]~input_o\ : std_logic;
SIGNAL \signal_entree[7]~input_o\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \signal_entree[2]~input_o\ : std_logic;
SIGNAL \signal_entree[3]~input_o\ : std_logic;
SIGNAL \signal_entree[0]~input_o\ : std_logic;
SIGNAL \signal_entree[1]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;

BEGIN

test_bit <= ww_test_bit;
ww_signal_entree <= signal_entree;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X14_Y0_N2
\test_bit~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LessThan0~2_combout\,
	devoe => ww_devoe,
	o => \test_bit~output_o\);

-- Location: IOIBUF_X14_Y0_N8
\signal_entree[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(4),
	o => \signal_entree[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\signal_entree[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(5),
	o => \signal_entree[5]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\signal_entree[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(6),
	o => \signal_entree[6]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\signal_entree[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(7),
	o => \signal_entree[7]~input_o\);

-- Location: LCCOMB_X17_Y4_N2
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\signal_entree[4]~input_o\) # ((\signal_entree[5]~input_o\) # ((\signal_entree[6]~input_o\) # (\signal_entree[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[4]~input_o\,
	datab => \signal_entree[5]~input_o\,
	datac => \signal_entree[6]~input_o\,
	datad => \signal_entree[7]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: IOIBUF_X8_Y0_N8
\signal_entree[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(2),
	o => \signal_entree[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\signal_entree[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(3),
	o => \signal_entree[3]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\signal_entree[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(0),
	o => \signal_entree[0]~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\signal_entree[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(1),
	o => \signal_entree[1]~input_o\);

-- Location: LCCOMB_X17_Y4_N24
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\signal_entree[2]~input_o\) # ((\signal_entree[3]~input_o\) # ((\signal_entree[0]~input_o\) # (\signal_entree[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[2]~input_o\,
	datab => \signal_entree[3]~input_o\,
	datac => \signal_entree[0]~input_o\,
	datad => \signal_entree[1]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y4_N28
\LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~1_combout\) # (\LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~2_combout\);

ww_test_bit <= \test_bit~output_o\;
END structure;


