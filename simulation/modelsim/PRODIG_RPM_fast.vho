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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "09/24/2019 10:30:56"

-- 
-- Device: Altera EP2C70F896C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PRODIG_RPM IS
    PORT (
	CLOCK_50 : IN std_logic;
	clock1 : OUT std_logic;
	areset : IN std_logic;
	hall_sens : IN std_logic;
	HEX0_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX1_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX2_D : OUT std_logic_vector(6 DOWNTO 0);
	led : OUT std_logic;
	led2 : OUT std_logic;
	tix_mem1 : OUT std_logic_vector(15 DOWNTO 0);
	HEX3_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX4_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX5_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX6_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX7_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX0_DP : OUT std_logic;
	HEX1_DP : OUT std_logic;
	HEX2_DP : OUT std_logic;
	HEX3_DP : OUT std_logic;
	HEX4_DP : OUT std_logic;
	HEX5_DP : OUT std_logic;
	HEX6_DP : OUT std_logic;
	HEX7_DP : OUT std_logic
	);
END PRODIG_RPM;

-- Design Ports Information
-- clock1	=>  Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0_D[0]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0_D[1]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0_D[2]	=>  Location: PIN_AH9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0_D[3]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0_D[4]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0_D[5]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0_D[6]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1_D[0]	=>  Location: PIN_AG13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1_D[1]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1_D[2]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1_D[3]	=>  Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1_D[4]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1_D[5]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1_D[6]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2_D[0]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2_D[1]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2_D[2]	=>  Location: PIN_AH5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2_D[3]	=>  Location: PIN_AG4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2_D[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2_D[5]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2_D[6]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led	=>  Location: PIN_W27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led2	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem1[0]	=>  Location: PIN_AK9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem1[1]	=>  Location: PIN_AG9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem1[2]	=>  Location: PIN_AF11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem1[3]	=>  Location: PIN_AJ7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem1[4]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem1[5]	=>  Location: PIN_AH10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem1[6]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem1[7]	=>  Location: PIN_AK8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem1[8]	=>  Location: PIN_AG10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem1[9]	=>  Location: PIN_AK7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem1[10]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem1[11]	=>  Location: PIN_AJ8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem1[12]	=>  Location: PIN_AK6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem1[13]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem1[14]	=>  Location: PIN_AD9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem1[15]	=>  Location: PIN_AJ6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_D[0]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_D[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_D[2]	=>  Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_D[3]	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_D[4]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_D[5]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_D[6]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_D[0]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_D[1]	=>  Location: PIN_AF29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_D[2]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_D[3]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_D[4]	=>  Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_D[5]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_D[6]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_D[0]	=>  Location: PIN_N28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_D[1]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_D[2]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_D[3]	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_D[4]	=>  Location: PIN_U30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_D[5]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_D[6]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_D[0]	=>  Location: PIN_AH27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_D[1]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_D[2]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_D[3]	=>  Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_D[4]	=>  Location: PIN_AE24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_D[5]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_D[6]	=>  Location: PIN_AK10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_D[0]	=>  Location: PIN_AG6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_D[1]	=>  Location: PIN_AF30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_D[2]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_D[3]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_D[4]	=>  Location: PIN_AJ21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_D[5]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_D[6]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0_DP	=>  Location: PIN_AF12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1_DP	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2_DP	=>  Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_DP	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_DP	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_DP	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_DP	=>  Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_DP	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hall_sens	=>  Location: PIN_G30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- areset	=>  Location: PIN_U29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF PRODIG_RPM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_clock1 : std_logic;
SIGNAL ww_areset : std_logic;
SIGNAL ww_hall_sens : std_logic;
SIGNAL ww_HEX0_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL ww_tix_mem1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_HEX3_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0_DP : std_logic;
SIGNAL ww_HEX1_DP : std_logic;
SIGNAL ww_HEX2_DP : std_logic;
SIGNAL ww_HEX3_DP : std_logic;
SIGNAL ww_HEX4_DP : std_logic;
SIGNAL ww_HEX5_DP : std_logic;
SIGNAL ww_HEX6_DP : std_logic;
SIGNAL ww_HEX7_DP : std_logic;
SIGNAL \u1|clkint~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~28_combout\ : std_logic;
SIGNAL \u1|Add0~8_combout\ : std_logic;
SIGNAL \u1|Add0~16_combout\ : std_logic;
SIGNAL \u0|Add1~0_combout\ : std_logic;
SIGNAL \u0|Add1~6_combout\ : std_logic;
SIGNAL \u0|Add1~8_combout\ : std_logic;
SIGNAL \u0|Add1~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[34]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[69]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[70]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[87]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[86]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[90]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[88]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[104]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[103]~32_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[120]~39_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[126]~41_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[138]~47_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[143]~51_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[161]~60_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[160]~61_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[172]~67_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[171]~68_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[190]~77_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[189]~78_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[197]~81_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[212]~84_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[211]~85_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[215]~93_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[230]~96_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[229]~97_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[222]~104_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[234]~105_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[233]~106_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[248]~109_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[245]~112_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[241]~116_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[240]~117_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[265]~125_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[270]~136_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[269]~138_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[285]~140_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[284]~141_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[275]~150_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[272]~152_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[287]~153_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[303]~155_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[294]~165_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[289]~169_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[320]~171_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[316]~175_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[315]~176_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[314]~177_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[313]~178_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[312]~179_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[311]~180_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \process_0~11_combout\ : std_logic;
SIGNAL \u2|U0bcd[0]~3_combout\ : std_logic;
SIGNAL \rpm_mem[2]~3_combout\ : std_logic;
SIGNAL \u2|U3bcd[2]~2_combout\ : std_logic;
SIGNAL \u2|U5bcd[2]~1_combout\ : std_logic;
SIGNAL \u2|U6bcd[1]~2_combout\ : std_logic;
SIGNAL \u1|count~1_combout\ : std_logic;
SIGNAL \u0|LessThan0~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[304]~187_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[321]~189_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[307]~190_combout\ : std_logic;
SIGNAL \u2|U0bcd[2]~5_combout\ : std_logic;
SIGNAL \u1|clkint~clkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \u1|Add0~0_combout\ : std_logic;
SIGNAL \areset~combout\ : std_logic;
SIGNAL \u1|Add0~7\ : std_logic;
SIGNAL \u1|Add0~9\ : std_logic;
SIGNAL \u1|Add0~10_combout\ : std_logic;
SIGNAL \u1|Add0~11\ : std_logic;
SIGNAL \u1|Add0~12_combout\ : std_logic;
SIGNAL \u1|count~3_combout\ : std_logic;
SIGNAL \u1|Add0~13\ : std_logic;
SIGNAL \u1|Add0~14_combout\ : std_logic;
SIGNAL \u1|count~2_combout\ : std_logic;
SIGNAL \u1|Equal0~1_combout\ : std_logic;
SIGNAL \u1|Add0~1\ : std_logic;
SIGNAL \u1|Add0~3\ : std_logic;
SIGNAL \u1|Add0~4_combout\ : std_logic;
SIGNAL \u1|count~4_combout\ : std_logic;
SIGNAL \u1|Add0~5\ : std_logic;
SIGNAL \u1|Add0~6_combout\ : std_logic;
SIGNAL \u1|Add0~2_combout\ : std_logic;
SIGNAL \u1|Equal0~2_combout\ : std_logic;
SIGNAL \u1|Add0~15\ : std_logic;
SIGNAL \u1|Add0~17\ : std_logic;
SIGNAL \u1|Add0~18_combout\ : std_logic;
SIGNAL \u1|Add0~19\ : std_logic;
SIGNAL \u1|Add0~20_combout\ : std_logic;
SIGNAL \u1|Add0~21\ : std_logic;
SIGNAL \u1|Add0~22_combout\ : std_logic;
SIGNAL \u1|count~0_combout\ : std_logic;
SIGNAL \u1|Equal0~0_combout\ : std_logic;
SIGNAL \u1|clkint~0_combout\ : std_logic;
SIGNAL \u1|clkint~regout\ : std_logic;
SIGNAL \u0|count[0]~16_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \u0|Add1~1\ : std_logic;
SIGNAL \u0|Add1~2_combout\ : std_logic;
SIGNAL \u0|wait_time[0]~0_combout\ : std_logic;
SIGNAL \u0|wait_time[0]~8_combout\ : std_logic;
SIGNAL \u0|wait_time[6]~6_combout\ : std_logic;
SIGNAL \u0|wait_time[4]~7_combout\ : std_logic;
SIGNAL \u0|Add1~3\ : std_logic;
SIGNAL \u0|Add1~4_combout\ : std_logic;
SIGNAL \u0|Add1~5\ : std_logic;
SIGNAL \u0|Add1~7\ : std_logic;
SIGNAL \u0|Add1~9\ : std_logic;
SIGNAL \u0|Add1~10_combout\ : std_logic;
SIGNAL \u0|Equal0~1_combout\ : std_logic;
SIGNAL \u0|Equal0~2_combout\ : std_logic;
SIGNAL \u0|wait_time[10]~1_combout\ : std_logic;
SIGNAL \u0|Add1~11\ : std_logic;
SIGNAL \u0|Add1~13\ : std_logic;
SIGNAL \u0|Add1~15\ : std_logic;
SIGNAL \u0|Add1~16_combout\ : std_logic;
SIGNAL \u0|wait_time[8]~4_combout\ : std_logic;
SIGNAL \u0|Add1~14_combout\ : std_logic;
SIGNAL \u0|wait_time[7]~5_combout\ : std_logic;
SIGNAL \u0|Add1~17\ : std_logic;
SIGNAL \u0|Add1~18_combout\ : std_logic;
SIGNAL \u0|wait_time[9]~3_combout\ : std_logic;
SIGNAL \u0|Add1~19\ : std_logic;
SIGNAL \u0|Add1~20_combout\ : std_logic;
SIGNAL \u0|wait_time[10]~2_combout\ : std_logic;
SIGNAL \u0|Equal0~0_combout\ : std_logic;
SIGNAL \u0|count[9]~22_combout\ : std_logic;
SIGNAL \u0|count[10]~38_combout\ : std_logic;
SIGNAL \u0|count[5]~28_combout\ : std_logic;
SIGNAL \u0|LessThan0~2_combout\ : std_logic;
SIGNAL \u0|count[6]~30_combout\ : std_logic;
SIGNAL \u0|count[3]~24_combout\ : std_logic;
SIGNAL \u0|LessThan0~1_combout\ : std_logic;
SIGNAL \u0|LessThan0~3_combout\ : std_logic;
SIGNAL \u0|LessThan0~4_combout\ : std_logic;
SIGNAL \u0|count[9]~23_combout\ : std_logic;
SIGNAL \u0|count[0]~17\ : std_logic;
SIGNAL \u0|count[1]~18_combout\ : std_logic;
SIGNAL \u0|count[1]~19\ : std_logic;
SIGNAL \u0|count[2]~20_combout\ : std_logic;
SIGNAL \u0|count[2]~21\ : std_logic;
SIGNAL \u0|count[3]~25\ : std_logic;
SIGNAL \u0|count[4]~26_combout\ : std_logic;
SIGNAL \u0|count[4]~27\ : std_logic;
SIGNAL \u0|count[5]~29\ : std_logic;
SIGNAL \u0|count[6]~31\ : std_logic;
SIGNAL \u0|count[7]~32_combout\ : std_logic;
SIGNAL \u0|count[7]~33\ : std_logic;
SIGNAL \u0|count[8]~35\ : std_logic;
SIGNAL \u0|count[9]~36_combout\ : std_logic;
SIGNAL \u0|count[9]~37\ : std_logic;
SIGNAL \u0|count[10]~39\ : std_logic;
SIGNAL \u0|count[11]~40_combout\ : std_logic;
SIGNAL \u0|count[11]~41\ : std_logic;
SIGNAL \u0|count[12]~43\ : std_logic;
SIGNAL \u0|count[13]~44_combout\ : std_logic;
SIGNAL \u0|count[13]~45\ : std_logic;
SIGNAL \u0|count[14]~46_combout\ : std_logic;
SIGNAL \u0|count[14]~47\ : std_logic;
SIGNAL \u0|count[15]~48_combout\ : std_logic;
SIGNAL \hall_sens~combout\ : std_logic;
SIGNAL \u0|tix_mem[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[273]~15_combout\ : std_logic;
SIGNAL \u0|tix_mem[0]~1_combout\ : std_logic;
SIGNAL \u0|count[8]~34_combout\ : std_logic;
SIGNAL \u0|tix_mem[3]~feeder_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[105]~5_combout\ : std_logic;
SIGNAL \u0|count[12]~42_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[231]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[105]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[42]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[63]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_11~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[35]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_13~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[68]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[84]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[71]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[72]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_14~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[89]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[85]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[168]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[126]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[107]~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[108]~33_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[106]~35_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[105]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[125]~42_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[124]~43_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[122]~37_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[119]~40_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[136]~49_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[144]~50_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[142]~52_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[123]~36_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[141]~44_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[121]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[139]~46_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_17~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[137]~48_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[155]~57_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[154]~58_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[189]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[156]~56_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[210]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[174]~65_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[173]~66_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[192]~75_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|selnose[252]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[162]~59_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[159]~53_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[140]~45_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[158]~54_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[157]~55_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~19\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[180]~69_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[179]~70_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[178]~71_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[177]~62_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[175]~64_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~19\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~21\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[198]~80_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[195]~72_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[176]~63_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[194]~73_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[193]~74_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[191]~76_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[188]~79_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~19\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~21\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~23\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[210]~86_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[216]~92_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[196]~82_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[214]~94_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[209]~87_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[208]~88_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[207]~89_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[206]~90_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[205]~91_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~19\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~21\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~23\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~25\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[228]~98_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[227]~99_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[224]~102_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[223]~103_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[232]~107_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~19\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~21\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~23\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~25\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~27\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~29\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[246]~111_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[252]~120_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[251]~121_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[250]~122_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[247]~110_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[226]~100_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_5~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[244]~113_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[242]~115_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[239]~118_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[238]~119_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~19\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~21\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~23\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~25\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~27\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~29\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~31\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~32_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[264]~126_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[263]~127_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[262]~128_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[225]~101_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[243]~114_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[261]~129_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[260]~130_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[258]~132_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[257]~133_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[255]~135_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~19\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~21\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[270]~137_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[213]~83_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[231]~95_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[249]~108_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[267]~123_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[266]~124_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~23\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~25\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~27\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~29\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~31\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~33_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[283]~142_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[282]~143_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[281]~144_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[280]~145_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[279]~146_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[278]~147_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[259]~131_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[277]~148_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[276]~149_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[273]~185_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~19\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~21\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~23\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~25\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[287]~186_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[268]~139_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[286]~154_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~27\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~29\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~31\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~33_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[302]~157_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[301]~158_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[300]~159_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[299]~160_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[298]~161_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[297]~162_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[296]~163_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[295]~164_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[293]~166_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[291]~168_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~15\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~17\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~19\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~21\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~23\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~25\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~27\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~29\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[321]~170_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[304]~156_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~31\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~33_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[319]~172_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[318]~173_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[317]~174_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_7~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[256]~134_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[274]~151_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[292]~167_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[310]~181_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[309]~182_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[290]~188_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_9~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[308]~183_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[306]~184_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~15_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~17_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~19_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~21_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~23_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~25_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~27_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~29_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~31_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~33_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_10~34_combout\ : std_logic;
SIGNAL \process_0~17_combout\ : std_logic;
SIGNAL \process_0~16_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \process_0~18_combout\ : std_logic;
SIGNAL \process_0~12_combout\ : std_logic;
SIGNAL \process_0~13_combout\ : std_logic;
SIGNAL \rpm_mem[4]~1_combout\ : std_logic;
SIGNAL \process_0~15_combout\ : std_logic;
SIGNAL \u2|U0bcd[2]~4_combout\ : std_logic;
SIGNAL \process_0~14_combout\ : std_logic;
SIGNAL \u2|U0bcd[1]~2_combout\ : std_logic;
SIGNAL \u2|is_gt_4~0_combout\ : std_logic;
SIGNAL \u2|is_gt_4~1_combout\ : std_logic;
SIGNAL \u2|U1bcd[1]~0_combout\ : std_logic;
SIGNAL \u2|U1bcd[1]~1_combout\ : std_logic;
SIGNAL \u2|U1bcd[2]~2_combout\ : std_logic;
SIGNAL \u2|U2bcd[2]~2_combout\ : std_logic;
SIGNAL \rpm_mem[3]~2_combout\ : std_logic;
SIGNAL \u2|U1bcd[0]~3_combout\ : std_logic;
SIGNAL \u2|U2bcd[1]~1_combout\ : std_logic;
SIGNAL \u2|U2bcd[0]~0_combout\ : std_logic;
SIGNAL \u2|U3bcd[0]~0_combout\ : std_logic;
SIGNAL \u2|U3bcd[1]~1_combout\ : std_logic;
SIGNAL \rpm_mem[1]~4_combout\ : std_logic;
SIGNAL \u2|U4bcd[0]~0_combout\ : std_logic;
SIGNAL \u2|U4bcd[1]~1_combout\ : std_logic;
SIGNAL \u2|U4bcd[2]~2_combout\ : std_logic;
SIGNAL \rpm_mem[0]~0_combout\ : std_logic;
SIGNAL \u2|Mux6~0_combout\ : std_logic;
SIGNAL \u2|Mux5~0_combout\ : std_logic;
SIGNAL \u2|Mux4~0_combout\ : std_logic;
SIGNAL \u2|Mux3~0_combout\ : std_logic;
SIGNAL \u2|Mux2~0_combout\ : std_logic;
SIGNAL \u2|Mux1~0_combout\ : std_logic;
SIGNAL \u2|Mux0~0_combout\ : std_logic;
SIGNAL \u2|is_gt_4~2_combout\ : std_logic;
SIGNAL \u2|U1bcd[3]~4_combout\ : std_logic;
SIGNAL \u2|U6bcd[2]~0_combout\ : std_logic;
SIGNAL \u2|U3bcd[3]~3_combout\ : std_logic;
SIGNAL \u2|U5bcd[0]~0_combout\ : std_logic;
SIGNAL \u2|is_gt_4~3_combout\ : std_logic;
SIGNAL \u2|U6bcd[1]~3_combout\ : std_logic;
SIGNAL \u2|U6bcd[2]~4_combout\ : std_logic;
SIGNAL \u2|U4bcd[3]~3_combout\ : std_logic;
SIGNAL \u2|U6bcd[0]~1_combout\ : std_logic;
SIGNAL \u2|Mux13~0_combout\ : std_logic;
SIGNAL \u2|Mux12~0_combout\ : std_logic;
SIGNAL \u2|Mux11~0_combout\ : std_logic;
SIGNAL \u2|Mux10~0_combout\ : std_logic;
SIGNAL \u2|Mux9~0_combout\ : std_logic;
SIGNAL \u2|Mux8~0_combout\ : std_logic;
SIGNAL \u2|Mux7~0_combout\ : std_logic;
SIGNAL \u2|U2bcd[3]~3_combout\ : std_logic;
SIGNAL \u2|U6bcd[3]~5_combout\ : std_logic;
SIGNAL \u2|Mux15~6_combout\ : std_logic;
SIGNAL \u2|Mux15~7_combout\ : std_logic;
SIGNAL \u2|Mux15~8_combout\ : std_logic;
SIGNAL \u2|is_gt_4~4_combout\ : std_logic;
SIGNAL \u0|wait_time\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u1|count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(419 DOWNTO 0);
SIGNAL \u0|tix_mem\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u0|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|sel\ : std_logic_vector(335 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|StageOut\ : std_logic_vector(339 DOWNTO 0);
SIGNAL \u2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_areset~combout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux15~6_combout\ : std_logic;
SIGNAL \u2|ALT_INV_U6bcd[3]~5_combout\ : std_logic;
SIGNAL \u2|ALT_INV_is_gt_4~4_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux7~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
clock1 <= ww_clock1;
ww_areset <= areset;
ww_hall_sens <= hall_sens;
HEX0_D <= ww_HEX0_D;
HEX1_D <= ww_HEX1_D;
HEX2_D <= ww_HEX2_D;
led <= ww_led;
led2 <= ww_led2;
tix_mem1 <= ww_tix_mem1;
HEX3_D <= ww_HEX3_D;
HEX4_D <= ww_HEX4_D;
HEX5_D <= ww_HEX5_D;
HEX6_D <= ww_HEX6_D;
HEX7_D <= ww_HEX7_D;
HEX0_DP <= ww_HEX0_DP;
HEX1_DP <= ww_HEX1_DP;
HEX2_DP <= ww_HEX2_DP;
HEX3_DP <= ww_HEX3_DP;
HEX4_DP <= ww_HEX4_DP;
HEX5_DP <= ww_HEX5_DP;
HEX6_DP <= ww_HEX6_DP;
HEX7_DP <= ww_HEX7_DP;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u1|clkint~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \u1|clkint~regout\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\u2|ALT_INV_Mux0~0_combout\ <= NOT \u2|Mux0~0_combout\;
\ALT_INV_areset~combout\ <= NOT \areset~combout\;
\u2|ALT_INV_Mux15~6_combout\ <= NOT \u2|Mux15~6_combout\;
\u2|ALT_INV_U6bcd[3]~5_combout\ <= NOT \u2|U6bcd[3]~5_combout\;
\u2|ALT_INV_is_gt_4~4_combout\ <= NOT \u2|is_gt_4~4_combout\;
\u2|ALT_INV_Mux7~0_combout\ <= NOT \u2|Mux7~0_combout\;

-- Location: LCCOMB_X25_Y2_N24
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (\Div0|auto_generated|divider|divider|StageOut[34]~15_combout\ & ((GND) # (!\u0|tix_mem\(1)))) # (!\Div0|auto_generated|divider|divider|StageOut[34]~15_combout\ & (\u0|tix_mem\(1) $ 
-- (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[34]~15_combout\) # (!\u0|tix_mem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[34]~15_combout\,
	datab => \u0|tix_mem\(1),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X25_Y2_N28
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = ((\u0|tix_mem\(3) $ (\Div0|auto_generated|divider|divider|StageOut[36]~13_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\u0|tix_mem\(3) & (\Div0|auto_generated|divider|divider|StageOut[36]~13_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\)) # (!\u0|tix_mem\(3) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[36]~13_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(3),
	datab => \Div0|auto_generated|divider|divider|StageOut[36]~13_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X25_Y2_N30
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X23_Y2_N8
\Div0|auto_generated|divider|divider|op_13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_13~2_combout\ = (\u0|tix_mem\(1) & ((\Div0|auto_generated|divider|divider|StageOut\(51) & (!\Div0|auto_generated|divider|divider|op_13~1_cout\)) # (!\Div0|auto_generated|divider|divider|StageOut\(51) & 
-- ((\Div0|auto_generated|divider|divider|op_13~1_cout\) # (GND))))) # (!\u0|tix_mem\(1) & ((\Div0|auto_generated|divider|divider|StageOut\(51) & (\Div0|auto_generated|divider|divider|op_13~1_cout\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut\(51) & (!\Div0|auto_generated|divider|divider|op_13~1_cout\))))
-- \Div0|auto_generated|divider|divider|op_13~3\ = CARRY((\u0|tix_mem\(1) & ((!\Div0|auto_generated|divider|divider|op_13~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut\(51)))) # (!\u0|tix_mem\(1) & 
-- (!\Div0|auto_generated|divider|divider|StageOut\(51) & !\Div0|auto_generated|divider|divider|op_13~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(1),
	datab => \Div0|auto_generated|divider|divider|StageOut\(51),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_13~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_13~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_13~3\);

-- Location: LCCOMB_X23_Y2_N10
\Div0|auto_generated|divider|divider|op_13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_13~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[52]~18_combout\ $ (\u0|tix_mem\(2) $ (\Div0|auto_generated|divider|divider|op_13~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_13~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[52]~18_combout\ & ((!\Div0|auto_generated|divider|divider|op_13~3\) # (!\u0|tix_mem\(2)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[52]~18_combout\ & (!\u0|tix_mem\(2) & !\Div0|auto_generated|divider|divider|op_13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[52]~18_combout\,
	datab => \u0|tix_mem\(2),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_13~3\,
	combout => \Div0|auto_generated|divider|divider|op_13~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_13~5\);

-- Location: LCCOMB_X23_Y2_N12
\Div0|auto_generated|divider|divider|op_13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_13~6_combout\ = (\u0|tix_mem\(3) & ((\Div0|auto_generated|divider|divider|StageOut[53]~17_combout\ & (!\Div0|auto_generated|divider|divider|op_13~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[53]~17_combout\ & ((\Div0|auto_generated|divider|divider|op_13~5\) # (GND))))) # (!\u0|tix_mem\(3) & ((\Div0|auto_generated|divider|divider|StageOut[53]~17_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_13~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[53]~17_combout\ & (!\Div0|auto_generated|divider|divider|op_13~5\))))
-- \Div0|auto_generated|divider|divider|op_13~7\ = CARRY((\u0|tix_mem\(3) & ((!\Div0|auto_generated|divider|divider|op_13~5\) # (!\Div0|auto_generated|divider|divider|StageOut[53]~17_combout\))) # (!\u0|tix_mem\(3) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[53]~17_combout\ & !\Div0|auto_generated|divider|divider|op_13~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(3),
	datab => \Div0|auto_generated|divider|divider|StageOut[53]~17_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_13~5\,
	combout => \Div0|auto_generated|divider|divider|op_13~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_13~7\);

-- Location: LCCOMB_X23_Y2_N14
\Div0|auto_generated|divider|divider|op_13~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_13~8_combout\ = ((\u0|tix_mem\(4) $ (\Div0|auto_generated|divider|divider|StageOut[54]~16_combout\ $ (\Div0|auto_generated|divider|divider|op_13~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_13~9\ = CARRY((\u0|tix_mem\(4) & (\Div0|auto_generated|divider|divider|StageOut[54]~16_combout\ & !\Div0|auto_generated|divider|divider|op_13~7\)) # (!\u0|tix_mem\(4) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[54]~16_combout\) # (!\Div0|auto_generated|divider|divider|op_13~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(4),
	datab => \Div0|auto_generated|divider|divider|StageOut[54]~16_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_13~7\,
	combout => \Div0|auto_generated|divider|divider|op_13~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_13~9\);

-- Location: LCCOMB_X24_Y5_N16
\Div0|auto_generated|divider|divider|op_14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~2_combout\ = (\u0|tix_mem\(1) & ((\Div0|auto_generated|divider|divider|StageOut[68]~20_combout\ & (!\Div0|auto_generated|divider|divider|op_14~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[68]~20_combout\ & ((\Div0|auto_generated|divider|divider|op_14~1_cout\) # (GND))))) # (!\u0|tix_mem\(1) & ((\Div0|auto_generated|divider|divider|StageOut[68]~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_14~1_cout\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[68]~20_combout\ & (!\Div0|auto_generated|divider|divider|op_14~1_cout\))))
-- \Div0|auto_generated|divider|divider|op_14~3\ = CARRY((\u0|tix_mem\(1) & ((!\Div0|auto_generated|divider|divider|op_14~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[68]~20_combout\))) # (!\u0|tix_mem\(1) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[68]~20_combout\ & !\Div0|auto_generated|divider|divider|op_14~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(1),
	datab => \Div0|auto_generated|divider|divider|StageOut[68]~20_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_14~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_14~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_14~3\);

-- Location: LCCOMB_X24_Y5_N18
\Div0|auto_generated|divider|divider|op_14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[69]~19_combout\ $ (\u0|tix_mem\(2) $ (\Div0|auto_generated|divider|divider|op_14~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_14~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[69]~19_combout\ & ((!\Div0|auto_generated|divider|divider|op_14~3\) # (!\u0|tix_mem\(2)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[69]~19_combout\ & (!\u0|tix_mem\(2) & !\Div0|auto_generated|divider|divider|op_14~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[69]~19_combout\,
	datab => \u0|tix_mem\(2),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_14~3\,
	combout => \Div0|auto_generated|divider|divider|op_14~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_14~5\);

-- Location: LCCOMB_X24_Y5_N20
\Div0|auto_generated|divider|divider|op_14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[70]~23_combout\ & ((\u0|tix_mem\(3) & (!\Div0|auto_generated|divider|divider|op_14~5\)) # (!\u0|tix_mem\(3) & 
-- (\Div0|auto_generated|divider|divider|op_14~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[70]~23_combout\ & ((\u0|tix_mem\(3) & ((\Div0|auto_generated|divider|divider|op_14~5\) # (GND))) # (!\u0|tix_mem\(3) & 
-- (!\Div0|auto_generated|divider|divider|op_14~5\))))
-- \Div0|auto_generated|divider|divider|op_14~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[70]~23_combout\ & (\u0|tix_mem\(3) & !\Div0|auto_generated|divider|divider|op_14~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[70]~23_combout\ & 
-- ((\u0|tix_mem\(3)) # (!\Div0|auto_generated|divider|divider|op_14~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[70]~23_combout\,
	datab => \u0|tix_mem\(3),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_14~5\,
	combout => \Div0|auto_generated|divider|divider|op_14~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_14~7\);

-- Location: LCCOMB_X24_Y5_N24
\Div0|auto_generated|divider|divider|op_14~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~10_combout\ = (\u0|tix_mem\(5) & ((\Div0|auto_generated|divider|divider|StageOut[72]~21_combout\ & (!\Div0|auto_generated|divider|divider|op_14~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[72]~21_combout\ & ((\Div0|auto_generated|divider|divider|op_14~9\) # (GND))))) # (!\u0|tix_mem\(5) & ((\Div0|auto_generated|divider|divider|StageOut[72]~21_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_14~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[72]~21_combout\ & (!\Div0|auto_generated|divider|divider|op_14~9\))))
-- \Div0|auto_generated|divider|divider|op_14~11\ = CARRY((\u0|tix_mem\(5) & ((!\Div0|auto_generated|divider|divider|op_14~9\) # (!\Div0|auto_generated|divider|divider|StageOut[72]~21_combout\))) # (!\u0|tix_mem\(5) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[72]~21_combout\ & !\Div0|auto_generated|divider|divider|op_14~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(5),
	datab => \Div0|auto_generated|divider|divider|StageOut[72]~21_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_14~9\,
	combout => \Div0|auto_generated|divider|divider|op_14~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_14~11\);

-- Location: LCCOMB_X25_Y5_N2
\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (\u0|tix_mem\(1) & (\Div0|auto_generated|divider|divider|StageOut[85]~26_combout\ $ (VCC))) # (!\u0|tix_mem\(1) & ((\Div0|auto_generated|divider|divider|StageOut[85]~26_combout\) # 
-- (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[85]~26_combout\) # (!\u0|tix_mem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(1),
	datab => \Div0|auto_generated|divider|divider|StageOut[85]~26_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X25_Y5_N4
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[86]~25_combout\ & ((\u0|tix_mem\(2) & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)) # (!\u0|tix_mem\(2) & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[86]~25_combout\ & ((\u0|tix_mem\(2) & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\) # (GND))) # 
-- (!\u0|tix_mem\(2) & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[86]~25_combout\ & (\u0|tix_mem\(2) & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[86]~25_combout\ & ((\u0|tix_mem\(2)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[86]~25_combout\,
	datab => \u0|tix_mem\(2),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X25_Y5_N10
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = ((\u0|tix_mem\(5) $ (\Div0|auto_generated|divider|divider|StageOut[89]~28_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\u0|tix_mem\(5) & (\Div0|auto_generated|divider|divider|StageOut[89]~28_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)) # (!\u0|tix_mem\(5) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[89]~28_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(5),
	datab => \Div0|auto_generated|divider|divider|StageOut[89]~28_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X26_Y5_N2
\Div0|auto_generated|divider|divider|op_16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~2_combout\ = (\u0|tix_mem\(1) & ((\Div0|auto_generated|divider|divider|StageOut\(102) & (!\Div0|auto_generated|divider|divider|op_16~1_cout\)) # (!\Div0|auto_generated|divider|divider|StageOut\(102) & 
-- ((\Div0|auto_generated|divider|divider|op_16~1_cout\) # (GND))))) # (!\u0|tix_mem\(1) & ((\Div0|auto_generated|divider|divider|StageOut\(102) & (\Div0|auto_generated|divider|divider|op_16~1_cout\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut\(102) & (!\Div0|auto_generated|divider|divider|op_16~1_cout\))))
-- \Div0|auto_generated|divider|divider|op_16~3\ = CARRY((\u0|tix_mem\(1) & ((!\Div0|auto_generated|divider|divider|op_16~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut\(102)))) # (!\u0|tix_mem\(1) & 
-- (!\Div0|auto_generated|divider|divider|StageOut\(102) & !\Div0|auto_generated|divider|divider|op_16~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(1),
	datab => \Div0|auto_generated|divider|divider|StageOut\(102),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_16~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~3\);

-- Location: LCCOMB_X26_Y5_N10
\Div0|auto_generated|divider|divider|op_16~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~10_combout\ = (\u0|tix_mem\(5) & ((\Div0|auto_generated|divider|divider|StageOut[106]~35_combout\ & (!\Div0|auto_generated|divider|divider|op_16~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[106]~35_combout\ & ((\Div0|auto_generated|divider|divider|op_16~9\) # (GND))))) # (!\u0|tix_mem\(5) & ((\Div0|auto_generated|divider|divider|StageOut[106]~35_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_16~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[106]~35_combout\ & (!\Div0|auto_generated|divider|divider|op_16~9\))))
-- \Div0|auto_generated|divider|divider|op_16~11\ = CARRY((\u0|tix_mem\(5) & ((!\Div0|auto_generated|divider|divider|op_16~9\) # (!\Div0|auto_generated|divider|divider|StageOut[106]~35_combout\))) # (!\u0|tix_mem\(5) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[106]~35_combout\ & !\Div0|auto_generated|divider|divider|op_16~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(5),
	datab => \Div0|auto_generated|divider|divider|StageOut[106]~35_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~9\,
	combout => \Div0|auto_generated|divider|divider|op_16~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~11\);

-- Location: LCCOMB_X26_Y5_N12
\Div0|auto_generated|divider|divider|op_16~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~12_combout\ = ((\u0|tix_mem\(6) $ (\Div0|auto_generated|divider|divider|StageOut[107]~34_combout\ $ (\Div0|auto_generated|divider|divider|op_16~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_16~13\ = CARRY((\u0|tix_mem\(6) & (\Div0|auto_generated|divider|divider|StageOut[107]~34_combout\ & !\Div0|auto_generated|divider|divider|op_16~11\)) # (!\u0|tix_mem\(6) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[107]~34_combout\) # (!\Div0|auto_generated|divider|divider|op_16~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(6),
	datab => \Div0|auto_generated|divider|divider|StageOut[107]~34_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~11\,
	combout => \Div0|auto_generated|divider|divider|op_16~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~13\);

-- Location: LCCOMB_X26_Y5_N14
\Div0|auto_generated|divider|divider|op_16~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~14_combout\ = (\u0|tix_mem\(7) & ((\Div0|auto_generated|divider|divider|StageOut[108]~33_combout\ & (!\Div0|auto_generated|divider|divider|op_16~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[108]~33_combout\ & ((\Div0|auto_generated|divider|divider|op_16~13\) # (GND))))) # (!\u0|tix_mem\(7) & ((\Div0|auto_generated|divider|divider|StageOut[108]~33_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_16~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[108]~33_combout\ & (!\Div0|auto_generated|divider|divider|op_16~13\))))
-- \Div0|auto_generated|divider|divider|op_16~15\ = CARRY((\u0|tix_mem\(7) & ((!\Div0|auto_generated|divider|divider|op_16~13\) # (!\Div0|auto_generated|divider|divider|StageOut[108]~33_combout\))) # (!\u0|tix_mem\(7) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[108]~33_combout\ & !\Div0|auto_generated|divider|divider|op_16~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(7),
	datab => \Div0|auto_generated|divider|divider|StageOut[108]~33_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~13\,
	combout => \Div0|auto_generated|divider|divider|op_16~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~15\);

-- Location: LCCOMB_X26_Y4_N6
\Div0|auto_generated|divider|divider|op_17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[120]~39_combout\ $ (\u0|tix_mem\(2) $ (\Div0|auto_generated|divider|divider|op_17~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_17~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[120]~39_combout\ & ((!\Div0|auto_generated|divider|divider|op_17~3\) # (!\u0|tix_mem\(2)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[120]~39_combout\ & (!\u0|tix_mem\(2) & !\Div0|auto_generated|divider|divider|op_17~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[120]~39_combout\,
	datab => \u0|tix_mem\(2),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~3\,
	combout => \Div0|auto_generated|divider|divider|op_17~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~5\);

-- Location: LCCOMB_X26_Y4_N10
\Div0|auto_generated|divider|divider|op_17~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~8_combout\ = ((\u0|tix_mem\(4) $ (\Div0|auto_generated|divider|divider|StageOut[122]~37_combout\ $ (\Div0|auto_generated|divider|divider|op_17~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_17~9\ = CARRY((\u0|tix_mem\(4) & (\Div0|auto_generated|divider|divider|StageOut[122]~37_combout\ & !\Div0|auto_generated|divider|divider|op_17~7\)) # (!\u0|tix_mem\(4) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[122]~37_combout\) # (!\Div0|auto_generated|divider|divider|op_17~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(4),
	datab => \Div0|auto_generated|divider|divider|StageOut[122]~37_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~7\,
	combout => \Div0|auto_generated|divider|divider|op_17~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~9\);

-- Location: LCCOMB_X26_Y4_N16
\Div0|auto_generated|divider|divider|op_17~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~14_combout\ = (\u0|tix_mem\(7) & ((\Div0|auto_generated|divider|divider|StageOut[125]~42_combout\ & (!\Div0|auto_generated|divider|divider|op_17~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[125]~42_combout\ & ((\Div0|auto_generated|divider|divider|op_17~13\) # (GND))))) # (!\u0|tix_mem\(7) & ((\Div0|auto_generated|divider|divider|StageOut[125]~42_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_17~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[125]~42_combout\ & (!\Div0|auto_generated|divider|divider|op_17~13\))))
-- \Div0|auto_generated|divider|divider|op_17~15\ = CARRY((\u0|tix_mem\(7) & ((!\Div0|auto_generated|divider|divider|op_17~13\) # (!\Div0|auto_generated|divider|divider|StageOut[125]~42_combout\))) # (!\u0|tix_mem\(7) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[125]~42_combout\ & !\Div0|auto_generated|divider|divider|op_17~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(7),
	datab => \Div0|auto_generated|divider|divider|StageOut[125]~42_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~13\,
	combout => \Div0|auto_generated|divider|divider|op_17~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~15\);

-- Location: LCCOMB_X25_Y4_N16
\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[140]~45_combout\ $ (\u0|tix_mem\(5) $ (\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[140]~45_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\) # (!\u0|tix_mem\(5)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[140]~45_combout\ & (!\u0|tix_mem\(5) & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[140]~45_combout\,
	datab => \u0|tix_mem\(5),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\);

-- Location: LCCOMB_X25_Y4_N20
\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\ = ((\u0|tix_mem\(7) $ (\Div0|auto_generated|divider|divider|StageOut[142]~52_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ = CARRY((\u0|tix_mem\(7) & (\Div0|auto_generated|divider|divider|StageOut[142]~52_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\)) # (!\u0|tix_mem\(7) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[142]~52_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(7),
	datab => \Div0|auto_generated|divider|divider|StageOut[142]~52_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\);

-- Location: LCCOMB_X25_Y4_N22
\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[143]~51_combout\ & ((\u0|tix_mem\(8) & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\)) # (!\u0|tix_mem\(8) & 
-- (\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[143]~51_combout\ & ((\u0|tix_mem\(8) & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\) # (GND))) # 
-- (!\u0|tix_mem\(8) & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[143]~51_combout\ & (\u0|tix_mem\(8) & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[143]~51_combout\ & ((\u0|tix_mem\(8)) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[143]~51_combout\,
	datab => \u0|tix_mem\(8),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\);

-- Location: LCCOMB_X24_Y4_N2
\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (\u0|tix_mem\(1) & (\Div0|auto_generated|divider|divider|StageOut\(153) $ (VCC))) # (!\u0|tix_mem\(1) & ((\Div0|auto_generated|divider|divider|StageOut\(153)) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut\(153)) # (!\u0|tix_mem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(1),
	datab => \Div0|auto_generated|divider|divider|StageOut\(153),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X24_Y4_N4
\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\u0|tix_mem\(2) & ((\Div0|auto_generated|divider|divider|StageOut[154]~58_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[154]~58_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\) # (GND))))) # (!\u0|tix_mem\(2) & ((\Div0|auto_generated|divider|divider|StageOut[154]~58_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[154]~58_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((\u0|tix_mem\(2) & ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\) # (!\Div0|auto_generated|divider|divider|StageOut[154]~58_combout\))) # (!\u0|tix_mem\(2) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[154]~58_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(2),
	datab => \Div0|auto_generated|divider|divider|StageOut[154]~58_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X24_Y4_N10
\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\ = ((\u0|tix_mem\(5) $ (\Div0|auto_generated|divider|divider|StageOut[157]~55_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ = CARRY((\u0|tix_mem\(5) & (\Div0|auto_generated|divider|divider|StageOut[157]~55_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\)) # (!\u0|tix_mem\(5) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[157]~55_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(5),
	datab => \Div0|auto_generated|divider|divider|StageOut[157]~55_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\);

-- Location: LCCOMB_X23_Y3_N2
\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[171]~68_combout\ & ((\u0|tix_mem\(2) & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)) # (!\u0|tix_mem\(2) & 
-- (\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[171]~68_combout\ & ((\u0|tix_mem\(2) & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\) # (GND))) # 
-- (!\u0|tix_mem\(2) & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[171]~68_combout\ & (\u0|tix_mem\(2) & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[171]~68_combout\ & ((\u0|tix_mem\(2)) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[171]~68_combout\,
	datab => \u0|tix_mem\(2),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X23_Y3_N4
\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[172]~67_combout\ $ (\u0|tix_mem\(3) $ (\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[172]~67_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\) # (!\u0|tix_mem\(3)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[172]~67_combout\ & (!\u0|tix_mem\(3) & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[172]~67_combout\,
	datab => \u0|tix_mem\(3),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X23_Y3_N6
\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ = (\u0|tix_mem\(4) & ((\Div0|auto_generated|divider|divider|StageOut[173]~66_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[173]~66_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\) # (GND))))) # (!\u0|tix_mem\(4) & ((\Div0|auto_generated|divider|divider|StageOut[173]~66_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[173]~66_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ = CARRY((\u0|tix_mem\(4) & ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\) # (!\Div0|auto_generated|divider|divider|StageOut[173]~66_combout\))) # (!\u0|tix_mem\(4) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[173]~66_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(4),
	datab => \Div0|auto_generated|divider|divider|StageOut[173]~66_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\);

-- Location: LCCOMB_X23_Y3_N10
\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ = (\u0|tix_mem\(6) & ((\Div0|auto_generated|divider|divider|StageOut[175]~64_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[175]~64_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\) # (GND))))) # (!\u0|tix_mem\(6) & ((\Div0|auto_generated|divider|divider|StageOut[175]~64_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[175]~64_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\ = CARRY((\u0|tix_mem\(6) & ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\) # (!\Div0|auto_generated|divider|divider|StageOut[175]~64_combout\))) # (!\u0|tix_mem\(6) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[175]~64_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(6),
	datab => \Div0|auto_generated|divider|divider|StageOut[175]~64_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\);

-- Location: LCCOMB_X23_Y3_N16
\Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~16_combout\ = ((\u0|tix_mem\(9) $ (\Div0|auto_generated|divider|divider|StageOut[178]~71_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~17\ = CARRY((\u0|tix_mem\(9) & (\Div0|auto_generated|divider|divider|StageOut[178]~71_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~15\)) # (!\u0|tix_mem\(9) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[178]~71_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(9),
	datab => \Div0|auto_generated|divider|divider|StageOut[178]~71_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~15\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~16_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~17\);

-- Location: LCCOMB_X23_Y3_N18
\Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~18_combout\ = (\u0|tix_mem\(10) & ((\Div0|auto_generated|divider|divider|StageOut[179]~70_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~17\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[179]~70_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~17\) # (GND))))) # (!\u0|tix_mem\(10) & ((\Div0|auto_generated|divider|divider|StageOut[179]~70_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~17\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[179]~70_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~17\))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~19\ = CARRY((\u0|tix_mem\(10) & ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~17\) # (!\Div0|auto_generated|divider|divider|StageOut[179]~70_combout\))) # (!\u0|tix_mem\(10) 
-- & (!\Div0|auto_generated|divider|divider|StageOut[179]~70_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(10),
	datab => \Div0|auto_generated|divider|divider|StageOut[179]~70_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~17\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~18_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~19\);

-- Location: LCCOMB_X23_Y3_N20
\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\ = ((\u0|tix_mem\(11) $ (\Div0|auto_generated|divider|divider|StageOut[180]~69_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~19\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~21\ = CARRY((\u0|tix_mem\(11) & (\Div0|auto_generated|divider|divider|StageOut[180]~69_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~19\)) # (!\u0|tix_mem\(11) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[180]~69_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(11),
	datab => \Div0|auto_generated|divider|divider|StageOut[180]~69_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~19\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~21\);

-- Location: LCCOMB_X25_Y1_N12
\Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ = (\u0|tix_mem\(6) & ((\Div0|auto_generated|divider|divider|StageOut[192]~75_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[192]~75_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\) # (GND))))) # (!\u0|tix_mem\(6) & ((\Div0|auto_generated|divider|divider|StageOut[192]~75_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[192]~75_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~11\ = CARRY((\u0|tix_mem\(6) & ((!\Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\) # (!\Div0|auto_generated|divider|divider|StageOut[192]~75_combout\))) # (!\u0|tix_mem\(6) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[192]~75_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(6),
	datab => \Div0|auto_generated|divider|divider|StageOut[192]~75_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~11\);

-- Location: LCCOMB_X25_Y1_N14
\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\ = ((\u0|tix_mem\(7) $ (\Div0|auto_generated|divider|divider|StageOut[193]~74_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~13\ = CARRY((\u0|tix_mem\(7) & (\Div0|auto_generated|divider|divider|StageOut[193]~74_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~11\)) # (!\u0|tix_mem\(7) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[193]~74_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(7),
	datab => \Div0|auto_generated|divider|divider|StageOut[193]~74_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~13\);

-- Location: LCCOMB_X25_Y1_N16
\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\ = (\u0|tix_mem\(8) & ((\Div0|auto_generated|divider|divider|StageOut[194]~73_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[194]~73_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~13\) # (GND))))) # (!\u0|tix_mem\(8) & ((\Div0|auto_generated|divider|divider|StageOut[194]~73_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[194]~73_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~13\))))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~15\ = CARRY((\u0|tix_mem\(8) & ((!\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~13\) # (!\Div0|auto_generated|divider|divider|StageOut[194]~73_combout\))) # (!\u0|tix_mem\(8) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[194]~73_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(8),
	datab => \Div0|auto_generated|divider|divider|StageOut[194]~73_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~15\);

-- Location: LCCOMB_X25_Y1_N18
\Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~16_combout\ = ((\u0|tix_mem\(9) $ (\Div0|auto_generated|divider|divider|StageOut[195]~72_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~17\ = CARRY((\u0|tix_mem\(9) & (\Div0|auto_generated|divider|divider|StageOut[195]~72_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~15\)) # (!\u0|tix_mem\(9) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[195]~72_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(9),
	datab => \Div0|auto_generated|divider|divider|StageOut[195]~72_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~15\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~16_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~17\);

-- Location: LCCOMB_X25_Y1_N22
\Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~20_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[197]~81_combout\ $ (\u0|tix_mem\(11) $ (\Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~19\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~21\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[197]~81_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~19\) # (!\u0|tix_mem\(11)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[197]~81_combout\ & (!\u0|tix_mem\(11) & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[197]~81_combout\,
	datab => \u0|tix_mem\(11),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~19\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~20_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~21\);

-- Location: LCCOMB_X25_Y1_N24
\Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~22_combout\ = (\u0|tix_mem\(12) & ((\Div0|auto_generated|divider|divider|StageOut[198]~80_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~21\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[198]~80_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~21\) # (GND))))) # (!\u0|tix_mem\(12) & ((\Div0|auto_generated|divider|divider|StageOut[198]~80_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~21\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[198]~80_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~21\))))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~23\ = CARRY((\u0|tix_mem\(12) & ((!\Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~21\) # (!\Div0|auto_generated|divider|divider|StageOut[198]~80_combout\))) # 
-- (!\u0|tix_mem\(12) & (!\Div0|auto_generated|divider|divider|StageOut[198]~80_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(12),
	datab => \Div0|auto_generated|divider|divider|StageOut[198]~80_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~21\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~22_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~23\);

-- Location: LCCOMB_X23_Y1_N4
\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\ = (\u0|tix_mem\(1) & (\Div0|auto_generated|divider|divider|StageOut\(204) $ (VCC))) # (!\u0|tix_mem\(1) & ((\Div0|auto_generated|divider|divider|StageOut\(204)) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut\(204)) # (!\u0|tix_mem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(1),
	datab => \Div0|auto_generated|divider|divider|StageOut\(204),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\);

-- Location: LCCOMB_X23_Y1_N10
\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\ = (\u0|tix_mem\(4) & ((\Div0|auto_generated|divider|divider|StageOut[207]~89_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[207]~89_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\) # (GND))))) # (!\u0|tix_mem\(4) & ((\Div0|auto_generated|divider|divider|StageOut[207]~89_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[207]~89_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\ = CARRY((\u0|tix_mem\(4) & ((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\) # (!\Div0|auto_generated|divider|divider|StageOut[207]~89_combout\))) # (!\u0|tix_mem\(4) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[207]~89_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(4),
	datab => \Div0|auto_generated|divider|divider|StageOut[207]~89_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\);

-- Location: LCCOMB_X23_Y1_N16
\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\ = ((\u0|tix_mem\(7) $ (\Div0|auto_generated|divider|divider|StageOut[210]~86_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~13\ = CARRY((\u0|tix_mem\(7) & (\Div0|auto_generated|divider|divider|StageOut[210]~86_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~11\)) # (!\u0|tix_mem\(7) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[210]~86_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(7),
	datab => \Div0|auto_generated|divider|divider|StageOut[210]~86_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~13\);

-- Location: LCCOMB_X23_Y1_N18
\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[211]~85_combout\ & ((\u0|tix_mem\(8) & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~13\)) # (!\u0|tix_mem\(8) & 
-- (\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~13\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[211]~85_combout\ & ((\u0|tix_mem\(8) & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~13\) # (GND))) # 
-- (!\u0|tix_mem\(8) & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~13\))))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~15\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[211]~85_combout\ & (\u0|tix_mem\(8) & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[211]~85_combout\ & ((\u0|tix_mem\(8)) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[211]~85_combout\,
	datab => \u0|tix_mem\(8),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~15\);

-- Location: LCCOMB_X23_Y1_N20
\Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~16_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[212]~84_combout\ $ (\u0|tix_mem\(9) $ (\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~17\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[212]~84_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~15\) # (!\u0|tix_mem\(9)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[212]~84_combout\ & (!\u0|tix_mem\(9) & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[212]~84_combout\,
	datab => \u0|tix_mem\(9),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~15\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~16_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~17\);

-- Location: LCCOMB_X23_Y1_N24
\Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~20_combout\ = ((\u0|tix_mem\(11) $ (\Div0|auto_generated|divider|divider|StageOut[214]~94_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~19\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~21\ = CARRY((\u0|tix_mem\(11) & (\Div0|auto_generated|divider|divider|StageOut[214]~94_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~19\)) # (!\u0|tix_mem\(11) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[214]~94_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(11),
	datab => \Div0|auto_generated|divider|divider|StageOut[214]~94_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~19\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~20_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~21\);

-- Location: LCCOMB_X23_Y1_N26
\Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~22_combout\ = (\Div0|auto_generated|divider|divider|StageOut[215]~93_combout\ & ((\u0|tix_mem\(12) & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~21\)) # (!\u0|tix_mem\(12) 
-- & (\Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~21\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[215]~93_combout\ & ((\u0|tix_mem\(12) & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~21\) # (GND))) # 
-- (!\u0|tix_mem\(12) & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~21\))))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~23\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[215]~93_combout\ & (\u0|tix_mem\(12) & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~21\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[215]~93_combout\ & ((\u0|tix_mem\(12)) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[215]~93_combout\,
	datab => \u0|tix_mem\(12),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~21\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~22_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~23\);

-- Location: LCCOMB_X23_Y1_N28
\Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~24_combout\ = ((\u0|tix_mem\(13) $ (\Div0|auto_generated|divider|divider|StageOut[216]~92_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~23\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~25\ = CARRY((\u0|tix_mem\(13) & (\Div0|auto_generated|divider|divider|StageOut[216]~92_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~23\)) # (!\u0|tix_mem\(13) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[216]~92_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(13),
	datab => \Div0|auto_generated|divider|divider|StageOut[216]~92_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~23\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~24_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~25\);

-- Location: LCCOMB_X20_Y1_N2
\Div0|auto_generated|divider|divider|op_5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut\(221) & ((\u0|tix_mem\(1) & (!\Div0|auto_generated|divider|divider|op_5~1_cout\)) # (!\u0|tix_mem\(1) & 
-- (\Div0|auto_generated|divider|divider|op_5~1_cout\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut\(221) & ((\u0|tix_mem\(1) & ((\Div0|auto_generated|divider|divider|op_5~1_cout\) # (GND))) # (!\u0|tix_mem\(1) & 
-- (!\Div0|auto_generated|divider|divider|op_5~1_cout\))))
-- \Div0|auto_generated|divider|divider|op_5~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut\(221) & (\u0|tix_mem\(1) & !\Div0|auto_generated|divider|divider|op_5~1_cout\)) # (!\Div0|auto_generated|divider|divider|StageOut\(221) & 
-- ((\u0|tix_mem\(1)) # (!\Div0|auto_generated|divider|divider|op_5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut\(221),
	datab => \u0|tix_mem\(1),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_5~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X20_Y1_N4
\Div0|auto_generated|divider|divider|op_5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[222]~104_combout\ $ (\u0|tix_mem\(2) $ (\Div0|auto_generated|divider|divider|op_5~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_5~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[222]~104_combout\ & ((!\Div0|auto_generated|divider|divider|op_5~3\) # (!\u0|tix_mem\(2)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[222]~104_combout\ & (!\u0|tix_mem\(2) & !\Div0|auto_generated|divider|divider|op_5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[222]~104_combout\,
	datab => \u0|tix_mem\(2),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~3\,
	combout => \Div0|auto_generated|divider|divider|op_5~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X20_Y1_N6
\Div0|auto_generated|divider|divider|op_5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~6_combout\ = (\u0|tix_mem\(3) & ((\Div0|auto_generated|divider|divider|StageOut[223]~103_combout\ & (!\Div0|auto_generated|divider|divider|op_5~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[223]~103_combout\ & ((\Div0|auto_generated|divider|divider|op_5~5\) # (GND))))) # (!\u0|tix_mem\(3) & ((\Div0|auto_generated|divider|divider|StageOut[223]~103_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_5~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[223]~103_combout\ & (!\Div0|auto_generated|divider|divider|op_5~5\))))
-- \Div0|auto_generated|divider|divider|op_5~7\ = CARRY((\u0|tix_mem\(3) & ((!\Div0|auto_generated|divider|divider|op_5~5\) # (!\Div0|auto_generated|divider|divider|StageOut[223]~103_combout\))) # (!\u0|tix_mem\(3) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[223]~103_combout\ & !\Div0|auto_generated|divider|divider|op_5~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(3),
	datab => \Div0|auto_generated|divider|divider|StageOut[223]~103_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~5\,
	combout => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X20_Y1_N8
\Div0|auto_generated|divider|divider|op_5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~8_combout\ = ((\u0|tix_mem\(4) $ (\Div0|auto_generated|divider|divider|StageOut[224]~102_combout\ $ (\Div0|auto_generated|divider|divider|op_5~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_5~9\ = CARRY((\u0|tix_mem\(4) & (\Div0|auto_generated|divider|divider|StageOut[224]~102_combout\ & !\Div0|auto_generated|divider|divider|op_5~7\)) # (!\u0|tix_mem\(4) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[224]~102_combout\) # (!\Div0|auto_generated|divider|divider|op_5~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(4),
	datab => \Div0|auto_generated|divider|divider|StageOut[224]~102_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~7\,
	combout => \Div0|auto_generated|divider|divider|op_5~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~9\);

-- Location: LCCOMB_X20_Y1_N10
\Div0|auto_generated|divider|divider|op_5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[225]~101_combout\ & ((\u0|tix_mem\(5) & (!\Div0|auto_generated|divider|divider|op_5~9\)) # (!\u0|tix_mem\(5) & 
-- (\Div0|auto_generated|divider|divider|op_5~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[225]~101_combout\ & ((\u0|tix_mem\(5) & ((\Div0|auto_generated|divider|divider|op_5~9\) # (GND))) # (!\u0|tix_mem\(5) & 
-- (!\Div0|auto_generated|divider|divider|op_5~9\))))
-- \Div0|auto_generated|divider|divider|op_5~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[225]~101_combout\ & (\u0|tix_mem\(5) & !\Div0|auto_generated|divider|divider|op_5~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[225]~101_combout\ 
-- & ((\u0|tix_mem\(5)) # (!\Div0|auto_generated|divider|divider|op_5~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[225]~101_combout\,
	datab => \u0|tix_mem\(5),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~9\,
	combout => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~11\);

-- Location: LCCOMB_X20_Y1_N14
\Div0|auto_generated|divider|divider|op_5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~14_combout\ = (\u0|tix_mem\(7) & ((\Div0|auto_generated|divider|divider|StageOut[227]~99_combout\ & (!\Div0|auto_generated|divider|divider|op_5~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[227]~99_combout\ & ((\Div0|auto_generated|divider|divider|op_5~13\) # (GND))))) # (!\u0|tix_mem\(7) & ((\Div0|auto_generated|divider|divider|StageOut[227]~99_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_5~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[227]~99_combout\ & (!\Div0|auto_generated|divider|divider|op_5~13\))))
-- \Div0|auto_generated|divider|divider|op_5~15\ = CARRY((\u0|tix_mem\(7) & ((!\Div0|auto_generated|divider|divider|op_5~13\) # (!\Div0|auto_generated|divider|divider|StageOut[227]~99_combout\))) # (!\u0|tix_mem\(7) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[227]~99_combout\ & !\Div0|auto_generated|divider|divider|op_5~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(7),
	datab => \Div0|auto_generated|divider|divider|StageOut[227]~99_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~13\,
	combout => \Div0|auto_generated|divider|divider|op_5~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~15\);

-- Location: LCCOMB_X20_Y1_N20
\Div0|auto_generated|divider|divider|op_5~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~20_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[230]~96_combout\ $ (\u0|tix_mem\(10) $ (\Div0|auto_generated|divider|divider|op_5~19\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_5~21\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[230]~96_combout\ & ((!\Div0|auto_generated|divider|divider|op_5~19\) # (!\u0|tix_mem\(10)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[230]~96_combout\ & (!\u0|tix_mem\(10) & !\Div0|auto_generated|divider|divider|op_5~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[230]~96_combout\,
	datab => \u0|tix_mem\(10),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~19\,
	combout => \Div0|auto_generated|divider|divider|op_5~20_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~21\);

-- Location: LCCOMB_X20_Y1_N22
\Div0|auto_generated|divider|divider|op_5~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~22_combout\ = (\Div0|auto_generated|divider|divider|StageOut[231]~95_combout\ & ((\u0|tix_mem\(11) & (!\Div0|auto_generated|divider|divider|op_5~21\)) # (!\u0|tix_mem\(11) & 
-- (\Div0|auto_generated|divider|divider|op_5~21\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[231]~95_combout\ & ((\u0|tix_mem\(11) & ((\Div0|auto_generated|divider|divider|op_5~21\) # (GND))) # (!\u0|tix_mem\(11) & 
-- (!\Div0|auto_generated|divider|divider|op_5~21\))))
-- \Div0|auto_generated|divider|divider|op_5~23\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[231]~95_combout\ & (\u0|tix_mem\(11) & !\Div0|auto_generated|divider|divider|op_5~21\)) # (!\Div0|auto_generated|divider|divider|StageOut[231]~95_combout\ 
-- & ((\u0|tix_mem\(11)) # (!\Div0|auto_generated|divider|divider|op_5~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[231]~95_combout\,
	datab => \u0|tix_mem\(11),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~21\,
	combout => \Div0|auto_generated|divider|divider|op_5~22_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~23\);

-- Location: LCCOMB_X22_Y3_N4
\Div0|auto_generated|divider|divider|op_6~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~20_combout\ = ((\u0|tix_mem\(10) $ (\Div0|auto_generated|divider|divider|StageOut[247]~110_combout\ $ (\Div0|auto_generated|divider|divider|op_6~19\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_6~21\ = CARRY((\u0|tix_mem\(10) & (\Div0|auto_generated|divider|divider|StageOut[247]~110_combout\ & !\Div0|auto_generated|divider|divider|op_6~19\)) # (!\u0|tix_mem\(10) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[247]~110_combout\) # (!\Div0|auto_generated|divider|divider|op_6~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(10),
	datab => \Div0|auto_generated|divider|divider|StageOut[247]~110_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~19\,
	combout => \Div0|auto_generated|divider|divider|op_6~20_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~21\);

-- Location: LCCOMB_X21_Y4_N16
\Div0|auto_generated|divider|divider|op_7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~2_combout\ = (\u0|tix_mem\(1) & ((\Div0|auto_generated|divider|divider|StageOut[255]~135_combout\ & (!\Div0|auto_generated|divider|divider|op_7~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[255]~135_combout\ & ((\Div0|auto_generated|divider|divider|op_7~1_cout\) # (GND))))) # (!\u0|tix_mem\(1) & ((\Div0|auto_generated|divider|divider|StageOut[255]~135_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_7~1_cout\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[255]~135_combout\ & (!\Div0|auto_generated|divider|divider|op_7~1_cout\))))
-- \Div0|auto_generated|divider|divider|op_7~3\ = CARRY((\u0|tix_mem\(1) & ((!\Div0|auto_generated|divider|divider|op_7~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[255]~135_combout\))) # (!\u0|tix_mem\(1) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[255]~135_combout\ & !\Div0|auto_generated|divider|divider|op_7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(1),
	datab => \Div0|auto_generated|divider|divider|StageOut[255]~135_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_7~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~3\);

-- Location: LCCOMB_X21_Y4_N20
\Div0|auto_generated|divider|divider|op_7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~6_combout\ = (\u0|tix_mem\(3) & ((\Div0|auto_generated|divider|divider|StageOut[257]~133_combout\ & (!\Div0|auto_generated|divider|divider|op_7~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[257]~133_combout\ & ((\Div0|auto_generated|divider|divider|op_7~5\) # (GND))))) # (!\u0|tix_mem\(3) & ((\Div0|auto_generated|divider|divider|StageOut[257]~133_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_7~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[257]~133_combout\ & (!\Div0|auto_generated|divider|divider|op_7~5\))))
-- \Div0|auto_generated|divider|divider|op_7~7\ = CARRY((\u0|tix_mem\(3) & ((!\Div0|auto_generated|divider|divider|op_7~5\) # (!\Div0|auto_generated|divider|divider|StageOut[257]~133_combout\))) # (!\u0|tix_mem\(3) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[257]~133_combout\ & !\Div0|auto_generated|divider|divider|op_7~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(3),
	datab => \Div0|auto_generated|divider|divider|StageOut[257]~133_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~5\,
	combout => \Div0|auto_generated|divider|divider|op_7~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~7\);

-- Location: LCCOMB_X21_Y4_N24
\Div0|auto_generated|divider|divider|op_7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[259]~131_combout\ & ((\u0|tix_mem\(5) & (!\Div0|auto_generated|divider|divider|op_7~9\)) # (!\u0|tix_mem\(5) & 
-- (\Div0|auto_generated|divider|divider|op_7~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[259]~131_combout\ & ((\u0|tix_mem\(5) & ((\Div0|auto_generated|divider|divider|op_7~9\) # (GND))) # (!\u0|tix_mem\(5) & 
-- (!\Div0|auto_generated|divider|divider|op_7~9\))))
-- \Div0|auto_generated|divider|divider|op_7~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[259]~131_combout\ & (\u0|tix_mem\(5) & !\Div0|auto_generated|divider|divider|op_7~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[259]~131_combout\ 
-- & ((\u0|tix_mem\(5)) # (!\Div0|auto_generated|divider|divider|op_7~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[259]~131_combout\,
	datab => \u0|tix_mem\(5),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~9\,
	combout => \Div0|auto_generated|divider|divider|op_7~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~11\);

-- Location: LCCOMB_X21_Y3_N6
\Div0|auto_generated|divider|divider|op_7~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~24_combout\ = ((\u0|tix_mem\(12) $ (\Div0|auto_generated|divider|divider|StageOut[266]~124_combout\ $ (\Div0|auto_generated|divider|divider|op_7~23\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_7~25\ = CARRY((\u0|tix_mem\(12) & (\Div0|auto_generated|divider|divider|StageOut[266]~124_combout\ & !\Div0|auto_generated|divider|divider|op_7~23\)) # (!\u0|tix_mem\(12) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[266]~124_combout\) # (!\Div0|auto_generated|divider|divider|op_7~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(12),
	datab => \Div0|auto_generated|divider|divider|StageOut[266]~124_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~23\,
	combout => \Div0|auto_generated|divider|divider|op_7~24_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~25\);

-- Location: LCCOMB_X21_Y3_N8
\Div0|auto_generated|divider|divider|op_7~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~26_combout\ = (\u0|tix_mem\(13) & ((\Div0|auto_generated|divider|divider|StageOut[267]~123_combout\ & (!\Div0|auto_generated|divider|divider|op_7~25\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[267]~123_combout\ & ((\Div0|auto_generated|divider|divider|op_7~25\) # (GND))))) # (!\u0|tix_mem\(13) & ((\Div0|auto_generated|divider|divider|StageOut[267]~123_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_7~25\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[267]~123_combout\ & (!\Div0|auto_generated|divider|divider|op_7~25\))))
-- \Div0|auto_generated|divider|divider|op_7~27\ = CARRY((\u0|tix_mem\(13) & ((!\Div0|auto_generated|divider|divider|op_7~25\) # (!\Div0|auto_generated|divider|divider|StageOut[267]~123_combout\))) # (!\u0|tix_mem\(13) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[267]~123_combout\ & !\Div0|auto_generated|divider|divider|op_7~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(13),
	datab => \Div0|auto_generated|divider|divider|StageOut[267]~123_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~25\,
	combout => \Div0|auto_generated|divider|divider|op_7~26_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~27\);

-- Location: LCCOMB_X21_Y3_N12
\Div0|auto_generated|divider|divider|op_7~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~30_combout\ = (\Div0|auto_generated|divider|divider|StageOut[269]~138_combout\ & ((\u0|tix_mem\(15) & (!\Div0|auto_generated|divider|divider|op_7~29\)) # (!\u0|tix_mem\(15) & 
-- (\Div0|auto_generated|divider|divider|op_7~29\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[269]~138_combout\ & ((\u0|tix_mem\(15) & ((\Div0|auto_generated|divider|divider|op_7~29\) # (GND))) # (!\u0|tix_mem\(15) & 
-- (!\Div0|auto_generated|divider|divider|op_7~29\))))
-- \Div0|auto_generated|divider|divider|op_7~31\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[269]~138_combout\ & (\u0|tix_mem\(15) & !\Div0|auto_generated|divider|divider|op_7~29\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[269]~138_combout\ & ((\u0|tix_mem\(15)) # (!\Div0|auto_generated|divider|divider|op_7~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[269]~138_combout\,
	datab => \u0|tix_mem\(15),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~29\,
	combout => \Div0|auto_generated|divider|divider|op_7~30_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~31\);

-- Location: LCCOMB_X20_Y4_N24
\Div0|auto_generated|divider|divider|op_8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~10_combout\ = (\u0|tix_mem\(5) & ((\Div0|auto_generated|divider|divider|StageOut[276]~149_combout\ & (!\Div0|auto_generated|divider|divider|op_8~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[276]~149_combout\ & ((\Div0|auto_generated|divider|divider|op_8~9\) # (GND))))) # (!\u0|tix_mem\(5) & ((\Div0|auto_generated|divider|divider|StageOut[276]~149_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_8~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[276]~149_combout\ & (!\Div0|auto_generated|divider|divider|op_8~9\))))
-- \Div0|auto_generated|divider|divider|op_8~11\ = CARRY((\u0|tix_mem\(5) & ((!\Div0|auto_generated|divider|divider|op_8~9\) # (!\Div0|auto_generated|divider|divider|StageOut[276]~149_combout\))) # (!\u0|tix_mem\(5) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[276]~149_combout\ & !\Div0|auto_generated|divider|divider|op_8~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(5),
	datab => \Div0|auto_generated|divider|divider|StageOut[276]~149_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~9\,
	combout => \Div0|auto_generated|divider|divider|op_8~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~11\);

-- Location: LCCOMB_X20_Y3_N6
\Div0|auto_generated|divider|divider|op_8~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~24_combout\ = ((\u0|tix_mem\(12) $ (\Div0|auto_generated|divider|divider|StageOut[283]~142_combout\ $ (\Div0|auto_generated|divider|divider|op_8~23\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_8~25\ = CARRY((\u0|tix_mem\(12) & (\Div0|auto_generated|divider|divider|StageOut[283]~142_combout\ & !\Div0|auto_generated|divider|divider|op_8~23\)) # (!\u0|tix_mem\(12) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[283]~142_combout\) # (!\Div0|auto_generated|divider|divider|op_8~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(12),
	datab => \Div0|auto_generated|divider|divider|StageOut[283]~142_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~23\,
	combout => \Div0|auto_generated|divider|divider|op_8~24_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~25\);

-- Location: LCCOMB_X20_Y3_N10
\Div0|auto_generated|divider|divider|op_8~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~28_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[285]~140_combout\ $ (\u0|tix_mem\(14) $ (\Div0|auto_generated|divider|divider|op_8~27\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_8~29\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[285]~140_combout\ & ((!\Div0|auto_generated|divider|divider|op_8~27\) # (!\u0|tix_mem\(14)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[285]~140_combout\ & (!\u0|tix_mem\(14) & !\Div0|auto_generated|divider|divider|op_8~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[285]~140_combout\,
	datab => \u0|tix_mem\(14),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~27\,
	combout => \Div0|auto_generated|divider|divider|op_8~28_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~29\);

-- Location: LCCOMB_X19_Y4_N16
\Div0|auto_generated|divider|divider|op_9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[289]~169_combout\ & ((\u0|tix_mem\(1) & (!\Div0|auto_generated|divider|divider|op_9~1_cout\)) # (!\u0|tix_mem\(1) & 
-- (\Div0|auto_generated|divider|divider|op_9~1_cout\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[289]~169_combout\ & ((\u0|tix_mem\(1) & ((\Div0|auto_generated|divider|divider|op_9~1_cout\) # (GND))) # (!\u0|tix_mem\(1) & 
-- (!\Div0|auto_generated|divider|divider|op_9~1_cout\))))
-- \Div0|auto_generated|divider|divider|op_9~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[289]~169_combout\ & (\u0|tix_mem\(1) & !\Div0|auto_generated|divider|divider|op_9~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[289]~169_combout\ & ((\u0|tix_mem\(1)) # (!\Div0|auto_generated|divider|divider|op_9~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[289]~169_combout\,
	datab => \u0|tix_mem\(1),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_9~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~3\);

-- Location: LCCOMB_X19_Y4_N24
\Div0|auto_generated|divider|divider|op_9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~10_combout\ = (\u0|tix_mem\(5) & ((\Div0|auto_generated|divider|divider|StageOut[293]~166_combout\ & (!\Div0|auto_generated|divider|divider|op_9~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[293]~166_combout\ & ((\Div0|auto_generated|divider|divider|op_9~9\) # (GND))))) # (!\u0|tix_mem\(5) & ((\Div0|auto_generated|divider|divider|StageOut[293]~166_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[293]~166_combout\ & (!\Div0|auto_generated|divider|divider|op_9~9\))))
-- \Div0|auto_generated|divider|divider|op_9~11\ = CARRY((\u0|tix_mem\(5) & ((!\Div0|auto_generated|divider|divider|op_9~9\) # (!\Div0|auto_generated|divider|divider|StageOut[293]~166_combout\))) # (!\u0|tix_mem\(5) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[293]~166_combout\ & !\Div0|auto_generated|divider|divider|op_9~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(5),
	datab => \Div0|auto_generated|divider|divider|StageOut[293]~166_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~9\,
	combout => \Div0|auto_generated|divider|divider|op_9~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~11\);

-- Location: LCCOMB_X19_Y4_N26
\Div0|auto_generated|divider|divider|op_9~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~12_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[294]~165_combout\ $ (\u0|tix_mem\(6) $ (\Div0|auto_generated|divider|divider|op_9~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_9~13\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[294]~165_combout\ & ((!\Div0|auto_generated|divider|divider|op_9~11\) # (!\u0|tix_mem\(6)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[294]~165_combout\ & (!\u0|tix_mem\(6) & !\Div0|auto_generated|divider|divider|op_9~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[294]~165_combout\,
	datab => \u0|tix_mem\(6),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~11\,
	combout => \Div0|auto_generated|divider|divider|op_9~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~13\);

-- Location: LCCOMB_X19_Y4_N28
\Div0|auto_generated|divider|divider|op_9~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~14_combout\ = (\u0|tix_mem\(7) & ((\Div0|auto_generated|divider|divider|StageOut[295]~164_combout\ & (!\Div0|auto_generated|divider|divider|op_9~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[295]~164_combout\ & ((\Div0|auto_generated|divider|divider|op_9~13\) # (GND))))) # (!\u0|tix_mem\(7) & ((\Div0|auto_generated|divider|divider|StageOut[295]~164_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[295]~164_combout\ & (!\Div0|auto_generated|divider|divider|op_9~13\))))
-- \Div0|auto_generated|divider|divider|op_9~15\ = CARRY((\u0|tix_mem\(7) & ((!\Div0|auto_generated|divider|divider|op_9~13\) # (!\Div0|auto_generated|divider|divider|StageOut[295]~164_combout\))) # (!\u0|tix_mem\(7) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[295]~164_combout\ & !\Div0|auto_generated|divider|divider|op_9~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(7),
	datab => \Div0|auto_generated|divider|divider|StageOut[295]~164_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~13\,
	combout => \Div0|auto_generated|divider|divider|op_9~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~15\);

-- Location: LCCOMB_X19_Y4_N30
\Div0|auto_generated|divider|divider|op_9~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~16_combout\ = ((\u0|tix_mem\(8) $ (\Div0|auto_generated|divider|divider|StageOut[296]~163_combout\ $ (\Div0|auto_generated|divider|divider|op_9~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_9~17\ = CARRY((\u0|tix_mem\(8) & (\Div0|auto_generated|divider|divider|StageOut[296]~163_combout\ & !\Div0|auto_generated|divider|divider|op_9~15\)) # (!\u0|tix_mem\(8) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[296]~163_combout\) # (!\Div0|auto_generated|divider|divider|op_9~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(8),
	datab => \Div0|auto_generated|divider|divider|StageOut[296]~163_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~15\,
	combout => \Div0|auto_generated|divider|divider|op_9~16_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~17\);

-- Location: LCCOMB_X19_Y3_N0
\Div0|auto_generated|divider|divider|op_9~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~18_combout\ = (\u0|tix_mem\(9) & ((\Div0|auto_generated|divider|divider|StageOut[297]~162_combout\ & (!\Div0|auto_generated|divider|divider|op_9~17\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[297]~162_combout\ & ((\Div0|auto_generated|divider|divider|op_9~17\) # (GND))))) # (!\u0|tix_mem\(9) & ((\Div0|auto_generated|divider|divider|StageOut[297]~162_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~17\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[297]~162_combout\ & (!\Div0|auto_generated|divider|divider|op_9~17\))))
-- \Div0|auto_generated|divider|divider|op_9~19\ = CARRY((\u0|tix_mem\(9) & ((!\Div0|auto_generated|divider|divider|op_9~17\) # (!\Div0|auto_generated|divider|divider|StageOut[297]~162_combout\))) # (!\u0|tix_mem\(9) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[297]~162_combout\ & !\Div0|auto_generated|divider|divider|op_9~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(9),
	datab => \Div0|auto_generated|divider|divider|StageOut[297]~162_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~17\,
	combout => \Div0|auto_generated|divider|divider|op_9~18_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~19\);

-- Location: LCCOMB_X19_Y3_N2
\Div0|auto_generated|divider|divider|op_9~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~20_combout\ = ((\u0|tix_mem\(10) $ (\Div0|auto_generated|divider|divider|StageOut[298]~161_combout\ $ (\Div0|auto_generated|divider|divider|op_9~19\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_9~21\ = CARRY((\u0|tix_mem\(10) & (\Div0|auto_generated|divider|divider|StageOut[298]~161_combout\ & !\Div0|auto_generated|divider|divider|op_9~19\)) # (!\u0|tix_mem\(10) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[298]~161_combout\) # (!\Div0|auto_generated|divider|divider|op_9~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(10),
	datab => \Div0|auto_generated|divider|divider|StageOut[298]~161_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~19\,
	combout => \Div0|auto_generated|divider|divider|op_9~20_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~21\);

-- Location: LCCOMB_X19_Y3_N6
\Div0|auto_generated|divider|divider|op_9~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~24_combout\ = ((\u0|tix_mem\(12) $ (\Div0|auto_generated|divider|divider|StageOut[300]~159_combout\ $ (\Div0|auto_generated|divider|divider|op_9~23\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_9~25\ = CARRY((\u0|tix_mem\(12) & (\Div0|auto_generated|divider|divider|StageOut[300]~159_combout\ & !\Div0|auto_generated|divider|divider|op_9~23\)) # (!\u0|tix_mem\(12) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[300]~159_combout\) # (!\Div0|auto_generated|divider|divider|op_9~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(12),
	datab => \Div0|auto_generated|divider|divider|StageOut[300]~159_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~23\,
	combout => \Div0|auto_generated|divider|divider|op_9~24_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~25\);

-- Location: LCCOMB_X19_Y3_N10
\Div0|auto_generated|divider|divider|op_9~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~28_combout\ = ((\u0|tix_mem\(14) $ (\Div0|auto_generated|divider|divider|StageOut[302]~157_combout\ $ (\Div0|auto_generated|divider|divider|op_9~27\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_9~29\ = CARRY((\u0|tix_mem\(14) & (\Div0|auto_generated|divider|divider|StageOut[302]~157_combout\ & !\Div0|auto_generated|divider|divider|op_9~27\)) # (!\u0|tix_mem\(14) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[302]~157_combout\) # (!\Div0|auto_generated|divider|divider|op_9~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(14),
	datab => \Div0|auto_generated|divider|divider|StageOut[302]~157_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~27\,
	combout => \Div0|auto_generated|divider|divider|op_9~28_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~29\);

-- Location: LCCOMB_X51_Y5_N16
\u1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~8_combout\ = (\u1|count\(4) & (\u1|Add0~7\ $ (GND))) # (!\u1|count\(4) & (!\u1|Add0~7\ & VCC))
-- \u1|Add0~9\ = CARRY((\u1|count\(4) & !\u1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(4),
	datad => VCC,
	cin => \u1|Add0~7\,
	combout => \u1|Add0~8_combout\,
	cout => \u1|Add0~9\);

-- Location: LCCOMB_X51_Y5_N24
\u1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~16_combout\ = (\u1|count\(8) & (\u1|Add0~15\ $ (GND))) # (!\u1|count\(8) & (!\u1|Add0~15\ & VCC))
-- \u1|Add0~17\ = CARRY((\u1|count\(8) & !\u1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(8),
	datad => VCC,
	cin => \u1|Add0~15\,
	combout => \u1|Add0~16_combout\,
	cout => \u1|Add0~17\);

-- Location: LCCOMB_X24_Y3_N0
\u0|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~0_combout\ = \u0|wait_time\(0) $ (VCC)
-- \u0|Add1~1\ = CARRY(\u0|wait_time\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(0),
	datad => VCC,
	combout => \u0|Add1~0_combout\,
	cout => \u0|Add1~1\);

-- Location: LCCOMB_X24_Y3_N6
\u0|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~6_combout\ = (\u0|wait_time\(3) & (!\u0|Add1~5\)) # (!\u0|wait_time\(3) & ((\u0|Add1~5\) # (GND)))
-- \u0|Add1~7\ = CARRY((!\u0|Add1~5\) # (!\u0|wait_time\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(3),
	datad => VCC,
	cin => \u0|Add1~5\,
	combout => \u0|Add1~6_combout\,
	cout => \u0|Add1~7\);

-- Location: LCCOMB_X24_Y3_N8
\u0|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~8_combout\ = (\u0|wait_time\(4) & (\u0|Add1~7\ $ (GND))) # (!\u0|wait_time\(4) & (!\u0|Add1~7\ & VCC))
-- \u0|Add1~9\ = CARRY((\u0|wait_time\(4) & !\u0|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(4),
	datad => VCC,
	cin => \u0|Add1~7\,
	combout => \u0|Add1~8_combout\,
	cout => \u0|Add1~9\);

-- Location: LCCOMB_X24_Y3_N12
\u0|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~12_combout\ = (\u0|wait_time\(6) & (\u0|Add1~11\ $ (GND))) # (!\u0|wait_time\(6) & (!\u0|Add1~11\ & VCC))
-- \u0|Add1~13\ = CARRY((\u0|wait_time\(6) & !\u0|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|wait_time\(6),
	datad => VCC,
	cin => \u0|Add1~11\,
	combout => \u0|Add1~12_combout\,
	cout => \u0|Add1~13\);

-- Location: LCCOMB_X25_Y2_N10
\Div0|auto_generated|divider|divider|StageOut[34]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[34]~15_combout\ = (\Div0|auto_generated|divider|divider|selnose[42]~7_combout\ & (\u0|tix_mem\(0) & !\Div0|auto_generated|divider|divider|op_11~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[42]~7_combout\,
	datac => \u0|tix_mem\(0),
	datad => \Div0|auto_generated|divider|divider|op_11~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[34]~15_combout\);

-- Location: LCCOMB_X24_Y2_N26
\Div0|auto_generated|divider|divider|StageOut[52]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~18_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div0|auto_generated|divider|divider|StageOut[34]~15_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div0|auto_generated|divider|divider|selnose[63]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[63]~8_combout\ & (\Div0|auto_generated|divider|divider|StageOut[34]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[34]~15_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[63]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~18_combout\);

-- Location: LCCOMB_X24_Y2_N0
\Div0|auto_generated|divider|divider|StageOut[69]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[69]~19_combout\ = (\Div0|auto_generated|divider|divider|op_13~10_combout\ & (((\Div0|auto_generated|divider|divider|StageOut\(51))))) # (!\Div0|auto_generated|divider|divider|op_13~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|selnose[84]~9_combout\ & (\Div0|auto_generated|divider|divider|op_13~2_combout\)) # (!\Div0|auto_generated|divider|divider|selnose[84]~9_combout\ & ((\Div0|auto_generated|divider|divider|StageOut\(51))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_13~2_combout\,
	datab => \Div0|auto_generated|divider|divider|op_13~10_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[84]~9_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut\(51),
	combout => \Div0|auto_generated|divider|divider|StageOut[69]~19_combout\);

-- Location: LCCOMB_X24_Y2_N20
\Div0|auto_generated|divider|divider|StageOut[70]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[70]~23_combout\ = (\Div0|auto_generated|divider|divider|op_13~10_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[52]~18_combout\)))) # (!\Div0|auto_generated|divider|divider|op_13~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|selnose[84]~9_combout\ & (\Div0|auto_generated|divider|divider|op_13~4_combout\)) # (!\Div0|auto_generated|divider|divider|selnose[84]~9_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[52]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_13~4_combout\,
	datab => \Div0|auto_generated|divider|divider|op_13~10_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[84]~9_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[52]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[70]~23_combout\);

-- Location: LCCOMB_X24_Y5_N8
\Div0|auto_generated|divider|divider|StageOut[87]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[87]~24_combout\ = (\Div0|auto_generated|divider|divider|selnose[105]~6_combout\ & ((\Div0|auto_generated|divider|divider|op_14~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[69]~19_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_14~12_combout\ & (\Div0|auto_generated|divider|divider|op_14~4_combout\)))) # (!\Div0|auto_generated|divider|divider|selnose[105]~6_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[69]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[105]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|op_14~4_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[69]~19_combout\,
	datad => \Div0|auto_generated|divider|divider|op_14~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[87]~24_combout\);

-- Location: LCCOMB_X24_Y5_N2
\Div0|auto_generated|divider|divider|StageOut[86]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[86]~25_combout\ = (\Div0|auto_generated|divider|divider|op_14~12_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[68]~20_combout\)))) # (!\Div0|auto_generated|divider|divider|op_14~12_combout\ & 
-- ((\Div0|auto_generated|divider|divider|selnose[105]~6_combout\ & (\Div0|auto_generated|divider|divider|op_14~2_combout\)) # (!\Div0|auto_generated|divider|divider|selnose[105]~6_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[68]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_14~2_combout\,
	datab => \Div0|auto_generated|divider|divider|op_14~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[68]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[105]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[86]~25_combout\);

-- Location: LCCOMB_X24_Y5_N10
\Div0|auto_generated|divider|divider|StageOut[90]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[90]~27_combout\ = (\Div0|auto_generated|divider|divider|selnose[105]~6_combout\ & ((\Div0|auto_generated|divider|divider|op_14~12_combout\ & (\Div0|auto_generated|divider|divider|StageOut[72]~21_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|op_14~12_combout\ & ((\Div0|auto_generated|divider|divider|op_14~10_combout\))))) # (!\Div0|auto_generated|divider|divider|selnose[105]~6_combout\ & (\Div0|auto_generated|divider|divider|StageOut[72]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[105]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[72]~21_combout\,
	datac => \Div0|auto_generated|divider|divider|op_14~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_14~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[90]~27_combout\);

-- Location: LCCOMB_X24_Y5_N30
\Div0|auto_generated|divider|divider|StageOut[88]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[88]~29_combout\ = (\Div0|auto_generated|divider|divider|op_14~12_combout\ & (\Div0|auto_generated|divider|divider|StageOut[70]~23_combout\)) # (!\Div0|auto_generated|divider|divider|op_14~12_combout\ & 
-- ((\Div0|auto_generated|divider|divider|selnose[105]~6_combout\ & ((\Div0|auto_generated|divider|divider|op_14~6_combout\))) # (!\Div0|auto_generated|divider|divider|selnose[105]~6_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[70]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[70]~23_combout\,
	datab => \Div0|auto_generated|divider|divider|op_14~12_combout\,
	datac => \Div0|auto_generated|divider|divider|op_14~6_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[105]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[88]~29_combout\);

-- Location: LCCOMB_X25_Y5_N30
\Div0|auto_generated|divider|divider|StageOut[104]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[104]~31_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Div0|auto_generated|divider|divider|StageOut[86]~25_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|selnose[126]~11_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[126]~11_combout\ & (\Div0|auto_generated|divider|divider|StageOut[86]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[86]~25_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[126]~11_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[104]~31_combout\);

-- Location: LCCOMB_X25_Y5_N20
\Div0|auto_generated|divider|divider|StageOut[103]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[103]~32_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[85]~26_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|selnose[126]~11_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[126]~11_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[85]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[85]~26_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[126]~11_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[103]~32_combout\);

-- Location: LCCOMB_X26_Y5_N20
\Div0|auto_generated|divider|divider|StageOut[120]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[120]~39_combout\ = (\Div0|auto_generated|divider|divider|op_16~16_combout\ & (((\Div0|auto_generated|divider|divider|StageOut\(102))))) # (!\Div0|auto_generated|divider|divider|op_16~16_combout\ & 
-- ((\Div0|auto_generated|divider|divider|sel\(119) & ((\Div0|auto_generated|divider|divider|StageOut\(102)))) # (!\Div0|auto_generated|divider|divider|sel\(119) & (\Div0|auto_generated|divider|divider|op_16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut\(102),
	datac => \Div0|auto_generated|divider|divider|op_16~16_combout\,
	datad => \Div0|auto_generated|divider|divider|sel\(119),
	combout => \Div0|auto_generated|divider|divider|StageOut[120]~39_combout\);

-- Location: LCCOMB_X26_Y5_N26
\Div0|auto_generated|divider|divider|StageOut[126]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[126]~41_combout\ = (\Div0|auto_generated|divider|divider|op_16~16_combout\ & (\Div0|auto_generated|divider|divider|StageOut[108]~33_combout\)) # (!\Div0|auto_generated|divider|divider|op_16~16_combout\ & 
-- ((\Div0|auto_generated|divider|divider|sel\(119) & (\Div0|auto_generated|divider|divider|StageOut[108]~33_combout\)) # (!\Div0|auto_generated|divider|divider|sel\(119) & ((\Div0|auto_generated|divider|divider|op_16~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~16_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[108]~33_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~14_combout\,
	datad => \Div0|auto_generated|divider|divider|sel\(119),
	combout => \Div0|auto_generated|divider|divider|StageOut[126]~41_combout\);

-- Location: LCCOMB_X26_Y4_N30
\Div0|auto_generated|divider|divider|StageOut[138]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[138]~47_combout\ = (\Div0|auto_generated|divider|divider|op_17~18_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[120]~39_combout\)))) # (!\Div0|auto_generated|divider|divider|op_17~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|selnose[168]~10_combout\ & ((\Div0|auto_generated|divider|divider|op_17~4_combout\))) # (!\Div0|auto_generated|divider|divider|selnose[168]~10_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[120]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[168]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[120]~39_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[138]~47_combout\);

-- Location: LCCOMB_X27_Y4_N22
\Div0|auto_generated|divider|divider|StageOut[143]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[143]~51_combout\ = (\Div0|auto_generated|divider|divider|selnose[168]~10_combout\ & ((\Div0|auto_generated|divider|divider|op_17~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[125]~42_combout\))) # (!\Div0|auto_generated|divider|divider|op_17~18_combout\ & (\Div0|auto_generated|divider|divider|op_17~14_combout\)))) # (!\Div0|auto_generated|divider|divider|selnose[168]~10_combout\ 
-- & (((\Div0|auto_generated|divider|divider|StageOut[125]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[168]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|op_17~14_combout\,
	datac => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[125]~42_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[143]~51_combout\);

-- Location: LCCOMB_X24_Y4_N30
\Div0|auto_generated|divider|divider|StageOut[161]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[161]~60_combout\ = (\Div0|auto_generated|divider|divider|selnose[189]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[143]~51_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[189]~12_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[143]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[189]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[143]~51_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[161]~60_combout\);

-- Location: LCCOMB_X25_Y4_N2
\Div0|auto_generated|divider|divider|StageOut[160]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[160]~61_combout\ = (\Div0|auto_generated|divider|divider|selnose[189]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[142]~52_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[189]~12_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[142]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[189]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[142]~52_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[160]~61_combout\);

-- Location: LCCOMB_X23_Y4_N24
\Div0|auto_generated|divider|divider|StageOut[172]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[172]~67_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[154]~58_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|selnose[210]~13_combout\ & (\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[210]~13_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[154]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[210]~13_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[154]~58_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[172]~67_combout\);

-- Location: LCCOMB_X23_Y4_N18
\Div0|auto_generated|divider|divider|StageOut[171]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[171]~68_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (((\Div0|auto_generated|divider|divider|StageOut\(153))))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|selnose[210]~13_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[210]~13_combout\ & (\Div0|auto_generated|divider|divider|StageOut\(153)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[210]~13_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut\(153),
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[171]~68_combout\);

-- Location: LCCOMB_X23_Y2_N28
\Div0|auto_generated|divider|divider|StageOut[170]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut\(170) = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\) # (((\u0|tix_mem\(11)) # (!\u0|tix_mem\(0))) # (!\Div0|auto_generated|divider|divider|selnose[231]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	datac => \u0|tix_mem\(11),
	datad => \u0|tix_mem\(0),
	combout => \Div0|auto_generated|divider|divider|StageOut\(170));

-- Location: LCCOMB_X23_Y3_N26
\Div0|auto_generated|divider|divider|StageOut[190]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[190]~77_combout\ = (\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[172]~67_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & (\Div0|auto_generated|divider|divider|StageOut[172]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[172]~67_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[190]~77_combout\);

-- Location: LCCOMB_X23_Y3_N24
\Div0|auto_generated|divider|divider|StageOut[189]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[189]~78_combout\ = (\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[171]~68_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & (\Div0|auto_generated|divider|divider|StageOut[171]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[171]~68_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[189]~78_combout\);

-- Location: LCCOMB_X24_Y1_N10
\Div0|auto_generated|divider|divider|StageOut[197]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[197]~81_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[179]~70_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & ((\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~18_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[179]~70_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[10]~18_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[179]~70_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[197]~81_combout\);

-- Location: LCCOMB_X25_Y1_N0
\Div0|auto_generated|divider|divider|StageOut[212]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[212]~84_combout\ = (\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[194]~73_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & (\Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[194]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12_result_int[8]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[194]~73_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[252]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[212]~84_combout\);

-- Location: LCCOMB_X24_Y1_N6
\Div0|auto_generated|divider|divider|StageOut[211]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[211]~85_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & (\Div0|auto_generated|divider|divider|StageOut[193]~74_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & ((\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[193]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[193]~74_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[252]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[7]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[211]~85_combout\);

-- Location: LCCOMB_X24_Y1_N4
\Div0|auto_generated|divider|divider|StageOut[215]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[215]~93_combout\ = (\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[197]~81_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & (\Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~20_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[197]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[252]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[11]~20_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[197]~81_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[215]~93_combout\);

-- Location: LCCOMB_X22_Y1_N12
\Div0|auto_generated|divider|divider|StageOut[230]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[230]~96_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & (\Div0|auto_generated|divider|divider|StageOut[212]~84_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & ((\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~16_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & (\Div0|auto_generated|divider|divider|StageOut[212]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[212]~84_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[273]~15_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[230]~96_combout\);

-- Location: LCCOMB_X24_Y1_N12
\Div0|auto_generated|divider|divider|StageOut[229]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[229]~97_combout\ = (\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[211]~85_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & (\Div0|auto_generated|divider|divider|StageOut[211]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[211]~85_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[273]~15_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[8]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[229]~97_combout\);

-- Location: LCCOMB_X22_Y1_N16
\Div0|auto_generated|divider|divider|StageOut[222]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[222]~104_combout\ = (\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut\(204)))) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & (\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & (((\Div0|auto_generated|divider|divider|StageOut\(204)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[273]~15_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut\(204),
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[222]~104_combout\);

-- Location: LCCOMB_X22_Y1_N10
\Div0|auto_generated|divider|divider|StageOut[234]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[234]~105_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[216]~92_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & ((\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~24_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & (\Div0|auto_generated|divider|divider|StageOut[216]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[273]~15_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[216]~92_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~24_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[234]~105_combout\);

-- Location: LCCOMB_X24_Y1_N18
\Div0|auto_generated|divider|divider|StageOut[233]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[233]~106_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[215]~93_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & ((\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~22_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & (\Div0|auto_generated|divider|divider|StageOut[215]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[273]~15_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[215]~93_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[12]~22_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[233]~106_combout\);

-- Location: LCCOMB_X21_Y1_N20
\Div0|auto_generated|divider|divider|StageOut[248]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[248]~109_combout\ = (\Div0|auto_generated|divider|divider|op_5~30_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[230]~96_combout\)))) # (!\Div0|auto_generated|divider|divider|op_5~30_combout\ & 
-- ((\u0|tix_mem\(15) & ((\Div0|auto_generated|divider|divider|StageOut[230]~96_combout\))) # (!\u0|tix_mem\(15) & (\Div0|auto_generated|divider|divider|op_5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~30_combout\,
	datab => \Div0|auto_generated|divider|divider|op_5~20_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[230]~96_combout\,
	datad => \u0|tix_mem\(15),
	combout => \Div0|auto_generated|divider|divider|StageOut[248]~109_combout\);

-- Location: LCCOMB_X21_Y1_N16
\Div0|auto_generated|divider|divider|StageOut[245]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[245]~112_combout\ = (\Div0|auto_generated|divider|divider|op_5~30_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[227]~99_combout\)))) # (!\Div0|auto_generated|divider|divider|op_5~30_combout\ & 
-- ((\u0|tix_mem\(15) & ((\Div0|auto_generated|divider|divider|StageOut[227]~99_combout\))) # (!\u0|tix_mem\(15) & (\Div0|auto_generated|divider|divider|op_5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[227]~99_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~30_combout\,
	datad => \u0|tix_mem\(15),
	combout => \Div0|auto_generated|divider|divider|StageOut[245]~112_combout\);

-- Location: LCCOMB_X21_Y1_N0
\Div0|auto_generated|divider|divider|StageOut[241]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[241]~116_combout\ = (\Div0|auto_generated|divider|divider|op_5~30_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[223]~103_combout\)))) # (!\Div0|auto_generated|divider|divider|op_5~30_combout\ & 
-- ((\u0|tix_mem\(15) & ((\Div0|auto_generated|divider|divider|StageOut[223]~103_combout\))) # (!\u0|tix_mem\(15) & (\Div0|auto_generated|divider|divider|op_5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~30_combout\,
	datab => \Div0|auto_generated|divider|divider|op_5~6_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[223]~103_combout\,
	datad => \u0|tix_mem\(15),
	combout => \Div0|auto_generated|divider|divider|StageOut[241]~116_combout\);

-- Location: LCCOMB_X21_Y1_N2
\Div0|auto_generated|divider|divider|StageOut[240]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[240]~117_combout\ = (\Div0|auto_generated|divider|divider|op_5~30_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[222]~104_combout\)))) # (!\Div0|auto_generated|divider|divider|op_5~30_combout\ & 
-- ((\u0|tix_mem\(15) & ((\Div0|auto_generated|divider|divider|StageOut[222]~104_combout\))) # (!\u0|tix_mem\(15) & (\Div0|auto_generated|divider|divider|op_5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~30_combout\,
	datab => \Div0|auto_generated|divider|divider|op_5~4_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[222]~104_combout\,
	datad => \u0|tix_mem\(15),
	combout => \Div0|auto_generated|divider|divider|StageOut[240]~117_combout\);

-- Location: LCCOMB_X22_Y3_N26
\Div0|auto_generated|divider|divider|StageOut[265]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[265]~125_combout\ = (\Div0|auto_generated|divider|divider|op_6~32_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[247]~110_combout\))) # (!\Div0|auto_generated|divider|divider|op_6~32_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_6~32_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~20_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[247]~110_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[265]~125_combout\);

-- Location: LCCOMB_X22_Y3_N24
\Div0|auto_generated|divider|divider|StageOut[270]~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[270]~136_combout\ = (\Div0|auto_generated|divider|divider|StageOut[252]~120_combout\ & \Div0|auto_generated|divider|divider|op_6~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[252]~120_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~32_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[270]~136_combout\);

-- Location: LCCOMB_X18_Y3_N26
\Div0|auto_generated|divider|divider|StageOut[269]~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[269]~138_combout\ = (\Div0|auto_generated|divider|divider|op_6~32_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[251]~121_combout\))) # (!\Div0|auto_generated|divider|divider|op_6~32_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_6~32_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~28_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[251]~121_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[269]~138_combout\);

-- Location: LCCOMB_X21_Y3_N24
\Div0|auto_generated|divider|divider|StageOut[285]~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[285]~140_combout\ = (\Div0|auto_generated|divider|divider|op_7~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[267]~123_combout\))) # (!\Div0|auto_generated|divider|divider|op_7~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_7~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_7~26_combout\,
	datac => \Div0|auto_generated|divider|divider|op_7~34_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[267]~123_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[285]~140_combout\);

-- Location: LCCOMB_X21_Y3_N26
\Div0|auto_generated|divider|divider|StageOut[284]~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[284]~141_combout\ = (\Div0|auto_generated|divider|divider|op_7~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[266]~124_combout\))) # (!\Div0|auto_generated|divider|divider|op_7~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_7~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~24_combout\,
	datac => \Div0|auto_generated|divider|divider|op_7~34_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[266]~124_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[284]~141_combout\);

-- Location: LCCOMB_X21_Y4_N6
\Div0|auto_generated|divider|divider|StageOut[275]~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[275]~150_combout\ = (\Div0|auto_generated|divider|divider|op_7~34_combout\ & (\Div0|auto_generated|divider|divider|StageOut[257]~133_combout\)) # (!\Div0|auto_generated|divider|divider|op_7~34_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~34_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[257]~133_combout\,
	datac => \Div0|auto_generated|divider|divider|op_7~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[275]~150_combout\);

-- Location: LCCOMB_X20_Y4_N12
\Div0|auto_generated|divider|divider|StageOut[272]~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[272]~152_combout\ = (\u0|tix_mem\(0) & !\Div0|auto_generated|divider|divider|op_7~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(0),
	datad => \Div0|auto_generated|divider|divider|op_7~34_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[272]~152_combout\);

-- Location: LCCOMB_X21_Y3_N30
\Div0|auto_generated|divider|divider|StageOut[287]~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[287]~153_combout\ = (!\Div0|auto_generated|divider|divider|op_7~34_combout\ & \Div0|auto_generated|divider|divider|op_7~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_7~34_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~30_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[287]~153_combout\);

-- Location: LCCOMB_X18_Y3_N20
\Div0|auto_generated|divider|divider|StageOut[303]~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[303]~155_combout\ = (\Div0|auto_generated|divider|divider|op_8~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[285]~140_combout\))) # (!\Div0|auto_generated|divider|divider|op_8~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_8~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_8~34_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[285]~140_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[303]~155_combout\);

-- Location: LCCOMB_X20_Y4_N6
\Div0|auto_generated|divider|divider|StageOut[294]~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[294]~165_combout\ = (\Div0|auto_generated|divider|divider|op_8~34_combout\ & (\Div0|auto_generated|divider|divider|StageOut[276]~149_combout\)) # (!\Div0|auto_generated|divider|divider|op_8~34_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[276]~149_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~10_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~34_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[294]~165_combout\);

-- Location: LCCOMB_X18_Y4_N12
\Div0|auto_generated|divider|divider|StageOut[289]~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[289]~169_combout\ = (\u0|tix_mem\(0) & !\Div0|auto_generated|divider|divider|op_8~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(0),
	datac => \Div0|auto_generated|divider|divider|op_8~34_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[289]~169_combout\);

-- Location: LCCOMB_X19_Y3_N24
\Div0|auto_generated|divider|divider|StageOut[320]~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[320]~171_combout\ = (\Div0|auto_generated|divider|divider|op_9~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[302]~157_combout\))) # (!\Div0|auto_generated|divider|divider|op_9~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_9~28_combout\,
	datac => \Div0|auto_generated|divider|divider|op_9~34_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[302]~157_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[320]~171_combout\);

-- Location: LCCOMB_X19_Y3_N20
\Div0|auto_generated|divider|divider|StageOut[316]~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[316]~175_combout\ = (\Div0|auto_generated|divider|divider|op_9~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[298]~161_combout\))) # (!\Div0|auto_generated|divider|divider|op_9~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_9~20_combout\,
	datac => \Div0|auto_generated|divider|divider|op_9~34_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[298]~161_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[316]~175_combout\);

-- Location: LCCOMB_X19_Y3_N26
\Div0|auto_generated|divider|divider|StageOut[315]~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[315]~176_combout\ = (\Div0|auto_generated|divider|divider|op_9~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[297]~162_combout\))) # (!\Div0|auto_generated|divider|divider|op_9~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_9~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_9~34_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[297]~162_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[315]~176_combout\);

-- Location: LCCOMB_X18_Y4_N10
\Div0|auto_generated|divider|divider|StageOut[314]~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[314]~177_combout\ = (\Div0|auto_generated|divider|divider|op_9~34_combout\ & (\Div0|auto_generated|divider|divider|StageOut[296]~163_combout\)) # (!\Div0|auto_generated|divider|divider|op_9~34_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_9~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_9~34_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[296]~163_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[314]~177_combout\);

-- Location: LCCOMB_X19_Y4_N12
\Div0|auto_generated|divider|divider|StageOut[313]~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[313]~178_combout\ = (\Div0|auto_generated|divider|divider|op_9~34_combout\ & (\Div0|auto_generated|divider|divider|StageOut[295]~164_combout\)) # (!\Div0|auto_generated|divider|divider|op_9~34_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_9~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_9~34_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[295]~164_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[313]~178_combout\);

-- Location: LCCOMB_X19_Y4_N6
\Div0|auto_generated|divider|divider|StageOut[312]~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[312]~179_combout\ = (\Div0|auto_generated|divider|divider|op_9~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[294]~165_combout\))) # (!\Div0|auto_generated|divider|divider|op_9~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_9~12_combout\,
	datac => \Div0|auto_generated|divider|divider|op_9~34_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[294]~165_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[312]~179_combout\);

-- Location: LCCOMB_X19_Y4_N4
\Div0|auto_generated|divider|divider|StageOut[311]~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[311]~180_combout\ = (\Div0|auto_generated|divider|divider|op_9~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[293]~166_combout\))) # (!\Div0|auto_generated|divider|divider|op_9~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_9~10_combout\,
	datab => \Div0|auto_generated|divider|divider|op_9~34_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[293]~166_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[311]~180_combout\);

-- Location: LCCOMB_X21_Y2_N12
\process_0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (\Div0|auto_generated|divider|divider|selnose\(273) & (\Div0|auto_generated|divider|divider|selnose\(294) & (\Div0|auto_generated|divider|divider|op_7~34_combout\ & \Div0|auto_generated|divider|divider|selnose\(252)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose\(273) & (!\Div0|auto_generated|divider|divider|selnose\(252) & ((!\Div0|auto_generated|divider|divider|op_7~34_combout\) # (!\Div0|auto_generated|divider|divider|selnose\(294)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose\(273),
	datab => \Div0|auto_generated|divider|divider|selnose\(294),
	datac => \Div0|auto_generated|divider|divider|op_7~34_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose\(252),
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X21_Y2_N26
\process_0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = (\Div0|auto_generated|divider|divider|op_6~32_combout\ & (((\u2|U0bcd[2]~5_combout\ & \Div0|auto_generated|divider|divider|selnose\(252))))) # (!\Div0|auto_generated|divider|divider|op_6~32_combout\ & 
-- (!\Div0|auto_generated|divider|divider|selnose\(273) & ((!\Div0|auto_generated|divider|divider|selnose\(252)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose\(273),
	datab => \Div0|auto_generated|divider|divider|op_6~32_combout\,
	datac => \u2|U0bcd[2]~5_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose\(252),
	combout => \process_0~10_combout\);

-- Location: LCCOMB_X21_Y2_N0
\process_0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~11_combout\ = (\process_0~10_combout\) # ((\process_0~8_combout\ & ((\Div0|auto_generated|divider|divider|op_8~34_combout\) # (!\Div0|auto_generated|divider|divider|selnose\(273)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose\(273),
	datab => \process_0~10_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~34_combout\,
	datad => \process_0~8_combout\,
	combout => \process_0~11_combout\);

-- Location: LCCOMB_X21_Y2_N14
\u2|U0bcd[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U0bcd[0]~3_combout\ = (!\process_0~14_combout\ & (\Div0|auto_generated|divider|divider|selnose\(294) $ (((\u2|U0bcd[2]~5_combout\) # (\Div0|auto_generated|divider|divider|selnose\(252))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~14_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose\(294),
	datac => \u2|U0bcd[2]~5_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose\(252),
	combout => \u2|U0bcd[0]~3_combout\);

-- Location: LCCOMB_X20_Y2_N12
\rpm_mem[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \rpm_mem[2]~3_combout\ = (\process_0~13_combout\) # ((\Div0|auto_generated|divider|divider|op_8~34_combout\) # (\process_0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~13_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~34_combout\,
	datad => \process_0~15_combout\,
	combout => \rpm_mem[2]~3_combout\);

-- Location: LCCOMB_X20_Y2_N10
\u2|U3bcd[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U3bcd[2]~2_combout\ = (\u2|U2bcd[1]~1_combout\ & (\u2|U2bcd[2]~2_combout\ & ((!\u2|U2bcd[0]~0_combout\) # (!\rpm_mem[2]~3_combout\)))) # (!\u2|U2bcd[1]~1_combout\ & (\rpm_mem[2]~3_combout\ & ((\u2|U2bcd[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rpm_mem[2]~3_combout\,
	datab => \u2|U2bcd[2]~2_combout\,
	datac => \u2|U2bcd[1]~1_combout\,
	datad => \u2|U2bcd[0]~0_combout\,
	combout => \u2|U3bcd[2]~2_combout\);

-- Location: LCCOMB_X44_Y2_N12
\u2|U5bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U5bcd[2]~1_combout\ = (\u2|U2bcd[3]~3_combout\ & (\u2|is_gt_4~2_combout\ & \u2|U1bcd[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U2bcd[3]~3_combout\,
	datac => \u2|is_gt_4~2_combout\,
	datad => \u2|U1bcd[3]~4_combout\,
	combout => \u2|U5bcd[2]~1_combout\);

-- Location: LCCOMB_X44_Y2_N20
\u2|U6bcd[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[1]~2_combout\ = (\u2|U2bcd[3]~3_combout\ & (\u2|is_gt_4~2_combout\ & !\u2|U1bcd[3]~4_combout\)) # (!\u2|U2bcd[3]~3_combout\ & (!\u2|is_gt_4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U2bcd[3]~3_combout\,
	datac => \u2|is_gt_4~2_combout\,
	datad => \u2|U1bcd[3]~4_combout\,
	combout => \u2|U6bcd[1]~2_combout\);

-- Location: LCFF_X51_Y5_N7
\u1|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~1_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(8));

-- Location: LCFF_X51_Y5_N17
\u1|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~8_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(4));

-- Location: LCFF_X24_Y3_N7
\u0|wait_time[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|Add1~6_combout\,
	ena => \u0|wait_time[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(3));

-- Location: LCCOMB_X51_Y5_N6
\u1|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count~1_combout\ = (\u1|Add0~16_combout\ & (((!\u1|Equal0~0_combout\) # (!\u1|Equal0~1_combout\)) # (!\u1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~2_combout\,
	datab => \u1|Equal0~1_combout\,
	datac => \u1|Add0~16_combout\,
	datad => \u1|Equal0~0_combout\,
	combout => \u1|count~1_combout\);

-- Location: LCCOMB_X25_Y3_N6
\u0|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~0_combout\ = (\u0|count\(13) & (\u0|count\(12) & \u0|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(13),
	datab => \u0|count\(12),
	datad => \u0|count\(14),
	combout => \u0|LessThan0~0_combout\);

-- Location: LCCOMB_X20_Y3_N26
\Div0|auto_generated|divider|divider|StageOut[304]~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[304]~187_combout\ = (\Div0|auto_generated|divider|divider|op_8~34_combout\ & ((\Div0|auto_generated|divider|divider|op_7~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[268]~139_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_7~34_combout\ & (\Div0|auto_generated|divider|divider|op_7~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~34_combout\,
	datab => \Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[268]~139_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~34_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[304]~187_combout\);

-- Location: LCCOMB_X18_Y3_N30
\Div0|auto_generated|divider|divider|StageOut[321]~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[321]~189_combout\ = (\Div0|auto_generated|divider|divider|op_9~34_combout\ & ((\Div0|auto_generated|divider|divider|op_8~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[285]~140_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_8~34_combout\ & (\Div0|auto_generated|divider|divider|op_8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_9~34_combout\,
	datab => \Div0|auto_generated|divider|divider|op_8~34_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~28_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[285]~140_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[321]~189_combout\);

-- Location: LCCOMB_X18_Y4_N6
\Div0|auto_generated|divider|divider|StageOut[307]~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[307]~190_combout\ = (\Div0|auto_generated|divider|divider|op_9~34_combout\ & (((!\Div0|auto_generated|divider|divider|op_8~34_combout\ & \u0|tix_mem\(0))))) # 
-- (!\Div0|auto_generated|divider|divider|op_9~34_combout\ & (\Div0|auto_generated|divider|divider|op_9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_9~2_combout\,
	datab => \Div0|auto_generated|divider|divider|op_8~34_combout\,
	datac => \u0|tix_mem\(0),
	datad => \Div0|auto_generated|divider|divider|op_9~34_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[307]~190_combout\);

-- Location: LCCOMB_X21_Y1_N26
\u2|U0bcd[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U0bcd[2]~5_combout\ = (\u0|tix_mem\(15)) # ((\Div0|auto_generated|divider|divider|op_5~30_combout\ & ((\u0|tix_mem\(14)) # (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~30_combout\,
	datab => \u0|tix_mem\(14),
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datad => \u0|tix_mem\(15),
	combout => \u2|U0bcd[2]~5_combout\);

-- Location: CLKCTRL_G15
\u1|clkint~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u1|clkint~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u1|clkint~clkctrl_outclk\);

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G14
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: LCCOMB_X51_Y5_N8
\u1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~0_combout\ = \u1|count\(0) $ (VCC)
-- \u1|Add0~1\ = CARRY(\u1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(0),
	datad => VCC,
	combout => \u1|Add0~0_combout\,
	cout => \u1|Add0~1\);

-- Location: PIN_U29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\areset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_areset,
	combout => \areset~combout\);

-- Location: LCFF_X51_Y5_N9
\u1|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~0_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(0));

-- Location: LCCOMB_X51_Y5_N14
\u1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~6_combout\ = (\u1|count\(3) & (!\u1|Add0~5\)) # (!\u1|count\(3) & ((\u1|Add0~5\) # (GND)))
-- \u1|Add0~7\ = CARRY((!\u1|Add0~5\) # (!\u1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(3),
	datad => VCC,
	cin => \u1|Add0~5\,
	combout => \u1|Add0~6_combout\,
	cout => \u1|Add0~7\);

-- Location: LCCOMB_X51_Y5_N18
\u1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~10_combout\ = (\u1|count\(5) & (!\u1|Add0~9\)) # (!\u1|count\(5) & ((\u1|Add0~9\) # (GND)))
-- \u1|Add0~11\ = CARRY((!\u1|Add0~9\) # (!\u1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(5),
	datad => VCC,
	cin => \u1|Add0~9\,
	combout => \u1|Add0~10_combout\,
	cout => \u1|Add0~11\);

-- Location: LCFF_X51_Y5_N19
\u1|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~10_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(5));

-- Location: LCCOMB_X51_Y5_N20
\u1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~12_combout\ = (\u1|count\(6) & (\u1|Add0~11\ $ (GND))) # (!\u1|count\(6) & (!\u1|Add0~11\ & VCC))
-- \u1|Add0~13\ = CARRY((\u1|count\(6) & !\u1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(6),
	datad => VCC,
	cin => \u1|Add0~11\,
	combout => \u1|Add0~12_combout\,
	cout => \u1|Add0~13\);

-- Location: LCCOMB_X51_Y5_N4
\u1|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count~3_combout\ = (\u1|Add0~12_combout\ & (((!\u1|Equal0~0_combout\) # (!\u1|Equal0~1_combout\)) # (!\u1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~2_combout\,
	datab => \u1|Equal0~1_combout\,
	datac => \u1|Add0~12_combout\,
	datad => \u1|Equal0~0_combout\,
	combout => \u1|count~3_combout\);

-- Location: LCFF_X51_Y5_N5
\u1|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~3_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(6));

-- Location: LCCOMB_X51_Y5_N22
\u1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~14_combout\ = (\u1|count\(7) & (!\u1|Add0~13\)) # (!\u1|count\(7) & ((\u1|Add0~13\) # (GND)))
-- \u1|Add0~15\ = CARRY((!\u1|Add0~13\) # (!\u1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(7),
	datad => VCC,
	cin => \u1|Add0~13\,
	combout => \u1|Add0~14_combout\,
	cout => \u1|Add0~15\);

-- Location: LCCOMB_X50_Y5_N30
\u1|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count~2_combout\ = (\u1|Add0~14_combout\ & (((!\u1|Equal0~0_combout\) # (!\u1|Equal0~2_combout\)) # (!\u1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~1_combout\,
	datab => \u1|Equal0~2_combout\,
	datac => \u1|Equal0~0_combout\,
	datad => \u1|Add0~14_combout\,
	combout => \u1|count~2_combout\);

-- Location: LCFF_X50_Y5_N31
\u1|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~2_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(7));

-- Location: LCCOMB_X50_Y5_N2
\u1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Equal0~1_combout\ = (\u1|count\(8) & (!\u1|count\(5) & (\u1|count\(7) & \u1|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(8),
	datab => \u1|count\(5),
	datac => \u1|count\(7),
	datad => \u1|count\(6),
	combout => \u1|Equal0~1_combout\);

-- Location: LCCOMB_X51_Y5_N10
\u1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~2_combout\ = (\u1|count\(1) & (!\u1|Add0~1\)) # (!\u1|count\(1) & ((\u1|Add0~1\) # (GND)))
-- \u1|Add0~3\ = CARRY((!\u1|Add0~1\) # (!\u1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datad => VCC,
	cin => \u1|Add0~1\,
	combout => \u1|Add0~2_combout\,
	cout => \u1|Add0~3\);

-- Location: LCCOMB_X51_Y5_N12
\u1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~4_combout\ = (\u1|count\(2) & (\u1|Add0~3\ $ (GND))) # (!\u1|count\(2) & (!\u1|Add0~3\ & VCC))
-- \u1|Add0~5\ = CARRY((\u1|count\(2) & !\u1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(2),
	datad => VCC,
	cin => \u1|Add0~3\,
	combout => \u1|Add0~4_combout\,
	cout => \u1|Add0~5\);

-- Location: LCCOMB_X51_Y5_N2
\u1|count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count~4_combout\ = (\u1|Add0~4_combout\ & (((!\u1|Equal0~2_combout\) # (!\u1|Equal0~1_combout\)) # (!\u1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~0_combout\,
	datab => \u1|Equal0~1_combout\,
	datac => \u1|Equal0~2_combout\,
	datad => \u1|Add0~4_combout\,
	combout => \u1|count~4_combout\);

-- Location: LCFF_X51_Y5_N3
\u1|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~4_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(2));

-- Location: LCFF_X51_Y5_N15
\u1|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~6_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(3));

-- Location: LCFF_X51_Y5_N11
\u1|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~2_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(1));

-- Location: LCCOMB_X50_Y5_N0
\u1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Equal0~2_combout\ = (!\u1|count\(4) & (!\u1|count\(3) & (\u1|count\(1) & !\u1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(4),
	datab => \u1|count\(3),
	datac => \u1|count\(1),
	datad => \u1|count\(2),
	combout => \u1|Equal0~2_combout\);

-- Location: LCCOMB_X51_Y5_N26
\u1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~18_combout\ = (\u1|count\(9) & (!\u1|Add0~17\)) # (!\u1|count\(9) & ((\u1|Add0~17\) # (GND)))
-- \u1|Add0~19\ = CARRY((!\u1|Add0~17\) # (!\u1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(9),
	datad => VCC,
	cin => \u1|Add0~17\,
	combout => \u1|Add0~18_combout\,
	cout => \u1|Add0~19\);

-- Location: LCFF_X51_Y5_N27
\u1|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~18_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(9));

-- Location: LCCOMB_X51_Y5_N28
\u1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~20_combout\ = (\u1|count\(10) & (\u1|Add0~19\ $ (GND))) # (!\u1|count\(10) & (!\u1|Add0~19\ & VCC))
-- \u1|Add0~21\ = CARRY((\u1|count\(10) & !\u1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(10),
	datad => VCC,
	cin => \u1|Add0~19\,
	combout => \u1|Add0~20_combout\,
	cout => \u1|Add0~21\);

-- Location: LCFF_X51_Y5_N29
\u1|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~20_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(10));

-- Location: LCCOMB_X51_Y5_N30
\u1|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~22_combout\ = \u1|Add0~21\ $ (\u1|count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u1|count\(11),
	cin => \u1|Add0~21\,
	combout => \u1|Add0~22_combout\);

-- Location: LCCOMB_X51_Y5_N0
\u1|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count~0_combout\ = (\u1|Add0~22_combout\ & (((!\u1|Equal0~1_combout\) # (!\u1|Equal0~2_combout\)) # (!\u1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~0_combout\,
	datab => \u1|Equal0~2_combout\,
	datac => \u1|Equal0~1_combout\,
	datad => \u1|Add0~22_combout\,
	combout => \u1|count~0_combout\);

-- Location: LCFF_X51_Y5_N1
\u1|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~0_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(11));

-- Location: LCCOMB_X50_Y5_N14
\u1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Equal0~0_combout\ = (!\u1|count\(9) & (\u1|count\(0) & (\u1|count\(11) & !\u1|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(9),
	datab => \u1|count\(0),
	datac => \u1|count\(11),
	datad => \u1|count\(10),
	combout => \u1|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y5_N16
\u1|clkint~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|clkint~0_combout\ = \u1|clkint~regout\ $ (((\u1|Equal0~1_combout\ & (\u1|Equal0~0_combout\ & \u1|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~1_combout\,
	datab => \u1|Equal0~0_combout\,
	datac => \u1|clkint~regout\,
	datad => \u1|Equal0~2_combout\,
	combout => \u1|clkint~0_combout\);

-- Location: LCFF_X50_Y5_N17
\u1|clkint\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|clkint~0_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|clkint~regout\);

-- Location: LCCOMB_X26_Y3_N0
\u0|count[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[0]~16_combout\ = !\u0|count\(0)
-- \u0|count[0]~17\ = CARRY(!\u0|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(0),
	combout => \u0|count[0]~16_combout\,
	cout => \u0|count[0]~17\);

-- Location: LCCOMB_X27_Y3_N14
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X24_Y3_N2
\u0|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~2_combout\ = (\u0|wait_time\(1) & (!\u0|Add1~1\)) # (!\u0|wait_time\(1) & ((\u0|Add1~1\) # (GND)))
-- \u0|Add1~3\ = CARRY((!\u0|Add1~1\) # (!\u0|wait_time\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|wait_time\(1),
	datad => VCC,
	cin => \u0|Add1~1\,
	combout => \u0|Add1~2_combout\,
	cout => \u0|Add1~3\);

-- Location: LCFF_X24_Y3_N3
\u0|wait_time[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|Add1~2_combout\,
	ena => \u0|wait_time[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(1));

-- Location: LCCOMB_X25_Y3_N10
\u0|wait_time[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[0]~0_combout\ = (\areset~combout\ & ((!\u0|Equal0~2_combout\) # (!\u0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \areset~combout\,
	datab => \u0|Equal0~0_combout\,
	datad => \u0|Equal0~2_combout\,
	combout => \u0|wait_time[0]~0_combout\);

-- Location: LCCOMB_X25_Y3_N16
\u0|wait_time[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[0]~8_combout\ = (\u0|Add1~0_combout\ & ((\u0|wait_time[0]~0_combout\) # ((!\areset~combout\ & \u0|wait_time\(0))))) # (!\u0|Add1~0_combout\ & (!\areset~combout\ & (\u0|wait_time\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add1~0_combout\,
	datab => \areset~combout\,
	datac => \u0|wait_time\(0),
	datad => \u0|wait_time[0]~0_combout\,
	combout => \u0|wait_time[0]~8_combout\);

-- Location: LCFF_X25_Y3_N17
\u0|wait_time[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(0));

-- Location: LCCOMB_X24_Y3_N30
\u0|wait_time[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[6]~6_combout\ = (\u0|Add1~12_combout\ & ((\u0|wait_time[0]~0_combout\) # ((!\u0|wait_time[10]~1_combout\ & \u0|wait_time\(6))))) # (!\u0|Add1~12_combout\ & (!\u0|wait_time[10]~1_combout\ & (\u0|wait_time\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add1~12_combout\,
	datab => \u0|wait_time[10]~1_combout\,
	datac => \u0|wait_time\(6),
	datad => \u0|wait_time[0]~0_combout\,
	combout => \u0|wait_time[6]~6_combout\);

-- Location: LCFF_X24_Y3_N31
\u0|wait_time[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(6));

-- Location: LCCOMB_X24_Y3_N24
\u0|wait_time[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[4]~7_combout\ = (\u0|Add1~8_combout\ & ((\u0|wait_time[0]~0_combout\) # ((!\u0|wait_time[10]~1_combout\ & \u0|wait_time\(4))))) # (!\u0|Add1~8_combout\ & (!\u0|wait_time[10]~1_combout\ & (\u0|wait_time\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add1~8_combout\,
	datab => \u0|wait_time[10]~1_combout\,
	datac => \u0|wait_time\(4),
	datad => \u0|wait_time[0]~0_combout\,
	combout => \u0|wait_time[4]~7_combout\);

-- Location: LCFF_X24_Y3_N25
\u0|wait_time[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(4));

-- Location: LCCOMB_X24_Y3_N4
\u0|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~4_combout\ = (\u0|wait_time\(2) & (\u0|Add1~3\ $ (GND))) # (!\u0|wait_time\(2) & (!\u0|Add1~3\ & VCC))
-- \u0|Add1~5\ = CARRY((\u0|wait_time\(2) & !\u0|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|wait_time\(2),
	datad => VCC,
	cin => \u0|Add1~3\,
	combout => \u0|Add1~4_combout\,
	cout => \u0|Add1~5\);

-- Location: LCFF_X24_Y3_N5
\u0|wait_time[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|Add1~4_combout\,
	ena => \u0|wait_time[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(2));

-- Location: LCCOMB_X24_Y3_N10
\u0|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~10_combout\ = (\u0|wait_time\(5) & (!\u0|Add1~9\)) # (!\u0|wait_time\(5) & ((\u0|Add1~9\) # (GND)))
-- \u0|Add1~11\ = CARRY((!\u0|Add1~9\) # (!\u0|wait_time\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|wait_time\(5),
	datad => VCC,
	cin => \u0|Add1~9\,
	combout => \u0|Add1~10_combout\,
	cout => \u0|Add1~11\);

-- Location: LCFF_X24_Y3_N11
\u0|wait_time[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|Add1~10_combout\,
	ena => \u0|wait_time[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(5));

-- Location: LCCOMB_X24_Y3_N26
\u0|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal0~1_combout\ = (!\u0|wait_time\(3) & (\u0|wait_time\(6) & (\u0|wait_time\(4) & !\u0|wait_time\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(3),
	datab => \u0|wait_time\(6),
	datac => \u0|wait_time\(4),
	datad => \u0|wait_time\(5),
	combout => \u0|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y3_N28
\u0|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal0~2_combout\ = (!\u0|wait_time\(2) & (!\u0|wait_time\(1) & (!\u0|wait_time\(0) & \u0|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(2),
	datab => \u0|wait_time\(1),
	datac => \u0|wait_time\(0),
	datad => \u0|Equal0~1_combout\,
	combout => \u0|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y3_N14
\u0|wait_time[10]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[10]~1_combout\ = (\areset~combout\ & ((\hall_sens~combout\) # ((!\u0|Equal0~2_combout\) # (!\u0|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hall_sens~combout\,
	datab => \u0|Equal0~0_combout\,
	datac => \areset~combout\,
	datad => \u0|Equal0~2_combout\,
	combout => \u0|wait_time[10]~1_combout\);

-- Location: LCCOMB_X24_Y3_N14
\u0|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~14_combout\ = (\u0|wait_time\(7) & (!\u0|Add1~13\)) # (!\u0|wait_time\(7) & ((\u0|Add1~13\) # (GND)))
-- \u0|Add1~15\ = CARRY((!\u0|Add1~13\) # (!\u0|wait_time\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(7),
	datad => VCC,
	cin => \u0|Add1~13\,
	combout => \u0|Add1~14_combout\,
	cout => \u0|Add1~15\);

-- Location: LCCOMB_X24_Y3_N16
\u0|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~16_combout\ = (\u0|wait_time\(8) & (\u0|Add1~15\ $ (GND))) # (!\u0|wait_time\(8) & (!\u0|Add1~15\ & VCC))
-- \u0|Add1~17\ = CARRY((\u0|wait_time\(8) & !\u0|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|wait_time\(8),
	datad => VCC,
	cin => \u0|Add1~15\,
	combout => \u0|Add1~16_combout\,
	cout => \u0|Add1~17\);

-- Location: LCCOMB_X25_Y3_N22
\u0|wait_time[8]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[8]~4_combout\ = (\u0|wait_time[0]~0_combout\ & ((\u0|Add1~16_combout\) # ((!\u0|wait_time[10]~1_combout\ & \u0|wait_time\(8))))) # (!\u0|wait_time[0]~0_combout\ & (!\u0|wait_time[10]~1_combout\ & (\u0|wait_time\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time[0]~0_combout\,
	datab => \u0|wait_time[10]~1_combout\,
	datac => \u0|wait_time\(8),
	datad => \u0|Add1~16_combout\,
	combout => \u0|wait_time[8]~4_combout\);

-- Location: LCFF_X25_Y3_N23
\u0|wait_time[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(8));

-- Location: LCCOMB_X25_Y3_N4
\u0|wait_time[7]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[7]~5_combout\ = (\u0|wait_time[0]~0_combout\ & ((\u0|Add1~14_combout\) # ((!\u0|wait_time[10]~1_combout\ & \u0|wait_time\(7))))) # (!\u0|wait_time[0]~0_combout\ & (!\u0|wait_time[10]~1_combout\ & (\u0|wait_time\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time[0]~0_combout\,
	datab => \u0|wait_time[10]~1_combout\,
	datac => \u0|wait_time\(7),
	datad => \u0|Add1~14_combout\,
	combout => \u0|wait_time[7]~5_combout\);

-- Location: LCFF_X25_Y3_N5
\u0|wait_time[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(7));

-- Location: LCCOMB_X24_Y3_N18
\u0|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~18_combout\ = (\u0|wait_time\(9) & (!\u0|Add1~17\)) # (!\u0|wait_time\(9) & ((\u0|Add1~17\) # (GND)))
-- \u0|Add1~19\ = CARRY((!\u0|Add1~17\) # (!\u0|wait_time\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|wait_time\(9),
	datad => VCC,
	cin => \u0|Add1~17\,
	combout => \u0|Add1~18_combout\,
	cout => \u0|Add1~19\);

-- Location: LCCOMB_X25_Y3_N24
\u0|wait_time[9]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[9]~3_combout\ = (\u0|wait_time[0]~0_combout\ & ((\u0|Add1~18_combout\) # ((!\u0|wait_time[10]~1_combout\ & \u0|wait_time\(9))))) # (!\u0|wait_time[0]~0_combout\ & (!\u0|wait_time[10]~1_combout\ & (\u0|wait_time\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time[0]~0_combout\,
	datab => \u0|wait_time[10]~1_combout\,
	datac => \u0|wait_time\(9),
	datad => \u0|Add1~18_combout\,
	combout => \u0|wait_time[9]~3_combout\);

-- Location: LCFF_X25_Y3_N25
\u0|wait_time[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(9));

-- Location: LCCOMB_X24_Y3_N20
\u0|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~20_combout\ = \u0|Add1~19\ $ (!\u0|wait_time\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u0|wait_time\(10),
	cin => \u0|Add1~19\,
	combout => \u0|Add1~20_combout\);

-- Location: LCCOMB_X25_Y3_N2
\u0|wait_time[10]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[10]~2_combout\ = (\u0|wait_time[0]~0_combout\ & ((\u0|Add1~20_combout\) # ((!\u0|wait_time[10]~1_combout\ & \u0|wait_time\(10))))) # (!\u0|wait_time[0]~0_combout\ & (!\u0|wait_time[10]~1_combout\ & (\u0|wait_time\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time[0]~0_combout\,
	datab => \u0|wait_time[10]~1_combout\,
	datac => \u0|wait_time\(10),
	datad => \u0|Add1~20_combout\,
	combout => \u0|wait_time[10]~2_combout\);

-- Location: LCFF_X25_Y3_N3
\u0|wait_time[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(10));

-- Location: LCCOMB_X25_Y3_N18
\u0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal0~0_combout\ = (\u0|wait_time\(9) & (\u0|wait_time\(8) & (\u0|wait_time\(7) & \u0|wait_time\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(9),
	datab => \u0|wait_time\(8),
	datac => \u0|wait_time\(7),
	datad => \u0|wait_time\(10),
	combout => \u0|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y3_N26
\u0|count[9]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[9]~22_combout\ = (\u0|count\(15)) # ((\hall_sens~combout\ & (\u0|Equal0~0_combout\ & \u0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hall_sens~combout\,
	datab => \u0|Equal0~0_combout\,
	datac => \u0|count\(15),
	datad => \u0|Equal0~2_combout\,
	combout => \u0|count[9]~22_combout\);

-- Location: LCCOMB_X26_Y3_N20
\u0|count[10]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[10]~38_combout\ = (\u0|count\(10) & (\u0|count[9]~37\ $ (GND))) # (!\u0|count\(10) & (!\u0|count[9]~37\ & VCC))
-- \u0|count[10]~39\ = CARRY((\u0|count\(10) & !\u0|count[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(10),
	datad => VCC,
	cin => \u0|count[9]~37\,
	combout => \u0|count[10]~38_combout\,
	cout => \u0|count[10]~39\);

-- Location: LCFF_X26_Y3_N21
\u0|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[10]~38_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|count[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(10));

-- Location: LCCOMB_X26_Y3_N10
\u0|count[5]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[5]~28_combout\ = (\u0|count\(5) & (!\u0|count[4]~27\)) # (!\u0|count\(5) & ((\u0|count[4]~27\) # (GND)))
-- \u0|count[5]~29\ = CARRY((!\u0|count[4]~27\) # (!\u0|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(5),
	datad => VCC,
	cin => \u0|count[4]~27\,
	combout => \u0|count[5]~28_combout\,
	cout => \u0|count[5]~29\);

-- Location: LCFF_X26_Y3_N11
\u0|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[5]~28_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|count[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(5));

-- Location: LCCOMB_X25_Y3_N8
\u0|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~2_combout\ = (\u0|count\(4) & \u0|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(4),
	datad => \u0|count\(5),
	combout => \u0|LessThan0~2_combout\);

-- Location: LCCOMB_X26_Y3_N12
\u0|count[6]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[6]~30_combout\ = (\u0|count\(6) & (\u0|count[5]~29\ $ (GND))) # (!\u0|count\(6) & (!\u0|count[5]~29\ & VCC))
-- \u0|count[6]~31\ = CARRY((\u0|count\(6) & !\u0|count[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(6),
	datad => VCC,
	cin => \u0|count[5]~29\,
	combout => \u0|count[6]~30_combout\,
	cout => \u0|count[6]~31\);

-- Location: LCFF_X26_Y3_N13
\u0|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[6]~30_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|count[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(6));

-- Location: LCCOMB_X26_Y3_N6
\u0|count[3]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[3]~24_combout\ = (\u0|count\(3) & (!\u0|count[2]~21\)) # (!\u0|count\(3) & ((\u0|count[2]~21\) # (GND)))
-- \u0|count[3]~25\ = CARRY((!\u0|count[2]~21\) # (!\u0|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(3),
	datad => VCC,
	cin => \u0|count[2]~21\,
	combout => \u0|count[3]~24_combout\,
	cout => \u0|count[3]~25\);

-- Location: LCFF_X26_Y3_N7
\u0|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[3]~24_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|count[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(3));

-- Location: LCCOMB_X25_Y3_N0
\u0|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~1_combout\ = (\u0|count\(1)) # (((\u0|count\(2)) # (\u0|count\(3))) # (!\u0|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(1),
	datab => \u0|count\(0),
	datac => \u0|count\(2),
	datad => \u0|count\(3),
	combout => \u0|LessThan0~1_combout\);

-- Location: LCCOMB_X25_Y3_N12
\u0|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~3_combout\ = (\u0|count\(7)) # ((\u0|count\(6)) # ((\u0|LessThan0~2_combout\ & \u0|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(7),
	datab => \u0|LessThan0~2_combout\,
	datac => \u0|count\(6),
	datad => \u0|LessThan0~1_combout\,
	combout => \u0|LessThan0~3_combout\);

-- Location: LCCOMB_X25_Y3_N28
\u0|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~4_combout\ = (\u0|count\(10) & ((\u0|count\(9)) # ((\u0|count\(8) & \u0|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(8),
	datab => \u0|count\(9),
	datac => \u0|count\(10),
	datad => \u0|LessThan0~3_combout\,
	combout => \u0|LessThan0~4_combout\);

-- Location: LCCOMB_X25_Y3_N30
\u0|count[9]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[9]~23_combout\ = (\u0|count[9]~22_combout\) # ((\u0|LessThan0~0_combout\ & ((\u0|count\(11)) # (\u0|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|LessThan0~0_combout\,
	datab => \u0|count[9]~22_combout\,
	datac => \u0|count\(11),
	datad => \u0|LessThan0~4_combout\,
	combout => \u0|count[9]~23_combout\);

-- Location: LCFF_X26_Y3_N1
\u0|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[0]~16_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|count[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(0));

-- Location: LCCOMB_X26_Y3_N2
\u0|count[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[1]~18_combout\ = (\u0|count\(1) & (!\u0|count[0]~17\)) # (!\u0|count\(1) & ((\u0|count[0]~17\) # (GND)))
-- \u0|count[1]~19\ = CARRY((!\u0|count[0]~17\) # (!\u0|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(1),
	datad => VCC,
	cin => \u0|count[0]~17\,
	combout => \u0|count[1]~18_combout\,
	cout => \u0|count[1]~19\);

-- Location: LCFF_X26_Y3_N3
\u0|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[1]~18_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|count[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(1));

-- Location: LCCOMB_X26_Y3_N4
\u0|count[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[2]~20_combout\ = (\u0|count\(2) & (\u0|count[1]~19\ $ (GND))) # (!\u0|count\(2) & (!\u0|count[1]~19\ & VCC))
-- \u0|count[2]~21\ = CARRY((\u0|count\(2) & !\u0|count[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(2),
	datad => VCC,
	cin => \u0|count[1]~19\,
	combout => \u0|count[2]~20_combout\,
	cout => \u0|count[2]~21\);

-- Location: LCFF_X26_Y3_N5
\u0|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[2]~20_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|count[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(2));

-- Location: LCCOMB_X26_Y3_N8
\u0|count[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[4]~26_combout\ = (\u0|count\(4) & (\u0|count[3]~25\ $ (GND))) # (!\u0|count\(4) & (!\u0|count[3]~25\ & VCC))
-- \u0|count[4]~27\ = CARRY((\u0|count\(4) & !\u0|count[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(4),
	datad => VCC,
	cin => \u0|count[3]~25\,
	combout => \u0|count[4]~26_combout\,
	cout => \u0|count[4]~27\);

-- Location: LCFF_X26_Y3_N9
\u0|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[4]~26_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|count[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(4));

-- Location: LCCOMB_X26_Y3_N14
\u0|count[7]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[7]~32_combout\ = (\u0|count\(7) & (!\u0|count[6]~31\)) # (!\u0|count\(7) & ((\u0|count[6]~31\) # (GND)))
-- \u0|count[7]~33\ = CARRY((!\u0|count[6]~31\) # (!\u0|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(7),
	datad => VCC,
	cin => \u0|count[6]~31\,
	combout => \u0|count[7]~32_combout\,
	cout => \u0|count[7]~33\);

-- Location: LCFF_X26_Y3_N15
\u0|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[7]~32_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|count[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(7));

-- Location: LCCOMB_X26_Y3_N16
\u0|count[8]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[8]~34_combout\ = (\u0|count\(8) & (\u0|count[7]~33\ $ (GND))) # (!\u0|count\(8) & (!\u0|count[7]~33\ & VCC))
-- \u0|count[8]~35\ = CARRY((\u0|count\(8) & !\u0|count[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(8),
	datad => VCC,
	cin => \u0|count[7]~33\,
	combout => \u0|count[8]~34_combout\,
	cout => \u0|count[8]~35\);

-- Location: LCCOMB_X26_Y3_N18
\u0|count[9]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[9]~36_combout\ = (\u0|count\(9) & (!\u0|count[8]~35\)) # (!\u0|count\(9) & ((\u0|count[8]~35\) # (GND)))
-- \u0|count[9]~37\ = CARRY((!\u0|count[8]~35\) # (!\u0|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(9),
	datad => VCC,
	cin => \u0|count[8]~35\,
	combout => \u0|count[9]~36_combout\,
	cout => \u0|count[9]~37\);

-- Location: LCFF_X26_Y3_N19
\u0|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[9]~36_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|count[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(9));

-- Location: LCCOMB_X26_Y3_N22
\u0|count[11]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[11]~40_combout\ = (\u0|count\(11) & (!\u0|count[10]~39\)) # (!\u0|count\(11) & ((\u0|count[10]~39\) # (GND)))
-- \u0|count[11]~41\ = CARRY((!\u0|count[10]~39\) # (!\u0|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(11),
	datad => VCC,
	cin => \u0|count[10]~39\,
	combout => \u0|count[11]~40_combout\,
	cout => \u0|count[11]~41\);

-- Location: LCFF_X26_Y3_N23
\u0|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[11]~40_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|count[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(11));

-- Location: LCCOMB_X26_Y3_N24
\u0|count[12]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[12]~42_combout\ = (\u0|count\(12) & (\u0|count[11]~41\ $ (GND))) # (!\u0|count\(12) & (!\u0|count[11]~41\ & VCC))
-- \u0|count[12]~43\ = CARRY((\u0|count\(12) & !\u0|count[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(12),
	datad => VCC,
	cin => \u0|count[11]~41\,
	combout => \u0|count[12]~42_combout\,
	cout => \u0|count[12]~43\);

-- Location: LCCOMB_X26_Y3_N26
\u0|count[13]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[13]~44_combout\ = (\u0|count\(13) & (!\u0|count[12]~43\)) # (!\u0|count\(13) & ((\u0|count[12]~43\) # (GND)))
-- \u0|count[13]~45\ = CARRY((!\u0|count[12]~43\) # (!\u0|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(13),
	datad => VCC,
	cin => \u0|count[12]~43\,
	combout => \u0|count[13]~44_combout\,
	cout => \u0|count[13]~45\);

-- Location: LCFF_X26_Y3_N27
\u0|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[13]~44_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|count[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(13));

-- Location: LCCOMB_X26_Y3_N28
\u0|count[14]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[14]~46_combout\ = (\u0|count\(14) & (\u0|count[13]~45\ $ (GND))) # (!\u0|count\(14) & (!\u0|count[13]~45\ & VCC))
-- \u0|count[14]~47\ = CARRY((\u0|count\(14) & !\u0|count[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(14),
	datad => VCC,
	cin => \u0|count[13]~45\,
	combout => \u0|count[14]~46_combout\,
	cout => \u0|count[14]~47\);

-- Location: LCFF_X26_Y3_N29
\u0|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[14]~46_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|count[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(14));

-- Location: LCCOMB_X26_Y3_N30
\u0|count[15]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[15]~48_combout\ = \u0|count[14]~47\ $ (\u0|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u0|count\(15),
	cin => \u0|count[14]~47\,
	combout => \u0|count[15]~48_combout\);

-- Location: LCFF_X26_Y3_N31
\u0|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[15]~48_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|count[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(15));

-- Location: PIN_G30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\hall_sens~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_hall_sens,
	combout => \hall_sens~combout\);

-- Location: LCCOMB_X24_Y3_N22
\u0|tix_mem[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem[0]~0_combout\ = (\areset~combout\ & (\u0|Equal0~0_combout\ & (\hall_sens~combout\ & \u0|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \areset~combout\,
	datab => \u0|Equal0~0_combout\,
	datac => \hall_sens~combout\,
	datad => \u0|Equal0~2_combout\,
	combout => \u0|tix_mem[0]~0_combout\);

-- Location: LCFF_X25_Y3_N27
\u0|tix_mem[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(15),
	sload => VCC,
	ena => \u0|tix_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(15));

-- Location: LCFF_X23_Y3_N17
\u0|tix_mem[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(13),
	sload => VCC,
	ena => \u0|tix_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(13));

-- Location: LCFF_X25_Y3_N31
\u0|tix_mem[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(11),
	sload => VCC,
	ena => \u0|tix_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(11));

-- Location: LCFF_X23_Y3_N3
\u0|tix_mem[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(14),
	sload => VCC,
	ena => \u0|tix_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(14));

-- Location: LCCOMB_X22_Y1_N26
\Div0|auto_generated|divider|divider|selnose[273]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[273]~15_combout\ = (!\u0|tix_mem\(14) & !\u0|tix_mem\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|tix_mem\(14),
	datac => \u0|tix_mem\(15),
	combout => \Div0|auto_generated|divider|divider|selnose[273]~15_combout\);

-- Location: LCFF_X23_Y3_N1
\u0|tix_mem[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(4),
	sload => VCC,
	ena => \u0|tix_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(4));

-- Location: LCFF_X25_Y3_N1
\u0|tix_mem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(2),
	sload => VCC,
	ena => \u0|tix_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(2));

-- Location: LCCOMB_X27_Y3_N0
\u0|tix_mem[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem[0]~1_combout\ = !\u0|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|count\(0),
	combout => \u0|tix_mem[0]~1_combout\);

-- Location: LCFF_X27_Y3_N1
\u0|tix_mem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem[0]~1_combout\,
	ena => \u0|tix_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(0));

-- Location: LCFF_X26_Y3_N17
\u0|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[8]~34_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|count[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(8));

-- Location: LCFF_X23_Y3_N19
\u0|tix_mem[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(8),
	sload => VCC,
	ena => \u0|tix_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(8));

-- Location: LCCOMB_X25_Y3_N20
\u0|tix_mem[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem[3]~feeder_combout\ = \u0|count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|count\(3),
	combout => \u0|tix_mem[3]~feeder_combout\);

-- Location: LCFF_X25_Y3_N21
\u0|tix_mem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem[3]~feeder_combout\,
	ena => \u0|tix_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(3));

-- Location: LCFF_X25_Y3_N7
\u0|tix_mem[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(9),
	sload => VCC,
	ena => \u0|tix_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(9));

-- Location: LCFF_X25_Y3_N29
\u0|tix_mem[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(10),
	sload => VCC,
	ena => \u0|tix_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(10));

-- Location: LCCOMB_X23_Y2_N22
\Div0|auto_generated|divider|divider|selnose[105]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[105]~5_combout\ = (!\u0|tix_mem\(7) & (!\u0|tix_mem\(11) & (!\u0|tix_mem\(9) & !\u0|tix_mem\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(7),
	datab => \u0|tix_mem\(11),
	datac => \u0|tix_mem\(9),
	datad => \u0|tix_mem\(10),
	combout => \Div0|auto_generated|divider|divider|selnose[105]~5_combout\);

-- Location: LCFF_X26_Y3_N25
\u0|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[12]~42_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|count[9]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(12));

-- Location: LCFF_X25_Y3_N9
\u0|tix_mem[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(12),
	sload => VCC,
	ena => \u0|tix_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(12));

-- Location: LCCOMB_X23_Y2_N0
\Div0|auto_generated|divider|divider|selnose[231]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[231]~4_combout\ = (!\u0|tix_mem\(14) & (!\u0|tix_mem\(12) & (!\u0|tix_mem\(13) & !\u0|tix_mem\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(14),
	datab => \u0|tix_mem\(12),
	datac => \u0|tix_mem\(13),
	datad => \u0|tix_mem\(15),
	combout => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\);

-- Location: LCFF_X25_Y3_N13
\u0|tix_mem[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(6),
	sload => VCC,
	ena => \u0|tix_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(6));

-- Location: LCCOMB_X24_Y2_N8
\Div0|auto_generated|divider|divider|selnose[105]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[105]~6_combout\ = (!\u0|tix_mem\(8) & (\Div0|auto_generated|divider|divider|selnose[105]~5_combout\ & (\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & !\u0|tix_mem\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(8),
	datab => \Div0|auto_generated|divider|divider|selnose[105]~5_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	datad => \u0|tix_mem\(6),
	combout => \Div0|auto_generated|divider|divider|selnose[105]~6_combout\);

-- Location: LCCOMB_X24_Y2_N14
\Div0|auto_generated|divider|divider|selnose[42]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[42]~7_combout\ = (!\u0|tix_mem\(5) & (\Div0|auto_generated|divider|divider|selnose[105]~6_combout\ & (!\u0|tix_mem\(4) & !\u0|tix_mem\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(5),
	datab => \Div0|auto_generated|divider|divider|selnose[105]~6_combout\,
	datac => \u0|tix_mem\(4),
	datad => \u0|tix_mem\(3),
	combout => \Div0|auto_generated|divider|divider|selnose[42]~7_combout\);

-- Location: LCFF_X25_Y3_N11
\u0|tix_mem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(1),
	sload => VCC,
	ena => \u0|tix_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(1));

-- Location: LCCOMB_X25_Y2_N0
\Div0|auto_generated|divider|divider|op_11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~1_cout\ = CARRY(!\u0|tix_mem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(0),
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_11~1_cout\);

-- Location: LCCOMB_X25_Y2_N2
\Div0|auto_generated|divider|divider|op_11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~2_combout\ = (\u0|tix_mem\(1) & ((\Div0|auto_generated|divider|divider|op_11~1_cout\) # (GND))) # (!\u0|tix_mem\(1) & (!\Div0|auto_generated|divider|divider|op_11~1_cout\))
-- \Div0|auto_generated|divider|divider|op_11~3\ = CARRY((\u0|tix_mem\(1)) # (!\Div0|auto_generated|divider|divider|op_11~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|tix_mem\(1),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_11~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_11~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_11~3\);

-- Location: LCCOMB_X25_Y2_N4
\Div0|auto_generated|divider|divider|op_11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[18]~12_combout\ $ (\u0|tix_mem\(2) $ (\Div0|auto_generated|divider|divider|op_11~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_11~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[18]~12_combout\ & ((!\Div0|auto_generated|divider|divider|op_11~3\) # (!\u0|tix_mem\(2)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[18]~12_combout\ & (!\u0|tix_mem\(2) & !\Div0|auto_generated|divider|divider|op_11~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~12_combout\,
	datab => \u0|tix_mem\(2),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_11~3\,
	combout => \Div0|auto_generated|divider|divider|op_11~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_11~5\);

-- Location: LCCOMB_X25_Y2_N12
\Div0|auto_generated|divider|divider|StageOut[18]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~12_combout\ = ((\u0|tix_mem\(2)) # (\u0|tix_mem\(0) $ (!\u0|tix_mem\(1)))) # (!\Div0|auto_generated|divider|divider|selnose[42]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[42]~7_combout\,
	datab => \u0|tix_mem\(2),
	datac => \u0|tix_mem\(0),
	datad => \u0|tix_mem\(1),
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~12_combout\);

-- Location: LCCOMB_X25_Y2_N22
\Div0|auto_generated|divider|divider|StageOut[36]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~13_combout\ = (\Div0|auto_generated|divider|divider|op_11~6_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[18]~12_combout\)))) # (!\Div0|auto_generated|divider|divider|op_11~6_combout\ & 
-- ((\Div0|auto_generated|divider|divider|selnose[42]~7_combout\ & (\Div0|auto_generated|divider|divider|op_11~4_combout\)) # (!\Div0|auto_generated|divider|divider|selnose[42]~7_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[18]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_11~6_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[42]~7_combout\,
	datac => \Div0|auto_generated|divider|divider|op_11~4_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[18]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~13_combout\);

-- Location: LCCOMB_X25_Y2_N26
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[35]~14_combout\ & ((\u0|tix_mem\(2) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)) # (!\u0|tix_mem\(2) & 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[35]~14_combout\ & ((\u0|tix_mem\(2) & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\) # (GND))) # 
-- (!\u0|tix_mem\(2) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[35]~14_combout\ & (\u0|tix_mem\(2) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[35]~14_combout\ & ((\u0|tix_mem\(2)) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[35]~14_combout\,
	datab => \u0|tix_mem\(2),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X24_Y2_N24
\Div0|auto_generated|divider|divider|selnose[63]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[63]~8_combout\ = (!\u0|tix_mem\(5) & (!\u0|tix_mem\(4) & \Div0|auto_generated|divider|divider|selnose[105]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(5),
	datab => \u0|tix_mem\(4),
	datac => \Div0|auto_generated|divider|divider|selnose[105]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|selnose[63]~8_combout\);

-- Location: LCCOMB_X24_Y2_N10
\Div0|auto_generated|divider|divider|StageOut[54]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~16_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[36]~13_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div0|auto_generated|divider|divider|selnose[63]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[63]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[36]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[63]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[36]~13_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~16_combout\);

-- Location: LCCOMB_X25_Y2_N6
\Div0|auto_generated|divider|divider|op_11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_11~6_combout\ = !\Div0|auto_generated|divider|divider|op_11~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_11~5\,
	combout => \Div0|auto_generated|divider|divider|op_11~6_combout\);

-- Location: LCCOMB_X25_Y2_N20
\Div0|auto_generated|divider|divider|StageOut[35]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[35]~14_combout\ = (\Div0|auto_generated|divider|divider|selnose[42]~7_combout\ & (\Div0|auto_generated|divider|divider|op_11~2_combout\ & !\Div0|auto_generated|divider|divider|op_11~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[42]~7_combout\,
	datab => \Div0|auto_generated|divider|divider|op_11~2_combout\,
	datad => \Div0|auto_generated|divider|divider|op_11~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[35]~14_combout\);

-- Location: LCCOMB_X24_Y2_N12
\Div0|auto_generated|divider|divider|StageOut[53]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~17_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[35]~14_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div0|auto_generated|divider|divider|selnose[63]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[63]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[35]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[63]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[35]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~17_combout\);

-- Location: LCCOMB_X24_Y2_N30
\Div0|auto_generated|divider|divider|StageOut[51]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut\(51) = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\) # ((!\u0|tix_mem\(0)) # (!\Div0|auto_generated|divider|divider|selnose[63]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[63]~8_combout\,
	datad => \u0|tix_mem\(0),
	combout => \Div0|auto_generated|divider|divider|StageOut\(51));

-- Location: LCCOMB_X23_Y2_N6
\Div0|auto_generated|divider|divider|op_13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_13~1_cout\ = CARRY(!\u0|tix_mem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|tix_mem\(0),
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_13~1_cout\);

-- Location: LCCOMB_X23_Y2_N16
\Div0|auto_generated|divider|divider|op_13~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_13~10_combout\ = !\Div0|auto_generated|divider|divider|op_13~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_13~9\,
	combout => \Div0|auto_generated|divider|divider|op_13~10_combout\);

-- Location: LCCOMB_X24_Y2_N2
\Div0|auto_generated|divider|divider|StageOut[68]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[68]~20_combout\ = (!\u0|tix_mem\(5) & (!\Div0|auto_generated|divider|divider|op_13~10_combout\ & (\Div0|auto_generated|divider|divider|selnose[105]~6_combout\ & \u0|tix_mem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(5),
	datab => \Div0|auto_generated|divider|divider|op_13~10_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[105]~6_combout\,
	datad => \u0|tix_mem\(0),
	combout => \Div0|auto_generated|divider|divider|StageOut[68]~20_combout\);

-- Location: LCCOMB_X24_Y5_N14
\Div0|auto_generated|divider|divider|op_14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~1_cout\ = CARRY(!\u0|tix_mem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(0),
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_14~1_cout\);

-- Location: LCCOMB_X24_Y5_N22
\Div0|auto_generated|divider|divider|op_14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[71]~22_combout\ $ (\u0|tix_mem\(4) $ (\Div0|auto_generated|divider|divider|op_14~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_14~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[71]~22_combout\ & ((!\Div0|auto_generated|divider|divider|op_14~7\) # (!\u0|tix_mem\(4)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[71]~22_combout\ & (!\u0|tix_mem\(4) & !\Div0|auto_generated|divider|divider|op_14~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[71]~22_combout\,
	datab => \u0|tix_mem\(4),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_14~7\,
	combout => \Div0|auto_generated|divider|divider|op_14~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_14~9\);

-- Location: LCFF_X23_Y3_N15
\u0|tix_mem[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(5),
	sload => VCC,
	ena => \u0|tix_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(5));

-- Location: LCCOMB_X24_Y2_N16
\Div0|auto_generated|divider|divider|selnose[84]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[84]~9_combout\ = (\Div0|auto_generated|divider|divider|selnose[105]~6_combout\ & !\u0|tix_mem\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|selnose[105]~6_combout\,
	datac => \u0|tix_mem\(5),
	combout => \Div0|auto_generated|divider|divider|selnose[84]~9_combout\);

-- Location: LCCOMB_X24_Y2_N18
\Div0|auto_generated|divider|divider|StageOut[71]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[71]~22_combout\ = (\Div0|auto_generated|divider|divider|op_13~10_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[53]~17_combout\)))) # (!\Div0|auto_generated|divider|divider|op_13~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|selnose[84]~9_combout\ & (\Div0|auto_generated|divider|divider|op_13~6_combout\)) # (!\Div0|auto_generated|divider|divider|selnose[84]~9_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[53]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_13~6_combout\,
	datab => \Div0|auto_generated|divider|divider|op_13~10_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[84]~9_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[53]~17_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[71]~22_combout\);

-- Location: LCCOMB_X24_Y2_N28
\Div0|auto_generated|divider|divider|StageOut[72]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[72]~21_combout\ = (\Div0|auto_generated|divider|divider|op_13~10_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[54]~16_combout\)))) # (!\Div0|auto_generated|divider|divider|op_13~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|selnose[84]~9_combout\ & (\Div0|auto_generated|divider|divider|op_13~8_combout\)) # (!\Div0|auto_generated|divider|divider|selnose[84]~9_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[54]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_13~8_combout\,
	datab => \Div0|auto_generated|divider|divider|op_13~10_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[84]~9_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[54]~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[72]~21_combout\);

-- Location: LCCOMB_X24_Y5_N26
\Div0|auto_generated|divider|divider|op_14~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_14~12_combout\ = \Div0|auto_generated|divider|divider|op_14~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_14~11\,
	combout => \Div0|auto_generated|divider|divider|op_14~12_combout\);

-- Location: LCCOMB_X24_Y5_N28
\Div0|auto_generated|divider|divider|StageOut[89]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[89]~28_combout\ = (\Div0|auto_generated|divider|divider|selnose[105]~6_combout\ & ((\Div0|auto_generated|divider|divider|op_14~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[71]~22_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_14~12_combout\ & (\Div0|auto_generated|divider|divider|op_14~8_combout\)))) # (!\Div0|auto_generated|divider|divider|selnose[105]~6_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[71]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[105]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|op_14~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[71]~22_combout\,
	datad => \Div0|auto_generated|divider|divider|op_14~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[89]~28_combout\);

-- Location: LCCOMB_X24_Y5_N4
\Div0|auto_generated|divider|divider|StageOut[85]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[85]~26_combout\ = (\Div0|auto_generated|divider|divider|selnose[105]~6_combout\ & (!\Div0|auto_generated|divider|divider|op_14~12_combout\ & \u0|tix_mem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[105]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|op_14~12_combout\,
	datad => \u0|tix_mem\(0),
	combout => \Div0|auto_generated|divider|divider|StageOut[85]~26_combout\);

-- Location: LCCOMB_X25_Y5_N6
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[87]~24_combout\ $ (\u0|tix_mem\(3) $ (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[87]~24_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\) # (!\u0|tix_mem\(3)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[87]~24_combout\ & (!\u0|tix_mem\(3) & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[87]~24_combout\,
	datab => \u0|tix_mem\(3),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X25_Y5_N8
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[88]~29_combout\ & ((\u0|tix_mem\(4) & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)) # (!\u0|tix_mem\(4) & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[88]~29_combout\ & ((\u0|tix_mem\(4) & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\) # (GND))) # 
-- (!\u0|tix_mem\(4) & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[88]~29_combout\ & (\u0|tix_mem\(4) & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[88]~29_combout\ & ((\u0|tix_mem\(4)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[88]~29_combout\,
	datab => \u0|tix_mem\(4),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X25_Y5_N12
\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[90]~27_combout\ & ((\u0|tix_mem\(6) & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)) # (!\u0|tix_mem\(6) & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[90]~27_combout\ & ((\u0|tix_mem\(6) & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\) # (GND))) # 
-- (!\u0|tix_mem\(6) & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[90]~27_combout\ & (\u0|tix_mem\(6) & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[90]~27_combout\ & ((\u0|tix_mem\(6)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[90]~27_combout\,
	datab => \u0|tix_mem\(6),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X25_Y5_N14
\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X23_Y4_N0
\Div0|auto_generated|divider|divider|selnose[168]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[168]~10_combout\ = (!\u0|tix_mem\(9) & (\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & (!\u0|tix_mem\(10) & !\u0|tix_mem\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(9),
	datab => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	datac => \u0|tix_mem\(10),
	datad => \u0|tix_mem\(11),
	combout => \Div0|auto_generated|divider|divider|selnose[168]~10_combout\);

-- Location: LCCOMB_X25_Y5_N0
\Div0|auto_generated|divider|divider|selnose[126]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[126]~11_combout\ = (!\u0|tix_mem\(7) & (!\u0|tix_mem\(8) & \Div0|auto_generated|divider|divider|selnose[168]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(7),
	datac => \u0|tix_mem\(8),
	datad => \Div0|auto_generated|divider|divider|selnose[168]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|selnose[126]~11_combout\);

-- Location: LCCOMB_X25_Y5_N18
\Div0|auto_generated|divider|divider|StageOut[107]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[107]~34_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[89]~28_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|selnose[126]~11_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[126]~11_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[89]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[89]~28_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[126]~11_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[107]~34_combout\);

-- Location: LCCOMB_X25_Y5_N28
\Div0|auto_generated|divider|divider|StageOut[108]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[108]~33_combout\ = (\Div0|auto_generated|divider|divider|selnose[126]~11_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[90]~27_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[126]~11_combout\ & (\Div0|auto_generated|divider|divider|StageOut[90]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[90]~27_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[126]~11_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[108]~33_combout\);

-- Location: LCCOMB_X25_Y5_N16
\Div0|auto_generated|divider|divider|StageOut[106]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[106]~35_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Div0|auto_generated|divider|divider|StageOut[88]~29_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|selnose[126]~11_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[126]~11_combout\ & (\Div0|auto_generated|divider|divider|StageOut[88]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[88]~29_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[126]~11_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[106]~35_combout\);

-- Location: LCCOMB_X25_Y5_N24
\Div0|auto_generated|divider|divider|StageOut[105]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[105]~30_combout\ = (\Div0|auto_generated|divider|divider|selnose[126]~11_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[87]~24_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[126]~11_combout\ & (\Div0|auto_generated|divider|divider|StageOut[87]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[87]~24_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[126]~11_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[105]~30_combout\);

-- Location: LCCOMB_X25_Y5_N26
\Div0|auto_generated|divider|divider|StageOut[102]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut\(102) = ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\) # (!\u0|tix_mem\(0))) # (!\Div0|auto_generated|divider|divider|selnose[126]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|selnose[126]~11_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \u0|tix_mem\(0),
	combout => \Div0|auto_generated|divider|divider|StageOut\(102));

-- Location: LCCOMB_X26_Y5_N0
\Div0|auto_generated|divider|divider|op_16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~1_cout\ = CARRY(!\u0|tix_mem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|tix_mem\(0),
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_16~1_cout\);

-- Location: LCCOMB_X26_Y5_N4
\Div0|auto_generated|divider|divider|op_16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[103]~32_combout\ $ (\u0|tix_mem\(2) $ (\Div0|auto_generated|divider|divider|op_16~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_16~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[103]~32_combout\ & ((!\Div0|auto_generated|divider|divider|op_16~3\) # (!\u0|tix_mem\(2)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[103]~32_combout\ & (!\u0|tix_mem\(2) & !\Div0|auto_generated|divider|divider|op_16~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[103]~32_combout\,
	datab => \u0|tix_mem\(2),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~3\,
	combout => \Div0|auto_generated|divider|divider|op_16~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~5\);

-- Location: LCCOMB_X26_Y5_N6
\Div0|auto_generated|divider|divider|op_16~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[104]~31_combout\ & ((\u0|tix_mem\(3) & (!\Div0|auto_generated|divider|divider|op_16~5\)) # (!\u0|tix_mem\(3) & 
-- (\Div0|auto_generated|divider|divider|op_16~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[104]~31_combout\ & ((\u0|tix_mem\(3) & ((\Div0|auto_generated|divider|divider|op_16~5\) # (GND))) # (!\u0|tix_mem\(3) & 
-- (!\Div0|auto_generated|divider|divider|op_16~5\))))
-- \Div0|auto_generated|divider|divider|op_16~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[104]~31_combout\ & (\u0|tix_mem\(3) & !\Div0|auto_generated|divider|divider|op_16~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[104]~31_combout\ 
-- & ((\u0|tix_mem\(3)) # (!\Div0|auto_generated|divider|divider|op_16~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[104]~31_combout\,
	datab => \u0|tix_mem\(3),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~5\,
	combout => \Div0|auto_generated|divider|divider|op_16~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~7\);

-- Location: LCCOMB_X26_Y5_N8
\Div0|auto_generated|divider|divider|op_16~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~8_combout\ = ((\u0|tix_mem\(4) $ (\Div0|auto_generated|divider|divider|StageOut[105]~30_combout\ $ (\Div0|auto_generated|divider|divider|op_16~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_16~9\ = CARRY((\u0|tix_mem\(4) & (\Div0|auto_generated|divider|divider|StageOut[105]~30_combout\ & !\Div0|auto_generated|divider|divider|op_16~7\)) # (!\u0|tix_mem\(4) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[105]~30_combout\) # (!\Div0|auto_generated|divider|divider|op_16~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(4),
	datab => \Div0|auto_generated|divider|divider|StageOut[105]~30_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~7\,
	combout => \Div0|auto_generated|divider|divider|op_16~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~9\);

-- Location: LCCOMB_X26_Y5_N16
\Div0|auto_generated|divider|divider|op_16~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~16_combout\ = \Div0|auto_generated|divider|divider|op_16~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_16~15\,
	combout => \Div0|auto_generated|divider|divider|op_16~16_combout\);

-- Location: LCCOMB_X27_Y5_N20
\Div0|auto_generated|divider|divider|sel[119]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(119) = (\u0|tix_mem\(8)) # (!\Div0|auto_generated|divider|divider|selnose[168]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|tix_mem\(8),
	datad => \Div0|auto_generated|divider|divider|selnose[168]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|sel\(119));

-- Location: LCCOMB_X26_Y5_N28
\Div0|auto_generated|divider|divider|StageOut[125]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[125]~42_combout\ = (\Div0|auto_generated|divider|divider|op_16~16_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[107]~34_combout\)))) # (!\Div0|auto_generated|divider|divider|op_16~16_combout\ & 
-- ((\Div0|auto_generated|divider|divider|sel\(119) & ((\Div0|auto_generated|divider|divider|StageOut[107]~34_combout\))) # (!\Div0|auto_generated|divider|divider|sel\(119) & (\Div0|auto_generated|divider|divider|op_16~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~12_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[107]~34_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~16_combout\,
	datad => \Div0|auto_generated|divider|divider|sel\(119),
	combout => \Div0|auto_generated|divider|divider|StageOut[125]~42_combout\);

-- Location: LCCOMB_X26_Y5_N18
\Div0|auto_generated|divider|divider|StageOut[124]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[124]~43_combout\ = (\Div0|auto_generated|divider|divider|op_16~16_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[106]~35_combout\)))) # (!\Div0|auto_generated|divider|divider|op_16~16_combout\ & 
-- ((\Div0|auto_generated|divider|divider|sel\(119) & ((\Div0|auto_generated|divider|divider|StageOut[106]~35_combout\))) # (!\Div0|auto_generated|divider|divider|sel\(119) & (\Div0|auto_generated|divider|divider|op_16~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[106]~35_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~16_combout\,
	datad => \Div0|auto_generated|divider|divider|sel\(119),
	combout => \Div0|auto_generated|divider|divider|StageOut[124]~43_combout\);

-- Location: LCCOMB_X26_Y5_N24
\Div0|auto_generated|divider|divider|StageOut[122]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[122]~37_combout\ = (\Div0|auto_generated|divider|divider|sel\(119) & (\Div0|auto_generated|divider|divider|StageOut[104]~31_combout\)) # (!\Div0|auto_generated|divider|divider|sel\(119) & 
-- ((\Div0|auto_generated|divider|divider|op_16~16_combout\ & (\Div0|auto_generated|divider|divider|StageOut[104]~31_combout\)) # (!\Div0|auto_generated|divider|divider|op_16~16_combout\ & ((\Div0|auto_generated|divider|divider|op_16~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[104]~31_combout\,
	datab => \Div0|auto_generated|divider|divider|sel\(119),
	datac => \Div0|auto_generated|divider|divider|op_16~16_combout\,
	datad => \Div0|auto_generated|divider|divider|op_16~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[122]~37_combout\);

-- Location: LCCOMB_X27_Y4_N12
\Div0|auto_generated|divider|divider|StageOut[119]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[119]~40_combout\ = (\Div0|auto_generated|divider|divider|selnose[168]~10_combout\ & (\u0|tix_mem\(0) & (!\u0|tix_mem\(8) & !\Div0|auto_generated|divider|divider|op_16~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[168]~10_combout\,
	datab => \u0|tix_mem\(0),
	datac => \u0|tix_mem\(8),
	datad => \Div0|auto_generated|divider|divider|op_16~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[119]~40_combout\);

-- Location: LCCOMB_X26_Y4_N2
\Div0|auto_generated|divider|divider|op_17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~1_cout\ = CARRY(!\u0|tix_mem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|tix_mem\(0),
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_17~1_cout\);

-- Location: LCCOMB_X26_Y4_N4
\Div0|auto_generated|divider|divider|op_17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~2_combout\ = (\u0|tix_mem\(1) & ((\Div0|auto_generated|divider|divider|StageOut[119]~40_combout\ & (!\Div0|auto_generated|divider|divider|op_17~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[119]~40_combout\ & ((\Div0|auto_generated|divider|divider|op_17~1_cout\) # (GND))))) # (!\u0|tix_mem\(1) & ((\Div0|auto_generated|divider|divider|StageOut[119]~40_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_17~1_cout\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[119]~40_combout\ & (!\Div0|auto_generated|divider|divider|op_17~1_cout\))))
-- \Div0|auto_generated|divider|divider|op_17~3\ = CARRY((\u0|tix_mem\(1) & ((!\Div0|auto_generated|divider|divider|op_17~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[119]~40_combout\))) # (!\u0|tix_mem\(1) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[119]~40_combout\ & !\Div0|auto_generated|divider|divider|op_17~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(1),
	datab => \Div0|auto_generated|divider|divider|StageOut[119]~40_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_17~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~3\);

-- Location: LCCOMB_X26_Y4_N8
\Div0|auto_generated|divider|divider|op_17~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[121]~38_combout\ & ((\u0|tix_mem\(3) & (!\Div0|auto_generated|divider|divider|op_17~5\)) # (!\u0|tix_mem\(3) & 
-- (\Div0|auto_generated|divider|divider|op_17~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[121]~38_combout\ & ((\u0|tix_mem\(3) & ((\Div0|auto_generated|divider|divider|op_17~5\) # (GND))) # (!\u0|tix_mem\(3) & 
-- (!\Div0|auto_generated|divider|divider|op_17~5\))))
-- \Div0|auto_generated|divider|divider|op_17~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[121]~38_combout\ & (\u0|tix_mem\(3) & !\Div0|auto_generated|divider|divider|op_17~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[121]~38_combout\ 
-- & ((\u0|tix_mem\(3)) # (!\Div0|auto_generated|divider|divider|op_17~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[121]~38_combout\,
	datab => \u0|tix_mem\(3),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~5\,
	combout => \Div0|auto_generated|divider|divider|op_17~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~7\);

-- Location: LCCOMB_X26_Y4_N12
\Div0|auto_generated|divider|divider|op_17~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[123]~36_combout\ & ((\u0|tix_mem\(5) & (!\Div0|auto_generated|divider|divider|op_17~9\)) # (!\u0|tix_mem\(5) & 
-- (\Div0|auto_generated|divider|divider|op_17~9\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[123]~36_combout\ & ((\u0|tix_mem\(5) & ((\Div0|auto_generated|divider|divider|op_17~9\) # (GND))) # (!\u0|tix_mem\(5) & 
-- (!\Div0|auto_generated|divider|divider|op_17~9\))))
-- \Div0|auto_generated|divider|divider|op_17~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[123]~36_combout\ & (\u0|tix_mem\(5) & !\Div0|auto_generated|divider|divider|op_17~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[123]~36_combout\ 
-- & ((\u0|tix_mem\(5)) # (!\Div0|auto_generated|divider|divider|op_17~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[123]~36_combout\,
	datab => \u0|tix_mem\(5),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~9\,
	combout => \Div0|auto_generated|divider|divider|op_17~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~11\);

-- Location: LCCOMB_X26_Y4_N14
\Div0|auto_generated|divider|divider|op_17~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~12_combout\ = ((\u0|tix_mem\(6) $ (\Div0|auto_generated|divider|divider|StageOut[124]~43_combout\ $ (\Div0|auto_generated|divider|divider|op_17~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_17~13\ = CARRY((\u0|tix_mem\(6) & (\Div0|auto_generated|divider|divider|StageOut[124]~43_combout\ & !\Div0|auto_generated|divider|divider|op_17~11\)) # (!\u0|tix_mem\(6) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[124]~43_combout\) # (!\Div0|auto_generated|divider|divider|op_17~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(6),
	datab => \Div0|auto_generated|divider|divider|StageOut[124]~43_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~11\,
	combout => \Div0|auto_generated|divider|divider|op_17~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~13\);

-- Location: LCCOMB_X26_Y4_N18
\Div0|auto_generated|divider|divider|op_17~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~16_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[126]~41_combout\ $ (\u0|tix_mem\(8) $ (\Div0|auto_generated|divider|divider|op_17~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_17~17\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[126]~41_combout\ & ((!\Div0|auto_generated|divider|divider|op_17~15\) # (!\u0|tix_mem\(8)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[126]~41_combout\ & (!\u0|tix_mem\(8) & !\Div0|auto_generated|divider|divider|op_17~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[126]~41_combout\,
	datab => \u0|tix_mem\(8),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_17~15\,
	combout => \Div0|auto_generated|divider|divider|op_17~16_combout\,
	cout => \Div0|auto_generated|divider|divider|op_17~17\);

-- Location: LCCOMB_X26_Y4_N20
\Div0|auto_generated|divider|divider|op_17~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_17~18_combout\ = !\Div0|auto_generated|divider|divider|op_17~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_17~17\,
	combout => \Div0|auto_generated|divider|divider|op_17~18_combout\);

-- Location: LCCOMB_X27_Y4_N28
\Div0|auto_generated|divider|divider|StageOut[136]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[136]~49_combout\ = (\Div0|auto_generated|divider|divider|selnose[168]~10_combout\ & (\u0|tix_mem\(0) & !\Div0|auto_generated|divider|divider|op_17~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[168]~10_combout\,
	datab => \u0|tix_mem\(0),
	datac => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[136]~49_combout\);

-- Location: LCCOMB_X25_Y4_N8
\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (\u0|tix_mem\(1) & (\Div0|auto_generated|divider|divider|StageOut[136]~49_combout\ $ (VCC))) # (!\u0|tix_mem\(1) & ((\Div0|auto_generated|divider|divider|StageOut[136]~49_combout\) 
-- # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[136]~49_combout\) # (!\u0|tix_mem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(1),
	datab => \Div0|auto_generated|divider|divider|StageOut[136]~49_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X25_Y4_N10
\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[137]~48_combout\ & ((\u0|tix_mem\(2) & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)) # (!\u0|tix_mem\(2) & 
-- (\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[137]~48_combout\ & ((\u0|tix_mem\(2) & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\) # (GND))) # 
-- (!\u0|tix_mem\(2) & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[137]~48_combout\ & (\u0|tix_mem\(2) & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[137]~48_combout\ & ((\u0|tix_mem\(2)) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[137]~48_combout\,
	datab => \u0|tix_mem\(2),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X26_Y4_N28
\Div0|auto_generated|divider|divider|StageOut[144]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[144]~50_combout\ = (\Div0|auto_generated|divider|divider|selnose[168]~10_combout\ & ((\Div0|auto_generated|divider|divider|op_17~18_combout\ & (\Div0|auto_generated|divider|divider|StageOut[126]~41_combout\)) 
-- # (!\Div0|auto_generated|divider|divider|op_17~18_combout\ & ((\Div0|auto_generated|divider|divider|op_17~16_combout\))))) # (!\Div0|auto_generated|divider|divider|selnose[168]~10_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[126]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[126]~41_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[168]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[144]~50_combout\);

-- Location: LCCOMB_X26_Y4_N22
\Div0|auto_generated|divider|divider|StageOut[142]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[142]~52_combout\ = (\Div0|auto_generated|divider|divider|op_17~18_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[124]~43_combout\)))) # (!\Div0|auto_generated|divider|divider|op_17~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|selnose[168]~10_combout\ & (\Div0|auto_generated|divider|divider|op_17~12_combout\)) # (!\Div0|auto_generated|divider|divider|selnose[168]~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[124]~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[168]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|op_17~12_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[124]~43_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[142]~52_combout\);

-- Location: LCCOMB_X26_Y5_N30
\Div0|auto_generated|divider|divider|StageOut[123]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[123]~36_combout\ = (\Div0|auto_generated|divider|divider|op_16~16_combout\ & (\Div0|auto_generated|divider|divider|StageOut[105]~30_combout\)) # (!\Div0|auto_generated|divider|divider|op_16~16_combout\ & 
-- ((\Div0|auto_generated|divider|divider|sel\(119) & (\Div0|auto_generated|divider|divider|StageOut[105]~30_combout\)) # (!\Div0|auto_generated|divider|divider|sel\(119) & ((\Div0|auto_generated|divider|divider|op_16~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~16_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[105]~30_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~8_combout\,
	datad => \Div0|auto_generated|divider|divider|sel\(119),
	combout => \Div0|auto_generated|divider|divider|StageOut[123]~36_combout\);

-- Location: LCCOMB_X26_Y4_N0
\Div0|auto_generated|divider|divider|StageOut[141]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[141]~44_combout\ = (\Div0|auto_generated|divider|divider|op_17~18_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[123]~36_combout\)))) # (!\Div0|auto_generated|divider|divider|op_17~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|selnose[168]~10_combout\ & ((\Div0|auto_generated|divider|divider|op_17~10_combout\))) # (!\Div0|auto_generated|divider|divider|selnose[168]~10_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[123]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[168]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[123]~36_combout\,
	datad => \Div0|auto_generated|divider|divider|op_17~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[141]~44_combout\);

-- Location: LCCOMB_X26_Y5_N22
\Div0|auto_generated|divider|divider|StageOut[121]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[121]~38_combout\ = (\Div0|auto_generated|divider|divider|op_16~16_combout\ & (\Div0|auto_generated|divider|divider|StageOut[103]~32_combout\)) # (!\Div0|auto_generated|divider|divider|op_16~16_combout\ & 
-- ((\Div0|auto_generated|divider|divider|sel\(119) & (\Div0|auto_generated|divider|divider|StageOut[103]~32_combout\)) # (!\Div0|auto_generated|divider|divider|sel\(119) & ((\Div0|auto_generated|divider|divider|op_16~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[103]~32_combout\,
	datab => \Div0|auto_generated|divider|divider|op_16~4_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~16_combout\,
	datad => \Div0|auto_generated|divider|divider|sel\(119),
	combout => \Div0|auto_generated|divider|divider|StageOut[121]~38_combout\);

-- Location: LCCOMB_X26_Y4_N24
\Div0|auto_generated|divider|divider|StageOut[139]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[139]~46_combout\ = (\Div0|auto_generated|divider|divider|op_17~18_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[121]~38_combout\)))) # (!\Div0|auto_generated|divider|divider|op_17~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|selnose[168]~10_combout\ & (\Div0|auto_generated|divider|divider|op_17~6_combout\)) # (!\Div0|auto_generated|divider|divider|selnose[168]~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[121]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[168]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|op_17~6_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[121]~38_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[139]~46_combout\);

-- Location: LCCOMB_X25_Y4_N12
\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[138]~47_combout\ $ (\u0|tix_mem\(3) $ (\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[138]~47_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\) # (!\u0|tix_mem\(3)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[138]~47_combout\ & (!\u0|tix_mem\(3) & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[138]~47_combout\,
	datab => \u0|tix_mem\(3),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X25_Y4_N14
\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ = (\u0|tix_mem\(4) & ((\Div0|auto_generated|divider|divider|StageOut[139]~46_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[139]~46_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\) # (GND))))) # (!\u0|tix_mem\(4) & ((\Div0|auto_generated|divider|divider|StageOut[139]~46_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[139]~46_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ = CARRY((\u0|tix_mem\(4) & ((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\) # (!\Div0|auto_generated|divider|divider|StageOut[139]~46_combout\))) # (!\u0|tix_mem\(4) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[139]~46_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(4),
	datab => \Div0|auto_generated|divider|divider|StageOut[139]~46_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~7\);

-- Location: LCCOMB_X25_Y4_N18
\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ = (\u0|tix_mem\(6) & ((\Div0|auto_generated|divider|divider|StageOut[141]~44_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[141]~44_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\) # (GND))))) # (!\u0|tix_mem\(6) & ((\Div0|auto_generated|divider|divider|StageOut[141]~44_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[141]~44_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\ = CARRY((\u0|tix_mem\(6) & ((!\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\) # (!\Div0|auto_generated|divider|divider|StageOut[141]~44_combout\))) # (!\u0|tix_mem\(6) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[141]~44_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(6),
	datab => \Div0|auto_generated|divider|divider|StageOut[141]~44_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~11\);

-- Location: LCCOMB_X25_Y4_N24
\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\ = ((\u0|tix_mem\(9) $ (\Div0|auto_generated|divider|divider|StageOut[144]~50_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\ = CARRY((\u0|tix_mem\(9) & (\Div0|auto_generated|divider|divider|StageOut[144]~50_combout\ & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\)) # (!\u0|tix_mem\(9) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[144]~50_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(9),
	datab => \Div0|auto_generated|divider|divider|StageOut[144]~50_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[8]~15\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\);

-- Location: LCCOMB_X25_Y4_N26
\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ = !\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~17\,
	combout => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\);

-- Location: LCCOMB_X27_Y4_N2
\Div0|auto_generated|divider|divider|StageOut[137]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[137]~48_combout\ = (\Div0|auto_generated|divider|divider|selnose[168]~10_combout\ & ((\Div0|auto_generated|divider|divider|op_17~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[119]~40_combout\))) # (!\Div0|auto_generated|divider|divider|op_17~18_combout\ & (\Div0|auto_generated|divider|divider|op_17~2_combout\)))) # (!\Div0|auto_generated|divider|divider|selnose[168]~10_combout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[119]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[168]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|op_17~2_combout\,
	datac => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[119]~40_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[137]~48_combout\);

-- Location: LCCOMB_X24_Y4_N0
\Div0|auto_generated|divider|divider|StageOut[155]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[155]~57_combout\ = (\Div0|auto_generated|divider|divider|selnose[189]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[137]~48_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[189]~12_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[137]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[189]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[137]~48_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[155]~57_combout\);

-- Location: LCCOMB_X24_Y4_N28
\Div0|auto_generated|divider|divider|StageOut[154]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[154]~58_combout\ = (\Div0|auto_generated|divider|divider|selnose[189]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[136]~49_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[189]~12_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[136]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[189]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[136]~49_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[154]~58_combout\);

-- Location: LCCOMB_X23_Y4_N14
\Div0|auto_generated|divider|divider|selnose[189]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[189]~12_combout\ = (\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & (!\u0|tix_mem\(10) & !\u0|tix_mem\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	datac => \u0|tix_mem\(10),
	datad => \u0|tix_mem\(11),
	combout => \Div0|auto_generated|divider|divider|selnose[189]~12_combout\);

-- Location: LCCOMB_X23_Y4_N16
\Div0|auto_generated|divider|divider|StageOut[153]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut\(153) = ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\) # (!\Div0|auto_generated|divider|divider|selnose[189]~12_combout\)) # (!\u0|tix_mem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(0),
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[189]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut\(153));

-- Location: LCCOMB_X24_Y4_N6
\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = ((\u0|tix_mem\(3) $ (\Div0|auto_generated|divider|divider|StageOut[155]~57_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((\u0|tix_mem\(3) & (\Div0|auto_generated|divider|divider|StageOut[155]~57_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\)) # (!\u0|tix_mem\(3) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[155]~57_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(3),
	datab => \Div0|auto_generated|divider|divider|StageOut[155]~57_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X24_Y4_N8
\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[156]~56_combout\ & ((\u0|tix_mem\(4) & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)) # (!\u0|tix_mem\(4) & 
-- (\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[156]~56_combout\ & ((\u0|tix_mem\(4) & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\) # (GND))) # 
-- (!\u0|tix_mem\(4) & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[156]~56_combout\ & (\u0|tix_mem\(4) & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[156]~56_combout\ & ((\u0|tix_mem\(4)) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[156]~56_combout\,
	datab => \u0|tix_mem\(4),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~7\);

-- Location: LCCOMB_X25_Y4_N6
\Div0|auto_generated|divider|divider|StageOut[156]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[156]~56_combout\ = (\Div0|auto_generated|divider|divider|selnose[189]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[138]~47_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[189]~12_combout\ & (\Div0|auto_generated|divider|divider|StageOut[138]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[138]~47_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[189]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[156]~56_combout\);

-- Location: LCCOMB_X23_Y4_N26
\Div0|auto_generated|divider|divider|selnose[210]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[210]~13_combout\ = (\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & !\u0|tix_mem\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	datad => \u0|tix_mem\(11),
	combout => \Div0|auto_generated|divider|divider|selnose[210]~13_combout\);

-- Location: LCCOMB_X23_Y4_N28
\Div0|auto_generated|divider|divider|StageOut[174]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[174]~65_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[156]~56_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|selnose[210]~13_combout\ & (\Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[210]~13_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[156]~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[156]~56_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[210]~13_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[174]~65_combout\);

-- Location: LCCOMB_X23_Y4_N2
\Div0|auto_generated|divider|divider|StageOut[173]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[173]~66_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[155]~57_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|selnose[210]~13_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[210]~13_combout\ & (\Div0|auto_generated|divider|divider|StageOut[155]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[210]~13_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[155]~57_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[173]~66_combout\);

-- Location: LCCOMB_X23_Y3_N0
\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = (\Div0|auto_generated|divider|divider|StageOut\(170) & ((GND) # (!\u0|tix_mem\(1)))) # (!\Div0|auto_generated|divider|divider|StageOut\(170) & (\u0|tix_mem\(1) $ (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut\(170)) # (!\u0|tix_mem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut\(170),
	datab => \u0|tix_mem\(1),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

-- Location: LCCOMB_X23_Y3_N8
\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[174]~65_combout\ $ (\u0|tix_mem\(5) $ (\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[174]~65_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\) # (!\u0|tix_mem\(5)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[174]~65_combout\ & (!\u0|tix_mem\(5) & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[174]~65_combout\,
	datab => \u0|tix_mem\(5),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~9\);

-- Location: LCCOMB_X23_Y4_N8
\Div0|auto_generated|divider|divider|StageOut[192]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[192]~75_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & (\Div0|auto_generated|divider|divider|StageOut[174]~65_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & ((\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & (\Div0|auto_generated|divider|divider|StageOut[174]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[174]~65_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[192]~75_combout\);

-- Location: LCCOMB_X22_Y1_N4
\Div0|auto_generated|divider|divider|selnose[252]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose[252]~14_combout\ = (!\u0|tix_mem\(15) & (!\u0|tix_mem\(14) & !\u0|tix_mem\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(15),
	datab => \u0|tix_mem\(14),
	datac => \u0|tix_mem\(13),
	combout => \Div0|auto_generated|divider|divider|selnose[252]~14_combout\);

-- Location: LCCOMB_X25_Y4_N0
\Div0|auto_generated|divider|divider|StageOut[162]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[162]~59_combout\ = (\Div0|auto_generated|divider|divider|selnose[189]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[144]~50_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[189]~12_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[144]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[189]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[9]~16_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[144]~50_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[162]~59_combout\);

-- Location: LCCOMB_X25_Y4_N4
\Div0|auto_generated|divider|divider|StageOut[159]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[159]~53_combout\ = (\Div0|auto_generated|divider|divider|selnose[189]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[141]~44_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[189]~12_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[141]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[189]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[141]~44_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[159]~53_combout\);

-- Location: LCCOMB_X26_Y4_N26
\Div0|auto_generated|divider|divider|StageOut[140]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[140]~45_combout\ = (\Div0|auto_generated|divider|divider|selnose[168]~10_combout\ & ((\Div0|auto_generated|divider|divider|op_17~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[122]~37_combout\))) # (!\Div0|auto_generated|divider|divider|op_17~18_combout\ & (\Div0|auto_generated|divider|divider|op_17~8_combout\)))) # (!\Div0|auto_generated|divider|divider|selnose[168]~10_combout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[122]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_17~8_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[168]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[122]~37_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[140]~45_combout\);

-- Location: LCCOMB_X25_Y4_N30
\Div0|auto_generated|divider|divider|StageOut[158]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[158]~54_combout\ = (\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[140]~45_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & ((\Div0|auto_generated|divider|divider|selnose[189]~12_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[189]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[140]~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_9_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[140]~45_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[189]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[158]~54_combout\);

-- Location: LCCOMB_X25_Y4_N28
\Div0|auto_generated|divider|divider|StageOut[157]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[157]~55_combout\ = (\Div0|auto_generated|divider|divider|selnose[189]~12_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[139]~46_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[189]~12_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[139]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[189]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[139]~46_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[157]~55_combout\);

-- Location: LCCOMB_X24_Y4_N12
\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ = (\u0|tix_mem\(6) & ((\Div0|auto_generated|divider|divider|StageOut[158]~54_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[158]~54_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\) # (GND))))) # (!\u0|tix_mem\(6) & ((\Div0|auto_generated|divider|divider|StageOut[158]~54_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[158]~54_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\ = CARRY((\u0|tix_mem\(6) & ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\) # (!\Div0|auto_generated|divider|divider|StageOut[158]~54_combout\))) # (!\u0|tix_mem\(6) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[158]~54_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(6),
	datab => \Div0|auto_generated|divider|divider|StageOut[158]~54_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\);

-- Location: LCCOMB_X24_Y4_N14
\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\ = ((\u0|tix_mem\(7) $ (\Div0|auto_generated|divider|divider|StageOut[159]~53_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\ = CARRY((\u0|tix_mem\(7) & (\Div0|auto_generated|divider|divider|StageOut[159]~53_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\)) # (!\u0|tix_mem\(7) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[159]~53_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(7),
	datab => \Div0|auto_generated|divider|divider|StageOut[159]~53_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\);

-- Location: LCCOMB_X24_Y4_N16
\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\ = (\Div0|auto_generated|divider|divider|StageOut[160]~61_combout\ & ((\u0|tix_mem\(8) & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\)) # (!\u0|tix_mem\(8) & 
-- (\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[160]~61_combout\ & ((\u0|tix_mem\(8) & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\) # (GND))) # 
-- (!\u0|tix_mem\(8) & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~15\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[160]~61_combout\ & (\u0|tix_mem\(8) & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[160]~61_combout\ & ((\u0|tix_mem\(8)) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[160]~61_combout\,
	datab => \u0|tix_mem\(8),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~15\);

-- Location: LCCOMB_X24_Y4_N18
\Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[161]~60_combout\ $ (\u0|tix_mem\(9) $ (\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[161]~60_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~15\) # (!\u0|tix_mem\(9)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[161]~60_combout\ & (!\u0|tix_mem\(9) & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[161]~60_combout\,
	datab => \u0|tix_mem\(9),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~15\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\);

-- Location: LCCOMB_X24_Y4_N20
\Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\ = (\u0|tix_mem\(10) & ((\Div0|auto_generated|divider|divider|StageOut[162]~59_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[162]~59_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\) # (GND))))) # (!\u0|tix_mem\(10) & ((\Div0|auto_generated|divider|divider|StageOut[162]~59_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[162]~59_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\))))
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~19\ = CARRY((\u0|tix_mem\(10) & ((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\) # (!\Div0|auto_generated|divider|divider|StageOut[162]~59_combout\))) # (!\u0|tix_mem\(10) 
-- & (!\Div0|auto_generated|divider|divider|StageOut[162]~59_combout\ & !\Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(10),
	datab => \Div0|auto_generated|divider|divider|StageOut[162]~59_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~17\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~19\);

-- Location: LCCOMB_X24_Y4_N22
\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ = \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~19\,
	combout => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\);

-- Location: LCCOMB_X23_Y4_N20
\Div0|auto_generated|divider|divider|StageOut[180]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[180]~69_combout\ = (\Div0|auto_generated|divider|divider|selnose[210]~13_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[162]~59_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[210]~13_combout\ & (\Div0|auto_generated|divider|divider|StageOut[162]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[162]~59_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[210]~13_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[10]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[180]~69_combout\);

-- Location: LCCOMB_X23_Y4_N10
\Div0|auto_generated|divider|divider|StageOut[179]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[179]~70_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[161]~60_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|selnose[210]~13_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[210]~13_combout\ & (\Div0|auto_generated|divider|divider|StageOut[161]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[161]~60_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[9]~16_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[210]~13_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[179]~70_combout\);

-- Location: LCCOMB_X24_Y4_N26
\Div0|auto_generated|divider|divider|StageOut[178]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[178]~71_combout\ = (\Div0|auto_generated|divider|divider|selnose[210]~13_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[160]~61_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[210]~13_combout\ & (\Div0|auto_generated|divider|divider|StageOut[160]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[160]~61_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[210]~13_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[178]~71_combout\);

-- Location: LCCOMB_X23_Y4_N12
\Div0|auto_generated|divider|divider|StageOut[177]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[177]~62_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (\Div0|auto_generated|divider|divider|StageOut[159]~53_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|selnose[210]~13_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[210]~13_combout\ & (\Div0|auto_generated|divider|divider|StageOut[159]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[159]~53_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[7]~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[210]~13_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[177]~62_combout\);

-- Location: LCFF_X23_Y3_N9
\u0|tix_mem[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(7),
	sload => VCC,
	ena => \u0|tix_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(7));

-- Location: LCCOMB_X24_Y4_N24
\Div0|auto_generated|divider|divider|StageOut[175]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[175]~64_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[157]~55_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|selnose[210]~13_combout\ & (\Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[210]~13_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[157]~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[210]~13_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[157]~55_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[175]~64_combout\);

-- Location: LCCOMB_X23_Y3_N12
\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[176]~63_combout\ $ (\u0|tix_mem\(7) $ (\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[176]~63_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\) # (!\u0|tix_mem\(7)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[176]~63_combout\ & (!\u0|tix_mem\(7) & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[176]~63_combout\,
	datab => \u0|tix_mem\(7),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\);

-- Location: LCCOMB_X23_Y3_N14
\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\ = (\u0|tix_mem\(8) & ((\Div0|auto_generated|divider|divider|StageOut[177]~62_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[177]~62_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\) # (GND))))) # (!\u0|tix_mem\(8) & ((\Div0|auto_generated|divider|divider|StageOut[177]~62_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[177]~62_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\))))
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~15\ = CARRY((\u0|tix_mem\(8) & ((!\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\) # (!\Div0|auto_generated|divider|divider|StageOut[177]~62_combout\))) # (!\u0|tix_mem\(8) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[177]~62_combout\ & !\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(8),
	datab => \Div0|auto_generated|divider|divider|StageOut[177]~62_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~15\);

-- Location: LCCOMB_X23_Y3_N22
\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ = !\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~21\,
	combout => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\);

-- Location: LCCOMB_X23_Y3_N30
\Div0|auto_generated|divider|divider|StageOut[198]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[198]~80_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[180]~69_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & ((\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[180]~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[11]~20_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[180]~69_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[198]~80_combout\);

-- Location: LCCOMB_X23_Y4_N4
\Div0|auto_generated|divider|divider|StageOut[195]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[195]~72_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[177]~62_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & ((\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[177]~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[8]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[177]~62_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[195]~72_combout\);

-- Location: LCCOMB_X23_Y4_N6
\Div0|auto_generated|divider|divider|StageOut[176]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[176]~63_combout\ = (\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[158]~54_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & ((\Div0|auto_generated|divider|divider|selnose[210]~13_combout\ & (\Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[210]~13_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[158]~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[210]~13_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[158]~54_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[176]~63_combout\);

-- Location: LCCOMB_X23_Y4_N22
\Div0|auto_generated|divider|divider|StageOut[194]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[194]~73_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[176]~63_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & ((\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[176]~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[7]~12_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[176]~63_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[194]~73_combout\);

-- Location: LCCOMB_X24_Y1_N16
\Div0|auto_generated|divider|divider|StageOut[193]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[193]~74_combout\ = (\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[175]~64_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[175]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[175]~64_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[193]~74_combout\);

-- Location: LCCOMB_X23_Y3_N28
\Div0|auto_generated|divider|divider|StageOut[191]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[191]~76_combout\ = (\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[173]~66_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & ((\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[173]~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[173]~66_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[191]~76_combout\);

-- Location: LCCOMB_X24_Y1_N22
\Div0|auto_generated|divider|divider|StageOut[188]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[188]~79_combout\ = (\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut\(170))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & (\Div0|auto_generated|divider|divider|StageOut\(170)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut\(170),
	datab => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[188]~79_combout\);

-- Location: LCCOMB_X25_Y1_N2
\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\ = (\Div0|auto_generated|divider|divider|StageOut\(187) & ((GND) # (!\u0|tix_mem\(1)))) # (!\Div0|auto_generated|divider|divider|StageOut\(187) & (\u0|tix_mem\(1) $ (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut\(187)) # (!\u0|tix_mem\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut\(187),
	datab => \u0|tix_mem\(1),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\);

-- Location: LCCOMB_X25_Y1_N4
\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\ = (\u0|tix_mem\(2) & ((\Div0|auto_generated|divider|divider|StageOut[188]~79_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[188]~79_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\) # (GND))))) # (!\u0|tix_mem\(2) & ((\Div0|auto_generated|divider|divider|StageOut[188]~79_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[188]~79_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ = CARRY((\u0|tix_mem\(2) & ((!\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\) # (!\Div0|auto_generated|divider|divider|StageOut[188]~79_combout\))) # (!\u0|tix_mem\(2) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[188]~79_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(2),
	datab => \Div0|auto_generated|divider|divider|StageOut[188]~79_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\);

-- Location: LCCOMB_X25_Y1_N6
\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[189]~78_combout\ $ (\u0|tix_mem\(3) $ (\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[189]~78_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\) # (!\u0|tix_mem\(3)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[189]~78_combout\ & (!\u0|tix_mem\(3) & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[189]~78_combout\,
	datab => \u0|tix_mem\(3),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\);

-- Location: LCCOMB_X25_Y1_N8
\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[190]~77_combout\ & ((\u0|tix_mem\(4) & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\)) # (!\u0|tix_mem\(4) & 
-- (\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[190]~77_combout\ & ((\u0|tix_mem\(4) & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\) # (GND))) # 
-- (!\u0|tix_mem\(4) & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[190]~77_combout\ & (\u0|tix_mem\(4) & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[190]~77_combout\ & ((\u0|tix_mem\(4)) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[190]~77_combout\,
	datab => \u0|tix_mem\(4),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\);

-- Location: LCCOMB_X25_Y1_N10
\Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\ = ((\u0|tix_mem\(5) $ (\Div0|auto_generated|divider|divider|StageOut[191]~76_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\ = CARRY((\u0|tix_mem\(5) & (\Div0|auto_generated|divider|divider|StageOut[191]~76_combout\ & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\)) # (!\u0|tix_mem\(5) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[191]~76_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(5),
	datab => \Div0|auto_generated|divider|divider|StageOut[191]~76_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~9\);

-- Location: LCCOMB_X25_Y1_N20
\Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~18_combout\ = (\Div0|auto_generated|divider|divider|StageOut[196]~82_combout\ & ((\u0|tix_mem\(10) & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~17\)) # (!\u0|tix_mem\(10) 
-- & (\Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~17\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[196]~82_combout\ & ((\u0|tix_mem\(10) & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~17\) # (GND))) # 
-- (!\u0|tix_mem\(10) & (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~17\))))
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~19\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[196]~82_combout\ & (\u0|tix_mem\(10) & !\Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~17\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[196]~82_combout\ & ((\u0|tix_mem\(10)) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[196]~82_combout\,
	datab => \u0|tix_mem\(10),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~17\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~18_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~19\);

-- Location: LCCOMB_X25_Y1_N26
\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ = \Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~23\,
	combout => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\);

-- Location: LCCOMB_X25_Y1_N30
\Div0|auto_generated|divider|divider|StageOut[210]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[210]~86_combout\ = (\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[192]~75_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & (\Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[192]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[192]~75_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[252]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[210]~86_combout\);

-- Location: LCCOMB_X22_Y1_N28
\Div0|auto_generated|divider|divider|StageOut[216]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[216]~92_combout\ = (\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[198]~80_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & (\Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~22_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[198]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12_result_int[12]~22_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[198]~80_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[252]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[216]~92_combout\);

-- Location: LCCOMB_X24_Y1_N8
\Div0|auto_generated|divider|divider|StageOut[196]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[196]~82_combout\ = (\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[178]~71_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\ & (\Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~16_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[178]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_11_result_int[9]~16_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[178]~71_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[196]~82_combout\);

-- Location: LCCOMB_X24_Y1_N14
\Div0|auto_generated|divider|divider|StageOut[214]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[214]~94_combout\ = (\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[196]~82_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~18_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[196]~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[252]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[196]~82_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[10]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[214]~94_combout\);

-- Location: LCCOMB_X24_Y1_N20
\Div0|auto_generated|divider|divider|StageOut[209]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[209]~87_combout\ = (\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[191]~76_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & (\Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[191]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[252]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[191]~76_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[209]~87_combout\);

-- Location: LCCOMB_X22_Y1_N22
\Div0|auto_generated|divider|divider|StageOut[208]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[208]~88_combout\ = (\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[190]~77_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[190]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[190]~77_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[252]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[208]~88_combout\);

-- Location: LCCOMB_X24_Y1_N30
\Div0|auto_generated|divider|divider|StageOut[207]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[207]~89_combout\ = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & (\Div0|auto_generated|divider|divider|StageOut[189]~78_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & ((\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[189]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[189]~78_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[252]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[207]~89_combout\);

-- Location: LCCOMB_X24_Y1_N0
\Div0|auto_generated|divider|divider|StageOut[206]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[206]~90_combout\ = (\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[188]~79_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[188]~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[252]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[188]~79_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[206]~90_combout\);

-- Location: LCCOMB_X24_Y1_N28
\Div0|auto_generated|divider|divider|StageOut[187]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut\(187) = ((\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\) # (!\u0|tix_mem\(0))) # (!\Div0|auto_generated|divider|divider|selnose[231]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datad => \u0|tix_mem\(0),
	combout => \Div0|auto_generated|divider|divider|StageOut\(187));

-- Location: LCCOMB_X24_Y1_N2
\Div0|auto_generated|divider|divider|StageOut[205]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[205]~91_combout\ = (\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut\(187))) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut\(187)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[252]~14_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut\(187),
	datac => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[205]~91_combout\);

-- Location: LCCOMB_X22_Y1_N8
\Div0|auto_generated|divider|divider|StageOut[204]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut\(204) = (\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\) # ((!\u0|tix_mem\(0)) # (!\Div0|auto_generated|divider|divider|selnose[252]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[252]~14_combout\,
	datad => \u0|tix_mem\(0),
	combout => \Div0|auto_generated|divider|divider|StageOut\(204));

-- Location: LCCOMB_X23_Y1_N6
\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\ = (\u0|tix_mem\(2) & ((\Div0|auto_generated|divider|divider|StageOut[205]~91_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[205]~91_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\) # (GND))))) # (!\u0|tix_mem\(2) & ((\Div0|auto_generated|divider|divider|StageOut[205]~91_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[205]~91_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\ = CARRY((\u0|tix_mem\(2) & ((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\) # (!\Div0|auto_generated|divider|divider|StageOut[205]~91_combout\))) # (!\u0|tix_mem\(2) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[205]~91_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(2),
	datab => \Div0|auto_generated|divider|divider|StageOut[205]~91_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\);

-- Location: LCCOMB_X23_Y1_N8
\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\ = ((\u0|tix_mem\(3) $ (\Div0|auto_generated|divider|divider|StageOut[206]~90_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\ = CARRY((\u0|tix_mem\(3) & (\Div0|auto_generated|divider|divider|StageOut[206]~90_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\)) # (!\u0|tix_mem\(3) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[206]~90_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(3),
	datab => \Div0|auto_generated|divider|divider|StageOut[206]~90_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~5\);

-- Location: LCCOMB_X23_Y1_N12
\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\ = ((\u0|tix_mem\(5) $ (\Div0|auto_generated|divider|divider|StageOut[208]~88_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\ = CARRY((\u0|tix_mem\(5) & (\Div0|auto_generated|divider|divider|StageOut[208]~88_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\)) # (!\u0|tix_mem\(5) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[208]~88_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(5),
	datab => \Div0|auto_generated|divider|divider|StageOut[208]~88_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\);

-- Location: LCCOMB_X23_Y1_N14
\Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\ = (\u0|tix_mem\(6) & ((\Div0|auto_generated|divider|divider|StageOut[209]~87_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[209]~87_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\) # (GND))))) # (!\u0|tix_mem\(6) & ((\Div0|auto_generated|divider|divider|StageOut[209]~87_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[209]~87_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~11\ = CARRY((\u0|tix_mem\(6) & ((!\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\) # (!\Div0|auto_generated|divider|divider|StageOut[209]~87_combout\))) # (!\u0|tix_mem\(6) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[209]~87_combout\ & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(6),
	datab => \Div0|auto_generated|divider|divider|StageOut[209]~87_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~11\);

-- Location: LCCOMB_X23_Y1_N22
\Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~18_combout\ = (\Div0|auto_generated|divider|divider|StageOut[213]~83_combout\ & ((\u0|tix_mem\(10) & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~17\)) # (!\u0|tix_mem\(10) 
-- & (\Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~17\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[213]~83_combout\ & ((\u0|tix_mem\(10) & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~17\) # (GND))) # 
-- (!\u0|tix_mem\(10) & (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~17\))))
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~19\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[213]~83_combout\ & (\u0|tix_mem\(10) & !\Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~17\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[213]~83_combout\ & ((\u0|tix_mem\(10)) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[213]~83_combout\,
	datab => \u0|tix_mem\(10),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[9]~17\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~18_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~19\);

-- Location: LCCOMB_X23_Y1_N30
\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ = !\Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_13_result_int[13]~25\,
	combout => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\);

-- Location: LCCOMB_X22_Y1_N6
\Div0|auto_generated|divider|divider|StageOut[228]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[228]~98_combout\ = (\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[210]~86_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & (\Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[210]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[7]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[273]~15_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[210]~86_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[228]~98_combout\);

-- Location: LCCOMB_X22_Y1_N20
\Div0|auto_generated|divider|divider|StageOut[227]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[227]~99_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[209]~87_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & ((\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & (\Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[209]~87_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[273]~15_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[209]~87_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[227]~99_combout\);

-- Location: LCCOMB_X24_Y1_N26
\Div0|auto_generated|divider|divider|StageOut[224]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[224]~102_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[206]~90_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & ((\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & (\Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[206]~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[273]~15_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[206]~90_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[224]~102_combout\);

-- Location: LCCOMB_X24_Y1_N24
\Div0|auto_generated|divider|divider|StageOut[223]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[223]~103_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[205]~91_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & ((\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & (\Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[205]~91_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[273]~15_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[205]~91_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[223]~103_combout\);

-- Location: LCCOMB_X20_Y1_N0
\Div0|auto_generated|divider|divider|op_5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~1_cout\ = CARRY(!\u0|tix_mem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|tix_mem\(0),
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_5~1_cout\);

-- Location: LCCOMB_X20_Y1_N12
\Div0|auto_generated|divider|divider|op_5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~12_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[226]~100_combout\ $ (\u0|tix_mem\(6) $ (\Div0|auto_generated|divider|divider|op_5~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_5~13\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[226]~100_combout\ & ((!\Div0|auto_generated|divider|divider|op_5~11\) # (!\u0|tix_mem\(6)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[226]~100_combout\ & (!\u0|tix_mem\(6) & !\Div0|auto_generated|divider|divider|op_5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[226]~100_combout\,
	datab => \u0|tix_mem\(6),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~11\,
	combout => \Div0|auto_generated|divider|divider|op_5~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~13\);

-- Location: LCCOMB_X20_Y1_N16
\Div0|auto_generated|divider|divider|op_5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~16_combout\ = ((\u0|tix_mem\(8) $ (\Div0|auto_generated|divider|divider|StageOut[228]~98_combout\ $ (\Div0|auto_generated|divider|divider|op_5~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_5~17\ = CARRY((\u0|tix_mem\(8) & (\Div0|auto_generated|divider|divider|StageOut[228]~98_combout\ & !\Div0|auto_generated|divider|divider|op_5~15\)) # (!\u0|tix_mem\(8) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[228]~98_combout\) # (!\Div0|auto_generated|divider|divider|op_5~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(8),
	datab => \Div0|auto_generated|divider|divider|StageOut[228]~98_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~15\,
	combout => \Div0|auto_generated|divider|divider|op_5~16_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~17\);

-- Location: LCCOMB_X23_Y1_N2
\Div0|auto_generated|divider|divider|StageOut[232]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[232]~107_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[214]~94_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & ((\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & (\Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~20_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[214]~94_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[11]~20_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[214]~94_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[273]~15_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[232]~107_combout\);

-- Location: LCCOMB_X20_Y1_N18
\Div0|auto_generated|divider|divider|op_5~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~18_combout\ = (\Div0|auto_generated|divider|divider|StageOut[229]~97_combout\ & ((\u0|tix_mem\(9) & (!\Div0|auto_generated|divider|divider|op_5~17\)) # (!\u0|tix_mem\(9) & 
-- (\Div0|auto_generated|divider|divider|op_5~17\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[229]~97_combout\ & ((\u0|tix_mem\(9) & ((\Div0|auto_generated|divider|divider|op_5~17\) # (GND))) # (!\u0|tix_mem\(9) & 
-- (!\Div0|auto_generated|divider|divider|op_5~17\))))
-- \Div0|auto_generated|divider|divider|op_5~19\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[229]~97_combout\ & (\u0|tix_mem\(9) & !\Div0|auto_generated|divider|divider|op_5~17\)) # (!\Div0|auto_generated|divider|divider|StageOut[229]~97_combout\ 
-- & ((\u0|tix_mem\(9)) # (!\Div0|auto_generated|divider|divider|op_5~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[229]~97_combout\,
	datab => \u0|tix_mem\(9),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~17\,
	combout => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~19\);

-- Location: LCCOMB_X20_Y1_N24
\Div0|auto_generated|divider|divider|op_5~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~24_combout\ = ((\u0|tix_mem\(12) $ (\Div0|auto_generated|divider|divider|StageOut[232]~107_combout\ $ (\Div0|auto_generated|divider|divider|op_5~23\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_5~25\ = CARRY((\u0|tix_mem\(12) & (\Div0|auto_generated|divider|divider|StageOut[232]~107_combout\ & !\Div0|auto_generated|divider|divider|op_5~23\)) # (!\u0|tix_mem\(12) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[232]~107_combout\) # (!\Div0|auto_generated|divider|divider|op_5~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(12),
	datab => \Div0|auto_generated|divider|divider|StageOut[232]~107_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~23\,
	combout => \Div0|auto_generated|divider|divider|op_5~24_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~25\);

-- Location: LCCOMB_X20_Y1_N26
\Div0|auto_generated|divider|divider|op_5~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~26_combout\ = (\Div0|auto_generated|divider|divider|StageOut[233]~106_combout\ & ((\u0|tix_mem\(13) & (!\Div0|auto_generated|divider|divider|op_5~25\)) # (!\u0|tix_mem\(13) & 
-- (\Div0|auto_generated|divider|divider|op_5~25\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[233]~106_combout\ & ((\u0|tix_mem\(13) & ((\Div0|auto_generated|divider|divider|op_5~25\) # (GND))) # (!\u0|tix_mem\(13) & 
-- (!\Div0|auto_generated|divider|divider|op_5~25\))))
-- \Div0|auto_generated|divider|divider|op_5~27\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[233]~106_combout\ & (\u0|tix_mem\(13) & !\Div0|auto_generated|divider|divider|op_5~25\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[233]~106_combout\ & ((\u0|tix_mem\(13)) # (!\Div0|auto_generated|divider|divider|op_5~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[233]~106_combout\,
	datab => \u0|tix_mem\(13),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~25\,
	combout => \Div0|auto_generated|divider|divider|op_5~26_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~27\);

-- Location: LCCOMB_X20_Y1_N28
\Div0|auto_generated|divider|divider|op_5~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~28_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[234]~105_combout\ $ (\u0|tix_mem\(14) $ (\Div0|auto_generated|divider|divider|op_5~27\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_5~29\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[234]~105_combout\ & ((!\Div0|auto_generated|divider|divider|op_5~27\) # (!\u0|tix_mem\(14)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[234]~105_combout\ & (!\u0|tix_mem\(14) & !\Div0|auto_generated|divider|divider|op_5~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[234]~105_combout\,
	datab => \u0|tix_mem\(14),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_5~27\,
	combout => \Div0|auto_generated|divider|divider|op_5~28_combout\,
	cout => \Div0|auto_generated|divider|divider|op_5~29\);

-- Location: LCCOMB_X20_Y1_N30
\Div0|auto_generated|divider|divider|op_5~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_5~30_combout\ = !\Div0|auto_generated|divider|divider|op_5~29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_5~29\,
	combout => \Div0|auto_generated|divider|divider|op_5~30_combout\);

-- Location: LCCOMB_X22_Y1_N24
\Div0|auto_generated|divider|divider|StageOut[246]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[246]~111_combout\ = (\Div0|auto_generated|divider|divider|op_5~30_combout\ & (\Div0|auto_generated|divider|divider|StageOut[228]~98_combout\)) # (!\Div0|auto_generated|divider|divider|op_5~30_combout\ & 
-- ((\u0|tix_mem\(15) & (\Div0|auto_generated|divider|divider|StageOut[228]~98_combout\)) # (!\u0|tix_mem\(15) & ((\Div0|auto_generated|divider|divider|op_5~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[228]~98_combout\,
	datab => \Div0|auto_generated|divider|divider|op_5~16_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~30_combout\,
	datad => \u0|tix_mem\(15),
	combout => \Div0|auto_generated|divider|divider|StageOut[246]~111_combout\);

-- Location: LCCOMB_X21_Y1_N14
\Div0|auto_generated|divider|divider|StageOut[252]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[252]~120_combout\ = (\Div0|auto_generated|divider|divider|op_5~30_combout\ & (\Div0|auto_generated|divider|divider|StageOut[234]~105_combout\)) # (!\Div0|auto_generated|divider|divider|op_5~30_combout\ & 
-- ((\u0|tix_mem\(15) & (\Div0|auto_generated|divider|divider|StageOut[234]~105_combout\)) # (!\u0|tix_mem\(15) & ((\Div0|auto_generated|divider|divider|op_5~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[234]~105_combout\,
	datab => \Div0|auto_generated|divider|divider|op_5~28_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~30_combout\,
	datad => \u0|tix_mem\(15),
	combout => \Div0|auto_generated|divider|divider|StageOut[252]~120_combout\);

-- Location: LCCOMB_X21_Y1_N8
\Div0|auto_generated|divider|divider|StageOut[251]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[251]~121_combout\ = (\Div0|auto_generated|divider|divider|op_5~30_combout\ & (\Div0|auto_generated|divider|divider|StageOut[233]~106_combout\)) # (!\Div0|auto_generated|divider|divider|op_5~30_combout\ & 
-- ((\u0|tix_mem\(15) & (\Div0|auto_generated|divider|divider|StageOut[233]~106_combout\)) # (!\u0|tix_mem\(15) & ((\Div0|auto_generated|divider|divider|op_5~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[233]~106_combout\,
	datab => \Div0|auto_generated|divider|divider|op_5~26_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~30_combout\,
	datad => \u0|tix_mem\(15),
	combout => \Div0|auto_generated|divider|divider|StageOut[251]~121_combout\);

-- Location: LCCOMB_X21_Y1_N10
\Div0|auto_generated|divider|divider|StageOut[250]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[250]~122_combout\ = (\Div0|auto_generated|divider|divider|op_5~30_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[232]~107_combout\)))) # (!\Div0|auto_generated|divider|divider|op_5~30_combout\ & 
-- ((\u0|tix_mem\(15) & ((\Div0|auto_generated|divider|divider|StageOut[232]~107_combout\))) # (!\u0|tix_mem\(15) & (\Div0|auto_generated|divider|divider|op_5~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~30_combout\,
	datab => \Div0|auto_generated|divider|divider|op_5~24_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[232]~107_combout\,
	datad => \u0|tix_mem\(15),
	combout => \Div0|auto_generated|divider|divider|StageOut[250]~122_combout\);

-- Location: LCCOMB_X21_Y1_N22
\Div0|auto_generated|divider|divider|StageOut[247]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[247]~110_combout\ = (\Div0|auto_generated|divider|divider|op_5~30_combout\ & (\Div0|auto_generated|divider|divider|StageOut[229]~97_combout\)) # (!\Div0|auto_generated|divider|divider|op_5~30_combout\ & 
-- ((\u0|tix_mem\(15) & (\Div0|auto_generated|divider|divider|StageOut[229]~97_combout\)) # (!\u0|tix_mem\(15) & ((\Div0|auto_generated|divider|divider|op_5~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[229]~97_combout\,
	datab => \Div0|auto_generated|divider|divider|op_5~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~30_combout\,
	datad => \u0|tix_mem\(15),
	combout => \Div0|auto_generated|divider|divider|StageOut[247]~110_combout\);

-- Location: LCCOMB_X22_Y1_N30
\Div0|auto_generated|divider|divider|StageOut[226]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[226]~100_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & (\Div0|auto_generated|divider|divider|StageOut[208]~88_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & ((\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & (\Div0|auto_generated|divider|divider|StageOut[208]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[208]~88_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[273]~15_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[226]~100_combout\);

-- Location: LCCOMB_X21_Y1_N6
\Div0|auto_generated|divider|divider|StageOut[244]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[244]~113_combout\ = (\Div0|auto_generated|divider|divider|op_5~30_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[226]~100_combout\)))) # (!\Div0|auto_generated|divider|divider|op_5~30_combout\ & 
-- ((\u0|tix_mem\(15) & (\Div0|auto_generated|divider|divider|StageOut[226]~100_combout\)) # (!\u0|tix_mem\(15) & ((\Div0|auto_generated|divider|divider|op_5~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~30_combout\,
	datab => \u0|tix_mem\(15),
	datac => \Div0|auto_generated|divider|divider|StageOut[226]~100_combout\,
	datad => \Div0|auto_generated|divider|divider|op_5~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[244]~113_combout\);

-- Location: LCCOMB_X21_Y1_N18
\Div0|auto_generated|divider|divider|StageOut[242]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[242]~115_combout\ = (\Div0|auto_generated|divider|divider|op_5~30_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[224]~102_combout\)))) # (!\Div0|auto_generated|divider|divider|op_5~30_combout\ & 
-- ((\u0|tix_mem\(15) & ((\Div0|auto_generated|divider|divider|StageOut[224]~102_combout\))) # (!\u0|tix_mem\(15) & (\Div0|auto_generated|divider|divider|op_5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[224]~102_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~30_combout\,
	datad => \u0|tix_mem\(15),
	combout => \Div0|auto_generated|divider|divider|StageOut[242]~115_combout\);

-- Location: LCCOMB_X21_Y1_N4
\Div0|auto_generated|divider|divider|StageOut[221]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut\(221) = ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\) # ((\u0|tix_mem\(14)) # (\u0|tix_mem\(15)))) # (!\u0|tix_mem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(0),
	datab => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datac => \u0|tix_mem\(14),
	datad => \u0|tix_mem\(15),
	combout => \Div0|auto_generated|divider|divider|StageOut\(221));

-- Location: LCCOMB_X21_Y1_N12
\Div0|auto_generated|divider|divider|StageOut[239]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[239]~118_combout\ = (\Div0|auto_generated|divider|divider|op_5~30_combout\ & (((\Div0|auto_generated|divider|divider|StageOut\(221))))) # (!\Div0|auto_generated|divider|divider|op_5~30_combout\ & 
-- ((\u0|tix_mem\(15) & ((\Div0|auto_generated|divider|divider|StageOut\(221)))) # (!\u0|tix_mem\(15) & (\Div0|auto_generated|divider|divider|op_5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut\(221),
	datac => \Div0|auto_generated|divider|divider|op_5~30_combout\,
	datad => \u0|tix_mem\(15),
	combout => \Div0|auto_generated|divider|divider|StageOut[239]~118_combout\);

-- Location: LCCOMB_X22_Y1_N18
\Div0|auto_generated|divider|divider|StageOut[238]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[238]~119_combout\ = (!\u0|tix_mem\(15) & (!\Div0|auto_generated|divider|divider|op_5~30_combout\ & \u0|tix_mem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(15),
	datac => \Div0|auto_generated|divider|divider|op_5~30_combout\,
	datad => \u0|tix_mem\(0),
	combout => \Div0|auto_generated|divider|divider|StageOut[238]~119_combout\);

-- Location: LCCOMB_X22_Y4_N16
\Div0|auto_generated|divider|divider|op_6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~1_cout\ = CARRY(!\u0|tix_mem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|tix_mem\(0),
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_6~1_cout\);

-- Location: LCCOMB_X22_Y4_N18
\Div0|auto_generated|divider|divider|op_6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~2_combout\ = (\u0|tix_mem\(1) & ((\Div0|auto_generated|divider|divider|StageOut[238]~119_combout\ & (!\Div0|auto_generated|divider|divider|op_6~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[238]~119_combout\ & ((\Div0|auto_generated|divider|divider|op_6~1_cout\) # (GND))))) # (!\u0|tix_mem\(1) & ((\Div0|auto_generated|divider|divider|StageOut[238]~119_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~1_cout\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[238]~119_combout\ & (!\Div0|auto_generated|divider|divider|op_6~1_cout\))))
-- \Div0|auto_generated|divider|divider|op_6~3\ = CARRY((\u0|tix_mem\(1) & ((!\Div0|auto_generated|divider|divider|op_6~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[238]~119_combout\))) # (!\u0|tix_mem\(1) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[238]~119_combout\ & !\Div0|auto_generated|divider|divider|op_6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(1),
	datab => \Div0|auto_generated|divider|divider|StageOut[238]~119_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_6~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X22_Y4_N20
\Div0|auto_generated|divider|divider|op_6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~4_combout\ = ((\u0|tix_mem\(2) $ (\Div0|auto_generated|divider|divider|StageOut[239]~118_combout\ $ (\Div0|auto_generated|divider|divider|op_6~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_6~5\ = CARRY((\u0|tix_mem\(2) & (\Div0|auto_generated|divider|divider|StageOut[239]~118_combout\ & !\Div0|auto_generated|divider|divider|op_6~3\)) # (!\u0|tix_mem\(2) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[239]~118_combout\) # (!\Div0|auto_generated|divider|divider|op_6~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(2),
	datab => \Div0|auto_generated|divider|divider|StageOut[239]~118_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~3\,
	combout => \Div0|auto_generated|divider|divider|op_6~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X22_Y4_N22
\Div0|auto_generated|divider|divider|op_6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[240]~117_combout\ & ((\u0|tix_mem\(3) & (!\Div0|auto_generated|divider|divider|op_6~5\)) # (!\u0|tix_mem\(3) & 
-- (\Div0|auto_generated|divider|divider|op_6~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[240]~117_combout\ & ((\u0|tix_mem\(3) & ((\Div0|auto_generated|divider|divider|op_6~5\) # (GND))) # (!\u0|tix_mem\(3) & 
-- (!\Div0|auto_generated|divider|divider|op_6~5\))))
-- \Div0|auto_generated|divider|divider|op_6~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[240]~117_combout\ & (\u0|tix_mem\(3) & !\Div0|auto_generated|divider|divider|op_6~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[240]~117_combout\ 
-- & ((\u0|tix_mem\(3)) # (!\Div0|auto_generated|divider|divider|op_6~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[240]~117_combout\,
	datab => \u0|tix_mem\(3),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~5\,
	combout => \Div0|auto_generated|divider|divider|op_6~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X22_Y4_N24
\Div0|auto_generated|divider|divider|op_6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[241]~116_combout\ $ (\u0|tix_mem\(4) $ (\Div0|auto_generated|divider|divider|op_6~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_6~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[241]~116_combout\ & ((!\Div0|auto_generated|divider|divider|op_6~7\) # (!\u0|tix_mem\(4)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[241]~116_combout\ & (!\u0|tix_mem\(4) & !\Div0|auto_generated|divider|divider|op_6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[241]~116_combout\,
	datab => \u0|tix_mem\(4),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~7\,
	combout => \Div0|auto_generated|divider|divider|op_6~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~9\);

-- Location: LCCOMB_X22_Y4_N26
\Div0|auto_generated|divider|divider|op_6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~10_combout\ = (\u0|tix_mem\(5) & ((\Div0|auto_generated|divider|divider|StageOut[242]~115_combout\ & (!\Div0|auto_generated|divider|divider|op_6~9\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[242]~115_combout\ & ((\Div0|auto_generated|divider|divider|op_6~9\) # (GND))))) # (!\u0|tix_mem\(5) & ((\Div0|auto_generated|divider|divider|StageOut[242]~115_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~9\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[242]~115_combout\ & (!\Div0|auto_generated|divider|divider|op_6~9\))))
-- \Div0|auto_generated|divider|divider|op_6~11\ = CARRY((\u0|tix_mem\(5) & ((!\Div0|auto_generated|divider|divider|op_6~9\) # (!\Div0|auto_generated|divider|divider|StageOut[242]~115_combout\))) # (!\u0|tix_mem\(5) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[242]~115_combout\ & !\Div0|auto_generated|divider|divider|op_6~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(5),
	datab => \Div0|auto_generated|divider|divider|StageOut[242]~115_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~9\,
	combout => \Div0|auto_generated|divider|divider|op_6~10_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~11\);

-- Location: LCCOMB_X22_Y4_N28
\Div0|auto_generated|divider|divider|op_6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~12_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[243]~114_combout\ $ (\u0|tix_mem\(6) $ (\Div0|auto_generated|divider|divider|op_6~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_6~13\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[243]~114_combout\ & ((!\Div0|auto_generated|divider|divider|op_6~11\) # (!\u0|tix_mem\(6)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[243]~114_combout\ & (!\u0|tix_mem\(6) & !\Div0|auto_generated|divider|divider|op_6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[243]~114_combout\,
	datab => \u0|tix_mem\(6),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~11\,
	combout => \Div0|auto_generated|divider|divider|op_6~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~13\);

-- Location: LCCOMB_X22_Y4_N30
\Div0|auto_generated|divider|divider|op_6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~14_combout\ = (\u0|tix_mem\(7) & ((\Div0|auto_generated|divider|divider|StageOut[244]~113_combout\ & (!\Div0|auto_generated|divider|divider|op_6~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[244]~113_combout\ & ((\Div0|auto_generated|divider|divider|op_6~13\) # (GND))))) # (!\u0|tix_mem\(7) & ((\Div0|auto_generated|divider|divider|StageOut[244]~113_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[244]~113_combout\ & (!\Div0|auto_generated|divider|divider|op_6~13\))))
-- \Div0|auto_generated|divider|divider|op_6~15\ = CARRY((\u0|tix_mem\(7) & ((!\Div0|auto_generated|divider|divider|op_6~13\) # (!\Div0|auto_generated|divider|divider|StageOut[244]~113_combout\))) # (!\u0|tix_mem\(7) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[244]~113_combout\ & !\Div0|auto_generated|divider|divider|op_6~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(7),
	datab => \Div0|auto_generated|divider|divider|StageOut[244]~113_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~13\,
	combout => \Div0|auto_generated|divider|divider|op_6~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~15\);

-- Location: LCCOMB_X22_Y3_N0
\Div0|auto_generated|divider|divider|op_6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~16_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[245]~112_combout\ $ (\u0|tix_mem\(8) $ (\Div0|auto_generated|divider|divider|op_6~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_6~17\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[245]~112_combout\ & ((!\Div0|auto_generated|divider|divider|op_6~15\) # (!\u0|tix_mem\(8)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[245]~112_combout\ & (!\u0|tix_mem\(8) & !\Div0|auto_generated|divider|divider|op_6~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[245]~112_combout\,
	datab => \u0|tix_mem\(8),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~15\,
	combout => \Div0|auto_generated|divider|divider|op_6~16_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~17\);

-- Location: LCCOMB_X22_Y3_N2
\Div0|auto_generated|divider|divider|op_6~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~18_combout\ = (\u0|tix_mem\(9) & ((\Div0|auto_generated|divider|divider|StageOut[246]~111_combout\ & (!\Div0|auto_generated|divider|divider|op_6~17\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[246]~111_combout\ & ((\Div0|auto_generated|divider|divider|op_6~17\) # (GND))))) # (!\u0|tix_mem\(9) & ((\Div0|auto_generated|divider|divider|StageOut[246]~111_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~17\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[246]~111_combout\ & (!\Div0|auto_generated|divider|divider|op_6~17\))))
-- \Div0|auto_generated|divider|divider|op_6~19\ = CARRY((\u0|tix_mem\(9) & ((!\Div0|auto_generated|divider|divider|op_6~17\) # (!\Div0|auto_generated|divider|divider|StageOut[246]~111_combout\))) # (!\u0|tix_mem\(9) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[246]~111_combout\ & !\Div0|auto_generated|divider|divider|op_6~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(9),
	datab => \Div0|auto_generated|divider|divider|StageOut[246]~111_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~17\,
	combout => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~19\);

-- Location: LCCOMB_X22_Y3_N6
\Div0|auto_generated|divider|divider|op_6~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~22_combout\ = (\Div0|auto_generated|divider|divider|StageOut[248]~109_combout\ & ((\u0|tix_mem\(11) & (!\Div0|auto_generated|divider|divider|op_6~21\)) # (!\u0|tix_mem\(11) & 
-- (\Div0|auto_generated|divider|divider|op_6~21\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[248]~109_combout\ & ((\u0|tix_mem\(11) & ((\Div0|auto_generated|divider|divider|op_6~21\) # (GND))) # (!\u0|tix_mem\(11) & 
-- (!\Div0|auto_generated|divider|divider|op_6~21\))))
-- \Div0|auto_generated|divider|divider|op_6~23\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[248]~109_combout\ & (\u0|tix_mem\(11) & !\Div0|auto_generated|divider|divider|op_6~21\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[248]~109_combout\ & ((\u0|tix_mem\(11)) # (!\Div0|auto_generated|divider|divider|op_6~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[248]~109_combout\,
	datab => \u0|tix_mem\(11),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~21\,
	combout => \Div0|auto_generated|divider|divider|op_6~22_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~23\);

-- Location: LCCOMB_X22_Y3_N8
\Div0|auto_generated|divider|divider|op_6~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~24_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[249]~108_combout\ $ (\u0|tix_mem\(12) $ (\Div0|auto_generated|divider|divider|op_6~23\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_6~25\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[249]~108_combout\ & ((!\Div0|auto_generated|divider|divider|op_6~23\) # (!\u0|tix_mem\(12)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[249]~108_combout\ & (!\u0|tix_mem\(12) & !\Div0|auto_generated|divider|divider|op_6~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[249]~108_combout\,
	datab => \u0|tix_mem\(12),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~23\,
	combout => \Div0|auto_generated|divider|divider|op_6~24_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~25\);

-- Location: LCCOMB_X22_Y3_N10
\Div0|auto_generated|divider|divider|op_6~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~26_combout\ = (\u0|tix_mem\(13) & ((\Div0|auto_generated|divider|divider|StageOut[250]~122_combout\ & (!\Div0|auto_generated|divider|divider|op_6~25\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[250]~122_combout\ & ((\Div0|auto_generated|divider|divider|op_6~25\) # (GND))))) # (!\u0|tix_mem\(13) & ((\Div0|auto_generated|divider|divider|StageOut[250]~122_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~25\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[250]~122_combout\ & (!\Div0|auto_generated|divider|divider|op_6~25\))))
-- \Div0|auto_generated|divider|divider|op_6~27\ = CARRY((\u0|tix_mem\(13) & ((!\Div0|auto_generated|divider|divider|op_6~25\) # (!\Div0|auto_generated|divider|divider|StageOut[250]~122_combout\))) # (!\u0|tix_mem\(13) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[250]~122_combout\ & !\Div0|auto_generated|divider|divider|op_6~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(13),
	datab => \Div0|auto_generated|divider|divider|StageOut[250]~122_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~25\,
	combout => \Div0|auto_generated|divider|divider|op_6~26_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~27\);

-- Location: LCCOMB_X22_Y3_N12
\Div0|auto_generated|divider|divider|op_6~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~28_combout\ = ((\u0|tix_mem\(14) $ (\Div0|auto_generated|divider|divider|StageOut[251]~121_combout\ $ (\Div0|auto_generated|divider|divider|op_6~27\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_6~29\ = CARRY((\u0|tix_mem\(14) & (\Div0|auto_generated|divider|divider|StageOut[251]~121_combout\ & !\Div0|auto_generated|divider|divider|op_6~27\)) # (!\u0|tix_mem\(14) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[251]~121_combout\) # (!\Div0|auto_generated|divider|divider|op_6~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(14),
	datab => \Div0|auto_generated|divider|divider|StageOut[251]~121_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~27\,
	combout => \Div0|auto_generated|divider|divider|op_6~28_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~29\);

-- Location: LCCOMB_X22_Y3_N14
\Div0|auto_generated|divider|divider|op_6~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~30_combout\ = (\u0|tix_mem\(15) & ((\Div0|auto_generated|divider|divider|StageOut[252]~120_combout\ & (!\Div0|auto_generated|divider|divider|op_6~29\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[252]~120_combout\ & ((\Div0|auto_generated|divider|divider|op_6~29\) # (GND))))) # (!\u0|tix_mem\(15) & ((\Div0|auto_generated|divider|divider|StageOut[252]~120_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~29\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[252]~120_combout\ & (!\Div0|auto_generated|divider|divider|op_6~29\))))
-- \Div0|auto_generated|divider|divider|op_6~31\ = CARRY((\u0|tix_mem\(15) & ((!\Div0|auto_generated|divider|divider|op_6~29\) # (!\Div0|auto_generated|divider|divider|StageOut[252]~120_combout\))) # (!\u0|tix_mem\(15) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[252]~120_combout\ & !\Div0|auto_generated|divider|divider|op_6~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(15),
	datab => \Div0|auto_generated|divider|divider|StageOut[252]~120_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_6~29\,
	combout => \Div0|auto_generated|divider|divider|op_6~30_combout\,
	cout => \Div0|auto_generated|divider|divider|op_6~31\);

-- Location: LCCOMB_X22_Y3_N16
\Div0|auto_generated|divider|divider|op_6~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_6~32_combout\ = \Div0|auto_generated|divider|divider|op_6~31\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_6~31\,
	combout => \Div0|auto_generated|divider|divider|op_6~32_combout\);

-- Location: LCCOMB_X22_Y3_N20
\Div0|auto_generated|divider|divider|StageOut[264]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[264]~126_combout\ = (\Div0|auto_generated|divider|divider|op_6~32_combout\ & (\Div0|auto_generated|divider|divider|StageOut[246]~111_combout\)) # (!\Div0|auto_generated|divider|divider|op_6~32_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_6~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[246]~111_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~32_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[264]~126_combout\);

-- Location: LCCOMB_X22_Y3_N22
\Div0|auto_generated|divider|divider|StageOut[263]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[263]~127_combout\ = (\Div0|auto_generated|divider|divider|op_6~32_combout\ & (\Div0|auto_generated|divider|divider|StageOut[245]~112_combout\)) # (!\Div0|auto_generated|divider|divider|op_6~32_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_6~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[245]~112_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~32_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[263]~127_combout\);

-- Location: LCCOMB_X22_Y4_N8
\Div0|auto_generated|divider|divider|StageOut[262]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[262]~128_combout\ = (\Div0|auto_generated|divider|divider|op_6~32_combout\ & (\Div0|auto_generated|divider|divider|StageOut[244]~113_combout\)) # (!\Div0|auto_generated|divider|divider|op_6~32_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_6~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_6~32_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[244]~113_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[262]~128_combout\);

-- Location: LCCOMB_X23_Y1_N0
\Div0|auto_generated|divider|divider|StageOut[225]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[225]~101_combout\ = (\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[207]~89_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & (\Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[207]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[273]~15_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[207]~89_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[225]~101_combout\);

-- Location: LCCOMB_X21_Y1_N28
\Div0|auto_generated|divider|divider|StageOut[243]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[243]~114_combout\ = (\u0|tix_mem\(15) & (((\Div0|auto_generated|divider|divider|StageOut[225]~101_combout\)))) # (!\u0|tix_mem\(15) & ((\Div0|auto_generated|divider|divider|op_5~30_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[225]~101_combout\))) # (!\Div0|auto_generated|divider|divider|op_5~30_combout\ & (\Div0|auto_generated|divider|divider|op_5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~10_combout\,
	datab => \u0|tix_mem\(15),
	datac => \Div0|auto_generated|divider|divider|op_5~30_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[225]~101_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[243]~114_combout\);

-- Location: LCCOMB_X22_Y4_N14
\Div0|auto_generated|divider|divider|StageOut[261]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[261]~129_combout\ = (\Div0|auto_generated|divider|divider|op_6~32_combout\ & (\Div0|auto_generated|divider|divider|StageOut[243]~114_combout\)) # (!\Div0|auto_generated|divider|divider|op_6~32_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_6~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_6~32_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[243]~114_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[261]~129_combout\);

-- Location: LCCOMB_X22_Y4_N12
\Div0|auto_generated|divider|divider|StageOut[260]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[260]~130_combout\ = (\Div0|auto_generated|divider|divider|op_6~32_combout\ & (\Div0|auto_generated|divider|divider|StageOut[242]~115_combout\)) # (!\Div0|auto_generated|divider|divider|op_6~32_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_6~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_6~32_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[242]~115_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[260]~130_combout\);

-- Location: LCCOMB_X22_Y4_N0
\Div0|auto_generated|divider|divider|StageOut[258]~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[258]~132_combout\ = (\Div0|auto_generated|divider|divider|op_6~32_combout\ & (\Div0|auto_generated|divider|divider|StageOut[240]~117_combout\)) # (!\Div0|auto_generated|divider|divider|op_6~32_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_6~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[240]~117_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~32_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[258]~132_combout\);

-- Location: LCCOMB_X22_Y4_N2
\Div0|auto_generated|divider|divider|StageOut[257]~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[257]~133_combout\ = (\Div0|auto_generated|divider|divider|op_6~32_combout\ & (\Div0|auto_generated|divider|divider|StageOut[239]~118_combout\)) # (!\Div0|auto_generated|divider|divider|op_6~32_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[239]~118_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~4_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~32_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[257]~133_combout\);

-- Location: LCCOMB_X22_Y4_N10
\Div0|auto_generated|divider|divider|StageOut[255]~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[255]~135_combout\ = (!\Div0|auto_generated|divider|divider|op_6~32_combout\ & \u0|tix_mem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_6~32_combout\,
	datad => \u0|tix_mem\(0),
	combout => \Div0|auto_generated|divider|divider|StageOut[255]~135_combout\);

-- Location: LCCOMB_X21_Y4_N14
\Div0|auto_generated|divider|divider|op_7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~1_cout\ = CARRY(!\u0|tix_mem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(0),
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_7~1_cout\);

-- Location: LCCOMB_X21_Y4_N18
\Div0|auto_generated|divider|divider|op_7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[256]~134_combout\ $ (\u0|tix_mem\(2) $ (\Div0|auto_generated|divider|divider|op_7~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_7~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[256]~134_combout\ & ((!\Div0|auto_generated|divider|divider|op_7~3\) # (!\u0|tix_mem\(2)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[256]~134_combout\ & (!\u0|tix_mem\(2) & !\Div0|auto_generated|divider|divider|op_7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[256]~134_combout\,
	datab => \u0|tix_mem\(2),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~3\,
	combout => \Div0|auto_generated|divider|divider|op_7~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~5\);

-- Location: LCCOMB_X21_Y4_N22
\Div0|auto_generated|divider|divider|op_7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~8_combout\ = ((\u0|tix_mem\(4) $ (\Div0|auto_generated|divider|divider|StageOut[258]~132_combout\ $ (\Div0|auto_generated|divider|divider|op_7~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_7~9\ = CARRY((\u0|tix_mem\(4) & (\Div0|auto_generated|divider|divider|StageOut[258]~132_combout\ & !\Div0|auto_generated|divider|divider|op_7~7\)) # (!\u0|tix_mem\(4) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[258]~132_combout\) # (!\Div0|auto_generated|divider|divider|op_7~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(4),
	datab => \Div0|auto_generated|divider|divider|StageOut[258]~132_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~7\,
	combout => \Div0|auto_generated|divider|divider|op_7~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~9\);

-- Location: LCCOMB_X21_Y4_N26
\Div0|auto_generated|divider|divider|op_7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~12_combout\ = ((\u0|tix_mem\(6) $ (\Div0|auto_generated|divider|divider|StageOut[260]~130_combout\ $ (\Div0|auto_generated|divider|divider|op_7~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_7~13\ = CARRY((\u0|tix_mem\(6) & (\Div0|auto_generated|divider|divider|StageOut[260]~130_combout\ & !\Div0|auto_generated|divider|divider|op_7~11\)) # (!\u0|tix_mem\(6) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[260]~130_combout\) # (!\Div0|auto_generated|divider|divider|op_7~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(6),
	datab => \Div0|auto_generated|divider|divider|StageOut[260]~130_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~11\,
	combout => \Div0|auto_generated|divider|divider|op_7~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~13\);

-- Location: LCCOMB_X21_Y4_N28
\Div0|auto_generated|divider|divider|op_7~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~14_combout\ = (\u0|tix_mem\(7) & ((\Div0|auto_generated|divider|divider|StageOut[261]~129_combout\ & (!\Div0|auto_generated|divider|divider|op_7~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[261]~129_combout\ & ((\Div0|auto_generated|divider|divider|op_7~13\) # (GND))))) # (!\u0|tix_mem\(7) & ((\Div0|auto_generated|divider|divider|StageOut[261]~129_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_7~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[261]~129_combout\ & (!\Div0|auto_generated|divider|divider|op_7~13\))))
-- \Div0|auto_generated|divider|divider|op_7~15\ = CARRY((\u0|tix_mem\(7) & ((!\Div0|auto_generated|divider|divider|op_7~13\) # (!\Div0|auto_generated|divider|divider|StageOut[261]~129_combout\))) # (!\u0|tix_mem\(7) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[261]~129_combout\ & !\Div0|auto_generated|divider|divider|op_7~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(7),
	datab => \Div0|auto_generated|divider|divider|StageOut[261]~129_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~13\,
	combout => \Div0|auto_generated|divider|divider|op_7~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~15\);

-- Location: LCCOMB_X21_Y4_N30
\Div0|auto_generated|divider|divider|op_7~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~16_combout\ = ((\u0|tix_mem\(8) $ (\Div0|auto_generated|divider|divider|StageOut[262]~128_combout\ $ (\Div0|auto_generated|divider|divider|op_7~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_7~17\ = CARRY((\u0|tix_mem\(8) & (\Div0|auto_generated|divider|divider|StageOut[262]~128_combout\ & !\Div0|auto_generated|divider|divider|op_7~15\)) # (!\u0|tix_mem\(8) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[262]~128_combout\) # (!\Div0|auto_generated|divider|divider|op_7~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(8),
	datab => \Div0|auto_generated|divider|divider|StageOut[262]~128_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~15\,
	combout => \Div0|auto_generated|divider|divider|op_7~16_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~17\);

-- Location: LCCOMB_X21_Y3_N0
\Div0|auto_generated|divider|divider|op_7~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~18_combout\ = (\u0|tix_mem\(9) & ((\Div0|auto_generated|divider|divider|StageOut[263]~127_combout\ & (!\Div0|auto_generated|divider|divider|op_7~17\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[263]~127_combout\ & ((\Div0|auto_generated|divider|divider|op_7~17\) # (GND))))) # (!\u0|tix_mem\(9) & ((\Div0|auto_generated|divider|divider|StageOut[263]~127_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_7~17\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[263]~127_combout\ & (!\Div0|auto_generated|divider|divider|op_7~17\))))
-- \Div0|auto_generated|divider|divider|op_7~19\ = CARRY((\u0|tix_mem\(9) & ((!\Div0|auto_generated|divider|divider|op_7~17\) # (!\Div0|auto_generated|divider|divider|StageOut[263]~127_combout\))) # (!\u0|tix_mem\(9) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[263]~127_combout\ & !\Div0|auto_generated|divider|divider|op_7~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(9),
	datab => \Div0|auto_generated|divider|divider|StageOut[263]~127_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~17\,
	combout => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~19\);

-- Location: LCCOMB_X21_Y3_N2
\Div0|auto_generated|divider|divider|op_7~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~20_combout\ = ((\u0|tix_mem\(10) $ (\Div0|auto_generated|divider|divider|StageOut[264]~126_combout\ $ (\Div0|auto_generated|divider|divider|op_7~19\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_7~21\ = CARRY((\u0|tix_mem\(10) & (\Div0|auto_generated|divider|divider|StageOut[264]~126_combout\ & !\Div0|auto_generated|divider|divider|op_7~19\)) # (!\u0|tix_mem\(10) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[264]~126_combout\) # (!\Div0|auto_generated|divider|divider|op_7~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(10),
	datab => \Div0|auto_generated|divider|divider|StageOut[264]~126_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~19\,
	combout => \Div0|auto_generated|divider|divider|op_7~20_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~21\);

-- Location: LCCOMB_X21_Y3_N4
\Div0|auto_generated|divider|divider|op_7~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~22_combout\ = (\Div0|auto_generated|divider|divider|StageOut[265]~125_combout\ & ((\u0|tix_mem\(11) & (!\Div0|auto_generated|divider|divider|op_7~21\)) # (!\u0|tix_mem\(11) & 
-- (\Div0|auto_generated|divider|divider|op_7~21\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[265]~125_combout\ & ((\u0|tix_mem\(11) & ((\Div0|auto_generated|divider|divider|op_7~21\) # (GND))) # (!\u0|tix_mem\(11) & 
-- (!\Div0|auto_generated|divider|divider|op_7~21\))))
-- \Div0|auto_generated|divider|divider|op_7~23\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[265]~125_combout\ & (\u0|tix_mem\(11) & !\Div0|auto_generated|divider|divider|op_7~21\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[265]~125_combout\ & ((\u0|tix_mem\(11)) # (!\Div0|auto_generated|divider|divider|op_7~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[265]~125_combout\,
	datab => \u0|tix_mem\(11),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~21\,
	combout => \Div0|auto_generated|divider|divider|op_7~22_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~23\);

-- Location: LCCOMB_X21_Y3_N18
\Div0|auto_generated|divider|divider|StageOut[270]~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[270]~137_combout\ = (\Div0|auto_generated|divider|divider|op_6~30_combout\ & !\Div0|auto_generated|divider|divider|op_6~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_6~30_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~32_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[270]~137_combout\);

-- Location: LCCOMB_X25_Y1_N28
\Div0|auto_generated|divider|divider|StageOut[213]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[213]~83_combout\ = (\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & 
-- ((\Div0|auto_generated|divider|divider|StageOut[195]~72_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\ & (\Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~16_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|selnose[252]~14_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[195]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_12_result_int[9]~16_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[252]~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[195]~72_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[213]~83_combout\);

-- Location: LCCOMB_X22_Y1_N14
\Div0|auto_generated|divider|divider|StageOut[231]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[231]~95_combout\ = (\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[213]~83_combout\)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\ & ((\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & (\Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~18_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|selnose[273]~15_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[213]~83_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datab => \Div0|auto_generated|divider|divider|selnose[273]~15_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[10]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[213]~83_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[231]~95_combout\);

-- Location: LCCOMB_X21_Y1_N30
\Div0|auto_generated|divider|divider|StageOut[249]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[249]~108_combout\ = (\Div0|auto_generated|divider|divider|op_5~30_combout\ & (((\Div0|auto_generated|divider|divider|StageOut[231]~95_combout\)))) # (!\Div0|auto_generated|divider|divider|op_5~30_combout\ & 
-- ((\u0|tix_mem\(15) & ((\Div0|auto_generated|divider|divider|StageOut[231]~95_combout\))) # (!\u0|tix_mem\(15) & (\Div0|auto_generated|divider|divider|op_5~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_5~22_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[231]~95_combout\,
	datac => \Div0|auto_generated|divider|divider|op_5~30_combout\,
	datad => \u0|tix_mem\(15),
	combout => \Div0|auto_generated|divider|divider|StageOut[249]~108_combout\);

-- Location: LCCOMB_X22_Y3_N30
\Div0|auto_generated|divider|divider|StageOut[267]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[267]~123_combout\ = (\Div0|auto_generated|divider|divider|op_6~32_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[249]~108_combout\))) # (!\Div0|auto_generated|divider|divider|op_6~32_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_6~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_6~24_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~32_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[249]~108_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[267]~123_combout\);

-- Location: LCCOMB_X22_Y3_N28
\Div0|auto_generated|divider|divider|StageOut[266]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[266]~124_combout\ = (\Div0|auto_generated|divider|divider|op_6~32_combout\ & (\Div0|auto_generated|divider|divider|StageOut[248]~109_combout\)) # (!\Div0|auto_generated|divider|divider|op_6~32_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_6~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[248]~109_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~32_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~22_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[266]~124_combout\);

-- Location: LCCOMB_X21_Y3_N10
\Div0|auto_generated|divider|divider|op_7~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~28_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[268]~139_combout\ $ (\u0|tix_mem\(14) $ (\Div0|auto_generated|divider|divider|op_7~27\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_7~29\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[268]~139_combout\ & ((!\Div0|auto_generated|divider|divider|op_7~27\) # (!\u0|tix_mem\(14)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[268]~139_combout\ & (!\u0|tix_mem\(14) & !\Div0|auto_generated|divider|divider|op_7~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[268]~139_combout\,
	datab => \u0|tix_mem\(14),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~27\,
	combout => \Div0|auto_generated|divider|divider|op_7~28_combout\,
	cout => \Div0|auto_generated|divider|divider|op_7~29\);

-- Location: LCCOMB_X21_Y3_N14
\Div0|auto_generated|divider|divider|op_7~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~33_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[270]~136_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[270]~137_combout\) # (!\Div0|auto_generated|divider|divider|op_7~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[270]~136_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[270]~137_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_7~31\,
	cout => \Div0|auto_generated|divider|divider|op_7~33_cout\);

-- Location: LCCOMB_X21_Y3_N16
\Div0|auto_generated|divider|divider|op_7~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_7~34_combout\ = !\Div0|auto_generated|divider|divider|op_7~33_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_7~33_cout\,
	combout => \Div0|auto_generated|divider|divider|op_7~34_combout\);

-- Location: LCCOMB_X21_Y3_N28
\Div0|auto_generated|divider|divider|StageOut[283]~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[283]~142_combout\ = (\Div0|auto_generated|divider|divider|op_7~34_combout\ & (\Div0|auto_generated|divider|divider|StageOut[265]~125_combout\)) # (!\Div0|auto_generated|divider|divider|op_7~34_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_7~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[265]~125_combout\,
	datab => \Div0|auto_generated|divider|divider|op_7~22_combout\,
	datac => \Div0|auto_generated|divider|divider|op_7~34_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[283]~142_combout\);

-- Location: LCCOMB_X21_Y3_N22
\Div0|auto_generated|divider|divider|StageOut[282]~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[282]~143_combout\ = (\Div0|auto_generated|divider|divider|op_7~34_combout\ & (\Div0|auto_generated|divider|divider|StageOut[264]~126_combout\)) # (!\Div0|auto_generated|divider|divider|op_7~34_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_7~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~34_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[264]~126_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[282]~143_combout\);

-- Location: LCCOMB_X21_Y3_N20
\Div0|auto_generated|divider|divider|StageOut[281]~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[281]~144_combout\ = (\Div0|auto_generated|divider|divider|op_7~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[263]~127_combout\))) # (!\Div0|auto_generated|divider|divider|op_7~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_7~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_7~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_7~34_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[263]~127_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[281]~144_combout\);

-- Location: LCCOMB_X21_Y4_N12
\Div0|auto_generated|divider|divider|StageOut[280]~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[280]~145_combout\ = (\Div0|auto_generated|divider|divider|op_7~34_combout\ & (\Div0|auto_generated|divider|divider|StageOut[262]~128_combout\)) # (!\Div0|auto_generated|divider|divider|op_7~34_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_7~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~34_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[262]~128_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~16_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[280]~145_combout\);

-- Location: LCCOMB_X21_Y4_N10
\Div0|auto_generated|divider|divider|StageOut[279]~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[279]~146_combout\ = (\Div0|auto_generated|divider|divider|op_7~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[261]~129_combout\))) # (!\Div0|auto_generated|divider|divider|op_7~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_7~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~34_combout\,
	datab => \Div0|auto_generated|divider|divider|op_7~14_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[261]~129_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[279]~146_combout\);

-- Location: LCCOMB_X21_Y4_N8
\Div0|auto_generated|divider|divider|StageOut[278]~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[278]~147_combout\ = (\Div0|auto_generated|divider|divider|op_7~34_combout\ & (\Div0|auto_generated|divider|divider|StageOut[260]~130_combout\)) # (!\Div0|auto_generated|divider|divider|op_7~34_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_7~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~34_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[260]~130_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[278]~147_combout\);

-- Location: LCCOMB_X22_Y4_N6
\Div0|auto_generated|divider|divider|StageOut[259]~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[259]~131_combout\ = (\Div0|auto_generated|divider|divider|op_6~32_combout\ & (\Div0|auto_generated|divider|divider|StageOut[241]~116_combout\)) # (!\Div0|auto_generated|divider|divider|op_6~32_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[241]~116_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~32_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[259]~131_combout\);

-- Location: LCCOMB_X21_Y4_N2
\Div0|auto_generated|divider|divider|StageOut[277]~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[277]~148_combout\ = (\Div0|auto_generated|divider|divider|op_7~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[259]~131_combout\))) # (!\Div0|auto_generated|divider|divider|op_7~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_7~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~10_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[259]~131_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~34_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[277]~148_combout\);

-- Location: LCCOMB_X21_Y4_N0
\Div0|auto_generated|divider|divider|StageOut[276]~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[276]~149_combout\ = (\Div0|auto_generated|divider|divider|op_7~34_combout\ & (\Div0|auto_generated|divider|divider|StageOut[258]~132_combout\)) # (!\Div0|auto_generated|divider|divider|op_7~34_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~34_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[258]~132_combout\,
	datad => \Div0|auto_generated|divider|divider|op_7~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[276]~149_combout\);

-- Location: LCCOMB_X20_Y4_N4
\Div0|auto_generated|divider|divider|StageOut[273]~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[273]~185_combout\ = (\Div0|auto_generated|divider|divider|op_7~34_combout\ & (((!\Div0|auto_generated|divider|divider|op_6~32_combout\ & \u0|tix_mem\(0))))) # 
-- (!\Div0|auto_generated|divider|divider|op_7~34_combout\ & (\Div0|auto_generated|divider|divider|op_7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~2_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~32_combout\,
	datac => \u0|tix_mem\(0),
	datad => \Div0|auto_generated|divider|divider|op_7~34_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[273]~185_combout\);

-- Location: LCCOMB_X20_Y4_N14
\Div0|auto_generated|divider|divider|op_8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~1_cout\ = CARRY(!\u0|tix_mem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(0),
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_8~1_cout\);

-- Location: LCCOMB_X20_Y4_N16
\Div0|auto_generated|divider|divider|op_8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[272]~152_combout\ & ((\u0|tix_mem\(1) & (!\Div0|auto_generated|divider|divider|op_8~1_cout\)) # (!\u0|tix_mem\(1) & 
-- (\Div0|auto_generated|divider|divider|op_8~1_cout\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[272]~152_combout\ & ((\u0|tix_mem\(1) & ((\Div0|auto_generated|divider|divider|op_8~1_cout\) # (GND))) # (!\u0|tix_mem\(1) & 
-- (!\Div0|auto_generated|divider|divider|op_8~1_cout\))))
-- \Div0|auto_generated|divider|divider|op_8~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[272]~152_combout\ & (\u0|tix_mem\(1) & !\Div0|auto_generated|divider|divider|op_8~1_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[272]~152_combout\ & ((\u0|tix_mem\(1)) # (!\Div0|auto_generated|divider|divider|op_8~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[272]~152_combout\,
	datab => \u0|tix_mem\(1),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_8~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X20_Y4_N18
\Div0|auto_generated|divider|divider|op_8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~4_combout\ = ((\u0|tix_mem\(2) $ (\Div0|auto_generated|divider|divider|StageOut[273]~185_combout\ $ (\Div0|auto_generated|divider|divider|op_8~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_8~5\ = CARRY((\u0|tix_mem\(2) & (\Div0|auto_generated|divider|divider|StageOut[273]~185_combout\ & !\Div0|auto_generated|divider|divider|op_8~3\)) # (!\u0|tix_mem\(2) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[273]~185_combout\) # (!\Div0|auto_generated|divider|divider|op_8~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(2),
	datab => \Div0|auto_generated|divider|divider|StageOut[273]~185_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~3\,
	combout => \Div0|auto_generated|divider|divider|op_8~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~5\);

-- Location: LCCOMB_X20_Y4_N20
\Div0|auto_generated|divider|divider|op_8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[274]~151_combout\ & ((\u0|tix_mem\(3) & (!\Div0|auto_generated|divider|divider|op_8~5\)) # (!\u0|tix_mem\(3) & 
-- (\Div0|auto_generated|divider|divider|op_8~5\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[274]~151_combout\ & ((\u0|tix_mem\(3) & ((\Div0|auto_generated|divider|divider|op_8~5\) # (GND))) # (!\u0|tix_mem\(3) & 
-- (!\Div0|auto_generated|divider|divider|op_8~5\))))
-- \Div0|auto_generated|divider|divider|op_8~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[274]~151_combout\ & (\u0|tix_mem\(3) & !\Div0|auto_generated|divider|divider|op_8~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[274]~151_combout\ 
-- & ((\u0|tix_mem\(3)) # (!\Div0|auto_generated|divider|divider|op_8~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[274]~151_combout\,
	datab => \u0|tix_mem\(3),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~5\,
	combout => \Div0|auto_generated|divider|divider|op_8~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~7\);

-- Location: LCCOMB_X20_Y4_N22
\Div0|auto_generated|divider|divider|op_8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[275]~150_combout\ $ (\u0|tix_mem\(4) $ (\Div0|auto_generated|divider|divider|op_8~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_8~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[275]~150_combout\ & ((!\Div0|auto_generated|divider|divider|op_8~7\) # (!\u0|tix_mem\(4)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[275]~150_combout\ & (!\u0|tix_mem\(4) & !\Div0|auto_generated|divider|divider|op_8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[275]~150_combout\,
	datab => \u0|tix_mem\(4),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~7\,
	combout => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~9\);

-- Location: LCCOMB_X20_Y4_N26
\Div0|auto_generated|divider|divider|op_8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~12_combout\ = ((\u0|tix_mem\(6) $ (\Div0|auto_generated|divider|divider|StageOut[277]~148_combout\ $ (\Div0|auto_generated|divider|divider|op_8~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_8~13\ = CARRY((\u0|tix_mem\(6) & (\Div0|auto_generated|divider|divider|StageOut[277]~148_combout\ & !\Div0|auto_generated|divider|divider|op_8~11\)) # (!\u0|tix_mem\(6) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[277]~148_combout\) # (!\Div0|auto_generated|divider|divider|op_8~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(6),
	datab => \Div0|auto_generated|divider|divider|StageOut[277]~148_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~11\,
	combout => \Div0|auto_generated|divider|divider|op_8~12_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~13\);

-- Location: LCCOMB_X20_Y4_N28
\Div0|auto_generated|divider|divider|op_8~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~14_combout\ = (\u0|tix_mem\(7) & ((\Div0|auto_generated|divider|divider|StageOut[278]~147_combout\ & (!\Div0|auto_generated|divider|divider|op_8~13\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[278]~147_combout\ & ((\Div0|auto_generated|divider|divider|op_8~13\) # (GND))))) # (!\u0|tix_mem\(7) & ((\Div0|auto_generated|divider|divider|StageOut[278]~147_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_8~13\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[278]~147_combout\ & (!\Div0|auto_generated|divider|divider|op_8~13\))))
-- \Div0|auto_generated|divider|divider|op_8~15\ = CARRY((\u0|tix_mem\(7) & ((!\Div0|auto_generated|divider|divider|op_8~13\) # (!\Div0|auto_generated|divider|divider|StageOut[278]~147_combout\))) # (!\u0|tix_mem\(7) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[278]~147_combout\ & !\Div0|auto_generated|divider|divider|op_8~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(7),
	datab => \Div0|auto_generated|divider|divider|StageOut[278]~147_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~13\,
	combout => \Div0|auto_generated|divider|divider|op_8~14_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~15\);

-- Location: LCCOMB_X20_Y4_N30
\Div0|auto_generated|divider|divider|op_8~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~16_combout\ = ((\u0|tix_mem\(8) $ (\Div0|auto_generated|divider|divider|StageOut[279]~146_combout\ $ (\Div0|auto_generated|divider|divider|op_8~15\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_8~17\ = CARRY((\u0|tix_mem\(8) & (\Div0|auto_generated|divider|divider|StageOut[279]~146_combout\ & !\Div0|auto_generated|divider|divider|op_8~15\)) # (!\u0|tix_mem\(8) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[279]~146_combout\) # (!\Div0|auto_generated|divider|divider|op_8~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(8),
	datab => \Div0|auto_generated|divider|divider|StageOut[279]~146_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~15\,
	combout => \Div0|auto_generated|divider|divider|op_8~16_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~17\);

-- Location: LCCOMB_X20_Y3_N0
\Div0|auto_generated|divider|divider|op_8~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~18_combout\ = (\u0|tix_mem\(9) & ((\Div0|auto_generated|divider|divider|StageOut[280]~145_combout\ & (!\Div0|auto_generated|divider|divider|op_8~17\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[280]~145_combout\ & ((\Div0|auto_generated|divider|divider|op_8~17\) # (GND))))) # (!\u0|tix_mem\(9) & ((\Div0|auto_generated|divider|divider|StageOut[280]~145_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_8~17\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[280]~145_combout\ & (!\Div0|auto_generated|divider|divider|op_8~17\))))
-- \Div0|auto_generated|divider|divider|op_8~19\ = CARRY((\u0|tix_mem\(9) & ((!\Div0|auto_generated|divider|divider|op_8~17\) # (!\Div0|auto_generated|divider|divider|StageOut[280]~145_combout\))) # (!\u0|tix_mem\(9) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[280]~145_combout\ & !\Div0|auto_generated|divider|divider|op_8~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(9),
	datab => \Div0|auto_generated|divider|divider|StageOut[280]~145_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~17\,
	combout => \Div0|auto_generated|divider|divider|op_8~18_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~19\);

-- Location: LCCOMB_X20_Y3_N2
\Div0|auto_generated|divider|divider|op_8~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~20_combout\ = ((\u0|tix_mem\(10) $ (\Div0|auto_generated|divider|divider|StageOut[281]~144_combout\ $ (\Div0|auto_generated|divider|divider|op_8~19\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_8~21\ = CARRY((\u0|tix_mem\(10) & (\Div0|auto_generated|divider|divider|StageOut[281]~144_combout\ & !\Div0|auto_generated|divider|divider|op_8~19\)) # (!\u0|tix_mem\(10) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[281]~144_combout\) # (!\Div0|auto_generated|divider|divider|op_8~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(10),
	datab => \Div0|auto_generated|divider|divider|StageOut[281]~144_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~19\,
	combout => \Div0|auto_generated|divider|divider|op_8~20_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~21\);

-- Location: LCCOMB_X20_Y3_N4
\Div0|auto_generated|divider|divider|op_8~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~22_combout\ = (\u0|tix_mem\(11) & ((\Div0|auto_generated|divider|divider|StageOut[282]~143_combout\ & (!\Div0|auto_generated|divider|divider|op_8~21\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[282]~143_combout\ & ((\Div0|auto_generated|divider|divider|op_8~21\) # (GND))))) # (!\u0|tix_mem\(11) & ((\Div0|auto_generated|divider|divider|StageOut[282]~143_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_8~21\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[282]~143_combout\ & (!\Div0|auto_generated|divider|divider|op_8~21\))))
-- \Div0|auto_generated|divider|divider|op_8~23\ = CARRY((\u0|tix_mem\(11) & ((!\Div0|auto_generated|divider|divider|op_8~21\) # (!\Div0|auto_generated|divider|divider|StageOut[282]~143_combout\))) # (!\u0|tix_mem\(11) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[282]~143_combout\ & !\Div0|auto_generated|divider|divider|op_8~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(11),
	datab => \Div0|auto_generated|divider|divider|StageOut[282]~143_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~21\,
	combout => \Div0|auto_generated|divider|divider|op_8~22_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~23\);

-- Location: LCCOMB_X20_Y3_N8
\Div0|auto_generated|divider|divider|op_8~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~26_combout\ = (\Div0|auto_generated|divider|divider|StageOut[284]~141_combout\ & ((\u0|tix_mem\(13) & (!\Div0|auto_generated|divider|divider|op_8~25\)) # (!\u0|tix_mem\(13) & 
-- (\Div0|auto_generated|divider|divider|op_8~25\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[284]~141_combout\ & ((\u0|tix_mem\(13) & ((\Div0|auto_generated|divider|divider|op_8~25\) # (GND))) # (!\u0|tix_mem\(13) & 
-- (!\Div0|auto_generated|divider|divider|op_8~25\))))
-- \Div0|auto_generated|divider|divider|op_8~27\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[284]~141_combout\ & (\u0|tix_mem\(13) & !\Div0|auto_generated|divider|divider|op_8~25\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[284]~141_combout\ & ((\u0|tix_mem\(13)) # (!\Div0|auto_generated|divider|divider|op_8~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[284]~141_combout\,
	datab => \u0|tix_mem\(13),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~25\,
	combout => \Div0|auto_generated|divider|divider|op_8~26_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~27\);

-- Location: LCCOMB_X18_Y3_N28
\Div0|auto_generated|divider|divider|StageOut[287]~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[287]~186_combout\ = (\Div0|auto_generated|divider|divider|op_7~34_combout\ & ((\Div0|auto_generated|divider|divider|op_6~32_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[251]~121_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|op_6~32_combout\ & (\Div0|auto_generated|divider|divider|op_6~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~34_combout\,
	datab => \Div0|auto_generated|divider|divider|op_6~32_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~28_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[251]~121_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[287]~186_combout\);

-- Location: LCCOMB_X22_Y3_N18
\Div0|auto_generated|divider|divider|StageOut[268]~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[268]~139_combout\ = (\Div0|auto_generated|divider|divider|op_6~32_combout\ & (\Div0|auto_generated|divider|divider|StageOut[250]~122_combout\)) # (!\Div0|auto_generated|divider|divider|op_6~32_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_6~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[250]~122_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~32_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~26_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[268]~139_combout\);

-- Location: LCCOMB_X20_Y3_N30
\Div0|auto_generated|divider|divider|StageOut[286]~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[286]~154_combout\ = (\Div0|auto_generated|divider|divider|op_7~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[268]~139_combout\))) # (!\Div0|auto_generated|divider|divider|op_7~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_7~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~34_combout\,
	datab => \Div0|auto_generated|divider|divider|op_7~28_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[268]~139_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[286]~154_combout\);

-- Location: LCCOMB_X20_Y3_N12
\Div0|auto_generated|divider|divider|op_8~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~30_combout\ = (\u0|tix_mem\(15) & ((\Div0|auto_generated|divider|divider|StageOut[286]~154_combout\ & (!\Div0|auto_generated|divider|divider|op_8~29\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[286]~154_combout\ & ((\Div0|auto_generated|divider|divider|op_8~29\) # (GND))))) # (!\u0|tix_mem\(15) & ((\Div0|auto_generated|divider|divider|StageOut[286]~154_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_8~29\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[286]~154_combout\ & (!\Div0|auto_generated|divider|divider|op_8~29\))))
-- \Div0|auto_generated|divider|divider|op_8~31\ = CARRY((\u0|tix_mem\(15) & ((!\Div0|auto_generated|divider|divider|op_8~29\) # (!\Div0|auto_generated|divider|divider|StageOut[286]~154_combout\))) # (!\u0|tix_mem\(15) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[286]~154_combout\ & !\Div0|auto_generated|divider|divider|op_8~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(15),
	datab => \Div0|auto_generated|divider|divider|StageOut[286]~154_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~29\,
	combout => \Div0|auto_generated|divider|divider|op_8~30_combout\,
	cout => \Div0|auto_generated|divider|divider|op_8~31\);

-- Location: LCCOMB_X20_Y3_N14
\Div0|auto_generated|divider|divider|op_8~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~33_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[287]~153_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[287]~186_combout\) # (!\Div0|auto_generated|divider|divider|op_8~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[287]~153_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[287]~186_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_8~31\,
	cout => \Div0|auto_generated|divider|divider|op_8~33_cout\);

-- Location: LCCOMB_X20_Y3_N16
\Div0|auto_generated|divider|divider|op_8~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_8~34_combout\ = !\Div0|auto_generated|divider|divider|op_8~33_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_8~33_cout\,
	combout => \Div0|auto_generated|divider|divider|op_8~34_combout\);

-- Location: LCCOMB_X20_Y3_N20
\Div0|auto_generated|divider|divider|StageOut[302]~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[302]~157_combout\ = (\Div0|auto_generated|divider|divider|op_8~34_combout\ & (\Div0|auto_generated|divider|divider|StageOut[284]~141_combout\)) # (!\Div0|auto_generated|divider|divider|op_8~34_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_8~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[284]~141_combout\,
	datab => \Div0|auto_generated|divider|divider|op_8~26_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~34_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[302]~157_combout\);

-- Location: LCCOMB_X20_Y3_N18
\Div0|auto_generated|divider|divider|StageOut[301]~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[301]~158_combout\ = (\Div0|auto_generated|divider|divider|op_8~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[283]~142_combout\))) # (!\Div0|auto_generated|divider|divider|op_8~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_8~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_8~24_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~34_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[283]~142_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[301]~158_combout\);

-- Location: LCCOMB_X20_Y3_N28
\Div0|auto_generated|divider|divider|StageOut[300]~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[300]~159_combout\ = (\Div0|auto_generated|divider|divider|op_8~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[282]~143_combout\))) # (!\Div0|auto_generated|divider|divider|op_8~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_8~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_8~22_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~34_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[282]~143_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[300]~159_combout\);

-- Location: LCCOMB_X20_Y3_N22
\Div0|auto_generated|divider|divider|StageOut[299]~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[299]~160_combout\ = (\Div0|auto_generated|divider|divider|op_8~34_combout\ & (\Div0|auto_generated|divider|divider|StageOut[281]~144_combout\)) # (!\Div0|auto_generated|divider|divider|op_8~34_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_8~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_8~34_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[281]~144_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~20_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[299]~160_combout\);

-- Location: LCCOMB_X20_Y3_N24
\Div0|auto_generated|divider|divider|StageOut[298]~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[298]~161_combout\ = (\Div0|auto_generated|divider|divider|op_8~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[280]~145_combout\))) # (!\Div0|auto_generated|divider|divider|op_8~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_8~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_8~18_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~34_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[280]~145_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[298]~161_combout\);

-- Location: LCCOMB_X20_Y4_N10
\Div0|auto_generated|divider|divider|StageOut[297]~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[297]~162_combout\ = (\Div0|auto_generated|divider|divider|op_8~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[279]~146_combout\))) # (!\Div0|auto_generated|divider|divider|op_8~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_8~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_8~16_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[279]~146_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~34_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[297]~162_combout\);

-- Location: LCCOMB_X19_Y4_N0
\Div0|auto_generated|divider|divider|StageOut[296]~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[296]~163_combout\ = (\Div0|auto_generated|divider|divider|op_8~34_combout\ & (\Div0|auto_generated|divider|divider|StageOut[278]~147_combout\)) # (!\Div0|auto_generated|divider|divider|op_8~34_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_8~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[278]~147_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~34_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[296]~163_combout\);

-- Location: LCCOMB_X20_Y4_N8
\Div0|auto_generated|divider|divider|StageOut[295]~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[295]~164_combout\ = (\Div0|auto_generated|divider|divider|op_8~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[277]~148_combout\))) # (!\Div0|auto_generated|divider|divider|op_8~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_8~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_8~12_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[277]~148_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~34_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[295]~164_combout\);

-- Location: LCCOMB_X20_Y4_N0
\Div0|auto_generated|divider|divider|StageOut[293]~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[293]~166_combout\ = (\Div0|auto_generated|divider|divider|op_8~34_combout\ & (\Div0|auto_generated|divider|divider|StageOut[275]~150_combout\)) # (!\Div0|auto_generated|divider|divider|op_8~34_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[275]~150_combout\,
	datab => \Div0|auto_generated|divider|divider|op_8~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_8~34_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[293]~166_combout\);

-- Location: LCCOMB_X19_Y4_N2
\Div0|auto_generated|divider|divider|StageOut[291]~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[291]~168_combout\ = (\Div0|auto_generated|divider|divider|op_8~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[273]~185_combout\))) # (!\Div0|auto_generated|divider|divider|op_8~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_8~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_8~4_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~34_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[273]~185_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[291]~168_combout\);

-- Location: LCCOMB_X19_Y4_N14
\Div0|auto_generated|divider|divider|op_9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~1_cout\ = CARRY(!\u0|tix_mem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|tix_mem\(0),
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_9~1_cout\);

-- Location: LCCOMB_X19_Y4_N18
\Div0|auto_generated|divider|divider|op_9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[290]~188_combout\ $ (\u0|tix_mem\(2) $ (\Div0|auto_generated|divider|divider|op_9~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_9~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[290]~188_combout\ & ((!\Div0|auto_generated|divider|divider|op_9~3\) # (!\u0|tix_mem\(2)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[290]~188_combout\ & (!\u0|tix_mem\(2) & !\Div0|auto_generated|divider|divider|op_9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[290]~188_combout\,
	datab => \u0|tix_mem\(2),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~3\,
	combout => \Div0|auto_generated|divider|divider|op_9~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~5\);

-- Location: LCCOMB_X19_Y4_N20
\Div0|auto_generated|divider|divider|op_9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~6_combout\ = (\u0|tix_mem\(3) & ((\Div0|auto_generated|divider|divider|StageOut[291]~168_combout\ & (!\Div0|auto_generated|divider|divider|op_9~5\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[291]~168_combout\ & ((\Div0|auto_generated|divider|divider|op_9~5\) # (GND))))) # (!\u0|tix_mem\(3) & ((\Div0|auto_generated|divider|divider|StageOut[291]~168_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~5\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[291]~168_combout\ & (!\Div0|auto_generated|divider|divider|op_9~5\))))
-- \Div0|auto_generated|divider|divider|op_9~7\ = CARRY((\u0|tix_mem\(3) & ((!\Div0|auto_generated|divider|divider|op_9~5\) # (!\Div0|auto_generated|divider|divider|StageOut[291]~168_combout\))) # (!\u0|tix_mem\(3) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[291]~168_combout\ & !\Div0|auto_generated|divider|divider|op_9~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(3),
	datab => \Div0|auto_generated|divider|divider|StageOut[291]~168_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~5\,
	combout => \Div0|auto_generated|divider|divider|op_9~6_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~7\);

-- Location: LCCOMB_X19_Y4_N22
\Div0|auto_generated|divider|divider|op_9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[292]~167_combout\ $ (\u0|tix_mem\(4) $ (\Div0|auto_generated|divider|divider|op_9~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|op_9~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[292]~167_combout\ & ((!\Div0|auto_generated|divider|divider|op_9~7\) # (!\u0|tix_mem\(4)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[292]~167_combout\ & (!\u0|tix_mem\(4) & !\Div0|auto_generated|divider|divider|op_9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[292]~167_combout\,
	datab => \u0|tix_mem\(4),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~7\,
	combout => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~9\);

-- Location: LCCOMB_X19_Y3_N4
\Div0|auto_generated|divider|divider|op_9~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~22_combout\ = (\u0|tix_mem\(11) & ((\Div0|auto_generated|divider|divider|StageOut[299]~160_combout\ & (!\Div0|auto_generated|divider|divider|op_9~21\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[299]~160_combout\ & ((\Div0|auto_generated|divider|divider|op_9~21\) # (GND))))) # (!\u0|tix_mem\(11) & ((\Div0|auto_generated|divider|divider|StageOut[299]~160_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~21\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[299]~160_combout\ & (!\Div0|auto_generated|divider|divider|op_9~21\))))
-- \Div0|auto_generated|divider|divider|op_9~23\ = CARRY((\u0|tix_mem\(11) & ((!\Div0|auto_generated|divider|divider|op_9~21\) # (!\Div0|auto_generated|divider|divider|StageOut[299]~160_combout\))) # (!\u0|tix_mem\(11) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[299]~160_combout\ & !\Div0|auto_generated|divider|divider|op_9~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(11),
	datab => \Div0|auto_generated|divider|divider|StageOut[299]~160_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~21\,
	combout => \Div0|auto_generated|divider|divider|op_9~22_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~23\);

-- Location: LCCOMB_X19_Y3_N8
\Div0|auto_generated|divider|divider|op_9~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~26_combout\ = (\u0|tix_mem\(13) & ((\Div0|auto_generated|divider|divider|StageOut[301]~158_combout\ & (!\Div0|auto_generated|divider|divider|op_9~25\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[301]~158_combout\ & ((\Div0|auto_generated|divider|divider|op_9~25\) # (GND))))) # (!\u0|tix_mem\(13) & ((\Div0|auto_generated|divider|divider|StageOut[301]~158_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~25\ & VCC)) # (!\Div0|auto_generated|divider|divider|StageOut[301]~158_combout\ & (!\Div0|auto_generated|divider|divider|op_9~25\))))
-- \Div0|auto_generated|divider|divider|op_9~27\ = CARRY((\u0|tix_mem\(13) & ((!\Div0|auto_generated|divider|divider|op_9~25\) # (!\Div0|auto_generated|divider|divider|StageOut[301]~158_combout\))) # (!\u0|tix_mem\(13) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[301]~158_combout\ & !\Div0|auto_generated|divider|divider|op_9~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(13),
	datab => \Div0|auto_generated|divider|divider|StageOut[301]~158_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~25\,
	combout => \Div0|auto_generated|divider|divider|op_9~26_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~27\);

-- Location: LCCOMB_X19_Y3_N12
\Div0|auto_generated|divider|divider|op_9~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~30_combout\ = (\Div0|auto_generated|divider|divider|StageOut[303]~155_combout\ & ((\u0|tix_mem\(15) & (!\Div0|auto_generated|divider|divider|op_9~29\)) # (!\u0|tix_mem\(15) & 
-- (\Div0|auto_generated|divider|divider|op_9~29\ & VCC)))) # (!\Div0|auto_generated|divider|divider|StageOut[303]~155_combout\ & ((\u0|tix_mem\(15) & ((\Div0|auto_generated|divider|divider|op_9~29\) # (GND))) # (!\u0|tix_mem\(15) & 
-- (!\Div0|auto_generated|divider|divider|op_9~29\))))
-- \Div0|auto_generated|divider|divider|op_9~31\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[303]~155_combout\ & (\u0|tix_mem\(15) & !\Div0|auto_generated|divider|divider|op_9~29\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[303]~155_combout\ & ((\u0|tix_mem\(15)) # (!\Div0|auto_generated|divider|divider|op_9~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[303]~155_combout\,
	datab => \u0|tix_mem\(15),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~29\,
	combout => \Div0|auto_generated|divider|divider|op_9~30_combout\,
	cout => \Div0|auto_generated|divider|divider|op_9~31\);

-- Location: LCCOMB_X18_Y3_N18
\Div0|auto_generated|divider|divider|StageOut[321]~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[321]~170_combout\ = (!\Div0|auto_generated|divider|divider|op_9~34_combout\ & \Div0|auto_generated|divider|divider|op_9~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_9~34_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~30_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[321]~170_combout\);

-- Location: LCCOMB_X19_Y3_N18
\Div0|auto_generated|divider|divider|StageOut[304]~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[304]~156_combout\ = (\Div0|auto_generated|divider|divider|op_8~30_combout\ & !\Div0|auto_generated|divider|divider|op_8~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_8~30_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~34_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[304]~156_combout\);

-- Location: LCCOMB_X19_Y3_N14
\Div0|auto_generated|divider|divider|op_9~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~33_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[304]~187_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[304]~156_combout\) # (!\Div0|auto_generated|divider|divider|op_9~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[304]~187_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[304]~156_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_9~31\,
	cout => \Div0|auto_generated|divider|divider|op_9~33_cout\);

-- Location: LCCOMB_X19_Y3_N16
\Div0|auto_generated|divider|divider|op_9~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_9~34_combout\ = !\Div0|auto_generated|divider|divider|op_9~33_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_9~33_cout\,
	combout => \Div0|auto_generated|divider|divider|op_9~34_combout\);

-- Location: LCCOMB_X19_Y3_N22
\Div0|auto_generated|divider|divider|StageOut[319]~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[319]~172_combout\ = (\Div0|auto_generated|divider|divider|op_9~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[301]~158_combout\))) # (!\Div0|auto_generated|divider|divider|op_9~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_9~26_combout\,
	datac => \Div0|auto_generated|divider|divider|op_9~34_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[301]~158_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[319]~172_combout\);

-- Location: LCCOMB_X19_Y3_N28
\Div0|auto_generated|divider|divider|StageOut[318]~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[318]~173_combout\ = (\Div0|auto_generated|divider|divider|op_9~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[300]~159_combout\))) # (!\Div0|auto_generated|divider|divider|op_9~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_9~24_combout\,
	datac => \Div0|auto_generated|divider|divider|op_9~34_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[300]~159_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[318]~173_combout\);

-- Location: LCCOMB_X19_Y3_N30
\Div0|auto_generated|divider|divider|StageOut[317]~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[317]~174_combout\ = (\Div0|auto_generated|divider|divider|op_9~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[299]~160_combout\))) # (!\Div0|auto_generated|divider|divider|op_9~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_9~34_combout\,
	datab => \Div0|auto_generated|divider|divider|op_9~22_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[299]~160_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[317]~174_combout\);

-- Location: LCCOMB_X22_Y4_N4
\Div0|auto_generated|divider|divider|StageOut[256]~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[256]~134_combout\ = (\Div0|auto_generated|divider|divider|op_6~32_combout\ & (\Div0|auto_generated|divider|divider|StageOut[238]~119_combout\)) # (!\Div0|auto_generated|divider|divider|op_6~32_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_6~32_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[238]~119_combout\,
	datad => \Div0|auto_generated|divider|divider|op_6~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[256]~134_combout\);

-- Location: LCCOMB_X21_Y4_N4
\Div0|auto_generated|divider|divider|StageOut[274]~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[274]~151_combout\ = (\Div0|auto_generated|divider|divider|op_7~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[256]~134_combout\))) # (!\Div0|auto_generated|divider|divider|op_7~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~34_combout\,
	datab => \Div0|auto_generated|divider|divider|op_7~4_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[256]~134_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[274]~151_combout\);

-- Location: LCCOMB_X20_Y4_N2
\Div0|auto_generated|divider|divider|StageOut[292]~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[292]~167_combout\ = (\Div0|auto_generated|divider|divider|op_8~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[274]~151_combout\))) # (!\Div0|auto_generated|divider|divider|op_8~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_8~34_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~6_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[274]~151_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[292]~167_combout\);

-- Location: LCCOMB_X19_Y4_N10
\Div0|auto_generated|divider|divider|StageOut[310]~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[310]~181_combout\ = (\Div0|auto_generated|divider|divider|op_9~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[292]~167_combout\))) # (!\Div0|auto_generated|divider|divider|op_9~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|op_9~8_combout\,
	datac => \Div0|auto_generated|divider|divider|op_9~34_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[292]~167_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[310]~181_combout\);

-- Location: LCCOMB_X18_Y4_N4
\Div0|auto_generated|divider|divider|StageOut[309]~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[309]~182_combout\ = (\Div0|auto_generated|divider|divider|op_9~34_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[291]~168_combout\))) # (!\Div0|auto_generated|divider|divider|op_9~34_combout\ & 
-- (\Div0|auto_generated|divider|divider|op_9~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_9~34_combout\,
	datab => \Div0|auto_generated|divider|divider|op_9~6_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[291]~168_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[309]~182_combout\);

-- Location: LCCOMB_X19_Y4_N8
\Div0|auto_generated|divider|divider|StageOut[290]~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[290]~188_combout\ = (\Div0|auto_generated|divider|divider|op_8~34_combout\ & (!\Div0|auto_generated|divider|divider|op_7~34_combout\ & ((\u0|tix_mem\(0))))) # 
-- (!\Div0|auto_generated|divider|divider|op_8~34_combout\ & (((\Div0|auto_generated|divider|divider|op_8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_7~34_combout\,
	datab => \Div0|auto_generated|divider|divider|op_8~34_combout\,
	datac => \Div0|auto_generated|divider|divider|op_8~2_combout\,
	datad => \u0|tix_mem\(0),
	combout => \Div0|auto_generated|divider|divider|StageOut[290]~188_combout\);

-- Location: LCCOMB_X18_Y4_N2
\Div0|auto_generated|divider|divider|StageOut[308]~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[308]~183_combout\ = (\Div0|auto_generated|divider|divider|op_9~34_combout\ & (\Div0|auto_generated|divider|divider|StageOut[290]~188_combout\)) # (!\Div0|auto_generated|divider|divider|op_9~34_combout\ & 
-- ((\Div0|auto_generated|divider|divider|op_9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_9~34_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[290]~188_combout\,
	datad => \Div0|auto_generated|divider|divider|op_9~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[308]~183_combout\);

-- Location: LCCOMB_X18_Y4_N0
\Div0|auto_generated|divider|divider|StageOut[306]~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[306]~184_combout\ = (\u0|tix_mem\(0) & !\Div0|auto_generated|divider|divider|op_9~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(0),
	datad => \Div0|auto_generated|divider|divider|op_9~34_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[306]~184_combout\);

-- Location: LCCOMB_X18_Y4_N14
\Div0|auto_generated|divider|divider|op_10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~1_cout\ = CARRY(!\u0|tix_mem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(0),
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_10~1_cout\);

-- Location: LCCOMB_X18_Y4_N16
\Div0|auto_generated|divider|divider|op_10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~3_cout\ = CARRY((\u0|tix_mem\(1) & ((!\Div0|auto_generated|divider|divider|op_10~1_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[306]~184_combout\))) # (!\u0|tix_mem\(1) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[306]~184_combout\ & !\Div0|auto_generated|divider|divider|op_10~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(1),
	datab => \Div0|auto_generated|divider|divider|StageOut[306]~184_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~1_cout\,
	cout => \Div0|auto_generated|divider|divider|op_10~3_cout\);

-- Location: LCCOMB_X18_Y4_N18
\Div0|auto_generated|divider|divider|op_10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[307]~190_combout\ & ((!\Div0|auto_generated|divider|divider|op_10~3_cout\) # (!\u0|tix_mem\(2)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[307]~190_combout\ & (!\u0|tix_mem\(2) & !\Div0|auto_generated|divider|divider|op_10~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[307]~190_combout\,
	datab => \u0|tix_mem\(2),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~3_cout\,
	cout => \Div0|auto_generated|divider|divider|op_10~5_cout\);

-- Location: LCCOMB_X18_Y4_N20
\Div0|auto_generated|divider|divider|op_10~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~7_cout\ = CARRY((\u0|tix_mem\(3) & ((!\Div0|auto_generated|divider|divider|op_10~5_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[308]~183_combout\))) # (!\u0|tix_mem\(3) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[308]~183_combout\ & !\Div0|auto_generated|divider|divider|op_10~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(3),
	datab => \Div0|auto_generated|divider|divider|StageOut[308]~183_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~5_cout\,
	cout => \Div0|auto_generated|divider|divider|op_10~7_cout\);

-- Location: LCCOMB_X18_Y4_N22
\Div0|auto_generated|divider|divider|op_10~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~9_cout\ = CARRY((\u0|tix_mem\(4) & (\Div0|auto_generated|divider|divider|StageOut[309]~182_combout\ & !\Div0|auto_generated|divider|divider|op_10~7_cout\)) # (!\u0|tix_mem\(4) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[309]~182_combout\) # (!\Div0|auto_generated|divider|divider|op_10~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(4),
	datab => \Div0|auto_generated|divider|divider|StageOut[309]~182_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~7_cout\,
	cout => \Div0|auto_generated|divider|divider|op_10~9_cout\);

-- Location: LCCOMB_X18_Y4_N24
\Div0|auto_generated|divider|divider|op_10~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~11_cout\ = CARRY((\u0|tix_mem\(5) & ((!\Div0|auto_generated|divider|divider|op_10~9_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[310]~181_combout\))) # (!\u0|tix_mem\(5) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[310]~181_combout\ & !\Div0|auto_generated|divider|divider|op_10~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(5),
	datab => \Div0|auto_generated|divider|divider|StageOut[310]~181_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~9_cout\,
	cout => \Div0|auto_generated|divider|divider|op_10~11_cout\);

-- Location: LCCOMB_X18_Y4_N26
\Div0|auto_generated|divider|divider|op_10~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~13_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[311]~180_combout\ & ((!\Div0|auto_generated|divider|divider|op_10~11_cout\) # (!\u0|tix_mem\(6)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[311]~180_combout\ & (!\u0|tix_mem\(6) & !\Div0|auto_generated|divider|divider|op_10~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[311]~180_combout\,
	datab => \u0|tix_mem\(6),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~11_cout\,
	cout => \Div0|auto_generated|divider|divider|op_10~13_cout\);

-- Location: LCCOMB_X18_Y4_N28
\Div0|auto_generated|divider|divider|op_10~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~15_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[312]~179_combout\ & (\u0|tix_mem\(7) & !\Div0|auto_generated|divider|divider|op_10~13_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[312]~179_combout\ & ((\u0|tix_mem\(7)) # (!\Div0|auto_generated|divider|divider|op_10~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[312]~179_combout\,
	datab => \u0|tix_mem\(7),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~13_cout\,
	cout => \Div0|auto_generated|divider|divider|op_10~15_cout\);

-- Location: LCCOMB_X18_Y4_N30
\Div0|auto_generated|divider|divider|op_10~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~17_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[313]~178_combout\ & ((!\Div0|auto_generated|divider|divider|op_10~15_cout\) # (!\u0|tix_mem\(8)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[313]~178_combout\ & (!\u0|tix_mem\(8) & !\Div0|auto_generated|divider|divider|op_10~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[313]~178_combout\,
	datab => \u0|tix_mem\(8),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~15_cout\,
	cout => \Div0|auto_generated|divider|divider|op_10~17_cout\);

-- Location: LCCOMB_X18_Y3_N0
\Div0|auto_generated|divider|divider|op_10~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~19_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[314]~177_combout\ & (\u0|tix_mem\(9) & !\Div0|auto_generated|divider|divider|op_10~17_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[314]~177_combout\ & ((\u0|tix_mem\(9)) # (!\Div0|auto_generated|divider|divider|op_10~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[314]~177_combout\,
	datab => \u0|tix_mem\(9),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~17_cout\,
	cout => \Div0|auto_generated|divider|divider|op_10~19_cout\);

-- Location: LCCOMB_X18_Y3_N2
\Div0|auto_generated|divider|divider|op_10~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~21_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[315]~176_combout\ & ((!\Div0|auto_generated|divider|divider|op_10~19_cout\) # (!\u0|tix_mem\(10)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[315]~176_combout\ & (!\u0|tix_mem\(10) & !\Div0|auto_generated|divider|divider|op_10~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[315]~176_combout\,
	datab => \u0|tix_mem\(10),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~19_cout\,
	cout => \Div0|auto_generated|divider|divider|op_10~21_cout\);

-- Location: LCCOMB_X18_Y3_N4
\Div0|auto_generated|divider|divider|op_10~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~23_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[316]~175_combout\ & (\u0|tix_mem\(11) & !\Div0|auto_generated|divider|divider|op_10~21_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[316]~175_combout\ & ((\u0|tix_mem\(11)) # (!\Div0|auto_generated|divider|divider|op_10~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[316]~175_combout\,
	datab => \u0|tix_mem\(11),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~21_cout\,
	cout => \Div0|auto_generated|divider|divider|op_10~23_cout\);

-- Location: LCCOMB_X18_Y3_N6
\Div0|auto_generated|divider|divider|op_10~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~25_cout\ = CARRY((\u0|tix_mem\(12) & (\Div0|auto_generated|divider|divider|StageOut[317]~174_combout\ & !\Div0|auto_generated|divider|divider|op_10~23_cout\)) # (!\u0|tix_mem\(12) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[317]~174_combout\) # (!\Div0|auto_generated|divider|divider|op_10~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(12),
	datab => \Div0|auto_generated|divider|divider|StageOut[317]~174_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~23_cout\,
	cout => \Div0|auto_generated|divider|divider|op_10~25_cout\);

-- Location: LCCOMB_X18_Y3_N8
\Div0|auto_generated|divider|divider|op_10~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~27_cout\ = CARRY((\u0|tix_mem\(13) & ((!\Div0|auto_generated|divider|divider|op_10~25_cout\) # (!\Div0|auto_generated|divider|divider|StageOut[318]~173_combout\))) # (!\u0|tix_mem\(13) & 
-- (!\Div0|auto_generated|divider|divider|StageOut[318]~173_combout\ & !\Div0|auto_generated|divider|divider|op_10~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(13),
	datab => \Div0|auto_generated|divider|divider|StageOut[318]~173_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~25_cout\,
	cout => \Div0|auto_generated|divider|divider|op_10~27_cout\);

-- Location: LCCOMB_X18_Y3_N10
\Div0|auto_generated|divider|divider|op_10~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~29_cout\ = CARRY((\u0|tix_mem\(14) & (\Div0|auto_generated|divider|divider|StageOut[319]~172_combout\ & !\Div0|auto_generated|divider|divider|op_10~27_cout\)) # (!\u0|tix_mem\(14) & 
-- ((\Div0|auto_generated|divider|divider|StageOut[319]~172_combout\) # (!\Div0|auto_generated|divider|divider|op_10~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(14),
	datab => \Div0|auto_generated|divider|divider|StageOut[319]~172_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~27_cout\,
	cout => \Div0|auto_generated|divider|divider|op_10~29_cout\);

-- Location: LCCOMB_X18_Y3_N12
\Div0|auto_generated|divider|divider|op_10~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~31_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[320]~171_combout\ & (\u0|tix_mem\(15) & !\Div0|auto_generated|divider|divider|op_10~29_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[320]~171_combout\ & ((\u0|tix_mem\(15)) # (!\Div0|auto_generated|divider|divider|op_10~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[320]~171_combout\,
	datab => \u0|tix_mem\(15),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~29_cout\,
	cout => \Div0|auto_generated|divider|divider|op_10~31_cout\);

-- Location: LCCOMB_X18_Y3_N14
\Div0|auto_generated|divider|divider|op_10~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~33_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[321]~189_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[321]~170_combout\) # (!\Div0|auto_generated|divider|divider|op_10~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[321]~189_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[321]~170_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_10~31_cout\,
	cout => \Div0|auto_generated|divider|divider|op_10~33_cout\);

-- Location: LCCOMB_X18_Y3_N16
\Div0|auto_generated|divider|divider|op_10~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_10~34_combout\ = !\Div0|auto_generated|divider|divider|op_10~33_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_10~33_cout\,
	combout => \Div0|auto_generated|divider|divider|op_10~34_combout\);

-- Location: LCCOMB_X23_Y2_N30
\process_0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~17_combout\ = (\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\ & !\u0|tix_mem\(11))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_10_result_int[11]~20_combout\,
	datab => \u0|tix_mem\(11),
	datac => \Div0|auto_generated|divider|divider|add_sub_11_result_int[12]~22_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	combout => \process_0~17_combout\);

-- Location: LCCOMB_X27_Y4_N0
\process_0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~16_combout\ = (\Div0|auto_generated|divider|divider|selnose[168]~10_combout\ & (((!\u0|tix_mem\(8) & !\Div0|auto_generated|divider|divider|op_16~16_combout\)) # (!\Div0|auto_generated|divider|divider|op_17~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose[168]~10_combout\,
	datab => \u0|tix_mem\(8),
	datac => \Div0|auto_generated|divider|divider|op_17~18_combout\,
	datad => \Div0|auto_generated|divider|divider|op_16~16_combout\,
	combout => \process_0~16_combout\);

-- Location: LCCOMB_X25_Y5_N22
\process_0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (\process_0~16_combout\) # ((\Div0|auto_generated|divider|divider|selnose[126]~11_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|selnose[126]~11_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \process_0~16_combout\,
	combout => \process_0~9_combout\);

-- Location: LCCOMB_X23_Y4_N30
\process_0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~18_combout\ = (!\u0|tix_mem\(11) & (\Div0|auto_generated|divider|divider|selnose[231]~4_combout\ & (!\u0|tix_mem\(10) & !\Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(11),
	datab => \Div0|auto_generated|divider|divider|selnose[231]~4_combout\,
	datac => \u0|tix_mem\(10),
	datad => \Div0|auto_generated|divider|divider|add_sub_9_result_int[10]~18_combout\,
	combout => \process_0~18_combout\);

-- Location: LCCOMB_X22_Y2_N28
\process_0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~12_combout\ = (\process_0~11_combout\) # ((\process_0~17_combout\) # ((\process_0~9_combout\) # (\process_0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~11_combout\,
	datab => \process_0~17_combout\,
	datac => \process_0~9_combout\,
	datad => \process_0~18_combout\,
	combout => \process_0~12_combout\);

-- Location: LCCOMB_X21_Y2_N2
\process_0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~13_combout\ = (\process_0~12_combout\) # ((\process_0~8_combout\ & (\Div0|auto_generated|divider|divider|op_10~34_combout\ & \Div0|auto_generated|divider|divider|op_9~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~8_combout\,
	datab => \Div0|auto_generated|divider|divider|op_10~34_combout\,
	datac => \Div0|auto_generated|divider|divider|op_9~34_combout\,
	datad => \process_0~12_combout\,
	combout => \process_0~13_combout\);

-- Location: LCCOMB_X21_Y2_N22
\rpm_mem[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rpm_mem[4]~1_combout\ = (\process_0~15_combout\) # ((\process_0~13_combout\) # (\Div0|auto_generated|divider|divider|op_6~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~15_combout\,
	datab => \process_0~13_combout\,
	datac => \Div0|auto_generated|divider|divider|op_6~32_combout\,
	combout => \rpm_mem[4]~1_combout\);

-- Location: LCCOMB_X24_Y2_N22
\process_0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~15_combout\ = (\Div0|auto_generated|divider|divider|selnose[105]~6_combout\ & (((!\u0|tix_mem\(5) & !\Div0|auto_generated|divider|divider|op_13~10_combout\)) # (!\Div0|auto_generated|divider|divider|op_14~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(5),
	datab => \Div0|auto_generated|divider|divider|op_13~10_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose[105]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_14~12_combout\,
	combout => \process_0~15_combout\);

-- Location: LCCOMB_X22_Y1_N2
\Div0|auto_generated|divider|divider|selnose[252]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(252) = (\u0|tix_mem\(15)) # ((\Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\) # ((\u0|tix_mem\(13)) # (\u0|tix_mem\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(15),
	datab => \Div0|auto_generated|divider|divider|add_sub_12_result_int[13]~24_combout\,
	datac => \u0|tix_mem\(13),
	datad => \u0|tix_mem\(14),
	combout => \Div0|auto_generated|divider|divider|selnose\(252));

-- Location: LCCOMB_X21_Y2_N4
\u2|U0bcd[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U0bcd[2]~4_combout\ = ((\process_0~13_combout\) # ((\process_0~15_combout\) # (\Div0|auto_generated|divider|divider|selnose\(252)))) # (!\u2|U0bcd[2]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U0bcd[2]~5_combout\,
	datab => \process_0~13_combout\,
	datac => \process_0~15_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose\(252),
	combout => \u2|U0bcd[2]~4_combout\);

-- Location: LCCOMB_X21_Y2_N28
\process_0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~14_combout\ = (\process_0~13_combout\) # (\process_0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~13_combout\,
	datac => \process_0~15_combout\,
	combout => \process_0~14_combout\);

-- Location: LCCOMB_X21_Y1_N24
\Div0|auto_generated|divider|divider|selnose[273]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(273) = (\u0|tix_mem\(14)) # ((\Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\) # (\u0|tix_mem\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|tix_mem\(14),
	datac => \Div0|auto_generated|divider|divider|add_sub_13_result_int[14]~26_combout\,
	datad => \u0|tix_mem\(15),
	combout => \Div0|auto_generated|divider|divider|selnose\(273));

-- Location: LCCOMB_X22_Y1_N0
\Div0|auto_generated|divider|divider|selnose[294]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|selnose\(294) = (\u0|tix_mem\(15)) # (\Div0|auto_generated|divider|divider|op_5~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(15),
	datac => \Div0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \Div0|auto_generated|divider|divider|selnose\(294));

-- Location: LCCOMB_X22_Y2_N2
\u2|U0bcd[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U0bcd[1]~2_combout\ = (!\process_0~14_combout\ & (!\Div0|auto_generated|divider|divider|selnose\(273) & ((\Div0|auto_generated|divider|divider|selnose\(252)) # (!\Div0|auto_generated|divider|divider|selnose\(294)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose\(252),
	datab => \process_0~14_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose\(273),
	datad => \Div0|auto_generated|divider|divider|selnose\(294),
	combout => \u2|U0bcd[1]~2_combout\);

-- Location: LCCOMB_X22_Y2_N20
\u2|is_gt_4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~0_combout\ = ((\u2|U0bcd[1]~2_combout\ & ((\u2|U0bcd[0]~3_combout\) # (!\rpm_mem[4]~1_combout\)))) # (!\u2|U0bcd[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U0bcd[0]~3_combout\,
	datab => \rpm_mem[4]~1_combout\,
	datac => \u2|U0bcd[2]~4_combout\,
	datad => \u2|U0bcd[1]~2_combout\,
	combout => \u2|is_gt_4~0_combout\);

-- Location: LCCOMB_X21_Y2_N18
\u2|is_gt_4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~1_combout\ = (\process_0~14_combout\ & (\rpm_mem[4]~1_combout\ $ (((!\u2|is_gt_4~0_combout\))))) # (!\process_0~14_combout\ & ((\rpm_mem[4]~1_combout\ $ (!\u2|is_gt_4~0_combout\)) # (!\Div0|auto_generated|divider|divider|op_7~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~14_combout\,
	datab => \rpm_mem[4]~1_combout\,
	datac => \Div0|auto_generated|divider|divider|op_7~34_combout\,
	datad => \u2|is_gt_4~0_combout\,
	combout => \u2|is_gt_4~1_combout\);

-- Location: LCCOMB_X22_Y2_N18
\u2|U1bcd[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U1bcd[1]~0_combout\ = (!\process_0~14_combout\ & ((\Div0|auto_generated|divider|divider|selnose\(252) & ((!\Div0|auto_generated|divider|divider|selnose\(294)))) # (!\Div0|auto_generated|divider|divider|selnose\(252) & 
-- (!\Div0|auto_generated|divider|divider|selnose\(273) & \Div0|auto_generated|divider|divider|selnose\(294)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|selnose\(252),
	datab => \process_0~14_combout\,
	datac => \Div0|auto_generated|divider|divider|selnose\(273),
	datad => \Div0|auto_generated|divider|divider|selnose\(294),
	combout => \u2|U1bcd[1]~0_combout\);

-- Location: LCCOMB_X22_Y2_N16
\u2|U1bcd[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U1bcd[1]~1_combout\ = (\u2|is_gt_4~0_combout\ & (\u2|U0bcd[0]~3_combout\ $ ((\rpm_mem[4]~1_combout\)))) # (!\u2|is_gt_4~0_combout\ & (((\u2|U1bcd[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U0bcd[0]~3_combout\,
	datab => \rpm_mem[4]~1_combout\,
	datac => \u2|is_gt_4~0_combout\,
	datad => \u2|U1bcd[1]~0_combout\,
	combout => \u2|U1bcd[1]~1_combout\);

-- Location: LCCOMB_X22_Y2_N30
\u2|U1bcd[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U1bcd[2]~2_combout\ = (\u2|U0bcd[1]~2_combout\ & (!\u2|U0bcd[0]~3_combout\ & (\rpm_mem[4]~1_combout\))) # (!\u2|U0bcd[1]~2_combout\ & (!\u2|U0bcd[2]~4_combout\ & ((\u2|U0bcd[0]~3_combout\) # (!\rpm_mem[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U0bcd[0]~3_combout\,
	datab => \rpm_mem[4]~1_combout\,
	datac => \u2|U0bcd[2]~4_combout\,
	datad => \u2|U0bcd[1]~2_combout\,
	combout => \u2|U1bcd[2]~2_combout\);

-- Location: LCCOMB_X21_Y2_N10
\u2|U2bcd[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U2bcd[2]~2_combout\ = (\u2|is_gt_4~1_combout\ & (!\u2|U1bcd[1]~1_combout\ & \u2|U1bcd[2]~2_combout\)) # (!\u2|is_gt_4~1_combout\ & (\u2|U1bcd[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|is_gt_4~1_combout\,
	datac => \u2|U1bcd[1]~1_combout\,
	datad => \u2|U1bcd[2]~2_combout\,
	combout => \u2|U2bcd[2]~2_combout\);

-- Location: LCCOMB_X21_Y2_N8
\rpm_mem[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rpm_mem[3]~2_combout\ = (\process_0~15_combout\) # ((\process_0~13_combout\) # (\Div0|auto_generated|divider|divider|op_7~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~15_combout\,
	datab => \process_0~13_combout\,
	datac => \Div0|auto_generated|divider|divider|op_7~34_combout\,
	combout => \rpm_mem[3]~2_combout\);

-- Location: LCCOMB_X22_Y2_N24
\u2|U1bcd[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U1bcd[0]~3_combout\ = (\rpm_mem[4]~1_combout\ & (\u2|U0bcd[2]~4_combout\ & ((!\u2|U0bcd[1]~2_combout\) # (!\u2|U0bcd[0]~3_combout\)))) # (!\rpm_mem[4]~1_combout\ & (((\u2|U0bcd[1]~2_combout\) # (!\u2|U0bcd[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U0bcd[0]~3_combout\,
	datab => \rpm_mem[4]~1_combout\,
	datac => \u2|U0bcd[2]~4_combout\,
	datad => \u2|U0bcd[1]~2_combout\,
	combout => \u2|U1bcd[0]~3_combout\);

-- Location: LCCOMB_X21_Y2_N16
\u2|U2bcd[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U2bcd[1]~1_combout\ = (\u2|U1bcd[2]~2_combout\ & ((\rpm_mem[3]~2_combout\ $ (\u2|U1bcd[0]~3_combout\)))) # (!\u2|U1bcd[2]~2_combout\ & ((\u2|U1bcd[0]~3_combout\) # ((\u2|U1bcd[1]~1_combout\ & \rpm_mem[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U1bcd[1]~1_combout\,
	datab => \u2|U1bcd[2]~2_combout\,
	datac => \rpm_mem[3]~2_combout\,
	datad => \u2|U1bcd[0]~3_combout\,
	combout => \u2|U2bcd[1]~1_combout\);

-- Location: LCCOMB_X21_Y2_N30
\u2|U2bcd[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U2bcd[0]~0_combout\ = \rpm_mem[3]~2_combout\ $ (((\u2|U1bcd[2]~2_combout\) # ((\u2|U1bcd[1]~1_combout\ & \u2|is_gt_4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U1bcd[1]~1_combout\,
	datab => \u2|is_gt_4~1_combout\,
	datac => \rpm_mem[3]~2_combout\,
	datad => \u2|U1bcd[2]~2_combout\,
	combout => \u2|U2bcd[0]~0_combout\);

-- Location: LCCOMB_X20_Y2_N30
\u2|U3bcd[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U3bcd[0]~0_combout\ = (\rpm_mem[2]~3_combout\ & (!\u2|U2bcd[2]~2_combout\ & ((\u2|U2bcd[1]~1_combout\) # (\u2|U2bcd[0]~0_combout\)))) # (!\rpm_mem[2]~3_combout\ & ((\u2|U2bcd[2]~2_combout\) # ((!\u2|U2bcd[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rpm_mem[2]~3_combout\,
	datab => \u2|U2bcd[2]~2_combout\,
	datac => \u2|U2bcd[1]~1_combout\,
	datad => \u2|U2bcd[0]~0_combout\,
	combout => \u2|U3bcd[0]~0_combout\);

-- Location: LCCOMB_X20_Y2_N20
\u2|U3bcd[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U3bcd[1]~1_combout\ = (\rpm_mem[2]~3_combout\ & ((\u2|U2bcd[2]~2_combout\ & ((!\u2|U2bcd[0]~0_combout\))) # (!\u2|U2bcd[2]~2_combout\ & ((\u2|U2bcd[0]~0_combout\) # (!\u2|U2bcd[1]~1_combout\))))) # (!\rpm_mem[2]~3_combout\ & 
-- (((\u2|U2bcd[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rpm_mem[2]~3_combout\,
	datab => \u2|U2bcd[2]~2_combout\,
	datac => \u2|U2bcd[1]~1_combout\,
	datad => \u2|U2bcd[0]~0_combout\,
	combout => \u2|U3bcd[1]~1_combout\);

-- Location: LCCOMB_X21_Y2_N24
\rpm_mem[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rpm_mem[1]~4_combout\ = (\process_0~15_combout\) # ((\process_0~13_combout\) # (\Div0|auto_generated|divider|divider|op_9~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~15_combout\,
	datab => \process_0~13_combout\,
	datac => \Div0|auto_generated|divider|divider|op_9~34_combout\,
	combout => \rpm_mem[1]~4_combout\);

-- Location: LCCOMB_X20_Y2_N16
\u2|U4bcd[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U4bcd[0]~0_combout\ = (\u2|U3bcd[2]~2_combout\ & (((!\rpm_mem[1]~4_combout\)))) # (!\u2|U3bcd[2]~2_combout\ & ((\u2|U3bcd[1]~1_combout\ & ((\rpm_mem[1]~4_combout\))) # (!\u2|U3bcd[1]~1_combout\ & ((\u2|U3bcd[0]~0_combout\) # 
-- (!\rpm_mem[1]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U3bcd[2]~2_combout\,
	datab => \u2|U3bcd[0]~0_combout\,
	datac => \u2|U3bcd[1]~1_combout\,
	datad => \rpm_mem[1]~4_combout\,
	combout => \u2|U4bcd[0]~0_combout\);

-- Location: LCCOMB_X20_Y2_N2
\u2|U4bcd[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U4bcd[1]~1_combout\ = (\u2|U3bcd[2]~2_combout\ & (\u2|U3bcd[0]~0_combout\ $ (((\rpm_mem[1]~4_combout\))))) # (!\u2|U3bcd[2]~2_combout\ & ((\u2|U3bcd[0]~0_combout\) # ((!\u2|U3bcd[1]~1_combout\ & \rpm_mem[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U3bcd[2]~2_combout\,
	datab => \u2|U3bcd[0]~0_combout\,
	datac => \u2|U3bcd[1]~1_combout\,
	datad => \rpm_mem[1]~4_combout\,
	combout => \u2|U4bcd[1]~1_combout\);

-- Location: LCCOMB_X20_Y2_N4
\u2|U4bcd[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U4bcd[2]~2_combout\ = (\u2|U3bcd[1]~1_combout\ & (\u2|U3bcd[2]~2_combout\ & ((!\rpm_mem[1]~4_combout\) # (!\u2|U3bcd[0]~0_combout\)))) # (!\u2|U3bcd[1]~1_combout\ & (((\u2|U3bcd[0]~0_combout\ & \rpm_mem[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U3bcd[2]~2_combout\,
	datab => \u2|U3bcd[0]~0_combout\,
	datac => \u2|U3bcd[1]~1_combout\,
	datad => \rpm_mem[1]~4_combout\,
	combout => \u2|U4bcd[2]~2_combout\);

-- Location: LCCOMB_X21_Y2_N20
\rpm_mem[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rpm_mem[0]~0_combout\ = (\process_0~15_combout\) # ((\process_0~13_combout\) # (\Div0|auto_generated|divider|divider|op_10~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~15_combout\,
	datab => \process_0~13_combout\,
	datac => \Div0|auto_generated|divider|divider|op_10~34_combout\,
	combout => \rpm_mem[0]~0_combout\);

-- Location: LCCOMB_X20_Y2_N26
\u2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux6~0_combout\ = (\u2|U4bcd[0]~0_combout\ & (!\u2|U4bcd[2]~2_combout\ & (\u2|U4bcd[1]~1_combout\ $ (\rpm_mem[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[0]~0_combout\,
	datab => \u2|U4bcd[1]~1_combout\,
	datac => \u2|U4bcd[2]~2_combout\,
	datad => \rpm_mem[0]~0_combout\,
	combout => \u2|Mux6~0_combout\);

-- Location: LCCOMB_X20_Y2_N28
\u2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux5~0_combout\ = (!\u2|U4bcd[1]~1_combout\ & (\u2|U4bcd[0]~0_combout\ $ (\rpm_mem[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|U4bcd[1]~1_combout\,
	datac => \u2|U4bcd[0]~0_combout\,
	datad => \rpm_mem[0]~0_combout\,
	combout => \u2|Mux5~0_combout\);

-- Location: LCCOMB_X20_Y2_N22
\u2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux4~0_combout\ = (\u2|U4bcd[1]~1_combout\ & (!\u2|U4bcd[0]~0_combout\ & \rpm_mem[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|U4bcd[1]~1_combout\,
	datac => \u2|U4bcd[0]~0_combout\,
	datad => \rpm_mem[0]~0_combout\,
	combout => \u2|Mux4~0_combout\);

-- Location: LCCOMB_X20_Y2_N8
\u2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux3~0_combout\ = (!\u2|U4bcd[2]~2_combout\ & ((\u2|U4bcd[0]~0_combout\ & (\u2|U4bcd[1]~1_combout\ $ (\rpm_mem[0]~0_combout\))) # (!\u2|U4bcd[0]~0_combout\ & (!\u2|U4bcd[1]~1_combout\ & !\rpm_mem[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[0]~0_combout\,
	datab => \u2|U4bcd[1]~1_combout\,
	datac => \u2|U4bcd[2]~2_combout\,
	datad => \rpm_mem[0]~0_combout\,
	combout => \u2|Mux3~0_combout\);

-- Location: LCCOMB_X20_Y2_N6
\u2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux2~0_combout\ = ((!\u2|U4bcd[1]~1_combout\ & \u2|U4bcd[0]~0_combout\)) # (!\rpm_mem[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|U4bcd[1]~1_combout\,
	datac => \u2|U4bcd[0]~0_combout\,
	datad => \rpm_mem[0]~0_combout\,
	combout => \u2|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y2_N0
\u2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux1~0_combout\ = (!\u2|U4bcd[2]~2_combout\ & ((\u2|U4bcd[0]~0_combout\ & (\u2|U4bcd[1]~1_combout\ & !\rpm_mem[0]~0_combout\)) # (!\u2|U4bcd[0]~0_combout\ & ((\u2|U4bcd[1]~1_combout\) # (!\rpm_mem[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[0]~0_combout\,
	datab => \u2|U4bcd[1]~1_combout\,
	datac => \u2|U4bcd[2]~2_combout\,
	datad => \rpm_mem[0]~0_combout\,
	combout => \u2|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y2_N18
\u2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux0~0_combout\ = (\u2|U4bcd[2]~2_combout\) # ((\u2|U4bcd[0]~0_combout\ & (!\u2|U4bcd[1]~1_combout\)) # (!\u2|U4bcd[0]~0_combout\ & ((\u2|U4bcd[1]~1_combout\) # (\rpm_mem[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[0]~0_combout\,
	datab => \u2|U4bcd[1]~1_combout\,
	datac => \u2|U4bcd[2]~2_combout\,
	datad => \rpm_mem[0]~0_combout\,
	combout => \u2|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y2_N6
\u2|is_gt_4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~2_combout\ = (!\u2|U0bcd[2]~5_combout\ & (!\process_0~13_combout\ & (!\process_0~15_combout\ & !\Div0|auto_generated|divider|divider|selnose\(252))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U0bcd[2]~5_combout\,
	datab => \process_0~13_combout\,
	datac => \process_0~15_combout\,
	datad => \Div0|auto_generated|divider|divider|selnose\(252),
	combout => \u2|is_gt_4~2_combout\);

-- Location: LCCOMB_X22_Y2_N22
\u2|U1bcd[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U1bcd[3]~4_combout\ = \u2|U0bcd[2]~4_combout\ $ (((\u2|U0bcd[1]~2_combout\ & ((\u2|U0bcd[0]~3_combout\) # (!\rpm_mem[4]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U0bcd[0]~3_combout\,
	datab => \rpm_mem[4]~1_combout\,
	datac => \u2|U0bcd[2]~4_combout\,
	datad => \u2|U0bcd[1]~2_combout\,
	combout => \u2|U1bcd[3]~4_combout\);

-- Location: LCCOMB_X44_Y2_N2
\u2|U6bcd[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[2]~0_combout\ = (!\u2|U1bcd[3]~4_combout\ & ((!\u2|is_gt_4~2_combout\) # (!\u2|U2bcd[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U2bcd[3]~3_combout\,
	datac => \u2|is_gt_4~2_combout\,
	datad => \u2|U1bcd[3]~4_combout\,
	combout => \u2|U6bcd[2]~0_combout\);

-- Location: LCCOMB_X20_Y2_N14
\u2|U3bcd[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U3bcd[3]~3_combout\ = \u2|U2bcd[2]~2_combout\ $ (((\u2|U2bcd[1]~1_combout\) # ((\rpm_mem[2]~3_combout\ & \u2|U2bcd[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rpm_mem[2]~3_combout\,
	datab => \u2|U2bcd[2]~2_combout\,
	datac => \u2|U2bcd[1]~1_combout\,
	datad => \u2|U2bcd[0]~0_combout\,
	combout => \u2|U3bcd[3]~3_combout\);

-- Location: LCCOMB_X44_Y2_N0
\u2|U5bcd[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U5bcd[0]~0_combout\ = (\u2|U2bcd[3]~3_combout\ & ((\u2|U1bcd[3]~4_combout\) # (!\u2|is_gt_4~2_combout\))) # (!\u2|U2bcd[3]~3_combout\ & (\u2|is_gt_4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U2bcd[3]~3_combout\,
	datac => \u2|is_gt_4~2_combout\,
	datad => \u2|U1bcd[3]~4_combout\,
	combout => \u2|U5bcd[0]~0_combout\);

-- Location: LCCOMB_X44_Y2_N26
\u2|is_gt_4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~3_combout\ = (\u2|U5bcd[2]~1_combout\) # ((\u2|U6bcd[2]~0_combout\ & ((!\u2|U5bcd[0]~0_combout\) # (!\u2|U3bcd[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U5bcd[2]~1_combout\,
	datab => \u2|U6bcd[2]~0_combout\,
	datac => \u2|U3bcd[3]~3_combout\,
	datad => \u2|U5bcd[0]~0_combout\,
	combout => \u2|is_gt_4~3_combout\);

-- Location: LCCOMB_X44_Y2_N28
\u2|U6bcd[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[1]~3_combout\ = (\u2|is_gt_4~3_combout\ & ((\u2|U3bcd[3]~3_combout\ $ (!\u2|U5bcd[0]~0_combout\)))) # (!\u2|is_gt_4~3_combout\ & (\u2|U6bcd[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[1]~2_combout\,
	datab => \u2|is_gt_4~3_combout\,
	datac => \u2|U3bcd[3]~3_combout\,
	datad => \u2|U5bcd[0]~0_combout\,
	combout => \u2|U6bcd[1]~3_combout\);

-- Location: LCCOMB_X44_Y2_N14
\u2|U6bcd[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[2]~4_combout\ = (\u2|U6bcd[2]~0_combout\ & (((\u2|U3bcd[3]~3_combout\ & \u2|U5bcd[0]~0_combout\)))) # (!\u2|U6bcd[2]~0_combout\ & (\u2|U5bcd[2]~1_combout\ & ((!\u2|U5bcd[0]~0_combout\) # (!\u2|U3bcd[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U5bcd[2]~1_combout\,
	datab => \u2|U6bcd[2]~0_combout\,
	datac => \u2|U3bcd[3]~3_combout\,
	datad => \u2|U5bcd[0]~0_combout\,
	combout => \u2|U6bcd[2]~4_combout\);

-- Location: LCCOMB_X20_Y2_N24
\u2|U4bcd[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U4bcd[3]~3_combout\ = \u2|U3bcd[2]~2_combout\ $ (((\u2|U3bcd[1]~1_combout\) # ((\u2|U3bcd[0]~0_combout\ & \rpm_mem[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U3bcd[2]~2_combout\,
	datab => \u2|U3bcd[0]~0_combout\,
	datac => \u2|U3bcd[1]~1_combout\,
	datad => \rpm_mem[1]~4_combout\,
	combout => \u2|U4bcd[3]~3_combout\);

-- Location: LCCOMB_X44_Y2_N22
\u2|U6bcd[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[0]~1_combout\ = (\u2|U5bcd[2]~1_combout\ & (((!\u2|U3bcd[3]~3_combout\)))) # (!\u2|U5bcd[2]~1_combout\ & ((\u2|U6bcd[2]~0_combout\ & ((\u2|U5bcd[0]~0_combout\) # (!\u2|U3bcd[3]~3_combout\))) # (!\u2|U6bcd[2]~0_combout\ & 
-- (\u2|U3bcd[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U5bcd[2]~1_combout\,
	datab => \u2|U6bcd[2]~0_combout\,
	datac => \u2|U3bcd[3]~3_combout\,
	datad => \u2|U5bcd[0]~0_combout\,
	combout => \u2|U6bcd[0]~1_combout\);

-- Location: LCCOMB_X44_Y2_N8
\u2|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux13~0_combout\ = (!\u2|U6bcd[2]~4_combout\ & (\u2|U6bcd[0]~1_combout\ & (\u2|U6bcd[1]~3_combout\ $ (!\u2|U4bcd[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[1]~3_combout\,
	datab => \u2|U6bcd[2]~4_combout\,
	datac => \u2|U4bcd[3]~3_combout\,
	datad => \u2|U6bcd[0]~1_combout\,
	combout => \u2|Mux13~0_combout\);

-- Location: LCCOMB_X52_Y2_N16
\u2|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux12~0_combout\ = (\u2|U6bcd[1]~3_combout\ & (\u2|U6bcd[0]~1_combout\ $ (\u2|U4bcd[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[0]~1_combout\,
	datab => \u2|U6bcd[1]~3_combout\,
	datac => \u2|U4bcd[3]~3_combout\,
	combout => \u2|Mux12~0_combout\);

-- Location: LCCOMB_X52_Y2_N22
\u2|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux11~0_combout\ = (!\u2|U6bcd[0]~1_combout\ & (!\u2|U6bcd[1]~3_combout\ & \u2|U4bcd[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[0]~1_combout\,
	datab => \u2|U6bcd[1]~3_combout\,
	datac => \u2|U4bcd[3]~3_combout\,
	combout => \u2|Mux11~0_combout\);

-- Location: LCCOMB_X52_Y2_N12
\u2|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux10~0_combout\ = (!\u2|U6bcd[2]~4_combout\ & ((\u2|U6bcd[0]~1_combout\ & (\u2|U4bcd[3]~3_combout\ $ (!\u2|U6bcd[1]~3_combout\))) # (!\u2|U6bcd[0]~1_combout\ & (!\u2|U4bcd[3]~3_combout\ & \u2|U6bcd[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[0]~1_combout\,
	datab => \u2|U6bcd[2]~4_combout\,
	datac => \u2|U4bcd[3]~3_combout\,
	datad => \u2|U6bcd[1]~3_combout\,
	combout => \u2|Mux10~0_combout\);

-- Location: LCCOMB_X52_Y2_N2
\u2|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux9~0_combout\ = ((\u2|U6bcd[0]~1_combout\ & \u2|U6bcd[1]~3_combout\)) # (!\u2|U4bcd[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[0]~1_combout\,
	datab => \u2|U6bcd[1]~3_combout\,
	datac => \u2|U4bcd[3]~3_combout\,
	combout => \u2|Mux9~0_combout\);

-- Location: LCCOMB_X52_Y2_N4
\u2|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux8~0_combout\ = (!\u2|U6bcd[2]~4_combout\ & ((\u2|U6bcd[0]~1_combout\ & (!\u2|U4bcd[3]~3_combout\ & !\u2|U6bcd[1]~3_combout\)) # (!\u2|U6bcd[0]~1_combout\ & ((!\u2|U6bcd[1]~3_combout\) # (!\u2|U4bcd[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[0]~1_combout\,
	datab => \u2|U6bcd[2]~4_combout\,
	datac => \u2|U4bcd[3]~3_combout\,
	datad => \u2|U6bcd[1]~3_combout\,
	combout => \u2|Mux8~0_combout\);

-- Location: LCCOMB_X52_Y2_N6
\u2|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux7~0_combout\ = (\u2|U6bcd[2]~4_combout\) # ((\u2|U6bcd[0]~1_combout\ & ((\u2|U6bcd[1]~3_combout\))) # (!\u2|U6bcd[0]~1_combout\ & ((\u2|U4bcd[3]~3_combout\) # (!\u2|U6bcd[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[0]~1_combout\,
	datab => \u2|U6bcd[2]~4_combout\,
	datac => \u2|U4bcd[3]~3_combout\,
	datad => \u2|U6bcd[1]~3_combout\,
	combout => \u2|Mux7~0_combout\);

-- Location: LCCOMB_X22_Y2_N4
\u2|U2bcd[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U2bcd[3]~3_combout\ = \u2|U1bcd[2]~2_combout\ $ (((!\u2|U1bcd[1]~1_combout\) # (!\u2|is_gt_4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|is_gt_4~1_combout\,
	datac => \u2|U1bcd[1]~1_combout\,
	datad => \u2|U1bcd[2]~2_combout\,
	combout => \u2|U2bcd[3]~3_combout\);

-- Location: LCCOMB_X44_Y2_N24
\u2|U6bcd[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[3]~5_combout\ = \u2|U5bcd[2]~1_combout\ $ ((((\u2|U3bcd[3]~3_combout\ & \u2|U5bcd[0]~0_combout\)) # (!\u2|U6bcd[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U5bcd[2]~1_combout\,
	datab => \u2|U6bcd[2]~0_combout\,
	datac => \u2|U3bcd[3]~3_combout\,
	datad => \u2|U5bcd[0]~0_combout\,
	combout => \u2|U6bcd[3]~5_combout\);

-- Location: LCCOMB_X44_Y2_N10
\u2|Mux15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux15~6_combout\ = (\u2|U6bcd[3]~5_combout\) # ((\u2|is_gt_4~2_combout\ & ((!\u2|U1bcd[3]~4_combout\) # (!\u2|U2bcd[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U2bcd[3]~3_combout\,
	datab => \u2|U6bcd[3]~5_combout\,
	datac => \u2|is_gt_4~2_combout\,
	datad => \u2|U1bcd[3]~4_combout\,
	combout => \u2|Mux15~6_combout\);

-- Location: LCCOMB_X44_Y2_N16
\u2|Mux15~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux15~7_combout\ = (\u2|U6bcd[3]~5_combout\ & (\u2|is_gt_4~2_combout\ & ((!\u2|U1bcd[3]~4_combout\) # (!\u2|U2bcd[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U2bcd[3]~3_combout\,
	datab => \u2|U6bcd[3]~5_combout\,
	datac => \u2|is_gt_4~2_combout\,
	datad => \u2|U1bcd[3]~4_combout\,
	combout => \u2|Mux15~7_combout\);

-- Location: LCCOMB_X44_Y2_N18
\u2|Mux15~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux15~8_combout\ = ((\u2|is_gt_4~2_combout\ & ((!\u2|U1bcd[3]~4_combout\) # (!\u2|U2bcd[3]~3_combout\)))) # (!\u2|U6bcd[3]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U2bcd[3]~3_combout\,
	datab => \u2|U6bcd[3]~5_combout\,
	datac => \u2|is_gt_4~2_combout\,
	datad => \u2|U1bcd[3]~4_combout\,
	combout => \u2|Mux15~8_combout\);

-- Location: LCCOMB_X44_Y2_N30
\u2|is_gt_4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~4_combout\ = (\u2|is_gt_4~2_combout\ & ((!\u2|U1bcd[3]~4_combout\) # (!\u2|U2bcd[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U2bcd[3]~3_combout\,
	datac => \u2|is_gt_4~2_combout\,
	datad => \u2|U1bcd[3]~4_combout\,
	combout => \u2|is_gt_4~4_combout\);

-- Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clock1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u1|clkint~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clock1);

-- Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0_D[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u2|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0_D(0));

-- Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0_D[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u2|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0_D(1));

-- Location: PIN_AH9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0_D[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u2|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0_D(2));

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0_D[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0_D(3));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0_D[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0_D(4));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0_D[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0_D(5));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0_D[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u2|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0_D(6));

-- Location: PIN_AG13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1_D[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u2|Mux13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1_D(0));

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1_D[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u2|Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1_D(1));

-- Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1_D[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u2|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1_D(2));

-- Location: PIN_AG16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1_D[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u2|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1_D(3));

-- Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1_D[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u2|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1_D(4));

-- Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1_D[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u2|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1_D(5));

-- Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1_D[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u2|ALT_INV_Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1_D(6));

-- Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2_D[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u2|ALT_INV_Mux15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2_D(0));

-- Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2_D[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2_D(1));

-- Location: PIN_AH5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2_D[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u2|Mux15~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2_D(2));

-- Location: PIN_AG4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2_D[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u2|ALT_INV_Mux15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2_D(3));

-- Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2_D[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u2|ALT_INV_U6bcd[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2_D(4));

-- Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2_D[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u2|Mux15~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2_D(5));

-- Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2_D[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u2|ALT_INV_is_gt_4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2_D(6));

-- Location: PIN_W27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hall_sens~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led);

-- Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \hall_sens~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led2);

-- Location: PIN_AK9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|tix_mem\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tix_mem1(0));

-- Location: PIN_AG9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|tix_mem\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tix_mem1(1));

-- Location: PIN_AF11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|tix_mem\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tix_mem1(2));

-- Location: PIN_AJ7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|tix_mem\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tix_mem1(3));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|tix_mem\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tix_mem1(4));

-- Location: PIN_AH10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|tix_mem\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tix_mem1(5));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|tix_mem\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tix_mem1(6));

-- Location: PIN_AK8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem1[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|tix_mem\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tix_mem1(7));

-- Location: PIN_AG10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem1[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|tix_mem\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tix_mem1(8));

-- Location: PIN_AK7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem1[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|tix_mem\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tix_mem1(9));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem1[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|tix_mem\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tix_mem1(10));

-- Location: PIN_AJ8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem1[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|tix_mem\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tix_mem1(11));

-- Location: PIN_AK6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem1[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|tix_mem\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tix_mem1(12));

-- Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem1[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|tix_mem\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tix_mem1(13));

-- Location: PIN_AD9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem1[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|tix_mem\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tix_mem1(14));

-- Location: PIN_AJ6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem1[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u0|tix_mem\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tix_mem1(15));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3_D[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3_D(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3_D[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3_D(1));

-- Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3_D[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3_D(2));

-- Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3_D[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3_D(3));

-- Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3_D[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3_D(4));

-- Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3_D[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3_D(5));

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3_D[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3_D(6));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4_D[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4_D(0));

-- Location: PIN_AF29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4_D[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4_D(1));

-- Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4_D[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4_D(2));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4_D[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4_D(3));

-- Location: PIN_V23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4_D[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4_D(4));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4_D[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4_D(5));

-- Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4_D[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4_D(6));

-- Location: PIN_N28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5_D[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5_D(0));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5_D[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5_D(1));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5_D[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5_D(2));

-- Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5_D[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5_D(3));

-- Location: PIN_U30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5_D[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5_D(4));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5_D[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5_D(5));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5_D[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5_D(6));

-- Location: PIN_AH27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6_D[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6_D(0));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6_D[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6_D(1));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6_D[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6_D(2));

-- Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6_D[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6_D(3));

-- Location: PIN_AE24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6_D[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6_D(4));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6_D[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6_D(5));

-- Location: PIN_AK10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6_D[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6_D(6));

-- Location: PIN_AG6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7_D[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7_D(0));

-- Location: PIN_AF30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7_D[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7_D(1));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7_D[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7_D(2));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7_D[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7_D(3));

-- Location: PIN_AJ21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7_D[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7_D(4));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7_D[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7_D(5));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7_D[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7_D(6));

-- Location: PIN_AF12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0_DP~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0_DP);

-- Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1_DP~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1_DP);

-- Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2_DP~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2_DP);

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3_DP~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3_DP);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX4_DP~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4_DP);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX5_DP~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5_DP);

-- Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX6_DP~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6_DP);

-- Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX7_DP~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7_DP);
END structure;


