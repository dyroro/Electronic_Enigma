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

-- DATE "05/06/2024 23:27:45"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	incri01 IS
    PORT (
	di : IN std_logic;
	clock : IN std_logic;
	input_vector : IN std_logic_vector(7 DOWNTO 0);
	input_int_1 : IN STD.STANDARD.integer range 0 TO 31;
	input_int_2 : IN STD.STANDARD.integer range 0 TO 31;
	input_int_3 : IN STD.STANDARD.integer range 0 TO 31;
	output_int_1 : BUFFER STD.STANDARD.integer range 0 TO 31;
	output_int_2 : BUFFER STD.STANDARD.integer range 0 TO 31;
	output_int_3 : BUFFER STD.STANDARD.integer range 0 TO 31
	);
END incri01;

-- Design Ports Information
-- output_int_1[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_int_1[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_int_1[2]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_int_1[3]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_int_1[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_int_2[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_int_2[1]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_int_2[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_int_2[3]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_int_2[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_int_3[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_int_3[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_int_3[2]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_int_3[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_int_3[4]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[1]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[4]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[5]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[6]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[7]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_int_1[4]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- di	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_int_1[3]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_int_1[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_int_1[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_int_1[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_int_2[0]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_int_2[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_int_2[1]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_int_2[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_int_2[3]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_int_3[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_int_3[2]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_int_3[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_int_3[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_int_3[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF incri01 IS
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
SIGNAL ww_input_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_input_int_1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_input_int_2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_input_int_3 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_output_int_1 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_output_int_2 : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_output_int_3 : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output_int_1[0]~output_o\ : std_logic;
SIGNAL \output_int_1[1]~output_o\ : std_logic;
SIGNAL \output_int_1[2]~output_o\ : std_logic;
SIGNAL \output_int_1[3]~output_o\ : std_logic;
SIGNAL \output_int_1[4]~output_o\ : std_logic;
SIGNAL \output_int_2[0]~output_o\ : std_logic;
SIGNAL \output_int_2[1]~output_o\ : std_logic;
SIGNAL \output_int_2[2]~output_o\ : std_logic;
SIGNAL \output_int_2[3]~output_o\ : std_logic;
SIGNAL \output_int_2[4]~output_o\ : std_logic;
SIGNAL \output_int_3[0]~output_o\ : std_logic;
SIGNAL \output_int_3[1]~output_o\ : std_logic;
SIGNAL \output_int_3[2]~output_o\ : std_logic;
SIGNAL \output_int_3[3]~output_o\ : std_logic;
SIGNAL \output_int_3[4]~output_o\ : std_logic;
SIGNAL \input_vector[5]~input_o\ : std_logic;
SIGNAL \input_vector[7]~input_o\ : std_logic;
SIGNAL \input_vector[6]~input_o\ : std_logic;
SIGNAL \input_vector[4]~input_o\ : std_logic;
SIGNAL \op1|W~1_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \input_int_1[0]~input_o\ : std_logic;
SIGNAL \di~input_o\ : std_logic;
SIGNAL \RAM_21|bit1|pass2|A~0_combout\ : std_logic;
SIGNAL \input_vector[1]~input_o\ : std_logic;
SIGNAL \input_vector[2]~input_o\ : std_logic;
SIGNAL \input_vector[0]~input_o\ : std_logic;
SIGNAL \input_vector[3]~input_o\ : std_logic;
SIGNAL \op1|W~0_combout\ : std_logic;
SIGNAL \RAM_21|bit5|comb~0_combout\ : std_logic;
SIGNAL \RAM_21|bit1|pass2|U1|q~q\ : std_logic;
SIGNAL \RAM_21|bit1|pass2|DOUT~combout\ : std_logic;
SIGNAL \RAM_11|bit5|comb~0_combout\ : std_logic;
SIGNAL \RAM_11|bit1|pass2|U1|q~q\ : std_logic;
SIGNAL \op1|W~combout\ : std_logic;
SIGNAL \op1|Add2~0_combout\ : std_logic;
SIGNAL \input_int_1[3]~input_o\ : std_logic;
SIGNAL \input_int_1[2]~input_o\ : std_logic;
SIGNAL \input_int_1[1]~input_o\ : std_logic;
SIGNAL \op1|Add2~1\ : std_logic;
SIGNAL \op1|Add2~2_combout\ : std_logic;
SIGNAL \RAM_21|bit2|pass2|A~0_combout\ : std_logic;
SIGNAL \RAM_21|bit2|pass2|U1|q~q\ : std_logic;
SIGNAL \RAM_21|bit2|pass2|DOUT~combout\ : std_logic;
SIGNAL \RAM_11|bit2|pass2|U1|q~q\ : std_logic;
SIGNAL \op1|Add2~3\ : std_logic;
SIGNAL \op1|Add2~4_combout\ : std_logic;
SIGNAL \RAM_21|bit3|pass2|A~0_combout\ : std_logic;
SIGNAL \RAM_21|bit3|pass2|U1|q~q\ : std_logic;
SIGNAL \RAM_21|bit3|pass2|DOUT~combout\ : std_logic;
SIGNAL \RAM_11|bit3|pass2|U1|q~q\ : std_logic;
SIGNAL \op1|Add2~5\ : std_logic;
SIGNAL \op1|Add2~6_combout\ : std_logic;
SIGNAL \RAM_21|bit4|pass2|A~0_combout\ : std_logic;
SIGNAL \RAM_21|bit4|pass2|U1|q~q\ : std_logic;
SIGNAL \RAM_21|bit4|pass2|DOUT~combout\ : std_logic;
SIGNAL \RAM_11|bit4|pass2|U1|q~q\ : std_logic;
SIGNAL \input_int_1[4]~input_o\ : std_logic;
SIGNAL \op1|Add2~7\ : std_logic;
SIGNAL \op1|Add2~8_combout\ : std_logic;
SIGNAL \RAM_21|bit5|pass2|A~0_combout\ : std_logic;
SIGNAL \RAM_21|bit5|pass2|U1|q~q\ : std_logic;
SIGNAL \RAM_21|bit5|pass2|DOUT~combout\ : std_logic;
SIGNAL \RAM_11|bit5|pass2|U1|q~q\ : std_logic;
SIGNAL \op1|Equal0~0_combout\ : std_logic;
SIGNAL \op1|Equal0~1_combout\ : std_logic;
SIGNAL \op1|position1_out[0]~5_combout\ : std_logic;
SIGNAL \op1|position1_out[1]~2_combout\ : std_logic;
SIGNAL \op1|position1_out[3]~3_combout\ : std_logic;
SIGNAL \op1|position1_out[4]~4_combout\ : std_logic;
SIGNAL \input_int_2[0]~input_o\ : std_logic;
SIGNAL \RAM_22|bit1|pass2|U1|q~q\ : std_logic;
SIGNAL \RAM_22|bit1|pass2|DOUT~combout\ : std_logic;
SIGNAL \RAM_12|bit1|pass2|U1|q~q\ : std_logic;
SIGNAL \RAM_12|bit1|pass2|DOUT~combout\ : std_logic;
SIGNAL \RAM_12|bit4|pass2|DOUT~combout\ : std_logic;
SIGNAL \RAM_12|bit3|pass2|DOUT~combout\ : std_logic;
SIGNAL \RAM_12|bit2|pass2|DOUT~0_combout\ : std_logic;
SIGNAL \op1|Add1~1\ : std_logic;
SIGNAL \op1|Add1~2_combout\ : std_logic;
SIGNAL \op1|position2_out[1]~1_combout\ : std_logic;
SIGNAL \RAM_22|bit2|pass2|U1|q~0_combout\ : std_logic;
SIGNAL \input_int_2[1]~input_o\ : std_logic;
SIGNAL \RAM_22|bit2|pass2|U1|q~q\ : std_logic;
SIGNAL \RAM_22|bit2|pass2|DOUT~combout\ : std_logic;
SIGNAL \RAM_12|bit2|pass2|U1|q~q\ : std_logic;
SIGNAL \op1|Add1~3\ : std_logic;
SIGNAL \op1|Add1~4_combout\ : std_logic;
SIGNAL \RAM_22|bit3|pass2|U1|q~0_combout\ : std_logic;
SIGNAL \input_int_2[2]~input_o\ : std_logic;
SIGNAL \RAM_22|bit3|pass2|U1|q~q\ : std_logic;
SIGNAL \RAM_22|bit3|pass2|DOUT~combout\ : std_logic;
SIGNAL \RAM_12|bit3|pass2|U1|q~q\ : std_logic;
SIGNAL \op1|Add1~5\ : std_logic;
SIGNAL \op1|Add1~6_combout\ : std_logic;
SIGNAL \op1|position2_out[3]~2_combout\ : std_logic;
SIGNAL \RAM_22|bit4|pass2|U1|q~0_combout\ : std_logic;
SIGNAL \input_int_2[3]~input_o\ : std_logic;
SIGNAL \RAM_22|bit4|pass2|U1|q~q\ : std_logic;
SIGNAL \RAM_22|bit4|pass2|DOUT~combout\ : std_logic;
SIGNAL \RAM_12|bit4|pass2|U1|q~q\ : std_logic;
SIGNAL \RAM_22|bit5|pass2|U1|q~1_combout\ : std_logic;
SIGNAL \op1|Add1~7\ : std_logic;
SIGNAL \op1|Add1~8_combout\ : std_logic;
SIGNAL \RAM_22|bit5|pass2|U1|q~0_combout\ : std_logic;
SIGNAL \RAM_22|bit5|pass2|U1|q~feeder_combout\ : std_logic;
SIGNAL \input_int_2[4]~input_o\ : std_logic;
SIGNAL \RAM_22|bit5|pass2|U1|q~q\ : std_logic;
SIGNAL \RAM_22|bit5|pass2|DOUT~combout\ : std_logic;
SIGNAL \RAM_12|bit5|pass2|U1|q~q\ : std_logic;
SIGNAL \op1|Equal1~0_combout\ : std_logic;
SIGNAL \op1|Equal1~1_combout\ : std_logic;
SIGNAL \op1|Add1~0_combout\ : std_logic;
SIGNAL \op1|position2_out[0]~0_combout\ : std_logic;
SIGNAL \RAM_22|bit1|pass2|U1|q~0_combout\ : std_logic;
SIGNAL \input_int_3[0]~input_o\ : std_logic;
SIGNAL \RAM_23|bit1|pass2|U1|q~q\ : std_logic;
SIGNAL \RAM_23|bit1|pass2|DOUT~combout\ : std_logic;
SIGNAL \RAM_13|bit1|pass2|U1|q~q\ : std_logic;
SIGNAL \RAM_13|bit1|pass2|DOUT~combout\ : std_logic;
SIGNAL \op1|position3_out[0]~4_combout\ : std_logic;
SIGNAL \op1|Add0~0_combout\ : std_logic;
SIGNAL \RAM_23|bit4|pass2|U1|q~1_combout\ : std_logic;
SIGNAL \RAM_13|bit2|pass2|DOUT~combout\ : std_logic;
SIGNAL \op1|Add0~1\ : std_logic;
SIGNAL \op1|Add0~2_combout\ : std_logic;
SIGNAL \op1|position3_out[1]~3_combout\ : std_logic;
SIGNAL \RAM_23|bit2|pass2|U1|q~0_combout\ : std_logic;
SIGNAL \input_int_3[1]~input_o\ : std_logic;
SIGNAL \RAM_23|bit2|pass2|U1|q~q\ : std_logic;
SIGNAL \RAM_23|bit2|pass2|DOUT~combout\ : std_logic;
SIGNAL \RAM_13|bit2|pass2|U1|q~q\ : std_logic;
SIGNAL \op1|Add0~3\ : std_logic;
SIGNAL \op1|Add0~4_combout\ : std_logic;
SIGNAL \RAM_13|bit3|pass2|DOUT~combout\ : std_logic;
SIGNAL \RAM_23|bit3|pass2|U1|q~0_combout\ : std_logic;
SIGNAL \input_int_3[2]~input_o\ : std_logic;
SIGNAL \RAM_23|bit3|pass2|U1|q~q\ : std_logic;
SIGNAL \RAM_23|bit3|pass2|DOUT~combout\ : std_logic;
SIGNAL \RAM_13|bit3|pass2|U1|q~q\ : std_logic;
SIGNAL \op1|Add0~5\ : std_logic;
SIGNAL \op1|Add0~6_combout\ : std_logic;
SIGNAL \RAM_23|bit4|pass2|U1|q~0_combout\ : std_logic;
SIGNAL \RAM_23|bit4|pass2|U1|q~feeder_combout\ : std_logic;
SIGNAL \input_int_3[3]~input_o\ : std_logic;
SIGNAL \RAM_23|bit4|pass2|U1|q~q\ : std_logic;
SIGNAL \RAM_23|bit4|pass2|DOUT~combout\ : std_logic;
SIGNAL \RAM_13|bit4|pass2|U1|q~q\ : std_logic;
SIGNAL \op1|Add0~7\ : std_logic;
SIGNAL \op1|Add0~8_combout\ : std_logic;
SIGNAL \RAM_23|bit5|pass2|U1|q~0_combout\ : std_logic;
SIGNAL \RAM_23|bit5|pass2|U1|q~feeder_combout\ : std_logic;
SIGNAL \input_int_3[4]~input_o\ : std_logic;
SIGNAL \RAM_23|bit5|pass2|U1|q~q\ : std_logic;
SIGNAL \RAM_23|bit5|pass2|DOUT~combout\ : std_logic;
SIGNAL \RAM_13|bit5|pass2|U1|q~q\ : std_logic;
SIGNAL \RAM_13|bit5|pass2|DOUT~0_combout\ : std_logic;
SIGNAL \op1|Equal2~0_combout\ : std_logic;
SIGNAL \op1|Equal2~1_combout\ : std_logic;
SIGNAL \op1|position3_out[0]~2_combout\ : std_logic;
SIGNAL \RAM_23|bit1|pass2|U1|q~0_combout\ : std_logic;
SIGNAL \op1|ALT_INV_position1_out[0]~5_combout\ : std_logic;

BEGIN

ww_di <= di;
ww_clock <= clock;
ww_input_vector <= input_vector;
ww_input_int_1 <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(input_int_1, 5);
ww_input_int_2 <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(input_int_2, 5);
ww_input_int_3 <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(input_int_3, 5);
output_int_1 <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_output_int_1));
output_int_2 <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_output_int_2));
output_int_3 <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_output_int_3));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\op1|ALT_INV_position1_out[0]~5_combout\ <= NOT \op1|position1_out[0]~5_combout\;

-- Location: IOOBUF_X33_Y25_N2
\output_int_1[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \op1|ALT_INV_position1_out[0]~5_combout\,
	devoe => ww_devoe,
	o => \output_int_1[0]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\output_int_1[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \op1|position1_out[1]~2_combout\,
	devoe => ww_devoe,
	o => \output_int_1[1]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\output_int_1[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \op1|Add2~4_combout\,
	devoe => ww_devoe,
	o => \output_int_1[2]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\output_int_1[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \op1|position1_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \output_int_1[3]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\output_int_1[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \op1|position1_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \output_int_1[4]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\output_int_2[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_22|bit1|pass2|U1|q~0_combout\,
	devoe => ww_devoe,
	o => \output_int_2[0]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\output_int_2[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_22|bit2|pass2|U1|q~0_combout\,
	devoe => ww_devoe,
	o => \output_int_2[1]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\output_int_2[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_22|bit3|pass2|U1|q~0_combout\,
	devoe => ww_devoe,
	o => \output_int_2[2]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\output_int_2[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_22|bit4|pass2|U1|q~0_combout\,
	devoe => ww_devoe,
	o => \output_int_2[3]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\output_int_2[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_22|bit5|pass2|U1|q~0_combout\,
	devoe => ww_devoe,
	o => \output_int_2[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\output_int_3[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_23|bit1|pass2|U1|q~0_combout\,
	devoe => ww_devoe,
	o => \output_int_3[0]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\output_int_3[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_23|bit2|pass2|U1|q~0_combout\,
	devoe => ww_devoe,
	o => \output_int_3[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\output_int_3[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_23|bit3|pass2|U1|q~0_combout\,
	devoe => ww_devoe,
	o => \output_int_3[2]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\output_int_3[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_23|bit4|pass2|U1|q~0_combout\,
	devoe => ww_devoe,
	o => \output_int_3[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\output_int_3[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM_23|bit5|pass2|U1|q~0_combout\,
	devoe => ww_devoe,
	o => \output_int_3[4]~output_o\);

-- Location: IOIBUF_X31_Y0_N8
\input_vector[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(5),
	o => \input_vector[5]~input_o\);

-- Location: IOIBUF_X33_Y10_N1
\input_vector[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(7),
	o => \input_vector[7]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\input_vector[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(6),
	o => \input_vector[6]~input_o\);

-- Location: IOIBUF_X33_Y10_N8
\input_vector[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(4),
	o => \input_vector[4]~input_o\);

-- Location: LCCOMB_X31_Y10_N16
\op1|W~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|W~1_combout\ = (\input_vector[5]~input_o\) # ((\input_vector[7]~input_o\) # ((\input_vector[6]~input_o\) # (\input_vector[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[5]~input_o\,
	datab => \input_vector[7]~input_o\,
	datac => \input_vector[6]~input_o\,
	datad => \input_vector[4]~input_o\,
	combout => \op1|W~1_combout\);

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

-- Location: IOIBUF_X33_Y14_N8
\input_int_1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_int_1(0),
	o => \input_int_1[0]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\di~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_di,
	o => \di~input_o\);

-- Location: LCCOMB_X25_Y16_N20
\RAM_21|bit1|pass2|A~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_21|bit1|pass2|A~0_combout\ = (\di~input_o\ & (\input_int_1[0]~input_o\)) # (!\di~input_o\ & ((!\op1|position1_out[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_int_1[0]~input_o\,
	datab => \di~input_o\,
	datad => \op1|position1_out[0]~5_combout\,
	combout => \RAM_21|bit1|pass2|A~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\input_vector[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(1),
	o => \input_vector[1]~input_o\);

-- Location: IOIBUF_X26_Y31_N8
\input_vector[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(2),
	o => \input_vector[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\input_vector[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(0),
	o => \input_vector[0]~input_o\);

-- Location: IOIBUF_X33_Y28_N1
\input_vector[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(3),
	o => \input_vector[3]~input_o\);

-- Location: LCCOMB_X26_Y16_N16
\op1|W~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|W~0_combout\ = (\input_vector[1]~input_o\) # ((\input_vector[2]~input_o\) # ((\input_vector[0]~input_o\) # (\input_vector[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[1]~input_o\,
	datab => \input_vector[2]~input_o\,
	datac => \input_vector[0]~input_o\,
	datad => \input_vector[3]~input_o\,
	combout => \op1|W~0_combout\);

-- Location: LCCOMB_X26_Y16_N30
\RAM_21|bit5|comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_21|bit5|comb~0_combout\ = (\op1|W~1_combout\) # ((\di~input_o\) # (\op1|W~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~1_combout\,
	datab => \di~input_o\,
	datac => \op1|W~0_combout\,
	combout => \RAM_21|bit5|comb~0_combout\);

-- Location: FF_X25_Y16_N21
\RAM_21|bit1|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_21|bit1|pass2|A~0_combout\,
	ena => \RAM_21|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_21|bit1|pass2|U1|q~q\);

-- Location: LCCOMB_X29_Y16_N30
\RAM_21|bit1|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_21|bit1|pass2|DOUT~combout\ = (\RAM_21|bit1|pass2|U1|q~q\ & (!\op1|W~0_combout\ & !\op1|W~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_21|bit1|pass2|U1|q~q\,
	datab => \op1|W~0_combout\,
	datad => \op1|W~1_combout\,
	combout => \RAM_21|bit1|pass2|DOUT~combout\);

-- Location: LCCOMB_X26_Y16_N24
\RAM_11|bit5|comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_11|bit5|comb~0_combout\ = (\di~input_o\) # ((!\op1|W~1_combout\ & !\op1|W~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~1_combout\,
	datab => \di~input_o\,
	datac => \op1|W~0_combout\,
	combout => \RAM_11|bit5|comb~0_combout\);

-- Location: FF_X29_Y16_N31
\RAM_11|bit1|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_21|bit1|pass2|DOUT~combout\,
	asdata => \input_int_1[0]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_11|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_11|bit1|pass2|U1|q~q\);

-- Location: LCCOMB_X24_Y16_N6
\op1|W\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|W~combout\ = (\op1|W~0_combout\) # (\op1|W~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op1|W~0_combout\,
	datad => \op1|W~1_combout\,
	combout => \op1|W~combout\);

-- Location: LCCOMB_X29_Y16_N6
\op1|Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|Add2~0_combout\ = (((\RAM_11|bit1|pass2|U1|q~q\ & \op1|W~combout\)))
-- \op1|Add2~1\ = CARRY((\RAM_11|bit1|pass2|U1|q~q\ & \op1|W~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_11|bit1|pass2|U1|q~q\,
	datab => \op1|W~combout\,
	datad => VCC,
	combout => \op1|Add2~0_combout\,
	cout => \op1|Add2~1\);

-- Location: IOIBUF_X29_Y0_N8
\input_int_1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_int_1(3),
	o => \input_int_1[3]~input_o\);

-- Location: IOIBUF_X33_Y12_N8
\input_int_1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_int_1(2),
	o => \input_int_1[2]~input_o\);

-- Location: IOIBUF_X29_Y31_N1
\input_int_1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_int_1(1),
	o => \input_int_1[1]~input_o\);

-- Location: LCCOMB_X29_Y16_N8
\op1|Add2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|Add2~2_combout\ = (\op1|Add2~1\ & (((!\RAM_11|bit2|pass2|U1|q~q\)) # (!\op1|W~combout\))) # (!\op1|Add2~1\ & (((\op1|W~combout\ & \RAM_11|bit2|pass2|U1|q~q\)) # (GND)))
-- \op1|Add2~3\ = CARRY(((!\op1|Add2~1\) # (!\RAM_11|bit2|pass2|U1|q~q\)) # (!\op1|W~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~combout\,
	datab => \RAM_11|bit2|pass2|U1|q~q\,
	datad => VCC,
	cin => \op1|Add2~1\,
	combout => \op1|Add2~2_combout\,
	cout => \op1|Add2~3\);

-- Location: LCCOMB_X29_Y16_N24
\RAM_21|bit2|pass2|A~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_21|bit2|pass2|A~0_combout\ = (\di~input_o\ & (((\input_int_1[1]~input_o\)))) # (!\di~input_o\ & (!\op1|Equal0~1_combout\ & ((\op1|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \di~input_o\,
	datab => \op1|Equal0~1_combout\,
	datac => \input_int_1[1]~input_o\,
	datad => \op1|Add2~2_combout\,
	combout => \RAM_21|bit2|pass2|A~0_combout\);

-- Location: FF_X29_Y16_N25
\RAM_21|bit2|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_21|bit2|pass2|A~0_combout\,
	ena => \RAM_21|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_21|bit2|pass2|U1|q~q\);

-- Location: LCCOMB_X29_Y16_N20
\RAM_21|bit2|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_21|bit2|pass2|DOUT~combout\ = (!\op1|W~0_combout\ & (\RAM_21|bit2|pass2|U1|q~q\ & !\op1|W~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~0_combout\,
	datab => \RAM_21|bit2|pass2|U1|q~q\,
	datad => \op1|W~1_combout\,
	combout => \RAM_21|bit2|pass2|DOUT~combout\);

-- Location: FF_X29_Y16_N21
\RAM_11|bit2|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_21|bit2|pass2|DOUT~combout\,
	asdata => \input_int_1[1]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_11|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_11|bit2|pass2|U1|q~q\);

-- Location: LCCOMB_X29_Y16_N10
\op1|Add2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|Add2~4_combout\ = (\op1|Add2~3\ & (\op1|W~combout\ & (\RAM_11|bit3|pass2|U1|q~q\ & VCC))) # (!\op1|Add2~3\ & ((((\op1|W~combout\ & \RAM_11|bit3|pass2|U1|q~q\)))))
-- \op1|Add2~5\ = CARRY((\op1|W~combout\ & (\RAM_11|bit3|pass2|U1|q~q\ & !\op1|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~combout\,
	datab => \RAM_11|bit3|pass2|U1|q~q\,
	datad => VCC,
	cin => \op1|Add2~3\,
	combout => \op1|Add2~4_combout\,
	cout => \op1|Add2~5\);

-- Location: LCCOMB_X29_Y16_N22
\RAM_21|bit3|pass2|A~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_21|bit3|pass2|A~0_combout\ = (\di~input_o\ & (\input_int_1[2]~input_o\)) # (!\di~input_o\ & ((\op1|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \di~input_o\,
	datac => \input_int_1[2]~input_o\,
	datad => \op1|Add2~4_combout\,
	combout => \RAM_21|bit3|pass2|A~0_combout\);

-- Location: FF_X29_Y16_N23
\RAM_21|bit3|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_21|bit3|pass2|A~0_combout\,
	ena => \RAM_21|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_21|bit3|pass2|U1|q~q\);

-- Location: LCCOMB_X29_Y16_N4
\RAM_21|bit3|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_21|bit3|pass2|DOUT~combout\ = (\RAM_21|bit3|pass2|U1|q~q\ & (!\op1|W~0_combout\ & !\op1|W~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_21|bit3|pass2|U1|q~q\,
	datab => \op1|W~0_combout\,
	datad => \op1|W~1_combout\,
	combout => \RAM_21|bit3|pass2|DOUT~combout\);

-- Location: FF_X29_Y16_N5
\RAM_11|bit3|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_21|bit3|pass2|DOUT~combout\,
	asdata => \input_int_1[2]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_11|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_11|bit3|pass2|U1|q~q\);

-- Location: LCCOMB_X29_Y16_N12
\op1|Add2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|Add2~6_combout\ = (\op1|Add2~5\ & (((!\RAM_11|bit4|pass2|U1|q~q\)) # (!\op1|W~combout\))) # (!\op1|Add2~5\ & (((\op1|W~combout\ & \RAM_11|bit4|pass2|U1|q~q\)) # (GND)))
-- \op1|Add2~7\ = CARRY(((!\op1|Add2~5\) # (!\RAM_11|bit4|pass2|U1|q~q\)) # (!\op1|W~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~combout\,
	datab => \RAM_11|bit4|pass2|U1|q~q\,
	datad => VCC,
	cin => \op1|Add2~5\,
	combout => \op1|Add2~6_combout\,
	cout => \op1|Add2~7\);

-- Location: LCCOMB_X29_Y16_N2
\RAM_21|bit4|pass2|A~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_21|bit4|pass2|A~0_combout\ = (\di~input_o\ & (((\input_int_1[3]~input_o\)))) # (!\di~input_o\ & (!\op1|Equal0~1_combout\ & ((\op1|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \di~input_o\,
	datab => \op1|Equal0~1_combout\,
	datac => \input_int_1[3]~input_o\,
	datad => \op1|Add2~6_combout\,
	combout => \RAM_21|bit4|pass2|A~0_combout\);

-- Location: FF_X29_Y16_N3
\RAM_21|bit4|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_21|bit4|pass2|A~0_combout\,
	ena => \RAM_21|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_21|bit4|pass2|U1|q~q\);

-- Location: LCCOMB_X29_Y16_N26
\RAM_21|bit4|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_21|bit4|pass2|DOUT~combout\ = (!\op1|W~0_combout\ & (\RAM_21|bit4|pass2|U1|q~q\ & !\op1|W~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~0_combout\,
	datab => \RAM_21|bit4|pass2|U1|q~q\,
	datad => \op1|W~1_combout\,
	combout => \RAM_21|bit4|pass2|DOUT~combout\);

-- Location: FF_X29_Y16_N27
\RAM_11|bit4|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_21|bit4|pass2|DOUT~combout\,
	asdata => \input_int_1[3]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_11|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_11|bit4|pass2|U1|q~q\);

-- Location: IOIBUF_X33_Y12_N1
\input_int_1[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_int_1(4),
	o => \input_int_1[4]~input_o\);

-- Location: LCCOMB_X29_Y16_N14
\op1|Add2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|Add2~8_combout\ = \op1|Add2~7\ $ (((!\RAM_11|bit5|pass2|U1|q~q\) # (!\op1|W~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~combout\,
	datad => \RAM_11|bit5|pass2|U1|q~q\,
	cin => \op1|Add2~7\,
	combout => \op1|Add2~8_combout\);

-- Location: LCCOMB_X29_Y16_N16
\RAM_21|bit5|pass2|A~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_21|bit5|pass2|A~0_combout\ = (\di~input_o\ & (\input_int_1[4]~input_o\)) # (!\di~input_o\ & (((\op1|Add2~8_combout\ & !\op1|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \di~input_o\,
	datab => \input_int_1[4]~input_o\,
	datac => \op1|Add2~8_combout\,
	datad => \op1|Equal0~1_combout\,
	combout => \RAM_21|bit5|pass2|A~0_combout\);

-- Location: FF_X29_Y16_N17
\RAM_21|bit5|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_21|bit5|pass2|A~0_combout\,
	ena => \RAM_21|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_21|bit5|pass2|U1|q~q\);

-- Location: LCCOMB_X29_Y16_N28
\RAM_21|bit5|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_21|bit5|pass2|DOUT~combout\ = (!\op1|W~0_combout\ & (\RAM_21|bit5|pass2|U1|q~q\ & !\op1|W~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~0_combout\,
	datab => \RAM_21|bit5|pass2|U1|q~q\,
	datad => \op1|W~1_combout\,
	combout => \RAM_21|bit5|pass2|DOUT~combout\);

-- Location: FF_X29_Y16_N29
\RAM_11|bit5|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_21|bit5|pass2|DOUT~combout\,
	asdata => \input_int_1[4]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_11|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_11|bit5|pass2|U1|q~q\);

-- Location: LCCOMB_X29_Y16_N0
\op1|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|Equal0~0_combout\ = (\RAM_11|bit4|pass2|U1|q~q\ & (\RAM_11|bit5|pass2|U1|q~q\ & (!\RAM_11|bit3|pass2|U1|q~q\ & \RAM_11|bit2|pass2|U1|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_11|bit4|pass2|U1|q~q\,
	datab => \RAM_11|bit5|pass2|U1|q~q\,
	datac => \RAM_11|bit3|pass2|U1|q~q\,
	datad => \RAM_11|bit2|pass2|U1|q~q\,
	combout => \op1|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y16_N18
\op1|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|Equal0~1_combout\ = (!\RAM_11|bit1|pass2|U1|q~q\ & (\op1|Equal0~0_combout\ & ((\op1|W~1_combout\) # (\op1|W~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~1_combout\,
	datab => \op1|W~0_combout\,
	datac => \RAM_11|bit1|pass2|U1|q~q\,
	datad => \op1|Equal0~0_combout\,
	combout => \op1|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y16_N18
\op1|position1_out[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|position1_out[0]~5_combout\ = (\op1|W~1_combout\ & (((\op1|Equal0~1_combout\)) # (!\op1|Add2~0_combout\))) # (!\op1|W~1_combout\ & (\op1|W~0_combout\ $ (((\op1|Add2~0_combout\ & !\op1|Equal0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~1_combout\,
	datab => \op1|Add2~0_combout\,
	datac => \op1|W~0_combout\,
	datad => \op1|Equal0~1_combout\,
	combout => \op1|position1_out[0]~5_combout\);

-- Location: LCCOMB_X25_Y16_N14
\op1|position1_out[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|position1_out[1]~2_combout\ = (\op1|Add2~2_combout\ & !\op1|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|Add2~2_combout\,
	datad => \op1|Equal0~1_combout\,
	combout => \op1|position1_out[1]~2_combout\);

-- Location: LCCOMB_X30_Y16_N0
\op1|position1_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|position1_out[3]~3_combout\ = (!\op1|Equal0~1_combout\ & \op1|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op1|Equal0~1_combout\,
	datad => \op1|Add2~6_combout\,
	combout => \op1|position1_out[3]~3_combout\);

-- Location: LCCOMB_X26_Y16_N18
\op1|position1_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|position1_out[4]~4_combout\ = (!\op1|Equal0~1_combout\ & \op1|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|Equal0~1_combout\,
	datad => \op1|Add2~8_combout\,
	combout => \op1|position1_out[4]~4_combout\);

-- Location: IOIBUF_X33_Y22_N1
\input_int_2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_int_2(0),
	o => \input_int_2[0]~input_o\);

-- Location: FF_X26_Y16_N11
\RAM_22|bit1|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_22|bit1|pass2|U1|q~0_combout\,
	asdata => \input_int_2[0]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_21|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_22|bit1|pass2|U1|q~q\);

-- Location: LCCOMB_X27_Y16_N28
\RAM_22|bit1|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_22|bit1|pass2|DOUT~combout\ = (!\op1|W~0_combout\ & (\RAM_22|bit1|pass2|U1|q~q\ & !\op1|W~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~0_combout\,
	datab => \RAM_22|bit1|pass2|U1|q~q\,
	datad => \op1|W~1_combout\,
	combout => \RAM_22|bit1|pass2|DOUT~combout\);

-- Location: FF_X27_Y16_N29
\RAM_12|bit1|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_22|bit1|pass2|DOUT~combout\,
	asdata => \input_int_2[0]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_11|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_12|bit1|pass2|U1|q~q\);

-- Location: LCCOMB_X26_Y16_N12
\RAM_12|bit1|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_12|bit1|pass2|DOUT~combout\ = (\RAM_12|bit1|pass2|U1|q~q\ & ((\op1|W~1_combout\) # (\op1|W~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~1_combout\,
	datac => \op1|W~0_combout\,
	datad => \RAM_12|bit1|pass2|U1|q~q\,
	combout => \RAM_12|bit1|pass2|DOUT~combout\);

-- Location: LCCOMB_X27_Y16_N4
\RAM_12|bit4|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_12|bit4|pass2|DOUT~combout\ = (\RAM_12|bit4|pass2|U1|q~q\ & ((\op1|W~0_combout\) # (\op1|W~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~0_combout\,
	datac => \RAM_12|bit4|pass2|U1|q~q\,
	datad => \op1|W~1_combout\,
	combout => \RAM_12|bit4|pass2|DOUT~combout\);

-- Location: LCCOMB_X27_Y16_N14
\RAM_12|bit3|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_12|bit3|pass2|DOUT~combout\ = (\RAM_12|bit3|pass2|U1|q~q\ & ((\op1|W~0_combout\) # (\op1|W~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_12|bit3|pass2|U1|q~q\,
	datac => \op1|W~0_combout\,
	datad => \op1|W~1_combout\,
	combout => \RAM_12|bit3|pass2|DOUT~combout\);

-- Location: LCCOMB_X26_Y16_N8
\RAM_12|bit2|pass2|DOUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_12|bit2|pass2|DOUT~0_combout\ = (\RAM_12|bit2|pass2|U1|q~q\ & ((\op1|W~1_combout\) # (\op1|W~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~1_combout\,
	datac => \op1|W~0_combout\,
	datad => \RAM_12|bit2|pass2|U1|q~q\,
	combout => \RAM_12|bit2|pass2|DOUT~0_combout\);

-- Location: LCCOMB_X27_Y16_N16
\op1|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|Add1~0_combout\ = (((\op1|W~combout\ & \RAM_12|bit1|pass2|U1|q~q\)))
-- \op1|Add1~1\ = CARRY((\op1|W~combout\ & \RAM_12|bit1|pass2|U1|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~combout\,
	datab => \RAM_12|bit1|pass2|U1|q~q\,
	datad => VCC,
	combout => \op1|Add1~0_combout\,
	cout => \op1|Add1~1\);

-- Location: LCCOMB_X27_Y16_N18
\op1|Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|Add1~2_combout\ = (\op1|Add1~1\ & (((!\op1|W~combout\)) # (!\RAM_12|bit2|pass2|U1|q~q\))) # (!\op1|Add1~1\ & (((\RAM_12|bit2|pass2|U1|q~q\ & \op1|W~combout\)) # (GND)))
-- \op1|Add1~3\ = CARRY(((!\op1|Add1~1\) # (!\op1|W~combout\)) # (!\RAM_12|bit2|pass2|U1|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_12|bit2|pass2|U1|q~q\,
	datab => \op1|W~combout\,
	datad => VCC,
	cin => \op1|Add1~1\,
	combout => \op1|Add1~2_combout\,
	cout => \op1|Add1~3\);

-- Location: LCCOMB_X27_Y16_N6
\op1|position2_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|position2_out[1]~1_combout\ = (\op1|Equal1~1_combout\ & \op1|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|Equal1~1_combout\,
	datad => \op1|Add1~2_combout\,
	combout => \op1|position2_out[1]~1_combout\);

-- Location: LCCOMB_X27_Y16_N12
\RAM_22|bit2|pass2|U1|q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_22|bit2|pass2|U1|q~0_combout\ = (\op1|Equal0~1_combout\ & ((\op1|position2_out[1]~1_combout\))) # (!\op1|Equal0~1_combout\ & (\RAM_12|bit2|pass2|DOUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|Equal0~1_combout\,
	datab => \RAM_12|bit2|pass2|DOUT~0_combout\,
	datad => \op1|position2_out[1]~1_combout\,
	combout => \RAM_22|bit2|pass2|U1|q~0_combout\);

-- Location: IOIBUF_X26_Y0_N8
\input_int_2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_int_2(1),
	o => \input_int_2[1]~input_o\);

-- Location: FF_X27_Y16_N13
\RAM_22|bit2|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_22|bit2|pass2|U1|q~0_combout\,
	asdata => \input_int_2[1]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_21|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_22|bit2|pass2|U1|q~q\);

-- Location: LCCOMB_X26_Y16_N2
\RAM_22|bit2|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_22|bit2|pass2|DOUT~combout\ = (!\op1|W~0_combout\ & (\RAM_22|bit2|pass2|U1|q~q\ & !\op1|W~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~0_combout\,
	datab => \RAM_22|bit2|pass2|U1|q~q\,
	datad => \op1|W~1_combout\,
	combout => \RAM_22|bit2|pass2|DOUT~combout\);

-- Location: FF_X26_Y16_N3
\RAM_12|bit2|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_22|bit2|pass2|DOUT~combout\,
	asdata => \input_int_2[1]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_11|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_12|bit2|pass2|U1|q~q\);

-- Location: LCCOMB_X27_Y16_N20
\op1|Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|Add1~4_combout\ = (\op1|Add1~3\ & (\op1|W~combout\ & (\RAM_12|bit3|pass2|U1|q~q\ & VCC))) # (!\op1|Add1~3\ & ((((\op1|W~combout\ & \RAM_12|bit3|pass2|U1|q~q\)))))
-- \op1|Add1~5\ = CARRY((\op1|W~combout\ & (\RAM_12|bit3|pass2|U1|q~q\ & !\op1|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~combout\,
	datab => \RAM_12|bit3|pass2|U1|q~q\,
	datad => VCC,
	cin => \op1|Add1~3\,
	combout => \op1|Add1~4_combout\,
	cout => \op1|Add1~5\);

-- Location: LCCOMB_X27_Y16_N26
\RAM_22|bit3|pass2|U1|q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_22|bit3|pass2|U1|q~0_combout\ = (\op1|Equal0~1_combout\ & ((\op1|Add1~4_combout\))) # (!\op1|Equal0~1_combout\ & (\RAM_12|bit3|pass2|DOUT~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|Equal0~1_combout\,
	datab => \RAM_12|bit3|pass2|DOUT~combout\,
	datad => \op1|Add1~4_combout\,
	combout => \RAM_22|bit3|pass2|U1|q~0_combout\);

-- Location: IOIBUF_X33_Y14_N1
\input_int_2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_int_2(2),
	o => \input_int_2[2]~input_o\);

-- Location: FF_X27_Y16_N27
\RAM_22|bit3|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_22|bit3|pass2|U1|q~0_combout\,
	asdata => \input_int_2[2]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_21|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_22|bit3|pass2|U1|q~q\);

-- Location: LCCOMB_X26_Y16_N28
\RAM_22|bit3|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_22|bit3|pass2|DOUT~combout\ = (!\op1|W~0_combout\ & (\RAM_22|bit3|pass2|U1|q~q\ & !\op1|W~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~0_combout\,
	datab => \RAM_22|bit3|pass2|U1|q~q\,
	datad => \op1|W~1_combout\,
	combout => \RAM_22|bit3|pass2|DOUT~combout\);

-- Location: FF_X26_Y16_N29
\RAM_12|bit3|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_22|bit3|pass2|DOUT~combout\,
	asdata => \input_int_2[2]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_11|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_12|bit3|pass2|U1|q~q\);

-- Location: LCCOMB_X27_Y16_N22
\op1|Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|Add1~6_combout\ = (\op1|Add1~5\ & (((!\op1|W~combout\)) # (!\RAM_12|bit4|pass2|U1|q~q\))) # (!\op1|Add1~5\ & (((\RAM_12|bit4|pass2|U1|q~q\ & \op1|W~combout\)) # (GND)))
-- \op1|Add1~7\ = CARRY(((!\op1|Add1~5\) # (!\op1|W~combout\)) # (!\RAM_12|bit4|pass2|U1|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_12|bit4|pass2|U1|q~q\,
	datab => \op1|W~combout\,
	datad => VCC,
	cin => \op1|Add1~5\,
	combout => \op1|Add1~6_combout\,
	cout => \op1|Add1~7\);

-- Location: LCCOMB_X27_Y16_N10
\op1|position2_out[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|position2_out[3]~2_combout\ = (\op1|Add1~6_combout\ & \op1|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op1|Add1~6_combout\,
	datad => \op1|Equal1~1_combout\,
	combout => \op1|position2_out[3]~2_combout\);

-- Location: LCCOMB_X27_Y16_N8
\RAM_22|bit4|pass2|U1|q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_22|bit4|pass2|U1|q~0_combout\ = (\op1|Equal0~1_combout\ & ((\op1|position2_out[3]~2_combout\))) # (!\op1|Equal0~1_combout\ & (\RAM_12|bit4|pass2|DOUT~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|Equal0~1_combout\,
	datab => \RAM_12|bit4|pass2|DOUT~combout\,
	datad => \op1|position2_out[3]~2_combout\,
	combout => \RAM_22|bit4|pass2|U1|q~0_combout\);

-- Location: IOIBUF_X33_Y24_N1
\input_int_2[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_int_2(3),
	o => \input_int_2[3]~input_o\);

-- Location: FF_X27_Y16_N9
\RAM_22|bit4|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_22|bit4|pass2|U1|q~0_combout\,
	asdata => \input_int_2[3]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_21|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_22|bit4|pass2|U1|q~q\);

-- Location: LCCOMB_X27_Y16_N30
\RAM_22|bit4|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_22|bit4|pass2|DOUT~combout\ = (!\op1|W~0_combout\ & (\RAM_22|bit4|pass2|U1|q~q\ & !\op1|W~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~0_combout\,
	datab => \RAM_22|bit4|pass2|U1|q~q\,
	datad => \op1|W~1_combout\,
	combout => \RAM_22|bit4|pass2|DOUT~combout\);

-- Location: FF_X27_Y16_N31
\RAM_12|bit4|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_22|bit4|pass2|DOUT~combout\,
	asdata => \input_int_2[3]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_11|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_12|bit4|pass2|U1|q~q\);

-- Location: LCCOMB_X26_Y16_N22
\RAM_22|bit5|pass2|U1|q~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_22|bit5|pass2|U1|q~1_combout\ = (\RAM_12|bit5|pass2|U1|q~q\ & ((\op1|W~0_combout\) # (\op1|W~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~0_combout\,
	datac => \RAM_12|bit5|pass2|U1|q~q\,
	datad => \op1|W~1_combout\,
	combout => \RAM_22|bit5|pass2|U1|q~1_combout\);

-- Location: LCCOMB_X27_Y16_N24
\op1|Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|Add1~8_combout\ = \op1|Add1~7\ $ (((!\op1|W~combout\) # (!\RAM_12|bit5|pass2|U1|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RAM_12|bit5|pass2|U1|q~q\,
	datad => \op1|W~combout\,
	cin => \op1|Add1~7\,
	combout => \op1|Add1~8_combout\);

-- Location: LCCOMB_X27_Y16_N2
\RAM_22|bit5|pass2|U1|q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_22|bit5|pass2|U1|q~0_combout\ = (\op1|Equal0~1_combout\ & (\op1|Equal1~1_combout\ & ((\op1|Add1~8_combout\)))) # (!\op1|Equal0~1_combout\ & (((\RAM_22|bit5|pass2|U1|q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|Equal1~1_combout\,
	datab => \RAM_22|bit5|pass2|U1|q~1_combout\,
	datac => \op1|Equal0~1_combout\,
	datad => \op1|Add1~8_combout\,
	combout => \RAM_22|bit5|pass2|U1|q~0_combout\);

-- Location: LCCOMB_X27_Y16_N0
\RAM_22|bit5|pass2|U1|q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_22|bit5|pass2|U1|q~feeder_combout\ = \RAM_22|bit5|pass2|U1|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RAM_22|bit5|pass2|U1|q~0_combout\,
	combout => \RAM_22|bit5|pass2|U1|q~feeder_combout\);

-- Location: IOIBUF_X33_Y22_N8
\input_int_2[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_int_2(4),
	o => \input_int_2[4]~input_o\);

-- Location: FF_X27_Y16_N1
\RAM_22|bit5|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_22|bit5|pass2|U1|q~feeder_combout\,
	asdata => \input_int_2[4]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_21|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_22|bit5|pass2|U1|q~q\);

-- Location: LCCOMB_X26_Y16_N4
\RAM_22|bit5|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_22|bit5|pass2|DOUT~combout\ = (!\op1|W~0_combout\ & (\RAM_22|bit5|pass2|U1|q~q\ & !\op1|W~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~0_combout\,
	datab => \RAM_22|bit5|pass2|U1|q~q\,
	datad => \op1|W~1_combout\,
	combout => \RAM_22|bit5|pass2|DOUT~combout\);

-- Location: FF_X26_Y16_N5
\RAM_12|bit5|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_22|bit5|pass2|DOUT~combout\,
	asdata => \input_int_2[4]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_11|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_12|bit5|pass2|U1|q~q\);

-- Location: LCCOMB_X26_Y16_N6
\op1|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|Equal1~0_combout\ = (\op1|W~1_combout\ & ((\RAM_12|bit3|pass2|U1|q~q\) # ((\RAM_12|bit1|pass2|U1|q~q\)))) # (!\op1|W~1_combout\ & (\op1|W~0_combout\ & ((\RAM_12|bit3|pass2|U1|q~q\) # (\RAM_12|bit1|pass2|U1|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~1_combout\,
	datab => \RAM_12|bit3|pass2|U1|q~q\,
	datac => \op1|W~0_combout\,
	datad => \RAM_12|bit1|pass2|U1|q~q\,
	combout => \op1|Equal1~0_combout\);

-- Location: LCCOMB_X26_Y16_N14
\op1|Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|Equal1~1_combout\ = (((\op1|Equal1~0_combout\) # (!\RAM_12|bit2|pass2|DOUT~0_combout\)) # (!\RAM_12|bit5|pass2|U1|q~q\)) # (!\RAM_12|bit4|pass2|U1|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_12|bit4|pass2|U1|q~q\,
	datab => \RAM_12|bit5|pass2|U1|q~q\,
	datac => \RAM_12|bit2|pass2|DOUT~0_combout\,
	datad => \op1|Equal1~0_combout\,
	combout => \op1|Equal1~1_combout\);

-- Location: LCCOMB_X26_Y16_N20
\op1|position2_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|position2_out[0]~0_combout\ = (\op1|Equal1~1_combout\ & \op1|Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op1|Equal1~1_combout\,
	datad => \op1|Add1~0_combout\,
	combout => \op1|position2_out[0]~0_combout\);

-- Location: LCCOMB_X26_Y16_N10
\RAM_22|bit1|pass2|U1|q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_22|bit1|pass2|U1|q~0_combout\ = (\op1|Equal0~1_combout\ & ((\op1|position2_out[0]~0_combout\))) # (!\op1|Equal0~1_combout\ & (\RAM_12|bit1|pass2|DOUT~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_12|bit1|pass2|DOUT~combout\,
	datab => \op1|position2_out[0]~0_combout\,
	datad => \op1|Equal0~1_combout\,
	combout => \RAM_22|bit1|pass2|U1|q~0_combout\);

-- Location: IOIBUF_X33_Y15_N8
\input_int_3[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_int_3(0),
	o => \input_int_3[0]~input_o\);

-- Location: FF_X25_Y16_N23
\RAM_23|bit1|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_23|bit1|pass2|U1|q~0_combout\,
	asdata => \input_int_3[0]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_21|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_23|bit1|pass2|U1|q~q\);

-- Location: LCCOMB_X24_Y16_N8
\RAM_23|bit1|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_23|bit1|pass2|DOUT~combout\ = (!\op1|W~1_combout\ & (!\op1|W~0_combout\ & \RAM_23|bit1|pass2|U1|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~1_combout\,
	datab => \op1|W~0_combout\,
	datad => \RAM_23|bit1|pass2|U1|q~q\,
	combout => \RAM_23|bit1|pass2|DOUT~combout\);

-- Location: FF_X24_Y16_N9
\RAM_13|bit1|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_23|bit1|pass2|DOUT~combout\,
	asdata => \input_int_3[0]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_11|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_13|bit1|pass2|U1|q~q\);

-- Location: LCCOMB_X25_Y16_N6
\RAM_13|bit1|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_13|bit1|pass2|DOUT~combout\ = (\RAM_13|bit1|pass2|U1|q~q\ & ((\op1|W~0_combout\) # (\op1|W~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_13|bit1|pass2|U1|q~q\,
	datac => \op1|W~0_combout\,
	datad => \op1|W~1_combout\,
	combout => \RAM_13|bit1|pass2|DOUT~combout\);

-- Location: LCCOMB_X25_Y16_N4
\op1|position3_out[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|position3_out[0]~4_combout\ = (\op1|Equal1~1_combout\) # (((!\op1|W~1_combout\ & !\op1|W~0_combout\)) # (!\op1|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~1_combout\,
	datab => \op1|W~0_combout\,
	datac => \op1|Equal1~1_combout\,
	datad => \op1|Equal0~1_combout\,
	combout => \op1|position3_out[0]~4_combout\);

-- Location: LCCOMB_X24_Y16_N18
\op1|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|Add0~0_combout\ = (((\op1|W~combout\ & \RAM_13|bit1|pass2|U1|q~q\)))
-- \op1|Add0~1\ = CARRY((\op1|W~combout\ & \RAM_13|bit1|pass2|U1|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~combout\,
	datab => \RAM_13|bit1|pass2|U1|q~q\,
	datad => VCC,
	combout => \op1|Add0~0_combout\,
	cout => \op1|Add0~1\);

-- Location: LCCOMB_X24_Y16_N30
\RAM_23|bit4|pass2|U1|q~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_23|bit4|pass2|U1|q~1_combout\ = (\RAM_13|bit4|pass2|U1|q~q\ & ((\op1|W~0_combout\) # (\op1|W~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op1|W~0_combout\,
	datac => \RAM_13|bit4|pass2|U1|q~q\,
	datad => \op1|W~1_combout\,
	combout => \RAM_23|bit4|pass2|U1|q~1_combout\);

-- Location: LCCOMB_X25_Y16_N26
\RAM_13|bit2|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_13|bit2|pass2|DOUT~combout\ = (\RAM_13|bit2|pass2|U1|q~q\ & ((\op1|W~1_combout\) # (\op1|W~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~1_combout\,
	datac => \op1|W~0_combout\,
	datad => \RAM_13|bit2|pass2|U1|q~q\,
	combout => \RAM_13|bit2|pass2|DOUT~combout\);

-- Location: LCCOMB_X24_Y16_N20
\op1|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|Add0~2_combout\ = (\op1|Add0~1\ & (((!\RAM_13|bit2|pass2|U1|q~q\)) # (!\op1|W~combout\))) # (!\op1|Add0~1\ & (((\op1|W~combout\ & \RAM_13|bit2|pass2|U1|q~q\)) # (GND)))
-- \op1|Add0~3\ = CARRY(((!\op1|Add0~1\) # (!\RAM_13|bit2|pass2|U1|q~q\)) # (!\op1|W~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~combout\,
	datab => \RAM_13|bit2|pass2|U1|q~q\,
	datad => VCC,
	cin => \op1|Add0~1\,
	combout => \op1|Add0~2_combout\,
	cout => \op1|Add0~3\);

-- Location: LCCOMB_X25_Y16_N28
\op1|position3_out[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|position3_out[1]~3_combout\ = (!\op1|Equal2~1_combout\ & \op1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|Equal2~1_combout\,
	datad => \op1|Add0~2_combout\,
	combout => \op1|position3_out[1]~3_combout\);

-- Location: LCCOMB_X25_Y16_N8
\RAM_23|bit2|pass2|U1|q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_23|bit2|pass2|U1|q~0_combout\ = (\op1|position3_out[0]~4_combout\ & (\RAM_13|bit2|pass2|DOUT~combout\)) # (!\op1|position3_out[0]~4_combout\ & ((\op1|position3_out[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_13|bit2|pass2|DOUT~combout\,
	datab => \op1|position3_out[0]~4_combout\,
	datad => \op1|position3_out[1]~3_combout\,
	combout => \RAM_23|bit2|pass2|U1|q~0_combout\);

-- Location: IOIBUF_X33_Y16_N22
\input_int_3[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_int_3(1),
	o => \input_int_3[1]~input_o\);

-- Location: FF_X25_Y16_N9
\RAM_23|bit2|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_23|bit2|pass2|U1|q~0_combout\,
	asdata => \input_int_3[1]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_21|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_23|bit2|pass2|U1|q~q\);

-- Location: LCCOMB_X24_Y16_N2
\RAM_23|bit2|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_23|bit2|pass2|DOUT~combout\ = (!\op1|W~1_combout\ & (\RAM_23|bit2|pass2|U1|q~q\ & !\op1|W~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~1_combout\,
	datab => \RAM_23|bit2|pass2|U1|q~q\,
	datad => \op1|W~0_combout\,
	combout => \RAM_23|bit2|pass2|DOUT~combout\);

-- Location: FF_X24_Y16_N3
\RAM_13|bit2|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_23|bit2|pass2|DOUT~combout\,
	asdata => \input_int_3[1]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_11|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_13|bit2|pass2|U1|q~q\);

-- Location: LCCOMB_X24_Y16_N22
\op1|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|Add0~4_combout\ = (\op1|Add0~3\ & (\op1|W~combout\ & (\RAM_13|bit3|pass2|U1|q~q\ & VCC))) # (!\op1|Add0~3\ & ((((\op1|W~combout\ & \RAM_13|bit3|pass2|U1|q~q\)))))
-- \op1|Add0~5\ = CARRY((\op1|W~combout\ & (\RAM_13|bit3|pass2|U1|q~q\ & !\op1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~combout\,
	datab => \RAM_13|bit3|pass2|U1|q~q\,
	datad => VCC,
	cin => \op1|Add0~3\,
	combout => \op1|Add0~4_combout\,
	cout => \op1|Add0~5\);

-- Location: LCCOMB_X24_Y16_N16
\RAM_13|bit3|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_13|bit3|pass2|DOUT~combout\ = (\RAM_13|bit3|pass2|U1|q~q\ & ((\op1|W~0_combout\) # (\op1|W~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op1|W~0_combout\,
	datac => \RAM_13|bit3|pass2|U1|q~q\,
	datad => \op1|W~1_combout\,
	combout => \RAM_13|bit3|pass2|DOUT~combout\);

-- Location: LCCOMB_X24_Y16_N12
\RAM_23|bit3|pass2|U1|q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_23|bit3|pass2|U1|q~0_combout\ = (\op1|position3_out[0]~4_combout\ & ((\RAM_13|bit3|pass2|DOUT~combout\))) # (!\op1|position3_out[0]~4_combout\ & (\op1|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|Add0~4_combout\,
	datab => \RAM_13|bit3|pass2|DOUT~combout\,
	datad => \op1|position3_out[0]~4_combout\,
	combout => \RAM_23|bit3|pass2|U1|q~0_combout\);

-- Location: IOIBUF_X24_Y0_N8
\input_int_3[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_int_3(2),
	o => \input_int_3[2]~input_o\);

-- Location: FF_X24_Y16_N13
\RAM_23|bit3|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_23|bit3|pass2|U1|q~0_combout\,
	asdata => \input_int_3[2]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_21|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_23|bit3|pass2|U1|q~q\);

-- Location: LCCOMB_X24_Y16_N14
\RAM_23|bit3|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_23|bit3|pass2|DOUT~combout\ = (!\op1|W~1_combout\ & (!\op1|W~0_combout\ & \RAM_23|bit3|pass2|U1|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~1_combout\,
	datab => \op1|W~0_combout\,
	datad => \RAM_23|bit3|pass2|U1|q~q\,
	combout => \RAM_23|bit3|pass2|DOUT~combout\);

-- Location: FF_X24_Y16_N15
\RAM_13|bit3|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_23|bit3|pass2|DOUT~combout\,
	asdata => \input_int_3[2]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_11|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_13|bit3|pass2|U1|q~q\);

-- Location: LCCOMB_X24_Y16_N24
\op1|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|Add0~6_combout\ = (\op1|Add0~5\ & (((!\RAM_13|bit4|pass2|U1|q~q\)) # (!\op1|W~combout\))) # (!\op1|Add0~5\ & (((\op1|W~combout\ & \RAM_13|bit4|pass2|U1|q~q\)) # (GND)))
-- \op1|Add0~7\ = CARRY(((!\op1|Add0~5\) # (!\RAM_13|bit4|pass2|U1|q~q\)) # (!\op1|W~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~combout\,
	datab => \RAM_13|bit4|pass2|U1|q~q\,
	datad => VCC,
	cin => \op1|Add0~5\,
	combout => \op1|Add0~6_combout\,
	cout => \op1|Add0~7\);

-- Location: LCCOMB_X24_Y16_N10
\RAM_23|bit4|pass2|U1|q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_23|bit4|pass2|U1|q~0_combout\ = (\op1|position3_out[0]~4_combout\ & (\RAM_23|bit4|pass2|U1|q~1_combout\)) # (!\op1|position3_out[0]~4_combout\ & (((\op1|Add0~6_combout\ & !\op1|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_23|bit4|pass2|U1|q~1_combout\,
	datab => \op1|Add0~6_combout\,
	datac => \op1|Equal2~1_combout\,
	datad => \op1|position3_out[0]~4_combout\,
	combout => \RAM_23|bit4|pass2|U1|q~0_combout\);

-- Location: LCCOMB_X24_Y16_N0
\RAM_23|bit4|pass2|U1|q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_23|bit4|pass2|U1|q~feeder_combout\ = \RAM_23|bit4|pass2|U1|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RAM_23|bit4|pass2|U1|q~0_combout\,
	combout => \RAM_23|bit4|pass2|U1|q~feeder_combout\);

-- Location: IOIBUF_X22_Y31_N8
\input_int_3[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_int_3(3),
	o => \input_int_3[3]~input_o\);

-- Location: FF_X24_Y16_N1
\RAM_23|bit4|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_23|bit4|pass2|U1|q~feeder_combout\,
	asdata => \input_int_3[3]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_21|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_23|bit4|pass2|U1|q~q\);

-- Location: LCCOMB_X24_Y16_N4
\RAM_23|bit4|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_23|bit4|pass2|DOUT~combout\ = (!\op1|W~1_combout\ & (\RAM_23|bit4|pass2|U1|q~q\ & !\op1|W~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~1_combout\,
	datab => \RAM_23|bit4|pass2|U1|q~q\,
	datad => \op1|W~0_combout\,
	combout => \RAM_23|bit4|pass2|DOUT~combout\);

-- Location: FF_X24_Y16_N5
\RAM_13|bit4|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_23|bit4|pass2|DOUT~combout\,
	asdata => \input_int_3[3]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_11|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_13|bit4|pass2|U1|q~q\);

-- Location: LCCOMB_X24_Y16_N26
\op1|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|Add0~8_combout\ = \op1|Add0~7\ $ (((!\RAM_13|bit5|pass2|U1|q~q\) # (!\op1|W~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~combout\,
	datad => \RAM_13|bit5|pass2|U1|q~q\,
	cin => \op1|Add0~7\,
	combout => \op1|Add0~8_combout\);

-- Location: LCCOMB_X25_Y16_N2
\RAM_23|bit5|pass2|U1|q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_23|bit5|pass2|U1|q~0_combout\ = (\op1|position3_out[0]~4_combout\ & (((\RAM_13|bit5|pass2|DOUT~0_combout\)))) # (!\op1|position3_out[0]~4_combout\ & (!\op1|Equal2~1_combout\ & ((\op1|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|Equal2~1_combout\,
	datab => \RAM_13|bit5|pass2|DOUT~0_combout\,
	datac => \op1|Add0~8_combout\,
	datad => \op1|position3_out[0]~4_combout\,
	combout => \RAM_23|bit5|pass2|U1|q~0_combout\);

-- Location: LCCOMB_X25_Y16_N24
\RAM_23|bit5|pass2|U1|q~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_23|bit5|pass2|U1|q~feeder_combout\ = \RAM_23|bit5|pass2|U1|q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RAM_23|bit5|pass2|U1|q~0_combout\,
	combout => \RAM_23|bit5|pass2|U1|q~feeder_combout\);

-- Location: IOIBUF_X29_Y31_N8
\input_int_3[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_int_3(4),
	o => \input_int_3[4]~input_o\);

-- Location: FF_X25_Y16_N25
\RAM_23|bit5|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_23|bit5|pass2|U1|q~feeder_combout\,
	asdata => \input_int_3[4]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_21|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_23|bit5|pass2|U1|q~q\);

-- Location: LCCOMB_X25_Y16_N16
\RAM_23|bit5|pass2|DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_23|bit5|pass2|DOUT~combout\ = (!\op1|W~0_combout\ & (\RAM_23|bit5|pass2|U1|q~q\ & !\op1|W~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~0_combout\,
	datab => \RAM_23|bit5|pass2|U1|q~q\,
	datad => \op1|W~1_combout\,
	combout => \RAM_23|bit5|pass2|DOUT~combout\);

-- Location: FF_X25_Y16_N17
\RAM_13|bit5|pass2|U1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RAM_23|bit5|pass2|DOUT~combout\,
	asdata => \input_int_3[4]~input_o\,
	sload => \di~input_o\,
	ena => \RAM_11|bit5|comb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM_13|bit5|pass2|U1|q~q\);

-- Location: LCCOMB_X25_Y16_N12
\RAM_13|bit5|pass2|DOUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_13|bit5|pass2|DOUT~0_combout\ = (\RAM_13|bit5|pass2|U1|q~q\ & ((\op1|W~1_combout\) # (\op1|W~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~1_combout\,
	datac => \op1|W~0_combout\,
	datad => \RAM_13|bit5|pass2|U1|q~q\,
	combout => \RAM_13|bit5|pass2|DOUT~0_combout\);

-- Location: LCCOMB_X24_Y16_N28
\op1|Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|Equal2~0_combout\ = (\op1|W~1_combout\ & (((!\RAM_13|bit3|pass2|U1|q~q\ & !\RAM_13|bit1|pass2|U1|q~q\)))) # (!\op1|W~1_combout\ & (((!\RAM_13|bit3|pass2|U1|q~q\ & !\RAM_13|bit1|pass2|U1|q~q\)) # (!\op1|W~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op1|W~1_combout\,
	datab => \op1|W~0_combout\,
	datac => \RAM_13|bit3|pass2|U1|q~q\,
	datad => \RAM_13|bit1|pass2|U1|q~q\,
	combout => \op1|Equal2~0_combout\);

-- Location: LCCOMB_X25_Y16_N10
\op1|Equal2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|Equal2~1_combout\ = (\RAM_13|bit5|pass2|DOUT~0_combout\ & (\op1|Equal2~0_combout\ & (\RAM_13|bit4|pass2|U1|q~q\ & \RAM_13|bit2|pass2|U1|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_13|bit5|pass2|DOUT~0_combout\,
	datab => \op1|Equal2~0_combout\,
	datac => \RAM_13|bit4|pass2|U1|q~q\,
	datad => \RAM_13|bit2|pass2|U1|q~q\,
	combout => \op1|Equal2~1_combout\);

-- Location: LCCOMB_X25_Y16_N0
\op1|position3_out[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \op1|position3_out[0]~2_combout\ = (\op1|Add0~0_combout\ & !\op1|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op1|Add0~0_combout\,
	datad => \op1|Equal2~1_combout\,
	combout => \op1|position3_out[0]~2_combout\);

-- Location: LCCOMB_X25_Y16_N22
\RAM_23|bit1|pass2|U1|q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \RAM_23|bit1|pass2|U1|q~0_combout\ = (\op1|position3_out[0]~4_combout\ & (\RAM_13|bit1|pass2|DOUT~combout\)) # (!\op1|position3_out[0]~4_combout\ & ((\op1|position3_out[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_13|bit1|pass2|DOUT~combout\,
	datab => \op1|position3_out[0]~4_combout\,
	datad => \op1|position3_out[0]~2_combout\,
	combout => \RAM_23|bit1|pass2|U1|q~0_combout\);

ww_output_int_1(0) <= \output_int_1[0]~output_o\;

ww_output_int_1(1) <= \output_int_1[1]~output_o\;

ww_output_int_1(2) <= \output_int_1[2]~output_o\;

ww_output_int_1(3) <= \output_int_1[3]~output_o\;

ww_output_int_1(4) <= \output_int_1[4]~output_o\;

ww_output_int_2(0) <= \output_int_2[0]~output_o\;

ww_output_int_2(1) <= \output_int_2[1]~output_o\;

ww_output_int_2(2) <= \output_int_2[2]~output_o\;

ww_output_int_2(3) <= \output_int_2[3]~output_o\;

ww_output_int_2(4) <= \output_int_2[4]~output_o\;

ww_output_int_3(0) <= \output_int_3[0]~output_o\;

ww_output_int_3(1) <= \output_int_3[1]~output_o\;

ww_output_int_3(2) <= \output_int_3[2]~output_o\;

ww_output_int_3(3) <= \output_int_3[3]~output_o\;

ww_output_int_3(4) <= \output_int_3[4]~output_o\;
END structure;


