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

-- DATE "05/06/2024 23:01:15"

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

ENTITY 	second_pass IS
    PORT (
	signal_entree : IN std_logic_vector(7 DOWNTO 0);
	signal_sortie : OUT std_logic_vector(7 DOWNTO 0);
	position_rotor : IN STD.STANDARD.integer range 0 TO 31
	);
END second_pass;

-- Design Ports Information
-- signal_sortie[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_sortie[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_sortie[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_sortie[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_sortie[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_sortie[5]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_sortie[6]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_sortie[7]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[1]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[5]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position_rotor[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position_rotor[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position_rotor[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position_rotor[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position_rotor[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF second_pass IS
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
SIGNAL ww_position_rotor : std_logic_vector(4 DOWNTO 0);
SIGNAL \signal_sortie[0]~output_o\ : std_logic;
SIGNAL \signal_sortie[1]~output_o\ : std_logic;
SIGNAL \signal_sortie[2]~output_o\ : std_logic;
SIGNAL \signal_sortie[3]~output_o\ : std_logic;
SIGNAL \signal_sortie[4]~output_o\ : std_logic;
SIGNAL \signal_sortie[5]~output_o\ : std_logic;
SIGNAL \signal_sortie[6]~output_o\ : std_logic;
SIGNAL \signal_sortie[7]~output_o\ : std_logic;
SIGNAL \signal_entree[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \position_rotor[0]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \signal_entree[7]~input_o\ : std_logic;
SIGNAL \signal_entree[6]~input_o\ : std_logic;
SIGNAL \signal_entree[5]~input_o\ : std_logic;
SIGNAL \signal_entree[4]~input_o\ : std_logic;
SIGNAL \signal_entree[3]~input_o\ : std_logic;
SIGNAL \signal_entree[2]~input_o\ : std_logic;
SIGNAL \signal_entree[1]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \position_rotor[4]~input_o\ : std_logic;
SIGNAL \position_rotor[3]~input_o\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \position_rotor[2]~input_o\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \position_rotor[1]~input_o\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[10]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[10]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[9]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[52]~122_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[52]~123_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~125_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~124_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[50]~126_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[50]~201_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[49]~128_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[49]~127_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~129_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~130_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[65]~238_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[65]~131_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[64]~132_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[64]~239_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[63]~202_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[63]~133_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[62]~134_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[62]~240_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[61]~136_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[61]~135_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~137_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~138_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[78]~139_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[78]~203_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[77]~204_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[77]~140_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[76]~205_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[76]~141_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[75]~206_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[75]~142_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[74]~207_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[74]~143_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[73]~145_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[73]~144_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[72]~147_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[72]~146_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[91]~148_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[91]~208_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[90]~209_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[90]~149_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[89]~150_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[89]~210_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[88]~151_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[88]~211_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[87]~152_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[87]~212_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[86]~241_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[86]~153_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[85]~154_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[85]~155_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[84]~156_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[84]~157_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[104]~213_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[104]~158_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[103]~159_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[103]~214_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[102]~215_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[102]~160_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[101]~216_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[101]~161_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[100]~162_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[100]~217_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[99]~218_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[99]~163_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[98]~219_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[98]~164_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[97]~165_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[97]~166_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[96]~168_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[96]~167_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[117]~220_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[117]~169_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[116]~221_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[116]~170_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[115]~171_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[115]~222_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[114]~172_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[114]~223_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[113]~173_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[113]~224_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[112]~174_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[112]~225_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[111]~226_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[111]~175_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[110]~176_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[110]~242_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[109]~178_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[109]~177_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[108]~180_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[108]~179_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~19\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[130]~227_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[130]~181_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[129]~228_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[129]~182_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[128]~183_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[128]~229_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[127]~230_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[127]~184_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[126]~185_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[126]~231_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[125]~232_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[125]~186_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[124]~187_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[124]~233_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[123]~188_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[123]~234_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[122]~189_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[122]~235_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[121]~191_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[121]~190_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[120]~192_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[120]~193_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~11_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~15_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~17_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~19_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~21_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[132]~197_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[132]~198_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|remainder[0]~3_combout\ : std_logic;
SIGNAL \test_bit~0_combout\ : std_logic;
SIGNAL \test_bit~1_combout\ : std_logic;
SIGNAL \signal_sortie~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \signal_sortie~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[133]~196_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[133]~195_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|remainder[1]~1_combout\ : std_logic;
SIGNAL \signal_rotor.raddr_a[1]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[135]~199_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[135]~236_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[134]~194_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[134]~243_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|remainder[3]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|remainder[2]~0_combout\ : std_logic;
SIGNAL \signal_rotor.raddr_a[3]~5_combout\ : std_logic;
SIGNAL \signal_rotor.raddr_a[2]~4_combout\ : std_logic;
SIGNAL \signal_rotor.raddr_a[4]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[136]~200_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[136]~237_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~8_combout\ : std_logic;
SIGNAL \signal_rotor.raddr_a[4]~0_combout\ : std_logic;
SIGNAL \signal_rotor.raddr_a[4]~2_combout\ : std_logic;
SIGNAL \signal_rotor~8_combout\ : std_logic;
SIGNAL \signal_rotor~20_combout\ : std_logic;
SIGNAL \signal_rotor~9_combout\ : std_logic;
SIGNAL \test_bit~combout\ : std_logic;
SIGNAL \signal_rotor~10_combout\ : std_logic;
SIGNAL \signal_rotor~11_combout\ : std_logic;
SIGNAL \signal_rotor~22_combout\ : std_logic;
SIGNAL \signal_rotor~12_combout\ : std_logic;
SIGNAL \signal_rotor~13_combout\ : std_logic;
SIGNAL \signal_rotor~14_combout\ : std_logic;
SIGNAL \signal_rotor~15_combout\ : std_logic;
SIGNAL \signal_rotor~16_combout\ : std_logic;
SIGNAL \signal_rotor~17_combout\ : std_logic;
SIGNAL \signal_rotor~18_combout\ : std_logic;
SIGNAL \signal_rotor~19_combout\ : std_logic;
SIGNAL \signal_rotor~21_combout\ : std_logic;

BEGIN

ww_signal_entree <= signal_entree;
signal_sortie <= ww_signal_sortie;
ww_position_rotor <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(position_rotor, 5);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X22_Y31_N9
\signal_sortie[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \signal_rotor~20_combout\,
	devoe => ww_devoe,
	o => \signal_sortie[0]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\signal_sortie[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \signal_rotor~11_combout\,
	devoe => ww_devoe,
	o => \signal_sortie[1]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\signal_sortie[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \signal_rotor~12_combout\,
	devoe => ww_devoe,
	o => \signal_sortie[2]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\signal_sortie[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \signal_rotor~15_combout\,
	devoe => ww_devoe,
	o => \signal_sortie[3]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\signal_sortie[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \signal_rotor~18_combout\,
	devoe => ww_devoe,
	o => \signal_sortie[4]~output_o\);

-- Location: IOOBUF_X33_Y10_N9
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

-- Location: IOOBUF_X29_Y31_N2
\signal_sortie[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \signal_rotor~21_combout\,
	devoe => ww_devoe,
	o => \signal_sortie[6]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
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

-- Location: IOIBUF_X16_Y0_N8
\signal_entree[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(0),
	o => \signal_entree[0]~input_o\);

-- Location: LCCOMB_X18_Y27_N0
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \signal_entree[0]~input_o\ $ (VCC)
-- \Add0~1\ = CARRY(\signal_entree[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \signal_entree[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X12_Y31_N1
\position_rotor[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position_rotor(0),
	o => \position_rotor[0]~input_o\);

-- Location: LCCOMB_X19_Y27_N2
\Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\Add0~0_combout\ & ((GND) # (!\position_rotor[0]~input_o\))) # (!\Add0~0_combout\ & (\position_rotor[0]~input_o\ $ (GND)))
-- \Add1~1\ = CARRY((\Add0~0_combout\) # (!\position_rotor[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \position_rotor[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X26_Y31_N1
\signal_entree[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(7),
	o => \signal_entree[7]~input_o\);

-- Location: IOIBUF_X12_Y31_N8
\signal_entree[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(6),
	o => \signal_entree[6]~input_o\);

-- Location: IOIBUF_X14_Y31_N1
\signal_entree[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(5),
	o => \signal_entree[5]~input_o\);

-- Location: IOIBUF_X33_Y27_N8
\signal_entree[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(4),
	o => \signal_entree[4]~input_o\);

-- Location: IOIBUF_X26_Y31_N8
\signal_entree[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(3),
	o => \signal_entree[3]~input_o\);

-- Location: IOIBUF_X14_Y31_N8
\signal_entree[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(2),
	o => \signal_entree[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\signal_entree[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(1),
	o => \signal_entree[1]~input_o\);

-- Location: LCCOMB_X18_Y27_N2
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\signal_entree[1]~input_o\ & (\Add0~1\ & VCC)) # (!\signal_entree[1]~input_o\ & (!\Add0~1\))
-- \Add0~3\ = CARRY((!\signal_entree[1]~input_o\ & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X18_Y27_N4
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\signal_entree[2]~input_o\ & ((GND) # (!\Add0~3\))) # (!\signal_entree[2]~input_o\ & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((\signal_entree[2]~input_o\) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X18_Y27_N6
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\signal_entree[3]~input_o\ & (\Add0~5\ & VCC)) # (!\signal_entree[3]~input_o\ & (!\Add0~5\))
-- \Add0~7\ = CARRY((!\signal_entree[3]~input_o\ & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \signal_entree[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X18_Y27_N8
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\signal_entree[4]~input_o\ & ((GND) # (!\Add0~7\))) # (!\signal_entree[4]~input_o\ & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((\signal_entree[4]~input_o\) # (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X18_Y27_N10
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\signal_entree[5]~input_o\ & (\Add0~9\ & VCC)) # (!\signal_entree[5]~input_o\ & (!\Add0~9\))
-- \Add0~11\ = CARRY((!\signal_entree[5]~input_o\ & !\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \signal_entree[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X18_Y27_N12
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\signal_entree[6]~input_o\ & (\Add0~11\ $ (GND))) # (!\signal_entree[6]~input_o\ & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((\signal_entree[6]~input_o\ & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X18_Y27_N14
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\signal_entree[7]~input_o\ & (\Add0~13\ & VCC)) # (!\signal_entree[7]~input_o\ & (!\Add0~13\))
-- \Add0~15\ = CARRY((!\signal_entree[7]~input_o\ & !\Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \signal_entree[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X18_Y27_N16
\Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = !\Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: IOIBUF_X20_Y31_N1
\position_rotor[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position_rotor(4),
	o => \position_rotor[4]~input_o\);

-- Location: IOIBUF_X29_Y31_N8
\position_rotor[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position_rotor(3),
	o => \position_rotor[3]~input_o\);

-- Location: IOIBUF_X33_Y27_N1
\position_rotor[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position_rotor(2),
	o => \position_rotor[2]~input_o\);

-- Location: IOIBUF_X31_Y31_N8
\position_rotor[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position_rotor(1),
	o => \position_rotor[1]~input_o\);

-- Location: LCCOMB_X19_Y27_N4
\Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add0~2_combout\ & ((\position_rotor[1]~input_o\ & (!\Add1~1\)) # (!\position_rotor[1]~input_o\ & (\Add1~1\ & VCC)))) # (!\Add0~2_combout\ & ((\position_rotor[1]~input_o\ & ((\Add1~1\) # (GND))) # (!\position_rotor[1]~input_o\ & 
-- (!\Add1~1\))))
-- \Add1~3\ = CARRY((\Add0~2_combout\ & (\position_rotor[1]~input_o\ & !\Add1~1\)) # (!\Add0~2_combout\ & ((\position_rotor[1]~input_o\) # (!\Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \position_rotor[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X19_Y27_N6
\Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\position_rotor[2]~input_o\ $ (\Add0~4_combout\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\position_rotor[2]~input_o\ & (\Add0~4_combout\ & !\Add1~3\)) # (!\position_rotor[2]~input_o\ & ((\Add0~4_combout\) # (!\Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \position_rotor[2]~input_o\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X19_Y27_N8
\Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\position_rotor[3]~input_o\ & ((\Add0~6_combout\ & (!\Add1~5\)) # (!\Add0~6_combout\ & ((\Add1~5\) # (GND))))) # (!\position_rotor[3]~input_o\ & ((\Add0~6_combout\ & (\Add1~5\ & VCC)) # (!\Add0~6_combout\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\position_rotor[3]~input_o\ & ((!\Add1~5\) # (!\Add0~6_combout\))) # (!\position_rotor[3]~input_o\ & (!\Add0~6_combout\ & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \position_rotor[3]~input_o\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X19_Y27_N10
\Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\Add0~8_combout\ $ (\position_rotor[4]~input_o\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\Add0~8_combout\ & ((!\Add1~7\) # (!\position_rotor[4]~input_o\))) # (!\Add0~8_combout\ & (!\position_rotor[4]~input_o\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \position_rotor[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X19_Y27_N12
\Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Add0~10_combout\ & (\Add1~9\ & VCC)) # (!\Add0~10_combout\ & (!\Add1~9\))
-- \Add1~11\ = CARRY((!\Add0~10_combout\ & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X19_Y27_N14
\Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\Add0~12_combout\ & ((GND) # (!\Add1~11\))) # (!\Add0~12_combout\ & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((\Add0~12_combout\) # (!\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X19_Y27_N16
\Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Add0~14_combout\ & (\Add1~13\ & VCC)) # (!\Add0~14_combout\ & (!\Add1~13\))
-- \Add1~15\ = CARRY((!\Add0~14_combout\ & !\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X19_Y27_N18
\Add1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\Add0~16_combout\ & (\Add1~15\ $ (GND))) # (!\Add0~16_combout\ & ((GND) # (!\Add1~15\)))
-- \Add1~17\ = CARRY((!\Add1~15\) # (!\Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X19_Y27_N20
\Add1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (\Add0~16_combout\ & (!\Add1~17\)) # (!\Add0~16_combout\ & (\Add1~17\ & VCC))
-- \Add1~19\ = CARRY((\Add0~16_combout\ & !\Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X19_Y27_N22
\Add1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = \Add0~16_combout\ $ (!\Add1~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~16_combout\,
	cin => \Add1~19\,
	combout => \Add1~20_combout\);

-- Location: LCCOMB_X20_Y27_N8
\Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \Add1~2_combout\ $ (VCC)
-- \Add2~1\ = CARRY(\Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~2_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X20_Y27_N10
\Add2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add1~4_combout\ & (!\Add2~1\)) # (!\Add1~4_combout\ & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!\Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~4_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X20_Y27_N12
\Add2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\Add1~6_combout\ & ((GND) # (!\Add2~3\))) # (!\Add1~6_combout\ & (\Add2~3\ $ (GND)))
-- \Add2~5\ = CARRY((\Add1~6_combout\) # (!\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X20_Y27_N14
\Add2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add1~8_combout\ & (\Add2~5\ & VCC)) # (!\Add1~8_combout\ & (!\Add2~5\))
-- \Add2~7\ = CARRY((!\Add1~8_combout\ & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X20_Y27_N16
\Add2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\Add1~10_combout\ & (\Add2~7\ $ (GND))) # (!\Add1~10_combout\ & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((\Add1~10_combout\ & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X20_Y27_N18
\Add2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Add1~12_combout\ & (!\Add2~9\)) # (!\Add1~12_combout\ & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!\Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X20_Y27_N20
\Add2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\Add1~14_combout\ & (\Add2~11\ $ (GND))) # (!\Add1~14_combout\ & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((\Add1~14_combout\ & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X20_Y27_N22
\Add2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Add1~16_combout\ & (!\Add2~13\)) # (!\Add1~16_combout\ & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!\Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~16_combout\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X20_Y27_N24
\Add2~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (\Add1~18_combout\ & (\Add2~15\ $ (GND))) # (!\Add1~18_combout\ & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((\Add1~18_combout\ & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~18_combout\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X20_Y27_N26
\Add2~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (\Add1~20_combout\ & (!\Add2~17\)) # (!\Add1~20_combout\ & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!\Add1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add1~20_combout\,
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X20_Y27_N28
\Add2~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = \Add2~19\ $ (!\Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add1~20_combout\,
	cin => \Add2~19\,
	combout => \Add2~20_combout\);

-- Location: LCCOMB_X20_Y28_N0
\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ = (!\Add1~0_combout\ & (!\Add2~0_combout\ & (\Add2~20_combout\ & !\Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add2~0_combout\,
	datac => \Add2~20_combout\,
	datad => \Add2~2_combout\,
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\);

-- Location: LCCOMB_X20_Y27_N0
\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ & ((\Add2~4_combout\ & (!\Add2~20_combout\ & \Add2~6_combout\)) # (!\Add2~4_combout\ & (\Add2~20_combout\ & !\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Add2~20_combout\,
	datac => \Add2~6_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\);

-- Location: LCCOMB_X20_Y27_N2
\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ & ((\Add2~8_combout\ & (!\Add2~20_combout\ & \Add2~10_combout\)) # (!\Add2~8_combout\ & (\Add2~20_combout\ & !\Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Add2~20_combout\,
	datac => \Add2~10_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\);

-- Location: LCCOMB_X20_Y27_N4
\Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ & ((\Add2~20_combout\ & (!\Add2~12_combout\ & !\Add2~14_combout\)) # (!\Add2~20_combout\ & (\Add2~12_combout\ & \Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datab => \Add2~12_combout\,
	datac => \Add2~14_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\);

-- Location: LCCOMB_X23_Y29_N8
\Mod0|auto_generated|divider|my_abs_num|cs1a[10]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[10]~4_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\ & ((\Add2~16_combout\ & (\Add2~18_combout\ & !\Add2~20_combout\)) # (!\Add2~16_combout\ & (!\Add2~18_combout\ & \Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \Add2~18_combout\,
	datac => \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\,
	datad => \Add2~20_combout\,
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[10]~4_combout\);

-- Location: LCCOMB_X23_Y29_N26
\Mod0|auto_generated|divider|my_abs_num|cs1a[10]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[10]~5_combout\ = \Add2~18_combout\ $ (((\Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\ & (\Add2~16_combout\)) # (!\Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\ & 
-- ((\Add2~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \Add2~18_combout\,
	datac => \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\,
	datad => \Add2~20_combout\,
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[10]~5_combout\);

-- Location: LCCOMB_X23_Y29_N12
\Mod0|auto_generated|divider|my_abs_num|cs1a[9]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[9]~6_combout\ = \Add2~16_combout\ $ (\Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\ $ (\Add2~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datac => \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\,
	datad => \Add2~20_combout\,
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[9]~6_combout\);

-- Location: LCCOMB_X20_Y27_N30
\Mod0|auto_generated|divider|my_abs_num|cs1a[8]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~7_combout\ = \Add2~14_combout\ $ (((\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ & ((\Add2~12_combout\))) # (!\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ & (\Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datab => \Add2~12_combout\,
	datac => \Add2~14_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~7_combout\);

-- Location: LCCOMB_X23_Y29_N14
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~7_combout\ $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\Mod0|auto_generated|divider|my_abs_num|cs1a[8]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~7_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X23_Y29_N16
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[9]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # 
-- (!\Mod0|auto_generated|divider|my_abs_num|cs1a[9]~6_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|my_abs_num|cs1a[9]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[9]~6_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X23_Y29_N18
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[10]~5_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # 
-- (!\Mod0|auto_generated|divider|my_abs_num|cs1a[10]~5_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\Mod0|auto_generated|divider|my_abs_num|cs1a[10]~5_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[10]~5_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X23_Y29_N20
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[10]~4_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)) # 
-- (!\Mod0|auto_generated|divider|my_abs_num|cs1a[10]~4_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\) # (!\Mod0|auto_generated|divider|my_abs_num|cs1a[10]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[10]~4_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X23_Y29_N22
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X23_Y29_N6
\Mod0|auto_generated|divider|divider|StageOut[52]~122\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[52]~122_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[10]~4_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[10]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[52]~122_combout\);

-- Location: LCCOMB_X23_Y29_N0
\Mod0|auto_generated|divider|divider|StageOut[52]~123\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[52]~123_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[52]~123_combout\);

-- Location: LCCOMB_X23_Y29_N4
\Mod0|auto_generated|divider|divider|StageOut[51]~125\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~125_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~125_combout\);

-- Location: LCCOMB_X23_Y29_N2
\Mod0|auto_generated|divider|divider|StageOut[51]~124\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~124_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[10]~5_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[10]~5_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~124_combout\);

-- Location: LCCOMB_X22_Y29_N8
\Mod0|auto_generated|divider|divider|StageOut[50]~126\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[50]~126_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[50]~126_combout\);

-- Location: LCCOMB_X23_Y29_N24
\Mod0|auto_generated|divider|divider|StageOut[50]~201\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[50]~201_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Add2~16_combout\ $ (\Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\ $ (\Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Add2~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[50]~201_combout\);

-- Location: LCCOMB_X22_Y29_N12
\Mod0|auto_generated|divider|divider|StageOut[49]~128\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[49]~128_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[49]~128_combout\);

-- Location: LCCOMB_X22_Y29_N10
\Mod0|auto_generated|divider|divider|StageOut[49]~127\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[49]~127_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[8]~7_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~7_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[49]~127_combout\);

-- Location: LCCOMB_X22_Y29_N6
\Mod0|auto_generated|divider|divider|StageOut[48]~129\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~129_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ $ (\Add2~12_combout\ $ (\Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	datab => \Add2~12_combout\,
	datac => \Add2~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~129_combout\);

-- Location: LCCOMB_X22_Y29_N16
\Mod0|auto_generated|divider|divider|StageOut[48]~130\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~130_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ $ (\Add2~12_combout\ $ (\Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	datab => \Add2~12_combout\,
	datac => \Add2~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~130_combout\);

-- Location: LCCOMB_X22_Y29_N18
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[48]~129_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[48]~130_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[48]~129_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[48]~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[48]~129_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[48]~130_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X22_Y29_N20
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[49]~128_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[49]~127_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[49]~128_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[49]~127_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[49]~128_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[49]~127_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[49]~128_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[49]~127_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X22_Y29_N22
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[50]~126_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[50]~201_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[50]~126_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[50]~201_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[50]~126_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[50]~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[50]~126_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[50]~201_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X22_Y29_N24
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[51]~125_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[51]~125_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[51]~124_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[51]~124_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[51]~125_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[51]~124_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[51]~125_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[51]~124_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X22_Y29_N26
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[52]~122_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[52]~123_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[52]~122_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[52]~123_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[52]~122_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[52]~123_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[52]~122_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[52]~123_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X22_Y29_N28
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X23_Y29_N10
\Mod0|auto_generated|divider|divider|StageOut[65]~238\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[65]~238_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\Mod0|auto_generated|divider|my_abs_num|cs1a[10]~4_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|my_abs_num|cs1a[10]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[65]~238_combout\);

-- Location: LCCOMB_X21_Y29_N0
\Mod0|auto_generated|divider|divider|StageOut[65]~131\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[65]~131_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[65]~131_combout\);

-- Location: LCCOMB_X21_Y29_N26
\Mod0|auto_generated|divider|divider|StageOut[64]~132\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[64]~132_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[64]~132_combout\);

-- Location: LCCOMB_X23_Y29_N28
\Mod0|auto_generated|divider|divider|StageOut[64]~239\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[64]~239_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\Mod0|auto_generated|divider|my_abs_num|cs1a[10]~5_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[10]~5_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[64]~239_combout\);

-- Location: LCCOMB_X22_Y29_N4
\Mod0|auto_generated|divider|divider|StageOut[63]~202\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[63]~202_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[50]~201_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[50]~201_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[63]~202_combout\);

-- Location: LCCOMB_X21_Y29_N28
\Mod0|auto_generated|divider|divider|StageOut[63]~133\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[63]~133_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[63]~133_combout\);

-- Location: LCCOMB_X21_Y29_N30
\Mod0|auto_generated|divider|divider|StageOut[62]~134\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[62]~134_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[62]~134_combout\);

-- Location: LCCOMB_X22_Y29_N0
\Mod0|auto_generated|divider|divider|StageOut[62]~240\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[62]~240_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\Mod0|auto_generated|divider|my_abs_num|cs1a[8]~7_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[62]~240_combout\);

-- Location: LCCOMB_X21_Y29_N22
\Mod0|auto_generated|divider|divider|StageOut[61]~136\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[61]~136_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[61]~136_combout\);

-- Location: LCCOMB_X22_Y29_N2
\Mod0|auto_generated|divider|divider|StageOut[61]~135\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[61]~135_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ $ (\Add2~12_combout\ $ (\Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	datab => \Add2~12_combout\,
	datac => \Add2~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[61]~135_combout\);

-- Location: LCCOMB_X20_Y27_N6
\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~8_combout\ = \Add2~10_combout\ $ (((\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ & (\Add2~8_combout\)) # (!\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ & ((\Add2~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Add2~20_combout\,
	datac => \Add2~10_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~8_combout\);

-- Location: LCCOMB_X19_Y29_N24
\Mod0|auto_generated|divider|divider|StageOut[60]~137\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~137_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~137_combout\);

-- Location: LCCOMB_X19_Y29_N2
\Mod0|auto_generated|divider|divider|StageOut[60]~138\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~138_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~138_combout\);

-- Location: LCCOMB_X21_Y29_N8
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[60]~137_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[60]~138_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[60]~137_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[60]~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[60]~137_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[60]~138_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X21_Y29_N10
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[61]~136_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[61]~135_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[61]~136_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[61]~135_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[61]~136_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[61]~135_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[61]~136_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[61]~135_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X21_Y29_N12
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[62]~134_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[62]~240_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[62]~134_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[62]~240_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[62]~134_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[62]~240_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[62]~134_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[62]~240_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X21_Y29_N14
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[63]~202_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[63]~202_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[63]~133_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[63]~133_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[63]~202_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[63]~133_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[63]~202_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[63]~133_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X21_Y29_N16
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[64]~132_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[64]~239_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[64]~132_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[64]~239_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[64]~132_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[64]~239_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[64]~132_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[64]~239_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X21_Y29_N18
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[65]~238_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[65]~131_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[65]~238_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[65]~131_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[65]~238_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[65]~131_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[65]~238_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[65]~131_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X21_Y29_N20
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X20_Y29_N16
\Mod0|auto_generated|divider|divider|StageOut[78]~139\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[78]~139_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[78]~139_combout\);

-- Location: LCCOMB_X21_Y29_N24
\Mod0|auto_generated|divider|divider|StageOut[78]~203\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[78]~203_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[65]~238_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[65]~238_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[78]~203_combout\);

-- Location: LCCOMB_X21_Y29_N2
\Mod0|auto_generated|divider|divider|StageOut[77]~204\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[77]~204_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[64]~239_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[64]~239_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[77]~204_combout\);

-- Location: LCCOMB_X20_Y29_N26
\Mod0|auto_generated|divider|divider|StageOut[77]~140\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[77]~140_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[77]~140_combout\);

-- Location: LCCOMB_X21_Y29_N4
\Mod0|auto_generated|divider|divider|StageOut[76]~205\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[76]~205_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[63]~202_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[63]~202_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[76]~205_combout\);

-- Location: LCCOMB_X20_Y29_N28
\Mod0|auto_generated|divider|divider|StageOut[76]~141\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[76]~141_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[76]~141_combout\);

-- Location: LCCOMB_X21_Y29_N6
\Mod0|auto_generated|divider|divider|StageOut[75]~206\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[75]~206_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[62]~240_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[62]~240_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[75]~206_combout\);

-- Location: LCCOMB_X20_Y29_N30
\Mod0|auto_generated|divider|divider|StageOut[75]~142\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[75]~142_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[75]~142_combout\);

-- Location: LCCOMB_X22_Y29_N14
\Mod0|auto_generated|divider|divider|StageOut[74]~207\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[74]~207_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[61]~135_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[61]~135_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[74]~207_combout\);

-- Location: LCCOMB_X19_Y29_N12
\Mod0|auto_generated|divider|divider|StageOut[74]~143\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[74]~143_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[74]~143_combout\);

-- Location: LCCOMB_X19_Y29_N16
\Mod0|auto_generated|divider|divider|StageOut[73]~145\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[73]~145_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[73]~145_combout\);

-- Location: LCCOMB_X19_Y29_N22
\Mod0|auto_generated|divider|divider|StageOut[73]~144\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[73]~144_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[73]~144_combout\);

-- Location: LCCOMB_X19_Y26_N2
\Mod0|auto_generated|divider|divider|StageOut[72]~147\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[72]~147_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Add2~20_combout\ $ (\Add2~8_combout\ $ (\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datab => \Add2~8_combout\,
	datac => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[72]~147_combout\);

-- Location: LCCOMB_X19_Y26_N16
\Mod0|auto_generated|divider|divider|StageOut[72]~146\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[72]~146_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Add2~20_combout\ $ (\Add2~8_combout\ $ (\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datab => \Add2~8_combout\,
	datac => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[72]~146_combout\);

-- Location: LCCOMB_X20_Y29_N0
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[72]~147_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[72]~146_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[72]~147_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[72]~146_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[72]~147_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[72]~146_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X20_Y29_N2
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[73]~145_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[73]~144_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[73]~145_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[73]~144_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[73]~145_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[73]~144_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[73]~145_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[73]~144_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X20_Y29_N4
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[74]~207_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[74]~143_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[74]~207_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[74]~143_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[74]~207_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[74]~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[74]~207_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[74]~143_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X20_Y29_N6
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[75]~206_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[75]~206_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[75]~142_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[75]~142_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[75]~206_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[75]~142_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[75]~206_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[75]~142_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X20_Y29_N8
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[76]~205_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[76]~141_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[76]~205_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[76]~141_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[76]~205_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[76]~141_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[76]~205_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[76]~141_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X20_Y29_N10
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[77]~204_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[77]~140_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[77]~204_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[77]~140_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[77]~204_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[77]~140_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[77]~204_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[77]~140_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\);

-- Location: LCCOMB_X20_Y29_N12
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[78]~139_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[78]~203_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[78]~139_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[78]~203_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[78]~139_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[78]~203_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[78]~139_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[78]~203_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\);

-- Location: LCCOMB_X20_Y29_N14
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X18_Y29_N0
\Mod0|auto_generated|divider|divider|StageOut[91]~148\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[91]~148_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[91]~148_combout\);

-- Location: LCCOMB_X20_Y29_N24
\Mod0|auto_generated|divider|divider|StageOut[91]~208\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[91]~208_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[78]~203_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[78]~203_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[91]~208_combout\);

-- Location: LCCOMB_X20_Y29_N18
\Mod0|auto_generated|divider|divider|StageOut[90]~209\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[90]~209_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[77]~204_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[77]~204_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[90]~209_combout\);

-- Location: LCCOMB_X19_Y29_N18
\Mod0|auto_generated|divider|divider|StageOut[90]~149\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[90]~149_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[90]~149_combout\);

-- Location: LCCOMB_X18_Y29_N26
\Mod0|auto_generated|divider|divider|StageOut[89]~150\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[89]~150_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[89]~150_combout\);

-- Location: LCCOMB_X20_Y29_N20
\Mod0|auto_generated|divider|divider|StageOut[89]~210\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[89]~210_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[76]~205_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[76]~205_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[89]~210_combout\);

-- Location: LCCOMB_X18_Y29_N30
\Mod0|auto_generated|divider|divider|StageOut[88]~151\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[88]~151_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[88]~151_combout\);

-- Location: LCCOMB_X20_Y29_N22
\Mod0|auto_generated|divider|divider|StageOut[88]~211\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[88]~211_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[75]~206_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[75]~206_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[88]~211_combout\);

-- Location: LCCOMB_X19_Y29_N4
\Mod0|auto_generated|divider|divider|StageOut[87]~152\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[87]~152_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[87]~152_combout\);

-- Location: LCCOMB_X19_Y29_N20
\Mod0|auto_generated|divider|divider|StageOut[87]~212\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[87]~212_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[74]~207_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[74]~207_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[87]~212_combout\);

-- Location: LCCOMB_X19_Y29_N30
\Mod0|auto_generated|divider|divider|StageOut[86]~241\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[86]~241_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~8_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[86]~241_combout\);

-- Location: LCCOMB_X19_Y29_N14
\Mod0|auto_generated|divider|divider|StageOut[86]~153\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[86]~153_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[86]~153_combout\);

-- Location: LCCOMB_X19_Y26_N12
\Mod0|auto_generated|divider|divider|StageOut[85]~154\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[85]~154_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ $ (\Add2~8_combout\ $ (\Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	datab => \Add2~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Add2~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[85]~154_combout\);

-- Location: LCCOMB_X19_Y29_N8
\Mod0|auto_generated|divider|divider|StageOut[85]~155\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[85]~155_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[85]~155_combout\);

-- Location: LCCOMB_X20_Y30_N16
\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~9_combout\ = \Add2~6_combout\ $ (((\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ & ((\Add2~4_combout\))) # (!\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ & (\Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datab => \Add2~6_combout\,
	datac => \Add2~4_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~9_combout\);

-- Location: LCCOMB_X18_Y29_N24
\Mod0|auto_generated|divider|divider|StageOut[84]~156\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[84]~156_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~9_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~9_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[84]~156_combout\);

-- Location: LCCOMB_X19_Y29_N10
\Mod0|auto_generated|divider|divider|StageOut[84]~157\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[84]~157_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~9_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[84]~157_combout\);

-- Location: LCCOMB_X18_Y29_N4
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[84]~156_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[84]~157_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[84]~156_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[84]~157_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[84]~156_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[84]~157_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X18_Y29_N6
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[85]~154_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[85]~155_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[85]~154_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[85]~155_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[85]~154_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[85]~155_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[85]~154_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[85]~155_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X18_Y29_N8
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[86]~241_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[86]~153_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[86]~241_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[86]~153_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[86]~241_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[86]~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[86]~241_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[86]~153_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X18_Y29_N10
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[87]~152_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[87]~152_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[87]~212_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[87]~212_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[87]~152_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[87]~212_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[87]~152_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[87]~212_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\);

-- Location: LCCOMB_X18_Y29_N12
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[88]~151_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[88]~211_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[88]~151_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[88]~211_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[88]~151_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[88]~211_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[88]~151_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[88]~211_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\);

-- Location: LCCOMB_X18_Y29_N14
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[89]~150_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[89]~210_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[89]~150_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[89]~210_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[89]~150_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[89]~210_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[89]~150_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[89]~210_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\);

-- Location: LCCOMB_X18_Y29_N16
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[90]~209_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[90]~149_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[90]~209_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[90]~149_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[90]~209_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[90]~149_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[90]~209_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[90]~149_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\);

-- Location: LCCOMB_X18_Y29_N18
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ & (((\Mod0|auto_generated|divider|divider|StageOut[91]~148_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[91]~208_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ & (!\Mod0|auto_generated|divider|divider|StageOut[91]~148_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[91]~208_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[91]~148_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[91]~208_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[91]~148_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[91]~208_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\);

-- Location: LCCOMB_X18_Y29_N20
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ = \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\);

-- Location: LCCOMB_X18_Y29_N2
\Mod0|auto_generated|divider|divider|StageOut[104]~213\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[104]~213_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[91]~208_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[91]~208_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[104]~213_combout\);

-- Location: LCCOMB_X19_Y30_N0
\Mod0|auto_generated|divider|divider|StageOut[104]~158\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[104]~158_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[104]~158_combout\);

-- Location: LCCOMB_X19_Y30_N2
\Mod0|auto_generated|divider|divider|StageOut[103]~159\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[103]~159_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[103]~159_combout\);

-- Location: LCCOMB_X19_Y29_N6
\Mod0|auto_generated|divider|divider|StageOut[103]~214\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[103]~214_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[90]~209_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[90]~209_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[103]~214_combout\);

