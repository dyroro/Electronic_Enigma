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

-- DATE "05/06/2024 23:07:19"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	incri IS
    PORT (
	signal_entree : IN std_logic_vector(7 DOWNTO 0);
	position1_in : IN STD.STANDARD.integer range 0 TO 31;
	position2_in : IN STD.STANDARD.integer range 0 TO 31;
	position3_in : IN STD.STANDARD.integer range 0 TO 31;
	position1_out : OUT STD.STANDARD.integer range 0 TO 31;
	position2_out : OUT STD.STANDARD.integer range 0 TO 31;
	position3_out : OUT STD.STANDARD.integer range 0 TO 31;
	W : OUT std_logic
	);
END incri;

-- Design Ports Information
-- position1_out[0]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position1_out[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position1_out[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position1_out[3]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position1_out[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position2_out[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position2_out[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position2_out[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position2_out[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position2_out[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position3_out[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position3_out[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position3_out[2]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position3_out[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position3_out[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position1_in[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position1_in[2]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position1_in[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position1_in[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[1]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[4]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[5]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[6]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[7]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position1_in[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position2_in[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position2_in[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position2_in[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position2_in[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position2_in[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position3_in[0]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position3_in[4]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position3_in[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position3_in[3]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position3_in[2]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF incri IS
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
SIGNAL ww_position1_in : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_position2_in : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_position3_in : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_position1_out : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_position2_out : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_position3_out : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_W : std_logic;
SIGNAL \position1_out[0]~output_o\ : std_logic;
SIGNAL \position1_out[1]~output_o\ : std_logic;
SIGNAL \position1_out[2]~output_o\ : std_logic;
SIGNAL \position1_out[3]~output_o\ : std_logic;
SIGNAL \position1_out[4]~output_o\ : std_logic;
SIGNAL \position2_out[0]~output_o\ : std_logic;
SIGNAL \position2_out[1]~output_o\ : std_logic;
SIGNAL \position2_out[2]~output_o\ : std_logic;
SIGNAL \position2_out[3]~output_o\ : std_logic;
SIGNAL \position2_out[4]~output_o\ : std_logic;
SIGNAL \position3_out[0]~output_o\ : std_logic;
SIGNAL \position3_out[1]~output_o\ : std_logic;
SIGNAL \position3_out[2]~output_o\ : std_logic;
SIGNAL \position3_out[3]~output_o\ : std_logic;
SIGNAL \position3_out[4]~output_o\ : std_logic;
SIGNAL \W~output_o\ : std_logic;
SIGNAL \signal_entree[0]~input_o\ : std_logic;
SIGNAL \signal_entree[2]~input_o\ : std_logic;
SIGNAL \signal_entree[3]~input_o\ : std_logic;
SIGNAL \signal_entree[1]~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \signal_entree[7]~input_o\ : std_logic;
SIGNAL \signal_entree[4]~input_o\ : std_logic;
SIGNAL \signal_entree[5]~input_o\ : std_logic;
SIGNAL \signal_entree[6]~input_o\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \position1_in[3]~input_o\ : std_logic;
SIGNAL \position1_in[0]~input_o\ : std_logic;
SIGNAL \position1_in[2]~input_o\ : std_logic;
SIGNAL \position1_in[1]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \position1_in[4]~input_o\ : std_logic;
SIGNAL \position1_out~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \position1_out~1_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \position1_out~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \position1_out~3_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \position1_out~4_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \position1_out~5_combout\ : std_logic;
SIGNAL \position2_in[0]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \position2_in[3]~input_o\ : std_logic;
SIGNAL \position2_in[2]~input_o\ : std_logic;
SIGNAL \position2_in[1]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \position2_in[4]~input_o\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \position2_out~0_combout\ : std_logic;
SIGNAL \position2_out~1_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \position2_out~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \position2_out~3_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \position2_out~4_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \position2_out~5_combout\ : std_logic;
SIGNAL \position3_in[1]~input_o\ : std_logic;
SIGNAL \position3_in[3]~input_o\ : std_logic;
SIGNAL \position3_in[0]~input_o\ : std_logic;
SIGNAL \position3_in[2]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \position3_in[4]~input_o\ : std_logic;
SIGNAL \position3_out~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \position3_out~1_combout\ : std_logic;
SIGNAL \position3_out~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \position3_out~3_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \position3_out~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \position3_out~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \position3_out~6_combout\ : std_logic;

BEGIN

ww_signal_entree <= signal_entree;
ww_position1_in <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(position1_in, 5);
ww_position2_in <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(position2_in, 5);
ww_position3_in <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(position3_in, 5);
position1_out <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_position1_out));
position2_out <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_position2_out));
position3_out <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_position3_out));
W <= ww_W;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X29_Y0_N9
\position1_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \position1_out~1_combout\,
	devoe => ww_devoe,
	o => \position1_out[0]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\position1_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \position1_out~2_combout\,
	devoe => ww_devoe,
	o => \position1_out[1]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\position1_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \position1_out~3_combout\,
	devoe => ww_devoe,
	o => \position1_out[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\position1_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \position1_out~4_combout\,
	devoe => ww_devoe,
	o => \position1_out[3]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\position1_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \position1_out~5_combout\,
	devoe => ww_devoe,
	o => \position1_out[4]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\position2_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \position2_out~1_combout\,
	devoe => ww_devoe,
	o => \position2_out[0]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\position2_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \position2_out~2_combout\,
	devoe => ww_devoe,
	o => \position2_out[1]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\position2_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \position2_out~3_combout\,
	devoe => ww_devoe,
	o => \position2_out[2]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\position2_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \position2_out~4_combout\,
	devoe => ww_devoe,
	o => \position2_out[3]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\position2_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \position2_out~5_combout\,
	devoe => ww_devoe,
	o => \position2_out[4]~output_o\);

-- Location: IOOBUF_X31_Y31_N2
\position3_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \position3_out~2_combout\,
	devoe => ww_devoe,
	o => \position3_out[0]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\position3_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \position3_out~3_combout\,
	devoe => ww_devoe,
	o => \position3_out[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\position3_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \position3_out~4_combout\,
	devoe => ww_devoe,
	o => \position3_out[2]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\position3_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \position3_out~5_combout\,
	devoe => ww_devoe,
	o => \position3_out[3]~output_o\);

-- Location: IOOBUF_X31_Y31_N9
\position3_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \position3_out~6_combout\,
	devoe => ww_devoe,
	o => \position3_out[4]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\W~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \process_0~2_combout\,
	devoe => ww_devoe,
	o => \W~output_o\);

-- Location: IOIBUF_X20_Y0_N1
\signal_entree[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(0),
	o => \signal_entree[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\signal_entree[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(2),
	o => \signal_entree[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\signal_entree[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(3),
	o => \signal_entree[3]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\signal_entree[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(1),
	o => \signal_entree[1]~input_o\);

-- Location: LCCOMB_X11_Y3_N12
\process_0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\signal_entree[0]~input_o\) # ((\signal_entree[2]~input_o\) # ((\signal_entree[3]~input_o\) # (\signal_entree[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[0]~input_o\,
	datab => \signal_entree[2]~input_o\,
	datac => \signal_entree[3]~input_o\,
	datad => \signal_entree[1]~input_o\,
	combout => \process_0~0_combout\);

-- Location: IOIBUF_X14_Y0_N8
\signal_entree[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(7),
	o => \signal_entree[7]~input_o\);

-- Location: IOIBUF_X12_Y0_N8
\signal_entree[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(4),
	o => \signal_entree[4]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\signal_entree[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(5),
	o => \signal_entree[5]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\signal_entree[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(6),
	o => \signal_entree[6]~input_o\);

-- Location: LCCOMB_X11_Y3_N22
\process_0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\signal_entree[7]~input_o\) # ((\signal_entree[4]~input_o\) # ((\signal_entree[5]~input_o\) # (\signal_entree[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[7]~input_o\,
	datab => \signal_entree[4]~input_o\,
	datac => \signal_entree[5]~input_o\,
	datad => \signal_entree[6]~input_o\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X11_Y3_N10
\process_0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (\process_0~0_combout\) # (\process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datac => \process_0~1_combout\,
	combout => \process_0~2_combout\);

-- Location: IOIBUF_X12_Y31_N8
\position1_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position1_in(3),
	o => \position1_in[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\position1_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position1_in(0),
	o => \position1_in[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\position1_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position1_in(2),
	o => \position1_in[2]~input_o\);

-- Location: IOIBUF_X33_Y14_N1
\position1_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position1_in(1),
	o => \position1_in[1]~input_o\);

-- Location: LCCOMB_X11_Y3_N18
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ((\position1_in[0]~input_o\) # ((\position1_in[2]~input_o\) # (!\position1_in[1]~input_o\))) # (!\position1_in[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \position1_in[3]~input_o\,
	datab => \position1_in[0]~input_o\,
	datac => \position1_in[2]~input_o\,
	datad => \position1_in[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X20_Y0_N8
\position1_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position1_in(4),
	o => \position1_in[4]~input_o\);

-- Location: LCCOMB_X11_Y3_N24
\position1_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \position1_out~0_combout\ = (\process_0~1_combout\ & ((\Equal0~0_combout\) # ((!\position1_in[4]~input_o\)))) # (!\process_0~1_combout\ & (\process_0~0_combout\ & ((\Equal0~0_combout\) # (!\position1_in[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \position1_in[4]~input_o\,
	datad => \process_0~0_combout\,
	combout => \position1_out~0_combout\);

-- Location: LCCOMB_X11_Y3_N0
\Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \position1_in[0]~input_o\ $ (VCC)
-- \Add2~1\ = CARRY(\position1_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \position1_in[0]~input_o\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X11_Y3_N20
\position1_out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \position1_out~1_combout\ = (\process_0~2_combout\ & (\position1_out~0_combout\ & (\Add2~0_combout\))) # (!\process_0~2_combout\ & ((\position1_in[0]~input_o\) # ((\position1_out~0_combout\ & \Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => \position1_out~0_combout\,
	datac => \Add2~0_combout\,
	datad => \position1_in[0]~input_o\,
	combout => \position1_out~1_combout\);

-- Location: LCCOMB_X11_Y3_N2
\Add2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\position1_in[1]~input_o\ & (!\Add2~1\)) # (!\position1_in[1]~input_o\ & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!\position1_in[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \position1_in[1]~input_o\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X11_Y3_N14
\position1_out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \position1_out~2_combout\ = (\process_0~2_combout\ & (\position1_out~0_combout\ & (\Add2~2_combout\))) # (!\process_0~2_combout\ & ((\position1_in[1]~input_o\) # ((\position1_out~0_combout\ & \Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => \position1_out~0_combout\,
	datac => \Add2~2_combout\,
	datad => \position1_in[1]~input_o\,
	combout => \position1_out~2_combout\);

-- Location: LCCOMB_X11_Y3_N4
\Add2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\position1_in[2]~input_o\ & (\Add2~3\ $ (GND))) # (!\position1_in[2]~input_o\ & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((\position1_in[2]~input_o\ & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \position1_in[2]~input_o\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X11_Y3_N16
\position1_out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \position1_out~3_combout\ = (\process_0~0_combout\ & (((\Add2~4_combout\)))) # (!\process_0~0_combout\ & ((\process_0~1_combout\ & ((\Add2~4_combout\))) # (!\process_0~1_combout\ & (\position1_in[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \position1_in[2]~input_o\,
	datac => \process_0~1_combout\,
	datad => \Add2~4_combout\,
	combout => \position1_out~3_combout\);

-- Location: LCCOMB_X11_Y3_N6
\Add2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\position1_in[3]~input_o\ & (!\Add2~5\)) # (!\position1_in[3]~input_o\ & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!\position1_in[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \position1_in[3]~input_o\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X11_Y3_N26
\position1_out~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \position1_out~4_combout\ = (\process_0~2_combout\ & (\position1_out~0_combout\ & (\Add2~6_combout\))) # (!\process_0~2_combout\ & ((\position1_in[3]~input_o\) # ((\position1_out~0_combout\ & \Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => \position1_out~0_combout\,
	datac => \Add2~6_combout\,
	datad => \position1_in[3]~input_o\,
	combout => \position1_out~4_combout\);

-- Location: LCCOMB_X11_Y3_N8
\Add2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = \position1_in[4]~input_o\ $ (!\Add2~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \position1_in[4]~input_o\,
	cin => \Add2~7\,
	combout => \Add2~8_combout\);

-- Location: LCCOMB_X11_Y3_N28
\position1_out~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \position1_out~5_combout\ = (\process_0~2_combout\ & (\Add2~8_combout\ & ((\Equal0~0_combout\) # (!\position1_in[4]~input_o\)))) # (!\process_0~2_combout\ & (\position1_in[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \position1_in[4]~input_o\,
	datab => \Equal0~0_combout\,
	datac => \Add2~8_combout\,
	datad => \process_0~2_combout\,
	combout => \position1_out~5_combout\);

-- Location: IOIBUF_X26_Y31_N1
\position2_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position2_in(0),
	o => \position2_in[0]~input_o\);

-- Location: LCCOMB_X29_Y27_N6
\Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \position2_in[0]~input_o\ $ (VCC)
-- \Add1~1\ = CARRY(\position2_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \position2_in[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X33_Y24_N1
\position2_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position2_in(3),
	o => \position2_in[3]~input_o\);

-- Location: IOIBUF_X14_Y31_N8
\position2_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position2_in(2),
	o => \position2_in[2]~input_o\);

-- Location: IOIBUF_X33_Y28_N1
\position2_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position2_in(1),
	o => \position2_in[1]~input_o\);

-- Location: LCCOMB_X29_Y27_N16
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ((\position2_in[0]~input_o\) # ((\position2_in[2]~input_o\) # (!\position2_in[1]~input_o\))) # (!\position2_in[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \position2_in[3]~input_o\,
	datab => \position2_in[0]~input_o\,
	datac => \position2_in[2]~input_o\,
	datad => \position2_in[1]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X33_Y25_N1
\position2_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position2_in(4),
	o => \position2_in[4]~input_o\);

-- Location: LCCOMB_X29_Y27_N26
\Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\Equal1~0_combout\) # (!\position2_in[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datad => \position2_in[4]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X11_Y3_N30
\position2_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \position2_out~0_combout\ = (!\Equal0~0_combout\ & (\position1_in[4]~input_o\ & ((\process_0~1_combout\) # (\process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \position1_in[4]~input_o\,
	datad => \process_0~0_combout\,
	combout => \position2_out~0_combout\);

-- Location: LCCOMB_X29_Y27_N4
\position2_out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \position2_out~1_combout\ = (\position2_out~0_combout\ & (\Add1~0_combout\ & ((\Equal1~1_combout\)))) # (!\position2_out~0_combout\ & (((\position2_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \position2_in[0]~input_o\,
	datac => \Equal1~1_combout\,
	datad => \position2_out~0_combout\,
	combout => \position2_out~1_combout\);

-- Location: LCCOMB_X29_Y27_N8
\Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\position2_in[1]~input_o\ & (!\Add1~1\)) # (!\position2_in[1]~input_o\ & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!\position2_in[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \position2_in[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X29_Y27_N0
\position2_out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \position2_out~2_combout\ = (\position2_out~0_combout\ & (\Equal1~1_combout\ & (\Add1~2_combout\))) # (!\position2_out~0_combout\ & (((\position2_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \position2_out~0_combout\,
	datac => \Add1~2_combout\,
	datad => \position2_in[1]~input_o\,
	combout => \position2_out~2_combout\);

-- Location: LCCOMB_X29_Y27_N10
\Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\position2_in[2]~input_o\ & (\Add1~3\ $ (GND))) # (!\position2_in[2]~input_o\ & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((\position2_in[2]~input_o\ & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \position2_in[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X29_Y27_N2
\position2_out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \position2_out~3_combout\ = (\position2_out~0_combout\ & ((\Add1~4_combout\))) # (!\position2_out~0_combout\ & (\position2_in[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \position2_out~0_combout\,
	datac => \position2_in[2]~input_o\,
	datad => \Add1~4_combout\,
	combout => \position2_out~3_combout\);

-- Location: LCCOMB_X29_Y27_N12
\Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\position2_in[3]~input_o\ & (!\Add1~5\)) # (!\position2_in[3]~input_o\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\position2_in[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \position2_in[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X29_Y27_N28
\position2_out~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \position2_out~4_combout\ = (\position2_out~0_combout\ & (\Add1~6_combout\ & (\Equal1~1_combout\))) # (!\position2_out~0_combout\ & (((\position2_in[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \position2_out~0_combout\,
	datac => \Equal1~1_combout\,
	datad => \position2_in[3]~input_o\,
	combout => \position2_out~4_combout\);

-- Location: LCCOMB_X29_Y27_N14
\Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = \Add1~7\ $ (!\position2_in[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \position2_in[4]~input_o\,
	cin => \Add1~7\,
	combout => \Add1~8_combout\);

-- Location: LCCOMB_X29_Y27_N22
\position2_out~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \position2_out~5_combout\ = (\position2_out~0_combout\ & (\Add1~8_combout\ & ((\Equal1~0_combout\) # (!\position2_in[4]~input_o\)))) # (!\position2_out~0_combout\ & (((\position2_in[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \position2_out~0_combout\,
	datab => \Equal1~0_combout\,
	datac => \Add1~8_combout\,
	datad => \position2_in[4]~input_o\,
	combout => \position2_out~5_combout\);

-- Location: IOIBUF_X33_Y22_N8
\position3_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position3_in(1),
	o => \position3_in[1]~input_o\);

-- Location: IOIBUF_X33_Y11_N8
\position3_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position3_in(3),
	o => \position3_in[3]~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\position3_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position3_in(0),
	o => \position3_in[0]~input_o\);

-- Location: IOIBUF_X22_Y31_N1
\position3_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position3_in(2),
	o => \position3_in[2]~input_o\);

-- Location: LCCOMB_X29_Y26_N0
\Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\position3_in[1]~input_o\ & (\position3_in[3]~input_o\ & (!\position3_in[0]~input_o\ & !\position3_in[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \position3_in[1]~input_o\,
	datab => \position3_in[3]~input_o\,
	datac => \position3_in[0]~input_o\,
	datad => \position3_in[2]~input_o\,
	combout => \Equal2~0_combout\);

-- Location: IOIBUF_X33_Y15_N1
\position3_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position3_in(4),
	o => \position3_in[4]~input_o\);

-- Location: LCCOMB_X29_Y26_N10
\position3_out~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \position3_out~0_combout\ = (!\Equal1~1_combout\ & (\position2_out~0_combout\ & ((!\position3_in[4]~input_o\) # (!\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal2~0_combout\,
	datac => \position2_out~0_combout\,
	datad => \position3_in[4]~input_o\,
	combout => \position3_out~0_combout\);

-- Location: LCCOMB_X29_Y26_N16
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \position3_in[0]~input_o\ $ (VCC)
-- \Add0~1\ = CARRY(\position3_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \position3_in[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X29_Y27_N24
\position3_out~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \position3_out~1_combout\ = (\Equal1~0_combout\) # ((!\position2_in[4]~input_o\) # (!\position2_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \position2_out~0_combout\,
	datad => \position2_in[4]~input_o\,
	combout => \position3_out~1_combout\);

-- Location: LCCOMB_X29_Y26_N12
\position3_out~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \position3_out~2_combout\ = (\position3_out~0_combout\ & ((\Add0~0_combout\) # ((\position3_out~1_combout\ & \position3_in[0]~input_o\)))) # (!\position3_out~0_combout\ & (((\position3_out~1_combout\ & \position3_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \position3_out~0_combout\,
	datab => \Add0~0_combout\,
	datac => \position3_out~1_combout\,
	datad => \position3_in[0]~input_o\,
	combout => \position3_out~2_combout\);

-- Location: LCCOMB_X29_Y26_N18
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\position3_in[1]~input_o\ & (!\Add0~1\)) # (!\position3_in[1]~input_o\ & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!\position3_in[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \position3_in[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X29_Y26_N30
\position3_out~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \position3_out~3_combout\ = (\position3_out~0_combout\ & ((\Add0~2_combout\) # ((\position3_out~1_combout\ & \position3_in[1]~input_o\)))) # (!\position3_out~0_combout\ & (((\position3_out~1_combout\ & \position3_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \position3_out~0_combout\,
	datab => \Add0~2_combout\,
	datac => \position3_out~1_combout\,
	datad => \position3_in[1]~input_o\,
	combout => \position3_out~3_combout\);

-- Location: LCCOMB_X29_Y26_N20
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\position3_in[2]~input_o\ & (\Add0~3\ $ (GND))) # (!\position3_in[2]~input_o\ & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((\position3_in[2]~input_o\ & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \position3_in[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X29_Y26_N8
\position3_out~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \position3_out~4_combout\ = (\Equal1~1_combout\ & (\position3_in[2]~input_o\)) # (!\Equal1~1_combout\ & ((\position2_out~0_combout\ & ((\Add0~4_combout\))) # (!\position2_out~0_combout\ & (\position3_in[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \position3_in[2]~input_o\,
	datac => \position2_out~0_combout\,
	datad => \Add0~4_combout\,
	combout => \position3_out~4_combout\);

-- Location: LCCOMB_X29_Y26_N22
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\position3_in[3]~input_o\ & (!\Add0~5\)) # (!\position3_in[3]~input_o\ & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!\position3_in[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \position3_in[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X29_Y26_N2
\position3_out~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \position3_out~5_combout\ = (\Add0~6_combout\ & ((\position3_out~0_combout\) # ((\position3_in[3]~input_o\ & \position3_out~1_combout\)))) # (!\Add0~6_combout\ & (\position3_in[3]~input_o\ & (\position3_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \position3_in[3]~input_o\,
	datac => \position3_out~1_combout\,
	datad => \position3_out~0_combout\,
	combout => \position3_out~5_combout\);

-- Location: LCCOMB_X29_Y26_N24
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \Add0~7\ $ (!\position3_in[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \position3_in[4]~input_o\,
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X29_Y26_N28
\position3_out~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \position3_out~6_combout\ = (\position3_out~1_combout\ & (\position3_in[4]~input_o\)) # (!\position3_out~1_combout\ & (\Add0~8_combout\ & ((!\Equal2~0_combout\) # (!\position3_in[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \position3_in[4]~input_o\,
	datab => \Add0~8_combout\,
	datac => \position3_out~1_combout\,
	datad => \Equal2~0_combout\,
	combout => \position3_out~6_combout\);

ww_position1_out(0) <= \position1_out[0]~output_o\;

ww_position1_out(1) <= \position1_out[1]~output_o\;

ww_position1_out(2) <= \position1_out[2]~output_o\;

ww_position1_out(3) <= \position1_out[3]~output_o\;

ww_position1_out(4) <= \position1_out[4]~output_o\;

ww_position2_out(0) <= \position2_out[0]~output_o\;

ww_position2_out(1) <= \position2_out[1]~output_o\;

ww_position2_out(2) <= \position2_out[2]~output_o\;

ww_position2_out(3) <= \position2_out[3]~output_o\;

ww_position2_out(4) <= \position2_out[4]~output_o\;

ww_position3_out(0) <= \position3_out[0]~output_o\;

ww_position3_out(1) <= \position3_out[1]~output_o\;

ww_position3_out(2) <= \position3_out[2]~output_o\;

ww_position3_out(3) <= \position3_out[3]~output_o\;

ww_position3_out(4) <= \position3_out[4]~output_o\;

ww_W <= \W~output_o\;
END structure;


