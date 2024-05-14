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

-- DATE "05/06/2024 23:03:02"

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

ENTITY 	reflecteur IS
    PORT (
	signal_entree : IN std_logic_vector(7 DOWNTO 0);
	signal_sortie : OUT std_logic_vector(7 DOWNTO 0)
	);
END reflecteur;

-- Design Ports Information
-- signal_sortie[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_sortie[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_sortie[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_sortie[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_sortie[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_sortie[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_sortie[6]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_sortie[7]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[4]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[7]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[3]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[2]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[1]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF reflecteur IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_signal_entree : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_signal_sortie : std_logic_vector(7 DOWNTO 0);
SIGNAL \signal_sortie[0]~output_o\ : std_logic;
SIGNAL \signal_sortie[1]~output_o\ : std_logic;
SIGNAL \signal_sortie[2]~output_o\ : std_logic;
SIGNAL \signal_sortie[3]~output_o\ : std_logic;
SIGNAL \signal_sortie[4]~output_o\ : std_logic;
SIGNAL \signal_sortie[5]~output_o\ : std_logic;
SIGNAL \signal_sortie[6]~output_o\ : std_logic;
SIGNAL \signal_sortie[7]~output_o\ : std_logic;
SIGNAL \signal_entree[1]~input_o\ : std_logic;
SIGNAL \signal_entree[0]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \signal_entree[2]~input_o\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \signal_entree[3]~input_o\ : std_logic;
SIGNAL \test_bit~1_combout\ : std_logic;
SIGNAL \signal_entree[4]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \signal_reflector~1_combout\ : std_logic;
SIGNAL \signal_entree[5]~input_o\ : std_logic;
SIGNAL \signal_entree[6]~input_o\ : std_logic;
SIGNAL \signal_entree[7]~input_o\ : std_logic;
SIGNAL \test_bit~0_combout\ : std_logic;
SIGNAL \test_bit~combout\ : std_logic;
SIGNAL \signal_reflector~0_combout\ : std_logic;
SIGNAL \signal_sortie~4_combout\ : std_logic;
SIGNAL \signal_reflector~3_combout\ : std_logic;
SIGNAL \signal_reflector~2_combout\ : std_logic;
SIGNAL \signal_sortie~5_combout\ : std_logic;
SIGNAL \signal_reflector~4_combout\ : std_logic;
SIGNAL \signal_reflector~5_combout\ : std_logic;
SIGNAL \signal_sortie~6_combout\ : std_logic;
SIGNAL \signal_reflector~6_combout\ : std_logic;
SIGNAL \signal_sortie~8_combout\ : std_logic;
SIGNAL \signal_reflector~8_combout\ : std_logic;
SIGNAL \signal_reflector~7_combout\ : std_logic;
SIGNAL \signal_sortie~7_combout\ : std_logic;
SIGNAL \signal_reflector~9_combout\ : std_logic;
SIGNAL \signal_sortie~9_combout\ : std_logic;

BEGIN

ww_signal_entree <= signal_entree;
signal_sortie <= ww_signal_sortie;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X14_Y31_N2
\signal_sortie[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \signal_sortie~4_combout\,
	devoe => ww_devoe,
	o => \signal_sortie[0]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\signal_sortie[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \signal_sortie~5_combout\,
	devoe => ww_devoe,
	o => \signal_sortie[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\signal_sortie[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \signal_sortie~6_combout\,
	devoe => ww_devoe,
	o => \signal_sortie[2]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\signal_sortie[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \signal_sortie~8_combout\,
	devoe => ww_devoe,
	o => \signal_sortie[3]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\signal_sortie[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \signal_sortie~7_combout\,
	devoe => ww_devoe,
	o => \signal_sortie[4]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\signal_sortie[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signal_sortie[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\signal_sortie[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \signal_sortie~9_combout\,
	devoe => ww_devoe,
	o => \signal_sortie[6]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\signal_sortie[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \signal_sortie[7]~output_o\);

-- Location: IOIBUF_X12_Y0_N1
\signal_entree[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(1),
	o => \signal_entree[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\signal_entree[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(0),
	o => \signal_entree[0]~input_o\);

-- Location: LCCOMB_X6_Y26_N16
\Add0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \signal_entree[1]~input_o\ $ (\signal_entree[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \signal_entree[1]~input_o\,
	datad => \signal_entree[0]~input_o\,
	combout => \Add0~1_combout\);

-- Location: IOIBUF_X33_Y15_N1
\signal_entree[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(2),
	o => \signal_entree[2]~input_o\);

-- Location: LCCOMB_X21_Y20_N24
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = \signal_entree[2]~input_o\ $ (((\signal_entree[0]~input_o\) # (\signal_entree[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[0]~input_o\,
	datac => \signal_entree[2]~input_o\,
	datad => \signal_entree[1]~input_o\,
	combout => \Add0~2_combout\);

-- Location: IOIBUF_X33_Y11_N1
\signal_entree[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(3),
	o => \signal_entree[3]~input_o\);

-- Location: LCCOMB_X21_Y20_N26
\test_bit~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \test_bit~1_combout\ = (!\signal_entree[0]~input_o\ & (!\signal_entree[3]~input_o\ & (!\signal_entree[2]~input_o\ & !\signal_entree[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[0]~input_o\,
	datab => \signal_entree[3]~input_o\,
	datac => \signal_entree[2]~input_o\,
	datad => \signal_entree[1]~input_o\,
	combout => \test_bit~1_combout\);

-- Location: IOIBUF_X33_Y16_N8
\signal_entree[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(4),
	o => \signal_entree[4]~input_o\);

-- Location: LCCOMB_X21_Y20_N6
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \test_bit~1_combout\ $ (!\signal_entree[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \test_bit~1_combout\,
	datad => \signal_entree[4]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X21_Y20_N10
\Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = \signal_entree[3]~input_o\ $ (((\signal_entree[0]~input_o\) # ((\signal_entree[2]~input_o\) # (\signal_entree[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[0]~input_o\,
	datab => \signal_entree[3]~input_o\,
	datac => \signal_entree[2]~input_o\,
	datad => \signal_entree[1]~input_o\,
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X6_Y26_N12
\signal_reflector~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_reflector~1_combout\ = (\Add0~3_combout\ & (!\Add0~0_combout\ & (\Add0~1_combout\ $ (\Add0~2_combout\)))) # (!\Add0~3_combout\ & (\Add0~0_combout\ $ (((!\Add0~2_combout\) # (!\Add0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \Add0~2_combout\,
	datac => \Add0~0_combout\,
	datad => \Add0~3_combout\,
	combout => \signal_reflector~1_combout\);

-- Location: IOIBUF_X33_Y16_N1
\signal_entree[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(5),
	o => \signal_entree[5]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\signal_entree[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(6),
	o => \signal_entree[6]~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\signal_entree[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(7),
	o => \signal_entree[7]~input_o\);

-- Location: LCCOMB_X21_Y20_N0
\test_bit~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \test_bit~0_combout\ = (\signal_entree[5]~input_o\) # ((\signal_entree[6]~input_o\) # ((\signal_entree[7]~input_o\) # (\signal_entree[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[5]~input_o\,
	datab => \signal_entree[6]~input_o\,
	datac => \signal_entree[7]~input_o\,
	datad => \signal_entree[4]~input_o\,
	combout => \test_bit~0_combout\);

-- Location: LCCOMB_X21_Y20_N12
test_bit : cycloneiv_lcell_comb
-- Equation(s):
-- \test_bit~combout\ = (\test_bit~0_combout\) # (!\test_bit~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_bit~0_combout\,
	datac => \test_bit~1_combout\,
	combout => \test_bit~combout\);

-- Location: LCCOMB_X6_Y26_N18
\signal_reflector~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_reflector~0_combout\ = (\Add0~0_combout\ & (!\Add0~1_combout\ & (!\Add0~2_combout\ & !\Add0~3_combout\))) # (!\Add0~0_combout\ & (\Add0~3_combout\ & (\Add0~1_combout\ $ (\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \Add0~2_combout\,
	datac => \Add0~0_combout\,
	datad => \Add0~3_combout\,
	combout => \signal_reflector~0_combout\);

-- Location: LCCOMB_X6_Y26_N6
\signal_sortie~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_sortie~4_combout\ = (\signal_entree[0]~input_o\ & (!\signal_reflector~1_combout\)) # (!\signal_entree[0]~input_o\ & (((\test_bit~combout\ & \signal_reflector~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_reflector~1_combout\,
	datab => \test_bit~combout\,
	datac => \signal_reflector~0_combout\,
	datad => \signal_entree[0]~input_o\,
	combout => \signal_sortie~4_combout\);

-- Location: LCCOMB_X6_Y26_N10
\signal_reflector~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_reflector~3_combout\ = (\Add0~0_combout\ & (\Add0~3_combout\ & ((\signal_entree[0]~input_o\) # (!\signal_entree[1]~input_o\)))) # (!\Add0~0_combout\ & ((\signal_entree[0]~input_o\ & (\signal_entree[1]~input_o\)) # (!\signal_entree[0]~input_o\ & 
-- ((!\Add0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[0]~input_o\,
	datab => \Add0~0_combout\,
	datac => \signal_entree[1]~input_o\,
	datad => \Add0~3_combout\,
	combout => \signal_reflector~3_combout\);

-- Location: LCCOMB_X6_Y26_N24
\signal_reflector~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_reflector~2_combout\ = (\Add0~0_combout\ & (!\Add0~3_combout\ & (\signal_entree[0]~input_o\ $ (\signal_entree[1]~input_o\)))) # (!\Add0~0_combout\ & (\signal_entree[0]~input_o\ & (\signal_entree[1]~input_o\ & \Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[0]~input_o\,
	datab => \Add0~0_combout\,
	datac => \signal_entree[1]~input_o\,
	datad => \Add0~3_combout\,
	combout => \signal_reflector~2_combout\);

-- Location: LCCOMB_X6_Y26_N4
\signal_sortie~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_sortie~5_combout\ = (\test_bit~combout\ & ((\Add0~2_combout\ & (!\signal_reflector~3_combout\)) # (!\Add0~2_combout\ & ((\signal_reflector~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_reflector~3_combout\,
	datab => \signal_reflector~2_combout\,
	datac => \Add0~2_combout\,
	datad => \test_bit~combout\,
	combout => \signal_sortie~5_combout\);

-- Location: LCCOMB_X21_Y20_N28
\signal_reflector~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_reflector~4_combout\ = (\signal_entree[1]~input_o\ & (\signal_entree[0]~input_o\ $ (((!\Add0~3_combout\ & !\Add0~0_combout\))))) # (!\signal_entree[1]~input_o\ & (((\Add0~0_combout\) # (\signal_entree[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \signal_entree[1]~input_o\,
	datac => \Add0~0_combout\,
	datad => \signal_entree[0]~input_o\,
	combout => \signal_reflector~4_combout\);

-- Location: LCCOMB_X21_Y20_N14
\signal_reflector~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_reflector~5_combout\ = ((\signal_entree[0]~input_o\) # (\Add0~3_combout\ $ (\signal_entree[1]~input_o\))) # (!\Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \signal_entree[1]~input_o\,
	datac => \Add0~0_combout\,
	datad => \signal_entree[0]~input_o\,
	combout => \signal_reflector~5_combout\);

-- Location: LCCOMB_X21_Y20_N16
\signal_sortie~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_sortie~6_combout\ = (\test_bit~combout\ & ((\Add0~2_combout\ & (\signal_reflector~4_combout\)) # (!\Add0~2_combout\ & ((!\signal_reflector~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \signal_reflector~4_combout\,
	datac => \signal_reflector~5_combout\,
	datad => \test_bit~combout\,
	combout => \signal_sortie~6_combout\);

-- Location: LCCOMB_X21_Y20_N2
\signal_reflector~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_reflector~6_combout\ = (\signal_entree[1]~input_o\ & (((!\signal_entree[2]~input_o\ & !\Add0~0_combout\)))) # (!\signal_entree[1]~input_o\ & ((\signal_entree[2]~input_o\) # ((\signal_entree[0]~input_o\ & \Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[0]~input_o\,
	datab => \signal_entree[1]~input_o\,
	datac => \signal_entree[2]~input_o\,
	datad => \Add0~0_combout\,
	combout => \signal_reflector~6_combout\);

-- Location: LCCOMB_X21_Y20_N20
\signal_sortie~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_sortie~8_combout\ = (\Add0~3_combout\ & (!\signal_reflector~6_combout\ & ((\test_bit~0_combout\) # (!\test_bit~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \test_bit~0_combout\,
	datac => \test_bit~1_combout\,
	datad => \signal_reflector~6_combout\,
	combout => \signal_sortie~8_combout\);

-- Location: LCCOMB_X6_Y26_N0
\signal_reflector~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_reflector~8_combout\ = (\signal_entree[0]~input_o\ & (\Add0~0_combout\ $ (((\Add0~2_combout\ & \Add0~3_combout\))))) # (!\signal_entree[0]~input_o\ & ((\Add0~0_combout\ & (!\Add0~2_combout\)) # (!\Add0~0_combout\ & ((\Add0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[0]~input_o\,
	datab => \Add0~0_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~3_combout\,
	combout => \signal_reflector~8_combout\);

-- Location: LCCOMB_X6_Y26_N22
\signal_reflector~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_reflector~7_combout\ = (\Add0~0_combout\ & (!\Add0~3_combout\ & (\signal_entree[0]~input_o\ $ (!\Add0~2_combout\)))) # (!\Add0~0_combout\ & (\Add0~3_combout\ & (\signal_entree[0]~input_o\ $ (\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[0]~input_o\,
	datab => \Add0~0_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~3_combout\,
	combout => \signal_reflector~7_combout\);

-- Location: LCCOMB_X6_Y26_N2
\signal_sortie~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_sortie~7_combout\ = (\test_bit~combout\ & ((\Add0~1_combout\ & ((\signal_reflector~7_combout\))) # (!\Add0~1_combout\ & (\signal_reflector~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \signal_reflector~8_combout\,
	datac => \signal_reflector~7_combout\,
	datad => \test_bit~combout\,
	combout => \signal_sortie~7_combout\);

-- Location: LCCOMB_X6_Y26_N20
\signal_reflector~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_reflector~9_combout\ = (!\Add0~0_combout\ & (!\Add0~3_combout\ & ((!\Add0~2_combout\) # (!\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \Add0~2_combout\,
	datac => \Add0~0_combout\,
	datad => \Add0~3_combout\,
	combout => \signal_reflector~9_combout\);

-- Location: LCCOMB_X21_Y20_N22
\signal_sortie~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_sortie~9_combout\ = (!\signal_reflector~9_combout\ & ((\test_bit~0_combout\) # (!\test_bit~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_reflector~9_combout\,
	datab => \test_bit~0_combout\,
	datac => \test_bit~1_combout\,
	combout => \signal_sortie~9_combout\);

ww_signal_sortie(0) <= \signal_sortie[0]~output_o\;

ww_signal_sortie(1) <= \signal_sortie[1]~output_o\;

ww_signal_sortie(2) <= \signal_sortie[2]~output_o\;

ww_signal_sortie(3) <= \signal_sortie[3]~output_o\;

ww_signal_sortie(4) <= \signal_sortie[4]~output_o\;

ww_signal_sortie(5) <= \signal_sortie[5]~output_o\;

ww_signal_sortie(6) <= \signal_sortie[6]~output_o\;

ww_signal_sortie(7) <= \signal_sortie[7]~output_o\;
END structure;


