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

-- DATE "05/06/2024 21:43:29"

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

ENTITY 	first_pass IS
    PORT (
	signal_entree : IN std_logic_vector(7 DOWNTO 0);
	signal_sortie : OUT std_logic_vector(7 DOWNTO 0);
	position_rotor : IN STD.STANDARD.integer range 0 TO 31
	);
END first_pass;

-- Design Ports Information
-- signal_sortie[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_sortie[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_sortie[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_sortie[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_sortie[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_sortie[5]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_sortie[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_sortie[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[1]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[6]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- signal_entree[7]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position_rotor[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position_rotor[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position_rotor[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position_rotor[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- position_rotor[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF first_pass IS
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
SIGNAL \signal_entree[7]~input_o\ : std_logic;
SIGNAL \signal_entree[6]~input_o\ : std_logic;
SIGNAL \signal_entree[5]~input_o\ : std_logic;
SIGNAL \signal_entree[4]~input_o\ : std_logic;
SIGNAL \position_rotor[4]~input_o\ : std_logic;
SIGNAL \signal_entree[3]~input_o\ : std_logic;
SIGNAL \position_rotor[3]~input_o\ : std_logic;
SIGNAL \signal_entree[2]~input_o\ : std_logic;
SIGNAL \position_rotor[2]~input_o\ : std_logic;
SIGNAL \position_rotor[1]~input_o\ : std_logic;
SIGNAL \signal_entree[1]~input_o\ : std_logic;
SIGNAL \position_rotor[0]~input_o\ : std_logic;
SIGNAL \signal_entree[0]~input_o\ : std_logic;
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
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[7]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~90_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[59]~91_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[59]~92_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[58]~94_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[58]~93_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[57]~95_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[57]~149_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[56]~96_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[56]~97_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[55]~99_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[55]~98_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[72]~150_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[72]~100_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[71]~174_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[71]~101_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[70]~102_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[70]~175_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[69]~151_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[69]~103_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[68]~104_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[68]~176_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[67]~105_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[67]~106_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[66]~107_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[66]~108_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[84]~152_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[84]~109_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[83]~110_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[83]~153_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[82]~111_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[82]~154_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[81]~155_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[81]~112_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[80]~113_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[80]~156_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[79]~157_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[79]~114_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[78]~115_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[78]~116_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[77]~117_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[77]~118_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[96]~158_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[96]~119_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[95]~159_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[95]~120_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[94]~121_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[94]~160_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[93]~122_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[93]~161_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[92]~123_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[92]~162_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[91]~124_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[91]~163_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[90]~125_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[90]~177_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[89]~127_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[89]~126_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[88]~129_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[88]~128_combout\ : std_logic;
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
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[108]~164_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[108]~130_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[107]~165_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[107]~131_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[106]~166_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[106]~132_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[105]~133_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[105]~167_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[104]~168_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[104]~134_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[103]~169_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[103]~135_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[102]~170_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[102]~136_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[101]~137_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[101]~171_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[100]~139_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[100]~138_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[99]~141_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[99]~140_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~11_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~13_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~15_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~17_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~19_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[111]~143_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[111]~144_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[110]~145_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[110]~146_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|remainder[1]~1_combout\ : std_logic;
SIGNAL \signal_sortie~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \signal_sortie~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[113]~172_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[113]~147_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[112]~142_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[112]~178_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|remainder[3]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|remainder[2]~0_combout\ : std_logic;
SIGNAL \signal_rotor.raddr_a[3]~5_combout\ : std_logic;
SIGNAL \signal_rotor.raddr_a[4]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[114]~173_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[114]~148_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~8_combout\ : std_logic;
SIGNAL \signal_rotor.raddr_a[4]~0_combout\ : std_logic;
SIGNAL \signal_rotor.raddr_a[4]~2_combout\ : std_logic;
SIGNAL \signal_rotor.raddr_a[2]~4_combout\ : std_logic;
SIGNAL \signal_rotor.raddr_a[1]~3_combout\ : std_logic;
SIGNAL \signal_rotor~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|remainder[0]~3_combout\ : std_logic;
SIGNAL \test_bit~1_combout\ : std_logic;
SIGNAL \test_bit~0_combout\ : std_logic;
SIGNAL \signal_rotor~20_combout\ : std_logic;
SIGNAL \test_bit~combout\ : std_logic;
SIGNAL \signal_rotor~9_combout\ : std_logic;
SIGNAL \signal_rotor~10_combout\ : std_logic;
SIGNAL \signal_rotor~11_combout\ : std_logic;
SIGNAL \signal_rotor~22_combout\ : std_logic;
SIGNAL \signal_rotor~12_combout\ : std_logic;
SIGNAL \signal_rotor~13_combout\ : std_logic;
SIGNAL \signal_rotor~14_combout\ : std_logic;
SIGNAL \signal_rotor~15_combout\ : std_logic;
SIGNAL \signal_rotor~17_combout\ : std_logic;
SIGNAL \signal_rotor~16_combout\ : std_logic;
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

-- Location: IOOBUF_X20_Y31_N2
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

-- Location: IOOBUF_X26_Y31_N2
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

-- Location: IOOBUF_X31_Y31_N9
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

-- Location: IOOBUF_X22_Y31_N9
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

-- Location: IOOBUF_X14_Y31_N2
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

-- Location: IOOBUF_X22_Y31_N2
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

-- Location: IOOBUF_X22_Y0_N9
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

-- Location: IOIBUF_X26_Y31_N8
\signal_entree[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(7),
	o => \signal_entree[7]~input_o\);

-- Location: IOIBUF_X29_Y31_N8
\signal_entree[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(6),
	o => \signal_entree[6]~input_o\);

-- Location: IOIBUF_X24_Y31_N8
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

-- Location: IOIBUF_X31_Y31_N1
\position_rotor[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position_rotor(4),
	o => \position_rotor[4]~input_o\);

-- Location: IOIBUF_X24_Y31_N1
\signal_entree[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(3),
	o => \signal_entree[3]~input_o\);

-- Location: IOIBUF_X29_Y31_N1
\position_rotor[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position_rotor(3),
	o => \position_rotor[3]~input_o\);

-- Location: IOIBUF_X33_Y28_N8
\signal_entree[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_signal_entree(2),
	o => \signal_entree[2]~input_o\);

-- Location: IOIBUF_X33_Y28_N1
\position_rotor[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position_rotor(2),
	o => \position_rotor[2]~input_o\);

-- Location: IOIBUF_X33_Y27_N1
\position_rotor[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position_rotor(1),
	o => \position_rotor[1]~input_o\);

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

-- Location: IOIBUF_X33_Y25_N8
\position_rotor[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_position_rotor(0),
	o => \position_rotor[0]~input_o\);

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

-- Location: LCCOMB_X25_Y28_N0
\Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\position_rotor[0]~input_o\ & (\signal_entree[0]~input_o\ $ (VCC))) # (!\position_rotor[0]~input_o\ & (\signal_entree[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\position_rotor[0]~input_o\ & \signal_entree[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \position_rotor[0]~input_o\,
	datab => \signal_entree[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X25_Y28_N2
\Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\position_rotor[1]~input_o\ & ((\signal_entree[1]~input_o\ & (\Add0~1\ & VCC)) # (!\signal_entree[1]~input_o\ & (!\Add0~1\)))) # (!\position_rotor[1]~input_o\ & ((\signal_entree[1]~input_o\ & (!\Add0~1\)) # (!\signal_entree[1]~input_o\ 
-- & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\position_rotor[1]~input_o\ & (!\signal_entree[1]~input_o\ & !\Add0~1\)) # (!\position_rotor[1]~input_o\ & ((!\Add0~1\) # (!\signal_entree[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \position_rotor[1]~input_o\,
	datab => \signal_entree[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X25_Y28_N4
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\signal_entree[2]~input_o\ $ (\position_rotor[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\signal_entree[2]~input_o\ & ((\position_rotor[2]~input_o\) # (!\Add0~3\))) # (!\signal_entree[2]~input_o\ & (\position_rotor[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[2]~input_o\,
	datab => \position_rotor[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X25_Y28_N6
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\signal_entree[3]~input_o\ & ((\position_rotor[3]~input_o\ & (\Add0~5\ & VCC)) # (!\position_rotor[3]~input_o\ & (!\Add0~5\)))) # (!\signal_entree[3]~input_o\ & ((\position_rotor[3]~input_o\ & (!\Add0~5\)) # 
-- (!\position_rotor[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\signal_entree[3]~input_o\ & (!\position_rotor[3]~input_o\ & !\Add0~5\)) # (!\signal_entree[3]~input_o\ & ((!\Add0~5\) # (!\position_rotor[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[3]~input_o\,
	datab => \position_rotor[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X25_Y28_N8
\Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\signal_entree[4]~input_o\ $ (\position_rotor[4]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\signal_entree[4]~input_o\ & ((\position_rotor[4]~input_o\) # (!\Add0~7\))) # (!\signal_entree[4]~input_o\ & (\position_rotor[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[4]~input_o\,
	datab => \position_rotor[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X25_Y28_N10
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\signal_entree[5]~input_o\ & (!\Add0~9\)) # (!\signal_entree[5]~input_o\ & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!\signal_entree[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \signal_entree[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X25_Y28_N12
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

-- Location: LCCOMB_X25_Y28_N14
\Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\signal_entree[7]~input_o\ & (!\Add0~13\)) # (!\signal_entree[7]~input_o\ & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!\signal_entree[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X25_Y28_N16
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

-- Location: LCCOMB_X24_Y28_N4
\Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \Add0~0_combout\ $ (VCC)
-- \Add1~1\ = CARRY(\Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X24_Y28_N6
\Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\Add0~2_combout\ & (\Add1~1\ & VCC)) # (!\Add0~2_combout\ & (!\Add1~1\))
-- \Add1~3\ = CARRY((!\Add0~2_combout\ & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X24_Y28_N8
\Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\Add0~4_combout\ & ((GND) # (!\Add1~3\))) # (!\Add0~4_combout\ & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((\Add0~4_combout\) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X24_Y28_N10
\Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add0~6_combout\ & (\Add1~5\ & VCC)) # (!\Add0~6_combout\ & (!\Add1~5\))
-- \Add1~7\ = CARRY((!\Add0~6_combout\ & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X24_Y28_N12
\Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Add0~8_combout\ & ((GND) # (!\Add1~7\))) # (!\Add0~8_combout\ & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((\Add0~8_combout\) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X24_Y28_N14
\Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Add0~10_combout\ & (\Add1~9\ & VCC)) # (!\Add0~10_combout\ & (!\Add1~9\))
-- \Add1~11\ = CARRY((!\Add0~10_combout\ & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X24_Y28_N16
\Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (\Add0~12_combout\ & (\Add1~11\ $ (GND))) # (!\Add0~12_combout\ & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((\Add0~12_combout\ & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X24_Y28_N18
\Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\Add0~14_combout\ & (\Add1~13\ & VCC)) # (!\Add0~14_combout\ & (!\Add1~13\))
-- \Add1~15\ = CARRY((!\Add0~14_combout\ & !\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X24_Y28_N20
\Add1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\Add0~16_combout\ & ((GND) # (!\Add1~15\))) # (!\Add0~16_combout\ & (\Add1~15\ $ (GND)))
-- \Add1~17\ = CARRY((\Add0~16_combout\) # (!\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~16_combout\,
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X24_Y28_N22
\Add1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = \Add1~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~17\,
	combout => \Add1~18_combout\);

-- Location: LCCOMB_X24_Y28_N24
\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ = (!\Add1~4_combout\ & (!\Add1~0_combout\ & (!\Add1~18_combout\ & !\Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add1~0_combout\,
	datac => \Add1~18_combout\,
	datad => \Add1~2_combout\,
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\);

-- Location: LCCOMB_X25_Y30_N8
\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ & ((\Add1~8_combout\ & (\Add1~18_combout\ & \Add1~6_combout\)) # (!\Add1~8_combout\ & (!\Add1~18_combout\ & !\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	datac => \Add1~18_combout\,
	datad => \Add1~6_combout\,
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\);

-- Location: LCCOMB_X24_Y28_N2
\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ & ((\Add1~12_combout\ & (\Add1~10_combout\ & \Add1~18_combout\)) # (!\Add1~12_combout\ & (!\Add1~10_combout\ & !\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add1~10_combout\,
	datac => \Add1~18_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\);

-- Location: LCCOMB_X23_Y28_N0
\Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ & ((\Add1~14_combout\ & (\Add1~16_combout\ & \Add1~18_combout\)) # (!\Add1~14_combout\ & (!\Add1~16_combout\ & !\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	datab => \Add1~14_combout\,
	datac => \Add1~16_combout\,
	datad => \Add1~18_combout\,
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\);

-- Location: LCCOMB_X23_Y28_N10
\Mod0|auto_generated|divider|my_abs_num|cs1a[8]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~4_combout\ = \Add1~16_combout\ $ (((\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ & (!\Add1~14_combout\)) # (!\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ & 
-- ((\Add1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	datab => \Add1~14_combout\,
	datac => \Add1~16_combout\,
	datad => \Add1~18_combout\,
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~4_combout\);

-- Location: LCCOMB_X24_Y28_N0
\Mod0|auto_generated|divider|my_abs_num|cs1a[7]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[7]~5_combout\ = \Add1~14_combout\ $ (\Add1~18_combout\ $ (\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~14_combout\,
	datac => \Add1~18_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[7]~5_combout\);

-- Location: LCCOMB_X24_Y28_N26
\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~6_combout\ = \Add1~12_combout\ $ (((\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ & (!\Add1~10_combout\)) # (!\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ & 
-- ((\Add1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add1~10_combout\,
	datac => \Add1~18_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~6_combout\);

-- Location: LCCOMB_X22_Y30_N14
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~6_combout\ $ (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY(!\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~6_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X22_Y30_N16
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[7]~5_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)) # 
-- (!\Mod0|auto_generated|divider|my_abs_num|cs1a[7]~5_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((\Mod0|auto_generated|divider|my_abs_num|cs1a[7]~5_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[7]~5_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X22_Y30_N18
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[8]~4_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & VCC)) # 
-- (!\Mod0|auto_generated|divider|my_abs_num|cs1a[8]~4_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ $ (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|my_abs_num|cs1a[8]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~4_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X22_Y30_N20
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)) # 
-- (!\Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\) # (!\Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X22_Y30_N22
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ $ (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X22_Y30_N24
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

-- Location: LCCOMB_X22_Y30_N0
\Mod0|auto_generated|divider|divider|StageOut[60]~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~90_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~90_combout\);

-- Location: LCCOMB_X22_Y30_N26
\Mod0|auto_generated|divider|divider|StageOut[59]~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[59]~91_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[59]~91_combout\);

-- Location: LCCOMB_X22_Y30_N28
\Mod0|auto_generated|divider|divider|StageOut[59]~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[59]~92_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[59]~92_combout\);

-- Location: LCCOMB_X22_Y30_N30
\Mod0|auto_generated|divider|divider|StageOut[58]~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[58]~94_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[58]~94_combout\);

-- Location: LCCOMB_X23_Y30_N0
\Mod0|auto_generated|divider|divider|StageOut[58]~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[58]~93_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|my_abs_num|cs1a[8]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[58]~93_combout\);

-- Location: LCCOMB_X23_Y30_N10
\Mod0|auto_generated|divider|divider|StageOut[57]~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[57]~95_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[57]~95_combout\);

-- Location: LCCOMB_X23_Y30_N2
\Mod0|auto_generated|divider|divider|StageOut[57]~149\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[57]~149_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Add1~14_combout\ $ (\Add1~18_combout\ $ (!\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Add1~18_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[57]~149_combout\);

-- Location: LCCOMB_X22_Y30_N8
\Mod0|auto_generated|divider|divider|StageOut[56]~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[56]~96_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[56]~96_combout\);

-- Location: LCCOMB_X22_Y30_N2
\Mod0|auto_generated|divider|divider|StageOut[56]~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[56]~97_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[56]~97_combout\);

-- Location: LCCOMB_X25_Y30_N20
\Mod0|auto_generated|divider|divider|StageOut[55]~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[55]~99_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Add1~18_combout\ $ (\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ $ (!\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Add1~18_combout\,
	datac => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	datad => \Add1~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[55]~99_combout\);

-- Location: LCCOMB_X25_Y30_N10
\Mod0|auto_generated|divider|divider|StageOut[55]~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[55]~98_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Add1~18_combout\ $ (\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ $ (!\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Add1~18_combout\,
	datac => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	datad => \Add1~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[55]~98_combout\);

-- Location: LCCOMB_X23_Y30_N12
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[55]~99_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[55]~98_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[55]~99_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[55]~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[55]~99_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[55]~98_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X23_Y30_N14
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[56]~96_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[56]~97_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[56]~96_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[56]~97_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[56]~96_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[56]~97_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[56]~96_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[56]~97_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X23_Y30_N16
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[57]~95_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[57]~149_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[57]~95_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[57]~149_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[57]~95_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[57]~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[57]~95_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[57]~149_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X23_Y30_N18
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[58]~94_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[58]~94_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[58]~93_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[58]~93_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[58]~94_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[58]~93_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[58]~94_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[58]~93_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X23_Y30_N20
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[59]~91_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[59]~92_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~91_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[59]~92_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[59]~91_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[59]~92_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[59]~91_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[59]~92_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X23_Y30_N22
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[60]~90_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & VCC)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[60]~90_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[60]~90_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[60]~90_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X23_Y30_N24
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

-- Location: LCCOMB_X22_Y30_N12
\Mod0|auto_generated|divider|divider|StageOut[72]~150\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[72]~150_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[72]~150_combout\);

-- Location: LCCOMB_X23_Y30_N4
\Mod0|auto_generated|divider|divider|StageOut[72]~100\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[72]~100_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[72]~100_combout\);

-- Location: LCCOMB_X22_Y30_N10
\Mod0|auto_generated|divider|divider|StageOut[71]~174\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[71]~174_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[71]~174_combout\);

-- Location: LCCOMB_X23_Y30_N6
\Mod0|auto_generated|divider|divider|StageOut[71]~101\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[71]~101_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[71]~101_combout\);

-- Location: LCCOMB_X24_Y30_N8
\Mod0|auto_generated|divider|divider|StageOut[70]~102\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[70]~102_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[70]~102_combout\);

-- Location: LCCOMB_X22_Y30_N4
\Mod0|auto_generated|divider|divider|StageOut[70]~175\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[70]~175_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((!\Mod0|auto_generated|divider|my_abs_num|cs1a[8]~4_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|my_abs_num|cs1a[8]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[70]~175_combout\);

-- Location: LCCOMB_X23_Y30_N26
\Mod0|auto_generated|divider|divider|StageOut[69]~151\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[69]~151_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[57]~149_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[57]~149_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[69]~151_combout\);

-- Location: LCCOMB_X24_Y30_N10
\Mod0|auto_generated|divider|divider|StageOut[69]~103\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[69]~103_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[69]~103_combout\);

-- Location: LCCOMB_X24_Y30_N12
\Mod0|auto_generated|divider|divider|StageOut[68]~104\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[68]~104_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[68]~104_combout\);

-- Location: LCCOMB_X22_Y30_N6
\Mod0|auto_generated|divider|divider|StageOut[68]~176\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[68]~176_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((!\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~6_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[68]~176_combout\);

-- Location: LCCOMB_X25_Y30_N6
\Mod0|auto_generated|divider|divider|StageOut[67]~105\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[67]~105_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Add1~18_combout\ $ (\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ $ (!\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Add1~18_combout\,
	datac => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	datad => \Add1~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[67]~105_combout\);

-- Location: LCCOMB_X23_Y30_N8
\Mod0|auto_generated|divider|divider|StageOut[67]~106\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[67]~106_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[67]~106_combout\);

-- Location: LCCOMB_X25_Y30_N24
\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~7_combout\ = \Add1~8_combout\ $ (((\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ & ((!\Add1~6_combout\))) # (!\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ & (\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	datac => \Add1~18_combout\,
	datad => \Add1~6_combout\,
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~7_combout\);

-- Location: LCCOMB_X24_Y30_N6
\Mod0|auto_generated|divider|divider|StageOut[66]~107\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[66]~107_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & !\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~7_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[66]~107_combout\);

-- Location: LCCOMB_X24_Y30_N0
\Mod0|auto_generated|divider|divider|StageOut[66]~108\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[66]~108_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & !\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~7_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[66]~108_combout\);

-- Location: LCCOMB_X24_Y30_N14
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[66]~107_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[66]~108_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[66]~107_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[66]~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[66]~107_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[66]~108_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X24_Y30_N16
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[67]~105_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[67]~106_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[67]~105_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[67]~106_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[67]~105_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[67]~106_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[67]~105_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[67]~106_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X24_Y30_N18
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[68]~104_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[68]~176_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[68]~104_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[68]~176_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[68]~104_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[68]~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[68]~104_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[68]~176_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X24_Y30_N20
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[69]~151_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[69]~151_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[69]~103_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[69]~103_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[69]~151_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[69]~103_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[69]~151_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[69]~103_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X24_Y30_N22
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[70]~102_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[70]~175_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[70]~102_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[70]~175_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[70]~102_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[70]~175_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[70]~102_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[70]~175_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X24_Y30_N24
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[71]~174_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[71]~101_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[71]~174_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[71]~101_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[71]~174_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[71]~101_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[71]~174_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[71]~101_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\);

-- Location: LCCOMB_X24_Y30_N26
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[72]~150_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[72]~100_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[72]~150_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[72]~100_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[72]~150_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[72]~100_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[72]~150_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[72]~100_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\);

-- Location: LCCOMB_X24_Y30_N28
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

-- Location: LCCOMB_X23_Y30_N28
\Mod0|auto_generated|divider|divider|StageOut[84]~152\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[84]~152_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[72]~150_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[72]~150_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[84]~152_combout\);

-- Location: LCCOMB_X26_Y30_N0
\Mod0|auto_generated|divider|divider|StageOut[84]~109\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[84]~109_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[84]~109_combout\);

-- Location: LCCOMB_X27_Y30_N8
\Mod0|auto_generated|divider|divider|StageOut[83]~110\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[83]~110_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[83]~110_combout\);

-- Location: LCCOMB_X23_Y30_N30
\Mod0|auto_generated|divider|divider|StageOut[83]~153\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[83]~153_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[71]~174_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[71]~174_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[83]~153_combout\);

-- Location: LCCOMB_X24_Y30_N2
\Mod0|auto_generated|divider|divider|StageOut[82]~111\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[82]~111_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[82]~111_combout\);

-- Location: LCCOMB_X24_Y30_N4
\Mod0|auto_generated|divider|divider|StageOut[82]~154\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[82]~154_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[70]~175_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[70]~175_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[82]~154_combout\);

-- Location: LCCOMB_X27_Y30_N6
\Mod0|auto_generated|divider|divider|StageOut[81]~155\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[81]~155_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[69]~151_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[69]~151_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[81]~155_combout\);

-- Location: LCCOMB_X27_Y30_N10
\Mod0|auto_generated|divider|divider|StageOut[81]~112\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[81]~112_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[81]~112_combout\);

-- Location: LCCOMB_X26_Y30_N26
\Mod0|auto_generated|divider|divider|StageOut[80]~113\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[80]~113_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[80]~113_combout\);

-- Location: LCCOMB_X24_Y30_N30
\Mod0|auto_generated|divider|divider|StageOut[80]~156\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[80]~156_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[68]~176_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[68]~176_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[80]~156_combout\);

-- Location: LCCOMB_X25_Y30_N0
\Mod0|auto_generated|divider|divider|StageOut[79]~157\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[79]~157_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[67]~105_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[67]~105_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[79]~157_combout\);

-- Location: LCCOMB_X25_Y30_N18
\Mod0|auto_generated|divider|divider|StageOut[79]~114\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[79]~114_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[79]~114_combout\);

-- Location: LCCOMB_X25_Y30_N12
\Mod0|auto_generated|divider|divider|StageOut[78]~115\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[78]~115_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & !\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~7_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[78]~115_combout\);

-- Location: LCCOMB_X25_Y30_N22
\Mod0|auto_generated|divider|divider|StageOut[78]~116\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[78]~116_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[78]~116_combout\);

-- Location: LCCOMB_X25_Y30_N16
\Mod0|auto_generated|divider|divider|StageOut[77]~117\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[77]~117_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\Add1~6_combout\ $ (\Add1~18_combout\ $ (!\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add1~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[77]~117_combout\);

-- Location: LCCOMB_X25_Y30_N2
\Mod0|auto_generated|divider|divider|StageOut[77]~118\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[77]~118_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\Add1~6_combout\ $ (\Add1~18_combout\ $ (!\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add1~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[77]~118_combout\);

-- Location: LCCOMB_X26_Y30_N6
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[77]~117_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[77]~118_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[77]~117_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[77]~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[77]~117_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[77]~118_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X26_Y30_N8
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[78]~115_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[78]~116_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[78]~115_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[78]~116_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[78]~115_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[78]~116_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[78]~115_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[78]~116_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X26_Y30_N10
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[79]~157_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[79]~114_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[79]~157_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[79]~114_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[79]~157_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[79]~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[79]~157_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[79]~114_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X26_Y30_N12
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[80]~113_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[80]~113_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[80]~156_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[80]~156_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[80]~113_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[80]~156_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[80]~113_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[80]~156_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\);

-- Location: LCCOMB_X26_Y30_N14
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[81]~155_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[81]~112_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[81]~155_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[81]~112_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[81]~155_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[81]~112_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[81]~155_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[81]~112_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\);

-- Location: LCCOMB_X26_Y30_N16
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[82]~111_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[82]~154_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[82]~111_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[82]~154_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[82]~111_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[82]~154_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[82]~111_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[82]~154_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\);

-- Location: LCCOMB_X26_Y30_N18
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[83]~110_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[83]~153_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[83]~110_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[83]~153_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[83]~110_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[83]~153_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[83]~110_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[83]~153_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\);

-- Location: LCCOMB_X26_Y30_N20
\Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ & (((\Mod0|auto_generated|divider|divider|StageOut[84]~152_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[84]~109_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\ & (!\Mod0|auto_generated|divider|divider|StageOut[84]~152_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[84]~109_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[84]~152_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[84]~109_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[84]~152_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[84]~109_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~15\);

-- Location: LCCOMB_X26_Y30_N22
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

-- Location: LCCOMB_X26_Y30_N24
\Mod0|auto_generated|divider|divider|StageOut[96]~158\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[96]~158_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[84]~152_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[84]~152_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[96]~158_combout\);

-- Location: LCCOMB_X25_Y28_N30
\Mod0|auto_generated|divider|divider|StageOut[96]~119\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[96]~119_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[96]~119_combout\);

-- Location: LCCOMB_X27_Y30_N16
\Mod0|auto_generated|divider|divider|StageOut[95]~159\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[95]~159_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[83]~153_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[83]~153_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[95]~159_combout\);

-- Location: LCCOMB_X27_Y30_N20
\Mod0|auto_generated|divider|divider|StageOut[95]~120\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[95]~120_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[95]~120_combout\);

-- Location: LCCOMB_X27_Y30_N22
\Mod0|auto_generated|divider|divider|StageOut[94]~121\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[94]~121_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[94]~121_combout\);

-- Location: LCCOMB_X27_Y30_N2
\Mod0|auto_generated|divider|divider|StageOut[94]~160\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[94]~160_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[82]~154_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[82]~154_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[94]~160_combout\);

-- Location: LCCOMB_X27_Y30_N0
\Mod0|auto_generated|divider|divider|StageOut[93]~122\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[93]~122_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[93]~122_combout\);

-- Location: LCCOMB_X27_Y30_N28
\Mod0|auto_generated|divider|divider|StageOut[93]~161\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[93]~161_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[81]~155_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[81]~155_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[93]~161_combout\);

-- Location: LCCOMB_X26_Y30_N28
\Mod0|auto_generated|divider|divider|StageOut[92]~123\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[92]~123_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[92]~123_combout\);

-- Location: LCCOMB_X26_Y30_N2
\Mod0|auto_generated|divider|divider|StageOut[92]~162\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[92]~162_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[80]~156_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[80]~156_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[92]~162_combout\);

-- Location: LCCOMB_X27_Y30_N18
\Mod0|auto_generated|divider|divider|StageOut[91]~124\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[91]~124_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[91]~124_combout\);

-- Location: LCCOMB_X25_Y30_N26
\Mod0|auto_generated|divider|divider|StageOut[91]~163\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[91]~163_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[79]~157_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[79]~157_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[91]~163_combout\);