-- Location: LCCOMB_X18_Y29_N28
\Mod0|auto_generated|divider|divider|StageOut[102]~215\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[102]~215_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[89]~210_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[89]~210_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[102]~215_combout\);

-- Location: LCCOMB_X19_Y30_N4
\Mod0|auto_generated|divider|divider|StageOut[102]~160\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[102]~160_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[102]~160_combout\);

-- Location: LCCOMB_X18_Y29_N22
\Mod0|auto_generated|divider|divider|StageOut[101]~216\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[101]~216_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[88]~211_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[88]~211_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[101]~216_combout\);

-- Location: LCCOMB_X18_Y28_N8
\Mod0|auto_generated|divider|divider|StageOut[101]~161\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[101]~161_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[101]~161_combout\);

-- Location: LCCOMB_X20_Y30_N26
\Mod0|auto_generated|divider|divider|StageOut[100]~162\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[100]~162_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[100]~162_combout\);

-- Location: LCCOMB_X19_Y29_N0
\Mod0|auto_generated|divider|divider|StageOut[100]~217\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[100]~217_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[87]~212_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[87]~212_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[100]~217_combout\);

-- Location: LCCOMB_X19_Y29_N26
\Mod0|auto_generated|divider|divider|StageOut[99]~218\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[99]~218_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[86]~241_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[86]~241_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[99]~218_combout\);

