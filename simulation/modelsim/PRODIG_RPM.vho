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

-- DATE "10/04/2019 15:44:18"

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
	tix_mem_sim : OUT std_logic_vector(15 DOWNTO 0);
	rpm_mem_sim : OUT std_logic_vector(7 DOWNTO 0);
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
-- clock1	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- tix_mem_sim[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[1]	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[2]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[3]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[4]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[5]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[6]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[7]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[8]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[9]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[10]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[11]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[12]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[13]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[14]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[15]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[0]	=>  Location: PIN_AJ11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[1]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[2]	=>  Location: PIN_AK11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[3]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[4]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[5]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[6]	=>  Location: PIN_AG12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[7]	=>  Location: PIN_AH12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_D[0]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_D[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_D[2]	=>  Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_D[3]	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_D[4]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_D[5]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_D[6]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_D[0]	=>  Location: PIN_AK22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_D[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_D[2]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_D[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_D[4]	=>  Location: PIN_Y8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_D[5]	=>  Location: PIN_P29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_D[6]	=>  Location: PIN_AJ3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_D[0]	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_D[1]	=>  Location: PIN_AJ15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_D[2]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_D[3]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_D[4]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_D[5]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_D[6]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_D[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_D[1]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_D[2]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_D[3]	=>  Location: PIN_AG5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_D[4]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_D[5]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_D[6]	=>  Location: PIN_AJ16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_D[0]	=>  Location: PIN_AH13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_D[1]	=>  Location: PIN_AJ28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_D[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_D[3]	=>  Location: PIN_AH3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_D[4]	=>  Location: PIN_AF11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_D[5]	=>  Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_D[6]	=>  Location: PIN_AG25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0_DP	=>  Location: PIN_AF12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1_DP	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2_DP	=>  Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_DP	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_DP	=>  Location: PIN_AH26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_DP	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_DP	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_DP	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
SIGNAL ww_tix_mem_sim : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rpm_mem_sim : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \u1|Add0~10_combout\ : std_logic;
SIGNAL \u1|Add0~21\ : std_logic;
SIGNAL \u1|Add0~22_combout\ : std_logic;
SIGNAL \u3|Add1~3_combout\ : std_logic;
SIGNAL \u3|Add1~5_combout\ : std_logic;
SIGNAL \u3|Add1~15\ : std_logic;
SIGNAL \u3|Add1~16_combout\ : std_logic;
SIGNAL \u0|Add1~6_combout\ : std_logic;
SIGNAL \u0|Add1~8_combout\ : std_logic;
SIGNAL \u0|Add1~12_combout\ : std_logic;
SIGNAL \u0|Add1~15\ : std_logic;
SIGNAL \u0|Add1~16_combout\ : std_logic;
SIGNAL \u0|Add1~17\ : std_logic;
SIGNAL \u0|Add1~18_combout\ : std_logic;
SIGNAL \u0|Add1~19\ : std_logic;
SIGNAL \u0|Add1~20_combout\ : std_logic;
SIGNAL \u3|x[0]~20_combout\ : std_logic;
SIGNAL \u3|x[6]~32_combout\ : std_logic;
SIGNAL \u3|x[18]~56_combout\ : std_logic;
SIGNAL \u2|U2bcd[0]~0_combout\ : std_logic;
SIGNAL \u2|U3bcd[2]~1_combout\ : std_logic;
SIGNAL \u2|U6bcd[1]~2_combout\ : std_logic;
SIGNAL \u0|LessThan0~0_combout\ : std_logic;
SIGNAL \u0|LessThan0~1_combout\ : std_logic;
SIGNAL \u0|LessThan0~2_combout\ : std_logic;
SIGNAL \u0|LessThan0~3_combout\ : std_logic;
SIGNAL \u1|count~0_combout\ : std_logic;
SIGNAL \u3|LessThan2~32_combout\ : std_logic;
SIGNAL \u0|wait_time[9]~3_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \u1|Add0~0_combout\ : std_logic;
SIGNAL \areset~combout\ : std_logic;
SIGNAL \u1|Add0~1\ : std_logic;
SIGNAL \u1|Add0~2_combout\ : std_logic;
SIGNAL \u1|Add0~3\ : std_logic;
SIGNAL \u1|Add0~5\ : std_logic;
SIGNAL \u1|Add0~6_combout\ : std_logic;
SIGNAL \u1|Add0~7\ : std_logic;
SIGNAL \u1|Add0~9\ : std_logic;
SIGNAL \u1|Add0~11\ : std_logic;
SIGNAL \u1|Add0~12_combout\ : std_logic;
SIGNAL \u1|count~3_combout\ : std_logic;
SIGNAL \u1|Add0~13\ : std_logic;
SIGNAL \u1|Add0~14_combout\ : std_logic;
SIGNAL \u1|count~2_combout\ : std_logic;
SIGNAL \u1|Equal0~1_combout\ : std_logic;
SIGNAL \u1|Add0~15\ : std_logic;
SIGNAL \u1|Add0~16_combout\ : std_logic;
SIGNAL \u1|count~1_combout\ : std_logic;
SIGNAL \u1|Add0~17\ : std_logic;
SIGNAL \u1|Add0~19\ : std_logic;
SIGNAL \u1|Add0~20_combout\ : std_logic;
SIGNAL \u1|Add0~18_combout\ : std_logic;
SIGNAL \u1|Equal0~0_combout\ : std_logic;
SIGNAL \u1|Add0~4_combout\ : std_logic;
SIGNAL \u1|count~4_combout\ : std_logic;
SIGNAL \u1|Add0~8_combout\ : std_logic;
SIGNAL \u1|Equal0~2_combout\ : std_logic;
SIGNAL \u1|clkint~0_combout\ : std_logic;
SIGNAL \u1|clkint~regout\ : std_logic;
SIGNAL \u0|Add1~0_combout\ : std_logic;
SIGNAL \u0|wait_time[0]~8_combout\ : std_logic;
SIGNAL \u0|Add1~1\ : std_logic;
SIGNAL \u0|Add1~2_combout\ : std_logic;
SIGNAL \u0|wait_time[10]~0_combout\ : std_logic;
SIGNAL \u0|wait_time[8]~4_combout\ : std_logic;
SIGNAL \u0|wait_time[10]~2_combout\ : std_logic;
SIGNAL \u0|wait_time[6]~6_combout\ : std_logic;
SIGNAL \u0|wait_time[4]~7_combout\ : std_logic;
SIGNAL \u0|Add1~3\ : std_logic;
SIGNAL \u0|Add1~4_combout\ : std_logic;
SIGNAL \u0|Add1~5\ : std_logic;
SIGNAL \u0|Add1~7\ : std_logic;
SIGNAL \u0|Add1~9\ : std_logic;
SIGNAL \u0|Add1~10_combout\ : std_logic;
SIGNAL \u0|Add1~11\ : std_logic;
SIGNAL \u0|Add1~13\ : std_logic;
SIGNAL \u0|Add1~14_combout\ : std_logic;
SIGNAL \u0|wait_time[7]~5_combout\ : std_logic;
SIGNAL \u0|Equal0~0_combout\ : std_logic;
SIGNAL \u0|wait_time[10]~1_combout\ : std_logic;
SIGNAL \u0|Equal0~2_combout\ : std_logic;
SIGNAL \hall_sens~combout\ : std_logic;
SIGNAL \u0|process_0~0_combout\ : std_logic;
SIGNAL \u0|count[0]~16_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \u0|count[8]~32_combout\ : std_logic;
SIGNAL \u0|count[10]~36_combout\ : std_logic;
SIGNAL \u0|LessThan0~4_combout\ : std_logic;
SIGNAL \u0|Equal0~1_combout\ : std_logic;
SIGNAL \u0|Equal0~3_combout\ : std_logic;
SIGNAL \u0|tix_mem[14]~1_combout\ : std_logic;
SIGNAL \u0|tix_mem[14]~2_combout\ : std_logic;
SIGNAL \u0|count[0]~17\ : std_logic;
SIGNAL \u0|count[1]~18_combout\ : std_logic;
SIGNAL \u0|count[1]~19\ : std_logic;
SIGNAL \u0|count[2]~20_combout\ : std_logic;
SIGNAL \u0|count[2]~21\ : std_logic;
SIGNAL \u0|count[3]~23\ : std_logic;
SIGNAL \u0|count[4]~24_combout\ : std_logic;
SIGNAL \u0|count[4]~25\ : std_logic;
SIGNAL \u0|count[5]~27\ : std_logic;
SIGNAL \u0|count[6]~29\ : std_logic;
SIGNAL \u0|count[7]~30_combout\ : std_logic;
SIGNAL \u0|count[7]~31\ : std_logic;
SIGNAL \u0|count[8]~33\ : std_logic;
SIGNAL \u0|count[9]~34_combout\ : std_logic;
SIGNAL \u0|count[9]~35\ : std_logic;
SIGNAL \u0|count[10]~37\ : std_logic;
SIGNAL \u0|count[11]~38_combout\ : std_logic;
SIGNAL \u0|count[11]~39\ : std_logic;
SIGNAL \u0|count[12]~41\ : std_logic;
SIGNAL \u0|count[13]~42_combout\ : std_logic;
SIGNAL \u0|count[13]~43\ : std_logic;
SIGNAL \u0|count[14]~44_combout\ : std_logic;
SIGNAL \u0|count[14]~45\ : std_logic;
SIGNAL \u0|count[15]~46_combout\ : std_logic;
SIGNAL \u0|tix_mem~18_combout\ : std_logic;
SIGNAL \u0|tix_mem[0]~3_combout\ : std_logic;
SIGNAL \u0|calc~regout\ : std_logic;
SIGNAL \u0|tix_mem~14_combout\ : std_logic;
SIGNAL \u0|count[12]~40_combout\ : std_logic;
SIGNAL \u0|tix_mem~15_combout\ : std_logic;
SIGNAL \u0|tix_mem~16_combout\ : std_logic;
SIGNAL \u3|rpm[6]~2_combout\ : std_logic;
SIGNAL \u0|tix_mem~12_combout\ : std_logic;
SIGNAL \u3|tix_int[9]~feeder_combout\ : std_logic;
SIGNAL \u0|tix_mem~13_combout\ : std_logic;
SIGNAL \u0|count[6]~28_combout\ : std_logic;
SIGNAL \u0|tix_mem~9_combout\ : std_logic;
SIGNAL \u3|tix_int[6]~feeder_combout\ : std_logic;
SIGNAL \u0|tix_mem~10_combout\ : std_logic;
SIGNAL \u0|count[5]~26_combout\ : std_logic;
SIGNAL \u0|tix_mem~8_combout\ : std_logic;
SIGNAL \u3|rpm[6]~3_combout\ : std_logic;
SIGNAL \u3|rpm[6]~4_combout\ : std_logic;
SIGNAL \u3|rpm[6]~5_combout\ : std_logic;
SIGNAL \u3|rpm[6]~0_combout\ : std_logic;
SIGNAL \u0|tix_mem~11_combout\ : std_logic;
SIGNAL \u0|tix_mem~0_combout\ : std_logic;
SIGNAL \u3|tix_int[0]~feeder_combout\ : std_logic;
SIGNAL \u0|count[3]~22_combout\ : std_logic;
SIGNAL \u0|tix_mem~6_combout\ : std_logic;
SIGNAL \u0|tix_mem~4_combout\ : std_logic;
SIGNAL \u3|tix_int[1]~feeder_combout\ : std_logic;
SIGNAL \u3|LessThan0~0_combout\ : std_logic;
SIGNAL \u0|tix_mem~7_combout\ : std_logic;
SIGNAL \u3|tix_int[4]~feeder_combout\ : std_logic;
SIGNAL \u3|LessThan0~1_combout\ : std_logic;
SIGNAL \u3|LessThan0~2_combout\ : std_logic;
SIGNAL \u3|rpm[6]~1_combout\ : std_logic;
SIGNAL \u3|rpm[6]~6_combout\ : std_logic;
SIGNAL \u3|Add1~19_combout\ : std_logic;
SIGNAL \u3|rpm[6]~7_combout\ : std_logic;
SIGNAL \u0|tix_mem~5_combout\ : std_logic;
SIGNAL \u3|x[0]~21\ : std_logic;
SIGNAL \u3|x[1]~22_combout\ : std_logic;
SIGNAL \u3|stop~regout\ : std_logic;
SIGNAL \u3|stop~0_combout\ : std_logic;
SIGNAL \u3|x[1]~23\ : std_logic;
SIGNAL \u3|x[2]~25\ : std_logic;
SIGNAL \u3|x[3]~26_combout\ : std_logic;
SIGNAL \u3|x[3]~27\ : std_logic;
SIGNAL \u3|x[4]~29\ : std_logic;
SIGNAL \u3|x[5]~30_combout\ : std_logic;
SIGNAL \u3|x[5]~31\ : std_logic;
SIGNAL \u3|x[6]~33\ : std_logic;
SIGNAL \u3|x[7]~34_combout\ : std_logic;
SIGNAL \u3|x[7]~35\ : std_logic;
SIGNAL \u3|x[8]~37\ : std_logic;
SIGNAL \u3|x[9]~39\ : std_logic;
SIGNAL \u3|x[10]~40_combout\ : std_logic;
SIGNAL \u3|x[10]~41\ : std_logic;
SIGNAL \u3|x[11]~42_combout\ : std_logic;
SIGNAL \u3|x[11]~43\ : std_logic;
SIGNAL \u3|x[12]~45\ : std_logic;
SIGNAL \u3|x[13]~47\ : std_logic;
SIGNAL \u3|x[14]~48_combout\ : std_logic;
SIGNAL \u3|x[14]~49\ : std_logic;
SIGNAL \u3|x[15]~51\ : std_logic;
SIGNAL \u3|x[16]~53\ : std_logic;
SIGNAL \u3|x[17]~54_combout\ : std_logic;
SIGNAL \u3|x[17]~55\ : std_logic;
SIGNAL \u3|x[18]~57\ : std_logic;
SIGNAL \u3|x[19]~58_combout\ : std_logic;
SIGNAL \u3|x[16]~52_combout\ : std_logic;
SIGNAL \u3|x[15]~50_combout\ : std_logic;
SIGNAL \u0|tix_mem~17_combout\ : std_logic;
SIGNAL \u3|x[13]~46_combout\ : std_logic;
SIGNAL \u3|x[12]~44_combout\ : std_logic;
SIGNAL \u3|x[9]~38_combout\ : std_logic;
SIGNAL \u3|x[8]~36_combout\ : std_logic;
SIGNAL \u3|x[4]~28_combout\ : std_logic;
SIGNAL \u3|x[2]~24_combout\ : std_logic;
SIGNAL \u3|LessThan2~1_cout\ : std_logic;
SIGNAL \u3|LessThan2~3_cout\ : std_logic;
SIGNAL \u3|LessThan2~5_cout\ : std_logic;
SIGNAL \u3|LessThan2~7_cout\ : std_logic;
SIGNAL \u3|LessThan2~9_cout\ : std_logic;
SIGNAL \u3|LessThan2~11_cout\ : std_logic;
SIGNAL \u3|LessThan2~13_cout\ : std_logic;
SIGNAL \u3|LessThan2~15_cout\ : std_logic;
SIGNAL \u3|LessThan2~17_cout\ : std_logic;
SIGNAL \u3|LessThan2~19_cout\ : std_logic;
SIGNAL \u3|LessThan2~21_cout\ : std_logic;
SIGNAL \u3|LessThan2~23_cout\ : std_logic;
SIGNAL \u3|LessThan2~25_cout\ : std_logic;
SIGNAL \u3|LessThan2~27_cout\ : std_logic;
SIGNAL \u3|LessThan2~29_cout\ : std_logic;
SIGNAL \u3|LessThan2~30_combout\ : std_logic;
SIGNAL \u3|LessThan2~33_combout\ : std_logic;
SIGNAL \u3|rpm[6]~8_combout\ : std_logic;
SIGNAL \u3|rpm_mem[3]~0_combout\ : std_logic;
SIGNAL \u3|Add1~20_combout\ : std_logic;
SIGNAL \u3|Add1~0_combout\ : std_logic;
SIGNAL \u3|Add1~2_combout\ : std_logic;
SIGNAL \u3|Add1~1\ : std_logic;
SIGNAL \u3|Add1~4\ : std_logic;
SIGNAL \u3|Add1~6\ : std_logic;
SIGNAL \u3|Add1~8\ : std_logic;
SIGNAL \u3|Add1~9_combout\ : std_logic;
SIGNAL \u3|Add1~11_combout\ : std_logic;
SIGNAL \u3|Add1~10\ : std_logic;
SIGNAL \u3|Add1~12_combout\ : std_logic;
SIGNAL \u3|Add1~18_combout\ : std_logic;
SIGNAL \u3|Add1~13\ : std_logic;
SIGNAL \u3|Add1~14_combout\ : std_logic;
SIGNAL \u3|rpm~9_combout\ : std_logic;
SIGNAL \u3|rpm~11_combout\ : std_logic;
SIGNAL \u3|rpm_mem[6]~feeder_combout\ : std_logic;
SIGNAL \u3|rpm~10_combout\ : std_logic;
SIGNAL \u3|rpm_mem[7]~feeder_combout\ : std_logic;
SIGNAL \u2|U1bcd[2]~1_combout\ : std_logic;
SIGNAL \u2|U1bcd[1]~2_combout\ : std_logic;
SIGNAL \u2|U1bcd[0]~0_combout\ : std_logic;
SIGNAL \u2|U2bcd[1]~2_combout\ : std_logic;
SIGNAL \u3|Add1~7_combout\ : std_logic;
SIGNAL \u3|rpm~12_combout\ : std_logic;
SIGNAL \u2|U2bcd[2]~1_combout\ : std_logic;
SIGNAL \u2|U3bcd[0]~0_combout\ : std_logic;
SIGNAL \u2|U3bcd[1]~2_combout\ : std_logic;
SIGNAL \u3|rpm_mem[1]~feeder_combout\ : std_logic;
SIGNAL \u2|U4bcd[0]~0_combout\ : std_logic;
SIGNAL \u2|U4bcd[2]~2_combout\ : std_logic;
SIGNAL \u3|rpm_mem[0]~feeder_combout\ : std_logic;
SIGNAL \u2|U4bcd[1]~1_combout\ : std_logic;
SIGNAL \u2|Mux6~0_combout\ : std_logic;
SIGNAL \u2|Mux5~0_combout\ : std_logic;
SIGNAL \u2|Mux4~0_combout\ : std_logic;
SIGNAL \u2|Mux3~0_combout\ : std_logic;
SIGNAL \u2|Mux2~0_combout\ : std_logic;
SIGNAL \u2|Mux1~0_combout\ : std_logic;
SIGNAL \u2|Mux0~0_combout\ : std_logic;
SIGNAL \u2|U2bcd[3]~3_combout\ : std_logic;
SIGNAL \u2|U5bcd[2]~0_combout\ : std_logic;
SIGNAL \u2|U6bcd[2]~0_combout\ : std_logic;
SIGNAL \u2|is_gt_4~2_combout\ : std_logic;
SIGNAL \u2|is_gt_4~3_combout\ : std_logic;
SIGNAL \u2|is_gt_4~0_combout\ : std_logic;
SIGNAL \u2|is_gt_4~1_combout\ : std_logic;
SIGNAL \u2|is_gt_4~4_combout\ : std_logic;
SIGNAL \u2|is_gt_4~5_combout\ : std_logic;
SIGNAL \u2|Mux13~0_combout\ : std_logic;
SIGNAL \u2|U0bcd[2]~0_combout\ : std_logic;
SIGNAL \u2|U6bcd[1]~3_combout\ : std_logic;
SIGNAL \u2|U4bcd[3]~3_combout\ : std_logic;
SIGNAL \u2|Mux13~1_combout\ : std_logic;
SIGNAL \u2|U6bcd[2]~1_combout\ : std_logic;
SIGNAL \u2|Mux13~2_combout\ : std_logic;
SIGNAL \u2|Mux12~0_combout\ : std_logic;
SIGNAL \u2|Add6~0_combout\ : std_logic;
SIGNAL \u2|Mux12~1_combout\ : std_logic;
SIGNAL \u2|U6bcd[1]~5_combout\ : std_logic;
SIGNAL \u2|U6bcd[0]~4_combout\ : std_logic;
SIGNAL \u2|Mux11~0_combout\ : std_logic;
SIGNAL \u2|Mux10~0_combout\ : std_logic;
SIGNAL \u2|Mux9~0_combout\ : std_logic;
SIGNAL \u2|Mux8~0_combout\ : std_logic;
SIGNAL \u2|Mux7~0_combout\ : std_logic;
SIGNAL \u2|U6bcd[3]~6_combout\ : std_logic;
SIGNAL \u2|Mux15~0_combout\ : std_logic;
SIGNAL \u2|Mux15~1_combout\ : std_logic;
SIGNAL \u2|Mux15~2_combout\ : std_logic;
SIGNAL \u1|clkint~clkctrl_outclk\ : std_logic;
SIGNAL \u3|x\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \u3|tix_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u3|rpm_mem\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u3|rpm\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u0|wait_time\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u0|tix_mem\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u1|count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_areset~combout\ : std_logic;
SIGNAL \u2|ALT_INV_is_gt_4~1_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_U6bcd[3]~6_combout\ : std_logic;
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
tix_mem_sim <= ww_tix_mem_sim;
rpm_mem_sim <= ww_rpm_mem_sim;
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
\ALT_INV_areset~combout\ <= NOT \areset~combout\;
\u2|ALT_INV_is_gt_4~1_combout\ <= NOT \u2|is_gt_4~1_combout\;
\u2|ALT_INV_Mux0~0_combout\ <= NOT \u2|Mux0~0_combout\;
\u2|ALT_INV_Mux15~0_combout\ <= NOT \u2|Mux15~0_combout\;
\u2|ALT_INV_U6bcd[3]~6_combout\ <= NOT \u2|U6bcd[3]~6_combout\;
\u2|ALT_INV_Mux7~0_combout\ <= NOT \u2|Mux7~0_combout\;

-- Location: LCCOMB_X47_Y50_N12
\u1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~10_combout\ = (\u1|count\(5) & (!\u1|Add0~9\)) # (!\u1|count\(5) & ((\u1|Add0~9\) # (GND)))
-- \u1|Add0~11\ = CARRY((!\u1|Add0~9\) # (!\u1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(5),
	datad => VCC,
	cin => \u1|Add0~9\,
	combout => \u1|Add0~10_combout\,
	cout => \u1|Add0~11\);

-- Location: LCCOMB_X47_Y50_N22
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

-- Location: LCCOMB_X47_Y50_N24
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

-- Location: LCFF_X34_Y48_N25
\u3|x[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|x[6]~32_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|calc~regout\,
	ena => \u3|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|x\(6));

-- Location: LCFF_X34_Y48_N13
\u3|x[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|x[0]~20_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|calc~regout\,
	ena => \u3|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|x\(0));

-- Location: LCFF_X34_Y47_N17
\u3|x[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|x[18]~56_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|calc~regout\,
	ena => \u3|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|x\(18));

-- Location: LCCOMB_X33_Y47_N14
\u3|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add1~3_combout\ = (\u3|rpm\(1) & (!\u3|Add1~1\)) # (!\u3|rpm\(1) & ((\u3|Add1~1\) # (GND)))
-- \u3|Add1~4\ = CARRY((!\u3|Add1~1\) # (!\u3|rpm\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rpm\(1),
	datad => VCC,
	cin => \u3|Add1~1\,
	combout => \u3|Add1~3_combout\,
	cout => \u3|Add1~4\);

-- Location: LCCOMB_X33_Y47_N16
\u3|Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add1~5_combout\ = (\u3|rpm\(2) & (\u3|Add1~4\ $ (GND))) # (!\u3|rpm\(2) & (!\u3|Add1~4\ & VCC))
-- \u3|Add1~6\ = CARRY((\u3|rpm\(2) & !\u3|Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rpm\(2),
	datad => VCC,
	cin => \u3|Add1~4\,
	combout => \u3|Add1~5_combout\,
	cout => \u3|Add1~6\);

-- Location: LCCOMB_X33_Y47_N24
\u3|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add1~14_combout\ = (\u3|rpm\(6) & (\u3|Add1~13\ $ (GND))) # (!\u3|rpm\(6) & (!\u3|Add1~13\ & VCC))
-- \u3|Add1~15\ = CARRY((\u3|rpm\(6) & !\u3|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rpm\(6),
	datad => VCC,
	cin => \u3|Add1~13\,
	combout => \u3|Add1~14_combout\,
	cout => \u3|Add1~15\);

-- Location: LCCOMB_X33_Y47_N26
\u3|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add1~16_combout\ = \u3|Add1~15\ $ (\u3|rpm\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u3|rpm\(7),
	cin => \u3|Add1~15\,
	combout => \u3|Add1~16_combout\);

-- Location: LCCOMB_X33_Y49_N10
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

-- Location: LCCOMB_X33_Y49_N12
\u0|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~8_combout\ = (\u0|wait_time\(4) & (\u0|Add1~7\ $ (GND))) # (!\u0|wait_time\(4) & (!\u0|Add1~7\ & VCC))
-- \u0|Add1~9\ = CARRY((\u0|wait_time\(4) & !\u0|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|wait_time\(4),
	datad => VCC,
	cin => \u0|Add1~7\,
	combout => \u0|Add1~8_combout\,
	cout => \u0|Add1~9\);

-- Location: LCCOMB_X33_Y49_N16
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

-- Location: LCCOMB_X33_Y49_N18
\u0|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~14_combout\ = (\u0|wait_time\(7) & (!\u0|Add1~13\)) # (!\u0|wait_time\(7) & ((\u0|Add1~13\) # (GND)))
-- \u0|Add1~15\ = CARRY((!\u0|Add1~13\) # (!\u0|wait_time\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|wait_time\(7),
	datad => VCC,
	cin => \u0|Add1~13\,
	combout => \u0|Add1~14_combout\,
	cout => \u0|Add1~15\);

-- Location: LCCOMB_X33_Y49_N20
\u0|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~16_combout\ = (\u0|wait_time\(8) & (\u0|Add1~15\ $ (GND))) # (!\u0|wait_time\(8) & (!\u0|Add1~15\ & VCC))
-- \u0|Add1~17\ = CARRY((\u0|wait_time\(8) & !\u0|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(8),
	datad => VCC,
	cin => \u0|Add1~15\,
	combout => \u0|Add1~16_combout\,
	cout => \u0|Add1~17\);

-- Location: LCCOMB_X33_Y49_N22
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

-- Location: LCCOMB_X33_Y49_N24
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

-- Location: LCCOMB_X34_Y48_N12
\u3|x[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|x[0]~20_combout\ = (\u3|x\(0) & ((GND) # (!\u3|tix_int\(0)))) # (!\u3|x\(0) & (\u3|tix_int\(0) $ (GND)))
-- \u3|x[0]~21\ = CARRY((\u3|x\(0)) # (!\u3|tix_int\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|x\(0),
	datab => \u3|tix_int\(0),
	datad => VCC,
	combout => \u3|x[0]~20_combout\,
	cout => \u3|x[0]~21\);

-- Location: LCCOMB_X34_Y48_N24
\u3|x[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|x[6]~32_combout\ = (\u3|x\(6) & ((\u3|tix_int\(6) & (\u3|x[5]~31\ & VCC)) # (!\u3|tix_int\(6) & (!\u3|x[5]~31\)))) # (!\u3|x\(6) & ((\u3|tix_int\(6) & (!\u3|x[5]~31\)) # (!\u3|tix_int\(6) & ((\u3|x[5]~31\) # (GND)))))
-- \u3|x[6]~33\ = CARRY((\u3|x\(6) & (!\u3|tix_int\(6) & !\u3|x[5]~31\)) # (!\u3|x\(6) & ((!\u3|x[5]~31\) # (!\u3|tix_int\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|x\(6),
	datab => \u3|tix_int\(6),
	datad => VCC,
	cin => \u3|x[5]~31\,
	combout => \u3|x[6]~32_combout\,
	cout => \u3|x[6]~33\);

-- Location: LCCOMB_X34_Y47_N16
\u3|x[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|x[18]~56_combout\ = (\u3|x\(18) & ((GND) # (!\u3|x[17]~55\))) # (!\u3|x\(18) & (\u3|x[17]~55\ $ (GND)))
-- \u3|x[18]~57\ = CARRY((\u3|x\(18)) # (!\u3|x[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|x\(18),
	datad => VCC,
	cin => \u3|x[17]~55\,
	combout => \u3|x[18]~56_combout\,
	cout => \u3|x[18]~57\);

-- Location: LCCOMB_X35_Y1_N6
\u2|U2bcd[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U2bcd[0]~0_combout\ = (\u2|U1bcd[1]~2_combout\ & (!\u3|rpm_mem\(3) & ((\u2|U1bcd[0]~0_combout\) # (\u2|U1bcd[2]~1_combout\)))) # (!\u2|U1bcd[1]~2_combout\ & ((\u3|rpm_mem\(3) $ (\u2|U1bcd[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U1bcd[0]~0_combout\,
	datab => \u2|U1bcd[1]~2_combout\,
	datac => \u3|rpm_mem\(3),
	datad => \u2|U1bcd[2]~1_combout\,
	combout => \u2|U2bcd[0]~0_combout\);

-- Location: LCCOMB_X32_Y1_N12
\u2|U3bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U3bcd[2]~1_combout\ = (\u2|U2bcd[1]~2_combout\ & (!\u2|U2bcd[0]~0_combout\ & (!\u3|rpm_mem\(2)))) # (!\u2|U2bcd[1]~2_combout\ & (\u2|U2bcd[2]~1_combout\ & ((\u2|U2bcd[0]~0_combout\) # (\u3|rpm_mem\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U2bcd[0]~0_combout\,
	datab => \u3|rpm_mem\(2),
	datac => \u2|U2bcd[1]~2_combout\,
	datad => \u2|U2bcd[2]~1_combout\,
	combout => \u2|U3bcd[2]~1_combout\);

-- Location: LCCOMB_X35_Y1_N10
\u2|U6bcd[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[1]~2_combout\ = (\u3|rpm_mem\(4) & (\u3|rpm_mem\(5) & (\u3|rpm_mem\(6) & \u3|rpm_mem\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rpm_mem\(4),
	datab => \u3|rpm_mem\(5),
	datac => \u3|rpm_mem\(6),
	datad => \u3|rpm_mem\(7),
	combout => \u2|U6bcd[1]~2_combout\);

-- Location: LCFF_X47_Y50_N1
\u1|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~0_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(11));

-- Location: LCFF_X47_Y50_N13
\u1|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~10_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(5));

-- Location: LCFF_X33_Y49_N3
\u0|wait_time[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[9]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(9));

-- Location: LCFF_X33_Y49_N11
\u0|wait_time[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|Add1~6_combout\,
	ena => \u0|wait_time[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(3));

-- Location: LCCOMB_X36_Y48_N0
\u0|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~0_combout\ = (\u0|count\(12) & (\u0|count\(14) & \u0|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(12),
	datac => \u0|count\(14),
	datad => \u0|count\(13),
	combout => \u0|LessThan0~0_combout\);

-- Location: LCCOMB_X35_Y49_N20
\u0|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~1_combout\ = (\u0|count\(2)) # (((\u0|count\(3)) # (\u0|count\(1))) # (!\u0|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(2),
	datab => \u0|count\(0),
	datac => \u0|count\(3),
	datad => \u0|count\(1),
	combout => \u0|LessThan0~1_combout\);

-- Location: LCCOMB_X35_Y49_N6
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

-- Location: LCCOMB_X35_Y49_N10
\u0|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~3_combout\ = (\u0|count\(6)) # ((\u0|count\(7)) # ((\u0|LessThan0~1_combout\ & \u0|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|LessThan0~1_combout\,
	datab => \u0|count\(6),
	datac => \u0|count\(7),
	datad => \u0|LessThan0~2_combout\,
	combout => \u0|LessThan0~3_combout\);

-- Location: LCCOMB_X47_Y50_N0
\u1|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count~0_combout\ = (\u1|Add0~22_combout\ & (((!\u1|Equal0~0_combout\) # (!\u1|Equal0~1_combout\)) # (!\u1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~2_combout\,
	datab => \u1|Equal0~1_combout\,
	datac => \u1|Add0~22_combout\,
	datad => \u1|Equal0~0_combout\,
	combout => \u1|count~0_combout\);

-- Location: LCCOMB_X33_Y47_N10
\u3|LessThan2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|LessThan2~32_combout\ = (\u3|x\(18)) # (\u3|x\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|x\(18),
	datab => \u3|x\(17),
	combout => \u3|LessThan2~32_combout\);

-- Location: LCCOMB_X33_Y49_N2
\u0|wait_time[9]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[9]~3_combout\ = (\u0|Add1~18_combout\ & ((\u0|wait_time[10]~0_combout\) # ((!\u0|wait_time[10]~1_combout\ & \u0|wait_time\(9))))) # (!\u0|Add1~18_combout\ & (!\u0|wait_time[10]~1_combout\ & (\u0|wait_time\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add1~18_combout\,
	datab => \u0|wait_time[10]~1_combout\,
	datac => \u0|wait_time\(9),
	datad => \u0|wait_time[10]~0_combout\,
	combout => \u0|wait_time[9]~3_combout\);

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

-- Location: LCCOMB_X47_Y50_N2
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

-- Location: LCFF_X47_Y50_N3
\u1|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~0_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(0));

-- Location: LCCOMB_X47_Y50_N4
\u1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~2_combout\ = (\u1|count\(1) & (!\u1|Add0~1\)) # (!\u1|count\(1) & ((\u1|Add0~1\) # (GND)))
-- \u1|Add0~3\ = CARRY((!\u1|Add0~1\) # (!\u1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(1),
	datad => VCC,
	cin => \u1|Add0~1\,
	combout => \u1|Add0~2_combout\,
	cout => \u1|Add0~3\);

-- Location: LCFF_X47_Y50_N5
\u1|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~2_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(1));

-- Location: LCCOMB_X47_Y50_N6
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

-- Location: LCCOMB_X47_Y50_N8
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

-- Location: LCFF_X47_Y50_N9
\u1|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~6_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(3));

-- Location: LCCOMB_X47_Y50_N10
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

-- Location: LCCOMB_X47_Y50_N14
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

-- Location: LCCOMB_X48_Y50_N14
\u1|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count~3_combout\ = (\u1|Add0~12_combout\ & (((!\u1|Equal0~2_combout\) # (!\u1|Equal0~0_combout\)) # (!\u1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~1_combout\,
	datab => \u1|Equal0~0_combout\,
	datac => \u1|Equal0~2_combout\,
	datad => \u1|Add0~12_combout\,
	combout => \u1|count~3_combout\);

-- Location: LCFF_X48_Y50_N15
\u1|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~3_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(6));

-- Location: LCCOMB_X47_Y50_N16
\u1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~14_combout\ = (\u1|count\(7) & (!\u1|Add0~13\)) # (!\u1|count\(7) & ((\u1|Add0~13\) # (GND)))
-- \u1|Add0~15\ = CARRY((!\u1|Add0~13\) # (!\u1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(7),
	datad => VCC,
	cin => \u1|Add0~13\,
	combout => \u1|Add0~14_combout\,
	cout => \u1|Add0~15\);

-- Location: LCCOMB_X47_Y50_N28
\u1|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count~2_combout\ = (\u1|Add0~14_combout\ & (((!\u1|Equal0~0_combout\) # (!\u1|Equal0~1_combout\)) # (!\u1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~2_combout\,
	datab => \u1|Equal0~1_combout\,
	datac => \u1|Add0~14_combout\,
	datad => \u1|Equal0~0_combout\,
	combout => \u1|count~2_combout\);

-- Location: LCFF_X47_Y50_N29
\u1|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~2_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(7));

-- Location: LCCOMB_X48_Y50_N10
\u1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Equal0~1_combout\ = (!\u1|count\(5) & (\u1|count\(8) & (\u1|count\(6) & \u1|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(5),
	datab => \u1|count\(8),
	datac => \u1|count\(6),
	datad => \u1|count\(7),
	combout => \u1|Equal0~1_combout\);

-- Location: LCCOMB_X47_Y50_N18
\u1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~16_combout\ = (\u1|count\(8) & (\u1|Add0~15\ $ (GND))) # (!\u1|count\(8) & (!\u1|Add0~15\ & VCC))
-- \u1|Add0~17\ = CARRY((\u1|count\(8) & !\u1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(8),
	datad => VCC,
	cin => \u1|Add0~15\,
	combout => \u1|Add0~16_combout\,
	cout => \u1|Add0~17\);

-- Location: LCCOMB_X47_Y50_N26
\u1|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count~1_combout\ = (\u1|Add0~16_combout\ & (((!\u1|Equal0~1_combout\) # (!\u1|Equal0~0_combout\)) # (!\u1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~2_combout\,
	datab => \u1|Equal0~0_combout\,
	datac => \u1|Equal0~1_combout\,
	datad => \u1|Add0~16_combout\,
	combout => \u1|count~1_combout\);

-- Location: LCFF_X47_Y50_N27
\u1|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~1_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(8));

-- Location: LCCOMB_X47_Y50_N20
\u1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~18_combout\ = (\u1|count\(9) & (!\u1|Add0~17\)) # (!\u1|count\(9) & ((\u1|Add0~17\) # (GND)))
-- \u1|Add0~19\ = CARRY((!\u1|Add0~17\) # (!\u1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(9),
	datad => VCC,
	cin => \u1|Add0~17\,
	combout => \u1|Add0~18_combout\,
	cout => \u1|Add0~19\);

-- Location: LCFF_X47_Y50_N23
\u1|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~20_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(10));

-- Location: LCFF_X47_Y50_N21
\u1|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~18_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(9));

-- Location: LCCOMB_X48_Y50_N30
\u1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Equal0~0_combout\ = (\u1|count\(11) & (!\u1|count\(10) & (!\u1|count\(9) & \u1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(11),
	datab => \u1|count\(10),
	datac => \u1|count\(9),
	datad => \u1|count\(0),
	combout => \u1|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y50_N30
\u1|count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count~4_combout\ = (\u1|Add0~4_combout\ & (((!\u1|Equal0~1_combout\) # (!\u1|Equal0~0_combout\)) # (!\u1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~2_combout\,
	datab => \u1|Equal0~0_combout\,
	datac => \u1|Equal0~1_combout\,
	datad => \u1|Add0~4_combout\,
	combout => \u1|count~4_combout\);

-- Location: LCFF_X47_Y50_N31
\u1|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~4_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(2));

-- Location: LCFF_X47_Y50_N11
\u1|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~8_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(4));

-- Location: LCCOMB_X48_Y50_N4
\u1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Equal0~2_combout\ = (!\u1|count\(3) & (\u1|count\(1) & (!\u1|count\(2) & !\u1|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(3),
	datab => \u1|count\(1),
	datac => \u1|count\(2),
	datad => \u1|count\(4),
	combout => \u1|Equal0~2_combout\);

-- Location: LCCOMB_X48_Y50_N26
\u1|clkint~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|clkint~0_combout\ = \u1|clkint~regout\ $ (((\u1|Equal0~1_combout\ & (\u1|Equal0~2_combout\ & \u1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~1_combout\,
	datab => \u1|Equal0~2_combout\,
	datac => \u1|clkint~regout\,
	datad => \u1|Equal0~0_combout\,
	combout => \u1|clkint~0_combout\);

-- Location: LCFF_X48_Y50_N27
\u1|clkint\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|clkint~0_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|clkint~regout\);

-- Location: LCCOMB_X33_Y49_N4
\u0|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~0_combout\ = \u0|wait_time\(0) $ (VCC)
-- \u0|Add1~1\ = CARRY(\u0|wait_time\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|wait_time\(0),
	datad => VCC,
	combout => \u0|Add1~0_combout\,
	cout => \u0|Add1~1\);

-- Location: LCCOMB_X34_Y49_N28
\u0|wait_time[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[0]~8_combout\ = (\u0|wait_time[10]~0_combout\ & ((\u0|Add1~0_combout\) # ((\u0|wait_time\(0) & !\areset~combout\)))) # (!\u0|wait_time[10]~0_combout\ & (((\u0|wait_time\(0) & !\areset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time[10]~0_combout\,
	datab => \u0|Add1~0_combout\,
	datac => \u0|wait_time\(0),
	datad => \areset~combout\,
	combout => \u0|wait_time[0]~8_combout\);

-- Location: LCFF_X34_Y49_N29
\u0|wait_time[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(0));

-- Location: LCCOMB_X33_Y49_N6
\u0|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~2_combout\ = (\u0|wait_time\(1) & (!\u0|Add1~1\)) # (!\u0|wait_time\(1) & ((\u0|Add1~1\) # (GND)))
-- \u0|Add1~3\ = CARRY((!\u0|Add1~1\) # (!\u0|wait_time\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(1),
	datad => VCC,
	cin => \u0|Add1~1\,
	combout => \u0|Add1~2_combout\,
	cout => \u0|Add1~3\);

-- Location: LCCOMB_X34_Y49_N4
\u0|wait_time[10]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[10]~0_combout\ = (\areset~combout\ & (!\u0|process_0~0_combout\ & ((!\u0|Equal0~0_combout\) # (!\u0|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~3_combout\,
	datab => \areset~combout\,
	datac => \u0|Equal0~0_combout\,
	datad => \u0|process_0~0_combout\,
	combout => \u0|wait_time[10]~0_combout\);

-- Location: LCCOMB_X34_Y49_N26
\u0|wait_time[8]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[8]~4_combout\ = (\u0|Add1~16_combout\ & ((\u0|wait_time[10]~0_combout\) # ((\u0|wait_time\(8) & !\u0|wait_time[10]~1_combout\)))) # (!\u0|Add1~16_combout\ & (((\u0|wait_time\(8) & !\u0|wait_time[10]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add1~16_combout\,
	datab => \u0|wait_time[10]~0_combout\,
	datac => \u0|wait_time\(8),
	datad => \u0|wait_time[10]~1_combout\,
	combout => \u0|wait_time[8]~4_combout\);

-- Location: LCFF_X34_Y49_N27
\u0|wait_time[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(8));

-- Location: LCCOMB_X33_Y49_N0
\u0|wait_time[10]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[10]~2_combout\ = (\u0|Add1~20_combout\ & ((\u0|wait_time[10]~0_combout\) # ((!\u0|wait_time[10]~1_combout\ & \u0|wait_time\(10))))) # (!\u0|Add1~20_combout\ & (!\u0|wait_time[10]~1_combout\ & (\u0|wait_time\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add1~20_combout\,
	datab => \u0|wait_time[10]~1_combout\,
	datac => \u0|wait_time\(10),
	datad => \u0|wait_time[10]~0_combout\,
	combout => \u0|wait_time[10]~2_combout\);

-- Location: LCFF_X33_Y49_N1
\u0|wait_time[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(10));

-- Location: LCCOMB_X33_Y49_N26
\u0|wait_time[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[6]~6_combout\ = (\u0|Add1~12_combout\ & ((\u0|wait_time[10]~0_combout\) # ((!\u0|wait_time[10]~1_combout\ & \u0|wait_time\(6))))) # (!\u0|Add1~12_combout\ & (!\u0|wait_time[10]~1_combout\ & (\u0|wait_time\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add1~12_combout\,
	datab => \u0|wait_time[10]~1_combout\,
	datac => \u0|wait_time\(6),
	datad => \u0|wait_time[10]~0_combout\,
	combout => \u0|wait_time[6]~6_combout\);

-- Location: LCFF_X33_Y49_N27
\u0|wait_time[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(6));

-- Location: LCCOMB_X33_Y49_N28
\u0|wait_time[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[4]~7_combout\ = (\u0|Add1~8_combout\ & ((\u0|wait_time[10]~0_combout\) # ((!\u0|wait_time[10]~1_combout\ & \u0|wait_time\(4))))) # (!\u0|Add1~8_combout\ & (!\u0|wait_time[10]~1_combout\ & (\u0|wait_time\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add1~8_combout\,
	datab => \u0|wait_time[10]~1_combout\,
	datac => \u0|wait_time\(4),
	datad => \u0|wait_time[10]~0_combout\,
	combout => \u0|wait_time[4]~7_combout\);

-- Location: LCFF_X33_Y49_N29
\u0|wait_time[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(4));

-- Location: LCCOMB_X33_Y49_N8
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

-- Location: LCFF_X33_Y49_N9
\u0|wait_time[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|Add1~4_combout\,
	ena => \u0|wait_time[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(2));

-- Location: LCCOMB_X33_Y49_N14
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

-- Location: LCFF_X33_Y49_N15
\u0|wait_time[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|Add1~10_combout\,
	ena => \u0|wait_time[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(5));

-- Location: LCCOMB_X34_Y49_N12
\u0|wait_time[7]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[7]~5_combout\ = (\u0|wait_time[10]~1_combout\ & (\u0|wait_time[10]~0_combout\ & ((\u0|Add1~14_combout\)))) # (!\u0|wait_time[10]~1_combout\ & ((\u0|wait_time\(7)) # ((\u0|wait_time[10]~0_combout\ & \u0|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time[10]~1_combout\,
	datab => \u0|wait_time[10]~0_combout\,
	datac => \u0|wait_time\(7),
	datad => \u0|Add1~14_combout\,
	combout => \u0|wait_time[7]~5_combout\);

-- Location: LCFF_X34_Y49_N13
\u0|wait_time[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(7));

-- Location: LCCOMB_X34_Y49_N14
\u0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal0~0_combout\ = (\u0|wait_time\(9) & (\u0|wait_time\(8) & (\u0|wait_time\(10) & \u0|wait_time\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(9),
	datab => \u0|wait_time\(8),
	datac => \u0|wait_time\(10),
	datad => \u0|wait_time\(7),
	combout => \u0|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y49_N10
\u0|wait_time[10]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[10]~1_combout\ = (\areset~combout\ & (((\u0|process_0~0_combout\) # (!\u0|Equal0~0_combout\)) # (!\u0|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~3_combout\,
	datab => \areset~combout\,
	datac => \u0|Equal0~0_combout\,
	datad => \u0|process_0~0_combout\,
	combout => \u0|wait_time[10]~1_combout\);

-- Location: LCFF_X33_Y49_N7
\u0|wait_time[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|Add1~2_combout\,
	ena => \u0|wait_time[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(1));

-- Location: LCCOMB_X34_Y49_N2
\u0|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal0~2_combout\ = (!\u0|wait_time\(2) & (!\u0|wait_time\(1) & !\u0|wait_time\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(2),
	datac => \u0|wait_time\(1),
	datad => \u0|wait_time\(0),
	combout => \u0|Equal0~2_combout\);

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

-- Location: LCCOMB_X34_Y49_N0
\u0|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|process_0~0_combout\ = (\u0|Equal0~1_combout\ & (\u0|Equal0~2_combout\ & (\u0|Equal0~0_combout\ & \hall_sens~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~1_combout\,
	datab => \u0|Equal0~2_combout\,
	datac => \u0|Equal0~0_combout\,
	datad => \hall_sens~combout\,
	combout => \u0|process_0~0_combout\);

-- Location: LCCOMB_X36_Y49_N0
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

-- Location: LCCOMB_X36_Y47_N0
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

-- Location: LCCOMB_X36_Y49_N16
\u0|count[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[8]~32_combout\ = (\u0|count\(8) & (\u0|count[7]~31\ $ (GND))) # (!\u0|count\(8) & (!\u0|count[7]~31\ & VCC))
-- \u0|count[8]~33\ = CARRY((\u0|count\(8) & !\u0|count[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(8),
	datad => VCC,
	cin => \u0|count[7]~31\,
	combout => \u0|count[8]~32_combout\,
	cout => \u0|count[8]~33\);

-- Location: LCFF_X36_Y49_N17
\u0|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[8]~32_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|tix_mem[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(8));

-- Location: LCCOMB_X36_Y49_N20
\u0|count[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[10]~36_combout\ = (\u0|count\(10) & (\u0|count[9]~35\ $ (GND))) # (!\u0|count\(10) & (!\u0|count[9]~35\ & VCC))
-- \u0|count[10]~37\ = CARRY((\u0|count\(10) & !\u0|count[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(10),
	datad => VCC,
	cin => \u0|count[9]~35\,
	combout => \u0|count[10]~36_combout\,
	cout => \u0|count[10]~37\);

-- Location: LCFF_X36_Y49_N21
\u0|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[10]~36_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|tix_mem[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(10));

-- Location: LCCOMB_X35_Y49_N24
\u0|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~4_combout\ = (\u0|count\(10) & ((\u0|count\(9)) # ((\u0|LessThan0~3_combout\ & \u0|count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|LessThan0~3_combout\,
	datab => \u0|count\(9),
	datac => \u0|count\(8),
	datad => \u0|count\(10),
	combout => \u0|LessThan0~4_combout\);

-- Location: LCCOMB_X33_Y49_N30
\u0|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal0~1_combout\ = (!\u0|wait_time\(3) & (\u0|wait_time\(4) & (!\u0|wait_time\(5) & \u0|wait_time\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(3),
	datab => \u0|wait_time\(4),
	datac => \u0|wait_time\(5),
	datad => \u0|wait_time\(6),
	combout => \u0|Equal0~1_combout\);

-- Location: LCCOMB_X34_Y49_N22
\u0|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal0~3_combout\ = (!\u0|wait_time\(2) & (!\u0|wait_time\(1) & (\u0|Equal0~1_combout\ & !\u0|wait_time\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(2),
	datab => \u0|wait_time\(1),
	datac => \u0|Equal0~1_combout\,
	datad => \u0|wait_time\(0),
	combout => \u0|Equal0~3_combout\);

-- Location: LCCOMB_X34_Y49_N16
\u0|tix_mem[14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem[14]~1_combout\ = (\u0|count\(15)) # ((\hall_sens~combout\ & (\u0|Equal0~0_combout\ & \u0|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(15),
	datab => \hall_sens~combout\,
	datac => \u0|Equal0~0_combout\,
	datad => \u0|Equal0~3_combout\,
	combout => \u0|tix_mem[14]~1_combout\);

-- Location: LCCOMB_X35_Y49_N2
\u0|tix_mem[14]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem[14]~2_combout\ = (\u0|tix_mem[14]~1_combout\) # ((\u0|LessThan0~0_combout\ & ((\u0|count\(11)) # (\u0|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|LessThan0~0_combout\,
	datab => \u0|count\(11),
	datac => \u0|LessThan0~4_combout\,
	datad => \u0|tix_mem[14]~1_combout\,
	combout => \u0|tix_mem[14]~2_combout\);

-- Location: LCFF_X36_Y49_N1
\u0|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[0]~16_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|tix_mem[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(0));

-- Location: LCCOMB_X36_Y49_N2
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

-- Location: LCFF_X36_Y49_N3
\u0|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[1]~18_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|tix_mem[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(1));

-- Location: LCCOMB_X36_Y49_N4
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

-- Location: LCFF_X36_Y49_N5
\u0|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[2]~20_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|tix_mem[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(2));

-- Location: LCCOMB_X36_Y49_N6
\u0|count[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[3]~22_combout\ = (\u0|count\(3) & (!\u0|count[2]~21\)) # (!\u0|count\(3) & ((\u0|count[2]~21\) # (GND)))
-- \u0|count[3]~23\ = CARRY((!\u0|count[2]~21\) # (!\u0|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(3),
	datad => VCC,
	cin => \u0|count[2]~21\,
	combout => \u0|count[3]~22_combout\,
	cout => \u0|count[3]~23\);

-- Location: LCCOMB_X36_Y49_N8
\u0|count[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[4]~24_combout\ = (\u0|count\(4) & (\u0|count[3]~23\ $ (GND))) # (!\u0|count\(4) & (!\u0|count[3]~23\ & VCC))
-- \u0|count[4]~25\ = CARRY((\u0|count\(4) & !\u0|count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(4),
	datad => VCC,
	cin => \u0|count[3]~23\,
	combout => \u0|count[4]~24_combout\,
	cout => \u0|count[4]~25\);

-- Location: LCFF_X36_Y49_N9
\u0|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[4]~24_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|tix_mem[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(4));

-- Location: LCCOMB_X36_Y49_N10
\u0|count[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[5]~26_combout\ = (\u0|count\(5) & (!\u0|count[4]~25\)) # (!\u0|count\(5) & ((\u0|count[4]~25\) # (GND)))
-- \u0|count[5]~27\ = CARRY((!\u0|count[4]~25\) # (!\u0|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(5),
	datad => VCC,
	cin => \u0|count[4]~25\,
	combout => \u0|count[5]~26_combout\,
	cout => \u0|count[5]~27\);

-- Location: LCCOMB_X36_Y49_N12
\u0|count[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[6]~28_combout\ = (\u0|count\(6) & (\u0|count[5]~27\ $ (GND))) # (!\u0|count\(6) & (!\u0|count[5]~27\ & VCC))
-- \u0|count[6]~29\ = CARRY((\u0|count\(6) & !\u0|count[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(6),
	datad => VCC,
	cin => \u0|count[5]~27\,
	combout => \u0|count[6]~28_combout\,
	cout => \u0|count[6]~29\);

-- Location: LCCOMB_X36_Y49_N14
\u0|count[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[7]~30_combout\ = (\u0|count\(7) & (!\u0|count[6]~29\)) # (!\u0|count\(7) & ((\u0|count[6]~29\) # (GND)))
-- \u0|count[7]~31\ = CARRY((!\u0|count[6]~29\) # (!\u0|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(7),
	datad => VCC,
	cin => \u0|count[6]~29\,
	combout => \u0|count[7]~30_combout\,
	cout => \u0|count[7]~31\);

-- Location: LCFF_X36_Y49_N15
\u0|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[7]~30_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|tix_mem[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(7));

-- Location: LCCOMB_X36_Y49_N18
\u0|count[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[9]~34_combout\ = (\u0|count\(9) & (!\u0|count[8]~33\)) # (!\u0|count\(9) & ((\u0|count[8]~33\) # (GND)))
-- \u0|count[9]~35\ = CARRY((!\u0|count[8]~33\) # (!\u0|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(9),
	datad => VCC,
	cin => \u0|count[8]~33\,
	combout => \u0|count[9]~34_combout\,
	cout => \u0|count[9]~35\);

-- Location: LCFF_X36_Y49_N19
\u0|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[9]~34_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|tix_mem[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(9));

-- Location: LCCOMB_X36_Y49_N22
\u0|count[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[11]~38_combout\ = (\u0|count\(11) & (!\u0|count[10]~37\)) # (!\u0|count\(11) & ((\u0|count[10]~37\) # (GND)))
-- \u0|count[11]~39\ = CARRY((!\u0|count[10]~37\) # (!\u0|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(11),
	datad => VCC,
	cin => \u0|count[10]~37\,
	combout => \u0|count[11]~38_combout\,
	cout => \u0|count[11]~39\);

-- Location: LCFF_X36_Y49_N23
\u0|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[11]~38_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|tix_mem[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(11));

-- Location: LCCOMB_X36_Y49_N24
\u0|count[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[12]~40_combout\ = (\u0|count\(12) & (\u0|count[11]~39\ $ (GND))) # (!\u0|count\(12) & (!\u0|count[11]~39\ & VCC))
-- \u0|count[12]~41\ = CARRY((\u0|count\(12) & !\u0|count[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(12),
	datad => VCC,
	cin => \u0|count[11]~39\,
	combout => \u0|count[12]~40_combout\,
	cout => \u0|count[12]~41\);

-- Location: LCCOMB_X36_Y49_N26
\u0|count[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[13]~42_combout\ = (\u0|count\(13) & (!\u0|count[12]~41\)) # (!\u0|count\(13) & ((\u0|count[12]~41\) # (GND)))
-- \u0|count[13]~43\ = CARRY((!\u0|count[12]~41\) # (!\u0|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(13),
	datad => VCC,
	cin => \u0|count[12]~41\,
	combout => \u0|count[13]~42_combout\,
	cout => \u0|count[13]~43\);

-- Location: LCFF_X36_Y49_N27
\u0|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[13]~42_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|tix_mem[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(13));

-- Location: LCCOMB_X36_Y49_N28
\u0|count[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[14]~44_combout\ = (\u0|count\(14) & (\u0|count[13]~43\ $ (GND))) # (!\u0|count\(14) & (!\u0|count[13]~43\ & VCC))
-- \u0|count[14]~45\ = CARRY((\u0|count\(14) & !\u0|count[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(14),
	datad => VCC,
	cin => \u0|count[13]~43\,
	combout => \u0|count[14]~44_combout\,
	cout => \u0|count[14]~45\);

-- Location: LCFF_X36_Y49_N29
\u0|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[14]~44_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|tix_mem[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(14));

-- Location: LCCOMB_X36_Y49_N30
\u0|count[15]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[15]~46_combout\ = \u0|count[14]~45\ $ (\u0|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u0|count\(15),
	cin => \u0|count[14]~45\,
	combout => \u0|count[15]~46_combout\);

-- Location: LCFF_X36_Y49_N31
\u0|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[15]~46_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|tix_mem[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(15));

-- Location: LCCOMB_X34_Y49_N20
\u0|tix_mem~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem~18_combout\ = (\u0|process_0~0_combout\ & \u0|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|process_0~0_combout\,
	datad => \u0|count\(15),
	combout => \u0|tix_mem~18_combout\);

-- Location: LCCOMB_X35_Y49_N14
\u0|tix_mem[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem[0]~3_combout\ = (\areset~combout\ & \u0|tix_mem[14]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \areset~combout\,
	datad => \u0|tix_mem[14]~2_combout\,
	combout => \u0|tix_mem[0]~3_combout\);

-- Location: LCFF_X34_Y49_N21
\u0|tix_mem[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem~18_combout\,
	ena => \u0|tix_mem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(15));

-- Location: LCFF_X35_Y49_N15
\u0|calc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|process_0~0_combout\,
	sload => VCC,
	ena => \areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|calc~regout\);

-- Location: LCFF_X35_Y48_N25
\u3|tix_int[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(15),
	aclr => \ALT_INV_areset~combout\,
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|tix_int\(15));

-- Location: LCCOMB_X35_Y49_N18
\u0|tix_mem~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem~14_combout\ = (\u0|process_0~0_combout\ & \u0|count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|process_0~0_combout\,
	datad => \u0|count\(11),
	combout => \u0|tix_mem~14_combout\);

-- Location: LCFF_X35_Y49_N19
\u0|tix_mem[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem~14_combout\,
	ena => \u0|tix_mem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(11));

-- Location: LCFF_X35_Y48_N29
\u3|tix_int[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(11),
	aclr => \ALT_INV_areset~combout\,
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|tix_int\(11));

-- Location: LCFF_X36_Y49_N25
\u0|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[12]~40_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|tix_mem[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(12));

-- Location: LCCOMB_X35_Y49_N28
\u0|tix_mem~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem~15_combout\ = (\u0|process_0~0_combout\ & \u0|count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|process_0~0_combout\,
	datad => \u0|count\(12),
	combout => \u0|tix_mem~15_combout\);

-- Location: LCFF_X35_Y49_N29
\u0|tix_mem[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem~15_combout\,
	ena => \u0|tix_mem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(12));

-- Location: LCFF_X35_Y48_N7
\u3|tix_int[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(12),
	aclr => \ALT_INV_areset~combout\,
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|tix_int\(12));

-- Location: LCCOMB_X34_Y49_N30
\u0|tix_mem~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem~16_combout\ = (\u0|count\(13) & \u0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|count\(13),
	datad => \u0|process_0~0_combout\,
	combout => \u0|tix_mem~16_combout\);

-- Location: LCFF_X35_Y49_N7
\u0|tix_mem[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem~16_combout\,
	sload => VCC,
	ena => \u0|tix_mem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(13));

-- Location: LCFF_X35_Y48_N11
\u3|tix_int[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(13),
	aclr => \ALT_INV_areset~combout\,
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|tix_int\(13));

-- Location: LCCOMB_X36_Y48_N4
\u3|rpm[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|rpm[6]~2_combout\ = (\u3|tix_int\(14) & (\u3|tix_int\(12) & \u3|tix_int\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(14),
	datac => \u3|tix_int\(12),
	datad => \u3|tix_int\(13),
	combout => \u3|rpm[6]~2_combout\);

-- Location: LCCOMB_X34_Y49_N18
\u0|tix_mem~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem~12_combout\ = (\u0|process_0~0_combout\ & \u0|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|process_0~0_combout\,
	datad => \u0|count\(9),
	combout => \u0|tix_mem~12_combout\);

-- Location: LCFF_X34_Y49_N19
\u0|tix_mem[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem~12_combout\,
	ena => \u0|tix_mem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(9));

-- Location: LCCOMB_X33_Y48_N26
\u3|tix_int[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|tix_int[9]~feeder_combout\ = \u0|tix_mem\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|tix_mem\(9),
	combout => \u3|tix_int[9]~feeder_combout\);

-- Location: LCFF_X33_Y48_N27
\u3|tix_int[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|tix_int[9]~feeder_combout\,
	aclr => \ALT_INV_areset~combout\,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|tix_int\(9));

-- Location: LCCOMB_X35_Y49_N16
\u0|tix_mem~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem~13_combout\ = (\u0|process_0~0_combout\ & \u0|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|process_0~0_combout\,
	datad => \u0|count\(10),
	combout => \u0|tix_mem~13_combout\);

-- Location: LCFF_X35_Y49_N17
\u0|tix_mem[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem~13_combout\,
	ena => \u0|tix_mem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(10));

-- Location: LCFF_X33_Y48_N25
\u3|tix_int[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(10),
	aclr => \ALT_INV_areset~combout\,
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|tix_int\(10));

-- Location: LCFF_X36_Y49_N13
\u0|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[6]~28_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|tix_mem[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(6));

-- Location: LCCOMB_X35_Y49_N0
\u0|tix_mem~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem~9_combout\ = (\u0|process_0~0_combout\ & \u0|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|process_0~0_combout\,
	datac => \u0|count\(6),
	combout => \u0|tix_mem~9_combout\);

-- Location: LCFF_X35_Y49_N1
\u0|tix_mem[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem~9_combout\,
	ena => \u0|tix_mem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(6));

-- Location: LCCOMB_X33_Y48_N12
\u3|tix_int[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|tix_int[6]~feeder_combout\ = \u0|tix_mem\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|tix_mem\(6),
	combout => \u3|tix_int[6]~feeder_combout\);

-- Location: LCFF_X33_Y48_N13
\u3|tix_int[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|tix_int[6]~feeder_combout\,
	aclr => \ALT_INV_areset~combout\,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|tix_int\(6));

-- Location: LCCOMB_X34_Y49_N24
\u0|tix_mem~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem~10_combout\ = (\u0|process_0~0_combout\ & \u0|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|process_0~0_combout\,
	datad => \u0|count\(7),
	combout => \u0|tix_mem~10_combout\);

-- Location: LCFF_X34_Y49_N25
\u0|tix_mem[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem~10_combout\,
	ena => \u0|tix_mem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(7));

-- Location: LCFF_X33_Y48_N11
\u3|tix_int[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(7),
	aclr => \ALT_INV_areset~combout\,
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|tix_int\(7));

-- Location: LCFF_X36_Y49_N11
\u0|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[5]~26_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|tix_mem[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(5));

-- Location: LCCOMB_X35_Y49_N22
\u0|tix_mem~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem~8_combout\ = (\u0|process_0~0_combout\ & \u0|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|process_0~0_combout\,
	datac => \u0|count\(5),
	combout => \u0|tix_mem~8_combout\);

-- Location: LCFF_X35_Y49_N23
\u0|tix_mem[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem~8_combout\,
	ena => \u0|tix_mem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(5));

-- Location: LCFF_X33_Y48_N1
\u3|tix_int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(5),
	aclr => \ALT_INV_areset~combout\,
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|tix_int\(5));

-- Location: LCCOMB_X33_Y48_N10
\u3|rpm[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|rpm[6]~3_combout\ = (\u3|tix_int\(6)) # ((\u3|tix_int\(7)) # ((\u3|tix_int\(4) & \u3|tix_int\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(4),
	datab => \u3|tix_int\(6),
	datac => \u3|tix_int\(7),
	datad => \u3|tix_int\(5),
	combout => \u3|rpm[6]~3_combout\);

-- Location: LCCOMB_X33_Y48_N24
\u3|rpm[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|rpm[6]~4_combout\ = (\u3|tix_int\(10) & ((\u3|tix_int\(9)) # ((\u3|tix_int\(8) & \u3|rpm[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(8),
	datab => \u3|tix_int\(9),
	datac => \u3|tix_int\(10),
	datad => \u3|rpm[6]~3_combout\,
	combout => \u3|rpm[6]~4_combout\);

-- Location: LCCOMB_X34_Y48_N8
\u3|rpm[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|rpm[6]~5_combout\ = (\u3|rpm[6]~2_combout\ & ((\u3|tix_int\(11)) # (\u3|rpm[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|tix_int\(11),
	datac => \u3|rpm[6]~2_combout\,
	datad => \u3|rpm[6]~4_combout\,
	combout => \u3|rpm[6]~5_combout\);

-- Location: LCCOMB_X36_Y48_N6
\u3|rpm[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|rpm[6]~0_combout\ = (!\u3|tix_int\(14) & (!\u3|tix_int\(12) & !\u3|tix_int\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(14),
	datac => \u3|tix_int\(12),
	datad => \u3|tix_int\(13),
	combout => \u3|rpm[6]~0_combout\);

-- Location: LCCOMB_X35_Y49_N26
\u0|tix_mem~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem~11_combout\ = (\u0|process_0~0_combout\ & \u0|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|process_0~0_combout\,
	datac => \u0|count\(8),
	combout => \u0|tix_mem~11_combout\);

-- Location: LCFF_X35_Y49_N27
\u0|tix_mem[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem~11_combout\,
	ena => \u0|tix_mem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(8));

-- Location: LCFF_X33_Y48_N17
\u3|tix_int[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(8),
	aclr => \ALT_INV_areset~combout\,
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|tix_int\(8));

-- Location: LCCOMB_X35_Y49_N4
\u0|tix_mem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem~0_combout\ = (!\u0|count\(0)) # (!\u0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|process_0~0_combout\,
	datac => \u0|count\(0),
	combout => \u0|tix_mem~0_combout\);

-- Location: LCFF_X35_Y49_N5
\u0|tix_mem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem~0_combout\,
	ena => \u0|tix_mem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(0));

-- Location: LCCOMB_X33_Y48_N28
\u3|tix_int[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|tix_int[0]~feeder_combout\ = \u0|tix_mem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|tix_mem\(0),
	combout => \u3|tix_int[0]~feeder_combout\);

-- Location: LCFF_X33_Y48_N29
\u3|tix_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|tix_int[0]~feeder_combout\,
	aclr => \ALT_INV_areset~combout\,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|tix_int\(0));

-- Location: LCFF_X36_Y49_N7
\u0|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[3]~22_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|tix_mem[14]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(3));

-- Location: LCCOMB_X34_Y49_N6
\u0|tix_mem~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem~6_combout\ = (\u0|count\(3) & \u0|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|count\(3),
	datad => \u0|process_0~0_combout\,
	combout => \u0|tix_mem~6_combout\);

-- Location: LCFF_X34_Y49_N7
\u0|tix_mem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem~6_combout\,
	ena => \u0|tix_mem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(3));

-- Location: LCFF_X33_Y48_N23
\u3|tix_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(3),
	aclr => \ALT_INV_areset~combout\,
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|tix_int\(3));

-- Location: LCCOMB_X34_Y49_N8
\u0|tix_mem~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem~4_combout\ = (\u0|process_0~0_combout\ & \u0|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|process_0~0_combout\,
	datad => \u0|count\(1),
	combout => \u0|tix_mem~4_combout\);

-- Location: LCFF_X34_Y49_N9
\u0|tix_mem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem~4_combout\,
	ena => \u0|tix_mem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(1));

-- Location: LCCOMB_X33_Y48_N2
\u3|tix_int[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|tix_int[1]~feeder_combout\ = \u0|tix_mem\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|tix_mem\(1),
	combout => \u3|tix_int[1]~feeder_combout\);

-- Location: LCFF_X33_Y48_N3
\u3|tix_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|tix_int[1]~feeder_combout\,
	aclr => \ALT_INV_areset~combout\,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|tix_int\(1));

-- Location: LCCOMB_X33_Y48_N22
\u3|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|LessThan0~0_combout\ = (\u3|tix_int\(3) & ((\u3|tix_int\(2)) # ((\u3|tix_int\(0)) # (\u3|tix_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(2),
	datab => \u3|tix_int\(0),
	datac => \u3|tix_int\(3),
	datad => \u3|tix_int\(1),
	combout => \u3|LessThan0~0_combout\);

-- Location: LCCOMB_X35_Y49_N12
\u0|tix_mem~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem~7_combout\ = (\u0|process_0~0_combout\ & \u0|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|process_0~0_combout\,
	datac => \u0|count\(4),
	combout => \u0|tix_mem~7_combout\);

-- Location: LCFF_X35_Y49_N13
\u0|tix_mem[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem~7_combout\,
	ena => \u0|tix_mem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(4));

-- Location: LCCOMB_X33_Y48_N6
\u3|tix_int[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|tix_int[4]~feeder_combout\ = \u0|tix_mem\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|tix_mem\(4),
	combout => \u3|tix_int[4]~feeder_combout\);

-- Location: LCFF_X33_Y48_N7
\u3|tix_int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|tix_int[4]~feeder_combout\,
	aclr => \ALT_INV_areset~combout\,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|tix_int\(4));

-- Location: LCCOMB_X33_Y48_N0
\u3|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|LessThan0~1_combout\ = (\u3|tix_int\(6)) # ((\u3|LessThan0~0_combout\ & (\u3|tix_int\(5) & \u3|tix_int\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(6),
	datab => \u3|LessThan0~0_combout\,
	datac => \u3|tix_int\(5),
	datad => \u3|tix_int\(4),
	combout => \u3|LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y48_N16
\u3|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|LessThan0~2_combout\ = (\u3|tix_int\(7) & (\u3|tix_int\(9) & (\u3|tix_int\(8) & \u3|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(7),
	datab => \u3|tix_int\(9),
	datac => \u3|tix_int\(8),
	datad => \u3|LessThan0~1_combout\,
	combout => \u3|LessThan0~2_combout\);

-- Location: LCCOMB_X34_Y48_N6
\u3|rpm[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|rpm[6]~1_combout\ = (\u3|rpm[6]~0_combout\ & (((!\u3|tix_int\(10) & !\u3|LessThan0~2_combout\)) # (!\u3|tix_int\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(10),
	datab => \u3|tix_int\(11),
	datac => \u3|rpm[6]~0_combout\,
	datad => \u3|LessThan0~2_combout\,
	combout => \u3|rpm[6]~1_combout\);

-- Location: LCCOMB_X33_Y48_N14
\u3|rpm[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|rpm[6]~6_combout\ = (\u0|calc~regout\) # ((\u3|tix_int\(15)) # ((\u3|rpm[6]~5_combout\) # (\u3|rpm[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|calc~regout\,
	datab => \u3|tix_int\(15),
	datac => \u3|rpm[6]~5_combout\,
	datad => \u3|rpm[6]~1_combout\,
	combout => \u3|rpm[6]~6_combout\);

-- Location: LCCOMB_X33_Y48_N18
\u3|Add1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add1~19_combout\ = (\u3|Add1~5_combout\ & !\u3|rpm[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Add1~5_combout\,
	datac => \u3|rpm[6]~6_combout\,
	combout => \u3|Add1~19_combout\);

-- Location: LCCOMB_X34_Y48_N10
\u3|rpm[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|rpm[6]~7_combout\ = (!\u3|tix_int\(15) & (!\u3|rpm[6]~5_combout\ & !\u3|rpm[6]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|tix_int\(15),
	datac => \u3|rpm[6]~5_combout\,
	datad => \u3|rpm[6]~1_combout\,
	combout => \u3|rpm[6]~7_combout\);

-- Location: LCCOMB_X35_Y49_N30
\u0|tix_mem~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem~5_combout\ = (\u0|process_0~0_combout\ & \u0|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|process_0~0_combout\,
	datad => \u0|count\(2),
	combout => \u0|tix_mem~5_combout\);

-- Location: LCFF_X35_Y49_N31
\u0|tix_mem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem~5_combout\,
	ena => \u0|tix_mem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(2));

-- Location: LCFF_X33_Y48_N21
\u3|tix_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(2),
	aclr => \ALT_INV_areset~combout\,
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|tix_int\(2));

-- Location: LCCOMB_X34_Y48_N14
\u3|x[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|x[1]~22_combout\ = (\u3|tix_int\(1) & ((\u3|x\(1) & (!\u3|x[0]~21\)) # (!\u3|x\(1) & ((\u3|x[0]~21\) # (GND))))) # (!\u3|tix_int\(1) & ((\u3|x\(1) & (\u3|x[0]~21\ & VCC)) # (!\u3|x\(1) & (!\u3|x[0]~21\))))
-- \u3|x[1]~23\ = CARRY((\u3|tix_int\(1) & ((!\u3|x[0]~21\) # (!\u3|x\(1)))) # (!\u3|tix_int\(1) & (!\u3|x\(1) & !\u3|x[0]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(1),
	datab => \u3|x\(1),
	datad => VCC,
	cin => \u3|x[0]~21\,
	combout => \u3|x[1]~22_combout\,
	cout => \u3|x[1]~23\);

-- Location: LCFF_X34_Y48_N5
\u3|stop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|stop~0_combout\,
	aclr => \ALT_INV_areset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|stop~regout\);

-- Location: LCCOMB_X34_Y48_N4
\u3|stop~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|stop~0_combout\ = (\u0|calc~regout\) # ((\u3|rpm[6]~7_combout\ & (\u3|stop~regout\ & \u3|LessThan2~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rpm[6]~7_combout\,
	datab => \u0|calc~regout\,
	datac => \u3|stop~regout\,
	datad => \u3|LessThan2~33_combout\,
	combout => \u3|stop~0_combout\);

-- Location: LCFF_X34_Y48_N15
\u3|x[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|x[1]~22_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|calc~regout\,
	ena => \u3|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|x\(1));

-- Location: LCCOMB_X34_Y48_N16
\u3|x[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|x[2]~24_combout\ = ((\u3|x\(2) $ (\u3|tix_int\(2) $ (\u3|x[1]~23\)))) # (GND)
-- \u3|x[2]~25\ = CARRY((\u3|x\(2) & ((!\u3|x[1]~23\) # (!\u3|tix_int\(2)))) # (!\u3|x\(2) & (!\u3|tix_int\(2) & !\u3|x[1]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|x\(2),
	datab => \u3|tix_int\(2),
	datad => VCC,
	cin => \u3|x[1]~23\,
	combout => \u3|x[2]~24_combout\,
	cout => \u3|x[2]~25\);

-- Location: LCCOMB_X34_Y48_N18
\u3|x[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|x[3]~26_combout\ = (\u3|tix_int\(3) & ((\u3|x\(3) & (!\u3|x[2]~25\)) # (!\u3|x\(3) & ((\u3|x[2]~25\) # (GND))))) # (!\u3|tix_int\(3) & ((\u3|x\(3) & (\u3|x[2]~25\ & VCC)) # (!\u3|x\(3) & (!\u3|x[2]~25\))))
-- \u3|x[3]~27\ = CARRY((\u3|tix_int\(3) & ((!\u3|x[2]~25\) # (!\u3|x\(3)))) # (!\u3|tix_int\(3) & (!\u3|x\(3) & !\u3|x[2]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(3),
	datab => \u3|x\(3),
	datad => VCC,
	cin => \u3|x[2]~25\,
	combout => \u3|x[3]~26_combout\,
	cout => \u3|x[3]~27\);

-- Location: LCFF_X34_Y48_N19
\u3|x[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|x[3]~26_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|calc~regout\,
	ena => \u3|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|x\(3));

-- Location: LCCOMB_X34_Y48_N20
\u3|x[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|x[4]~28_combout\ = ((\u3|x\(4) $ (\u3|tix_int\(4) $ (\u3|x[3]~27\)))) # (GND)
-- \u3|x[4]~29\ = CARRY((\u3|x\(4) & ((!\u3|x[3]~27\) # (!\u3|tix_int\(4)))) # (!\u3|x\(4) & (!\u3|tix_int\(4) & !\u3|x[3]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|x\(4),
	datab => \u3|tix_int\(4),
	datad => VCC,
	cin => \u3|x[3]~27\,
	combout => \u3|x[4]~28_combout\,
	cout => \u3|x[4]~29\);

-- Location: LCCOMB_X34_Y48_N22
\u3|x[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|x[5]~30_combout\ = (\u3|tix_int\(5) & ((\u3|x\(5) & (!\u3|x[4]~29\)) # (!\u3|x\(5) & ((\u3|x[4]~29\) # (GND))))) # (!\u3|tix_int\(5) & ((\u3|x\(5) & (\u3|x[4]~29\ & VCC)) # (!\u3|x\(5) & (!\u3|x[4]~29\))))
-- \u3|x[5]~31\ = CARRY((\u3|tix_int\(5) & ((!\u3|x[4]~29\) # (!\u3|x\(5)))) # (!\u3|tix_int\(5) & (!\u3|x\(5) & !\u3|x[4]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(5),
	datab => \u3|x\(5),
	datad => VCC,
	cin => \u3|x[4]~29\,
	combout => \u3|x[5]~30_combout\,
	cout => \u3|x[5]~31\);

-- Location: LCFF_X34_Y48_N23
\u3|x[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|x[5]~30_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|calc~regout\,
	ena => \u3|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|x\(5));

-- Location: LCCOMB_X34_Y48_N26
\u3|x[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|x[7]~34_combout\ = ((\u3|tix_int\(7) $ (\u3|x\(7) $ (!\u3|x[6]~33\)))) # (GND)
-- \u3|x[7]~35\ = CARRY((\u3|tix_int\(7) & ((\u3|x\(7)) # (!\u3|x[6]~33\))) # (!\u3|tix_int\(7) & (\u3|x\(7) & !\u3|x[6]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(7),
	datab => \u3|x\(7),
	datad => VCC,
	cin => \u3|x[6]~33\,
	combout => \u3|x[7]~34_combout\,
	cout => \u3|x[7]~35\);

-- Location: LCFF_X34_Y48_N27
\u3|x[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|x[7]~34_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|calc~regout\,
	ena => \u3|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|x\(7));

-- Location: LCCOMB_X34_Y48_N28
\u3|x[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|x[8]~36_combout\ = (\u3|x\(8) & ((\u3|tix_int\(8) & (\u3|x[7]~35\ & VCC)) # (!\u3|tix_int\(8) & (!\u3|x[7]~35\)))) # (!\u3|x\(8) & ((\u3|tix_int\(8) & (!\u3|x[7]~35\)) # (!\u3|tix_int\(8) & ((\u3|x[7]~35\) # (GND)))))
-- \u3|x[8]~37\ = CARRY((\u3|x\(8) & (!\u3|tix_int\(8) & !\u3|x[7]~35\)) # (!\u3|x\(8) & ((!\u3|x[7]~35\) # (!\u3|tix_int\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|x\(8),
	datab => \u3|tix_int\(8),
	datad => VCC,
	cin => \u3|x[7]~35\,
	combout => \u3|x[8]~36_combout\,
	cout => \u3|x[8]~37\);

-- Location: LCCOMB_X34_Y48_N30
\u3|x[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|x[9]~38_combout\ = ((\u3|x\(9) $ (\u3|tix_int\(9) $ (!\u3|x[8]~37\)))) # (GND)
-- \u3|x[9]~39\ = CARRY((\u3|x\(9) & ((\u3|tix_int\(9)) # (!\u3|x[8]~37\))) # (!\u3|x\(9) & (\u3|tix_int\(9) & !\u3|x[8]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|x\(9),
	datab => \u3|tix_int\(9),
	datad => VCC,
	cin => \u3|x[8]~37\,
	combout => \u3|x[9]~38_combout\,
	cout => \u3|x[9]~39\);

-- Location: LCCOMB_X34_Y47_N0
\u3|x[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|x[10]~40_combout\ = (\u3|tix_int\(10) & ((\u3|x\(10) & (\u3|x[9]~39\ & VCC)) # (!\u3|x\(10) & (!\u3|x[9]~39\)))) # (!\u3|tix_int\(10) & ((\u3|x\(10) & (!\u3|x[9]~39\)) # (!\u3|x\(10) & ((\u3|x[9]~39\) # (GND)))))
-- \u3|x[10]~41\ = CARRY((\u3|tix_int\(10) & (!\u3|x\(10) & !\u3|x[9]~39\)) # (!\u3|tix_int\(10) & ((!\u3|x[9]~39\) # (!\u3|x\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(10),
	datab => \u3|x\(10),
	datad => VCC,
	cin => \u3|x[9]~39\,
	combout => \u3|x[10]~40_combout\,
	cout => \u3|x[10]~41\);

-- Location: LCFF_X34_Y47_N1
\u3|x[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|x[10]~40_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|calc~regout\,
	ena => \u3|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|x\(10));

-- Location: LCCOMB_X34_Y47_N2
\u3|x[11]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|x[11]~42_combout\ = (\u3|tix_int\(11) & ((\u3|x\(11) & (!\u3|x[10]~41\)) # (!\u3|x\(11) & ((\u3|x[10]~41\) # (GND))))) # (!\u3|tix_int\(11) & ((\u3|x\(11) & (\u3|x[10]~41\ & VCC)) # (!\u3|x\(11) & (!\u3|x[10]~41\))))
-- \u3|x[11]~43\ = CARRY((\u3|tix_int\(11) & ((!\u3|x[10]~41\) # (!\u3|x\(11)))) # (!\u3|tix_int\(11) & (!\u3|x\(11) & !\u3|x[10]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(11),
	datab => \u3|x\(11),
	datad => VCC,
	cin => \u3|x[10]~41\,
	combout => \u3|x[11]~42_combout\,
	cout => \u3|x[11]~43\);

-- Location: LCFF_X34_Y47_N3
\u3|x[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|x[11]~42_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|calc~regout\,
	ena => \u3|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|x\(11));

-- Location: LCCOMB_X34_Y47_N4
\u3|x[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|x[12]~44_combout\ = ((\u3|x\(12) $ (\u3|tix_int\(12) $ (\u3|x[11]~43\)))) # (GND)
-- \u3|x[12]~45\ = CARRY((\u3|x\(12) & ((!\u3|x[11]~43\) # (!\u3|tix_int\(12)))) # (!\u3|x\(12) & (!\u3|tix_int\(12) & !\u3|x[11]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|x\(12),
	datab => \u3|tix_int\(12),
	datad => VCC,
	cin => \u3|x[11]~43\,
	combout => \u3|x[12]~44_combout\,
	cout => \u3|x[12]~45\);

-- Location: LCCOMB_X34_Y47_N6
\u3|x[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|x[13]~46_combout\ = ((\u3|x\(13) $ (\u3|tix_int\(13) $ (!\u3|x[12]~45\)))) # (GND)
-- \u3|x[13]~47\ = CARRY((\u3|x\(13) & ((\u3|tix_int\(13)) # (!\u3|x[12]~45\))) # (!\u3|x\(13) & (\u3|tix_int\(13) & !\u3|x[12]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|x\(13),
	datab => \u3|tix_int\(13),
	datad => VCC,
	cin => \u3|x[12]~45\,
	combout => \u3|x[13]~46_combout\,
	cout => \u3|x[13]~47\);

-- Location: LCCOMB_X34_Y47_N8
\u3|x[14]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|x[14]~48_combout\ = ((\u3|tix_int\(14) $ (\u3|x\(14) $ (\u3|x[13]~47\)))) # (GND)
-- \u3|x[14]~49\ = CARRY((\u3|tix_int\(14) & (\u3|x\(14) & !\u3|x[13]~47\)) # (!\u3|tix_int\(14) & ((\u3|x\(14)) # (!\u3|x[13]~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(14),
	datab => \u3|x\(14),
	datad => VCC,
	cin => \u3|x[13]~47\,
	combout => \u3|x[14]~48_combout\,
	cout => \u3|x[14]~49\);

-- Location: LCFF_X34_Y47_N9
\u3|x[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|x[14]~48_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|calc~regout\,
	ena => \u3|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|x\(14));

-- Location: LCCOMB_X34_Y47_N10
\u3|x[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|x[15]~50_combout\ = (\u3|x\(15) & ((\u3|tix_int\(15) & (!\u3|x[14]~49\)) # (!\u3|tix_int\(15) & (\u3|x[14]~49\ & VCC)))) # (!\u3|x\(15) & ((\u3|tix_int\(15) & ((\u3|x[14]~49\) # (GND))) # (!\u3|tix_int\(15) & (!\u3|x[14]~49\))))
-- \u3|x[15]~51\ = CARRY((\u3|x\(15) & (\u3|tix_int\(15) & !\u3|x[14]~49\)) # (!\u3|x\(15) & ((\u3|tix_int\(15)) # (!\u3|x[14]~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|x\(15),
	datab => \u3|tix_int\(15),
	datad => VCC,
	cin => \u3|x[14]~49\,
	combout => \u3|x[15]~50_combout\,
	cout => \u3|x[15]~51\);

-- Location: LCCOMB_X34_Y47_N12
\u3|x[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|x[16]~52_combout\ = (\u3|x\(16) & (!\u3|x[15]~51\)) # (!\u3|x\(16) & ((\u3|x[15]~51\) # (GND)))
-- \u3|x[16]~53\ = CARRY((!\u3|x[15]~51\) # (!\u3|x\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|x\(16),
	datad => VCC,
	cin => \u3|x[15]~51\,
	combout => \u3|x[16]~52_combout\,
	cout => \u3|x[16]~53\);

-- Location: LCCOMB_X34_Y47_N14
\u3|x[17]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|x[17]~54_combout\ = (\u3|x\(17) & (\u3|x[16]~53\ & VCC)) # (!\u3|x\(17) & (!\u3|x[16]~53\))
-- \u3|x[17]~55\ = CARRY((!\u3|x\(17) & !\u3|x[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|x\(17),
	datad => VCC,
	cin => \u3|x[16]~53\,
	combout => \u3|x[17]~54_combout\,
	cout => \u3|x[17]~55\);

-- Location: LCFF_X34_Y47_N15
\u3|x[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|x[17]~54_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|calc~regout\,
	ena => \u3|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|x\(17));

-- Location: LCCOMB_X34_Y47_N18
\u3|x[19]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|x[19]~58_combout\ = \u3|x[18]~57\ $ (!\u3|x\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u3|x\(19),
	cin => \u3|x[18]~57\,
	combout => \u3|x[19]~58_combout\);

-- Location: LCFF_X34_Y47_N19
\u3|x[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|x[19]~58_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|calc~regout\,
	ena => \u3|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|x\(19));

-- Location: LCFF_X34_Y47_N13
\u3|x[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|x[16]~52_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|calc~regout\,
	ena => \u3|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|x\(16));

-- Location: LCFF_X34_Y47_N11
\u3|x[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|x[15]~50_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|calc~regout\,
	ena => \u3|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|x\(15));

-- Location: LCCOMB_X35_Y49_N8
\u0|tix_mem~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem~17_combout\ = (\u0|process_0~0_combout\ & \u0|count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|process_0~0_combout\,
	datad => \u0|count\(14),
	combout => \u0|tix_mem~17_combout\);

-- Location: LCFF_X35_Y49_N9
\u0|tix_mem[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem~17_combout\,
	ena => \u0|tix_mem[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(14));

-- Location: LCFF_X35_Y48_N31
\u3|tix_int[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(14),
	aclr => \ALT_INV_areset~combout\,
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|tix_int\(14));

-- Location: LCFF_X34_Y47_N7
\u3|x[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|x[13]~46_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|calc~regout\,
	ena => \u3|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|x\(13));

-- Location: LCFF_X34_Y47_N5
\u3|x[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|x[12]~44_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|calc~regout\,
	ena => \u3|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|x\(12));

-- Location: LCFF_X34_Y48_N31
\u3|x[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|x[9]~38_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|calc~regout\,
	ena => \u3|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|x\(9));

-- Location: LCFF_X34_Y48_N29
\u3|x[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|x[8]~36_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|calc~regout\,
	ena => \u3|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|x\(8));

-- Location: LCFF_X34_Y48_N21
\u3|x[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|x[4]~28_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|calc~regout\,
	ena => \u3|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|x\(4));

-- Location: LCFF_X34_Y48_N17
\u3|x[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|x[2]~24_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~combout\,
	sload => \u0|calc~regout\,
	ena => \u3|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|x\(2));

-- Location: LCCOMB_X35_Y48_N0
\u3|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|LessThan2~1_cout\ = CARRY((\u3|x\(0) & !\u3|tix_int\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|x\(0),
	datab => \u3|tix_int\(0),
	datad => VCC,
	cout => \u3|LessThan2~1_cout\);

-- Location: LCCOMB_X35_Y48_N2
\u3|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|LessThan2~3_cout\ = CARRY((\u3|x\(1) & (\u3|tix_int\(1) & !\u3|LessThan2~1_cout\)) # (!\u3|x\(1) & ((\u3|tix_int\(1)) # (!\u3|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|x\(1),
	datab => \u3|tix_int\(1),
	datad => VCC,
	cin => \u3|LessThan2~1_cout\,
	cout => \u3|LessThan2~3_cout\);

-- Location: LCCOMB_X35_Y48_N4
\u3|LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|LessThan2~5_cout\ = CARRY((\u3|tix_int\(2) & (\u3|x\(2) & !\u3|LessThan2~3_cout\)) # (!\u3|tix_int\(2) & ((\u3|x\(2)) # (!\u3|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(2),
	datab => \u3|x\(2),
	datad => VCC,
	cin => \u3|LessThan2~3_cout\,
	cout => \u3|LessThan2~5_cout\);

-- Location: LCCOMB_X35_Y48_N6
\u3|LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|LessThan2~7_cout\ = CARRY((\u3|tix_int\(3) & ((!\u3|LessThan2~5_cout\) # (!\u3|x\(3)))) # (!\u3|tix_int\(3) & (!\u3|x\(3) & !\u3|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(3),
	datab => \u3|x\(3),
	datad => VCC,
	cin => \u3|LessThan2~5_cout\,
	cout => \u3|LessThan2~7_cout\);

-- Location: LCCOMB_X35_Y48_N8
\u3|LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|LessThan2~9_cout\ = CARRY((\u3|tix_int\(4) & (\u3|x\(4) & !\u3|LessThan2~7_cout\)) # (!\u3|tix_int\(4) & ((\u3|x\(4)) # (!\u3|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(4),
	datab => \u3|x\(4),
	datad => VCC,
	cin => \u3|LessThan2~7_cout\,
	cout => \u3|LessThan2~9_cout\);

-- Location: LCCOMB_X35_Y48_N10
\u3|LessThan2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|LessThan2~11_cout\ = CARRY((\u3|tix_int\(5) & ((!\u3|LessThan2~9_cout\) # (!\u3|x\(5)))) # (!\u3|tix_int\(5) & (!\u3|x\(5) & !\u3|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(5),
	datab => \u3|x\(5),
	datad => VCC,
	cin => \u3|LessThan2~9_cout\,
	cout => \u3|LessThan2~11_cout\);

-- Location: LCCOMB_X35_Y48_N12
\u3|LessThan2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|LessThan2~13_cout\ = CARRY((\u3|x\(6) & (!\u3|tix_int\(6) & !\u3|LessThan2~11_cout\)) # (!\u3|x\(6) & ((!\u3|LessThan2~11_cout\) # (!\u3|tix_int\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|x\(6),
	datab => \u3|tix_int\(6),
	datad => VCC,
	cin => \u3|LessThan2~11_cout\,
	cout => \u3|LessThan2~13_cout\);

-- Location: LCCOMB_X35_Y48_N14
\u3|LessThan2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|LessThan2~15_cout\ = CARRY((\u3|tix_int\(7) & ((\u3|x\(7)) # (!\u3|LessThan2~13_cout\))) # (!\u3|tix_int\(7) & (\u3|x\(7) & !\u3|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(7),
	datab => \u3|x\(7),
	datad => VCC,
	cin => \u3|LessThan2~13_cout\,
	cout => \u3|LessThan2~15_cout\);

-- Location: LCCOMB_X35_Y48_N16
\u3|LessThan2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|LessThan2~17_cout\ = CARRY((\u3|tix_int\(8) & (!\u3|x\(8) & !\u3|LessThan2~15_cout\)) # (!\u3|tix_int\(8) & ((!\u3|LessThan2~15_cout\) # (!\u3|x\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(8),
	datab => \u3|x\(8),
	datad => VCC,
	cin => \u3|LessThan2~15_cout\,
	cout => \u3|LessThan2~17_cout\);

-- Location: LCCOMB_X35_Y48_N18
\u3|LessThan2~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|LessThan2~19_cout\ = CARRY((\u3|tix_int\(9) & ((\u3|x\(9)) # (!\u3|LessThan2~17_cout\))) # (!\u3|tix_int\(9) & (\u3|x\(9) & !\u3|LessThan2~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(9),
	datab => \u3|x\(9),
	datad => VCC,
	cin => \u3|LessThan2~17_cout\,
	cout => \u3|LessThan2~19_cout\);

-- Location: LCCOMB_X35_Y48_N20
\u3|LessThan2~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|LessThan2~21_cout\ = CARRY((\u3|x\(10) & (!\u3|tix_int\(10) & !\u3|LessThan2~19_cout\)) # (!\u3|x\(10) & ((!\u3|LessThan2~19_cout\) # (!\u3|tix_int\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|x\(10),
	datab => \u3|tix_int\(10),
	datad => VCC,
	cin => \u3|LessThan2~19_cout\,
	cout => \u3|LessThan2~21_cout\);

-- Location: LCCOMB_X35_Y48_N22
\u3|LessThan2~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|LessThan2~23_cout\ = CARRY((\u3|x\(11) & (\u3|tix_int\(11) & !\u3|LessThan2~21_cout\)) # (!\u3|x\(11) & ((\u3|tix_int\(11)) # (!\u3|LessThan2~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|x\(11),
	datab => \u3|tix_int\(11),
	datad => VCC,
	cin => \u3|LessThan2~21_cout\,
	cout => \u3|LessThan2~23_cout\);

-- Location: LCCOMB_X35_Y48_N24
\u3|LessThan2~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|LessThan2~25_cout\ = CARRY((\u3|tix_int\(12) & (\u3|x\(12) & !\u3|LessThan2~23_cout\)) # (!\u3|tix_int\(12) & ((\u3|x\(12)) # (!\u3|LessThan2~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(12),
	datab => \u3|x\(12),
	datad => VCC,
	cin => \u3|LessThan2~23_cout\,
	cout => \u3|LessThan2~25_cout\);

-- Location: LCCOMB_X35_Y48_N26
\u3|LessThan2~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|LessThan2~27_cout\ = CARRY((\u3|tix_int\(13) & ((\u3|x\(13)) # (!\u3|LessThan2~25_cout\))) # (!\u3|tix_int\(13) & (\u3|x\(13) & !\u3|LessThan2~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(13),
	datab => \u3|x\(13),
	datad => VCC,
	cin => \u3|LessThan2~25_cout\,
	cout => \u3|LessThan2~27_cout\);

-- Location: LCCOMB_X35_Y48_N28
\u3|LessThan2~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|LessThan2~29_cout\ = CARRY((\u3|x\(14) & ((!\u3|LessThan2~27_cout\) # (!\u3|tix_int\(14)))) # (!\u3|x\(14) & (!\u3|tix_int\(14) & !\u3|LessThan2~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|x\(14),
	datab => \u3|tix_int\(14),
	datad => VCC,
	cin => \u3|LessThan2~27_cout\,
	cout => \u3|LessThan2~29_cout\);

-- Location: LCCOMB_X35_Y48_N30
\u3|LessThan2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|LessThan2~30_combout\ = (\u3|tix_int\(15) & (\u3|LessThan2~29_cout\ & \u3|x\(15))) # (!\u3|tix_int\(15) & ((\u3|LessThan2~29_cout\) # (\u3|x\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|tix_int\(15),
	datad => \u3|x\(15),
	cin => \u3|LessThan2~29_cout\,
	combout => \u3|LessThan2~30_combout\);

-- Location: LCCOMB_X34_Y48_N0
\u3|LessThan2~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|LessThan2~33_combout\ = (\u3|LessThan2~32_combout\) # (((\u3|LessThan2~30_combout\) # (!\u3|x\(16))) # (!\u3|x\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|LessThan2~32_combout\,
	datab => \u3|x\(19),
	datac => \u3|x\(16),
	datad => \u3|LessThan2~30_combout\,
	combout => \u3|LessThan2~33_combout\);

-- Location: LCCOMB_X34_Y48_N2
\u3|rpm[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|rpm[6]~8_combout\ = (\u0|calc~regout\) # ((\u3|stop~regout\ & ((\u3|LessThan2~33_combout\) # (!\u3|rpm[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|stop~regout\,
	datab => \u0|calc~regout\,
	datac => \u3|rpm[6]~7_combout\,
	datad => \u3|LessThan2~33_combout\,
	combout => \u3|rpm[6]~8_combout\);

-- Location: LCFF_X33_Y48_N19
\u3|rpm[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|Add1~19_combout\,
	aclr => \ALT_INV_areset~combout\,
	ena => \u3|rpm[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|rpm\(2));

-- Location: LCCOMB_X34_Y47_N28
\u3|rpm_mem[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|rpm_mem[3]~0_combout\ = (!\u0|calc~regout\ & (!\u3|stop~regout\ & \areset~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|calc~regout\,
	datac => \u3|stop~regout\,
	datad => \areset~combout\,
	combout => \u3|rpm_mem[3]~0_combout\);

-- Location: LCFF_X33_Y47_N1
\u3|rpm_mem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u3|rpm\(2),
	sload => VCC,
	ena => \u3|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|rpm_mem\(2));

-- Location: LCCOMB_X34_Y47_N24
\u3|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add1~20_combout\ = (\u3|Add1~3_combout\ & !\u3|rpm[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Add1~3_combout\,
	datac => \u3|rpm[6]~6_combout\,
	combout => \u3|Add1~20_combout\);

-- Location: LCFF_X34_Y47_N25
\u3|rpm[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|Add1~20_combout\,
	aclr => \ALT_INV_areset~combout\,
	ena => \u3|rpm[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|rpm\(1));

-- Location: LCCOMB_X33_Y47_N12
\u3|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add1~0_combout\ = \u3|rpm\(0) $ (VCC)
-- \u3|Add1~1\ = CARRY(\u3|rpm\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|rpm\(0),
	datad => VCC,
	combout => \u3|Add1~0_combout\,
	cout => \u3|Add1~1\);

-- Location: LCCOMB_X33_Y48_N8
\u3|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add1~2_combout\ = (\u3|Add1~0_combout\ & !\u3|rpm[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|Add1~0_combout\,
	datac => \u3|rpm[6]~6_combout\,
	combout => \u3|Add1~2_combout\);

-- Location: LCFF_X33_Y48_N9
\u3|rpm[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|Add1~2_combout\,
	aclr => \ALT_INV_areset~combout\,
	ena => \u3|rpm[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|rpm\(0));

-- Location: LCCOMB_X33_Y47_N18
\u3|Add1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add1~7_combout\ = (\u3|rpm\(3) & (!\u3|Add1~6\)) # (!\u3|rpm\(3) & ((\u3|Add1~6\) # (GND)))
-- \u3|Add1~8\ = CARRY((!\u3|Add1~6\) # (!\u3|rpm\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rpm\(3),
	datad => VCC,
	cin => \u3|Add1~6\,
	combout => \u3|Add1~7_combout\,
	cout => \u3|Add1~8\);

-- Location: LCCOMB_X33_Y47_N20
\u3|Add1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add1~9_combout\ = (\u3|rpm\(4) & (\u3|Add1~8\ $ (GND))) # (!\u3|rpm\(4) & (!\u3|Add1~8\ & VCC))
-- \u3|Add1~10\ = CARRY((\u3|rpm\(4) & !\u3|Add1~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rpm\(4),
	datad => VCC,
	cin => \u3|Add1~8\,
	combout => \u3|Add1~9_combout\,
	cout => \u3|Add1~10\);

-- Location: LCCOMB_X33_Y48_N30
\u3|Add1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add1~11_combout\ = (!\u3|rpm[6]~6_combout\ & \u3|Add1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|rpm[6]~6_combout\,
	datac => \u3|Add1~9_combout\,
	combout => \u3|Add1~11_combout\);

-- Location: LCFF_X33_Y48_N31
\u3|rpm[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|Add1~11_combout\,
	aclr => \ALT_INV_areset~combout\,
	ena => \u3|rpm[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|rpm\(4));

-- Location: LCCOMB_X33_Y47_N22
\u3|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add1~12_combout\ = (\u3|rpm\(5) & (!\u3|Add1~10\)) # (!\u3|rpm\(5) & ((\u3|Add1~10\) # (GND)))
-- \u3|Add1~13\ = CARRY((!\u3|Add1~10\) # (!\u3|rpm\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3|rpm\(5),
	datad => VCC,
	cin => \u3|Add1~10\,
	combout => \u3|Add1~12_combout\,
	cout => \u3|Add1~13\);

-- Location: LCCOMB_X33_Y48_N4
\u3|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|Add1~18_combout\ = (\u3|Add1~12_combout\ & !\u3|rpm[6]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|Add1~12_combout\,
	datac => \u3|rpm[6]~6_combout\,
	combout => \u3|Add1~18_combout\);

-- Location: LCFF_X33_Y48_N5
\u3|rpm[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|Add1~18_combout\,
	aclr => \ALT_INV_areset~combout\,
	ena => \u3|rpm[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|rpm\(5));

-- Location: LCFF_X33_Y47_N11
\u3|rpm_mem[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u3|rpm\(5),
	sload => VCC,
	ena => \u3|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|rpm_mem\(5));

-- Location: LCCOMB_X34_Y47_N22
\u3|rpm~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|rpm~9_combout\ = (!\u0|calc~regout\ & ((\u3|tix_int\(15)) # ((\u3|rpm[6]~5_combout\ & !\u3|rpm[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rpm[6]~5_combout\,
	datab => \u3|tix_int\(15),
	datac => \u0|calc~regout\,
	datad => \u3|rpm[6]~1_combout\,
	combout => \u3|rpm~9_combout\);

-- Location: LCCOMB_X34_Y47_N20
\u3|rpm~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|rpm~11_combout\ = (\u3|rpm~9_combout\) # ((\u3|Add1~14_combout\ & !\u3|rpm[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|Add1~14_combout\,
	datac => \u3|rpm[6]~6_combout\,
	datad => \u3|rpm~9_combout\,
	combout => \u3|rpm~11_combout\);

-- Location: LCFF_X34_Y47_N21
\u3|rpm[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|rpm~11_combout\,
	aclr => \ALT_INV_areset~combout\,
	ena => \u3|rpm[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|rpm\(6));

-- Location: LCCOMB_X33_Y47_N4
\u3|rpm_mem[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|rpm_mem[6]~feeder_combout\ = \u3|rpm\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|rpm\(6),
	combout => \u3|rpm_mem[6]~feeder_combout\);

-- Location: LCFF_X33_Y47_N5
\u3|rpm_mem[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|rpm_mem[6]~feeder_combout\,
	ena => \u3|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|rpm_mem\(6));

-- Location: LCCOMB_X34_Y47_N30
\u3|rpm~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|rpm~10_combout\ = (\u3|rpm~9_combout\) # ((\u3|Add1~16_combout\ & !\u3|rpm[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Add1~16_combout\,
	datac => \u3|rpm[6]~6_combout\,
	datad => \u3|rpm~9_combout\,
	combout => \u3|rpm~10_combout\);

-- Location: LCFF_X34_Y47_N31
\u3|rpm[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|rpm~10_combout\,
	aclr => \ALT_INV_areset~combout\,
	ena => \u3|rpm[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|rpm\(7));

-- Location: LCCOMB_X33_Y47_N28
\u3|rpm_mem[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|rpm_mem[7]~feeder_combout\ = \u3|rpm\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|rpm\(7),
	combout => \u3|rpm_mem[7]~feeder_combout\);

-- Location: LCFF_X33_Y47_N29
\u3|rpm_mem[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|rpm_mem[7]~feeder_combout\,
	ena => \u3|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|rpm_mem\(7));

-- Location: LCCOMB_X35_Y1_N26
\u2|U1bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U1bcd[2]~1_combout\ = (\u3|rpm_mem\(4) & (!\u3|rpm_mem\(5) & (!\u3|rpm_mem\(6) & \u3|rpm_mem\(7)))) # (!\u3|rpm_mem\(4) & (\u3|rpm_mem\(6) & (\u3|rpm_mem\(5) $ (!\u3|rpm_mem\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rpm_mem\(4),
	datab => \u3|rpm_mem\(5),
	datac => \u3|rpm_mem\(6),
	datad => \u3|rpm_mem\(7),
	combout => \u2|U1bcd[2]~1_combout\);

-- Location: LCCOMB_X35_Y1_N4
\u2|U1bcd[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U1bcd[1]~2_combout\ = (\u3|rpm_mem\(5) & (!\u3|rpm_mem\(7) & ((\u3|rpm_mem\(4)) # (!\u3|rpm_mem\(6))))) # (!\u3|rpm_mem\(5) & (\u3|rpm_mem\(7) & ((\u3|rpm_mem\(6)) # (!\u3|rpm_mem\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rpm_mem\(4),
	datab => \u3|rpm_mem\(5),
	datac => \u3|rpm_mem\(6),
	datad => \u3|rpm_mem\(7),
	combout => \u2|U1bcd[1]~2_combout\);

-- Location: LCCOMB_X35_Y1_N12
\u2|U1bcd[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U1bcd[0]~0_combout\ = (\u3|rpm_mem\(4) & (\u3|rpm_mem\(6) $ (((\u3|rpm_mem\(5)) # (!\u3|rpm_mem\(7)))))) # (!\u3|rpm_mem\(4) & ((\u3|rpm_mem\(5) & (\u3|rpm_mem\(6) & !\u3|rpm_mem\(7))) # (!\u3|rpm_mem\(5) & (!\u3|rpm_mem\(6) & \u3|rpm_mem\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rpm_mem\(4),
	datab => \u3|rpm_mem\(5),
	datac => \u3|rpm_mem\(6),
	datad => \u3|rpm_mem\(7),
	combout => \u2|U1bcd[0]~0_combout\);

-- Location: LCCOMB_X32_Y1_N8
\u2|U2bcd[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U2bcd[1]~2_combout\ = (\u3|rpm_mem\(3) & (((\u2|U1bcd[0]~0_combout\)))) # (!\u3|rpm_mem\(3) & ((\u2|U1bcd[2]~1_combout\ & ((!\u2|U1bcd[0]~0_combout\))) # (!\u2|U1bcd[2]~1_combout\ & (!\u2|U1bcd[1]~2_combout\ & \u2|U1bcd[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rpm_mem\(3),
	datab => \u2|U1bcd[2]~1_combout\,
	datac => \u2|U1bcd[1]~2_combout\,
	datad => \u2|U1bcd[0]~0_combout\,
	combout => \u2|U2bcd[1]~2_combout\);

-- Location: LCCOMB_X34_Y47_N26
\u3|rpm~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|rpm~12_combout\ = (\u3|rpm~9_combout\) # ((\u3|Add1~7_combout\ & !\u3|rpm[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|Add1~7_combout\,
	datac => \u3|rpm[6]~6_combout\,
	datad => \u3|rpm~9_combout\,
	combout => \u3|rpm~12_combout\);

-- Location: LCFF_X34_Y47_N27
\u3|rpm[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|rpm~12_combout\,
	aclr => \ALT_INV_areset~combout\,
	ena => \u3|rpm[6]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|rpm\(3));

-- Location: LCFF_X33_Y47_N3
\u3|rpm_mem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u3|rpm\(3),
	sload => VCC,
	ena => \u3|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|rpm_mem\(3));

-- Location: LCCOMB_X35_Y1_N28
\u2|U2bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U2bcd[2]~1_combout\ = (\u2|U1bcd[1]~2_combout\ & (!\u2|U1bcd[0]~0_combout\ & (!\u3|rpm_mem\(3)))) # (!\u2|U1bcd[1]~2_combout\ & (\u2|U1bcd[2]~1_combout\ & ((\u2|U1bcd[0]~0_combout\) # (\u3|rpm_mem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U1bcd[0]~0_combout\,
	datab => \u2|U1bcd[1]~2_combout\,
	datac => \u3|rpm_mem\(3),
	datad => \u2|U1bcd[2]~1_combout\,
	combout => \u2|U2bcd[2]~1_combout\);

-- Location: LCCOMB_X32_Y1_N2
\u2|U3bcd[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U3bcd[0]~0_combout\ = (\u3|rpm_mem\(2) & (((!\u2|U2bcd[1]~2_combout\ & !\u2|U2bcd[2]~1_combout\)))) # (!\u3|rpm_mem\(2) & ((\u2|U2bcd[2]~1_combout\) # ((\u2|U2bcd[0]~0_combout\ & \u2|U2bcd[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U2bcd[0]~0_combout\,
	datab => \u3|rpm_mem\(2),
	datac => \u2|U2bcd[1]~2_combout\,
	datad => \u2|U2bcd[2]~1_combout\,
	combout => \u2|U3bcd[0]~0_combout\);

-- Location: LCCOMB_X32_Y1_N14
\u2|U3bcd[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U3bcd[1]~2_combout\ = (\u2|U2bcd[0]~0_combout\ & ((\u3|rpm_mem\(2)) # ((!\u2|U2bcd[1]~2_combout\ & !\u2|U2bcd[2]~1_combout\)))) # (!\u2|U2bcd[0]~0_combout\ & (!\u3|rpm_mem\(2) & ((\u2|U2bcd[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U2bcd[0]~0_combout\,
	datab => \u3|rpm_mem\(2),
	datac => \u2|U2bcd[1]~2_combout\,
	datad => \u2|U2bcd[2]~1_combout\,
	combout => \u2|U3bcd[1]~2_combout\);

-- Location: LCCOMB_X33_Y47_N30
\u3|rpm_mem[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|rpm_mem[1]~feeder_combout\ = \u3|rpm\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|rpm\(1),
	combout => \u3|rpm_mem[1]~feeder_combout\);

-- Location: LCFF_X33_Y47_N31
\u3|rpm_mem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|rpm_mem[1]~feeder_combout\,
	ena => \u3|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|rpm_mem\(1));

-- Location: LCCOMB_X32_Y1_N24
\u2|U4bcd[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U4bcd[0]~0_combout\ = (\u2|U3bcd[2]~1_combout\ & (((!\u3|rpm_mem\(1))))) # (!\u2|U3bcd[2]~1_combout\ & ((\u2|U3bcd[1]~2_combout\ & (\u2|U3bcd[0]~0_combout\ & !\u3|rpm_mem\(1))) # (!\u2|U3bcd[1]~2_combout\ & ((\u3|rpm_mem\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U3bcd[2]~1_combout\,
	datab => \u2|U3bcd[0]~0_combout\,
	datac => \u2|U3bcd[1]~2_combout\,
	datad => \u3|rpm_mem\(1),
	combout => \u2|U4bcd[0]~0_combout\);

-- Location: LCCOMB_X32_Y1_N28
\u2|U4bcd[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U4bcd[2]~2_combout\ = (\u2|U3bcd[1]~2_combout\ & (((!\u2|U3bcd[0]~0_combout\ & !\u3|rpm_mem\(1))))) # (!\u2|U3bcd[1]~2_combout\ & (\u2|U3bcd[2]~1_combout\ & ((\u2|U3bcd[0]~0_combout\) # (\u3|rpm_mem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U3bcd[2]~1_combout\,
	datab => \u2|U3bcd[0]~0_combout\,
	datac => \u2|U3bcd[1]~2_combout\,
	datad => \u3|rpm_mem\(1),
	combout => \u2|U4bcd[2]~2_combout\);

-- Location: LCCOMB_X33_Y47_N8
\u3|rpm_mem[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3|rpm_mem[0]~feeder_combout\ = \u3|rpm\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3|rpm\(0),
	combout => \u3|rpm_mem[0]~feeder_combout\);

-- Location: LCFF_X33_Y47_N9
\u3|rpm_mem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3|rpm_mem[0]~feeder_combout\,
	ena => \u3|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|rpm_mem\(0));

-- Location: LCCOMB_X32_Y1_N30
\u2|U4bcd[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U4bcd[1]~1_combout\ = (\u2|U3bcd[2]~1_combout\ & (\u2|U3bcd[0]~0_combout\ $ (((!\u3|rpm_mem\(1)))))) # (!\u2|U3bcd[2]~1_combout\ & (\u2|U3bcd[0]~0_combout\ & ((\u3|rpm_mem\(1)) # (!\u2|U3bcd[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U3bcd[2]~1_combout\,
	datab => \u2|U3bcd[0]~0_combout\,
	datac => \u2|U3bcd[1]~2_combout\,
	datad => \u3|rpm_mem\(1),
	combout => \u2|U4bcd[1]~1_combout\);

-- Location: LCCOMB_X32_Y1_N22
\u2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux6~0_combout\ = (!\u2|U4bcd[0]~0_combout\ & (!\u2|U4bcd[2]~2_combout\ & (\u3|rpm_mem\(0) $ (\u2|U4bcd[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[0]~0_combout\,
	datab => \u2|U4bcd[2]~2_combout\,
	datac => \u3|rpm_mem\(0),
	datad => \u2|U4bcd[1]~1_combout\,
	combout => \u2|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y1_N16
\u2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux5~0_combout\ = (\u2|U4bcd[1]~1_combout\ & (\u2|U4bcd[0]~0_combout\ $ (\u3|rpm_mem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[0]~0_combout\,
	datab => \u2|U4bcd[1]~1_combout\,
	datac => \u3|rpm_mem\(0),
	combout => \u2|Mux5~0_combout\);

-- Location: LCCOMB_X32_Y1_N6
\u2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux4~0_combout\ = (\u2|U4bcd[0]~0_combout\ & (!\u2|U4bcd[1]~1_combout\ & !\u3|rpm_mem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[0]~0_combout\,
	datab => \u2|U4bcd[1]~1_combout\,
	datac => \u3|rpm_mem\(0),
	combout => \u2|Mux4~0_combout\);

-- Location: LCCOMB_X32_Y1_N4
\u2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux3~0_combout\ = (!\u2|U4bcd[2]~2_combout\ & ((\u2|U4bcd[0]~0_combout\ & (\u3|rpm_mem\(0) & \u2|U4bcd[1]~1_combout\)) # (!\u2|U4bcd[0]~0_combout\ & (\u3|rpm_mem\(0) $ (\u2|U4bcd[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[0]~0_combout\,
	datab => \u2|U4bcd[2]~2_combout\,
	datac => \u3|rpm_mem\(0),
	datad => \u2|U4bcd[1]~1_combout\,
	combout => \u2|Mux3~0_combout\);

-- Location: LCCOMB_X32_Y1_N26
\u2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux2~0_combout\ = (\u3|rpm_mem\(0)) # ((!\u2|U4bcd[0]~0_combout\ & \u2|U4bcd[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[0]~0_combout\,
	datab => \u2|U4bcd[1]~1_combout\,
	datac => \u3|rpm_mem\(0),
	combout => \u2|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y1_N0
\u2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux1~0_combout\ = (!\u2|U4bcd[2]~2_combout\ & ((\u2|U4bcd[0]~0_combout\ & ((\u3|rpm_mem\(0)) # (!\u2|U4bcd[1]~1_combout\))) # (!\u2|U4bcd[0]~0_combout\ & (\u3|rpm_mem\(0) & !\u2|U4bcd[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[0]~0_combout\,
	datab => \u2|U4bcd[2]~2_combout\,
	datac => \u3|rpm_mem\(0),
	datad => \u2|U4bcd[1]~1_combout\,
	combout => \u2|Mux1~0_combout\);

-- Location: LCCOMB_X32_Y1_N10
\u2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux0~0_combout\ = (\u2|U4bcd[2]~2_combout\) # ((\u2|U4bcd[0]~0_combout\ & ((!\u2|U4bcd[1]~1_combout\) # (!\u3|rpm_mem\(0)))) # (!\u2|U4bcd[0]~0_combout\ & ((\u2|U4bcd[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[0]~0_combout\,
	datab => \u2|U4bcd[2]~2_combout\,
	datac => \u3|rpm_mem\(0),
	datad => \u2|U4bcd[1]~1_combout\,
	combout => \u2|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y1_N18
\u2|U2bcd[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U2bcd[3]~3_combout\ = \u2|U1bcd[2]~1_combout\ $ ((((!\u2|U1bcd[0]~0_combout\ & !\u3|rpm_mem\(3))) # (!\u2|U1bcd[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U1bcd[0]~0_combout\,
	datab => \u2|U1bcd[1]~2_combout\,
	datac => \u3|rpm_mem\(3),
	datad => \u2|U1bcd[2]~1_combout\,
	combout => \u2|U2bcd[3]~3_combout\);

-- Location: LCCOMB_X35_Y1_N16
\u2|U5bcd[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U5bcd[2]~0_combout\ = (\u3|rpm_mem\(7) & (\u2|U2bcd[3]~3_combout\ & ((\u3|rpm_mem\(5)) # (\u3|rpm_mem\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rpm_mem\(5),
	datab => \u3|rpm_mem\(7),
	datac => \u3|rpm_mem\(6),
	datad => \u2|U2bcd[3]~3_combout\,
	combout => \u2|U5bcd[2]~0_combout\);

-- Location: LCCOMB_X35_Y1_N20
\u2|U6bcd[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[2]~0_combout\ = (\u3|rpm_mem\(5) & (\u3|rpm_mem\(6) & ((\u3|rpm_mem\(4)) # (!\u3|rpm_mem\(7))))) # (!\u3|rpm_mem\(5) & ((\u3|rpm_mem\(6) & (\u3|rpm_mem\(4) & !\u3|rpm_mem\(7))) # (!\u3|rpm_mem\(6) & ((\u3|rpm_mem\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rpm_mem\(4),
	datab => \u3|rpm_mem\(5),
	datac => \u3|rpm_mem\(6),
	datad => \u3|rpm_mem\(7),
	combout => \u2|U6bcd[2]~0_combout\);

-- Location: LCCOMB_X35_Y1_N8
\u2|is_gt_4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~2_combout\ = (\u2|U1bcd[2]~1_combout\) # ((\u2|U1bcd[1]~2_combout\ & ((\u2|U1bcd[0]~0_combout\) # (\u3|rpm_mem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U1bcd[0]~0_combout\,
	datab => \u2|U1bcd[1]~2_combout\,
	datac => \u3|rpm_mem\(3),
	datad => \u2|U1bcd[2]~1_combout\,
	combout => \u2|is_gt_4~2_combout\);

-- Location: LCCOMB_X32_Y1_N20
\u2|is_gt_4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~3_combout\ = (\u3|rpm_mem\(3) & (\u2|U1bcd[0]~0_combout\ & ((\u3|rpm_mem\(2)) # (!\u2|is_gt_4~2_combout\)))) # (!\u3|rpm_mem\(3) & ((\u2|is_gt_4~2_combout\ & ((!\u2|U1bcd[0]~0_combout\))) # (!\u2|is_gt_4~2_combout\ & (\u3|rpm_mem\(2) & 
-- \u2|U1bcd[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rpm_mem\(3),
	datab => \u2|is_gt_4~2_combout\,
	datac => \u3|rpm_mem\(2),
	datad => \u2|U1bcd[0]~0_combout\,
	combout => \u2|is_gt_4~3_combout\);

-- Location: LCCOMB_X35_Y1_N0
\u2|is_gt_4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~0_combout\ = (\u3|rpm_mem\(7) & \u3|rpm_mem\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|rpm_mem\(7),
	datac => \u3|rpm_mem\(6),
	combout => \u2|is_gt_4~0_combout\);

-- Location: LCCOMB_X35_Y1_N22
\u2|is_gt_4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~1_combout\ = (\u2|is_gt_4~0_combout\ & ((\u3|rpm_mem\(4)) # ((\u3|rpm_mem\(5)) # (\u3|rpm_mem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|rpm_mem\(4),
	datab => \u3|rpm_mem\(5),
	datac => \u3|rpm_mem\(3),
	datad => \u2|is_gt_4~0_combout\,
	combout => \u2|is_gt_4~1_combout\);

-- Location: LCCOMB_X35_Y1_N14
\u2|is_gt_4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~4_combout\ = (\u2|U2bcd[2]~1_combout\ & ((\u2|U2bcd[3]~3_combout\ $ (!\u2|is_gt_4~1_combout\)) # (!\u2|is_gt_4~3_combout\))) # (!\u2|U2bcd[2]~1_combout\ & ((\u2|is_gt_4~3_combout\) # (\u2|U2bcd[3]~3_combout\ $ (!\u2|is_gt_4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U2bcd[2]~1_combout\,
	datab => \u2|U2bcd[3]~3_combout\,
	datac => \u2|is_gt_4~3_combout\,
	datad => \u2|is_gt_4~1_combout\,
	combout => \u2|is_gt_4~4_combout\);

-- Location: LCCOMB_X36_Y1_N6
\u2|is_gt_4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~5_combout\ = (\u2|U6bcd[2]~0_combout\ & (\u2|is_gt_4~4_combout\ & ((!\u2|U5bcd[2]~0_combout\) # (!\u2|U0bcd[2]~0_combout\)))) # (!\u2|U6bcd[2]~0_combout\ & (((\u2|U5bcd[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U0bcd[2]~0_combout\,
	datab => \u2|U5bcd[2]~0_combout\,
	datac => \u2|U6bcd[2]~0_combout\,
	datad => \u2|is_gt_4~4_combout\,
	combout => \u2|is_gt_4~5_combout\);

-- Location: LCCOMB_X36_Y1_N28
\u2|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux13~0_combout\ = \u2|is_gt_4~3_combout\ $ (!\u2|U2bcd[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|is_gt_4~3_combout\,
	datad => \u2|U2bcd[2]~1_combout\,
	combout => \u2|Mux13~0_combout\);

-- Location: LCCOMB_X35_Y1_N30
\u2|U0bcd[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U0bcd[2]~0_combout\ = (\u3|rpm_mem\(5)) # (\u3|rpm_mem\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|rpm_mem\(5),
	datac => \u3|rpm_mem\(6),
	combout => \u2|U0bcd[2]~0_combout\);

-- Location: LCCOMB_X35_Y1_N24
\u2|U6bcd[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[1]~3_combout\ = (\u2|U6bcd[1]~2_combout\) # ((!\u2|U2bcd[3]~3_combout\ & ((!\u3|rpm_mem\(7)) # (!\u2|U0bcd[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[1]~2_combout\,
	datab => \u2|U2bcd[3]~3_combout\,
	datac => \u2|U0bcd[2]~0_combout\,
	datad => \u3|rpm_mem\(7),
	combout => \u2|U6bcd[1]~3_combout\);

-- Location: LCCOMB_X32_Y1_N18
\u2|U4bcd[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U4bcd[3]~3_combout\ = \u2|U3bcd[2]~1_combout\ $ ((((!\u2|U3bcd[0]~0_combout\ & !\u3|rpm_mem\(1))) # (!\u2|U3bcd[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U3bcd[2]~1_combout\,
	datab => \u2|U3bcd[0]~0_combout\,
	datac => \u2|U3bcd[1]~2_combout\,
	datad => \u3|rpm_mem\(1),
	combout => \u2|U4bcd[3]~3_combout\);

-- Location: LCCOMB_X36_Y1_N14
\u2|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux13~1_combout\ = \u2|U4bcd[3]~3_combout\ $ (((\u2|Mux13~0_combout\ & ((!\u2|U6bcd[1]~3_combout\))) # (!\u2|Mux13~0_combout\ & (\u2|Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add6~0_combout\,
	datab => \u2|U6bcd[1]~3_combout\,
	datac => \u2|U4bcd[3]~3_combout\,
	datad => \u2|Mux13~0_combout\,
	combout => \u2|Mux13~1_combout\);

-- Location: LCCOMB_X36_Y1_N0
\u2|U6bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[2]~1_combout\ = (\u2|U6bcd[2]~0_combout\ & (!\u2|is_gt_4~4_combout\ & ((!\u2|U5bcd[2]~0_combout\) # (!\u2|U0bcd[2]~0_combout\)))) # (!\u2|U6bcd[2]~0_combout\ & (((\u2|U5bcd[2]~0_combout\ & \u2|is_gt_4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U0bcd[2]~0_combout\,
	datab => \u2|U5bcd[2]~0_combout\,
	datac => \u2|U6bcd[2]~0_combout\,
	datad => \u2|is_gt_4~4_combout\,
	combout => \u2|U6bcd[2]~1_combout\);

-- Location: LCCOMB_X36_Y1_N4
\u2|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux13~2_combout\ = (\u2|Mux13~1_combout\ & (!\u2|U6bcd[2]~1_combout\ & (\u2|is_gt_4~5_combout\ $ (\u2|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|is_gt_4~5_combout\,
	datab => \u2|Mux13~0_combout\,
	datac => \u2|Mux13~1_combout\,
	datad => \u2|U6bcd[2]~1_combout\,
	combout => \u2|Mux13~2_combout\);

-- Location: LCCOMB_X36_Y1_N22
\u2|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux12~0_combout\ = \u2|is_gt_4~3_combout\ $ (\u2|U4bcd[3]~3_combout\ $ (\u2|U2bcd[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|is_gt_4~3_combout\,
	datac => \u2|U4bcd[3]~3_combout\,
	datad => \u2|U2bcd[2]~1_combout\,
	combout => \u2|Mux12~0_combout\);

-- Location: LCCOMB_X35_Y1_N2
\u2|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Add6~0_combout\ = \u2|U2bcd[2]~1_combout\ $ (\u2|U2bcd[3]~3_combout\ $ (\u2|is_gt_4~3_combout\ $ (!\u2|is_gt_4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U2bcd[2]~1_combout\,
	datab => \u2|U2bcd[3]~3_combout\,
	datac => \u2|is_gt_4~3_combout\,
	datad => \u2|is_gt_4~1_combout\,
	combout => \u2|Add6~0_combout\);

-- Location: LCCOMB_X36_Y1_N12
\u2|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux12~1_combout\ = (\u2|is_gt_4~5_combout\ & (\u2|Mux12~0_combout\ & (!\u2|Add6~0_combout\))) # (!\u2|is_gt_4~5_combout\ & (!\u2|Mux12~0_combout\ & ((\u2|U6bcd[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|is_gt_4~5_combout\,
	datab => \u2|Mux12~0_combout\,
	datac => \u2|Add6~0_combout\,
	datad => \u2|U6bcd[1]~3_combout\,
	combout => \u2|Mux12~1_combout\);

-- Location: LCCOMB_X36_Y1_N8
\u2|U6bcd[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[1]~5_combout\ = (\u2|is_gt_4~5_combout\ & (!\u2|Add6~0_combout\)) # (!\u2|is_gt_4~5_combout\ & ((\u2|U6bcd[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add6~0_combout\,
	datab => \u2|U6bcd[1]~3_combout\,
	datad => \u2|is_gt_4~5_combout\,
	combout => \u2|U6bcd[1]~5_combout\);

-- Location: LCCOMB_X36_Y1_N10
\u2|U6bcd[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[0]~4_combout\ = \u2|U2bcd[2]~1_combout\ $ (\u2|is_gt_4~3_combout\ $ (!\u2|is_gt_4~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|U2bcd[2]~1_combout\,
	datac => \u2|is_gt_4~3_combout\,
	datad => \u2|is_gt_4~5_combout\,
	combout => \u2|U6bcd[0]~4_combout\);

-- Location: LCCOMB_X36_Y1_N26
\u2|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux11~0_combout\ = (!\u2|U6bcd[1]~5_combout\ & (\u2|U4bcd[3]~3_combout\ & !\u2|U6bcd[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|U6bcd[1]~5_combout\,
	datac => \u2|U4bcd[3]~3_combout\,
	datad => \u2|U6bcd[0]~4_combout\,
	combout => \u2|Mux11~0_combout\);

-- Location: LCCOMB_X36_Y1_N16
\u2|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux10~0_combout\ = (!\u2|U6bcd[2]~1_combout\ & ((\u2|U6bcd[0]~4_combout\ & (\u2|U6bcd[1]~5_combout\ $ (!\u2|U4bcd[3]~3_combout\))) # (!\u2|U6bcd[0]~4_combout\ & (\u2|U6bcd[1]~5_combout\ & !\u2|U4bcd[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[0]~4_combout\,
	datab => \u2|U6bcd[1]~5_combout\,
	datac => \u2|U4bcd[3]~3_combout\,
	datad => \u2|U6bcd[2]~1_combout\,
	combout => \u2|Mux10~0_combout\);

-- Location: LCCOMB_X36_Y1_N2
\u2|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux9~0_combout\ = ((\u2|U6bcd[1]~5_combout\ & \u2|U6bcd[0]~4_combout\)) # (!\u2|U4bcd[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|U6bcd[1]~5_combout\,
	datac => \u2|U4bcd[3]~3_combout\,
	datad => \u2|U6bcd[0]~4_combout\,
	combout => \u2|Mux9~0_combout\);

-- Location: LCCOMB_X36_Y1_N20
\u2|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux8~0_combout\ = (!\u2|U6bcd[2]~1_combout\ & ((\u2|U6bcd[0]~4_combout\ & (!\u2|U6bcd[1]~5_combout\ & !\u2|U4bcd[3]~3_combout\)) # (!\u2|U6bcd[0]~4_combout\ & ((!\u2|U4bcd[3]~3_combout\) # (!\u2|U6bcd[1]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[0]~4_combout\,
	datab => \u2|U6bcd[1]~5_combout\,
	datac => \u2|U4bcd[3]~3_combout\,
	datad => \u2|U6bcd[2]~1_combout\,
	combout => \u2|Mux8~0_combout\);

-- Location: LCCOMB_X36_Y1_N30
\u2|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux7~0_combout\ = (\u2|U6bcd[2]~1_combout\) # ((\u2|U6bcd[0]~4_combout\ & (\u2|U6bcd[1]~5_combout\)) # (!\u2|U6bcd[0]~4_combout\ & ((\u2|U4bcd[3]~3_combout\) # (!\u2|U6bcd[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[0]~4_combout\,
	datab => \u2|U6bcd[1]~5_combout\,
	datac => \u2|U4bcd[3]~3_combout\,
	datad => \u2|U6bcd[2]~1_combout\,
	combout => \u2|Mux7~0_combout\);

-- Location: LCCOMB_X36_Y1_N24
\u2|U6bcd[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[3]~6_combout\ = (\u2|U6bcd[2]~0_combout\ & (((\u2|U0bcd[2]~0_combout\ & \u2|U5bcd[2]~0_combout\)) # (!\u2|is_gt_4~4_combout\))) # (!\u2|U6bcd[2]~0_combout\ & (((!\u2|U5bcd[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U0bcd[2]~0_combout\,
	datab => \u2|U5bcd[2]~0_combout\,
	datac => \u2|U6bcd[2]~0_combout\,
	datad => \u2|is_gt_4~4_combout\,
	combout => \u2|U6bcd[3]~6_combout\);

-- Location: LCCOMB_X34_Y1_N8
\u2|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux15~0_combout\ = (\u2|is_gt_4~1_combout\) # (\u2|U6bcd[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|is_gt_4~1_combout\,
	datad => \u2|U6bcd[3]~6_combout\,
	combout => \u2|Mux15~0_combout\);

-- Location: LCCOMB_X34_Y1_N10
\u2|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux15~1_combout\ = (\u2|is_gt_4~1_combout\ & \u2|U6bcd[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|is_gt_4~1_combout\,
	datad => \u2|U6bcd[3]~6_combout\,
	combout => \u2|Mux15~1_combout\);

-- Location: LCCOMB_X72_Y1_N0
\u2|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux15~2_combout\ = (\u2|is_gt_4~1_combout\) # (!\u2|U6bcd[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|is_gt_4~1_combout\,
	datad => \u2|U6bcd[3]~6_combout\,
	combout => \u2|Mux15~2_combout\);

-- Location: CLKCTRL_G8
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

-- Location: LCFF_X33_Y47_N7
\u3|rpm_mem[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u3|rpm\(4),
	sload => VCC,
	ena => \u3|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3|rpm_mem\(4));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \u2|Mux13~2_combout\,
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
	datain => \u2|Mux12~1_combout\,
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
	datain => \u2|ALT_INV_Mux15~0_combout\,
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
	datain => \u2|Mux15~1_combout\,
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
	datain => \u2|ALT_INV_Mux15~0_combout\,
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
	datain => \u2|ALT_INV_U6bcd[3]~6_combout\,
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
	datain => \u2|Mux15~2_combout\,
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
	datain => \u2|ALT_INV_is_gt_4~1_combout\,
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

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem_sim[0]~I\ : cycloneii_io
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
	padio => ww_tix_mem_sim(0));

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem_sim[1]~I\ : cycloneii_io
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
	padio => ww_tix_mem_sim(1));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem_sim[2]~I\ : cycloneii_io
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
	padio => ww_tix_mem_sim(2));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem_sim[3]~I\ : cycloneii_io
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
	padio => ww_tix_mem_sim(3));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem_sim[4]~I\ : cycloneii_io
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
	padio => ww_tix_mem_sim(4));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem_sim[5]~I\ : cycloneii_io
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
	padio => ww_tix_mem_sim(5));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem_sim[6]~I\ : cycloneii_io
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
	padio => ww_tix_mem_sim(6));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem_sim[7]~I\ : cycloneii_io
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
	padio => ww_tix_mem_sim(7));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem_sim[8]~I\ : cycloneii_io
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
	padio => ww_tix_mem_sim(8));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem_sim[9]~I\ : cycloneii_io
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
	padio => ww_tix_mem_sim(9));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem_sim[10]~I\ : cycloneii_io
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
	padio => ww_tix_mem_sim(10));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem_sim[11]~I\ : cycloneii_io
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
	padio => ww_tix_mem_sim(11));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem_sim[12]~I\ : cycloneii_io
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
	padio => ww_tix_mem_sim(12));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem_sim[13]~I\ : cycloneii_io
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
	padio => ww_tix_mem_sim(13));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem_sim[14]~I\ : cycloneii_io
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
	padio => ww_tix_mem_sim(14));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\tix_mem_sim[15]~I\ : cycloneii_io
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
	padio => ww_tix_mem_sim(15));

-- Location: PIN_AJ11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rpm_mem_sim[0]~I\ : cycloneii_io
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
	datain => \u3|rpm_mem\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem_sim(0));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rpm_mem_sim[1]~I\ : cycloneii_io
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
	datain => \u3|rpm_mem\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem_sim(1));

-- Location: PIN_AK11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rpm_mem_sim[2]~I\ : cycloneii_io
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
	datain => \u3|rpm_mem\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem_sim(2));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rpm_mem_sim[3]~I\ : cycloneii_io
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
	datain => \u3|rpm_mem\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem_sim(3));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rpm_mem_sim[4]~I\ : cycloneii_io
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
	datain => \u3|rpm_mem\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem_sim(4));

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rpm_mem_sim[5]~I\ : cycloneii_io
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
	datain => \u3|rpm_mem\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem_sim(5));

-- Location: PIN_AG12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rpm_mem_sim[6]~I\ : cycloneii_io
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
	datain => \u3|rpm_mem\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem_sim(6));

-- Location: PIN_AH12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rpm_mem_sim[7]~I\ : cycloneii_io
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
	datain => \u3|rpm_mem\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem_sim(7));

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

-- Location: PIN_AK22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AJ3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AJ15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AG5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AJ16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AH13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AJ28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AH3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AG25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AH26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