-- Location: LCCOMB_X25_Y30_N28
\Mod0|auto_generated|divider|divider|StageOut[90]~125\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[90]~125_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[90]~125_combout\);

-- Location: LCCOMB_X25_Y30_N14
\Mod0|auto_generated|divider|divider|StageOut[90]~177\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[90]~177_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & 
-- ((!\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~7_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~7_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[90]~177_combout\);

-- Location: LCCOMB_X25_Y29_N16
\Mod0|auto_generated|divider|divider|StageOut[89]~127\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[89]~127_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[89]~127_combout\);

-- Location: LCCOMB_X25_Y30_N30
\Mod0|auto_generated|divider|divider|StageOut[89]~126\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[89]~126_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & (\Add1~6_combout\ $ (\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ $ (!\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	datac => \Add1~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[89]~126_combout\);

-- Location: LCCOMB_X24_Y28_N28
\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~8_combout\ = \Add1~4_combout\ $ (((\Add1~18_combout\) # ((!\Add1~0_combout\ & !\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add1~0_combout\,
	datac => \Add1~18_combout\,
	datad => \Add1~2_combout\,
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~8_combout\);

-- Location: LCCOMB_X25_Y29_N12
\Mod0|auto_generated|divider|divider|StageOut[88]~129\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[88]~129_combout\ = (!\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[88]~129_combout\);

-- Location: LCCOMB_X25_Y29_N18
\Mod0|auto_generated|divider|divider|StageOut[88]~128\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[88]~128_combout\ = (!\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[88]~128_combout\);

-- Location: LCCOMB_X26_Y29_N0
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[88]~129_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[88]~128_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[88]~129_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[88]~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[88]~129_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[88]~128_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X26_Y29_N2
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[89]~127_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[89]~126_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[89]~127_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[89]~126_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[89]~127_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[89]~126_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[89]~127_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[89]~126_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X26_Y29_N4
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[90]~125_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[90]~177_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[90]~125_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[90]~177_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[90]~125_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[90]~177_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[90]~125_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[90]~177_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X26_Y29_N6
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[91]~124_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[91]~124_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[91]~163_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[91]~163_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[91]~124_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[91]~163_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[91]~124_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[91]~163_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\);

-- Location: LCCOMB_X26_Y29_N8
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[92]~123_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[92]~162_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[92]~123_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[92]~162_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[92]~123_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[92]~162_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[92]~123_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[92]~162_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\);

-- Location: LCCOMB_X26_Y29_N10
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[93]~122_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[93]~161_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[93]~122_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[93]~161_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[93]~122_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[93]~161_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[93]~122_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[93]~161_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\);