-- Location: LCCOMB_X18_Y28_N26
\Mod0|auto_generated|divider|divider|StageOut[99]~163\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[99]~163_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[99]~163_combout\);

-- Location: LCCOMB_X19_Y29_N28
\Mod0|auto_generated|divider|divider|StageOut[98]~219\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[98]~219_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[85]~154_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[85]~154_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[98]~219_combout\);

-- Location: LCCOMB_X18_Y28_N28
\Mod0|auto_generated|divider|divider|StageOut[98]~164\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[98]~164_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[98]~164_combout\);

-- Location: LCCOMB_X20_Y30_N4
\Mod0|auto_generated|divider|divider|StageOut[97]~165\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[97]~165_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~9_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[97]~165_combout\);

-- Location: LCCOMB_X20_Y30_N6
\Mod0|auto_generated|divider|divider|StageOut[97]~166\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[97]~166_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[97]~166_combout\);

-- Location: LCCOMB_X20_Y30_N2
\Mod0|auto_generated|divider|divider|StageOut[96]~168\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[96]~168_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & (\Add2~4_combout\ $ (\Add2~20_combout\ $ (\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \Add2~4_combout\,
	datac => \Add2~20_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[96]~168_combout\);

-- Location: LCCOMB_X20_Y30_N8
\Mod0|auto_generated|divider|divider|StageOut[96]~167\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[96]~167_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & (\Add2~4_combout\ $ (\Add2~20_combout\ $ (\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \Add2~4_combout\,
	datac => \Add2~20_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[96]~167_combout\);

-- Location: LCCOMB_X19_Y30_N6
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[96]~168_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[96]~167_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[96]~168_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[96]~167_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[96]~168_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[96]~167_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X19_Y30_N8
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[97]~165_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[97]~166_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[97]~165_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[97]~166_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[97]~165_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[97]~166_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[97]~165_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[97]~166_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X19_Y30_N10
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[98]~219_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[98]~164_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[98]~219_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[98]~164_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[98]~219_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[98]~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[98]~219_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[98]~164_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X19_Y30_N12
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[99]~218_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[99]~218_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[99]~163_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[99]~163_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[99]~218_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[99]~163_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[99]~218_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[99]~163_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\);

-- Location: LCCOMB_X19_Y30_N14
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[100]~162_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[100]~217_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[100]~162_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[100]~217_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[100]~162_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[100]~217_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[100]~162_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[100]~217_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\);

-- Location: LCCOMB_X19_Y30_N16
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[101]~216_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[101]~161_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[101]~216_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[101]~161_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[101]~216_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[101]~161_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[101]~216_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[101]~161_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\);

-- Location: LCCOMB_X19_Y30_N18
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[102]~215_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[102]~160_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[102]~215_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[102]~160_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[102]~215_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[102]~160_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[102]~215_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[102]~160_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\);

