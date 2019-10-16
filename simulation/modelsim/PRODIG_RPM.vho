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

-- DATE "10/16/2019 20:07:37"

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
	hall_sens : IN std_logic;
	HEX0_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX1_D : OUT std_logic_vector(6 DOWNTO 0);
	HEX2_D : OUT std_logic_vector(6 DOWNTO 0);
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
	HEX7_DP : OUT std_logic;
	LCD_EN : OUT std_logic;
	LCD_RS : OUT std_logic;
	LCD_RW : OUT std_logic;
	LCD_DATA : INOUT std_logic_vector(7 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	LEDG : OUT std_logic_vector(8 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	BUTTON : IN std_logic_vector(3 DOWNTO 0);
	KNOP : IN std_logic_vector(6 DOWNTO 1);
	MOTOR_UP : OUT std_logic;
	MOTOR_DOWN : OUT std_logic;
	DB : IN std_logic_vector(7 DOWNTO 0);
	BUSY : IN std_logic;
	RD : OUT std_logic;
	Convstart : OUT std_logic
	);
END PRODIG_RPM;

-- Design Ports Information
-- LCD_DATA[0]	=>  Location: PIN_D29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_DATA[1]	=>  Location: PIN_E27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_DATA[2]	=>  Location: PIN_D28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_DATA[3]	=>  Location: PIN_E29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_DATA[4]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_DATA[5]	=>  Location: PIN_E30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_DATA[6]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_DATA[7]	=>  Location: PIN_F29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- HEX3_D[0]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_D[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_D[2]	=>  Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_D[3]	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_D[4]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_D[5]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_D[6]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_D[0]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_D[1]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_D[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_D[3]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_D[4]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_D[5]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_D[6]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_D[0]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_D[1]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_D[2]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_D[3]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_D[4]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_D[5]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_D[6]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_D[0]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_D[1]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_D[2]	=>  Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_D[3]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_D[4]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_D[5]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_D[6]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_D[0]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_D[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_D[2]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_D[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_D[4]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_D[5]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_D[6]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0_DP	=>  Location: PIN_AF12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1_DP	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2_DP	=>  Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3_DP	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX4_DP	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX5_DP	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX6_DP	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX7_DP	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_EN	=>  Location: PIN_E28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_RS	=>  Location: PIN_C30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_RW	=>  Location: PIN_C29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_AJ6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_AK5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_AJ5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_AJ4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_AK3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_AH4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_AJ3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_AJ2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_AH3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_AD14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_W27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_Y27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_AA27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[8]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BUTTON[0]	=>  Location: PIN_T29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BUTTON[1]	=>  Location: PIN_T28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BUTTON[2]	=>  Location: PIN_U30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KNOP[4]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MOTOR_UP	=>  Location: PIN_G29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MOTOR_DOWN	=>  Location: PIN_F30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RD	=>  Location: PIN_H30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Convstart	=>  Location: PIN_H29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DB[0]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DB[1]	=>  Location: PIN_J30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DB[2]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DB[3]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DB[4]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DB[5]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DB[6]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DB[7]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- hall_sens	=>  Location: PIN_G30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BUTTON[3]	=>  Location: PIN_U29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BUSY	=>  Location: PIN_J29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KNOP[5]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KNOP[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KNOP[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KNOP[6]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KNOP[3]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_hall_sens : std_logic;
SIGNAL ww_HEX0_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1_D : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2_D : std_logic_vector(6 DOWNTO 0);
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
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_BUTTON : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KNOP : std_logic_vector(6 DOWNTO 1);
SIGNAL ww_MOTOR_UP : std_logic;
SIGNAL ww_MOTOR_DOWN : std_logic;
SIGNAL ww_DB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_BUSY : std_logic;
SIGNAL ww_RD : std_logic;
SIGNAL ww_Convstart : std_logic;
SIGNAL \u1|clkint~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u5|Add1~9_combout\ : std_logic;
SIGNAL \u5|x[0]~22_combout\ : std_logic;
SIGNAL \u5|x[2]~26_combout\ : std_logic;
SIGNAL \u5|x[7]~36_combout\ : std_logic;
SIGNAL \u5|x[8]~38_combout\ : std_logic;
SIGNAL \u5|x[15]~52_combout\ : std_logic;
SIGNAL \u5|x[17]~57\ : std_logic;
SIGNAL \u5|x[18]~58_combout\ : std_logic;
SIGNAL \u5|x[18]~59\ : std_logic;
SIGNAL \u5|x[19]~60_combout\ : std_logic;
SIGNAL \u0|Add2~0_combout\ : std_logic;
SIGNAL \u0|Add2~6_combout\ : std_logic;
SIGNAL \u0|Add2~8_combout\ : std_logic;
SIGNAL \u0|Add2~10_combout\ : std_logic;
SIGNAL \u0|Add2~12_combout\ : std_logic;
SIGNAL \u0|Add2~14_combout\ : std_logic;
SIGNAL \u0|Add2~26_combout\ : std_logic;
SIGNAL \u0|Add2~28_combout\ : std_logic;
SIGNAL \u0|Add3~5\ : std_logic;
SIGNAL \u0|Add3~6_combout\ : std_logic;
SIGNAL \u0|Add3~7\ : std_logic;
SIGNAL \u0|Add3~8_combout\ : std_logic;
SIGNAL \u0|Add3~9\ : std_logic;
SIGNAL \u0|Add3~10_combout\ : std_logic;
SIGNAL \u0|Add3~11\ : std_logic;
SIGNAL \u0|Add3~12_combout\ : std_logic;
SIGNAL \u0|Add3~13\ : std_logic;
SIGNAL \u0|Add3~14_combout\ : std_logic;
SIGNAL \u0|Add3~15\ : std_logic;
SIGNAL \u0|Add3~16_combout\ : std_logic;
SIGNAL \u0|Add3~17\ : std_logic;
SIGNAL \u0|Add3~18_combout\ : std_logic;
SIGNAL \u0|Add3~19\ : std_logic;
SIGNAL \u0|Add3~20_combout\ : std_logic;
SIGNAL \u1|Add0~20_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~4_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~12_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~14_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~24_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~30_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~32_combout\ : std_logic;
SIGNAL \u3a|Add0~0_combout\ : std_logic;
SIGNAL \u3a|Add0~1\ : std_logic;
SIGNAL \u3a|Add0~2_combout\ : std_logic;
SIGNAL \u3a|Add0~3\ : std_logic;
SIGNAL \u3a|Add0~4_combout\ : std_logic;
SIGNAL \u3a|Add0~5\ : std_logic;
SIGNAL \u3a|Add0~6_combout\ : std_logic;
SIGNAL \u3a|Add0~7\ : std_logic;
SIGNAL \u3a|Add0~8_combout\ : std_logic;
SIGNAL \u3a|Add0~9\ : std_logic;
SIGNAL \u3a|Add0~10_combout\ : std_logic;
SIGNAL \u3a|Add0~11\ : std_logic;
SIGNAL \u3a|Add0~12_combout\ : std_logic;
SIGNAL \u4|Add1~2_combout\ : std_logic;
SIGNAL \u4|Add1~4_combout\ : std_logic;
SIGNAL \u4|Add1~6_combout\ : std_logic;
SIGNAL \u3f|Add0~0_combout\ : std_logic;
SIGNAL \u3f|Add0~6_combout\ : std_logic;
SIGNAL \u3f|Add0~11\ : std_logic;
SIGNAL \u3f|Add0~12_combout\ : std_logic;
SIGNAL \u3e|Add0~8_combout\ : std_logic;
SIGNAL \u3e|Add0~10_combout\ : std_logic;
SIGNAL \u0|omwentel255[1]~10_combout\ : std_logic;
SIGNAL \u3c|Add1~0_combout\ : std_logic;
SIGNAL \u3c|Add1~24_combout\ : std_logic;
SIGNAL \u8|Add0~0_combout\ : std_logic;
SIGNAL \u8|Add0~4_combout\ : std_logic;
SIGNAL \u8|Add0~10_combout\ : std_logic;
SIGNAL \u8|count_RPM[6]~20_combout\ : std_logic;
SIGNAL \u8|tot_RPM_int[9]~30_combout\ : std_logic;
SIGNAL \u3d|Add0~4_combout\ : std_logic;
SIGNAL \u3d|Add0~6_combout\ : std_logic;
SIGNAL \u3d|Add0~8_combout\ : std_logic;
SIGNAL \u3c|Add0~2_combout\ : std_logic;
SIGNAL \u3c|Add0~4_combout\ : std_logic;
SIGNAL \u3c|Add0~6_combout\ : std_logic;
SIGNAL \u3c|Add0~8_combout\ : std_logic;
SIGNAL \u3c|Add0~11\ : std_logic;
SIGNAL \u3c|Add0~12_combout\ : std_logic;
SIGNAL \u3b|Add0~0_combout\ : std_logic;
SIGNAL \u3b|Add0~2_combout\ : std_logic;
SIGNAL \u3b|Add0~6_combout\ : std_logic;
SIGNAL \u3b|Add0~10_combout\ : std_logic;
SIGNAL \u5|Equal0~1_combout\ : std_logic;
SIGNAL \u5|LessThan1~1_combout\ : std_logic;
SIGNAL \u5|LessThan1~2_combout\ : std_logic;
SIGNAL \u5|rpm[0]~1_combout\ : std_logic;
SIGNAL \u5|LessThan2~0_combout\ : std_logic;
SIGNAL \u5|stop~2_combout\ : std_logic;
SIGNAL \u0|Equal2~1_combout\ : std_logic;
SIGNAL \u0|LessThan0~0_combout\ : std_logic;
SIGNAL \u0|LessThan0~1_combout\ : std_logic;
SIGNAL \u0|LessThan0~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Equal0~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Equal0~5_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_8~regout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_9~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector99~3_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector52~2_combout\ : std_logic;
SIGNAL \u9|process_0~1_combout\ : std_logic;
SIGNAL \u9|restarget~6_combout\ : std_logic;
SIGNAL \u0|wait_time[7]~4_combout\ : std_logic;
SIGNAL \u0|wait_time[6]~5_combout\ : std_logic;
SIGNAL \u0|wait_time[4]~6_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector17~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector6~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector9~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector14~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector15~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector15~2_combout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_8~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector31~0_combout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_11~regout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_9~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector32~0_combout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_10~regout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_6~regout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_7~regout\ : std_logic;
SIGNAL \u3a|ffa[6]~0_combout\ : std_logic;
SIGNAL \u3a|ffa[2]~5_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector88~1_combout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_2~regout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_4~regout\ : std_logic;
SIGNAL \u4|lcdm|return_state.reset~regout\ : std_logic;
SIGNAL \u4|state.update_linecount~regout\ : std_logic;
SIGNAL \u4|Selector18~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector63~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector66~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector64~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector65~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector61~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector61~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector62~0_combout\ : std_logic;
SIGNAL \u3a|Add0~14_combout\ : std_logic;
SIGNAL \u3a|Add0~15_combout\ : std_logic;
SIGNAL \u4|gemiddelde_line[12][0]~regout\ : std_logic;
SIGNAL \u4|maximale_line[14][0]~regout\ : std_logic;
SIGNAL \u4|totale_omw_line[12][0]~regout\ : std_logic;
SIGNAL \u4|RPM_line[13][0]~regout\ : std_logic;
SIGNAL \u4|maximale_line[13][0]~regout\ : std_logic;
SIGNAL \u4|totale_omw_line[15][0]~regout\ : std_logic;
SIGNAL \u4|gemiddelde_line[14][1]~regout\ : std_logic;
SIGNAL \u4|Mux263~59_combout\ : std_logic;
SIGNAL \u4|RPM_line[12][1]~regout\ : std_logic;
SIGNAL \u4|gemiddelde_line[12][1]~regout\ : std_logic;
SIGNAL \u4|Mux263~60_combout\ : std_logic;
SIGNAL \u4|RPM_line[14][1]~regout\ : std_logic;
SIGNAL \u4|Mux263~61_combout\ : std_logic;
SIGNAL \u4|maximale_line[12][1]~regout\ : std_logic;
SIGNAL \u4|weerstand_line[12][1]~regout\ : std_logic;
SIGNAL \u4|Mux222~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[12][1]~regout\ : std_logic;
SIGNAL \u4|totale_omw_line[14][1]~regout\ : std_logic;
SIGNAL \u4|Mux263~62_combout\ : std_logic;
SIGNAL \u4|maximale_line[14][1]~regout\ : std_logic;
SIGNAL \u4|Mux263~63_combout\ : std_logic;
SIGNAL \u4|Mux263~64_combout\ : std_logic;
SIGNAL \u4|Mux263~65_combout\ : std_logic;
SIGNAL \u4|Mux263~66_combout\ : std_logic;
SIGNAL \u4|Mux262~0_combout\ : std_logic;
SIGNAL \u4|RPM_line[13][1]~regout\ : std_logic;
SIGNAL \u4|gemiddelde_line[13][1]~regout\ : std_logic;
SIGNAL \u4|Mux263~67_combout\ : std_logic;
SIGNAL \u4|maximale_line[13][1]~regout\ : std_logic;
SIGNAL \u4|Mux263~68_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[13][1]~regout\ : std_logic;
SIGNAL \u4|Mux263~69_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[15][1]~regout\ : std_logic;
SIGNAL \u4|Mux263~70_combout\ : std_logic;
SIGNAL \u4|Mux262~1_combout\ : std_logic;
SIGNAL \u4|Mux263~71_combout\ : std_logic;
SIGNAL \u4|Mux263~72_combout\ : std_logic;
SIGNAL \u4|Mux263~73_combout\ : std_logic;
SIGNAL \u4|Mux263~74_combout\ : std_logic;
SIGNAL \u4|Mux263~75_combout\ : std_logic;
SIGNAL \u4|Mux263~77_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[16][1]~regout\ : std_logic;
SIGNAL \u4|Mux263~79_combout\ : std_logic;
SIGNAL \u4|Mux262~2_combout\ : std_logic;
SIGNAL \u4|Mux263~80_combout\ : std_logic;
SIGNAL \u4|Mux263~81_combout\ : std_logic;
SIGNAL \u4|Mux262~3_combout\ : std_logic;
SIGNAL \u4|Mux262~4_combout\ : std_logic;
SIGNAL \u4|Mux263~82_combout\ : std_logic;
SIGNAL \u4|Mux263~83_combout\ : std_logic;
SIGNAL \u4|maximale_line[13][2]~regout\ : std_logic;
SIGNAL \u4|totale_omw_line[13][2]~regout\ : std_logic;
SIGNAL \u4|totale_omw_line[15][2]~regout\ : std_logic;
SIGNAL \u4|totale_omw_line[14][3]~regout\ : std_logic;
SIGNAL \u4|maximale_line[13][3]~regout\ : std_logic;
SIGNAL \u4|totale_omw_line[13][3]~regout\ : std_logic;
SIGNAL \u4|Mux263~109_combout\ : std_logic;
SIGNAL \u4|Mux263~125_combout\ : std_logic;
SIGNAL \u4|Mux263~126_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector57~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector57~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector59~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector59~1_combout\ : std_logic;
SIGNAL \u4|lcdm|return_state.reset~0_combout\ : std_logic;
SIGNAL \u4|lcdm|return_state.reset~1_combout\ : std_logic;
SIGNAL \u4|Selector4~0_combout\ : std_logic;
SIGNAL \u3f|ffa[6]~4_combout\ : std_logic;
SIGNAL \u3e|ffa[4]~6_combout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u6|Mux0~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|u0|Mux0~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u0|Mux0~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u3|Mux0~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u6|Mux0~0_combout\ : std_logic;
SIGNAL \u4|RPM_line~14_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|u4|Mux0~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|u4|Mux0~0_combout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u4|Mux3~0_combout\ : std_logic;
SIGNAL \u4|RPM_line~15_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u4|Mux3~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|u4|Mux3~0_combout\ : std_logic;
SIGNAL \u4|RPM_line~16_combout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u6|Mux3~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|u6|Mux3~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u6|Mux3~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|u2|Mux0~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|u6|Mux3~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|u4|Mux3~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|u6|Mux2~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u6|Mux2~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|u6|Mux2~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u4|Mux1~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|u6|Mux1~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u6|Mux1~0_combout\ : std_logic;
SIGNAL \u3f|Add0~15_combout\ : std_logic;
SIGNAL \u8|Equal0~2_combout\ : std_logic;
SIGNAL \u8|LessThan0~16_combout\ : std_logic;
SIGNAL \u6|rpm_max_int~0_combout\ : std_logic;
SIGNAL \u3c|process_0~0_combout\ : std_logic;
SIGNAL \u3c|long_press_counter~0_combout\ : std_logic;
SIGNAL \u3c|Equal0~0_combout\ : std_logic;
SIGNAL \u6|rpm_int~2_combout\ : std_logic;
SIGNAL \u6|rpm_int~6_combout\ : std_logic;
SIGNAL \u3b|a~regout\ : std_logic;
SIGNAL \u3d|ffa[6]~0_combout\ : std_logic;
SIGNAL \u3d|ffa[3]~7_combout\ : std_logic;
SIGNAL \u3b|ffa[2]~3_combout\ : std_logic;
SIGNAL \u3b|ffa[3]~7_combout\ : std_logic;
SIGNAL \u3c|Add0~14_combout\ : std_logic;
SIGNAL \u4|Mux263~131_combout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u1|Mux0~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u1|Mux0~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u2|Mux0~0_combout\ : std_logic;
SIGNAL \u4|RPM_line~21_combout\ : std_logic;
SIGNAL \u4|RPM_line~3_combout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u5|Mux0~3_combout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u5|Mux0~9_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|u5|Mux0~3_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|u5|Mux0~9_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u5|Mux0~3_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u5|Mux0~9_combout\ : std_logic;
SIGNAL \u3b|a~0_combout\ : std_logic;
SIGNAL \u4|maximale_line[14][0]~feeder_combout\ : std_logic;
SIGNAL \LCD_DATA[7]~7\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \u4|Selector0~0_combout\ : std_logic;
SIGNAL \u4|state.reset~regout\ : std_logic;
SIGNAL \u4|Selector1~3_combout\ : std_logic;
SIGNAL \u4|Selector12~0_combout\ : std_logic;
SIGNAL \u4|Selector18~0_combout\ : std_logic;
SIGNAL \u4|Selector20~0_combout\ : std_logic;
SIGNAL \u4|Selector20~1_combout\ : std_logic;
SIGNAL \u4|Mux50~0_combout\ : std_logic;
SIGNAL \u4|Selector19~0_combout\ : std_logic;
SIGNAL \u4|Selector21~0_combout\ : std_logic;
SIGNAL \u4|Selector21~1_combout\ : std_logic;
SIGNAL \u4|Selector21~2_combout\ : std_logic;
SIGNAL \u4|drive~0_combout\ : std_logic;
SIGNAL \u4|Selector12~1_combout\ : std_logic;
SIGNAL \u4|state.hold~regout\ : std_logic;
SIGNAL \u4|Selector1~2_combout\ : std_logic;
SIGNAL \u4|Selector1~4_combout\ : std_logic;
SIGNAL \u4|Selector1~5_combout\ : std_logic;
SIGNAL \u4|state.write_char~regout\ : std_logic;
SIGNAL \u4|wr~regout\ : std_logic;
SIGNAL \u4|Selector3~0_combout\ : std_logic;
SIGNAL \u4|state.update~regout\ : std_logic;
SIGNAL \u4|Selector14~0_combout\ : std_logic;
SIGNAL \u4|Selector16~0_combout\ : std_logic;
SIGNAL \u4|Selector18~2_combout\ : std_logic;
SIGNAL \u4|Add1~0_combout\ : std_logic;
SIGNAL \u4|Selector18~3_combout\ : std_logic;
SIGNAL \u4|Add1~1\ : std_logic;
SIGNAL \u4|Add1~3\ : std_logic;
SIGNAL \u4|Add1~5\ : std_logic;
SIGNAL \u4|Add1~7\ : std_logic;
SIGNAL \u4|Add1~8_combout\ : std_logic;
SIGNAL \u4|Selector14~1_combout\ : std_logic;
SIGNAL \u4|Selector14~2_combout\ : std_logic;
SIGNAL \u4|Selector17~0_combout\ : std_logic;
SIGNAL \u4|Mux258~0_combout\ : std_logic;
SIGNAL \u4|Equal1~0_combout\ : std_logic;
SIGNAL \u4|Selector22~0_combout\ : std_logic;
SIGNAL \u4|Selector22~1_combout\ : std_logic;
SIGNAL \u4|home~regout\ : std_logic;
SIGNAL \u4|goto10~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \u4|goto10~regout\ : std_logic;
SIGNAL \u4|goto30~0_combout\ : std_logic;
SIGNAL \u4|goto30~regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[0]~8_combout\ : std_logic;
SIGNAL \u4|lcdm|busy~0_combout\ : std_logic;
SIGNAL \u4|lcdm|busy~regout\ : std_logic;
SIGNAL \u4|Selector5~0_combout\ : std_logic;
SIGNAL \u4|state.update_linecount_wait~regout\ : std_logic;
SIGNAL \u4|state.hold2~regout\ : std_logic;
SIGNAL \u4|WideOr7~combout\ : std_logic;
SIGNAL \u4|Selector15~0_combout\ : std_logic;
SIGNAL \u4|Selector15~1_combout\ : std_logic;
SIGNAL \u3b|output_int~0_combout\ : std_logic;
SIGNAL \u3b|ffa[6]~0_combout\ : std_logic;
SIGNAL \u3b|Add0~14_combout\ : std_logic;
SIGNAL \u3b|Add0~15_combout\ : std_logic;
SIGNAL \u3b|Add0~1\ : std_logic;
SIGNAL \u3b|Add0~3\ : std_logic;
SIGNAL \u3b|Add0~4_combout\ : std_logic;
SIGNAL \u3b|ffa[2]~5_combout\ : std_logic;
SIGNAL \u3b|Add0~5\ : std_logic;
SIGNAL \u3b|Add0~7\ : std_logic;
SIGNAL \u3b|Add0~8_combout\ : std_logic;
SIGNAL \u3b|ffa[4]~6_combout\ : std_logic;
SIGNAL \u3b|Add0~9\ : std_logic;
SIGNAL \u3b|Add0~11\ : std_logic;
SIGNAL \u3b|Add0~12_combout\ : std_logic;
SIGNAL \u3b|ffa[6]~4_combout\ : std_logic;
SIGNAL \u3b|LessThan0~0_combout\ : std_logic;
SIGNAL \u3b|ffa[6]~1_combout\ : std_logic;
SIGNAL \u3b|ffa[5]~2_combout\ : std_logic;
SIGNAL \u3b|output_int~1_combout\ : std_logic;
SIGNAL \u3b|output_int~regout\ : std_logic;
SIGNAL \u3b|output~0_combout\ : std_logic;
SIGNAL \u3b|output~regout\ : std_logic;
SIGNAL \start_stop_state~feeder_combout\ : std_logic;
SIGNAL \start_stop_state~regout\ : std_logic;
SIGNAL \start~0_combout\ : std_logic;
SIGNAL \start~regout\ : std_logic;
SIGNAL \u4|start~0_combout\ : std_logic;
SIGNAL \u4|start~regout\ : std_logic;
SIGNAL \u3d|a~0_combout\ : std_logic;
SIGNAL \u3d|ffa[2]~3_combout\ : std_logic;
SIGNAL \u3d|Add0~0_combout\ : std_logic;
SIGNAL \u3d|Add0~15_combout\ : std_logic;
SIGNAL \u3d|Add0~1\ : std_logic;
SIGNAL \u3d|Add0~2_combout\ : std_logic;
SIGNAL \u3d|Add0~14_combout\ : std_logic;
SIGNAL \u3d|Add0~3\ : std_logic;
SIGNAL \u3d|Add0~5\ : std_logic;
SIGNAL \u3d|Add0~7\ : std_logic;
SIGNAL \u3d|Add0~9\ : std_logic;
SIGNAL \u3d|Add0~10_combout\ : std_logic;
SIGNAL \u3d|ffa[5]~2_combout\ : std_logic;
SIGNAL \u3d|ffa[6]~1_combout\ : std_logic;
SIGNAL \u3d|ffa[4]~6_combout\ : std_logic;
SIGNAL \u3d|ffa[2]~5_combout\ : std_logic;
SIGNAL \u3d|Add0~11\ : std_logic;
SIGNAL \u3d|Add0~12_combout\ : std_logic;
SIGNAL \u3d|ffa[6]~4_combout\ : std_logic;
SIGNAL \u3d|LessThan0~0_combout\ : std_logic;
SIGNAL \u3d|output_int~1_combout\ : std_logic;
SIGNAL \u3d|a~regout\ : std_logic;
SIGNAL \u3d|output_int~0_combout\ : std_logic;
SIGNAL \u3d|output_int~regout\ : std_logic;
SIGNAL \u3d|output~0_combout\ : std_logic;
SIGNAL \u3d|output~regout\ : std_logic;
SIGNAL \knop_mode_state~regout\ : std_logic;
SIGNAL \mode~0_combout\ : std_logic;
SIGNAL \mode~regout\ : std_logic;
SIGNAL \u4|Mux263~47_combout\ : std_logic;
SIGNAL \u4|Mux263~49_combout\ : std_logic;
SIGNAL \u4|Mux263~129_combout\ : std_logic;
SIGNAL \u4|aline~2_combout\ : std_logic;
SIGNAL \u4|Mux263~55_combout\ : std_logic;
SIGNAL \u4|RPM_line[1][5]~feeder_combout\ : std_logic;
SIGNAL \u4|RPM_line[1][5]~regout\ : std_logic;
SIGNAL \u4|aline~3_combout\ : std_logic;
SIGNAL \u4|Mux263~56_combout\ : std_logic;
SIGNAL \u4|Mux263~50_combout\ : std_logic;
SIGNAL \u4|Mux263~130_combout\ : std_logic;
SIGNAL \u4|Mux263~52_combout\ : std_logic;
SIGNAL \u4|aline~1_combout\ : std_logic;
SIGNAL \u0|Add0~0_combout\ : std_logic;
SIGNAL \hall_sens~combout\ : std_logic;
SIGNAL \u3a|a~0_combout\ : std_logic;
SIGNAL \u3a|ffa[2]~3_combout\ : std_logic;
SIGNAL \u3a|ffa[6]~1_combout\ : std_logic;
SIGNAL \u3a|ffa[6]~4_combout\ : std_logic;
SIGNAL \u3a|ffa[3]~7_combout\ : std_logic;
SIGNAL \u3a|ffa[4]~6_combout\ : std_logic;
SIGNAL \u3a|LessThan0~0_combout\ : std_logic;
SIGNAL \u3a|ffa[5]~2_combout\ : std_logic;
SIGNAL \u3a|output_int~1_combout\ : std_logic;
SIGNAL \u3a|a~regout\ : std_logic;
SIGNAL \u3a|output_int~0_combout\ : std_logic;
SIGNAL \u3a|output_int~regout\ : std_logic;
SIGNAL \u3a|output~0_combout\ : std_logic;
SIGNAL \u3a|output~regout\ : std_logic;
SIGNAL \u0|hal_state~regout\ : std_logic;
SIGNAL \u0|process_0~1_combout\ : std_logic;
SIGNAL \u0|omwentel99~3_combout\ : std_logic;
SIGNAL \u0|omwentel99[3]~0_combout\ : std_logic;
SIGNAL \u0|Add0~1\ : std_logic;
SIGNAL \u0|Add0~3\ : std_logic;
SIGNAL \u0|Add0~5\ : std_logic;
SIGNAL \u0|Add0~6_combout\ : std_logic;
SIGNAL \u0|omwentel99~4_combout\ : std_logic;
SIGNAL \u0|Add0~7\ : std_logic;
SIGNAL \u0|Add0~8_combout\ : std_logic;
SIGNAL \u0|omwentel99~6_combout\ : std_logic;
SIGNAL \u0|Add0~9\ : std_logic;
SIGNAL \u0|Add0~10_combout\ : std_logic;
SIGNAL \u0|omwentel99~7_combout\ : std_logic;
SIGNAL \u0|Add0~11\ : std_logic;
SIGNAL \u0|Add0~12_combout\ : std_logic;
SIGNAL \u0|omwentel99~5_combout\ : std_logic;
SIGNAL \u0|Add0~13\ : std_logic;
SIGNAL \u0|Add0~14_combout\ : std_logic;
SIGNAL \u0|Equal0~1_combout\ : std_logic;
SIGNAL \u0|omwentel99~2_combout\ : std_logic;
SIGNAL \u0|Add0~2_combout\ : std_logic;
SIGNAL \u0|Add0~4_combout\ : std_logic;
SIGNAL \u0|Equal0~0_combout\ : std_logic;
SIGNAL \u0|omwentel99~9_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[16][0]~regout\ : std_logic;
SIGNAL \u4|Mux263~51_combout\ : std_logic;
SIGNAL \u4|Mux263~53_combout\ : std_logic;
SIGNAL \u4|Mux263~54_combout\ : std_logic;
SIGNAL \u4|Mux263~57_combout\ : std_logic;
SIGNAL \u4|Mux263~37_combout\ : std_logic;
SIGNAL \u4|Mux265~0_combout\ : std_logic;
SIGNAL \u4|Mux263~38_combout\ : std_logic;
SIGNAL \u4|Mux263~39_combout\ : std_logic;
SIGNAL \u0|omwentel255[0]~9\ : std_logic;
SIGNAL \u0|omwentel255[1]~11\ : std_logic;
SIGNAL \u0|omwentel255[2]~12_combout\ : std_logic;
SIGNAL \u0|omwentel255[6]~22_combout\ : std_logic;
SIGNAL \u0|omwentel255[3]~15\ : std_logic;
SIGNAL \u0|omwentel255[4]~17\ : std_logic;
SIGNAL \u0|omwentel255[5]~18_combout\ : std_logic;
SIGNAL \u0|omwentel255[4]~16_combout\ : std_logic;
SIGNAL \u0|Equal1~0_combout\ : std_logic;
SIGNAL \u0|omwentel255[5]~19\ : std_logic;
SIGNAL \u0|omwentel255[6]~20_combout\ : std_logic;
SIGNAL \u0|omwentel255[0]~8_combout\ : std_logic;
SIGNAL \u0|omwentel255[6]~21\ : std_logic;
SIGNAL \u0|omwentel255[7]~24_combout\ : std_logic;
SIGNAL \u0|Equal1~1_combout\ : std_logic;
SIGNAL \u0|omwentel99[3]~1_combout\ : std_logic;
SIGNAL \u0|omwentel255[6]~23_combout\ : std_logic;
SIGNAL \u0|omwentel255[2]~13\ : std_logic;
SIGNAL \u0|omwentel255[3]~14_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u1|Mux1~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u1|Mux3~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u2|Mux3~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u1|Mux2~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u2|Mux2~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u2|Mux1~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u3|Mux2~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u3|Mux3~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u3|Mux1~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u4|Mux0~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[13][0]~regout\ : std_logic;
SIGNAL \u4|Mux263~42_combout\ : std_logic;
SIGNAL \u8|gem_RPM_int[0]~9\ : std_logic;
SIGNAL \u8|gem_RPM_int[1]~11_combout\ : std_logic;
SIGNAL \u8|Add0~1\ : std_logic;
SIGNAL \u8|Add0~2_combout\ : std_logic;
SIGNAL \u8|Add0~3\ : std_logic;
SIGNAL \u8|Add0~5\ : std_logic;
SIGNAL \u8|Add0~6_combout\ : std_logic;
SIGNAL \u8|Add0~7\ : std_logic;
SIGNAL \u8|Add0~8_combout\ : std_logic;
SIGNAL \u8|wait_gem_RPM~4_combout\ : std_logic;
SIGNAL \u8|Add0~9\ : std_logic;
SIGNAL \u8|Add0~11\ : std_logic;
SIGNAL \u8|Add0~12_combout\ : std_logic;
SIGNAL \u8|Add0~13\ : std_logic;
SIGNAL \u8|Add0~14_combout\ : std_logic;
SIGNAL \u8|Add0~15\ : std_logic;
SIGNAL \u8|Add0~16_combout\ : std_logic;
SIGNAL \u8|wait_gem_RPM~3_combout\ : std_logic;
SIGNAL \u8|Add0~17\ : std_logic;
SIGNAL \u8|Add0~18_combout\ : std_logic;
SIGNAL \u8|wait_gem_RPM~2_combout\ : std_logic;
SIGNAL \u8|Equal0~1_combout\ : std_logic;
SIGNAL \u8|wait_gem_RPM~5_combout\ : std_logic;
SIGNAL \u8|Equal0~3_combout\ : std_logic;
SIGNAL \u8|Add0~19\ : std_logic;
SIGNAL \u8|Add0~20_combout\ : std_logic;
SIGNAL \u8|wait_gem_RPM~1_combout\ : std_logic;
SIGNAL \u8|Add0~21\ : std_logic;
SIGNAL \u8|Add0~22_combout\ : std_logic;
SIGNAL \u8|Add0~23\ : std_logic;
SIGNAL \u8|Add0~24_combout\ : std_logic;
SIGNAL \u8|Add0~25\ : std_logic;
SIGNAL \u8|Add0~26_combout\ : std_logic;
SIGNAL \u8|wait_gem_RPM~0_combout\ : std_logic;
SIGNAL \u8|Equal0~0_combout\ : std_logic;
SIGNAL \u8|Equal0~4_combout\ : std_logic;
SIGNAL \u8|gem_RPM[7]~0_combout\ : std_logic;
SIGNAL \u8|count_RPM[0]~8_combout\ : std_logic;
SIGNAL \u3c|a~1_combout\ : std_logic;
SIGNAL \u3c|LessThan0~1_combout\ : std_logic;
SIGNAL \u3c|ffa[3]~6_combout\ : std_logic;
SIGNAL \u3c|ffa[6]~3_combout\ : std_logic;
SIGNAL \u3c|ffa[4]~5_combout\ : std_logic;
SIGNAL \u3c|LessThan0~0_combout\ : std_logic;
SIGNAL \u3c|a~0_combout\ : std_logic;
SIGNAL \u3c|a~regout\ : std_logic;
SIGNAL \u3c|ffa[6]~2_combout\ : std_logic;
SIGNAL \u3c|ffa[2]~4_combout\ : std_logic;
SIGNAL \u3c|Add0~0_combout\ : std_logic;
SIGNAL \u3c|Add0~15_combout\ : std_logic;
SIGNAL \u3c|Add0~1\ : std_logic;
SIGNAL \u3c|Add0~3\ : std_logic;
SIGNAL \u3c|Add0~5\ : std_logic;
SIGNAL \u3c|Add0~7\ : std_logic;
SIGNAL \u3c|Add0~9\ : std_logic;
SIGNAL \u3c|Add0~10_combout\ : std_logic;
SIGNAL \u3c|ffa[5]~7_combout\ : std_logic;
SIGNAL \u3c|long_press_counter~1_combout\ : std_logic;
SIGNAL \u3c|output_int~0_combout\ : std_logic;
SIGNAL \u3c|output_int~regout\ : std_logic;
SIGNAL \u3c|Add1~9\ : std_logic;
SIGNAL \u3c|Add1~10_combout\ : std_logic;
SIGNAL \u3c|long_press_counter[5]~feeder_combout\ : std_logic;
SIGNAL \u3c|Add1~11\ : std_logic;
SIGNAL \u3c|Add1~12_combout\ : std_logic;
SIGNAL \u3c|Add1~13\ : std_logic;
SIGNAL \u3c|Add1~14_combout\ : std_logic;
SIGNAL \u3c|Add1~15\ : std_logic;
SIGNAL \u3c|Add1~17\ : std_logic;
SIGNAL \u3c|Add1~19\ : std_logic;
SIGNAL \u3c|Add1~21\ : std_logic;
SIGNAL \u3c|Add1~23\ : std_logic;
SIGNAL \u3c|Add1~25\ : std_logic;
SIGNAL \u3c|Add1~27\ : std_logic;
SIGNAL \u3c|Add1~29\ : std_logic;
SIGNAL \u3c|Add1~30_combout\ : std_logic;
SIGNAL \u3c|Add1~28_combout\ : std_logic;
SIGNAL \u3c|Add1~18_combout\ : std_logic;
SIGNAL \u3c|Add1~16_combout\ : std_logic;
SIGNAL \u3c|Add1~20_combout\ : std_logic;
SIGNAL \u3c|process_0~2_combout\ : std_logic;
SIGNAL \u3c|Add1~22_combout\ : std_logic;
SIGNAL \u3c|process_0~1_combout\ : std_logic;
SIGNAL \u3c|process_0~3_combout\ : std_logic;
SIGNAL \u3c|process_0~4_combout\ : std_logic;
SIGNAL \u3c|process_0~5_combout\ : std_logic;
SIGNAL \u3c|Add1~1\ : std_logic;
SIGNAL \u3c|Add1~2_combout\ : std_logic;
SIGNAL \u3c|Add1~3\ : std_logic;
SIGNAL \u3c|Add1~4_combout\ : std_logic;
SIGNAL \u3c|Add1~5\ : std_logic;
SIGNAL \u3c|Add1~6_combout\ : std_logic;
SIGNAL \u3c|Add1~7\ : std_logic;
SIGNAL \u3c|Add1~8_combout\ : std_logic;
SIGNAL \u3c|Equal0~1_combout\ : std_logic;
SIGNAL \u3c|Equal0~2_combout\ : std_logic;
SIGNAL \u3c|Add1~26_combout\ : std_logic;
SIGNAL \u3c|Equal0~3_combout\ : std_logic;
SIGNAL \u3c|Equal0~4_combout\ : std_logic;
SIGNAL \u3c|long~regout\ : std_logic;
SIGNAL \u8|count_RPM[0]~9\ : std_logic;
SIGNAL \u8|count_RPM[1]~10_combout\ : std_logic;
SIGNAL \u8|count_RPM[1]~11\ : std_logic;
SIGNAL \u8|count_RPM[2]~12_combout\ : std_logic;
SIGNAL \u8|count_RPM[2]~13\ : std_logic;
SIGNAL \u8|count_RPM[3]~15\ : std_logic;
SIGNAL \u8|count_RPM[4]~16_combout\ : std_logic;
SIGNAL \u8|count_RPM[4]~17\ : std_logic;
SIGNAL \u8|count_RPM[5]~19\ : std_logic;
SIGNAL \u8|count_RPM[6]~21\ : std_logic;
SIGNAL \u8|count_RPM[7]~22_combout\ : std_logic;
SIGNAL \u8|count_RPM[3]~14_combout\ : std_logic;
SIGNAL \u8|tot_RPM_int[0]~12_combout\ : std_logic;
SIGNAL \u8|tot_RPM[0]~12_combout\ : std_logic;
SIGNAL \u0|Add3~1\ : std_logic;
SIGNAL \u0|Add3~2_combout\ : std_logic;
SIGNAL \u0|Add3~3\ : std_logic;
SIGNAL \u0|Add3~4_combout\ : std_logic;
SIGNAL \u0|Add3~0_combout\ : std_logic;
SIGNAL \u0|wait_time[0]~7_combout\ : std_logic;
SIGNAL \u0|wait_time[0]~8_combout\ : std_logic;
SIGNAL \u0|Equal2~2_combout\ : std_logic;
SIGNAL \u0|wait_time[10]~0_combout\ : std_logic;
SIGNAL \u0|wait_time[10]~1_combout\ : std_logic;
SIGNAL \u0|wait_time[8]~3_combout\ : std_logic;
SIGNAL \u0|wait_time[9]~2_combout\ : std_logic;
SIGNAL \u0|Equal2~0_combout\ : std_logic;
SIGNAL \u0|process_0~0_combout\ : std_logic;
SIGNAL \u0|count~13_combout\ : std_logic;
SIGNAL \u0|count~11_combout\ : std_logic;
SIGNAL \u0|count~12_combout\ : std_logic;
SIGNAL \u0|count~9_combout\ : std_logic;
SIGNAL \u0|count~10_combout\ : std_logic;
SIGNAL \u0|count~5_combout\ : std_logic;
SIGNAL \u0|stop~0_combout\ : std_logic;
SIGNAL \u0|stop~regout\ : std_logic;
SIGNAL \u0|Add2~1\ : std_logic;
SIGNAL \u0|Add2~2_combout\ : std_logic;
SIGNAL \u0|count~7_combout\ : std_logic;
SIGNAL \u0|Add2~3\ : std_logic;
SIGNAL \u0|Add2~4_combout\ : std_logic;
SIGNAL \u0|count~6_combout\ : std_logic;
SIGNAL \u0|Add2~5\ : std_logic;
SIGNAL \u0|Add2~7\ : std_logic;
SIGNAL \u0|Add2~9\ : std_logic;
SIGNAL \u0|Add2~11\ : std_logic;
SIGNAL \u0|Add2~13\ : std_logic;
SIGNAL \u0|Add2~15\ : std_logic;
SIGNAL \u0|Add2~16_combout\ : std_logic;
SIGNAL \u0|count~4_combout\ : std_logic;
SIGNAL \u0|Add2~17\ : std_logic;
SIGNAL \u0|Add2~18_combout\ : std_logic;
SIGNAL \u0|count~3_combout\ : std_logic;
SIGNAL \u0|Add2~19\ : std_logic;
SIGNAL \u0|Add2~20_combout\ : std_logic;
SIGNAL \u0|count~2_combout\ : std_logic;
SIGNAL \u0|Add2~21\ : std_logic;
SIGNAL \u0|Add2~23\ : std_logic;
SIGNAL \u0|Add2~24_combout\ : std_logic;
SIGNAL \u0|count~15_combout\ : std_logic;
SIGNAL \u0|Add2~25\ : std_logic;
SIGNAL \u0|Add2~27\ : std_logic;
SIGNAL \u0|Add2~29\ : std_logic;
SIGNAL \u0|Add2~30_combout\ : std_logic;
SIGNAL \u0|count~0_combout\ : std_logic;
SIGNAL \u0|count~14_combout\ : std_logic;
SIGNAL \u0|LessThan0~3_combout\ : std_logic;
SIGNAL \u0|LessThan0~4_combout\ : std_logic;
SIGNAL \u0|Add2~22_combout\ : std_logic;
SIGNAL \u0|count~1_combout\ : std_logic;
SIGNAL \u0|tix_mem[1]~1_combout\ : std_logic;
SIGNAL \u0|tix_mem[14]~feeder_combout\ : std_logic;
SIGNAL \u5|LessThan0~0_combout\ : std_logic;
SIGNAL \u0|tix_mem~0_combout\ : std_logic;
SIGNAL \u0|tix_mem[3]~feeder_combout\ : std_logic;
SIGNAL \u0|count~8_combout\ : std_logic;
SIGNAL \u0|tix_mem[0]~feeder_combout\ : std_logic;
SIGNAL \u0|tix_mem[1]~feeder_combout\ : std_logic;
SIGNAL \u5|Equal0~0_combout\ : std_logic;
SIGNAL \u0|tix_mem[6]~feeder_combout\ : std_logic;
SIGNAL \u5|Equal0~2_combout\ : std_logic;
SIGNAL \u5|Equal0~3_combout\ : std_logic;
SIGNAL \u5|process_0~0_combout\ : std_logic;
SIGNAL \u5|process_0~1_combout\ : std_logic;
SIGNAL \u0|calc~regout\ : std_logic;
SIGNAL \u5|Add1~0_combout\ : std_logic;
SIGNAL \u5|LessThan1~0_combout\ : std_logic;
SIGNAL \u5|LessThan1~3_combout\ : std_logic;
SIGNAL \u0|tix_mem[7]~feeder_combout\ : std_logic;
SIGNAL \u5|Equal0~4_combout\ : std_logic;
SIGNAL \u5|LessThan0~1_combout\ : std_logic;
SIGNAL \u5|LessThan0~2_combout\ : std_logic;
SIGNAL \u5|LessThan0~3_combout\ : std_logic;
SIGNAL \u5|tix_int[0]~0_combout\ : std_logic;
SIGNAL \u5|tix_int[13]~feeder_combout\ : std_logic;
SIGNAL \u5|rpm[0]~0_combout\ : std_logic;
SIGNAL \u5|rpm[0]~2_combout\ : std_logic;
SIGNAL \u5|tix_int[6]~feeder_combout\ : std_logic;
SIGNAL \u5|tix_int[0]~1_combout\ : std_logic;
SIGNAL \u0|tix_mem[2]~feeder_combout\ : std_logic;
SIGNAL \u5|tix_int[2]~feeder_combout\ : std_logic;
SIGNAL \u5|LessThan2~1_combout\ : std_logic;
SIGNAL \u5|tix_int[4]~feeder_combout\ : std_logic;
SIGNAL \u5|LessThan2~2_combout\ : std_logic;
SIGNAL \u5|LessThan2~3_combout\ : std_logic;
SIGNAL \u5|LessThan2~4_combout\ : std_logic;
SIGNAL \u5|rpm[0]~3_combout\ : std_logic;
SIGNAL \u5|Add1~2_combout\ : std_logic;
SIGNAL \u5|rpm[0]~4_combout\ : std_logic;
SIGNAL \u5|tix_int[3]~feeder_combout\ : std_logic;
SIGNAL \u5|x[0]~23\ : std_logic;
SIGNAL \u5|x[1]~24_combout\ : std_logic;
SIGNAL \u5|stop~5_combout\ : std_logic;
SIGNAL \u5|stop~regout\ : std_logic;
SIGNAL \u5|stop~4_combout\ : std_logic;
SIGNAL \u5|x[19]~62_combout\ : std_logic;
SIGNAL \u5|x[1]~25\ : std_logic;
SIGNAL \u5|x[2]~27\ : std_logic;
SIGNAL \u5|x[3]~29\ : std_logic;
SIGNAL \u5|x[4]~31\ : std_logic;
SIGNAL \u5|x[5]~32_combout\ : std_logic;
SIGNAL \u5|x[5]~33\ : std_logic;
SIGNAL \u5|x[6]~34_combout\ : std_logic;
SIGNAL \u5|x[6]~35\ : std_logic;
SIGNAL \u5|x[7]~37\ : std_logic;
SIGNAL \u5|x[8]~39\ : std_logic;
SIGNAL \u5|x[9]~40_combout\ : std_logic;
SIGNAL \u5|x[9]~41\ : std_logic;
SIGNAL \u5|x[10]~43\ : std_logic;
SIGNAL \u5|x[11]~44_combout\ : std_logic;
SIGNAL \u5|x[11]~feeder_combout\ : std_logic;
SIGNAL \u5|x[11]~45\ : std_logic;
SIGNAL \u5|x[12]~46_combout\ : std_logic;
SIGNAL \u5|x[12]~feeder_combout\ : std_logic;
SIGNAL \u5|x[12]~47\ : std_logic;
SIGNAL \u5|x[13]~49\ : std_logic;
SIGNAL \u5|x[14]~50_combout\ : std_logic;
SIGNAL \u5|x[14]~51\ : std_logic;
SIGNAL \u5|x[15]~53\ : std_logic;
SIGNAL \u5|x[16]~54_combout\ : std_logic;
SIGNAL \u5|x[16]~55\ : std_logic;
SIGNAL \u5|x[17]~56_combout\ : std_logic;
SIGNAL \u5|x[13]~48_combout\ : std_logic;
SIGNAL \u5|x[10]~42_combout\ : std_logic;
SIGNAL \u5|x[10]~feeder_combout\ : std_logic;
SIGNAL \u5|x[4]~30_combout\ : std_logic;
SIGNAL \u5|x[3]~28_combout\ : std_logic;
SIGNAL \u5|LessThan4~1_cout\ : std_logic;
SIGNAL \u5|LessThan4~3_cout\ : std_logic;
SIGNAL \u5|LessThan4~5_cout\ : std_logic;
SIGNAL \u5|LessThan4~7_cout\ : std_logic;
SIGNAL \u5|LessThan4~9_cout\ : std_logic;
SIGNAL \u5|LessThan4~11_cout\ : std_logic;
SIGNAL \u5|LessThan4~13_cout\ : std_logic;
SIGNAL \u5|LessThan4~15_cout\ : std_logic;
SIGNAL \u5|LessThan4~17_cout\ : std_logic;
SIGNAL \u5|LessThan4~19_cout\ : std_logic;
SIGNAL \u5|LessThan4~21_cout\ : std_logic;
SIGNAL \u5|LessThan4~23_cout\ : std_logic;
SIGNAL \u5|LessThan4~25_cout\ : std_logic;
SIGNAL \u5|LessThan4~27_cout\ : std_logic;
SIGNAL \u5|LessThan4~28_combout\ : std_logic;
SIGNAL \u5|stop~3_combout\ : std_logic;
SIGNAL \u5|rpm[0]~5_combout\ : std_logic;
SIGNAL \u5|rpm[0]~6_combout\ : std_logic;
SIGNAL \u5|rpm_mem~0_combout\ : std_logic;
SIGNAL \u5|rpm_mem[7]~1_combout\ : std_logic;
SIGNAL \u5|rpm_mem[7]~2_combout\ : std_logic;
SIGNAL \u8|process_0~0_combout\ : std_logic;
SIGNAL \u8|tot_RPM_int[0]~13\ : std_logic;
SIGNAL \u8|tot_RPM_int[1]~14_combout\ : std_logic;
SIGNAL \u5|Add1~1\ : std_logic;
SIGNAL \u5|Add1~3_combout\ : std_logic;
SIGNAL \u5|Add1~5_combout\ : std_logic;
SIGNAL \u5|rpm_mem~3_combout\ : std_logic;
SIGNAL \u8|tot_RPM[0]~13\ : std_logic;
SIGNAL \u8|tot_RPM[1]~14_combout\ : std_logic;
SIGNAL \u8|tot_RPM_int[1]~15\ : std_logic;
SIGNAL \u8|tot_RPM_int[2]~17\ : std_logic;
SIGNAL \u8|tot_RPM_int[3]~19\ : std_logic;
SIGNAL \u8|tot_RPM_int[4]~20_combout\ : std_logic;
SIGNAL \u5|Add1~4\ : std_logic;
SIGNAL \u5|Add1~6_combout\ : std_logic;
SIGNAL \u5|Add1~8_combout\ : std_logic;
SIGNAL \u5|Add1~7\ : std_logic;
SIGNAL \u5|Add1~10\ : std_logic;
SIGNAL \u5|Add1~11_combout\ : std_logic;
SIGNAL \u5|Add1~20_combout\ : std_logic;
SIGNAL \u5|rpm_mem~9_combout\ : std_logic;
SIGNAL \u8|tot_RPM[1]~15\ : std_logic;
SIGNAL \u8|tot_RPM[2]~16_combout\ : std_logic;
SIGNAL \u5|rpm_mem~4_combout\ : std_logic;
SIGNAL \u8|tot_RPM[2]~17\ : std_logic;
SIGNAL \u8|tot_RPM[3]~18_combout\ : std_logic;
SIGNAL \u5|rpm~7_combout\ : std_logic;
SIGNAL \u5|rpm[0]~8_combout\ : std_logic;
SIGNAL \u5|rpm~9_combout\ : std_logic;
SIGNAL \u5|rpm_mem~5_combout\ : std_logic;
SIGNAL \u8|tot_RPM[3]~19\ : std_logic;
SIGNAL \u8|tot_RPM[4]~20_combout\ : std_logic;
SIGNAL \u8|tot_RPM_int[4]~21\ : std_logic;
SIGNAL \u8|tot_RPM_int[5]~22_combout\ : std_logic;
SIGNAL \u8|tot_RPM[4]~21\ : std_logic;
SIGNAL \u8|tot_RPM[5]~22_combout\ : std_logic;
SIGNAL \u5|Add1~12\ : std_logic;
SIGNAL \u5|Add1~13_combout\ : std_logic;
SIGNAL \u5|Add1~19_combout\ : std_logic;
SIGNAL \u5|rpm_mem~8_combout\ : std_logic;
SIGNAL \u8|tot_RPM_int[5]~23\ : std_logic;
SIGNAL \u8|tot_RPM_int[6]~24_combout\ : std_logic;
SIGNAL \u5|Add1~14\ : std_logic;
SIGNAL \u5|Add1~15_combout\ : std_logic;
SIGNAL \u5|rpm~10_combout\ : std_logic;
SIGNAL \u5|rpm_mem~6_combout\ : std_logic;
SIGNAL \u8|tot_RPM[5]~23\ : std_logic;
SIGNAL \u8|tot_RPM[6]~24_combout\ : std_logic;
SIGNAL \u8|tot_RPM_int[6]~25\ : std_logic;
SIGNAL \u8|tot_RPM_int[7]~27\ : std_logic;
SIGNAL \u8|tot_RPM_int[8]~28_combout\ : std_logic;
SIGNAL \u8|tot_RPM[6]~25\ : std_logic;
SIGNAL \u8|tot_RPM[7]~26_combout\ : std_logic;
SIGNAL \u5|Add1~16\ : std_logic;
SIGNAL \u5|Add1~17_combout\ : std_logic;
SIGNAL \u5|rpm~11_combout\ : std_logic;
SIGNAL \u5|rpm_mem~7_combout\ : std_logic;
SIGNAL \u8|tot_RPM[7]~27\ : std_logic;
SIGNAL \u8|tot_RPM[8]~28_combout\ : std_logic;
SIGNAL \u8|tot_RPM_int[7]~26_combout\ : std_logic;
SIGNAL \u8|count_RPM[5]~18_combout\ : std_logic;
SIGNAL \u8|tot_RPM_int[3]~18_combout\ : std_logic;
SIGNAL \u8|tot_RPM_int[2]~16_combout\ : std_logic;
SIGNAL \u8|LessThan0~1_cout\ : std_logic;
SIGNAL \u8|LessThan0~3_cout\ : std_logic;
SIGNAL \u8|LessThan0~5_cout\ : std_logic;
SIGNAL \u8|LessThan0~7_cout\ : std_logic;
SIGNAL \u8|LessThan0~9_cout\ : std_logic;
SIGNAL \u8|LessThan0~11_cout\ : std_logic;
SIGNAL \u8|LessThan0~13_cout\ : std_logic;
SIGNAL \u8|LessThan0~14_combout\ : std_logic;
SIGNAL \u8|tot_RPM_int[8]~29\ : std_logic;
SIGNAL \u8|tot_RPM_int[9]~31\ : std_logic;
SIGNAL \u8|tot_RPM_int[10]~32_combout\ : std_logic;
SIGNAL \u8|tot_RPM[8]~29\ : std_logic;
SIGNAL \u8|tot_RPM[9]~30_combout\ : std_logic;
SIGNAL \u8|tot_RPM[9]~31\ : std_logic;
SIGNAL \u8|tot_RPM[10]~32_combout\ : std_logic;
SIGNAL \u8|tot_RPM_int[10]~33\ : std_logic;
SIGNAL \u8|tot_RPM_int[11]~34_combout\ : std_logic;
SIGNAL \u8|tot_RPM[10]~33\ : std_logic;
SIGNAL \u8|tot_RPM[11]~34_combout\ : std_logic;
SIGNAL \u8|LessThan0~17_combout\ : std_logic;
SIGNAL \u8|stop~0_combout\ : std_logic;
SIGNAL \u8|stop~regout\ : std_logic;
SIGNAL \u8|gem_RPM_int[6]~10_combout\ : std_logic;
SIGNAL \u8|gem_RPM_int[1]~12\ : std_logic;
SIGNAL \u8|gem_RPM_int[2]~13_combout\ : std_logic;
SIGNAL \u8|gem_RPM[7]~1_combout\ : std_logic;
SIGNAL \u8|gem_RPM_int[2]~14\ : std_logic;
SIGNAL \u8|gem_RPM_int[3]~16\ : std_logic;
SIGNAL \u8|gem_RPM_int[4]~17_combout\ : std_logic;
SIGNAL \u8|gem_RPM_int[4]~18\ : std_logic;
SIGNAL \u8|gem_RPM_int[5]~20\ : std_logic;
SIGNAL \u8|gem_RPM_int[6]~21_combout\ : std_logic;
SIGNAL \u8|gem_RPM_int[6]~22\ : std_logic;
SIGNAL \u8|gem_RPM_int[7]~23_combout\ : std_logic;
SIGNAL \u8|gem_RPM[4]~feeder_combout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u1|Mux1~0_combout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u1|Mux3~0_combout\ : std_logic;
SIGNAL \u8|gem_RPM_int[5]~19_combout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u1|Mux2~0_combout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u2|Mux2~0_combout\ : std_logic;
SIGNAL \u8|gem_RPM_int[3]~15_combout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u2|Mux1~0_combout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u3|Mux2~0_combout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u2|Mux3~0_combout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u3|Mux3~0_combout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u3|Mux1~0_combout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u4|Mux0~0_combout\ : std_logic;
SIGNAL \u4|gemiddelde_line[13][0]~regout\ : std_logic;
SIGNAL \u4|Mux263~40_combout\ : std_logic;
SIGNAL \u4|aline~0_combout\ : std_logic;
SIGNAL \u4|Mux263~41_combout\ : std_logic;
SIGNAL \u4|Mux263~43_combout\ : std_logic;
SIGNAL \u4|Mux263~44_combout\ : std_logic;
SIGNAL \u4|Mux263~45_combout\ : std_logic;
SIGNAL \u4|Mux239~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[14][0]~feeder_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[14][0]~regout\ : std_logic;
SIGNAL \BUSY~combout\ : std_logic;
SIGNAL \u9|reset~0_combout\ : std_logic;
SIGNAL \u9|reset~regout\ : std_logic;
SIGNAL \u9|resstart~0_combout\ : std_logic;
SIGNAL \u9|resstart~regout\ : std_logic;
SIGNAL \u9|pass~2_combout\ : std_logic;
SIGNAL \u9|pass~3_combout\ : std_logic;
SIGNAL \u9|readADC~0_combout\ : std_logic;
SIGNAL \u9|readADC~1_combout\ : std_logic;
SIGNAL \u9|readADC~regout\ : std_logic;
SIGNAL \u9|ADC_data[7]~0_combout\ : std_logic;
SIGNAL \u9|ADC_data[7]~1_combout\ : std_logic;
SIGNAL \u9|LessThan1~0_combout\ : std_logic;
SIGNAL \u9|LessThan1~1_combout\ : std_logic;
SIGNAL \u9|ADC_data[4]~feeder_combout\ : std_logic;
SIGNAL \u9|LessThan7~2_combout\ : std_logic;
SIGNAL \u9|LessThan7~3_combout\ : std_logic;
SIGNAL \u9|LessThan6~0_combout\ : std_logic;
SIGNAL \u9|resist_int~3_combout\ : std_logic;
SIGNAL \u9|LessThan5~0_combout\ : std_logic;
SIGNAL \u9|LessThan2~3_combout\ : std_logic;
SIGNAL \u9|resist_int~6_combout\ : std_logic;
SIGNAL \u9|resist_int~7_combout\ : std_logic;
SIGNAL \u9|resist_int~8_combout\ : std_logic;
SIGNAL \u9|resist_int~9_combout\ : std_logic;
SIGNAL \u9|resist_int[0]~1_combout\ : std_logic;
SIGNAL \u4|weerstand_line[12][0]~regout\ : std_logic;
SIGNAL \u4|Mux263~33_combout\ : std_logic;
SIGNAL \u4|Mux263~34_combout\ : std_logic;
SIGNAL \u4|Mux263~35_combout\ : std_logic;
SIGNAL \u5|te_hoog~0_combout\ : std_logic;
SIGNAL \u5|te_hoog~regout\ : std_logic;
SIGNAL \u4|RPM_line~12_combout\ : std_logic;
SIGNAL \u4|RPM_line[14][0]~regout\ : std_logic;
SIGNAL \u2|u1|Mux0~0_combout\ : std_logic;
SIGNAL \u2|u1|Mux3~0_combout\ : std_logic;
SIGNAL \u2|u1|Mux2~0_combout\ : std_logic;
SIGNAL \u2|u2|Mux0~0_combout\ : std_logic;
SIGNAL \u2|u1|Mux1~0_combout\ : std_logic;
SIGNAL \u2|u2|Mux1~0_combout\ : std_logic;
SIGNAL \u2|u2|Mux2~0_combout\ : std_logic;
SIGNAL \u2|u2|Mux3~0_combout\ : std_logic;
SIGNAL \u2|u3|Mux0~0_combout\ : std_logic;
SIGNAL \u2|u6|Mux0~0_combout\ : std_logic;
SIGNAL \u4|RPM_line~13_combout\ : std_logic;
SIGNAL \u4|RPM_line[12][0]~regout\ : std_logic;
SIGNAL \u4|Mux263~31_combout\ : std_logic;
SIGNAL \u6|rpm_max_int~2_combout\ : std_logic;
SIGNAL \u6|rpm_int~1_combout\ : std_logic;
SIGNAL \u6|rpm_max_int~3_combout\ : std_logic;
SIGNAL \u6|rpm_int~3_combout\ : std_logic;
SIGNAL \u6|rpm_int~4_combout\ : std_logic;
SIGNAL \u6|rpm_max_int~5_combout\ : std_logic;
SIGNAL \u6|rpm_int~5_combout\ : std_logic;
SIGNAL \u6|rpm_max_int~6_combout\ : std_logic;
SIGNAL \u6|rpm_max_int~7_combout\ : std_logic;
SIGNAL \u6|rpm_int~7_combout\ : std_logic;
SIGNAL \u6|rpm_int~0_combout\ : std_logic;
SIGNAL \u6|LessThan0~1_cout\ : std_logic;
SIGNAL \u6|LessThan0~3_cout\ : std_logic;
SIGNAL \u6|LessThan0~5_cout\ : std_logic;
SIGNAL \u6|LessThan0~7_cout\ : std_logic;
SIGNAL \u6|LessThan0~9_cout\ : std_logic;
SIGNAL \u6|LessThan0~11_cout\ : std_logic;
SIGNAL \u6|LessThan0~13_cout\ : std_logic;
SIGNAL \u6|LessThan0~14_combout\ : std_logic;
SIGNAL \u6|rpm_max_int[6]~1_combout\ : std_logic;
SIGNAL \u6|rpm_max_int~4_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|u1|Mux0~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|u1|Mux1~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|u1|Mux2~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|u1|Mux3~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|u2|Mux0~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|u2|Mux2~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|u2|Mux3~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|u3|Mux0~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|u6|Mux0~0_combout\ : std_logic;
SIGNAL \u4|maximale_line[12][0]~regout\ : std_logic;
SIGNAL \u4|Mux263~30_combout\ : std_logic;
SIGNAL \u8|gem_RPM_int[0]~8_combout\ : std_logic;
SIGNAL \u4|gemiddelde_line[14][0]~regout\ : std_logic;
SIGNAL \u4|Mux263~28_combout\ : std_logic;
SIGNAL \u4|Mux263~29_combout\ : std_logic;
SIGNAL \u4|Mux263~32_combout\ : std_logic;
SIGNAL \u4|Mux263~36_combout\ : std_logic;
SIGNAL \u4|Mux263~46_combout\ : std_logic;
SIGNAL \u4|Mux263~58_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector42~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector50~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_busy_flag_2~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector51~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_busy_flag_3~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector52~4_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr33~1_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr33~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector52~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector52~3_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_busy_flag_4~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector52~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector34~0_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr33~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector34~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector38~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_wr~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector34~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector29~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_6~regout\ : std_logic;
SIGNAL \u4|lcdm|WideOr18~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector34~3_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_11~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector39~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_goto10~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector38~1_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_home~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector99~2_combout\ : std_logic;
SIGNAL \u4|goto20~0_combout\ : std_logic;
SIGNAL \u4|goto20~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector40~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_goto20~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector41~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector41~1_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_goto30~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector102~0_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr18~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector43~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector43~1_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_e~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector44~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_e_1~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector45~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_e_2~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector46~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_e_3~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector47~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_e_4~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector53~3_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector27~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_4~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector22~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.reset~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector25~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_2~regout\ : std_logic;
SIGNAL \u4|lcdm|WideOr17~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector53~2_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_busy_flag_5~regout\ : std_logic;
SIGNAL \u4|lcdm|delay_counter[8]~6_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr18~combout\ : std_logic;
SIGNAL \u4|lcdm|delay_counter[8]~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector19~0_combout\ : std_logic;
SIGNAL \u4|lcdm|delay_counter[18]~3_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_E~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector49~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_busy_flag_1~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector15~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector20~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector20~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector48~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_busy_flag~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector14~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector14~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector47~1_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr17~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector21~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~1\ : std_logic;
SIGNAL \u4|lcdm|Add0~3\ : std_logic;
SIGNAL \u4|lcdm|Add0~5\ : std_logic;
SIGNAL \u4|lcdm|Add0~6_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector18~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector18~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector18~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~7\ : std_logic;
SIGNAL \u4|lcdm|Add0~8_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector17~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector17~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Equal0~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector4~1_combout\ : std_logic;
SIGNAL \u4|lcdm|delay_counter[8]~5_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~9\ : std_logic;
SIGNAL \u4|lcdm|Add0~10_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector16~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector16~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~11\ : std_logic;
SIGNAL \u4|lcdm|Add0~13\ : std_logic;
SIGNAL \u4|lcdm|Add0~15\ : std_logic;
SIGNAL \u4|lcdm|Add0~16_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector13~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~17\ : std_logic;
SIGNAL \u4|lcdm|Add0~18_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector5~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector12~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector12~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~19\ : std_logic;
SIGNAL \u4|lcdm|Add0~21\ : std_logic;
SIGNAL \u4|lcdm|Add0~22_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector10~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~23\ : std_logic;
SIGNAL \u4|lcdm|Add0~25\ : std_logic;
SIGNAL \u4|lcdm|Add0~26_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector8~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector8~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~27\ : std_logic;
SIGNAL \u4|lcdm|Add0~28_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector7~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector5~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector5~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~29\ : std_logic;
SIGNAL \u4|lcdm|Add0~31\ : std_logic;
SIGNAL \u4|lcdm|Add0~33\ : std_logic;
SIGNAL \u4|lcdm|Add0~34_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector4~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector4~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~35\ : std_logic;
SIGNAL \u4|lcdm|Add0~36_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector1~0_combout\ : std_logic;
SIGNAL \u4|lcdm|delay_counter[18]~4_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector3~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~37\ : std_logic;
SIGNAL \u4|lcdm|Add0~38_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector2~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~39\ : std_logic;
SIGNAL \u4|lcdm|Add0~40_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector1~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Equal0~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Equal0~3_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~20_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector11~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Equal0~4_combout\ : std_logic;
SIGNAL \u4|lcdm|Equal0~6_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector26~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_3~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector24~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_1~regout\ : std_logic;
SIGNAL \u4|lcdm|WideOr41~2_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr41~3_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector63~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector68~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector68~1_combout\ : std_logic;
SIGNAL \u4|lcdm|return_state.wait_for_command~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector36~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.wait_for_command~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector87~0_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr3~0_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr3~1_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr3~combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[0]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|Selector28~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_5~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector88~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector88~2_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[0]~en_regout\ : std_logic;
SIGNAL \u4|lcdm|Selector90~0_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[1]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[1]~en_regout\ : std_logic;
SIGNAL \u4|lcdm|Selector30~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_7~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector33~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_10~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector96~0_combout\ : std_logic;
SIGNAL \u4|aline~6_combout\ : std_logic;
SIGNAL \u4|Mux263~48_combout\ : std_logic;
SIGNAL \u4|Mux263~99_combout\ : std_logic;
SIGNAL \u4|Mux263~100_combout\ : std_logic;
SIGNAL \u4|Mux263~78_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|u1|Mux1~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|u1|Mux3~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|u1|Mux2~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|u2|Mux3~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|u2|Mux1~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|u3|Mux3~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|u2|Mux2~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|u3|Mux2~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|u3|Mux1~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|u4|Mux2~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[16][2]~regout\ : std_logic;
SIGNAL \u4|Mux263~76_combout\ : std_logic;
SIGNAL \u4|Mux263~97_combout\ : std_logic;
SIGNAL \u4|Mux263~98_combout\ : std_logic;
SIGNAL \u4|Mux263~96_combout\ : std_logic;
SIGNAL \u4|Mux263~133_combout\ : std_logic;
SIGNAL \u4|Mux261~2_combout\ : std_logic;
SIGNAL \u4|aline~4_combout\ : std_logic;
SIGNAL \u4|Mux263~94_combout\ : std_logic;
SIGNAL \u4|Mux263~95_combout\ : std_logic;
SIGNAL \u4|Mux261~3_combout\ : std_logic;
SIGNAL \u2|u0|Mux0~0_combout\ : std_logic;
SIGNAL \u2|u6|Mux2~0_combout\ : std_logic;
SIGNAL \u4|RPM_line~18_combout\ : std_logic;
SIGNAL \u4|RPM_line[13][2]~regout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u3|Mux0~0_combout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u0|Mux0~0_combout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u2|Mux0~0_combout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u6|Mux2~0_combout\ : std_logic;
SIGNAL \u4|gemiddelde_line[13][2]~regout\ : std_logic;
SIGNAL \u4|Mux263~90_combout\ : std_logic;
SIGNAL \u4|Mux263~91_combout\ : std_logic;
SIGNAL \u4|Mux263~92_combout\ : std_logic;
SIGNAL \u4|Mux263~93_combout\ : std_logic;
SIGNAL \u4|Mux263~88_combout\ : std_logic;
SIGNAL \u4|Mux263~89_combout\ : std_logic;
SIGNAL \u9|LessThan2~0_combout\ : std_logic;
SIGNAL \u9|LessThan2~1_combout\ : std_logic;
SIGNAL \u9|LessThan2~2_combout\ : std_logic;
SIGNAL \u4|weerstand_line[12][2]~feeder_combout\ : std_logic;
SIGNAL \u4|weerstand_line[12][2]~regout\ : std_logic;
SIGNAL \u4|Mux263~132_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|u4|Mux2~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[14][2]~regout\ : std_logic;
SIGNAL \u4|maximale2bcd|u2|Mux1~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|u3|Mux2~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|u3|Mux1~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|u3|Mux3~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|u4|Mux2~0_combout\ : std_logic;
SIGNAL \u4|maximale_line[14][2]~regout\ : std_logic;
SIGNAL \u4|Mux263~85_combout\ : std_logic;
SIGNAL \u2|u3|Mux2~0_combout\ : std_logic;
SIGNAL \u2|u3|Mux3~0_combout\ : std_logic;
SIGNAL \u2|u3|Mux1~0_combout\ : std_logic;
SIGNAL \u2|u4|Mux2~0_combout\ : std_logic;
SIGNAL \u4|RPM_line~17_combout\ : std_logic;
SIGNAL \u4|RPM_line[14][2]~regout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u4|Mux2~0_combout\ : std_logic;
SIGNAL \u4|gemiddelde_line[14][2]~regout\ : std_logic;
SIGNAL \u4|Mux263~84_combout\ : std_logic;
SIGNAL \u4|Mux263~86_combout\ : std_logic;
SIGNAL \u4|Mux263~87_combout\ : std_logic;
SIGNAL \u4|Mux261~0_combout\ : std_logic;
SIGNAL \u4|Mux261~1_combout\ : std_logic;
SIGNAL \u4|Mux261~4_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector93~0_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[2]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[2]~en_regout\ : std_logic;
SIGNAL \u4|Mux263~110_combout\ : std_logic;
SIGNAL \u4|Mux260~6_combout\ : std_logic;
SIGNAL \u4|Mux263~114_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|u4|Mux1~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[16][3]~regout\ : std_logic;
SIGNAL \u4|Mux260~7_combout\ : std_logic;
SIGNAL \u4|Mux263~111_combout\ : std_logic;
SIGNAL \u4|Mux263~112_combout\ : std_logic;
SIGNAL \u4|Mux263~113_combout\ : std_logic;
SIGNAL \u4|Mux260~8_combout\ : std_logic;
SIGNAL \u4|Mux260~9_combout\ : std_logic;
SIGNAL \u4|Mux263~101_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|u0|Mux0~0_combout\ : std_logic;
SIGNAL \u0|omwentel99~8_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|u1|Mux0~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|u3|Mux0~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|u6|Mux1~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[15][3]~regout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u6|Mux1~0_combout\ : std_logic;
SIGNAL \u4|gemiddelde_line[13][3]~regout\ : std_logic;
SIGNAL \u2|u6|Mux1~0_combout\ : std_logic;
SIGNAL \u4|RPM_line~20_combout\ : std_logic;
SIGNAL \u4|RPM_line[13][3]~regout\ : std_logic;
SIGNAL \u4|Mux263~105_combout\ : std_logic;
SIGNAL \u4|Mux263~106_combout\ : std_logic;
SIGNAL \u4|Mux263~107_combout\ : std_logic;
SIGNAL \u4|Mux263~108_combout\ : std_logic;
SIGNAL \u4|Mux263~25_combout\ : std_logic;
SIGNAL \u4|Mux263~137_combout\ : std_logic;
SIGNAL \u4|Mux238~0_combout\ : std_logic;
SIGNAL \u4|RPM_line[12][6]~regout\ : std_logic;
SIGNAL \u4|Mux263~104_combout\ : std_logic;
SIGNAL \u4|Mux260~3_combout\ : std_logic;
SIGNAL \u4|Mux263~102_combout\ : std_logic;
SIGNAL \u2|u4|Mux1~0_combout\ : std_logic;
SIGNAL \u4|RPM_line~19_combout\ : std_logic;
SIGNAL \u4|RPM_line[14][3]~regout\ : std_logic;
SIGNAL \u6|rpm_max_int~8_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|u4|Mux1~0_combout\ : std_logic;
SIGNAL \u4|maximale_line[14][3]~regout\ : std_logic;
SIGNAL \u4|Mux260~0_combout\ : std_logic;
SIGNAL \u4|gemiddelde2bcd|u4|Mux1~0_combout\ : std_logic;
SIGNAL \u4|gemiddelde_line[14][3]~regout\ : std_logic;
SIGNAL \u4|Mux263~103_combout\ : std_logic;
SIGNAL \u4|Mux260~1_combout\ : std_logic;
SIGNAL \u4|Mux260~2_combout\ : std_logic;
SIGNAL \u4|Mux260~4_combout\ : std_logic;
SIGNAL \u4|Mux260~5_combout\ : std_logic;
SIGNAL \u4|Mux260~10_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector96~1_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[3]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[3]~en_regout\ : std_logic;
SIGNAL \u4|lcdm|Selector99~5_combout\ : std_logic;
SIGNAL \u4|Mux263~115_combout\ : std_logic;
SIGNAL \u4|Mux263~118_combout\ : std_logic;
SIGNAL \u4|Mux263~119_combout\ : std_logic;
SIGNAL \u4|Mux263~135_combout\ : std_logic;
SIGNAL \u4|Mux263~116_combout\ : std_logic;
SIGNAL \u4|Mux263~117_combout\ : std_logic;
SIGNAL \u4|Mux263~134_combout\ : std_logic;
SIGNAL \u4|Mux259~0_combout\ : std_logic;
SIGNAL \u4|Mux259~1_combout\ : std_logic;
SIGNAL \u4|Mux263~120_combout\ : std_logic;
SIGNAL \u4|Mux263~121_combout\ : std_logic;
SIGNAL \u4|Mux263~122_combout\ : std_logic;
SIGNAL \u4|Mux263~123_combout\ : std_logic;
SIGNAL \u4|Mux263~124_combout\ : std_logic;
SIGNAL \u4|Mux259~2_combout\ : std_logic;
SIGNAL \u4|Mux259~4_combout\ : std_logic;
SIGNAL \u4|Mux259~3_combout\ : std_logic;
SIGNAL \u4|Mux259~5_combout\ : std_logic;
SIGNAL \u4|Mux259~6_combout\ : std_logic;
SIGNAL \u4|Mux259~7_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector99~4_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[4]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[4]~en_regout\ : std_logic;
SIGNAL \u4|Mux258~1_combout\ : std_logic;
SIGNAL \u4|aline~5_combout\ : std_logic;
SIGNAL \u4|Mux258~4_combout\ : std_logic;
SIGNAL \u4|Mux258~2_combout\ : std_logic;
SIGNAL \u4|Mux258~3_combout\ : std_logic;
SIGNAL \u4|Mux258~5_combout\ : std_logic;
SIGNAL \u4|Mux258~6_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector102~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector102~2_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[5]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[5]~en_regout\ : std_logic;
SIGNAL \u4|Mux257~3_combout\ : std_logic;
SIGNAL \u4|Mux257~2_combout\ : std_logic;
SIGNAL \u4|aline~7_combout\ : std_logic;
SIGNAL \u4|Mux263~127_combout\ : std_logic;
SIGNAL \u4|Mux257~0_combout\ : std_logic;
SIGNAL \u4|Mux263~128_combout\ : std_logic;
SIGNAL \u4|Mux263~136_combout\ : std_logic;
SIGNAL \u4|Mux257~1_combout\ : std_logic;
SIGNAL \u4|Mux257~4_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector105~0_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[6]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[6]~en_regout\ : std_logic;
SIGNAL \u4|lcdm|WideOr2~0_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[7]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[7]~en_regout\ : std_logic;
SIGNAL \u2|u4|Mux3~0_combout\ : std_logic;
SIGNAL \u2|Mux6~0_combout\ : std_logic;
SIGNAL \u2|Mux5~0_combout\ : std_logic;
SIGNAL \u2|Mux4~0_combout\ : std_logic;
SIGNAL \u2|Mux3~0_combout\ : std_logic;
SIGNAL \u2|Mux2~0_combout\ : std_logic;
SIGNAL \u2|Mux1~0_combout\ : std_logic;
SIGNAL \u2|Mux0~0_combout\ : std_logic;
SIGNAL \u2|u6|Mux3~0_combout\ : std_logic;
SIGNAL \u2|u4|Mux0~0_combout\ : std_logic;
SIGNAL \u2|Mux13~0_combout\ : std_logic;
SIGNAL \u2|Mux12~0_combout\ : std_logic;
SIGNAL \u2|Mux11~0_combout\ : std_logic;
SIGNAL \u2|Mux10~0_combout\ : std_logic;
SIGNAL \u2|Mux9~0_combout\ : std_logic;
SIGNAL \u2|Mux8~0_combout\ : std_logic;
SIGNAL \u2|Mux7~0_combout\ : std_logic;
SIGNAL \u2|Mux18~17_combout\ : std_logic;
SIGNAL \u2|Mux18~11_combout\ : std_logic;
SIGNAL \u2|Mux18~18_combout\ : std_logic;
SIGNAL \u2|Mux15~7_combout\ : std_logic;
SIGNAL \u2|Mux15~16_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_E~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector0~0_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_RS~regout\ : std_logic;
SIGNAL \u4|lcdm|WideOr43~0_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_RW~regout\ : std_logic;
SIGNAL \u1|Add0~0_combout\ : std_logic;
SIGNAL \u1|Add0~1\ : std_logic;
SIGNAL \u1|Add0~2_combout\ : std_logic;
SIGNAL \u1|Add0~3\ : std_logic;
SIGNAL \u1|Add0~4_combout\ : std_logic;
SIGNAL \u1|Add0~7\ : std_logic;
SIGNAL \u1|Add0~8_combout\ : std_logic;
SIGNAL \u1|Add0~9\ : std_logic;
SIGNAL \u1|Add0~11\ : std_logic;
SIGNAL \u1|Add0~12_combout\ : std_logic;
SIGNAL \u1|count~3_combout\ : std_logic;
SIGNAL \u1|Add0~10_combout\ : std_logic;
SIGNAL \u1|Equal0~1_combout\ : std_logic;
SIGNAL \u1|count~4_combout\ : std_logic;
SIGNAL \u1|Add0~5\ : std_logic;
SIGNAL \u1|Add0~6_combout\ : std_logic;
SIGNAL \u1|Equal0~2_combout\ : std_logic;
SIGNAL \u1|Add0~13\ : std_logic;
SIGNAL \u1|Add0~14_combout\ : std_logic;
SIGNAL \u1|count~2_combout\ : std_logic;
SIGNAL \u1|Add0~15\ : std_logic;
SIGNAL \u1|Add0~16_combout\ : std_logic;
SIGNAL \u1|count~1_combout\ : std_logic;
SIGNAL \u1|Add0~17\ : std_logic;
SIGNAL \u1|Add0~18_combout\ : std_logic;
SIGNAL \u1|Add0~19\ : std_logic;
SIGNAL \u1|Add0~21\ : std_logic;
SIGNAL \u1|Add0~22_combout\ : std_logic;
SIGNAL \u1|count~0_combout\ : std_logic;
SIGNAL \u1|Equal0~0_combout\ : std_logic;
SIGNAL \u1|clkint~0_combout\ : std_logic;
SIGNAL \u1|clkint~regout\ : std_logic;
SIGNAL \u1|clkint~clkctrl_outclk\ : std_logic;
SIGNAL \u3f|a~1_combout\ : std_logic;
SIGNAL \u3f|Add0~1\ : std_logic;
SIGNAL \u3f|Add0~2_combout\ : std_logic;
SIGNAL \u3f|Add0~14_combout\ : std_logic;
SIGNAL \u3f|Add0~3\ : std_logic;
SIGNAL \u3f|Add0~4_combout\ : std_logic;
SIGNAL \u3f|ffa[2]~3_combout\ : std_logic;
SIGNAL \u3f|ffa[2]~5_combout\ : std_logic;
SIGNAL \u3f|ffa[3]~7_combout\ : std_logic;
SIGNAL \u3f|Add0~5\ : std_logic;
SIGNAL \u3f|Add0~7\ : std_logic;
SIGNAL \u3f|Add0~8_combout\ : std_logic;
SIGNAL \u3f|ffa[4]~6_combout\ : std_logic;
SIGNAL \u3f|LessThan0~0_combout\ : std_logic;
SIGNAL \u3f|ffa[6]~0_combout\ : std_logic;
SIGNAL \u3f|ffa[6]~1_combout\ : std_logic;
SIGNAL \u3f|Add0~9\ : std_logic;
SIGNAL \u3f|Add0~10_combout\ : std_logic;
SIGNAL \u3f|ffa[5]~2_combout\ : std_logic;
SIGNAL \u3f|a~0_combout\ : std_logic;
SIGNAL \u3f|a~regout\ : std_logic;
SIGNAL \u3f|output_int~0_combout\ : std_logic;
SIGNAL \u3f|output_int~regout\ : std_logic;
SIGNAL \u3f|output~0_combout\ : std_logic;
SIGNAL \u3f|output~regout\ : std_logic;
SIGNAL \u3e|output_int~0_combout\ : std_logic;
SIGNAL \u3e|Add0~0_combout\ : std_logic;
SIGNAL \u3e|Add0~15_combout\ : std_logic;
SIGNAL \u3e|a~0_combout\ : std_logic;
SIGNAL \u3e|a~regout\ : std_logic;
SIGNAL \u3e|ffa[6]~0_combout\ : std_logic;
SIGNAL \u3e|ffa[6]~1_combout\ : std_logic;
SIGNAL \u3e|Add0~1\ : std_logic;
SIGNAL \u3e|Add0~2_combout\ : std_logic;
SIGNAL \u3e|Add0~14_combout\ : std_logic;
SIGNAL \u3e|Add0~3\ : std_logic;
SIGNAL \u3e|Add0~4_combout\ : std_logic;
SIGNAL \u3e|ffa[2]~5_combout\ : std_logic;
SIGNAL \u3e|Add0~5\ : std_logic;
SIGNAL \u3e|Add0~6_combout\ : std_logic;
SIGNAL \u3e|ffa[2]~3_combout\ : std_logic;
SIGNAL \u3e|ffa[3]~7_combout\ : std_logic;
SIGNAL \u3e|Add0~7\ : std_logic;
SIGNAL \u3e|Add0~9\ : std_logic;
SIGNAL \u3e|Add0~11\ : std_logic;
SIGNAL \u3e|Add0~12_combout\ : std_logic;
SIGNAL \u3e|ffa[6]~4_combout\ : std_logic;
SIGNAL \u3e|LessThan0~0_combout\ : std_logic;
SIGNAL \u3e|ffa[5]~2_combout\ : std_logic;
SIGNAL \u3e|output_int~1_combout\ : std_logic;
SIGNAL \u3e|output_int~regout\ : std_logic;
SIGNAL \u3e|output~0_combout\ : std_logic;
SIGNAL \u3e|output~regout\ : std_logic;
SIGNAL \u9|restarget~9_combout\ : std_logic;
SIGNAL \u9|resist_int~2_combout\ : std_logic;
SIGNAL \u9|resist_int~4_combout\ : std_logic;
SIGNAL \u9|resist_int~5_combout\ : std_logic;
SIGNAL \u9|restarget~10_combout\ : std_logic;
SIGNAL \u9|restarget[2]~7_combout\ : std_logic;
SIGNAL \u9|restarget[3]~4_combout\ : std_logic;
SIGNAL \u9|resist_int[0]~0_combout\ : std_logic;
SIGNAL \u9|restarget[0]~8_combout\ : std_logic;
SIGNAL \u9|restarget[1]~11_combout\ : std_logic;
SIGNAL \u9|restarget[1]~12_combout\ : std_logic;
SIGNAL \u9|process_0~0_combout\ : std_logic;
SIGNAL \u9|restarget[3]~5_combout\ : std_logic;
SIGNAL \u9|LessThan10~0_combout\ : std_logic;
SIGNAL \u9|LessThan10~1_combout\ : std_logic;
SIGNAL \u9|res_up~regout\ : std_logic;
SIGNAL \u9|res_down~0_combout\ : std_logic;
SIGNAL \u9|res_down~1_combout\ : std_logic;
SIGNAL \u9|res_down~regout\ : std_logic;
SIGNAL \u9|N_readADC~1_combout\ : std_logic;
SIGNAL \u9|N_readADC~0_combout\ : std_logic;
SIGNAL \u9|N_readADC~2_combout\ : std_logic;
SIGNAL \u9|pass~0_combout\ : std_logic;
SIGNAL \u9|pass~1_combout\ : std_logic;
SIGNAL \u9|N_readADC~3_combout\ : std_logic;
SIGNAL \u9|N_readADC~regout\ : std_logic;
SIGNAL \u9|N_convst~0_combout\ : std_logic;
SIGNAL \u9|N_convst~regout\ : std_logic;
SIGNAL \u8|gem_RPM_int\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u8|gem_RPM\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u8|count_RPM\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u9|restarget\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u9|pass\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \DB~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u8|tot_RPM\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u8|tot_RPM_int\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u8|wait_gem_RPM\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \BUTTON~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u9|ADC_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \KNOP~combout\ : std_logic_vector(6 DOWNTO 1);
SIGNAL \u9|resist_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3b|ffa\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u3c|long_press_counter\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u3c|ffa\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u3d|ffa\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u3e|ffa\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u3f|ffa\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u0|wait_time\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u0|tix_mem\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u0|omwentel99\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|omwentel255\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u1|count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u3a|ffa\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \u4|line_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u4|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u4|character_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u4|lcdm|delay_counter\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \u5|x\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \u5|tix_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u5|rpm_mem\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u5|rpm\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u6|rpm_max_int\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u6|rpm_int\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_BUTTON~combout\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \u2|ALT_INV_Mux18~18_combout\ : std_logic;
SIGNAL \u3c|ALT_INV_long~regout\ : std_logic;
SIGNAL \u4|lcdm|ALT_INV_busy~regout\ : std_logic;
SIGNAL \u4|ALT_INV_state.update~regout\ : std_logic;
SIGNAL \u4|ALT_INV_state.write_char~regout\ : std_logic;
SIGNAL \u9|ALT_INV_N_readADC~regout\ : std_logic;
SIGNAL \u9|ALT_INV_res_down~regout\ : std_logic;
SIGNAL \u9|ALT_INV_res_up~regout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_hall_sens <= hall_sens;
HEX0_D <= ww_HEX0_D;
HEX1_D <= ww_HEX1_D;
HEX2_D <= ww_HEX2_D;
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
LCD_EN <= ww_LCD_EN;
LCD_RS <= ww_LCD_RS;
LCD_RW <= ww_LCD_RW;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_SW <= SW;
ww_BUTTON <= BUTTON;
ww_KNOP <= KNOP;
MOTOR_UP <= ww_MOTOR_UP;
MOTOR_DOWN <= ww_MOTOR_DOWN;
ww_DB <= DB;
ww_BUSY <= BUSY;
RD <= ww_RD;
Convstart <= ww_Convstart;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u1|clkint~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \u1|clkint~regout\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_BUTTON~combout\(3) <= NOT \BUTTON~combout\(3);
\u2|ALT_INV_Mux18~18_combout\ <= NOT \u2|Mux18~18_combout\;
\u3c|ALT_INV_long~regout\ <= NOT \u3c|long~regout\;
\u4|lcdm|ALT_INV_busy~regout\ <= NOT \u4|lcdm|busy~regout\;
\u4|ALT_INV_state.update~regout\ <= NOT \u4|state.update~regout\;
\u4|ALT_INV_state.write_char~regout\ <= NOT \u4|state.write_char~regout\;
\u9|ALT_INV_N_readADC~regout\ <= NOT \u9|N_readADC~regout\;
\u9|ALT_INV_res_down~regout\ <= NOT \u9|res_down~regout\;
\u9|ALT_INV_res_up~regout\ <= NOT \u9|res_up~regout\;
\u2|ALT_INV_Mux7~0_combout\ <= NOT \u2|Mux7~0_combout\;
\u2|ALT_INV_Mux0~0_combout\ <= NOT \u2|Mux0~0_combout\;

-- Location: LCFF_X51_Y24_N29
\u5|x[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[8]~38_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|x[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(8));

-- Location: LCFF_X51_Y24_N27
\u5|x[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[7]~36_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|x[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(7));

-- Location: LCFF_X51_Y24_N17
\u5|x[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[2]~26_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|x[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(2));

-- Location: LCFF_X51_Y24_N13
\u5|x[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[0]~22_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|x[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(0));

-- Location: LCFF_X51_Y23_N19
\u5|x[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[19]~60_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|x[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(19));

-- Location: LCFF_X51_Y23_N17
\u5|x[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[18]~58_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|x[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(18));

-- Location: LCFF_X51_Y23_N11
\u5|x[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[15]~52_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|x[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(15));

-- Location: LCCOMB_X54_Y25_N8
\u5|Add1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~9_combout\ = (\u5|rpm\(3) & (!\u5|Add1~7\)) # (!\u5|rpm\(3) & ((\u5|Add1~7\) # (GND)))
-- \u5|Add1~10\ = CARRY((!\u5|Add1~7\) # (!\u5|rpm\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm\(3),
	datad => VCC,
	cin => \u5|Add1~7\,
	combout => \u5|Add1~9_combout\,
	cout => \u5|Add1~10\);

-- Location: LCCOMB_X51_Y24_N12
\u5|x[0]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[0]~22_combout\ = (\u5|x\(0) & ((GND) # (!\u5|tix_int\(0)))) # (!\u5|x\(0) & (\u5|tix_int\(0) $ (GND)))
-- \u5|x[0]~23\ = CARRY((\u5|x\(0)) # (!\u5|tix_int\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(0),
	datab => \u5|tix_int\(0),
	datad => VCC,
	combout => \u5|x[0]~22_combout\,
	cout => \u5|x[0]~23\);

-- Location: LCCOMB_X51_Y24_N16
\u5|x[2]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[2]~26_combout\ = ((\u5|x\(2) $ (\u5|tix_int\(2) $ (\u5|x[1]~25\)))) # (GND)
-- \u5|x[2]~27\ = CARRY((\u5|x\(2) & ((!\u5|x[1]~25\) # (!\u5|tix_int\(2)))) # (!\u5|x\(2) & (!\u5|tix_int\(2) & !\u5|x[1]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(2),
	datab => \u5|tix_int\(2),
	datad => VCC,
	cin => \u5|x[1]~25\,
	combout => \u5|x[2]~26_combout\,
	cout => \u5|x[2]~27\);

-- Location: LCCOMB_X51_Y24_N26
\u5|x[7]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[7]~36_combout\ = ((\u5|x\(7) $ (\u5|tix_int\(7) $ (!\u5|x[6]~35\)))) # (GND)
-- \u5|x[7]~37\ = CARRY((\u5|x\(7) & ((\u5|tix_int\(7)) # (!\u5|x[6]~35\))) # (!\u5|x\(7) & (\u5|tix_int\(7) & !\u5|x[6]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(7),
	datab => \u5|tix_int\(7),
	datad => VCC,
	cin => \u5|x[6]~35\,
	combout => \u5|x[7]~36_combout\,
	cout => \u5|x[7]~37\);

-- Location: LCCOMB_X51_Y24_N28
\u5|x[8]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[8]~38_combout\ = (\u5|x\(8) & ((\u5|tix_int\(8) & (\u5|x[7]~37\ & VCC)) # (!\u5|tix_int\(8) & (!\u5|x[7]~37\)))) # (!\u5|x\(8) & ((\u5|tix_int\(8) & (!\u5|x[7]~37\)) # (!\u5|tix_int\(8) & ((\u5|x[7]~37\) # (GND)))))
-- \u5|x[8]~39\ = CARRY((\u5|x\(8) & (!\u5|tix_int\(8) & !\u5|x[7]~37\)) # (!\u5|x\(8) & ((!\u5|x[7]~37\) # (!\u5|tix_int\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(8),
	datab => \u5|tix_int\(8),
	datad => VCC,
	cin => \u5|x[7]~37\,
	combout => \u5|x[8]~38_combout\,
	cout => \u5|x[8]~39\);

-- Location: LCCOMB_X51_Y23_N10
\u5|x[15]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[15]~52_combout\ = (\u5|x\(15) & (\u5|x[14]~51\ & VCC)) # (!\u5|x\(15) & (!\u5|x[14]~51\))
-- \u5|x[15]~53\ = CARRY((!\u5|x\(15) & !\u5|x[14]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(15),
	datad => VCC,
	cin => \u5|x[14]~51\,
	combout => \u5|x[15]~52_combout\,
	cout => \u5|x[15]~53\);

-- Location: LCCOMB_X51_Y23_N14
\u5|x[17]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[17]~56_combout\ = (\u5|x\(17) & (\u5|x[16]~55\ & VCC)) # (!\u5|x\(17) & (!\u5|x[16]~55\))
-- \u5|x[17]~57\ = CARRY((!\u5|x\(17) & !\u5|x[16]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|x\(17),
	datad => VCC,
	cin => \u5|x[16]~55\,
	combout => \u5|x[17]~56_combout\,
	cout => \u5|x[17]~57\);

-- Location: LCCOMB_X51_Y23_N16
\u5|x[18]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[18]~58_combout\ = (\u5|x\(18) & ((GND) # (!\u5|x[17]~57\))) # (!\u5|x\(18) & (\u5|x[17]~57\ $ (GND)))
-- \u5|x[18]~59\ = CARRY((\u5|x\(18)) # (!\u5|x[17]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(18),
	datad => VCC,
	cin => \u5|x[17]~57\,
	combout => \u5|x[18]~58_combout\,
	cout => \u5|x[18]~59\);

-- Location: LCCOMB_X51_Y23_N18
\u5|x[19]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[19]~60_combout\ = \u5|x[18]~59\ $ (!\u5|x\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u5|x\(19),
	cin => \u5|x[18]~59\,
	combout => \u5|x[19]~60_combout\);

-- Location: LCCOMB_X45_Y25_N0
\u0|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add2~0_combout\ = (\u0|count\(0) & (!\u0|stop~regout\ & VCC)) # (!\u0|count\(0) & (\u0|stop~regout\ $ (GND)))
-- \u0|Add2~1\ = CARRY((!\u0|count\(0) & !\u0|stop~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(0),
	datab => \u0|stop~regout\,
	datad => VCC,
	combout => \u0|Add2~0_combout\,
	cout => \u0|Add2~1\);

-- Location: LCCOMB_X45_Y25_N6
\u0|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add2~6_combout\ = (\u0|count\(3) & (!\u0|Add2~5\)) # (!\u0|count\(3) & ((\u0|Add2~5\) # (GND)))
-- \u0|Add2~7\ = CARRY((!\u0|Add2~5\) # (!\u0|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(3),
	datad => VCC,
	cin => \u0|Add2~5\,
	combout => \u0|Add2~6_combout\,
	cout => \u0|Add2~7\);

-- Location: LCCOMB_X45_Y25_N8
\u0|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add2~8_combout\ = (\u0|count\(4) & (\u0|Add2~7\ $ (GND))) # (!\u0|count\(4) & (!\u0|Add2~7\ & VCC))
-- \u0|Add2~9\ = CARRY((\u0|count\(4) & !\u0|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(4),
	datad => VCC,
	cin => \u0|Add2~7\,
	combout => \u0|Add2~8_combout\,
	cout => \u0|Add2~9\);

-- Location: LCCOMB_X45_Y25_N10
\u0|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add2~10_combout\ = (\u0|count\(5) & (!\u0|Add2~9\)) # (!\u0|count\(5) & ((\u0|Add2~9\) # (GND)))
-- \u0|Add2~11\ = CARRY((!\u0|Add2~9\) # (!\u0|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(5),
	datad => VCC,
	cin => \u0|Add2~9\,
	combout => \u0|Add2~10_combout\,
	cout => \u0|Add2~11\);

-- Location: LCCOMB_X45_Y25_N12
\u0|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add2~12_combout\ = (\u0|count\(6) & (\u0|Add2~11\ $ (GND))) # (!\u0|count\(6) & (!\u0|Add2~11\ & VCC))
-- \u0|Add2~13\ = CARRY((\u0|count\(6) & !\u0|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(6),
	datad => VCC,
	cin => \u0|Add2~11\,
	combout => \u0|Add2~12_combout\,
	cout => \u0|Add2~13\);

-- Location: LCCOMB_X45_Y25_N14
\u0|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add2~14_combout\ = (\u0|count\(7) & (!\u0|Add2~13\)) # (!\u0|count\(7) & ((\u0|Add2~13\) # (GND)))
-- \u0|Add2~15\ = CARRY((!\u0|Add2~13\) # (!\u0|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(7),
	datad => VCC,
	cin => \u0|Add2~13\,
	combout => \u0|Add2~14_combout\,
	cout => \u0|Add2~15\);

-- Location: LCCOMB_X45_Y25_N26
\u0|Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add2~26_combout\ = (\u0|count\(13) & (!\u0|Add2~25\)) # (!\u0|count\(13) & ((\u0|Add2~25\) # (GND)))
-- \u0|Add2~27\ = CARRY((!\u0|Add2~25\) # (!\u0|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(13),
	datad => VCC,
	cin => \u0|Add2~25\,
	combout => \u0|Add2~26_combout\,
	cout => \u0|Add2~27\);

-- Location: LCCOMB_X45_Y25_N28
\u0|Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add2~28_combout\ = (\u0|count\(14) & (\u0|Add2~27\ $ (GND))) # (!\u0|count\(14) & (!\u0|Add2~27\ & VCC))
-- \u0|Add2~29\ = CARRY((\u0|count\(14) & !\u0|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(14),
	datad => VCC,
	cin => \u0|Add2~27\,
	combout => \u0|Add2~28_combout\,
	cout => \u0|Add2~29\);

-- Location: LCCOMB_X45_Y24_N14
\u0|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add3~4_combout\ = (\u0|wait_time\(2) & (\u0|Add3~3\ $ (GND))) # (!\u0|wait_time\(2) & (!\u0|Add3~3\ & VCC))
-- \u0|Add3~5\ = CARRY((\u0|wait_time\(2) & !\u0|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|wait_time\(2),
	datad => VCC,
	cin => \u0|Add3~3\,
	combout => \u0|Add3~4_combout\,
	cout => \u0|Add3~5\);

-- Location: LCCOMB_X45_Y24_N16
\u0|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add3~6_combout\ = (\u0|wait_time\(3) & (!\u0|Add3~5\)) # (!\u0|wait_time\(3) & ((\u0|Add3~5\) # (GND)))
-- \u0|Add3~7\ = CARRY((!\u0|Add3~5\) # (!\u0|wait_time\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(3),
	datad => VCC,
	cin => \u0|Add3~5\,
	combout => \u0|Add3~6_combout\,
	cout => \u0|Add3~7\);

-- Location: LCCOMB_X45_Y24_N18
\u0|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add3~8_combout\ = (\u0|wait_time\(4) & (\u0|Add3~7\ $ (GND))) # (!\u0|wait_time\(4) & (!\u0|Add3~7\ & VCC))
-- \u0|Add3~9\ = CARRY((\u0|wait_time\(4) & !\u0|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|wait_time\(4),
	datad => VCC,
	cin => \u0|Add3~7\,
	combout => \u0|Add3~8_combout\,
	cout => \u0|Add3~9\);

-- Location: LCCOMB_X45_Y24_N20
\u0|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add3~10_combout\ = (\u0|wait_time\(5) & (!\u0|Add3~9\)) # (!\u0|wait_time\(5) & ((\u0|Add3~9\) # (GND)))
-- \u0|Add3~11\ = CARRY((!\u0|Add3~9\) # (!\u0|wait_time\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(5),
	datad => VCC,
	cin => \u0|Add3~9\,
	combout => \u0|Add3~10_combout\,
	cout => \u0|Add3~11\);

-- Location: LCCOMB_X45_Y24_N22
\u0|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add3~12_combout\ = (\u0|wait_time\(6) & (\u0|Add3~11\ $ (GND))) # (!\u0|wait_time\(6) & (!\u0|Add3~11\ & VCC))
-- \u0|Add3~13\ = CARRY((\u0|wait_time\(6) & !\u0|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|wait_time\(6),
	datad => VCC,
	cin => \u0|Add3~11\,
	combout => \u0|Add3~12_combout\,
	cout => \u0|Add3~13\);

-- Location: LCCOMB_X45_Y24_N24
\u0|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add3~14_combout\ = (\u0|wait_time\(7) & (!\u0|Add3~13\)) # (!\u0|wait_time\(7) & ((\u0|Add3~13\) # (GND)))
-- \u0|Add3~15\ = CARRY((!\u0|Add3~13\) # (!\u0|wait_time\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(7),
	datad => VCC,
	cin => \u0|Add3~13\,
	combout => \u0|Add3~14_combout\,
	cout => \u0|Add3~15\);

-- Location: LCCOMB_X45_Y24_N26
\u0|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add3~16_combout\ = (\u0|wait_time\(8) & (\u0|Add3~15\ $ (GND))) # (!\u0|wait_time\(8) & (!\u0|Add3~15\ & VCC))
-- \u0|Add3~17\ = CARRY((\u0|wait_time\(8) & !\u0|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|wait_time\(8),
	datad => VCC,
	cin => \u0|Add3~15\,
	combout => \u0|Add3~16_combout\,
	cout => \u0|Add3~17\);

-- Location: LCCOMB_X45_Y24_N28
\u0|Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add3~18_combout\ = (\u0|wait_time\(9) & (!\u0|Add3~17\)) # (!\u0|wait_time\(9) & ((\u0|Add3~17\) # (GND)))
-- \u0|Add3~19\ = CARRY((!\u0|Add3~17\) # (!\u0|wait_time\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|wait_time\(9),
	datad => VCC,
	cin => \u0|Add3~17\,
	combout => \u0|Add3~18_combout\,
	cout => \u0|Add3~19\);

-- Location: LCCOMB_X45_Y24_N30
\u0|Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add3~20_combout\ = \u0|Add3~19\ $ (!\u0|wait_time\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u0|wait_time\(10),
	cin => \u0|Add3~19\,
	combout => \u0|Add3~20_combout\);

-- Location: LCCOMB_X93_Y26_N20
\u1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~20_combout\ = (\u1|count\(10) & (\u1|Add0~19\ $ (GND))) # (!\u1|count\(10) & (!\u1|Add0~19\ & VCC))
-- \u1|Add0~21\ = CARRY((\u1|count\(10) & !\u1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(10),
	datad => VCC,
	cin => \u1|Add0~19\,
	combout => \u1|Add0~20_combout\,
	cout => \u1|Add0~21\);

-- Location: LCCOMB_X50_Y29_N12
\u4|lcdm|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~0_combout\ = \u4|lcdm|delay_counter\(0) $ (VCC)
-- \u4|lcdm|Add0~1\ = CARRY(\u4|lcdm|delay_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|delay_counter\(0),
	datad => VCC,
	combout => \u4|lcdm|Add0~0_combout\,
	cout => \u4|lcdm|Add0~1\);

-- Location: LCCOMB_X50_Y29_N14
\u4|lcdm|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~2_combout\ = (\u4|lcdm|delay_counter\(1) & (\u4|lcdm|Add0~1\ & VCC)) # (!\u4|lcdm|delay_counter\(1) & (!\u4|lcdm|Add0~1\))
-- \u4|lcdm|Add0~3\ = CARRY((!\u4|lcdm|delay_counter\(1) & !\u4|lcdm|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|delay_counter\(1),
	datad => VCC,
	cin => \u4|lcdm|Add0~1\,
	combout => \u4|lcdm|Add0~2_combout\,
	cout => \u4|lcdm|Add0~3\);

-- Location: LCCOMB_X50_Y29_N16
\u4|lcdm|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~4_combout\ = (\u4|lcdm|delay_counter\(2) & ((GND) # (!\u4|lcdm|Add0~3\))) # (!\u4|lcdm|delay_counter\(2) & (\u4|lcdm|Add0~3\ $ (GND)))
-- \u4|lcdm|Add0~5\ = CARRY((\u4|lcdm|delay_counter\(2)) # (!\u4|lcdm|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|delay_counter\(2),
	datad => VCC,
	cin => \u4|lcdm|Add0~3\,
	combout => \u4|lcdm|Add0~4_combout\,
	cout => \u4|lcdm|Add0~5\);

-- Location: LCCOMB_X50_Y29_N24
\u4|lcdm|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~12_combout\ = (\u4|lcdm|delay_counter\(6) & ((GND) # (!\u4|lcdm|Add0~11\))) # (!\u4|lcdm|delay_counter\(6) & (\u4|lcdm|Add0~11\ $ (GND)))
-- \u4|lcdm|Add0~13\ = CARRY((\u4|lcdm|delay_counter\(6)) # (!\u4|lcdm|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(6),
	datad => VCC,
	cin => \u4|lcdm|Add0~11\,
	combout => \u4|lcdm|Add0~12_combout\,
	cout => \u4|lcdm|Add0~13\);

-- Location: LCCOMB_X50_Y29_N26
\u4|lcdm|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~14_combout\ = (\u4|lcdm|delay_counter\(7) & (\u4|lcdm|Add0~13\ & VCC)) # (!\u4|lcdm|delay_counter\(7) & (!\u4|lcdm|Add0~13\))
-- \u4|lcdm|Add0~15\ = CARRY((!\u4|lcdm|delay_counter\(7) & !\u4|lcdm|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(7),
	datad => VCC,
	cin => \u4|lcdm|Add0~13\,
	combout => \u4|lcdm|Add0~14_combout\,
	cout => \u4|lcdm|Add0~15\);

-- Location: LCCOMB_X50_Y28_N4
\u4|lcdm|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~24_combout\ = (\u4|lcdm|delay_counter\(12) & ((GND) # (!\u4|lcdm|Add0~23\))) # (!\u4|lcdm|delay_counter\(12) & (\u4|lcdm|Add0~23\ $ (GND)))
-- \u4|lcdm|Add0~25\ = CARRY((\u4|lcdm|delay_counter\(12)) # (!\u4|lcdm|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(12),
	datad => VCC,
	cin => \u4|lcdm|Add0~23\,
	combout => \u4|lcdm|Add0~24_combout\,
	cout => \u4|lcdm|Add0~25\);

-- Location: LCCOMB_X50_Y28_N10
\u4|lcdm|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~30_combout\ = (\u4|lcdm|delay_counter\(15) & (\u4|lcdm|Add0~29\ & VCC)) # (!\u4|lcdm|delay_counter\(15) & (!\u4|lcdm|Add0~29\))
-- \u4|lcdm|Add0~31\ = CARRY((!\u4|lcdm|delay_counter\(15) & !\u4|lcdm|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(15),
	datad => VCC,
	cin => \u4|lcdm|Add0~29\,
	combout => \u4|lcdm|Add0~30_combout\,
	cout => \u4|lcdm|Add0~31\);

-- Location: LCCOMB_X50_Y28_N12
\u4|lcdm|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~32_combout\ = (\u4|lcdm|delay_counter\(16) & ((GND) # (!\u4|lcdm|Add0~31\))) # (!\u4|lcdm|delay_counter\(16) & (\u4|lcdm|Add0~31\ $ (GND)))
-- \u4|lcdm|Add0~33\ = CARRY((\u4|lcdm|delay_counter\(16)) # (!\u4|lcdm|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|delay_counter\(16),
	datad => VCC,
	cin => \u4|lcdm|Add0~31\,
	combout => \u4|lcdm|Add0~32_combout\,
	cout => \u4|lcdm|Add0~33\);

-- Location: LCCOMB_X51_Y26_N10
\u3a|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3a|Add0~0_combout\ = \u3a|ffa\(0) $ (VCC)
-- \u3a|Add0~1\ = CARRY(\u3a|ffa\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3a|ffa\(0),
	datad => VCC,
	combout => \u3a|Add0~0_combout\,
	cout => \u3a|Add0~1\);

-- Location: LCCOMB_X51_Y26_N12
\u3a|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3a|Add0~2_combout\ = (\u3a|ffa\(1) & (!\u3a|Add0~1\)) # (!\u3a|ffa\(1) & ((\u3a|Add0~1\) # (GND)))
-- \u3a|Add0~3\ = CARRY((!\u3a|Add0~1\) # (!\u3a|ffa\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3a|ffa\(1),
	datad => VCC,
	cin => \u3a|Add0~1\,
	combout => \u3a|Add0~2_combout\,
	cout => \u3a|Add0~3\);

-- Location: LCCOMB_X51_Y26_N14
\u3a|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3a|Add0~4_combout\ = (\u3a|ffa\(2) & (!\u3a|Add0~3\ & VCC)) # (!\u3a|ffa\(2) & (\u3a|Add0~3\ $ (GND)))
-- \u3a|Add0~5\ = CARRY((!\u3a|ffa\(2) & !\u3a|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3a|ffa\(2),
	datad => VCC,
	cin => \u3a|Add0~3\,
	combout => \u3a|Add0~4_combout\,
	cout => \u3a|Add0~5\);

-- Location: LCCOMB_X51_Y26_N16
\u3a|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3a|Add0~6_combout\ = (\u3a|ffa\(3) & (!\u3a|Add0~5\)) # (!\u3a|ffa\(3) & ((\u3a|Add0~5\) # (GND)))
-- \u3a|Add0~7\ = CARRY((!\u3a|Add0~5\) # (!\u3a|ffa\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3a|ffa\(3),
	datad => VCC,
	cin => \u3a|Add0~5\,
	combout => \u3a|Add0~6_combout\,
	cout => \u3a|Add0~7\);

-- Location: LCCOMB_X51_Y26_N18
\u3a|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3a|Add0~8_combout\ = (\u3a|ffa\(4) & (\u3a|Add0~7\ $ (GND))) # (!\u3a|ffa\(4) & (!\u3a|Add0~7\ & VCC))
-- \u3a|Add0~9\ = CARRY((\u3a|ffa\(4) & !\u3a|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3a|ffa\(4),
	datad => VCC,
	cin => \u3a|Add0~7\,
	combout => \u3a|Add0~8_combout\,
	cout => \u3a|Add0~9\);

-- Location: LCCOMB_X51_Y26_N20
\u3a|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3a|Add0~10_combout\ = (\u3a|ffa\(5) & ((\u3a|Add0~9\) # (GND))) # (!\u3a|ffa\(5) & (!\u3a|Add0~9\))
-- \u3a|Add0~11\ = CARRY((\u3a|ffa\(5)) # (!\u3a|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3a|ffa\(5),
	datad => VCC,
	cin => \u3a|Add0~9\,
	combout => \u3a|Add0~10_combout\,
	cout => \u3a|Add0~11\);

-- Location: LCCOMB_X51_Y26_N22
\u3a|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3a|Add0~12_combout\ = \u3a|Add0~11\ $ (\u3a|ffa\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u3a|ffa\(6),
	cin => \u3a|Add0~11\,
	combout => \u3a|Add0~12_combout\);

-- Location: LCFF_X58_Y23_N17
\u4|data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Mux262~4_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.write_char~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|data\(1));

-- Location: LCCOMB_X54_Y23_N18
\u4|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Add1~2_combout\ = (\u4|character_counter\(1) & (!\u4|Add1~1\)) # (!\u4|character_counter\(1) & ((\u4|Add1~1\) # (GND)))
-- \u4|Add1~3\ = CARRY((!\u4|Add1~1\) # (!\u4|character_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datad => VCC,
	cin => \u4|Add1~1\,
	combout => \u4|Add1~2_combout\,
	cout => \u4|Add1~3\);

-- Location: LCCOMB_X54_Y23_N20
\u4|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Add1~4_combout\ = (\u4|character_counter\(2) & (\u4|Add1~3\ $ (GND))) # (!\u4|character_counter\(2) & (!\u4|Add1~3\ & VCC))
-- \u4|Add1~5\ = CARRY((\u4|character_counter\(2) & !\u4|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|character_counter\(2),
	datad => VCC,
	cin => \u4|Add1~3\,
	combout => \u4|Add1~4_combout\,
	cout => \u4|Add1~5\);

-- Location: LCCOMB_X54_Y23_N22
\u4|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Add1~6_combout\ = (\u4|character_counter\(3) & (!\u4|Add1~5\)) # (!\u4|character_counter\(3) & ((\u4|Add1~5\) # (GND)))
-- \u4|Add1~7\ = CARRY((!\u4|Add1~5\) # (!\u4|character_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|character_counter\(3),
	datad => VCC,
	cin => \u4|Add1~5\,
	combout => \u4|Add1~6_combout\,
	cout => \u4|Add1~7\);

-- Location: LCCOMB_X82_Y29_N0
\u3f|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3f|Add0~0_combout\ = \u3f|ffa\(0) $ (VCC)
-- \u3f|Add0~1\ = CARRY(\u3f|ffa\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3f|ffa\(0),
	datad => VCC,
	combout => \u3f|Add0~0_combout\,
	cout => \u3f|Add0~1\);

-- Location: LCCOMB_X82_Y29_N6
\u3f|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3f|Add0~6_combout\ = (\u3f|ffa\(3) & (!\u3f|Add0~5\)) # (!\u3f|ffa\(3) & ((\u3f|Add0~5\) # (GND)))
-- \u3f|Add0~7\ = CARRY((!\u3f|Add0~5\) # (!\u3f|ffa\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3f|ffa\(3),
	datad => VCC,
	cin => \u3f|Add0~5\,
	combout => \u3f|Add0~6_combout\,
	cout => \u3f|Add0~7\);

-- Location: LCCOMB_X82_Y29_N10
\u3f|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3f|Add0~10_combout\ = (\u3f|ffa\(5) & ((\u3f|Add0~9\) # (GND))) # (!\u3f|ffa\(5) & (!\u3f|Add0~9\))
-- \u3f|Add0~11\ = CARRY((\u3f|ffa\(5)) # (!\u3f|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3f|ffa\(5),
	datad => VCC,
	cin => \u3f|Add0~9\,
	combout => \u3f|Add0~10_combout\,
	cout => \u3f|Add0~11\);

-- Location: LCCOMB_X82_Y29_N12
\u3f|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3f|Add0~12_combout\ = \u3f|Add0~11\ $ (\u3f|ffa\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u3f|ffa\(6),
	cin => \u3f|Add0~11\,
	combout => \u3f|Add0~12_combout\);

-- Location: LCCOMB_X77_Y28_N22
\u3e|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3e|Add0~8_combout\ = (\u3e|ffa\(4) & (\u3e|Add0~7\ $ (GND))) # (!\u3e|ffa\(4) & (!\u3e|Add0~7\ & VCC))
-- \u3e|Add0~9\ = CARRY((\u3e|ffa\(4) & !\u3e|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3e|ffa\(4),
	datad => VCC,
	cin => \u3e|Add0~7\,
	combout => \u3e|Add0~8_combout\,
	cout => \u3e|Add0~9\);

-- Location: LCCOMB_X77_Y28_N24
\u3e|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3e|Add0~10_combout\ = (\u3e|ffa\(5) & ((\u3e|Add0~9\) # (GND))) # (!\u3e|ffa\(5) & (!\u3e|Add0~9\))
-- \u3e|Add0~11\ = CARRY((\u3e|ffa\(5)) # (!\u3e|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3e|ffa\(5),
	datad => VCC,
	cin => \u3e|Add0~9\,
	combout => \u3e|Add0~10_combout\,
	cout => \u3e|Add0~11\);

-- Location: LCFF_X56_Y24_N13
\u0|omwentel255[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|omwentel255[1]~10_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u0|omwentel255[6]~22_combout\,
	ena => \u0|omwentel255[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|omwentel255\(1));

-- Location: LCFF_X50_Y22_N13
\u8|count_RPM[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|count_RPM[6]~20_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u3c|ALT_INV_long~regout\,
	ena => \u8|gem_RPM[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|count_RPM\(6));

-- Location: LCFF_X51_Y22_N25
\u8|tot_RPM_int[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM_int[9]~30_combout\,
	sdata => \u8|tot_RPM\(9),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u3c|ALT_INV_long~regout\,
	sload => \u8|process_0~0_combout\,
	ena => \u8|gem_RPM_int[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM_int\(9));

-- Location: LCCOMB_X56_Y24_N12
\u0|omwentel255[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel255[1]~10_combout\ = (\u0|omwentel255\(1) & (!\u0|omwentel255[0]~9\)) # (!\u0|omwentel255\(1) & ((\u0|omwentel255[0]~9\) # (GND)))
-- \u0|omwentel255[1]~11\ = CARRY((!\u0|omwentel255[0]~9\) # (!\u0|omwentel255\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(1),
	datad => VCC,
	cin => \u0|omwentel255[0]~9\,
	combout => \u0|omwentel255[1]~10_combout\,
	cout => \u0|omwentel255[1]~11\);

-- Location: LCCOMB_X43_Y24_N0
\u3c|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add1~0_combout\ = (\u3c|long_press_counter~0_combout\ & (\u3c|process_0~5_combout\ $ (VCC))) # (!\u3c|long_press_counter~0_combout\ & (\u3c|process_0~5_combout\ & VCC))
-- \u3c|Add1~1\ = CARRY((\u3c|long_press_counter~0_combout\ & \u3c|process_0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long_press_counter~0_combout\,
	datab => \u3c|process_0~5_combout\,
	datad => VCC,
	combout => \u3c|Add1~0_combout\,
	cout => \u3c|Add1~1\);

-- Location: LCCOMB_X43_Y24_N24
\u3c|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add1~24_combout\ = (\u3c|Add1~23\ & (\u3c|long_press_counter\(12) & (\u3c|long_press_counter~1_combout\ & VCC))) # (!\u3c|Add1~23\ & ((((\u3c|long_press_counter\(12) & \u3c|long_press_counter~1_combout\)))))
-- \u3c|Add1~25\ = CARRY((\u3c|long_press_counter\(12) & (\u3c|long_press_counter~1_combout\ & !\u3c|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long_press_counter\(12),
	datab => \u3c|long_press_counter~1_combout\,
	datad => VCC,
	cin => \u3c|Add1~23\,
	combout => \u3c|Add1~24_combout\,
	cout => \u3c|Add1~25\);

-- Location: LCCOMB_X52_Y23_N2
\u8|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|Add0~0_combout\ = \u8|wait_gem_RPM\(0) $ (VCC)
-- \u8|Add0~1\ = CARRY(\u8|wait_gem_RPM\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|wait_gem_RPM\(0),
	datad => VCC,
	combout => \u8|Add0~0_combout\,
	cout => \u8|Add0~1\);

-- Location: LCCOMB_X52_Y23_N6
\u8|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|Add0~4_combout\ = (\u8|wait_gem_RPM\(2) & (\u8|Add0~3\ $ (GND))) # (!\u8|wait_gem_RPM\(2) & (!\u8|Add0~3\ & VCC))
-- \u8|Add0~5\ = CARRY((\u8|wait_gem_RPM\(2) & !\u8|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|wait_gem_RPM\(2),
	datad => VCC,
	cin => \u8|Add0~3\,
	combout => \u8|Add0~4_combout\,
	cout => \u8|Add0~5\);

-- Location: LCCOMB_X52_Y23_N12
\u8|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|Add0~10_combout\ = (\u8|wait_gem_RPM\(5) & (!\u8|Add0~9\)) # (!\u8|wait_gem_RPM\(5) & ((\u8|Add0~9\) # (GND)))
-- \u8|Add0~11\ = CARRY((!\u8|Add0~9\) # (!\u8|wait_gem_RPM\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|wait_gem_RPM\(5),
	datad => VCC,
	cin => \u8|Add0~9\,
	combout => \u8|Add0~10_combout\,
	cout => \u8|Add0~11\);

-- Location: LCCOMB_X50_Y22_N12
\u8|count_RPM[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|count_RPM[6]~20_combout\ = (\u8|count_RPM\(6) & (\u8|count_RPM[5]~19\ $ (GND))) # (!\u8|count_RPM\(6) & (!\u8|count_RPM[5]~19\ & VCC))
-- \u8|count_RPM[6]~21\ = CARRY((\u8|count_RPM\(6) & !\u8|count_RPM[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count_RPM\(6),
	datad => VCC,
	cin => \u8|count_RPM[5]~19\,
	combout => \u8|count_RPM[6]~20_combout\,
	cout => \u8|count_RPM[6]~21\);

-- Location: LCCOMB_X51_Y22_N24
\u8|tot_RPM_int[9]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM_int[9]~30_combout\ = (\u8|tot_RPM_int\(9) & (\u8|tot_RPM_int[8]~29\ & VCC)) # (!\u8|tot_RPM_int\(9) & (!\u8|tot_RPM_int[8]~29\))
-- \u8|tot_RPM_int[9]~31\ = CARRY((!\u8|tot_RPM_int\(9) & !\u8|tot_RPM_int[8]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tot_RPM_int\(9),
	datad => VCC,
	cin => \u8|tot_RPM_int[8]~29\,
	combout => \u8|tot_RPM_int[9]~30_combout\,
	cout => \u8|tot_RPM_int[9]~31\);

-- Location: LCCOMB_X86_Y23_N22
\u3d|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3d|Add0~4_combout\ = (\u3d|ffa\(2) & (!\u3d|Add0~3\ & VCC)) # (!\u3d|ffa\(2) & (\u3d|Add0~3\ $ (GND)))
-- \u3d|Add0~5\ = CARRY((!\u3d|ffa\(2) & !\u3d|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3d|ffa\(2),
	datad => VCC,
	cin => \u3d|Add0~3\,
	combout => \u3d|Add0~4_combout\,
	cout => \u3d|Add0~5\);

-- Location: LCCOMB_X86_Y23_N24
\u3d|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3d|Add0~6_combout\ = (\u3d|ffa\(3) & (!\u3d|Add0~5\)) # (!\u3d|ffa\(3) & ((\u3d|Add0~5\) # (GND)))
-- \u3d|Add0~7\ = CARRY((!\u3d|Add0~5\) # (!\u3d|ffa\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3d|ffa\(3),
	datad => VCC,
	cin => \u3d|Add0~5\,
	combout => \u3d|Add0~6_combout\,
	cout => \u3d|Add0~7\);

-- Location: LCCOMB_X86_Y23_N26
\u3d|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3d|Add0~8_combout\ = (\u3d|ffa\(4) & (\u3d|Add0~7\ $ (GND))) # (!\u3d|ffa\(4) & (!\u3d|Add0~7\ & VCC))
-- \u3d|Add0~9\ = CARRY((\u3d|ffa\(4) & !\u3d|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3d|ffa\(4),
	datad => VCC,
	cin => \u3d|Add0~7\,
	combout => \u3d|Add0~8_combout\,
	cout => \u3d|Add0~9\);

-- Location: LCCOMB_X41_Y24_N18
\u3c|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add0~2_combout\ = (\u3c|ffa\(1) & (!\u3c|Add0~1\)) # (!\u3c|ffa\(1) & ((\u3c|Add0~1\) # (GND)))
-- \u3c|Add0~3\ = CARRY((!\u3c|Add0~1\) # (!\u3c|ffa\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|ffa\(1),
	datad => VCC,
	cin => \u3c|Add0~1\,
	combout => \u3c|Add0~2_combout\,
	cout => \u3c|Add0~3\);

-- Location: LCCOMB_X41_Y24_N20
\u3c|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add0~4_combout\ = (\u3c|ffa\(2) & (!\u3c|Add0~3\ & VCC)) # (!\u3c|ffa\(2) & (\u3c|Add0~3\ $ (GND)))
-- \u3c|Add0~5\ = CARRY((!\u3c|ffa\(2) & !\u3c|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3c|ffa\(2),
	datad => VCC,
	cin => \u3c|Add0~3\,
	combout => \u3c|Add0~4_combout\,
	cout => \u3c|Add0~5\);

-- Location: LCCOMB_X41_Y24_N22
\u3c|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add0~6_combout\ = (\u3c|ffa\(3) & (!\u3c|Add0~5\)) # (!\u3c|ffa\(3) & ((\u3c|Add0~5\) # (GND)))
-- \u3c|Add0~7\ = CARRY((!\u3c|Add0~5\) # (!\u3c|ffa\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3c|ffa\(3),
	datad => VCC,
	cin => \u3c|Add0~5\,
	combout => \u3c|Add0~6_combout\,
	cout => \u3c|Add0~7\);

-- Location: LCCOMB_X41_Y24_N24
\u3c|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add0~8_combout\ = (\u3c|ffa\(4) & (\u3c|Add0~7\ $ (GND))) # (!\u3c|ffa\(4) & (!\u3c|Add0~7\ & VCC))
-- \u3c|Add0~9\ = CARRY((\u3c|ffa\(4) & !\u3c|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|ffa\(4),
	datad => VCC,
	cin => \u3c|Add0~7\,
	combout => \u3c|Add0~8_combout\,
	cout => \u3c|Add0~9\);

-- Location: LCCOMB_X41_Y24_N26
\u3c|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add0~10_combout\ = (\u3c|ffa\(5) & ((\u3c|Add0~9\) # (GND))) # (!\u3c|ffa\(5) & (!\u3c|Add0~9\))
-- \u3c|Add0~11\ = CARRY((\u3c|ffa\(5)) # (!\u3c|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3c|ffa\(5),
	datad => VCC,
	cin => \u3c|Add0~9\,
	combout => \u3c|Add0~10_combout\,
	cout => \u3c|Add0~11\);

-- Location: LCCOMB_X41_Y24_N28
\u3c|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add0~12_combout\ = \u3c|ffa\(6) $ (\u3c|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3c|ffa\(6),
	cin => \u3c|Add0~11\,
	combout => \u3c|Add0~12_combout\);

-- Location: LCCOMB_X72_Y29_N10
\u3b|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3b|Add0~0_combout\ = \u3b|ffa\(0) $ (VCC)
-- \u3b|Add0~1\ = CARRY(\u3b|ffa\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3b|ffa\(0),
	datad => VCC,
	combout => \u3b|Add0~0_combout\,
	cout => \u3b|Add0~1\);

-- Location: LCCOMB_X72_Y29_N12
\u3b|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3b|Add0~2_combout\ = (\u3b|ffa\(1) & (!\u3b|Add0~1\)) # (!\u3b|ffa\(1) & ((\u3b|Add0~1\) # (GND)))
-- \u3b|Add0~3\ = CARRY((!\u3b|Add0~1\) # (!\u3b|ffa\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3b|ffa\(1),
	datad => VCC,
	cin => \u3b|Add0~1\,
	combout => \u3b|Add0~2_combout\,
	cout => \u3b|Add0~3\);

-- Location: LCCOMB_X72_Y29_N16
\u3b|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3b|Add0~6_combout\ = (\u3b|ffa\(3) & (!\u3b|Add0~5\)) # (!\u3b|ffa\(3) & ((\u3b|Add0~5\) # (GND)))
-- \u3b|Add0~7\ = CARRY((!\u3b|Add0~5\) # (!\u3b|ffa\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3b|ffa\(3),
	datad => VCC,
	cin => \u3b|Add0~5\,
	combout => \u3b|Add0~6_combout\,
	cout => \u3b|Add0~7\);

-- Location: LCCOMB_X72_Y29_N20
\u3b|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3b|Add0~10_combout\ = (\u3b|ffa\(5) & ((\u3b|Add0~9\) # (GND))) # (!\u3b|ffa\(5) & (!\u3b|Add0~9\))
-- \u3b|Add0~11\ = CARRY((\u3b|ffa\(5)) # (!\u3b|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3b|ffa\(5),
	datad => VCC,
	cin => \u3b|Add0~9\,
	combout => \u3b|Add0~10_combout\,
	cout => \u3b|Add0~11\);

-- Location: LCCOMB_X48_Y25_N10
\u5|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Equal0~1_combout\ = (!\u0|tix_mem\(13) & (!\u0|tix_mem\(11) & (!\u0|tix_mem\(12) & !\u0|tix_mem\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(13),
	datab => \u0|tix_mem\(11),
	datac => \u0|tix_mem\(12),
	datad => \u0|tix_mem\(14),
	combout => \u5|Equal0~1_combout\);

-- Location: LCCOMB_X49_Y25_N2
\u5|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan1~1_combout\ = (!\u0|tix_mem\(6) & (((!\u0|tix_mem\(5)) # (!\u0|tix_mem\(4))) # (!\u0|tix_mem\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(6),
	datab => \u0|tix_mem\(3),
	datac => \u0|tix_mem\(4),
	datad => \u0|tix_mem\(5),
	combout => \u5|LessThan1~1_combout\);

-- Location: LCCOMB_X49_Y25_N10
\u5|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan1~2_combout\ = ((\u5|LessThan1~1_combout\) # ((!\u0|tix_mem\(9)) # (!\u0|tix_mem\(8)))) # (!\u0|tix_mem\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(7),
	datab => \u5|LessThan1~1_combout\,
	datac => \u0|tix_mem\(8),
	datad => \u0|tix_mem\(9),
	combout => \u5|LessThan1~2_combout\);

-- Location: LCFF_X75_Y29_N17
\u9|restarget[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u9|restarget~6_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u9|restarget[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|restarget\(0));

-- Location: LCFF_X50_Y25_N17
\u5|tix_int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(5),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u5|tix_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(5));

-- Location: LCCOMB_X50_Y25_N0
\u5|rpm[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[0]~1_combout\ = (\u5|tix_int\(6)) # ((\u5|tix_int\(7)) # ((\u5|tix_int\(5) & \u5|tix_int\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(5),
	datab => \u5|tix_int\(6),
	datac => \u5|tix_int\(7),
	datad => \u5|tix_int\(4),
	combout => \u5|rpm[0]~1_combout\);

-- Location: LCCOMB_X51_Y25_N6
\u5|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~0_combout\ = (\u5|tix_int\(14)) # ((\u5|tix_int\(12)) # (\u5|tix_int\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(14),
	datac => \u5|tix_int\(12),
	datad => \u5|tix_int\(13),
	combout => \u5|LessThan2~0_combout\);

-- Location: LCCOMB_X51_Y23_N20
\u5|stop~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|stop~2_combout\ = (!\u5|x\(15) & (!\u5|x\(18) & \u5|x\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(15),
	datac => \u5|x\(18),
	datad => \u5|x\(19),
	combout => \u5|stop~2_combout\);

-- Location: LCFF_X45_Y24_N7
\u0|wait_time[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(7));

-- Location: LCFF_X44_Y24_N25
\u0|wait_time[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(6));

-- Location: LCFF_X44_Y24_N7
\u0|wait_time[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(4));

-- Location: LCFF_X45_Y24_N21
\u0|wait_time[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|Add3~10_combout\,
	ena => \u0|wait_time[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(5));

-- Location: LCFF_X45_Y24_N17
\u0|wait_time[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|Add3~6_combout\,
	ena => \u0|wait_time[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(3));

-- Location: LCCOMB_X44_Y24_N12
\u0|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal2~1_combout\ = (\u0|wait_time\(6) & (!\u0|wait_time\(5) & (!\u0|wait_time\(3) & \u0|wait_time\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(6),
	datab => \u0|wait_time\(5),
	datac => \u0|wait_time\(3),
	datad => \u0|wait_time\(4),
	combout => \u0|Equal2~1_combout\);

-- Location: LCCOMB_X47_Y25_N22
\u0|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~0_combout\ = (\u0|count\(1)) # ((\u0|count\(2)) # ((\u0|count\(3)) # (!\u0|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(1),
	datab => \u0|count\(2),
	datac => \u0|count\(0),
	datad => \u0|count\(3),
	combout => \u0|LessThan0~0_combout\);

-- Location: LCCOMB_X47_Y25_N20
\u0|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~1_combout\ = (\u0|count\(5) & (\u0|count\(4) & \u0|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(5),
	datac => \u0|count\(4),
	datad => \u0|LessThan0~0_combout\,
	combout => \u0|LessThan0~1_combout\);

-- Location: LCCOMB_X47_Y25_N30
\u0|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~2_combout\ = (\u0|count\(8) & ((\u0|LessThan0~1_combout\) # ((\u0|count\(7)) # (\u0|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|LessThan0~1_combout\,
	datab => \u0|count\(7),
	datac => \u0|count\(8),
	datad => \u0|count\(6),
	combout => \u0|LessThan0~2_combout\);

-- Location: LCFF_X93_Y26_N21
\u1|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~20_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(10));

-- Location: LCFF_X51_Y28_N27
\u4|lcdm|delay_counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector6~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(15));

-- Location: LCCOMB_X51_Y28_N8
\u4|lcdm|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Equal0~2_combout\ = (!\u4|lcdm|delay_counter\(16) & !\u4|lcdm|delay_counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|delay_counter\(16),
	datad => \u4|lcdm|delay_counter\(15),
	combout => \u4|lcdm|Equal0~2_combout\);

-- Location: LCFF_X51_Y28_N7
\u4|lcdm|delay_counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector9~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(12));

-- Location: LCFF_X51_Y28_N17
\u4|lcdm|delay_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector14~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(7));

-- Location: LCFF_X51_Y29_N5
\u4|lcdm|delay_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector15~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(6));

-- Location: LCCOMB_X52_Y28_N12
\u4|lcdm|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Equal0~5_combout\ = (!\u4|lcdm|delay_counter\(8) & (!\u4|lcdm|delay_counter\(7) & (!\u4|lcdm|delay_counter\(5) & !\u4|lcdm|delay_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(8),
	datab => \u4|lcdm|delay_counter\(7),
	datac => \u4|lcdm|delay_counter\(5),
	datad => \u4|lcdm|delay_counter\(6),
	combout => \u4|lcdm|Equal0~5_combout\);

-- Location: LCFF_X53_Y28_N21
\u4|lcdm|current_state.command_init_8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector31~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_8~regout\);

-- Location: LCFF_X53_Y28_N11
\u4|lcdm|current_state.command_init_9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector32~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_9~regout\);

-- Location: LCCOMB_X53_Y28_N6
\u4|lcdm|Selector99~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector99~3_combout\ = (!\u4|lcdm|current_state.command_init_9~regout\ & !\u4|lcdm|current_state.command_init_10~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_9~regout\,
	datad => \u4|lcdm|current_state.command_init_10~regout\,
	combout => \u4|lcdm|Selector99~3_combout\);

-- Location: LCCOMB_X53_Y29_N4
\u4|lcdm|Selector52~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector52~2_combout\ = (\u4|lcdm|current_state.pulse_busy_flag_3~regout\) # ((!\u4|lcdm|LCD_DB[0]~8_combout\ & \u4|lcdm|current_state.wait_for_command~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag_3~regout\,
	datab => \u4|lcdm|LCD_DB[0]~8_combout\,
	datad => \u4|lcdm|current_state.wait_for_command~regout\,
	combout => \u4|lcdm|Selector52~2_combout\);

-- Location: LCFF_X51_Y26_N25
\u3a|ffa[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3a|ffa[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3a|ffa\(2));

-- Location: LCCOMB_X76_Y28_N20
\u9|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|process_0~1_combout\ = (\u3f|output~regout\) # (\u3e|output~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3f|output~regout\,
	datad => \u3e|output~regout\,
	combout => \u9|process_0~1_combout\);

-- Location: LCCOMB_X75_Y29_N16
\u9|restarget~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|restarget~6_combout\ = \u9|resist_int\(0) $ (((\u3f|output~regout\) # (\u3e|output~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3f|output~regout\,
	datac => \u9|resist_int\(0),
	datad => \u3e|output~regout\,
	combout => \u9|restarget~6_combout\);

-- Location: LCCOMB_X45_Y24_N6
\u0|wait_time[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[7]~4_combout\ = (\u0|wait_time[10]~0_combout\ & (\u0|Add3~14_combout\ & ((!\u0|process_0~0_combout\)))) # (!\u0|wait_time[10]~0_combout\ & (((\u0|wait_time\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add3~14_combout\,
	datab => \u0|wait_time[10]~0_combout\,
	datac => \u0|wait_time\(7),
	datad => \u0|process_0~0_combout\,
	combout => \u0|wait_time[7]~4_combout\);

-- Location: LCCOMB_X44_Y24_N24
\u0|wait_time[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[6]~5_combout\ = (\u0|wait_time[10]~0_combout\ & (!\u0|process_0~0_combout\ & ((\u0|Add3~12_combout\)))) # (!\u0|wait_time[10]~0_combout\ & (((\u0|wait_time\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|process_0~0_combout\,
	datab => \u0|wait_time[10]~0_combout\,
	datac => \u0|wait_time\(6),
	datad => \u0|Add3~12_combout\,
	combout => \u0|wait_time[6]~5_combout\);

-- Location: LCCOMB_X44_Y24_N6
\u0|wait_time[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[4]~6_combout\ = (\u0|wait_time[10]~0_combout\ & (!\u0|process_0~0_combout\ & ((\u0|Add3~8_combout\)))) # (!\u0|wait_time[10]~0_combout\ & (((\u0|wait_time\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|process_0~0_combout\,
	datab => \u0|wait_time[10]~0_combout\,
	datac => \u0|wait_time\(4),
	datad => \u0|Add3~8_combout\,
	combout => \u0|wait_time[4]~6_combout\);

-- Location: LCCOMB_X51_Y29_N12
\u4|lcdm|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector17~0_combout\ = (\u4|lcdm|Add0~8_combout\ & ((\u4|lcdm|current_state.pulse_e_1~regout\) # ((\u4|lcdm|current_state.pulse_busy_flag_1~regout\)))) # (!\u4|lcdm|Add0~8_combout\ & (\u4|lcdm|Equal0~6_combout\ & 
-- ((\u4|lcdm|current_state.pulse_e_1~regout\) # (\u4|lcdm|current_state.pulse_busy_flag_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Add0~8_combout\,
	datab => \u4|lcdm|current_state.pulse_e_1~regout\,
	datac => \u4|lcdm|Equal0~6_combout\,
	datad => \u4|lcdm|current_state.pulse_busy_flag_1~regout\,
	combout => \u4|lcdm|Selector17~0_combout\);

-- Location: LCCOMB_X51_Y28_N26
\u4|lcdm|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector6~0_combout\ = (\u4|lcdm|Selector47~1_combout\) # ((\u4|lcdm|WideOr17~1_combout\ & (\u4|lcdm|Add0~30_combout\)) # (!\u4|lcdm|WideOr17~1_combout\ & ((!\u4|lcdm|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Add0~30_combout\,
	datab => \u4|lcdm|WideOr17~1_combout\,
	datac => \u4|lcdm|Selector1~0_combout\,
	datad => \u4|lcdm|Selector47~1_combout\,
	combout => \u4|lcdm|Selector6~0_combout\);

-- Location: LCCOMB_X51_Y28_N6
\u4|lcdm|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector9~0_combout\ = (\u4|lcdm|current_state.command_init_4~regout\) # ((\u4|lcdm|Add0~24_combout\ & !\u4|lcdm|delay_counter[8]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.command_init_4~regout\,
	datac => \u4|lcdm|Add0~24_combout\,
	datad => \u4|lcdm|delay_counter[8]~5_combout\,
	combout => \u4|lcdm|Selector9~0_combout\);

-- Location: LCCOMB_X51_Y28_N16
\u4|lcdm|Selector14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector14~2_combout\ = (\u4|lcdm|Selector47~1_combout\) # ((\u4|lcdm|WideOr17~1_combout\ & (\u4|lcdm|Add0~14_combout\)) # (!\u4|lcdm|WideOr17~1_combout\ & ((\u4|lcdm|Selector14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Add0~14_combout\,
	datab => \u4|lcdm|WideOr17~1_combout\,
	datac => \u4|lcdm|Selector14~1_combout\,
	datad => \u4|lcdm|Selector47~1_combout\,
	combout => \u4|lcdm|Selector14~2_combout\);

-- Location: LCCOMB_X51_Y29_N2
\u4|lcdm|Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector15~1_combout\ = (\u4|lcdm|LCD_E~0_combout\ & ((\u4|lcdm|Add0~12_combout\) # ((\u4|lcdm|Equal0~6_combout\)))) # (!\u4|lcdm|LCD_E~0_combout\ & (\u4|lcdm|Add0~12_combout\ & ((\u4|lcdm|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|LCD_E~0_combout\,
	datab => \u4|lcdm|Add0~12_combout\,
	datac => \u4|lcdm|Equal0~6_combout\,
	datad => \u4|lcdm|Selector15~0_combout\,
	combout => \u4|lcdm|Selector15~1_combout\);

-- Location: LCCOMB_X51_Y29_N4
\u4|lcdm|Selector15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector15~2_combout\ = (\u4|lcdm|current_state.command_init_2~regout\) # ((\u4|lcdm|Selector15~1_combout\) # ((\u4|lcdm|WideOr18~combout\ & \u4|lcdm|delay_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_2~regout\,
	datab => \u4|lcdm|WideOr18~combout\,
	datac => \u4|lcdm|delay_counter\(6),
	datad => \u4|lcdm|Selector15~1_combout\,
	combout => \u4|lcdm|Selector15~2_combout\);

-- Location: LCFF_X53_Y28_N27
\u4|lcdm|return_state.command_init_8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector63~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_8~regout\);

-- Location: LCCOMB_X53_Y28_N20
\u4|lcdm|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector31~0_combout\ = (\u4|lcdm|Selector34~2_combout\ & ((\u4|lcdm|Selector53~3_combout\ & (\u4|lcdm|return_state.command_init_8~regout\)) # (!\u4|lcdm|Selector53~3_combout\ & ((\u4|lcdm|current_state.command_init_8~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_8~regout\,
	datab => \u4|lcdm|Selector53~3_combout\,
	datac => \u4|lcdm|current_state.command_init_8~regout\,
	datad => \u4|lcdm|Selector34~2_combout\,
	combout => \u4|lcdm|Selector31~0_combout\);

-- Location: LCFF_X53_Y28_N9
\u4|lcdm|return_state.command_init_11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector66~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_11~regout\);

-- Location: LCFF_X53_Y28_N19
\u4|lcdm|return_state.command_init_9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector64~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_9~regout\);

-- Location: LCCOMB_X53_Y28_N10
\u4|lcdm|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector32~0_combout\ = (\u4|lcdm|Selector34~2_combout\ & ((\u4|lcdm|Selector53~3_combout\ & (\u4|lcdm|return_state.command_init_9~regout\)) # (!\u4|lcdm|Selector53~3_combout\ & ((\u4|lcdm|current_state.command_init_9~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_9~regout\,
	datab => \u4|lcdm|Selector53~3_combout\,
	datac => \u4|lcdm|current_state.command_init_9~regout\,
	datad => \u4|lcdm|Selector34~2_combout\,
	combout => \u4|lcdm|Selector32~0_combout\);

-- Location: LCFF_X53_Y28_N29
\u4|lcdm|return_state.command_init_10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector65~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_10~regout\);

-- Location: LCFF_X52_Y30_N5
\u4|lcdm|return_state.command_init_6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector61~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_6~regout\);

-- Location: LCFF_X53_Y28_N3
\u4|lcdm|return_state.command_init_7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector62~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_7~regout\);

-- Location: LCFF_X51_Y26_N27
\u3a|ffa[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3a|Add0~14_combout\,
	ena => \u3a|ffa[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3a|ffa\(1));

-- Location: LCFF_X51_Y26_N5
\u3a|ffa[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3a|Add0~15_combout\,
	ena => \u3a|ffa[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3a|ffa\(0));

-- Location: LCCOMB_X53_Y26_N16
\u3a|ffa[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3a|ffa[6]~0_combout\ = \u3a|a~regout\ $ (!\hall_sens~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3a|a~regout\,
	datad => \hall_sens~combout\,
	combout => \u3a|ffa[6]~0_combout\);

-- Location: LCCOMB_X51_Y26_N24
\u3a|ffa[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3a|ffa[2]~5_combout\ = (\u3a|Add0~4_combout\ & (!\u3a|ffa[2]~3_combout\ & ((\u3a|ffa\(2)) # (\u3a|ffa[6]~1_combout\)))) # (!\u3a|Add0~4_combout\ & (((\u3a|ffa\(2)) # (\u3a|ffa[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3a|Add0~4_combout\,
	datab => \u3a|ffa[2]~3_combout\,
	datac => \u3a|ffa\(2),
	datad => \u3a|ffa[6]~1_combout\,
	combout => \u3a|ffa[2]~5_combout\);

-- Location: LCCOMB_X54_Y29_N10
\u4|lcdm|Selector88~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector88~1_combout\ = (\u4|lcdm|WideOr17~0_combout\ & (((\u4|wr~regout\ & \u4|lcdm|LCD_DB[0]~8_combout\)) # (!\u4|lcdm|current_state.wait_for_command~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|wr~regout\,
	datac => \u4|lcdm|LCD_DB[0]~8_combout\,
	datad => \u4|lcdm|WideOr17~0_combout\,
	combout => \u4|lcdm|Selector88~1_combout\);

-- Location: LCFF_X52_Y30_N3
\u4|lcdm|return_state.command_init_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector57~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_2~regout\);

-- Location: LCFF_X52_Y30_N21
\u4|lcdm|return_state.command_init_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector59~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_4~regout\);

-- Location: LCFF_X53_Y30_N5
\u4|lcdm|return_state.reset\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|return_state.reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.reset~regout\);

-- Location: LCFF_X56_Y27_N21
\u4|state.update_linecount\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector4~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|state.update_linecount~regout\);

-- Location: LCCOMB_X56_Y27_N10
\u4|Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector18~1_combout\ = ((!\u4|state.hold2~regout\ & (!\u4|state.update_linecount_wait~regout\ & \u4|Selector1~2_combout\))) # (!\u4|character_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.hold2~regout\,
	datab => \u4|state.update_linecount_wait~regout\,
	datac => \u4|character_counter\(0),
	datad => \u4|Selector1~2_combout\,
	combout => \u4|Selector18~1_combout\);

-- Location: LCCOMB_X53_Y28_N26
\u4|lcdm|Selector63~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector63~1_combout\ = (\u4|lcdm|current_state.command_init_7~regout\) # ((\u4|lcdm|return_state.command_init_8~regout\ & \u4|lcdm|Selector63~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_7~regout\,
	datac => \u4|lcdm|return_state.command_init_8~regout\,
	datad => \u4|lcdm|Selector63~0_combout\,
	combout => \u4|lcdm|Selector63~1_combout\);

-- Location: LCCOMB_X53_Y28_N8
\u4|lcdm|Selector66~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector66~0_combout\ = (\u4|lcdm|current_state.command_init_10~regout\) # ((\u4|lcdm|return_state.command_init_11~regout\ & \u4|lcdm|Selector63~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.command_init_10~regout\,
	datac => \u4|lcdm|return_state.command_init_11~regout\,
	datad => \u4|lcdm|Selector63~0_combout\,
	combout => \u4|lcdm|Selector66~0_combout\);

-- Location: LCCOMB_X53_Y28_N18
\u4|lcdm|Selector64~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector64~0_combout\ = (\u4|lcdm|current_state.command_init_8~regout\) # ((\u4|lcdm|return_state.command_init_9~regout\ & \u4|lcdm|Selector63~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_8~regout\,
	datac => \u4|lcdm|return_state.command_init_9~regout\,
	datad => \u4|lcdm|Selector63~0_combout\,
	combout => \u4|lcdm|Selector64~0_combout\);

-- Location: LCCOMB_X53_Y28_N28
\u4|lcdm|Selector65~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector65~0_combout\ = (\u4|lcdm|current_state.command_init_9~regout\) # ((\u4|lcdm|return_state.command_init_10~regout\ & \u4|lcdm|Selector63~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_9~regout\,
	datac => \u4|lcdm|return_state.command_init_10~regout\,
	datad => \u4|lcdm|Selector63~0_combout\,
	combout => \u4|lcdm|Selector65~0_combout\);

-- Location: LCCOMB_X52_Y30_N0
\u4|lcdm|Selector61~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector61~0_combout\ = (\u4|lcdm|WideOr41~3_combout\ & ((\u4|lcdm|Equal0~6_combout\) # ((!\u4|lcdm|current_state.command_init_1~regout\ & !\u4|lcdm|current_state.command_init_3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|current_state.command_init_1~regout\,
	datac => \u4|lcdm|current_state.command_init_3~regout\,
	datad => \u4|lcdm|WideOr41~3_combout\,
	combout => \u4|lcdm|Selector61~0_combout\);

-- Location: LCCOMB_X52_Y30_N4
\u4|lcdm|Selector61~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector61~1_combout\ = (\u4|lcdm|current_state.command_init_5~regout\ & ((\u4|lcdm|Equal0~6_combout\) # ((\u4|lcdm|return_state.command_init_6~regout\)))) # (!\u4|lcdm|current_state.command_init_5~regout\ & 
-- (((\u4|lcdm|return_state.command_init_6~regout\ & !\u4|lcdm|Selector61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_5~regout\,
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|return_state.command_init_6~regout\,
	datad => \u4|lcdm|Selector61~0_combout\,
	combout => \u4|lcdm|Selector61~1_combout\);

-- Location: LCCOMB_X53_Y28_N2
\u4|lcdm|Selector62~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector62~0_combout\ = (\u4|lcdm|current_state.command_init_6~regout\) # ((\u4|lcdm|return_state.command_init_7~regout\ & \u4|lcdm|Selector63~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.command_init_6~regout\,
	datac => \u4|lcdm|return_state.command_init_7~regout\,
	datad => \u4|lcdm|Selector63~0_combout\,
	combout => \u4|lcdm|Selector62~0_combout\);

-- Location: LCCOMB_X51_Y26_N26
\u3a|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3a|Add0~14_combout\ = (\u3a|Add0~2_combout\ & ((\u3a|LessThan0~0_combout\) # (\u3a|ffa\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3a|Add0~2_combout\,
	datab => \u3a|LessThan0~0_combout\,
	datad => \u3a|ffa\(5),
	combout => \u3a|Add0~14_combout\);

-- Location: LCCOMB_X51_Y26_N4
\u3a|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3a|Add0~15_combout\ = (\u3a|Add0~0_combout\ & ((\u3a|LessThan0~0_combout\) # (\u3a|ffa\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3a|Add0~0_combout\,
	datab => \u3a|LessThan0~0_combout\,
	datad => \u3a|ffa\(5),
	combout => \u3a|Add0~15_combout\);

-- Location: LCFF_X82_Y29_N29
\u3f|ffa[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3f|ffa[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3f|ffa\(6));

-- Location: LCFF_X77_Y28_N7
\u3e|ffa[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3e|ffa[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3e|ffa\(4));

-- Location: LCFF_X53_Y22_N13
\u4|gemiddelde_line[12][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|gemiddelde2bcd|u6|Mux0~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|gemiddelde_line[12][0]~regout\);

-- Location: LCFF_X61_Y23_N21
\u4|maximale_line[14][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|maximale_line[14][0]~feeder_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|maximale_line[14][0]~regout\);

-- Location: LCFF_X57_Y24_N13
\u4|totale_omw_line[12][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_2bcd|u6|Mux0~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[12][0]~regout\);

-- Location: LCFF_X54_Y25_N27
\u4|RPM_line[13][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|RPM_line~14_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[13][0]~regout\);

-- Location: LCFF_X60_Y23_N1
\u4|maximale_line[13][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|maximale2bcd|u4|Mux0~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|maximale_line[13][0]~regout\);

-- Location: LCFF_X57_Y23_N1
\u4|totale_omw_line[15][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_1bcd|u4|Mux0~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[15][0]~regout\);

-- Location: LCFF_X54_Y22_N13
\u4|gemiddelde_line[14][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|gemiddelde2bcd|u4|Mux3~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|gemiddelde_line[14][1]~regout\);

-- Location: LCCOMB_X58_Y24_N28
\u4|Mux263~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~59_combout\ = (\u4|character_counter\(1) & ((\u4|line_counter\(1) & ((\u4|gemiddelde_line[14][1]~regout\))) # (!\u4|line_counter\(1) & (\u4|RPM_line[1][5]~regout\)))) # (!\u4|character_counter\(1) & (\u4|line_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|line_counter\(1),
	datac => \u4|RPM_line[1][5]~regout\,
	datad => \u4|gemiddelde_line[14][1]~regout\,
	combout => \u4|Mux263~59_combout\);

-- Location: LCFF_X58_Y24_N7
\u4|RPM_line[12][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|RPM_line~21_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[12][1]~regout\);

-- Location: LCFF_X58_Y24_N5
\u4|gemiddelde_line[12][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|gemiddelde2bcd|u5|Mux0~9_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|gemiddelde_line[12][1]~regout\);

-- Location: LCCOMB_X58_Y24_N30
\u4|Mux263~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~60_combout\ = (\u4|line_counter\(0) & (\u4|RPM_line[12][1]~regout\ & ((\mode~regout\)))) # (!\u4|line_counter\(0) & (((\u4|gemiddelde_line[12][1]~regout\) # (!\mode~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|RPM_line[12][1]~regout\,
	datab => \u4|gemiddelde_line[12][1]~regout\,
	datac => \u4|line_counter\(0),
	datad => \mode~regout\,
	combout => \u4|Mux263~60_combout\);

-- Location: LCFF_X54_Y25_N25
\u4|RPM_line[14][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|RPM_line~15_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[14][1]~regout\);

-- Location: LCCOMB_X58_Y24_N24
\u4|Mux263~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~61_combout\ = (\u4|character_counter\(1) & (((\u4|Mux263~131_combout\)))) # (!\u4|character_counter\(1) & (\u4|Mux263~59_combout\ & ((\u4|Mux263~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|Mux263~59_combout\,
	datac => \u4|Mux263~131_combout\,
	datad => \u4|Mux263~60_combout\,
	combout => \u4|Mux263~61_combout\);

-- Location: LCFF_X59_Y24_N21
\u4|maximale_line[12][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|maximale2bcd|u5|Mux0~9_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|maximale_line[12][1]~regout\);

-- Location: LCFF_X58_Y24_N15
\u4|weerstand_line[12][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u9|resist_int\(1),
	sload => VCC,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|weerstand_line[12][1]~regout\);

-- Location: LCCOMB_X58_Y24_N14
\u4|Mux222~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux222~0_combout\ = (\u4|line_counter\(0) & ((\u4|line_counter\(1) & (\u4|maximale_line[12][1]~regout\)) # (!\u4|line_counter\(1) & ((\u4|weerstand_line[12][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|maximale_line[12][1]~regout\,
	datac => \u4|weerstand_line[12][1]~regout\,
	datad => \u4|line_counter\(1),
	combout => \u4|Mux222~0_combout\);

-- Location: LCFF_X56_Y24_N1
\u4|totale_omw_line[12][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_2bcd|u5|Mux0~9_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[12][1]~regout\);

-- Location: LCFF_X57_Y24_N5
\u4|totale_omw_line[14][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_2bcd|u4|Mux3~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[14][1]~regout\);

-- Location: LCCOMB_X58_Y24_N8
\u4|Mux263~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~62_combout\ = (\u4|line_counter\(0) & (((\u4|line_counter\(1))))) # (!\u4|line_counter\(0) & ((\u4|line_counter\(1) & ((\u4|RPM_line[1][5]~regout\))) # (!\u4|line_counter\(1) & (\u4|totale_omw_line[14][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|totale_omw_line[14][1]~regout\,
	datac => \u4|RPM_line[1][5]~regout\,
	datad => \u4|line_counter\(1),
	combout => \u4|Mux263~62_combout\);

-- Location: LCFF_X59_Y23_N1
\u4|maximale_line[14][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|maximale2bcd|u4|Mux3~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|maximale_line[14][1]~regout\);

-- Location: LCCOMB_X58_Y24_N18
\u4|Mux263~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~63_combout\ = (\u4|character_counter\(1) & ((\u4|maximale_line[14][1]~regout\))) # (!\u4|character_counter\(1) & (\u4|line_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|line_counter\(1),
	datac => \u4|maximale_line[14][1]~regout\,
	datad => \u4|character_counter\(1),
	combout => \u4|Mux263~63_combout\);

-- Location: LCCOMB_X58_Y24_N12
\u4|Mux263~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~64_combout\ = (\u4|character_counter\(1) & (\u4|Mux263~62_combout\ & ((\u4|Mux263~63_combout\) # (\u4|Mux263~60_combout\)))) # (!\u4|character_counter\(1) & (!\u4|Mux263~63_combout\ & ((\u4|Mux263~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|Mux263~63_combout\,
	datac => \u4|Mux263~62_combout\,
	datad => \u4|Mux263~60_combout\,
	combout => \u4|Mux263~64_combout\);

-- Location: LCCOMB_X58_Y24_N26
\u4|Mux263~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~65_combout\ = (\u4|character_counter\(1) & (((\u4|Mux263~64_combout\)))) # (!\u4|character_counter\(1) & ((\u4|Mux222~0_combout\) # ((\u4|totale_omw_line[12][1]~regout\ & \u4|Mux263~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|totale_omw_line[12][1]~regout\,
	datac => \u4|Mux222~0_combout\,
	datad => \u4|Mux263~64_combout\,
	combout => \u4|Mux263~65_combout\);

-- Location: LCCOMB_X58_Y24_N16
\u4|Mux263~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~66_combout\ = (\u4|start~regout\ & ((\mode~regout\ & (\u4|Mux263~61_combout\)) # (!\mode~regout\ & ((\u4|Mux263~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|start~regout\,
	datab => \mode~regout\,
	datac => \u4|Mux263~61_combout\,
	datad => \u4|Mux263~65_combout\,
	combout => \u4|Mux263~66_combout\);

-- Location: LCCOMB_X58_Y23_N22
\u4|Mux262~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux262~0_combout\ = (\u4|character_counter\(2) & (((\u4|Mux263~66_combout\)) # (!\u4|character_counter\(0)))) # (!\u4|character_counter\(2) & (\u4|character_counter\(0) & ((!\u4|Mux263~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|character_counter\(0),
	datac => \u4|Mux263~66_combout\,
	datad => \u4|Mux263~137_combout\,
	combout => \u4|Mux262~0_combout\);

-- Location: LCFF_X54_Y24_N17
\u4|RPM_line[13][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|RPM_line~16_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[13][1]~regout\);

-- Location: LCFF_X53_Y22_N7
\u4|gemiddelde_line[13][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|gemiddelde2bcd|u6|Mux3~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|gemiddelde_line[13][1]~regout\);

-- Location: LCCOMB_X58_Y23_N0
\u4|Mux263~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~67_combout\ = (\mode~regout\ & ((\u4|line_counter\(0) & (\u4|RPM_line[13][1]~regout\)) # (!\u4|line_counter\(0) & ((\u4|gemiddelde_line[13][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|RPM_line[13][1]~regout\,
	datab => \u4|gemiddelde_line[13][1]~regout\,
	datac => \mode~regout\,
	datad => \u4|line_counter\(0),
	combout => \u4|Mux263~67_combout\);

-- Location: LCFF_X61_Y23_N17
\u4|maximale_line[13][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|maximale2bcd|u6|Mux3~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|maximale_line[13][1]~regout\);

-- Location: LCCOMB_X59_Y23_N2
\u4|Mux263~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~68_combout\ = (\u4|line_counter\(1) & ((\u4|Mux263~67_combout\) # ((\u4|aline~0_combout\ & \u4|maximale_line[13][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|aline~0_combout\,
	datab => \u4|line_counter\(1),
	datac => \u4|Mux263~67_combout\,
	datad => \u4|maximale_line[13][1]~regout\,
	combout => \u4|Mux263~68_combout\);

-- Location: LCFF_X57_Y24_N19
\u4|totale_omw_line[13][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_2bcd|u6|Mux3~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[13][1]~regout\);

-- Location: LCCOMB_X59_Y23_N12
\u4|Mux263~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~69_combout\ = (!\u4|character_counter\(1) & ((\u4|Mux263~68_combout\) # ((\u4|totale_omw_line[13][1]~regout\ & \u4|Mux263~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|totale_omw_line[13][1]~regout\,
	datac => \u4|Mux263~42_combout\,
	datad => \u4|Mux263~68_combout\,
	combout => \u4|Mux263~69_combout\);

-- Location: LCFF_X57_Y23_N11
\u4|totale_omw_line[15][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_1bcd|u6|Mux3~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[15][1]~regout\);

-- Location: LCCOMB_X59_Y23_N10
\u4|Mux263~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~70_combout\ = (\u4|start~regout\ & ((\u4|Mux263~69_combout\) # ((\u4|totale_omw_line[15][1]~regout\ & \u4|Mux263~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_line[15][1]~regout\,
	datab => \u4|start~regout\,
	datac => \u4|Mux263~44_combout\,
	datad => \u4|Mux263~69_combout\,
	combout => \u4|Mux263~70_combout\);

-- Location: LCCOMB_X58_Y23_N26
\u4|Mux262~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux262~1_combout\ = (\u4|character_counter\(0) & (((\u4|Mux262~0_combout\)))) # (!\u4|character_counter\(0) & ((\u4|Mux262~0_combout\ & ((\u4|Mux263~70_combout\))) # (!\u4|Mux262~0_combout\ & (!\u4|Mux263~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~49_combout\,
	datab => \u4|character_counter\(0),
	datac => \u4|Mux263~70_combout\,
	datad => \u4|Mux262~0_combout\,
	combout => \u4|Mux262~1_combout\);

-- Location: LCCOMB_X60_Y26_N0
\u4|Mux263~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~71_combout\ = (\u4|start~regout\ & (((\u4|character_counter\(1) & !\mode~regout\)) # (!\u4|RPM_line[1][5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|RPM_line[1][5]~regout\,
	datac => \mode~regout\,
	datad => \u4|start~regout\,
	combout => \u4|Mux263~71_combout\);

-- Location: LCCOMB_X60_Y26_N2
\u4|Mux263~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~72_combout\ = ((\mode~regout\ & ((!\u4|line_counter\(1)))) # (!\mode~regout\ & ((\u4|line_counter\(1)) # (!\u4|line_counter\(0))))) # (!\u4|start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|start~regout\,
	datab => \u4|line_counter\(0),
	datac => \mode~regout\,
	datad => \u4|line_counter\(1),
	combout => \u4|Mux263~72_combout\);

-- Location: LCCOMB_X60_Y26_N12
\u4|Mux263~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~73_combout\ = (\u4|Mux263~71_combout\) # ((\u4|character_counter\(1) & (\u4|Mux50~0_combout\)) # (!\u4|character_counter\(1) & ((\u4|Mux263~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|Mux263~71_combout\,
	datac => \u4|Mux50~0_combout\,
	datad => \u4|Mux263~72_combout\,
	combout => \u4|Mux263~73_combout\);

-- Location: LCCOMB_X59_Y26_N26
\u4|Mux263~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~74_combout\ = (\u4|line_counter\(0) & (\u4|start~regout\ & (\u4|line_counter\(1) $ (!\mode~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|line_counter\(1),
	datac => \mode~regout\,
	datad => \u4|start~regout\,
	combout => \u4|Mux263~74_combout\);

-- Location: LCCOMB_X59_Y26_N24
\u4|Mux263~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~75_combout\ = ((\u4|character_counter\(1) & (!\u4|aline~4_combout\)) # (!\u4|character_counter\(1) & ((!\u4|Mux263~74_combout\)))) # (!\u4|RPM_line[1][5]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|RPM_line[1][5]~regout\,
	datac => \u4|aline~4_combout\,
	datad => \u4|Mux263~74_combout\,
	combout => \u4|Mux263~75_combout\);

-- Location: LCCOMB_X59_Y26_N0
\u4|Mux263~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~77_combout\ = (!\u4|line_counter\(0) & (\u4|Mux263~76_combout\ & (\u4|line_counter\(1) $ (!\mode~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|line_counter\(1),
	datac => \mode~regout\,
	datad => \u4|Mux263~76_combout\,
	combout => \u4|Mux263~77_combout\);

-- Location: LCFF_X58_Y23_N13
\u4|totale_omw_line[16][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_1bcd|u4|Mux3~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[16][1]~regout\);

-- Location: LCCOMB_X59_Y26_N12
\u4|Mux263~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~79_combout\ = (\u4|start~regout\ & ((\u4|Mux263~77_combout\) # ((\u4|Mux263~78_combout\ & \u4|totale_omw_line[16][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|start~regout\,
	datab => \u4|Mux263~78_combout\,
	datac => \u4|totale_omw_line[16][1]~regout\,
	datad => \u4|Mux263~77_combout\,
	combout => \u4|Mux263~79_combout\);

-- Location: LCCOMB_X59_Y26_N30
\u4|Mux262~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux262~2_combout\ = (\u4|character_counter\(2) & (!\u4|character_counter\(0))) # (!\u4|character_counter\(2) & ((\u4|character_counter\(0) & ((\u4|Mux263~79_combout\))) # (!\u4|character_counter\(0) & (!\u4|Mux263~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|character_counter\(0),
	datac => \u4|Mux263~75_combout\,
	datad => \u4|Mux263~79_combout\,
	combout => \u4|Mux262~2_combout\);

-- Location: LCCOMB_X57_Y26_N24
\u4|Mux263~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~80_combout\ = (!\u4|character_counter\(1) & ((\u4|aline~5_combout\) # ((!\u4|aline~1_combout\ & \u4|Mux263~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|aline~5_combout\,
	datab => \u4|character_counter\(1),
	datac => \u4|aline~1_combout\,
	datad => \u4|Mux263~48_combout\,
	combout => \u4|Mux263~80_combout\);

-- Location: LCCOMB_X58_Y26_N26
\u4|Mux263~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~81_combout\ = (\u4|Mux263~80_combout\) # ((\u4|character_counter\(1) & !\u4|aline~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datac => \u4|aline~6_combout\,
	datad => \u4|Mux263~80_combout\,
	combout => \u4|Mux263~81_combout\);

-- Location: LCCOMB_X59_Y26_N28
\u4|Mux262~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux262~3_combout\ = (\u4|character_counter\(2) & ((\u4|Mux262~2_combout\ & ((\u4|Mux263~81_combout\))) # (!\u4|Mux262~2_combout\ & (!\u4|Mux263~73_combout\)))) # (!\u4|character_counter\(2) & (\u4|Mux262~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|Mux262~2_combout\,
	datac => \u4|Mux263~73_combout\,
	datad => \u4|Mux263~81_combout\,
	combout => \u4|Mux262~3_combout\);

-- Location: LCCOMB_X58_Y23_N16
\u4|Mux262~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux262~4_combout\ = (\u4|character_counter\(3) & ((\u4|Mux262~1_combout\))) # (!\u4|character_counter\(3) & (\u4|Mux262~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(3),
	datac => \u4|Mux262~3_combout\,
	datad => \u4|Mux262~1_combout\,
	combout => \u4|Mux262~4_combout\);

-- Location: LCCOMB_X56_Y26_N0
\u4|Mux263~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~82_combout\ = (((\mode~regout\) # (\u4|line_counter\(1))) # (!\u4|line_counter\(0))) # (!\u4|RPM_line[1][5]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|RPM_line[1][5]~regout\,
	datab => \u4|line_counter\(0),
	datac => \mode~regout\,
	datad => \u4|line_counter\(1),
	combout => \u4|Mux263~82_combout\);

-- Location: LCCOMB_X56_Y26_N22
\u4|Mux263~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~83_combout\ = (\u4|character_counter\(1)) # ((\u4|start~regout\ & ((\u4|Mux263~82_combout\))) # (!\u4|start~regout\ & (\u4|Mux265~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|start~regout\,
	datac => \u4|Mux265~0_combout\,
	datad => \u4|Mux263~82_combout\,
	combout => \u4|Mux263~83_combout\);

-- Location: LCFF_X61_Y23_N31
\u4|maximale_line[13][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|maximale2bcd|u6|Mux2~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|maximale_line[13][2]~regout\);

-- Location: LCFF_X57_Y24_N11
\u4|totale_omw_line[13][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_2bcd|u6|Mux2~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[13][2]~regout\);

-- Location: LCFF_X56_Y23_N5
\u4|totale_omw_line[15][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_1bcd|u6|Mux2~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[15][2]~regout\);

-- Location: LCFF_X57_Y24_N17
\u4|totale_omw_line[14][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_2bcd|u4|Mux1~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[14][3]~regout\);

-- Location: LCFF_X61_Y23_N29
\u4|maximale_line[13][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|maximale2bcd|u6|Mux1~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|maximale_line[13][3]~regout\);

-- Location: LCFF_X57_Y24_N7
\u4|totale_omw_line[13][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_2bcd|u6|Mux1~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[13][3]~regout\);

-- Location: LCCOMB_X57_Y25_N10
\u4|Mux263~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~109_combout\ = (\u4|line_counter\(0) & (!\u4|character_counter\(1) & (\u4|line_counter\(1) & \mode~regout\))) # (!\u4|line_counter\(0) & (!\mode~regout\ & (\u4|character_counter\(1) $ (\u4|line_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|character_counter\(1),
	datac => \u4|line_counter\(1),
	datad => \mode~regout\,
	combout => \u4|Mux263~109_combout\);

-- Location: LCCOMB_X57_Y27_N6
\u4|Mux263~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~125_combout\ = (\u4|line_counter\(1) & (((\u4|character_counter\(1) & !\mode~regout\)) # (!\u4|line_counter\(0)))) # (!\u4|line_counter\(1) & (\mode~regout\ $ (((\u4|line_counter\(0)) # (\u4|character_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \u4|line_counter\(0),
	datac => \u4|character_counter\(1),
	datad => \mode~regout\,
	combout => \u4|Mux263~125_combout\);

-- Location: LCCOMB_X57_Y27_N24
\u4|Mux263~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~126_combout\ = (\u4|aline~5_combout\ & ((\u4|character_counter\(1)) # ((\u4|Mux263~48_combout\ & \u4|Mux263~125_combout\)))) # (!\u4|aline~5_combout\ & (((\u4|Mux263~48_combout\ & \u4|Mux263~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|aline~5_combout\,
	datab => \u4|character_counter\(1),
	datac => \u4|Mux263~48_combout\,
	datad => \u4|Mux263~125_combout\,
	combout => \u4|Mux263~126_combout\);

-- Location: LCCOMB_X52_Y30_N30
\u4|lcdm|Selector57~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector57~0_combout\ = (\u4|lcdm|WideOr41~3_combout\ & ((\u4|lcdm|Equal0~6_combout\) # ((!\u4|lcdm|current_state.command_init_5~regout\ & !\u4|lcdm|current_state.command_init_3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_5~regout\,
	datab => \u4|lcdm|current_state.command_init_3~regout\,
	datac => \u4|lcdm|Equal0~6_combout\,
	datad => \u4|lcdm|WideOr41~3_combout\,
	combout => \u4|lcdm|Selector57~0_combout\);

-- Location: LCCOMB_X52_Y30_N2
\u4|lcdm|Selector57~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector57~1_combout\ = (\u4|lcdm|current_state.command_init_1~regout\ & ((\u4|lcdm|Equal0~6_combout\) # ((\u4|lcdm|return_state.command_init_2~regout\)))) # (!\u4|lcdm|current_state.command_init_1~regout\ & 
-- (((\u4|lcdm|return_state.command_init_2~regout\ & !\u4|lcdm|Selector57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|current_state.command_init_1~regout\,
	datac => \u4|lcdm|return_state.command_init_2~regout\,
	datad => \u4|lcdm|Selector57~0_combout\,
	combout => \u4|lcdm|Selector57~1_combout\);

-- Location: LCCOMB_X52_Y30_N28
\u4|lcdm|Selector59~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector59~0_combout\ = (\u4|lcdm|WideOr41~3_combout\ & ((\u4|lcdm|Equal0~6_combout\) # ((!\u4|lcdm|current_state.command_init_5~regout\ & !\u4|lcdm|current_state.command_init_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_5~regout\,
	datab => \u4|lcdm|current_state.command_init_1~regout\,
	datac => \u4|lcdm|Equal0~6_combout\,
	datad => \u4|lcdm|WideOr41~3_combout\,
	combout => \u4|lcdm|Selector59~0_combout\);

-- Location: LCCOMB_X52_Y30_N20
\u4|lcdm|Selector59~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector59~1_combout\ = (\u4|lcdm|current_state.command_init_3~regout\ & ((\u4|lcdm|Equal0~6_combout\) # ((\u4|lcdm|return_state.command_init_4~regout\)))) # (!\u4|lcdm|current_state.command_init_3~regout\ & 
-- (((\u4|lcdm|return_state.command_init_4~regout\ & !\u4|lcdm|Selector59~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|current_state.command_init_3~regout\,
	datac => \u4|lcdm|return_state.command_init_4~regout\,
	datad => \u4|lcdm|Selector59~0_combout\,
	combout => \u4|lcdm|Selector59~1_combout\);

-- Location: LCCOMB_X53_Y30_N2
\u4|lcdm|return_state.reset~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|return_state.reset~0_combout\ = (\BUTTON~combout\(3) & (\u4|lcdm|WideOr41~3_combout\ & ((\u4|lcdm|Equal0~6_combout\) # (!\u4|lcdm|WideOr18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr18~1_combout\,
	datab => \BUTTON~combout\(3),
	datac => \u4|lcdm|Equal0~6_combout\,
	datad => \u4|lcdm|WideOr41~3_combout\,
	combout => \u4|lcdm|return_state.reset~0_combout\);

-- Location: LCCOMB_X53_Y30_N4
\u4|lcdm|return_state.reset~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|return_state.reset~1_combout\ = (\u4|lcdm|return_state.reset~regout\) # (\u4|lcdm|return_state.reset~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|return_state.reset~regout\,
	datad => \u4|lcdm|return_state.reset~0_combout\,
	combout => \u4|lcdm|return_state.reset~1_combout\);

-- Location: LCCOMB_X56_Y27_N20
\u4|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector4~0_combout\ = (\u4|Selector12~0_combout\ & (!\u4|Equal1~0_combout\ & ((!\u4|drive~0_combout\) # (!\u4|line_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(2),
	datab => \u4|Selector12~0_combout\,
	datac => \u4|Equal1~0_combout\,
	datad => \u4|drive~0_combout\,
	combout => \u4|Selector4~0_combout\);

-- Location: LCFF_X82_Y29_N25
\u3f|ffa[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3f|Add0~15_combout\,
	ena => \u3f|ffa[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3f|ffa\(0));

-- Location: LCCOMB_X82_Y29_N28
\u3f|ffa[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3f|ffa[6]~4_combout\ = (\u3f|Add0~12_combout\ & (!\u3f|ffa[2]~3_combout\ & ((\u3f|ffa[6]~1_combout\) # (\u3f|ffa\(6))))) # (!\u3f|Add0~12_combout\ & ((\u3f|ffa[6]~1_combout\) # ((\u3f|ffa\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3f|Add0~12_combout\,
	datab => \u3f|ffa[6]~1_combout\,
	datac => \u3f|ffa\(6),
	datad => \u3f|ffa[2]~3_combout\,
	combout => \u3f|ffa[6]~4_combout\);

-- Location: LCCOMB_X77_Y28_N6
\u3e|ffa[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3e|ffa[4]~6_combout\ = (\u3e|ffa[2]~3_combout\ & ((\u3e|Add0~8_combout\) # ((\u3e|ffa\(4) & !\u3e|ffa[6]~1_combout\)))) # (!\u3e|ffa[2]~3_combout\ & (((\u3e|ffa\(4) & !\u3e|ffa[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3e|ffa[2]~3_combout\,
	datab => \u3e|Add0~8_combout\,
	datac => \u3e|ffa\(4),
	datad => \u3e|ffa[6]~1_combout\,
	combout => \u3e|ffa[4]~6_combout\);

-- Location: LCCOMB_X53_Y22_N12
\u4|gemiddelde2bcd|u6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u6|Mux0~0_combout\ = (\u4|gemiddelde2bcd|u1|Mux0~0_combout\ & ((\u4|gemiddelde2bcd|u3|Mux0~0_combout\ & ((\u4|gemiddelde2bcd|u0|Mux0~0_combout\) # (\u4|gemiddelde2bcd|u2|Mux0~0_combout\))) # (!\u4|gemiddelde2bcd|u3|Mux0~0_combout\ & 
-- (\u4|gemiddelde2bcd|u0|Mux0~0_combout\ & \u4|gemiddelde2bcd|u2|Mux0~0_combout\)))) # (!\u4|gemiddelde2bcd|u1|Mux0~0_combout\ & (((!\u4|gemiddelde2bcd|u0|Mux0~0_combout\ & !\u4|gemiddelde2bcd|u2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|gemiddelde2bcd|u1|Mux0~0_combout\,
	datab => \u4|gemiddelde2bcd|u3|Mux0~0_combout\,
	datac => \u4|gemiddelde2bcd|u0|Mux0~0_combout\,
	datad => \u4|gemiddelde2bcd|u2|Mux0~0_combout\,
	combout => \u4|gemiddelde2bcd|u6|Mux0~0_combout\);

-- Location: LCFF_X61_Y23_N11
\u6|rpm_max_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u6|rpm_max_int~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u6|rpm_max_int[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|rpm_max_int\(0));

-- Location: LCCOMB_X60_Y23_N4
\u4|maximale2bcd|u0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u0|Mux0~0_combout\ = ((!\u6|rpm_max_int\(5) & !\u6|rpm_max_int\(6))) # (!\u6|rpm_max_int\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(5),
	datac => \u6|rpm_max_int\(6),
	datad => \u6|rpm_max_int\(7),
	combout => \u4|maximale2bcd|u0|Mux0~0_combout\);

-- Location: LCCOMB_X56_Y24_N26
\u4|totale_omw_2bcd|u0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u0|Mux0~0_combout\ = ((!\u0|omwentel255\(5) & !\u0|omwentel255\(6))) # (!\u0|omwentel255\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(5),
	datac => \u0|omwentel255\(6),
	datad => \u0|omwentel255\(7),
	combout => \u4|totale_omw_2bcd|u0|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y24_N30
\u4|totale_omw_2bcd|u3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u3|Mux0~0_combout\ = (\u4|totale_omw_2bcd|u2|Mux1~0_combout\) # ((\u4|totale_omw_2bcd|u2|Mux2~0_combout\ & ((\u0|omwentel255\(2)) # (\u4|totale_omw_2bcd|u2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(2),
	datab => \u4|totale_omw_2bcd|u2|Mux2~0_combout\,
	datac => \u4|totale_omw_2bcd|u2|Mux3~0_combout\,
	datad => \u4|totale_omw_2bcd|u2|Mux1~0_combout\,
	combout => \u4|totale_omw_2bcd|u3|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y24_N12
\u4|totale_omw_2bcd|u6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u6|Mux0~0_combout\ = (\u4|totale_omw_2bcd|u1|Mux0~0_combout\ & ((\u4|totale_omw_2bcd|u0|Mux0~0_combout\ & ((\u4|totale_omw_2bcd|u2|Mux0~0_combout\) # (\u4|totale_omw_2bcd|u3|Mux0~0_combout\))) # (!\u4|totale_omw_2bcd|u0|Mux0~0_combout\ 
-- & (\u4|totale_omw_2bcd|u2|Mux0~0_combout\ & \u4|totale_omw_2bcd|u3|Mux0~0_combout\)))) # (!\u4|totale_omw_2bcd|u1|Mux0~0_combout\ & (!\u4|totale_omw_2bcd|u0|Mux0~0_combout\ & (!\u4|totale_omw_2bcd|u2|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_2bcd|u1|Mux0~0_combout\,
	datab => \u4|totale_omw_2bcd|u0|Mux0~0_combout\,
	datac => \u4|totale_omw_2bcd|u2|Mux0~0_combout\,
	datad => \u4|totale_omw_2bcd|u3|Mux0~0_combout\,
	combout => \u4|totale_omw_2bcd|u6|Mux0~0_combout\);

-- Location: LCCOMB_X54_Y25_N26
\u4|RPM_line~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|RPM_line~14_combout\ = (!\u5|te_hoog~regout\ & \u2|u4|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|te_hoog~regout\,
	datad => \u2|u4|Mux0~0_combout\,
	combout => \u4|RPM_line~14_combout\);

-- Location: LCFF_X53_Y22_N5
\u8|gem_RPM[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u8|gem_RPM_int\(1),
	sload => VCC,
	ena => \u8|gem_RPM[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|gem_RPM\(1));

-- Location: LCCOMB_X60_Y23_N0
\u4|maximale2bcd|u4|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u4|Mux0~0_combout\ = (\u4|maximale2bcd|u3|Mux1~0_combout\) # ((\u4|maximale2bcd|u3|Mux2~0_combout\ & ((\u4|maximale2bcd|u3|Mux3~0_combout\) # (\u6|rpm_max_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|maximale2bcd|u3|Mux2~0_combout\,
	datab => \u4|maximale2bcd|u3|Mux3~0_combout\,
	datac => \u6|rpm_max_int\(1),
	datad => \u4|maximale2bcd|u3|Mux1~0_combout\,
	combout => \u4|maximale2bcd|u4|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y23_N0
\u4|totale_omw_1bcd|u4|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|u4|Mux0~0_combout\ = (\u4|totale_omw_1bcd|u3|Mux1~0_combout\) # ((\u4|totale_omw_1bcd|u3|Mux2~0_combout\ & ((\u0|omwentel99\(1)) # (\u4|totale_omw_1bcd|u3|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(1),
	datab => \u4|totale_omw_1bcd|u3|Mux2~0_combout\,
	datac => \u4|totale_omw_1bcd|u3|Mux1~0_combout\,
	datad => \u4|totale_omw_1bcd|u3|Mux3~0_combout\,
	combout => \u4|totale_omw_1bcd|u4|Mux0~0_combout\);

-- Location: LCCOMB_X54_Y22_N12
\u4|gemiddelde2bcd|u4|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u4|Mux3~0_combout\ = (\u4|gemiddelde2bcd|u3|Mux3~0_combout\ & (!\u4|gemiddelde2bcd|u3|Mux1~0_combout\ & (\u8|gem_RPM\(1) $ (\u4|gemiddelde2bcd|u3|Mux2~0_combout\)))) # (!\u4|gemiddelde2bcd|u3|Mux3~0_combout\ & 
-- (!\u4|gemiddelde2bcd|u3|Mux2~0_combout\ & (\u8|gem_RPM\(1) $ (\u4|gemiddelde2bcd|u3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|gem_RPM\(1),
	datab => \u4|gemiddelde2bcd|u3|Mux2~0_combout\,
	datac => \u4|gemiddelde2bcd|u3|Mux3~0_combout\,
	datad => \u4|gemiddelde2bcd|u3|Mux1~0_combout\,
	combout => \u4|gemiddelde2bcd|u4|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y25_N24
\u4|RPM_line~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|RPM_line~15_combout\ = (!\u5|te_hoog~regout\ & \u2|u4|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|te_hoog~regout\,
	datad => \u2|u4|Mux3~0_combout\,
	combout => \u4|RPM_line~15_combout\);

-- Location: LCCOMB_X57_Y24_N4
\u4|totale_omw_2bcd|u4|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u4|Mux3~0_combout\ = (\u4|totale_omw_2bcd|u3|Mux3~0_combout\ & (!\u4|totale_omw_2bcd|u3|Mux1~0_combout\ & (\u0|omwentel255\(1) $ (\u4|totale_omw_2bcd|u3|Mux2~0_combout\)))) # (!\u4|totale_omw_2bcd|u3|Mux3~0_combout\ & 
-- (!\u4|totale_omw_2bcd|u3|Mux2~0_combout\ & (\u0|omwentel255\(1) $ (\u4|totale_omw_2bcd|u3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(1),
	datab => \u4|totale_omw_2bcd|u3|Mux1~0_combout\,
	datac => \u4|totale_omw_2bcd|u3|Mux3~0_combout\,
	datad => \u4|totale_omw_2bcd|u3|Mux2~0_combout\,
	combout => \u4|totale_omw_2bcd|u4|Mux3~0_combout\);

-- Location: LCCOMB_X59_Y23_N0
\u4|maximale2bcd|u4|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u4|Mux3~0_combout\ = (\u4|maximale2bcd|u3|Mux3~0_combout\ & (!\u4|maximale2bcd|u3|Mux1~0_combout\ & (\u6|rpm_max_int\(1) $ (\u4|maximale2bcd|u3|Mux2~0_combout\)))) # (!\u4|maximale2bcd|u3|Mux3~0_combout\ & 
-- (!\u4|maximale2bcd|u3|Mux2~0_combout\ & (\u6|rpm_max_int\(1) $ (\u4|maximale2bcd|u3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(1),
	datab => \u4|maximale2bcd|u3|Mux2~0_combout\,
	datac => \u4|maximale2bcd|u3|Mux1~0_combout\,
	datad => \u4|maximale2bcd|u3|Mux3~0_combout\,
	combout => \u4|maximale2bcd|u4|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y24_N16
\u4|RPM_line~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|RPM_line~16_combout\ = (!\u5|te_hoog~regout\ & \u2|u6|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|te_hoog~regout\,
	datad => \u2|u6|Mux3~0_combout\,
	combout => \u4|RPM_line~16_combout\);

-- Location: LCCOMB_X53_Y22_N6
\u4|gemiddelde2bcd|u6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u6|Mux3~0_combout\ = (\u4|gemiddelde2bcd|u1|Mux0~0_combout\ & ((\u4|gemiddelde2bcd|u3|Mux0~0_combout\ & (!\u4|gemiddelde2bcd|u0|Mux0~0_combout\ & !\u4|gemiddelde2bcd|u2|Mux0~0_combout\)) # (!\u4|gemiddelde2bcd|u3|Mux0~0_combout\ & 
-- (\u4|gemiddelde2bcd|u0|Mux0~0_combout\ & \u4|gemiddelde2bcd|u2|Mux0~0_combout\)))) # (!\u4|gemiddelde2bcd|u1|Mux0~0_combout\ & (\u4|gemiddelde2bcd|u3|Mux0~0_combout\ $ (((!\u4|gemiddelde2bcd|u0|Mux0~0_combout\ & !\u4|gemiddelde2bcd|u2|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|gemiddelde2bcd|u1|Mux0~0_combout\,
	datab => \u4|gemiddelde2bcd|u3|Mux0~0_combout\,
	datac => \u4|gemiddelde2bcd|u0|Mux0~0_combout\,
	datad => \u4|gemiddelde2bcd|u2|Mux0~0_combout\,
	combout => \u4|gemiddelde2bcd|u6|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y23_N16
\u4|maximale2bcd|u6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u6|Mux3~0_combout\ = (\u4|maximale2bcd|u1|Mux0~0_combout\ & ((\u4|maximale2bcd|u0|Mux0~0_combout\ & (\u4|maximale2bcd|u2|Mux0~0_combout\ & !\u4|maximale2bcd|u3|Mux0~0_combout\)) # (!\u4|maximale2bcd|u0|Mux0~0_combout\ & 
-- (!\u4|maximale2bcd|u2|Mux0~0_combout\ & \u4|maximale2bcd|u3|Mux0~0_combout\)))) # (!\u4|maximale2bcd|u1|Mux0~0_combout\ & (\u4|maximale2bcd|u3|Mux0~0_combout\ $ (((!\u4|maximale2bcd|u0|Mux0~0_combout\ & !\u4|maximale2bcd|u2|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|maximale2bcd|u0|Mux0~0_combout\,
	datab => \u4|maximale2bcd|u1|Mux0~0_combout\,
	datac => \u4|maximale2bcd|u2|Mux0~0_combout\,
	datad => \u4|maximale2bcd|u3|Mux0~0_combout\,
	combout => \u4|maximale2bcd|u6|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y24_N18
\u4|totale_omw_2bcd|u6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u6|Mux3~0_combout\ = (\u4|totale_omw_2bcd|u1|Mux0~0_combout\ & ((\u4|totale_omw_2bcd|u0|Mux0~0_combout\ & (\u4|totale_omw_2bcd|u2|Mux0~0_combout\ & !\u4|totale_omw_2bcd|u3|Mux0~0_combout\)) # (!\u4|totale_omw_2bcd|u0|Mux0~0_combout\ & 
-- (!\u4|totale_omw_2bcd|u2|Mux0~0_combout\ & \u4|totale_omw_2bcd|u3|Mux0~0_combout\)))) # (!\u4|totale_omw_2bcd|u1|Mux0~0_combout\ & (\u4|totale_omw_2bcd|u3|Mux0~0_combout\ $ (((!\u4|totale_omw_2bcd|u0|Mux0~0_combout\ & 
-- !\u4|totale_omw_2bcd|u2|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_2bcd|u1|Mux0~0_combout\,
	datab => \u4|totale_omw_2bcd|u0|Mux0~0_combout\,
	datac => \u4|totale_omw_2bcd|u2|Mux0~0_combout\,
	datad => \u4|totale_omw_2bcd|u3|Mux0~0_combout\,
	combout => \u4|totale_omw_2bcd|u6|Mux3~0_combout\);

-- Location: LCCOMB_X56_Y23_N30
\u4|totale_omw_1bcd|u2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|u2|Mux0~0_combout\ = (\u4|totale_omw_1bcd|u1|Mux1~0_combout\) # ((\u4|totale_omw_1bcd|u1|Mux2~0_combout\ & ((\u4|totale_omw_1bcd|u1|Mux3~0_combout\) # (\u0|omwentel99\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_1bcd|u1|Mux1~0_combout\,
	datab => \u4|totale_omw_1bcd|u1|Mux3~0_combout\,
	datac => \u4|totale_omw_1bcd|u1|Mux2~0_combout\,
	datad => \u0|omwentel99\(3),
	combout => \u4|totale_omw_1bcd|u2|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y23_N10
\u4|totale_omw_1bcd|u6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|u6|Mux3~0_combout\ = (\u4|totale_omw_1bcd|u1|Mux0~0_combout\ & ((\u4|totale_omw_1bcd|u0|Mux0~0_combout\ & (\u4|totale_omw_1bcd|u2|Mux0~0_combout\ & !\u4|totale_omw_1bcd|u3|Mux0~0_combout\)) # (!\u4|totale_omw_1bcd|u0|Mux0~0_combout\ & 
-- (!\u4|totale_omw_1bcd|u2|Mux0~0_combout\ & \u4|totale_omw_1bcd|u3|Mux0~0_combout\)))) # (!\u4|totale_omw_1bcd|u1|Mux0~0_combout\ & (\u4|totale_omw_1bcd|u3|Mux0~0_combout\ $ (((!\u4|totale_omw_1bcd|u0|Mux0~0_combout\ & 
-- !\u4|totale_omw_1bcd|u2|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_1bcd|u1|Mux0~0_combout\,
	datab => \u4|totale_omw_1bcd|u0|Mux0~0_combout\,
	datac => \u4|totale_omw_1bcd|u2|Mux0~0_combout\,
	datad => \u4|totale_omw_1bcd|u3|Mux0~0_combout\,
	combout => \u4|totale_omw_1bcd|u6|Mux3~0_combout\);

-- Location: LCCOMB_X58_Y23_N12
\u4|totale_omw_1bcd|u4|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|u4|Mux3~0_combout\ = (\u4|totale_omw_1bcd|u3|Mux3~0_combout\ & (!\u4|totale_omw_1bcd|u3|Mux1~0_combout\ & (\u0|omwentel99\(1) $ (\u4|totale_omw_1bcd|u3|Mux2~0_combout\)))) # (!\u4|totale_omw_1bcd|u3|Mux3~0_combout\ & 
-- (!\u4|totale_omw_1bcd|u3|Mux2~0_combout\ & (\u0|omwentel99\(1) $ (\u4|totale_omw_1bcd|u3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(1),
	datab => \u4|totale_omw_1bcd|u3|Mux3~0_combout\,
	datac => \u4|totale_omw_1bcd|u3|Mux2~0_combout\,
	datad => \u4|totale_omw_1bcd|u3|Mux1~0_combout\,
	combout => \u4|totale_omw_1bcd|u4|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y23_N30
\u4|maximale2bcd|u6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u6|Mux2~0_combout\ = (\u4|maximale2bcd|u0|Mux0~0_combout\ & (\u4|maximale2bcd|u2|Mux0~0_combout\ & ((\u4|maximale2bcd|u3|Mux0~0_combout\) # (!\u4|maximale2bcd|u1|Mux0~0_combout\)))) # (!\u4|maximale2bcd|u0|Mux0~0_combout\ & 
-- (!\u4|maximale2bcd|u2|Mux0~0_combout\ & ((\u4|maximale2bcd|u1|Mux0~0_combout\) # (!\u4|maximale2bcd|u3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|maximale2bcd|u0|Mux0~0_combout\,
	datab => \u4|maximale2bcd|u1|Mux0~0_combout\,
	datac => \u4|maximale2bcd|u2|Mux0~0_combout\,
	datad => \u4|maximale2bcd|u3|Mux0~0_combout\,
	combout => \u4|maximale2bcd|u6|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y24_N10
\u4|totale_omw_2bcd|u6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u6|Mux2~0_combout\ = (\u4|totale_omw_2bcd|u0|Mux0~0_combout\ & (\u4|totale_omw_2bcd|u2|Mux0~0_combout\ & ((\u4|totale_omw_2bcd|u3|Mux0~0_combout\) # (!\u4|totale_omw_2bcd|u1|Mux0~0_combout\)))) # 
-- (!\u4|totale_omw_2bcd|u0|Mux0~0_combout\ & (!\u4|totale_omw_2bcd|u2|Mux0~0_combout\ & ((\u4|totale_omw_2bcd|u1|Mux0~0_combout\) # (!\u4|totale_omw_2bcd|u3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_2bcd|u1|Mux0~0_combout\,
	datab => \u4|totale_omw_2bcd|u0|Mux0~0_combout\,
	datac => \u4|totale_omw_2bcd|u2|Mux0~0_combout\,
	datad => \u4|totale_omw_2bcd|u3|Mux0~0_combout\,
	combout => \u4|totale_omw_2bcd|u6|Mux2~0_combout\);

-- Location: LCCOMB_X56_Y23_N4
\u4|totale_omw_1bcd|u6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|u6|Mux2~0_combout\ = (\u4|totale_omw_1bcd|u2|Mux0~0_combout\ & (\u4|totale_omw_1bcd|u0|Mux0~0_combout\ & ((\u4|totale_omw_1bcd|u3|Mux0~0_combout\) # (!\u4|totale_omw_1bcd|u1|Mux0~0_combout\)))) # 
-- (!\u4|totale_omw_1bcd|u2|Mux0~0_combout\ & (!\u4|totale_omw_1bcd|u0|Mux0~0_combout\ & ((\u4|totale_omw_1bcd|u1|Mux0~0_combout\) # (!\u4|totale_omw_1bcd|u3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_1bcd|u2|Mux0~0_combout\,
	datab => \u4|totale_omw_1bcd|u0|Mux0~0_combout\,
	datac => \u4|totale_omw_1bcd|u1|Mux0~0_combout\,
	datad => \u4|totale_omw_1bcd|u3|Mux0~0_combout\,
	combout => \u4|totale_omw_1bcd|u6|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y24_N16
\u4|totale_omw_2bcd|u4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u4|Mux1~0_combout\ = (!\u4|totale_omw_2bcd|u3|Mux3~0_combout\ & ((\u0|omwentel255\(1) & (\u4|totale_omw_2bcd|u3|Mux1~0_combout\ & !\u4|totale_omw_2bcd|u3|Mux2~0_combout\)) # (!\u0|omwentel255\(1) & 
-- (!\u4|totale_omw_2bcd|u3|Mux1~0_combout\ & \u4|totale_omw_2bcd|u3|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(1),
	datab => \u4|totale_omw_2bcd|u3|Mux1~0_combout\,
	datac => \u4|totale_omw_2bcd|u3|Mux3~0_combout\,
	datad => \u4|totale_omw_2bcd|u3|Mux2~0_combout\,
	combout => \u4|totale_omw_2bcd|u4|Mux1~0_combout\);

-- Location: LCCOMB_X61_Y23_N28
\u4|maximale2bcd|u6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u6|Mux1~0_combout\ = (\u4|maximale2bcd|u1|Mux0~0_combout\ & (!\u4|maximale2bcd|u3|Mux0~0_combout\ & (\u4|maximale2bcd|u0|Mux0~0_combout\ $ (\u4|maximale2bcd|u2|Mux0~0_combout\)))) # (!\u4|maximale2bcd|u1|Mux0~0_combout\ & 
-- (!\u4|maximale2bcd|u0|Mux0~0_combout\ & (!\u4|maximale2bcd|u2|Mux0~0_combout\ & \u4|maximale2bcd|u3|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|maximale2bcd|u0|Mux0~0_combout\,
	datab => \u4|maximale2bcd|u1|Mux0~0_combout\,
	datac => \u4|maximale2bcd|u2|Mux0~0_combout\,
	datad => \u4|maximale2bcd|u3|Mux0~0_combout\,
	combout => \u4|maximale2bcd|u6|Mux1~0_combout\);

-- Location: LCCOMB_X57_Y24_N6
\u4|totale_omw_2bcd|u6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u6|Mux1~0_combout\ = (\u4|totale_omw_2bcd|u1|Mux0~0_combout\ & (!\u4|totale_omw_2bcd|u3|Mux0~0_combout\ & (\u4|totale_omw_2bcd|u0|Mux0~0_combout\ $ (\u4|totale_omw_2bcd|u2|Mux0~0_combout\)))) # (!\u4|totale_omw_2bcd|u1|Mux0~0_combout\ 
-- & (!\u4|totale_omw_2bcd|u0|Mux0~0_combout\ & (!\u4|totale_omw_2bcd|u2|Mux0~0_combout\ & \u4|totale_omw_2bcd|u3|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_2bcd|u1|Mux0~0_combout\,
	datab => \u4|totale_omw_2bcd|u0|Mux0~0_combout\,
	datac => \u4|totale_omw_2bcd|u2|Mux0~0_combout\,
	datad => \u4|totale_omw_2bcd|u3|Mux0~0_combout\,
	combout => \u4|totale_omw_2bcd|u6|Mux1~0_combout\);

-- Location: LCCOMB_X82_Y29_N24
\u3f|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3f|Add0~15_combout\ = (\u3f|Add0~0_combout\ & ((\u3f|ffa\(5)) # (\u3f|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3f|ffa\(5),
	datac => \u3f|LessThan0~0_combout\,
	datad => \u3f|Add0~0_combout\,
	combout => \u3f|Add0~15_combout\);

-- Location: LCFF_X52_Y23_N13
\u8|wait_gem_RPM[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|Add0~10_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|wait_gem_RPM\(5));

-- Location: LCFF_X52_Y23_N7
\u8|wait_gem_RPM[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|Add0~4_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|wait_gem_RPM\(2));

-- Location: LCCOMB_X52_Y23_N30
\u8|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|Equal0~2_combout\ = (!\u8|wait_gem_RPM\(5) & (\u8|wait_gem_RPM\(4) & (!\u8|wait_gem_RPM\(3) & !\u8|wait_gem_RPM\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|wait_gem_RPM\(5),
	datab => \u8|wait_gem_RPM\(4),
	datac => \u8|wait_gem_RPM\(3),
	datad => \u8|wait_gem_RPM\(2),
	combout => \u8|Equal0~2_combout\);

-- Location: LCCOMB_X52_Y22_N24
\u8|LessThan0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~16_combout\ = (!\u8|tot_RPM_int\(9) & !\u8|tot_RPM_int\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u8|tot_RPM_int\(9),
	datad => \u8|tot_RPM_int\(10),
	combout => \u8|LessThan0~16_combout\);

-- Location: LCCOMB_X61_Y23_N10
\u6|rpm_max_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_max_int~0_combout\ = (\u6|rpm_int\(0) & \u3c|long~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u6|rpm_int\(0),
	datad => \u3c|long~regout\,
	combout => \u6|rpm_max_int~0_combout\);

-- Location: LCFF_X59_Y24_N15
\u6|rpm_int[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u6|rpm_int~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|rpm_int\(6));

-- Location: LCFF_X60_Y24_N7
\u6|rpm_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u6|rpm_int~6_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|rpm_int\(2));

-- Location: LCFF_X86_Y23_N13
\u3d|ffa[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3d|ffa[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3d|ffa\(3));

-- Location: LCFF_X43_Y24_N1
\u3c|long_press_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3c|Add1~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|long_press_counter\(0));

-- Location: LCCOMB_X42_Y24_N12
\u3c|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|process_0~0_combout\ = (\KNOP~combout\(6) & \u3c|a~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KNOP~combout\(6),
	datad => \u3c|a~regout\,
	combout => \u3c|process_0~0_combout\);

-- Location: LCCOMB_X42_Y24_N14
\u3c|long_press_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|long_press_counter~0_combout\ = (\u3c|long_press_counter\(0) & ((\u3c|ffa\(5)) # ((\u3c|LessThan0~0_combout\) # (!\u3c|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|ffa\(5),
	datab => \u3c|process_0~0_combout\,
	datac => \u3c|long_press_counter\(0),
	datad => \u3c|LessThan0~0_combout\,
	combout => \u3c|long_press_counter~0_combout\);

-- Location: LCFF_X43_Y24_N25
\u3c|long_press_counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3c|Add1~24_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|long_press_counter\(12));

-- Location: LCFF_X43_Y24_N27
\u3c|long_press_counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3c|Add1~26_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|long_press_counter\(13));

-- Location: LCCOMB_X44_Y24_N10
\u3c|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Equal0~0_combout\ = (!\u3c|Add1~0_combout\ & (!\u3c|Add1~6_combout\ & (!\u3c|Add1~4_combout\ & !\u3c|Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|Add1~0_combout\,
	datab => \u3c|Add1~6_combout\,
	datac => \u3c|Add1~4_combout\,
	datad => \u3c|Add1~2_combout\,
	combout => \u3c|Equal0~0_combout\);

-- Location: LCCOMB_X59_Y24_N14
\u6|rpm_int~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_int~2_combout\ = (\u5|rpm_mem\(6) & \u3c|long~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|rpm_mem\(6),
	datad => \u3c|long~regout\,
	combout => \u6|rpm_int~2_combout\);

-- Location: LCCOMB_X60_Y24_N6
\u6|rpm_int~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_int~6_combout\ = (\u3c|long~regout\ & \u5|rpm_mem\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long~regout\,
	datad => \u5|rpm_mem\(2),
	combout => \u6|rpm_int~6_combout\);

-- Location: LCFF_X71_Y29_N11
\u3b|a\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3b|a~0_combout\,
	ena => \u3b|output_int~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3b|a~regout\);

-- Location: LCFF_X72_Y29_N25
\u3b|ffa[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3b|ffa[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3b|ffa\(3));

-- Location: LCCOMB_X85_Y23_N14
\u3d|ffa[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3d|ffa[6]~0_combout\ = \KNOP~combout\(2) $ (!\u3d|a~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KNOP~combout\(2),
	datad => \u3d|a~regout\,
	combout => \u3d|ffa[6]~0_combout\);

-- Location: LCCOMB_X86_Y23_N12
\u3d|ffa[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3d|ffa[3]~7_combout\ = (\u3d|Add0~6_combout\ & ((\u3d|ffa[2]~3_combout\) # ((\u3d|ffa\(3) & !\u3d|ffa[6]~1_combout\)))) # (!\u3d|Add0~6_combout\ & (((\u3d|ffa\(3) & !\u3d|ffa[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3d|Add0~6_combout\,
	datab => \u3d|ffa[2]~3_combout\,
	datac => \u3d|ffa\(3),
	datad => \u3d|ffa[6]~1_combout\,
	combout => \u3d|ffa[3]~7_combout\);

-- Location: LCFF_X41_Y24_N9
\u3c|ffa[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3c|Add0~14_combout\,
	ena => \u3c|ffa[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|ffa\(1));

-- Location: LCCOMB_X71_Y29_N14
\u3b|ffa[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3b|ffa[2]~3_combout\ = (\BUTTON~combout\(3) & ((\u3b|ffa\(5)) # (\u3b|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3b|ffa\(5),
	datac => \u3b|LessThan0~0_combout\,
	datad => \BUTTON~combout\(3),
	combout => \u3b|ffa[2]~3_combout\);

-- Location: LCCOMB_X72_Y29_N24
\u3b|ffa[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3b|ffa[3]~7_combout\ = (\u3b|Add0~6_combout\ & ((\u3b|ffa[2]~3_combout\) # ((!\u3b|ffa[6]~1_combout\ & \u3b|ffa\(3))))) # (!\u3b|Add0~6_combout\ & (!\u3b|ffa[6]~1_combout\ & (\u3b|ffa\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3b|Add0~6_combout\,
	datab => \u3b|ffa[6]~1_combout\,
	datac => \u3b|ffa\(3),
	datad => \u3b|ffa[2]~3_combout\,
	combout => \u3b|ffa[3]~7_combout\);

-- Location: LCCOMB_X41_Y24_N8
\u3c|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add0~14_combout\ = (\u3c|Add0~2_combout\ & ((\u3c|LessThan0~0_combout\) # (\u3c|ffa\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|LessThan0~0_combout\,
	datab => \u3c|Add0~2_combout\,
	datad => \u3c|ffa\(5),
	combout => \u3c|Add0~14_combout\);

-- Location: LCCOMB_X58_Y24_N20
\u4|Mux263~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~131_combout\ = (\u4|line_counter\(0) & (\u4|line_counter\(1) & (\u4|RPM_line[14][1]~regout\))) # (!\u4|line_counter\(0) & (((\u4|Mux263~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|line_counter\(1),
	datac => \u4|RPM_line[14][1]~regout\,
	datad => \u4|Mux263~59_combout\,
	combout => \u4|Mux263~131_combout\);

-- Location: LCCOMB_X53_Y22_N14
\u4|gemiddelde2bcd|u1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u1|Mux0~0_combout\ = (\u8|gem_RPM\(6) & ((\u8|gem_RPM\(4) & ((\u8|gem_RPM\(5)) # (!\u8|gem_RPM\(7)))) # (!\u8|gem_RPM\(4) & (!\u8|gem_RPM\(7) & \u8|gem_RPM\(5))))) # (!\u8|gem_RPM\(6) & (((\u8|gem_RPM\(7) & !\u8|gem_RPM\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|gem_RPM\(6),
	datab => \u8|gem_RPM\(4),
	datac => \u8|gem_RPM\(7),
	datad => \u8|gem_RPM\(5),
	combout => \u4|gemiddelde2bcd|u1|Mux0~0_combout\);

-- Location: LCCOMB_X56_Y24_N28
\u4|totale_omw_2bcd|u1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u1|Mux0~0_combout\ = (\u0|omwentel255\(5) & (\u0|omwentel255\(6) & ((\u0|omwentel255\(4)) # (!\u0|omwentel255\(7))))) # (!\u0|omwentel255\(5) & ((\u0|omwentel255\(6) & (\u0|omwentel255\(4) & !\u0|omwentel255\(7))) # 
-- (!\u0|omwentel255\(6) & ((\u0|omwentel255\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(5),
	datab => \u0|omwentel255\(4),
	datac => \u0|omwentel255\(6),
	datad => \u0|omwentel255\(7),
	combout => \u4|totale_omw_2bcd|u1|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y24_N26
\u4|totale_omw_2bcd|u2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u2|Mux0~0_combout\ = (\u4|totale_omw_2bcd|u1|Mux1~0_combout\) # ((\u4|totale_omw_2bcd|u1|Mux2~0_combout\ & ((\u0|omwentel255\(3)) # (\u4|totale_omw_2bcd|u1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_2bcd|u1|Mux2~0_combout\,
	datab => \u0|omwentel255\(3),
	datac => \u4|totale_omw_2bcd|u1|Mux3~0_combout\,
	datad => \u4|totale_omw_2bcd|u1|Mux1~0_combout\,
	combout => \u4|totale_omw_2bcd|u2|Mux0~0_combout\);

-- Location: LCCOMB_X58_Y24_N6
\u4|RPM_line~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|RPM_line~21_combout\ = (\u5|rpm_mem\(7) & (!\u5|te_hoog~regout\ & (\u5|rpm_mem\(6) & !\u4|RPM_line~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(7),
	datab => \u5|te_hoog~regout\,
	datac => \u5|rpm_mem\(6),
	datad => \u4|RPM_line~3_combout\,
	combout => \u4|RPM_line~21_combout\);

-- Location: LCCOMB_X58_Y24_N10
\u4|RPM_line~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|RPM_line~3_combout\ = (!\u5|rpm_mem\(5) & (!\u5|rpm_mem\(4) & !\u5|rpm_mem\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm_mem\(5),
	datac => \u5|rpm_mem\(4),
	datad => \u5|rpm_mem\(3),
	combout => \u4|RPM_line~3_combout\);

-- Location: LCCOMB_X54_Y22_N22
\u4|gemiddelde2bcd|u5|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u5|Mux0~3_combout\ = (!\u8|gem_RPM\(4) & !\u8|gem_RPM\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u8|gem_RPM\(4),
	datad => \u8|gem_RPM\(3),
	combout => \u4|gemiddelde2bcd|u5|Mux0~3_combout\);

-- Location: LCCOMB_X58_Y24_N4
\u4|gemiddelde2bcd|u5|Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u5|Mux0~9_combout\ = (\u8|gem_RPM\(6) & (\u8|gem_RPM\(7) & ((\u8|gem_RPM\(5)) # (!\u4|gemiddelde2bcd|u5|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|gem_RPM\(5),
	datab => \u8|gem_RPM\(6),
	datac => \u8|gem_RPM\(7),
	datad => \u4|gemiddelde2bcd|u5|Mux0~3_combout\,
	combout => \u4|gemiddelde2bcd|u5|Mux0~9_combout\);

-- Location: LCCOMB_X60_Y23_N8
\u4|maximale2bcd|u5|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u5|Mux0~3_combout\ = (!\u6|rpm_max_int\(3) & !\u6|rpm_max_int\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u6|rpm_max_int\(3),
	datad => \u6|rpm_max_int\(4),
	combout => \u4|maximale2bcd|u5|Mux0~3_combout\);

-- Location: LCCOMB_X59_Y24_N20
\u4|maximale2bcd|u5|Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u5|Mux0~9_combout\ = (\u6|rpm_max_int\(7) & (\u6|rpm_max_int\(6) & ((\u6|rpm_max_int\(5)) # (!\u4|maximale2bcd|u5|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(7),
	datab => \u6|rpm_max_int\(6),
	datac => \u4|maximale2bcd|u5|Mux0~3_combout\,
	datad => \u6|rpm_max_int\(5),
	combout => \u4|maximale2bcd|u5|Mux0~9_combout\);

-- Location: LCCOMB_X56_Y24_N6
\u4|totale_omw_2bcd|u5|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u5|Mux0~3_combout\ = (!\u0|omwentel255\(4) & !\u0|omwentel255\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(4),
	datac => \u0|omwentel255\(3),
	combout => \u4|totale_omw_2bcd|u5|Mux0~3_combout\);

-- Location: LCCOMB_X56_Y24_N0
\u4|totale_omw_2bcd|u5|Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u5|Mux0~9_combout\ = (\u0|omwentel255\(7) & (\u0|omwentel255\(6) & ((\u0|omwentel255\(5)) # (!\u4|totale_omw_2bcd|u5|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_2bcd|u5|Mux0~3_combout\,
	datab => \u0|omwentel255\(7),
	datac => \u0|omwentel255\(6),
	datad => \u0|omwentel255\(5),
	combout => \u4|totale_omw_2bcd|u5|Mux0~9_combout\);

-- Location: LCCOMB_X71_Y29_N10
\u3b|a~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3b|a~0_combout\ = !\KNOP~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KNOP~combout\(3),
	combout => \u3b|a~0_combout\);

-- Location: LCCOMB_X61_Y23_N20
\u4|maximale_line[14][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale_line[14][0]~feeder_combout\ = \u6|rpm_max_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u6|rpm_max_int\(0),
	combout => \u4|maximale_line[14][0]~feeder_combout\);

-- Location: PIN_F29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[7]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u4|lcdm|LCD_DB[7]~reg0_regout\,
	oe => \u4|lcdm|LCD_DB[7]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(7),
	combout => \LCD_DATA[7]~7\);

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

-- Location: LCCOMB_X56_Y27_N6
\u4|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector0~0_combout\ = (!\u4|state.hold2~regout\ & ((\u4|state.reset~regout\) # (\u4|lcdm|busy~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.hold2~regout\,
	datac => \u4|state.reset~regout\,
	datad => \u4|lcdm|busy~regout\,
	combout => \u4|Selector0~0_combout\);

-- Location: PIN_U29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BUTTON[3]~I\ : cycloneii_io
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
	padio => ww_BUTTON(3),
	combout => \BUTTON~combout\(3));

-- Location: LCFF_X56_Y27_N7
\u4|state.reset\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector0~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|state.reset~regout\);

-- Location: LCCOMB_X56_Y27_N22
\u4|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector1~3_combout\ = (\u4|lcdm|busy~regout\ & (!\u4|state.update~regout\ & ((\u4|state.update_linecount_wait~regout\) # (!\u4|state.reset~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|busy~regout\,
	datab => \u4|state.update_linecount_wait~regout\,
	datac => \u4|state.update~regout\,
	datad => \u4|state.reset~regout\,
	combout => \u4|Selector1~3_combout\);

-- Location: LCCOMB_X56_Y27_N4
\u4|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector12~0_combout\ = (\u4|state.update~regout\ & \u4|lcdm|busy~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update~regout\,
	datac => \u4|lcdm|busy~regout\,
	combout => \u4|Selector12~0_combout\);

-- Location: LCCOMB_X58_Y27_N22
\u4|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector18~0_combout\ = (\u4|lcdm|busy~regout\ & (((\u4|Equal1~0_combout\) # (!\u4|drive~0_combout\)) # (!\u4|line_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(2),
	datab => \u4|drive~0_combout\,
	datac => \u4|lcdm|busy~regout\,
	datad => \u4|Equal1~0_combout\,
	combout => \u4|Selector18~0_combout\);

-- Location: LCCOMB_X58_Y27_N8
\u4|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector20~0_combout\ = (\u4|WideOr7~combout\) # ((\u4|state.update~regout\ & ((\u4|Equal1~0_combout\) # (!\u4|Selector18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update~regout\,
	datab => \u4|Equal1~0_combout\,
	datac => \u4|WideOr7~combout\,
	datad => \u4|Selector18~0_combout\,
	combout => \u4|Selector20~0_combout\);

-- Location: LCCOMB_X58_Y26_N12
\u4|Selector20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector20~1_combout\ = (\u4|line_counter\(1) & ((\u4|Selector20~0_combout\) # ((\u4|Selector22~0_combout\ & \u4|line_counter\(0))))) # (!\u4|line_counter\(1) & (\u4|Selector22~0_combout\ & (!\u4|line_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selector22~0_combout\,
	datab => \u4|line_counter\(0),
	datac => \u4|line_counter\(1),
	datad => \u4|Selector20~0_combout\,
	combout => \u4|Selector20~1_combout\);

-- Location: LCFF_X58_Y26_N13
\u4|line_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector20~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|line_counter\(1));

-- Location: LCCOMB_X58_Y26_N2
\u4|Mux50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux50~0_combout\ = (\u4|line_counter\(0)) # (!\u4|line_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|line_counter\(0),
	datad => \u4|line_counter\(1),
	combout => \u4|Mux50~0_combout\);

-- Location: LCCOMB_X58_Y27_N20
\u4|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector19~0_combout\ = (\u4|line_counter\(2) & ((\u4|Selector20~0_combout\) # ((\u4|Mux50~0_combout\ & \u4|Selector22~0_combout\)))) # (!\u4|line_counter\(2) & (((!\u4|Mux50~0_combout\ & \u4|Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selector20~0_combout\,
	datab => \u4|Mux50~0_combout\,
	datac => \u4|line_counter\(2),
	datad => \u4|Selector22~0_combout\,
	combout => \u4|Selector19~0_combout\);

-- Location: LCFF_X58_Y27_N21
\u4|line_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector19~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|line_counter\(2));

-- Location: LCCOMB_X56_Y26_N18
\u4|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector21~0_combout\ = (\u4|line_counter\(2) & !\u4|line_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|line_counter\(2),
	datad => \u4|line_counter\(1),
	combout => \u4|Selector21~0_combout\);

-- Location: LCCOMB_X56_Y26_N16
\u4|Selector21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector21~1_combout\ = (\u4|lcdm|busy~regout\ & (!\u4|Equal1~0_combout\ & ((!\u4|line_counter\(0)) # (!\u4|Selector21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|busy~regout\,
	datab => \u4|Selector21~0_combout\,
	datac => \u4|line_counter\(0),
	datad => \u4|Equal1~0_combout\,
	combout => \u4|Selector21~1_combout\);

-- Location: LCCOMB_X57_Y26_N0
\u4|Selector21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector21~2_combout\ = (\u4|line_counter\(0) & ((\u4|WideOr7~combout\) # ((\u4|state.update~regout\ & !\u4|Selector21~1_combout\)))) # (!\u4|line_counter\(0) & (\u4|state.update~regout\ & ((\u4|Selector21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update~regout\,
	datab => \u4|WideOr7~combout\,
	datac => \u4|line_counter\(0),
	datad => \u4|Selector21~1_combout\,
	combout => \u4|Selector21~2_combout\);

-- Location: LCFF_X57_Y26_N1
\u4|line_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector21~2_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|line_counter\(0));

-- Location: LCCOMB_X57_Y26_N6
\u4|drive~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|drive~0_combout\ = (\u4|line_counter\(0) & !\u4|line_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|line_counter\(0),
	datad => \u4|line_counter\(1),
	combout => \u4|drive~0_combout\);

-- Location: LCCOMB_X56_Y27_N14
\u4|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector12~1_combout\ = (\u4|line_counter\(2) & (\u4|Selector12~0_combout\ & (!\u4|Equal1~0_combout\ & \u4|drive~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(2),
	datab => \u4|Selector12~0_combout\,
	datac => \u4|Equal1~0_combout\,
	datad => \u4|drive~0_combout\,
	combout => \u4|Selector12~1_combout\);

-- Location: LCFF_X56_Y27_N15
\u4|state.hold\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector12~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|state.hold~regout\);

-- Location: LCCOMB_X56_Y27_N30
\u4|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector1~2_combout\ = (!\u4|state.update_linecount~regout\ & (!\u4|wr~regout\ & (!\u4|state.hold~regout\ & !\u4|state.write_char~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update_linecount~regout\,
	datab => \u4|wr~regout\,
	datac => \u4|state.hold~regout\,
	datad => \u4|state.write_char~regout\,
	combout => \u4|Selector1~2_combout\);

-- Location: LCCOMB_X56_Y27_N2
\u4|Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector1~4_combout\ = (!\u4|state.hold2~regout\ & (\u4|Selector1~3_combout\ & \u4|Selector1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.hold2~regout\,
	datab => \u4|Selector1~3_combout\,
	datad => \u4|Selector1~2_combout\,
	combout => \u4|Selector1~4_combout\);

-- Location: LCCOMB_X56_Y27_N26
\u4|Selector1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector1~5_combout\ = (\u4|Selector1~4_combout\) # ((\u4|Equal1~0_combout\ & (\u4|state.update~regout\ & \u4|lcdm|busy~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Equal1~0_combout\,
	datab => \u4|Selector1~4_combout\,
	datac => \u4|state.update~regout\,
	datad => \u4|lcdm|busy~regout\,
	combout => \u4|Selector1~5_combout\);

-- Location: LCFF_X56_Y27_N27
\u4|state.write_char\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector1~5_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|state.write_char~regout\);

-- Location: LCFF_X56_Y27_N3
\u4|wr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u4|state.write_char~regout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|wr~regout\);

-- Location: LCCOMB_X56_Y27_N16
\u4|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector3~0_combout\ = (\u4|wr~regout\) # ((\u4|state.update~regout\ & !\u4|lcdm|busy~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|wr~regout\,
	datac => \u4|state.update~regout\,
	datad => \u4|lcdm|busy~regout\,
	combout => \u4|Selector3~0_combout\);

-- Location: LCFF_X56_Y27_N17
\u4|state.update\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector3~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|state.update~regout\);

-- Location: LCCOMB_X59_Y23_N28
\u4|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector14~0_combout\ = (\u4|state.update~regout\ & \u4|Selector18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|state.update~regout\,
	datad => \u4|Selector18~0_combout\,
	combout => \u4|Selector14~0_combout\);

-- Location: LCCOMB_X58_Y23_N8
\u4|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector16~0_combout\ = (\u4|Add1~4_combout\ & ((\u4|Selector14~0_combout\) # ((\u4|Selector15~0_combout\ & \u4|character_counter\(2))))) # (!\u4|Add1~4_combout\ & (\u4|Selector15~0_combout\ & (\u4|character_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Add1~4_combout\,
	datab => \u4|Selector15~0_combout\,
	datac => \u4|character_counter\(2),
	datad => \u4|Selector14~0_combout\,
	combout => \u4|Selector16~0_combout\);

-- Location: LCFF_X58_Y23_N9
\u4|character_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector16~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|character_counter\(2));

-- Location: LCCOMB_X56_Y27_N18
\u4|Selector18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector18~2_combout\ = ((!\u4|lcdm|busy~regout\ & !\u4|character_counter\(0))) # (!\u4|state.update~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|busy~regout\,
	datab => \u4|character_counter\(0),
	datac => \u4|state.update~regout\,
	combout => \u4|Selector18~2_combout\);

-- Location: LCCOMB_X54_Y23_N16
\u4|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Add1~0_combout\ = \u4|character_counter\(0) $ (GND)
-- \u4|Add1~1\ = CARRY(!\u4|character_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|character_counter\(0),
	datad => VCC,
	combout => \u4|Add1~0_combout\,
	cout => \u4|Add1~1\);

-- Location: LCCOMB_X56_Y27_N8
\u4|Selector18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector18~3_combout\ = ((!\u4|Selector18~2_combout\ & ((!\u4|Selector18~0_combout\) # (!\u4|Add1~0_combout\)))) # (!\u4|Selector18~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selector18~1_combout\,
	datab => \u4|Selector18~2_combout\,
	datac => \u4|Add1~0_combout\,
	datad => \u4|Selector18~0_combout\,
	combout => \u4|Selector18~3_combout\);

-- Location: LCFF_X56_Y27_N9
\u4|character_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector18~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|character_counter\(0));

-- Location: LCCOMB_X54_Y23_N24
\u4|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Add1~8_combout\ = \u4|Add1~7\ $ (!\u4|character_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u4|character_counter\(4),
	cin => \u4|Add1~7\,
	combout => \u4|Add1~8_combout\);

-- Location: LCCOMB_X59_Y23_N4
\u4|Selector14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector14~1_combout\ = (\u4|state.update~regout\ & (\u4|Equal1~0_combout\ & (\u4|Add1~8_combout\ & \u4|Selector18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update~regout\,
	datab => \u4|Equal1~0_combout\,
	datac => \u4|Add1~8_combout\,
	datad => \u4|Selector18~0_combout\,
	combout => \u4|Selector14~1_combout\);

-- Location: LCCOMB_X58_Y23_N2
\u4|Selector14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector14~2_combout\ = (\u4|Selector14~1_combout\) # ((\u4|Selector15~0_combout\ & \u4|character_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Selector15~0_combout\,
	datac => \u4|character_counter\(4),
	datad => \u4|Selector14~1_combout\,
	combout => \u4|Selector14~2_combout\);

-- Location: LCFF_X58_Y23_N3
\u4|character_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector14~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|character_counter\(4));

-- Location: LCCOMB_X58_Y23_N14
\u4|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector17~0_combout\ = (\u4|Add1~2_combout\ & ((\u4|Selector14~0_combout\) # ((\u4|Selector15~0_combout\ & \u4|character_counter\(1))))) # (!\u4|Add1~2_combout\ & (\u4|Selector15~0_combout\ & (\u4|character_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Add1~2_combout\,
	datab => \u4|Selector15~0_combout\,
	datac => \u4|character_counter\(1),
	datad => \u4|Selector14~0_combout\,
	combout => \u4|Selector17~0_combout\);

-- Location: LCFF_X58_Y23_N15
\u4|character_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector17~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|character_counter\(1));

-- Location: LCCOMB_X58_Y23_N28
\u4|Mux258~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux258~0_combout\ = (!\u4|character_counter\(1) & !\u4|character_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|character_counter\(1),
	datac => \u4|character_counter\(2),
	combout => \u4|Mux258~0_combout\);

-- Location: LCCOMB_X58_Y23_N24
\u4|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Equal1~0_combout\ = (\u4|character_counter\(3)) # (((!\u4|Mux258~0_combout\) # (!\u4|character_counter\(0))) # (!\u4|character_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(3),
	datab => \u4|character_counter\(4),
	datac => \u4|character_counter\(0),
	datad => \u4|Mux258~0_combout\,
	combout => \u4|Equal1~0_combout\);

-- Location: LCCOMB_X58_Y27_N16
\u4|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector22~0_combout\ = (!\u4|Equal1~0_combout\ & (\u4|state.update~regout\ & \u4|Selector18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Equal1~0_combout\,
	datac => \u4|state.update~regout\,
	datad => \u4|Selector18~0_combout\,
	combout => \u4|Selector22~0_combout\);

-- Location: LCCOMB_X57_Y27_N28
\u4|Selector22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector22~1_combout\ = (\u4|state.hold~regout\) # ((\u4|Selector22~0_combout\ & \u4|line_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.hold~regout\,
	datac => \u4|Selector22~0_combout\,
	datad => \u4|line_counter\(2),
	combout => \u4|Selector22~1_combout\);

-- Location: LCFF_X57_Y27_N29
\u4|home\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector22~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|home~regout\);

-- Location: LCCOMB_X56_Y26_N24
\u4|goto10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|goto10~0_combout\ = (!\u4|line_counter\(2) & (!\u4|line_counter\(1) & !\u4|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(2),
	datab => \u4|line_counter\(1),
	datad => \u4|Equal1~0_combout\,
	combout => \u4|goto10~0_combout\);

-- Location: LCCOMB_X52_Y24_N4
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

-- Location: LCFF_X56_Y26_N25
\u4|goto10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|goto10~0_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.update~regout\,
	sload => \u4|lcdm|ALT_INV_busy~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|goto10~regout\);

-- Location: LCCOMB_X56_Y27_N12
\u4|goto30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|goto30~0_combout\ = (\u4|state.update~regout\ & (!\u4|Mux50~0_combout\ & (!\u4|Equal1~0_combout\ & \u4|Selector18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update~regout\,
	datab => \u4|Mux50~0_combout\,
	datac => \u4|Equal1~0_combout\,
	datad => \u4|Selector18~0_combout\,
	combout => \u4|goto30~0_combout\);

-- Location: LCFF_X56_Y27_N13
\u4|goto30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|goto30~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|goto30~regout\);

-- Location: LCCOMB_X53_Y29_N0
\u4|lcdm|LCD_DB[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|LCD_DB[0]~8_combout\ = (!\u4|goto20~regout\ & (!\u4|home~regout\ & (!\u4|goto10~regout\ & !\u4|goto30~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|goto20~regout\,
	datab => \u4|home~regout\,
	datac => \u4|goto10~regout\,
	datad => \u4|goto30~regout\,
	combout => \u4|lcdm|LCD_DB[0]~8_combout\);

-- Location: LCCOMB_X54_Y29_N30
\u4|lcdm|busy~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|busy~0_combout\ = (\u4|lcdm|current_state.wait_for_command~regout\ & (\u4|lcdm|LCD_DB[0]~8_combout\ & !\u4|wr~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datac => \u4|lcdm|LCD_DB[0]~8_combout\,
	datad => \u4|wr~regout\,
	combout => \u4|lcdm|busy~0_combout\);

-- Location: LCFF_X56_Y27_N5
\u4|lcdm|busy\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u4|lcdm|busy~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|busy~regout\);

-- Location: LCCOMB_X56_Y27_N28
\u4|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector5~0_combout\ = (\u4|state.update_linecount~regout\) # ((\u4|state.update_linecount_wait~regout\ & !\u4|lcdm|busy~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update_linecount~regout\,
	datac => \u4|state.update_linecount_wait~regout\,
	datad => \u4|lcdm|busy~regout\,
	combout => \u4|Selector5~0_combout\);

-- Location: LCFF_X56_Y27_N29
\u4|state.update_linecount_wait\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector5~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|state.update_linecount_wait~regout\);

-- Location: LCFF_X56_Y27_N25
\u4|state.hold2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u4|state.hold~regout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|state.hold2~regout\);

-- Location: LCCOMB_X56_Y27_N24
\u4|WideOr7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|WideOr7~combout\ = (\u4|state.update_linecount_wait~regout\) # ((\u4|state.hold2~regout\) # (!\u4|Selector1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|state.update_linecount_wait~regout\,
	datac => \u4|state.hold2~regout\,
	datad => \u4|Selector1~2_combout\,
	combout => \u4|WideOr7~combout\);

-- Location: LCCOMB_X59_Y23_N14
\u4|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector15~0_combout\ = (\u4|WideOr7~combout\) # ((\u4|state.update~regout\ & !\u4|Selector18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update~regout\,
	datac => \u4|WideOr7~combout\,
	datad => \u4|Selector18~0_combout\,
	combout => \u4|Selector15~0_combout\);

-- Location: LCCOMB_X58_Y23_N6
\u4|Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector15~1_combout\ = (\u4|Add1~6_combout\ & ((\u4|Selector14~0_combout\) # ((\u4|Selector15~0_combout\ & \u4|character_counter\(3))))) # (!\u4|Add1~6_combout\ & (\u4|Selector15~0_combout\ & (\u4|character_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Add1~6_combout\,
	datab => \u4|Selector15~0_combout\,
	datac => \u4|character_counter\(3),
	datad => \u4|Selector14~0_combout\,
	combout => \u4|Selector15~1_combout\);

-- Location: LCFF_X58_Y23_N7
\u4|character_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector15~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|character_counter\(3));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KNOP[3]~I\ : cycloneii_io
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
	padio => ww_KNOP(3),
	combout => \KNOP~combout\(3));

-- Location: LCCOMB_X71_Y29_N20
\u3b|output_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3b|output_int~0_combout\ = (\u3b|a~regout\ & (\u3b|output_int~regout\ & !\KNOP~combout\(3))) # (!\u3b|a~regout\ & ((\u3b|output_int~regout\) # (!\KNOP~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3b|a~regout\,
	datac => \u3b|output_int~regout\,
	datad => \KNOP~combout\(3),
	combout => \u3b|output_int~0_combout\);

-- Location: LCCOMB_X71_Y29_N2
\u3b|ffa[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3b|ffa[6]~0_combout\ = \u3b|a~regout\ $ (!\KNOP~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3b|a~regout\,
	datad => \KNOP~combout\(3),
	combout => \u3b|ffa[6]~0_combout\);

-- Location: LCCOMB_X72_Y29_N30
\u3b|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3b|Add0~14_combout\ = (\u3b|Add0~2_combout\ & ((\u3b|LessThan0~0_combout\) # (\u3b|ffa\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3b|Add0~2_combout\,
	datab => \u3b|LessThan0~0_combout\,
	datad => \u3b|ffa\(5),
	combout => \u3b|Add0~14_combout\);

-- Location: LCFF_X72_Y29_N31
\u3b|ffa[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3b|Add0~14_combout\,
	ena => \u3b|ffa[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3b|ffa\(1));

-- Location: LCCOMB_X72_Y29_N4
\u3b|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3b|Add0~15_combout\ = (\u3b|Add0~0_combout\ & ((\u3b|LessThan0~0_combout\) # (\u3b|ffa\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3b|Add0~0_combout\,
	datab => \u3b|LessThan0~0_combout\,
	datad => \u3b|ffa\(5),
	combout => \u3b|Add0~15_combout\);

-- Location: LCFF_X72_Y29_N5
\u3b|ffa[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3b|Add0~15_combout\,
	ena => \u3b|ffa[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3b|ffa\(0));

-- Location: LCCOMB_X72_Y29_N14
\u3b|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3b|Add0~4_combout\ = (\u3b|ffa\(2) & (!\u3b|Add0~3\ & VCC)) # (!\u3b|ffa\(2) & (\u3b|Add0~3\ $ (GND)))
-- \u3b|Add0~5\ = CARRY((!\u3b|ffa\(2) & !\u3b|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3b|ffa\(2),
	datad => VCC,
	cin => \u3b|Add0~3\,
	combout => \u3b|Add0~4_combout\,
	cout => \u3b|Add0~5\);

-- Location: LCCOMB_X72_Y29_N8
\u3b|ffa[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3b|ffa[2]~5_combout\ = (\u3b|ffa[2]~3_combout\ & (!\u3b|Add0~4_combout\ & ((\u3b|ffa\(2)) # (\u3b|ffa[6]~1_combout\)))) # (!\u3b|ffa[2]~3_combout\ & (((\u3b|ffa\(2)) # (\u3b|ffa[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3b|ffa[2]~3_combout\,
	datab => \u3b|Add0~4_combout\,
	datac => \u3b|ffa\(2),
	datad => \u3b|ffa[6]~1_combout\,
	combout => \u3b|ffa[2]~5_combout\);

-- Location: LCFF_X72_Y29_N9
\u3b|ffa[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3b|ffa[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3b|ffa\(2));

-- Location: LCCOMB_X72_Y29_N18
\u3b|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3b|Add0~8_combout\ = (\u3b|ffa\(4) & (\u3b|Add0~7\ $ (GND))) # (!\u3b|ffa\(4) & (!\u3b|Add0~7\ & VCC))
-- \u3b|Add0~9\ = CARRY((\u3b|ffa\(4) & !\u3b|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3b|ffa\(4),
	datad => VCC,
	cin => \u3b|Add0~7\,
	combout => \u3b|Add0~8_combout\,
	cout => \u3b|Add0~9\);

-- Location: LCCOMB_X72_Y29_N26
\u3b|ffa[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3b|ffa[4]~6_combout\ = (\u3b|ffa[2]~3_combout\ & ((\u3b|Add0~8_combout\) # ((!\u3b|ffa[6]~1_combout\ & \u3b|ffa\(4))))) # (!\u3b|ffa[2]~3_combout\ & (!\u3b|ffa[6]~1_combout\ & (\u3b|ffa\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3b|ffa[2]~3_combout\,
	datab => \u3b|ffa[6]~1_combout\,
	datac => \u3b|ffa\(4),
	datad => \u3b|Add0~8_combout\,
	combout => \u3b|ffa[4]~6_combout\);

-- Location: LCFF_X72_Y29_N27
\u3b|ffa[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3b|ffa[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3b|ffa\(4));

-- Location: LCCOMB_X72_Y29_N22
\u3b|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3b|Add0~12_combout\ = \u3b|Add0~11\ $ (\u3b|ffa\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u3b|ffa\(6),
	cin => \u3b|Add0~11\,
	combout => \u3b|Add0~12_combout\);

-- Location: LCCOMB_X72_Y29_N2
\u3b|ffa[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3b|ffa[6]~4_combout\ = (\u3b|ffa[2]~3_combout\ & (!\u3b|Add0~12_combout\ & ((\u3b|ffa[6]~1_combout\) # (\u3b|ffa\(6))))) # (!\u3b|ffa[2]~3_combout\ & ((\u3b|ffa[6]~1_combout\) # ((\u3b|ffa\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3b|ffa[2]~3_combout\,
	datab => \u3b|ffa[6]~1_combout\,
	datac => \u3b|ffa\(6),
	datad => \u3b|Add0~12_combout\,
	combout => \u3b|ffa[6]~4_combout\);

-- Location: LCFF_X72_Y29_N3
\u3b|ffa[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3b|ffa[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3b|ffa\(6));

-- Location: LCCOMB_X72_Y29_N0
\u3b|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3b|LessThan0~0_combout\ = (\u3b|ffa\(6)) # ((!\u3b|ffa\(3) & (\u3b|ffa\(2) & !\u3b|ffa\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3b|ffa\(3),
	datab => \u3b|ffa\(6),
	datac => \u3b|ffa\(2),
	datad => \u3b|ffa\(4),
	combout => \u3b|LessThan0~0_combout\);

-- Location: LCCOMB_X71_Y29_N24
\u3b|ffa[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3b|ffa[6]~1_combout\ = (\BUTTON~combout\(3) & ((\u3b|ffa[6]~0_combout\) # ((\u3b|LessThan0~0_combout\) # (\u3b|ffa\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u3b|ffa[6]~0_combout\,
	datac => \u3b|LessThan0~0_combout\,
	datad => \u3b|ffa\(5),
	combout => \u3b|ffa[6]~1_combout\);

-- Location: LCCOMB_X72_Y29_N28
\u3b|ffa[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3b|ffa[5]~2_combout\ = (\u3b|ffa[6]~1_combout\ & (((!\u3b|ffa\(5) & !\u3b|LessThan0~0_combout\)) # (!\u3b|Add0~10_combout\))) # (!\u3b|ffa[6]~1_combout\ & (((\u3b|ffa\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3b|Add0~10_combout\,
	datab => \u3b|ffa[6]~1_combout\,
	datac => \u3b|ffa\(5),
	datad => \u3b|LessThan0~0_combout\,
	combout => \u3b|ffa[5]~2_combout\);

-- Location: LCFF_X72_Y29_N29
\u3b|ffa[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3b|ffa[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3b|ffa\(5));

-- Location: LCCOMB_X71_Y29_N0
\u3b|output_int~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3b|output_int~1_combout\ = (!\u3b|ffa\(5) & (!\u3b|LessThan0~0_combout\ & \BUTTON~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3b|ffa\(5),
	datac => \u3b|LessThan0~0_combout\,
	datad => \BUTTON~combout\(3),
	combout => \u3b|output_int~1_combout\);

-- Location: LCFF_X71_Y29_N21
\u3b|output_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3b|output_int~0_combout\,
	ena => \u3b|output_int~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3b|output_int~regout\);

-- Location: LCCOMB_X60_Y25_N30
\u3b|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3b|output~0_combout\ = !\u3b|output_int~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3b|output_int~regout\,
	combout => \u3b|output~0_combout\);

-- Location: LCFF_X60_Y25_N31
\u3b|output\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3b|output~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3b|output~regout\);

-- Location: LCCOMB_X60_Y25_N20
\start_stop_state~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \start_stop_state~feeder_combout\ = \u3b|output~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3b|output~regout\,
	combout => \start_stop_state~feeder_combout\);

-- Location: LCFF_X60_Y25_N21
start_stop_state : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \start_stop_state~feeder_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \start_stop_state~regout\);

-- Location: LCCOMB_X59_Y25_N6
\start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \start~0_combout\ = \start~regout\ $ (((!\u3b|output~regout\ & \start_stop_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3b|output~regout\,
	datac => \start~regout\,
	datad => \start_stop_state~regout\,
	combout => \start~0_combout\);

-- Location: LCFF_X59_Y25_N7
start : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \start~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \start~regout\);

-- Location: LCCOMB_X59_Y25_N18
\u4|start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|start~0_combout\ = (\u4|start~regout\) # (!\start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|start~regout\,
	datad => \start~regout\,
	combout => \u4|start~0_combout\);

-- Location: LCFF_X59_Y25_N19
\u4|start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|start~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|start~regout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KNOP[2]~I\ : cycloneii_io
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
	padio => ww_KNOP(2),
	combout => \KNOP~combout\(2));

-- Location: LCCOMB_X85_Y23_N18
\u3d|a~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3d|a~0_combout\ = !\KNOP~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KNOP~combout\(2),
	combout => \u3d|a~0_combout\);

-- Location: LCCOMB_X85_Y23_N16
\u3d|ffa[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3d|ffa[2]~3_combout\ = (\BUTTON~combout\(3) & ((\u3d|ffa\(5)) # (\u3d|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3d|ffa\(5),
	datac => \BUTTON~combout\(3),
	datad => \u3d|LessThan0~0_combout\,
	combout => \u3d|ffa[2]~3_combout\);

-- Location: LCCOMB_X86_Y23_N18
\u3d|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3d|Add0~0_combout\ = \u3d|ffa\(0) $ (VCC)
-- \u3d|Add0~1\ = CARRY(\u3d|ffa\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3d|ffa\(0),
	datad => VCC,
	combout => \u3d|Add0~0_combout\,
	cout => \u3d|Add0~1\);

-- Location: LCCOMB_X86_Y23_N2
\u3d|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3d|Add0~15_combout\ = (\u3d|Add0~0_combout\ & ((\u3d|LessThan0~0_combout\) # (\u3d|ffa\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3d|LessThan0~0_combout\,
	datac => \u3d|ffa\(5),
	datad => \u3d|Add0~0_combout\,
	combout => \u3d|Add0~15_combout\);

-- Location: LCFF_X86_Y23_N3
\u3d|ffa[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3d|Add0~15_combout\,
	ena => \u3d|ffa[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3d|ffa\(0));

-- Location: LCCOMB_X86_Y23_N20
\u3d|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3d|Add0~2_combout\ = (\u3d|ffa\(1) & (!\u3d|Add0~1\)) # (!\u3d|ffa\(1) & ((\u3d|Add0~1\) # (GND)))
-- \u3d|Add0~3\ = CARRY((!\u3d|Add0~1\) # (!\u3d|ffa\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3d|ffa\(1),
	datad => VCC,
	cin => \u3d|Add0~1\,
	combout => \u3d|Add0~2_combout\,
	cout => \u3d|Add0~3\);

-- Location: LCCOMB_X86_Y23_N8
\u3d|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3d|Add0~14_combout\ = (\u3d|Add0~2_combout\ & ((\u3d|ffa\(5)) # (\u3d|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3d|ffa\(5),
	datac => \u3d|Add0~2_combout\,
	datad => \u3d|LessThan0~0_combout\,
	combout => \u3d|Add0~14_combout\);

-- Location: LCFF_X86_Y23_N9
\u3d|ffa[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3d|Add0~14_combout\,
	ena => \u3d|ffa[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3d|ffa\(1));

-- Location: LCCOMB_X86_Y23_N28
\u3d|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3d|Add0~10_combout\ = (\u3d|ffa\(5) & ((\u3d|Add0~9\) # (GND))) # (!\u3d|ffa\(5) & (!\u3d|Add0~9\))
-- \u3d|Add0~11\ = CARRY((\u3d|ffa\(5)) # (!\u3d|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3d|ffa\(5),
	datad => VCC,
	cin => \u3d|Add0~9\,
	combout => \u3d|Add0~10_combout\,
	cout => \u3d|Add0~11\);

-- Location: LCCOMB_X86_Y23_N4
\u3d|ffa[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3d|ffa[5]~2_combout\ = (\u3d|ffa[6]~1_combout\ & (((!\u3d|LessThan0~0_combout\ & !\u3d|ffa\(5))) # (!\u3d|Add0~10_combout\))) # (!\u3d|ffa[6]~1_combout\ & (((\u3d|ffa\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3d|LessThan0~0_combout\,
	datab => \u3d|ffa[6]~1_combout\,
	datac => \u3d|ffa\(5),
	datad => \u3d|Add0~10_combout\,
	combout => \u3d|ffa[5]~2_combout\);

-- Location: LCFF_X86_Y23_N5
\u3d|ffa[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3d|ffa[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3d|ffa\(5));

-- Location: LCCOMB_X86_Y23_N0
\u3d|ffa[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3d|ffa[6]~1_combout\ = (\BUTTON~combout\(3) & ((\u3d|ffa[6]~0_combout\) # ((\u3d|ffa\(5)) # (\u3d|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3d|ffa[6]~0_combout\,
	datab => \BUTTON~combout\(3),
	datac => \u3d|ffa\(5),
	datad => \u3d|LessThan0~0_combout\,
	combout => \u3d|ffa[6]~1_combout\);

-- Location: LCCOMB_X86_Y23_N14
\u3d|ffa[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3d|ffa[4]~6_combout\ = (\u3d|Add0~8_combout\ & ((\u3d|ffa[2]~3_combout\) # ((\u3d|ffa\(4) & !\u3d|ffa[6]~1_combout\)))) # (!\u3d|Add0~8_combout\ & (((\u3d|ffa\(4) & !\u3d|ffa[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3d|Add0~8_combout\,
	datab => \u3d|ffa[2]~3_combout\,
	datac => \u3d|ffa\(4),
	datad => \u3d|ffa[6]~1_combout\,
	combout => \u3d|ffa[4]~6_combout\);

-- Location: LCFF_X86_Y23_N15
\u3d|ffa[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3d|ffa[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3d|ffa\(4));

-- Location: LCCOMB_X86_Y23_N16
\u3d|ffa[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3d|ffa[2]~5_combout\ = (\u3d|Add0~4_combout\ & (!\u3d|ffa[2]~3_combout\ & ((\u3d|ffa\(2)) # (\u3d|ffa[6]~1_combout\)))) # (!\u3d|Add0~4_combout\ & (((\u3d|ffa\(2)) # (\u3d|ffa[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3d|Add0~4_combout\,
	datab => \u3d|ffa[2]~3_combout\,
	datac => \u3d|ffa\(2),
	datad => \u3d|ffa[6]~1_combout\,
	combout => \u3d|ffa[2]~5_combout\);

-- Location: LCFF_X86_Y23_N17
\u3d|ffa[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3d|ffa[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3d|ffa\(2));

-- Location: LCCOMB_X86_Y23_N30
\u3d|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3d|Add0~12_combout\ = \u3d|ffa\(6) $ (\u3d|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3d|ffa\(6),
	cin => \u3d|Add0~11\,
	combout => \u3d|Add0~12_combout\);

-- Location: LCCOMB_X86_Y23_N10
\u3d|ffa[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3d|ffa[6]~4_combout\ = (\u3d|ffa[6]~1_combout\ & (((!\u3d|Add0~12_combout\)) # (!\u3d|ffa[2]~3_combout\))) # (!\u3d|ffa[6]~1_combout\ & (\u3d|ffa\(6) & ((!\u3d|Add0~12_combout\) # (!\u3d|ffa[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3d|ffa[6]~1_combout\,
	datab => \u3d|ffa[2]~3_combout\,
	datac => \u3d|ffa\(6),
	datad => \u3d|Add0~12_combout\,
	combout => \u3d|ffa[6]~4_combout\);

-- Location: LCFF_X86_Y23_N11
\u3d|ffa[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3d|ffa[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3d|ffa\(6));

-- Location: LCCOMB_X86_Y23_N6
\u3d|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3d|LessThan0~0_combout\ = (\u3d|ffa\(6)) # ((!\u3d|ffa\(3) & (!\u3d|ffa\(4) & \u3d|ffa\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3d|ffa\(3),
	datab => \u3d|ffa\(4),
	datac => \u3d|ffa\(2),
	datad => \u3d|ffa\(6),
	combout => \u3d|LessThan0~0_combout\);

-- Location: LCCOMB_X85_Y23_N12
\u3d|output_int~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3d|output_int~1_combout\ = (!\u3d|ffa\(5) & (\BUTTON~combout\(3) & !\u3d|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3d|ffa\(5),
	datac => \BUTTON~combout\(3),
	datad => \u3d|LessThan0~0_combout\,
	combout => \u3d|output_int~1_combout\);

-- Location: LCFF_X85_Y23_N19
\u3d|a\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3d|a~0_combout\,
	ena => \u3d|output_int~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3d|a~regout\);

-- Location: LCCOMB_X85_Y23_N28
\u3d|output_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3d|output_int~0_combout\ = (\KNOP~combout\(2) & (\u3d|output_int~regout\ & !\u3d|a~regout\)) # (!\KNOP~combout\(2) & ((\u3d|output_int~regout\) # (!\u3d|a~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KNOP~combout\(2),
	datac => \u3d|output_int~regout\,
	datad => \u3d|a~regout\,
	combout => \u3d|output_int~0_combout\);

-- Location: LCFF_X85_Y23_N29
\u3d|output_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3d|output_int~0_combout\,
	ena => \u3d|output_int~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3d|output_int~regout\);

-- Location: LCCOMB_X85_Y23_N24
\u3d|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3d|output~0_combout\ = !\u3d|output_int~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3d|output_int~regout\,
	combout => \u3d|output~0_combout\);

-- Location: LCFF_X85_Y23_N25
\u3d|output\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3d|output~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3d|output~regout\);

-- Location: LCFF_X85_Y23_N23
knop_mode_state : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u3d|output~regout\,
	sload => VCC,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \knop_mode_state~regout\);

-- Location: LCCOMB_X58_Y26_N4
\mode~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mode~0_combout\ = \mode~regout\ $ (((!\u3d|output~regout\ & \knop_mode_state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3d|output~regout\,
	datac => \mode~regout\,
	datad => \knop_mode_state~regout\,
	combout => \mode~0_combout\);

-- Location: LCFF_X58_Y26_N5
mode : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \mode~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mode~regout\);

-- Location: LCCOMB_X56_Y26_N14
\u4|Mux263~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~47_combout\ = (!\u4|line_counter\(0) & ((\u4|line_counter\(1) & ((\u4|character_counter\(1)) # (!\mode~regout\))) # (!\u4|line_counter\(1) & (!\mode~regout\ & \u4|character_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \u4|line_counter\(0),
	datac => \mode~regout\,
	datad => \u4|character_counter\(1),
	combout => \u4|Mux263~47_combout\);

-- Location: LCCOMB_X56_Y26_N28
\u4|Mux263~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~49_combout\ = (\u4|line_counter\(2)) # ((\u4|start~regout\) # ((!\u4|character_counter\(1)) # (!\u4|line_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(2),
	datab => \u4|start~regout\,
	datac => \u4|line_counter\(0),
	datad => \u4|character_counter\(1),
	combout => \u4|Mux263~49_combout\);

-- Location: LCCOMB_X56_Y26_N8
\u4|Mux263~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~129_combout\ = ((\u4|RPM_line[1][5]~regout\ & (\u4|start~regout\ & \u4|Mux263~47_combout\))) # (!\u4|Mux263~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|RPM_line[1][5]~regout\,
	datab => \u4|start~regout\,
	datac => \u4|Mux263~47_combout\,
	datad => \u4|Mux263~49_combout\,
	combout => \u4|Mux263~129_combout\);

-- Location: LCCOMB_X58_Y24_N0
\u4|aline~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~2_combout\ = ((\u4|line_counter\(1) & (\u4|line_counter\(0))) # (!\u4|line_counter\(1) & ((\mode~regout\)))) # (!\u4|RPM_line[1][5]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|RPM_line[1][5]~regout\,
	datab => \u4|line_counter\(1),
	datac => \u4|line_counter\(0),
	datad => \mode~regout\,
	combout => \u4|aline~2_combout\);

-- Location: LCCOMB_X59_Y24_N12
\u4|Mux263~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~55_combout\ = (\u4|start~regout\ & (((\u4|character_counter\(1))))) # (!\u4|start~regout\ & (\u4|line_counter\(1) & ((!\u4|character_counter\(1)) # (!\u4|line_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \u4|start~regout\,
	datac => \u4|line_counter\(0),
	datad => \u4|character_counter\(1),
	combout => \u4|Mux263~55_combout\);

-- Location: LCCOMB_X59_Y27_N16
\u4|RPM_line[1][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|RPM_line[1][5]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u4|RPM_line[1][5]~feeder_combout\);

-- Location: LCFF_X59_Y27_N17
\u4|RPM_line[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|RPM_line[1][5]~feeder_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[1][5]~regout\);

-- Location: LCCOMB_X59_Y24_N6
\u4|aline~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~3_combout\ = (\mode~regout\ $ (((\u4|line_counter\(1) & !\u4|line_counter\(0))))) # (!\u4|RPM_line[1][5]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \u4|RPM_line[1][5]~regout\,
	datac => \mode~regout\,
	datad => \u4|line_counter\(0),
	combout => \u4|aline~3_combout\);

-- Location: LCCOMB_X58_Y24_N22
\u4|Mux263~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~56_combout\ = (\u4|start~regout\ & ((\u4|Mux263~55_combout\ & ((!\u4|aline~3_combout\))) # (!\u4|Mux263~55_combout\ & (!\u4|aline~2_combout\)))) # (!\u4|start~regout\ & (((\u4|Mux263~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|start~regout\,
	datab => \u4|aline~2_combout\,
	datac => \u4|Mux263~55_combout\,
	datad => \u4|aline~3_combout\,
	combout => \u4|Mux263~56_combout\);

-- Location: LCCOMB_X56_Y26_N2
\u4|Mux263~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~50_combout\ = (\u4|line_counter\(1) & (\mode~regout\ $ (((\u4|character_counter\(1)) # (!\u4|line_counter\(0)))))) # (!\u4|line_counter\(1) & (((\mode~regout\)) # (!\u4|line_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \u4|line_counter\(0),
	datac => \mode~regout\,
	datad => \u4|character_counter\(1),
	combout => \u4|Mux263~50_combout\);

-- Location: LCCOMB_X56_Y26_N26
\u4|Mux263~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~130_combout\ = ((\u4|Mux263~50_combout\) # (!\u4|start~regout\)) # (!\u4|RPM_line[1][5]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|RPM_line[1][5]~regout\,
	datac => \u4|start~regout\,
	datad => \u4|Mux263~50_combout\,
	combout => \u4|Mux263~130_combout\);

-- Location: LCCOMB_X58_Y26_N0
\u4|Mux263~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~52_combout\ = (\u4|start~regout\ & (\u4|RPM_line[1][5]~regout\ & \u4|character_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|start~regout\,
	datac => \u4|RPM_line[1][5]~regout\,
	datad => \u4|character_counter\(1),
	combout => \u4|Mux263~52_combout\);

-- Location: LCCOMB_X57_Y26_N20
\u4|aline~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~1_combout\ = (\u4|line_counter\(0) & ((\mode~regout\))) # (!\u4|line_counter\(0) & (\u4|line_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|line_counter\(0),
	datac => \u4|line_counter\(1),
	datad => \mode~regout\,
	combout => \u4|aline~1_combout\);

-- Location: LCCOMB_X56_Y23_N6
\u0|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add0~0_combout\ = \u0|omwentel99\(0) $ (VCC)
-- \u0|Add0~1\ = CARRY(\u0|omwentel99\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(0),
	datad => VCC,
	combout => \u0|Add0~0_combout\,
	cout => \u0|Add0~1\);

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

-- Location: LCCOMB_X53_Y26_N2
\u3a|a~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3a|a~0_combout\ = !\hall_sens~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hall_sens~combout\,
	combout => \u3a|a~0_combout\);

-- Location: LCCOMB_X52_Y26_N20
\u3a|ffa[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3a|ffa[2]~3_combout\ = (\BUTTON~combout\(3) & ((\u3a|ffa\(5)) # (\u3a|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3a|ffa\(5),
	datac => \u3a|LessThan0~0_combout\,
	datad => \BUTTON~combout\(3),
	combout => \u3a|ffa[2]~3_combout\);

-- Location: LCCOMB_X52_Y26_N30
\u3a|ffa[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3a|ffa[6]~1_combout\ = (\BUTTON~combout\(3) & ((\u3a|ffa[6]~0_combout\) # ((\u3a|ffa\(5)) # (\u3a|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3a|ffa[6]~0_combout\,
	datab => \u3a|ffa\(5),
	datac => \u3a|LessThan0~0_combout\,
	datad => \BUTTON~combout\(3),
	combout => \u3a|ffa[6]~1_combout\);

-- Location: LCCOMB_X51_Y26_N2
\u3a|ffa[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3a|ffa[6]~4_combout\ = (\u3a|Add0~12_combout\ & (!\u3a|ffa[2]~3_combout\ & ((\u3a|ffa\(6)) # (\u3a|ffa[6]~1_combout\)))) # (!\u3a|Add0~12_combout\ & (((\u3a|ffa\(6)) # (\u3a|ffa[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3a|Add0~12_combout\,
	datab => \u3a|ffa[2]~3_combout\,
	datac => \u3a|ffa\(6),
	datad => \u3a|ffa[6]~1_combout\,
	combout => \u3a|ffa[6]~4_combout\);

-- Location: LCFF_X51_Y26_N3
\u3a|ffa[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3a|ffa[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3a|ffa\(6));

-- Location: LCCOMB_X51_Y26_N8
\u3a|ffa[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3a|ffa[3]~7_combout\ = (\u3a|Add0~6_combout\ & ((\u3a|ffa[2]~3_combout\) # ((\u3a|ffa\(3) & !\u3a|ffa[6]~1_combout\)))) # (!\u3a|Add0~6_combout\ & (((\u3a|ffa\(3) & !\u3a|ffa[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3a|Add0~6_combout\,
	datab => \u3a|ffa[2]~3_combout\,
	datac => \u3a|ffa\(3),
	datad => \u3a|ffa[6]~1_combout\,
	combout => \u3a|ffa[3]~7_combout\);

-- Location: LCFF_X51_Y26_N9
\u3a|ffa[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3a|ffa[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3a|ffa\(3));

-- Location: LCCOMB_X51_Y26_N30
\u3a|ffa[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3a|ffa[4]~6_combout\ = (\u3a|Add0~8_combout\ & ((\u3a|ffa[2]~3_combout\) # ((\u3a|ffa\(4) & !\u3a|ffa[6]~1_combout\)))) # (!\u3a|Add0~8_combout\ & (((\u3a|ffa\(4) & !\u3a|ffa[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3a|Add0~8_combout\,
	datab => \u3a|ffa[2]~3_combout\,
	datac => \u3a|ffa\(4),
	datad => \u3a|ffa[6]~1_combout\,
	combout => \u3a|ffa[4]~6_combout\);

-- Location: LCFF_X51_Y26_N31
\u3a|ffa[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3a|ffa[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3a|ffa\(4));

-- Location: LCCOMB_X51_Y26_N0
\u3a|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3a|LessThan0~0_combout\ = (\u3a|ffa\(6)) # ((\u3a|ffa\(2) & (!\u3a|ffa\(3) & !\u3a|ffa\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3a|ffa\(2),
	datab => \u3a|ffa\(6),
	datac => \u3a|ffa\(3),
	datad => \u3a|ffa\(4),
	combout => \u3a|LessThan0~0_combout\);

-- Location: LCCOMB_X51_Y26_N28
\u3a|ffa[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3a|ffa[5]~2_combout\ = (\u3a|ffa[6]~1_combout\ & (((!\u3a|LessThan0~0_combout\ & !\u3a|ffa\(5))) # (!\u3a|Add0~10_combout\))) # (!\u3a|ffa[6]~1_combout\ & (((\u3a|ffa\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3a|Add0~10_combout\,
	datab => \u3a|LessThan0~0_combout\,
	datac => \u3a|ffa\(5),
	datad => \u3a|ffa[6]~1_combout\,
	combout => \u3a|ffa[5]~2_combout\);

-- Location: LCFF_X51_Y26_N29
\u3a|ffa[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3a|ffa[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3a|ffa\(5));

-- Location: LCCOMB_X52_Y26_N16
\u3a|output_int~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3a|output_int~1_combout\ = (!\u3a|ffa\(5) & (!\u3a|LessThan0~0_combout\ & \BUTTON~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3a|ffa\(5),
	datac => \u3a|LessThan0~0_combout\,
	datad => \BUTTON~combout\(3),
	combout => \u3a|output_int~1_combout\);

-- Location: LCFF_X53_Y26_N3
\u3a|a\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3a|a~0_combout\,
	ena => \u3a|output_int~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3a|a~regout\);

-- Location: LCCOMB_X53_Y26_N20
\u3a|output_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3a|output_int~0_combout\ = (\u3a|a~regout\ & (\u3a|output_int~regout\ & !\hall_sens~combout\)) # (!\u3a|a~regout\ & ((\u3a|output_int~regout\) # (!\hall_sens~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3a|a~regout\,
	datac => \u3a|output_int~regout\,
	datad => \hall_sens~combout\,
	combout => \u3a|output_int~0_combout\);

-- Location: LCFF_X53_Y26_N21
\u3a|output_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3a|output_int~0_combout\,
	ena => \u3a|output_int~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3a|output_int~regout\);

-- Location: LCCOMB_X53_Y23_N8
\u3a|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3a|output~0_combout\ = !\u3a|output_int~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3a|output_int~regout\,
	combout => \u3a|output~0_combout\);

-- Location: LCFF_X53_Y23_N9
\u3a|output\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3a|output~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3a|output~regout\);

-- Location: LCFF_X53_Y23_N19
\u0|hal_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u3a|output~regout\,
	sload => VCC,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|hal_state~regout\);

-- Location: LCCOMB_X53_Y23_N4
\u0|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|process_0~1_combout\ = (!\u0|hal_state~regout\ & (\u3a|output~regout\ & !\start~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|hal_state~regout\,
	datac => \u3a|output~regout\,
	datad => \start~regout\,
	combout => \u0|process_0~1_combout\);

-- Location: LCCOMB_X57_Y23_N28
\u0|omwentel99~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel99~3_combout\ = (\u0|Add0~4_combout\ & (\u0|process_0~1_combout\ & ((\u0|Equal0~0_combout\) # (\u0|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add0~4_combout\,
	datab => \u0|process_0~1_combout\,
	datac => \u0|Equal0~0_combout\,
	datad => \u0|Equal0~1_combout\,
	combout => \u0|omwentel99~3_combout\);

-- Location: LCCOMB_X53_Y23_N14
\u0|omwentel99[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel99[3]~0_combout\ = ((!\u0|hal_state~regout\ & (\u3a|output~regout\ & !\start~regout\))) # (!\u3c|long~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long~regout\,
	datab => \u0|hal_state~regout\,
	datac => \u3a|output~regout\,
	datad => \start~regout\,
	combout => \u0|omwentel99[3]~0_combout\);

-- Location: LCFF_X57_Y23_N29
\u0|omwentel99[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|omwentel99~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|omwentel99[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|omwentel99\(2));

-- Location: LCCOMB_X56_Y23_N8
\u0|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add0~2_combout\ = (\u0|omwentel99\(1) & (!\u0|Add0~1\)) # (!\u0|omwentel99\(1) & ((\u0|Add0~1\) # (GND)))
-- \u0|Add0~3\ = CARRY((!\u0|Add0~1\) # (!\u0|omwentel99\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|omwentel99\(1),
	datad => VCC,
	cin => \u0|Add0~1\,
	combout => \u0|Add0~2_combout\,
	cout => \u0|Add0~3\);

-- Location: LCCOMB_X56_Y23_N10
\u0|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add0~4_combout\ = (\u0|omwentel99\(2) & (\u0|Add0~3\ $ (GND))) # (!\u0|omwentel99\(2) & (!\u0|Add0~3\ & VCC))
-- \u0|Add0~5\ = CARRY((\u0|omwentel99\(2) & !\u0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|omwentel99\(2),
	datad => VCC,
	cin => \u0|Add0~3\,
	combout => \u0|Add0~4_combout\,
	cout => \u0|Add0~5\);

-- Location: LCCOMB_X56_Y23_N12
\u0|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add0~6_combout\ = (\u0|omwentel99\(3) & (!\u0|Add0~5\)) # (!\u0|omwentel99\(3) & ((\u0|Add0~5\) # (GND)))
-- \u0|Add0~7\ = CARRY((!\u0|Add0~5\) # (!\u0|omwentel99\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|omwentel99\(3),
	datad => VCC,
	cin => \u0|Add0~5\,
	combout => \u0|Add0~6_combout\,
	cout => \u0|Add0~7\);

-- Location: LCCOMB_X56_Y23_N0
\u0|omwentel99~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel99~4_combout\ = (\u0|process_0~1_combout\ & (\u0|Add0~6_combout\ & ((\u0|Equal0~1_combout\) # (\u0|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|process_0~1_combout\,
	datab => \u0|Equal0~1_combout\,
	datac => \u0|Equal0~0_combout\,
	datad => \u0|Add0~6_combout\,
	combout => \u0|omwentel99~4_combout\);

-- Location: LCFF_X56_Y23_N1
\u0|omwentel99[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|omwentel99~4_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|omwentel99[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|omwentel99\(3));

-- Location: LCCOMB_X56_Y23_N14
\u0|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add0~8_combout\ = (\u0|omwentel99\(4) & (\u0|Add0~7\ $ (GND))) # (!\u0|omwentel99\(4) & (!\u0|Add0~7\ & VCC))
-- \u0|Add0~9\ = CARRY((\u0|omwentel99\(4) & !\u0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(4),
	datad => VCC,
	cin => \u0|Add0~7\,
	combout => \u0|Add0~8_combout\,
	cout => \u0|Add0~9\);

-- Location: LCCOMB_X57_Y23_N8
\u0|omwentel99~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel99~6_combout\ = (\u0|process_0~1_combout\ & (\u0|Add0~14_combout\ & ((\u0|Equal0~0_combout\) # (\u0|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~0_combout\,
	datab => \u0|process_0~1_combout\,
	datac => \u0|Add0~14_combout\,
	datad => \u0|Equal0~1_combout\,
	combout => \u0|omwentel99~6_combout\);

-- Location: LCFF_X57_Y23_N9
\u0|omwentel99[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|omwentel99~6_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|omwentel99[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|omwentel99\(7));

-- Location: LCCOMB_X56_Y23_N16
\u0|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add0~10_combout\ = (\u0|omwentel99\(5) & (!\u0|Add0~9\)) # (!\u0|omwentel99\(5) & ((\u0|Add0~9\) # (GND)))
-- \u0|Add0~11\ = CARRY((!\u0|Add0~9\) # (!\u0|omwentel99\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|omwentel99\(5),
	datad => VCC,
	cin => \u0|Add0~9\,
	combout => \u0|Add0~10_combout\,
	cout => \u0|Add0~11\);

-- Location: LCCOMB_X57_Y23_N18
\u0|omwentel99~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel99~7_combout\ = (\u0|process_0~1_combout\ & (\u0|Add0~10_combout\ & ((\u0|Equal0~0_combout\) # (\u0|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~0_combout\,
	datab => \u0|Equal0~1_combout\,
	datac => \u0|process_0~1_combout\,
	datad => \u0|Add0~10_combout\,
	combout => \u0|omwentel99~7_combout\);

-- Location: LCFF_X57_Y23_N19
\u0|omwentel99[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|omwentel99~7_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|omwentel99[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|omwentel99\(5));

-- Location: LCCOMB_X56_Y23_N18
\u0|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add0~12_combout\ = (\u0|omwentel99\(6) & (\u0|Add0~11\ $ (GND))) # (!\u0|omwentel99\(6) & (!\u0|Add0~11\ & VCC))
-- \u0|Add0~13\ = CARRY((\u0|omwentel99\(6) & !\u0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|omwentel99\(6),
	datad => VCC,
	cin => \u0|Add0~11\,
	combout => \u0|Add0~12_combout\,
	cout => \u0|Add0~13\);

-- Location: LCCOMB_X57_Y23_N22
\u0|omwentel99~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel99~5_combout\ = (\u0|Add0~12_combout\ & (\u0|process_0~1_combout\ & ((\u0|Equal0~0_combout\) # (\u0|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~0_combout\,
	datab => \u0|Add0~12_combout\,
	datac => \u0|process_0~1_combout\,
	datad => \u0|Equal0~1_combout\,
	combout => \u0|omwentel99~5_combout\);

-- Location: LCFF_X57_Y23_N23
\u0|omwentel99[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|omwentel99~5_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|omwentel99[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|omwentel99\(6));

-- Location: LCCOMB_X56_Y23_N20
\u0|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add0~14_combout\ = \u0|omwentel99\(7) $ (\u0|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|omwentel99\(7),
	cin => \u0|Add0~13\,
	combout => \u0|Add0~14_combout\);

-- Location: LCCOMB_X56_Y23_N22
\u0|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal0~1_combout\ = ((\u0|Add0~8_combout\) # ((\u0|Add0~14_combout\) # (!\u0|Add0~12_combout\))) # (!\u0|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add0~10_combout\,
	datab => \u0|Add0~8_combout\,
	datac => \u0|Add0~14_combout\,
	datad => \u0|Add0~12_combout\,
	combout => \u0|Equal0~1_combout\);

-- Location: LCCOMB_X59_Y23_N22
\u0|omwentel99~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel99~2_combout\ = (\u0|Add0~2_combout\ & (\u0|process_0~1_combout\ & ((\u0|Equal0~1_combout\) # (\u0|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add0~2_combout\,
	datab => \u0|process_0~1_combout\,
	datac => \u0|Equal0~1_combout\,
	datad => \u0|Equal0~0_combout\,
	combout => \u0|omwentel99~2_combout\);

-- Location: LCFF_X59_Y23_N23
\u0|omwentel99[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|omwentel99~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|omwentel99[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|omwentel99\(1));

-- Location: LCCOMB_X56_Y23_N24
\u0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal0~0_combout\ = (\u0|Add0~6_combout\) # ((\u0|Add0~0_combout\) # ((\u0|Add0~2_combout\) # (!\u0|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add0~6_combout\,
	datab => \u0|Add0~0_combout\,
	datac => \u0|Add0~2_combout\,
	datad => \u0|Add0~4_combout\,
	combout => \u0|Equal0~0_combout\);

-- Location: LCCOMB_X59_Y23_N8
\u0|omwentel99~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel99~9_combout\ = (\u0|Add0~0_combout\ & (\u0|process_0~1_combout\ & ((\u0|Equal0~1_combout\) # (\u0|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~1_combout\,
	datab => \u0|Add0~0_combout\,
	datac => \u0|process_0~1_combout\,
	datad => \u0|Equal0~0_combout\,
	combout => \u0|omwentel99~9_combout\);

-- Location: LCFF_X59_Y23_N9
\u0|omwentel99[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|omwentel99~9_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|omwentel99[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|omwentel99\(0));

-- Location: LCFF_X59_Y23_N7
\u4|totale_omw_line[16][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u0|omwentel99\(0),
	sload => VCC,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[16][0]~regout\);

-- Location: LCCOMB_X59_Y23_N6
\u4|Mux263~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~51_combout\ = (!\u4|line_counter\(1) & (\u4|start~regout\ & (\u4|totale_omw_line[16][0]~regout\ & !\u4|line_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \u4|start~regout\,
	datac => \u4|totale_omw_line[16][0]~regout\,
	datad => \u4|line_counter\(0),
	combout => \u4|Mux263~51_combout\);

-- Location: LCCOMB_X58_Y26_N10
\u4|Mux263~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~53_combout\ = (\u4|Mux263~33_combout\ & ((\u4|Mux263~51_combout\) # ((\u4|Mux263~52_combout\ & !\u4|aline~1_combout\)))) # (!\u4|Mux263~33_combout\ & (\u4|Mux263~52_combout\ & (!\u4|aline~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~33_combout\,
	datab => \u4|Mux263~52_combout\,
	datac => \u4|aline~1_combout\,
	datad => \u4|Mux263~51_combout\,
	combout => \u4|Mux263~53_combout\);

-- Location: LCCOMB_X54_Y26_N10
\u4|Mux263~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~54_combout\ = (\u4|character_counter\(2) & (((!\u4|character_counter\(0))))) # (!\u4|character_counter\(2) & ((\u4|character_counter\(0) & ((\u4|Mux263~53_combout\))) # (!\u4|character_counter\(0) & (!\u4|Mux263~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|Mux263~130_combout\,
	datac => \u4|character_counter\(0),
	datad => \u4|Mux263~53_combout\,
	combout => \u4|Mux263~54_combout\);

-- Location: LCCOMB_X54_Y26_N24
\u4|Mux263~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~57_combout\ = (\u4|character_counter\(2) & ((\u4|Mux263~54_combout\ & ((\u4|Mux263~56_combout\))) # (!\u4|Mux263~54_combout\ & (\u4|Mux263~129_combout\)))) # (!\u4|character_counter\(2) & (((\u4|Mux263~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|Mux263~129_combout\,
	datac => \u4|Mux263~56_combout\,
	datad => \u4|Mux263~54_combout\,
	combout => \u4|Mux263~57_combout\);

-- Location: LCCOMB_X54_Y26_N4
\u4|Mux263~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~37_combout\ = (\u4|character_counter\(1) & (\u4|line_counter\(1) & (!\u4|start~regout\ & !\u4|line_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|line_counter\(1),
	datac => \u4|start~regout\,
	datad => \u4|line_counter\(0),
	combout => \u4|Mux263~37_combout\);

-- Location: LCCOMB_X58_Y27_N14
\u4|Mux265~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux265~0_combout\ = (\u4|line_counter\(2)) # (!\u4|line_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|line_counter\(2),
	datad => \u4|line_counter\(0),
	combout => \u4|Mux265~0_combout\);

-- Location: LCCOMB_X54_Y26_N18
\u4|Mux263~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~38_combout\ = (\u4|start~regout\) # ((\u4|character_counter\(1) & ((\u4|Mux265~0_combout\))) # (!\u4|character_counter\(1) & (\u4|Mux50~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|start~regout\,
	datac => \u4|Mux50~0_combout\,
	datad => \u4|Mux265~0_combout\,
	combout => \u4|Mux263~38_combout\);

-- Location: LCCOMB_X54_Y26_N8
\u4|Mux263~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~39_combout\ = (\u4|character_counter\(2) & (!\u4|character_counter\(0))) # (!\u4|character_counter\(2) & ((\u4|character_counter\(0) & ((!\u4|Mux263~38_combout\))) # (!\u4|character_counter\(0) & (\u4|Mux263~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|character_counter\(0),
	datac => \u4|Mux263~37_combout\,
	datad => \u4|Mux263~38_combout\,
	combout => \u4|Mux263~39_combout\);

-- Location: LCCOMB_X56_Y24_N10
\u0|omwentel255[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel255[0]~8_combout\ = \u0|omwentel255\(0) $ (VCC)
-- \u0|omwentel255[0]~9\ = CARRY(\u0|omwentel255\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(0),
	datad => VCC,
	combout => \u0|omwentel255[0]~8_combout\,
	cout => \u0|omwentel255[0]~9\);

-- Location: LCCOMB_X56_Y24_N14
\u0|omwentel255[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel255[2]~12_combout\ = (\u0|omwentel255\(2) & (\u0|omwentel255[1]~11\ $ (GND))) # (!\u0|omwentel255\(2) & (!\u0|omwentel255[1]~11\ & VCC))
-- \u0|omwentel255[2]~13\ = CARRY((\u0|omwentel255\(2) & !\u0|omwentel255[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|omwentel255\(2),
	datad => VCC,
	cin => \u0|omwentel255[1]~11\,
	combout => \u0|omwentel255[2]~12_combout\,
	cout => \u0|omwentel255[2]~13\);

-- Location: LCCOMB_X56_Y24_N2
\u0|omwentel255[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel255[6]~22_combout\ = (\u0|Equal0~0_combout\) # ((\u0|Equal0~1_combout\) # (!\u0|process_0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~0_combout\,
	datab => \u0|process_0~1_combout\,
	datad => \u0|Equal0~1_combout\,
	combout => \u0|omwentel255[6]~22_combout\);

-- Location: LCCOMB_X56_Y24_N16
\u0|omwentel255[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel255[3]~14_combout\ = (\u0|omwentel255\(3) & (!\u0|omwentel255[2]~13\)) # (!\u0|omwentel255\(3) & ((\u0|omwentel255[2]~13\) # (GND)))
-- \u0|omwentel255[3]~15\ = CARRY((!\u0|omwentel255[2]~13\) # (!\u0|omwentel255\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(3),
	datad => VCC,
	cin => \u0|omwentel255[2]~13\,
	combout => \u0|omwentel255[3]~14_combout\,
	cout => \u0|omwentel255[3]~15\);

-- Location: LCCOMB_X56_Y24_N18
\u0|omwentel255[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel255[4]~16_combout\ = (\u0|omwentel255\(4) & (\u0|omwentel255[3]~15\ $ (GND))) # (!\u0|omwentel255\(4) & (!\u0|omwentel255[3]~15\ & VCC))
-- \u0|omwentel255[4]~17\ = CARRY((\u0|omwentel255\(4) & !\u0|omwentel255[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(4),
	datad => VCC,
	cin => \u0|omwentel255[3]~15\,
	combout => \u0|omwentel255[4]~16_combout\,
	cout => \u0|omwentel255[4]~17\);

-- Location: LCCOMB_X56_Y24_N20
\u0|omwentel255[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel255[5]~18_combout\ = (\u0|omwentel255\(5) & (!\u0|omwentel255[4]~17\)) # (!\u0|omwentel255\(5) & ((\u0|omwentel255[4]~17\) # (GND)))
-- \u0|omwentel255[5]~19\ = CARRY((!\u0|omwentel255[4]~17\) # (!\u0|omwentel255\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(5),
	datad => VCC,
	cin => \u0|omwentel255[4]~17\,
	combout => \u0|omwentel255[5]~18_combout\,
	cout => \u0|omwentel255[5]~19\);

-- Location: LCFF_X56_Y24_N21
\u0|omwentel255[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|omwentel255[5]~18_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u0|omwentel255[6]~22_combout\,
	ena => \u0|omwentel255[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|omwentel255\(5));

-- Location: LCFF_X56_Y24_N19
\u0|omwentel255[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|omwentel255[4]~16_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u0|omwentel255[6]~22_combout\,
	ena => \u0|omwentel255[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|omwentel255\(4));

-- Location: LCCOMB_X56_Y25_N26
\u0|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal1~0_combout\ = (\u0|omwentel255\(3) & (\u0|omwentel255\(5) & (\u0|omwentel255\(2) & \u0|omwentel255\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(3),
	datab => \u0|omwentel255\(5),
	datac => \u0|omwentel255\(2),
	datad => \u0|omwentel255\(4),
	combout => \u0|Equal1~0_combout\);

-- Location: LCCOMB_X56_Y24_N22
\u0|omwentel255[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel255[6]~20_combout\ = (\u0|omwentel255\(6) & (\u0|omwentel255[5]~19\ $ (GND))) # (!\u0|omwentel255\(6) & (!\u0|omwentel255[5]~19\ & VCC))
-- \u0|omwentel255[6]~21\ = CARRY((\u0|omwentel255\(6) & !\u0|omwentel255[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(6),
	datad => VCC,
	cin => \u0|omwentel255[5]~19\,
	combout => \u0|omwentel255[6]~20_combout\,
	cout => \u0|omwentel255[6]~21\);

-- Location: LCFF_X56_Y24_N23
\u0|omwentel255[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|omwentel255[6]~20_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u0|omwentel255[6]~22_combout\,
	ena => \u0|omwentel255[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|omwentel255\(6));

-- Location: LCFF_X56_Y25_N25
\u0|omwentel255[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|omwentel255[0]~8_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u0|omwentel255[6]~22_combout\,
	sload => VCC,
	ena => \u0|omwentel255[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|omwentel255\(0));

-- Location: LCCOMB_X56_Y24_N24
\u0|omwentel255[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel255[7]~24_combout\ = \u0|omwentel255[6]~21\ $ (\u0|omwentel255\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u0|omwentel255\(7),
	cin => \u0|omwentel255[6]~21\,
	combout => \u0|omwentel255[7]~24_combout\);

-- Location: LCFF_X56_Y24_N25
\u0|omwentel255[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|omwentel255[7]~24_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u0|omwentel255[6]~22_combout\,
	ena => \u0|omwentel255[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|omwentel255\(7));

-- Location: LCCOMB_X56_Y25_N20
\u0|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal1~1_combout\ = (\u0|omwentel255\(1) & (\u0|omwentel255\(6) & (\u0|omwentel255\(0) & \u0|omwentel255\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(1),
	datab => \u0|omwentel255\(6),
	datac => \u0|omwentel255\(0),
	datad => \u0|omwentel255\(7),
	combout => \u0|Equal1~1_combout\);

-- Location: LCCOMB_X56_Y25_N28
\u0|omwentel99[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel99[3]~1_combout\ = (\u0|process_0~1_combout\ & ((\u0|Equal0~0_combout\) # (\u0|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|process_0~1_combout\,
	datac => \u0|Equal0~0_combout\,
	datad => \u0|Equal0~1_combout\,
	combout => \u0|omwentel99[3]~1_combout\);

-- Location: LCCOMB_X56_Y25_N18
\u0|omwentel255[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel255[6]~23_combout\ = (\u0|omwentel99[3]~0_combout\ & (((\u0|Equal1~0_combout\ & \u0|Equal1~1_combout\)) # (!\u0|omwentel99[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99[3]~0_combout\,
	datab => \u0|Equal1~0_combout\,
	datac => \u0|Equal1~1_combout\,
	datad => \u0|omwentel99[3]~1_combout\,
	combout => \u0|omwentel255[6]~23_combout\);

-- Location: LCFF_X56_Y24_N15
\u0|omwentel255[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|omwentel255[2]~12_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u0|omwentel255[6]~22_combout\,
	ena => \u0|omwentel255[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|omwentel255\(2));

-- Location: LCFF_X56_Y24_N17
\u0|omwentel255[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|omwentel255[3]~14_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u0|omwentel255[6]~22_combout\,
	ena => \u0|omwentel255[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|omwentel255\(3));

-- Location: LCCOMB_X56_Y24_N4
\u4|totale_omw_2bcd|u1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u1|Mux1~0_combout\ = (\u0|omwentel255\(6) & (!\u0|omwentel255\(4) & (\u0|omwentel255\(5) $ (!\u0|omwentel255\(7))))) # (!\u0|omwentel255\(6) & (!\u0|omwentel255\(5) & (\u0|omwentel255\(7) & \u0|omwentel255\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(5),
	datab => \u0|omwentel255\(6),
	datac => \u0|omwentel255\(7),
	datad => \u0|omwentel255\(4),
	combout => \u4|totale_omw_2bcd|u1|Mux1~0_combout\);

-- Location: LCCOMB_X56_Y24_N8
\u4|totale_omw_2bcd|u1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u1|Mux3~0_combout\ = (\u0|omwentel255\(6) & ((\u0|omwentel255\(5) & (!\u0|omwentel255\(7) & !\u0|omwentel255\(4))) # (!\u0|omwentel255\(5) & (\u0|omwentel255\(7) & \u0|omwentel255\(4))))) # (!\u0|omwentel255\(6) & (\u0|omwentel255\(4) 
-- $ (((!\u0|omwentel255\(5) & \u0|omwentel255\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(5),
	datab => \u0|omwentel255\(6),
	datac => \u0|omwentel255\(7),
	datad => \u0|omwentel255\(4),
	combout => \u4|totale_omw_2bcd|u1|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y24_N8
\u4|totale_omw_2bcd|u2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u2|Mux3~0_combout\ = (\u4|totale_omw_2bcd|u1|Mux3~0_combout\ & (!\u4|totale_omw_2bcd|u1|Mux1~0_combout\ & (\u4|totale_omw_2bcd|u1|Mux2~0_combout\ $ (\u0|omwentel255\(3))))) # (!\u4|totale_omw_2bcd|u1|Mux3~0_combout\ & 
-- (!\u4|totale_omw_2bcd|u1|Mux2~0_combout\ & (\u0|omwentel255\(3) $ (\u4|totale_omw_2bcd|u1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_2bcd|u1|Mux2~0_combout\,
	datab => \u0|omwentel255\(3),
	datac => \u4|totale_omw_2bcd|u1|Mux1~0_combout\,
	datad => \u4|totale_omw_2bcd|u1|Mux3~0_combout\,
	combout => \u4|totale_omw_2bcd|u2|Mux3~0_combout\);

-- Location: LCCOMB_X56_Y24_N30
\u4|totale_omw_2bcd|u1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u1|Mux2~0_combout\ = (\u0|omwentel255\(5) & (!\u0|omwentel255\(7) & ((\u0|omwentel255\(4)) # (!\u0|omwentel255\(6))))) # (!\u0|omwentel255\(5) & (\u0|omwentel255\(7) & ((\u0|omwentel255\(6)) # (!\u0|omwentel255\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(5),
	datab => \u0|omwentel255\(6),
	datac => \u0|omwentel255\(7),
	datad => \u0|omwentel255\(4),
	combout => \u4|totale_omw_2bcd|u1|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y24_N14
\u4|totale_omw_2bcd|u2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u2|Mux2~0_combout\ = (\u0|omwentel255\(3) & (!\u4|totale_omw_2bcd|u1|Mux1~0_combout\ & ((\u4|totale_omw_2bcd|u1|Mux3~0_combout\)))) # (!\u0|omwentel255\(3) & (!\u4|totale_omw_2bcd|u1|Mux2~0_combout\ & 
-- (\u4|totale_omw_2bcd|u1|Mux1~0_combout\ $ (\u4|totale_omw_2bcd|u1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(3),
	datab => \u4|totale_omw_2bcd|u1|Mux1~0_combout\,
	datac => \u4|totale_omw_2bcd|u1|Mux2~0_combout\,
	datad => \u4|totale_omw_2bcd|u1|Mux3~0_combout\,
	combout => \u4|totale_omw_2bcd|u2|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y24_N0
\u4|totale_omw_2bcd|u2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u2|Mux1~0_combout\ = (!\u4|totale_omw_2bcd|u1|Mux3~0_combout\ & ((\u4|totale_omw_2bcd|u1|Mux2~0_combout\ & (!\u0|omwentel255\(3) & !\u4|totale_omw_2bcd|u1|Mux1~0_combout\)) # (!\u4|totale_omw_2bcd|u1|Mux2~0_combout\ & 
-- (\u0|omwentel255\(3) & \u4|totale_omw_2bcd|u1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_2bcd|u1|Mux2~0_combout\,
	datab => \u0|omwentel255\(3),
	datac => \u4|totale_omw_2bcd|u1|Mux1~0_combout\,
	datad => \u4|totale_omw_2bcd|u1|Mux3~0_combout\,
	combout => \u4|totale_omw_2bcd|u2|Mux1~0_combout\);

-- Location: LCCOMB_X57_Y24_N22
\u4|totale_omw_2bcd|u3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u3|Mux2~0_combout\ = (\u0|omwentel255\(2) & (\u4|totale_omw_2bcd|u2|Mux3~0_combout\ & ((!\u4|totale_omw_2bcd|u2|Mux1~0_combout\)))) # (!\u0|omwentel255\(2) & (!\u4|totale_omw_2bcd|u2|Mux2~0_combout\ & 
-- (\u4|totale_omw_2bcd|u2|Mux3~0_combout\ $ (\u4|totale_omw_2bcd|u2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(2),
	datab => \u4|totale_omw_2bcd|u2|Mux3~0_combout\,
	datac => \u4|totale_omw_2bcd|u2|Mux2~0_combout\,
	datad => \u4|totale_omw_2bcd|u2|Mux1~0_combout\,
	combout => \u4|totale_omw_2bcd|u3|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y24_N20
\u4|totale_omw_2bcd|u3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u3|Mux3~0_combout\ = (\u4|totale_omw_2bcd|u2|Mux3~0_combout\ & (!\u4|totale_omw_2bcd|u2|Mux1~0_combout\ & (\u0|omwentel255\(2) $ (\u4|totale_omw_2bcd|u2|Mux2~0_combout\)))) # (!\u4|totale_omw_2bcd|u2|Mux3~0_combout\ & 
-- (!\u4|totale_omw_2bcd|u2|Mux2~0_combout\ & (\u0|omwentel255\(2) $ (\u4|totale_omw_2bcd|u2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(2),
	datab => \u4|totale_omw_2bcd|u2|Mux2~0_combout\,
	datac => \u4|totale_omw_2bcd|u2|Mux3~0_combout\,
	datad => \u4|totale_omw_2bcd|u2|Mux1~0_combout\,
	combout => \u4|totale_omw_2bcd|u3|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y24_N28
\u4|totale_omw_2bcd|u3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u3|Mux1~0_combout\ = (!\u4|totale_omw_2bcd|u2|Mux3~0_combout\ & ((\u0|omwentel255\(2) & (!\u4|totale_omw_2bcd|u2|Mux2~0_combout\ & \u4|totale_omw_2bcd|u2|Mux1~0_combout\)) # (!\u0|omwentel255\(2) & 
-- (\u4|totale_omw_2bcd|u2|Mux2~0_combout\ & !\u4|totale_omw_2bcd|u2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(2),
	datab => \u4|totale_omw_2bcd|u2|Mux2~0_combout\,
	datac => \u4|totale_omw_2bcd|u2|Mux3~0_combout\,
	datad => \u4|totale_omw_2bcd|u2|Mux1~0_combout\,
	combout => \u4|totale_omw_2bcd|u3|Mux1~0_combout\);

-- Location: LCCOMB_X57_Y24_N2
\u4|totale_omw_2bcd|u4|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u4|Mux0~0_combout\ = (\u4|totale_omw_2bcd|u3|Mux1~0_combout\) # ((\u4|totale_omw_2bcd|u3|Mux2~0_combout\ & ((\u0|omwentel255\(1)) # (\u4|totale_omw_2bcd|u3|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(1),
	datab => \u4|totale_omw_2bcd|u3|Mux2~0_combout\,
	datac => \u4|totale_omw_2bcd|u3|Mux3~0_combout\,
	datad => \u4|totale_omw_2bcd|u3|Mux1~0_combout\,
	combout => \u4|totale_omw_2bcd|u4|Mux0~0_combout\);

-- Location: LCFF_X57_Y24_N3
\u4|totale_omw_line[13][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_2bcd|u4|Mux0~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[13][0]~regout\);

-- Location: LCCOMB_X57_Y26_N4
\u4|Mux263~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~42_combout\ = (!\u4|line_counter\(0) & (!\u4|line_counter\(1) & !\mode~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|line_counter\(0),
	datac => \u4|line_counter\(1),
	datad => \mode~regout\,
	combout => \u4|Mux263~42_combout\);

-- Location: LCCOMB_X52_Y22_N6
\u8|gem_RPM_int[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|gem_RPM_int[0]~8_combout\ = \u8|gem_RPM_int\(0) $ (VCC)
-- \u8|gem_RPM_int[0]~9\ = CARRY(\u8|gem_RPM_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|gem_RPM_int\(0),
	datad => VCC,
	combout => \u8|gem_RPM_int[0]~8_combout\,
	cout => \u8|gem_RPM_int[0]~9\);

-- Location: LCCOMB_X52_Y22_N8
\u8|gem_RPM_int[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|gem_RPM_int[1]~11_combout\ = (\u8|gem_RPM_int\(1) & (!\u8|gem_RPM_int[0]~9\)) # (!\u8|gem_RPM_int\(1) & ((\u8|gem_RPM_int[0]~9\) # (GND)))
-- \u8|gem_RPM_int[1]~12\ = CARRY((!\u8|gem_RPM_int[0]~9\) # (!\u8|gem_RPM_int\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|gem_RPM_int\(1),
	datad => VCC,
	cin => \u8|gem_RPM_int[0]~9\,
	combout => \u8|gem_RPM_int[1]~11_combout\,
	cout => \u8|gem_RPM_int[1]~12\);

-- Location: LCCOMB_X52_Y23_N4
\u8|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|Add0~2_combout\ = (\u8|wait_gem_RPM\(1) & (!\u8|Add0~1\)) # (!\u8|wait_gem_RPM\(1) & ((\u8|Add0~1\) # (GND)))
-- \u8|Add0~3\ = CARRY((!\u8|Add0~1\) # (!\u8|wait_gem_RPM\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|wait_gem_RPM\(1),
	datad => VCC,
	cin => \u8|Add0~1\,
	combout => \u8|Add0~2_combout\,
	cout => \u8|Add0~3\);

-- Location: LCFF_X52_Y23_N5
\u8|wait_gem_RPM[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|Add0~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|wait_gem_RPM\(1));

-- Location: LCCOMB_X52_Y23_N8
\u8|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|Add0~6_combout\ = (\u8|wait_gem_RPM\(3) & (!\u8|Add0~5\)) # (!\u8|wait_gem_RPM\(3) & ((\u8|Add0~5\) # (GND)))
-- \u8|Add0~7\ = CARRY((!\u8|Add0~5\) # (!\u8|wait_gem_RPM\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|wait_gem_RPM\(3),
	datad => VCC,
	cin => \u8|Add0~5\,
	combout => \u8|Add0~6_combout\,
	cout => \u8|Add0~7\);

-- Location: LCFF_X52_Y23_N9
\u8|wait_gem_RPM[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|Add0~6_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|wait_gem_RPM\(3));

-- Location: LCCOMB_X52_Y23_N10
\u8|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|Add0~8_combout\ = (\u8|wait_gem_RPM\(4) & (\u8|Add0~7\ $ (GND))) # (!\u8|wait_gem_RPM\(4) & (!\u8|Add0~7\ & VCC))
-- \u8|Add0~9\ = CARRY((\u8|wait_gem_RPM\(4) & !\u8|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|wait_gem_RPM\(4),
	datad => VCC,
	cin => \u8|Add0~7\,
	combout => \u8|Add0~8_combout\,
	cout => \u8|Add0~9\);

-- Location: LCCOMB_X52_Y23_N0
\u8|wait_gem_RPM~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|wait_gem_RPM~4_combout\ = (!\u8|Equal0~4_combout\ & \u8|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~4_combout\,
	datad => \u8|Add0~8_combout\,
	combout => \u8|wait_gem_RPM~4_combout\);

-- Location: LCFF_X52_Y23_N1
\u8|wait_gem_RPM[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|wait_gem_RPM~4_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|wait_gem_RPM\(4));

-- Location: LCCOMB_X52_Y23_N14
\u8|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|Add0~12_combout\ = (\u8|wait_gem_RPM\(6) & (\u8|Add0~11\ $ (GND))) # (!\u8|wait_gem_RPM\(6) & (!\u8|Add0~11\ & VCC))
-- \u8|Add0~13\ = CARRY((\u8|wait_gem_RPM\(6) & !\u8|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|wait_gem_RPM\(6),
	datad => VCC,
	cin => \u8|Add0~11\,
	combout => \u8|Add0~12_combout\,
	cout => \u8|Add0~13\);

-- Location: LCFF_X52_Y23_N15
\u8|wait_gem_RPM[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|Add0~12_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|wait_gem_RPM\(6));

-- Location: LCCOMB_X52_Y23_N16
\u8|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|Add0~14_combout\ = (\u8|wait_gem_RPM\(7) & (!\u8|Add0~13\)) # (!\u8|wait_gem_RPM\(7) & ((\u8|Add0~13\) # (GND)))
-- \u8|Add0~15\ = CARRY((!\u8|Add0~13\) # (!\u8|wait_gem_RPM\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|wait_gem_RPM\(7),
	datad => VCC,
	cin => \u8|Add0~13\,
	combout => \u8|Add0~14_combout\,
	cout => \u8|Add0~15\);

-- Location: LCFF_X52_Y23_N17
\u8|wait_gem_RPM[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|Add0~14_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|wait_gem_RPM\(7));

-- Location: LCCOMB_X52_Y23_N18
\u8|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|Add0~16_combout\ = (\u8|wait_gem_RPM\(8) & (\u8|Add0~15\ $ (GND))) # (!\u8|wait_gem_RPM\(8) & (!\u8|Add0~15\ & VCC))
-- \u8|Add0~17\ = CARRY((\u8|wait_gem_RPM\(8) & !\u8|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|wait_gem_RPM\(8),
	datad => VCC,
	cin => \u8|Add0~15\,
	combout => \u8|Add0~16_combout\,
	cout => \u8|Add0~17\);

-- Location: LCCOMB_X53_Y23_N22
\u8|wait_gem_RPM~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|wait_gem_RPM~3_combout\ = (!\u8|Equal0~4_combout\ & \u8|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~4_combout\,
	datad => \u8|Add0~16_combout\,
	combout => \u8|wait_gem_RPM~3_combout\);

-- Location: LCFF_X53_Y23_N23
\u8|wait_gem_RPM[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|wait_gem_RPM~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|wait_gem_RPM\(8));

-- Location: LCCOMB_X52_Y23_N20
\u8|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|Add0~18_combout\ = (\u8|wait_gem_RPM\(9) & (!\u8|Add0~17\)) # (!\u8|wait_gem_RPM\(9) & ((\u8|Add0~17\) # (GND)))
-- \u8|Add0~19\ = CARRY((!\u8|Add0~17\) # (!\u8|wait_gem_RPM\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|wait_gem_RPM\(9),
	datad => VCC,
	cin => \u8|Add0~17\,
	combout => \u8|Add0~18_combout\,
	cout => \u8|Add0~19\);

-- Location: LCCOMB_X53_Y23_N24
\u8|wait_gem_RPM~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|wait_gem_RPM~2_combout\ = (\u8|Add0~18_combout\ & !\u8|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u8|Add0~18_combout\,
	datad => \u8|Equal0~4_combout\,
	combout => \u8|wait_gem_RPM~2_combout\);

-- Location: LCFF_X53_Y23_N25
\u8|wait_gem_RPM[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|wait_gem_RPM~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|wait_gem_RPM\(9));

-- Location: LCCOMB_X53_Y23_N0
\u8|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|Equal0~1_combout\ = (!\u8|wait_gem_RPM\(6) & (!\u8|wait_gem_RPM\(7) & (\u8|wait_gem_RPM\(9) & \u8|wait_gem_RPM\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|wait_gem_RPM\(6),
	datab => \u8|wait_gem_RPM\(7),
	datac => \u8|wait_gem_RPM\(9),
	datad => \u8|wait_gem_RPM\(8),
	combout => \u8|Equal0~1_combout\);

-- Location: LCCOMB_X53_Y23_N26
\u8|wait_gem_RPM~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|wait_gem_RPM~5_combout\ = (\u8|Add0~0_combout\ & !\u8|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Add0~0_combout\,
	datad => \u8|Equal0~4_combout\,
	combout => \u8|wait_gem_RPM~5_combout\);

-- Location: LCFF_X53_Y23_N27
\u8|wait_gem_RPM[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|wait_gem_RPM~5_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|wait_gem_RPM\(0));

-- Location: LCCOMB_X53_Y23_N20
\u8|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|Equal0~3_combout\ = (!\u8|wait_gem_RPM\(1) & !\u8|wait_gem_RPM\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u8|wait_gem_RPM\(1),
	datad => \u8|wait_gem_RPM\(0),
	combout => \u8|Equal0~3_combout\);

-- Location: LCCOMB_X52_Y23_N22
\u8|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|Add0~20_combout\ = (\u8|wait_gem_RPM\(10) & (\u8|Add0~19\ $ (GND))) # (!\u8|wait_gem_RPM\(10) & (!\u8|Add0~19\ & VCC))
-- \u8|Add0~21\ = CARRY((\u8|wait_gem_RPM\(10) & !\u8|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|wait_gem_RPM\(10),
	datad => VCC,
	cin => \u8|Add0~19\,
	combout => \u8|Add0~20_combout\,
	cout => \u8|Add0~21\);

-- Location: LCCOMB_X53_Y23_N12
\u8|wait_gem_RPM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|wait_gem_RPM~1_combout\ = (!\u8|Equal0~4_combout\ & \u8|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~4_combout\,
	datad => \u8|Add0~20_combout\,
	combout => \u8|wait_gem_RPM~1_combout\);

-- Location: LCFF_X53_Y23_N13
\u8|wait_gem_RPM[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|wait_gem_RPM~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|wait_gem_RPM\(10));

-- Location: LCCOMB_X52_Y23_N24
\u8|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|Add0~22_combout\ = (\u8|wait_gem_RPM\(11) & (!\u8|Add0~21\)) # (!\u8|wait_gem_RPM\(11) & ((\u8|Add0~21\) # (GND)))
-- \u8|Add0~23\ = CARRY((!\u8|Add0~21\) # (!\u8|wait_gem_RPM\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|wait_gem_RPM\(11),
	datad => VCC,
	cin => \u8|Add0~21\,
	combout => \u8|Add0~22_combout\,
	cout => \u8|Add0~23\);

-- Location: LCFF_X52_Y23_N25
\u8|wait_gem_RPM[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|Add0~22_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|wait_gem_RPM\(11));

-- Location: LCCOMB_X52_Y23_N26
\u8|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|Add0~24_combout\ = (\u8|wait_gem_RPM\(12) & (\u8|Add0~23\ $ (GND))) # (!\u8|wait_gem_RPM\(12) & (!\u8|Add0~23\ & VCC))
-- \u8|Add0~25\ = CARRY((\u8|wait_gem_RPM\(12) & !\u8|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|wait_gem_RPM\(12),
	datad => VCC,
	cin => \u8|Add0~23\,
	combout => \u8|Add0~24_combout\,
	cout => \u8|Add0~25\);

-- Location: LCFF_X52_Y23_N27
\u8|wait_gem_RPM[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|Add0~24_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|wait_gem_RPM\(12));

-- Location: LCCOMB_X52_Y23_N28
\u8|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|Add0~26_combout\ = \u8|Add0~25\ $ (\u8|wait_gem_RPM\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u8|wait_gem_RPM\(13),
	cin => \u8|Add0~25\,
	combout => \u8|Add0~26_combout\);

-- Location: LCCOMB_X53_Y23_N30
\u8|wait_gem_RPM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|wait_gem_RPM~0_combout\ = (!\u8|Equal0~4_combout\ & \u8|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~4_combout\,
	datad => \u8|Add0~26_combout\,
	combout => \u8|wait_gem_RPM~0_combout\);

-- Location: LCFF_X53_Y23_N31
\u8|wait_gem_RPM[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|wait_gem_RPM~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|wait_gem_RPM\(13));

-- Location: LCCOMB_X53_Y23_N10
\u8|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|Equal0~0_combout\ = (\u8|wait_gem_RPM\(10) & (!\u8|wait_gem_RPM\(11) & (\u8|wait_gem_RPM\(13) & !\u8|wait_gem_RPM\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|wait_gem_RPM\(10),
	datab => \u8|wait_gem_RPM\(11),
	datac => \u8|wait_gem_RPM\(13),
	datad => \u8|wait_gem_RPM\(12),
	combout => \u8|Equal0~0_combout\);

-- Location: LCCOMB_X53_Y23_N6
\u8|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|Equal0~4_combout\ = (\u8|Equal0~2_combout\ & (\u8|Equal0~1_combout\ & (\u8|Equal0~3_combout\ & \u8|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~2_combout\,
	datab => \u8|Equal0~1_combout\,
	datac => \u8|Equal0~3_combout\,
	datad => \u8|Equal0~0_combout\,
	combout => \u8|Equal0~4_combout\);

-- Location: LCCOMB_X53_Y23_N16
\u8|gem_RPM[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|gem_RPM[7]~0_combout\ = ((!\start~regout\ & \u8|Equal0~4_combout\)) # (!\u3c|long~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long~regout\,
	datab => \start~regout\,
	datad => \u8|Equal0~4_combout\,
	combout => \u8|gem_RPM[7]~0_combout\);

-- Location: LCCOMB_X50_Y22_N0
\u8|count_RPM[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|count_RPM[0]~8_combout\ = \u8|count_RPM\(0) $ (VCC)
-- \u8|count_RPM[0]~9\ = CARRY(\u8|count_RPM\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u8|count_RPM\(0),
	datad => VCC,
	combout => \u8|count_RPM[0]~8_combout\,
	cout => \u8|count_RPM[0]~9\);

-- Location: LCFF_X42_Y24_N7
\u3c|long_press_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u3c|Add1~8_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|long_press_counter\(4));

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KNOP[6]~I\ : cycloneii_io
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
	padio => ww_KNOP(6),
	combout => \KNOP~combout\(6));

-- Location: LCCOMB_X42_Y24_N24
\u3c|a~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|a~1_combout\ = !\KNOP~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KNOP~combout\(6),
	combout => \u3c|a~1_combout\);

-- Location: LCCOMB_X41_Y24_N30
\u3c|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|LessThan0~1_combout\ = (\u3c|LessThan0~0_combout\) # (\u3c|ffa\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|LessThan0~0_combout\,
	datad => \u3c|ffa\(5),
	combout => \u3c|LessThan0~1_combout\);

-- Location: LCCOMB_X41_Y24_N2
\u3c|ffa[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|ffa[3]~6_combout\ = (\u3c|ffa[6]~2_combout\ & (\u3c|Add0~6_combout\ & ((\u3c|LessThan0~1_combout\)))) # (!\u3c|ffa[6]~2_combout\ & (((\u3c|ffa\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|Add0~6_combout\,
	datab => \u3c|ffa[6]~2_combout\,
	datac => \u3c|ffa\(3),
	datad => \u3c|LessThan0~1_combout\,
	combout => \u3c|ffa[3]~6_combout\);

-- Location: LCFF_X41_Y24_N3
\u3c|ffa[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3c|ffa[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|ffa\(3));

-- Location: LCCOMB_X41_Y24_N4
\u3c|ffa[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|ffa[6]~3_combout\ = (\u3c|ffa[6]~2_combout\ & (((!\u3c|LessThan0~1_combout\)) # (!\u3c|Add0~12_combout\))) # (!\u3c|ffa[6]~2_combout\ & (((\u3c|ffa\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|Add0~12_combout\,
	datab => \u3c|ffa[6]~2_combout\,
	datac => \u3c|ffa\(6),
	datad => \u3c|LessThan0~1_combout\,
	combout => \u3c|ffa[6]~3_combout\);

-- Location: LCFF_X41_Y24_N5
\u3c|ffa[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3c|ffa[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|ffa\(6));

-- Location: LCCOMB_X41_Y24_N0
\u3c|ffa[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|ffa[4]~5_combout\ = (\u3c|ffa[6]~2_combout\ & (\u3c|Add0~8_combout\ & ((\u3c|LessThan0~1_combout\)))) # (!\u3c|ffa[6]~2_combout\ & (((\u3c|ffa\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|Add0~8_combout\,
	datab => \u3c|ffa[6]~2_combout\,
	datac => \u3c|ffa\(4),
	datad => \u3c|LessThan0~1_combout\,
	combout => \u3c|ffa[4]~5_combout\);

-- Location: LCFF_X41_Y24_N1
\u3c|ffa[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3c|ffa[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|ffa\(4));

-- Location: LCCOMB_X41_Y24_N12
\u3c|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|LessThan0~0_combout\ = (\u3c|ffa\(6)) # ((\u3c|ffa\(2) & (!\u3c|ffa\(3) & !\u3c|ffa\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|ffa\(2),
	datab => \u3c|ffa\(3),
	datac => \u3c|ffa\(6),
	datad => \u3c|ffa\(4),
	combout => \u3c|LessThan0~0_combout\);

-- Location: LCCOMB_X42_Y24_N2
\u3c|a~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|a~0_combout\ = (!\u3c|ffa\(5) & (!\u3c|LessThan0~0_combout\ & \BUTTON~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|ffa\(5),
	datab => \u3c|LessThan0~0_combout\,
	datad => \BUTTON~combout\(3),
	combout => \u3c|a~0_combout\);

-- Location: LCFF_X42_Y24_N11
\u3c|a\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u3c|a~1_combout\,
	sload => VCC,
	ena => \u3c|a~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|a~regout\);

-- Location: LCCOMB_X42_Y24_N10
\u3c|ffa[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|ffa[6]~2_combout\ = (\BUTTON~combout\(3) & ((\u3c|LessThan0~1_combout\) # (\KNOP~combout\(6) $ (!\u3c|a~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|LessThan0~1_combout\,
	datab => \KNOP~combout\(6),
	datac => \u3c|a~regout\,
	datad => \BUTTON~combout\(3),
	combout => \u3c|ffa[6]~2_combout\);

-- Location: LCCOMB_X41_Y24_N10
\u3c|ffa[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|ffa[2]~4_combout\ = (\u3c|ffa[6]~2_combout\ & (((!\u3c|LessThan0~1_combout\)) # (!\u3c|Add0~4_combout\))) # (!\u3c|ffa[6]~2_combout\ & (((\u3c|ffa\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|Add0~4_combout\,
	datab => \u3c|ffa[6]~2_combout\,
	datac => \u3c|ffa\(2),
	datad => \u3c|LessThan0~1_combout\,
	combout => \u3c|ffa[2]~4_combout\);

-- Location: LCFF_X41_Y24_N11
\u3c|ffa[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3c|ffa[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|ffa\(2));

-- Location: LCCOMB_X41_Y24_N16
\u3c|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add0~0_combout\ = \u3c|ffa\(0) $ (VCC)
-- \u3c|Add0~1\ = CARRY(\u3c|ffa\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3c|ffa\(0),
	datad => VCC,
	combout => \u3c|Add0~0_combout\,
	cout => \u3c|Add0~1\);

-- Location: LCCOMB_X41_Y24_N14
\u3c|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add0~15_combout\ = (\u3c|Add0~0_combout\ & ((\u3c|LessThan0~0_combout\) # (\u3c|ffa\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|LessThan0~0_combout\,
	datac => \u3c|Add0~0_combout\,
	datad => \u3c|ffa\(5),
	combout => \u3c|Add0~15_combout\);

-- Location: LCFF_X41_Y24_N15
\u3c|ffa[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3c|Add0~15_combout\,
	ena => \u3c|ffa[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|ffa\(0));

-- Location: LCCOMB_X42_Y24_N20
\u3c|ffa[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|ffa[5]~7_combout\ = (\u3c|ffa[6]~2_combout\ & (((!\u3c|LessThan0~0_combout\ & !\u3c|ffa\(5))) # (!\u3c|Add0~10_combout\))) # (!\u3c|ffa[6]~2_combout\ & (((\u3c|ffa\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|LessThan0~0_combout\,
	datab => \u3c|ffa[6]~2_combout\,
	datac => \u3c|ffa\(5),
	datad => \u3c|Add0~10_combout\,
	combout => \u3c|ffa[5]~7_combout\);

-- Location: LCFF_X42_Y24_N21
\u3c|ffa[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3c|ffa[5]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|ffa\(5));

-- Location: LCCOMB_X42_Y24_N4
\u3c|long_press_counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|long_press_counter~1_combout\ = (((\u3c|ffa\(5)) # (\u3c|LessThan0~0_combout\)) # (!\KNOP~combout\(6))) # (!\u3c|a~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|a~regout\,
	datab => \KNOP~combout\(6),
	datac => \u3c|ffa\(5),
	datad => \u3c|LessThan0~0_combout\,
	combout => \u3c|long_press_counter~1_combout\);

-- Location: LCCOMB_X42_Y24_N16
\u3c|output_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|output_int~0_combout\ = (\u3c|a~regout\ & (\u3c|output_int~regout\ & !\KNOP~combout\(6))) # (!\u3c|a~regout\ & ((\u3c|output_int~regout\) # (!\KNOP~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|a~regout\,
	datac => \u3c|output_int~regout\,
	datad => \KNOP~combout\(6),
	combout => \u3c|output_int~0_combout\);

-- Location: LCFF_X42_Y24_N17
\u3c|output_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3c|output_int~0_combout\,
	ena => \u3c|a~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|output_int~regout\);

-- Location: LCCOMB_X43_Y24_N8
\u3c|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add1~8_combout\ = (\u3c|Add1~7\ & (\u3c|long_press_counter~1_combout\ & (\u3c|long_press_counter\(4) & VCC))) # (!\u3c|Add1~7\ & ((((\u3c|long_press_counter~1_combout\ & \u3c|long_press_counter\(4))))))
-- \u3c|Add1~9\ = CARRY((\u3c|long_press_counter~1_combout\ & (\u3c|long_press_counter\(4) & !\u3c|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long_press_counter~1_combout\,
	datab => \u3c|long_press_counter\(4),
	datad => VCC,
	cin => \u3c|Add1~7\,
	combout => \u3c|Add1~8_combout\,
	cout => \u3c|Add1~9\);

-- Location: LCCOMB_X43_Y24_N10
\u3c|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add1~10_combout\ = (\u3c|Add1~9\ & (((!\u3c|long_press_counter\(5))) # (!\u3c|long_press_counter~1_combout\))) # (!\u3c|Add1~9\ & (((\u3c|long_press_counter~1_combout\ & \u3c|long_press_counter\(5))) # (GND)))
-- \u3c|Add1~11\ = CARRY(((!\u3c|Add1~9\) # (!\u3c|long_press_counter\(5))) # (!\u3c|long_press_counter~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long_press_counter~1_combout\,
	datab => \u3c|long_press_counter\(5),
	datad => VCC,
	cin => \u3c|Add1~9\,
	combout => \u3c|Add1~10_combout\,
	cout => \u3c|Add1~11\);

-- Location: LCCOMB_X42_Y24_N8
\u3c|long_press_counter[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|long_press_counter[5]~feeder_combout\ = \u3c|Add1~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3c|Add1~10_combout\,
	combout => \u3c|long_press_counter[5]~feeder_combout\);

-- Location: LCFF_X42_Y24_N9
\u3c|long_press_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3c|long_press_counter[5]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|long_press_counter\(5));

-- Location: LCCOMB_X43_Y24_N12
\u3c|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add1~12_combout\ = (\u3c|Add1~11\ & (\u3c|long_press_counter~1_combout\ & (\u3c|long_press_counter\(6) & VCC))) # (!\u3c|Add1~11\ & ((((\u3c|long_press_counter~1_combout\ & \u3c|long_press_counter\(6))))))
-- \u3c|Add1~13\ = CARRY((\u3c|long_press_counter~1_combout\ & (\u3c|long_press_counter\(6) & !\u3c|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long_press_counter~1_combout\,
	datab => \u3c|long_press_counter\(6),
	datad => VCC,
	cin => \u3c|Add1~11\,
	combout => \u3c|Add1~12_combout\,
	cout => \u3c|Add1~13\);

-- Location: LCFF_X42_Y24_N13
\u3c|long_press_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u3c|Add1~12_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|long_press_counter\(6));

-- Location: LCCOMB_X43_Y24_N14
\u3c|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add1~14_combout\ = (\u3c|Add1~13\ & (((!\u3c|long_press_counter\(7))) # (!\u3c|long_press_counter~1_combout\))) # (!\u3c|Add1~13\ & (((\u3c|long_press_counter~1_combout\ & \u3c|long_press_counter\(7))) # (GND)))
-- \u3c|Add1~15\ = CARRY(((!\u3c|Add1~13\) # (!\u3c|long_press_counter\(7))) # (!\u3c|long_press_counter~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long_press_counter~1_combout\,
	datab => \u3c|long_press_counter\(7),
	datad => VCC,
	cin => \u3c|Add1~13\,
	combout => \u3c|Add1~14_combout\,
	cout => \u3c|Add1~15\);

-- Location: LCFF_X42_Y24_N23
\u3c|long_press_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u3c|Add1~14_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|long_press_counter\(7));

-- Location: LCCOMB_X43_Y24_N16
\u3c|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add1~16_combout\ = (\u3c|Add1~15\ & (\u3c|long_press_counter\(8) & (\u3c|long_press_counter~1_combout\ & VCC))) # (!\u3c|Add1~15\ & ((((\u3c|long_press_counter\(8) & \u3c|long_press_counter~1_combout\)))))
-- \u3c|Add1~17\ = CARRY((\u3c|long_press_counter\(8) & (\u3c|long_press_counter~1_combout\ & !\u3c|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long_press_counter\(8),
	datab => \u3c|long_press_counter~1_combout\,
	datad => VCC,
	cin => \u3c|Add1~15\,
	combout => \u3c|Add1~16_combout\,
	cout => \u3c|Add1~17\);

-- Location: LCCOMB_X43_Y24_N18
\u3c|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add1~18_combout\ = (\u3c|Add1~17\ & (((!\u3c|long_press_counter~1_combout\)) # (!\u3c|long_press_counter\(9)))) # (!\u3c|Add1~17\ & (((\u3c|long_press_counter\(9) & \u3c|long_press_counter~1_combout\)) # (GND)))
-- \u3c|Add1~19\ = CARRY(((!\u3c|Add1~17\) # (!\u3c|long_press_counter~1_combout\)) # (!\u3c|long_press_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long_press_counter\(9),
	datab => \u3c|long_press_counter~1_combout\,
	datad => VCC,
	cin => \u3c|Add1~17\,
	combout => \u3c|Add1~18_combout\,
	cout => \u3c|Add1~19\);

-- Location: LCCOMB_X43_Y24_N20
\u3c|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add1~20_combout\ = (\u3c|Add1~19\ & (\u3c|long_press_counter\(10) & (\u3c|long_press_counter~1_combout\ & VCC))) # (!\u3c|Add1~19\ & ((((\u3c|long_press_counter\(10) & \u3c|long_press_counter~1_combout\)))))
-- \u3c|Add1~21\ = CARRY((\u3c|long_press_counter\(10) & (\u3c|long_press_counter~1_combout\ & !\u3c|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long_press_counter\(10),
	datab => \u3c|long_press_counter~1_combout\,
	datad => VCC,
	cin => \u3c|Add1~19\,
	combout => \u3c|Add1~20_combout\,
	cout => \u3c|Add1~21\);

-- Location: LCCOMB_X43_Y24_N22
\u3c|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add1~22_combout\ = (\u3c|Add1~21\ & (((!\u3c|long_press_counter~1_combout\)) # (!\u3c|long_press_counter\(11)))) # (!\u3c|Add1~21\ & (((\u3c|long_press_counter\(11) & \u3c|long_press_counter~1_combout\)) # (GND)))
-- \u3c|Add1~23\ = CARRY(((!\u3c|Add1~21\) # (!\u3c|long_press_counter~1_combout\)) # (!\u3c|long_press_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long_press_counter\(11),
	datab => \u3c|long_press_counter~1_combout\,
	datad => VCC,
	cin => \u3c|Add1~21\,
	combout => \u3c|Add1~22_combout\,
	cout => \u3c|Add1~23\);

-- Location: LCCOMB_X43_Y24_N26
\u3c|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add1~26_combout\ = (\u3c|Add1~25\ & (((!\u3c|long_press_counter~1_combout\)) # (!\u3c|long_press_counter\(13)))) # (!\u3c|Add1~25\ & (((\u3c|long_press_counter\(13) & \u3c|long_press_counter~1_combout\)) # (GND)))
-- \u3c|Add1~27\ = CARRY(((!\u3c|Add1~25\) # (!\u3c|long_press_counter~1_combout\)) # (!\u3c|long_press_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long_press_counter\(13),
	datab => \u3c|long_press_counter~1_combout\,
	datad => VCC,
	cin => \u3c|Add1~25\,
	combout => \u3c|Add1~26_combout\,
	cout => \u3c|Add1~27\);

-- Location: LCCOMB_X43_Y24_N28
\u3c|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add1~28_combout\ = (\u3c|Add1~27\ & (\u3c|long_press_counter\(14) & (\u3c|long_press_counter~1_combout\ & VCC))) # (!\u3c|Add1~27\ & ((((\u3c|long_press_counter\(14) & \u3c|long_press_counter~1_combout\)))))
-- \u3c|Add1~29\ = CARRY((\u3c|long_press_counter\(14) & (\u3c|long_press_counter~1_combout\ & !\u3c|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long_press_counter\(14),
	datab => \u3c|long_press_counter~1_combout\,
	datad => VCC,
	cin => \u3c|Add1~27\,
	combout => \u3c|Add1~28_combout\,
	cout => \u3c|Add1~29\);

-- Location: LCCOMB_X43_Y24_N30
\u3c|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add1~30_combout\ = \u3c|Add1~29\ $ (((\u3c|long_press_counter\(15) & \u3c|long_press_counter~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3c|long_press_counter\(15),
	datad => \u3c|long_press_counter~1_combout\,
	cin => \u3c|Add1~29\,
	combout => \u3c|Add1~30_combout\);

-- Location: LCFF_X43_Y24_N31
\u3c|long_press_counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3c|Add1~30_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|long_press_counter\(15));

-- Location: LCFF_X43_Y24_N29
\u3c|long_press_counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3c|Add1~28_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|long_press_counter\(14));

-- Location: LCFF_X42_Y24_N3
\u3c|long_press_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u3c|Add1~18_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|long_press_counter\(9));

-- Location: LCFF_X42_Y24_N25
\u3c|long_press_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u3c|Add1~16_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|long_press_counter\(8));

-- Location: LCFF_X43_Y24_N21
\u3c|long_press_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3c|Add1~20_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|long_press_counter\(10));

-- Location: LCCOMB_X42_Y24_N18
\u3c|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|process_0~2_combout\ = ((!\u3c|long_press_counter\(10)) # (!\u3c|long_press_counter\(8))) # (!\u3c|long_press_counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3c|long_press_counter\(9),
	datac => \u3c|long_press_counter\(8),
	datad => \u3c|long_press_counter\(10),
	combout => \u3c|process_0~2_combout\);

-- Location: LCFF_X43_Y24_N23
\u3c|long_press_counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3c|Add1~22_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|long_press_counter\(11));

-- Location: LCCOMB_X42_Y24_N28
\u3c|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|process_0~1_combout\ = (!\u3c|long_press_counter\(4) & (!\u3c|long_press_counter\(7) & (!\u3c|long_press_counter\(5) & !\u3c|long_press_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long_press_counter\(4),
	datab => \u3c|long_press_counter\(7),
	datac => \u3c|long_press_counter\(5),
	datad => \u3c|long_press_counter\(6),
	combout => \u3c|process_0~1_combout\);

-- Location: LCCOMB_X42_Y24_N0
\u3c|process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|process_0~3_combout\ = (!\u3c|long_press_counter\(12) & (!\u3c|long_press_counter\(11) & ((\u3c|process_0~2_combout\) # (\u3c|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long_press_counter\(12),
	datab => \u3c|process_0~2_combout\,
	datac => \u3c|long_press_counter\(11),
	datad => \u3c|process_0~1_combout\,
	combout => \u3c|process_0~3_combout\);

-- Location: LCCOMB_X42_Y24_N30
\u3c|process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|process_0~4_combout\ = (!\u3c|long_press_counter\(15) & (!\u3c|long_press_counter\(14) & ((\u3c|process_0~3_combout\) # (!\u3c|long_press_counter\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long_press_counter\(13),
	datab => \u3c|long_press_counter\(15),
	datac => \u3c|long_press_counter\(14),
	datad => \u3c|process_0~3_combout\,
	combout => \u3c|process_0~4_combout\);

-- Location: LCCOMB_X42_Y24_N26
\u3c|process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|process_0~5_combout\ = (\u3c|output_int~regout\ & ((\u3c|process_0~4_combout\) # (!\u3c|long_press_counter~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3c|long_press_counter~1_combout\,
	datac => \u3c|output_int~regout\,
	datad => \u3c|process_0~4_combout\,
	combout => \u3c|process_0~5_combout\);

-- Location: LCCOMB_X43_Y24_N2
\u3c|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add1~2_combout\ = (\u3c|Add1~1\ & (((!\u3c|long_press_counter\(1))) # (!\u3c|long_press_counter~1_combout\))) # (!\u3c|Add1~1\ & (((\u3c|long_press_counter~1_combout\ & \u3c|long_press_counter\(1))) # (GND)))
-- \u3c|Add1~3\ = CARRY(((!\u3c|Add1~1\) # (!\u3c|long_press_counter\(1))) # (!\u3c|long_press_counter~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long_press_counter~1_combout\,
	datab => \u3c|long_press_counter\(1),
	datad => VCC,
	cin => \u3c|Add1~1\,
	combout => \u3c|Add1~2_combout\,
	cout => \u3c|Add1~3\);

-- Location: LCFF_X43_Y24_N3
\u3c|long_press_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3c|Add1~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|long_press_counter\(1));

-- Location: LCCOMB_X43_Y24_N4
\u3c|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add1~4_combout\ = (\u3c|Add1~3\ & (\u3c|long_press_counter~1_combout\ & (\u3c|long_press_counter\(2) & VCC))) # (!\u3c|Add1~3\ & ((((\u3c|long_press_counter~1_combout\ & \u3c|long_press_counter\(2))))))
-- \u3c|Add1~5\ = CARRY((\u3c|long_press_counter~1_combout\ & (\u3c|long_press_counter\(2) & !\u3c|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long_press_counter~1_combout\,
	datab => \u3c|long_press_counter\(2),
	datad => VCC,
	cin => \u3c|Add1~3\,
	combout => \u3c|Add1~4_combout\,
	cout => \u3c|Add1~5\);

-- Location: LCFF_X43_Y24_N5
\u3c|long_press_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3c|Add1~4_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|long_press_counter\(2));

-- Location: LCCOMB_X43_Y24_N6
\u3c|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Add1~6_combout\ = (\u3c|Add1~5\ & (((!\u3c|long_press_counter\(3))) # (!\u3c|long_press_counter~1_combout\))) # (!\u3c|Add1~5\ & (((\u3c|long_press_counter~1_combout\ & \u3c|long_press_counter\(3))) # (GND)))
-- \u3c|Add1~7\ = CARRY(((!\u3c|Add1~5\) # (!\u3c|long_press_counter\(3))) # (!\u3c|long_press_counter~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long_press_counter~1_combout\,
	datab => \u3c|long_press_counter\(3),
	datad => VCC,
	cin => \u3c|Add1~5\,
	combout => \u3c|Add1~6_combout\,
	cout => \u3c|Add1~7\);

-- Location: LCFF_X43_Y24_N7
\u3c|long_press_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3c|Add1~6_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|long_press_counter\(3));

-- Location: LCCOMB_X44_Y24_N4
\u3c|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Equal0~1_combout\ = (!\u3c|Add1~14_combout\ & (\u3c|Add1~8_combout\ & (!\u3c|Add1~10_combout\ & !\u3c|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|Add1~14_combout\,
	datab => \u3c|Add1~8_combout\,
	datac => \u3c|Add1~10_combout\,
	datad => \u3c|Add1~12_combout\,
	combout => \u3c|Equal0~1_combout\);

-- Location: LCCOMB_X44_Y24_N14
\u3c|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Equal0~2_combout\ = (\u3c|Add1~20_combout\ & (!\u3c|Add1~22_combout\ & (\u3c|Add1~16_combout\ & \u3c|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|Add1~20_combout\,
	datab => \u3c|Add1~22_combout\,
	datac => \u3c|Add1~16_combout\,
	datad => \u3c|Add1~18_combout\,
	combout => \u3c|Equal0~2_combout\);

-- Location: LCCOMB_X44_Y24_N0
\u3c|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Equal0~3_combout\ = (!\u3c|Add1~24_combout\ & (!\u3c|Add1~28_combout\ & (!\u3c|Add1~30_combout\ & \u3c|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|Add1~24_combout\,
	datab => \u3c|Add1~28_combout\,
	datac => \u3c|Add1~30_combout\,
	datad => \u3c|Add1~26_combout\,
	combout => \u3c|Equal0~3_combout\);

-- Location: LCCOMB_X44_Y24_N16
\u3c|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3c|Equal0~4_combout\ = (((!\u3c|Equal0~3_combout\) # (!\u3c|Equal0~2_combout\)) # (!\u3c|Equal0~1_combout\)) # (!\u3c|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|Equal0~0_combout\,
	datab => \u3c|Equal0~1_combout\,
	datac => \u3c|Equal0~2_combout\,
	datad => \u3c|Equal0~3_combout\,
	combout => \u3c|Equal0~4_combout\);

-- Location: LCFF_X44_Y24_N17
\u3c|long\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3c|Equal0~4_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3c|long~regout\);

-- Location: LCFF_X50_Y22_N1
\u8|count_RPM[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|count_RPM[0]~8_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u3c|ALT_INV_long~regout\,
	ena => \u8|gem_RPM[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|count_RPM\(0));

-- Location: LCCOMB_X50_Y22_N2
\u8|count_RPM[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|count_RPM[1]~10_combout\ = (\u8|count_RPM\(1) & (!\u8|count_RPM[0]~9\)) # (!\u8|count_RPM\(1) & ((\u8|count_RPM[0]~9\) # (GND)))
-- \u8|count_RPM[1]~11\ = CARRY((!\u8|count_RPM[0]~9\) # (!\u8|count_RPM\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|count_RPM\(1),
	datad => VCC,
	cin => \u8|count_RPM[0]~9\,
	combout => \u8|count_RPM[1]~10_combout\,
	cout => \u8|count_RPM[1]~11\);

-- Location: LCFF_X50_Y22_N3
\u8|count_RPM[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|count_RPM[1]~10_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u3c|ALT_INV_long~regout\,
	ena => \u8|gem_RPM[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|count_RPM\(1));

-- Location: LCCOMB_X50_Y22_N4
\u8|count_RPM[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|count_RPM[2]~12_combout\ = (\u8|count_RPM\(2) & (\u8|count_RPM[1]~11\ $ (GND))) # (!\u8|count_RPM\(2) & (!\u8|count_RPM[1]~11\ & VCC))
-- \u8|count_RPM[2]~13\ = CARRY((\u8|count_RPM\(2) & !\u8|count_RPM[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|count_RPM\(2),
	datad => VCC,
	cin => \u8|count_RPM[1]~11\,
	combout => \u8|count_RPM[2]~12_combout\,
	cout => \u8|count_RPM[2]~13\);

-- Location: LCFF_X50_Y22_N5
\u8|count_RPM[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|count_RPM[2]~12_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u3c|ALT_INV_long~regout\,
	ena => \u8|gem_RPM[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|count_RPM\(2));

-- Location: LCCOMB_X50_Y22_N6
\u8|count_RPM[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|count_RPM[3]~14_combout\ = (\u8|count_RPM\(3) & (!\u8|count_RPM[2]~13\)) # (!\u8|count_RPM\(3) & ((\u8|count_RPM[2]~13\) # (GND)))
-- \u8|count_RPM[3]~15\ = CARRY((!\u8|count_RPM[2]~13\) # (!\u8|count_RPM\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count_RPM\(3),
	datad => VCC,
	cin => \u8|count_RPM[2]~13\,
	combout => \u8|count_RPM[3]~14_combout\,
	cout => \u8|count_RPM[3]~15\);

-- Location: LCCOMB_X50_Y22_N8
\u8|count_RPM[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|count_RPM[4]~16_combout\ = (\u8|count_RPM\(4) & (\u8|count_RPM[3]~15\ $ (GND))) # (!\u8|count_RPM\(4) & (!\u8|count_RPM[3]~15\ & VCC))
-- \u8|count_RPM[4]~17\ = CARRY((\u8|count_RPM\(4) & !\u8|count_RPM[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|count_RPM\(4),
	datad => VCC,
	cin => \u8|count_RPM[3]~15\,
	combout => \u8|count_RPM[4]~16_combout\,
	cout => \u8|count_RPM[4]~17\);

-- Location: LCFF_X50_Y22_N9
\u8|count_RPM[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|count_RPM[4]~16_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u3c|ALT_INV_long~regout\,
	ena => \u8|gem_RPM[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|count_RPM\(4));

-- Location: LCCOMB_X50_Y22_N10
\u8|count_RPM[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|count_RPM[5]~18_combout\ = (\u8|count_RPM\(5) & (!\u8|count_RPM[4]~17\)) # (!\u8|count_RPM\(5) & ((\u8|count_RPM[4]~17\) # (GND)))
-- \u8|count_RPM[5]~19\ = CARRY((!\u8|count_RPM[4]~17\) # (!\u8|count_RPM\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count_RPM\(5),
	datad => VCC,
	cin => \u8|count_RPM[4]~17\,
	combout => \u8|count_RPM[5]~18_combout\,
	cout => \u8|count_RPM[5]~19\);

-- Location: LCCOMB_X50_Y22_N14
\u8|count_RPM[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|count_RPM[7]~22_combout\ = \u8|count_RPM\(7) $ (\u8|count_RPM[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|count_RPM\(7),
	cin => \u8|count_RPM[6]~21\,
	combout => \u8|count_RPM[7]~22_combout\);

-- Location: LCFF_X50_Y22_N15
\u8|count_RPM[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|count_RPM[7]~22_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u3c|ALT_INV_long~regout\,
	ena => \u8|gem_RPM[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|count_RPM\(7));

-- Location: LCFF_X50_Y22_N7
\u8|count_RPM[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|count_RPM[3]~14_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u3c|ALT_INV_long~regout\,
	ena => \u8|gem_RPM[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|count_RPM\(3));

-- Location: LCCOMB_X51_Y22_N6
\u8|tot_RPM_int[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM_int[0]~12_combout\ = (\u8|count_RPM\(0) & (\u8|tot_RPM_int\(0) $ (VCC))) # (!\u8|count_RPM\(0) & ((\u8|tot_RPM_int\(0)) # (GND)))
-- \u8|tot_RPM_int[0]~13\ = CARRY((\u8|tot_RPM_int\(0)) # (!\u8|count_RPM\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count_RPM\(0),
	datab => \u8|tot_RPM_int\(0),
	datad => VCC,
	combout => \u8|tot_RPM_int[0]~12_combout\,
	cout => \u8|tot_RPM_int[0]~13\);

-- Location: LCCOMB_X52_Y24_N8
\u8|tot_RPM[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM[0]~12_combout\ = (\u5|rpm_mem\(0) & (\u8|tot_RPM\(0) $ (VCC))) # (!\u5|rpm_mem\(0) & (\u8|tot_RPM\(0) & VCC))
-- \u8|tot_RPM[0]~13\ = CARRY((\u5|rpm_mem\(0) & \u8|tot_RPM\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(0),
	datab => \u8|tot_RPM\(0),
	datad => VCC,
	combout => \u8|tot_RPM[0]~12_combout\,
	cout => \u8|tot_RPM[0]~13\);

-- Location: LCCOMB_X45_Y24_N10
\u0|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add3~0_combout\ = \u0|wait_time\(0) $ (VCC)
-- \u0|Add3~1\ = CARRY(\u0|wait_time\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(0),
	datad => VCC,
	combout => \u0|Add3~0_combout\,
	cout => \u0|Add3~1\);

-- Location: LCCOMB_X45_Y24_N12
\u0|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add3~2_combout\ = (\u0|wait_time\(1) & (!\u0|Add3~1\)) # (!\u0|wait_time\(1) & ((\u0|Add3~1\) # (GND)))
-- \u0|Add3~3\ = CARRY((!\u0|Add3~1\) # (!\u0|wait_time\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(1),
	datad => VCC,
	cin => \u0|Add3~1\,
	combout => \u0|Add3~2_combout\,
	cout => \u0|Add3~3\);

-- Location: LCFF_X45_Y24_N13
\u0|wait_time[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|Add3~2_combout\,
	ena => \u0|wait_time[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(1));

-- Location: LCFF_X45_Y24_N15
\u0|wait_time[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|Add3~4_combout\,
	ena => \u0|wait_time[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(2));

-- Location: LCCOMB_X44_Y24_N26
\u0|wait_time[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[0]~7_combout\ = (\u0|wait_time\(0) & !\BUTTON~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|wait_time\(0),
	datad => \BUTTON~combout\(3),
	combout => \u0|wait_time[0]~7_combout\);

-- Location: LCCOMB_X44_Y24_N2
\u0|wait_time[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[0]~8_combout\ = (\u0|wait_time[0]~7_combout\) # ((!\u0|process_0~0_combout\ & (\u0|wait_time[10]~0_combout\ & \u0|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|process_0~0_combout\,
	datab => \u0|wait_time[10]~0_combout\,
	datac => \u0|Add3~0_combout\,
	datad => \u0|wait_time[0]~7_combout\,
	combout => \u0|wait_time[0]~8_combout\);

-- Location: LCFF_X44_Y24_N3
\u0|wait_time[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(0));

-- Location: LCCOMB_X44_Y24_N20
\u0|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal2~2_combout\ = (\u0|Equal2~1_combout\ & (!\u0|wait_time\(1) & (!\u0|wait_time\(2) & !\u0|wait_time\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal2~1_combout\,
	datab => \u0|wait_time\(1),
	datac => \u0|wait_time\(2),
	datad => \u0|wait_time\(0),
	combout => \u0|Equal2~2_combout\);

-- Location: LCCOMB_X44_Y24_N28
\u0|wait_time[10]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[10]~0_combout\ = (\BUTTON~combout\(3) & (((\u3a|output~regout\) # (!\u0|Equal2~2_combout\)) # (!\u0|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u0|Equal2~0_combout\,
	datac => \u0|Equal2~2_combout\,
	datad => \u3a|output~regout\,
	combout => \u0|wait_time[10]~0_combout\);

-- Location: LCCOMB_X45_Y24_N0
\u0|wait_time[10]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[10]~1_combout\ = (\u0|wait_time[10]~0_combout\ & (\u0|Add3~20_combout\ & (!\u0|process_0~0_combout\))) # (!\u0|wait_time[10]~0_combout\ & (((\u0|wait_time\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add3~20_combout\,
	datab => \u0|process_0~0_combout\,
	datac => \u0|wait_time\(10),
	datad => \u0|wait_time[10]~0_combout\,
	combout => \u0|wait_time[10]~1_combout\);

-- Location: LCFF_X45_Y24_N1
\u0|wait_time[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(10));

-- Location: LCCOMB_X45_Y24_N4
\u0|wait_time[8]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[8]~3_combout\ = (\u0|wait_time[10]~0_combout\ & (\u0|Add3~16_combout\ & (!\u0|process_0~0_combout\))) # (!\u0|wait_time[10]~0_combout\ & (((\u0|wait_time\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add3~16_combout\,
	datab => \u0|process_0~0_combout\,
	datac => \u0|wait_time\(8),
	datad => \u0|wait_time[10]~0_combout\,
	combout => \u0|wait_time[8]~3_combout\);

-- Location: LCFF_X45_Y24_N5
\u0|wait_time[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[8]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(8));

-- Location: LCCOMB_X45_Y24_N2
\u0|wait_time[9]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[9]~2_combout\ = (\u0|wait_time[10]~0_combout\ & (\u0|Add3~18_combout\ & (!\u0|process_0~0_combout\))) # (!\u0|wait_time[10]~0_combout\ & (((\u0|wait_time\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add3~18_combout\,
	datab => \u0|process_0~0_combout\,
	datac => \u0|wait_time\(9),
	datad => \u0|wait_time[10]~0_combout\,
	combout => \u0|wait_time[9]~2_combout\);

-- Location: LCFF_X45_Y24_N3
\u0|wait_time[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(9));

-- Location: LCCOMB_X45_Y24_N8
\u0|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal2~0_combout\ = (\u0|wait_time\(7) & (\u0|wait_time\(10) & (\u0|wait_time\(8) & \u0|wait_time\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(7),
	datab => \u0|wait_time\(10),
	datac => \u0|wait_time\(8),
	datad => \u0|wait_time\(9),
	combout => \u0|Equal2~0_combout\);

-- Location: LCCOMB_X44_Y24_N22
\u0|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|process_0~0_combout\ = (\u0|Equal2~2_combout\ & (\u0|Equal2~0_combout\ & \u3a|output~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal2~2_combout\,
	datac => \u0|Equal2~0_combout\,
	datad => \u3a|output~regout\,
	combout => \u0|process_0~0_combout\);

-- Location: LCCOMB_X48_Y25_N12
\u0|count~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count~13_combout\ = (\u0|Add2~28_combout\ & (!\u0|count\(15) & (!\u0|process_0~0_combout\ & !\u0|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add2~28_combout\,
	datab => \u0|count\(15),
	datac => \u0|process_0~0_combout\,
	datad => \u0|LessThan0~4_combout\,
	combout => \u0|count~13_combout\);

-- Location: LCFF_X48_Y25_N13
\u0|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count~13_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(14));

-- Location: LCCOMB_X47_Y25_N26
\u0|count~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count~11_combout\ = (\u0|Add2~14_combout\ & (!\u0|LessThan0~4_combout\ & (!\u0|process_0~0_combout\ & !\u0|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add2~14_combout\,
	datab => \u0|LessThan0~4_combout\,
	datac => \u0|process_0~0_combout\,
	datad => \u0|count\(15),
	combout => \u0|count~11_combout\);

-- Location: LCFF_X47_Y25_N27
\u0|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count~11_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(7));

-- Location: LCCOMB_X47_Y25_N12
\u0|count~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count~12_combout\ = (\u0|Add2~12_combout\ & (!\u0|process_0~0_combout\ & (!\u0|LessThan0~4_combout\ & !\u0|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add2~12_combout\,
	datab => \u0|process_0~0_combout\,
	datac => \u0|LessThan0~4_combout\,
	datad => \u0|count\(15),
	combout => \u0|count~12_combout\);

-- Location: LCFF_X47_Y25_N13
\u0|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count~12_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(6));

-- Location: LCCOMB_X47_Y25_N0
\u0|count~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count~9_combout\ = (\u0|Add2~10_combout\ & (!\u0|LessThan0~4_combout\ & (!\u0|process_0~0_combout\ & !\u0|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add2~10_combout\,
	datab => \u0|LessThan0~4_combout\,
	datac => \u0|process_0~0_combout\,
	datad => \u0|count\(15),
	combout => \u0|count~9_combout\);

-- Location: LCFF_X47_Y25_N1
\u0|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count~9_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(5));

-- Location: LCCOMB_X47_Y25_N14
\u0|count~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count~10_combout\ = (\u0|Add2~8_combout\ & (!\u0|process_0~0_combout\ & (!\u0|LessThan0~4_combout\ & !\u0|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add2~8_combout\,
	datab => \u0|process_0~0_combout\,
	datac => \u0|LessThan0~4_combout\,
	datad => \u0|count\(15),
	combout => \u0|count~10_combout\);

-- Location: LCFF_X47_Y25_N15
\u0|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count~10_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(4));

-- Location: LCCOMB_X47_Y25_N18
\u0|count~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count~5_combout\ = (\u0|Add2~6_combout\ & (!\u0|process_0~0_combout\ & (!\u0|LessThan0~4_combout\ & !\u0|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add2~6_combout\,
	datab => \u0|process_0~0_combout\,
	datac => \u0|LessThan0~4_combout\,
	datad => \u0|count\(15),
	combout => \u0|count~5_combout\);

-- Location: LCFF_X47_Y25_N19
\u0|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count~5_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(3));

-- Location: LCCOMB_X47_Y25_N4
\u0|stop~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|stop~0_combout\ = (!\u0|process_0~0_combout\ & ((\u0|LessThan0~4_combout\) # ((\u0|stop~regout\) # (\u0|count\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|process_0~0_combout\,
	datab => \u0|LessThan0~4_combout\,
	datac => \u0|stop~regout\,
	datad => \u0|count\(15),
	combout => \u0|stop~0_combout\);

-- Location: LCFF_X47_Y25_N5
\u0|stop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|stop~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|stop~regout\);

-- Location: LCCOMB_X45_Y25_N2
\u0|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add2~2_combout\ = (\u0|count\(1) & (!\u0|Add2~1\)) # (!\u0|count\(1) & ((\u0|Add2~1\) # (GND)))
-- \u0|Add2~3\ = CARRY((!\u0|Add2~1\) # (!\u0|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(1),
	datad => VCC,
	cin => \u0|Add2~1\,
	combout => \u0|Add2~2_combout\,
	cout => \u0|Add2~3\);

-- Location: LCCOMB_X47_Y25_N10
\u0|count~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count~7_combout\ = (!\u0|process_0~0_combout\ & (\u0|Add2~2_combout\ & (!\u0|LessThan0~4_combout\ & !\u0|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|process_0~0_combout\,
	datab => \u0|Add2~2_combout\,
	datac => \u0|LessThan0~4_combout\,
	datad => \u0|count\(15),
	combout => \u0|count~7_combout\);

-- Location: LCFF_X47_Y25_N11
\u0|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count~7_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(1));

-- Location: LCCOMB_X45_Y25_N4
\u0|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add2~4_combout\ = (\u0|count\(2) & (\u0|Add2~3\ $ (GND))) # (!\u0|count\(2) & (!\u0|Add2~3\ & VCC))
-- \u0|Add2~5\ = CARRY((\u0|count\(2) & !\u0|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(2),
	datad => VCC,
	cin => \u0|Add2~3\,
	combout => \u0|Add2~4_combout\,
	cout => \u0|Add2~5\);

-- Location: LCCOMB_X47_Y25_N28
\u0|count~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count~6_combout\ = (!\u0|process_0~0_combout\ & (\u0|Add2~4_combout\ & (!\u0|LessThan0~4_combout\ & !\u0|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|process_0~0_combout\,
	datab => \u0|Add2~4_combout\,
	datac => \u0|LessThan0~4_combout\,
	datad => \u0|count\(15),
	combout => \u0|count~6_combout\);

-- Location: LCFF_X47_Y25_N29
\u0|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count~6_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(2));

-- Location: LCCOMB_X45_Y25_N16
\u0|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add2~16_combout\ = (\u0|count\(8) & (\u0|Add2~15\ $ (GND))) # (!\u0|count\(8) & (!\u0|Add2~15\ & VCC))
-- \u0|Add2~17\ = CARRY((\u0|count\(8) & !\u0|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(8),
	datad => VCC,
	cin => \u0|Add2~15\,
	combout => \u0|Add2~16_combout\,
	cout => \u0|Add2~17\);

-- Location: LCCOMB_X47_Y25_N16
\u0|count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count~4_combout\ = (!\u0|process_0~0_combout\ & (\u0|Add2~16_combout\ & (!\u0|LessThan0~4_combout\ & !\u0|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|process_0~0_combout\,
	datab => \u0|Add2~16_combout\,
	datac => \u0|LessThan0~4_combout\,
	datad => \u0|count\(15),
	combout => \u0|count~4_combout\);

-- Location: LCFF_X47_Y25_N17
\u0|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count~4_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(8));

-- Location: LCCOMB_X45_Y25_N18
\u0|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add2~18_combout\ = (\u0|count\(9) & (!\u0|Add2~17\)) # (!\u0|count\(9) & ((\u0|Add2~17\) # (GND)))
-- \u0|Add2~19\ = CARRY((!\u0|Add2~17\) # (!\u0|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(9),
	datad => VCC,
	cin => \u0|Add2~17\,
	combout => \u0|Add2~18_combout\,
	cout => \u0|Add2~19\);

-- Location: LCCOMB_X48_Y25_N4
\u0|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count~3_combout\ = (!\u0|count\(15) & (!\u0|LessThan0~4_combout\ & (!\u0|process_0~0_combout\ & \u0|Add2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(15),
	datab => \u0|LessThan0~4_combout\,
	datac => \u0|process_0~0_combout\,
	datad => \u0|Add2~18_combout\,
	combout => \u0|count~3_combout\);

-- Location: LCFF_X48_Y25_N5
\u0|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(9));

-- Location: LCCOMB_X45_Y25_N20
\u0|Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add2~20_combout\ = (\u0|count\(10) & (\u0|Add2~19\ $ (GND))) # (!\u0|count\(10) & (!\u0|Add2~19\ & VCC))
-- \u0|Add2~21\ = CARRY((\u0|count\(10) & !\u0|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(10),
	datad => VCC,
	cin => \u0|Add2~19\,
	combout => \u0|Add2~20_combout\,
	cout => \u0|Add2~21\);

-- Location: LCCOMB_X48_Y25_N30
\u0|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count~2_combout\ = (!\u0|process_0~0_combout\ & (!\u0|LessThan0~4_combout\ & (!\u0|count\(15) & \u0|Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|process_0~0_combout\,
	datab => \u0|LessThan0~4_combout\,
	datac => \u0|count\(15),
	datad => \u0|Add2~20_combout\,
	combout => \u0|count~2_combout\);

-- Location: LCFF_X48_Y25_N31
\u0|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(10));

-- Location: LCCOMB_X45_Y25_N22
\u0|Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add2~22_combout\ = (\u0|count\(11) & (!\u0|Add2~21\)) # (!\u0|count\(11) & ((\u0|Add2~21\) # (GND)))
-- \u0|Add2~23\ = CARRY((!\u0|Add2~21\) # (!\u0|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(11),
	datad => VCC,
	cin => \u0|Add2~21\,
	combout => \u0|Add2~22_combout\,
	cout => \u0|Add2~23\);

-- Location: LCCOMB_X45_Y25_N24
\u0|Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add2~24_combout\ = (\u0|count\(12) & (\u0|Add2~23\ $ (GND))) # (!\u0|count\(12) & (!\u0|Add2~23\ & VCC))
-- \u0|Add2~25\ = CARRY((\u0|count\(12) & !\u0|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(12),
	datad => VCC,
	cin => \u0|Add2~23\,
	combout => \u0|Add2~24_combout\,
	cout => \u0|Add2~25\);

-- Location: LCCOMB_X48_Y25_N14
\u0|count~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count~15_combout\ = (!\u0|process_0~0_combout\ & (!\u0|LessThan0~4_combout\ & (\u0|Add2~24_combout\ & !\u0|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|process_0~0_combout\,
	datab => \u0|LessThan0~4_combout\,
	datac => \u0|Add2~24_combout\,
	datad => \u0|count\(15),
	combout => \u0|count~15_combout\);

-- Location: LCFF_X48_Y25_N15
\u0|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count~15_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(12));

-- Location: LCCOMB_X45_Y25_N30
\u0|Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add2~30_combout\ = \u0|Add2~29\ $ (\u0|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u0|count\(15),
	cin => \u0|Add2~29\,
	combout => \u0|Add2~30_combout\);

-- Location: LCCOMB_X48_Y25_N24
\u0|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count~0_combout\ = (!\u0|process_0~0_combout\ & (\u0|Add2~30_combout\ & (!\u0|count\(15) & !\u0|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|process_0~0_combout\,
	datab => \u0|Add2~30_combout\,
	datac => \u0|count\(15),
	datad => \u0|LessThan0~4_combout\,
	combout => \u0|count~0_combout\);

-- Location: LCFF_X48_Y25_N25
\u0|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(15));

-- Location: LCCOMB_X48_Y25_N28
\u0|count~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count~14_combout\ = (\u0|Add2~26_combout\ & (!\u0|count\(15) & (!\u0|process_0~0_combout\ & !\u0|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add2~26_combout\,
	datab => \u0|count\(15),
	datac => \u0|process_0~0_combout\,
	datad => \u0|LessThan0~4_combout\,
	combout => \u0|count~14_combout\);

-- Location: LCFF_X48_Y25_N29
\u0|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count~14_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(13));

-- Location: LCCOMB_X48_Y25_N22
\u0|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~3_combout\ = (\u0|count\(11)) # ((\u0|count\(10) & ((\u0|LessThan0~2_combout\) # (\u0|count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|LessThan0~2_combout\,
	datab => \u0|count\(11),
	datac => \u0|count\(9),
	datad => \u0|count\(10),
	combout => \u0|LessThan0~3_combout\);

-- Location: LCCOMB_X48_Y25_N0
\u0|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~4_combout\ = (\u0|count\(14) & (\u0|count\(13) & (\u0|count\(12) & \u0|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(14),
	datab => \u0|count\(13),
	datac => \u0|count\(12),
	datad => \u0|LessThan0~3_combout\,
	combout => \u0|LessThan0~4_combout\);

-- Location: LCCOMB_X48_Y25_N8
\u0|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count~1_combout\ = (!\u0|process_0~0_combout\ & (!\u0|LessThan0~4_combout\ & (\u0|Add2~22_combout\ & !\u0|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|process_0~0_combout\,
	datab => \u0|LessThan0~4_combout\,
	datac => \u0|Add2~22_combout\,
	datad => \u0|count\(15),
	combout => \u0|count~1_combout\);

-- Location: LCFF_X48_Y25_N9
\u0|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(11));

-- Location: LCCOMB_X48_Y25_N20
\u0|tix_mem[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem[1]~1_combout\ = (\u0|count\(15)) # ((\u0|process_0~0_combout\) # (\u0|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(15),
	datac => \u0|process_0~0_combout\,
	datad => \u0|LessThan0~4_combout\,
	combout => \u0|tix_mem[1]~1_combout\);

-- Location: LCFF_X48_Y25_N27
\u0|tix_mem[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(11),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|tix_mem[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(11));

-- Location: LCCOMB_X48_Y25_N18
\u0|tix_mem[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem[14]~feeder_combout\ = \u0|count\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|count\(14),
	combout => \u0|tix_mem[14]~feeder_combout\);

-- Location: LCFF_X48_Y25_N19
\u0|tix_mem[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem[14]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|tix_mem[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(14));

-- Location: LCFF_X48_Y25_N7
\u0|tix_mem[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(13),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|tix_mem[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(13));

-- Location: LCFF_X48_Y25_N11
\u0|tix_mem[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(12),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|tix_mem[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(12));

-- Location: LCCOMB_X48_Y25_N6
\u5|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan0~0_combout\ = (\u0|tix_mem\(14) & (\u0|tix_mem\(13) & \u0|tix_mem\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|tix_mem\(14),
	datac => \u0|tix_mem\(13),
	datad => \u0|tix_mem\(12),
	combout => \u5|LessThan0~0_combout\);

-- Location: LCCOMB_X48_Y25_N16
\u0|tix_mem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem~0_combout\ = (\u0|count\(15)) # ((!\u0|process_0~0_combout\ & (!\u0|LessThan0~4_combout\ & \u0|tix_mem\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|process_0~0_combout\,
	datab => \u0|LessThan0~4_combout\,
	datac => \u0|tix_mem\(15),
	datad => \u0|count\(15),
	combout => \u0|tix_mem~0_combout\);

-- Location: LCFF_X48_Y25_N17
\u0|tix_mem[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(15));

-- Location: LCCOMB_X49_Y25_N22
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

-- Location: LCFF_X49_Y25_N23
\u0|tix_mem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem[3]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|tix_mem[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(3));

-- Location: LCCOMB_X47_Y25_N24
\u0|count~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count~8_combout\ = (!\u0|process_0~0_combout\ & (((\u0|LessThan0~4_combout\) # (\u0|count\(15))) # (!\u0|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add2~0_combout\,
	datab => \u0|LessThan0~4_combout\,
	datac => \u0|process_0~0_combout\,
	datad => \u0|count\(15),
	combout => \u0|count~8_combout\);

-- Location: LCFF_X47_Y25_N25
\u0|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count~8_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(0));

-- Location: LCCOMB_X49_Y25_N24
\u0|tix_mem[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem[0]~feeder_combout\ = \u0|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|count\(0),
	combout => \u0|tix_mem[0]~feeder_combout\);

-- Location: LCFF_X49_Y25_N25
\u0|tix_mem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem[0]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|tix_mem[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(0));

-- Location: LCCOMB_X49_Y25_N18
\u0|tix_mem[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem[1]~feeder_combout\ = \u0|count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|count\(1),
	combout => \u0|tix_mem[1]~feeder_combout\);

-- Location: LCFF_X49_Y25_N19
\u0|tix_mem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem[1]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|tix_mem[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(1));

-- Location: LCCOMB_X49_Y25_N20
\u5|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Equal0~0_combout\ = (!\u0|tix_mem\(2) & (!\u0|tix_mem\(3) & (\u0|tix_mem\(0) & !\u0|tix_mem\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(2),
	datab => \u0|tix_mem\(3),
	datac => \u0|tix_mem\(0),
	datad => \u0|tix_mem\(1),
	combout => \u5|Equal0~0_combout\);

-- Location: LCFF_X49_Y25_N3
\u0|tix_mem[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(4),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|tix_mem[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(4));

-- Location: LCCOMB_X49_Y25_N8
\u0|tix_mem[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem[6]~feeder_combout\ = \u0|count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|count\(6),
	combout => \u0|tix_mem[6]~feeder_combout\);

-- Location: LCFF_X49_Y25_N9
\u0|tix_mem[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem[6]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|tix_mem[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(6));

-- Location: LCFF_X49_Y25_N15
\u0|tix_mem[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(10),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|tix_mem[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(10));

-- Location: LCFF_X49_Y25_N29
\u0|tix_mem[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(9),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|tix_mem[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(9));

-- Location: LCCOMB_X49_Y25_N14
\u5|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Equal0~2_combout\ = (!\u0|tix_mem\(7) & (!\u0|tix_mem\(6) & (!\u0|tix_mem\(10) & !\u0|tix_mem\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(7),
	datab => \u0|tix_mem\(6),
	datac => \u0|tix_mem\(10),
	datad => \u0|tix_mem\(9),
	combout => \u5|Equal0~2_combout\);

-- Location: LCFF_X49_Y25_N1
\u0|tix_mem[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(5),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|tix_mem[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(5));

-- Location: LCCOMB_X49_Y25_N12
\u5|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Equal0~3_combout\ = (!\u0|tix_mem\(8) & (!\u0|tix_mem\(4) & (\u5|Equal0~2_combout\ & !\u0|tix_mem\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(8),
	datab => \u0|tix_mem\(4),
	datac => \u5|Equal0~2_combout\,
	datad => \u0|tix_mem\(5),
	combout => \u5|Equal0~3_combout\);

-- Location: LCCOMB_X49_Y25_N26
\u5|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|process_0~0_combout\ = (\u0|tix_mem\(15)) # ((\u5|Equal0~1_combout\ & (\u5|Equal0~0_combout\ & \u5|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Equal0~1_combout\,
	datab => \u0|tix_mem\(15),
	datac => \u5|Equal0~0_combout\,
	datad => \u5|Equal0~3_combout\,
	combout => \u5|process_0~0_combout\);

-- Location: LCCOMB_X50_Y25_N28
\u5|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|process_0~1_combout\ = (\u5|process_0~0_combout\) # ((\u5|LessThan0~0_combout\ & ((\u5|LessThan0~2_combout\) # (\u0|tix_mem\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|LessThan0~2_combout\,
	datab => \u0|tix_mem\(11),
	datac => \u5|LessThan0~0_combout\,
	datad => \u5|process_0~0_combout\,
	combout => \u5|process_0~1_combout\);

-- Location: LCFF_X50_Y24_N31
\u0|calc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|process_0~0_combout\,
	sload => VCC,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|calc~regout\);

-- Location: LCCOMB_X54_Y25_N2
\u5|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~0_combout\ = \u5|rpm\(0) $ (VCC)
-- \u5|Add1~1\ = CARRY(\u5|rpm\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm\(0),
	datad => VCC,
	combout => \u5|Add1~0_combout\,
	cout => \u5|Add1~1\);

-- Location: LCCOMB_X48_Y25_N2
\u5|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan1~0_combout\ = (!\u0|tix_mem\(12) & (!\u0|tix_mem\(14) & (!\u0|tix_mem\(15) & !\u0|tix_mem\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(12),
	datab => \u0|tix_mem\(14),
	datac => \u0|tix_mem\(15),
	datad => \u0|tix_mem\(13),
	combout => \u5|LessThan1~0_combout\);

-- Location: LCCOMB_X50_Y25_N4
\u5|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan1~3_combout\ = (\u5|LessThan1~0_combout\ & (((\u5|LessThan1~2_combout\ & !\u0|tix_mem\(10))) # (!\u0|tix_mem\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|LessThan1~2_combout\,
	datab => \u5|LessThan1~0_combout\,
	datac => \u0|tix_mem\(10),
	datad => \u0|tix_mem\(11),
	combout => \u5|LessThan1~3_combout\);

-- Location: LCCOMB_X49_Y25_N6
\u0|tix_mem[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem[7]~feeder_combout\ = \u0|count\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|count\(7),
	combout => \u0|tix_mem[7]~feeder_combout\);

-- Location: LCFF_X49_Y25_N7
\u0|tix_mem[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem[7]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|tix_mem[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(7));

-- Location: LCCOMB_X49_Y25_N0
\u5|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Equal0~4_combout\ = (!\u0|tix_mem\(6) & !\u0|tix_mem\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|tix_mem\(6),
	datad => \u0|tix_mem\(7),
	combout => \u5|Equal0~4_combout\);

-- Location: LCCOMB_X49_Y25_N4
\u5|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan0~1_combout\ = ((!\u5|Equal0~0_combout\ & (\u0|tix_mem\(4) & \u0|tix_mem\(5)))) # (!\u5|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Equal0~0_combout\,
	datab => \u0|tix_mem\(4),
	datac => \u5|Equal0~4_combout\,
	datad => \u0|tix_mem\(5),
	combout => \u5|LessThan0~1_combout\);

-- Location: LCFF_X49_Y25_N11
\u0|tix_mem[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(8),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|tix_mem[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(8));

-- Location: LCCOMB_X49_Y25_N30
\u5|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan0~2_combout\ = (\u0|tix_mem\(10) & ((\u0|tix_mem\(9)) # ((\u5|LessThan0~1_combout\ & \u0|tix_mem\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|tix_mem\(10),
	datab => \u5|LessThan0~1_combout\,
	datac => \u0|tix_mem\(8),
	datad => \u0|tix_mem\(9),
	combout => \u5|LessThan0~2_combout\);

-- Location: LCCOMB_X50_Y25_N30
\u5|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan0~3_combout\ = (\u5|LessThan0~0_combout\ & ((\u5|LessThan0~2_combout\) # (\u0|tix_mem\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|LessThan0~0_combout\,
	datac => \u5|LessThan0~2_combout\,
	datad => \u0|tix_mem\(11),
	combout => \u5|LessThan0~3_combout\);

-- Location: LCCOMB_X50_Y25_N12
\u5|tix_int[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|tix_int[0]~0_combout\ = (\u0|calc~regout\ & (!\u5|process_0~0_combout\ & (!\u5|LessThan1~3_combout\ & !\u5|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|calc~regout\,
	datab => \u5|process_0~0_combout\,
	datac => \u5|LessThan1~3_combout\,
	datad => \u5|LessThan0~3_combout\,
	combout => \u5|tix_int[0]~0_combout\);

-- Location: LCFF_X50_Y24_N3
\u5|tix_int[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(12),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u5|tix_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(12));

-- Location: LCCOMB_X51_Y24_N6
\u5|tix_int[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|tix_int[13]~feeder_combout\ = \u0|tix_mem\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|tix_mem\(13),
	combout => \u5|tix_int[13]~feeder_combout\);

-- Location: LCFF_X51_Y24_N7
\u5|tix_int[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|tix_int[13]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|tix_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(13));

-- Location: LCCOMB_X51_Y25_N18
\u5|rpm[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[0]~0_combout\ = (\u5|tix_int\(14) & (\u5|tix_int\(12) & \u5|tix_int\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(14),
	datac => \u5|tix_int\(12),
	datad => \u5|tix_int\(13),
	combout => \u5|rpm[0]~0_combout\);

-- Location: LCFF_X50_Y24_N13
\u5|tix_int[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(9),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u5|tix_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(9));

-- Location: LCFF_X50_Y24_N15
\u5|tix_int[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(10),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u5|tix_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(10));

-- Location: LCFF_X50_Y24_N19
\u5|tix_int[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(8),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u5|tix_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(8));

-- Location: LCCOMB_X51_Y25_N8
\u5|rpm[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[0]~2_combout\ = (\u5|tix_int\(10) & ((\u5|tix_int\(9)) # ((\u5|rpm[0]~1_combout\ & \u5|tix_int\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm[0]~1_combout\,
	datab => \u5|tix_int\(9),
	datac => \u5|tix_int\(10),
	datad => \u5|tix_int\(8),
	combout => \u5|rpm[0]~2_combout\);

-- Location: LCFF_X50_Y24_N25
\u5|tix_int[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(11),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u5|tix_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(11));

-- Location: LCCOMB_X50_Y25_N18
\u5|tix_int[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|tix_int[6]~feeder_combout\ = \u0|tix_mem\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|tix_mem\(6),
	combout => \u5|tix_int[6]~feeder_combout\);

-- Location: LCFF_X50_Y25_N19
\u5|tix_int[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|tix_int[6]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|tix_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(6));

-- Location: LCCOMB_X50_Y25_N22
\u5|tix_int[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|tix_int[0]~1_combout\ = !\u0|tix_mem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|tix_mem\(0),
	combout => \u5|tix_int[0]~1_combout\);

-- Location: LCFF_X50_Y25_N23
\u5|tix_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|tix_int[0]~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|tix_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(0));

-- Location: LCCOMB_X49_Y25_N16
\u0|tix_mem[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem[2]~feeder_combout\ = \u0|count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|count\(2),
	combout => \u0|tix_mem[2]~feeder_combout\);

-- Location: LCFF_X49_Y25_N17
\u0|tix_mem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem[2]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|tix_mem[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(2));

-- Location: LCCOMB_X50_Y25_N24
\u5|tix_int[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|tix_int[2]~feeder_combout\ = \u0|tix_mem\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|tix_mem\(2),
	combout => \u5|tix_int[2]~feeder_combout\);

-- Location: LCFF_X50_Y25_N25
\u5|tix_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|tix_int[2]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|tix_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(2));

-- Location: LCFF_X50_Y24_N11
\u5|tix_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(1),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u5|tix_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(1));

-- Location: LCCOMB_X50_Y25_N20
\u5|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~1_combout\ = (\u5|tix_int\(3) & ((\u5|tix_int\(0)) # ((\u5|tix_int\(2)) # (\u5|tix_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(3),
	datab => \u5|tix_int\(0),
	datac => \u5|tix_int\(2),
	datad => \u5|tix_int\(1),
	combout => \u5|LessThan2~1_combout\);

-- Location: LCCOMB_X50_Y25_N26
\u5|tix_int[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|tix_int[4]~feeder_combout\ = \u0|tix_mem\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|tix_mem\(4),
	combout => \u5|tix_int[4]~feeder_combout\);

-- Location: LCFF_X50_Y25_N27
\u5|tix_int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|tix_int[4]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|tix_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(4));

-- Location: LCCOMB_X50_Y25_N14
\u5|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~2_combout\ = (\u5|tix_int\(6)) # ((\u5|tix_int\(5) & (\u5|LessThan2~1_combout\ & \u5|tix_int\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(5),
	datab => \u5|tix_int\(6),
	datac => \u5|LessThan2~1_combout\,
	datad => \u5|tix_int\(4),
	combout => \u5|LessThan2~2_combout\);

-- Location: LCCOMB_X51_Y25_N28
\u5|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~3_combout\ = (\u5|tix_int\(7) & (\u5|tix_int\(8) & (\u5|tix_int\(9) & \u5|LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(7),
	datab => \u5|tix_int\(8),
	datac => \u5|tix_int\(9),
	datad => \u5|LessThan2~2_combout\,
	combout => \u5|LessThan2~3_combout\);

-- Location: LCCOMB_X51_Y25_N22
\u5|LessThan2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~4_combout\ = (\u5|LessThan2~0_combout\) # ((\u5|tix_int\(11) & ((\u5|tix_int\(10)) # (\u5|LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|LessThan2~0_combout\,
	datab => \u5|tix_int\(11),
	datac => \u5|tix_int\(10),
	datad => \u5|LessThan2~3_combout\,
	combout => \u5|LessThan2~4_combout\);

-- Location: LCCOMB_X51_Y25_N24
\u5|rpm[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[0]~3_combout\ = ((\u5|rpm[0]~0_combout\ & ((\u5|tix_int\(11)) # (\u5|rpm[0]~2_combout\)))) # (!\u5|LessThan2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(11),
	datab => \u5|rpm[0]~0_combout\,
	datac => \u5|rpm[0]~2_combout\,
	datad => \u5|LessThan2~4_combout\,
	combout => \u5|rpm[0]~3_combout\);

-- Location: LCCOMB_X52_Y25_N12
\u5|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~2_combout\ = (!\u5|process_0~1_combout\ & (!\u0|calc~regout\ & (\u5|Add1~0_combout\ & !\u5|rpm[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|process_0~1_combout\,
	datab => \u0|calc~regout\,
	datac => \u5|Add1~0_combout\,
	datad => \u5|rpm[0]~3_combout\,
	combout => \u5|Add1~2_combout\);

-- Location: LCCOMB_X51_Y25_N4
\u5|rpm[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[0]~4_combout\ = (\u5|rpm[0]~0_combout\ & ((\u5|tix_int\(11)) # (\u5|rpm[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|tix_int\(11),
	datac => \u5|rpm[0]~2_combout\,
	datad => \u5|rpm[0]~0_combout\,
	combout => \u5|rpm[0]~4_combout\);

-- Location: LCFF_X50_Y24_N29
\u5|tix_int[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(7),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u5|tix_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(7));

-- Location: LCCOMB_X50_Y25_N6
\u5|tix_int[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|tix_int[3]~feeder_combout\ = \u0|tix_mem\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|tix_mem\(3),
	combout => \u5|tix_int[3]~feeder_combout\);

-- Location: LCFF_X50_Y25_N7
\u5|tix_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|tix_int[3]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|tix_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(3));

-- Location: LCCOMB_X51_Y24_N14
\u5|x[1]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[1]~24_combout\ = (\u5|tix_int\(1) & ((\u5|x\(1) & (!\u5|x[0]~23\)) # (!\u5|x\(1) & ((\u5|x[0]~23\) # (GND))))) # (!\u5|tix_int\(1) & ((\u5|x\(1) & (\u5|x[0]~23\ & VCC)) # (!\u5|x\(1) & (!\u5|x[0]~23\))))
-- \u5|x[1]~25\ = CARRY((\u5|tix_int\(1) & ((!\u5|x[0]~23\) # (!\u5|x\(1)))) # (!\u5|tix_int\(1) & (!\u5|x\(1) & !\u5|x[0]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(1),
	datab => \u5|x\(1),
	datad => VCC,
	cin => \u5|x[0]~23\,
	combout => \u5|x[1]~24_combout\,
	cout => \u5|x[1]~25\);

-- Location: LCCOMB_X51_Y25_N20
\u5|stop~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|stop~5_combout\ = (\u5|LessThan1~3_combout\ & (((\u5|stop~regout\)))) # (!\u5|LessThan1~3_combout\ & ((\u5|process_0~1_combout\ & ((\u5|stop~regout\))) # (!\u5|process_0~1_combout\ & (!\u5|stop~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|stop~4_combout\,
	datab => \u5|LessThan1~3_combout\,
	datac => \u5|stop~regout\,
	datad => \u5|process_0~1_combout\,
	combout => \u5|stop~5_combout\);

-- Location: LCFF_X51_Y25_N21
\u5|stop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|stop~5_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|stop~regout\);

-- Location: LCCOMB_X51_Y25_N12
\u5|stop~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|stop~4_combout\ = (!\u0|calc~regout\ & (((\u5|rpm[0]~3_combout\) # (\u5|stop~3_combout\)) # (!\u5|stop~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|calc~regout\,
	datab => \u5|stop~regout\,
	datac => \u5|rpm[0]~3_combout\,
	datad => \u5|stop~3_combout\,
	combout => \u5|stop~4_combout\);

-- Location: LCCOMB_X51_Y25_N10
\u5|x[19]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[19]~62_combout\ = (!\u5|process_0~1_combout\ & (!\u5|LessThan1~3_combout\ & !\u5|stop~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|process_0~1_combout\,
	datac => \u5|LessThan1~3_combout\,
	datad => \u5|stop~4_combout\,
	combout => \u5|x[19]~62_combout\);

-- Location: LCFF_X51_Y24_N15
\u5|x[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[1]~24_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|x[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(1));

-- Location: LCCOMB_X51_Y24_N18
\u5|x[3]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[3]~28_combout\ = (\u5|x\(3) & ((\u5|tix_int\(3) & (!\u5|x[2]~27\)) # (!\u5|tix_int\(3) & (\u5|x[2]~27\ & VCC)))) # (!\u5|x\(3) & ((\u5|tix_int\(3) & ((\u5|x[2]~27\) # (GND))) # (!\u5|tix_int\(3) & (!\u5|x[2]~27\))))
-- \u5|x[3]~29\ = CARRY((\u5|x\(3) & (\u5|tix_int\(3) & !\u5|x[2]~27\)) # (!\u5|x\(3) & ((\u5|tix_int\(3)) # (!\u5|x[2]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(3),
	datab => \u5|tix_int\(3),
	datad => VCC,
	cin => \u5|x[2]~27\,
	combout => \u5|x[3]~28_combout\,
	cout => \u5|x[3]~29\);

-- Location: LCCOMB_X51_Y24_N20
\u5|x[4]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[4]~30_combout\ = ((\u5|x\(4) $ (\u5|tix_int\(4) $ (\u5|x[3]~29\)))) # (GND)
-- \u5|x[4]~31\ = CARRY((\u5|x\(4) & ((!\u5|x[3]~29\) # (!\u5|tix_int\(4)))) # (!\u5|x\(4) & (!\u5|tix_int\(4) & !\u5|x[3]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(4),
	datab => \u5|tix_int\(4),
	datad => VCC,
	cin => \u5|x[3]~29\,
	combout => \u5|x[4]~30_combout\,
	cout => \u5|x[4]~31\);

-- Location: LCCOMB_X51_Y24_N22
\u5|x[5]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[5]~32_combout\ = (\u5|tix_int\(5) & ((\u5|x\(5) & (!\u5|x[4]~31\)) # (!\u5|x\(5) & ((\u5|x[4]~31\) # (GND))))) # (!\u5|tix_int\(5) & ((\u5|x\(5) & (\u5|x[4]~31\ & VCC)) # (!\u5|x\(5) & (!\u5|x[4]~31\))))
-- \u5|x[5]~33\ = CARRY((\u5|tix_int\(5) & ((!\u5|x[4]~31\) # (!\u5|x\(5)))) # (!\u5|tix_int\(5) & (!\u5|x\(5) & !\u5|x[4]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(5),
	datab => \u5|x\(5),
	datad => VCC,
	cin => \u5|x[4]~31\,
	combout => \u5|x[5]~32_combout\,
	cout => \u5|x[5]~33\);

-- Location: LCFF_X51_Y24_N23
\u5|x[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[5]~32_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|x[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(5));

-- Location: LCCOMB_X51_Y24_N24
\u5|x[6]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[6]~34_combout\ = (\u5|tix_int\(6) & ((\u5|x\(6) & (\u5|x[5]~33\ & VCC)) # (!\u5|x\(6) & (!\u5|x[5]~33\)))) # (!\u5|tix_int\(6) & ((\u5|x\(6) & (!\u5|x[5]~33\)) # (!\u5|x\(6) & ((\u5|x[5]~33\) # (GND)))))
-- \u5|x[6]~35\ = CARRY((\u5|tix_int\(6) & (!\u5|x\(6) & !\u5|x[5]~33\)) # (!\u5|tix_int\(6) & ((!\u5|x[5]~33\) # (!\u5|x\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(6),
	datab => \u5|x\(6),
	datad => VCC,
	cin => \u5|x[5]~33\,
	combout => \u5|x[6]~34_combout\,
	cout => \u5|x[6]~35\);

-- Location: LCFF_X51_Y24_N25
\u5|x[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[6]~34_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|x[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(6));

-- Location: LCCOMB_X51_Y24_N30
\u5|x[9]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[9]~40_combout\ = ((\u5|tix_int\(9) $ (\u5|x\(9) $ (!\u5|x[8]~39\)))) # (GND)
-- \u5|x[9]~41\ = CARRY((\u5|tix_int\(9) & ((\u5|x\(9)) # (!\u5|x[8]~39\))) # (!\u5|tix_int\(9) & (\u5|x\(9) & !\u5|x[8]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(9),
	datab => \u5|x\(9),
	datad => VCC,
	cin => \u5|x[8]~39\,
	combout => \u5|x[9]~40_combout\,
	cout => \u5|x[9]~41\);

-- Location: LCFF_X51_Y24_N31
\u5|x[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[9]~40_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|x[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(9));

-- Location: LCCOMB_X51_Y23_N0
\u5|x[10]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[10]~42_combout\ = (\u5|x\(10) & ((\u5|tix_int\(10) & (\u5|x[9]~41\ & VCC)) # (!\u5|tix_int\(10) & (!\u5|x[9]~41\)))) # (!\u5|x\(10) & ((\u5|tix_int\(10) & (!\u5|x[9]~41\)) # (!\u5|tix_int\(10) & ((\u5|x[9]~41\) # (GND)))))
-- \u5|x[10]~43\ = CARRY((\u5|x\(10) & (!\u5|tix_int\(10) & !\u5|x[9]~41\)) # (!\u5|x\(10) & ((!\u5|x[9]~41\) # (!\u5|tix_int\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(10),
	datab => \u5|tix_int\(10),
	datad => VCC,
	cin => \u5|x[9]~41\,
	combout => \u5|x[10]~42_combout\,
	cout => \u5|x[10]~43\);

-- Location: LCCOMB_X51_Y23_N2
\u5|x[11]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[11]~44_combout\ = (\u5|tix_int\(11) & ((\u5|x\(11) & (!\u5|x[10]~43\)) # (!\u5|x\(11) & ((\u5|x[10]~43\) # (GND))))) # (!\u5|tix_int\(11) & ((\u5|x\(11) & (\u5|x[10]~43\ & VCC)) # (!\u5|x\(11) & (!\u5|x[10]~43\))))
-- \u5|x[11]~45\ = CARRY((\u5|tix_int\(11) & ((!\u5|x[10]~43\) # (!\u5|x\(11)))) # (!\u5|tix_int\(11) & (!\u5|x\(11) & !\u5|x[10]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(11),
	datab => \u5|x\(11),
	datad => VCC,
	cin => \u5|x[10]~43\,
	combout => \u5|x[11]~44_combout\,
	cout => \u5|x[11]~45\);

-- Location: LCCOMB_X51_Y24_N10
\u5|x[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[11]~feeder_combout\ = \u5|x[11]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u5|x[11]~44_combout\,
	combout => \u5|x[11]~feeder_combout\);

-- Location: LCFF_X51_Y24_N11
\u5|x[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[11]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|x[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(11));

-- Location: LCCOMB_X51_Y23_N4
\u5|x[12]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[12]~46_combout\ = ((\u5|tix_int\(12) $ (\u5|x\(12) $ (\u5|x[11]~45\)))) # (GND)
-- \u5|x[12]~47\ = CARRY((\u5|tix_int\(12) & (\u5|x\(12) & !\u5|x[11]~45\)) # (!\u5|tix_int\(12) & ((\u5|x\(12)) # (!\u5|x[11]~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(12),
	datab => \u5|x\(12),
	datad => VCC,
	cin => \u5|x[11]~45\,
	combout => \u5|x[12]~46_combout\,
	cout => \u5|x[12]~47\);

-- Location: LCCOMB_X51_Y24_N4
\u5|x[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[12]~feeder_combout\ = \u5|x[12]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|x[12]~46_combout\,
	combout => \u5|x[12]~feeder_combout\);

-- Location: LCFF_X51_Y24_N5
\u5|x[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[12]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|x[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(12));

-- Location: LCCOMB_X51_Y23_N6
\u5|x[13]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[13]~48_combout\ = ((\u5|x\(13) $ (\u5|tix_int\(13) $ (!\u5|x[12]~47\)))) # (GND)
-- \u5|x[13]~49\ = CARRY((\u5|x\(13) & ((\u5|tix_int\(13)) # (!\u5|x[12]~47\))) # (!\u5|x\(13) & (\u5|tix_int\(13) & !\u5|x[12]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(13),
	datab => \u5|tix_int\(13),
	datad => VCC,
	cin => \u5|x[12]~47\,
	combout => \u5|x[13]~48_combout\,
	cout => \u5|x[13]~49\);

-- Location: LCCOMB_X51_Y23_N8
\u5|x[14]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[14]~50_combout\ = ((\u5|tix_int\(14) $ (\u5|x\(14) $ (\u5|x[13]~49\)))) # (GND)
-- \u5|x[14]~51\ = CARRY((\u5|tix_int\(14) & (\u5|x\(14) & !\u5|x[13]~49\)) # (!\u5|tix_int\(14) & ((\u5|x\(14)) # (!\u5|x[13]~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(14),
	datab => \u5|x\(14),
	datad => VCC,
	cin => \u5|x[13]~49\,
	combout => \u5|x[14]~50_combout\,
	cout => \u5|x[14]~51\);

-- Location: LCFF_X51_Y23_N9
\u5|x[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[14]~50_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|x[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(14));

-- Location: LCCOMB_X51_Y23_N12
\u5|x[16]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[16]~54_combout\ = (\u5|x\(16) & (!\u5|x[15]~53\)) # (!\u5|x\(16) & ((\u5|x[15]~53\) # (GND)))
-- \u5|x[16]~55\ = CARRY((!\u5|x[15]~53\) # (!\u5|x\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(16),
	datad => VCC,
	cin => \u5|x[15]~53\,
	combout => \u5|x[16]~54_combout\,
	cout => \u5|x[16]~55\);

-- Location: LCFF_X51_Y23_N13
\u5|x[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[16]~54_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|x[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(16));

-- Location: LCFF_X51_Y23_N15
\u5|x[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[17]~56_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|x[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(17));

-- Location: LCFF_X51_Y25_N17
\u5|tix_int[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(14),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u5|tix_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(14));

-- Location: LCFF_X51_Y23_N7
\u5|x[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[13]~48_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|x[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(13));

-- Location: LCCOMB_X51_Y24_N8
\u5|x[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[10]~feeder_combout\ = \u5|x[10]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u5|x[10]~42_combout\,
	combout => \u5|x[10]~feeder_combout\);

-- Location: LCFF_X51_Y24_N9
\u5|x[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[10]~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|x[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(10));

-- Location: LCFF_X51_Y24_N21
\u5|x[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[4]~30_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|x[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(4));

-- Location: LCFF_X51_Y24_N19
\u5|x[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[3]~28_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|x[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(3));

-- Location: LCCOMB_X50_Y24_N2
\u5|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan4~1_cout\ = CARRY((\u5|x\(0) & !\u5|tix_int\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(0),
	datab => \u5|tix_int\(0),
	datad => VCC,
	cout => \u5|LessThan4~1_cout\);

-- Location: LCCOMB_X50_Y24_N4
\u5|LessThan4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan4~3_cout\ = CARRY((\u5|tix_int\(1) & ((!\u5|LessThan4~1_cout\) # (!\u5|x\(1)))) # (!\u5|tix_int\(1) & (!\u5|x\(1) & !\u5|LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(1),
	datab => \u5|x\(1),
	datad => VCC,
	cin => \u5|LessThan4~1_cout\,
	cout => \u5|LessThan4~3_cout\);

-- Location: LCCOMB_X50_Y24_N6
\u5|LessThan4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan4~5_cout\ = CARRY((\u5|x\(2) & ((!\u5|LessThan4~3_cout\) # (!\u5|tix_int\(2)))) # (!\u5|x\(2) & (!\u5|tix_int\(2) & !\u5|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(2),
	datab => \u5|tix_int\(2),
	datad => VCC,
	cin => \u5|LessThan4~3_cout\,
	cout => \u5|LessThan4~5_cout\);

-- Location: LCCOMB_X50_Y24_N8
\u5|LessThan4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan4~7_cout\ = CARRY((\u5|tix_int\(3) & ((!\u5|LessThan4~5_cout\) # (!\u5|x\(3)))) # (!\u5|tix_int\(3) & (!\u5|x\(3) & !\u5|LessThan4~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(3),
	datab => \u5|x\(3),
	datad => VCC,
	cin => \u5|LessThan4~5_cout\,
	cout => \u5|LessThan4~7_cout\);

-- Location: LCCOMB_X50_Y24_N10
\u5|LessThan4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan4~9_cout\ = CARRY((\u5|tix_int\(4) & (\u5|x\(4) & !\u5|LessThan4~7_cout\)) # (!\u5|tix_int\(4) & ((\u5|x\(4)) # (!\u5|LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(4),
	datab => \u5|x\(4),
	datad => VCC,
	cin => \u5|LessThan4~7_cout\,
	cout => \u5|LessThan4~9_cout\);

-- Location: LCCOMB_X50_Y24_N12
\u5|LessThan4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan4~11_cout\ = CARRY((\u5|tix_int\(5) & ((!\u5|LessThan4~9_cout\) # (!\u5|x\(5)))) # (!\u5|tix_int\(5) & (!\u5|x\(5) & !\u5|LessThan4~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(5),
	datab => \u5|x\(5),
	datad => VCC,
	cin => \u5|LessThan4~9_cout\,
	cout => \u5|LessThan4~11_cout\);

-- Location: LCCOMB_X50_Y24_N14
\u5|LessThan4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan4~13_cout\ = CARRY((\u5|tix_int\(6) & (!\u5|x\(6) & !\u5|LessThan4~11_cout\)) # (!\u5|tix_int\(6) & ((!\u5|LessThan4~11_cout\) # (!\u5|x\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(6),
	datab => \u5|x\(6),
	datad => VCC,
	cin => \u5|LessThan4~11_cout\,
	cout => \u5|LessThan4~13_cout\);

-- Location: LCCOMB_X50_Y24_N16
\u5|LessThan4~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan4~15_cout\ = CARRY((\u5|x\(7) & ((\u5|tix_int\(7)) # (!\u5|LessThan4~13_cout\))) # (!\u5|x\(7) & (\u5|tix_int\(7) & !\u5|LessThan4~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(7),
	datab => \u5|tix_int\(7),
	datad => VCC,
	cin => \u5|LessThan4~13_cout\,
	cout => \u5|LessThan4~15_cout\);

-- Location: LCCOMB_X50_Y24_N18
\u5|LessThan4~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan4~17_cout\ = CARRY((\u5|x\(8) & (!\u5|tix_int\(8) & !\u5|LessThan4~15_cout\)) # (!\u5|x\(8) & ((!\u5|LessThan4~15_cout\) # (!\u5|tix_int\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(8),
	datab => \u5|tix_int\(8),
	datad => VCC,
	cin => \u5|LessThan4~15_cout\,
	cout => \u5|LessThan4~17_cout\);

-- Location: LCCOMB_X50_Y24_N20
\u5|LessThan4~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan4~19_cout\ = CARRY((\u5|tix_int\(9) & ((\u5|x\(9)) # (!\u5|LessThan4~17_cout\))) # (!\u5|tix_int\(9) & (\u5|x\(9) & !\u5|LessThan4~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(9),
	datab => \u5|x\(9),
	datad => VCC,
	cin => \u5|LessThan4~17_cout\,
	cout => \u5|LessThan4~19_cout\);

-- Location: LCCOMB_X50_Y24_N22
\u5|LessThan4~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan4~21_cout\ = CARRY((\u5|tix_int\(10) & (!\u5|x\(10) & !\u5|LessThan4~19_cout\)) # (!\u5|tix_int\(10) & ((!\u5|LessThan4~19_cout\) # (!\u5|x\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(10),
	datab => \u5|x\(10),
	datad => VCC,
	cin => \u5|LessThan4~19_cout\,
	cout => \u5|LessThan4~21_cout\);

-- Location: LCCOMB_X50_Y24_N24
\u5|LessThan4~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan4~23_cout\ = CARRY((\u5|tix_int\(11) & ((!\u5|LessThan4~21_cout\) # (!\u5|x\(11)))) # (!\u5|tix_int\(11) & (!\u5|x\(11) & !\u5|LessThan4~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(11),
	datab => \u5|x\(11),
	datad => VCC,
	cin => \u5|LessThan4~21_cout\,
	cout => \u5|LessThan4~23_cout\);

-- Location: LCCOMB_X50_Y24_N26
\u5|LessThan4~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan4~25_cout\ = CARRY((\u5|x\(12) & ((!\u5|LessThan4~23_cout\) # (!\u5|tix_int\(12)))) # (!\u5|x\(12) & (!\u5|tix_int\(12) & !\u5|LessThan4~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(12),
	datab => \u5|tix_int\(12),
	datad => VCC,
	cin => \u5|LessThan4~23_cout\,
	cout => \u5|LessThan4~25_cout\);

-- Location: LCCOMB_X50_Y24_N28
\u5|LessThan4~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan4~27_cout\ = CARRY((\u5|tix_int\(13) & ((\u5|x\(13)) # (!\u5|LessThan4~25_cout\))) # (!\u5|tix_int\(13) & (\u5|x\(13) & !\u5|LessThan4~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(13),
	datab => \u5|x\(13),
	datad => VCC,
	cin => \u5|LessThan4~25_cout\,
	cout => \u5|LessThan4~27_cout\);

-- Location: LCCOMB_X50_Y24_N30
\u5|LessThan4~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan4~28_combout\ = (\u5|x\(14) & ((!\u5|tix_int\(14)) # (!\u5|LessThan4~27_cout\))) # (!\u5|x\(14) & (!\u5|LessThan4~27_cout\ & !\u5|tix_int\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|x\(14),
	datad => \u5|tix_int\(14),
	cin => \u5|LessThan4~27_cout\,
	combout => \u5|LessThan4~28_combout\);

-- Location: LCCOMB_X51_Y25_N30
\u5|stop~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|stop~3_combout\ = (\u5|stop~2_combout\ & (\u5|x\(16) & (!\u5|x\(17) & !\u5|LessThan4~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|stop~2_combout\,
	datab => \u5|x\(16),
	datac => \u5|x\(17),
	datad => \u5|LessThan4~28_combout\,
	combout => \u5|stop~3_combout\);

-- Location: LCCOMB_X51_Y25_N14
\u5|rpm[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[0]~5_combout\ = ((\u5|LessThan2~4_combout\ & (!\u5|rpm[0]~4_combout\ & \u5|stop~3_combout\))) # (!\u5|stop~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|stop~regout\,
	datab => \u5|LessThan2~4_combout\,
	datac => \u5|rpm[0]~4_combout\,
	datad => \u5|stop~3_combout\,
	combout => \u5|rpm[0]~5_combout\);

-- Location: LCCOMB_X52_Y25_N14
\u5|rpm[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[0]~6_combout\ = (\u5|process_0~1_combout\) # ((!\u5|LessThan1~3_combout\ & ((\u0|calc~regout\) # (!\u5|rpm[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|calc~regout\,
	datab => \u5|LessThan1~3_combout\,
	datac => \u5|process_0~1_combout\,
	datad => \u5|rpm[0]~5_combout\,
	combout => \u5|rpm[0]~6_combout\);

-- Location: LCFF_X52_Y25_N13
\u5|rpm[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|Add1~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(0));

-- Location: LCCOMB_X52_Y25_N16
\u5|rpm_mem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm_mem~0_combout\ = (!\u5|process_0~1_combout\ & \u5|rpm\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|process_0~1_combout\,
	datad => \u5|rpm\(0),
	combout => \u5|rpm_mem~0_combout\);

-- Location: LCCOMB_X51_Y25_N26
\u5|rpm_mem[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm_mem[7]~1_combout\ = (!\u0|calc~regout\ & (!\u5|LessThan1~3_combout\ & !\u5|stop~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|calc~regout\,
	datab => \u5|LessThan1~3_combout\,
	datac => \u5|stop~regout\,
	combout => \u5|rpm_mem[7]~1_combout\);

-- Location: LCCOMB_X52_Y25_N30
\u5|rpm_mem[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm_mem[7]~2_combout\ = (\BUTTON~combout\(3) & ((\u5|process_0~0_combout\) # ((\u5|LessThan0~3_combout\) # (\u5|rpm_mem[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|process_0~0_combout\,
	datab => \BUTTON~combout\(3),
	datac => \u5|LessThan0~3_combout\,
	datad => \u5|rpm_mem[7]~1_combout\,
	combout => \u5|rpm_mem[7]~2_combout\);

-- Location: LCFF_X52_Y25_N17
\u5|rpm_mem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|rpm_mem~0_combout\,
	ena => \u5|rpm_mem[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(0));

-- Location: LCFF_X52_Y24_N9
\u8|tot_RPM[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM[0]~12_combout\,
	sdata => \u5|rpm_mem\(0),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u3c|ALT_INV_long~regout\,
	ena => \u8|gem_RPM[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM\(0));

-- Location: LCCOMB_X53_Y23_N28
\u8|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|process_0~0_combout\ = (\u8|Equal0~4_combout\ & !\start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|Equal0~4_combout\,
	datad => \start~regout\,
	combout => \u8|process_0~0_combout\);

-- Location: LCFF_X51_Y22_N7
\u8|tot_RPM_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM_int[0]~12_combout\,
	sdata => \u8|tot_RPM\(0),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u3c|ALT_INV_long~regout\,
	sload => \u8|process_0~0_combout\,
	ena => \u8|gem_RPM_int[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM_int\(0));

-- Location: LCCOMB_X51_Y22_N8
\u8|tot_RPM_int[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM_int[1]~14_combout\ = (\u8|count_RPM\(1) & ((\u8|tot_RPM_int\(1) & (!\u8|tot_RPM_int[0]~13\)) # (!\u8|tot_RPM_int\(1) & ((\u8|tot_RPM_int[0]~13\) # (GND))))) # (!\u8|count_RPM\(1) & ((\u8|tot_RPM_int\(1) & (\u8|tot_RPM_int[0]~13\ & VCC)) # 
-- (!\u8|tot_RPM_int\(1) & (!\u8|tot_RPM_int[0]~13\))))
-- \u8|tot_RPM_int[1]~15\ = CARRY((\u8|count_RPM\(1) & ((!\u8|tot_RPM_int[0]~13\) # (!\u8|tot_RPM_int\(1)))) # (!\u8|count_RPM\(1) & (!\u8|tot_RPM_int\(1) & !\u8|tot_RPM_int[0]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count_RPM\(1),
	datab => \u8|tot_RPM_int\(1),
	datad => VCC,
	cin => \u8|tot_RPM_int[0]~13\,
	combout => \u8|tot_RPM_int[1]~14_combout\,
	cout => \u8|tot_RPM_int[1]~15\);

-- Location: LCCOMB_X54_Y25_N4
\u5|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~3_combout\ = (\u5|rpm\(1) & (!\u5|Add1~1\)) # (!\u5|rpm\(1) & ((\u5|Add1~1\) # (GND)))
-- \u5|Add1~4\ = CARRY((!\u5|Add1~1\) # (!\u5|rpm\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm\(1),
	datad => VCC,
	cin => \u5|Add1~1\,
	combout => \u5|Add1~3_combout\,
	cout => \u5|Add1~4\);

-- Location: LCCOMB_X52_Y25_N28
\u5|Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~5_combout\ = (!\u5|process_0~1_combout\ & (!\u5|rpm[0]~3_combout\ & (!\u0|calc~regout\ & \u5|Add1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|process_0~1_combout\,
	datab => \u5|rpm[0]~3_combout\,
	datac => \u0|calc~regout\,
	datad => \u5|Add1~3_combout\,
	combout => \u5|Add1~5_combout\);

-- Location: LCFF_X52_Y25_N29
\u5|rpm[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|Add1~5_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(1));

-- Location: LCCOMB_X52_Y25_N18
\u5|rpm_mem~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm_mem~3_combout\ = (!\u5|process_0~1_combout\ & \u5|rpm\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|process_0~1_combout\,
	datad => \u5|rpm\(1),
	combout => \u5|rpm_mem~3_combout\);

-- Location: LCFF_X52_Y25_N19
\u5|rpm_mem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|rpm_mem~3_combout\,
	ena => \u5|rpm_mem[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(1));

-- Location: LCCOMB_X52_Y24_N10
\u8|tot_RPM[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM[1]~14_combout\ = (\u8|tot_RPM\(1) & ((\u5|rpm_mem\(1) & (\u8|tot_RPM[0]~13\ & VCC)) # (!\u5|rpm_mem\(1) & (!\u8|tot_RPM[0]~13\)))) # (!\u8|tot_RPM\(1) & ((\u5|rpm_mem\(1) & (!\u8|tot_RPM[0]~13\)) # (!\u5|rpm_mem\(1) & ((\u8|tot_RPM[0]~13\) # 
-- (GND)))))
-- \u8|tot_RPM[1]~15\ = CARRY((\u8|tot_RPM\(1) & (!\u5|rpm_mem\(1) & !\u8|tot_RPM[0]~13\)) # (!\u8|tot_RPM\(1) & ((!\u8|tot_RPM[0]~13\) # (!\u5|rpm_mem\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tot_RPM\(1),
	datab => \u5|rpm_mem\(1),
	datad => VCC,
	cin => \u8|tot_RPM[0]~13\,
	combout => \u8|tot_RPM[1]~14_combout\,
	cout => \u8|tot_RPM[1]~15\);

-- Location: LCFF_X52_Y24_N11
\u8|tot_RPM[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM[1]~14_combout\,
	sdata => \u5|rpm_mem\(1),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u3c|ALT_INV_long~regout\,
	ena => \u8|gem_RPM[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM\(1));

-- Location: LCFF_X51_Y22_N9
\u8|tot_RPM_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM_int[1]~14_combout\,
	sdata => \u8|tot_RPM\(1),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u3c|ALT_INV_long~regout\,
	sload => \u8|process_0~0_combout\,
	ena => \u8|gem_RPM_int[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM_int\(1));

-- Location: LCCOMB_X51_Y22_N10
\u8|tot_RPM_int[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM_int[2]~16_combout\ = ((\u8|tot_RPM_int\(2) $ (\u8|count_RPM\(2) $ (\u8|tot_RPM_int[1]~15\)))) # (GND)
-- \u8|tot_RPM_int[2]~17\ = CARRY((\u8|tot_RPM_int\(2) & ((!\u8|tot_RPM_int[1]~15\) # (!\u8|count_RPM\(2)))) # (!\u8|tot_RPM_int\(2) & (!\u8|count_RPM\(2) & !\u8|tot_RPM_int[1]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tot_RPM_int\(2),
	datab => \u8|count_RPM\(2),
	datad => VCC,
	cin => \u8|tot_RPM_int[1]~15\,
	combout => \u8|tot_RPM_int[2]~16_combout\,
	cout => \u8|tot_RPM_int[2]~17\);

-- Location: LCCOMB_X51_Y22_N12
\u8|tot_RPM_int[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM_int[3]~18_combout\ = (\u8|tot_RPM_int\(3) & ((\u8|count_RPM\(3) & (!\u8|tot_RPM_int[2]~17\)) # (!\u8|count_RPM\(3) & (\u8|tot_RPM_int[2]~17\ & VCC)))) # (!\u8|tot_RPM_int\(3) & ((\u8|count_RPM\(3) & ((\u8|tot_RPM_int[2]~17\) # (GND))) # 
-- (!\u8|count_RPM\(3) & (!\u8|tot_RPM_int[2]~17\))))
-- \u8|tot_RPM_int[3]~19\ = CARRY((\u8|tot_RPM_int\(3) & (\u8|count_RPM\(3) & !\u8|tot_RPM_int[2]~17\)) # (!\u8|tot_RPM_int\(3) & ((\u8|count_RPM\(3)) # (!\u8|tot_RPM_int[2]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tot_RPM_int\(3),
	datab => \u8|count_RPM\(3),
	datad => VCC,
	cin => \u8|tot_RPM_int[2]~17\,
	combout => \u8|tot_RPM_int[3]~18_combout\,
	cout => \u8|tot_RPM_int[3]~19\);

-- Location: LCCOMB_X51_Y22_N14
\u8|tot_RPM_int[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM_int[4]~20_combout\ = ((\u8|count_RPM\(4) $ (\u8|tot_RPM_int\(4) $ (\u8|tot_RPM_int[3]~19\)))) # (GND)
-- \u8|tot_RPM_int[4]~21\ = CARRY((\u8|count_RPM\(4) & (\u8|tot_RPM_int\(4) & !\u8|tot_RPM_int[3]~19\)) # (!\u8|count_RPM\(4) & ((\u8|tot_RPM_int\(4)) # (!\u8|tot_RPM_int[3]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count_RPM\(4),
	datab => \u8|tot_RPM_int\(4),
	datad => VCC,
	cin => \u8|tot_RPM_int[3]~19\,
	combout => \u8|tot_RPM_int[4]~20_combout\,
	cout => \u8|tot_RPM_int[4]~21\);

-- Location: LCCOMB_X54_Y25_N6
\u5|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~6_combout\ = (\u5|rpm\(2) & (\u5|Add1~4\ $ (GND))) # (!\u5|rpm\(2) & (!\u5|Add1~4\ & VCC))
-- \u5|Add1~7\ = CARRY((\u5|rpm\(2) & !\u5|Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm\(2),
	datad => VCC,
	cin => \u5|Add1~4\,
	combout => \u5|Add1~6_combout\,
	cout => \u5|Add1~7\);

-- Location: LCCOMB_X52_Y25_N6
\u5|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~8_combout\ = (!\u5|process_0~1_combout\ & (!\u5|rpm[0]~3_combout\ & (!\u0|calc~regout\ & \u5|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|process_0~1_combout\,
	datab => \u5|rpm[0]~3_combout\,
	datac => \u0|calc~regout\,
	datad => \u5|Add1~6_combout\,
	combout => \u5|Add1~8_combout\);

-- Location: LCFF_X52_Y25_N7
\u5|rpm[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|Add1~8_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(2));

-- Location: LCCOMB_X54_Y25_N10
\u5|Add1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~11_combout\ = (\u5|rpm\(4) & (\u5|Add1~10\ $ (GND))) # (!\u5|rpm\(4) & (!\u5|Add1~10\ & VCC))
-- \u5|Add1~12\ = CARRY((\u5|rpm\(4) & !\u5|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm\(4),
	datad => VCC,
	cin => \u5|Add1~10\,
	combout => \u5|Add1~11_combout\,
	cout => \u5|Add1~12\);

-- Location: LCCOMB_X52_Y25_N8
\u5|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~20_combout\ = (!\u5|process_0~1_combout\ & (!\u5|rpm[0]~3_combout\ & (!\u0|calc~regout\ & \u5|Add1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|process_0~1_combout\,
	datab => \u5|rpm[0]~3_combout\,
	datac => \u0|calc~regout\,
	datad => \u5|Add1~11_combout\,
	combout => \u5|Add1~20_combout\);

-- Location: LCFF_X52_Y25_N9
\u5|rpm[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|Add1~20_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(4));

-- Location: LCCOMB_X53_Y25_N2
\u5|rpm_mem~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm_mem~9_combout\ = (\u5|rpm\(4) & !\u5|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm\(4),
	datad => \u5|process_0~1_combout\,
	combout => \u5|rpm_mem~9_combout\);

-- Location: LCFF_X53_Y25_N3
\u5|rpm_mem[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|rpm_mem~9_combout\,
	ena => \u5|rpm_mem[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(4));

-- Location: LCCOMB_X52_Y24_N12
\u8|tot_RPM[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM[2]~16_combout\ = ((\u5|rpm_mem\(2) $ (\u8|tot_RPM\(2) $ (!\u8|tot_RPM[1]~15\)))) # (GND)
-- \u8|tot_RPM[2]~17\ = CARRY((\u5|rpm_mem\(2) & ((\u8|tot_RPM\(2)) # (!\u8|tot_RPM[1]~15\))) # (!\u5|rpm_mem\(2) & (\u8|tot_RPM\(2) & !\u8|tot_RPM[1]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(2),
	datab => \u8|tot_RPM\(2),
	datad => VCC,
	cin => \u8|tot_RPM[1]~15\,
	combout => \u8|tot_RPM[2]~16_combout\,
	cout => \u8|tot_RPM[2]~17\);

-- Location: LCCOMB_X52_Y25_N24
\u5|rpm_mem~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm_mem~4_combout\ = (!\u5|process_0~1_combout\ & \u5|rpm\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|process_0~1_combout\,
	datad => \u5|rpm\(2),
	combout => \u5|rpm_mem~4_combout\);

-- Location: LCFF_X53_Y25_N1
\u5|rpm_mem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u5|rpm_mem~4_combout\,
	sload => VCC,
	ena => \u5|rpm_mem[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(2));

-- Location: LCFF_X52_Y24_N13
\u8|tot_RPM[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM[2]~16_combout\,
	sdata => \u5|rpm_mem\(2),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u3c|ALT_INV_long~regout\,
	ena => \u8|gem_RPM[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM\(2));

-- Location: LCCOMB_X52_Y24_N14
\u8|tot_RPM[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM[3]~18_combout\ = (\u5|rpm_mem\(3) & ((\u8|tot_RPM\(3) & (\u8|tot_RPM[2]~17\ & VCC)) # (!\u8|tot_RPM\(3) & (!\u8|tot_RPM[2]~17\)))) # (!\u5|rpm_mem\(3) & ((\u8|tot_RPM\(3) & (!\u8|tot_RPM[2]~17\)) # (!\u8|tot_RPM\(3) & ((\u8|tot_RPM[2]~17\) # 
-- (GND)))))
-- \u8|tot_RPM[3]~19\ = CARRY((\u5|rpm_mem\(3) & (!\u8|tot_RPM\(3) & !\u8|tot_RPM[2]~17\)) # (!\u5|rpm_mem\(3) & ((!\u8|tot_RPM[2]~17\) # (!\u8|tot_RPM\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(3),
	datab => \u8|tot_RPM\(3),
	datad => VCC,
	cin => \u8|tot_RPM[2]~17\,
	combout => \u8|tot_RPM[3]~18_combout\,
	cout => \u8|tot_RPM[3]~19\);

-- Location: LCCOMB_X52_Y25_N0
\u5|rpm~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm~7_combout\ = (!\u0|calc~regout\ & (\u5|rpm[0]~3_combout\ & (!\u5|process_0~1_combout\ & \u5|LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|calc~regout\,
	datab => \u5|rpm[0]~3_combout\,
	datac => \u5|process_0~1_combout\,
	datad => \u5|LessThan2~4_combout\,
	combout => \u5|rpm~7_combout\);

-- Location: LCCOMB_X52_Y25_N26
\u5|rpm[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[0]~8_combout\ = (\u0|calc~regout\) # ((\u5|process_0~1_combout\) # (\u5|rpm[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|calc~regout\,
	datac => \u5|process_0~1_combout\,
	datad => \u5|rpm[0]~3_combout\,
	combout => \u5|rpm[0]~8_combout\);

-- Location: LCCOMB_X52_Y25_N10
\u5|rpm~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm~9_combout\ = (\u5|rpm~7_combout\) # ((\u5|Add1~9_combout\ & !\u5|rpm[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Add1~9_combout\,
	datac => \u5|rpm~7_combout\,
	datad => \u5|rpm[0]~8_combout\,
	combout => \u5|rpm~9_combout\);

-- Location: LCFF_X52_Y25_N11
\u5|rpm[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|rpm~9_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(3));

-- Location: LCCOMB_X52_Y25_N20
\u5|rpm_mem~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm_mem~5_combout\ = (!\u5|process_0~1_combout\ & \u5|rpm\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|process_0~1_combout\,
	datad => \u5|rpm\(3),
	combout => \u5|rpm_mem~5_combout\);

-- Location: LCFF_X53_Y25_N23
\u5|rpm_mem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u5|rpm_mem~5_combout\,
	sload => VCC,
	ena => \u5|rpm_mem[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(3));

-- Location: LCFF_X52_Y24_N15
\u8|tot_RPM[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM[3]~18_combout\,
	sdata => \u5|rpm_mem\(3),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u3c|ALT_INV_long~regout\,
	ena => \u8|gem_RPM[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM\(3));

-- Location: LCCOMB_X52_Y24_N16
\u8|tot_RPM[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM[4]~20_combout\ = ((\u8|tot_RPM\(4) $ (\u5|rpm_mem\(4) $ (!\u8|tot_RPM[3]~19\)))) # (GND)
-- \u8|tot_RPM[4]~21\ = CARRY((\u8|tot_RPM\(4) & ((\u5|rpm_mem\(4)) # (!\u8|tot_RPM[3]~19\))) # (!\u8|tot_RPM\(4) & (\u5|rpm_mem\(4) & !\u8|tot_RPM[3]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tot_RPM\(4),
	datab => \u5|rpm_mem\(4),
	datad => VCC,
	cin => \u8|tot_RPM[3]~19\,
	combout => \u8|tot_RPM[4]~20_combout\,
	cout => \u8|tot_RPM[4]~21\);

-- Location: LCFF_X52_Y24_N17
\u8|tot_RPM[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM[4]~20_combout\,
	sdata => \u5|rpm_mem\(4),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u3c|ALT_INV_long~regout\,
	ena => \u8|gem_RPM[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM\(4));

-- Location: LCFF_X51_Y22_N15
\u8|tot_RPM_int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM_int[4]~20_combout\,
	sdata => \u8|tot_RPM\(4),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u3c|ALT_INV_long~regout\,
	sload => \u8|process_0~0_combout\,
	ena => \u8|gem_RPM_int[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM_int\(4));

-- Location: LCCOMB_X51_Y22_N16
\u8|tot_RPM_int[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM_int[5]~22_combout\ = (\u8|count_RPM\(5) & ((\u8|tot_RPM_int\(5) & (!\u8|tot_RPM_int[4]~21\)) # (!\u8|tot_RPM_int\(5) & ((\u8|tot_RPM_int[4]~21\) # (GND))))) # (!\u8|count_RPM\(5) & ((\u8|tot_RPM_int\(5) & (\u8|tot_RPM_int[4]~21\ & VCC)) # 
-- (!\u8|tot_RPM_int\(5) & (!\u8|tot_RPM_int[4]~21\))))
-- \u8|tot_RPM_int[5]~23\ = CARRY((\u8|count_RPM\(5) & ((!\u8|tot_RPM_int[4]~21\) # (!\u8|tot_RPM_int\(5)))) # (!\u8|count_RPM\(5) & (!\u8|tot_RPM_int\(5) & !\u8|tot_RPM_int[4]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count_RPM\(5),
	datab => \u8|tot_RPM_int\(5),
	datad => VCC,
	cin => \u8|tot_RPM_int[4]~21\,
	combout => \u8|tot_RPM_int[5]~22_combout\,
	cout => \u8|tot_RPM_int[5]~23\);

-- Location: LCCOMB_X52_Y24_N18
\u8|tot_RPM[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM[5]~22_combout\ = (\u5|rpm_mem\(5) & ((\u8|tot_RPM\(5) & (\u8|tot_RPM[4]~21\ & VCC)) # (!\u8|tot_RPM\(5) & (!\u8|tot_RPM[4]~21\)))) # (!\u5|rpm_mem\(5) & ((\u8|tot_RPM\(5) & (!\u8|tot_RPM[4]~21\)) # (!\u8|tot_RPM\(5) & ((\u8|tot_RPM[4]~21\) # 
-- (GND)))))
-- \u8|tot_RPM[5]~23\ = CARRY((\u5|rpm_mem\(5) & (!\u8|tot_RPM\(5) & !\u8|tot_RPM[4]~21\)) # (!\u5|rpm_mem\(5) & ((!\u8|tot_RPM[4]~21\) # (!\u8|tot_RPM\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(5),
	datab => \u8|tot_RPM\(5),
	datad => VCC,
	cin => \u8|tot_RPM[4]~21\,
	combout => \u8|tot_RPM[5]~22_combout\,
	cout => \u8|tot_RPM[5]~23\);

-- Location: LCCOMB_X54_Y25_N12
\u5|Add1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~13_combout\ = (\u5|rpm\(5) & (!\u5|Add1~12\)) # (!\u5|rpm\(5) & ((\u5|Add1~12\) # (GND)))
-- \u5|Add1~14\ = CARRY((!\u5|Add1~12\) # (!\u5|rpm\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm\(5),
	datad => VCC,
	cin => \u5|Add1~12\,
	combout => \u5|Add1~13_combout\,
	cout => \u5|Add1~14\);

-- Location: LCCOMB_X52_Y25_N2
\u5|Add1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~19_combout\ = (!\u5|process_0~1_combout\ & (!\u5|rpm[0]~3_combout\ & (!\u0|calc~regout\ & \u5|Add1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|process_0~1_combout\,
	datab => \u5|rpm[0]~3_combout\,
	datac => \u0|calc~regout\,
	datad => \u5|Add1~13_combout\,
	combout => \u5|Add1~19_combout\);

-- Location: LCFF_X52_Y25_N3
\u5|rpm[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|Add1~19_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(5));

-- Location: LCCOMB_X53_Y25_N12
\u5|rpm_mem~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm_mem~8_combout\ = (\u5|rpm\(5) & !\u5|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm\(5),
	datad => \u5|process_0~1_combout\,
	combout => \u5|rpm_mem~8_combout\);

-- Location: LCFF_X53_Y25_N13
\u5|rpm_mem[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|rpm_mem~8_combout\,
	ena => \u5|rpm_mem[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(5));

-- Location: LCFF_X52_Y24_N19
\u8|tot_RPM[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM[5]~22_combout\,
	sdata => \u5|rpm_mem\(5),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u3c|ALT_INV_long~regout\,
	ena => \u8|gem_RPM[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM\(5));

-- Location: LCFF_X51_Y22_N17
\u8|tot_RPM_int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM_int[5]~22_combout\,
	sdata => \u8|tot_RPM\(5),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u3c|ALT_INV_long~regout\,
	sload => \u8|process_0~0_combout\,
	ena => \u8|gem_RPM_int[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM_int\(5));

-- Location: LCCOMB_X51_Y22_N18
\u8|tot_RPM_int[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM_int[6]~24_combout\ = ((\u8|count_RPM\(6) $ (\u8|tot_RPM_int\(6) $ (\u8|tot_RPM_int[5]~23\)))) # (GND)
-- \u8|tot_RPM_int[6]~25\ = CARRY((\u8|count_RPM\(6) & (\u8|tot_RPM_int\(6) & !\u8|tot_RPM_int[5]~23\)) # (!\u8|count_RPM\(6) & ((\u8|tot_RPM_int\(6)) # (!\u8|tot_RPM_int[5]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count_RPM\(6),
	datab => \u8|tot_RPM_int\(6),
	datad => VCC,
	cin => \u8|tot_RPM_int[5]~23\,
	combout => \u8|tot_RPM_int[6]~24_combout\,
	cout => \u8|tot_RPM_int[6]~25\);

-- Location: LCCOMB_X54_Y25_N14
\u5|Add1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~15_combout\ = (\u5|rpm\(6) & (\u5|Add1~14\ $ (GND))) # (!\u5|rpm\(6) & (!\u5|Add1~14\ & VCC))
-- \u5|Add1~16\ = CARRY((\u5|rpm\(6) & !\u5|Add1~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm\(6),
	datad => VCC,
	cin => \u5|Add1~14\,
	combout => \u5|Add1~15_combout\,
	cout => \u5|Add1~16\);

-- Location: LCCOMB_X52_Y25_N22
\u5|rpm~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm~10_combout\ = (\u5|rpm~7_combout\) # ((\u5|Add1~15_combout\ & !\u5|rpm[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|Add1~15_combout\,
	datac => \u5|rpm~7_combout\,
	datad => \u5|rpm[0]~8_combout\,
	combout => \u5|rpm~10_combout\);

-- Location: LCFF_X52_Y25_N23
\u5|rpm[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|rpm~10_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(6));

-- Location: LCCOMB_X53_Y25_N16
\u5|rpm_mem~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm_mem~6_combout\ = (!\u5|process_0~1_combout\ & \u5|rpm\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|process_0~1_combout\,
	datad => \u5|rpm\(6),
	combout => \u5|rpm_mem~6_combout\);

-- Location: LCFF_X53_Y25_N17
\u5|rpm_mem[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|rpm_mem~6_combout\,
	ena => \u5|rpm_mem[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(6));

-- Location: LCCOMB_X52_Y24_N20
\u8|tot_RPM[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM[6]~24_combout\ = ((\u8|tot_RPM\(6) $ (\u5|rpm_mem\(6) $ (!\u8|tot_RPM[5]~23\)))) # (GND)
-- \u8|tot_RPM[6]~25\ = CARRY((\u8|tot_RPM\(6) & ((\u5|rpm_mem\(6)) # (!\u8|tot_RPM[5]~23\))) # (!\u8|tot_RPM\(6) & (\u5|rpm_mem\(6) & !\u8|tot_RPM[5]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tot_RPM\(6),
	datab => \u5|rpm_mem\(6),
	datad => VCC,
	cin => \u8|tot_RPM[5]~23\,
	combout => \u8|tot_RPM[6]~24_combout\,
	cout => \u8|tot_RPM[6]~25\);

-- Location: LCFF_X52_Y24_N21
\u8|tot_RPM[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM[6]~24_combout\,
	sdata => \u5|rpm_mem\(6),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u3c|ALT_INV_long~regout\,
	ena => \u8|gem_RPM[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM\(6));

-- Location: LCFF_X51_Y22_N19
\u8|tot_RPM_int[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM_int[6]~24_combout\,
	sdata => \u8|tot_RPM\(6),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u3c|ALT_INV_long~regout\,
	sload => \u8|process_0~0_combout\,
	ena => \u8|gem_RPM_int[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM_int\(6));

-- Location: LCCOMB_X51_Y22_N20
\u8|tot_RPM_int[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM_int[7]~26_combout\ = (\u8|tot_RPM_int\(7) & ((\u8|count_RPM\(7) & (!\u8|tot_RPM_int[6]~25\)) # (!\u8|count_RPM\(7) & (\u8|tot_RPM_int[6]~25\ & VCC)))) # (!\u8|tot_RPM_int\(7) & ((\u8|count_RPM\(7) & ((\u8|tot_RPM_int[6]~25\) # (GND))) # 
-- (!\u8|count_RPM\(7) & (!\u8|tot_RPM_int[6]~25\))))
-- \u8|tot_RPM_int[7]~27\ = CARRY((\u8|tot_RPM_int\(7) & (\u8|count_RPM\(7) & !\u8|tot_RPM_int[6]~25\)) # (!\u8|tot_RPM_int\(7) & ((\u8|count_RPM\(7)) # (!\u8|tot_RPM_int[6]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tot_RPM_int\(7),
	datab => \u8|count_RPM\(7),
	datad => VCC,
	cin => \u8|tot_RPM_int[6]~25\,
	combout => \u8|tot_RPM_int[7]~26_combout\,
	cout => \u8|tot_RPM_int[7]~27\);

-- Location: LCCOMB_X51_Y22_N22
\u8|tot_RPM_int[8]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM_int[8]~28_combout\ = (\u8|tot_RPM_int\(8) & ((GND) # (!\u8|tot_RPM_int[7]~27\))) # (!\u8|tot_RPM_int\(8) & (\u8|tot_RPM_int[7]~27\ $ (GND)))
-- \u8|tot_RPM_int[8]~29\ = CARRY((\u8|tot_RPM_int\(8)) # (!\u8|tot_RPM_int[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|tot_RPM_int\(8),
	datad => VCC,
	cin => \u8|tot_RPM_int[7]~27\,
	combout => \u8|tot_RPM_int[8]~28_combout\,
	cout => \u8|tot_RPM_int[8]~29\);

-- Location: LCCOMB_X52_Y24_N22
\u8|tot_RPM[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM[7]~26_combout\ = (\u5|rpm_mem\(7) & ((\u8|tot_RPM\(7) & (\u8|tot_RPM[6]~25\ & VCC)) # (!\u8|tot_RPM\(7) & (!\u8|tot_RPM[6]~25\)))) # (!\u5|rpm_mem\(7) & ((\u8|tot_RPM\(7) & (!\u8|tot_RPM[6]~25\)) # (!\u8|tot_RPM\(7) & ((\u8|tot_RPM[6]~25\) # 
-- (GND)))))
-- \u8|tot_RPM[7]~27\ = CARRY((\u5|rpm_mem\(7) & (!\u8|tot_RPM\(7) & !\u8|tot_RPM[6]~25\)) # (!\u5|rpm_mem\(7) & ((!\u8|tot_RPM[6]~25\) # (!\u8|tot_RPM\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(7),
	datab => \u8|tot_RPM\(7),
	datad => VCC,
	cin => \u8|tot_RPM[6]~25\,
	combout => \u8|tot_RPM[7]~26_combout\,
	cout => \u8|tot_RPM[7]~27\);

-- Location: LCCOMB_X54_Y25_N16
\u5|Add1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~17_combout\ = \u5|Add1~16\ $ (\u5|rpm\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u5|rpm\(7),
	cin => \u5|Add1~16\,
	combout => \u5|Add1~17_combout\);

-- Location: LCCOMB_X52_Y25_N4
\u5|rpm~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm~11_combout\ = (\u5|rpm~7_combout\) # ((\u5|Add1~17_combout\ & !\u5|rpm[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|Add1~17_combout\,
	datac => \u5|rpm~7_combout\,
	datad => \u5|rpm[0]~8_combout\,
	combout => \u5|rpm~11_combout\);

-- Location: LCFF_X52_Y25_N5
\u5|rpm[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|rpm~11_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(7));

-- Location: LCCOMB_X53_Y25_N10
\u5|rpm_mem~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm_mem~7_combout\ = (!\u5|process_0~1_combout\ & \u5|rpm\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|process_0~1_combout\,
	datad => \u5|rpm\(7),
	combout => \u5|rpm_mem~7_combout\);

-- Location: LCFF_X53_Y25_N11
\u5|rpm_mem[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|rpm_mem~7_combout\,
	ena => \u5|rpm_mem[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(7));

-- Location: LCFF_X52_Y24_N23
\u8|tot_RPM[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM[7]~26_combout\,
	sdata => \u5|rpm_mem\(7),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u3c|ALT_INV_long~regout\,
	ena => \u8|gem_RPM[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM\(7));

-- Location: LCCOMB_X52_Y24_N24
\u8|tot_RPM[8]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM[8]~28_combout\ = (\u8|tot_RPM\(8) & (\u8|tot_RPM[7]~27\ $ (GND))) # (!\u8|tot_RPM\(8) & (!\u8|tot_RPM[7]~27\ & VCC))
-- \u8|tot_RPM[8]~29\ = CARRY((\u8|tot_RPM\(8) & !\u8|tot_RPM[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tot_RPM\(8),
	datad => VCC,
	cin => \u8|tot_RPM[7]~27\,
	combout => \u8|tot_RPM[8]~28_combout\,
	cout => \u8|tot_RPM[8]~29\);

-- Location: LCFF_X52_Y24_N25
\u8|tot_RPM[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM[8]~28_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u3c|ALT_INV_long~regout\,
	ena => \u8|gem_RPM[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM\(8));

-- Location: LCFF_X51_Y22_N23
\u8|tot_RPM_int[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM_int[8]~28_combout\,
	sdata => \u8|tot_RPM\(8),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u3c|ALT_INV_long~regout\,
	sload => \u8|process_0~0_combout\,
	ena => \u8|gem_RPM_int[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM_int\(8));

-- Location: LCFF_X51_Y22_N21
\u8|tot_RPM_int[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM_int[7]~26_combout\,
	sdata => \u8|tot_RPM\(7),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u3c|ALT_INV_long~regout\,
	sload => \u8|process_0~0_combout\,
	ena => \u8|gem_RPM_int[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM_int\(7));

-- Location: LCFF_X50_Y22_N11
\u8|count_RPM[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|count_RPM[5]~18_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u3c|ALT_INV_long~regout\,
	ena => \u8|gem_RPM[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|count_RPM\(5));

-- Location: LCFF_X51_Y22_N13
\u8|tot_RPM_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM_int[3]~18_combout\,
	sdata => \u8|tot_RPM\(3),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u3c|ALT_INV_long~regout\,
	sload => \u8|process_0~0_combout\,
	ena => \u8|gem_RPM_int[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM_int\(3));

-- Location: LCFF_X51_Y22_N11
\u8|tot_RPM_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM_int[2]~16_combout\,
	sdata => \u8|tot_RPM\(2),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u3c|ALT_INV_long~regout\,
	sload => \u8|process_0~0_combout\,
	ena => \u8|gem_RPM_int[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM_int\(2));

-- Location: LCCOMB_X50_Y22_N16
\u8|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~1_cout\ = CARRY((!\u8|tot_RPM_int\(0) & \u8|count_RPM\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tot_RPM_int\(0),
	datab => \u8|count_RPM\(0),
	datad => VCC,
	cout => \u8|LessThan0~1_cout\);

-- Location: LCCOMB_X50_Y22_N18
\u8|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~3_cout\ = CARRY((\u8|count_RPM\(1) & (\u8|tot_RPM_int\(1) & !\u8|LessThan0~1_cout\)) # (!\u8|count_RPM\(1) & ((\u8|tot_RPM_int\(1)) # (!\u8|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count_RPM\(1),
	datab => \u8|tot_RPM_int\(1),
	datad => VCC,
	cin => \u8|LessThan0~1_cout\,
	cout => \u8|LessThan0~3_cout\);

-- Location: LCCOMB_X50_Y22_N20
\u8|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~5_cout\ = CARRY((\u8|count_RPM\(2) & ((!\u8|LessThan0~3_cout\) # (!\u8|tot_RPM_int\(2)))) # (!\u8|count_RPM\(2) & (!\u8|tot_RPM_int\(2) & !\u8|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count_RPM\(2),
	datab => \u8|tot_RPM_int\(2),
	datad => VCC,
	cin => \u8|LessThan0~3_cout\,
	cout => \u8|LessThan0~5_cout\);

-- Location: LCCOMB_X50_Y22_N22
\u8|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~7_cout\ = CARRY((\u8|count_RPM\(3) & (\u8|tot_RPM_int\(3) & !\u8|LessThan0~5_cout\)) # (!\u8|count_RPM\(3) & ((\u8|tot_RPM_int\(3)) # (!\u8|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count_RPM\(3),
	datab => \u8|tot_RPM_int\(3),
	datad => VCC,
	cin => \u8|LessThan0~5_cout\,
	cout => \u8|LessThan0~7_cout\);

-- Location: LCCOMB_X50_Y22_N24
\u8|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~9_cout\ = CARRY((\u8|tot_RPM_int\(4) & (\u8|count_RPM\(4) & !\u8|LessThan0~7_cout\)) # (!\u8|tot_RPM_int\(4) & ((\u8|count_RPM\(4)) # (!\u8|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tot_RPM_int\(4),
	datab => \u8|count_RPM\(4),
	datad => VCC,
	cin => \u8|LessThan0~7_cout\,
	cout => \u8|LessThan0~9_cout\);

-- Location: LCCOMB_X50_Y22_N26
\u8|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~11_cout\ = CARRY((\u8|tot_RPM_int\(5) & ((!\u8|LessThan0~9_cout\) # (!\u8|count_RPM\(5)))) # (!\u8|tot_RPM_int\(5) & (!\u8|count_RPM\(5) & !\u8|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|tot_RPM_int\(5),
	datab => \u8|count_RPM\(5),
	datad => VCC,
	cin => \u8|LessThan0~9_cout\,
	cout => \u8|LessThan0~11_cout\);

-- Location: LCCOMB_X50_Y22_N28
\u8|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~13_cout\ = CARRY((\u8|count_RPM\(6) & ((!\u8|LessThan0~11_cout\) # (!\u8|tot_RPM_int\(6)))) # (!\u8|count_RPM\(6) & (!\u8|tot_RPM_int\(6) & !\u8|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|count_RPM\(6),
	datab => \u8|tot_RPM_int\(6),
	datad => VCC,
	cin => \u8|LessThan0~11_cout\,
	cout => \u8|LessThan0~13_cout\);

-- Location: LCCOMB_X50_Y22_N30
\u8|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~14_combout\ = (\u8|count_RPM\(7) & ((\u8|LessThan0~13_cout\) # (!\u8|tot_RPM_int\(7)))) # (!\u8|count_RPM\(7) & (\u8|LessThan0~13_cout\ & !\u8|tot_RPM_int\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|count_RPM\(7),
	datad => \u8|tot_RPM_int\(7),
	cin => \u8|LessThan0~13_cout\,
	combout => \u8|LessThan0~14_combout\);

-- Location: LCCOMB_X51_Y22_N26
\u8|tot_RPM_int[10]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM_int[10]~32_combout\ = (\u8|tot_RPM_int\(10) & ((GND) # (!\u8|tot_RPM_int[9]~31\))) # (!\u8|tot_RPM_int\(10) & (\u8|tot_RPM_int[9]~31\ $ (GND)))
-- \u8|tot_RPM_int[10]~33\ = CARRY((\u8|tot_RPM_int\(10)) # (!\u8|tot_RPM_int[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|tot_RPM_int\(10),
	datad => VCC,
	cin => \u8|tot_RPM_int[9]~31\,
	combout => \u8|tot_RPM_int[10]~32_combout\,
	cout => \u8|tot_RPM_int[10]~33\);

-- Location: LCCOMB_X52_Y24_N26
\u8|tot_RPM[9]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM[9]~30_combout\ = (\u8|tot_RPM\(9) & (!\u8|tot_RPM[8]~29\)) # (!\u8|tot_RPM\(9) & ((\u8|tot_RPM[8]~29\) # (GND)))
-- \u8|tot_RPM[9]~31\ = CARRY((!\u8|tot_RPM[8]~29\) # (!\u8|tot_RPM\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|tot_RPM\(9),
	datad => VCC,
	cin => \u8|tot_RPM[8]~29\,
	combout => \u8|tot_RPM[9]~30_combout\,
	cout => \u8|tot_RPM[9]~31\);

-- Location: LCFF_X52_Y24_N27
\u8|tot_RPM[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM[9]~30_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u3c|ALT_INV_long~regout\,
	ena => \u8|gem_RPM[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM\(9));

-- Location: LCCOMB_X52_Y24_N28
\u8|tot_RPM[10]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM[10]~32_combout\ = (\u8|tot_RPM\(10) & (\u8|tot_RPM[9]~31\ $ (GND))) # (!\u8|tot_RPM\(10) & (!\u8|tot_RPM[9]~31\ & VCC))
-- \u8|tot_RPM[10]~33\ = CARRY((\u8|tot_RPM\(10) & !\u8|tot_RPM[9]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|tot_RPM\(10),
	datad => VCC,
	cin => \u8|tot_RPM[9]~31\,
	combout => \u8|tot_RPM[10]~32_combout\,
	cout => \u8|tot_RPM[10]~33\);

-- Location: LCFF_X52_Y24_N29
\u8|tot_RPM[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM[10]~32_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u3c|ALT_INV_long~regout\,
	ena => \u8|gem_RPM[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM\(10));

-- Location: LCFF_X51_Y22_N27
\u8|tot_RPM_int[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM_int[10]~32_combout\,
	sdata => \u8|tot_RPM\(10),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u3c|ALT_INV_long~regout\,
	sload => \u8|process_0~0_combout\,
	ena => \u8|gem_RPM_int[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM_int\(10));

-- Location: LCCOMB_X51_Y22_N28
\u8|tot_RPM_int[11]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM_int[11]~34_combout\ = \u8|tot_RPM_int[10]~33\ $ (!\u8|tot_RPM_int\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u8|tot_RPM_int\(11),
	cin => \u8|tot_RPM_int[10]~33\,
	combout => \u8|tot_RPM_int[11]~34_combout\);

-- Location: LCCOMB_X52_Y24_N30
\u8|tot_RPM[11]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|tot_RPM[11]~34_combout\ = \u8|tot_RPM[10]~33\ $ (\u8|tot_RPM\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u8|tot_RPM\(11),
	cin => \u8|tot_RPM[10]~33\,
	combout => \u8|tot_RPM[11]~34_combout\);

-- Location: LCFF_X52_Y24_N31
\u8|tot_RPM[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM[11]~34_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u3c|ALT_INV_long~regout\,
	ena => \u8|gem_RPM[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM\(11));

-- Location: LCFF_X51_Y22_N29
\u8|tot_RPM_int[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|tot_RPM_int[11]~34_combout\,
	sdata => \u8|tot_RPM\(11),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u3c|ALT_INV_long~regout\,
	sload => \u8|process_0~0_combout\,
	ena => \u8|gem_RPM_int[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|tot_RPM_int\(11));

-- Location: LCCOMB_X52_Y22_N2
\u8|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|LessThan0~17_combout\ = (\u8|LessThan0~16_combout\ & (!\u8|tot_RPM_int\(8) & (\u8|LessThan0~14_combout\ & !\u8|tot_RPM_int\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|LessThan0~16_combout\,
	datab => \u8|tot_RPM_int\(8),
	datac => \u8|LessThan0~14_combout\,
	datad => \u8|tot_RPM_int\(11),
	combout => \u8|LessThan0~17_combout\);

-- Location: LCCOMB_X52_Y22_N28
\u8|stop~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|stop~0_combout\ = (\u3c|long~regout\ & ((\u8|process_0~0_combout\) # ((!\u8|LessThan0~17_combout\ & \u8|stop~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long~regout\,
	datab => \u8|LessThan0~17_combout\,
	datac => \u8|stop~regout\,
	datad => \u8|process_0~0_combout\,
	combout => \u8|stop~0_combout\);

-- Location: LCFF_X52_Y22_N29
\u8|stop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|stop~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|stop~regout\);

-- Location: LCCOMB_X52_Y22_N30
\u8|gem_RPM_int[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|gem_RPM_int[6]~10_combout\ = (\u8|gem_RPM[7]~0_combout\) # ((\u8|stop~regout\ & !\u8|LessThan0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u8|stop~regout\,
	datac => \u8|gem_RPM[7]~0_combout\,
	datad => \u8|LessThan0~17_combout\,
	combout => \u8|gem_RPM_int[6]~10_combout\);

-- Location: LCFF_X52_Y22_N9
\u8|gem_RPM_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|gem_RPM_int[1]~11_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u8|gem_RPM[7]~0_combout\,
	ena => \u8|gem_RPM_int[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|gem_RPM_int\(1));

-- Location: LCCOMB_X52_Y22_N10
\u8|gem_RPM_int[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|gem_RPM_int[2]~13_combout\ = (\u8|gem_RPM_int\(2) & (\u8|gem_RPM_int[1]~12\ $ (GND))) # (!\u8|gem_RPM_int\(2) & (!\u8|gem_RPM_int[1]~12\ & VCC))
-- \u8|gem_RPM_int[2]~14\ = CARRY((\u8|gem_RPM_int\(2) & !\u8|gem_RPM_int[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|gem_RPM_int\(2),
	datad => VCC,
	cin => \u8|gem_RPM_int[1]~12\,
	combout => \u8|gem_RPM_int[2]~13_combout\,
	cout => \u8|gem_RPM_int[2]~14\);

-- Location: LCFF_X52_Y22_N11
\u8|gem_RPM_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|gem_RPM_int[2]~13_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u8|gem_RPM[7]~0_combout\,
	ena => \u8|gem_RPM_int[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|gem_RPM_int\(2));

-- Location: LCCOMB_X53_Y22_N22
\u8|gem_RPM[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|gem_RPM[7]~1_combout\ = (\BUTTON~combout\(3) & (\u8|stop~regout\ & (!\u8|gem_RPM[7]~0_combout\ & \u8|LessThan0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u8|stop~regout\,
	datac => \u8|gem_RPM[7]~0_combout\,
	datad => \u8|LessThan0~17_combout\,
	combout => \u8|gem_RPM[7]~1_combout\);

-- Location: LCFF_X53_Y22_N27
\u8|gem_RPM[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u8|gem_RPM_int\(2),
	sload => VCC,
	ena => \u8|gem_RPM[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|gem_RPM\(2));

-- Location: LCCOMB_X52_Y22_N12
\u8|gem_RPM_int[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|gem_RPM_int[3]~15_combout\ = (\u8|gem_RPM_int\(3) & (!\u8|gem_RPM_int[2]~14\)) # (!\u8|gem_RPM_int\(3) & ((\u8|gem_RPM_int[2]~14\) # (GND)))
-- \u8|gem_RPM_int[3]~16\ = CARRY((!\u8|gem_RPM_int[2]~14\) # (!\u8|gem_RPM_int\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|gem_RPM_int\(3),
	datad => VCC,
	cin => \u8|gem_RPM_int[2]~14\,
	combout => \u8|gem_RPM_int[3]~15_combout\,
	cout => \u8|gem_RPM_int[3]~16\);

-- Location: LCCOMB_X52_Y22_N14
\u8|gem_RPM_int[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|gem_RPM_int[4]~17_combout\ = (\u8|gem_RPM_int\(4) & (\u8|gem_RPM_int[3]~16\ $ (GND))) # (!\u8|gem_RPM_int\(4) & (!\u8|gem_RPM_int[3]~16\ & VCC))
-- \u8|gem_RPM_int[4]~18\ = CARRY((\u8|gem_RPM_int\(4) & !\u8|gem_RPM_int[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|gem_RPM_int\(4),
	datad => VCC,
	cin => \u8|gem_RPM_int[3]~16\,
	combout => \u8|gem_RPM_int[4]~17_combout\,
	cout => \u8|gem_RPM_int[4]~18\);

-- Location: LCFF_X52_Y22_N15
\u8|gem_RPM_int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|gem_RPM_int[4]~17_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u8|gem_RPM[7]~0_combout\,
	ena => \u8|gem_RPM_int[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|gem_RPM_int\(4));

-- Location: LCCOMB_X52_Y22_N16
\u8|gem_RPM_int[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|gem_RPM_int[5]~19_combout\ = (\u8|gem_RPM_int\(5) & (!\u8|gem_RPM_int[4]~18\)) # (!\u8|gem_RPM_int\(5) & ((\u8|gem_RPM_int[4]~18\) # (GND)))
-- \u8|gem_RPM_int[5]~20\ = CARRY((!\u8|gem_RPM_int[4]~18\) # (!\u8|gem_RPM_int\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|gem_RPM_int\(5),
	datad => VCC,
	cin => \u8|gem_RPM_int[4]~18\,
	combout => \u8|gem_RPM_int[5]~19_combout\,
	cout => \u8|gem_RPM_int[5]~20\);

-- Location: LCCOMB_X52_Y22_N18
\u8|gem_RPM_int[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|gem_RPM_int[6]~21_combout\ = (\u8|gem_RPM_int\(6) & (\u8|gem_RPM_int[5]~20\ $ (GND))) # (!\u8|gem_RPM_int\(6) & (!\u8|gem_RPM_int[5]~20\ & VCC))
-- \u8|gem_RPM_int[6]~22\ = CARRY((\u8|gem_RPM_int\(6) & !\u8|gem_RPM_int[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u8|gem_RPM_int\(6),
	datad => VCC,
	cin => \u8|gem_RPM_int[5]~20\,
	combout => \u8|gem_RPM_int[6]~21_combout\,
	cout => \u8|gem_RPM_int[6]~22\);

-- Location: LCFF_X52_Y22_N19
\u8|gem_RPM_int[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|gem_RPM_int[6]~21_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u8|gem_RPM[7]~0_combout\,
	ena => \u8|gem_RPM_int[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|gem_RPM_int\(6));

-- Location: LCFF_X53_Y22_N17
\u8|gem_RPM[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u8|gem_RPM_int\(6),
	sload => VCC,
	ena => \u8|gem_RPM[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|gem_RPM\(6));

-- Location: LCCOMB_X52_Y22_N20
\u8|gem_RPM_int[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|gem_RPM_int[7]~23_combout\ = \u8|gem_RPM_int\(7) $ (\u8|gem_RPM_int[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u8|gem_RPM_int\(7),
	cin => \u8|gem_RPM_int[6]~22\,
	combout => \u8|gem_RPM_int[7]~23_combout\);

-- Location: LCFF_X52_Y22_N21
\u8|gem_RPM_int[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|gem_RPM_int[7]~23_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u8|gem_RPM[7]~0_combout\,
	ena => \u8|gem_RPM_int[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|gem_RPM_int\(7));

-- Location: LCFF_X53_Y22_N15
\u8|gem_RPM[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u8|gem_RPM_int\(7),
	sload => VCC,
	ena => \u8|gem_RPM[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|gem_RPM\(7));

-- Location: LCCOMB_X53_Y22_N2
\u8|gem_RPM[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u8|gem_RPM[4]~feeder_combout\ = \u8|gem_RPM_int\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u8|gem_RPM_int\(4),
	combout => \u8|gem_RPM[4]~feeder_combout\);

-- Location: LCFF_X53_Y22_N3
\u8|gem_RPM[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|gem_RPM[4]~feeder_combout\,
	ena => \u8|gem_RPM[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|gem_RPM\(4));

-- Location: LCCOMB_X53_Y22_N0
\u4|gemiddelde2bcd|u1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u1|Mux1~0_combout\ = (\u8|gem_RPM\(6) & (!\u8|gem_RPM\(4) & (\u8|gem_RPM\(5) $ (!\u8|gem_RPM\(7))))) # (!\u8|gem_RPM\(6) & (!\u8|gem_RPM\(5) & (\u8|gem_RPM\(7) & \u8|gem_RPM\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|gem_RPM\(5),
	datab => \u8|gem_RPM\(6),
	datac => \u8|gem_RPM\(7),
	datad => \u8|gem_RPM\(4),
	combout => \u4|gemiddelde2bcd|u1|Mux1~0_combout\);

-- Location: LCCOMB_X53_Y22_N16
\u4|gemiddelde2bcd|u1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u1|Mux3~0_combout\ = (\u8|gem_RPM\(4) & (\u8|gem_RPM\(6) $ (((\u8|gem_RPM\(5)) # (!\u8|gem_RPM\(7)))))) # (!\u8|gem_RPM\(4) & ((\u8|gem_RPM\(5) & (\u8|gem_RPM\(6) & !\u8|gem_RPM\(7))) # (!\u8|gem_RPM\(5) & (!\u8|gem_RPM\(6) & 
-- \u8|gem_RPM\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|gem_RPM\(5),
	datab => \u8|gem_RPM\(4),
	datac => \u8|gem_RPM\(6),
	datad => \u8|gem_RPM\(7),
	combout => \u4|gemiddelde2bcd|u1|Mux3~0_combout\);

-- Location: LCFF_X52_Y22_N17
\u8|gem_RPM_int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|gem_RPM_int[5]~19_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u8|gem_RPM[7]~0_combout\,
	ena => \u8|gem_RPM_int[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|gem_RPM_int\(5));

-- Location: LCFF_X53_Y22_N29
\u8|gem_RPM[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u8|gem_RPM_int\(5),
	sload => VCC,
	ena => \u8|gem_RPM[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|gem_RPM\(5));

-- Location: LCCOMB_X53_Y22_N28
\u4|gemiddelde2bcd|u1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u1|Mux2~0_combout\ = (\u8|gem_RPM\(7) & (!\u8|gem_RPM\(5) & ((\u8|gem_RPM\(6)) # (!\u8|gem_RPM\(4))))) # (!\u8|gem_RPM\(7) & (\u8|gem_RPM\(5) & ((\u8|gem_RPM\(4)) # (!\u8|gem_RPM\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|gem_RPM\(7),
	datab => \u8|gem_RPM\(6),
	datac => \u8|gem_RPM\(5),
	datad => \u8|gem_RPM\(4),
	combout => \u4|gemiddelde2bcd|u1|Mux2~0_combout\);

-- Location: LCCOMB_X53_Y22_N30
\u4|gemiddelde2bcd|u2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u2|Mux2~0_combout\ = (\u8|gem_RPM\(3) & (!\u4|gemiddelde2bcd|u1|Mux1~0_combout\ & (\u4|gemiddelde2bcd|u1|Mux3~0_combout\))) # (!\u8|gem_RPM\(3) & (!\u4|gemiddelde2bcd|u1|Mux2~0_combout\ & (\u4|gemiddelde2bcd|u1|Mux1~0_combout\ $ 
-- (\u4|gemiddelde2bcd|u1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|gem_RPM\(3),
	datab => \u4|gemiddelde2bcd|u1|Mux1~0_combout\,
	datac => \u4|gemiddelde2bcd|u1|Mux3~0_combout\,
	datad => \u4|gemiddelde2bcd|u1|Mux2~0_combout\,
	combout => \u4|gemiddelde2bcd|u2|Mux2~0_combout\);

-- Location: LCFF_X52_Y22_N13
\u8|gem_RPM_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|gem_RPM_int[3]~15_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u8|gem_RPM[7]~0_combout\,
	ena => \u8|gem_RPM_int[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|gem_RPM_int\(3));

-- Location: LCFF_X53_Y22_N19
\u8|gem_RPM[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u8|gem_RPM_int\(3),
	sload => VCC,
	ena => \u8|gem_RPM[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|gem_RPM\(3));

-- Location: LCCOMB_X53_Y22_N8
\u4|gemiddelde2bcd|u2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u2|Mux1~0_combout\ = (!\u4|gemiddelde2bcd|u1|Mux3~0_combout\ & ((\u8|gem_RPM\(3) & (!\u4|gemiddelde2bcd|u1|Mux2~0_combout\ & \u4|gemiddelde2bcd|u1|Mux1~0_combout\)) # (!\u8|gem_RPM\(3) & (\u4|gemiddelde2bcd|u1|Mux2~0_combout\ & 
-- !\u4|gemiddelde2bcd|u1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|gemiddelde2bcd|u1|Mux3~0_combout\,
	datab => \u8|gem_RPM\(3),
	datac => \u4|gemiddelde2bcd|u1|Mux2~0_combout\,
	datad => \u4|gemiddelde2bcd|u1|Mux1~0_combout\,
	combout => \u4|gemiddelde2bcd|u2|Mux1~0_combout\);

-- Location: LCCOMB_X54_Y22_N14
\u4|gemiddelde2bcd|u3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u3|Mux2~0_combout\ = (\u8|gem_RPM\(2) & (\u4|gemiddelde2bcd|u2|Mux3~0_combout\ & ((!\u4|gemiddelde2bcd|u2|Mux1~0_combout\)))) # (!\u8|gem_RPM\(2) & (!\u4|gemiddelde2bcd|u2|Mux2~0_combout\ & (\u4|gemiddelde2bcd|u2|Mux3~0_combout\ $ 
-- (\u4|gemiddelde2bcd|u2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|gemiddelde2bcd|u2|Mux3~0_combout\,
	datab => \u8|gem_RPM\(2),
	datac => \u4|gemiddelde2bcd|u2|Mux2~0_combout\,
	datad => \u4|gemiddelde2bcd|u2|Mux1~0_combout\,
	combout => \u4|gemiddelde2bcd|u3|Mux2~0_combout\);

-- Location: LCCOMB_X53_Y22_N20
\u4|gemiddelde2bcd|u2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u2|Mux3~0_combout\ = (\u4|gemiddelde2bcd|u1|Mux3~0_combout\ & (!\u4|gemiddelde2bcd|u1|Mux1~0_combout\ & (\u8|gem_RPM\(3) $ (\u4|gemiddelde2bcd|u1|Mux2~0_combout\)))) # (!\u4|gemiddelde2bcd|u1|Mux3~0_combout\ & 
-- (!\u4|gemiddelde2bcd|u1|Mux2~0_combout\ & (\u8|gem_RPM\(3) $ (\u4|gemiddelde2bcd|u1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|gem_RPM\(3),
	datab => \u4|gemiddelde2bcd|u1|Mux2~0_combout\,
	datac => \u4|gemiddelde2bcd|u1|Mux3~0_combout\,
	datad => \u4|gemiddelde2bcd|u1|Mux1~0_combout\,
	combout => \u4|gemiddelde2bcd|u2|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y22_N20
\u4|gemiddelde2bcd|u3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u3|Mux3~0_combout\ = (\u4|gemiddelde2bcd|u2|Mux3~0_combout\ & (!\u4|gemiddelde2bcd|u2|Mux1~0_combout\ & (\u4|gemiddelde2bcd|u2|Mux2~0_combout\ $ (\u8|gem_RPM\(2))))) # (!\u4|gemiddelde2bcd|u2|Mux3~0_combout\ & 
-- (!\u4|gemiddelde2bcd|u2|Mux2~0_combout\ & (\u8|gem_RPM\(2) $ (\u4|gemiddelde2bcd|u2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|gemiddelde2bcd|u2|Mux2~0_combout\,
	datab => \u8|gem_RPM\(2),
	datac => \u4|gemiddelde2bcd|u2|Mux3~0_combout\,
	datad => \u4|gemiddelde2bcd|u2|Mux1~0_combout\,
	combout => \u4|gemiddelde2bcd|u3|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y22_N0
\u4|gemiddelde2bcd|u3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u3|Mux1~0_combout\ = (!\u4|gemiddelde2bcd|u2|Mux3~0_combout\ & ((\u8|gem_RPM\(2) & (!\u4|gemiddelde2bcd|u2|Mux2~0_combout\ & \u4|gemiddelde2bcd|u2|Mux1~0_combout\)) # (!\u8|gem_RPM\(2) & (\u4|gemiddelde2bcd|u2|Mux2~0_combout\ & 
-- !\u4|gemiddelde2bcd|u2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|gemiddelde2bcd|u2|Mux3~0_combout\,
	datab => \u8|gem_RPM\(2),
	datac => \u4|gemiddelde2bcd|u2|Mux2~0_combout\,
	datad => \u4|gemiddelde2bcd|u2|Mux1~0_combout\,
	combout => \u4|gemiddelde2bcd|u3|Mux1~0_combout\);

-- Location: LCCOMB_X54_Y22_N18
\u4|gemiddelde2bcd|u4|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u4|Mux0~0_combout\ = (\u4|gemiddelde2bcd|u3|Mux1~0_combout\) # ((\u4|gemiddelde2bcd|u3|Mux2~0_combout\ & ((\u8|gem_RPM\(1)) # (\u4|gemiddelde2bcd|u3|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|gem_RPM\(1),
	datab => \u4|gemiddelde2bcd|u3|Mux2~0_combout\,
	datac => \u4|gemiddelde2bcd|u3|Mux3~0_combout\,
	datad => \u4|gemiddelde2bcd|u3|Mux1~0_combout\,
	combout => \u4|gemiddelde2bcd|u4|Mux0~0_combout\);

-- Location: LCFF_X54_Y22_N19
\u4|gemiddelde_line[13][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|gemiddelde2bcd|u4|Mux0~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|gemiddelde_line[13][0]~regout\);

-- Location: LCCOMB_X57_Y26_N8
\u4|Mux263~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~40_combout\ = (\mode~regout\ & ((\u4|line_counter\(0) & (\u4|RPM_line[13][0]~regout\)) # (!\u4|line_counter\(0) & ((\u4|gemiddelde_line[13][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|RPM_line[13][0]~regout\,
	datab => \u4|line_counter\(0),
	datac => \u4|gemiddelde_line[13][0]~regout\,
	datad => \mode~regout\,
	combout => \u4|Mux263~40_combout\);

-- Location: LCCOMB_X58_Y26_N30
\u4|aline~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~0_combout\ = (\u4|line_counter\(0) & !\mode~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datac => \mode~regout\,
	combout => \u4|aline~0_combout\);

-- Location: LCCOMB_X57_Y26_N2
\u4|Mux263~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~41_combout\ = (\u4|line_counter\(1) & ((\u4|Mux263~40_combout\) # ((\u4|maximale_line[13][0]~regout\ & \u4|aline~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|maximale_line[13][0]~regout\,
	datab => \u4|line_counter\(1),
	datac => \u4|Mux263~40_combout\,
	datad => \u4|aline~0_combout\,
	combout => \u4|Mux263~41_combout\);

-- Location: LCCOMB_X57_Y26_N22
\u4|Mux263~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~43_combout\ = (!\u4|character_counter\(1) & ((\u4|Mux263~41_combout\) # ((\u4|totale_omw_line[13][0]~regout\ & \u4|Mux263~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|totale_omw_line[13][0]~regout\,
	datac => \u4|Mux263~42_combout\,
	datad => \u4|Mux263~41_combout\,
	combout => \u4|Mux263~43_combout\);

-- Location: LCCOMB_X58_Y23_N4
\u4|Mux263~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~44_combout\ = (!\u4|line_counter\(0) & (!\u4|line_counter\(1) & (\u4|character_counter\(1) & !\mode~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|line_counter\(1),
	datac => \u4|character_counter\(1),
	datad => \mode~regout\,
	combout => \u4|Mux263~44_combout\);

-- Location: LCCOMB_X54_Y26_N14
\u4|Mux263~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~45_combout\ = (\u4|start~regout\ & ((\u4|Mux263~43_combout\) # ((\u4|totale_omw_line[15][0]~regout\ & \u4|Mux263~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_line[15][0]~regout\,
	datab => \u4|start~regout\,
	datac => \u4|Mux263~43_combout\,
	datad => \u4|Mux263~44_combout\,
	combout => \u4|Mux263~45_combout\);

-- Location: LCCOMB_X58_Y26_N24
\u4|Mux239~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux239~0_combout\ = (!\u4|line_counter\(0) & !\mode~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datac => \mode~regout\,
	combout => \u4|Mux239~0_combout\);

-- Location: LCCOMB_X56_Y25_N30
\u4|totale_omw_line[14][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_line[14][0]~feeder_combout\ = \u0|omwentel255\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|omwentel255\(0),
	combout => \u4|totale_omw_line[14][0]~feeder_combout\);

-- Location: LCFF_X56_Y25_N31
\u4|totale_omw_line[14][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_line[14][0]~feeder_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[14][0]~regout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DB[7]~I\ : cycloneii_io
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
	padio => ww_DB(7),
	combout => \DB~combout\(7));

-- Location: PIN_J29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BUSY~I\ : cycloneii_io
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
	padio => ww_BUSY,
	combout => \BUSY~combout\);

-- Location: LCCOMB_X79_Y29_N28
\u9|reset~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|reset~0_combout\ = (\u9|reset~regout\) # ((\u9|pass\(0) & (\u9|pass\(1) & !\BUSY~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|pass\(0),
	datab => \u9|pass\(1),
	datac => \u9|reset~regout\,
	datad => \BUSY~combout\,
	combout => \u9|reset~0_combout\);

-- Location: LCFF_X79_Y29_N29
\u9|reset\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u9|reset~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|reset~regout\);

-- Location: LCCOMB_X79_Y29_N14
\u9|resstart~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|resstart~0_combout\ = ((\u9|readADC~regout\) # ((!\u9|pass\(0) & !\u9|pass\(1)))) # (!\u9|resstart~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|pass\(0),
	datab => \u9|pass\(1),
	datac => \u9|resstart~regout\,
	datad => \u9|readADC~regout\,
	combout => \u9|resstart~0_combout\);

-- Location: LCFF_X79_Y29_N15
\u9|resstart\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u9|resstart~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u9|reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|resstart~regout\);

-- Location: LCCOMB_X79_Y29_N8
\u9|pass~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|pass~2_combout\ = (\u9|reset~regout\ & (((\u9|resstart~regout\)))) # (!\u9|reset~regout\ & (\u9|pass\(0) & ((!\BUSY~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|pass\(0),
	datab => \u9|reset~regout\,
	datac => \u9|resstart~regout\,
	datad => \BUSY~combout\,
	combout => \u9|pass~2_combout\);

-- Location: LCCOMB_X79_Y29_N4
\u9|pass~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|pass~3_combout\ = (\u9|pass~2_combout\ & ((\u9|pass\(1) & (\u9|readADC~regout\ & \u9|reset~regout\)) # (!\u9|pass\(1) & ((!\u9|reset~regout\))))) # (!\u9|pass~2_combout\ & (((\u9|pass\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|readADC~regout\,
	datab => \u9|pass~2_combout\,
	datac => \u9|pass\(1),
	datad => \u9|reset~regout\,
	combout => \u9|pass~3_combout\);

-- Location: LCFF_X79_Y29_N5
\u9|pass[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u9|pass~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|pass\(1));

-- Location: LCCOMB_X79_Y29_N22
\u9|readADC~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|readADC~0_combout\ = (((!\u9|pass\(0) & !\u9|pass\(1))) # (!\u9|reset~regout\)) # (!\u9|resstart~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|pass\(0),
	datab => \u9|pass\(1),
	datac => \u9|resstart~regout\,
	datad => \u9|reset~regout\,
	combout => \u9|readADC~0_combout\);

-- Location: LCCOMB_X79_Y29_N30
\u9|readADC~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|readADC~1_combout\ = (\u9|ADC_data[7]~0_combout\ & (((\u9|readADC~0_combout\ & \u9|readADC~regout\)) # (!\BUSY~combout\))) # (!\u9|ADC_data[7]~0_combout\ & (\u9|readADC~0_combout\ & (\u9|readADC~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|ADC_data[7]~0_combout\,
	datab => \u9|readADC~0_combout\,
	datac => \u9|readADC~regout\,
	datad => \BUSY~combout\,
	combout => \u9|readADC~1_combout\);

-- Location: LCFF_X79_Y29_N31
\u9|readADC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u9|readADC~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|readADC~regout\);

-- Location: LCCOMB_X79_Y29_N20
\u9|ADC_data[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|ADC_data[7]~0_combout\ = (!\u9|pass\(0) & (\u9|resstart~regout\ & (!\u9|pass\(1) & \u9|reset~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|pass\(0),
	datab => \u9|resstart~regout\,
	datac => \u9|pass\(1),
	datad => \u9|reset~regout\,
	combout => \u9|ADC_data[7]~0_combout\);

-- Location: LCCOMB_X78_Y29_N14
\u9|ADC_data[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|ADC_data[7]~1_combout\ = (\BUTTON~combout\(3) & (!\u9|readADC~regout\ & (!\BUSY~combout\ & \u9|ADC_data[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u9|readADC~regout\,
	datac => \BUSY~combout\,
	datad => \u9|ADC_data[7]~0_combout\,
	combout => \u9|ADC_data[7]~1_combout\);

-- Location: LCFF_X77_Y29_N11
\u9|ADC_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \DB~combout\(7),
	sload => VCC,
	ena => \u9|ADC_data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|ADC_data\(7));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DB[5]~I\ : cycloneii_io
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
	padio => ww_DB(5),
	combout => \DB~combout\(5));

-- Location: LCFF_X77_Y29_N15
\u9|ADC_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \DB~combout\(5),
	sload => VCC,
	ena => \u9|ADC_data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|ADC_data\(5));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DB[0]~I\ : cycloneii_io
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
	padio => ww_DB(0),
	combout => \DB~combout\(0));

-- Location: LCFF_X77_Y29_N5
\u9|ADC_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \DB~combout\(0),
	sload => VCC,
	ena => \u9|ADC_data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|ADC_data\(0));

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DB[3]~I\ : cycloneii_io
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
	padio => ww_DB(3),
	combout => \DB~combout\(3));

-- Location: LCFF_X77_Y29_N13
\u9|ADC_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \DB~combout\(3),
	sload => VCC,
	ena => \u9|ADC_data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|ADC_data\(3));

-- Location: PIN_J30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DB[1]~I\ : cycloneii_io
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
	padio => ww_DB(1),
	combout => \DB~combout\(1));

-- Location: LCFF_X77_Y29_N3
\u9|ADC_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \DB~combout\(1),
	sload => VCC,
	ena => \u9|ADC_data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|ADC_data\(1));

-- Location: LCCOMB_X77_Y29_N12
\u9|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|LessThan1~0_combout\ = (((!\u9|ADC_data\(1)) # (!\u9|ADC_data\(3))) # (!\u9|ADC_data\(0))) # (!\u9|ADC_data\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|ADC_data\(2),
	datab => \u9|ADC_data\(0),
	datac => \u9|ADC_data\(3),
	datad => \u9|ADC_data\(1),
	combout => \u9|LessThan1~0_combout\);

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DB[6]~I\ : cycloneii_io
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
	padio => ww_DB(6),
	combout => \DB~combout\(6));

-- Location: LCFF_X77_Y29_N25
\u9|ADC_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \DB~combout\(6),
	sload => VCC,
	ena => \u9|ADC_data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|ADC_data\(6));

-- Location: LCCOMB_X76_Y29_N26
\u9|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|LessThan1~1_combout\ = (!\u9|ADC_data\(4) & (!\u9|ADC_data\(5) & (\u9|LessThan1~0_combout\ & !\u9|ADC_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|ADC_data\(4),
	datab => \u9|ADC_data\(5),
	datac => \u9|LessThan1~0_combout\,
	datad => \u9|ADC_data\(6),
	combout => \u9|LessThan1~1_combout\);

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DB[4]~I\ : cycloneii_io
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
	padio => ww_DB(4),
	combout => \DB~combout\(4));

-- Location: LCCOMB_X77_Y29_N6
\u9|ADC_data[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|ADC_data[4]~feeder_combout\ = \DB~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DB~combout\(4),
	combout => \u9|ADC_data[4]~feeder_combout\);

-- Location: LCFF_X77_Y29_N7
\u9|ADC_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u9|ADC_data[4]~feeder_combout\,
	ena => \u9|ADC_data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|ADC_data\(4));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DB[2]~I\ : cycloneii_io
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
	padio => ww_DB(2),
	combout => \DB~combout\(2));

-- Location: LCFF_X77_Y29_N29
\u9|ADC_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \DB~combout\(2),
	sload => VCC,
	ena => \u9|ADC_data[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|ADC_data\(2));

-- Location: LCCOMB_X77_Y29_N26
\u9|LessThan7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|LessThan7~2_combout\ = (\u9|ADC_data\(1) & (\u9|ADC_data\(0) & \u9|ADC_data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|ADC_data\(1),
	datab => \u9|ADC_data\(0),
	datac => \u9|ADC_data\(2),
	combout => \u9|LessThan7~2_combout\);

-- Location: LCCOMB_X77_Y29_N22
\u9|LessThan7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|LessThan7~3_combout\ = (\u9|ADC_data\(5) & ((\u9|ADC_data\(3)) # ((\u9|ADC_data\(4)) # (\u9|LessThan7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|ADC_data\(3),
	datab => \u9|ADC_data\(4),
	datac => \u9|ADC_data\(5),
	datad => \u9|LessThan7~2_combout\,
	combout => \u9|LessThan7~3_combout\);

-- Location: LCCOMB_X77_Y29_N2
\u9|LessThan6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|LessThan6~0_combout\ = (\u9|ADC_data\(3)) # ((\u9|ADC_data\(2) & ((\u9|ADC_data\(0)) # (\u9|ADC_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|ADC_data\(2),
	datab => \u9|ADC_data\(0),
	datac => \u9|ADC_data\(1),
	datad => \u9|ADC_data\(3),
	combout => \u9|LessThan6~0_combout\);

-- Location: LCCOMB_X77_Y29_N8
\u9|resist_int~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|resist_int~3_combout\ = (!\u9|ADC_data\(6) & (((!\u9|LessThan6~0_combout\) # (!\u9|ADC_data\(4))) # (!\u9|ADC_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|ADC_data\(5),
	datab => \u9|ADC_data\(6),
	datac => \u9|ADC_data\(4),
	datad => \u9|LessThan6~0_combout\,
	combout => \u9|resist_int~3_combout\);

-- Location: LCCOMB_X77_Y29_N16
\u9|LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|LessThan5~0_combout\ = (\u9|ADC_data\(1)) # ((\u9|ADC_data\(0)) # ((\u9|ADC_data\(2)) # (\u9|ADC_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|ADC_data\(1),
	datab => \u9|ADC_data\(0),
	datac => \u9|ADC_data\(2),
	datad => \u9|ADC_data\(3),
	combout => \u9|LessThan5~0_combout\);

-- Location: LCCOMB_X77_Y29_N10
\u9|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|LessThan2~3_combout\ = (!\u9|ADC_data\(4) & !\u9|ADC_data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|ADC_data\(4),
	datad => \u9|ADC_data\(3),
	combout => \u9|LessThan2~3_combout\);

-- Location: LCCOMB_X77_Y29_N28
\u9|resist_int~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|resist_int~6_combout\ = (\u9|ADC_data\(5) & (((\u9|ADC_data\(1) & \u9|ADC_data\(2))) # (!\u9|LessThan2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|ADC_data\(5),
	datab => \u9|ADC_data\(1),
	datac => \u9|ADC_data\(2),
	datad => \u9|LessThan2~3_combout\,
	combout => \u9|resist_int~6_combout\);

-- Location: LCCOMB_X77_Y29_N18
\u9|resist_int~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|resist_int~7_combout\ = (\u9|resist_int~6_combout\) # ((\u9|ADC_data\(4) & (\u9|LessThan1~0_combout\ & \u9|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|ADC_data\(4),
	datab => \u9|LessThan1~0_combout\,
	datac => \u9|LessThan5~0_combout\,
	datad => \u9|resist_int~6_combout\,
	combout => \u9|resist_int~7_combout\);

-- Location: LCCOMB_X77_Y29_N0
\u9|resist_int~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|resist_int~8_combout\ = (\u9|LessThan2~1_combout\ & (((\u9|resist_int~7_combout\)))) # (!\u9|LessThan2~1_combout\ & (((!\u9|resist_int~3_combout\)) # (!\u9|LessThan7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|LessThan2~1_combout\,
	datab => \u9|LessThan7~3_combout\,
	datac => \u9|resist_int~3_combout\,
	datad => \u9|resist_int~7_combout\,
	combout => \u9|resist_int~8_combout\);

-- Location: LCCOMB_X77_Y29_N20
\u9|resist_int~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|resist_int~9_combout\ = (\u9|ADC_data\(7)) # ((!\u9|LessThan1~1_combout\ & \u9|resist_int~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u9|ADC_data\(7),
	datac => \u9|LessThan1~1_combout\,
	datad => \u9|resist_int~8_combout\,
	combout => \u9|resist_int~9_combout\);

-- Location: LCCOMB_X78_Y29_N16
\u9|resist_int[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|resist_int[0]~1_combout\ = (\BUTTON~combout\(3) & (!\u9|resstart~regout\ & \u9|reset~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datac => \u9|resstart~regout\,
	datad => \u9|reset~regout\,
	combout => \u9|resist_int[0]~1_combout\);

-- Location: LCFF_X77_Y29_N21
\u9|resist_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u9|resist_int~9_combout\,
	ena => \u9|resist_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|resist_int\(0));

-- Location: LCFF_X57_Y26_N29
\u4|weerstand_line[12][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u9|resist_int\(0),
	sload => VCC,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|weerstand_line[12][0]~regout\);

-- Location: LCCOMB_X58_Y26_N22
\u4|Mux263~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~33_combout\ = (!\mode~regout\ & !\u4|character_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode~regout\,
	datad => \u4|character_counter\(1),
	combout => \u4|Mux263~33_combout\);

-- Location: LCCOMB_X57_Y26_N28
\u4|Mux263~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~34_combout\ = (\u4|Mux263~33_combout\ & ((\u4|line_counter\(0) & ((\u4|weerstand_line[12][0]~regout\))) # (!\u4|line_counter\(0) & (\u4|totale_omw_line[12][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_line[12][0]~regout\,
	datab => \u4|line_counter\(0),
	datac => \u4|weerstand_line[12][0]~regout\,
	datad => \u4|Mux263~33_combout\,
	combout => \u4|Mux263~34_combout\);

-- Location: LCCOMB_X57_Y26_N30
\u4|Mux263~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~35_combout\ = (\u4|Mux263~34_combout\) # ((\u4|character_counter\(1) & (\u4|Mux239~0_combout\ & \u4|totale_omw_line[14][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|Mux239~0_combout\,
	datac => \u4|totale_omw_line[14][0]~regout\,
	datad => \u4|Mux263~34_combout\,
	combout => \u4|Mux263~35_combout\);

-- Location: LCCOMB_X54_Y25_N28
\u5|te_hoog~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|te_hoog~0_combout\ = (\u5|LessThan1~3_combout\ & !\u5|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|LessThan1~3_combout\,
	datad => \u5|process_0~1_combout\,
	combout => \u5|te_hoog~0_combout\);

-- Location: LCFF_X54_Y25_N29
\u5|te_hoog\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|te_hoog~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|te_hoog~regout\);

-- Location: LCCOMB_X57_Y25_N20
\u4|RPM_line~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|RPM_line~12_combout\ = (!\u5|te_hoog~regout\ & \u5|rpm_mem\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|te_hoog~regout\,
	datad => \u5|rpm_mem\(0),
	combout => \u4|RPM_line~12_combout\);

-- Location: LCFF_X57_Y25_N21
\u4|RPM_line[14][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|RPM_line~12_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[14][0]~regout\);

-- Location: LCCOMB_X54_Y24_N26
\u2|u1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u1|Mux0~0_combout\ = (\u5|rpm_mem\(7) & ((\u5|rpm_mem\(6) & (\u5|rpm_mem\(4) & \u5|rpm_mem\(5))) # (!\u5|rpm_mem\(6) & ((!\u5|rpm_mem\(5)))))) # (!\u5|rpm_mem\(7) & (\u5|rpm_mem\(6) & ((\u5|rpm_mem\(4)) # (\u5|rpm_mem\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(7),
	datab => \u5|rpm_mem\(6),
	datac => \u5|rpm_mem\(4),
	datad => \u5|rpm_mem\(5),
	combout => \u2|u1|Mux0~0_combout\);

-- Location: LCCOMB_X53_Y25_N28
\u2|u1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u1|Mux3~0_combout\ = (\u5|rpm_mem\(4) & (\u5|rpm_mem\(6) $ (((\u5|rpm_mem\(5)) # (!\u5|rpm_mem\(7)))))) # (!\u5|rpm_mem\(4) & ((\u5|rpm_mem\(5) & (\u5|rpm_mem\(6) & !\u5|rpm_mem\(7))) # (!\u5|rpm_mem\(5) & (!\u5|rpm_mem\(6) & \u5|rpm_mem\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(5),
	datab => \u5|rpm_mem\(4),
	datac => \u5|rpm_mem\(6),
	datad => \u5|rpm_mem\(7),
	combout => \u2|u1|Mux3~0_combout\);

-- Location: LCCOMB_X53_Y25_N14
\u2|u1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u1|Mux2~0_combout\ = (\u5|rpm_mem\(5) & (!\u5|rpm_mem\(7) & ((\u5|rpm_mem\(4)) # (!\u5|rpm_mem\(6))))) # (!\u5|rpm_mem\(5) & (\u5|rpm_mem\(7) & ((\u5|rpm_mem\(6)) # (!\u5|rpm_mem\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(5),
	datab => \u5|rpm_mem\(4),
	datac => \u5|rpm_mem\(6),
	datad => \u5|rpm_mem\(7),
	combout => \u2|u1|Mux2~0_combout\);

-- Location: LCCOMB_X53_Y25_N22
\u2|u2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u2|Mux0~0_combout\ = (\u2|u1|Mux1~0_combout\) # ((\u2|u1|Mux2~0_combout\ & ((\u2|u1|Mux3~0_combout\) # (\u5|rpm_mem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u1|Mux1~0_combout\,
	datab => \u2|u1|Mux3~0_combout\,
	datac => \u5|rpm_mem\(3),
	datad => \u2|u1|Mux2~0_combout\,
	combout => \u2|u2|Mux0~0_combout\);

-- Location: LCCOMB_X53_Y25_N20
\u2|u1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u1|Mux1~0_combout\ = (\u5|rpm_mem\(4) & (!\u5|rpm_mem\(5) & (!\u5|rpm_mem\(6) & \u5|rpm_mem\(7)))) # (!\u5|rpm_mem\(4) & (\u5|rpm_mem\(6) & (\u5|rpm_mem\(5) $ (!\u5|rpm_mem\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(5),
	datab => \u5|rpm_mem\(4),
	datac => \u5|rpm_mem\(6),
	datad => \u5|rpm_mem\(7),
	combout => \u2|u1|Mux1~0_combout\);

-- Location: LCCOMB_X53_Y25_N18
\u2|u2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u2|Mux1~0_combout\ = (!\u2|u1|Mux3~0_combout\ & ((\u5|rpm_mem\(3) & (!\u2|u1|Mux2~0_combout\ & \u2|u1|Mux1~0_combout\)) # (!\u5|rpm_mem\(3) & (\u2|u1|Mux2~0_combout\ & !\u2|u1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(3),
	datab => \u2|u1|Mux2~0_combout\,
	datac => \u2|u1|Mux1~0_combout\,
	datad => \u2|u1|Mux3~0_combout\,
	combout => \u2|u2|Mux1~0_combout\);

-- Location: LCCOMB_X53_Y25_N8
\u2|u2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u2|Mux2~0_combout\ = (\u5|rpm_mem\(3) & (((!\u2|u1|Mux1~0_combout\ & \u2|u1|Mux3~0_combout\)))) # (!\u5|rpm_mem\(3) & (!\u2|u1|Mux2~0_combout\ & (\u2|u1|Mux1~0_combout\ $ (\u2|u1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(3),
	datab => \u2|u1|Mux2~0_combout\,
	datac => \u2|u1|Mux1~0_combout\,
	datad => \u2|u1|Mux3~0_combout\,
	combout => \u2|u2|Mux2~0_combout\);

-- Location: LCCOMB_X53_Y25_N30
\u2|u2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u2|Mux3~0_combout\ = (\u2|u1|Mux3~0_combout\ & (!\u2|u1|Mux1~0_combout\ & (\u5|rpm_mem\(3) $ (\u2|u1|Mux2~0_combout\)))) # (!\u2|u1|Mux3~0_combout\ & (!\u2|u1|Mux2~0_combout\ & (\u5|rpm_mem\(3) $ (\u2|u1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(3),
	datab => \u2|u1|Mux2~0_combout\,
	datac => \u2|u1|Mux1~0_combout\,
	datad => \u2|u1|Mux3~0_combout\,
	combout => \u2|u2|Mux3~0_combout\);

-- Location: LCCOMB_X53_Y25_N6
\u2|u3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u3|Mux0~0_combout\ = (\u2|u2|Mux1~0_combout\) # ((\u2|u2|Mux2~0_combout\ & ((\u5|rpm_mem\(2)) # (\u2|u2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(2),
	datab => \u2|u2|Mux1~0_combout\,
	datac => \u2|u2|Mux2~0_combout\,
	datad => \u2|u2|Mux3~0_combout\,
	combout => \u2|u3|Mux0~0_combout\);

-- Location: LCCOMB_X54_Y24_N28
\u2|u6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u6|Mux0~0_combout\ = (\u2|u0|Mux0~0_combout\ & (\u2|u1|Mux0~0_combout\ & ((\u2|u2|Mux0~0_combout\) # (\u2|u3|Mux0~0_combout\)))) # (!\u2|u0|Mux0~0_combout\ & ((\u2|u1|Mux0~0_combout\ & (\u2|u2|Mux0~0_combout\ & \u2|u3|Mux0~0_combout\)) # 
-- (!\u2|u1|Mux0~0_combout\ & (!\u2|u2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u0|Mux0~0_combout\,
	datab => \u2|u1|Mux0~0_combout\,
	datac => \u2|u2|Mux0~0_combout\,
	datad => \u2|u3|Mux0~0_combout\,
	combout => \u2|u6|Mux0~0_combout\);

-- Location: LCCOMB_X54_Y24_N10
\u4|RPM_line~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|RPM_line~13_combout\ = (!\u5|te_hoog~regout\ & \u2|u6|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|te_hoog~regout\,
	datad => \u2|u6|Mux0~0_combout\,
	combout => \u4|RPM_line~13_combout\);

-- Location: LCFF_X54_Y24_N11
\u4|RPM_line[12][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|RPM_line~13_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[12][0]~regout\);

-- Location: LCCOMB_X57_Y26_N26
\u4|Mux263~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~31_combout\ = (\mode~regout\ & ((\u4|character_counter\(1) & (\u4|RPM_line[14][0]~regout\)) # (!\u4|character_counter\(1) & ((\u4|RPM_line[12][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \mode~regout\,
	datac => \u4|RPM_line[14][0]~regout\,
	datad => \u4|RPM_line[12][0]~regout\,
	combout => \u4|Mux263~31_combout\);

-- Location: LCCOMB_X60_Y24_N14
\u6|rpm_max_int~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_max_int~2_combout\ = (\u6|rpm_int\(6) & \u3c|long~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_int\(6),
	datad => \u3c|long~regout\,
	combout => \u6|rpm_max_int~2_combout\);

-- Location: LCCOMB_X60_Y24_N2
\u6|rpm_int~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_int~1_combout\ = (\u5|rpm_mem\(7) & \u3c|long~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(7),
	datad => \u3c|long~regout\,
	combout => \u6|rpm_int~1_combout\);

-- Location: LCFF_X60_Y24_N3
\u6|rpm_int[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u6|rpm_int~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|rpm_int\(7));

-- Location: LCCOMB_X61_Y23_N12
\u6|rpm_max_int~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_max_int~3_combout\ = (\u6|rpm_int\(7) & \u3c|long~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u6|rpm_int\(7),
	datad => \u3c|long~regout\,
	combout => \u6|rpm_max_int~3_combout\);

-- Location: LCFF_X60_Y23_N23
\u6|rpm_max_int[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u6|rpm_max_int~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u6|rpm_max_int[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|rpm_max_int\(7));

-- Location: LCCOMB_X60_Y24_N4
\u6|rpm_int~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_int~3_combout\ = (\u5|rpm_mem\(5) & \u3c|long~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|rpm_mem\(5),
	datad => \u3c|long~regout\,
	combout => \u6|rpm_int~3_combout\);

-- Location: LCFF_X60_Y24_N5
\u6|rpm_int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u6|rpm_int~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|rpm_int\(5));

-- Location: LCCOMB_X60_Y24_N10
\u6|rpm_int~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_int~4_combout\ = (\u3c|long~regout\ & \u5|rpm_mem\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long~regout\,
	datad => \u5|rpm_mem\(4),
	combout => \u6|rpm_int~4_combout\);

-- Location: LCFF_X60_Y24_N11
\u6|rpm_int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u6|rpm_int~4_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|rpm_int\(4));

-- Location: LCCOMB_X61_Y23_N14
\u6|rpm_max_int~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_max_int~5_combout\ = (\u6|rpm_int\(4) & \u3c|long~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u6|rpm_int\(4),
	datad => \u3c|long~regout\,
	combout => \u6|rpm_max_int~5_combout\);

-- Location: LCFF_X60_Y23_N7
\u6|rpm_max_int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u6|rpm_max_int~5_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u6|rpm_max_int[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|rpm_max_int\(4));

-- Location: LCCOMB_X59_Y24_N30
\u6|rpm_int~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_int~5_combout\ = (\u5|rpm_mem\(3) & \u3c|long~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm_mem\(3),
	datad => \u3c|long~regout\,
	combout => \u6|rpm_int~5_combout\);

-- Location: LCFF_X60_Y24_N13
\u6|rpm_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u6|rpm_int~5_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|rpm_int\(3));

-- Location: LCCOMB_X60_Y24_N12
\u6|rpm_max_int~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_max_int~6_combout\ = (\u6|rpm_int\(3) & \u3c|long~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u6|rpm_int\(3),
	datad => \u3c|long~regout\,
	combout => \u6|rpm_max_int~6_combout\);

-- Location: LCFF_X60_Y23_N9
\u6|rpm_max_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u6|rpm_max_int~6_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u6|rpm_max_int[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|rpm_max_int\(3));

-- Location: LCCOMB_X60_Y24_N0
\u6|rpm_max_int~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_max_int~7_combout\ = (\u6|rpm_int\(2) & \u3c|long~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_int\(2),
	datad => \u3c|long~regout\,
	combout => \u6|rpm_max_int~7_combout\);

-- Location: LCFF_X60_Y23_N29
\u6|rpm_max_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u6|rpm_max_int~7_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u6|rpm_max_int[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|rpm_max_int\(2));

-- Location: LCCOMB_X60_Y24_N8
\u6|rpm_int~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_int~7_combout\ = (\u5|rpm_mem\(1) & \u3c|long~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|rpm_mem\(1),
	datad => \u3c|long~regout\,
	combout => \u6|rpm_int~7_combout\);

-- Location: LCFF_X60_Y24_N9
\u6|rpm_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u6|rpm_int~7_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|rpm_int\(1));

-- Location: LCCOMB_X59_Y24_N0
\u6|rpm_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_int~0_combout\ = (\u5|rpm_mem\(0) & \u3c|long~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm_mem\(0),
	datad => \u3c|long~regout\,
	combout => \u6|rpm_int~0_combout\);

-- Location: LCFF_X60_Y24_N1
\u6|rpm_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u6|rpm_int~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|rpm_int\(0));

-- Location: LCCOMB_X60_Y24_N16
\u6|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~1_cout\ = CARRY((!\u6|rpm_max_int\(0) & \u6|rpm_int\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(0),
	datab => \u6|rpm_int\(0),
	datad => VCC,
	cout => \u6|LessThan0~1_cout\);

-- Location: LCCOMB_X60_Y24_N18
\u6|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~3_cout\ = CARRY((\u6|rpm_max_int\(1) & ((!\u6|LessThan0~1_cout\) # (!\u6|rpm_int\(1)))) # (!\u6|rpm_max_int\(1) & (!\u6|rpm_int\(1) & !\u6|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(1),
	datab => \u6|rpm_int\(1),
	datad => VCC,
	cin => \u6|LessThan0~1_cout\,
	cout => \u6|LessThan0~3_cout\);

-- Location: LCCOMB_X60_Y24_N20
\u6|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~5_cout\ = CARRY((\u6|rpm_int\(2) & ((!\u6|LessThan0~3_cout\) # (!\u6|rpm_max_int\(2)))) # (!\u6|rpm_int\(2) & (!\u6|rpm_max_int\(2) & !\u6|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_int\(2),
	datab => \u6|rpm_max_int\(2),
	datad => VCC,
	cin => \u6|LessThan0~3_cout\,
	cout => \u6|LessThan0~5_cout\);

-- Location: LCCOMB_X60_Y24_N22
\u6|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~7_cout\ = CARRY((\u6|rpm_int\(3) & (\u6|rpm_max_int\(3) & !\u6|LessThan0~5_cout\)) # (!\u6|rpm_int\(3) & ((\u6|rpm_max_int\(3)) # (!\u6|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_int\(3),
	datab => \u6|rpm_max_int\(3),
	datad => VCC,
	cin => \u6|LessThan0~5_cout\,
	cout => \u6|LessThan0~7_cout\);

-- Location: LCCOMB_X60_Y24_N24
\u6|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~9_cout\ = CARRY((\u6|rpm_int\(4) & ((!\u6|LessThan0~7_cout\) # (!\u6|rpm_max_int\(4)))) # (!\u6|rpm_int\(4) & (!\u6|rpm_max_int\(4) & !\u6|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_int\(4),
	datab => \u6|rpm_max_int\(4),
	datad => VCC,
	cin => \u6|LessThan0~7_cout\,
	cout => \u6|LessThan0~9_cout\);

-- Location: LCCOMB_X60_Y24_N26
\u6|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~11_cout\ = CARRY((\u6|rpm_max_int\(5) & ((!\u6|LessThan0~9_cout\) # (!\u6|rpm_int\(5)))) # (!\u6|rpm_max_int\(5) & (!\u6|rpm_int\(5) & !\u6|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(5),
	datab => \u6|rpm_int\(5),
	datad => VCC,
	cin => \u6|LessThan0~9_cout\,
	cout => \u6|LessThan0~11_cout\);

-- Location: LCCOMB_X60_Y24_N28
\u6|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~13_cout\ = CARRY((\u6|rpm_int\(6) & ((!\u6|LessThan0~11_cout\) # (!\u6|rpm_max_int\(6)))) # (!\u6|rpm_int\(6) & (!\u6|rpm_max_int\(6) & !\u6|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_int\(6),
	datab => \u6|rpm_max_int\(6),
	datad => VCC,
	cin => \u6|LessThan0~11_cout\,
	cout => \u6|LessThan0~13_cout\);

-- Location: LCCOMB_X60_Y24_N30
\u6|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~14_combout\ = (\u6|rpm_max_int\(7) & (\u6|LessThan0~13_cout\ & \u6|rpm_int\(7))) # (!\u6|rpm_max_int\(7) & ((\u6|LessThan0~13_cout\) # (\u6|rpm_int\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u6|rpm_max_int\(7),
	datad => \u6|rpm_int\(7),
	cin => \u6|LessThan0~13_cout\,
	combout => \u6|LessThan0~14_combout\);

-- Location: LCCOMB_X60_Y23_N6
\u6|rpm_max_int[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_max_int[6]~1_combout\ = ((!\start~regout\ & \u6|LessThan0~14_combout\)) # (!\u3c|long~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long~regout\,
	datab => \start~regout\,
	datad => \u6|LessThan0~14_combout\,
	combout => \u6|rpm_max_int[6]~1_combout\);

-- Location: LCFF_X60_Y23_N5
\u6|rpm_max_int[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u6|rpm_max_int~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u6|rpm_max_int[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|rpm_max_int\(6));

-- Location: LCCOMB_X60_Y23_N16
\u6|rpm_max_int~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_max_int~4_combout\ = (\u3c|long~regout\ & \u6|rpm_int\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long~regout\,
	datad => \u6|rpm_int\(5),
	combout => \u6|rpm_max_int~4_combout\);

-- Location: LCFF_X60_Y23_N17
\u6|rpm_max_int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u6|rpm_max_int~4_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u6|rpm_max_int[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|rpm_max_int\(5));

-- Location: LCCOMB_X60_Y23_N22
\u4|maximale2bcd|u1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u1|Mux0~0_combout\ = (\u6|rpm_max_int\(6) & ((\u6|rpm_max_int\(4) & ((\u6|rpm_max_int\(5)) # (!\u6|rpm_max_int\(7)))) # (!\u6|rpm_max_int\(4) & (!\u6|rpm_max_int\(7) & \u6|rpm_max_int\(5))))) # (!\u6|rpm_max_int\(6) & 
-- (((\u6|rpm_max_int\(7) & !\u6|rpm_max_int\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(4),
	datab => \u6|rpm_max_int\(6),
	datac => \u6|rpm_max_int\(7),
	datad => \u6|rpm_max_int\(5),
	combout => \u4|maximale2bcd|u1|Mux0~0_combout\);

-- Location: LCCOMB_X60_Y23_N18
\u4|maximale2bcd|u1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u1|Mux1~0_combout\ = (\u6|rpm_max_int\(6) & (!\u6|rpm_max_int\(4) & (\u6|rpm_max_int\(5) $ (!\u6|rpm_max_int\(7))))) # (!\u6|rpm_max_int\(6) & (!\u6|rpm_max_int\(5) & (\u6|rpm_max_int\(7) & \u6|rpm_max_int\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(5),
	datab => \u6|rpm_max_int\(7),
	datac => \u6|rpm_max_int\(6),
	datad => \u6|rpm_max_int\(4),
	combout => \u4|maximale2bcd|u1|Mux1~0_combout\);

-- Location: LCCOMB_X60_Y23_N24
\u4|maximale2bcd|u1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u1|Mux2~0_combout\ = (\u6|rpm_max_int\(5) & (!\u6|rpm_max_int\(7) & ((\u6|rpm_max_int\(4)) # (!\u6|rpm_max_int\(6))))) # (!\u6|rpm_max_int\(5) & (\u6|rpm_max_int\(7) & ((\u6|rpm_max_int\(6)) # (!\u6|rpm_max_int\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(5),
	datab => \u6|rpm_max_int\(7),
	datac => \u6|rpm_max_int\(6),
	datad => \u6|rpm_max_int\(4),
	combout => \u4|maximale2bcd|u1|Mux2~0_combout\);

-- Location: LCCOMB_X60_Y23_N14
\u4|maximale2bcd|u1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u1|Mux3~0_combout\ = (\u6|rpm_max_int\(6) & ((\u6|rpm_max_int\(5) & (!\u6|rpm_max_int\(7) & !\u6|rpm_max_int\(4))) # (!\u6|rpm_max_int\(5) & (\u6|rpm_max_int\(7) & \u6|rpm_max_int\(4))))) # (!\u6|rpm_max_int\(6) & (\u6|rpm_max_int\(4) $ 
-- (((!\u6|rpm_max_int\(5) & \u6|rpm_max_int\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(5),
	datab => \u6|rpm_max_int\(7),
	datac => \u6|rpm_max_int\(6),
	datad => \u6|rpm_max_int\(4),
	combout => \u4|maximale2bcd|u1|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y23_N24
\u4|maximale2bcd|u2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u2|Mux0~0_combout\ = (\u4|maximale2bcd|u1|Mux1~0_combout\) # ((\u4|maximale2bcd|u1|Mux2~0_combout\ & ((\u6|rpm_max_int\(3)) # (\u4|maximale2bcd|u1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(3),
	datab => \u4|maximale2bcd|u1|Mux1~0_combout\,
	datac => \u4|maximale2bcd|u1|Mux2~0_combout\,
	datad => \u4|maximale2bcd|u1|Mux3~0_combout\,
	combout => \u4|maximale2bcd|u2|Mux0~0_combout\);

-- Location: LCCOMB_X60_Y23_N20
\u4|maximale2bcd|u2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u2|Mux2~0_combout\ = (\u6|rpm_max_int\(3) & (\u4|maximale2bcd|u1|Mux3~0_combout\ & ((!\u4|maximale2bcd|u1|Mux1~0_combout\)))) # (!\u6|rpm_max_int\(3) & (!\u4|maximale2bcd|u1|Mux2~0_combout\ & (\u4|maximale2bcd|u1|Mux3~0_combout\ $ 
-- (\u4|maximale2bcd|u1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(3),
	datab => \u4|maximale2bcd|u1|Mux3~0_combout\,
	datac => \u4|maximale2bcd|u1|Mux2~0_combout\,
	datad => \u4|maximale2bcd|u1|Mux1~0_combout\,
	combout => \u4|maximale2bcd|u2|Mux2~0_combout\);

-- Location: LCCOMB_X60_Y23_N2
\u4|maximale2bcd|u2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u2|Mux3~0_combout\ = (\u4|maximale2bcd|u1|Mux3~0_combout\ & (!\u4|maximale2bcd|u1|Mux1~0_combout\ & (\u6|rpm_max_int\(3) $ (\u4|maximale2bcd|u1|Mux2~0_combout\)))) # (!\u4|maximale2bcd|u1|Mux3~0_combout\ & 
-- (!\u4|maximale2bcd|u1|Mux2~0_combout\ & (\u6|rpm_max_int\(3) $ (\u4|maximale2bcd|u1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(3),
	datab => \u4|maximale2bcd|u1|Mux3~0_combout\,
	datac => \u4|maximale2bcd|u1|Mux2~0_combout\,
	datad => \u4|maximale2bcd|u1|Mux1~0_combout\,
	combout => \u4|maximale2bcd|u2|Mux3~0_combout\);

-- Location: LCCOMB_X61_Y23_N0
\u4|maximale2bcd|u3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u3|Mux0~0_combout\ = (\u4|maximale2bcd|u2|Mux1~0_combout\) # ((\u4|maximale2bcd|u2|Mux2~0_combout\ & ((\u6|rpm_max_int\(2)) # (\u4|maximale2bcd|u2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|maximale2bcd|u2|Mux1~0_combout\,
	datab => \u6|rpm_max_int\(2),
	datac => \u4|maximale2bcd|u2|Mux2~0_combout\,
	datad => \u4|maximale2bcd|u2|Mux3~0_combout\,
	combout => \u4|maximale2bcd|u3|Mux0~0_combout\);

-- Location: LCCOMB_X61_Y23_N2
\u4|maximale2bcd|u6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u6|Mux0~0_combout\ = (\u4|maximale2bcd|u0|Mux0~0_combout\ & (\u4|maximale2bcd|u1|Mux0~0_combout\ & ((\u4|maximale2bcd|u2|Mux0~0_combout\) # (\u4|maximale2bcd|u3|Mux0~0_combout\)))) # (!\u4|maximale2bcd|u0|Mux0~0_combout\ & 
-- ((\u4|maximale2bcd|u1|Mux0~0_combout\ & (\u4|maximale2bcd|u2|Mux0~0_combout\ & \u4|maximale2bcd|u3|Mux0~0_combout\)) # (!\u4|maximale2bcd|u1|Mux0~0_combout\ & (!\u4|maximale2bcd|u2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|maximale2bcd|u0|Mux0~0_combout\,
	datab => \u4|maximale2bcd|u1|Mux0~0_combout\,
	datac => \u4|maximale2bcd|u2|Mux0~0_combout\,
	datad => \u4|maximale2bcd|u3|Mux0~0_combout\,
	combout => \u4|maximale2bcd|u6|Mux0~0_combout\);

-- Location: LCFF_X61_Y23_N3
\u4|maximale_line[12][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|maximale2bcd|u6|Mux0~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|maximale_line[12][0]~regout\);

-- Location: LCCOMB_X58_Y23_N10
\u4|Mux263~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~30_combout\ = (!\mode~regout\ & ((\u4|character_counter\(1) & (\u4|maximale_line[14][0]~regout\)) # (!\u4|character_counter\(1) & ((\u4|maximale_line[12][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|maximale_line[14][0]~regout\,
	datab => \u4|maximale_line[12][0]~regout\,
	datac => \u4|character_counter\(1),
	datad => \mode~regout\,
	combout => \u4|Mux263~30_combout\);

-- Location: LCFF_X52_Y22_N7
\u8|gem_RPM_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u8|gem_RPM_int[0]~8_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u8|gem_RPM[7]~0_combout\,
	ena => \u8|gem_RPM_int[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|gem_RPM_int\(0));

-- Location: LCFF_X54_Y22_N27
\u8|gem_RPM[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u8|gem_RPM_int\(0),
	sload => VCC,
	ena => \u8|gem_RPM[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u8|gem_RPM\(0));

-- Location: LCFF_X54_Y22_N29
\u4|gemiddelde_line[14][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u8|gem_RPM\(0),
	sload => VCC,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|gemiddelde_line[14][0]~regout\);

-- Location: LCCOMB_X57_Y26_N12
\u4|Mux263~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~28_combout\ = (!\u4|line_counter\(0) & \mode~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|line_counter\(0),
	datad => \mode~regout\,
	combout => \u4|Mux263~28_combout\);

-- Location: LCCOMB_X54_Y22_N28
\u4|Mux263~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~29_combout\ = (\u4|Mux263~28_combout\ & ((\u4|character_counter\(1) & ((\u4|gemiddelde_line[14][0]~regout\))) # (!\u4|character_counter\(1) & (\u4|gemiddelde_line[12][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|gemiddelde_line[12][0]~regout\,
	datab => \u4|character_counter\(1),
	datac => \u4|gemiddelde_line[14][0]~regout\,
	datad => \u4|Mux263~28_combout\,
	combout => \u4|Mux263~29_combout\);

-- Location: LCCOMB_X54_Y26_N12
\u4|Mux263~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~32_combout\ = (\u4|Mux263~29_combout\) # ((\u4|line_counter\(0) & ((\u4|Mux263~31_combout\) # (\u4|Mux263~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|Mux263~31_combout\,
	datac => \u4|Mux263~30_combout\,
	datad => \u4|Mux263~29_combout\,
	combout => \u4|Mux263~32_combout\);

-- Location: LCCOMB_X54_Y26_N22
\u4|Mux263~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~36_combout\ = (\u4|start~regout\ & ((\u4|line_counter\(1) & ((\u4|Mux263~32_combout\))) # (!\u4|line_counter\(1) & (\u4|Mux263~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \u4|start~regout\,
	datac => \u4|Mux263~35_combout\,
	datad => \u4|Mux263~32_combout\,
	combout => \u4|Mux263~36_combout\);

-- Location: LCCOMB_X54_Y26_N28
\u4|Mux263~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~46_combout\ = (\u4|character_counter\(2) & ((\u4|Mux263~39_combout\ & (\u4|Mux263~45_combout\)) # (!\u4|Mux263~39_combout\ & ((\u4|Mux263~36_combout\))))) # (!\u4|character_counter\(2) & (\u4|Mux263~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|Mux263~39_combout\,
	datac => \u4|Mux263~45_combout\,
	datad => \u4|Mux263~36_combout\,
	combout => \u4|Mux263~46_combout\);

-- Location: LCCOMB_X54_Y26_N16
\u4|Mux263~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~58_combout\ = (\u4|character_counter\(3) & ((\u4|Mux263~46_combout\))) # (!\u4|character_counter\(3) & (\u4|Mux263~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|character_counter\(3),
	datac => \u4|Mux263~57_combout\,
	datad => \u4|Mux263~46_combout\,
	combout => \u4|Mux263~58_combout\);

-- Location: LCFF_X54_Y26_N17
\u4|data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Mux263~58_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.write_char~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|data\(0));

-- Location: LCCOMB_X53_Y29_N16
\u4|lcdm|Selector42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector42~0_combout\ = (\u4|lcdm|current_state.wait_for_command~regout\ & (\u4|lcdm|LCD_DB[0]~8_combout\ & \u4|wr~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|lcdm|LCD_DB[0]~8_combout\,
	datad => \u4|wr~regout\,
	combout => \u4|lcdm|Selector42~0_combout\);

-- Location: LCCOMB_X52_Y29_N28
\u4|lcdm|Selector50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector50~0_combout\ = (\u4|lcdm|Equal0~6_combout\ & (\u4|lcdm|current_state.pulse_busy_flag_1~regout\)) # (!\u4|lcdm|Equal0~6_combout\ & ((\u4|lcdm|current_state.pulse_busy_flag_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag_1~regout\,
	datac => \u4|lcdm|current_state.pulse_busy_flag_2~regout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector50~0_combout\);

-- Location: LCFF_X52_Y29_N29
\u4|lcdm|current_state.pulse_busy_flag_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector50~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_busy_flag_2~regout\);

-- Location: LCCOMB_X52_Y29_N0
\u4|lcdm|Selector51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector51~0_combout\ = (\u4|lcdm|Equal0~6_combout\ & (((\u4|lcdm|current_state.pulse_busy_flag_2~regout\)))) # (!\u4|lcdm|Equal0~6_combout\ & (!\u4|lcdm|Selector52~0_combout\ & ((\u4|lcdm|current_state.pulse_busy_flag_3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector52~0_combout\,
	datab => \u4|lcdm|current_state.pulse_busy_flag_2~regout\,
	datac => \u4|lcdm|current_state.pulse_busy_flag_3~regout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector51~0_combout\);

-- Location: LCFF_X52_Y29_N1
\u4|lcdm|current_state.pulse_busy_flag_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector51~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_busy_flag_3~regout\);

-- Location: LCCOMB_X52_Y29_N4
\u4|lcdm|Selector52~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector52~4_combout\ = (\u4|lcdm|current_state.pulse_busy_flag_3~regout\ & !\LCD_DATA[7]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.pulse_busy_flag_3~regout\,
	datad => \LCD_DATA[7]~7\,
	combout => \u4|lcdm|Selector52~4_combout\);

-- Location: LCCOMB_X52_Y29_N18
\u4|lcdm|WideOr33~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr33~1_combout\ = (!\u4|lcdm|current_state.pulse_busy_flag_5~regout\ & (!\u4|lcdm|current_state.pulse_e_3~regout\ & (\u4|lcdm|Selector52~0_combout\ & \u4|lcdm|WideOr41~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag_5~regout\,
	datab => \u4|lcdm|current_state.pulse_e_3~regout\,
	datac => \u4|lcdm|Selector52~0_combout\,
	datad => \u4|lcdm|WideOr41~2_combout\,
	combout => \u4|lcdm|WideOr33~1_combout\);

-- Location: LCCOMB_X52_Y29_N30
\u4|lcdm|WideOr33~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr33~2_combout\ = ((\u4|lcdm|current_state.wait_for_command~regout\) # (!\u4|lcdm|WideOr33~1_combout\)) # (!\u4|lcdm|WideOr33~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr33~0_combout\,
	datac => \u4|lcdm|current_state.wait_for_command~regout\,
	datad => \u4|lcdm|WideOr33~1_combout\,
	combout => \u4|lcdm|WideOr33~2_combout\);

-- Location: LCCOMB_X53_Y29_N14
\u4|lcdm|Selector52~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector52~1_combout\ = (\u4|lcdm|Selector52~0_combout\ & ((\u4|lcdm|current_state.wait_for_command~regout\ & (\u4|wr~regout\)) # (!\u4|lcdm|current_state.wait_for_command~regout\ & ((\u4|lcdm|Equal0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|wr~regout\,
	datac => \u4|lcdm|Selector52~0_combout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector52~1_combout\);

-- Location: LCCOMB_X52_Y29_N8
\u4|lcdm|Selector52~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector52~3_combout\ = (\u4|lcdm|Selector52~2_combout\) # (((\u4|lcdm|Selector52~1_combout\) # (\u4|lcdm|Selector53~3_combout\)) # (!\u4|lcdm|WideOr33~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector52~2_combout\,
	datab => \u4|lcdm|WideOr33~2_combout\,
	datac => \u4|lcdm|Selector52~1_combout\,
	datad => \u4|lcdm|Selector53~3_combout\,
	combout => \u4|lcdm|Selector52~3_combout\);

-- Location: LCFF_X52_Y29_N5
\u4|lcdm|current_state.pulse_busy_flag_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector52~4_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|Selector52~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_busy_flag_4~regout\);

-- Location: LCCOMB_X52_Y29_N12
\u4|lcdm|Selector52~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector52~0_combout\ = (!\u4|lcdm|current_state.pulse_busy_flag_4~regout\ & !\u4|lcdm|current_state.pulse_e_4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.pulse_busy_flag_4~regout\,
	datad => \u4|lcdm|current_state.pulse_e_4~regout\,
	combout => \u4|lcdm|Selector52~0_combout\);

-- Location: LCCOMB_X53_Y29_N18
\u4|lcdm|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector34~0_combout\ = (\u4|lcdm|current_state.wait_for_command~regout\ & ((\u4|wr~regout\) # (!\u4|lcdm|LCD_DB[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|wr~regout\,
	datad => \u4|lcdm|LCD_DB[0]~8_combout\,
	combout => \u4|lcdm|Selector34~0_combout\);

-- Location: LCCOMB_X51_Y29_N14
\u4|lcdm|WideOr33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr33~0_combout\ = (!\u4|lcdm|current_state.pulse_busy_flag_1~regout\ & (!\u4|lcdm|current_state.pulse_e_1~regout\ & (!\u4|lcdm|current_state.pulse_e_2~regout\ & !\u4|lcdm|current_state.pulse_busy_flag_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag_1~regout\,
	datab => \u4|lcdm|current_state.pulse_e_1~regout\,
	datac => \u4|lcdm|current_state.pulse_e_2~regout\,
	datad => \u4|lcdm|current_state.pulse_busy_flag_2~regout\,
	combout => \u4|lcdm|WideOr33~0_combout\);

-- Location: LCCOMB_X53_Y29_N24
\u4|lcdm|Selector34~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector34~1_combout\ = (!\u4|lcdm|Selector34~0_combout\ & ((\u4|lcdm|current_state.wait_for_command~regout\) # ((!\u4|lcdm|WideOr33~1_combout\) # (!\u4|lcdm|WideOr33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|lcdm|Selector34~0_combout\,
	datac => \u4|lcdm|WideOr33~0_combout\,
	datad => \u4|lcdm|WideOr33~1_combout\,
	combout => \u4|lcdm|Selector34~1_combout\);

-- Location: LCCOMB_X53_Y29_N2
\u4|lcdm|Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector38~0_combout\ = ((\u4|lcdm|Equal0~6_combout\ & ((!\u4|lcdm|Selector52~0_combout\) # (!\u4|lcdm|current_state.wait_for_command~regout\)))) # (!\u4|lcdm|Selector34~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|lcdm|Selector52~0_combout\,
	datac => \u4|lcdm|Selector34~1_combout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector38~0_combout\);

-- Location: LCFF_X53_Y29_N17
\u4|lcdm|current_state.command_wr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector42~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|Selector38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_wr~regout\);

-- Location: LCCOMB_X53_Y29_N26
\u4|lcdm|Selector34~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector34~2_combout\ = (\u4|lcdm|Selector34~1_combout\ & ((\u4|lcdm|current_state.wait_for_command~regout\) # ((!\u4|lcdm|Equal0~6_combout\) # (!\u4|lcdm|Selector52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|lcdm|Selector52~0_combout\,
	datac => \u4|lcdm|Selector34~1_combout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector34~2_combout\);

-- Location: LCCOMB_X52_Y28_N16
\u4|lcdm|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector29~0_combout\ = (\u4|lcdm|Selector34~2_combout\ & ((\u4|lcdm|Selector53~3_combout\ & (\u4|lcdm|return_state.command_init_6~regout\)) # (!\u4|lcdm|Selector53~3_combout\ & ((\u4|lcdm|current_state.command_init_6~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_6~regout\,
	datab => \u4|lcdm|Selector34~2_combout\,
	datac => \u4|lcdm|current_state.command_init_6~regout\,
	datad => \u4|lcdm|Selector53~3_combout\,
	combout => \u4|lcdm|Selector29~0_combout\);

-- Location: LCFF_X52_Y28_N17
\u4|lcdm|current_state.command_init_6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector29~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_6~regout\);

-- Location: LCCOMB_X53_Y28_N14
\u4|lcdm|WideOr18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr18~0_combout\ = (!\u4|lcdm|current_state.command_init_7~regout\ & (!\u4|lcdm|current_state.command_wr~regout\ & !\u4|lcdm|current_state.command_init_6~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_7~regout\,
	datac => \u4|lcdm|current_state.command_wr~regout\,
	datad => \u4|lcdm|current_state.command_init_6~regout\,
	combout => \u4|lcdm|WideOr18~0_combout\);

-- Location: LCCOMB_X53_Y28_N30
\u4|lcdm|Selector34~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector34~3_combout\ = (\u4|lcdm|Selector34~2_combout\ & ((\u4|lcdm|Selector53~3_combout\ & (\u4|lcdm|return_state.command_init_11~regout\)) # (!\u4|lcdm|Selector53~3_combout\ & ((\u4|lcdm|current_state.command_init_11~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_11~regout\,
	datab => \u4|lcdm|Selector53~3_combout\,
	datac => \u4|lcdm|current_state.command_init_11~regout\,
	datad => \u4|lcdm|Selector34~2_combout\,
	combout => \u4|lcdm|Selector34~3_combout\);

-- Location: LCFF_X53_Y28_N31
\u4|lcdm|current_state.command_init_11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector34~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_11~regout\);

-- Location: LCCOMB_X53_Y29_N6
\u4|lcdm|Selector39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector39~0_combout\ = (\u4|lcdm|current_state.wait_for_command~regout\ & (!\u4|home~regout\ & \u4|goto10~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|home~regout\,
	datac => \u4|goto10~regout\,
	combout => \u4|lcdm|Selector39~0_combout\);

-- Location: LCFF_X53_Y29_N7
\u4|lcdm|current_state.command_goto10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector39~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|Selector38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_goto10~regout\);

-- Location: LCCOMB_X53_Y29_N12
\u4|lcdm|Selector38~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector38~1_combout\ = (\u4|lcdm|current_state.wait_for_command~regout\ & ((\u4|home~regout\) # ((\u4|lcdm|current_state.command_home~regout\ & !\u4|lcdm|Selector38~0_combout\)))) # (!\u4|lcdm|current_state.wait_for_command~regout\ & 
-- (((\u4|lcdm|current_state.command_home~regout\ & !\u4|lcdm|Selector38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|home~regout\,
	datac => \u4|lcdm|current_state.command_home~regout\,
	datad => \u4|lcdm|Selector38~0_combout\,
	combout => \u4|lcdm|Selector38~1_combout\);

-- Location: LCFF_X53_Y29_N13
\u4|lcdm|current_state.command_home\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector38~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_home~regout\);

-- Location: LCCOMB_X53_Y28_N16
\u4|lcdm|Selector99~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector99~2_combout\ = (!\u4|lcdm|current_state.command_init_8~regout\ & (!\u4|lcdm|current_state.command_init_11~regout\ & (!\u4|lcdm|current_state.command_goto10~regout\ & !\u4|lcdm|current_state.command_home~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_8~regout\,
	datab => \u4|lcdm|current_state.command_init_11~regout\,
	datac => \u4|lcdm|current_state.command_goto10~regout\,
	datad => \u4|lcdm|current_state.command_home~regout\,
	combout => \u4|lcdm|Selector99~2_combout\);

-- Location: LCCOMB_X56_Y27_N0
\u4|goto20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|goto20~0_combout\ = (\u4|state.update~regout\ & (!\u4|Mux265~0_combout\ & (!\u4|Equal1~0_combout\ & \u4|Selector18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update~regout\,
	datab => \u4|Mux265~0_combout\,
	datac => \u4|Equal1~0_combout\,
	datad => \u4|Selector18~0_combout\,
	combout => \u4|goto20~0_combout\);

-- Location: LCFF_X56_Y27_N1
\u4|goto20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|goto20~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|goto20~regout\);

-- Location: LCCOMB_X53_Y29_N28
\u4|lcdm|Selector40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector40~0_combout\ = (!\u4|goto10~regout\ & (!\u4|home~regout\ & (\u4|goto20~regout\ & \u4|lcdm|current_state.wait_for_command~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|goto10~regout\,
	datab => \u4|home~regout\,
	datac => \u4|goto20~regout\,
	datad => \u4|lcdm|current_state.wait_for_command~regout\,
	combout => \u4|lcdm|Selector40~0_combout\);

-- Location: LCFF_X53_Y29_N29
\u4|lcdm|current_state.command_goto20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector40~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|Selector38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_goto20~regout\);

-- Location: LCCOMB_X53_Y29_N8
\u4|lcdm|Selector41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector41~0_combout\ = (!\u4|goto10~regout\ & (!\u4|home~regout\ & (!\u4|goto20~regout\ & \u4|lcdm|current_state.wait_for_command~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|goto10~regout\,
	datab => \u4|home~regout\,
	datac => \u4|goto20~regout\,
	datad => \u4|lcdm|current_state.wait_for_command~regout\,
	combout => \u4|lcdm|Selector41~0_combout\);

-- Location: LCCOMB_X53_Y29_N22
\u4|lcdm|Selector41~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector41~1_combout\ = (\u4|lcdm|Selector41~0_combout\ & \u4|goto30~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|Selector41~0_combout\,
	datad => \u4|goto30~regout\,
	combout => \u4|lcdm|Selector41~1_combout\);

-- Location: LCFF_X53_Y29_N23
\u4|lcdm|current_state.command_goto30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector41~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|Selector38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_goto30~regout\);

-- Location: LCCOMB_X53_Y29_N20
\u4|lcdm|Selector102~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector102~0_combout\ = (!\u4|lcdm|current_state.command_goto20~regout\ & !\u4|lcdm|current_state.command_goto30~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.command_goto20~regout\,
	datad => \u4|lcdm|current_state.command_goto30~regout\,
	combout => \u4|lcdm|Selector102~0_combout\);

-- Location: LCCOMB_X53_Y28_N12
\u4|lcdm|WideOr18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr18~1_combout\ = (\u4|lcdm|Selector99~3_combout\ & (\u4|lcdm|WideOr18~0_combout\ & (\u4|lcdm|Selector99~2_combout\ & \u4|lcdm|Selector102~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector99~3_combout\,
	datab => \u4|lcdm|WideOr18~0_combout\,
	datac => \u4|lcdm|Selector99~2_combout\,
	datad => \u4|lcdm|Selector102~0_combout\,
	combout => \u4|lcdm|WideOr18~1_combout\);

-- Location: LCCOMB_X52_Y29_N24
\u4|lcdm|Selector43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector43~0_combout\ = ((!\u4|lcdm|Selector52~0_combout\ & (\u4|lcdm|current_state.pulse_e~regout\ & !\u4|lcdm|Equal0~6_combout\))) # (!\u4|lcdm|WideOr18~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector52~0_combout\,
	datab => \u4|lcdm|WideOr18~1_combout\,
	datac => \u4|lcdm|current_state.pulse_e~regout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector43~0_combout\);

-- Location: LCCOMB_X51_Y29_N20
\u4|lcdm|Selector43~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector43~1_combout\ = (\u4|lcdm|Selector43~0_combout\) # ((!\u4|lcdm|WideOr41~2_combout\ & ((\u4|lcdm|Equal0~6_combout\) # (\u4|lcdm|current_state.pulse_e~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|WideOr41~2_combout\,
	datac => \u4|lcdm|current_state.pulse_e~regout\,
	datad => \u4|lcdm|Selector43~0_combout\,
	combout => \u4|lcdm|Selector43~1_combout\);

-- Location: LCFF_X51_Y29_N21
\u4|lcdm|current_state.pulse_e\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector43~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_e~regout\);

-- Location: LCCOMB_X50_Y29_N6
\u4|lcdm|Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector44~0_combout\ = (\u4|lcdm|current_state.pulse_e~regout\) # ((!\u4|lcdm|Equal0~6_combout\ & \u4|lcdm|current_state.pulse_e_1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|current_state.pulse_e_1~regout\,
	datad => \u4|lcdm|current_state.pulse_e~regout\,
	combout => \u4|lcdm|Selector44~0_combout\);

-- Location: LCFF_X50_Y29_N7
\u4|lcdm|current_state.pulse_e_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector44~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_e_1~regout\);

-- Location: LCCOMB_X50_Y29_N4
\u4|lcdm|Selector45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector45~0_combout\ = (\u4|lcdm|Equal0~6_combout\ & ((\u4|lcdm|current_state.pulse_e_1~regout\))) # (!\u4|lcdm|Equal0~6_combout\ & (\u4|lcdm|current_state.pulse_e_2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|current_state.pulse_e_2~regout\,
	datad => \u4|lcdm|current_state.pulse_e_1~regout\,
	combout => \u4|lcdm|Selector45~0_combout\);

-- Location: LCFF_X50_Y29_N5
\u4|lcdm|current_state.pulse_e_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector45~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_e_2~regout\);

-- Location: LCCOMB_X51_Y29_N22
\u4|lcdm|Selector46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector46~0_combout\ = (\u4|lcdm|Equal0~6_combout\ & (\u4|lcdm|current_state.pulse_e_2~regout\)) # (!\u4|lcdm|Equal0~6_combout\ & ((\u4|lcdm|current_state.pulse_e_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.pulse_e_2~regout\,
	datac => \u4|lcdm|current_state.pulse_e_3~regout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector46~0_combout\);

-- Location: LCFF_X51_Y29_N23
\u4|lcdm|current_state.pulse_e_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector46~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_e_3~regout\);

-- Location: LCCOMB_X52_Y29_N26
\u4|lcdm|Selector47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector47~0_combout\ = (\u4|lcdm|Equal0~6_combout\ & (\u4|lcdm|current_state.pulse_e_3~regout\)) # (!\u4|lcdm|Equal0~6_combout\ & ((\u4|lcdm|current_state.pulse_e_4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.pulse_e_3~regout\,
	datac => \u4|lcdm|current_state.pulse_e_4~regout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector47~0_combout\);

-- Location: LCFF_X52_Y29_N27
\u4|lcdm|current_state.pulse_e_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector47~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_e_4~regout\);

-- Location: LCCOMB_X52_Y29_N10
\u4|lcdm|Selector53~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector53~3_combout\ = (\u4|lcdm|Equal0~6_combout\ & ((\u4|lcdm|current_state.pulse_e_4~regout\) # (\u4|lcdm|current_state.pulse_busy_flag_4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.pulse_e_4~regout\,
	datac => \u4|lcdm|current_state.pulse_busy_flag_4~regout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector53~3_combout\);

-- Location: LCCOMB_X52_Y30_N26
\u4|lcdm|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector27~0_combout\ = (\u4|lcdm|Selector34~2_combout\ & ((\u4|lcdm|Selector53~3_combout\ & (\u4|lcdm|return_state.command_init_4~regout\)) # (!\u4|lcdm|Selector53~3_combout\ & ((\u4|lcdm|current_state.command_init_4~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_4~regout\,
	datab => \u4|lcdm|Selector53~3_combout\,
	datac => \u4|lcdm|current_state.command_init_4~regout\,
	datad => \u4|lcdm|Selector34~2_combout\,
	combout => \u4|lcdm|Selector27~0_combout\);

-- Location: LCFF_X52_Y30_N27
\u4|lcdm|current_state.command_init_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector27~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_4~regout\);

-- Location: LCCOMB_X52_Y30_N24
\u4|lcdm|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector22~0_combout\ = ((\u4|lcdm|Selector53~3_combout\ & (\u4|lcdm|return_state.reset~regout\)) # (!\u4|lcdm|Selector53~3_combout\ & ((\u4|lcdm|current_state.reset~regout\)))) # (!\u4|lcdm|Selector34~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.reset~regout\,
	datab => \u4|lcdm|Selector53~3_combout\,
	datac => \u4|lcdm|current_state.reset~regout\,
	datad => \u4|lcdm|Selector34~2_combout\,
	combout => \u4|lcdm|Selector22~0_combout\);

-- Location: LCFF_X52_Y30_N25
\u4|lcdm|current_state.reset\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector22~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.reset~regout\);

-- Location: LCCOMB_X52_Y30_N16
\u4|lcdm|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector25~0_combout\ = (\u4|lcdm|Selector34~2_combout\ & ((\u4|lcdm|Selector53~3_combout\ & (\u4|lcdm|return_state.command_init_2~regout\)) # (!\u4|lcdm|Selector53~3_combout\ & ((\u4|lcdm|current_state.command_init_2~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_2~regout\,
	datab => \u4|lcdm|Selector53~3_combout\,
	datac => \u4|lcdm|current_state.command_init_2~regout\,
	datad => \u4|lcdm|Selector34~2_combout\,
	combout => \u4|lcdm|Selector25~0_combout\);

-- Location: LCFF_X52_Y30_N17
\u4|lcdm|current_state.command_init_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector25~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_2~regout\);

-- Location: LCCOMB_X52_Y28_N28
\u4|lcdm|WideOr17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr17~0_combout\ = (!\u4|lcdm|current_state.pulse_busy_flag~regout\ & (!\u4|lcdm|current_state.command_init_4~regout\ & (\u4|lcdm|current_state.reset~regout\ & !\u4|lcdm|current_state.command_init_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag~regout\,
	datab => \u4|lcdm|current_state.command_init_4~regout\,
	datac => \u4|lcdm|current_state.reset~regout\,
	datad => \u4|lcdm|current_state.command_init_2~regout\,
	combout => \u4|lcdm|WideOr17~0_combout\);

-- Location: LCCOMB_X52_Y29_N20
\u4|lcdm|Selector53~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector53~2_combout\ = (\u4|lcdm|current_state.pulse_busy_flag_3~regout\ & \LCD_DATA[7]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.pulse_busy_flag_3~regout\,
	datad => \LCD_DATA[7]~7\,
	combout => \u4|lcdm|Selector53~2_combout\);

-- Location: LCFF_X52_Y29_N21
\u4|lcdm|current_state.pulse_busy_flag_5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector53~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|Selector52~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_busy_flag_5~regout\);

-- Location: LCCOMB_X51_Y29_N6
\u4|lcdm|delay_counter[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|delay_counter[8]~6_combout\ = (!\u4|lcdm|current_state.pulse_busy_flag_4~regout\ & (!\u4|lcdm|current_state.pulse_busy_flag_5~regout\ & (!\u4|lcdm|current_state.pulse_e_4~regout\ & \u4|lcdm|WideOr41~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag_4~regout\,
	datab => \u4|lcdm|current_state.pulse_busy_flag_5~regout\,
	datac => \u4|lcdm|current_state.pulse_e_4~regout\,
	datad => \u4|lcdm|WideOr41~2_combout\,
	combout => \u4|lcdm|delay_counter[8]~6_combout\);

-- Location: LCCOMB_X52_Y28_N10
\u4|lcdm|WideOr18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr18~combout\ = (\u4|lcdm|current_state.pulse_busy_flag_3~regout\) # ((\u4|lcdm|current_state.wait_for_command~regout\) # (!\u4|lcdm|WideOr18~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.pulse_busy_flag_3~regout\,
	datac => \u4|lcdm|WideOr18~1_combout\,
	datad => \u4|lcdm|current_state.wait_for_command~regout\,
	combout => \u4|lcdm|WideOr18~combout\);

-- Location: LCCOMB_X52_Y28_N14
\u4|lcdm|delay_counter[8]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|delay_counter[8]~2_combout\ = (\u4|lcdm|Equal0~6_combout\ & (\u4|lcdm|delay_counter[8]~6_combout\ & !\u4|lcdm|WideOr18~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|delay_counter[8]~6_combout\,
	datad => \u4|lcdm|WideOr18~combout\,
	combout => \u4|lcdm|delay_counter[8]~2_combout\);

-- Location: LCCOMB_X52_Y28_N8
\u4|lcdm|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector19~0_combout\ = (\u4|lcdm|Add0~4_combout\ & (\u4|lcdm|WideOr17~0_combout\ & (!\u4|lcdm|delay_counter[8]~2_combout\ & !\u4|lcdm|current_state.pulse_e~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Add0~4_combout\,
	datab => \u4|lcdm|WideOr17~0_combout\,
	datac => \u4|lcdm|delay_counter[8]~2_combout\,
	datad => \u4|lcdm|current_state.pulse_e~regout\,
	combout => \u4|lcdm|Selector19~0_combout\);

-- Location: LCCOMB_X52_Y28_N0
\u4|lcdm|delay_counter[18]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|delay_counter[18]~3_combout\ = (!\u4|lcdm|WideOr18~combout\ & ((\u4|lcdm|delay_counter[8]~6_combout\) # (!\u4|lcdm|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|delay_counter[8]~6_combout\,
	datad => \u4|lcdm|WideOr18~combout\,
	combout => \u4|lcdm|delay_counter[18]~3_combout\);

-- Location: LCFF_X52_Y28_N9
\u4|lcdm|delay_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector19~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(2));

-- Location: LCCOMB_X51_Y29_N8
\u4|lcdm|LCD_E~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|LCD_E~0_combout\ = (\u4|lcdm|current_state.pulse_e_2~regout\) # (\u4|lcdm|current_state.pulse_busy_flag_2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|current_state.pulse_e_2~regout\,
	datad => \u4|lcdm|current_state.pulse_busy_flag_2~regout\,
	combout => \u4|lcdm|LCD_E~0_combout\);

-- Location: LCCOMB_X52_Y29_N6
\u4|lcdm|Selector49~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector49~0_combout\ = (\u4|lcdm|current_state.pulse_busy_flag~regout\) # ((\u4|lcdm|current_state.pulse_busy_flag_1~regout\ & !\u4|lcdm|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag~regout\,
	datac => \u4|lcdm|current_state.pulse_busy_flag_1~regout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector49~0_combout\);

-- Location: LCFF_X52_Y29_N7
\u4|lcdm|current_state.pulse_busy_flag_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector49~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_busy_flag_1~regout\);

-- Location: LCCOMB_X51_Y29_N0
\u4|lcdm|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector15~0_combout\ = (!\u4|lcdm|Equal0~6_combout\ & (((\u4|lcdm|current_state.pulse_e_1~regout\) # (\u4|lcdm|current_state.pulse_busy_flag_1~regout\)) # (!\u4|lcdm|WideOr33~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr33~1_combout\,
	datab => \u4|lcdm|current_state.pulse_e_1~regout\,
	datac => \u4|lcdm|Equal0~6_combout\,
	datad => \u4|lcdm|current_state.pulse_busy_flag_1~regout\,
	combout => \u4|lcdm|Selector15~0_combout\);

-- Location: LCCOMB_X51_Y29_N30
\u4|lcdm|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector20~0_combout\ = (\u4|lcdm|Add0~2_combout\ & ((\u4|lcdm|LCD_E~0_combout\) # ((\u4|lcdm|Selector15~0_combout\)))) # (!\u4|lcdm|Add0~2_combout\ & (\u4|lcdm|LCD_E~0_combout\ & (\u4|lcdm|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Add0~2_combout\,
	datab => \u4|lcdm|LCD_E~0_combout\,
	datac => \u4|lcdm|Equal0~6_combout\,
	datad => \u4|lcdm|Selector15~0_combout\,
	combout => \u4|lcdm|Selector20~0_combout\);

-- Location: LCCOMB_X51_Y29_N26
\u4|lcdm|Selector20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector20~1_combout\ = ((\u4|lcdm|Selector20~0_combout\) # ((\u4|lcdm|WideOr18~combout\ & \u4|lcdm|delay_counter\(1)))) # (!\u4|lcdm|Selector14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector14~0_combout\,
	datab => \u4|lcdm|WideOr18~combout\,
	datac => \u4|lcdm|delay_counter\(1),
	datad => \u4|lcdm|Selector20~0_combout\,
	combout => \u4|lcdm|Selector20~1_combout\);

-- Location: LCFF_X51_Y29_N27
\u4|lcdm|delay_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector20~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(1));

-- Location: LCCOMB_X52_Y29_N16
\u4|lcdm|Selector48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector48~0_combout\ = (\u4|lcdm|Equal0~6_combout\ & (\u4|lcdm|current_state.pulse_busy_flag_5~regout\)) # (!\u4|lcdm|Equal0~6_combout\ & (((\u4|lcdm|current_state.pulse_busy_flag~regout\ & !\u4|lcdm|Selector52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag_5~regout\,
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|current_state.pulse_busy_flag~regout\,
	datad => \u4|lcdm|Selector52~0_combout\,
	combout => \u4|lcdm|Selector48~0_combout\);

-- Location: LCFF_X52_Y29_N17
\u4|lcdm|current_state.pulse_busy_flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector48~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_busy_flag~regout\);

-- Location: LCCOMB_X52_Y28_N22
\u4|lcdm|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector14~0_combout\ = (!\u4|lcdm|current_state.pulse_busy_flag~regout\ & !\u4|lcdm|current_state.pulse_e~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|current_state.pulse_busy_flag~regout\,
	datad => \u4|lcdm|current_state.pulse_e~regout\,
	combout => \u4|lcdm|Selector14~0_combout\);

-- Location: LCCOMB_X52_Y28_N18
\u4|lcdm|Selector14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector14~1_combout\ = (\u4|lcdm|Selector14~0_combout\ & (((\u4|lcdm|current_state.command_init_2~regout\) # (\u4|lcdm|current_state.command_init_4~regout\)) # (!\u4|lcdm|current_state.reset~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.reset~regout\,
	datab => \u4|lcdm|current_state.command_init_2~regout\,
	datac => \u4|lcdm|current_state.command_init_4~regout\,
	datad => \u4|lcdm|Selector14~0_combout\,
	combout => \u4|lcdm|Selector14~1_combout\);

-- Location: LCCOMB_X50_Y28_N28
\u4|lcdm|Selector47~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector47~1_combout\ = (\u4|lcdm|current_state.pulse_e_3~regout\ & \u4|lcdm|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_e_3~regout\,
	datac => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector47~1_combout\);

-- Location: LCCOMB_X51_Y28_N2
\u4|lcdm|WideOr17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr17~1_combout\ = (\u4|lcdm|WideOr17~0_combout\ & (!\u4|lcdm|current_state.pulse_e~regout\ & ((\u4|lcdm|WideOr33~0_combout\) # (!\u4|lcdm|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|WideOr17~0_combout\,
	datac => \u4|lcdm|current_state.pulse_e~regout\,
	datad => \u4|lcdm|WideOr33~0_combout\,
	combout => \u4|lcdm|WideOr17~1_combout\);

-- Location: LCCOMB_X50_Y29_N2
\u4|lcdm|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector21~0_combout\ = (!\u4|lcdm|Selector47~1_combout\ & ((\u4|lcdm|WideOr17~1_combout\ & (\u4|lcdm|Add0~0_combout\)) # (!\u4|lcdm|WideOr17~1_combout\ & ((!\u4|lcdm|Selector14~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Add0~0_combout\,
	datab => \u4|lcdm|Selector14~1_combout\,
	datac => \u4|lcdm|Selector47~1_combout\,
	datad => \u4|lcdm|WideOr17~1_combout\,
	combout => \u4|lcdm|Selector21~0_combout\);

-- Location: LCFF_X50_Y29_N3
\u4|lcdm|delay_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector21~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(0));

-- Location: LCCOMB_X50_Y29_N18
\u4|lcdm|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~6_combout\ = (\u4|lcdm|delay_counter\(3) & (\u4|lcdm|Add0~5\ & VCC)) # (!\u4|lcdm|delay_counter\(3) & (!\u4|lcdm|Add0~5\))
-- \u4|lcdm|Add0~7\ = CARRY((!\u4|lcdm|delay_counter\(3) & !\u4|lcdm|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|delay_counter\(3),
	datad => VCC,
	cin => \u4|lcdm|Add0~5\,
	combout => \u4|lcdm|Add0~6_combout\,
	cout => \u4|lcdm|Add0~7\);

-- Location: LCCOMB_X49_Y28_N2
\u4|lcdm|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector18~0_combout\ = (\u4|lcdm|current_state.command_init_4~regout\) # ((\u4|lcdm|current_state.command_init_2~regout\) # ((\u4|lcdm|delay_counter\(3) & \u4|lcdm|WideOr18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_4~regout\,
	datab => \u4|lcdm|delay_counter\(3),
	datac => \u4|lcdm|current_state.command_init_2~regout\,
	datad => \u4|lcdm|WideOr18~combout\,
	combout => \u4|lcdm|Selector18~0_combout\);

-- Location: LCCOMB_X49_Y28_N12
\u4|lcdm|Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector18~1_combout\ = (\u4|lcdm|Selector18~0_combout\) # ((!\u4|lcdm|WideOr33~1_combout\ & (\u4|lcdm|Add0~6_combout\ & !\u4|lcdm|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr33~1_combout\,
	datab => \u4|lcdm|Add0~6_combout\,
	datac => \u4|lcdm|Equal0~6_combout\,
	datad => \u4|lcdm|Selector18~0_combout\,
	combout => \u4|lcdm|Selector18~1_combout\);

-- Location: LCCOMB_X49_Y28_N0
\u4|lcdm|Selector18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector18~2_combout\ = (\u4|lcdm|Selector18~1_combout\) # ((!\u4|lcdm|WideOr33~0_combout\ & ((\u4|lcdm|Add0~6_combout\) # (\u4|lcdm|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr33~0_combout\,
	datab => \u4|lcdm|Add0~6_combout\,
	datac => \u4|lcdm|Equal0~6_combout\,
	datad => \u4|lcdm|Selector18~1_combout\,
	combout => \u4|lcdm|Selector18~2_combout\);

-- Location: LCFF_X49_Y28_N1
\u4|lcdm|delay_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector18~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(3));

-- Location: LCCOMB_X50_Y29_N20
\u4|lcdm|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~8_combout\ = (\u4|lcdm|delay_counter\(4) & ((GND) # (!\u4|lcdm|Add0~7\))) # (!\u4|lcdm|delay_counter\(4) & (\u4|lcdm|Add0~7\ $ (GND)))
-- \u4|lcdm|Add0~9\ = CARRY((\u4|lcdm|delay_counter\(4)) # (!\u4|lcdm|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|delay_counter\(4),
	datad => VCC,
	cin => \u4|lcdm|Add0~7\,
	combout => \u4|lcdm|Add0~8_combout\,
	cout => \u4|lcdm|Add0~9\);

-- Location: LCCOMB_X51_Y29_N10
\u4|lcdm|Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector17~1_combout\ = (!\u4|lcdm|Equal0~6_combout\ & (\u4|lcdm|Add0~8_combout\ & ((\u4|lcdm|LCD_E~0_combout\) # (!\u4|lcdm|WideOr33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr33~1_combout\,
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|Add0~8_combout\,
	datad => \u4|lcdm|LCD_E~0_combout\,
	combout => \u4|lcdm|Selector17~1_combout\);

-- Location: LCCOMB_X51_Y29_N24
\u4|lcdm|Selector17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector17~2_combout\ = (\u4|lcdm|Selector17~0_combout\) # ((\u4|lcdm|Selector17~1_combout\) # ((\u4|lcdm|WideOr18~combout\ & \u4|lcdm|delay_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector17~0_combout\,
	datab => \u4|lcdm|WideOr18~combout\,
	datac => \u4|lcdm|delay_counter\(4),
	datad => \u4|lcdm|Selector17~1_combout\,
	combout => \u4|lcdm|Selector17~2_combout\);

-- Location: LCFF_X51_Y29_N25
\u4|lcdm|delay_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector17~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(4));

-- Location: LCCOMB_X52_Y28_N26
\u4|lcdm|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Equal0~0_combout\ = (!\u4|lcdm|delay_counter\(1) & (!\u4|lcdm|delay_counter\(2) & (!\u4|lcdm|delay_counter\(3) & !\u4|lcdm|delay_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(1),
	datab => \u4|lcdm|delay_counter\(2),
	datac => \u4|lcdm|delay_counter\(3),
	datad => \u4|lcdm|delay_counter\(4),
	combout => \u4|lcdm|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y28_N30
\u4|lcdm|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector4~1_combout\ = (\u4|lcdm|current_state.reset~regout\ & !\u4|lcdm|current_state.command_init_2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|current_state.reset~regout\,
	datad => \u4|lcdm|current_state.command_init_2~regout\,
	combout => \u4|lcdm|Selector4~1_combout\);

-- Location: LCCOMB_X52_Y28_N4
\u4|lcdm|delay_counter[8]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|delay_counter[8]~5_combout\ = (((!\u4|lcdm|current_state.command_init_4~regout\ & \u4|lcdm|delay_counter[8]~2_combout\)) # (!\u4|lcdm|Selector4~1_combout\)) # (!\u4|lcdm|Selector14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_4~regout\,
	datab => \u4|lcdm|Selector14~0_combout\,
	datac => \u4|lcdm|delay_counter[8]~2_combout\,
	datad => \u4|lcdm|Selector4~1_combout\,
	combout => \u4|lcdm|delay_counter[8]~5_combout\);

-- Location: LCCOMB_X50_Y29_N22
\u4|lcdm|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~10_combout\ = (\u4|lcdm|delay_counter\(5) & (\u4|lcdm|Add0~9\ & VCC)) # (!\u4|lcdm|delay_counter\(5) & (!\u4|lcdm|Add0~9\))
-- \u4|lcdm|Add0~11\ = CARRY((!\u4|lcdm|delay_counter\(5) & !\u4|lcdm|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|delay_counter\(5),
	datad => VCC,
	cin => \u4|lcdm|Add0~9\,
	combout => \u4|lcdm|Add0~10_combout\,
	cout => \u4|lcdm|Add0~11\);

-- Location: LCCOMB_X51_Y29_N28
\u4|lcdm|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector16~0_combout\ = (\u4|lcdm|Selector5~0_combout\ & ((\u4|lcdm|Add0~10_combout\) # ((\u4|lcdm|delay_counter\(5) & \u4|lcdm|WideOr18~combout\)))) # (!\u4|lcdm|Selector5~0_combout\ & (\u4|lcdm|delay_counter\(5) & (\u4|lcdm|WideOr18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector5~0_combout\,
	datab => \u4|lcdm|delay_counter\(5),
	datac => \u4|lcdm|WideOr18~combout\,
	datad => \u4|lcdm|Add0~10_combout\,
	combout => \u4|lcdm|Selector16~0_combout\);

-- Location: LCCOMB_X51_Y29_N18
\u4|lcdm|Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector16~1_combout\ = (\u4|lcdm|Selector16~0_combout\) # ((\u4|lcdm|current_state.pulse_e_3~regout\ & ((\u4|lcdm|Add0~10_combout\) # (\u4|lcdm|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_e_3~regout\,
	datab => \u4|lcdm|Add0~10_combout\,
	datac => \u4|lcdm|Equal0~6_combout\,
	datad => \u4|lcdm|Selector16~0_combout\,
	combout => \u4|lcdm|Selector16~1_combout\);

-- Location: LCFF_X51_Y29_N19
\u4|lcdm|delay_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector16~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(5));

-- Location: LCCOMB_X50_Y29_N28
\u4|lcdm|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~16_combout\ = (\u4|lcdm|delay_counter\(8) & ((GND) # (!\u4|lcdm|Add0~15\))) # (!\u4|lcdm|delay_counter\(8) & (\u4|lcdm|Add0~15\ $ (GND)))
-- \u4|lcdm|Add0~17\ = CARRY((\u4|lcdm|delay_counter\(8)) # (!\u4|lcdm|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|delay_counter\(8),
	datad => VCC,
	cin => \u4|lcdm|Add0~15\,
	combout => \u4|lcdm|Add0~16_combout\,
	cout => \u4|lcdm|Add0~17\);

-- Location: LCCOMB_X52_Y28_N6
\u4|lcdm|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector13~0_combout\ = (\u4|lcdm|current_state.command_init_4~regout\) # ((!\u4|lcdm|delay_counter[8]~5_combout\ & \u4|lcdm|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.command_init_4~regout\,
	datac => \u4|lcdm|delay_counter[8]~5_combout\,
	datad => \u4|lcdm|Add0~16_combout\,
	combout => \u4|lcdm|Selector13~0_combout\);

-- Location: LCFF_X52_Y28_N7
\u4|lcdm|delay_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector13~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(8));

-- Location: LCCOMB_X50_Y29_N30
\u4|lcdm|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~18_combout\ = (\u4|lcdm|delay_counter\(9) & (\u4|lcdm|Add0~17\ & VCC)) # (!\u4|lcdm|delay_counter\(9) & (!\u4|lcdm|Add0~17\))
-- \u4|lcdm|Add0~19\ = CARRY((!\u4|lcdm|delay_counter\(9) & !\u4|lcdm|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|delay_counter\(9),
	datad => VCC,
	cin => \u4|lcdm|Add0~17\,
	combout => \u4|lcdm|Add0~18_combout\,
	cout => \u4|lcdm|Add0~19\);

-- Location: LCCOMB_X51_Y29_N16
\u4|lcdm|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector5~0_combout\ = (!\u4|lcdm|Equal0~6_combout\ & ((!\u4|lcdm|WideOr33~0_combout\) # (!\u4|lcdm|delay_counter[8]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter[8]~6_combout\,
	datab => \u4|lcdm|WideOr33~0_combout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector5~0_combout\);

-- Location: LCCOMB_X50_Y29_N0
\u4|lcdm|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector12~0_combout\ = (\u4|lcdm|Add0~18_combout\ & (((\u4|lcdm|Selector5~0_combout\) # (\u4|lcdm|current_state.pulse_e_3~regout\)))) # (!\u4|lcdm|Add0~18_combout\ & (\u4|lcdm|Equal0~6_combout\ & ((\u4|lcdm|current_state.pulse_e_3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|Add0~18_combout\,
	datac => \u4|lcdm|Selector5~0_combout\,
	datad => \u4|lcdm|current_state.pulse_e_3~regout\,
	combout => \u4|lcdm|Selector12~0_combout\);

-- Location: LCCOMB_X50_Y29_N8
\u4|lcdm|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector12~1_combout\ = (\u4|lcdm|current_state.command_init_4~regout\) # ((\u4|lcdm|Selector12~0_combout\) # ((\u4|lcdm|WideOr18~combout\ & \u4|lcdm|delay_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr18~combout\,
	datab => \u4|lcdm|current_state.command_init_4~regout\,
	datac => \u4|lcdm|delay_counter\(9),
	datad => \u4|lcdm|Selector12~0_combout\,
	combout => \u4|lcdm|Selector12~1_combout\);

-- Location: LCFF_X50_Y29_N9
\u4|lcdm|delay_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector12~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(9));

-- Location: LCCOMB_X50_Y28_N0
\u4|lcdm|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~20_combout\ = (\u4|lcdm|delay_counter\(10) & ((GND) # (!\u4|lcdm|Add0~19\))) # (!\u4|lcdm|delay_counter\(10) & (\u4|lcdm|Add0~19\ $ (GND)))
-- \u4|lcdm|Add0~21\ = CARRY((\u4|lcdm|delay_counter\(10)) # (!\u4|lcdm|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(10),
	datad => VCC,
	cin => \u4|lcdm|Add0~19\,
	combout => \u4|lcdm|Add0~20_combout\,
	cout => \u4|lcdm|Add0~21\);

-- Location: LCCOMB_X50_Y28_N2
\u4|lcdm|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~22_combout\ = (\u4|lcdm|delay_counter\(11) & (\u4|lcdm|Add0~21\ & VCC)) # (!\u4|lcdm|delay_counter\(11) & (!\u4|lcdm|Add0~21\))
-- \u4|lcdm|Add0~23\ = CARRY((!\u4|lcdm|delay_counter\(11) & !\u4|lcdm|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|delay_counter\(11),
	datad => VCC,
	cin => \u4|lcdm|Add0~21\,
	combout => \u4|lcdm|Add0~22_combout\,
	cout => \u4|lcdm|Add0~23\);

-- Location: LCCOMB_X51_Y28_N20
\u4|lcdm|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector10~0_combout\ = (!\u4|lcdm|current_state.pulse_e~regout\ & (!\u4|lcdm|delay_counter[8]~2_combout\ & (\u4|lcdm|WideOr17~0_combout\ & \u4|lcdm|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_e~regout\,
	datab => \u4|lcdm|delay_counter[8]~2_combout\,
	datac => \u4|lcdm|WideOr17~0_combout\,
	datad => \u4|lcdm|Add0~22_combout\,
	combout => \u4|lcdm|Selector10~0_combout\);

-- Location: LCFF_X51_Y28_N21
\u4|lcdm|delay_counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector10~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(11));

-- Location: LCCOMB_X50_Y28_N6
\u4|lcdm|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~26_combout\ = (\u4|lcdm|delay_counter\(13) & (\u4|lcdm|Add0~25\ & VCC)) # (!\u4|lcdm|delay_counter\(13) & (!\u4|lcdm|Add0~25\))
-- \u4|lcdm|Add0~27\ = CARRY((!\u4|lcdm|delay_counter\(13) & !\u4|lcdm|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(13),
	datad => VCC,
	cin => \u4|lcdm|Add0~25\,
	combout => \u4|lcdm|Add0~26_combout\,
	cout => \u4|lcdm|Add0~27\);

-- Location: LCCOMB_X50_Y28_N22
\u4|lcdm|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector8~0_combout\ = (!\u4|lcdm|Equal0~6_combout\ & (\u4|lcdm|Add0~26_combout\ & ((!\u4|lcdm|WideOr33~0_combout\) # (!\u4|lcdm|WideOr33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr33~1_combout\,
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|WideOr33~0_combout\,
	datad => \u4|lcdm|Add0~26_combout\,
	combout => \u4|lcdm|Selector8~0_combout\);

-- Location: LCCOMB_X51_Y28_N4
\u4|lcdm|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector8~1_combout\ = (\u4|lcdm|current_state.command_init_2~regout\) # ((\u4|lcdm|Selector8~0_combout\) # ((\u4|lcdm|WideOr18~combout\ & \u4|lcdm|delay_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr18~combout\,
	datab => \u4|lcdm|current_state.command_init_2~regout\,
	datac => \u4|lcdm|delay_counter\(13),
	datad => \u4|lcdm|Selector8~0_combout\,
	combout => \u4|lcdm|Selector8~1_combout\);

-- Location: LCFF_X51_Y28_N5
\u4|lcdm|delay_counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector8~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(13));

-- Location: LCCOMB_X50_Y28_N8
\u4|lcdm|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~28_combout\ = (\u4|lcdm|delay_counter\(14) & ((GND) # (!\u4|lcdm|Add0~27\))) # (!\u4|lcdm|delay_counter\(14) & (\u4|lcdm|Add0~27\ $ (GND)))
-- \u4|lcdm|Add0~29\ = CARRY((\u4|lcdm|delay_counter\(14)) # (!\u4|lcdm|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(14),
	datad => VCC,
	cin => \u4|lcdm|Add0~27\,
	combout => \u4|lcdm|Add0~28_combout\,
	cout => \u4|lcdm|Add0~29\);

-- Location: LCCOMB_X51_Y28_N30
\u4|lcdm|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector7~0_combout\ = (!\u4|lcdm|current_state.pulse_e~regout\ & (!\u4|lcdm|delay_counter[8]~2_combout\ & (\u4|lcdm|WideOr17~0_combout\ & \u4|lcdm|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_e~regout\,
	datab => \u4|lcdm|delay_counter[8]~2_combout\,
	datac => \u4|lcdm|WideOr17~0_combout\,
	datad => \u4|lcdm|Add0~28_combout\,
	combout => \u4|lcdm|Selector7~0_combout\);

-- Location: LCFF_X51_Y28_N31
\u4|lcdm|delay_counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector7~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(14));

-- Location: LCCOMB_X50_Y28_N26
\u4|lcdm|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector5~1_combout\ = (\u4|lcdm|Add0~32_combout\ & (((\u4|lcdm|current_state.pulse_e_3~regout\) # (\u4|lcdm|Selector5~0_combout\)))) # (!\u4|lcdm|Add0~32_combout\ & (\u4|lcdm|Equal0~6_combout\ & (\u4|lcdm|current_state.pulse_e_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Add0~32_combout\,
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|current_state.pulse_e_3~regout\,
	datad => \u4|lcdm|Selector5~0_combout\,
	combout => \u4|lcdm|Selector5~1_combout\);

-- Location: LCCOMB_X50_Y28_N30
\u4|lcdm|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector5~2_combout\ = (\u4|lcdm|current_state.command_init_2~regout\) # ((\u4|lcdm|Selector5~1_combout\) # ((\u4|lcdm|WideOr18~combout\ & \u4|lcdm|delay_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_2~regout\,
	datab => \u4|lcdm|WideOr18~combout\,
	datac => \u4|lcdm|delay_counter\(16),
	datad => \u4|lcdm|Selector5~1_combout\,
	combout => \u4|lcdm|Selector5~2_combout\);

-- Location: LCFF_X50_Y28_N31
\u4|lcdm|delay_counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector5~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(16));

-- Location: LCCOMB_X50_Y28_N14
\u4|lcdm|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~34_combout\ = (\u4|lcdm|delay_counter\(17) & (\u4|lcdm|Add0~33\ & VCC)) # (!\u4|lcdm|delay_counter\(17) & (!\u4|lcdm|Add0~33\))
-- \u4|lcdm|Add0~35\ = CARRY((!\u4|lcdm|delay_counter\(17) & !\u4|lcdm|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|delay_counter\(17),
	datad => VCC,
	cin => \u4|lcdm|Add0~33\,
	combout => \u4|lcdm|Add0~34_combout\,
	cout => \u4|lcdm|Add0~35\);

-- Location: LCCOMB_X51_Y28_N0
\u4|lcdm|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector4~0_combout\ = (!\u4|lcdm|Equal0~6_combout\ & (\u4|lcdm|Add0~34_combout\ & ((!\u4|lcdm|WideOr33~1_combout\) # (!\u4|lcdm|WideOr33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|WideOr33~0_combout\,
	datac => \u4|lcdm|WideOr33~1_combout\,
	datad => \u4|lcdm|Add0~34_combout\,
	combout => \u4|lcdm|Selector4~0_combout\);

-- Location: LCCOMB_X51_Y28_N14
\u4|lcdm|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector4~2_combout\ = ((\u4|lcdm|Selector4~0_combout\) # ((\u4|lcdm|WideOr18~combout\ & \u4|lcdm|delay_counter\(17)))) # (!\u4|lcdm|Selector4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr18~combout\,
	datab => \u4|lcdm|Selector4~1_combout\,
	datac => \u4|lcdm|delay_counter\(17),
	datad => \u4|lcdm|Selector4~0_combout\,
	combout => \u4|lcdm|Selector4~2_combout\);

-- Location: LCFF_X51_Y28_N15
\u4|lcdm|delay_counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector4~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(17));

-- Location: LCCOMB_X50_Y28_N16
\u4|lcdm|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~36_combout\ = (\u4|lcdm|delay_counter\(18) & ((GND) # (!\u4|lcdm|Add0~35\))) # (!\u4|lcdm|delay_counter\(18) & (\u4|lcdm|Add0~35\ $ (GND)))
-- \u4|lcdm|Add0~37\ = CARRY((\u4|lcdm|delay_counter\(18)) # (!\u4|lcdm|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|delay_counter\(18),
	datad => VCC,
	cin => \u4|lcdm|Add0~35\,
	combout => \u4|lcdm|Add0~36_combout\,
	cout => \u4|lcdm|Add0~37\);

-- Location: LCCOMB_X52_Y28_N24
\u4|lcdm|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector1~0_combout\ = (\u4|lcdm|current_state.reset~regout\) # ((\u4|lcdm|current_state.command_init_2~regout\) # ((\u4|lcdm|current_state.command_init_4~regout\) # (!\u4|lcdm|Selector14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.reset~regout\,
	datab => \u4|lcdm|current_state.command_init_2~regout\,
	datac => \u4|lcdm|current_state.command_init_4~regout\,
	datad => \u4|lcdm|Selector14~0_combout\,
	combout => \u4|lcdm|Selector1~0_combout\);

-- Location: LCCOMB_X51_Y28_N22
\u4|lcdm|delay_counter[18]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|delay_counter[18]~4_combout\ = (\u4|lcdm|current_state.pulse_e~regout\) # ((\u4|lcdm|delay_counter[8]~2_combout\) # (!\u4|lcdm|WideOr17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_e~regout\,
	datab => \u4|lcdm|delay_counter[8]~2_combout\,
	datac => \u4|lcdm|WideOr17~0_combout\,
	combout => \u4|lcdm|delay_counter[18]~4_combout\);

-- Location: LCCOMB_X51_Y28_N12
\u4|lcdm|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector3~0_combout\ = ((\u4|lcdm|Add0~36_combout\ & !\u4|lcdm|delay_counter[18]~4_combout\)) # (!\u4|lcdm|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|Add0~36_combout\,
	datac => \u4|lcdm|Selector1~0_combout\,
	datad => \u4|lcdm|delay_counter[18]~4_combout\,
	combout => \u4|lcdm|Selector3~0_combout\);

-- Location: LCFF_X51_Y28_N13
\u4|lcdm|delay_counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector3~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(18));

-- Location: LCCOMB_X50_Y28_N18
\u4|lcdm|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~38_combout\ = (\u4|lcdm|delay_counter\(19) & (\u4|lcdm|Add0~37\ & VCC)) # (!\u4|lcdm|delay_counter\(19) & (!\u4|lcdm|Add0~37\))
-- \u4|lcdm|Add0~39\ = CARRY((!\u4|lcdm|delay_counter\(19) & !\u4|lcdm|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|delay_counter\(19),
	datad => VCC,
	cin => \u4|lcdm|Add0~37\,
	combout => \u4|lcdm|Add0~38_combout\,
	cout => \u4|lcdm|Add0~39\);

-- Location: LCCOMB_X51_Y28_N18
\u4|lcdm|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector2~0_combout\ = ((\u4|lcdm|Add0~38_combout\ & !\u4|lcdm|delay_counter[18]~4_combout\)) # (!\u4|lcdm|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|Add0~38_combout\,
	datac => \u4|lcdm|Selector1~0_combout\,
	datad => \u4|lcdm|delay_counter[18]~4_combout\,
	combout => \u4|lcdm|Selector2~0_combout\);

-- Location: LCFF_X51_Y28_N19
\u4|lcdm|delay_counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector2~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(19));

-- Location: LCCOMB_X50_Y28_N20
\u4|lcdm|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~40_combout\ = \u4|lcdm|Add0~39\ $ (\u4|lcdm|delay_counter\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u4|lcdm|delay_counter\(20),
	cin => \u4|lcdm|Add0~39\,
	combout => \u4|lcdm|Add0~40_combout\);

-- Location: LCCOMB_X51_Y28_N28
\u4|lcdm|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector1~1_combout\ = ((\u4|lcdm|Add0~40_combout\ & !\u4|lcdm|delay_counter[18]~4_combout\)) # (!\u4|lcdm|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector1~0_combout\,
	datac => \u4|lcdm|Add0~40_combout\,
	datad => \u4|lcdm|delay_counter[18]~4_combout\,
	combout => \u4|lcdm|Selector1~1_combout\);

-- Location: LCFF_X51_Y28_N29
\u4|lcdm|delay_counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector1~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(20));

-- Location: LCCOMB_X51_Y28_N24
\u4|lcdm|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Equal0~1_combout\ = (!\u4|lcdm|delay_counter\(18) & (!\u4|lcdm|delay_counter\(19) & (!\u4|lcdm|delay_counter\(17) & !\u4|lcdm|delay_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(18),
	datab => \u4|lcdm|delay_counter\(19),
	datac => \u4|lcdm|delay_counter\(17),
	datad => \u4|lcdm|delay_counter\(20),
	combout => \u4|lcdm|Equal0~1_combout\);

-- Location: LCCOMB_X52_Y28_N20
\u4|lcdm|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Equal0~3_combout\ = (\u4|lcdm|Equal0~2_combout\ & (!\u4|lcdm|delay_counter\(13) & (!\u4|lcdm|delay_counter\(14) & \u4|lcdm|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~2_combout\,
	datab => \u4|lcdm|delay_counter\(13),
	datac => \u4|lcdm|delay_counter\(14),
	datad => \u4|lcdm|Equal0~1_combout\,
	combout => \u4|lcdm|Equal0~3_combout\);

-- Location: LCCOMB_X50_Y28_N24
\u4|lcdm|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector11~0_combout\ = (\u4|lcdm|Selector47~1_combout\) # ((\u4|lcdm|WideOr17~1_combout\ & ((\u4|lcdm|Add0~20_combout\))) # (!\u4|lcdm|WideOr17~1_combout\ & (!\u4|lcdm|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr17~1_combout\,
	datab => \u4|lcdm|Selector47~1_combout\,
	datac => \u4|lcdm|Selector1~0_combout\,
	datad => \u4|lcdm|Add0~20_combout\,
	combout => \u4|lcdm|Selector11~0_combout\);

-- Location: LCFF_X50_Y28_N25
\u4|lcdm|delay_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector11~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(10));

-- Location: LCCOMB_X51_Y28_N10
\u4|lcdm|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Equal0~4_combout\ = (!\u4|lcdm|delay_counter\(12) & (!\u4|lcdm|delay_counter\(10) & (!\u4|lcdm|delay_counter\(11) & !\u4|lcdm|delay_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(12),
	datab => \u4|lcdm|delay_counter\(10),
	datac => \u4|lcdm|delay_counter\(11),
	datad => \u4|lcdm|delay_counter\(9),
	combout => \u4|lcdm|Equal0~4_combout\);

-- Location: LCCOMB_X52_Y28_N2
\u4|lcdm|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Equal0~6_combout\ = (\u4|lcdm|Equal0~5_combout\ & (\u4|lcdm|Equal0~0_combout\ & (\u4|lcdm|Equal0~3_combout\ & \u4|lcdm|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~5_combout\,
	datab => \u4|lcdm|Equal0~0_combout\,
	datac => \u4|lcdm|Equal0~3_combout\,
	datad => \u4|lcdm|Equal0~4_combout\,
	combout => \u4|lcdm|Equal0~6_combout\);

-- Location: LCCOMB_X52_Y30_N8
\u4|lcdm|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector26~0_combout\ = (\u4|lcdm|current_state.command_init_2~regout\) # ((\u4|lcdm|current_state.command_init_3~regout\ & !\u4|lcdm|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_2~regout\,
	datac => \u4|lcdm|current_state.command_init_3~regout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector26~0_combout\);

-- Location: LCFF_X52_Y30_N9
\u4|lcdm|current_state.command_init_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector26~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_3~regout\);

-- Location: LCCOMB_X52_Y30_N22
\u4|lcdm|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector24~0_combout\ = ((\u4|lcdm|current_state.command_init_1~regout\ & !\u4|lcdm|Equal0~6_combout\)) # (!\u4|lcdm|current_state.reset~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.reset~regout\,
	datac => \u4|lcdm|current_state.command_init_1~regout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector24~0_combout\);

-- Location: LCFF_X52_Y30_N23
\u4|lcdm|current_state.command_init_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector24~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_1~regout\);

-- Location: LCCOMB_X52_Y30_N18
\u4|lcdm|WideOr41~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr41~2_combout\ = (!\u4|lcdm|current_state.command_init_5~regout\ & (!\u4|lcdm|current_state.command_init_3~regout\ & !\u4|lcdm|current_state.command_init_1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_5~regout\,
	datac => \u4|lcdm|current_state.command_init_3~regout\,
	datad => \u4|lcdm|current_state.command_init_1~regout\,
	combout => \u4|lcdm|WideOr41~2_combout\);

-- Location: LCCOMB_X52_Y30_N10
\u4|lcdm|WideOr41~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr41~3_combout\ = (\u4|lcdm|current_state.command_init_5~regout\) # ((\u4|lcdm|current_state.command_init_1~regout\) # ((\u4|lcdm|current_state.command_init_3~regout\) # (!\u4|lcdm|WideOr18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_5~regout\,
	datab => \u4|lcdm|current_state.command_init_1~regout\,
	datac => \u4|lcdm|current_state.command_init_3~regout\,
	datad => \u4|lcdm|WideOr18~1_combout\,
	combout => \u4|lcdm|WideOr41~3_combout\);

-- Location: LCCOMB_X52_Y30_N14
\u4|lcdm|Selector63~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector63~0_combout\ = ((!\u4|lcdm|WideOr41~2_combout\ & !\u4|lcdm|Equal0~6_combout\)) # (!\u4|lcdm|WideOr41~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|WideOr41~2_combout\,
	datac => \u4|lcdm|Equal0~6_combout\,
	datad => \u4|lcdm|WideOr41~3_combout\,
	combout => \u4|lcdm|Selector63~0_combout\);

-- Location: LCCOMB_X53_Y28_N22
\u4|lcdm|Selector68~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector68~0_combout\ = (\u4|lcdm|current_state.command_goto10~regout\) # ((\u4|lcdm|current_state.command_init_11~regout\) # ((\u4|lcdm|current_state.command_wr~regout\) # (\u4|lcdm|current_state.command_home~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_goto10~regout\,
	datab => \u4|lcdm|current_state.command_init_11~regout\,
	datac => \u4|lcdm|current_state.command_wr~regout\,
	datad => \u4|lcdm|current_state.command_home~regout\,
	combout => \u4|lcdm|Selector68~0_combout\);

-- Location: LCCOMB_X52_Y30_N6
\u4|lcdm|Selector68~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector68~1_combout\ = ((\u4|lcdm|Selector68~0_combout\) # ((\u4|lcdm|Selector63~0_combout\ & \u4|lcdm|return_state.wait_for_command~regout\))) # (!\u4|lcdm|Selector102~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector102~0_combout\,
	datab => \u4|lcdm|Selector63~0_combout\,
	datac => \u4|lcdm|return_state.wait_for_command~regout\,
	datad => \u4|lcdm|Selector68~0_combout\,
	combout => \u4|lcdm|Selector68~1_combout\);

-- Location: LCFF_X52_Y30_N7
\u4|lcdm|return_state.wait_for_command\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector68~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.wait_for_command~regout\);

-- Location: LCCOMB_X53_Y29_N10
\u4|lcdm|Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector36~0_combout\ = (\u4|lcdm|Selector34~2_combout\ & ((\u4|lcdm|Selector53~3_combout\ & (\u4|lcdm|return_state.wait_for_command~regout\)) # (!\u4|lcdm|Selector53~3_combout\ & ((\u4|lcdm|current_state.wait_for_command~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector53~3_combout\,
	datab => \u4|lcdm|return_state.wait_for_command~regout\,
	datac => \u4|lcdm|current_state.wait_for_command~regout\,
	datad => \u4|lcdm|Selector34~2_combout\,
	combout => \u4|lcdm|Selector36~0_combout\);

-- Location: LCFF_X53_Y29_N11
\u4|lcdm|current_state.wait_for_command\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector36~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.wait_for_command~regout\);

-- Location: LCCOMB_X54_Y28_N0
\u4|lcdm|Selector87~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector87~0_combout\ = (\u4|lcdm|current_state.command_init_9~regout\) # ((\u4|data\(0) & \u4|lcdm|current_state.wait_for_command~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_9~regout\,
	datac => \u4|data\(0),
	datad => \u4|lcdm|current_state.wait_for_command~regout\,
	combout => \u4|lcdm|Selector87~0_combout\);

-- Location: LCCOMB_X52_Y29_N14
\u4|lcdm|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr3~0_combout\ = (!\u4|lcdm|current_state.pulse_busy_flag_5~regout\ & (!\u4|lcdm|current_state.pulse_busy_flag_4~regout\ & (!\u4|lcdm|current_state.pulse_e~regout\ & !\u4|lcdm|current_state.pulse_e_4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag_5~regout\,
	datab => \u4|lcdm|current_state.pulse_busy_flag_4~regout\,
	datac => \u4|lcdm|current_state.pulse_e~regout\,
	datad => \u4|lcdm|current_state.pulse_e_4~regout\,
	combout => \u4|lcdm|WideOr3~0_combout\);

-- Location: LCCOMB_X52_Y29_N22
\u4|lcdm|WideOr3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr3~1_combout\ = (\u4|lcdm|WideOr33~0_combout\ & (!\u4|lcdm|current_state.pulse_busy_flag_3~regout\ & (\u4|lcdm|WideOr3~0_combout\ & !\u4|lcdm|current_state.pulse_e_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr33~0_combout\,
	datab => \u4|lcdm|current_state.pulse_busy_flag_3~regout\,
	datac => \u4|lcdm|WideOr3~0_combout\,
	datad => \u4|lcdm|current_state.pulse_e_3~regout\,
	combout => \u4|lcdm|WideOr3~1_combout\);

-- Location: LCCOMB_X54_Y29_N16
\u4|lcdm|WideOr3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr3~combout\ = (!\u4|lcdm|current_state.command_wr~regout\ & \u4|lcdm|WideOr3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.command_wr~regout\,
	datad => \u4|lcdm|WideOr3~1_combout\,
	combout => \u4|lcdm|WideOr3~combout\);

-- Location: LCFF_X54_Y28_N1
\u4|lcdm|LCD_DB[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector87~0_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[0]~reg0_regout\);

-- Location: LCCOMB_X52_Y30_N12
\u4|lcdm|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector28~0_combout\ = (\u4|lcdm|current_state.command_init_4~regout\) # ((\u4|lcdm|current_state.command_init_5~regout\ & !\u4|lcdm|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.command_init_4~regout\,
	datac => \u4|lcdm|current_state.command_init_5~regout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector28~0_combout\);

-- Location: LCFF_X52_Y30_N13
\u4|lcdm|current_state.command_init_5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector28~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_5~regout\);

-- Location: LCCOMB_X53_Y29_N30
\u4|lcdm|Selector88~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector88~0_combout\ = (\u4|lcdm|Equal0~6_combout\) # ((!\u4|lcdm|current_state.command_init_5~regout\ & !\u4|lcdm|current_state.command_init_3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.command_init_5~regout\,
	datac => \u4|lcdm|current_state.command_init_3~regout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector88~0_combout\);

-- Location: LCCOMB_X54_Y29_N8
\u4|lcdm|Selector88~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector88~2_combout\ = (\u4|lcdm|Selector88~1_combout\ & (\u4|lcdm|Selector88~0_combout\ & ((\u4|lcdm|Equal0~6_combout\) # (!\u4|lcdm|current_state.command_init_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector88~1_combout\,
	datab => \u4|lcdm|current_state.command_init_1~regout\,
	datac => \u4|lcdm|Selector88~0_combout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector88~2_combout\);

-- Location: LCFF_X54_Y29_N7
\u4|lcdm|LCD_DB[0]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u4|lcdm|Selector88~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[0]~en_regout\);

-- Location: LCCOMB_X54_Y28_N18
\u4|lcdm|Selector90~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector90~0_combout\ = (\u4|lcdm|current_state.command_init_11~regout\) # ((\u4|lcdm|current_state.command_home~regout\) # ((\u4|data\(1) & \u4|lcdm|current_state.wait_for_command~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|data\(1),
	datab => \u4|lcdm|current_state.wait_for_command~regout\,
	datac => \u4|lcdm|current_state.command_init_11~regout\,
	datad => \u4|lcdm|current_state.command_home~regout\,
	combout => \u4|lcdm|Selector90~0_combout\);

-- Location: LCFF_X54_Y28_N19
\u4|lcdm|LCD_DB[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector90~0_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[1]~reg0_regout\);

-- Location: LCFF_X54_Y29_N5
\u4|lcdm|LCD_DB[1]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u4|lcdm|Selector88~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[1]~en_regout\);

-- Location: LCCOMB_X53_Y28_N24
\u4|lcdm|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector30~0_combout\ = (\u4|lcdm|Selector34~2_combout\ & ((\u4|lcdm|Selector53~3_combout\ & (\u4|lcdm|return_state.command_init_7~regout\)) # (!\u4|lcdm|Selector53~3_combout\ & ((\u4|lcdm|current_state.command_init_7~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_7~regout\,
	datab => \u4|lcdm|Selector53~3_combout\,
	datac => \u4|lcdm|current_state.command_init_7~regout\,
	datad => \u4|lcdm|Selector34~2_combout\,
	combout => \u4|lcdm|Selector30~0_combout\);

-- Location: LCFF_X53_Y28_N25
\u4|lcdm|current_state.command_init_7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector30~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_7~regout\);

-- Location: LCCOMB_X53_Y28_N0
\u4|lcdm|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector33~0_combout\ = (\u4|lcdm|Selector34~2_combout\ & ((\u4|lcdm|Selector53~3_combout\ & (\u4|lcdm|return_state.command_init_10~regout\)) # (!\u4|lcdm|Selector53~3_combout\ & ((\u4|lcdm|current_state.command_init_10~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_10~regout\,
	datab => \u4|lcdm|Selector53~3_combout\,
	datac => \u4|lcdm|current_state.command_init_10~regout\,
	datad => \u4|lcdm|Selector34~2_combout\,
	combout => \u4|lcdm|Selector33~0_combout\);

-- Location: LCFF_X53_Y28_N1
\u4|lcdm|current_state.command_init_10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector33~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_10~regout\);

-- Location: LCCOMB_X53_Y28_N4
\u4|lcdm|Selector96~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector96~0_combout\ = (!\u4|lcdm|current_state.command_init_7~regout\ & !\u4|lcdm|current_state.command_init_10~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|current_state.command_init_7~regout\,
	datad => \u4|lcdm|current_state.command_init_10~regout\,
	combout => \u4|lcdm|Selector96~0_combout\);

-- Location: LCCOMB_X58_Y26_N8
\u4|aline~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~6_combout\ = (\u4|start~regout\ & (((!\u4|Mux239~0_combout\)) # (!\u4|RPM_line[1][5]~regout\))) # (!\u4|start~regout\ & (((\u4|Mux50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|RPM_line[1][5]~regout\,
	datab => \u4|start~regout\,
	datac => \u4|Mux239~0_combout\,
	datad => \u4|Mux50~0_combout\,
	combout => \u4|aline~6_combout\);

-- Location: LCCOMB_X58_Y27_N26
\u4|Mux263~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~48_combout\ = (\u4|RPM_line[1][5]~regout\ & \u4|start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|RPM_line[1][5]~regout\,
	datad => \u4|start~regout\,
	combout => \u4|Mux263~48_combout\);

-- Location: LCCOMB_X58_Y26_N18
\u4|Mux263~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~99_combout\ = (\u4|Mux263~48_combout\ & ((\u4|line_counter\(0) & (\u4|line_counter\(1) & !\mode~regout\)) # (!\u4|line_counter\(0) & (\u4|line_counter\(1) $ (!\mode~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|line_counter\(1),
	datac => \mode~regout\,
	datad => \u4|Mux263~48_combout\,
	combout => \u4|Mux263~99_combout\);

-- Location: LCCOMB_X58_Y26_N16
\u4|Mux263~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~100_combout\ = (\u4|character_counter\(1) & ((\u4|aline~5_combout\) # ((\u4|Mux263~99_combout\)))) # (!\u4|character_counter\(1) & (((!\u4|aline~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|aline~5_combout\,
	datab => \u4|character_counter\(1),
	datac => \u4|aline~6_combout\,
	datad => \u4|Mux263~99_combout\,
	combout => \u4|Mux263~100_combout\);

-- Location: LCCOMB_X59_Y26_N22
\u4|Mux263~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~78_combout\ = (!\u4|character_counter\(1) & (!\u4|line_counter\(1) & (!\mode~regout\ & !\u4|line_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|line_counter\(1),
	datac => \mode~regout\,
	datad => \u4|line_counter\(0),
	combout => \u4|Mux263~78_combout\);

-- Location: LCCOMB_X57_Y23_N26
\u4|totale_omw_1bcd|u1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|u1|Mux1~0_combout\ = (\u0|omwentel99\(4) & (!\u0|omwentel99\(5) & (\u0|omwentel99\(7) & !\u0|omwentel99\(6)))) # (!\u0|omwentel99\(4) & (\u0|omwentel99\(6) & (\u0|omwentel99\(5) $ (!\u0|omwentel99\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(4),
	datab => \u0|omwentel99\(5),
	datac => \u0|omwentel99\(7),
	datad => \u0|omwentel99\(6),
	combout => \u4|totale_omw_1bcd|u1|Mux1~0_combout\);

-- Location: LCCOMB_X57_Y23_N14
\u4|totale_omw_1bcd|u1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|u1|Mux3~0_combout\ = (\u0|omwentel99\(4) & (\u0|omwentel99\(6) $ (((\u0|omwentel99\(5)) # (!\u0|omwentel99\(7)))))) # (!\u0|omwentel99\(4) & ((\u0|omwentel99\(5) & (!\u0|omwentel99\(7) & \u0|omwentel99\(6))) # (!\u0|omwentel99\(5) & 
-- (\u0|omwentel99\(7) & !\u0|omwentel99\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(4),
	datab => \u0|omwentel99\(5),
	datac => \u0|omwentel99\(7),
	datad => \u0|omwentel99\(6),
	combout => \u4|totale_omw_1bcd|u1|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y23_N20
\u4|totale_omw_1bcd|u1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|u1|Mux2~0_combout\ = (\u0|omwentel99\(7) & (!\u0|omwentel99\(5) & ((\u0|omwentel99\(6)) # (!\u0|omwentel99\(4))))) # (!\u0|omwentel99\(7) & (\u0|omwentel99\(5) & ((\u0|omwentel99\(4)) # (!\u0|omwentel99\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(4),
	datab => \u0|omwentel99\(6),
	datac => \u0|omwentel99\(7),
	datad => \u0|omwentel99\(5),
	combout => \u4|totale_omw_1bcd|u1|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y23_N4
\u4|totale_omw_1bcd|u2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|u2|Mux3~0_combout\ = (\u4|totale_omw_1bcd|u1|Mux3~0_combout\ & (!\u4|totale_omw_1bcd|u1|Mux1~0_combout\ & (\u0|omwentel99\(3) $ (\u4|totale_omw_1bcd|u1|Mux2~0_combout\)))) # (!\u4|totale_omw_1bcd|u1|Mux3~0_combout\ & 
-- (!\u4|totale_omw_1bcd|u1|Mux2~0_combout\ & (\u0|omwentel99\(3) $ (\u4|totale_omw_1bcd|u1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(3),
	datab => \u4|totale_omw_1bcd|u1|Mux1~0_combout\,
	datac => \u4|totale_omw_1bcd|u1|Mux3~0_combout\,
	datad => \u4|totale_omw_1bcd|u1|Mux2~0_combout\,
	combout => \u4|totale_omw_1bcd|u2|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y23_N24
\u4|totale_omw_1bcd|u2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|u2|Mux1~0_combout\ = (!\u4|totale_omw_1bcd|u1|Mux3~0_combout\ & ((\u0|omwentel99\(3) & (!\u4|totale_omw_1bcd|u1|Mux2~0_combout\ & \u4|totale_omw_1bcd|u1|Mux1~0_combout\)) # (!\u0|omwentel99\(3) & (\u4|totale_omw_1bcd|u1|Mux2~0_combout\ 
-- & !\u4|totale_omw_1bcd|u1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(3),
	datab => \u4|totale_omw_1bcd|u1|Mux2~0_combout\,
	datac => \u4|totale_omw_1bcd|u1|Mux3~0_combout\,
	datad => \u4|totale_omw_1bcd|u1|Mux1~0_combout\,
	combout => \u4|totale_omw_1bcd|u2|Mux1~0_combout\);

-- Location: LCCOMB_X58_Y23_N30
\u4|totale_omw_1bcd|u3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|u3|Mux3~0_combout\ = (\u4|totale_omw_1bcd|u2|Mux3~0_combout\ & (!\u4|totale_omw_1bcd|u2|Mux1~0_combout\ & (\u4|totale_omw_1bcd|u2|Mux2~0_combout\ $ (\u0|omwentel99\(2))))) # (!\u4|totale_omw_1bcd|u2|Mux3~0_combout\ & 
-- (!\u4|totale_omw_1bcd|u2|Mux2~0_combout\ & (\u0|omwentel99\(2) $ (\u4|totale_omw_1bcd|u2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_1bcd|u2|Mux2~0_combout\,
	datab => \u0|omwentel99\(2),
	datac => \u4|totale_omw_1bcd|u2|Mux3~0_combout\,
	datad => \u4|totale_omw_1bcd|u2|Mux1~0_combout\,
	combout => \u4|totale_omw_1bcd|u3|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y23_N30
\u4|totale_omw_1bcd|u2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|u2|Mux2~0_combout\ = (\u0|omwentel99\(3) & (((\u4|totale_omw_1bcd|u1|Mux3~0_combout\ & !\u4|totale_omw_1bcd|u1|Mux1~0_combout\)))) # (!\u0|omwentel99\(3) & (!\u4|totale_omw_1bcd|u1|Mux2~0_combout\ & 
-- (\u4|totale_omw_1bcd|u1|Mux3~0_combout\ $ (\u4|totale_omw_1bcd|u1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_1bcd|u1|Mux2~0_combout\,
	datab => \u4|totale_omw_1bcd|u1|Mux3~0_combout\,
	datac => \u0|omwentel99\(3),
	datad => \u4|totale_omw_1bcd|u1|Mux1~0_combout\,
	combout => \u4|totale_omw_1bcd|u2|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y23_N2
\u4|totale_omw_1bcd|u3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|u3|Mux2~0_combout\ = (\u0|omwentel99\(2) & (!\u4|totale_omw_1bcd|u2|Mux1~0_combout\ & (\u4|totale_omw_1bcd|u2|Mux3~0_combout\))) # (!\u0|omwentel99\(2) & (!\u4|totale_omw_1bcd|u2|Mux2~0_combout\ & 
-- (\u4|totale_omw_1bcd|u2|Mux1~0_combout\ $ (\u4|totale_omw_1bcd|u2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_1bcd|u2|Mux1~0_combout\,
	datab => \u0|omwentel99\(2),
	datac => \u4|totale_omw_1bcd|u2|Mux3~0_combout\,
	datad => \u4|totale_omw_1bcd|u2|Mux2~0_combout\,
	combout => \u4|totale_omw_1bcd|u3|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y23_N12
\u4|totale_omw_1bcd|u3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|u3|Mux1~0_combout\ = (!\u4|totale_omw_1bcd|u2|Mux3~0_combout\ & ((\u0|omwentel99\(2) & (\u4|totale_omw_1bcd|u2|Mux1~0_combout\ & !\u4|totale_omw_1bcd|u2|Mux2~0_combout\)) # (!\u0|omwentel99\(2) & 
-- (!\u4|totale_omw_1bcd|u2|Mux1~0_combout\ & \u4|totale_omw_1bcd|u2|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(2),
	datab => \u4|totale_omw_1bcd|u2|Mux3~0_combout\,
	datac => \u4|totale_omw_1bcd|u2|Mux1~0_combout\,
	datad => \u4|totale_omw_1bcd|u2|Mux2~0_combout\,
	combout => \u4|totale_omw_1bcd|u3|Mux1~0_combout\);

-- Location: LCCOMB_X58_Y23_N18
\u4|totale_omw_1bcd|u4|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|u4|Mux2~0_combout\ = (\u0|omwentel99\(1) & (\u4|totale_omw_1bcd|u3|Mux3~0_combout\ & ((!\u4|totale_omw_1bcd|u3|Mux1~0_combout\)))) # (!\u0|omwentel99\(1) & (!\u4|totale_omw_1bcd|u3|Mux2~0_combout\ & 
-- (\u4|totale_omw_1bcd|u3|Mux3~0_combout\ $ (\u4|totale_omw_1bcd|u3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(1),
	datab => \u4|totale_omw_1bcd|u3|Mux3~0_combout\,
	datac => \u4|totale_omw_1bcd|u3|Mux2~0_combout\,
	datad => \u4|totale_omw_1bcd|u3|Mux1~0_combout\,
	combout => \u4|totale_omw_1bcd|u4|Mux2~0_combout\);

-- Location: LCFF_X58_Y23_N19
\u4|totale_omw_line[16][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_1bcd|u4|Mux2~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[16][2]~regout\);

-- Location: LCCOMB_X59_Y26_N18
\u4|Mux263~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~76_combout\ = (\u4|RPM_line[1][5]~regout\ & \u4|character_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|RPM_line[1][5]~regout\,
	datad => \u4|character_counter\(1),
	combout => \u4|Mux263~76_combout\);

-- Location: LCCOMB_X59_Y26_N10
\u4|Mux263~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~97_combout\ = (\u4|Mux263~76_combout\ & ((\u4|line_counter\(1) & (!\u4|line_counter\(0) & \mode~regout\)) # (!\u4|line_counter\(1) & ((!\mode~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|line_counter\(1),
	datac => \mode~regout\,
	datad => \u4|Mux263~76_combout\,
	combout => \u4|Mux263~97_combout\);

-- Location: LCCOMB_X59_Y26_N20
\u4|Mux263~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~98_combout\ = (\u4|start~regout\ & ((\u4|Mux263~97_combout\) # ((\u4|Mux263~78_combout\ & \u4|totale_omw_line[16][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|start~regout\,
	datab => \u4|Mux263~78_combout\,
	datac => \u4|totale_omw_line[16][2]~regout\,
	datad => \u4|Mux263~97_combout\,
	combout => \u4|Mux263~98_combout\);

-- Location: LCCOMB_X59_Y26_N16
\u4|Mux263~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~96_combout\ = (\u4|line_counter\(1) & (\u4|character_counter\(1) $ (((\mode~regout\) # (!\u4|line_counter\(0)))))) # (!\u4|line_counter\(1) & (\mode~regout\ & ((\u4|character_counter\(1)) # (\u4|line_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|line_counter\(1),
	datac => \mode~regout\,
	datad => \u4|line_counter\(0),
	combout => \u4|Mux263~96_combout\);

-- Location: LCCOMB_X60_Y26_N30
\u4|Mux263~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~133_combout\ = ((\u4|Mux263~96_combout\) # (!\u4|RPM_line[1][5]~regout\)) # (!\u4|start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|start~regout\,
	datac => \u4|RPM_line[1][5]~regout\,
	datad => \u4|Mux263~96_combout\,
	combout => \u4|Mux263~133_combout\);

-- Location: LCCOMB_X59_Y26_N14
\u4|Mux261~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux261~2_combout\ = (\u4|character_counter\(0) & (!\u4|character_counter\(2) & (\u4|Mux263~98_combout\))) # (!\u4|character_counter\(0) & ((\u4|character_counter\(2)) # ((!\u4|Mux263~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|character_counter\(2),
	datac => \u4|Mux263~98_combout\,
	datad => \u4|Mux263~133_combout\,
	combout => \u4|Mux261~2_combout\);

-- Location: LCCOMB_X59_Y26_N8
\u4|aline~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~4_combout\ = (!\u4|line_counter\(0) & (!\u4|line_counter\(1) & (\mode~regout\ & \u4|start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|line_counter\(1),
	datac => \mode~regout\,
	datad => \u4|start~regout\,
	combout => \u4|aline~4_combout\);

-- Location: LCCOMB_X58_Y24_N2
\u4|Mux263~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~94_combout\ = (\u4|character_counter\(1) & ((\u4|start~regout\ & ((\u4|aline~2_combout\))) # (!\u4|start~regout\ & (\u4|Mux265~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|start~regout\,
	datac => \u4|Mux265~0_combout\,
	datad => \u4|aline~2_combout\,
	combout => \u4|Mux263~94_combout\);

-- Location: LCCOMB_X59_Y26_N2
\u4|Mux263~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~95_combout\ = (\u4|Mux263~94_combout\) # ((!\u4|character_counter\(1) & ((!\u4|RPM_line[1][5]~regout\) # (!\u4|aline~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|aline~4_combout\,
	datac => \u4|RPM_line[1][5]~regout\,
	datad => \u4|Mux263~94_combout\,
	combout => \u4|Mux263~95_combout\);

-- Location: LCCOMB_X59_Y26_N4
\u4|Mux261~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux261~3_combout\ = (\u4|character_counter\(2) & ((\u4|Mux261~2_combout\ & (\u4|Mux263~100_combout\)) # (!\u4|Mux261~2_combout\ & ((!\u4|Mux263~95_combout\))))) # (!\u4|character_counter\(2) & (((\u4|Mux261~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|Mux263~100_combout\,
	datac => \u4|Mux261~2_combout\,
	datad => \u4|Mux263~95_combout\,
	combout => \u4|Mux261~3_combout\);

-- Location: LCCOMB_X54_Y25_N22
\u2|u0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u0|Mux0~0_combout\ = ((!\u5|rpm_mem\(6) & !\u5|rpm_mem\(5))) # (!\u5|rpm_mem\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm_mem\(6),
	datac => \u5|rpm_mem\(7),
	datad => \u5|rpm_mem\(5),
	combout => \u2|u0|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y25_N0
\u2|u6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u6|Mux2~0_combout\ = (\u2|u2|Mux0~0_combout\ & (\u2|u0|Mux0~0_combout\ & ((\u2|u3|Mux0~0_combout\) # (!\u2|u1|Mux0~0_combout\)))) # (!\u2|u2|Mux0~0_combout\ & (!\u2|u0|Mux0~0_combout\ & ((\u2|u1|Mux0~0_combout\) # (!\u2|u3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|Mux0~0_combout\,
	datab => \u2|u0|Mux0~0_combout\,
	datac => \u2|u3|Mux0~0_combout\,
	datad => \u2|u1|Mux0~0_combout\,
	combout => \u2|u6|Mux2~0_combout\);

-- Location: LCCOMB_X57_Y25_N28
\u4|RPM_line~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|RPM_line~18_combout\ = (!\u5|te_hoog~regout\ & \u2|u6|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|te_hoog~regout\,
	datad => \u2|u6|Mux2~0_combout\,
	combout => \u4|RPM_line~18_combout\);

-- Location: LCFF_X57_Y25_N29
\u4|RPM_line[13][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|RPM_line~18_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[13][2]~regout\);

-- Location: LCCOMB_X53_Y22_N26
\u4|gemiddelde2bcd|u3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u3|Mux0~0_combout\ = (\u4|gemiddelde2bcd|u2|Mux1~0_combout\) # ((\u4|gemiddelde2bcd|u2|Mux2~0_combout\ & ((\u4|gemiddelde2bcd|u2|Mux3~0_combout\) # (\u8|gem_RPM\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|gemiddelde2bcd|u2|Mux3~0_combout\,
	datab => \u4|gemiddelde2bcd|u2|Mux1~0_combout\,
	datac => \u8|gem_RPM\(2),
	datad => \u4|gemiddelde2bcd|u2|Mux2~0_combout\,
	combout => \u4|gemiddelde2bcd|u3|Mux0~0_combout\);

-- Location: LCCOMB_X53_Y22_N4
\u4|gemiddelde2bcd|u0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u0|Mux0~0_combout\ = ((!\u8|gem_RPM\(6) & !\u8|gem_RPM\(5))) # (!\u8|gem_RPM\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|gem_RPM\(6),
	datab => \u8|gem_RPM\(7),
	datad => \u8|gem_RPM\(5),
	combout => \u4|gemiddelde2bcd|u0|Mux0~0_combout\);

-- Location: LCCOMB_X53_Y22_N18
\u4|gemiddelde2bcd|u2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u2|Mux0~0_combout\ = (\u4|gemiddelde2bcd|u1|Mux1~0_combout\) # ((\u4|gemiddelde2bcd|u1|Mux2~0_combout\ & ((\u4|gemiddelde2bcd|u1|Mux3~0_combout\) # (\u8|gem_RPM\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|gemiddelde2bcd|u1|Mux3~0_combout\,
	datab => \u4|gemiddelde2bcd|u1|Mux1~0_combout\,
	datac => \u8|gem_RPM\(3),
	datad => \u4|gemiddelde2bcd|u1|Mux2~0_combout\,
	combout => \u4|gemiddelde2bcd|u2|Mux0~0_combout\);

-- Location: LCCOMB_X53_Y22_N24
\u4|gemiddelde2bcd|u6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u6|Mux2~0_combout\ = (\u4|gemiddelde2bcd|u0|Mux0~0_combout\ & (\u4|gemiddelde2bcd|u2|Mux0~0_combout\ & ((\u4|gemiddelde2bcd|u3|Mux0~0_combout\) # (!\u4|gemiddelde2bcd|u1|Mux0~0_combout\)))) # (!\u4|gemiddelde2bcd|u0|Mux0~0_combout\ & 
-- (!\u4|gemiddelde2bcd|u2|Mux0~0_combout\ & ((\u4|gemiddelde2bcd|u1|Mux0~0_combout\) # (!\u4|gemiddelde2bcd|u3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|gemiddelde2bcd|u1|Mux0~0_combout\,
	datab => \u4|gemiddelde2bcd|u3|Mux0~0_combout\,
	datac => \u4|gemiddelde2bcd|u0|Mux0~0_combout\,
	datad => \u4|gemiddelde2bcd|u2|Mux0~0_combout\,
	combout => \u4|gemiddelde2bcd|u6|Mux2~0_combout\);

-- Location: LCFF_X53_Y22_N25
\u4|gemiddelde_line[13][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|gemiddelde2bcd|u6|Mux2~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|gemiddelde_line[13][2]~regout\);

-- Location: LCCOMB_X57_Y26_N14
\u4|Mux263~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~90_combout\ = (\mode~regout\ & ((\u4|line_counter\(0) & (\u4|RPM_line[13][2]~regout\)) # (!\u4|line_counter\(0) & ((\u4|gemiddelde_line[13][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|RPM_line[13][2]~regout\,
	datac => \u4|gemiddelde_line[13][2]~regout\,
	datad => \mode~regout\,
	combout => \u4|Mux263~90_combout\);

-- Location: LCCOMB_X57_Y26_N16
\u4|Mux263~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~91_combout\ = (\u4|line_counter\(1) & ((\u4|Mux263~90_combout\) # ((\u4|maximale_line[13][2]~regout\ & \u4|aline~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|maximale_line[13][2]~regout\,
	datab => \u4|line_counter\(1),
	datac => \u4|Mux263~90_combout\,
	datad => \u4|aline~0_combout\,
	combout => \u4|Mux263~91_combout\);

-- Location: LCCOMB_X57_Y26_N18
\u4|Mux263~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~92_combout\ = (!\u4|character_counter\(1) & ((\u4|Mux263~91_combout\) # ((\u4|totale_omw_line[13][2]~regout\ & \u4|Mux263~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_line[13][2]~regout\,
	datab => \u4|Mux263~42_combout\,
	datac => \u4|Mux263~91_combout\,
	datad => \u4|character_counter\(1),
	combout => \u4|Mux263~92_combout\);

-- Location: LCCOMB_X54_Y26_N20
\u4|Mux263~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~93_combout\ = (\u4|start~regout\ & ((\u4|Mux263~92_combout\) # ((\u4|totale_omw_line[15][2]~regout\ & \u4|Mux263~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_line[15][2]~regout\,
	datab => \u4|start~regout\,
	datac => \u4|Mux263~92_combout\,
	datad => \u4|Mux263~44_combout\,
	combout => \u4|Mux263~93_combout\);

-- Location: LCCOMB_X54_Y26_N26
\u4|Mux263~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~88_combout\ = (!\u4|start~regout\ & ((\u4|character_counter\(1) & ((!\u4|Mux265~0_combout\))) # (!\u4|character_counter\(1) & (\u4|line_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|line_counter\(1),
	datac => \u4|start~regout\,
	datad => \u4|Mux265~0_combout\,
	combout => \u4|Mux263~88_combout\);

-- Location: LCCOMB_X54_Y26_N0
\u4|Mux263~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~89_combout\ = (\u4|Mux263~88_combout\) # ((\u4|Mux263~48_combout\ & (\u4|Mux263~33_combout\ & \u4|drive~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~48_combout\,
	datab => \u4|Mux263~33_combout\,
	datac => \u4|drive~0_combout\,
	datad => \u4|Mux263~88_combout\,
	combout => \u4|Mux263~89_combout\);

-- Location: LCCOMB_X77_Y29_N4
\u9|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|LessThan2~0_combout\ = (\u9|ADC_data\(4)) # ((\u9|ADC_data\(3)) # ((\u9|ADC_data\(1) & \u9|ADC_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|ADC_data\(4),
	datab => \u9|ADC_data\(1),
	datac => \u9|ADC_data\(0),
	datad => \u9|ADC_data\(3),
	combout => \u9|LessThan2~0_combout\);

-- Location: LCCOMB_X77_Y29_N24
\u9|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|LessThan2~1_combout\ = (\u9|ADC_data\(6) & ((\u9|ADC_data\(5)) # ((\u9|ADC_data\(2)) # (\u9|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|ADC_data\(5),
	datab => \u9|ADC_data\(2),
	datac => \u9|ADC_data\(6),
	datad => \u9|LessThan2~0_combout\,
	combout => \u9|LessThan2~1_combout\);

-- Location: LCCOMB_X74_Y29_N12
\u9|LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|LessThan2~2_combout\ = (\u9|ADC_data\(7)) # (\u9|LessThan2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u9|ADC_data\(7),
	datad => \u9|LessThan2~1_combout\,
	combout => \u9|LessThan2~2_combout\);

-- Location: LCFF_X74_Y29_N13
\u9|resist_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u9|LessThan2~2_combout\,
	ena => \u9|resist_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|resist_int\(2));

-- Location: LCCOMB_X74_Y29_N30
\u4|weerstand_line[12][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|weerstand_line[12][2]~feeder_combout\ = \u9|resist_int\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u9|resist_int\(2),
	combout => \u4|weerstand_line[12][2]~feeder_combout\);

-- Location: LCFF_X74_Y29_N31
\u4|weerstand_line[12][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|weerstand_line[12][2]~feeder_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|weerstand_line[12][2]~regout\);

-- Location: LCCOMB_X58_Y26_N14
\u4|Mux263~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~132_combout\ = (\u4|line_counter\(0) & (!\u4|line_counter\(1) & (\u4|Mux263~33_combout\ & \u4|weerstand_line[12][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|line_counter\(1),
	datac => \u4|Mux263~33_combout\,
	datad => \u4|weerstand_line[12][2]~regout\,
	combout => \u4|Mux263~132_combout\);

-- Location: LCCOMB_X57_Y24_N24
\u4|totale_omw_2bcd|u4|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|u4|Mux2~0_combout\ = (\u0|omwentel255\(1) & (!\u4|totale_omw_2bcd|u3|Mux1~0_combout\ & (\u4|totale_omw_2bcd|u3|Mux3~0_combout\))) # (!\u0|omwentel255\(1) & (!\u4|totale_omw_2bcd|u3|Mux2~0_combout\ & 
-- (\u4|totale_omw_2bcd|u3|Mux1~0_combout\ $ (\u4|totale_omw_2bcd|u3|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(1),
	datab => \u4|totale_omw_2bcd|u3|Mux1~0_combout\,
	datac => \u4|totale_omw_2bcd|u3|Mux3~0_combout\,
	datad => \u4|totale_omw_2bcd|u3|Mux2~0_combout\,
	combout => \u4|totale_omw_2bcd|u4|Mux2~0_combout\);

-- Location: LCFF_X57_Y24_N25
\u4|totale_omw_line[14][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_2bcd|u4|Mux2~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[14][2]~regout\);

-- Location: LCCOMB_X60_Y23_N30
\u4|maximale2bcd|u2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u2|Mux1~0_combout\ = (!\u4|maximale2bcd|u1|Mux3~0_combout\ & ((\u6|rpm_max_int\(3) & (!\u4|maximale2bcd|u1|Mux2~0_combout\ & \u4|maximale2bcd|u1|Mux1~0_combout\)) # (!\u6|rpm_max_int\(3) & (\u4|maximale2bcd|u1|Mux2~0_combout\ & 
-- !\u4|maximale2bcd|u1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|maximale2bcd|u1|Mux3~0_combout\,
	datab => \u6|rpm_max_int\(3),
	datac => \u4|maximale2bcd|u1|Mux2~0_combout\,
	datad => \u4|maximale2bcd|u1|Mux1~0_combout\,
	combout => \u4|maximale2bcd|u2|Mux1~0_combout\);

-- Location: LCCOMB_X60_Y23_N12
\u4|maximale2bcd|u3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u3|Mux2~0_combout\ = (\u6|rpm_max_int\(2) & (!\u4|maximale2bcd|u2|Mux1~0_combout\ & ((\u4|maximale2bcd|u2|Mux3~0_combout\)))) # (!\u6|rpm_max_int\(2) & (!\u4|maximale2bcd|u2|Mux2~0_combout\ & (\u4|maximale2bcd|u2|Mux1~0_combout\ $ 
-- (\u4|maximale2bcd|u2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(2),
	datab => \u4|maximale2bcd|u2|Mux1~0_combout\,
	datac => \u4|maximale2bcd|u2|Mux2~0_combout\,
	datad => \u4|maximale2bcd|u2|Mux3~0_combout\,
	combout => \u4|maximale2bcd|u3|Mux2~0_combout\);

-- Location: LCCOMB_X60_Y23_N26
\u4|maximale2bcd|u3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u3|Mux1~0_combout\ = (!\u4|maximale2bcd|u2|Mux3~0_combout\ & ((\u6|rpm_max_int\(2) & (!\u4|maximale2bcd|u2|Mux2~0_combout\ & \u4|maximale2bcd|u2|Mux1~0_combout\)) # (!\u6|rpm_max_int\(2) & (\u4|maximale2bcd|u2|Mux2~0_combout\ & 
-- !\u4|maximale2bcd|u2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(2),
	datab => \u4|maximale2bcd|u2|Mux3~0_combout\,
	datac => \u4|maximale2bcd|u2|Mux2~0_combout\,
	datad => \u4|maximale2bcd|u2|Mux1~0_combout\,
	combout => \u4|maximale2bcd|u3|Mux1~0_combout\);

-- Location: LCCOMB_X60_Y23_N28
\u4|maximale2bcd|u3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u3|Mux3~0_combout\ = (\u4|maximale2bcd|u2|Mux3~0_combout\ & (!\u4|maximale2bcd|u2|Mux1~0_combout\ & (\u4|maximale2bcd|u2|Mux2~0_combout\ $ (\u6|rpm_max_int\(2))))) # (!\u4|maximale2bcd|u2|Mux3~0_combout\ & 
-- (!\u4|maximale2bcd|u2|Mux2~0_combout\ & (\u4|maximale2bcd|u2|Mux1~0_combout\ $ (\u6|rpm_max_int\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|maximale2bcd|u2|Mux2~0_combout\,
	datab => \u4|maximale2bcd|u2|Mux1~0_combout\,
	datac => \u6|rpm_max_int\(2),
	datad => \u4|maximale2bcd|u2|Mux3~0_combout\,
	combout => \u4|maximale2bcd|u3|Mux3~0_combout\);

-- Location: LCCOMB_X59_Y23_N24
\u4|maximale2bcd|u4|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u4|Mux2~0_combout\ = (\u6|rpm_max_int\(1) & (((!\u4|maximale2bcd|u3|Mux1~0_combout\ & \u4|maximale2bcd|u3|Mux3~0_combout\)))) # (!\u6|rpm_max_int\(1) & (!\u4|maximale2bcd|u3|Mux2~0_combout\ & (\u4|maximale2bcd|u3|Mux1~0_combout\ $ 
-- (\u4|maximale2bcd|u3|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(1),
	datab => \u4|maximale2bcd|u3|Mux2~0_combout\,
	datac => \u4|maximale2bcd|u3|Mux1~0_combout\,
	datad => \u4|maximale2bcd|u3|Mux3~0_combout\,
	combout => \u4|maximale2bcd|u4|Mux2~0_combout\);

-- Location: LCFF_X59_Y23_N25
\u4|maximale_line[14][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|maximale2bcd|u4|Mux2~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|maximale_line[14][2]~regout\);

-- Location: LCCOMB_X58_Y26_N20
\u4|Mux263~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~85_combout\ = (\u4|line_counter\(0) & (\u4|line_counter\(1) & ((\u4|maximale_line[14][2]~regout\)))) # (!\u4|line_counter\(0) & (!\u4|line_counter\(1) & (\u4|totale_omw_line[14][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|line_counter\(1),
	datac => \u4|totale_omw_line[14][2]~regout\,
	datad => \u4|maximale_line[14][2]~regout\,
	combout => \u4|Mux263~85_combout\);

-- Location: LCCOMB_X53_Y25_N0
\u2|u3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u3|Mux2~0_combout\ = (\u5|rpm_mem\(2) & (!\u2|u2|Mux1~0_combout\ & ((\u2|u2|Mux3~0_combout\)))) # (!\u5|rpm_mem\(2) & (!\u2|u2|Mux2~0_combout\ & (\u2|u2|Mux1~0_combout\ $ (\u2|u2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u2|Mux1~0_combout\,
	datab => \u2|u2|Mux2~0_combout\,
	datac => \u5|rpm_mem\(2),
	datad => \u2|u2|Mux3~0_combout\,
	combout => \u2|u3|Mux2~0_combout\);

-- Location: LCCOMB_X53_Y25_N4
\u2|u3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u3|Mux3~0_combout\ = (\u2|u2|Mux3~0_combout\ & (!\u2|u2|Mux1~0_combout\ & (\u5|rpm_mem\(2) $ (\u2|u2|Mux2~0_combout\)))) # (!\u2|u2|Mux3~0_combout\ & (!\u2|u2|Mux2~0_combout\ & (\u5|rpm_mem\(2) $ (\u2|u2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(2),
	datab => \u2|u2|Mux1~0_combout\,
	datac => \u2|u2|Mux2~0_combout\,
	datad => \u2|u2|Mux3~0_combout\,
	combout => \u2|u3|Mux3~0_combout\);

-- Location: LCCOMB_X53_Y25_N26
\u2|u3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u3|Mux1~0_combout\ = (!\u2|u2|Mux3~0_combout\ & ((\u5|rpm_mem\(2) & (!\u2|u2|Mux2~0_combout\ & \u2|u2|Mux1~0_combout\)) # (!\u5|rpm_mem\(2) & (\u2|u2|Mux2~0_combout\ & !\u2|u2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(2),
	datab => \u2|u2|Mux3~0_combout\,
	datac => \u2|u2|Mux2~0_combout\,
	datad => \u2|u2|Mux1~0_combout\,
	combout => \u2|u3|Mux1~0_combout\);

-- Location: LCCOMB_X53_Y25_N24
\u2|u4|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u4|Mux2~0_combout\ = (\u5|rpm_mem\(1) & (((\u2|u3|Mux3~0_combout\ & !\u2|u3|Mux1~0_combout\)))) # (!\u5|rpm_mem\(1) & (!\u2|u3|Mux2~0_combout\ & (\u2|u3|Mux3~0_combout\ $ (\u2|u3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(1),
	datab => \u2|u3|Mux2~0_combout\,
	datac => \u2|u3|Mux3~0_combout\,
	datad => \u2|u3|Mux1~0_combout\,
	combout => \u2|u4|Mux2~0_combout\);

-- Location: LCCOMB_X54_Y22_N30
\u4|RPM_line~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|RPM_line~17_combout\ = (!\u5|te_hoog~regout\ & \u2|u4|Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|te_hoog~regout\,
	datad => \u2|u4|Mux2~0_combout\,
	combout => \u4|RPM_line~17_combout\);

-- Location: LCFF_X54_Y22_N31
\u4|RPM_line[14][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|RPM_line~17_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[14][2]~regout\);

-- Location: LCCOMB_X54_Y22_N24
\u4|gemiddelde2bcd|u4|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u4|Mux2~0_combout\ = (\u8|gem_RPM\(1) & (((\u4|gemiddelde2bcd|u3|Mux3~0_combout\ & !\u4|gemiddelde2bcd|u3|Mux1~0_combout\)))) # (!\u8|gem_RPM\(1) & (!\u4|gemiddelde2bcd|u3|Mux2~0_combout\ & (\u4|gemiddelde2bcd|u3|Mux3~0_combout\ $ 
-- (\u4|gemiddelde2bcd|u3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|gem_RPM\(1),
	datab => \u4|gemiddelde2bcd|u3|Mux2~0_combout\,
	datac => \u4|gemiddelde2bcd|u3|Mux3~0_combout\,
	datad => \u4|gemiddelde2bcd|u3|Mux1~0_combout\,
	combout => \u4|gemiddelde2bcd|u4|Mux2~0_combout\);

-- Location: LCFF_X54_Y22_N25
\u4|gemiddelde_line[14][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|gemiddelde2bcd|u4|Mux2~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|gemiddelde_line[14][2]~regout\);

-- Location: LCCOMB_X54_Y22_N10
\u4|Mux263~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~84_combout\ = (\u4|line_counter\(0) & (\u4|RPM_line[14][2]~regout\)) # (!\u4|line_counter\(0) & ((\u4|gemiddelde_line[14][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|RPM_line[14][2]~regout\,
	datac => \u4|gemiddelde_line[14][2]~regout\,
	datad => \u4|line_counter\(0),
	combout => \u4|Mux263~84_combout\);

-- Location: LCCOMB_X58_Y26_N6
\u4|Mux263~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~86_combout\ = (\mode~regout\ & (\u4|line_counter\(1) & ((\u4|Mux263~84_combout\)))) # (!\mode~regout\ & (((\u4|Mux263~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \mode~regout\,
	datac => \u4|Mux263~85_combout\,
	datad => \u4|Mux263~84_combout\,
	combout => \u4|Mux263~86_combout\);

-- Location: LCCOMB_X58_Y26_N28
\u4|Mux263~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~87_combout\ = (\u4|start~regout\ & ((\u4|Mux263~132_combout\) # ((\u4|character_counter\(1) & \u4|Mux263~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|start~regout\,
	datac => \u4|Mux263~132_combout\,
	datad => \u4|Mux263~86_combout\,
	combout => \u4|Mux263~87_combout\);

-- Location: LCCOMB_X54_Y26_N6
\u4|Mux261~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux261~0_combout\ = (\u4|character_counter\(2) & (((\u4|Mux263~87_combout\) # (!\u4|character_counter\(0))))) # (!\u4|character_counter\(2) & (\u4|Mux263~89_combout\ & (\u4|character_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|Mux263~89_combout\,
	datac => \u4|character_counter\(0),
	datad => \u4|Mux263~87_combout\,
	combout => \u4|Mux261~0_combout\);

-- Location: LCCOMB_X54_Y26_N30
\u4|Mux261~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux261~1_combout\ = (\u4|character_counter\(0) & (((\u4|Mux261~0_combout\)))) # (!\u4|character_counter\(0) & ((\u4|Mux261~0_combout\ & ((\u4|Mux263~93_combout\))) # (!\u4|Mux261~0_combout\ & (!\u4|Mux263~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~83_combout\,
	datab => \u4|character_counter\(0),
	datac => \u4|Mux263~93_combout\,
	datad => \u4|Mux261~0_combout\,
	combout => \u4|Mux261~1_combout\);

-- Location: LCCOMB_X54_Y26_N2
\u4|Mux261~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux261~4_combout\ = (\u4|character_counter\(3) & ((\u4|Mux261~1_combout\))) # (!\u4|character_counter\(3) & (\u4|Mux261~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|character_counter\(3),
	datac => \u4|Mux261~3_combout\,
	datad => \u4|Mux261~1_combout\,
	combout => \u4|Mux261~4_combout\);

-- Location: LCFF_X54_Y26_N3
\u4|data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Mux261~4_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.write_char~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|data\(2));

-- Location: LCCOMB_X54_Y28_N12
\u4|lcdm|Selector93~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector93~0_combout\ = (\u4|lcdm|current_state.command_init_11~regout\) # (((\u4|lcdm|current_state.wait_for_command~regout\ & \u4|data\(2))) # (!\u4|lcdm|Selector96~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_11~regout\,
	datab => \u4|lcdm|current_state.wait_for_command~regout\,
	datac => \u4|lcdm|Selector96~0_combout\,
	datad => \u4|data\(2),
	combout => \u4|lcdm|Selector93~0_combout\);

-- Location: LCFF_X54_Y28_N13
\u4|lcdm|LCD_DB[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector93~0_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[2]~reg0_regout\);

-- Location: LCFF_X54_Y29_N23
\u4|lcdm|LCD_DB[2]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u4|lcdm|Selector88~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[2]~en_regout\);

-- Location: LCCOMB_X57_Y25_N8
\u4|Mux263~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~110_combout\ = (\mode~regout\ & (\u4|character_counter\(1) & (\u4|line_counter\(0) $ (!\u4|line_counter\(1))))) # (!\mode~regout\ & (\u4|line_counter\(0) & ((\u4|line_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|character_counter\(1),
	datac => \u4|line_counter\(1),
	datad => \mode~regout\,
	combout => \u4|Mux263~110_combout\);

-- Location: LCCOMB_X57_Y25_N6
\u4|Mux260~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux260~6_combout\ = (\u4|Mux263~48_combout\ & ((\u4|character_counter\(0) & (\u4|Mux263~109_combout\)) # (!\u4|character_counter\(0) & ((\u4|Mux263~110_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~109_combout\,
	datab => \u4|character_counter\(0),
	datac => \u4|Mux263~110_combout\,
	datad => \u4|Mux263~48_combout\,
	combout => \u4|Mux260~6_combout\);

-- Location: LCCOMB_X59_Y27_N18
\u4|Mux263~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~114_combout\ = (\u4|RPM_line[1][5]~regout\ & (!\u4|line_counter\(0) & (!\u4|line_counter\(1) & \u4|character_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|RPM_line[1][5]~regout\,
	datab => \u4|line_counter\(0),
	datac => \u4|line_counter\(1),
	datad => \u4|character_counter\(1),
	combout => \u4|Mux263~114_combout\);

-- Location: LCCOMB_X58_Y23_N20
\u4|totale_omw_1bcd|u4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|u4|Mux1~0_combout\ = (!\u4|totale_omw_1bcd|u3|Mux3~0_combout\ & ((\u0|omwentel99\(1) & (!\u4|totale_omw_1bcd|u3|Mux2~0_combout\ & \u4|totale_omw_1bcd|u3|Mux1~0_combout\)) # (!\u0|omwentel99\(1) & (\u4|totale_omw_1bcd|u3|Mux2~0_combout\ 
-- & !\u4|totale_omw_1bcd|u3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(1),
	datab => \u4|totale_omw_1bcd|u3|Mux3~0_combout\,
	datac => \u4|totale_omw_1bcd|u3|Mux2~0_combout\,
	datad => \u4|totale_omw_1bcd|u3|Mux1~0_combout\,
	combout => \u4|totale_omw_1bcd|u4|Mux1~0_combout\);

-- Location: LCFF_X58_Y23_N21
\u4|totale_omw_line[16][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_1bcd|u4|Mux1~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[16][3]~regout\);

-- Location: LCCOMB_X59_Y27_N24
\u4|Mux260~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux260~7_combout\ = (\u4|Mux263~114_combout\) # ((\u4|totale_omw_line[16][3]~regout\ & \u4|Mux263~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Mux263~114_combout\,
	datac => \u4|totale_omw_line[16][3]~regout\,
	datad => \u4|Mux263~78_combout\,
	combout => \u4|Mux260~7_combout\);

-- Location: LCCOMB_X59_Y27_N14
\u4|Mux263~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~111_combout\ = (\u4|RPM_line[1][5]~regout\ & ((\u4|line_counter\(1) & ((!\mode~regout\))) # (!\u4|line_counter\(1) & (!\u4|character_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|line_counter\(1),
	datac => \u4|RPM_line[1][5]~regout\,
	datad => \mode~regout\,
	combout => \u4|Mux263~111_combout\);

-- Location: LCCOMB_X58_Y27_N28
\u4|Mux263~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~112_combout\ = (\u4|start~regout\ & (((\u4|character_counter\(1))))) # (!\u4|start~regout\ & ((\u4|character_counter\(1) & ((\u4|Mux50~0_combout\))) # (!\u4|character_counter\(1) & (\u4|Mux265~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|start~regout\,
	datab => \u4|Mux265~0_combout\,
	datac => \u4|character_counter\(1),
	datad => \u4|Mux50~0_combout\,
	combout => \u4|Mux263~112_combout\);

-- Location: LCCOMB_X59_Y27_N12
\u4|Mux263~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~113_combout\ = (\u4|start~regout\ & (\u4|Mux263~111_combout\ & ((\u4|Mux263~112_combout\) # (!\u4|line_counter\(0))))) # (!\u4|start~regout\ & (((!\u4|Mux263~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|start~regout\,
	datab => \u4|line_counter\(0),
	datac => \u4|Mux263~111_combout\,
	datad => \u4|Mux263~112_combout\,
	combout => \u4|Mux263~113_combout\);

-- Location: LCCOMB_X59_Y27_N26
\u4|Mux260~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux260~8_combout\ = (\u4|character_counter\(2) & (((\u4|Mux263~113_combout\)))) # (!\u4|character_counter\(2) & (\u4|start~regout\ & (\u4|Mux260~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|start~regout\,
	datac => \u4|Mux260~7_combout\,
	datad => \u4|Mux263~113_combout\,
	combout => \u4|Mux260~8_combout\);

-- Location: LCCOMB_X58_Y25_N16
\u4|Mux260~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux260~9_combout\ = (\u4|character_counter\(2) & ((\u4|character_counter\(0) & (\u4|Mux260~6_combout\)) # (!\u4|character_counter\(0) & ((\u4|Mux260~8_combout\))))) # (!\u4|character_counter\(2) & ((\u4|character_counter\(0) & 
-- ((\u4|Mux260~8_combout\))) # (!\u4|character_counter\(0) & (\u4|Mux260~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|Mux260~6_combout\,
	datac => \u4|character_counter\(0),
	datad => \u4|Mux260~8_combout\,
	combout => \u4|Mux260~9_combout\);

-- Location: LCCOMB_X58_Y25_N14
\u4|Mux263~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~101_combout\ = (\u4|character_counter\(1)) # (((\u4|start~regout\) # (\u4|line_counter\(2))) # (!\u4|line_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|line_counter\(0),
	datac => \u4|start~regout\,
	datad => \u4|line_counter\(2),
	combout => \u4|Mux263~101_combout\);

-- Location: LCCOMB_X56_Y23_N28
\u4|totale_omw_1bcd|u0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|u0|Mux0~0_combout\ = ((!\u0|omwentel99\(5) & !\u0|omwentel99\(6))) # (!\u0|omwentel99\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|omwentel99\(5),
	datac => \u0|omwentel99\(7),
	datad => \u0|omwentel99\(6),
	combout => \u4|totale_omw_1bcd|u0|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y23_N16
\u0|omwentel99~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel99~8_combout\ = (\u0|process_0~1_combout\ & (\u0|Add0~8_combout\ & ((\u0|Equal0~0_combout\) # (\u0|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~0_combout\,
	datab => \u0|Equal0~1_combout\,
	datac => \u0|process_0~1_combout\,
	datad => \u0|Add0~8_combout\,
	combout => \u0|omwentel99~8_combout\);

-- Location: LCFF_X57_Y23_N17
\u0|omwentel99[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|omwentel99~8_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|omwentel99[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|omwentel99\(4));

-- Location: LCCOMB_X56_Y23_N2
\u4|totale_omw_1bcd|u1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|u1|Mux0~0_combout\ = (\u0|omwentel99\(7) & ((\u0|omwentel99\(5) & (\u0|omwentel99\(4) & \u0|omwentel99\(6))) # (!\u0|omwentel99\(5) & ((!\u0|omwentel99\(6)))))) # (!\u0|omwentel99\(7) & (\u0|omwentel99\(6) & ((\u0|omwentel99\(5)) # 
-- (\u0|omwentel99\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(7),
	datab => \u0|omwentel99\(5),
	datac => \u0|omwentel99\(4),
	datad => \u0|omwentel99\(6),
	combout => \u4|totale_omw_1bcd|u1|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y23_N6
\u4|totale_omw_1bcd|u3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|u3|Mux0~0_combout\ = (\u4|totale_omw_1bcd|u2|Mux1~0_combout\) # ((\u4|totale_omw_1bcd|u2|Mux2~0_combout\ & ((\u0|omwentel99\(2)) # (\u4|totale_omw_1bcd|u2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_1bcd|u2|Mux1~0_combout\,
	datab => \u0|omwentel99\(2),
	datac => \u4|totale_omw_1bcd|u2|Mux3~0_combout\,
	datad => \u4|totale_omw_1bcd|u2|Mux2~0_combout\,
	combout => \u4|totale_omw_1bcd|u3|Mux0~0_combout\);

-- Location: LCCOMB_X56_Y23_N26
\u4|totale_omw_1bcd|u6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|u6|Mux1~0_combout\ = (\u4|totale_omw_1bcd|u1|Mux0~0_combout\ & (!\u4|totale_omw_1bcd|u3|Mux0~0_combout\ & (\u4|totale_omw_1bcd|u2|Mux0~0_combout\ $ (\u4|totale_omw_1bcd|u0|Mux0~0_combout\)))) # (!\u4|totale_omw_1bcd|u1|Mux0~0_combout\ 
-- & (!\u4|totale_omw_1bcd|u2|Mux0~0_combout\ & (!\u4|totale_omw_1bcd|u0|Mux0~0_combout\ & \u4|totale_omw_1bcd|u3|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_1bcd|u2|Mux0~0_combout\,
	datab => \u4|totale_omw_1bcd|u0|Mux0~0_combout\,
	datac => \u4|totale_omw_1bcd|u1|Mux0~0_combout\,
	datad => \u4|totale_omw_1bcd|u3|Mux0~0_combout\,
	combout => \u4|totale_omw_1bcd|u6|Mux1~0_combout\);

-- Location: LCFF_X56_Y23_N27
\u4|totale_omw_line[15][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_1bcd|u6|Mux1~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[15][3]~regout\);

-- Location: LCCOMB_X53_Y22_N10
\u4|gemiddelde2bcd|u6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u6|Mux1~0_combout\ = (\u4|gemiddelde2bcd|u1|Mux0~0_combout\ & (!\u4|gemiddelde2bcd|u3|Mux0~0_combout\ & (\u4|gemiddelde2bcd|u0|Mux0~0_combout\ $ (\u4|gemiddelde2bcd|u2|Mux0~0_combout\)))) # (!\u4|gemiddelde2bcd|u1|Mux0~0_combout\ & 
-- (\u4|gemiddelde2bcd|u3|Mux0~0_combout\ & (!\u4|gemiddelde2bcd|u0|Mux0~0_combout\ & !\u4|gemiddelde2bcd|u2|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|gemiddelde2bcd|u1|Mux0~0_combout\,
	datab => \u4|gemiddelde2bcd|u3|Mux0~0_combout\,
	datac => \u4|gemiddelde2bcd|u0|Mux0~0_combout\,
	datad => \u4|gemiddelde2bcd|u2|Mux0~0_combout\,
	combout => \u4|gemiddelde2bcd|u6|Mux1~0_combout\);

-- Location: LCFF_X53_Y22_N11
\u4|gemiddelde_line[13][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|gemiddelde2bcd|u6|Mux1~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|gemiddelde_line[13][3]~regout\);

-- Location: LCCOMB_X54_Y24_N22
\u2|u6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u6|Mux1~0_combout\ = (\u2|u1|Mux0~0_combout\ & (!\u2|u3|Mux0~0_combout\ & (\u2|u0|Mux0~0_combout\ $ (\u2|u2|Mux0~0_combout\)))) # (!\u2|u1|Mux0~0_combout\ & (!\u2|u0|Mux0~0_combout\ & (!\u2|u2|Mux0~0_combout\ & \u2|u3|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u0|Mux0~0_combout\,
	datab => \u2|u1|Mux0~0_combout\,
	datac => \u2|u2|Mux0~0_combout\,
	datad => \u2|u3|Mux0~0_combout\,
	combout => \u2|u6|Mux1~0_combout\);

-- Location: LCCOMB_X54_Y24_N18
\u4|RPM_line~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|RPM_line~20_combout\ = (\u5|te_hoog~regout\) # (\u2|u6|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|te_hoog~regout\,
	datad => \u2|u6|Mux1~0_combout\,
	combout => \u4|RPM_line~20_combout\);

-- Location: LCFF_X54_Y24_N19
\u4|RPM_line[13][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|RPM_line~20_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[13][3]~regout\);

-- Location: LCCOMB_X57_Y25_N12
\u4|Mux263~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~105_combout\ = (\mode~regout\ & ((\u4|line_counter\(0) & ((\u4|RPM_line[13][3]~regout\))) # (!\u4|line_counter\(0) & (\u4|gemiddelde_line[13][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|gemiddelde_line[13][3]~regout\,
	datac => \u4|RPM_line[13][3]~regout\,
	datad => \mode~regout\,
	combout => \u4|Mux263~105_combout\);

-- Location: LCCOMB_X58_Y25_N20
\u4|Mux263~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~106_combout\ = (\u4|line_counter\(1) & ((\u4|Mux263~105_combout\) # ((\u4|maximale_line[13][3]~regout\ & \u4|aline~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|maximale_line[13][3]~regout\,
	datab => \u4|line_counter\(1),
	datac => \u4|aline~0_combout\,
	datad => \u4|Mux263~105_combout\,
	combout => \u4|Mux263~106_combout\);

-- Location: LCCOMB_X58_Y25_N26
\u4|Mux263~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~107_combout\ = (!\u4|character_counter\(1) & ((\u4|Mux263~106_combout\) # ((\u4|totale_omw_line[13][3]~regout\ & \u4|Mux263~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_line[13][3]~regout\,
	datab => \u4|character_counter\(1),
	datac => \u4|Mux263~106_combout\,
	datad => \u4|Mux263~42_combout\,
	combout => \u4|Mux263~107_combout\);

-- Location: LCCOMB_X58_Y25_N4
\u4|Mux263~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~108_combout\ = (\u4|start~regout\ & ((\u4|Mux263~107_combout\) # ((\u4|totale_omw_line[15][3]~regout\ & \u4|Mux263~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|start~regout\,
	datab => \u4|totale_omw_line[15][3]~regout\,
	datac => \u4|Mux263~44_combout\,
	datad => \u4|Mux263~107_combout\,
	combout => \u4|Mux263~108_combout\);

-- Location: LCCOMB_X59_Y26_N6
\u4|Mux263~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~25_combout\ = (\u4|character_counter\(1) & ((\u4|line_counter\(1)) # ((\mode~regout\) # (!\u4|line_counter\(0))))) # (!\u4|character_counter\(1) & (\mode~regout\ $ (((\u4|line_counter\(1) & !\u4|line_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|line_counter\(1),
	datac => \mode~regout\,
	datad => \u4|line_counter\(0),
	combout => \u4|Mux263~25_combout\);

-- Location: LCCOMB_X58_Y25_N22
\u4|Mux263~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~137_combout\ = ((\u4|Mux263~25_combout\) # (!\u4|RPM_line[1][5]~regout\)) # (!\u4|start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|start~regout\,
	datac => \u4|RPM_line[1][5]~regout\,
	datad => \u4|Mux263~25_combout\,
	combout => \u4|Mux263~137_combout\);

-- Location: LCCOMB_X57_Y25_N2
\u4|Mux238~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux238~0_combout\ = (\u4|line_counter\(1) & \u4|line_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|line_counter\(1),
	datad => \u4|line_counter\(0),
	combout => \u4|Mux238~0_combout\);

-- Location: LCFF_X57_Y25_N15
\u4|RPM_line[12][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u5|te_hoog~regout\,
	sload => VCC,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[12][6]~regout\);

-- Location: LCCOMB_X57_Y25_N14
\u4|Mux263~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~104_combout\ = (\u4|start~regout\ & (\u4|Mux238~0_combout\ & (\u4|RPM_line[12][6]~regout\ & \mode~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|start~regout\,
	datab => \u4|Mux238~0_combout\,
	datac => \u4|RPM_line[12][6]~regout\,
	datad => \mode~regout\,
	combout => \u4|Mux263~104_combout\);

-- Location: LCCOMB_X58_Y25_N24
\u4|Mux260~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux260~3_combout\ = (\u4|character_counter\(2) & (((!\u4|character_counter\(1) & \u4|Mux263~104_combout\)) # (!\u4|character_counter\(0)))) # (!\u4|character_counter\(2) & (((\u4|character_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|character_counter\(1),
	datac => \u4|character_counter\(0),
	datad => \u4|Mux263~104_combout\,
	combout => \u4|Mux260~3_combout\);

-- Location: LCCOMB_X58_Y25_N8
\u4|Mux263~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~102_combout\ = (\u4|Mux239~0_combout\ & ((\u4|line_counter\(1) & ((\u4|RPM_line[1][5]~regout\))) # (!\u4|line_counter\(1) & (\u4|totale_omw_line[14][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_line[14][3]~regout\,
	datab => \u4|line_counter\(1),
	datac => \u4|RPM_line[1][5]~regout\,
	datad => \u4|Mux239~0_combout\,
	combout => \u4|Mux263~102_combout\);

-- Location: LCCOMB_X54_Y25_N18
\u2|u4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u4|Mux1~0_combout\ = (!\u2|u3|Mux3~0_combout\ & ((\u5|rpm_mem\(1) & (!\u2|u3|Mux2~0_combout\ & \u2|u3|Mux1~0_combout\)) # (!\u5|rpm_mem\(1) & (\u2|u3|Mux2~0_combout\ & !\u2|u3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(1),
	datab => \u2|u3|Mux3~0_combout\,
	datac => \u2|u3|Mux2~0_combout\,
	datad => \u2|u3|Mux1~0_combout\,
	combout => \u2|u4|Mux1~0_combout\);

-- Location: LCCOMB_X54_Y25_N30
\u4|RPM_line~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|RPM_line~19_combout\ = (\u5|te_hoog~regout\) # (\u2|u4|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|te_hoog~regout\,
	datad => \u2|u4|Mux1~0_combout\,
	combout => \u4|RPM_line~19_combout\);

-- Location: LCFF_X54_Y25_N31
\u4|RPM_line[14][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|RPM_line~19_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[14][3]~regout\);

-- Location: LCCOMB_X61_Y23_N22
\u6|rpm_max_int~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_max_int~8_combout\ = (\u3c|long~regout\ & \u6|rpm_int\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3c|long~regout\,
	datad => \u6|rpm_int\(1),
	combout => \u6|rpm_max_int~8_combout\);

-- Location: LCFF_X61_Y23_N23
\u6|rpm_max_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u6|rpm_max_int~8_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u6|rpm_max_int[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u6|rpm_max_int\(1));

-- Location: LCCOMB_X60_Y23_N10
\u4|maximale2bcd|u4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|u4|Mux1~0_combout\ = (!\u4|maximale2bcd|u3|Mux3~0_combout\ & ((\u4|maximale2bcd|u3|Mux2~0_combout\ & (!\u6|rpm_max_int\(1) & !\u4|maximale2bcd|u3|Mux1~0_combout\)) # (!\u4|maximale2bcd|u3|Mux2~0_combout\ & (\u6|rpm_max_int\(1) & 
-- \u4|maximale2bcd|u3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|maximale2bcd|u3|Mux2~0_combout\,
	datab => \u4|maximale2bcd|u3|Mux3~0_combout\,
	datac => \u6|rpm_max_int\(1),
	datad => \u4|maximale2bcd|u3|Mux1~0_combout\,
	combout => \u4|maximale2bcd|u4|Mux1~0_combout\);

-- Location: LCFF_X60_Y23_N11
\u4|maximale_line[14][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|maximale2bcd|u4|Mux1~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|maximale_line[14][3]~regout\);

-- Location: LCCOMB_X59_Y25_N12
\u4|Mux260~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux260~0_combout\ = (\mode~regout\ & (\u4|RPM_line[14][3]~regout\)) # (!\mode~regout\ & ((\u4|maximale_line[14][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|RPM_line[14][3]~regout\,
	datac => \u4|maximale_line[14][3]~regout\,
	datad => \mode~regout\,
	combout => \u4|Mux260~0_combout\);

-- Location: LCCOMB_X54_Y22_N16
\u4|gemiddelde2bcd|u4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|gemiddelde2bcd|u4|Mux1~0_combout\ = (!\u4|gemiddelde2bcd|u3|Mux3~0_combout\ & ((\u8|gem_RPM\(1) & (!\u4|gemiddelde2bcd|u3|Mux2~0_combout\ & \u4|gemiddelde2bcd|u3|Mux1~0_combout\)) # (!\u8|gem_RPM\(1) & (\u4|gemiddelde2bcd|u3|Mux2~0_combout\ & 
-- !\u4|gemiddelde2bcd|u3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8|gem_RPM\(1),
	datab => \u4|gemiddelde2bcd|u3|Mux2~0_combout\,
	datac => \u4|gemiddelde2bcd|u3|Mux3~0_combout\,
	datad => \u4|gemiddelde2bcd|u3|Mux1~0_combout\,
	combout => \u4|gemiddelde2bcd|u4|Mux1~0_combout\);

-- Location: LCFF_X54_Y22_N17
\u4|gemiddelde_line[14][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|gemiddelde2bcd|u4|Mux1~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|gemiddelde_line[14][3]~regout\);

-- Location: LCCOMB_X58_Y25_N10
\u4|Mux263~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~103_combout\ = (\u4|line_counter\(1) & ((\u4|gemiddelde_line[14][3]~regout\))) # (!\u4|line_counter\(1) & (\u4|RPM_line[1][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|RPM_line[1][5]~regout\,
	datac => \u4|gemiddelde_line[14][3]~regout\,
	datad => \u4|line_counter\(1),
	combout => \u4|Mux263~103_combout\);

-- Location: LCCOMB_X58_Y25_N12
\u4|Mux260~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux260~1_combout\ = (\u4|Mux238~0_combout\ & ((\u4|Mux260~0_combout\) # ((\u4|Mux263~28_combout\ & \u4|Mux263~103_combout\)))) # (!\u4|Mux238~0_combout\ & (\u4|Mux263~28_combout\ & ((\u4|Mux263~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux238~0_combout\,
	datab => \u4|Mux263~28_combout\,
	datac => \u4|Mux260~0_combout\,
	datad => \u4|Mux263~103_combout\,
	combout => \u4|Mux260~1_combout\);

-- Location: LCCOMB_X58_Y25_N6
\u4|Mux260~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux260~2_combout\ = (\u4|start~regout\ & (\u4|character_counter\(1) & ((\u4|Mux263~102_combout\) # (\u4|Mux260~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|start~regout\,
	datab => \u4|character_counter\(1),
	datac => \u4|Mux263~102_combout\,
	datad => \u4|Mux260~1_combout\,
	combout => \u4|Mux260~2_combout\);

-- Location: LCCOMB_X58_Y25_N2
\u4|Mux260~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux260~4_combout\ = (\u4|character_counter\(2) & (((\u4|Mux260~3_combout\) # (\u4|Mux260~2_combout\)))) # (!\u4|character_counter\(2) & (!\u4|Mux263~137_combout\ & (\u4|Mux260~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|Mux263~137_combout\,
	datac => \u4|Mux260~3_combout\,
	datad => \u4|Mux260~2_combout\,
	combout => \u4|Mux260~4_combout\);

-- Location: LCCOMB_X58_Y25_N30
\u4|Mux260~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux260~5_combout\ = (\u4|character_counter\(0) & (((\u4|Mux260~4_combout\)))) # (!\u4|character_counter\(0) & ((\u4|Mux260~4_combout\ & ((\u4|Mux263~108_combout\))) # (!\u4|Mux260~4_combout\ & (!\u4|Mux263~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|Mux263~101_combout\,
	datac => \u4|Mux263~108_combout\,
	datad => \u4|Mux260~4_combout\,
	combout => \u4|Mux260~5_combout\);

-- Location: LCCOMB_X58_Y25_N28
\u4|Mux260~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux260~10_combout\ = (\u4|character_counter\(3) & ((\u4|Mux260~5_combout\))) # (!\u4|character_counter\(3) & (\u4|Mux260~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|character_counter\(3),
	datac => \u4|Mux260~9_combout\,
	datad => \u4|Mux260~5_combout\,
	combout => \u4|Mux260~10_combout\);

-- Location: LCFF_X58_Y25_N29
\u4|data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Mux260~10_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.write_char~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|data\(3));

-- Location: LCCOMB_X54_Y28_N26
\u4|lcdm|Selector96~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector96~1_combout\ = (\u4|lcdm|current_state.command_init_8~regout\) # (((\u4|lcdm|current_state.wait_for_command~regout\ & \u4|data\(3))) # (!\u4|lcdm|Selector96~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_8~regout\,
	datab => \u4|lcdm|current_state.wait_for_command~regout\,
	datac => \u4|lcdm|Selector96~0_combout\,
	datad => \u4|data\(3),
	combout => \u4|lcdm|Selector96~1_combout\);

-- Location: LCFF_X54_Y28_N27
\u4|lcdm|LCD_DB[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector96~1_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[3]~reg0_regout\);

-- Location: LCFF_X54_Y29_N21
\u4|lcdm|LCD_DB[3]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u4|lcdm|Selector88~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[3]~en_regout\);

-- Location: LCCOMB_X54_Y28_N16
\u4|lcdm|Selector99~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector99~5_combout\ = (!\u4|lcdm|current_state.command_init_9~regout\ & (!\u4|lcdm|current_state.command_init_10~regout\ & \u4|lcdm|Selector99~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_9~regout\,
	datac => \u4|lcdm|current_state.command_init_10~regout\,
	datad => \u4|lcdm|Selector99~2_combout\,
	combout => \u4|lcdm|Selector99~5_combout\);

-- Location: LCCOMB_X59_Y25_N22
\u4|Mux263~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~115_combout\ = (!\u4|start~regout\ & (\u4|line_counter\(1) & ((\u4|character_counter\(1)) # (!\u4|line_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|start~regout\,
	datac => \u4|line_counter\(1),
	datad => \u4|line_counter\(0),
	combout => \u4|Mux263~115_combout\);

-- Location: LCCOMB_X59_Y25_N16
\u4|Mux263~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~118_combout\ = (\u4|line_counter\(1) & (\u4|character_counter\(1) & ((\mode~regout\) # (\u4|line_counter\(0))))) # (!\u4|line_counter\(1) & (((\u4|line_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \mode~regout\,
	datac => \u4|line_counter\(1),
	datad => \u4|line_counter\(0),
	combout => \u4|Mux263~118_combout\);

-- Location: LCCOMB_X59_Y25_N14
\u4|Mux263~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~119_combout\ = ((\u4|Mux263~118_combout\) # (!\u4|start~regout\)) # (!\u4|RPM_line[1][5]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|RPM_line[1][5]~regout\,
	datac => \u4|Mux263~118_combout\,
	datad => \u4|start~regout\,
	combout => \u4|Mux263~119_combout\);

-- Location: LCCOMB_X58_Y27_N4
\u4|Mux263~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~135_combout\ = (\u4|start~regout\ & (((\u4|RPM_line[1][5]~regout\)))) # (!\u4|start~regout\ & ((\u4|line_counter\(2)) # ((!\u4|line_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(2),
	datab => \u4|RPM_line[1][5]~regout\,
	datac => \u4|line_counter\(0),
	datad => \u4|start~regout\,
	combout => \u4|Mux263~135_combout\);

-- Location: LCCOMB_X58_Y27_N2
\u4|Mux263~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~116_combout\ = (\u4|line_counter\(0) & ((\mode~regout\ & ((!\u4|character_counter\(1)))) # (!\mode~regout\ & (!\u4|line_counter\(1))))) # (!\u4|line_counter\(0) & (!\u4|character_counter\(1) & (\u4|line_counter\(1) $ (\mode~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|line_counter\(1),
	datac => \u4|character_counter\(1),
	datad => \mode~regout\,
	combout => \u4|Mux263~116_combout\);

-- Location: LCCOMB_X58_Y27_N24
\u4|Mux263~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~117_combout\ = (\u4|start~regout\ & ((\u4|character_counter\(1) $ (\u4|Mux263~116_combout\)) # (!\u4|Mux263~135_combout\))) # (!\u4|start~regout\ & ((\u4|Mux263~135_combout\) # ((\u4|character_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|start~regout\,
	datab => \u4|Mux263~135_combout\,
	datac => \u4|character_counter\(1),
	datad => \u4|Mux263~116_combout\,
	combout => \u4|Mux263~117_combout\);

-- Location: LCCOMB_X58_Y27_N18
\u4|Mux263~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~134_combout\ = ((\u4|line_counter\(0) & (!\u4|line_counter\(1) & !\u4|Mux263~33_combout\))) # (!\u4|Mux263~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|line_counter\(1),
	datac => \u4|Mux263~33_combout\,
	datad => \u4|Mux263~48_combout\,
	combout => \u4|Mux263~134_combout\);

-- Location: LCCOMB_X58_Y27_N10
\u4|Mux259~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux259~0_combout\ = (\u4|character_counter\(2) & (((!\u4|Mux263~134_combout\)) # (!\u4|character_counter\(0)))) # (!\u4|character_counter\(2) & (\u4|character_counter\(0) & (!\u4|Mux263~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|character_counter\(0),
	datac => \u4|Mux263~117_combout\,
	datad => \u4|Mux263~134_combout\,
	combout => \u4|Mux259~0_combout\);

-- Location: LCCOMB_X59_Y25_N8
\u4|Mux259~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux259~1_combout\ = (\u4|character_counter\(0) & (((\u4|Mux259~0_combout\)))) # (!\u4|character_counter\(0) & ((\u4|Mux259~0_combout\ & ((!\u4|Mux263~119_combout\))) # (!\u4|Mux259~0_combout\ & (\u4|Mux263~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|Mux263~115_combout\,
	datac => \u4|Mux263~119_combout\,
	datad => \u4|Mux259~0_combout\,
	combout => \u4|Mux259~1_combout\);

-- Location: LCCOMB_X58_Y25_N18
\u4|Mux263~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~120_combout\ = (\u4|character_counter\(1) & (((!\mode~regout\)) # (!\u4|line_counter\(1)))) # (!\u4|character_counter\(1) & ((\u4|line_counter\(0)) # ((\u4|line_counter\(1) & \mode~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|line_counter\(1),
	datac => \u4|line_counter\(0),
	datad => \mode~regout\,
	combout => \u4|Mux263~120_combout\);

-- Location: LCCOMB_X58_Y25_N0
\u4|Mux263~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~121_combout\ = ((\u4|Mux263~120_combout\) # (!\u4|RPM_line[1][5]~regout\)) # (!\u4|start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|start~regout\,
	datac => \u4|RPM_line[1][5]~regout\,
	datad => \u4|Mux263~120_combout\,
	combout => \u4|Mux263~121_combout\);

-- Location: LCCOMB_X59_Y25_N26
\u4|Mux263~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~122_combout\ = (\u4|line_counter\(1) & (\u4|start~regout\ $ (\u4|character_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|start~regout\,
	datac => \u4|line_counter\(1),
	datad => \u4|character_counter\(1),
	combout => \u4|Mux263~122_combout\);

-- Location: LCCOMB_X59_Y25_N20
\u4|Mux263~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~123_combout\ = (\u4|RPM_line[1][5]~regout\ & (\u4|Mux263~122_combout\ $ (!\mode~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Mux263~122_combout\,
	datac => \u4|RPM_line[1][5]~regout\,
	datad => \mode~regout\,
	combout => \u4|Mux263~123_combout\);

-- Location: LCCOMB_X59_Y25_N2
\u4|Mux263~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~124_combout\ = (\u4|line_counter\(0) & (((!\u4|Mux263~123_combout\)) # (!\u4|start~regout\))) # (!\u4|line_counter\(0) & (((\u4|start~regout\ & !\u4|Mux263~123_combout\)) # (!\u4|Mux263~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|start~regout\,
	datac => \u4|Mux263~123_combout\,
	datad => \u4|Mux263~122_combout\,
	combout => \u4|Mux263~124_combout\);

-- Location: LCCOMB_X59_Y25_N24
\u4|Mux259~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux259~2_combout\ = (\u4|character_counter\(2) & (((\u4|Mux263~124_combout\)) # (!\u4|character_counter\(0)))) # (!\u4|character_counter\(2) & (\u4|character_counter\(0) & (\u4|Mux263~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|character_counter\(0),
	datac => \u4|Mux263~121_combout\,
	datad => \u4|Mux263~124_combout\,
	combout => \u4|Mux259~2_combout\);

-- Location: LCCOMB_X59_Y25_N0
\u4|Mux259~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux259~4_combout\ = (\mode~regout\ & (!\u4|character_counter\(1) & (!\u4|line_counter\(1) & !\u4|line_counter\(0)))) # (!\mode~regout\ & (\u4|character_counter\(1) $ (((\u4|line_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \mode~regout\,
	datac => \u4|line_counter\(1),
	datad => \u4|line_counter\(0),
	combout => \u4|Mux259~4_combout\);

-- Location: LCCOMB_X59_Y25_N10
\u4|Mux259~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux259~3_combout\ = (\u4|character_counter\(1) & ((\mode~regout\) # ((!\u4|line_counter\(1) & \u4|line_counter\(0))))) # (!\u4|character_counter\(1) & (\u4|line_counter\(1) $ (((\mode~regout\ & \u4|line_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \mode~regout\,
	datac => \u4|line_counter\(1),
	datad => \u4|line_counter\(0),
	combout => \u4|Mux259~3_combout\);

-- Location: LCCOMB_X59_Y25_N30
\u4|Mux259~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux259~5_combout\ = (\u4|Mux263~48_combout\ & ((\u4|Mux259~2_combout\ & (\u4|Mux259~4_combout\)) # (!\u4|Mux259~2_combout\ & ((!\u4|Mux259~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~48_combout\,
	datab => \u4|Mux259~4_combout\,
	datac => \u4|Mux259~2_combout\,
	datad => \u4|Mux259~3_combout\,
	combout => \u4|Mux259~5_combout\);

-- Location: LCCOMB_X59_Y25_N28
\u4|Mux259~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux259~6_combout\ = (\u4|character_counter\(0) & (((!\u4|Mux259~2_combout\)))) # (!\u4|character_counter\(0) & ((\u4|Mux259~5_combout\) # ((!\u4|Mux263~49_combout\ & \u4|Mux259~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|Mux263~49_combout\,
	datac => \u4|Mux259~2_combout\,
	datad => \u4|Mux259~5_combout\,
	combout => \u4|Mux259~6_combout\);

-- Location: LCCOMB_X59_Y25_N4
\u4|Mux259~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux259~7_combout\ = (\u4|character_counter\(3) & (\u4|Mux259~1_combout\)) # (!\u4|character_counter\(3) & ((\u4|Mux259~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(3),
	datac => \u4|Mux259~1_combout\,
	datad => \u4|Mux259~6_combout\,
	combout => \u4|Mux259~7_combout\);

-- Location: LCFF_X59_Y25_N5
\u4|data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Mux259~7_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.write_char~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|data\(4));

-- Location: LCCOMB_X54_Y29_N18
\u4|lcdm|Selector99~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector99~4_combout\ = (\u4|lcdm|Selector99~5_combout\ & (\u4|lcdm|WideOr17~0_combout\ & ((\u4|data\(4)) # (!\u4|lcdm|current_state.wait_for_command~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|lcdm|Selector99~5_combout\,
	datac => \u4|lcdm|WideOr17~0_combout\,
	datad => \u4|data\(4),
	combout => \u4|lcdm|Selector99~4_combout\);

-- Location: LCFF_X54_Y29_N19
\u4|lcdm|LCD_DB[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector99~4_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[4]~reg0_regout\);

-- Location: LCFF_X54_Y29_N13
\u4|lcdm|LCD_DB[4]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u4|lcdm|Selector88~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[4]~en_regout\);

-- Location: LCCOMB_X57_Y27_N30
\u4|Mux258~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux258~1_combout\ = (\u4|character_counter\(3) & ((!\u4|Mux263~104_combout\) # (!\u4|character_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(3),
	datab => \u4|character_counter\(2),
	datad => \u4|Mux263~104_combout\,
	combout => \u4|Mux258~1_combout\);

-- Location: LCCOMB_X57_Y26_N10
\u4|aline~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~5_combout\ = (\u4|line_counter\(1) & !\u4|start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|line_counter\(1),
	datad => \u4|start~regout\,
	combout => \u4|aline~5_combout\);

-- Location: LCCOMB_X57_Y27_N20
\u4|Mux258~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux258~4_combout\ = (\u4|character_counter\(1) & (((\u4|character_counter\(2))))) # (!\u4|character_counter\(1) & ((\u4|character_counter\(0)) # ((\u4|character_counter\(2) & !\u4|aline~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|character_counter\(2),
	datac => \u4|character_counter\(1),
	datad => \u4|aline~5_combout\,
	combout => \u4|Mux258~4_combout\);

-- Location: LCCOMB_X57_Y27_N0
\u4|Mux258~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux258~2_combout\ = (\u4|character_counter\(0) & (((!\u4|RPM_line[1][5]~regout\ & !\u4|character_counter\(3))))) # (!\u4|character_counter\(0) & ((\u4|character_counter\(2)) # ((!\u4|RPM_line[1][5]~regout\ & !\u4|character_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|character_counter\(2),
	datac => \u4|RPM_line[1][5]~regout\,
	datad => \u4|character_counter\(3),
	combout => \u4|Mux258~2_combout\);

-- Location: LCCOMB_X57_Y27_N10
\u4|Mux258~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux258~3_combout\ = (((\u4|Mux258~2_combout\) # (!\u4|Mux238~0_combout\)) # (!\u4|start~regout\)) # (!\mode~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~regout\,
	datab => \u4|start~regout\,
	datac => \u4|Mux238~0_combout\,
	datad => \u4|Mux258~2_combout\,
	combout => \u4|Mux258~3_combout\);

-- Location: LCCOMB_X57_Y27_N18
\u4|Mux258~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux258~5_combout\ = (\u4|character_counter\(3) & (\u4|character_counter\(1) & ((\u4|Mux258~3_combout\)))) # (!\u4|character_counter\(3) & ((\u4|Mux258~4_combout\) # ((\u4|character_counter\(1) & \u4|Mux258~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(3),
	datab => \u4|character_counter\(1),
	datac => \u4|Mux258~4_combout\,
	datad => \u4|Mux258~3_combout\,
	combout => \u4|Mux258~5_combout\);

-- Location: LCCOMB_X57_Y27_N8
\u4|Mux258~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux258~6_combout\ = (\u4|Mux258~1_combout\) # ((\u4|Mux258~5_combout\) # ((!\u4|aline~7_combout\ & \u4|Mux258~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|aline~7_combout\,
	datab => \u4|Mux258~1_combout\,
	datac => \u4|Mux258~0_combout\,
	datad => \u4|Mux258~5_combout\,
	combout => \u4|Mux258~6_combout\);

-- Location: LCFF_X57_Y27_N9
\u4|data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Mux258~6_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.write_char~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|data\(5));

-- Location: LCCOMB_X54_Y29_N0
\u4|lcdm|Selector102~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector102~1_combout\ = (\u4|data\(5)) # (!\u4|lcdm|current_state.wait_for_command~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datad => \u4|data\(5),
	combout => \u4|lcdm|Selector102~1_combout\);

-- Location: LCCOMB_X54_Y29_N2
\u4|lcdm|Selector102~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector102~2_combout\ = (\u4|lcdm|Selector102~0_combout\ & (\u4|lcdm|Selector99~5_combout\ & (\u4|lcdm|WideOr17~0_combout\ & \u4|lcdm|Selector102~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector102~0_combout\,
	datab => \u4|lcdm|Selector99~5_combout\,
	datac => \u4|lcdm|WideOr17~0_combout\,
	datad => \u4|lcdm|Selector102~1_combout\,
	combout => \u4|lcdm|Selector102~2_combout\);

-- Location: LCFF_X54_Y29_N3
\u4|lcdm|LCD_DB[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector102~2_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[5]~reg0_regout\);

-- Location: LCFF_X54_Y29_N29
\u4|lcdm|LCD_DB[5]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u4|lcdm|Selector88~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[5]~en_regout\);

-- Location: LCCOMB_X57_Y27_N2
\u4|Mux257~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux257~3_combout\ = (\u4|character_counter\(2) & (\u4|Mux263~104_combout\ & ((\u4|character_counter\(0)) # (!\u4|character_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|character_counter\(1),
	datac => \u4|character_counter\(2),
	datad => \u4|Mux263~104_combout\,
	combout => \u4|Mux257~3_combout\);

-- Location: LCCOMB_X57_Y27_N4
\u4|Mux257~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux257~2_combout\ = (!\u4|character_counter\(2) & \u4|Mux263~89_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|character_counter\(2),
	datad => \u4|Mux263~89_combout\,
	combout => \u4|Mux257~2_combout\);

-- Location: LCCOMB_X57_Y27_N12
\u4|aline~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~7_combout\ = (\u4|start~regout\ & (\u4|RPM_line[1][5]~regout\ & ((!\u4|drive~0_combout\) # (!\mode~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~regout\,
	datab => \u4|start~regout\,
	datac => \u4|RPM_line[1][5]~regout\,
	datad => \u4|drive~0_combout\,
	combout => \u4|aline~7_combout\);

-- Location: LCCOMB_X57_Y27_N14
\u4|Mux263~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~127_combout\ = (((!\mode~regout\ & !\u4|Mux50~0_combout\)) # (!\u4|aline~7_combout\)) # (!\u4|character_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~regout\,
	datab => \u4|character_counter\(1),
	datac => \u4|Mux50~0_combout\,
	datad => \u4|aline~7_combout\,
	combout => \u4|Mux263~127_combout\);

-- Location: LCCOMB_X57_Y27_N16
\u4|Mux257~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux257~0_combout\ = (\u4|character_counter\(0) & (!\u4|character_counter\(2) & (!\u4|Mux263~127_combout\))) # (!\u4|character_counter\(0) & ((\u4|character_counter\(2)) # ((\u4|aline~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|character_counter\(2),
	datac => \u4|Mux263~127_combout\,
	datad => \u4|aline~7_combout\,
	combout => \u4|Mux257~0_combout\);

-- Location: LCCOMB_X58_Y27_N12
\u4|Mux263~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~128_combout\ = (\u4|Mux263~48_combout\ & ((\mode~regout\ & ((!\u4|Mux50~0_combout\))) # (!\mode~regout\ & ((\u4|Mux50~0_combout\) # (!\u4|character_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~regout\,
	datab => \u4|Mux263~48_combout\,
	datac => \u4|character_counter\(1),
	datad => \u4|Mux50~0_combout\,
	combout => \u4|Mux263~128_combout\);

-- Location: LCCOMB_X58_Y27_N30
\u4|Mux263~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~136_combout\ = (\u4|Mux263~128_combout\) # ((!\u4|start~regout\ & \u4|line_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|start~regout\,
	datac => \u4|line_counter\(1),
	datad => \u4|Mux263~128_combout\,
	combout => \u4|Mux263~136_combout\);

-- Location: LCCOMB_X57_Y27_N26
\u4|Mux257~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux257~1_combout\ = (\u4|character_counter\(2) & ((\u4|Mux257~0_combout\ & ((\u4|Mux263~136_combout\))) # (!\u4|Mux257~0_combout\ & (\u4|Mux263~126_combout\)))) # (!\u4|character_counter\(2) & (((\u4|Mux257~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~126_combout\,
	datab => \u4|character_counter\(2),
	datac => \u4|Mux257~0_combout\,
	datad => \u4|Mux263~136_combout\,
	combout => \u4|Mux257~1_combout\);

-- Location: LCCOMB_X57_Y27_N22
\u4|Mux257~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux257~4_combout\ = (\u4|character_counter\(3) & ((\u4|Mux257~3_combout\) # ((\u4|Mux257~2_combout\)))) # (!\u4|character_counter\(3) & (((\u4|Mux257~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(3),
	datab => \u4|Mux257~3_combout\,
	datac => \u4|Mux257~2_combout\,
	datad => \u4|Mux257~1_combout\,
	combout => \u4|Mux257~4_combout\);

-- Location: LCFF_X57_Y27_N23
\u4|data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Mux257~4_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.write_char~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|data\(6));

-- Location: LCCOMB_X54_Y29_N26
\u4|lcdm|Selector105~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector105~0_combout\ = (\u4|lcdm|current_state.command_goto10~regout\) # ((\u4|lcdm|current_state.command_goto30~regout\) # ((\u4|lcdm|current_state.wait_for_command~regout\ & \u4|data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|lcdm|current_state.command_goto10~regout\,
	datac => \u4|lcdm|current_state.command_goto30~regout\,
	datad => \u4|data\(6),
	combout => \u4|lcdm|Selector105~0_combout\);

-- Location: LCFF_X54_Y29_N27
\u4|lcdm|LCD_DB[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector105~0_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[6]~reg0_regout\);

-- Location: LCFF_X54_Y29_N9
\u4|lcdm|LCD_DB[6]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector88~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[6]~en_regout\);

-- Location: LCCOMB_X54_Y29_N14
\u4|lcdm|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr2~0_combout\ = (\u4|lcdm|current_state.command_goto30~regout\) # ((\u4|lcdm|current_state.command_goto20~regout\) # (\u4|lcdm|current_state.command_goto10~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_goto30~regout\,
	datab => \u4|lcdm|current_state.command_goto20~regout\,
	datac => \u4|lcdm|current_state.command_goto10~regout\,
	combout => \u4|lcdm|WideOr2~0_combout\);

-- Location: LCFF_X54_Y29_N15
\u4|lcdm|LCD_DB[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|WideOr2~0_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[7]~reg0_regout\);

-- Location: LCFF_X54_Y29_N17
\u4|lcdm|LCD_DB[7]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u4|lcdm|Selector88~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[7]~en_regout\);

-- Location: LCCOMB_X54_Y25_N0
\u2|u4|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u4|Mux3~0_combout\ = (\u2|u3|Mux3~0_combout\ & (!\u2|u3|Mux1~0_combout\ & (\u5|rpm_mem\(1) $ (\u2|u3|Mux2~0_combout\)))) # (!\u2|u3|Mux3~0_combout\ & (!\u2|u3|Mux2~0_combout\ & (\u5|rpm_mem\(1) $ (\u2|u3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(1),
	datab => \u2|u3|Mux3~0_combout\,
	datac => \u2|u3|Mux2~0_combout\,
	datad => \u2|u3|Mux1~0_combout\,
	combout => \u2|u4|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y4_N12
\u2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux6~0_combout\ = (!\u2|u4|Mux3~0_combout\ & (!\u2|u4|Mux1~0_combout\ & (\u2|u4|Mux2~0_combout\ $ (\u5|rpm_mem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|Mux3~0_combout\,
	datab => \u2|u4|Mux1~0_combout\,
	datac => \u2|u4|Mux2~0_combout\,
	datad => \u5|rpm_mem\(0),
	combout => \u2|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y4_N22
\u2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux5~0_combout\ = (\u2|u4|Mux2~0_combout\ & (\u2|u4|Mux3~0_combout\ $ (\u5|rpm_mem\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|Mux3~0_combout\,
	datac => \u2|u4|Mux2~0_combout\,
	datad => \u5|rpm_mem\(0),
	combout => \u2|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y4_N24
\u2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux4~0_combout\ = (\u2|u4|Mux3~0_combout\ & (!\u2|u4|Mux2~0_combout\ & !\u5|rpm_mem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|Mux3~0_combout\,
	datac => \u2|u4|Mux2~0_combout\,
	datad => \u5|rpm_mem\(0),
	combout => \u2|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y4_N10
\u2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux3~0_combout\ = (!\u2|u4|Mux1~0_combout\ & ((\u2|u4|Mux3~0_combout\ & (\u2|u4|Mux2~0_combout\ & \u5|rpm_mem\(0))) # (!\u2|u4|Mux3~0_combout\ & (\u2|u4|Mux2~0_combout\ $ (\u5|rpm_mem\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|Mux3~0_combout\,
	datab => \u2|u4|Mux1~0_combout\,
	datac => \u2|u4|Mux2~0_combout\,
	datad => \u5|rpm_mem\(0),
	combout => \u2|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y4_N4
\u2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux2~0_combout\ = (\u5|rpm_mem\(0)) # ((!\u2|u4|Mux3~0_combout\ & \u2|u4|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|Mux3~0_combout\,
	datac => \u2|u4|Mux2~0_combout\,
	datad => \u5|rpm_mem\(0),
	combout => \u2|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y4_N6
\u2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux1~0_combout\ = (!\u2|u4|Mux1~0_combout\ & ((\u2|u4|Mux3~0_combout\ & ((\u5|rpm_mem\(0)) # (!\u2|u4|Mux2~0_combout\))) # (!\u2|u4|Mux3~0_combout\ & (!\u2|u4|Mux2~0_combout\ & \u5|rpm_mem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|Mux3~0_combout\,
	datab => \u2|u4|Mux1~0_combout\,
	datac => \u2|u4|Mux2~0_combout\,
	datad => \u5|rpm_mem\(0),
	combout => \u2|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y4_N0
\u2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux0~0_combout\ = (\u2|u4|Mux1~0_combout\) # ((\u2|u4|Mux3~0_combout\ & ((!\u5|rpm_mem\(0)) # (!\u2|u4|Mux2~0_combout\))) # (!\u2|u4|Mux3~0_combout\ & (\u2|u4|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u4|Mux3~0_combout\,
	datab => \u2|u4|Mux1~0_combout\,
	datac => \u2|u4|Mux2~0_combout\,
	datad => \u5|rpm_mem\(0),
	combout => \u2|Mux0~0_combout\);

-- Location: LCCOMB_X54_Y24_N12
\u2|u6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u6|Mux3~0_combout\ = (\u2|u1|Mux0~0_combout\ & ((\u2|u0|Mux0~0_combout\ & (\u2|u2|Mux0~0_combout\ & !\u2|u3|Mux0~0_combout\)) # (!\u2|u0|Mux0~0_combout\ & (!\u2|u2|Mux0~0_combout\ & \u2|u3|Mux0~0_combout\)))) # (!\u2|u1|Mux0~0_combout\ & 
-- (\u2|u3|Mux0~0_combout\ $ (((!\u2|u0|Mux0~0_combout\ & !\u2|u2|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u0|Mux0~0_combout\,
	datab => \u2|u1|Mux0~0_combout\,
	datac => \u2|u2|Mux0~0_combout\,
	datad => \u2|u3|Mux0~0_combout\,
	combout => \u2|u6|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y25_N20
\u2|u4|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|u4|Mux0~0_combout\ = (\u2|u3|Mux1~0_combout\) # ((\u2|u3|Mux2~0_combout\ & ((\u5|rpm_mem\(1)) # (\u2|u3|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(1),
	datab => \u2|u3|Mux3~0_combout\,
	datac => \u2|u3|Mux2~0_combout\,
	datad => \u2|u3|Mux1~0_combout\,
	combout => \u2|u4|Mux0~0_combout\);

-- Location: LCCOMB_X57_Y25_N18
\u2|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux13~0_combout\ = (!\u2|u6|Mux1~0_combout\ & (!\u2|u6|Mux3~0_combout\ & (\u2|u6|Mux2~0_combout\ $ (\u2|u4|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u6|Mux2~0_combout\,
	datab => \u2|u6|Mux1~0_combout\,
	datac => \u2|u6|Mux3~0_combout\,
	datad => \u2|u4|Mux0~0_combout\,
	combout => \u2|Mux13~0_combout\);

-- Location: LCCOMB_X57_Y25_N4
\u2|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux12~0_combout\ = (\u2|u6|Mux2~0_combout\ & (\u2|u6|Mux3~0_combout\ $ (\u2|u4|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u6|Mux2~0_combout\,
	datac => \u2|u6|Mux3~0_combout\,
	datad => \u2|u4|Mux0~0_combout\,
	combout => \u2|Mux12~0_combout\);

-- Location: LCCOMB_X57_Y25_N26
\u2|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux11~0_combout\ = (!\u2|u6|Mux2~0_combout\ & (\u2|u6|Mux3~0_combout\ & !\u2|u4|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u6|Mux2~0_combout\,
	datac => \u2|u6|Mux3~0_combout\,
	datad => \u2|u4|Mux0~0_combout\,
	combout => \u2|Mux11~0_combout\);

-- Location: LCCOMB_X57_Y25_N16
\u2|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux10~0_combout\ = (!\u2|u6|Mux1~0_combout\ & ((\u2|u6|Mux2~0_combout\ & (\u2|u6|Mux3~0_combout\ $ (!\u2|u4|Mux0~0_combout\))) # (!\u2|u6|Mux2~0_combout\ & (!\u2|u6|Mux3~0_combout\ & \u2|u4|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u6|Mux2~0_combout\,
	datab => \u2|u6|Mux1~0_combout\,
	datac => \u2|u6|Mux3~0_combout\,
	datad => \u2|u4|Mux0~0_combout\,
	combout => \u2|Mux10~0_combout\);

-- Location: LCCOMB_X57_Y25_N22
\u2|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux9~0_combout\ = (\u2|u4|Mux0~0_combout\) # ((\u2|u6|Mux2~0_combout\ & !\u2|u6|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u6|Mux2~0_combout\,
	datac => \u2|u6|Mux3~0_combout\,
	datad => \u2|u4|Mux0~0_combout\,
	combout => \u2|Mux9~0_combout\);

-- Location: LCCOMB_X57_Y25_N24
\u2|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux8~0_combout\ = (!\u2|u6|Mux1~0_combout\ & ((\u2|u6|Mux2~0_combout\ & (\u2|u6|Mux3~0_combout\ & \u2|u4|Mux0~0_combout\)) # (!\u2|u6|Mux2~0_combout\ & ((\u2|u6|Mux3~0_combout\) # (\u2|u4|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u6|Mux2~0_combout\,
	datab => \u2|u6|Mux1~0_combout\,
	datac => \u2|u6|Mux3~0_combout\,
	datad => \u2|u4|Mux0~0_combout\,
	combout => \u2|Mux8~0_combout\);

-- Location: LCCOMB_X57_Y25_N30
\u2|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux7~0_combout\ = (\u2|u6|Mux1~0_combout\) # ((\u2|u6|Mux2~0_combout\ & ((!\u2|u4|Mux0~0_combout\) # (!\u2|u6|Mux3~0_combout\))) # (!\u2|u6|Mux2~0_combout\ & (\u2|u6|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u6|Mux2~0_combout\,
	datab => \u2|u6|Mux1~0_combout\,
	datac => \u2|u6|Mux3~0_combout\,
	datad => \u2|u4|Mux0~0_combout\,
	combout => \u2|Mux7~0_combout\);

-- Location: LCCOMB_X54_Y24_N24
\u2|Mux18~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux18~17_combout\ = (\u2|u1|Mux0~0_combout\ & (\u2|u0|Mux0~0_combout\ & ((\u2|u3|Mux0~0_combout\) # (\u2|u2|Mux0~0_combout\)))) # (!\u2|u1|Mux0~0_combout\ & (((!\u2|u2|Mux0~0_combout\ & !\u2|u0|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|u3|Mux0~0_combout\,
	datab => \u2|u1|Mux0~0_combout\,
	datac => \u2|u2|Mux0~0_combout\,
	datad => \u2|u0|Mux0~0_combout\,
	combout => \u2|Mux18~17_combout\);

-- Location: LCCOMB_X54_Y24_N0
\u2|Mux18~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux18~11_combout\ = (!\u5|rpm_mem\(3) & !\u5|rpm_mem\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|rpm_mem\(3),
	datad => \u5|rpm_mem\(4),
	combout => \u2|Mux18~11_combout\);

-- Location: LCCOMB_X54_Y24_N6
\u2|Mux18~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux18~18_combout\ = (((!\u5|rpm_mem\(5) & \u2|Mux18~11_combout\)) # (!\u5|rpm_mem\(7))) # (!\u5|rpm_mem\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(6),
	datab => \u5|rpm_mem\(7),
	datac => \u5|rpm_mem\(5),
	datad => \u2|Mux18~11_combout\,
	combout => \u2|Mux18~18_combout\);

-- Location: LCCOMB_X54_Y24_N2
\u2|Mux15~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux15~7_combout\ = (\u5|rpm_mem\(4)) # ((\u5|rpm_mem\(3)) # (\u5|rpm_mem\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm_mem\(4),
	datac => \u5|rpm_mem\(3),
	datad => \u5|rpm_mem\(2),
	combout => \u2|Mux15~7_combout\);

-- Location: LCCOMB_X54_Y24_N8
\u2|Mux15~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux15~16_combout\ = (\u5|rpm_mem\(7)) # ((\u5|rpm_mem\(6) & (\u5|rpm_mem\(5) & \u2|Mux15~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(6),
	datab => \u5|rpm_mem\(7),
	datac => \u5|rpm_mem\(5),
	datad => \u2|Mux15~7_combout\,
	combout => \u2|Mux15~16_combout\);

-- Location: LCFF_X52_Y29_N13
\u4|lcdm|LCD_E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u4|lcdm|LCD_E~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_E~regout\);

-- Location: LCCOMB_X54_Y29_N24
\u4|lcdm|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector0~0_combout\ = (\u4|lcdm|current_state.command_wr~regout\) # ((\u4|lcdm|LCD_RS~regout\ & !\u4|lcdm|WideOr3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.command_wr~regout\,
	datac => \u4|lcdm|LCD_RS~regout\,
	datad => \u4|lcdm|WideOr3~1_combout\,
	combout => \u4|lcdm|Selector0~0_combout\);

-- Location: LCFF_X54_Y29_N25
\u4|lcdm|LCD_RS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector0~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_RS~regout\);

-- Location: LCCOMB_X52_Y29_N2
\u4|lcdm|WideOr43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr43~0_combout\ = (\u4|lcdm|current_state.pulse_busy_flag_1~regout\) # ((\u4|lcdm|current_state.pulse_busy_flag_3~regout\) # ((\u4|lcdm|current_state.pulse_busy_flag~regout\) # (\u4|lcdm|current_state.pulse_busy_flag_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag_1~regout\,
	datab => \u4|lcdm|current_state.pulse_busy_flag_3~regout\,
	datac => \u4|lcdm|current_state.pulse_busy_flag~regout\,
	datad => \u4|lcdm|current_state.pulse_busy_flag_2~regout\,
	combout => \u4|lcdm|WideOr43~0_combout\);

-- Location: LCFF_X52_Y29_N3
\u4|lcdm|LCD_RW\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|WideOr43~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_RW~regout\);

-- Location: LCCOMB_X93_Y26_N0
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

-- Location: LCFF_X93_Y26_N1
\u1|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(0));

-- Location: LCCOMB_X93_Y26_N2
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

-- Location: LCFF_X93_Y26_N3
\u1|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(1));

-- Location: LCCOMB_X93_Y26_N4
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

-- Location: LCCOMB_X93_Y26_N6
\u1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~6_combout\ = (\u1|count\(3) & (!\u1|Add0~5\)) # (!\u1|count\(3) & ((\u1|Add0~5\) # (GND)))
-- \u1|Add0~7\ = CARRY((!\u1|Add0~5\) # (!\u1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(3),
	datad => VCC,
	cin => \u1|Add0~5\,
	combout => \u1|Add0~6_combout\,
	cout => \u1|Add0~7\);

-- Location: LCCOMB_X93_Y26_N8
\u1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~8_combout\ = (\u1|count\(4) & (\u1|Add0~7\ $ (GND))) # (!\u1|count\(4) & (!\u1|Add0~7\ & VCC))
-- \u1|Add0~9\ = CARRY((\u1|count\(4) & !\u1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(4),
	datad => VCC,
	cin => \u1|Add0~7\,
	combout => \u1|Add0~8_combout\,
	cout => \u1|Add0~9\);

-- Location: LCFF_X93_Y26_N9
\u1|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~8_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(4));

-- Location: LCCOMB_X93_Y26_N10
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

-- Location: LCCOMB_X93_Y26_N12
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

-- Location: LCCOMB_X94_Y26_N14
\u1|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count~3_combout\ = (\u1|Add0~12_combout\ & (((!\u1|Equal0~1_combout\) # (!\u1|Equal0~0_combout\)) # (!\u1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~2_combout\,
	datab => \u1|Equal0~0_combout\,
	datac => \u1|Equal0~1_combout\,
	datad => \u1|Add0~12_combout\,
	combout => \u1|count~3_combout\);

-- Location: LCFF_X94_Y26_N15
\u1|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(6));

-- Location: LCFF_X93_Y26_N11
\u1|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~10_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(5));

-- Location: LCCOMB_X94_Y26_N20
\u1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Equal0~1_combout\ = (\u1|count\(7) & (\u1|count\(8) & (\u1|count\(6) & !\u1|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(7),
	datab => \u1|count\(8),
	datac => \u1|count\(6),
	datad => \u1|count\(5),
	combout => \u1|Equal0~1_combout\);

-- Location: LCCOMB_X93_Y26_N30
\u1|count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count~4_combout\ = (\u1|Add0~4_combout\ & (((!\u1|Equal0~1_combout\) # (!\u1|Equal0~2_combout\)) # (!\u1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~0_combout\,
	datab => \u1|Equal0~2_combout\,
	datac => \u1|Add0~4_combout\,
	datad => \u1|Equal0~1_combout\,
	combout => \u1|count~4_combout\);

-- Location: LCFF_X93_Y26_N31
\u1|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~4_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(2));

-- Location: LCFF_X93_Y26_N7
\u1|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~6_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(3));

-- Location: LCCOMB_X94_Y26_N12
\u1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Equal0~2_combout\ = (\u1|count\(1) & (!\u1|count\(3) & (!\u1|count\(2) & !\u1|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datab => \u1|count\(3),
	datac => \u1|count\(2),
	datad => \u1|count\(4),
	combout => \u1|Equal0~2_combout\);

-- Location: LCCOMB_X93_Y26_N14
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

-- Location: LCCOMB_X93_Y26_N28
\u1|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count~2_combout\ = (\u1|Add0~14_combout\ & (((!\u1|Equal0~1_combout\) # (!\u1|Equal0~2_combout\)) # (!\u1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~0_combout\,
	datab => \u1|Equal0~2_combout\,
	datac => \u1|Add0~14_combout\,
	datad => \u1|Equal0~1_combout\,
	combout => \u1|count~2_combout\);

-- Location: LCFF_X93_Y26_N29
\u1|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(7));

-- Location: LCCOMB_X93_Y26_N16
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

-- Location: LCCOMB_X93_Y26_N26
\u1|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count~1_combout\ = (\u1|Add0~16_combout\ & (((!\u1|Equal0~1_combout\) # (!\u1|Equal0~2_combout\)) # (!\u1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~0_combout\,
	datab => \u1|Equal0~2_combout\,
	datac => \u1|Add0~16_combout\,
	datad => \u1|Equal0~1_combout\,
	combout => \u1|count~1_combout\);

-- Location: LCFF_X93_Y26_N27
\u1|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(8));

-- Location: LCCOMB_X93_Y26_N18
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

-- Location: LCFF_X93_Y26_N19
\u1|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~18_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(9));

-- Location: LCCOMB_X93_Y26_N22
\u1|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Add0~22_combout\ = \u1|count\(11) $ (\u1|Add0~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(11),
	cin => \u1|Add0~21\,
	combout => \u1|Add0~22_combout\);

-- Location: LCCOMB_X93_Y26_N24
\u1|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count~0_combout\ = (\u1|Add0~22_combout\ & (((!\u1|Equal0~1_combout\) # (!\u1|Equal0~0_combout\)) # (!\u1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~2_combout\,
	datab => \u1|Equal0~0_combout\,
	datac => \u1|Equal0~1_combout\,
	datad => \u1|Add0~22_combout\,
	combout => \u1|count~0_combout\);

-- Location: LCFF_X93_Y26_N25
\u1|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(11));

-- Location: LCCOMB_X94_Y26_N30
\u1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Equal0~0_combout\ = (!\u1|count\(10) & (!\u1|count\(9) & (\u1|count\(0) & \u1|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(10),
	datab => \u1|count\(9),
	datac => \u1|count\(0),
	datad => \u1|count\(11),
	combout => \u1|Equal0~0_combout\);

-- Location: LCCOMB_X94_Y26_N6
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

-- Location: LCFF_X94_Y26_N7
\u1|clkint\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|clkint~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|clkint~regout\);

-- Location: CLKCTRL_G7
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

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KNOP[5]~I\ : cycloneii_io
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
	padio => ww_KNOP(5),
	combout => \KNOP~combout\(5));

-- Location: LCCOMB_X83_Y29_N2
\u3f|a~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3f|a~1_combout\ = !\KNOP~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KNOP~combout\(5),
	combout => \u3f|a~1_combout\);

-- Location: LCCOMB_X82_Y29_N2
\u3f|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3f|Add0~2_combout\ = (\u3f|ffa\(1) & (!\u3f|Add0~1\)) # (!\u3f|ffa\(1) & ((\u3f|Add0~1\) # (GND)))
-- \u3f|Add0~3\ = CARRY((!\u3f|Add0~1\) # (!\u3f|ffa\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3f|ffa\(1),
	datad => VCC,
	cin => \u3f|Add0~1\,
	combout => \u3f|Add0~2_combout\,
	cout => \u3f|Add0~3\);

-- Location: LCCOMB_X82_Y29_N14
\u3f|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3f|Add0~14_combout\ = (\u3f|Add0~2_combout\ & ((\u3f|ffa\(5)) # (\u3f|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3f|ffa\(5),
	datac => \u3f|LessThan0~0_combout\,
	datad => \u3f|Add0~2_combout\,
	combout => \u3f|Add0~14_combout\);

-- Location: LCFF_X82_Y29_N15
\u3f|ffa[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3f|Add0~14_combout\,
	ena => \u3f|ffa[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3f|ffa\(1));

-- Location: LCCOMB_X82_Y29_N4
\u3f|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3f|Add0~4_combout\ = (\u3f|ffa\(2) & (!\u3f|Add0~3\ & VCC)) # (!\u3f|ffa\(2) & (\u3f|Add0~3\ $ (GND)))
-- \u3f|Add0~5\ = CARRY((!\u3f|ffa\(2) & !\u3f|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3f|ffa\(2),
	datad => VCC,
	cin => \u3f|Add0~3\,
	combout => \u3f|Add0~4_combout\,
	cout => \u3f|Add0~5\);

-- Location: LCCOMB_X83_Y29_N28
\u3f|ffa[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3f|ffa[2]~3_combout\ = (\BUTTON~combout\(3) & ((\u3f|ffa\(5)) # (\u3f|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON~combout\(3),
	datac => \u3f|ffa\(5),
	datad => \u3f|LessThan0~0_combout\,
	combout => \u3f|ffa[2]~3_combout\);

-- Location: LCCOMB_X82_Y29_N26
\u3f|ffa[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3f|ffa[2]~5_combout\ = (\u3f|ffa[6]~1_combout\ & (((!\u3f|ffa[2]~3_combout\)) # (!\u3f|Add0~4_combout\))) # (!\u3f|ffa[6]~1_combout\ & (\u3f|ffa\(2) & ((!\u3f|ffa[2]~3_combout\) # (!\u3f|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3f|ffa[6]~1_combout\,
	datab => \u3f|Add0~4_combout\,
	datac => \u3f|ffa\(2),
	datad => \u3f|ffa[2]~3_combout\,
	combout => \u3f|ffa[2]~5_combout\);

-- Location: LCFF_X82_Y29_N27
\u3f|ffa[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3f|ffa[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3f|ffa\(2));

-- Location: LCCOMB_X82_Y29_N22
\u3f|ffa[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3f|ffa[3]~7_combout\ = (\u3f|Add0~6_combout\ & ((\u3f|ffa[2]~3_combout\) # ((!\u3f|ffa[6]~1_combout\ & \u3f|ffa\(3))))) # (!\u3f|Add0~6_combout\ & (!\u3f|ffa[6]~1_combout\ & (\u3f|ffa\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3f|Add0~6_combout\,
	datab => \u3f|ffa[6]~1_combout\,
	datac => \u3f|ffa\(3),
	datad => \u3f|ffa[2]~3_combout\,
	combout => \u3f|ffa[3]~7_combout\);

-- Location: LCFF_X82_Y29_N23
\u3f|ffa[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3f|ffa[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3f|ffa\(3));

-- Location: LCCOMB_X82_Y29_N8
\u3f|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3f|Add0~8_combout\ = (\u3f|ffa\(4) & (\u3f|Add0~7\ $ (GND))) # (!\u3f|ffa\(4) & (!\u3f|Add0~7\ & VCC))
-- \u3f|Add0~9\ = CARRY((\u3f|ffa\(4) & !\u3f|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3f|ffa\(4),
	datad => VCC,
	cin => \u3f|Add0~7\,
	combout => \u3f|Add0~8_combout\,
	cout => \u3f|Add0~9\);

-- Location: LCCOMB_X82_Y29_N20
\u3f|ffa[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3f|ffa[4]~6_combout\ = (\u3f|ffa[6]~1_combout\ & (\u3f|Add0~8_combout\ & ((\u3f|ffa[2]~3_combout\)))) # (!\u3f|ffa[6]~1_combout\ & ((\u3f|ffa\(4)) # ((\u3f|Add0~8_combout\ & \u3f|ffa[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3f|ffa[6]~1_combout\,
	datab => \u3f|Add0~8_combout\,
	datac => \u3f|ffa\(4),
	datad => \u3f|ffa[2]~3_combout\,
	combout => \u3f|ffa[4]~6_combout\);

-- Location: LCFF_X82_Y29_N21
\u3f|ffa[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3f|ffa[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3f|ffa\(4));

-- Location: LCCOMB_X82_Y29_N16
\u3f|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3f|LessThan0~0_combout\ = (\u3f|ffa\(6)) # ((\u3f|ffa\(2) & (!\u3f|ffa\(4) & !\u3f|ffa\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3f|ffa\(6),
	datab => \u3f|ffa\(2),
	datac => \u3f|ffa\(4),
	datad => \u3f|ffa\(3),
	combout => \u3f|LessThan0~0_combout\);

-- Location: LCCOMB_X83_Y29_N30
\u3f|ffa[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3f|ffa[6]~0_combout\ = \KNOP~combout\(5) $ (!\u3f|a~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KNOP~combout\(5),
	datad => \u3f|a~regout\,
	combout => \u3f|ffa[6]~0_combout\);

-- Location: LCCOMB_X82_Y29_N18
\u3f|ffa[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3f|ffa[6]~1_combout\ = (\BUTTON~combout\(3) & ((\u3f|ffa\(5)) # ((\u3f|LessThan0~0_combout\) # (\u3f|ffa[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u3f|ffa\(5),
	datac => \u3f|LessThan0~0_combout\,
	datad => \u3f|ffa[6]~0_combout\,
	combout => \u3f|ffa[6]~1_combout\);

-- Location: LCCOMB_X82_Y29_N30
\u3f|ffa[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3f|ffa[5]~2_combout\ = (\u3f|ffa[6]~1_combout\ & (((!\u3f|LessThan0~0_combout\ & !\u3f|ffa\(5))) # (!\u3f|Add0~10_combout\))) # (!\u3f|ffa[6]~1_combout\ & (((\u3f|ffa\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3f|LessThan0~0_combout\,
	datab => \u3f|ffa[6]~1_combout\,
	datac => \u3f|ffa\(5),
	datad => \u3f|Add0~10_combout\,
	combout => \u3f|ffa[5]~2_combout\);

-- Location: LCFF_X82_Y29_N31
\u3f|ffa[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3f|ffa[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3f|ffa\(5));

-- Location: LCCOMB_X83_Y29_N0
\u3f|a~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3f|a~0_combout\ = (\BUTTON~combout\(3) & (!\u3f|ffa\(5) & !\u3f|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON~combout\(3),
	datac => \u3f|ffa\(5),
	datad => \u3f|LessThan0~0_combout\,
	combout => \u3f|a~0_combout\);

-- Location: LCFF_X83_Y29_N3
\u3f|a\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3f|a~1_combout\,
	ena => \u3f|a~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3f|a~regout\);

-- Location: LCCOMB_X83_Y29_N16
\u3f|output_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3f|output_int~0_combout\ = (\KNOP~combout\(5) & (\u3f|output_int~regout\ & !\u3f|a~regout\)) # (!\KNOP~combout\(5) & ((\u3f|output_int~regout\) # (!\u3f|a~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KNOP~combout\(5),
	datac => \u3f|output_int~regout\,
	datad => \u3f|a~regout\,
	combout => \u3f|output_int~0_combout\);

-- Location: LCFF_X83_Y29_N17
\u3f|output_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3f|output_int~0_combout\,
	ena => \u3f|a~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3f|output_int~regout\);

-- Location: LCCOMB_X76_Y28_N0
\u3f|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3f|output~0_combout\ = !\u3f|output_int~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3f|output_int~regout\,
	combout => \u3f|output~0_combout\);

-- Location: LCFF_X76_Y28_N1
\u3f|output\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3f|output~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3f|output~regout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KNOP[1]~I\ : cycloneii_io
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
	padio => ww_KNOP(1),
	combout => \KNOP~combout\(1));

-- Location: LCCOMB_X76_Y28_N18
\u3e|output_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3e|output_int~0_combout\ = (\u3e|a~regout\ & (!\KNOP~combout\(1) & \u3e|output_int~regout\)) # (!\u3e|a~regout\ & ((\u3e|output_int~regout\) # (!\KNOP~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3e|a~regout\,
	datab => \KNOP~combout\(1),
	datac => \u3e|output_int~regout\,
	combout => \u3e|output_int~0_combout\);

-- Location: LCCOMB_X77_Y28_N14
\u3e|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3e|Add0~0_combout\ = \u3e|ffa\(0) $ (VCC)
-- \u3e|Add0~1\ = CARRY(\u3e|ffa\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3e|ffa\(0),
	datad => VCC,
	combout => \u3e|Add0~0_combout\,
	cout => \u3e|Add0~1\);

-- Location: LCCOMB_X77_Y28_N28
\u3e|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3e|Add0~15_combout\ = (\u3e|Add0~0_combout\ & ((\u3e|ffa\(5)) # (\u3e|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3e|ffa\(5),
	datac => \u3e|Add0~0_combout\,
	datad => \u3e|LessThan0~0_combout\,
	combout => \u3e|Add0~15_combout\);

-- Location: LCCOMB_X76_Y28_N12
\u3e|a~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3e|a~0_combout\ = !\KNOP~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KNOP~combout\(1),
	combout => \u3e|a~0_combout\);

-- Location: LCFF_X76_Y28_N13
\u3e|a\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3e|a~0_combout\,
	ena => \u3e|output_int~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3e|a~regout\);

-- Location: LCCOMB_X76_Y28_N4
\u3e|ffa[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3e|ffa[6]~0_combout\ = \KNOP~combout\(1) $ (!\u3e|a~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KNOP~combout\(1),
	datad => \u3e|a~regout\,
	combout => \u3e|ffa[6]~0_combout\);

-- Location: LCCOMB_X77_Y28_N10
\u3e|ffa[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3e|ffa[6]~1_combout\ = (\BUTTON~combout\(3) & ((\u3e|ffa\(5)) # ((\u3e|ffa[6]~0_combout\) # (\u3e|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3e|ffa\(5),
	datab => \BUTTON~combout\(3),
	datac => \u3e|ffa[6]~0_combout\,
	datad => \u3e|LessThan0~0_combout\,
	combout => \u3e|ffa[6]~1_combout\);

-- Location: LCFF_X77_Y28_N29
\u3e|ffa[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3e|Add0~15_combout\,
	ena => \u3e|ffa[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3e|ffa\(0));

-- Location: LCCOMB_X77_Y28_N16
\u3e|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3e|Add0~2_combout\ = (\u3e|ffa\(1) & (!\u3e|Add0~1\)) # (!\u3e|ffa\(1) & ((\u3e|Add0~1\) # (GND)))
-- \u3e|Add0~3\ = CARRY((!\u3e|Add0~1\) # (!\u3e|ffa\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3e|ffa\(1),
	datad => VCC,
	cin => \u3e|Add0~1\,
	combout => \u3e|Add0~2_combout\,
	cout => \u3e|Add0~3\);

-- Location: LCCOMB_X77_Y28_N8
\u3e|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3e|Add0~14_combout\ = (\u3e|Add0~2_combout\ & ((\u3e|ffa\(5)) # (\u3e|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3e|ffa\(5),
	datac => \u3e|Add0~2_combout\,
	datad => \u3e|LessThan0~0_combout\,
	combout => \u3e|Add0~14_combout\);

-- Location: LCFF_X77_Y28_N9
\u3e|ffa[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3e|Add0~14_combout\,
	ena => \u3e|ffa[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3e|ffa\(1));

-- Location: LCCOMB_X77_Y28_N18
\u3e|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3e|Add0~4_combout\ = (\u3e|ffa\(2) & (!\u3e|Add0~3\ & VCC)) # (!\u3e|ffa\(2) & (\u3e|Add0~3\ $ (GND)))
-- \u3e|Add0~5\ = CARRY((!\u3e|ffa\(2) & !\u3e|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3e|ffa\(2),
	datad => VCC,
	cin => \u3e|Add0~3\,
	combout => \u3e|Add0~4_combout\,
	cout => \u3e|Add0~5\);

-- Location: LCCOMB_X77_Y28_N4
\u3e|ffa[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3e|ffa[2]~5_combout\ = (\u3e|ffa[2]~3_combout\ & (!\u3e|Add0~4_combout\ & ((\u3e|ffa\(2)) # (\u3e|ffa[6]~1_combout\)))) # (!\u3e|ffa[2]~3_combout\ & (((\u3e|ffa\(2)) # (\u3e|ffa[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3e|ffa[2]~3_combout\,
	datab => \u3e|Add0~4_combout\,
	datac => \u3e|ffa\(2),
	datad => \u3e|ffa[6]~1_combout\,
	combout => \u3e|ffa[2]~5_combout\);

-- Location: LCFF_X77_Y28_N5
\u3e|ffa[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3e|ffa[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3e|ffa\(2));

-- Location: LCCOMB_X77_Y28_N20
\u3e|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3e|Add0~6_combout\ = (\u3e|ffa\(3) & (!\u3e|Add0~5\)) # (!\u3e|ffa\(3) & ((\u3e|Add0~5\) # (GND)))
-- \u3e|Add0~7\ = CARRY((!\u3e|Add0~5\) # (!\u3e|ffa\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u3e|ffa\(3),
	datad => VCC,
	cin => \u3e|Add0~5\,
	combout => \u3e|Add0~6_combout\,
	cout => \u3e|Add0~7\);

-- Location: LCCOMB_X76_Y28_N14
\u3e|ffa[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3e|ffa[2]~3_combout\ = (\BUTTON~combout\(3) & ((\u3e|ffa\(5)) # (\u3e|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON~combout\(3),
	datac => \u3e|ffa\(5),
	datad => \u3e|LessThan0~0_combout\,
	combout => \u3e|ffa[2]~3_combout\);

-- Location: LCCOMB_X77_Y28_N0
\u3e|ffa[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3e|ffa[3]~7_combout\ = (\u3e|ffa[6]~1_combout\ & (\u3e|Add0~6_combout\ & ((\u3e|ffa[2]~3_combout\)))) # (!\u3e|ffa[6]~1_combout\ & ((\u3e|ffa\(3)) # ((\u3e|Add0~6_combout\ & \u3e|ffa[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3e|ffa[6]~1_combout\,
	datab => \u3e|Add0~6_combout\,
	datac => \u3e|ffa\(3),
	datad => \u3e|ffa[2]~3_combout\,
	combout => \u3e|ffa[3]~7_combout\);

-- Location: LCFF_X77_Y28_N1
\u3e|ffa[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3e|ffa[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3e|ffa\(3));

-- Location: LCCOMB_X77_Y28_N26
\u3e|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3e|Add0~12_combout\ = \u3e|Add0~11\ $ (\u3e|ffa\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u3e|ffa\(6),
	cin => \u3e|Add0~11\,
	combout => \u3e|Add0~12_combout\);

-- Location: LCCOMB_X77_Y28_N2
\u3e|ffa[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3e|ffa[6]~4_combout\ = (\u3e|ffa[2]~3_combout\ & (!\u3e|Add0~12_combout\ & ((\u3e|ffa\(6)) # (\u3e|ffa[6]~1_combout\)))) # (!\u3e|ffa[2]~3_combout\ & (((\u3e|ffa\(6)) # (\u3e|ffa[6]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3e|ffa[2]~3_combout\,
	datab => \u3e|Add0~12_combout\,
	datac => \u3e|ffa\(6),
	datad => \u3e|ffa[6]~1_combout\,
	combout => \u3e|ffa[6]~4_combout\);

-- Location: LCFF_X77_Y28_N3
\u3e|ffa[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3e|ffa[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3e|ffa\(6));

-- Location: LCCOMB_X77_Y28_N30
\u3e|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3e|LessThan0~0_combout\ = (\u3e|ffa\(6)) # ((!\u3e|ffa\(4) & (\u3e|ffa\(2) & !\u3e|ffa\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3e|ffa\(4),
	datab => \u3e|ffa\(6),
	datac => \u3e|ffa\(2),
	datad => \u3e|ffa\(3),
	combout => \u3e|LessThan0~0_combout\);

-- Location: LCCOMB_X77_Y28_N12
\u3e|ffa[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3e|ffa[5]~2_combout\ = (\u3e|ffa[6]~1_combout\ & (((!\u3e|LessThan0~0_combout\ & !\u3e|ffa\(5))) # (!\u3e|Add0~10_combout\))) # (!\u3e|ffa[6]~1_combout\ & (((\u3e|ffa\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3e|Add0~10_combout\,
	datab => \u3e|LessThan0~0_combout\,
	datac => \u3e|ffa\(5),
	datad => \u3e|ffa[6]~1_combout\,
	combout => \u3e|ffa[5]~2_combout\);

-- Location: LCFF_X77_Y28_N13
\u3e|ffa[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3e|ffa[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3e|ffa\(5));

-- Location: LCCOMB_X76_Y28_N22
\u3e|output_int~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3e|output_int~1_combout\ = (\BUTTON~combout\(3) & (!\u3e|ffa\(5) & !\u3e|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON~combout\(3),
	datac => \u3e|ffa\(5),
	datad => \u3e|LessThan0~0_combout\,
	combout => \u3e|output_int~1_combout\);

-- Location: LCFF_X76_Y28_N19
\u3e|output_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3e|output_int~0_combout\,
	ena => \u3e|output_int~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3e|output_int~regout\);

-- Location: LCCOMB_X76_Y28_N6
\u3e|output~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u3e|output~0_combout\ = !\u3e|output_int~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u3e|output_int~regout\,
	combout => \u3e|output~0_combout\);

-- Location: LCFF_X76_Y28_N7
\u3e|output\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u3e|output~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u3e|output~regout\);

-- Location: LCCOMB_X75_Y29_N24
\u9|restarget~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|restarget~9_combout\ = (\u9|resist_int\(0) & (\u3f|output~regout\ & !\u3e|output~regout\)) # (!\u9|resist_int\(0) & ((\u3e|output~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|resist_int\(0),
	datac => \u3f|output~regout\,
	datad => \u3e|output~regout\,
	combout => \u9|restarget~9_combout\);

-- Location: LCCOMB_X77_Y29_N14
\u9|resist_int~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|resist_int~2_combout\ = (\u9|ADC_data\(5)) # ((\u9|ADC_data\(4) & !\u9|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|ADC_data\(4),
	datab => \u9|LessThan1~0_combout\,
	datac => \u9|ADC_data\(5),
	combout => \u9|resist_int~2_combout\);

-- Location: LCCOMB_X77_Y29_N30
\u9|resist_int~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|resist_int~4_combout\ = (\u9|LessThan2~1_combout\ & (((\u9|resist_int~2_combout\)))) # (!\u9|LessThan2~1_combout\ & (((\u9|LessThan7~3_combout\)) # (!\u9|resist_int~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|LessThan2~1_combout\,
	datab => \u9|resist_int~3_combout\,
	datac => \u9|resist_int~2_combout\,
	datad => \u9|LessThan7~3_combout\,
	combout => \u9|resist_int~4_combout\);

-- Location: LCCOMB_X76_Y29_N22
\u9|resist_int~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|resist_int~5_combout\ = (\u9|ADC_data\(7)) # ((!\u9|LessThan1~1_combout\ & \u9|resist_int~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|ADC_data\(7),
	datab => \u9|LessThan1~1_combout\,
	datad => \u9|resist_int~4_combout\,
	combout => \u9|resist_int~5_combout\);

-- Location: LCFF_X76_Y29_N23
\u9|resist_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u9|resist_int~5_combout\,
	ena => \u9|resist_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|resist_int\(1));

-- Location: LCCOMB_X75_Y29_N20
\u9|restarget~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|restarget~10_combout\ = (\u9|resist_int\(2) & ((\u9|resist_int\(0)) # ((\u9|resist_int\(1)) # (!\u9|restarget~9_combout\)))) # (!\u9|resist_int\(2) & (\u9|restarget~9_combout\ & (\u9|resist_int\(0) $ (!\u9|resist_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|resist_int\(2),
	datab => \u9|resist_int\(0),
	datac => \u9|restarget~9_combout\,
	datad => \u9|resist_int\(1),
	combout => \u9|restarget~10_combout\);

-- Location: LCCOMB_X76_Y29_N4
\u9|restarget[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|restarget[2]~7_combout\ = (\u9|resist_int\(1) & (\u3f|output~regout\ & (\u9|resist_int\(0) & \u9|resist_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|resist_int\(1),
	datab => \u3f|output~regout\,
	datac => \u9|resist_int\(0),
	datad => \u9|resist_int\(2),
	combout => \u9|restarget[2]~7_combout\);

-- Location: LCCOMB_X76_Y29_N8
\u9|restarget[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|restarget[3]~4_combout\ = (\u3f|output~regout\) # ((!\u9|resist_int\(1) & (!\u9|resist_int\(0) & !\u9|resist_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|resist_int\(1),
	datab => \u3f|output~regout\,
	datac => \u9|resist_int\(0),
	datad => \u9|resist_int\(2),
	combout => \u9|restarget[3]~4_combout\);

-- Location: LCCOMB_X79_Y29_N0
\u9|resist_int[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|resist_int[0]~0_combout\ = (!\u9|resstart~regout\ & \u9|reset~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u9|resstart~regout\,
	datad => \u9|reset~regout\,
	combout => \u9|resist_int[0]~0_combout\);

-- Location: LCCOMB_X76_Y29_N14
\u9|restarget[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|restarget[0]~8_combout\ = (\u9|resist_int[0]~0_combout\ & (((!\u3e|output~regout\ & !\u9|restarget[2]~7_combout\)) # (!\u9|restarget[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3e|output~regout\,
	datab => \u9|restarget[2]~7_combout\,
	datac => \u9|restarget[3]~4_combout\,
	datad => \u9|resist_int[0]~0_combout\,
	combout => \u9|restarget[0]~8_combout\);

-- Location: LCFF_X75_Y29_N21
\u9|restarget[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u9|restarget~10_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u9|restarget[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|restarget\(2));

-- Location: LCCOMB_X76_Y29_N24
\u9|restarget[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|restarget[1]~11_combout\ = (\u9|resist_int\(0) & (\u9|resist_int\(1) $ (((!\u3e|output~regout\ & \u3f|output~regout\))))) # (!\u9|resist_int\(0) & ((\u9|resist_int\(1) & (!\u3e|output~regout\)) # (!\u9|resist_int\(1) & (\u3e|output~regout\ & 
-- !\u3f|output~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|resist_int\(0),
	datab => \u9|resist_int\(1),
	datac => \u3e|output~regout\,
	datad => \u3f|output~regout\,
	combout => \u9|restarget[1]~11_combout\);

-- Location: LCCOMB_X76_Y29_N28
\u9|restarget[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|restarget[1]~12_combout\ = (\u9|resist_int\(0) & (!\u9|restarget[1]~11_combout\ & ((!\u9|resist_int\(1)) # (!\u9|resist_int\(2))))) # (!\u9|resist_int\(0) & (((!\u9|resist_int\(2) & !\u9|resist_int\(1))) # (!\u9|restarget[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|resist_int\(0),
	datab => \u9|resist_int\(2),
	datac => \u9|restarget[1]~11_combout\,
	datad => \u9|resist_int\(1),
	combout => \u9|restarget[1]~12_combout\);

-- Location: LCCOMB_X76_Y29_N30
\u9|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|process_0~0_combout\ = (!\u3e|output~regout\ & (((!\u9|resist_int\(2)) # (!\u9|resist_int\(1))) # (!\u9|resist_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|resist_int\(0),
	datab => \u9|resist_int\(1),
	datac => \u9|resist_int\(2),
	datad => \u3e|output~regout\,
	combout => \u9|process_0~0_combout\);

-- Location: LCCOMB_X76_Y29_N20
\u9|restarget[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|restarget[3]~5_combout\ = (\u9|resist_int[0]~0_combout\ & (((\u9|process_0~0_combout\) # (!\u9|restarget[3]~4_combout\)) # (!\u9|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|process_0~1_combout\,
	datab => \u9|resist_int[0]~0_combout\,
	datac => \u9|restarget[3]~4_combout\,
	datad => \u9|process_0~0_combout\,
	combout => \u9|restarget[3]~5_combout\);

-- Location: LCFF_X76_Y29_N29
\u9|restarget[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u9|restarget[1]~12_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u9|restarget[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|restarget\(1));

-- Location: LCCOMB_X75_Y29_N2
\u9|LessThan10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|LessThan10~0_combout\ = (\u9|resist_int\(1) & ((\u9|restarget\(1)) # ((!\u9|restarget\(0) & \u9|resist_int\(0))))) # (!\u9|resist_int\(1) & (!\u9|restarget\(0) & (\u9|resist_int\(0) & \u9|restarget\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|restarget\(0),
	datab => \u9|resist_int\(1),
	datac => \u9|resist_int\(0),
	datad => \u9|restarget\(1),
	combout => \u9|LessThan10~0_combout\);

-- Location: LCCOMB_X75_Y29_N0
\u9|LessThan10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|LessThan10~1_combout\ = (\u9|resist_int\(2) & ((\u9|LessThan10~0_combout\) # (!\u9|restarget\(2)))) # (!\u9|resist_int\(2) & (!\u9|restarget\(2) & \u9|LessThan10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|resist_int\(2),
	datac => \u9|restarget\(2),
	datad => \u9|LessThan10~0_combout\,
	combout => \u9|LessThan10~1_combout\);

-- Location: LCFF_X75_Y29_N1
\u9|res_up\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u9|LessThan10~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u9|resist_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|res_up~regout\);

-- Location: LCCOMB_X75_Y29_N14
\u9|res_down~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|res_down~0_combout\ = (\u9|resist_int\(1) & (\u9|restarget\(0) & (!\u9|resist_int\(0) & !\u9|restarget\(1)))) # (!\u9|resist_int\(1) & (((\u9|restarget\(0) & !\u9|resist_int\(0))) # (!\u9|restarget\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|restarget\(0),
	datab => \u9|resist_int\(1),
	datac => \u9|resist_int\(0),
	datad => \u9|restarget\(1),
	combout => \u9|res_down~0_combout\);

-- Location: LCCOMB_X75_Y29_N22
\u9|res_down~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|res_down~1_combout\ = (\u9|resist_int\(2) & (\u9|res_down~0_combout\ & (\u9|restarget\(2) & !\u9|LessThan10~0_combout\))) # (!\u9|resist_int\(2) & ((\u9|restarget\(2)) # ((\u9|res_down~0_combout\ & !\u9|LessThan10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|resist_int\(2),
	datab => \u9|res_down~0_combout\,
	datac => \u9|restarget\(2),
	datad => \u9|LessThan10~0_combout\,
	combout => \u9|res_down~1_combout\);

-- Location: LCFF_X75_Y29_N23
\u9|res_down\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u9|res_down~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u9|resist_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|res_down~regout\);

-- Location: LCCOMB_X79_Y29_N6
\u9|N_readADC~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|N_readADC~1_combout\ = (!\u9|pass\(0) & (!\u9|pass\(1) & ((!\BUSY~combout\) # (!\u9|N_readADC~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|pass\(0),
	datab => \u9|pass\(1),
	datac => \u9|N_readADC~regout\,
	datad => \BUSY~combout\,
	combout => \u9|N_readADC~1_combout\);

-- Location: LCCOMB_X79_Y29_N12
\u9|N_readADC~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|N_readADC~0_combout\ = (!\u9|readADC~regout\ & ((\u9|pass\(0)) # (\u9|pass\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|pass\(0),
	datac => \u9|pass\(1),
	datad => \u9|readADC~regout\,
	combout => \u9|N_readADC~0_combout\);

-- Location: LCCOMB_X79_Y29_N16
\u9|N_readADC~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|N_readADC~2_combout\ = (\u9|resstart~regout\ & (((\u9|N_readADC~1_combout\) # (\u9|N_readADC~0_combout\)))) # (!\u9|resstart~regout\ & (!\u9|N_readADC~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|N_readADC~regout\,
	datab => \u9|N_readADC~1_combout\,
	datac => \u9|resstart~regout\,
	datad => \u9|N_readADC~0_combout\,
	combout => \u9|N_readADC~2_combout\);

-- Location: LCCOMB_X79_Y29_N26
\u9|pass~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|pass~0_combout\ = (\u9|resstart~regout\ & (!\u9|readADC~regout\ & ((\u9|pass\(0)) # (!\u9|pass\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u9|pass\(0),
	datab => \u9|pass\(1),
	datac => \u9|resstart~regout\,
	datad => \u9|readADC~regout\,
	combout => \u9|pass~0_combout\);

-- Location: LCCOMB_X79_Y29_N10
\u9|pass~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|pass~1_combout\ = (\BUSY~combout\ & (\u9|pass\(0) & ((!\u9|pass~0_combout\) # (!\u9|reset~regout\)))) # (!\BUSY~combout\ & (\u9|pass\(0) $ (((\u9|pass~0_combout\) # (!\u9|reset~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUSY~combout\,
	datab => \u9|reset~regout\,
	datac => \u9|pass\(0),
	datad => \u9|pass~0_combout\,
	combout => \u9|pass~1_combout\);

-- Location: LCFF_X79_Y29_N11
\u9|pass[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u9|pass~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|pass\(0));

-- Location: LCCOMB_X79_Y29_N24
\u9|N_readADC~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|N_readADC~3_combout\ = (\u9|reset~regout\ & (((!\u9|N_readADC~2_combout\)))) # (!\u9|reset~regout\ & (!\BUSY~combout\ & ((!\u9|pass\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUSY~combout\,
	datab => \u9|reset~regout\,
	datac => \u9|N_readADC~2_combout\,
	datad => \u9|pass\(0),
	combout => \u9|N_readADC~3_combout\);

-- Location: LCFF_X79_Y29_N25
\u9|N_readADC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u9|N_readADC~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|N_readADC~regout\);

-- Location: LCCOMB_X79_Y29_N18
\u9|N_convst~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u9|N_convst~0_combout\ = !\u9|resstart~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u9|resstart~regout\,
	combout => \u9|N_convst~0_combout\);

-- Location: LCFF_X79_Y29_N19
\u9|N_convst\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u9|N_convst~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u9|reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u9|N_convst~regout\);

-- Location: PIN_D29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[0]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u4|lcdm|LCD_DB[0]~reg0_regout\,
	oe => \u4|lcdm|LCD_DB[0]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(0));

-- Location: PIN_E27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[1]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u4|lcdm|LCD_DB[1]~reg0_regout\,
	oe => \u4|lcdm|LCD_DB[1]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(1));

-- Location: PIN_D28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[2]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u4|lcdm|LCD_DB[2]~reg0_regout\,
	oe => \u4|lcdm|LCD_DB[2]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(2));

-- Location: PIN_E29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[3]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u4|lcdm|LCD_DB[3]~reg0_regout\,
	oe => \u4|lcdm|LCD_DB[3]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(3));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[4]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u4|lcdm|LCD_DB[4]~reg0_regout\,
	oe => \u4|lcdm|LCD_DB[4]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(4));

-- Location: PIN_E30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[5]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u4|lcdm|LCD_DB[5]~reg0_regout\,
	oe => \u4|lcdm|LCD_DB[5]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(5));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_DATA[6]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \u4|lcdm|LCD_DB[6]~reg0_regout\,
	oe => \u4|lcdm|LCD_DB[6]~en_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => LCD_DATA(6));

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
	datain => \u2|Mux18~17_combout\,
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
	datain => \u2|ALT_INV_Mux18~18_combout\,
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
	datain => \u2|Mux18~17_combout\,
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
	datain => \u2|u6|Mux0~0_combout\,
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
	datain => \u2|Mux15~16_combout\,
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
	datain => \u2|Mux18~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2_D(6));

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

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_EN~I\ : cycloneii_io
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
	datain => \u4|lcdm|LCD_E~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_EN);

-- Location: PIN_C30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_RS~I\ : cycloneii_io
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
	datain => \u4|lcdm|LCD_RS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_RS);

-- Location: PIN_C29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_RW~I\ : cycloneii_io
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
	datain => \u4|lcdm|LCD_RW~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_RW);

-- Location: PIN_AJ6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
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
	datain => \DB~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_AK5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
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
	datain => \DB~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_AJ5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
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
	datain => \DB~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_AJ4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
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
	datain => \DB~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_AK3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
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
	datain => \DB~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_AH4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
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
	datain => \DB~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_AJ3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
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
	datain => \DB~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_AJ2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
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
	datain => \DB~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_AH3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
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
	padio => ww_LEDR(8));

-- Location: PIN_AD14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
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
	padio => ww_LEDR(9));

-- Location: PIN_W27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
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
	datain => \u3a|output~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_W25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
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
	padio => ww_LEDG(1));

-- Location: PIN_W23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
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
	padio => ww_LEDG(2));

-- Location: PIN_Y27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
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
	padio => ww_LEDG(3));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[4]~I\ : cycloneii_io
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
	padio => ww_LEDG(4));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]~I\ : cycloneii_io
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
	padio => ww_LEDG(5));

-- Location: PIN_AA27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]~I\ : cycloneii_io
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
	padio => ww_LEDG(6));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]~I\ : cycloneii_io
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
	padio => ww_LEDG(7));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[8]~I\ : cycloneii_io
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
	padio => ww_LEDG(8));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
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
	padio => ww_SW(0));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
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
	padio => ww_SW(1));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
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
	padio => ww_SW(2));

-- Location: PIN_AC27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
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
	padio => ww_SW(3));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
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
	padio => ww_SW(4));

-- Location: PIN_AC24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
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
	padio => ww_SW(5));

-- Location: PIN_AC23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
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
	padio => ww_SW(6));

-- Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
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
	padio => ww_SW(7));

-- Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
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
	padio => ww_SW(8));

-- Location: PIN_AE27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
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
	padio => ww_SW(9));

-- Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[10]~I\ : cycloneii_io
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
	padio => ww_SW(10));

-- Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[11]~I\ : cycloneii_io
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
	padio => ww_SW(11));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[12]~I\ : cycloneii_io
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
	padio => ww_SW(12));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[13]~I\ : cycloneii_io
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
	padio => ww_SW(13));

-- Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[14]~I\ : cycloneii_io
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
	padio => ww_SW(14));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[15]~I\ : cycloneii_io
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
	padio => ww_SW(15));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[16]~I\ : cycloneii_io
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
	padio => ww_SW(16));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[17]~I\ : cycloneii_io
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
	padio => ww_SW(17));

-- Location: PIN_T29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BUTTON[0]~I\ : cycloneii_io
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
	padio => ww_BUTTON(0));

-- Location: PIN_T28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BUTTON[1]~I\ : cycloneii_io
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
	padio => ww_BUTTON(1));

-- Location: PIN_U30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BUTTON[2]~I\ : cycloneii_io
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
	padio => ww_BUTTON(2));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KNOP[4]~I\ : cycloneii_io
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
	padio => ww_KNOP(4));

-- Location: PIN_G29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MOTOR_UP~I\ : cycloneii_io
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
	datain => \u9|ALT_INV_res_up~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MOTOR_UP);

-- Location: PIN_F30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MOTOR_DOWN~I\ : cycloneii_io
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
	datain => \u9|ALT_INV_res_down~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MOTOR_DOWN);

-- Location: PIN_H30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RD~I\ : cycloneii_io
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
	datain => \u9|ALT_INV_N_readADC~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RD);

-- Location: PIN_H29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Convstart~I\ : cycloneii_io
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
	datain => \u9|N_convst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Convstart);
END structure;