-- Location: LCCOMB_X26_Y29_N12
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[94]~121_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[94]~160_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[94]~121_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[94]~160_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[94]~121_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[94]~160_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[94]~121_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[94]~160_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\);

-- Location: LCCOMB_X26_Y29_N14
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ & (((\Mod0|auto_generated|divider|divider|StageOut[95]~159_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[95]~120_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ & (!\Mod0|auto_generated|divider|divider|StageOut[95]~159_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[95]~120_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[95]~159_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[95]~120_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[95]~159_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[95]~120_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\);

-- Location: LCCOMB_X26_Y29_N16
\Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ & ((((\Mod0|auto_generated|divider|divider|StageOut[96]~158_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[96]~119_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ & ((\Mod0|auto_generated|divider|divider|StageOut[96]~158_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[96]~119_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[96]~158_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[96]~119_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[96]~158_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[96]~119_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\);

-- Location: LCCOMB_X26_Y29_N18
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

-- Location: LCCOMB_X26_Y30_N4
\Mod0|auto_generated|divider|divider|StageOut[108]~164\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[108]~164_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[96]~158_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[8]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[96]~158_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[108]~164_combout\);

-- Location: LCCOMB_X26_Y29_N28
\Mod0|auto_generated|divider|divider|StageOut[108]~130\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[108]~130_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[108]~130_combout\);

-- Location: LCCOMB_X27_Y30_N30
\Mod0|auto_generated|divider|divider|StageOut[107]~165\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[107]~165_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[95]~159_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[95]~159_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[107]~165_combout\);

-- Location: LCCOMB_X26_Y29_N30
\Mod0|auto_generated|divider|divider|StageOut[107]~131\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[107]~131_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[107]~131_combout\);

-- Location: LCCOMB_X27_Y30_N24
\Mod0|auto_generated|divider|divider|StageOut[106]~166\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[106]~166_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[94]~160_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[94]~160_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[106]~166_combout\);

-- Location: LCCOMB_X26_Y29_N24
\Mod0|auto_generated|divider|divider|StageOut[106]~132\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[106]~132_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[106]~132_combout\);

-- Location: LCCOMB_X26_Y29_N26
\Mod0|auto_generated|divider|divider|StageOut[105]~133\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[105]~133_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[105]~133_combout\);

-- Location: LCCOMB_X27_Y30_N26
\Mod0|auto_generated|divider|divider|StageOut[105]~167\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[105]~167_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[93]~161_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[93]~161_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[105]~167_combout\);