-- Location: LCCOMB_X19_Y30_N20
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ & (((\Mod0|auto_generated|divider|divider|StageOut[103]~159_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[103]~214_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ & (!\Mod0|auto_generated|divider|divider|StageOut[103]~159_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[103]~214_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[103]~159_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[103]~214_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[103]~159_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[103]~214_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\);

-- Location: LCCOMB_X19_Y30_N22
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ & ((((\Mod0|auto_generated|divider|divider|StageOut[104]~213_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[104]~158_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ & ((\Mod0|auto_generated|divider|divider|StageOut[104]~213_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[104]~158_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[104]~213_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[104]~158_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[104]~213_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[104]~158_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\);

-- Location: LCCOMB_X19_Y30_N24
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\);

-- Location: LCCOMB_X19_Y30_N26
\Mod0|auto_generated|divider|divider|StageOut[117]~220\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[117]~220_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[104]~213_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[104]~213_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[117]~220_combout\);

-- Location: LCCOMB_X18_Y28_N22
\Mod0|auto_generated|divider|divider|StageOut[117]~169\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[117]~169_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[117]~169_combout\);

-- Location: LCCOMB_X19_Y30_N28
\Mod0|auto_generated|divider|divider|StageOut[116]~221\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[116]~221_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[103]~214_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[103]~214_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[116]~221_combout\);

-- Location: LCCOMB_X20_Y28_N18
\Mod0|auto_generated|divider|divider|StageOut[116]~170\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[116]~170_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[116]~170_combout\);

-- Location: LCCOMB_X18_Y28_N16
\Mod0|auto_generated|divider|divider|StageOut[115]~171\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[115]~171_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[115]~171_combout\);

-- Location: LCCOMB_X19_Y30_N30
\Mod0|auto_generated|divider|divider|StageOut[115]~222\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[115]~222_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[102]~215_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[102]~215_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[115]~222_combout\);

-- Location: LCCOMB_X18_Y28_N10
\Mod0|auto_generated|divider|divider|StageOut[114]~172\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[114]~172_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[114]~172_combout\);

-- Location: LCCOMB_X18_Y28_N0
\Mod0|auto_generated|divider|divider|StageOut[114]~223\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[114]~223_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[101]~216_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[101]~216_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[114]~223_combout\);

-- Location: LCCOMB_X20_Y30_N12
\Mod0|auto_generated|divider|divider|StageOut[113]~173\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[113]~173_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[113]~173_combout\);

-- Location: LCCOMB_X20_Y30_N28
\Mod0|auto_generated|divider|divider|StageOut[113]~224\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[113]~224_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[100]~217_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[100]~217_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[113]~224_combout\);

-- Location: LCCOMB_X18_Y28_N12
\Mod0|auto_generated|divider|divider|StageOut[112]~174\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[112]~174_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[112]~174_combout\);

-- Location: LCCOMB_X18_Y28_N18
\Mod0|auto_generated|divider|divider|StageOut[112]~225\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[112]~225_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[99]~218_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[99]~218_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[112]~225_combout\);

-- Location: LCCOMB_X18_Y28_N20
\Mod0|auto_generated|divider|divider|StageOut[111]~226\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[111]~226_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[98]~219_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[98]~219_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[111]~226_combout\);

-- Location: LCCOMB_X18_Y28_N6
\Mod0|auto_generated|divider|divider|StageOut[111]~175\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[111]~175_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[111]~175_combout\);

-- Location: LCCOMB_X20_Y30_N22
\Mod0|auto_generated|divider|divider|StageOut[110]~176\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[110]~176_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[110]~176_combout\);

-- Location: LCCOMB_X20_Y30_N20
\Mod0|auto_generated|divider|divider|StageOut[110]~242\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[110]~242_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & 
-- ((\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~9_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~9_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[110]~242_combout\);

-- Location: LCCOMB_X20_Y28_N4
\Mod0|auto_generated|divider|divider|StageOut[109]~178\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[109]~178_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[109]~178_combout\);

-- Location: LCCOMB_X20_Y30_N0
\Mod0|auto_generated|divider|divider|StageOut[109]~177\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[109]~177_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (\Add2~20_combout\ $ (\Add2~4_combout\ $ (\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Add2~4_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[109]~177_combout\);

-- Location: LCCOMB_X20_Y28_N14
\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~10_combout\ = \Add2~2_combout\ $ (((\Add2~20_combout\ & ((\Add1~0_combout\) # (\Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add2~0_combout\,
	datac => \Add2~20_combout\,
	datad => \Add2~2_combout\,
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~10_combout\);

-- Location: LCCOMB_X20_Y28_N2
\Mod0|auto_generated|divider|divider|StageOut[108]~180\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[108]~180_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[108]~180_combout\);

-- Location: LCCOMB_X20_Y28_N8
\Mod0|auto_generated|divider|divider|StageOut[108]~179\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[108]~179_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[108]~179_combout\);

-- Location: LCCOMB_X19_Y28_N10
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[108]~180_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[108]~179_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[108]~180_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[108]~179_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[108]~180_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[108]~179_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X19_Y28_N12
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[109]~178_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[109]~177_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[109]~178_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[109]~177_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[109]~178_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[109]~177_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[109]~178_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[109]~177_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X19_Y28_N14
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[110]~176_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[110]~242_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[110]~176_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[110]~242_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[110]~176_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[110]~242_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[110]~176_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[110]~242_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X19_Y28_N16
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[111]~226_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[111]~226_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[111]~175_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[111]~175_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[111]~226_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[111]~175_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[111]~226_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[111]~175_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\);

-- Location: LCCOMB_X19_Y28_N18
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[112]~174_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[112]~225_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[112]~174_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[112]~225_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[112]~174_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[112]~225_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[112]~174_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[112]~225_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\);

-- Location: LCCOMB_X19_Y28_N20
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[113]~173_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[113]~224_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[113]~173_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[113]~224_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[113]~173_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[113]~224_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[113]~173_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[113]~224_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\);

-- Location: LCCOMB_X19_Y28_N22
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[114]~172_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[114]~223_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[114]~172_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[114]~223_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[114]~172_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[114]~223_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[114]~172_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[114]~223_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\);

-- Location: LCCOMB_X19_Y28_N24
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\ & (((\Mod0|auto_generated|divider|divider|StageOut[115]~171_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[115]~222_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\ & (!\Mod0|auto_generated|divider|divider|StageOut[115]~171_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[115]~222_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~15\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[115]~171_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[115]~222_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[115]~171_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[115]~222_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~15\);

-- Location: LCCOMB_X19_Y28_N26
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~15\ & ((((\Mod0|auto_generated|divider|divider|StageOut[116]~221_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[116]~170_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~15\ & ((\Mod0|auto_generated|divider|divider|StageOut[116]~221_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[116]~170_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[116]~221_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[116]~170_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[116]~221_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[116]~170_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~15\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\);

-- Location: LCCOMB_X19_Y28_N28
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\ & (((\Mod0|auto_generated|divider|divider|StageOut[117]~220_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[117]~169_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\ & (!\Mod0|auto_generated|divider|divider|StageOut[117]~220_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[117]~169_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~19\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[117]~220_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[117]~169_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[117]~220_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[117]~169_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~19\);

-- Location: LCCOMB_X19_Y28_N30
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ = \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~19\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\);

-- Location: LCCOMB_X18_Y28_N14
\Mod0|auto_generated|divider|divider|StageOut[130]~227\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[130]~227_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[117]~220_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[117]~220_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[130]~227_combout\);

-- Location: LCCOMB_X18_Y27_N22
\Mod0|auto_generated|divider|divider|StageOut[130]~181\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[130]~181_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[130]~181_combout\);

-- Location: LCCOMB_X20_Y28_N24
\Mod0|auto_generated|divider|divider|StageOut[129]~228\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[129]~228_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[116]~221_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[116]~221_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[129]~228_combout\);

-- Location: LCCOMB_X19_Y28_N0
\Mod0|auto_generated|divider|divider|StageOut[129]~182\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[129]~182_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[129]~182_combout\);

-- Location: LCCOMB_X18_Y27_N24
\Mod0|auto_generated|divider|divider|StageOut[128]~183\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[128]~183_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[128]~183_combout\);

-- Location: LCCOMB_X18_Y28_N24
\Mod0|auto_generated|divider|divider|StageOut[128]~229\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[128]~229_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[115]~222_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[115]~222_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[128]~229_combout\);

-- Location: LCCOMB_X18_Y28_N2
\Mod0|auto_generated|divider|divider|StageOut[127]~230\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[127]~230_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[114]~223_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[114]~223_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[127]~230_combout\);

-- Location: LCCOMB_X19_Y28_N2
\Mod0|auto_generated|divider|divider|StageOut[127]~184\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[127]~184_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[127]~184_combout\);

-- Location: LCCOMB_X19_Y28_N4
\Mod0|auto_generated|divider|divider|StageOut[126]~185\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[126]~185_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[126]~185_combout\);

-- Location: LCCOMB_X20_Y30_N14
\Mod0|auto_generated|divider|divider|StageOut[126]~231\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[126]~231_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[113]~224_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[113]~224_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[126]~231_combout\);

-- Location: LCCOMB_X18_Y28_N4
\Mod0|auto_generated|divider|divider|StageOut[125]~232\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[125]~232_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[112]~225_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[112]~225_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[125]~232_combout\);

-- Location: LCCOMB_X19_Y28_N6
\Mod0|auto_generated|divider|divider|StageOut[125]~186\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[125]~186_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[125]~186_combout\);

-- Location: LCCOMB_X19_Y28_N8
\Mod0|auto_generated|divider|divider|StageOut[124]~187\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[124]~187_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[124]~187_combout\);

-- Location: LCCOMB_X18_Y28_N30
\Mod0|auto_generated|divider|divider|StageOut[124]~233\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[124]~233_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[111]~226_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[111]~226_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[124]~233_combout\);

-- Location: LCCOMB_X20_Y30_N10
\Mod0|auto_generated|divider|divider|StageOut[123]~188\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[123]~188_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[123]~188_combout\);

-- Location: LCCOMB_X20_Y30_N24
\Mod0|auto_generated|divider|divider|StageOut[123]~234\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[123]~234_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[110]~242_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[110]~242_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[123]~234_combout\);

-- Location: LCCOMB_X20_Y28_N12
\Mod0|auto_generated|divider|divider|StageOut[122]~189\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[122]~189_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[122]~189_combout\);

-- Location: LCCOMB_X20_Y28_N10
\Mod0|auto_generated|divider|divider|StageOut[122]~235\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[122]~235_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[109]~177_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[109]~177_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[122]~235_combout\);

-- Location: LCCOMB_X20_Y28_N16
\Mod0|auto_generated|divider|divider|StageOut[121]~191\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[121]~191_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[121]~191_combout\);