-- Location: LCCOMB_X26_Y30_N30
\Mod0|auto_generated|divider|divider|StageOut[104]~168\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[104]~168_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[92]~162_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[92]~162_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[104]~168_combout\);

-- Location: LCCOMB_X26_Y29_N20
\Mod0|auto_generated|divider|divider|StageOut[104]~134\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[104]~134_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[104]~134_combout\);

-- Location: LCCOMB_X27_Y30_N12
\Mod0|auto_generated|divider|divider|StageOut[103]~169\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[103]~169_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[91]~163_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[91]~163_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[103]~169_combout\);

-- Location: LCCOMB_X26_Y29_N22
\Mod0|auto_generated|divider|divider|StageOut[103]~135\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[103]~135_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[103]~135_combout\);

-- Location: LCCOMB_X25_Y30_N4
\Mod0|auto_generated|divider|divider|StageOut[102]~170\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[102]~170_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[90]~177_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[90]~177_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[102]~170_combout\);

-- Location: LCCOMB_X27_Y30_N4
\Mod0|auto_generated|divider|divider|StageOut[102]~136\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[102]~136_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[102]~136_combout\);

-- Location: LCCOMB_X25_Y29_N14
\Mod0|auto_generated|divider|divider|StageOut[101]~137\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[101]~137_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[101]~137_combout\);