-- Location: LCCOMB_X20_Y28_N6
\Mod0|auto_generated|divider|divider|StageOut[121]~190\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[121]~190_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datac => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[121]~190_combout\);

-- Location: LCCOMB_X20_Y28_N26
\Mod0|auto_generated|divider|divider|StageOut[120]~192\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[120]~192_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (\Add2~0_combout\ $ (((\Add1~0_combout\ & \Add2~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add2~0_combout\,
	datac => \Add2~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[120]~192_combout\);

-- Location: LCCOMB_X20_Y28_N20
\Mod0|auto_generated|divider|divider|StageOut[120]~193\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[120]~193_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (\Add2~0_combout\ $ (((\Add1~0_combout\ & \Add2~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add2~0_combout\,
	datac => \Add2~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[120]~193_combout\);

-- Location: LCCOMB_X21_Y28_N6
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[120]~192_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[120]~193_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[120]~192_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[120]~193_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[120]~192_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[120]~193_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

-- Location: LCCOMB_X21_Y28_N8
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[121]~191_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[121]~190_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[121]~191_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[121]~190_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[121]~191_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[121]~190_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[121]~191_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[121]~190_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X21_Y28_N10
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[122]~189_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[122]~235_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[122]~189_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[122]~235_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[122]~189_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[122]~235_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[122]~189_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[122]~235_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X21_Y28_N12
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[123]~188_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[123]~188_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[123]~234_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[123]~234_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[123]~188_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[123]~234_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[123]~188_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[123]~234_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\);

-- Location: LCCOMB_X21_Y28_N14
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[124]~187_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[124]~233_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[124]~187_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[124]~233_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\);

-- Location: LCCOMB_X21_Y28_N16
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~11_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[125]~232_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[125]~186_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[125]~232_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[125]~186_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~11_cout\);

-- Location: LCCOMB_X21_Y28_N18
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[126]~185_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[126]~231_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[126]~185_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[126]~231_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[6]~11_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\);

-- Location: LCCOMB_X21_Y28_N20
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~15_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[127]~230_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[127]~184_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[127]~230_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[127]~184_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[7]~13_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~15_cout\);

-- Location: LCCOMB_X21_Y28_N22
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~17_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[128]~183_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[128]~229_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[128]~183_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[128]~229_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[8]~15_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~17_cout\);

-- Location: LCCOMB_X21_Y28_N24
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~19_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[129]~228_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[129]~182_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[129]~228_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[129]~182_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[9]~17_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~19_cout\);

-- Location: LCCOMB_X21_Y28_N26
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~21_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[130]~227_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[130]~181_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[130]~227_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[130]~181_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[10]~19_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~21_cout\);

-- Location: LCCOMB_X21_Y28_N28
\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~21_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[11]~21_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\);

-- Location: LCCOMB_X19_Y27_N0
\Mod0|auto_generated|divider|divider|StageOut[132]~197\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[132]~197_combout\ = (\Add1~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[132]~197_combout\);

-- Location: LCCOMB_X19_Y27_N26
\Mod0|auto_generated|divider|divider|StageOut[132]~198\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[132]~198_combout\ = (\Add1~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[132]~198_combout\);

-- Location: LCCOMB_X21_Y27_N16
\Mod0|auto_generated|divider|op_2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|op_2~0_combout\ = (((!\Mod0|auto_generated|divider|divider|StageOut[132]~197_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[132]~198_combout\)))
-- \Mod0|auto_generated|divider|op_2~1\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[132]~197_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[132]~198_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[132]~197_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[132]~198_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|op_2~0_combout\,
	cout => \Mod0|auto_generated|divider|op_2~1\);

-- Location: LCCOMB_X21_Y27_N26
\Mod0|auto_generated|divider|remainder[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|remainder[0]~3_combout\ = (\Add2~20_combout\ & ((\Mod0|auto_generated|divider|op_2~0_combout\))) # (!\Add2~20_combout\ & (\Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add2~20_combout\,
	datad => \Mod0|auto_generated|divider|op_2~0_combout\,
	combout => \Mod0|auto_generated|divider|remainder[0]~3_combout\);

-- Location: LCCOMB_X18_Y27_N26
\test_bit~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \test_bit~0_combout\ = (\signal_entree[2]~input_o\) # ((\signal_entree[0]~input_o\) # ((\signal_entree[1]~input_o\) # (\signal_entree[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[2]~input_o\,
	datab => \signal_entree[0]~input_o\,
	datac => \signal_entree[1]~input_o\,
	datad => \signal_entree[3]~input_o\,
	combout => \test_bit~0_combout\);

-- Location: LCCOMB_X18_Y27_N28
\test_bit~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \test_bit~1_combout\ = (\signal_entree[6]~input_o\) # ((\signal_entree[5]~input_o\) # ((\signal_entree[4]~input_o\) # (\signal_entree[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[6]~input_o\,
	datab => \signal_entree[5]~input_o\,
	datac => \signal_entree[4]~input_o\,
	datad => \signal_entree[7]~input_o\,
	combout => \test_bit~1_combout\);

-- Location: LCCOMB_X19_Y26_N14
\signal_sortie~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_sortie~0_combout\ = \Add1~0_combout\ $ (\Add2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~0_combout\,
	datad => \Add2~20_combout\,
	combout => \signal_sortie~0_combout\);