-- Location: LCCOMB_X25_Y29_N10
\Mod0|auto_generated|divider|divider|StageOut[101]~171\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[101]~171_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[89]~126_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\ & \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[89]~126_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[101]~171_combout\);

-- Location: LCCOMB_X25_Y29_N26
\Mod0|auto_generated|divider|divider|StageOut[100]~139\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[100]~139_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[100]~139_combout\);

-- Location: LCCOMB_X25_Y29_N8
\Mod0|auto_generated|divider|divider|StageOut[100]~138\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[100]~138_combout\ = (!\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[100]~138_combout\);

-- Location: LCCOMB_X25_Y29_N30
\Mod0|auto_generated|divider|divider|StageOut[99]~141\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[99]~141_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (\Add1~2_combout\ $ (((\Add1~0_combout\ & !\Add1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add1~18_combout\,
	datac => \Add1~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[99]~141_combout\);

-- Location: LCCOMB_X25_Y29_N4
\Mod0|auto_generated|divider|divider|StageOut[99]~140\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[99]~140_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (\Add1~2_combout\ $ (((\Add1~0_combout\ & !\Add1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add1~18_combout\,
	datac => \Add1~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[99]~140_combout\);

-- Location: LCCOMB_X27_Y29_N2
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[99]~141_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[99]~140_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[99]~141_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[99]~140_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[99]~141_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[99]~140_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X27_Y29_N4
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[100]~139_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[100]~138_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[100]~139_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[100]~138_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[100]~139_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[100]~138_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[100]~139_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[100]~138_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X27_Y29_N6
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[101]~137_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[101]~171_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[101]~137_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[101]~171_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[101]~137_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[101]~171_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[101]~137_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[101]~171_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X27_Y29_N8
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[102]~170_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[102]~170_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[102]~136_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[102]~136_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[102]~170_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[102]~136_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[102]~170_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[102]~136_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\);

-- Location: LCCOMB_X27_Y29_N10
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[103]~169_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[103]~135_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[103]~169_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[103]~135_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\);

-- Location: LCCOMB_X27_Y29_N12
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~11_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[104]~168_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[104]~134_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[104]~168_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[104]~134_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~11_cout\);

-- Location: LCCOMB_X27_Y29_N14
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~13_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[105]~133_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[105]~167_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[105]~133_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[105]~167_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[6]~11_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~13_cout\);

-- Location: LCCOMB_X27_Y29_N16
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~15_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[106]~166_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[106]~132_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[106]~166_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[106]~132_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[7]~13_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~15_cout\);

-- Location: LCCOMB_X27_Y29_N18
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~17_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[107]~165_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[107]~131_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[107]~165_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[107]~131_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[8]~15_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~17_cout\);

-- Location: LCCOMB_X27_Y29_N20
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~19_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[108]~164_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[108]~130_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[108]~164_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[108]~130_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[9]~17_cout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~19_cout\);

-- Location: LCCOMB_X27_Y29_N22
\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ = \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~19_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[10]~19_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\);

-- Location: LCCOMB_X25_Y29_N24
\Mod0|auto_generated|divider|divider|StageOut[111]~143\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[111]~143_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (\Add1~2_combout\ $ (((\Add1~0_combout\ & !\Add1~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add1~18_combout\,
	datac => \Add1~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[111]~143_combout\);

-- Location: LCCOMB_X29_Y29_N24
\Mod0|auto_generated|divider|divider|StageOut[111]~144\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[111]~144_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[111]~144_combout\);

-- Location: LCCOMB_X25_Y29_N2
\Mod0|auto_generated|divider|divider|StageOut[110]~145\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[110]~145_combout\ = (\Add1~0_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[110]~145_combout\);

-- Location: LCCOMB_X25_Y29_N28
\Mod0|auto_generated|divider|divider|StageOut[110]~146\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[110]~146_combout\ = (\Add1~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[110]~146_combout\);

-- Location: LCCOMB_X24_Y29_N12
\Mod0|auto_generated|divider|op_2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|op_2~0_combout\ = (((!\Mod0|auto_generated|divider|divider|StageOut[110]~145_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[110]~146_combout\)))
-- \Mod0|auto_generated|divider|op_2~1\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[110]~145_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[110]~146_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[110]~145_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[110]~146_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|op_2~0_combout\,
	cout => \Mod0|auto_generated|divider|op_2~1\);

-- Location: LCCOMB_X24_Y29_N14
\Mod0|auto_generated|divider|op_2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|op_2~2_combout\ = (\Mod0|auto_generated|divider|op_2~1\ & ((\Mod0|auto_generated|divider|divider|StageOut[111]~144_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[111]~143_combout\)))) # 
-- (!\Mod0|auto_generated|divider|op_2~1\ & (((!\Mod0|auto_generated|divider|divider|StageOut[111]~144_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[111]~143_combout\)) # (GND)))
-- \Mod0|auto_generated|divider|op_2~3\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[111]~144_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[111]~143_combout\) # (!\Mod0|auto_generated|divider|op_2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[111]~144_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[111]~143_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|op_2~1\,
	combout => \Mod0|auto_generated|divider|op_2~2_combout\,
	cout => \Mod0|auto_generated|divider|op_2~3\);

-- Location: LCCOMB_X24_Y29_N10
\Mod0|auto_generated|divider|remainder[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|remainder[1]~1_combout\ = (\Add1~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[111]~143_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[111]~144_combout\)))) # (!\Add1~18_combout\ & 
-- (((\Mod0|auto_generated|divider|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[111]~143_combout\,
	datac => \Mod0|auto_generated|divider|op_2~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[111]~144_combout\,
	combout => \Mod0|auto_generated|divider|remainder[1]~1_combout\);

-- Location: LCCOMB_X25_Y29_N22
\signal_sortie~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_sortie~0_combout\ = \Add1~0_combout\ $ (\Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datad => \Add1~18_combout\,
	combout => \signal_sortie~0_combout\);

-- Location: LCCOMB_X23_Y28_N12
\Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\signal_sortie~0_combout\ & (!\Add1~18_combout\ & VCC)) # (!\signal_sortie~0_combout\ & (\Add1~18_combout\ $ (GND)))
-- \Add2~1\ = CARRY((!\signal_sortie~0_combout\ & !\Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_sortie~0_combout\,
	datab => \Add1~18_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X23_Y28_N14
\Add2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add2~1\ & (\Add1~2_combout\ $ ((\Add1~18_combout\)))) # (!\Add2~1\ & ((\Add1~2_combout\ $ (!\Add1~18_combout\)) # (GND)))
-- \Add2~3\ = CARRY((\Add1~2_combout\ $ (\Add1~18_combout\)) # (!\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~18_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X23_Y28_N16
\Add2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\Add2~3\ & ((\Add1~4_combout\ $ (!\Add1~18_combout\)))) # (!\Add2~3\ & (\Add1~4_combout\ $ (\Add1~18_combout\ $ (GND))))
-- \Add2~5\ = CARRY((!\Add2~3\ & (\Add1~4_combout\ $ (!\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add1~18_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X23_Y28_N18
\Add2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add2~5\ & (\Add1~6_combout\ $ ((\Add1~18_combout\)))) # (!\Add2~5\ & ((\Add1~6_combout\ $ (!\Add1~18_combout\)) # (GND)))
-- \Add2~7\ = CARRY((\Add1~6_combout\ $ (\Add1~18_combout\)) # (!\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add1~18_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X23_Y28_N20
\Add2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\Add2~7\ & ((\Add1~8_combout\ $ (!\Add1~18_combout\)))) # (!\Add2~7\ & (\Add1~8_combout\ $ (\Add1~18_combout\ $ (GND))))
-- \Add2~9\ = CARRY((!\Add2~7\ & (\Add1~8_combout\ $ (!\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Add1~18_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X23_Y28_N22
\Add2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Add2~9\ & (\Add1~10_combout\ $ ((\Add1~18_combout\)))) # (!\Add2~9\ & ((\Add1~10_combout\ $ (!\Add1~18_combout\)) # (GND)))
-- \Add2~11\ = CARRY((\Add1~10_combout\ $ (\Add1~18_combout\)) # (!\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Add1~18_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X23_Y28_N24
\Add2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\Add2~11\ & ((\Add1~12_combout\ $ (!\Add1~18_combout\)))) # (!\Add2~11\ & (\Add1~12_combout\ $ (\Add1~18_combout\ $ (GND))))
-- \Add2~13\ = CARRY((!\Add2~11\ & (\Add1~12_combout\ $ (!\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Add1~18_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X23_Y28_N26
\Add2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Add2~13\ & (\Add1~14_combout\ $ ((\Add1~18_combout\)))) # (!\Add2~13\ & ((\Add1~14_combout\ $ (!\Add1~18_combout\)) # (GND)))
-- \Add2~15\ = CARRY((\Add1~14_combout\ $ (\Add1~18_combout\)) # (!\Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \Add1~18_combout\,
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X23_Y28_N6
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add2~14_combout\ & (!\Add2~12_combout\ & (!\Add2~10_combout\ & \Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => \Add2~12_combout\,
	datac => \Add2~10_combout\,
	datad => \Add2~8_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X23_Y28_N28
\Add2~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (\Add2~15\ & ((\Add1~16_combout\ $ (!\Add1~18_combout\)))) # (!\Add2~15\ & (\Add1~16_combout\ $ (\Add1~18_combout\ $ (GND))))
-- \Add2~17\ = CARRY((!\Add2~15\ & (\Add1~16_combout\ $ (!\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \Add1~18_combout\,
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X23_Y28_N30
\Add2~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = \Add2~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add2~17\,
	combout => \Add2~18_combout\);

-- Location: LCCOMB_X23_Y28_N8
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add2~18_combout\ & !\Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~18_combout\,
	datad => \Add2~16_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X23_Y28_N4
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add2~0_combout\ & (\Add2~6_combout\ & (\Add2~2_combout\ & !\Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add2~6_combout\,
	datac => \Add2~2_combout\,
	datad => \Add2~4_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X23_Y28_N2
\signal_sortie~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_sortie~1_combout\ = (\Add1~18_combout\) # ((\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Add1~18_combout\,
	combout => \signal_sortie~1_combout\);

-- Location: LCCOMB_X25_Y29_N20
\Mod0|auto_generated|divider|divider|StageOut[113]~172\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[113]~172_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[101]~171_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[101]~171_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[113]~172_combout\);

-- Location: LCCOMB_X27_Y29_N26
\Mod0|auto_generated|divider|divider|StageOut[113]~147\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[113]~147_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[113]~147_combout\);

-- Location: LCCOMB_X27_Y29_N0
\Mod0|auto_generated|divider|divider|StageOut[112]~142\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[112]~142_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[112]~142_combout\);

-- Location: LCCOMB_X25_Y29_N6
\Mod0|auto_generated|divider|divider|StageOut[112]~178\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[112]~178_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & 
-- (!\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~8_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[112]~178_combout\);

-- Location: LCCOMB_X24_Y29_N16
\Mod0|auto_generated|divider|op_2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|op_2~4_combout\ = (\Mod0|auto_generated|divider|op_2~3\ & (!\Mod0|auto_generated|divider|divider|StageOut[112]~142_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[112]~178_combout\ & VCC))) # 
-- (!\Mod0|auto_generated|divider|op_2~3\ & ((((!\Mod0|auto_generated|divider|divider|StageOut[112]~142_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[112]~178_combout\)))))
-- \Mod0|auto_generated|divider|op_2~5\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[112]~142_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[112]~178_combout\ & !\Mod0|auto_generated|divider|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[112]~142_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[112]~178_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|op_2~3\,
	combout => \Mod0|auto_generated|divider|op_2~4_combout\,
	cout => \Mod0|auto_generated|divider|op_2~5\);

-- Location: LCCOMB_X24_Y29_N18
\Mod0|auto_generated|divider|op_2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|op_2~6_combout\ = (\Mod0|auto_generated|divider|op_2~5\ & ((\Mod0|auto_generated|divider|divider|StageOut[113]~172_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[113]~147_combout\)))) # 
-- (!\Mod0|auto_generated|divider|op_2~5\ & (((!\Mod0|auto_generated|divider|divider|StageOut[113]~172_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[113]~147_combout\)) # (GND)))
-- \Mod0|auto_generated|divider|op_2~7\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[113]~172_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[113]~147_combout\) # (!\Mod0|auto_generated|divider|op_2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[113]~172_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[113]~147_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|op_2~5\,
	combout => \Mod0|auto_generated|divider|op_2~6_combout\,
	cout => \Mod0|auto_generated|divider|op_2~7\);

-- Location: LCCOMB_X24_Y29_N28
\Mod0|auto_generated|divider|remainder[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|remainder[3]~2_combout\ = (\Add1~18_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[113]~172_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[113]~147_combout\)))) # (!\Add1~18_combout\ & 
-- (((\Mod0|auto_generated|divider|op_2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[113]~172_combout\,
	datab => \Mod0|auto_generated|divider|op_2~6_combout\,
	datac => \Add1~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[113]~147_combout\,
	combout => \Mod0|auto_generated|divider|remainder[3]~2_combout\);

-- Location: LCCOMB_X24_Y29_N0
\Mod0|auto_generated|divider|remainder[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|remainder[2]~0_combout\ = (\Add1~18_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[112]~142_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[112]~178_combout\)))) # (!\Add1~18_combout\ & 
-- (\Mod0|auto_generated|divider|op_2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => \Mod0|auto_generated|divider|op_2~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[112]~142_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[112]~178_combout\,
	combout => \Mod0|auto_generated|divider|remainder[2]~0_combout\);

-- Location: LCCOMB_X24_Y29_N6
\signal_rotor.raddr_a[3]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor.raddr_a[3]~5_combout\ = \Mod0|auto_generated|divider|remainder[3]~2_combout\ $ (((!\signal_sortie~1_combout\ & ((!\Mod0|auto_generated|divider|remainder[2]~0_combout\) # (!\Mod0|auto_generated|divider|remainder[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|remainder[1]~1_combout\,
	datab => \signal_sortie~1_combout\,
	datac => \Mod0|auto_generated|divider|remainder[3]~2_combout\,
	datad => \Mod0|auto_generated|divider|remainder[2]~0_combout\,
	combout => \signal_rotor.raddr_a[3]~5_combout\);

-- Location: LCCOMB_X24_Y29_N22
\signal_rotor.raddr_a[4]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor.raddr_a[4]~1_combout\ = (!\signal_sortie~1_combout\ & (!\Mod0|auto_generated|divider|remainder[3]~2_combout\ & ((!\Mod0|auto_generated|divider|remainder[2]~0_combout\) # (!\Mod0|auto_generated|divider|remainder[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|remainder[1]~1_combout\,
	datab => \signal_sortie~1_combout\,
	datac => \Mod0|auto_generated|divider|remainder[3]~2_combout\,
	datad => \Mod0|auto_generated|divider|remainder[2]~0_combout\,
	combout => \signal_rotor.raddr_a[4]~1_combout\);

-- Location: LCCOMB_X27_Y29_N30
\Mod0|auto_generated|divider|divider|StageOut[114]~173\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[114]~173_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[102]~170_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[102]~170_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[114]~173_combout\);

-- Location: LCCOMB_X27_Y29_N28
\Mod0|auto_generated|divider|divider|StageOut[114]~148\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[114]~148_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[114]~148_combout\);

-- Location: LCCOMB_X24_Y29_N20
\Mod0|auto_generated|divider|op_2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|op_2~8_combout\ = \Mod0|auto_generated|divider|op_2~7\ $ (((\Mod0|auto_generated|divider|divider|StageOut[114]~173_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[114]~148_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[114]~173_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[114]~148_combout\,
	cin => \Mod0|auto_generated|divider|op_2~7\,
	combout => \Mod0|auto_generated|divider|op_2~8_combout\);

-- Location: LCCOMB_X27_Y29_N24
\signal_rotor.raddr_a[4]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor.raddr_a[4]~0_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[102]~170_combout\ & ((!\Mod0|auto_generated|divider|divider|StageOut[102]~136_combout\)))) 
-- # (!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[102]~170_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[102]~136_combout\,
	combout => \signal_rotor.raddr_a[4]~0_combout\);

-- Location: LCCOMB_X24_Y29_N24
\signal_rotor.raddr_a[4]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor.raddr_a[4]~2_combout\ = \signal_rotor.raddr_a[4]~1_combout\ $ (((\Add1~18_combout\ & ((!\signal_rotor.raddr_a[4]~0_combout\))) # (!\Add1~18_combout\ & (\Mod0|auto_generated|divider|op_2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor.raddr_a[4]~1_combout\,
	datab => \Mod0|auto_generated|divider|op_2~8_combout\,
	datac => \Add1~18_combout\,
	datad => \signal_rotor.raddr_a[4]~0_combout\,
	combout => \signal_rotor.raddr_a[4]~2_combout\);

-- Location: LCCOMB_X23_Y29_N10
\signal_rotor.raddr_a[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor.raddr_a[2]~4_combout\ = \Mod0|auto_generated|divider|remainder[2]~0_combout\ $ (((!\signal_sortie~1_combout\ & \Mod0|auto_generated|divider|remainder[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|remainder[2]~0_combout\,
	datab => \signal_sortie~1_combout\,
	datac => \Mod0|auto_generated|divider|remainder[1]~1_combout\,
	combout => \signal_rotor.raddr_a[2]~4_combout\);

-- Location: LCCOMB_X24_Y29_N2
\signal_rotor.raddr_a[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor.raddr_a[1]~3_combout\ = \signal_sortie~1_combout\ $ (\Mod0|auto_generated|divider|remainder[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \signal_sortie~1_combout\,
	datad => \Mod0|auto_generated|divider|remainder[1]~1_combout\,
	combout => \signal_rotor.raddr_a[1]~3_combout\);

-- Location: LCCOMB_X23_Y29_N12
\signal_rotor~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~8_combout\ = (\signal_rotor.raddr_a[3]~5_combout\ & (\signal_rotor.raddr_a[4]~2_combout\ & ((\signal_rotor.raddr_a[2]~4_combout\) # (!\signal_rotor.raddr_a[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor.raddr_a[3]~5_combout\,
	datab => \signal_rotor.raddr_a[4]~2_combout\,
	datac => \signal_rotor.raddr_a[2]~4_combout\,
	datad => \signal_rotor.raddr_a[1]~3_combout\,
	combout => \signal_rotor~8_combout\);

-- Location: LCCOMB_X25_Y29_N0
\Mod0|auto_generated|divider|remainder[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|remainder[0]~3_combout\ = (\Add1~18_combout\ & (\Add1~0_combout\)) # (!\Add1~18_combout\ & ((\Mod0|auto_generated|divider|op_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \Add1~18_combout\,
	datad => \Mod0|auto_generated|divider|op_2~0_combout\,
	combout => \Mod0|auto_generated|divider|remainder[0]~3_combout\);

-- Location: LCCOMB_X25_Y28_N20
\test_bit~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \test_bit~1_combout\ = (\signal_entree[6]~input_o\) # ((\signal_entree[5]~input_o\) # ((\signal_entree[7]~input_o\) # (\signal_entree[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[6]~input_o\,
	datab => \signal_entree[5]~input_o\,
	datac => \signal_entree[7]~input_o\,
	datad => \signal_entree[4]~input_o\,
	combout => \test_bit~1_combout\);

-- Location: LCCOMB_X25_Y28_N26
\test_bit~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \test_bit~0_combout\ = (\signal_entree[2]~input_o\) # ((\signal_entree[0]~input_o\) # ((\signal_entree[3]~input_o\) # (\signal_entree[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_entree[2]~input_o\,
	datab => \signal_entree[0]~input_o\,
	datac => \signal_entree[3]~input_o\,
	datad => \signal_entree[1]~input_o\,
	combout => \test_bit~0_combout\);

-- Location: LCCOMB_X23_Y29_N18
\signal_rotor~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~20_combout\ = (!\signal_rotor~8_combout\ & (!\Mod0|auto_generated|divider|remainder[0]~3_combout\ & ((\test_bit~1_combout\) # (\test_bit~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor~8_combout\,
	datab => \Mod0|auto_generated|divider|remainder[0]~3_combout\,
	datac => \test_bit~1_combout\,
	datad => \test_bit~0_combout\,
	combout => \signal_rotor~20_combout\);

-- Location: LCCOMB_X23_Y29_N8
test_bit : cycloneiv_lcell_comb
-- Equation(s):
-- \test_bit~combout\ = (\test_bit~1_combout\) # (\test_bit~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \test_bit~1_combout\,
	datad => \test_bit~0_combout\,
	combout => \test_bit~combout\);

-- Location: LCCOMB_X23_Y29_N30
\signal_rotor~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~9_combout\ = (\test_bit~combout\ & (\Mod0|auto_generated|divider|remainder[0]~3_combout\ $ (\Mod0|auto_generated|divider|remainder[1]~1_combout\ $ (!\signal_sortie~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \test_bit~combout\,
	datab => \Mod0|auto_generated|divider|remainder[0]~3_combout\,
	datac => \Mod0|auto_generated|divider|remainder[1]~1_combout\,
	datad => \signal_sortie~1_combout\,
	combout => \signal_rotor~9_combout\);

-- Location: LCCOMB_X23_Y29_N24
\signal_rotor~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~10_combout\ = (\signal_rotor.raddr_a[3]~5_combout\ & ((\signal_rotor.raddr_a[2]~4_combout\) # ((!\signal_rotor.raddr_a[1]~3_combout\) # (!\Mod0|auto_generated|divider|remainder[0]~3_combout\)))) # (!\signal_rotor.raddr_a[3]~5_combout\ & 
-- ((\Mod0|auto_generated|divider|remainder[0]~3_combout\ $ (\signal_rotor.raddr_a[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor.raddr_a[3]~5_combout\,
	datab => \signal_rotor.raddr_a[2]~4_combout\,
	datac => \Mod0|auto_generated|divider|remainder[0]~3_combout\,
	datad => \signal_rotor.raddr_a[1]~3_combout\,
	combout => \signal_rotor~10_combout\);

-- Location: LCCOMB_X23_Y29_N26
\signal_rotor~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~11_combout\ = (\signal_rotor.raddr_a[4]~2_combout\ & (((!\signal_rotor~10_combout\ & \test_bit~combout\)))) # (!\signal_rotor.raddr_a[4]~2_combout\ & (\signal_rotor~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor~9_combout\,
	datab => \signal_rotor~10_combout\,
	datac => \test_bit~combout\,
	datad => \signal_rotor.raddr_a[4]~2_combout\,
	combout => \signal_rotor~11_combout\);

-- Location: LCCOMB_X23_Y29_N22
\signal_rotor~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~22_combout\ = \Mod0|auto_generated|divider|remainder[2]~0_combout\ $ (((\Mod0|auto_generated|divider|remainder[1]~1_combout\ & ((\Mod0|auto_generated|divider|remainder[0]~3_combout\) # (!\signal_sortie~1_combout\))) # 
-- (!\Mod0|auto_generated|divider|remainder[1]~1_combout\ & (\Mod0|auto_generated|divider|remainder[0]~3_combout\ & !\signal_sortie~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|remainder[2]~0_combout\,
	datab => \Mod0|auto_generated|divider|remainder[1]~1_combout\,
	datac => \Mod0|auto_generated|divider|remainder[0]~3_combout\,
	datad => \signal_sortie~1_combout\,
	combout => \signal_rotor~22_combout\);

-- Location: LCCOMB_X23_Y29_N4
\signal_rotor~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~12_combout\ = (\signal_rotor~22_combout\ & (\test_bit~combout\ & ((!\signal_rotor.raddr_a[3]~5_combout\) # (!\signal_rotor.raddr_a[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor~22_combout\,
	datab => \signal_rotor.raddr_a[4]~2_combout\,
	datac => \test_bit~combout\,
	datad => \signal_rotor.raddr_a[3]~5_combout\,
	combout => \signal_rotor~12_combout\);

-- Location: LCCOMB_X23_Y29_N6
\signal_rotor~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~13_combout\ = (\signal_rotor.raddr_a[2]~4_combout\ & (\Mod0|auto_generated|divider|remainder[0]~3_combout\ & (\test_bit~combout\ & !\signal_rotor.raddr_a[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor.raddr_a[2]~4_combout\,
	datab => \Mod0|auto_generated|divider|remainder[0]~3_combout\,
	datac => \test_bit~combout\,
	datad => \signal_rotor.raddr_a[1]~3_combout\,
	combout => \signal_rotor~13_combout\);

-- Location: LCCOMB_X23_Y29_N16
\signal_rotor~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~14_combout\ = (\signal_rotor.raddr_a[2]~4_combout\ & ((\signal_rotor.raddr_a[4]~2_combout\) # ((\Mod0|auto_generated|divider|remainder[0]~3_combout\ & !\signal_rotor.raddr_a[1]~3_combout\)))) # (!\signal_rotor.raddr_a[2]~4_combout\ & 
-- (\signal_rotor.raddr_a[4]~2_combout\ & ((!\signal_rotor.raddr_a[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor.raddr_a[2]~4_combout\,
	datab => \signal_rotor.raddr_a[4]~2_combout\,
	datac => \Mod0|auto_generated|divider|remainder[0]~3_combout\,
	datad => \signal_rotor.raddr_a[1]~3_combout\,
	combout => \signal_rotor~14_combout\);

-- Location: LCCOMB_X23_Y29_N2
\signal_rotor~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~15_combout\ = (\signal_rotor.raddr_a[3]~5_combout\ & (((!\signal_rotor~14_combout\ & \test_bit~combout\)))) # (!\signal_rotor.raddr_a[3]~5_combout\ & (\signal_rotor~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor~13_combout\,
	datab => \signal_rotor~14_combout\,
	datac => \test_bit~combout\,
	datad => \signal_rotor.raddr_a[3]~5_combout\,
	combout => \signal_rotor~15_combout\);

-- Location: LCCOMB_X23_Y29_N28
\signal_rotor~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~17_combout\ = (\signal_rotor.raddr_a[3]~5_combout\ & (\signal_rotor.raddr_a[2]~4_combout\ & (\Mod0|auto_generated|divider|remainder[0]~3_combout\ & !\signal_rotor.raddr_a[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor.raddr_a[3]~5_combout\,
	datab => \signal_rotor.raddr_a[2]~4_combout\,
	datac => \Mod0|auto_generated|divider|remainder[0]~3_combout\,
	datad => \signal_rotor.raddr_a[1]~3_combout\,
	combout => \signal_rotor~17_combout\);

-- Location: LCCOMB_X24_Y29_N8
\signal_rotor~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~16_combout\ = (\signal_sortie~1_combout\ & (((!\Mod0|auto_generated|divider|remainder[1]~1_combout\ & !\Mod0|auto_generated|divider|remainder[2]~0_combout\)) # (!\Mod0|auto_generated|divider|remainder[3]~2_combout\))) # 
-- (!\signal_sortie~1_combout\ & ((\Mod0|auto_generated|divider|remainder[3]~2_combout\) # ((\Mod0|auto_generated|divider|remainder[1]~1_combout\ & \Mod0|auto_generated|divider|remainder[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|remainder[1]~1_combout\,
	datab => \signal_sortie~1_combout\,
	datac => \Mod0|auto_generated|divider|remainder[3]~2_combout\,
	datad => \Mod0|auto_generated|divider|remainder[2]~0_combout\,
	combout => \signal_rotor~16_combout\);

-- Location: LCCOMB_X23_Y29_N14
\signal_rotor~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~18_combout\ = (\test_bit~combout\ & ((\signal_rotor.raddr_a[4]~2_combout\ & ((\signal_rotor~16_combout\))) # (!\signal_rotor.raddr_a[4]~2_combout\ & (\signal_rotor~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor~17_combout\,
	datab => \test_bit~combout\,
	datac => \signal_rotor~16_combout\,
	datad => \signal_rotor.raddr_a[4]~2_combout\,
	combout => \signal_rotor~18_combout\);

-- Location: LCCOMB_X23_Y29_N0
\signal_rotor~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~19_combout\ = (\signal_rotor.raddr_a[3]~5_combout\ & (\signal_rotor.raddr_a[4]~2_combout\ & ((\signal_rotor.raddr_a[2]~4_combout\) # (!\signal_rotor.raddr_a[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \signal_rotor.raddr_a[3]~5_combout\,
	datab => \signal_rotor.raddr_a[4]~2_combout\,
	datac => \signal_rotor.raddr_a[2]~4_combout\,
	datad => \signal_rotor.raddr_a[1]~3_combout\,
	combout => \signal_rotor~19_combout\);

-- Location: LCCOMB_X23_Y29_N20
\signal_rotor~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \signal_rotor~21_combout\ = (!\signal_rotor~19_combout\ & ((\test_bit~1_combout\) # (\test_bit~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \signal_rotor~19_combout\,
	datac => \test_bit~1_combout\,
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