-- Location: LCCOMB_X20_Y26_N4
\Add3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\signal_sortie~0_combout\ & (\Add2~20_combout\ $ (VCC))) # (!\signal_sortie~0_combout\ & (\Add2~20_combout\ & VCC))
-- \Add3~1\ = CARRY((\signal_sortie~0_combout\ & \Add2~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_sortie~0_combout\,
	datab => \Add2~20_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X20_Y26_N6
\Add3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Add3~1\ & (\Add2~0_combout\ $ ((!\Add2~20_combout\)))) # (!\Add3~1\ & ((\Add2~0_combout\ $ (\Add2~20_combout\)) # (GND)))
-- \Add3~3\ = CARRY((\Add2~0_combout\ $ (!\Add2~20_combout\)) # (!\Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add2~20_combout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X20_Y26_N8
\Add3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\Add3~3\ & ((\Add2~2_combout\ $ (\Add2~20_combout\)))) # (!\Add3~3\ & (\Add2~2_combout\ $ (\Add2~20_combout\ $ (VCC))))
-- \Add3~5\ = CARRY((!\Add3~3\ & (\Add2~2_combout\ $ (\Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Add2~20_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X20_Y26_N10
\Add3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\Add3~5\ & (\Add2~20_combout\ $ ((!\Add2~4_combout\)))) # (!\Add3~5\ & ((\Add2~20_combout\ $ (\Add2~4_combout\)) # (GND)))
-- \Add3~7\ = CARRY((\Add2~20_combout\ $ (!\Add2~4_combout\)) # (!\Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datab => \Add2~4_combout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X20_Y26_N12
\Add3~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\Add3~7\ & ((\Add2~6_combout\ $ (\Add2~20_combout\)))) # (!\Add3~7\ & (\Add2~6_combout\ $ (\Add2~20_combout\ $ (VCC))))
-- \Add3~9\ = CARRY((!\Add3~7\ & (\Add2~6_combout\ $ (\Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~20_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X20_Y26_N14
\Add3~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\Add3~9\ & (\Add2~8_combout\ $ ((!\Add2~20_combout\)))) # (!\Add3~9\ & ((\Add2~8_combout\ $ (\Add2~20_combout\)) # (GND)))
-- \Add3~11\ = CARRY((\Add2~8_combout\ $ (!\Add2~20_combout\)) # (!\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Add2~20_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X20_Y26_N16
\Add3~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\Add3~11\ & ((\Add2~10_combout\ $ (\Add2~20_combout\)))) # (!\Add3~11\ & (\Add2~10_combout\ $ (\Add2~20_combout\ $ (VCC))))
-- \Add3~13\ = CARRY((!\Add3~11\ & (\Add2~10_combout\ $ (\Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Add2~20_combout\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X20_Y26_N18
\Add3~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\Add3~13\ & (\Add2~20_combout\ $ ((!\Add2~12_combout\)))) # (!\Add3~13\ & ((\Add2~20_combout\ $ (\Add2~12_combout\)) # (GND)))
-- \Add3~15\ = CARRY((\Add2~20_combout\ $ (!\Add2~12_combout\)) # (!\Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datab => \Add2~12_combout\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X20_Y26_N20
\Add3~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (\Add3~15\ & ((\Add2~14_combout\ $ (\Add2~20_combout\)))) # (!\Add3~15\ & (\Add2~14_combout\ $ (\Add2~20_combout\ $ (VCC))))
-- \Add3~17\ = CARRY((!\Add3~15\ & (\Add2~14_combout\ $ (\Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => \Add2~20_combout\,
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X20_Y26_N22
\Add3~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (\Add3~17\ & (\Add2~16_combout\ $ ((!\Add2~20_combout\)))) # (!\Add3~17\ & ((\Add2~16_combout\ $ (\Add2~20_combout\)) # (GND)))
-- \Add3~19\ = CARRY((\Add2~16_combout\ $ (!\Add2~20_combout\)) # (!\Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \Add2~20_combout\,
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X20_Y26_N24
\Add3~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (\Add3~19\ & ((\Add2~18_combout\ $ (\Add2~20_combout\)))) # (!\Add3~19\ & (\Add2~18_combout\ $ (\Add2~20_combout\ $ (VCC))))
-- \Add3~21\ = CARRY((!\Add3~19\ & (\Add2~18_combout\ $ (\Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => \Add2~20_combout\,
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X20_Y26_N26
\Add3~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = \Add3~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add3~21\,
	combout => \Add3~22_combout\);

-- Location: LCCOMB_X20_Y26_N28
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add3~22_combout\ & (!\Add3~16_combout\ & (!\Add3~18_combout\ & !\Add3~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~22_combout\,
	datab => \Add3~16_combout\,
	datac => \Add3~18_combout\,
	datad => \Add3~20_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X20_Y26_N2
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Add3~8_combout\ & (!\Add3~14_combout\ & (!\Add3~10_combout\ & !\Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Add3~14_combout\,
	datac => \Add3~10_combout\,
	datad => \Add3~12_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X20_Y26_N0
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\Add3~2_combout\ & (!\Add3~4_combout\ & (!\Add3~0_combout\ & \Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add3~4_combout\,
	datac => \Add3~0_combout\,
	datad => \Add3~6_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X20_Y26_N30
\signal_sortie~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_sortie~1_combout\ = (\Add2~20_combout\ & (((!\Equal0~0_combout\) # (!\Equal0~1_combout\)) # (!\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Add2~20_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \signal_sortie~1_combout\);

-- Location: LCCOMB_X21_Y28_N2
\Mod0|auto_generated|divider|divider|StageOut[133]~196\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[133]~196_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[133]~196_combout\);

-- Location: LCCOMB_X20_Y28_N22
\Mod0|auto_generated|divider|divider|StageOut[133]~195\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[133]~195_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & (\Add2~0_combout\ $ (((\Add1~0_combout\ & \Add2~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add2~0_combout\,
	datac => \Add2~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[133]~195_combout\);

-- Location: LCCOMB_X21_Y27_N18
\Mod0|auto_generated|divider|op_2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|op_2~2_combout\ = (\Mod0|auto_generated|divider|op_2~1\ & ((\Mod0|auto_generated|divider|divider|StageOut[133]~196_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[133]~195_combout\)))) # 
-- (!\Mod0|auto_generated|divider|op_2~1\ & (((!\Mod0|auto_generated|divider|divider|StageOut[133]~196_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[133]~195_combout\)) # (GND)))
-- \Mod0|auto_generated|divider|op_2~3\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[133]~196_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[133]~195_combout\) # (!\Mod0|auto_generated|divider|op_2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[133]~196_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[133]~195_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|op_2~1\,
	combout => \Mod0|auto_generated|divider|op_2~2_combout\,
	cout => \Mod0|auto_generated|divider|op_2~3\);

-- Location: LCCOMB_X21_Y27_N2
\Mod0|auto_generated|divider|remainder[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|remainder[1]~1_combout\ = (\Add2~20_combout\ & (((\Mod0|auto_generated|divider|op_2~2_combout\)))) # (!\Add2~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[133]~196_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[133]~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[133]~196_combout\,
	datab => \Add2~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[133]~195_combout\,
	datad => \Mod0|auto_generated|divider|op_2~2_combout\,
	combout => \Mod0|auto_generated|divider|remainder[1]~1_combout\);

-- Location: LCCOMB_X21_Y27_N10
\signal_rotor.raddr_a[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor.raddr_a[1]~3_combout\ = \signal_sortie~1_combout\ $ (\Mod0|auto_generated|divider|remainder[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \signal_sortie~1_combout\,
	datad => \Mod0|auto_generated|divider|remainder[1]~1_combout\,
	combout => \signal_rotor.raddr_a[1]~3_combout\);

-- Location: LCCOMB_X21_Y28_N4
\Mod0|auto_generated|divider|divider|StageOut[135]~199\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[135]~199_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[135]~199_combout\);

-- Location: LCCOMB_X20_Y28_N28
\Mod0|auto_generated|divider|divider|StageOut[135]~236\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[135]~236_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[122]~235_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[122]~235_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[135]~236_combout\);

-- Location: LCCOMB_X19_Y27_N24
\Mod0|auto_generated|divider|divider|StageOut[134]~194\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[134]~194_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[134]~194_combout\);

-- Location: LCCOMB_X20_Y28_N30
\Mod0|auto_generated|divider|divider|StageOut[134]~243\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[134]~243_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & 
-- ((\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~10_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datac => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[134]~243_combout\);

-- Location: LCCOMB_X21_Y27_N20
\Mod0|auto_generated|divider|op_2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|op_2~4_combout\ = (\Mod0|auto_generated|divider|op_2~3\ & (!\Mod0|auto_generated|divider|divider|StageOut[134]~194_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[134]~243_combout\ & VCC))) # 
-- (!\Mod0|auto_generated|divider|op_2~3\ & ((((!\Mod0|auto_generated|divider|divider|StageOut[134]~194_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[134]~243_combout\)))))
-- \Mod0|auto_generated|divider|op_2~5\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[134]~194_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[134]~243_combout\ & !\Mod0|auto_generated|divider|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[134]~194_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[134]~243_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|op_2~3\,
	combout => \Mod0|auto_generated|divider|op_2~4_combout\,
	cout => \Mod0|auto_generated|divider|op_2~5\);

-- Location: LCCOMB_X21_Y27_N22
\Mod0|auto_generated|divider|op_2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|op_2~6_combout\ = (\Mod0|auto_generated|divider|op_2~5\ & ((\Mod0|auto_generated|divider|divider|StageOut[135]~199_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[135]~236_combout\)))) # 
-- (!\Mod0|auto_generated|divider|op_2~5\ & (((!\Mod0|auto_generated|divider|divider|StageOut[135]~199_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[135]~236_combout\)) # (GND)))
-- \Mod0|auto_generated|divider|op_2~7\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[135]~199_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[135]~236_combout\) # (!\Mod0|auto_generated|divider|op_2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[135]~199_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[135]~236_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|op_2~5\,
	combout => \Mod0|auto_generated|divider|op_2~6_combout\,
	cout => \Mod0|auto_generated|divider|op_2~7\);

-- Location: LCCOMB_X21_Y27_N12
\Mod0|auto_generated|divider|remainder[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|remainder[3]~2_combout\ = (\Add2~20_combout\ & (\Mod0|auto_generated|divider|op_2~6_combout\)) # (!\Add2~20_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[135]~199_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[135]~236_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|op_2~6_combout\,
	datab => \Add2~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[135]~199_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[135]~236_combout\,
	combout => \Mod0|auto_generated|divider|remainder[3]~2_combout\);

-- Location: LCCOMB_X21_Y27_N0
\Mod0|auto_generated|divider|remainder[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|remainder[2]~0_combout\ = (\Add2~20_combout\ & (((\Mod0|auto_generated|divider|op_2~4_combout\)))) # (!\Add2~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[134]~194_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[134]~243_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[134]~194_combout\,
	datab => \Add2~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[134]~243_combout\,
	datad => \Mod0|auto_generated|divider|op_2~4_combout\,
	combout => \Mod0|auto_generated|divider|remainder[2]~0_combout\);

-- Location: LCCOMB_X21_Y27_N30
\signal_rotor.raddr_a[3]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor.raddr_a[3]~5_combout\ = \Mod0|auto_generated|divider|remainder[3]~2_combout\ $ (((\signal_sortie~1_combout\ & ((!\Mod0|auto_generated|divider|remainder[1]~1_combout\) # (!\Mod0|auto_generated|divider|remainder[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|remainder[3]~2_combout\,
	datab => \Mod0|auto_generated|divider|remainder[2]~0_combout\,
	datac => \signal_sortie~1_combout\,
	datad => \Mod0|auto_generated|divider|remainder[1]~1_combout\,
	combout => \signal_rotor.raddr_a[3]~5_combout\);

-- Location: LCCOMB_X21_Y27_N4
\signal_rotor.raddr_a[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor.raddr_a[2]~4_combout\ = \Mod0|auto_generated|divider|remainder[2]~0_combout\ $ (((\signal_sortie~1_combout\ & \Mod0|auto_generated|divider|remainder[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|remainder[2]~0_combout\,
	datac => \signal_sortie~1_combout\,
	datad => \Mod0|auto_generated|divider|remainder[1]~1_combout\,
	combout => \signal_rotor.raddr_a[2]~4_combout\);

-- Location: LCCOMB_X21_Y27_N6
\signal_rotor.raddr_a[4]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor.raddr_a[4]~1_combout\ = (!\Mod0|auto_generated|divider|remainder[3]~2_combout\ & (\signal_sortie~1_combout\ & ((!\Mod0|auto_generated|divider|remainder[1]~1_combout\) # (!\Mod0|auto_generated|divider|remainder[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|remainder[3]~2_combout\,
	datab => \Mod0|auto_generated|divider|remainder[2]~0_combout\,
	datac => \signal_sortie~1_combout\,
	datad => \Mod0|auto_generated|divider|remainder[1]~1_combout\,
	combout => \signal_rotor.raddr_a[4]~1_combout\);

-- Location: LCCOMB_X21_Y28_N30
\Mod0|auto_generated|divider|divider|StageOut[136]~200\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[136]~200_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[136]~200_combout\);

-- Location: LCCOMB_X20_Y30_N18
\Mod0|auto_generated|divider|divider|StageOut[136]~237\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[136]~237_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[123]~234_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[123]~234_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[136]~237_combout\);

-- Location: LCCOMB_X21_Y27_N24
\Mod0|auto_generated|divider|op_2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|op_2~8_combout\ = \Mod0|auto_generated|divider|op_2~7\ $ (((\Mod0|auto_generated|divider|divider|StageOut[136]~200_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[136]~237_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[136]~200_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[136]~237_combout\,
	cin => \Mod0|auto_generated|divider|op_2~7\,
	combout => \Mod0|auto_generated|divider|op_2~8_combout\);

-- Location: LCCOMB_X21_Y28_N0
\signal_rotor.raddr_a[4]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor.raddr_a[4]~0_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & (((!\Mod0|auto_generated|divider|divider|StageOut[123]~234_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[123]~188_combout\)))) 
-- # (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[123]~234_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[123]~188_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	combout => \signal_rotor.raddr_a[4]~0_combout\);

-- Location: LCCOMB_X21_Y27_N8
\signal_rotor.raddr_a[4]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor.raddr_a[4]~2_combout\ = \signal_rotor.raddr_a[4]~1_combout\ $ (((\Add2~20_combout\ & (\Mod0|auto_generated|divider|op_2~8_combout\)) # (!\Add2~20_combout\ & ((!\signal_rotor.raddr_a[4]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor.raddr_a[4]~1_combout\,
	datab => \Mod0|auto_generated|divider|op_2~8_combout\,
	datac => \signal_rotor.raddr_a[4]~0_combout\,
	datad => \Add2~20_combout\,
	combout => \signal_rotor.raddr_a[4]~2_combout\);

-- Location: LCCOMB_X22_Y27_N18
\signal_rotor~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~8_combout\ = (\signal_rotor.raddr_a[3]~5_combout\ & (\signal_rotor.raddr_a[4]~2_combout\ & ((\signal_rotor.raddr_a[1]~3_combout\) # (\signal_rotor.raddr_a[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor.raddr_a[1]~3_combout\,
	datab => \signal_rotor.raddr_a[3]~5_combout\,
	datac => \signal_rotor.raddr_a[2]~4_combout\,
	datad => \signal_rotor.raddr_a[4]~2_combout\,
	combout => \signal_rotor~8_combout\);

-- Location: LCCOMB_X22_Y27_N8
\signal_rotor~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~20_combout\ = (!\Mod0|auto_generated|divider|remainder[0]~3_combout\ & (!\signal_rotor~8_combout\ & ((\test_bit~0_combout\) # (\test_bit~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|remainder[0]~3_combout\,
	datab => \test_bit~0_combout\,
	datac => \test_bit~1_combout\,
	datad => \signal_rotor~8_combout\,
	combout => \signal_rotor~20_combout\);

-- Location: LCCOMB_X22_Y27_N28
\signal_rotor~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~9_combout\ = (\signal_rotor.raddr_a[1]~3_combout\ & (((!\Mod0|auto_generated|divider|remainder[0]~3_combout\ & !\signal_rotor.raddr_a[3]~5_combout\)))) # (!\signal_rotor.raddr_a[1]~3_combout\ & 
-- (\Mod0|auto_generated|divider|remainder[0]~3_combout\ & ((!\signal_rotor.raddr_a[3]~5_combout\) # (!\signal_rotor.raddr_a[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor.raddr_a[1]~3_combout\,
	datab => \signal_rotor.raddr_a[2]~4_combout\,
	datac => \Mod0|auto_generated|divider|remainder[0]~3_combout\,
	datad => \signal_rotor.raddr_a[3]~5_combout\,
	combout => \signal_rotor~9_combout\);

-- Location: LCCOMB_X22_Y27_N24
test_bit : cycloneiv_lcell_comb
-- Equation(s):
-- \test_bit~combout\ = (\test_bit~1_combout\) # (\test_bit~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \test_bit~1_combout\,
	datad => \test_bit~0_combout\,
	combout => \test_bit~combout\);

-- Location: LCCOMB_X22_Y27_N30
\signal_rotor~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~10_combout\ = (\test_bit~combout\ & (\Mod0|auto_generated|divider|remainder[0]~3_combout\ $ (\signal_sortie~1_combout\ $ (\Mod0|auto_generated|divider|remainder[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|remainder[0]~3_combout\,
	datab => \test_bit~combout\,
	datac => \signal_sortie~1_combout\,
	datad => \Mod0|auto_generated|divider|remainder[1]~1_combout\,
	combout => \signal_rotor~10_combout\);

-- Location: LCCOMB_X22_Y27_N0
\signal_rotor~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~11_combout\ = (\signal_rotor.raddr_a[4]~2_combout\ & (\signal_rotor~9_combout\ & ((\test_bit~combout\)))) # (!\signal_rotor.raddr_a[4]~2_combout\ & (((\signal_rotor~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor.raddr_a[4]~2_combout\,
	datab => \signal_rotor~9_combout\,
	datac => \signal_rotor~10_combout\,
	datad => \test_bit~combout\,
	combout => \signal_rotor~11_combout\);

-- Location: LCCOMB_X21_Y27_N14
\signal_rotor~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~22_combout\ = \Mod0|auto_generated|divider|remainder[2]~0_combout\ $ (((\Mod0|auto_generated|divider|remainder[0]~3_combout\ & ((\signal_sortie~1_combout\) # (\Mod0|auto_generated|divider|remainder[1]~1_combout\))) # 
-- (!\Mod0|auto_generated|divider|remainder[0]~3_combout\ & (\signal_sortie~1_combout\ & \Mod0|auto_generated|divider|remainder[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|remainder[0]~3_combout\,
	datab => \Mod0|auto_generated|divider|remainder[2]~0_combout\,
	datac => \signal_sortie~1_combout\,
	datad => \Mod0|auto_generated|divider|remainder[1]~1_combout\,
	combout => \signal_rotor~22_combout\);

-- Location: LCCOMB_X22_Y27_N10
\signal_rotor~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~12_combout\ = (\signal_rotor~22_combout\ & (\test_bit~combout\ & ((!\signal_rotor.raddr_a[3]~5_combout\) # (!\signal_rotor.raddr_a[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor.raddr_a[4]~2_combout\,
	datab => \signal_rotor.raddr_a[3]~5_combout\,
	datac => \signal_rotor~22_combout\,
	datad => \test_bit~combout\,
	combout => \signal_rotor~12_combout\);

-- Location: LCCOMB_X22_Y27_N12
\signal_rotor~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~13_combout\ = (\signal_rotor.raddr_a[1]~3_combout\ & (\signal_rotor.raddr_a[2]~4_combout\ & (\Mod0|auto_generated|divider|remainder[0]~3_combout\ & \test_bit~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor.raddr_a[1]~3_combout\,
	datab => \signal_rotor.raddr_a[2]~4_combout\,
	datac => \Mod0|auto_generated|divider|remainder[0]~3_combout\,
	datad => \test_bit~combout\,
	combout => \signal_rotor~13_combout\);

-- Location: LCCOMB_X22_Y27_N14
\signal_rotor~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~14_combout\ = (\signal_rotor.raddr_a[1]~3_combout\ & ((\signal_rotor.raddr_a[4]~2_combout\) # ((\signal_rotor.raddr_a[2]~4_combout\ & \Mod0|auto_generated|divider|remainder[0]~3_combout\)))) # (!\signal_rotor.raddr_a[1]~3_combout\ & 
-- (\signal_rotor.raddr_a[2]~4_combout\ & ((\signal_rotor.raddr_a[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor.raddr_a[1]~3_combout\,
	datab => \signal_rotor.raddr_a[2]~4_combout\,
	datac => \Mod0|auto_generated|divider|remainder[0]~3_combout\,
	datad => \signal_rotor.raddr_a[4]~2_combout\,
	combout => \signal_rotor~14_combout\);

-- Location: LCCOMB_X22_Y27_N16
\signal_rotor~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~15_combout\ = (\signal_rotor.raddr_a[3]~5_combout\ & (((!\signal_rotor~14_combout\ & \test_bit~combout\)))) # (!\signal_rotor.raddr_a[3]~5_combout\ & (\signal_rotor~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor~13_combout\,
	datab => \signal_rotor.raddr_a[3]~5_combout\,
	datac => \signal_rotor~14_combout\,
	datad => \test_bit~combout\,
	combout => \signal_rotor~15_combout\);

-- Location: LCCOMB_X21_Y27_N28
\signal_rotor~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~16_combout\ = (\Mod0|auto_generated|divider|remainder[3]~2_combout\ & ((\signal_sortie~1_combout\) # ((!\Mod0|auto_generated|divider|remainder[2]~0_combout\ & !\Mod0|auto_generated|divider|remainder[1]~1_combout\)))) # 
-- (!\Mod0|auto_generated|divider|remainder[3]~2_combout\ & (((\Mod0|auto_generated|divider|remainder[2]~0_combout\ & \Mod0|auto_generated|divider|remainder[1]~1_combout\)) # (!\signal_sortie~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|remainder[3]~2_combout\,
	datab => \Mod0|auto_generated|divider|remainder[2]~0_combout\,
	datac => \signal_sortie~1_combout\,
	datad => \Mod0|auto_generated|divider|remainder[1]~1_combout\,
	combout => \signal_rotor~16_combout\);

-- Location: LCCOMB_X22_Y27_N26
\signal_rotor~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~17_combout\ = (\signal_rotor.raddr_a[1]~3_combout\ & (\signal_rotor.raddr_a[2]~4_combout\ & (\Mod0|auto_generated|divider|remainder[0]~3_combout\ & \signal_rotor.raddr_a[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor.raddr_a[1]~3_combout\,
	datab => \signal_rotor.raddr_a[2]~4_combout\,
	datac => \Mod0|auto_generated|divider|remainder[0]~3_combout\,
	datad => \signal_rotor.raddr_a[3]~5_combout\,
	combout => \signal_rotor~17_combout\);

-- Location: LCCOMB_X22_Y27_N20
\signal_rotor~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~18_combout\ = (\test_bit~combout\ & ((\signal_rotor.raddr_a[4]~2_combout\ & (\signal_rotor~16_combout\)) # (!\signal_rotor.raddr_a[4]~2_combout\ & ((\signal_rotor~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor.raddr_a[4]~2_combout\,
	datab => \signal_rotor~16_combout\,
	datac => \signal_rotor~17_combout\,
	datad => \test_bit~combout\,
	combout => \signal_rotor~18_combout\);

-- Location: LCCOMB_X22_Y27_N22
\signal_rotor~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~19_combout\ = (\signal_rotor.raddr_a[3]~5_combout\ & (\signal_rotor.raddr_a[4]~2_combout\ & ((\signal_rotor.raddr_a[1]~3_combout\) # (\signal_rotor.raddr_a[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor.raddr_a[1]~3_combout\,
	datab => \signal_rotor.raddr_a[3]~5_combout\,
	datac => \signal_rotor.raddr_a[2]~4_combout\,
	datad => \signal_rotor.raddr_a[4]~2_combout\,
	combout => \signal_rotor~19_combout\);

-- Location: LCCOMB_X22_Y27_N2
\signal_rotor~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~21_combout\ = (!\signal_rotor~19_combout\ & ((\test_bit~1_combout\) # (\test_bit~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor~19_combout\,
	datab => \test_bit~1_combout\,
	datad => \test_bit~0_combout\,
	combout => \signal_rotor~21_combout\);

ww_signal_sortie(0) <= \signal_sortie[0]~output_o\;

ww_signal_sortie(1) <= \signal_sortie[1]~output_o\;

ww_signal_sortie(2) <= \signal_sortie[2]~output_o\;

ww_signal_sortie(3) <= \signal_sortie[3]~output_o\;

ww_signal_sortie(4) <= \signal_sortie[4]~output_o\;

ww_signal_sortie(5) <= \signal_sortie[5]~output_o\;

ww_signal_sortie(6) <= \signal_sortie[6]~output_o\;

ww_signal_sortie(7) <= \signal_sortie[7]~output_o\;
END structure;


