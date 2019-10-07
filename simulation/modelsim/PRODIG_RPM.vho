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

-- DATE "10/07/2019 22:35:21"

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
	tix_mem_sim : OUT std_logic_vector(15 DOWNTO 0);
	rpm_mem_sim : OUT std_logic_vector(7 DOWNTO 0);
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
-- tix_mem_sim[0]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[1]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[2]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[3]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[4]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[5]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[6]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[7]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[8]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[9]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[10]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[11]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[12]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[13]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[14]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[15]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[0]	=>  Location: PIN_V29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[1]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[2]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[3]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[4]	=>  Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[5]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[6]	=>  Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[7]	=>  Location: PIN_T26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- KNOP[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KNOP[3]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KNOP[4]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KNOP[5]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KNOP[6]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MOTOR_UP	=>  Location: PIN_G29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MOTOR_DOWN	=>  Location: PIN_F30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DB[0]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DB[1]	=>  Location: PIN_J30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DB[2]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DB[3]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DB[4]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DB[5]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DB[6]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DB[7]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BUSY	=>  Location: PIN_J29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RD	=>  Location: PIN_H30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Convstart	=>  Location: PIN_H29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hall_sens	=>  Location: PIN_G30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BUTTON[3]	=>  Location: PIN_U29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KNOP[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_tix_mem_sim : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_rpm_mem_sim : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \u6|LessThan0~14clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|clkint~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|omwentel255[7]~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|Add3~0_combout\ : std_logic;
SIGNAL \u0|Add3~10_combout\ : std_logic;
SIGNAL \u0|Add3~16_combout\ : std_logic;
SIGNAL \u5|x[13]~46_combout\ : std_logic;
SIGNAL \u5|x[18]~56_combout\ : std_logic;
SIGNAL \u1|Add0~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~18_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~28_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~30_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~33\ : std_logic;
SIGNAL \u4|lcdm|Add0~34_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~35\ : std_logic;
SIGNAL \u4|lcdm|Add0~36_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~37\ : std_logic;
SIGNAL \u4|lcdm|Add0~38_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~39\ : std_logic;
SIGNAL \u4|lcdm|Add0~40_combout\ : std_logic;
SIGNAL \u4|Add1~4_combout\ : std_logic;
SIGNAL \u0|Add1~0_combout\ : std_logic;
SIGNAL \u0|Add1~6_combout\ : std_logic;
SIGNAL \u7|Add0~2_combout\ : std_logic;
SIGNAL \u7|Add2~12_combout\ : std_logic;
SIGNAL \u7|Add2~18_combout\ : std_logic;
SIGNAL \u7|Add2~20_combout\ : std_logic;
SIGNAL \u7|Add2~42_combout\ : std_logic;
SIGNAL \u7|Add2~44_combout\ : std_logic;
SIGNAL \u2|U6bcd[2]~0_combout\ : std_logic;
SIGNAL \u0|LessThan0~4_combout\ : std_logic;
SIGNAL \u5|LessThan0~0_combout\ : std_logic;
SIGNAL \u5|LessThan0~2_combout\ : std_logic;
SIGNAL \u5|LessThan2~32_combout\ : std_logic;
SIGNAL \u0|stop~regout\ : std_logic;
SIGNAL \u0|wait_time[8]~5_combout\ : std_logic;
SIGNAL \u4|lcdm|Equal0~1_combout\ : std_logic;
SIGNAL \u4|goto20~regout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_5~regout\ : std_logic;
SIGNAL \u0|stop~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector1~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector2~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector3~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector4~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector4~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector5~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector7~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector12~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector12~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector12~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector15~1_combout\ : std_logic;
SIGNAL \u4|lcdm|return_state.wait_for_command~regout\ : std_logic;
SIGNAL \u4|goto20~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector28~0_combout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_8~regout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_11~regout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_9~regout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_10~regout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_6~regout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_7~regout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_2~regout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_4~regout\ : std_logic;
SIGNAL \u4|lcdm|return_state.reset~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector68~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector63~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector68~1_combout\ : std_logic;
SIGNAL \u4|state.update_linecount~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector63~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector66~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector64~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector65~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector61~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector61~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector62~0_combout\ : std_logic;
SIGNAL \u4|tijd_line[10][0]~regout\ : std_logic;
SIGNAL \u4|Mux263~19_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[14][0]~regout\ : std_logic;
SIGNAL \u4|totale_omw_line[10][0]~regout\ : std_logic;
SIGNAL \u4|Mux263~20_combout\ : std_logic;
SIGNAL \u4|Mux263~21_combout\ : std_logic;
SIGNAL \u4|maximale_line[10][0]~regout\ : std_logic;
SIGNAL \u4|Mux263~23_combout\ : std_logic;
SIGNAL \u4|Mux263~24_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[13][0]~regout\ : std_logic;
SIGNAL \u4|RPM_line[8][0]~regout\ : std_logic;
SIGNAL \u4|totale_omw_line[12][0]~regout\ : std_logic;
SIGNAL \u4|totale_omw_line[11][0]~regout\ : std_logic;
SIGNAL \u4|Mux263~41_combout\ : std_logic;
SIGNAL \u4|maximale_line[10][1]~regout\ : std_logic;
SIGNAL \u4|Mux263~54_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[10][1]~regout\ : std_logic;
SIGNAL \u4|Mux263~55_combout\ : std_logic;
SIGNAL \u4|tijd_line[10][1]~regout\ : std_logic;
SIGNAL \u4|Mux263~56_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[14][1]~regout\ : std_logic;
SIGNAL \u4|Mux263~57_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[13][1]~regout\ : std_logic;
SIGNAL \u4|Mux263~58_combout\ : std_logic;
SIGNAL \u4|RPM_line[8][1]~regout\ : std_logic;
SIGNAL \u4|tijd_line[8][1]~regout\ : std_logic;
SIGNAL \u4|Mux263~60_combout\ : std_logic;
SIGNAL \u4|Mux263~61_combout\ : std_logic;
SIGNAL \u4|maximale_line[12][1]~regout\ : std_logic;
SIGNAL \u4|totale_omw_line[12][1]~regout\ : std_logic;
SIGNAL \u4|Mux263~63_combout\ : std_logic;
SIGNAL \u4|Mux263~65_combout\ : std_logic;
SIGNAL \u4|Mux263~66_combout\ : std_logic;
SIGNAL \u4|Mux262~0_combout\ : std_logic;
SIGNAL \u4|tijd_line[11][1]~regout\ : std_logic;
SIGNAL \u4|Mux263~67_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[11][1]~regout\ : std_logic;
SIGNAL \u4|maximale_line[11][1]~regout\ : std_logic;
SIGNAL \u4|Mux263~69_combout\ : std_logic;
SIGNAL \u4|Mux263~70_combout\ : std_logic;
SIGNAL \u4|Mux263~71_combout\ : std_logic;
SIGNAL \u4|Mux262~1_combout\ : std_logic;
SIGNAL \u4|RPM_line[6][1]~regout\ : std_logic;
SIGNAL \u4|RPM_line[7][1]~regout\ : std_logic;
SIGNAL \u4|tijd_line[7][1]~regout\ : std_logic;
SIGNAL \u4|Mux263~83_combout\ : std_logic;
SIGNAL \u4|Mux263~84_combout\ : std_logic;
SIGNAL \u4|Mux263~86_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[12][2]~regout\ : std_logic;
SIGNAL \u4|totale_omw_line[11][2]~regout\ : std_logic;
SIGNAL \u4|tijd_line[11][2]~regout\ : std_logic;
SIGNAL \u4|RPM_line[7][2]~regout\ : std_logic;
SIGNAL \u4|Mux263~110_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[14][3]~regout\ : std_logic;
SIGNAL \u4|Mux263~112_combout\ : std_logic;
SIGNAL \u4|Mux263~113_combout\ : std_logic;
SIGNAL \u4|Mux263~114_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[13][3]~regout\ : std_logic;
SIGNAL \u4|RPM_line[8][3]~regout\ : std_logic;
SIGNAL \u4|tijd_line[8][3]~regout\ : std_logic;
SIGNAL \u4|totale_omw_line[11][3]~regout\ : std_logic;
SIGNAL \u4|Mux263~127_combout\ : std_logic;
SIGNAL \u4|Mux263~129_combout\ : std_logic;
SIGNAL \u4|RPM_line[7][3]~regout\ : std_logic;
SIGNAL \u4|Mux263~131_combout\ : std_logic;
SIGNAL \u4|Mux259~7_combout\ : std_logic;
SIGNAL \u4|Mux259~8_combout\ : std_logic;
SIGNAL \u4|Mux259~9_combout\ : std_logic;
SIGNAL \u4|Mux258~7_combout\ : std_logic;
SIGNAL \u4|Mux258~8_combout\ : std_logic;
SIGNAL \u4|Mux263~134_combout\ : std_logic;
SIGNAL \u4|Mux263~135_combout\ : std_logic;
SIGNAL \u4|Mux263~136_combout\ : std_logic;
SIGNAL \u4|Mux263~137_combout\ : std_logic;
SIGNAL \u4|Mux263~138_combout\ : std_logic;
SIGNAL \u4|Mux257~2_combout\ : std_logic;
SIGNAL \u4|Mux263~139_combout\ : std_logic;
SIGNAL \u4|Mux263~140_combout\ : std_logic;
SIGNAL \u4|Mux257~3_combout\ : std_logic;
SIGNAL \u4|Mux257~4_combout\ : std_logic;
SIGNAL \u4|Mux257~5_combout\ : std_logic;
SIGNAL \u4|Mux257~6_combout\ : std_logic;
SIGNAL \u4|Mux257~7_combout\ : std_logic;
SIGNAL \u4|Mux257~8_combout\ : std_logic;
SIGNAL \u4|Mux257~9_combout\ : std_logic;
SIGNAL \u4|Mux257~10_combout\ : std_logic;
SIGNAL \u4|Mux257~11_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector57~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector57~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector59~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector59~1_combout\ : std_logic;
SIGNAL \u4|lcdm|return_state.reset~0_combout\ : std_logic;
SIGNAL \u4|lcdm|return_state.reset~1_combout\ : std_logic;
SIGNAL \u4|Selector4~0_combout\ : std_logic;
SIGNAL \u4|tijd_secbcd|U3bcd[1]~0_combout\ : std_logic;
SIGNAL \u4|tijd_secbcd|bcd_out[4]~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|U5bcd[2]~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|U5bcd[1]~1_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|U5bcd[1]~2_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|is_gt_4~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|is_gt_4~1_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|U2bcd[2]~1_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|Add6~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|bcd_out[8]~10_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|U5bcd[1]~2_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|Add6~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|bcd_out[8]~10_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|bcd_out[4]~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|bcd_out[4]~11_combout\ : std_logic;
SIGNAL \u4|tijd_secbcd|U3bcd[3]~3_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|bcd_out[1]~1_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|U0bcd[2]~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|U3bcd[3]~3_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|bcd_out[5]~2_combout\ : std_logic;
SIGNAL \u4|tijd_minbcd|bcd_out[1]~1_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|bcd_out[1]~12_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|bcd_out[1]~12_combout\ : std_logic;
SIGNAL \u4|tijd_secbcd|bcd_out[1]~1_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|bcd_out[5]~13_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|bcd_out[5]~13_combout\ : std_logic;
SIGNAL \u4|tijd_minbcd|U3bcd[3]~3_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|bcd_out[2]~14_combout\ : std_logic;
SIGNAL \u0|omwentel255[7]~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|Add6~1_combout\ : std_logic;
SIGNAL \u4|tijd_secbcd|bcd_out[2]~2_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|bcd_out[3]~5_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|bcd_out[7]~6_combout\ : std_logic;
SIGNAL \u4|tijd_minbcd|bcd_out[3]~3_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|bcd_out[7]~16_combout\ : std_logic;
SIGNAL \u7|Equal0~2_combout\ : std_logic;
SIGNAL \u7|Equal0~6_combout\ : std_logic;
SIGNAL \u0|omwentel255[7]~1_combout\ : std_logic;
SIGNAL \u0|omwentel255[7]~2_combout\ : std_logic;
SIGNAL \u0|Add1~20_combout\ : std_logic;
SIGNAL \u0|Add1~22_combout\ : std_logic;
SIGNAL \u7|ticks~1_combout\ : std_logic;
SIGNAL \u7|ticks~2_combout\ : std_logic;
SIGNAL \u4|Selector19~3_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr41~3_combout\ : std_logic;
SIGNAL \u4|Mux263~142_combout\ : std_logic;
SIGNAL \u4|Mux257~12_combout\ : std_logic;
SIGNAL \u4|Mux263~15_combout\ : std_logic;
SIGNAL \u4|Mux263~146_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|U2bcd[3]~3_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|is_gt_4~2_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|U3bcd[3]~3_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|is_gt_4~2_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|bcd_out[6]~7_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|bcd_out[6]~3_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|bcd_out[6]~4_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|bcd_out[6]~6_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|bcd_out[6]~7_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|bcd_out[6]~8_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|bcd_out[6]~9_combout\ : std_logic;
SIGNAL \u5|tix_int[2]~feeder_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[14][0]~feeder_combout\ : std_logic;
SIGNAL \LCD_DATA[7]~7\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \u4|lcdm|Selector26~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_3~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector24~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_1~regout\ : std_logic;
SIGNAL \u4|lcdm|WideOr41~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector52~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector43~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector43~1_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_e~regout\ : std_logic;
SIGNAL \u4|state.hold2~regout\ : std_logic;
SIGNAL \u4|Selector0~0_combout\ : std_logic;
SIGNAL \u4|state.reset~regout\ : std_logic;
SIGNAL \u4|Selector1~1_combout\ : std_logic;
SIGNAL \u4|Selector1~2_combout\ : std_logic;
SIGNAL \u4|state.write_char~regout\ : std_logic;
SIGNAL \u4|wr~regout\ : std_logic;
SIGNAL \u4|Selector3~0_combout\ : std_logic;
SIGNAL \u4|state.update~regout\ : std_logic;
SIGNAL \u4|Selector21~0_combout\ : std_logic;
SIGNAL \u4|Selector22~0_combout\ : std_logic;
SIGNAL \u4|Selector21~1_combout\ : std_logic;
SIGNAL \u4|Selector20~0_combout\ : std_logic;
SIGNAL \u4|Selector20~1_combout\ : std_logic;
SIGNAL \u4|drive~3_combout\ : std_logic;
SIGNAL \u4|Selector12~0_combout\ : std_logic;
SIGNAL \u4|state.hold~regout\ : std_logic;
SIGNAL \u4|Selector1~0_combout\ : std_logic;
SIGNAL \u4|Selector5~0_combout\ : std_logic;
SIGNAL \u4|state.update_linecount_wait~regout\ : std_logic;
SIGNAL \u4|WideOr7~combout\ : std_logic;
SIGNAL \u4|Selector15~0_combout\ : std_logic;
SIGNAL \u4|Selector14~0_combout\ : std_logic;
SIGNAL \u4|Selector16~0_combout\ : std_logic;
SIGNAL \u4|Add1~3\ : std_logic;
SIGNAL \u4|Add1~5\ : std_logic;
SIGNAL \u4|Add1~6_combout\ : std_logic;
SIGNAL \u4|Selector15~1_combout\ : std_logic;
SIGNAL \u4|Add1~7\ : std_logic;
SIGNAL \u4|Add1~8_combout\ : std_logic;
SIGNAL \u4|Selector14~1_combout\ : std_logic;
SIGNAL \u4|Selector14~2_combout\ : std_logic;
SIGNAL \u4|Mux258~2_combout\ : std_logic;
SIGNAL \u4|Equal1~0_combout\ : std_logic;
SIGNAL \u4|Mux58~0_combout\ : std_logic;
SIGNAL \u4|Selector19~2_combout\ : std_logic;
SIGNAL \u4|goto10~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \u4|goto10~regout\ : std_logic;
SIGNAL \u4|Selector22~1_combout\ : std_logic;
SIGNAL \u4|Selector22~2_combout\ : std_logic;
SIGNAL \u4|home~regout\ : std_logic;
SIGNAL \u4|goto30~0_combout\ : std_logic;
SIGNAL \u4|goto30~regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[0]~8_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector53~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector52~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector52~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector52~3_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_busy_flag_5~regout\ : std_logic;
SIGNAL \u4|lcdm|delay_counter[8]~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector48~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_busy_flag~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector49~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_busy_flag_1~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector44~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_e_1~feeder_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_e_1~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector45~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_e_2~regout\ : std_logic;
SIGNAL \u4|lcdm|WideOr33~0_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr33~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector40~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector40~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector32~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_9~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector33~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_10~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector99~3_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector42~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector38~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_wr~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector30~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_7~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector29~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_6~regout\ : std_logic;
SIGNAL \u4|lcdm|WideOr18~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector38~1_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_home~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector34~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_11~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector39~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_goto10~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector99~2_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr18~1_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr18~combout\ : std_logic;
SIGNAL \u4|lcdm|Selector20~4_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector50~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_busy_flag_2~regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_E~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector20~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector46~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_e_3~regout\ : std_logic;
SIGNAL \u4|lcdm|WideOr33~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector15~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector20~3_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector27~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_4~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector25~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_2~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector18~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector22~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.reset~regout\ : std_logic;
SIGNAL \u4|lcdm|delay_counter[20]~4_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector6~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector14~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector6~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector21~0_combout\ : std_logic;
SIGNAL \u4|lcdm|delay_counter[20]~8_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~1\ : std_logic;
SIGNAL \u4|lcdm|Add0~3\ : std_logic;
SIGNAL \u4|lcdm|Add0~4_combout\ : std_logic;
SIGNAL \u4|lcdm|delay_counter[20]~5_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector19~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~5\ : std_logic;
SIGNAL \u4|lcdm|Add0~6_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector18~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector18~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector18~3_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~7\ : std_logic;
SIGNAL \u4|lcdm|Add0~8_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector17~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector17~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector17~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Equal0~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector47~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_e_4~regout\ : std_logic;
SIGNAL \u4|lcdm|delay_counter[8]~3_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector5~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~9\ : std_logic;
SIGNAL \u4|lcdm|Add0~10_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector16~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector16~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~11\ : std_logic;
SIGNAL \u4|lcdm|Add0~13\ : std_logic;
SIGNAL \u4|lcdm|Add0~15\ : std_logic;
SIGNAL \u4|lcdm|Add0~17\ : std_logic;
SIGNAL \u4|lcdm|Add0~19\ : std_logic;
SIGNAL \u4|lcdm|Add0~20_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector11~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~21\ : std_logic;
SIGNAL \u4|lcdm|Add0~22_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector10~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~23\ : std_logic;
SIGNAL \u4|lcdm|Add0~24_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector14~0_combout\ : std_logic;
SIGNAL \u4|lcdm|delay_counter[8]~6_combout\ : std_logic;
SIGNAL \u4|lcdm|delay_counter[8]~7_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector9~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~25\ : std_logic;
SIGNAL \u4|lcdm|Add0~27\ : std_logic;
SIGNAL \u4|lcdm|Add0~29\ : std_logic;
SIGNAL \u4|lcdm|Add0~31\ : std_logic;
SIGNAL \u4|lcdm|Add0~32_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector5~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector5~3_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~26_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector8~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector8~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector1~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector6~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Equal0~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~14_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector14~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~12_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector15~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector15~3_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~16_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector13~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Equal0~4_combout\ : std_logic;
SIGNAL \u4|lcdm|Equal0~3_combout\ : std_logic;
SIGNAL \u4|lcdm|Equal0~5_combout\ : std_logic;
SIGNAL \u4|lcdm|Equal0~6_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector51~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_busy_flag_3~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector52~4_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_busy_flag_4~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector53~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector36~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.wait_for_command~regout\ : std_logic;
SIGNAL \u4|lcdm|busy~0_combout\ : std_logic;
SIGNAL \u4|lcdm|busy~regout\ : std_logic;
SIGNAL \u4|Add1~0_combout\ : std_logic;
SIGNAL \u4|Selector18~0_combout\ : std_logic;
SIGNAL \u4|Selector18~1_combout\ : std_logic;
SIGNAL \u4|Add1~1\ : std_logic;
SIGNAL \u4|Add1~2_combout\ : std_logic;
SIGNAL \u4|Selector17~0_combout\ : std_logic;
SIGNAL \u7|Add1~0_combout\ : std_logic;
SIGNAL \u7|Add2~0_combout\ : std_logic;
SIGNAL \u7|Add2~1\ : std_logic;
SIGNAL \u7|Add2~2_combout\ : std_logic;
SIGNAL \u7|Add2~3\ : std_logic;
SIGNAL \u7|Add2~4_combout\ : std_logic;
SIGNAL \u7|Add2~5\ : std_logic;
SIGNAL \u7|Add2~7\ : std_logic;
SIGNAL \u7|Add2~8_combout\ : std_logic;
SIGNAL \u7|ticks~4_combout\ : std_logic;
SIGNAL \u7|Add2~9\ : std_logic;
SIGNAL \u7|Add2~11\ : std_logic;
SIGNAL \u7|Add2~13\ : std_logic;
SIGNAL \u7|Add2~14_combout\ : std_logic;
SIGNAL \u7|Add2~15\ : std_logic;
SIGNAL \u7|Add2~16_combout\ : std_logic;
SIGNAL \u7|ticks~3_combout\ : std_logic;
SIGNAL \u7|Add2~17\ : std_logic;
SIGNAL \u7|Add2~19\ : std_logic;
SIGNAL \u7|Add2~21\ : std_logic;
SIGNAL \u7|Add2~22_combout\ : std_logic;
SIGNAL \u7|Add2~23\ : std_logic;
SIGNAL \u7|Add2~25\ : std_logic;
SIGNAL \u7|Add2~26_combout\ : std_logic;
SIGNAL \u7|ticks~0_combout\ : std_logic;
SIGNAL \u7|Add2~24_combout\ : std_logic;
SIGNAL \u7|Add2~27\ : std_logic;
SIGNAL \u7|Add2~28_combout\ : std_logic;
SIGNAL \u7|Equal0~5_combout\ : std_logic;
SIGNAL \u7|Add2~29\ : std_logic;
SIGNAL \u7|Add2~30_combout\ : std_logic;
SIGNAL \u7|Add2~31\ : std_logic;
SIGNAL \u7|Add2~32_combout\ : std_logic;
SIGNAL \u7|Add2~33\ : std_logic;
SIGNAL \u7|Add2~34_combout\ : std_logic;
SIGNAL \u7|Add2~35\ : std_logic;
SIGNAL \u7|Add2~36_combout\ : std_logic;
SIGNAL \u7|Add2~37\ : std_logic;
SIGNAL \u7|Add2~38_combout\ : std_logic;
SIGNAL \u7|Equal0~3_combout\ : std_logic;
SIGNAL \u7|Add2~39\ : std_logic;
SIGNAL \u7|Add2~40_combout\ : std_logic;
SIGNAL \u7|Add2~41\ : std_logic;
SIGNAL \u7|Add2~43\ : std_logic;
SIGNAL \u7|Add2~45\ : std_logic;
SIGNAL \u7|Add2~46_combout\ : std_logic;
SIGNAL \u7|Add2~47\ : std_logic;
SIGNAL \u7|Add2~49\ : std_logic;
SIGNAL \u7|Add2~50_combout\ : std_logic;
SIGNAL \u7|Add2~51\ : std_logic;
SIGNAL \u7|Add2~53\ : std_logic;
SIGNAL \u7|Add2~54_combout\ : std_logic;
SIGNAL \u7|Add2~48_combout\ : std_logic;
SIGNAL \u7|Add2~52_combout\ : std_logic;
SIGNAL \u7|Equal0~1_combout\ : std_logic;
SIGNAL \u7|Add2~55\ : std_logic;
SIGNAL \u7|Add2~57\ : std_logic;
SIGNAL \u7|Add2~58_combout\ : std_logic;
SIGNAL \u7|Add2~59\ : std_logic;
SIGNAL \u7|Add2~60_combout\ : std_logic;
SIGNAL \u7|Add2~61\ : std_logic;
SIGNAL \u7|Add2~62_combout\ : std_logic;
SIGNAL \u7|Add2~56_combout\ : std_logic;
SIGNAL \u7|Equal0~0_combout\ : std_logic;
SIGNAL \u7|Equal0~4_combout\ : std_logic;
SIGNAL \u7|Add2~6_combout\ : std_logic;
SIGNAL \u7|Equal0~8_combout\ : std_logic;
SIGNAL \u7|Add2~10_combout\ : std_logic;
SIGNAL \u7|Equal0~7_combout\ : std_logic;
SIGNAL \u7|Equal0~9_combout\ : std_logic;
SIGNAL \u7|Equal0~10_combout\ : std_logic;
SIGNAL \u4|tijd_line[11][0]~regout\ : std_logic;
SIGNAL \u0|count[0]~16_combout\ : std_logic;
SIGNAL \u0|count[6]~29\ : std_logic;
SIGNAL \u0|count[7]~30_combout\ : std_logic;
SIGNAL \u0|count[7]~31\ : std_logic;
SIGNAL \u0|count[8]~32_combout\ : std_logic;
SIGNAL \u0|count[3]~22_combout\ : std_logic;
SIGNAL \u0|LessThan0~0_combout\ : std_logic;
SIGNAL \u0|LessThan0~1_combout\ : std_logic;
SIGNAL \u0|LessThan0~2_combout\ : std_logic;
SIGNAL \u0|count[8]~33\ : std_logic;
SIGNAL \u0|count[9]~34_combout\ : std_logic;
SIGNAL \u0|count[9]~35\ : std_logic;
SIGNAL \u0|count[10]~36_combout\ : std_logic;
SIGNAL \u0|LessThan0~3_combout\ : std_logic;
SIGNAL \u0|Add3~5\ : std_logic;
SIGNAL \u0|Add3~7\ : std_logic;
SIGNAL \u0|Add3~9\ : std_logic;
SIGNAL \u0|Add3~11\ : std_logic;
SIGNAL \u0|Add3~12_combout\ : std_logic;
SIGNAL \u0|wait_time[6]~7_combout\ : std_logic;
SIGNAL \u0|Add3~13\ : std_logic;
SIGNAL \u0|Add3~14_combout\ : std_logic;
SIGNAL \u0|wait_time[7]~6_combout\ : std_logic;
SIGNAL \u0|Add3~15\ : std_logic;
SIGNAL \u0|Add3~17\ : std_logic;
SIGNAL \u0|Add3~18_combout\ : std_logic;
SIGNAL \u0|wait_time[9]~4_combout\ : std_logic;
SIGNAL \u0|Add3~19\ : std_logic;
SIGNAL \u0|Add3~20_combout\ : std_logic;
SIGNAL \u0|wait_time[10]~3_combout\ : std_logic;
SIGNAL \u0|Equal2~0_combout\ : std_logic;
SIGNAL \hall_sens~combout\ : std_logic;
SIGNAL \u0|wait_time[10]~0_combout\ : std_logic;
SIGNAL \u0|wait_time[0]~1_combout\ : std_logic;
SIGNAL \u0|wait_time[0]~9_combout\ : std_logic;
SIGNAL \u0|Add3~1\ : std_logic;
SIGNAL \u0|Add3~2_combout\ : std_logic;
SIGNAL \u0|wait_time[10]~2_combout\ : std_logic;
SIGNAL \u0|Add3~3\ : std_logic;
SIGNAL \u0|Add3~4_combout\ : std_logic;
SIGNAL \u0|Equal2~2_combout\ : std_logic;
SIGNAL \u0|Add3~6_combout\ : std_logic;
SIGNAL \u0|Add3~8_combout\ : std_logic;
SIGNAL \u0|wait_time[4]~8_combout\ : std_logic;
SIGNAL \u0|Equal2~1_combout\ : std_logic;
SIGNAL \u0|process_0~0_combout\ : std_logic;
SIGNAL \u0|count[10]~37\ : std_logic;
SIGNAL \u0|count[11]~38_combout\ : std_logic;
SIGNAL \u0|count[11]~39\ : std_logic;
SIGNAL \u0|count[12]~41\ : std_logic;
SIGNAL \u0|count[13]~42_combout\ : std_logic;
SIGNAL \u0|count[13]~43\ : std_logic;
SIGNAL \u0|count[14]~44_combout\ : std_logic;
SIGNAL \u0|count[14]~45\ : std_logic;
SIGNAL \u0|count[15]~46_combout\ : std_logic;
SIGNAL \u0|tix_mem~0_combout\ : std_logic;
SIGNAL \u0|count[0]~17\ : std_logic;
SIGNAL \u0|count[1]~18_combout\ : std_logic;
SIGNAL \u0|count[1]~19\ : std_logic;
SIGNAL \u0|count[2]~20_combout\ : std_logic;
SIGNAL \u0|count[2]~21\ : std_logic;
SIGNAL \u0|count[3]~23\ : std_logic;
SIGNAL \u0|count[4]~24_combout\ : std_logic;
SIGNAL \u0|count[4]~25\ : std_logic;
SIGNAL \u0|count[5]~27\ : std_logic;
SIGNAL \u0|count[6]~28_combout\ : std_logic;
SIGNAL \u5|tix_int[6]~feeder_combout\ : std_logic;
SIGNAL \u0|calc~regout\ : std_logic;
SIGNAL \u0|count[5]~26_combout\ : std_logic;
SIGNAL \u5|rpm[0]~2_combout\ : std_logic;
SIGNAL \u5|rpm[0]~3_combout\ : std_logic;
SIGNAL \u0|count[12]~40_combout\ : std_logic;
SIGNAL \u0|tix_mem[13]~feeder_combout\ : std_logic;
SIGNAL \u5|rpm[0]~1_combout\ : std_logic;
SIGNAL \u5|rpm[0]~4_combout\ : std_logic;
SIGNAL \u0|LessThan0~5_combout\ : std_logic;
SIGNAL \u0|tix_mem~1_combout\ : std_logic;
SIGNAL \u0|tix_mem[4]~feeder_combout\ : std_logic;
SIGNAL \u5|LessThan0~1_combout\ : std_logic;
SIGNAL \u5|LessThan0~3_combout\ : std_logic;
SIGNAL \u5|rpm[0]~0_combout\ : std_logic;
SIGNAL \u5|rpm[0]~5_combout\ : std_logic;
SIGNAL \u5|Add1~0_combout\ : std_logic;
SIGNAL \u5|Add1~2_combout\ : std_logic;
SIGNAL \u5|rpm[0]~6_combout\ : std_logic;
SIGNAL \u5|x[0]~20_combout\ : std_logic;
SIGNAL \u5|stop~regout\ : std_logic;
SIGNAL \u5|stop~0_combout\ : std_logic;
SIGNAL \u5|x[0]~21\ : std_logic;
SIGNAL \u5|x[1]~22_combout\ : std_logic;
SIGNAL \u5|x[1]~23\ : std_logic;
SIGNAL \u5|x[2]~24_combout\ : std_logic;
SIGNAL \u5|x[2]~25\ : std_logic;
SIGNAL \u5|x[3]~26_combout\ : std_logic;
SIGNAL \u5|x[3]~27\ : std_logic;
SIGNAL \u5|x[4]~28_combout\ : std_logic;
SIGNAL \u5|x[4]~29\ : std_logic;
SIGNAL \u5|x[5]~31\ : std_logic;
SIGNAL \u5|x[6]~33\ : std_logic;
SIGNAL \u5|x[7]~34_combout\ : std_logic;
SIGNAL \u5|x[7]~35\ : std_logic;
SIGNAL \u5|x[8]~36_combout\ : std_logic;
SIGNAL \u5|x[8]~37\ : std_logic;
SIGNAL \u5|x[9]~38_combout\ : std_logic;
SIGNAL \u5|x[9]~39\ : std_logic;
SIGNAL \u5|x[10]~40_combout\ : std_logic;
SIGNAL \u5|x[10]~41\ : std_logic;
SIGNAL \u5|x[11]~42_combout\ : std_logic;
SIGNAL \u5|x[11]~43\ : std_logic;
SIGNAL \u5|x[12]~45\ : std_logic;
SIGNAL \u5|x[13]~47\ : std_logic;
SIGNAL \u5|x[14]~48_combout\ : std_logic;
SIGNAL \u5|x[14]~49\ : std_logic;
SIGNAL \u5|x[15]~50_combout\ : std_logic;
SIGNAL \u5|x[15]~51\ : std_logic;
SIGNAL \u5|x[16]~53\ : std_logic;
SIGNAL \u5|x[17]~54_combout\ : std_logic;
SIGNAL \u5|x[17]~55\ : std_logic;
SIGNAL \u5|x[18]~57\ : std_logic;
SIGNAL \u5|x[19]~58_combout\ : std_logic;
SIGNAL \u5|x[16]~52_combout\ : std_logic;
SIGNAL \u5|x[12]~44_combout\ : std_logic;
SIGNAL \u5|x[6]~32_combout\ : std_logic;
SIGNAL \u5|x[5]~30_combout\ : std_logic;
SIGNAL \u0|tix_mem[1]~feeder_combout\ : std_logic;
SIGNAL \u5|tix_int[1]~feeder_combout\ : std_logic;
SIGNAL \u5|tix_int[0]~0_combout\ : std_logic;
SIGNAL \u5|LessThan2~1_cout\ : std_logic;
SIGNAL \u5|LessThan2~3_cout\ : std_logic;
SIGNAL \u5|LessThan2~5_cout\ : std_logic;
SIGNAL \u5|LessThan2~7_cout\ : std_logic;
SIGNAL \u5|LessThan2~9_cout\ : std_logic;
SIGNAL \u5|LessThan2~11_cout\ : std_logic;
SIGNAL \u5|LessThan2~13_cout\ : std_logic;
SIGNAL \u5|LessThan2~15_cout\ : std_logic;
SIGNAL \u5|LessThan2~17_cout\ : std_logic;
SIGNAL \u5|LessThan2~19_cout\ : std_logic;
SIGNAL \u5|LessThan2~21_cout\ : std_logic;
SIGNAL \u5|LessThan2~23_cout\ : std_logic;
SIGNAL \u5|LessThan2~25_cout\ : std_logic;
SIGNAL \u5|LessThan2~27_cout\ : std_logic;
SIGNAL \u5|LessThan2~29_cout\ : std_logic;
SIGNAL \u5|LessThan2~30_combout\ : std_logic;
SIGNAL \u5|LessThan2~33_combout\ : std_logic;
SIGNAL \u5|rpm[0]~7_combout\ : std_logic;
SIGNAL \u5|Add1~1\ : std_logic;
SIGNAL \u5|Add1~3_combout\ : std_logic;
SIGNAL \u5|Add1~20_combout\ : std_logic;
SIGNAL \u5|Add1~4\ : std_logic;
SIGNAL \u5|Add1~6\ : std_logic;
SIGNAL \u5|Add1~8\ : std_logic;
SIGNAL \u5|Add1~9_combout\ : std_logic;
SIGNAL \u5|Add1~11_combout\ : std_logic;
SIGNAL \u5|Add1~10\ : std_logic;
SIGNAL \u5|Add1~13\ : std_logic;
SIGNAL \u5|Add1~14_combout\ : std_logic;
SIGNAL \u5|rpm~8_combout\ : std_logic;
SIGNAL \u5|rpm~10_combout\ : std_logic;
SIGNAL \u5|Add1~15\ : std_logic;
SIGNAL \u5|Add1~16_combout\ : std_logic;
SIGNAL \u5|rpm~9_combout\ : std_logic;
SIGNAL \u5|rpm_mem[3]~0_combout\ : std_logic;
SIGNAL \u5|Add1~12_combout\ : std_logic;
SIGNAL \u5|Add1~18_combout\ : std_logic;
SIGNAL \u5|Add1~5_combout\ : std_logic;
SIGNAL \u5|Add1~19_combout\ : std_logic;
SIGNAL \u6|LessThan0~1_cout\ : std_logic;
SIGNAL \u6|LessThan0~3_cout\ : std_logic;
SIGNAL \u6|LessThan0~5_cout\ : std_logic;
SIGNAL \u6|LessThan0~7_cout\ : std_logic;
SIGNAL \u6|LessThan0~9_cout\ : std_logic;
SIGNAL \u6|LessThan0~11_cout\ : std_logic;
SIGNAL \u6|LessThan0~13_cout\ : std_logic;
SIGNAL \u6|LessThan0~14_combout\ : std_logic;
SIGNAL \u6|LessThan0~14clkctrl_outclk\ : std_logic;
SIGNAL \u4|maximale2bcd|U1bcd[1]~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|U1bcd[0]~2_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|U1bcd[2]~1_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|U2bcd[1]~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|U2bcd[2]~1_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|U3bcd[1]~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|U2bcd[0]~2_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|U3bcd[0]~2_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|U3bcd[2]~1_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|bcd_out[4]~11_combout\ : std_logic;
SIGNAL \u4|maximale_line[11][0]~regout\ : std_logic;
SIGNAL \u4|aline~8_combout\ : std_logic;
SIGNAL \u4|Mux263~34_combout\ : std_logic;
SIGNAL \u4|Mux263~36_combout\ : std_logic;
SIGNAL \u4|Mux263~37_combout\ : std_logic;
SIGNAL \u4|Mux263~25_combout\ : std_logic;
SIGNAL \u4|Mux263~26_combout\ : std_logic;
SIGNAL \u4|maximale_line[12][0]~feeder_combout\ : std_logic;
SIGNAL \u4|maximale_line[12][0]~regout\ : std_logic;
SIGNAL \u4|Mux263~29_combout\ : std_logic;
SIGNAL \u4|Mux263~30_combout\ : std_logic;
SIGNAL \u7|Add0~0_combout\ : std_logic;
SIGNAL \u7|Add1~1\ : std_logic;
SIGNAL \u7|Add1~2_combout\ : std_logic;
SIGNAL \u7|Add1~3\ : std_logic;
SIGNAL \u7|Add1~5\ : std_logic;
SIGNAL \u7|Add1~7\ : std_logic;
SIGNAL \u7|Add1~9\ : std_logic;
SIGNAL \u7|Add1~10_combout\ : std_logic;
SIGNAL \u7|seconds_int~2_combout\ : std_logic;
SIGNAL \u7|Add1~4_combout\ : std_logic;
SIGNAL \u7|seconds_int~0_combout\ : std_logic;
SIGNAL \u7|Add1~8_combout\ : std_logic;
SIGNAL \u7|seconds_int~1_combout\ : std_logic;
SIGNAL \u7|Equal1~0_combout\ : std_logic;
SIGNAL \u7|minutes_int[1]~0_combout\ : std_logic;
SIGNAL \u4|tijd_line[8][0]~regout\ : std_logic;
SIGNAL \u4|Mux263~27_combout\ : std_logic;
SIGNAL \u4|Mux263~28_combout\ : std_logic;
SIGNAL \u4|Mux263~31_combout\ : std_logic;
SIGNAL \u4|Mux263~32_combout\ : std_logic;
SIGNAL \u4|Mux263~33_combout\ : std_logic;
SIGNAL \u4|Mux263~38_combout\ : std_logic;
SIGNAL \u4|Mux263~45_combout\ : std_logic;
SIGNAL \u4|RPM_line[1][6]~feeder_combout\ : std_logic;
SIGNAL \u4|RPM_line[1][6]~regout\ : std_logic;
SIGNAL \u4|Mux263~43_combout\ : std_logic;
SIGNAL \u2|U1bcd[0]~0_combout\ : std_logic;
SIGNAL \u2|U1bcd[2]~1_combout\ : std_logic;
SIGNAL \u5|Add1~7_combout\ : std_logic;
SIGNAL \u5|rpm~11_combout\ : std_logic;
SIGNAL \u2|U2bcd[3]~3_combout\ : std_logic;
SIGNAL \u2|U5bcd[2]~0_combout\ : std_logic;
SIGNAL \u2|U0bcd[2]~0_combout\ : std_logic;
SIGNAL \u2|is_gt_4~0_combout\ : std_logic;
SIGNAL \u2|is_gt_4~1_combout\ : std_logic;
SIGNAL \u2|U1bcd[1]~2_combout\ : std_logic;
SIGNAL \u2|is_gt_4~2_combout\ : std_logic;
SIGNAL \u2|is_gt_4~3_combout\ : std_logic;
SIGNAL \u2|is_gt_4~4_combout\ : std_logic;
SIGNAL \u2|U6bcd[3]~6_combout\ : std_logic;
SIGNAL \u4|RPM_line[6][0]~0_combout\ : std_logic;
SIGNAL \u4|RPM_line[6][0]~regout\ : std_logic;
SIGNAL \u4|aline~11_combout\ : std_logic;
SIGNAL \u4|goto20~0_combout\ : std_logic;
SIGNAL \u4|Mux263~42_combout\ : std_logic;
SIGNAL \u4|Mux263~44_combout\ : std_logic;
SIGNAL \u4|Mux263~46_combout\ : std_logic;
SIGNAL \u4|aline~10_combout\ : std_logic;
SIGNAL \u4|Mux263~145_combout\ : std_logic;
SIGNAL \u4|Mux263~39_combout\ : std_logic;
SIGNAL \u4|Mux263~40_combout\ : std_logic;
SIGNAL \u4|Mux263~48_combout\ : std_logic;
SIGNAL \u4|Mux263~47_combout\ : std_logic;
SIGNAL \u7|Add0~1\ : std_logic;
SIGNAL \u7|Add0~3\ : std_logic;
SIGNAL \u7|Add0~4_combout\ : std_logic;
SIGNAL \u7|minutes_int~1_combout\ : std_logic;
SIGNAL \u7|Add0~5\ : std_logic;
SIGNAL \u7|Add0~6_combout\ : std_logic;
SIGNAL \u7|minutes_int~4_combout\ : std_logic;
SIGNAL \u7|Equal2~0_combout\ : std_logic;
SIGNAL \u7|Add0~7\ : std_logic;
SIGNAL \u7|Add0~8_combout\ : std_logic;
SIGNAL \u7|minutes_int~2_combout\ : std_logic;
SIGNAL \u7|Add0~9\ : std_logic;
SIGNAL \u7|Add0~10_combout\ : std_logic;
SIGNAL \u7|minutes_int~3_combout\ : std_logic;
SIGNAL \u4|tijd_minbcd|U3bcd[0]~2_combout\ : std_logic;
SIGNAL \u4|tijd_minbcd|U3bcd[1]~0_combout\ : std_logic;
SIGNAL \u4|tijd_minbcd|U3bcd[2]~1_combout\ : std_logic;
SIGNAL \u4|tijd_minbcd|bcd_out[4]~0_combout\ : std_logic;
SIGNAL \u4|tijd_line[7][0]~regout\ : std_logic;
SIGNAL \u2|U2bcd[1]~2_combout\ : std_logic;
SIGNAL \u2|U2bcd[0]~0_combout\ : std_logic;
SIGNAL \u2|U2bcd[2]~1_combout\ : std_logic;
SIGNAL \u2|U3bcd[0]~0_combout\ : std_logic;
SIGNAL \u2|U3bcd[1]~2_combout\ : std_logic;
SIGNAL \u2|U3bcd[2]~1_combout\ : std_logic;
SIGNAL \u2|U4bcd[3]~3_combout\ : std_logic;
SIGNAL \u4|RPM_line[7][0]~regout\ : std_logic;
SIGNAL \u4|Mux263~49_combout\ : std_logic;
SIGNAL \u4|Mux263~141_combout\ : std_logic;
SIGNAL \u4|Mux263~50_combout\ : std_logic;
SIGNAL \u4|Mux263~51_combout\ : std_logic;
SIGNAL \u4|Mux263~52_combout\ : std_logic;
SIGNAL \u4|Mux263~53_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector87~0_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr3~0_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr3~1_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr3~combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[0]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|Selector88~0_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr17~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector88~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector88~2_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[0]~en_regout\ : std_logic;
SIGNAL \u4|Mux263~72_combout\ : std_logic;
SIGNAL \u4|Mux263~73_combout\ : std_logic;
SIGNAL \u4|Mux263~74_combout\ : std_logic;
SIGNAL \u4|Mux263~80_combout\ : std_logic;
SIGNAL \u4|Mux263~81_combout\ : std_logic;
SIGNAL \u4|Mux263~82_combout\ : std_logic;
SIGNAL \u4|Mux263~75_combout\ : std_logic;
SIGNAL \u4|Mux263~76_combout\ : std_logic;
SIGNAL \u4|Mux263~77_combout\ : std_logic;
SIGNAL \u4|Mux263~78_combout\ : std_logic;
SIGNAL \u4|Mux263~79_combout\ : std_logic;
SIGNAL \u4|Mux262~2_combout\ : std_logic;
SIGNAL \u4|Mux262~3_combout\ : std_logic;
SIGNAL \u4|Mux262~4_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector90~0_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[1]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[1]~en_regout\ : std_logic;
SIGNAL \u4|Mux263~18_combout\ : std_logic;
SIGNAL \u4|Mux263~68_combout\ : std_logic;
SIGNAL \u0|Add0~0_combout\ : std_logic;
SIGNAL \u0|Equal0~1_combout\ : std_logic;
SIGNAL \u0|omwentel99~0_combout\ : std_logic;
SIGNAL \u0|Add0~1\ : std_logic;
SIGNAL \u0|Add0~2_combout\ : std_logic;
SIGNAL \u0|omwentel99~3_combout\ : std_logic;
SIGNAL \u0|Add0~3\ : std_logic;
SIGNAL \u0|Add0~4_combout\ : std_logic;
SIGNAL \u0|Add0~5\ : std_logic;
SIGNAL \u0|Add0~6_combout\ : std_logic;
SIGNAL \u0|Add0~7\ : std_logic;
SIGNAL \u0|Add0~8_combout\ : std_logic;
SIGNAL \u0|Add0~9\ : std_logic;
SIGNAL \u0|Add0~10_combout\ : std_logic;
SIGNAL \u0|Equal0~0_combout\ : std_logic;
SIGNAL \u0|omwentel99~1_combout\ : std_logic;
SIGNAL \u0|Add0~11\ : std_logic;
SIGNAL \u0|Add0~12_combout\ : std_logic;
SIGNAL \u0|Equal0~2_combout\ : std_logic;
SIGNAL \u0|omwentel99~2_combout\ : std_logic;
SIGNAL \u0|Add0~13\ : std_logic;
SIGNAL \u0|Add0~14_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|U1bcd[0]~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|U1bcd[1]~2_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|U1bcd[2]~1_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|U2bcd[1]~2_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|U2bcd[0]~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|U2bcd[2]~1_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|U3bcd[1]~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|U3bcd[2]~1_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|U3bcd[0]~2_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|bcd_out[2]~3_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[14][2]~regout\ : std_logic;
SIGNAL \u7|Add1~6_combout\ : std_logic;
SIGNAL \u7|seconds_int~3_combout\ : std_logic;
SIGNAL \u4|tijd_secbcd|is_gt_4~0_combout\ : std_logic;
SIGNAL \u4|tijd_line[10][2]~regout\ : std_logic;
SIGNAL \u4|Mux263~87_combout\ : std_logic;
SIGNAL \u4|Mux263~88_combout\ : std_logic;
SIGNAL \u4|Mux263~89_combout\ : std_logic;
SIGNAL \u4|drive~2_combout\ : std_logic;
SIGNAL \u4|Mux263~35_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|bcd_out[6]~6_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|bcd_out[6]~4_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|bcd_out[6]~3_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|bcd_out[6]~8_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|bcd_out[6]~9_combout\ : std_logic;
SIGNAL \u4|maximale_line[11][2]~regout\ : std_logic;
SIGNAL \u4|Mux263~100_combout\ : std_logic;
SIGNAL \u4|Mux263~101_combout\ : std_logic;
SIGNAL \u4|Mux263~102_combout\ : std_logic;
SIGNAL \u4|aline~9_combout\ : std_logic;
SIGNAL \u2|U4bcd[1]~1_combout\ : std_logic;
SIGNAL \u4|RPM_line[8][2]~regout\ : std_logic;
SIGNAL \u4|tijd_minbcd|bcd_out[2]~2_combout\ : std_logic;
SIGNAL \u4|tijd_line[8][2]~regout\ : std_logic;
SIGNAL \u4|Mux263~96_combout\ : std_logic;
SIGNAL \u4|aline~13_combout\ : std_logic;
SIGNAL \u4|aline~12_combout\ : std_logic;
SIGNAL \u4|Mux263~97_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|bcd_out[2]~14_combout\ : std_logic;
SIGNAL \u4|maximale_line[12][2]~regout\ : std_logic;
SIGNAL \u4|Mux263~94_combout\ : std_logic;
SIGNAL \u4|Mux58~1_combout\ : std_logic;
SIGNAL \u4|Mux263~93_combout\ : std_logic;
SIGNAL \u4|Mux263~95_combout\ : std_logic;
SIGNAL \u4|Mux263~98_combout\ : std_logic;
SIGNAL \u4|Mux263~90_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|U1bcd[3]~3_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|U2bcd[3]~3_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|U5bcd[1]~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|U5bcd[0]~1_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|U5bcd[0]~2_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|U5bcd[2]~3_combout\ : std_logic;
SIGNAL \u4|totale_omw_1bcd|bcd_out[6]~4_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[13][2]~regout\ : std_logic;
SIGNAL \u4|Mux263~91_combout\ : std_logic;
SIGNAL \u4|Mux263~92_combout\ : std_logic;
SIGNAL \u4|Mux261~0_combout\ : std_logic;
SIGNAL \u4|Mux261~1_combout\ : std_logic;
SIGNAL \u4|Mux263~104_combout\ : std_logic;
SIGNAL \u4|Mux263~105_combout\ : std_logic;
SIGNAL \u4|Mux261~2_combout\ : std_logic;
SIGNAL \u4|aline~14_combout\ : std_logic;
SIGNAL \u4|Mux263~143_combout\ : std_logic;
SIGNAL \u4|Mux263~103_combout\ : std_logic;
SIGNAL \u4|Mux263~108_combout\ : std_logic;
SIGNAL \u4|tijd_minbcd|is_gt_4~0_combout\ : std_logic;
SIGNAL \u4|tijd_line[7][2]~regout\ : std_logic;
SIGNAL \u4|Mux263~106_combout\ : std_logic;
SIGNAL \u4|Mux263~107_combout\ : std_logic;
SIGNAL \u4|Mux263~109_combout\ : std_logic;
SIGNAL \u4|Mux263~111_combout\ : std_logic;
SIGNAL \u4|Mux261~3_combout\ : std_logic;
SIGNAL \u4|Mux261~4_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector96~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector93~0_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[2]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[2]~en_regout\ : std_logic;
SIGNAL \u4|lcdm|Selector31~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_8~regout\ : std_logic;
SIGNAL \u4|Mux263~85_combout\ : std_logic;
SIGNAL \u4|Mux263~126_combout\ : std_logic;
SIGNAL \u4|Mux263~128_combout\ : std_logic;
SIGNAL \u4|Mux263~144_combout\ : std_logic;
SIGNAL \u4|Mux263~130_combout\ : std_logic;
SIGNAL \u4|Mux260~2_combout\ : std_logic;
SIGNAL \u4|Mux263~22_combout\ : std_logic;
SIGNAL \u4|Mux263~132_combout\ : std_logic;
SIGNAL \u4|Mux263~133_combout\ : std_logic;
SIGNAL \u4|Mux260~3_combout\ : std_logic;
SIGNAL \u4|Mux263~99_combout\ : std_logic;
SIGNAL \u4|tijd_secbcd|U3bcd[0]~2_combout\ : std_logic;
SIGNAL \u4|tijd_secbcd|U3bcd[2]~1_combout\ : std_logic;
SIGNAL \u4|tijd_secbcd|bcd_out[3]~3_combout\ : std_logic;
SIGNAL \u4|tijd_line[11][3]~regout\ : std_logic;
SIGNAL \u4|maximale2bcd|U5bcd[1]~1_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|U2bcd[3]~3_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|U5bcd[2]~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|is_gt_4~0_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|is_gt_4~1_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|U3bcd[3]~3_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|Add6~1_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|bcd_out[7]~16_combout\ : std_logic;
SIGNAL \u4|maximale_line[11][3]~regout\ : std_logic;
SIGNAL \u4|Mux263~123_combout\ : std_logic;
SIGNAL \u4|Mux263~124_combout\ : std_logic;
SIGNAL \u4|Mux263~125_combout\ : std_logic;
SIGNAL \u4|Mux263~64_combout\ : std_logic;
SIGNAL \u4|Mux263~62_combout\ : std_logic;
SIGNAL \u4|maximale2bcd|bcd_out[3]~15_combout\ : std_logic;
SIGNAL \u4|maximale_line[12][3]~regout\ : std_logic;
SIGNAL \u0|omwentel255[7]~3_combout\ : std_logic;
SIGNAL \u0|omwentel255[7]~3clkctrl_outclk\ : std_logic;
SIGNAL \u0|Add1~1\ : std_logic;
SIGNAL \u0|Add1~2_combout\ : std_logic;
SIGNAL \u0|Add1~23_combout\ : std_logic;
SIGNAL \u0|Add1~3\ : std_logic;
SIGNAL \u0|Add1~4_combout\ : std_logic;
SIGNAL \u0|Add1~21_combout\ : std_logic;
SIGNAL \u0|Add1~5\ : std_logic;
SIGNAL \u0|Add1~7\ : std_logic;
SIGNAL \u0|Add1~8_combout\ : std_logic;
SIGNAL \u0|Add1~17_combout\ : std_logic;
SIGNAL \u0|Add1~9\ : std_logic;
SIGNAL \u0|Add1~11\ : std_logic;
SIGNAL \u0|Add1~12_combout\ : std_logic;
SIGNAL \u0|Add1~18_combout\ : std_logic;
SIGNAL \u0|Add1~13\ : std_logic;
SIGNAL \u0|Add1~14_combout\ : std_logic;
SIGNAL \u0|Add1~16_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|U1bcd[1]~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|U1bcd[2]~1_combout\ : std_logic;
SIGNAL \u0|Add1~10_combout\ : std_logic;
SIGNAL \u0|Add1~19_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|U1bcd[0]~2_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|U2bcd[0]~2_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|U2bcd[1]~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|U3bcd[0]~2_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|U3bcd[1]~0_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|U3bcd[2]~1_combout\ : std_logic;
SIGNAL \u4|totale_omw_2bcd|bcd_out[3]~15_combout\ : std_logic;
SIGNAL \u4|totale_omw_line[12][3]~regout\ : std_logic;
SIGNAL \u4|Mux263~120_combout\ : std_logic;
SIGNAL \u4|Mux263~121_combout\ : std_logic;
SIGNAL \u4|Mux263~118_combout\ : std_logic;
SIGNAL \u4|Mux263~59_combout\ : std_logic;
SIGNAL \u4|Mux263~119_combout\ : std_logic;
SIGNAL \u4|Mux263~122_combout\ : std_logic;
SIGNAL \u4|Mux263~115_combout\ : std_logic;
SIGNAL \u4|Mux263~116_combout\ : std_logic;
SIGNAL \u4|Mux263~117_combout\ : std_logic;
SIGNAL \u4|Mux260~0_combout\ : std_logic;
SIGNAL \u4|Mux260~1_combout\ : std_logic;
SIGNAL \u4|Mux260~4_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector96~1_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[3]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[3]~en_regout\ : std_logic;
SIGNAL \u4|Mux259~4_combout\ : std_logic;
SIGNAL \u4|Mux259~3_combout\ : std_logic;
SIGNAL \u4|Mux259~5_combout\ : std_logic;
SIGNAL \u4|aline~25_combout\ : std_logic;
SIGNAL \u4|aline~28_combout\ : std_logic;
SIGNAL \u4|aline~19_combout\ : std_logic;
SIGNAL \u4|aline~20_combout\ : std_logic;
SIGNAL \u4|aline~21_combout\ : std_logic;
SIGNAL \u4|aline~22_combout\ : std_logic;
SIGNAL \u4|aline~23_combout\ : std_logic;
SIGNAL \u4|aline~24_combout\ : std_logic;
SIGNAL \u4|Mux259~1_combout\ : std_logic;
SIGNAL \u4|Mux259~2_combout\ : std_logic;
SIGNAL \u4|Mux259~6_combout\ : std_logic;
SIGNAL \u4|aline~17_combout\ : std_logic;
SIGNAL \u4|aline~27_combout\ : std_logic;
SIGNAL \u4|aline~16_combout\ : std_logic;
SIGNAL \u4|aline~26_combout\ : std_logic;
SIGNAL \u4|Mux259~0_combout\ : std_logic;
SIGNAL \u4|aline~15_combout\ : std_logic;
SIGNAL \u4|aline~18_combout\ : std_logic;
SIGNAL \u4|Mux259~11_combout\ : std_logic;
SIGNAL \u4|Mux259~12_combout\ : std_logic;
SIGNAL \u4|Mux259~10_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector99~5_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector99~4_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[4]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[4]~en_regout\ : std_logic;
SIGNAL \u4|Mux258~6_combout\ : std_logic;
SIGNAL \u4|Mux258~3_combout\ : std_logic;
SIGNAL \u4|Mux258~4_combout\ : std_logic;
SIGNAL \u4|Mux258~10_combout\ : std_logic;
SIGNAL \u4|Mux258~5_combout\ : std_logic;
SIGNAL \u4|Mux258~9_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector102~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector41~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector41~1_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_goto30~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector102~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector102~2_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[5]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[5]~en_regout\ : std_logic;
SIGNAL \u4|lcdm|Selector105~0_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[6]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[6]~en_regout\ : std_logic;
SIGNAL \u4|lcdm|Selector40~2_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_goto20~regout\ : std_logic;
SIGNAL \u4|lcdm|WideOr2~0_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[7]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[7]~en_regout\ : std_logic;
SIGNAL \u2|U4bcd[0]~0_combout\ : std_logic;
SIGNAL \u2|U4bcd[2]~2_combout\ : std_logic;
SIGNAL \u2|Mux6~0_combout\ : std_logic;
SIGNAL \u2|Mux5~0_combout\ : std_logic;
SIGNAL \u2|Mux4~0_combout\ : std_logic;
SIGNAL \u2|Mux3~0_combout\ : std_logic;
SIGNAL \u2|Mux2~0_combout\ : std_logic;
SIGNAL \u2|Mux1~0_combout\ : std_logic;
SIGNAL \u2|Mux0~0_combout\ : std_logic;
SIGNAL \u2|Mux13~0_combout\ : std_logic;
SIGNAL \u2|U6bcd[1]~2_combout\ : std_logic;
SIGNAL \u2|U6bcd[1]~3_combout\ : std_logic;
SIGNAL \u2|Mux13~1_combout\ : std_logic;
SIGNAL \u2|is_gt_4~5_combout\ : std_logic;
SIGNAL \u2|U6bcd[2]~1_combout\ : std_logic;
SIGNAL \u2|Mux13~2_combout\ : std_logic;
SIGNAL \u2|Add6~0_combout\ : std_logic;
SIGNAL \u2|Mux12~0_combout\ : std_logic;
SIGNAL \u2|Mux12~1_combout\ : std_logic;
SIGNAL \u2|U6bcd[1]~5_combout\ : std_logic;
SIGNAL \u2|U6bcd[0]~4_combout\ : std_logic;
SIGNAL \u2|Mux11~0_combout\ : std_logic;
SIGNAL \u2|Mux10~0_combout\ : std_logic;
SIGNAL \u2|Mux9~0_combout\ : std_logic;
SIGNAL \u2|Mux8~0_combout\ : std_logic;
SIGNAL \u2|Mux7~0_combout\ : std_logic;
SIGNAL \u2|Mux15~0_combout\ : std_logic;
SIGNAL \u2|Mux15~1_combout\ : std_logic;
SIGNAL \u2|Mux15~2_combout\ : std_logic;
SIGNAL \u1|Add0~7\ : std_logic;
SIGNAL \u1|Add0~9\ : std_logic;
SIGNAL \u1|Add0~10_combout\ : std_logic;
SIGNAL \u1|Add0~11\ : std_logic;
SIGNAL \u1|Add0~12_combout\ : std_logic;
SIGNAL \u1|count~3_combout\ : std_logic;
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
SIGNAL \u1|Add0~20_combout\ : std_logic;
SIGNAL \u1|Equal0~0_combout\ : std_logic;
SIGNAL \u1|Add0~0_combout\ : std_logic;
SIGNAL \u1|Add0~1\ : std_logic;
SIGNAL \u1|Add0~3\ : std_logic;
SIGNAL \u1|Add0~4_combout\ : std_logic;
SIGNAL \u1|count~4_combout\ : std_logic;
SIGNAL \u1|Add0~5\ : std_logic;
SIGNAL \u1|Add0~6_combout\ : std_logic;
SIGNAL \u1|Add0~8_combout\ : std_logic;
SIGNAL \u1|Equal0~2_combout\ : std_logic;
SIGNAL \u1|Equal0~1_combout\ : std_logic;
SIGNAL \u1|clkint~0_combout\ : std_logic;
SIGNAL \u1|clkint~regout\ : std_logic;
SIGNAL \u1|clkint~clkctrl_outclk\ : std_logic;
SIGNAL \u4|lcdm|LCD_E~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector0~0_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_RS~regout\ : std_logic;
SIGNAL \u4|lcdm|WideOr43~0_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_RW~regout\ : std_logic;
SIGNAL \BUTTON~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u7|minutes_int\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \u4|lcdm|delay_counter\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \u7|ticks\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \u5|tix_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \u5|x\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \u5|rpm\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u5|rpm_mem\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \KNOP~combout\ : std_logic_vector(6 DOWNTO 1);
SIGNAL \u7|seconds_int\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \u6|rpm_max_int\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|wait_time\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u0|tix_mem\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u0|omwentel99\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|omwentel255\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u1|count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u4|line_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u4|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u4|character_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_BUTTON~combout\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \u4|lcdm|ALT_INV_busy~regout\ : std_logic;
SIGNAL \u4|ALT_INV_state.update~regout\ : std_logic;
SIGNAL \u4|ALT_INV_state.write_char~regout\ : std_logic;
SIGNAL \u0|ALT_INV_tix_mem\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u2|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_U6bcd[3]~6_combout\ : std_logic;
SIGNAL \u2|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \u2|ALT_INV_is_gt_4~1_combout\ : std_logic;
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
tix_mem_sim <= ww_tix_mem_sim;
rpm_mem_sim <= ww_rpm_mem_sim;
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

\u6|LessThan0~14clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \u6|LessThan0~14_combout\);

\u1|clkint~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \u1|clkint~regout\);

\u0|omwentel255[7]~3clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \u0|omwentel255[7]~3_combout\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_BUTTON~combout\(3) <= NOT \BUTTON~combout\(3);
\u4|lcdm|ALT_INV_busy~regout\ <= NOT \u4|lcdm|busy~regout\;
\u4|ALT_INV_state.update~regout\ <= NOT \u4|state.update~regout\;
\u4|ALT_INV_state.write_char~regout\ <= NOT \u4|state.write_char~regout\;
\u0|ALT_INV_tix_mem\(0) <= NOT \u0|tix_mem\(0);
\u2|ALT_INV_Mux15~0_combout\ <= NOT \u2|Mux15~0_combout\;
\u2|ALT_INV_U6bcd[3]~6_combout\ <= NOT \u2|U6bcd[3]~6_combout\;
\u2|ALT_INV_Mux7~0_combout\ <= NOT \u2|Mux7~0_combout\;
\u2|ALT_INV_is_gt_4~1_combout\ <= NOT \u2|is_gt_4~1_combout\;
\u2|ALT_INV_Mux0~0_combout\ <= NOT \u2|Mux0~0_combout\;

-- Location: LCFF_X62_Y41_N7
\u5|x[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[13]~46_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(13));

-- Location: LCFF_X62_Y41_N17
\u5|x[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[18]~56_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(18));

-- Location: LCCOMB_X69_Y42_N6
\u0|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add3~0_combout\ = \u0|wait_time\(0) $ (VCC)
-- \u0|Add3~1\ = CARRY(\u0|wait_time\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|wait_time\(0),
	datad => VCC,
	combout => \u0|Add3~0_combout\,
	cout => \u0|Add3~1\);

-- Location: LCCOMB_X69_Y42_N16
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

-- Location: LCCOMB_X69_Y42_N22
\u0|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add3~16_combout\ = (\u0|wait_time\(8) & (\u0|Add3~15\ $ (GND))) # (!\u0|wait_time\(8) & (!\u0|Add3~15\ & VCC))
-- \u0|Add3~17\ = CARRY((\u0|wait_time\(8) & !\u0|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(8),
	datad => VCC,
	cin => \u0|Add3~15\,
	combout => \u0|Add3~16_combout\,
	cout => \u0|Add3~17\);

-- Location: LCCOMB_X62_Y41_N6
\u5|x[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[13]~46_combout\ = ((\u5|x\(13) $ (\u5|tix_int\(13) $ (!\u5|x[12]~45\)))) # (GND)
-- \u5|x[13]~47\ = CARRY((\u5|x\(13) & ((\u5|tix_int\(13)) # (!\u5|x[12]~45\))) # (!\u5|x\(13) & (\u5|tix_int\(13) & !\u5|x[12]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(13),
	datab => \u5|tix_int\(13),
	datad => VCC,
	cin => \u5|x[12]~45\,
	combout => \u5|x[13]~46_combout\,
	cout => \u5|x[13]~47\);

-- Location: LCCOMB_X62_Y41_N16
\u5|x[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[18]~56_combout\ = (\u5|x\(18) & ((GND) # (!\u5|x[17]~55\))) # (!\u5|x\(18) & (\u5|x[17]~55\ $ (GND)))
-- \u5|x[18]~57\ = CARRY((\u5|x\(18)) # (!\u5|x[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(18),
	datad => VCC,
	cin => \u5|x[17]~55\,
	combout => \u5|x[18]~56_combout\,
	cout => \u5|x[18]~57\);

-- Location: LCCOMB_X72_Y24_N6
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

-- Location: LCCOMB_X75_Y25_N14
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

-- Location: LCCOMB_X75_Y25_N30
\u4|lcdm|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~18_combout\ = (\u4|lcdm|delay_counter\(9) & (\u4|lcdm|Add0~17\ & VCC)) # (!\u4|lcdm|delay_counter\(9) & (!\u4|lcdm|Add0~17\))
-- \u4|lcdm|Add0~19\ = CARRY((!\u4|lcdm|delay_counter\(9) & !\u4|lcdm|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(9),
	datad => VCC,
	cin => \u4|lcdm|Add0~17\,
	combout => \u4|lcdm|Add0~18_combout\,
	cout => \u4|lcdm|Add0~19\);

-- Location: LCCOMB_X75_Y24_N8
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

-- Location: LCCOMB_X75_Y24_N10
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

-- Location: LCCOMB_X75_Y24_N12
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

-- Location: LCCOMB_X75_Y24_N14
\u4|lcdm|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~34_combout\ = (\u4|lcdm|delay_counter\(17) & (\u4|lcdm|Add0~33\ & VCC)) # (!\u4|lcdm|delay_counter\(17) & (!\u4|lcdm|Add0~33\))
-- \u4|lcdm|Add0~35\ = CARRY((!\u4|lcdm|delay_counter\(17) & !\u4|lcdm|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(17),
	datad => VCC,
	cin => \u4|lcdm|Add0~33\,
	combout => \u4|lcdm|Add0~34_combout\,
	cout => \u4|lcdm|Add0~35\);

-- Location: LCCOMB_X75_Y24_N16
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

-- Location: LCCOMB_X75_Y24_N18
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

-- Location: LCCOMB_X75_Y24_N20
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

-- Location: LCFF_X70_Y24_N13
\u4|data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Mux257~11_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.write_char~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|data\(6));

-- Location: LCCOMB_X62_Y23_N22
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

-- Location: LCCOMB_X68_Y25_N14
\u0|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~0_combout\ = \u0|omwentel255\(0) $ (VCC)
-- \u0|Add1~1\ = CARRY(\u0|omwentel255\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|omwentel255\(0),
	datad => VCC,
	combout => \u0|Add1~0_combout\,
	cout => \u0|Add1~1\);

-- Location: LCCOMB_X68_Y25_N20
\u0|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~6_combout\ = (\u0|omwentel255\(3) & (!\u0|Add1~5\)) # (!\u0|omwentel255\(3) & ((\u0|Add1~5\) # (GND)))
-- \u0|Add1~7\ = CARRY((!\u0|Add1~5\) # (!\u0|omwentel255\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(3),
	datad => VCC,
	cin => \u0|Add1~5\,
	combout => \u0|Add1~6_combout\,
	cout => \u0|Add1~7\);

-- Location: LCCOMB_X68_Y21_N10
\u7|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add0~2_combout\ = (\u7|minutes_int\(1) & (!\u7|Add0~1\)) # (!\u7|minutes_int\(1) & ((\u7|Add0~1\) # (GND)))
-- \u7|Add0~3\ = CARRY((!\u7|Add0~1\) # (!\u7|minutes_int\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|minutes_int\(1),
	datad => VCC,
	cin => \u7|Add0~1\,
	combout => \u7|Add0~2_combout\,
	cout => \u7|Add0~3\);

-- Location: LCCOMB_X71_Y22_N12
\u7|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~12_combout\ = (\u7|ticks\(6) & (\u7|Add2~11\ $ (GND))) # (!\u7|ticks\(6) & (!\u7|Add2~11\ & VCC))
-- \u7|Add2~13\ = CARRY((\u7|ticks\(6) & !\u7|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|ticks\(6),
	datad => VCC,
	cin => \u7|Add2~11\,
	combout => \u7|Add2~12_combout\,
	cout => \u7|Add2~13\);

-- Location: LCCOMB_X71_Y22_N18
\u7|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~18_combout\ = (\u7|ticks\(9) & (!\u7|Add2~17\)) # (!\u7|ticks\(9) & ((\u7|Add2~17\) # (GND)))
-- \u7|Add2~19\ = CARRY((!\u7|Add2~17\) # (!\u7|ticks\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|ticks\(9),
	datad => VCC,
	cin => \u7|Add2~17\,
	combout => \u7|Add2~18_combout\,
	cout => \u7|Add2~19\);

-- Location: LCCOMB_X71_Y22_N20
\u7|Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~20_combout\ = (\u7|ticks\(10) & (\u7|Add2~19\ $ (GND))) # (!\u7|ticks\(10) & (!\u7|Add2~19\ & VCC))
-- \u7|Add2~21\ = CARRY((\u7|ticks\(10) & !\u7|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|ticks\(10),
	datad => VCC,
	cin => \u7|Add2~19\,
	combout => \u7|Add2~20_combout\,
	cout => \u7|Add2~21\);

-- Location: LCCOMB_X71_Y21_N10
\u7|Add2~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~42_combout\ = (\u7|ticks\(21) & (!\u7|Add2~41\)) # (!\u7|ticks\(21) & ((\u7|Add2~41\) # (GND)))
-- \u7|Add2~43\ = CARRY((!\u7|Add2~41\) # (!\u7|ticks\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|ticks\(21),
	datad => VCC,
	cin => \u7|Add2~41\,
	combout => \u7|Add2~42_combout\,
	cout => \u7|Add2~43\);

-- Location: LCCOMB_X71_Y21_N12
\u7|Add2~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~44_combout\ = (\u7|ticks\(22) & (\u7|Add2~43\ $ (GND))) # (!\u7|ticks\(22) & (!\u7|Add2~43\ & VCC))
-- \u7|Add2~45\ = CARRY((\u7|ticks\(22) & !\u7|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|ticks\(22),
	datad => VCC,
	cin => \u7|Add2~43\,
	combout => \u7|Add2~44_combout\,
	cout => \u7|Add2~45\);

-- Location: LCCOMB_X62_Y24_N20
\u2|U6bcd[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[2]~0_combout\ = (\u5|rpm_mem\(6) & ((\u5|rpm_mem\(4) & ((\u5|rpm_mem\(5)) # (!\u5|rpm_mem\(7)))) # (!\u5|rpm_mem\(4) & (\u5|rpm_mem\(5) & !\u5|rpm_mem\(7))))) # (!\u5|rpm_mem\(6) & (((!\u5|rpm_mem\(5) & \u5|rpm_mem\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(4),
	datab => \u5|rpm_mem\(6),
	datac => \u5|rpm_mem\(5),
	datad => \u5|rpm_mem\(7),
	combout => \u2|U6bcd[2]~0_combout\);

-- Location: LCFF_X68_Y42_N11
\u0|wait_time[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(8));

-- Location: LCFF_X69_Y42_N17
\u0|wait_time[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|Add3~10_combout\,
	ena => \u0|wait_time[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(5));

-- Location: LCCOMB_X67_Y42_N12
\u0|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~4_combout\ = (\u0|count\(13) & (\u0|count\(14) & \u0|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(13),
	datac => \u0|count\(14),
	datad => \u0|count\(12),
	combout => \u0|LessThan0~4_combout\);

-- Location: LCFF_X61_Y42_N11
\u5|tix_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(3),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(3));

-- Location: LCFF_X61_Y42_N9
\u5|tix_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|tix_int[2]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(2));

-- Location: LCCOMB_X61_Y42_N10
\u5|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan0~0_combout\ = (\u5|tix_int\(3) & ((\u5|tix_int\(0)) # ((\u5|tix_int\(2)) # (\u5|tix_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(0),
	datab => \u5|tix_int\(2),
	datac => \u5|tix_int\(3),
	datad => \u5|tix_int\(1),
	combout => \u5|LessThan0~0_combout\);

-- Location: LCCOMB_X61_Y42_N6
\u5|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan0~2_combout\ = (\u5|tix_int\(7) & (\u5|tix_int\(9) & \u5|tix_int\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(7),
	datab => \u5|tix_int\(9),
	datad => \u5|tix_int\(8),
	combout => \u5|LessThan0~2_combout\);

-- Location: LCCOMB_X62_Y41_N28
\u5|LessThan2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~32_combout\ = (\u5|x\(17)) # (\u5|x\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|x\(17),
	datac => \u5|x\(18),
	combout => \u5|LessThan2~32_combout\);

-- Location: LCFF_X72_Y24_N7
\u1|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(1));

-- Location: LCFF_X67_Y42_N3
\u0|stop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|stop~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|stop~regout\);

-- Location: LCCOMB_X68_Y42_N10
\u0|wait_time[8]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[8]~5_combout\ = (\u0|wait_time[10]~2_combout\ & (\u0|Add3~16_combout\ & ((\u0|wait_time[0]~1_combout\)))) # (!\u0|wait_time[10]~2_combout\ & ((\u0|wait_time\(8)) # ((\u0|Add3~16_combout\ & \u0|wait_time[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time[10]~2_combout\,
	datab => \u0|Add3~16_combout\,
	datac => \u0|wait_time\(8),
	datad => \u0|wait_time[0]~1_combout\,
	combout => \u0|wait_time[8]~5_combout\);

-- Location: LCFF_X76_Y25_N13
\u4|lcdm|delay_counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector1~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(20));

-- Location: LCFF_X76_Y25_N7
\u4|lcdm|delay_counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector2~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(19));

-- Location: LCFF_X76_Y25_N5
\u4|lcdm|delay_counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector3~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(18));

-- Location: LCFF_X76_Y25_N19
\u4|lcdm|delay_counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector4~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(17));

-- Location: LCCOMB_X76_Y25_N0
\u4|lcdm|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Equal0~1_combout\ = (!\u4|lcdm|delay_counter\(20) & (!\u4|lcdm|delay_counter\(17) & (!\u4|lcdm|delay_counter\(18) & !\u4|lcdm|delay_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(20),
	datab => \u4|lcdm|delay_counter\(17),
	datac => \u4|lcdm|delay_counter\(18),
	datad => \u4|lcdm|delay_counter\(19),
	combout => \u4|lcdm|Equal0~1_combout\);

-- Location: LCFF_X75_Y25_N11
\u4|lcdm|delay_counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector7~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(14));

-- Location: LCFF_X74_Y25_N1
\u4|lcdm|delay_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector12~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(9));

-- Location: LCFF_X71_Y24_N19
\u4|goto20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|goto20~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|goto20~regout\);

-- Location: LCFF_X78_Y24_N21
\u4|lcdm|current_state.command_init_5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector28~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_5~regout\);

-- Location: LCCOMB_X67_Y42_N2
\u0|stop~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|stop~0_combout\ = (!\u0|process_0~0_combout\ & ((\u0|LessThan0~5_combout\) # ((\u0|stop~regout\) # (\u0|count\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|process_0~0_combout\,
	datab => \u0|LessThan0~5_combout\,
	datac => \u0|stop~regout\,
	datad => \u0|count\(15),
	combout => \u0|stop~0_combout\);

-- Location: LCCOMB_X76_Y25_N12
\u4|lcdm|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector1~1_combout\ = ((!\u4|lcdm|delay_counter[20]~5_combout\ & \u4|lcdm|Add0~40_combout\)) # (!\u4|lcdm|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|Selector1~0_combout\,
	datac => \u4|lcdm|delay_counter[20]~5_combout\,
	datad => \u4|lcdm|Add0~40_combout\,
	combout => \u4|lcdm|Selector1~1_combout\);

-- Location: LCCOMB_X76_Y25_N6
\u4|lcdm|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector2~0_combout\ = ((!\u4|lcdm|delay_counter[20]~5_combout\ & \u4|lcdm|Add0~38_combout\)) # (!\u4|lcdm|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter[20]~5_combout\,
	datab => \u4|lcdm|Selector1~0_combout\,
	datac => \u4|lcdm|Add0~38_combout\,
	combout => \u4|lcdm|Selector2~0_combout\);

-- Location: LCCOMB_X76_Y25_N4
\u4|lcdm|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector3~0_combout\ = ((!\u4|lcdm|delay_counter[20]~5_combout\ & \u4|lcdm|Add0~36_combout\)) # (!\u4|lcdm|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|Selector1~0_combout\,
	datac => \u4|lcdm|delay_counter[20]~5_combout\,
	datad => \u4|lcdm|Add0~36_combout\,
	combout => \u4|lcdm|Selector3~0_combout\);

-- Location: LCCOMB_X76_Y25_N28
\u4|lcdm|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector4~0_combout\ = (\u4|lcdm|current_state.command_init_2~regout\) # (((\u4|lcdm|delay_counter\(17) & \u4|lcdm|WideOr18~combout\)) # (!\u4|lcdm|current_state.reset~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_2~regout\,
	datab => \u4|lcdm|delay_counter\(17),
	datac => \u4|lcdm|current_state.reset~regout\,
	datad => \u4|lcdm|WideOr18~combout\,
	combout => \u4|lcdm|Selector4~0_combout\);

-- Location: LCCOMB_X76_Y25_N18
\u4|lcdm|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector4~1_combout\ = (\u4|lcdm|Selector4~0_combout\) # ((!\u4|lcdm|Equal0~6_combout\ & (!\u4|lcdm|WideOr33~1_combout\ & \u4|lcdm|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|WideOr33~1_combout\,
	datac => \u4|lcdm|Add0~34_combout\,
	datad => \u4|lcdm|Selector4~0_combout\,
	combout => \u4|lcdm|Selector4~1_combout\);

-- Location: LCCOMB_X74_Y25_N16
\u4|lcdm|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector5~1_combout\ = (\u4|lcdm|current_state.command_init_2~regout\) # ((\u4|lcdm|delay_counter\(16) & \u4|lcdm|WideOr18~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_2~regout\,
	datac => \u4|lcdm|delay_counter\(16),
	datad => \u4|lcdm|WideOr18~combout\,
	combout => \u4|lcdm|Selector5~1_combout\);

-- Location: LCCOMB_X75_Y25_N10
\u4|lcdm|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector7~0_combout\ = (\u4|lcdm|Add0~28_combout\ & !\u4|lcdm|delay_counter[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|Add0~28_combout\,
	datad => \u4|lcdm|delay_counter[20]~5_combout\,
	combout => \u4|lcdm|Selector7~0_combout\);

-- Location: LCCOMB_X74_Y25_N2
\u4|lcdm|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector12~0_combout\ = (\u4|lcdm|current_state.pulse_e_3~regout\ & ((\u4|lcdm|Add0~18_combout\) # ((\u4|lcdm|Equal0~0_combout\ & \u4|lcdm|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~0_combout\,
	datab => \u4|lcdm|Equal0~5_combout\,
	datac => \u4|lcdm|current_state.pulse_e_3~regout\,
	datad => \u4|lcdm|Add0~18_combout\,
	combout => \u4|lcdm|Selector12~0_combout\);

-- Location: LCCOMB_X74_Y25_N24
\u4|lcdm|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector12~1_combout\ = (\u4|lcdm|current_state.command_init_4~regout\) # ((\u4|lcdm|delay_counter\(9) & \u4|lcdm|WideOr18~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|delay_counter\(9),
	datac => \u4|lcdm|current_state.command_init_4~regout\,
	datad => \u4|lcdm|WideOr18~combout\,
	combout => \u4|lcdm|Selector12~1_combout\);

-- Location: LCCOMB_X74_Y25_N0
\u4|lcdm|Selector12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector12~2_combout\ = (\u4|lcdm|Selector12~0_combout\) # ((\u4|lcdm|Selector12~1_combout\) # ((\u4|lcdm|Add0~18_combout\ & \u4|lcdm|Selector5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector12~0_combout\,
	datab => \u4|lcdm|Add0~18_combout\,
	datac => \u4|lcdm|Selector12~1_combout\,
	datad => \u4|lcdm|Selector5~2_combout\,
	combout => \u4|lcdm|Selector12~2_combout\);

-- Location: LCCOMB_X74_Y25_N10
\u4|lcdm|Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector15~1_combout\ = (\u4|lcdm|LCD_E~0_combout\ & ((\u4|lcdm|Add0~12_combout\) # ((\u4|lcdm|Equal0~0_combout\ & \u4|lcdm|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~0_combout\,
	datab => \u4|lcdm|LCD_E~0_combout\,
	datac => \u4|lcdm|Equal0~5_combout\,
	datad => \u4|lcdm|Add0~12_combout\,
	combout => \u4|lcdm|Selector15~1_combout\);

-- Location: LCFF_X77_Y24_N7
\u4|lcdm|return_state.wait_for_command\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector68~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.wait_for_command~regout\);

-- Location: LCCOMB_X71_Y24_N18
\u4|goto20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|goto20~1_combout\ = (\u4|lcdm|busy~regout\ & (!\u4|Equal1~0_combout\ & (\u4|goto20~0_combout\ & \u4|state.update~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|busy~regout\,
	datab => \u4|Equal1~0_combout\,
	datac => \u4|goto20~0_combout\,
	datad => \u4|state.update~regout\,
	combout => \u4|goto20~1_combout\);

-- Location: LCCOMB_X78_Y24_N20
\u4|lcdm|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector28~0_combout\ = (\u4|lcdm|current_state.command_init_4~regout\) # ((\u4|lcdm|current_state.command_init_5~regout\ & ((!\u4|lcdm|Equal0~0_combout\) # (!\u4|lcdm|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_4~regout\,
	datab => \u4|lcdm|Equal0~5_combout\,
	datac => \u4|lcdm|current_state.command_init_5~regout\,
	datad => \u4|lcdm|Equal0~0_combout\,
	combout => \u4|lcdm|Selector28~0_combout\);

-- Location: LCFF_X77_Y24_N21
\u4|lcdm|return_state.command_init_8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector63~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_8~regout\);

-- Location: LCFF_X78_Y24_N5
\u4|lcdm|return_state.command_init_11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector66~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_11~regout\);

-- Location: LCFF_X77_Y24_N19
\u4|lcdm|return_state.command_init_9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector64~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_9~regout\);

-- Location: LCFF_X78_Y24_N31
\u4|lcdm|return_state.command_init_10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector65~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_10~regout\);

-- Location: LCFF_X78_Y24_N1
\u4|lcdm|return_state.command_init_6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector61~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_6~regout\);

-- Location: LCFF_X78_Y24_N3
\u4|lcdm|return_state.command_init_7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector62~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_7~regout\);

-- Location: LCFF_X78_Y24_N17
\u4|lcdm|return_state.command_init_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector57~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_2~regout\);

-- Location: LCFF_X78_Y24_N27
\u4|lcdm|return_state.command_init_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector59~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_4~regout\);

-- Location: LCFF_X79_Y24_N9
\u4|lcdm|return_state.reset\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|return_state.reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.reset~regout\);

-- Location: LCCOMB_X77_Y26_N18
\u4|lcdm|Selector68~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector68~0_combout\ = (\u4|lcdm|current_state.command_wr~regout\) # ((\u4|lcdm|current_state.command_goto10~regout\) # ((\u4|lcdm|current_state.command_init_11~regout\) # (\u4|lcdm|current_state.command_home~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_wr~regout\,
	datab => \u4|lcdm|current_state.command_goto10~regout\,
	datac => \u4|lcdm|current_state.command_init_11~regout\,
	datad => \u4|lcdm|current_state.command_home~regout\,
	combout => \u4|lcdm|Selector68~0_combout\);

-- Location: LCCOMB_X78_Y24_N24
\u4|lcdm|Selector63~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector63~0_combout\ = (\u4|lcdm|WideOr41~2_combout\ & (((\u4|lcdm|WideOr18~1_combout\)))) # (!\u4|lcdm|WideOr41~2_combout\ & (((!\u4|lcdm|Equal0~5_combout\)) # (!\u4|lcdm|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr41~2_combout\,
	datab => \u4|lcdm|Equal0~0_combout\,
	datac => \u4|lcdm|WideOr18~1_combout\,
	datad => \u4|lcdm|Equal0~5_combout\,
	combout => \u4|lcdm|Selector63~0_combout\);

-- Location: LCCOMB_X77_Y24_N6
\u4|lcdm|Selector68~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector68~1_combout\ = (\u4|lcdm|Selector68~0_combout\) # (((\u4|lcdm|return_state.wait_for_command~regout\ & \u4|lcdm|Selector63~0_combout\)) # (!\u4|lcdm|Selector102~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector68~0_combout\,
	datab => \u4|lcdm|Selector102~0_combout\,
	datac => \u4|lcdm|return_state.wait_for_command~regout\,
	datad => \u4|lcdm|Selector63~0_combout\,
	combout => \u4|lcdm|Selector68~1_combout\);

-- Location: LCFF_X62_Y23_N17
\u4|state.update_linecount\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector4~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|state.update_linecount~regout\);

-- Location: LCCOMB_X77_Y24_N20
\u4|lcdm|Selector63~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector63~1_combout\ = (\u4|lcdm|current_state.command_init_7~regout\) # ((\u4|lcdm|return_state.command_init_8~regout\ & \u4|lcdm|Selector63~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.command_init_7~regout\,
	datac => \u4|lcdm|return_state.command_init_8~regout\,
	datad => \u4|lcdm|Selector63~0_combout\,
	combout => \u4|lcdm|Selector63~1_combout\);

-- Location: LCCOMB_X78_Y24_N4
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

-- Location: LCCOMB_X77_Y24_N18
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

-- Location: LCCOMB_X78_Y24_N30
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

-- Location: LCCOMB_X78_Y24_N18
\u4|lcdm|Selector61~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector61~0_combout\ = (\u4|lcdm|WideOr41~3_combout\ & ((\u4|lcdm|Equal0~6_combout\) # ((!\u4|lcdm|current_state.command_init_1~regout\ & !\u4|lcdm|current_state.command_init_3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|current_state.command_init_1~regout\,
	datac => \u4|lcdm|WideOr41~3_combout\,
	datad => \u4|lcdm|current_state.command_init_3~regout\,
	combout => \u4|lcdm|Selector61~0_combout\);

-- Location: LCCOMB_X78_Y24_N0
\u4|lcdm|Selector61~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector61~1_combout\ = (\u4|lcdm|current_state.command_init_5~regout\ & (((\u4|lcdm|return_state.command_init_6~regout\) # (\u4|lcdm|Equal0~6_combout\)))) # (!\u4|lcdm|current_state.command_init_5~regout\ & (!\u4|lcdm|Selector61~0_combout\ & 
-- (\u4|lcdm|return_state.command_init_6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_5~regout\,
	datab => \u4|lcdm|Selector61~0_combout\,
	datac => \u4|lcdm|return_state.command_init_6~regout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector61~1_combout\);

-- Location: LCCOMB_X78_Y24_N2
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

-- Location: LCFF_X69_Y22_N9
\u4|tijd_line[10][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|tijd_secbcd|bcd_out[4]~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|tijd_line[10][0]~regout\);

-- Location: LCCOMB_X65_Y25_N24
\u4|Mux263~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~19_combout\ = (\KNOP~combout\(1) & (!\u4|character_counter\(2) & ((\u4|tijd_line[10][0]~regout\) # (\u4|line_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \u4|tijd_line[10][0]~regout\,
	datac => \u4|character_counter\(2),
	datad => \u4|line_counter\(0),
	combout => \u4|Mux263~19_combout\);

-- Location: LCFF_X68_Y22_N31
\u4|totale_omw_line[14][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_line[14][0]~feeder_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[14][0]~regout\);

-- Location: LCFF_X67_Y25_N25
\u4|totale_omw_line[10][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_2bcd|bcd_out[8]~10_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[10][0]~regout\);

-- Location: LCCOMB_X66_Y25_N4
\u4|Mux263~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~20_combout\ = (\u4|line_counter\(0) & (((\u4|character_counter\(2))))) # (!\u4|line_counter\(0) & ((\u4|character_counter\(2) & ((\u4|totale_omw_line[14][0]~regout\))) # (!\u4|character_counter\(2) & (\u4|totale_omw_line[10][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_line[10][0]~regout\,
	datab => \u4|line_counter\(0),
	datac => \u4|character_counter\(2),
	datad => \u4|totale_omw_line[14][0]~regout\,
	combout => \u4|Mux263~20_combout\);

-- Location: LCCOMB_X65_Y25_N22
\u4|Mux263~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~21_combout\ = (!\u4|line_counter\(1) & ((\u4|Mux263~19_combout\) # ((!\KNOP~combout\(1) & \u4|Mux263~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \u4|line_counter\(1),
	datac => \u4|Mux263~19_combout\,
	datad => \u4|Mux263~20_combout\,
	combout => \u4|Mux263~21_combout\);

-- Location: LCFF_X66_Y24_N13
\u4|maximale_line[10][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|maximale2bcd|bcd_out[8]~10_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|maximale_line[10][0]~regout\);

-- Location: LCCOMB_X65_Y25_N6
\u4|Mux263~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~23_combout\ = (!\KNOP~combout\(1) & (!\u4|character_counter\(2) & (\u4|maximale_line[10][0]~regout\ & \u4|Mux263~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \u4|character_counter\(2),
	datac => \u4|maximale_line[10][0]~regout\,
	datad => \u4|Mux263~22_combout\,
	combout => \u4|Mux263~23_combout\);

-- Location: LCCOMB_X65_Y25_N16
\u4|Mux263~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~24_combout\ = (\u4|Mux263~18_combout\) # ((!\SW~combout\(0) & ((\u4|Mux263~23_combout\) # (\u4|Mux263~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~23_combout\,
	datab => \SW~combout\(0),
	datac => \u4|Mux263~18_combout\,
	datad => \u4|Mux263~21_combout\,
	combout => \u4|Mux263~24_combout\);

-- Location: LCFF_X65_Y22_N23
\u4|totale_omw_line[13][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_1bcd|bcd_out[4]~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[13][0]~regout\);

-- Location: LCFF_X69_Y24_N7
\u4|RPM_line[8][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u5|rpm_mem\(0),
	sload => VCC,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[8][0]~regout\);

-- Location: LCFF_X68_Y25_N1
\u4|totale_omw_line[12][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u0|omwentel255\(0),
	sload => VCC,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[12][0]~regout\);

-- Location: LCFF_X67_Y24_N27
\u4|totale_omw_line[11][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_2bcd|bcd_out[4]~11_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[11][0]~regout\);

-- Location: LCCOMB_X68_Y24_N20
\u4|Mux263~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~41_combout\ = (!\SW~combout\(0) & ((\KNOP~combout\(1) & ((\u4|line_counter\(1)))) # (!\KNOP~combout\(1) & (!\u4|line_counter\(0) & !\u4|line_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \KNOP~combout\(1),
	datac => \SW~combout\(0),
	datad => \u4|line_counter\(1),
	combout => \u4|Mux263~41_combout\);

-- Location: LCFF_X66_Y24_N17
\u4|maximale_line[10][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|maximale2bcd|is_gt_4~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|maximale_line[10][1]~regout\);

-- Location: LCCOMB_X67_Y21_N18
\u4|Mux263~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~54_combout\ = (\u4|line_counter\(1) & ((\u4|line_counter\(0) & ((\u4|maximale_line[10][1]~regout\))) # (!\u4|line_counter\(0) & (\u4|RPM_line[1][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|RPM_line[1][6]~regout\,
	datab => \u4|maximale_line[10][1]~regout\,
	datac => \u4|line_counter\(1),
	datad => \u4|line_counter\(0),
	combout => \u4|Mux263~54_combout\);

-- Location: LCFF_X66_Y25_N15
\u4|totale_omw_line[10][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_2bcd|is_gt_4~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[10][1]~regout\);

-- Location: LCCOMB_X67_Y21_N8
\u4|Mux263~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~55_combout\ = (!\KNOP~combout\(1) & ((\u4|Mux263~54_combout\) # ((\u4|Mux58~1_combout\ & \u4|totale_omw_line[10][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux58~1_combout\,
	datab => \KNOP~combout\(1),
	datac => \u4|totale_omw_line[10][1]~regout\,
	datad => \u4|Mux263~54_combout\,
	combout => \u4|Mux263~55_combout\);

-- Location: LCFF_X69_Y22_N11
\u4|tijd_line[10][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|tijd_secbcd|U3bcd[3]~3_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|tijd_line[10][1]~regout\);

-- Location: LCCOMB_X67_Y21_N6
\u4|Mux263~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~56_combout\ = (!\u4|character_counter\(2) & ((\u4|Mux263~55_combout\) # ((\u4|tijd_line[10][1]~regout\ & \u4|Mux263~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|tijd_line[10][1]~regout\,
	datac => \u4|Mux263~55_combout\,
	datad => \u4|Mux263~35_combout\,
	combout => \u4|Mux263~56_combout\);

-- Location: LCFF_X65_Y22_N17
\u4|totale_omw_line[14][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_1bcd|bcd_out[1]~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[14][1]~regout\);

-- Location: LCCOMB_X67_Y21_N24
\u4|Mux263~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~57_combout\ = (!\SW~combout\(0) & ((\u4|Mux263~56_combout\) # ((\u4|totale_omw_line[14][1]~regout\ & \u4|Mux263~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|totale_omw_line[14][1]~regout\,
	datac => \u4|Mux263~25_combout\,
	datad => \u4|Mux263~56_combout\,
	combout => \u4|Mux263~57_combout\);

-- Location: LCFF_X66_Y23_N31
\u4|totale_omw_line[13][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_1bcd|bcd_out[5]~2_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[13][1]~regout\);

-- Location: LCCOMB_X67_Y23_N16
\u4|Mux263~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~58_combout\ = (\KNOP~combout\(1) & (!\u4|character_counter\(2) & ((\u4|RPM_line[1][6]~regout\)))) # (!\KNOP~combout\(1) & (\u4|character_counter\(2) & (\u4|totale_omw_line[13][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \u4|character_counter\(2),
	datac => \u4|totale_omw_line[13][1]~regout\,
	datad => \u4|RPM_line[1][6]~regout\,
	combout => \u4|Mux263~58_combout\);

-- Location: LCFF_X65_Y21_N7
\u4|RPM_line[8][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u2|U4bcd[0]~0_combout\,
	sload => VCC,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[8][1]~regout\);

-- Location: LCFF_X69_Y21_N11
\u4|tijd_line[8][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|tijd_minbcd|bcd_out[1]~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|tijd_line[8][1]~regout\);

-- Location: LCCOMB_X68_Y21_N30
\u4|Mux263~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~60_combout\ = (\u4|line_counter\(1) & (((\u4|RPM_line[1][6]~regout\) # (\u4|line_counter\(0))))) # (!\u4|line_counter\(1) & (\u4|tijd_line[8][1]~regout\ & ((!\u4|line_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|tijd_line[8][1]~regout\,
	datab => \u4|RPM_line[1][6]~regout\,
	datac => \u4|line_counter\(1),
	datad => \u4|line_counter\(0),
	combout => \u4|Mux263~60_combout\);

-- Location: LCCOMB_X67_Y21_N14
\u4|Mux263~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~61_combout\ = (\u4|Mux263~59_combout\ & ((\u4|line_counter\(0) & ((\u4|RPM_line[8][1]~regout\) # (!\u4|Mux263~60_combout\))) # (!\u4|line_counter\(0) & ((\u4|Mux263~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~59_combout\,
	datab => \u4|line_counter\(0),
	datac => \u4|RPM_line[8][1]~regout\,
	datad => \u4|Mux263~60_combout\,
	combout => \u4|Mux263~61_combout\);

-- Location: LCFF_X67_Y24_N13
\u4|maximale_line[12][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|maximale2bcd|bcd_out[1]~12_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|maximale_line[12][1]~regout\);

-- Location: LCFF_X67_Y24_N23
\u4|totale_omw_line[12][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_2bcd|bcd_out[1]~12_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[12][1]~regout\);

-- Location: LCCOMB_X67_Y24_N20
\u4|Mux263~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~63_combout\ = (\u4|line_counter\(1) & ((\u4|maximale_line[12][1]~regout\))) # (!\u4|line_counter\(1) & (\u4|totale_omw_line[12][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|totale_omw_line[12][1]~regout\,
	datac => \u4|maximale_line[12][1]~regout\,
	datad => \u4|line_counter\(1),
	combout => \u4|Mux263~63_combout\);

-- Location: LCCOMB_X68_Y21_N24
\u4|Mux263~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~65_combout\ = (\u4|Mux263~62_combout\) # ((\u4|Mux263~64_combout\ & \u4|Mux263~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~64_combout\,
	datab => \u4|Mux263~63_combout\,
	datad => \u4|Mux263~62_combout\,
	combout => \u4|Mux263~65_combout\);

-- Location: LCCOMB_X68_Y21_N2
\u4|Mux263~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~66_combout\ = (!\SW~combout\(0) & ((\u4|Mux263~61_combout\) # ((!\KNOP~combout\(1) & \u4|Mux263~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \SW~combout\(0),
	datac => \u4|Mux263~65_combout\,
	datad => \u4|Mux263~61_combout\,
	combout => \u4|Mux263~66_combout\);

-- Location: LCCOMB_X68_Y21_N20
\u4|Mux262~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux262~0_combout\ = (\u4|character_counter\(1) & (((!\u4|character_counter\(0))))) # (!\u4|character_counter\(1) & ((\u4|character_counter\(0) & ((\u4|Mux263~66_combout\))) # (!\u4|character_counter\(0) & (\u4|Mux263~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|Mux263~142_combout\,
	datac => \u4|character_counter\(0),
	datad => \u4|Mux263~66_combout\,
	combout => \u4|Mux262~0_combout\);

-- Location: LCFF_X69_Y22_N13
\u4|tijd_line[11][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|tijd_secbcd|bcd_out[1]~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|tijd_line[11][1]~regout\);

-- Location: LCCOMB_X68_Y23_N20
\u4|Mux263~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~67_combout\ = (\SW~combout\(0) & (((\u4|goto20~0_combout\)))) # (!\SW~combout\(0) & (\u4|tijd_line[11][1]~regout\ & ((\u4|Mux263~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|tijd_line[11][1]~regout\,
	datac => \u4|goto20~0_combout\,
	datad => \u4|Mux263~35_combout\,
	combout => \u4|Mux263~67_combout\);

-- Location: LCFF_X67_Y25_N23
\u4|totale_omw_line[11][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_2bcd|bcd_out[5]~13_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[11][1]~regout\);

-- Location: LCFF_X66_Y24_N29
\u4|maximale_line[11][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|maximale2bcd|bcd_out[5]~13_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|maximale_line[11][1]~regout\);

-- Location: LCCOMB_X69_Y24_N4
\u4|Mux263~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~69_combout\ = (\u4|line_counter\(0) & (((\u4|maximale_line[11][1]~regout\ & !\u4|character_counter\(2))) # (!\u4|line_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|line_counter\(1),
	datac => \u4|maximale_line[11][1]~regout\,
	datad => \u4|character_counter\(2),
	combout => \u4|Mux263~69_combout\);

-- Location: LCCOMB_X69_Y24_N18
\u4|Mux263~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~70_combout\ = (!\KNOP~combout\(1) & ((\u4|Mux263~69_combout\) # ((\u4|totale_omw_line[11][1]~regout\ & \u4|Mux263~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_line[11][1]~regout\,
	datab => \KNOP~combout\(1),
	datac => \u4|Mux263~69_combout\,
	datad => \u4|Mux263~68_combout\,
	combout => \u4|Mux263~70_combout\);

-- Location: LCCOMB_X69_Y24_N28
\u4|Mux263~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~71_combout\ = (\SW~combout\(0) & (!\u4|character_counter\(2) & (\u4|Mux263~67_combout\))) # (!\SW~combout\(0) & ((\u4|Mux263~70_combout\) # ((!\u4|character_counter\(2) & \u4|Mux263~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|character_counter\(2),
	datac => \u4|Mux263~67_combout\,
	datad => \u4|Mux263~70_combout\,
	combout => \u4|Mux263~71_combout\);

-- Location: LCCOMB_X68_Y21_N6
\u4|Mux262~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux262~1_combout\ = (\u4|character_counter\(1) & ((\u4|Mux262~0_combout\ & ((\u4|Mux263~71_combout\))) # (!\u4|Mux262~0_combout\ & (\u4|Mux263~57_combout\)))) # (!\u4|character_counter\(1) & (((\u4|Mux262~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|Mux263~57_combout\,
	datac => \u4|Mux262~0_combout\,
	datad => \u4|Mux263~71_combout\,
	combout => \u4|Mux262~1_combout\);

-- Location: LCFF_X63_Y24_N3
\u4|RPM_line[6][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u2|is_gt_4~1_combout\,
	sload => VCC,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[6][1]~regout\);

-- Location: LCFF_X63_Y24_N13
\u4|RPM_line[7][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u2|U6bcd[0]~4_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[7][1]~regout\);

-- Location: LCFF_X69_Y21_N13
\u4|tijd_line[7][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|tijd_minbcd|U3bcd[3]~3_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|tijd_line[7][1]~regout\);

-- Location: LCCOMB_X67_Y21_N10
\u4|Mux263~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~83_combout\ = (!\SW~combout\(0) & ((\u4|line_counter\(1) & (\u4|RPM_line[7][1]~regout\)) # (!\u4|line_counter\(1) & ((\u4|tijd_line[7][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|RPM_line[7][1]~regout\,
	datac => \u4|line_counter\(1),
	datad => \u4|tijd_line[7][1]~regout\,
	combout => \u4|Mux263~83_combout\);

-- Location: LCCOMB_X67_Y21_N12
\u4|Mux263~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~84_combout\ = (\SW~combout\(0) & ((\u4|Mux58~0_combout\) # ((\u4|aline~12_combout\ & \u4|Mux263~83_combout\)))) # (!\SW~combout\(0) & (\u4|aline~12_combout\ & (\u4|Mux263~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|aline~12_combout\,
	datac => \u4|Mux263~83_combout\,
	datad => \u4|Mux58~0_combout\,
	combout => \u4|Mux263~84_combout\);

-- Location: LCCOMB_X67_Y21_N30
\u4|Mux263~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~86_combout\ = (\u4|character_counter\(2) & ((\u4|Mux263~84_combout\) # ((!\KNOP~combout\(1) & \u4|Mux263~85_combout\)))) # (!\u4|character_counter\(2) & (\KNOP~combout\(1) & (\u4|Mux263~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \KNOP~combout\(1),
	datac => \u4|Mux263~85_combout\,
	datad => \u4|Mux263~84_combout\,
	combout => \u4|Mux263~86_combout\);

-- Location: LCFF_X67_Y24_N9
\u4|totale_omw_line[12][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_2bcd|bcd_out[2]~14_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[12][2]~regout\);

-- Location: LCFF_X66_Y25_N25
\u4|totale_omw_line[11][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_2bcd|bcd_out[6]~9_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[11][2]~regout\);

-- Location: LCFF_X69_Y22_N29
\u4|tijd_line[11][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|tijd_secbcd|bcd_out[2]~2_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|tijd_line[11][2]~regout\);

-- Location: LCFF_X63_Y24_N11
\u4|RPM_line[7][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u2|U6bcd[1]~5_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[7][2]~regout\);

-- Location: LCCOMB_X66_Y23_N12
\u4|Mux263~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~110_combout\ = (\SW~combout\(0)) # ((\u4|line_counter\(0) & (\KNOP~combout\(1) & \u4|RPM_line[7][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|line_counter\(0),
	datac => \KNOP~combout\(1),
	datad => \u4|RPM_line[7][2]~regout\,
	combout => \u4|Mux263~110_combout\);

-- Location: LCFF_X65_Y22_N21
\u4|totale_omw_line[14][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_1bcd|bcd_out[3]~5_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[14][3]~regout\);

-- Location: LCCOMB_X65_Y22_N6
\u4|Mux263~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~112_combout\ = (\u4|character_counter\(2) & (!\u4|line_counter\(1) & ((\u4|totale_omw_line[14][3]~regout\) # (\u4|line_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_line[14][3]~regout\,
	datab => \u4|character_counter\(2),
	datac => \u4|line_counter\(1),
	datad => \u4|line_counter\(0),
	combout => \u4|Mux263~112_combout\);

-- Location: LCCOMB_X65_Y22_N24
\u4|Mux263~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~113_combout\ = (!\KNOP~combout\(1) & ((\u4|Mux263~90_combout\) # (\u4|Mux263~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datac => \u4|Mux263~90_combout\,
	datad => \u4|Mux263~112_combout\,
	combout => \u4|Mux263~113_combout\);

-- Location: LCCOMB_X65_Y22_N10
\u4|Mux263~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~114_combout\ = (!\SW~combout\(0) & ((\u4|Mux263~113_combout\) # ((\u4|Mux263~59_combout\ & \u4|drive~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|Mux263~59_combout\,
	datac => \u4|Mux263~113_combout\,
	datad => \u4|drive~2_combout\,
	combout => \u4|Mux263~114_combout\);

-- Location: LCFF_X66_Y23_N19
\u4|totale_omw_line[13][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_1bcd|bcd_out[7]~6_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[13][3]~regout\);

-- Location: LCFF_X65_Y21_N3
\u4|RPM_line[8][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u2|U4bcd[2]~2_combout\,
	sload => VCC,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[8][3]~regout\);

-- Location: LCFF_X69_Y21_N3
\u4|tijd_line[8][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|tijd_minbcd|bcd_out[3]~3_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|tijd_line[8][3]~regout\);

-- Location: LCFF_X67_Y25_N9
\u4|totale_omw_line[11][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_2bcd|bcd_out[7]~16_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[11][3]~regout\);

-- Location: LCCOMB_X65_Y23_N20
\u4|Mux263~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~127_combout\ = (\u4|line_counter\(0) & (((!\KNOP~combout\(1) & \u4|RPM_line[1][6]~regout\)) # (!\u4|line_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \u4|RPM_line[1][6]~regout\,
	datac => \u4|line_counter\(0),
	datad => \u4|line_counter\(1),
	combout => \u4|Mux263~127_combout\);

-- Location: LCCOMB_X65_Y23_N24
\u4|Mux263~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~129_combout\ = (\u4|line_counter\(0)) # ((\u4|RPM_line[1][6]~regout\ & ((!\KNOP~combout\(1)) # (!\u4|character_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \KNOP~combout\(1),
	datac => \u4|line_counter\(0),
	datad => \u4|RPM_line[1][6]~regout\,
	combout => \u4|Mux263~129_combout\);

-- Location: LCFF_X63_Y24_N17
\u4|RPM_line[7][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u2|U6bcd[2]~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[7][3]~regout\);

-- Location: LCCOMB_X65_Y23_N6
\u4|Mux263~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~131_combout\ = (\KNOP~combout\(1) & (\u4|character_counter\(2) & ((\u4|RPM_line[7][3]~regout\)))) # (!\KNOP~combout\(1) & (((\u4|RPM_line[1][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \KNOP~combout\(1),
	datac => \u4|RPM_line[1][6]~regout\,
	datad => \u4|RPM_line[7][3]~regout\,
	combout => \u4|Mux263~131_combout\);

-- Location: LCCOMB_X71_Y23_N24
\u4|Mux259~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux259~7_combout\ = (!\u4|character_counter\(1) & ((\KNOP~combout\(1) & (\u4|line_counter\(1) & !\u4|line_counter\(0))) # (!\KNOP~combout\(1) & ((\u4|line_counter\(1)) # (!\u4|line_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \u4|line_counter\(1),
	datac => \u4|line_counter\(0),
	datad => \u4|character_counter\(1),
	combout => \u4|Mux259~7_combout\);

-- Location: LCCOMB_X71_Y23_N2
\u4|Mux259~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux259~8_combout\ = \u4|character_counter\(0) $ (!\u4|character_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|character_counter\(0),
	datad => \u4|character_counter\(1),
	combout => \u4|Mux259~8_combout\);

-- Location: LCCOMB_X70_Y23_N12
\u4|Mux259~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux259~9_combout\ = (\u4|Mux263~48_combout\ & ((\u4|Mux259~8_combout\ & (\u4|aline~14_combout\)) # (!\u4|Mux259~8_combout\ & ((\u4|Mux259~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux259~8_combout\,
	datab => \u4|Mux263~48_combout\,
	datac => \u4|aline~14_combout\,
	datad => \u4|Mux259~7_combout\,
	combout => \u4|Mux259~9_combout\);

-- Location: LCCOMB_X65_Y25_N12
\u4|Mux258~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux258~7_combout\ = (\u4|character_counter\(1) & (((!\u4|line_counter\(1) & !\u4|line_counter\(0))) # (!\u4|character_counter\(0)))) # (!\u4|character_counter\(1) & (((!\u4|line_counter\(1) & !\u4|line_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|character_counter\(0),
	datac => \u4|line_counter\(1),
	datad => \u4|line_counter\(0),
	combout => \u4|Mux258~7_combout\);

-- Location: LCCOMB_X65_Y25_N14
\u4|Mux258~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux258~8_combout\ = ((\SW~combout\(0)) # ((\u4|line_counter\(1)) # (\u4|Mux258~7_combout\))) # (!\KNOP~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \SW~combout\(0),
	datac => \u4|line_counter\(1),
	datad => \u4|Mux258~7_combout\,
	combout => \u4|Mux258~8_combout\);

-- Location: LCCOMB_X69_Y24_N22
\u4|Mux263~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~134_combout\ = (\u4|line_counter\(0) & (((!\u4|line_counter\(1))))) # (!\u4|line_counter\(0) & (!\KNOP~combout\(1) & (\u4|RPM_line[1][6]~regout\ & \u4|line_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \u4|RPM_line[1][6]~regout\,
	datac => \u4|line_counter\(0),
	datad => \u4|line_counter\(1),
	combout => \u4|Mux263~134_combout\);

-- Location: LCCOMB_X70_Y24_N18
\u4|Mux263~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~135_combout\ = (!\u4|character_counter\(2) & ((\SW~combout\(0) & (\u4|line_counter\(1))) # (!\SW~combout\(0) & ((\u4|Mux263~134_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|line_counter\(1),
	datac => \u4|character_counter\(2),
	datad => \u4|Mux263~134_combout\,
	combout => \u4|Mux263~135_combout\);

-- Location: LCCOMB_X69_Y23_N20
\u4|Mux263~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~136_combout\ = (\u4|Mux263~99_combout\ & (!\u4|drive~2_combout\)) # (!\u4|Mux263~99_combout\ & (((\u4|character_counter\(2)) # (!\u4|goto20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|drive~2_combout\,
	datab => \u4|character_counter\(2),
	datac => \u4|goto20~0_combout\,
	datad => \u4|Mux263~99_combout\,
	combout => \u4|Mux263~136_combout\);

-- Location: LCCOMB_X70_Y24_N20
\u4|Mux263~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~137_combout\ = (!\KNOP~combout\(1) & \u4|character_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KNOP~combout\(1),
	datac => \u4|character_counter\(2),
	combout => \u4|Mux263~137_combout\);

-- Location: LCCOMB_X70_Y24_N2
\u4|Mux263~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~138_combout\ = (\u4|Mux263~135_combout\) # ((!\SW~combout\(0) & (\u4|drive~2_combout\ & \u4|Mux263~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|drive~2_combout\,
	datac => \u4|Mux263~137_combout\,
	datad => \u4|Mux263~135_combout\,
	combout => \u4|Mux263~138_combout\);

-- Location: LCCOMB_X70_Y24_N28
\u4|Mux257~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux257~2_combout\ = (\u4|character_counter\(0) & ((\u4|character_counter\(1) & (!\u4|Mux263~136_combout\)) # (!\u4|character_counter\(1) & ((\u4|Mux263~138_combout\))))) # (!\u4|character_counter\(0) & (\u4|character_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|character_counter\(1),
	datac => \u4|Mux263~136_combout\,
	datad => \u4|Mux263~138_combout\,
	combout => \u4|Mux257~2_combout\);

-- Location: LCCOMB_X70_Y24_N6
\u4|Mux263~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~139_combout\ = (\u4|character_counter\(2)) # ((\u4|line_counter\(2)) # (!\u4|line_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|character_counter\(2),
	datac => \u4|line_counter\(0),
	datad => \u4|line_counter\(2),
	combout => \u4|Mux263~139_combout\);

-- Location: LCCOMB_X70_Y24_N16
\u4|Mux263~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~140_combout\ = (\SW~combout\(0) & (((\u4|Mux263~139_combout\)))) # (!\SW~combout\(0) & ((\KNOP~combout\(1)) # ((!\u4|drive~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \KNOP~combout\(1),
	datac => \u4|drive~2_combout\,
	datad => \u4|Mux263~139_combout\,
	combout => \u4|Mux263~140_combout\);

-- Location: LCCOMB_X70_Y24_N30
\u4|Mux257~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux257~3_combout\ = (\u4|character_counter\(0) & (((\u4|Mux257~2_combout\)))) # (!\u4|character_counter\(0) & ((\u4|Mux257~2_combout\ & ((!\u4|Mux263~140_combout\))) # (!\u4|Mux257~2_combout\ & (\u4|Mux263~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|Mux263~135_combout\,
	datac => \u4|Mux263~140_combout\,
	datad => \u4|Mux257~2_combout\,
	combout => \u4|Mux257~3_combout\);

-- Location: LCCOMB_X70_Y24_N0
\u4|Mux257~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux257~4_combout\ = (\u4|RPM_line[1][6]~regout\ & ((\u4|line_counter\(0) $ (\u4|line_counter\(1))) # (!\KNOP~combout\(1)))) # (!\u4|RPM_line[1][6]~regout\ & (((\u4|line_counter\(0) & !\u4|line_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|RPM_line[1][6]~regout\,
	datab => \KNOP~combout\(1),
	datac => \u4|line_counter\(0),
	datad => \u4|line_counter\(1),
	combout => \u4|Mux257~4_combout\);

-- Location: LCCOMB_X70_Y24_N22
\u4|Mux257~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux257~5_combout\ = (\u4|character_counter\(2) & (!\u4|character_counter\(1) & (!\u4|character_counter\(0) & \u4|Mux257~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|character_counter\(1),
	datac => \u4|character_counter\(0),
	datad => \u4|Mux257~4_combout\,
	combout => \u4|Mux257~5_combout\);

-- Location: LCCOMB_X70_Y24_N8
\u4|Mux257~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux257~6_combout\ = (\u4|character_counter\(1) & ((\u4|line_counter\(1) & ((!\u4|line_counter\(0)) # (!\KNOP~combout\(1)))) # (!\u4|line_counter\(1) & (!\KNOP~combout\(1) & !\u4|line_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \KNOP~combout\(1),
	datac => \u4|line_counter\(0),
	datad => \u4|character_counter\(1),
	combout => \u4|Mux257~6_combout\);

-- Location: LCCOMB_X70_Y24_N10
\u4|Mux257~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux257~7_combout\ = (!\SW~combout\(0) & ((\u4|Mux257~5_combout\) # ((\u4|RPM_line[1][6]~regout\ & \u4|Mux257~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|RPM_line[1][6]~regout\,
	datac => \u4|Mux257~6_combout\,
	datad => \u4|Mux257~5_combout\,
	combout => \u4|Mux257~7_combout\);

-- Location: LCCOMB_X69_Y25_N2
\u4|Mux257~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux257~8_combout\ = (!\u4|line_counter\(0) & (\u4|RPM_line[1][6]~regout\ & ((\KNOP~combout\(1)) # (\u4|line_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \u4|line_counter\(0),
	datac => \u4|line_counter\(1),
	datad => \u4|RPM_line[1][6]~regout\,
	combout => \u4|Mux257~8_combout\);

-- Location: LCCOMB_X69_Y25_N20
\u4|Mux257~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux257~9_combout\ = (!\u4|Mux263~80_combout\ & ((\u4|drive~2_combout\) # ((\u4|character_counter\(2) & \u4|Mux257~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|Mux257~8_combout\,
	datac => \u4|Mux263~80_combout\,
	datad => \u4|drive~2_combout\,
	combout => \u4|Mux257~9_combout\);

-- Location: LCCOMB_X70_Y24_N24
\u4|Mux257~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux257~10_combout\ = (\u4|Mux257~7_combout\) # ((\u4|Mux258~2_combout\ & ((\u4|Mux257~9_combout\))) # (!\u4|Mux258~2_combout\ & (\u4|Mux257~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux258~2_combout\,
	datab => \u4|Mux257~12_combout\,
	datac => \u4|Mux257~9_combout\,
	datad => \u4|Mux257~7_combout\,
	combout => \u4|Mux257~10_combout\);

-- Location: LCCOMB_X70_Y24_N12
\u4|Mux257~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux257~11_combout\ = (\u4|character_counter\(3) & ((\u4|Mux257~3_combout\))) # (!\u4|character_counter\(3) & (\u4|Mux257~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(3),
	datac => \u4|Mux257~10_combout\,
	datad => \u4|Mux257~3_combout\,
	combout => \u4|Mux257~11_combout\);

-- Location: LCCOMB_X78_Y24_N12
\u4|lcdm|Selector57~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector57~0_combout\ = (\u4|lcdm|WideOr41~3_combout\ & ((\u4|lcdm|Equal0~6_combout\) # ((!\u4|lcdm|current_state.command_init_5~regout\ & !\u4|lcdm|current_state.command_init_3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_5~regout\,
	datab => \u4|lcdm|current_state.command_init_3~regout\,
	datac => \u4|lcdm|WideOr41~3_combout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector57~0_combout\);

-- Location: LCCOMB_X78_Y24_N16
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

-- Location: LCCOMB_X78_Y24_N10
\u4|lcdm|Selector59~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector59~0_combout\ = (\u4|lcdm|WideOr41~3_combout\ & ((\u4|lcdm|Equal0~6_combout\) # ((!\u4|lcdm|current_state.command_init_5~regout\ & !\u4|lcdm|current_state.command_init_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_5~regout\,
	datab => \u4|lcdm|current_state.command_init_1~regout\,
	datac => \u4|lcdm|WideOr41~3_combout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector59~0_combout\);

-- Location: LCCOMB_X78_Y24_N26
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

-- Location: LCCOMB_X78_Y24_N8
\u4|lcdm|return_state.reset~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|return_state.reset~0_combout\ = (\BUTTON~combout\(3) & (\u4|lcdm|WideOr41~3_combout\ & ((\u4|lcdm|Equal0~6_combout\) # (!\u4|lcdm|WideOr18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr18~1_combout\,
	datab => \BUTTON~combout\(3),
	datac => \u4|lcdm|WideOr41~3_combout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|return_state.reset~0_combout\);

-- Location: LCCOMB_X79_Y24_N8
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

-- Location: LCCOMB_X62_Y23_N16
\u4|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector4~0_combout\ = (\u4|state.update~regout\ & (!\u4|Equal1~0_combout\ & (\u4|lcdm|busy~regout\ & !\u4|drive~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update~regout\,
	datab => \u4|Equal1~0_combout\,
	datac => \u4|lcdm|busy~regout\,
	datad => \u4|drive~3_combout\,
	combout => \u4|Selector4~0_combout\);

-- Location: LCCOMB_X69_Y22_N16
\u4|tijd_secbcd|U3bcd[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|tijd_secbcd|U3bcd[1]~0_combout\ = (\u7|seconds_int\(5) & (!\u7|seconds_int\(3) & ((\u7|seconds_int\(4)) # (!\u7|seconds_int\(2))))) # (!\u7|seconds_int\(5) & (\u7|seconds_int\(3) & ((\u7|seconds_int\(2)) # (!\u7|seconds_int\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|seconds_int\(4),
	datab => \u7|seconds_int\(2),
	datac => \u7|seconds_int\(5),
	datad => \u7|seconds_int\(3),
	combout => \u4|tijd_secbcd|U3bcd[1]~0_combout\);

-- Location: LCCOMB_X69_Y22_N8
\u4|tijd_secbcd|bcd_out[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|tijd_secbcd|bcd_out[4]~0_combout\ = \u4|tijd_secbcd|U3bcd[2]~1_combout\ $ (((\u4|tijd_secbcd|U3bcd[1]~0_combout\ & ((\u7|seconds_int\(1)) # (\u4|tijd_secbcd|U3bcd[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|tijd_secbcd|U3bcd[1]~0_combout\,
	datab => \u7|seconds_int\(1),
	datac => \u4|tijd_secbcd|U3bcd[0]~2_combout\,
	datad => \u4|tijd_secbcd|U3bcd[2]~1_combout\,
	combout => \u4|tijd_secbcd|bcd_out[4]~0_combout\);

-- Location: LCCOMB_X66_Y25_N6
\u4|totale_omw_2bcd|U5bcd[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|U5bcd[2]~0_combout\ = (\u0|omwentel255\(7) & (\u4|totale_omw_2bcd|U2bcd[3]~3_combout\ & ((\u0|omwentel255\(6)) # (\u0|omwentel255\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(7),
	datab => \u0|omwentel255\(6),
	datac => \u0|omwentel255\(5),
	datad => \u4|totale_omw_2bcd|U2bcd[3]~3_combout\,
	combout => \u4|totale_omw_2bcd|U5bcd[2]~0_combout\);

-- Location: LCCOMB_X66_Y25_N12
\u4|totale_omw_2bcd|U5bcd[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|U5bcd[1]~1_combout\ = (\u0|omwentel255\(7) & ((\u0|omwentel255\(6) & (\u0|omwentel255\(4) & \u0|omwentel255\(5))) # (!\u0|omwentel255\(6) & ((!\u0|omwentel255\(5)))))) # (!\u0|omwentel255\(7) & (\u0|omwentel255\(6) & 
-- ((\u0|omwentel255\(4)) # (\u0|omwentel255\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(7),
	datab => \u0|omwentel255\(6),
	datac => \u0|omwentel255\(4),
	datad => \u0|omwentel255\(5),
	combout => \u4|totale_omw_2bcd|U5bcd[1]~1_combout\);

-- Location: LCCOMB_X67_Y25_N12
\u4|totale_omw_2bcd|U5bcd[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|U5bcd[1]~2_combout\ = (\u4|totale_omw_2bcd|U5bcd[1]~1_combout\ & (((!\u4|totale_omw_2bcd|U2bcd[3]~3_combout\) # (!\u4|totale_omw_2bcd|is_gt_4~2_combout\)) # (!\u0|omwentel255\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(7),
	datab => \u4|totale_omw_2bcd|is_gt_4~2_combout\,
	datac => \u4|totale_omw_2bcd|U5bcd[1]~1_combout\,
	datad => \u4|totale_omw_2bcd|U2bcd[3]~3_combout\,
	combout => \u4|totale_omw_2bcd|U5bcd[1]~2_combout\);

-- Location: LCCOMB_X66_Y25_N22
\u4|totale_omw_2bcd|is_gt_4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|is_gt_4~0_combout\ = (\u0|omwentel255\(7) & \u0|omwentel255\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|omwentel255\(7),
	datad => \u0|omwentel255\(6),
	combout => \u4|totale_omw_2bcd|is_gt_4~0_combout\);

-- Location: LCCOMB_X66_Y25_N14
\u4|totale_omw_2bcd|is_gt_4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|is_gt_4~1_combout\ = (\u4|totale_omw_2bcd|is_gt_4~0_combout\ & ((\u0|omwentel255\(4)) # ((\u0|omwentel255\(5)) # (\u0|omwentel255\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(4),
	datab => \u0|omwentel255\(5),
	datac => \u0|omwentel255\(3),
	datad => \u4|totale_omw_2bcd|is_gt_4~0_combout\,
	combout => \u4|totale_omw_2bcd|is_gt_4~1_combout\);

-- Location: LCCOMB_X67_Y25_N16
\u4|totale_omw_2bcd|U2bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|U2bcd[2]~1_combout\ = (\u4|totale_omw_2bcd|U1bcd[1]~0_combout\ & (!\u0|omwentel255\(3) & ((!\u4|totale_omw_2bcd|U1bcd[0]~2_combout\)))) # (!\u4|totale_omw_2bcd|U1bcd[1]~0_combout\ & (\u4|totale_omw_2bcd|U1bcd[2]~1_combout\ & 
-- ((\u0|omwentel255\(3)) # (\u4|totale_omw_2bcd|U1bcd[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(3),
	datab => \u4|totale_omw_2bcd|U1bcd[1]~0_combout\,
	datac => \u4|totale_omw_2bcd|U1bcd[2]~1_combout\,
	datad => \u4|totale_omw_2bcd|U1bcd[0]~2_combout\,
	combout => \u4|totale_omw_2bcd|U2bcd[2]~1_combout\);

-- Location: LCCOMB_X67_Y25_N4
\u4|totale_omw_2bcd|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|Add6~0_combout\ = (\u4|totale_omw_2bcd|U5bcd[1]~2_combout\ & ((\u4|totale_omw_2bcd|is_gt_4~1_combout\ $ (!\u4|totale_omw_2bcd|U2bcd[3]~3_combout\)) # (!\u4|totale_omw_2bcd|U3bcd[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_2bcd|is_gt_4~1_combout\,
	datab => \u4|totale_omw_2bcd|U2bcd[3]~3_combout\,
	datac => \u4|totale_omw_2bcd|U5bcd[1]~2_combout\,
	datad => \u4|totale_omw_2bcd|U3bcd[3]~3_combout\,
	combout => \u4|totale_omw_2bcd|Add6~0_combout\);

-- Location: LCCOMB_X67_Y25_N24
\u4|totale_omw_2bcd|bcd_out[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|bcd_out[8]~10_combout\ = \u4|totale_omw_2bcd|Add6~0_combout\ $ (((!\u4|totale_omw_2bcd|U5bcd[1]~1_combout\ & \u4|totale_omw_2bcd|U5bcd[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|totale_omw_2bcd|U5bcd[1]~1_combout\,
	datac => \u4|totale_omw_2bcd|Add6~0_combout\,
	datad => \u4|totale_omw_2bcd|U5bcd[2]~0_combout\,
	combout => \u4|totale_omw_2bcd|bcd_out[8]~10_combout\);

-- Location: LCCOMB_X66_Y24_N0
\u4|maximale2bcd|U5bcd[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|U5bcd[1]~2_combout\ = (\u4|maximale2bcd|U5bcd[1]~1_combout\ & (((!\u4|maximale2bcd|U2bcd[3]~3_combout\) # (!\u4|maximale2bcd|is_gt_4~2_combout\)) # (!\u6|rpm_max_int\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(7),
	datab => \u4|maximale2bcd|is_gt_4~2_combout\,
	datac => \u4|maximale2bcd|U5bcd[1]~1_combout\,
	datad => \u4|maximale2bcd|U2bcd[3]~3_combout\,
	combout => \u4|maximale2bcd|U5bcd[1]~2_combout\);

-- Location: LCCOMB_X66_Y24_N18
\u4|maximale2bcd|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|Add6~0_combout\ = (\u4|maximale2bcd|U5bcd[1]~2_combout\ & ((\u4|maximale2bcd|is_gt_4~1_combout\ $ (!\u4|maximale2bcd|U2bcd[3]~3_combout\)) # (!\u4|maximale2bcd|U3bcd[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|maximale2bcd|is_gt_4~1_combout\,
	datab => \u4|maximale2bcd|U2bcd[3]~3_combout\,
	datac => \u4|maximale2bcd|U3bcd[3]~3_combout\,
	datad => \u4|maximale2bcd|U5bcd[1]~2_combout\,
	combout => \u4|maximale2bcd|Add6~0_combout\);

-- Location: LCCOMB_X66_Y24_N12
\u4|maximale2bcd|bcd_out[8]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|bcd_out[8]~10_combout\ = \u4|maximale2bcd|Add6~0_combout\ $ (((!\u4|maximale2bcd|U5bcd[1]~1_combout\ & \u4|maximale2bcd|U5bcd[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|maximale2bcd|U5bcd[1]~1_combout\,
	datac => \u4|maximale2bcd|U5bcd[2]~0_combout\,
	datad => \u4|maximale2bcd|Add6~0_combout\,
	combout => \u4|maximale2bcd|bcd_out[8]~10_combout\);

-- Location: LCCOMB_X65_Y22_N22
\u4|totale_omw_1bcd|bcd_out[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|bcd_out[4]~0_combout\ = \u4|totale_omw_1bcd|U3bcd[2]~1_combout\ $ (((\u4|totale_omw_1bcd|U3bcd[1]~0_combout\ & ((\u0|omwentel99\(1)) # (\u4|totale_omw_1bcd|U3bcd[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(1),
	datab => \u4|totale_omw_1bcd|U3bcd[1]~0_combout\,
	datac => \u4|totale_omw_1bcd|U3bcd[2]~1_combout\,
	datad => \u4|totale_omw_1bcd|U3bcd[0]~2_combout\,
	combout => \u4|totale_omw_1bcd|bcd_out[4]~0_combout\);

-- Location: LCCOMB_X67_Y24_N26
\u4|totale_omw_2bcd|bcd_out[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|bcd_out[4]~11_combout\ = \u4|totale_omw_2bcd|U3bcd[2]~1_combout\ $ (((\u4|totale_omw_2bcd|U3bcd[1]~0_combout\ & ((\u0|omwentel255\(1)) # (\u4|totale_omw_2bcd|U3bcd[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(1),
	datab => \u4|totale_omw_2bcd|U3bcd[0]~2_combout\,
	datac => \u4|totale_omw_2bcd|U3bcd[1]~0_combout\,
	datad => \u4|totale_omw_2bcd|U3bcd[2]~1_combout\,
	combout => \u4|totale_omw_2bcd|bcd_out[4]~11_combout\);

-- Location: LCFF_X68_Y21_N11
\u7|minutes_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add0~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u7|minutes_int[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|minutes_int\(1));

-- Location: LCCOMB_X69_Y22_N10
\u4|tijd_secbcd|U3bcd[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|tijd_secbcd|U3bcd[3]~3_combout\ = (\u7|seconds_int\(3) & (\u7|seconds_int\(4) & ((\u7|seconds_int\(2)) # (!\u7|seconds_int\(5))))) # (!\u7|seconds_int\(3) & ((\u7|seconds_int\(4) & (\u7|seconds_int\(2) & !\u7|seconds_int\(5))) # (!\u7|seconds_int\(4) 
-- & ((\u7|seconds_int\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|seconds_int\(3),
	datab => \u7|seconds_int\(4),
	datac => \u7|seconds_int\(2),
	datad => \u7|seconds_int\(5),
	combout => \u4|tijd_secbcd|U3bcd[3]~3_combout\);

-- Location: LCCOMB_X65_Y22_N16
\u4|totale_omw_1bcd|bcd_out[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|bcd_out[1]~1_combout\ = (\u0|omwentel99\(1) & (!\u4|totale_omw_1bcd|U3bcd[1]~0_combout\ & (!\u4|totale_omw_1bcd|U3bcd[2]~1_combout\))) # (!\u0|omwentel99\(1) & ((\u4|totale_omw_1bcd|U3bcd[2]~1_combout\) # 
-- ((\u4|totale_omw_1bcd|U3bcd[1]~0_combout\ & \u4|totale_omw_1bcd|U3bcd[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(1),
	datab => \u4|totale_omw_1bcd|U3bcd[1]~0_combout\,
	datac => \u4|totale_omw_1bcd|U3bcd[2]~1_combout\,
	datad => \u4|totale_omw_1bcd|U3bcd[0]~2_combout\,
	combout => \u4|totale_omw_1bcd|bcd_out[1]~1_combout\);

-- Location: LCCOMB_X66_Y23_N6
\u4|totale_omw_1bcd|U0bcd[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|U0bcd[2]~0_combout\ = (\u0|omwentel99\(5)) # (\u0|omwentel99\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(5),
	datac => \u0|omwentel99\(6),
	combout => \u4|totale_omw_1bcd|U0bcd[2]~0_combout\);

-- Location: LCCOMB_X66_Y22_N10
\u4|totale_omw_1bcd|U3bcd[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|U3bcd[3]~3_combout\ = \u4|totale_omw_1bcd|U2bcd[2]~1_combout\ $ ((((!\u0|omwentel99\(2) & !\u4|totale_omw_1bcd|U2bcd[0]~0_combout\)) # (!\u4|totale_omw_1bcd|U2bcd[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(2),
	datab => \u4|totale_omw_1bcd|U2bcd[0]~0_combout\,
	datac => \u4|totale_omw_1bcd|U2bcd[1]~2_combout\,
	datad => \u4|totale_omw_1bcd|U2bcd[2]~1_combout\,
	combout => \u4|totale_omw_1bcd|U3bcd[3]~3_combout\);

-- Location: LCCOMB_X66_Y23_N30
\u4|totale_omw_1bcd|bcd_out[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|bcd_out[5]~2_combout\ = (\u4|totale_omw_1bcd|U3bcd[3]~3_combout\ & ((\u4|totale_omw_1bcd|U5bcd[2]~3_combout\) # ((\u4|totale_omw_1bcd|U5bcd[1]~0_combout\ & \u4|totale_omw_1bcd|U5bcd[0]~2_combout\)))) # 
-- (!\u4|totale_omw_1bcd|U3bcd[3]~3_combout\ & (!\u4|totale_omw_1bcd|U5bcd[1]~0_combout\ & ((!\u4|totale_omw_1bcd|U5bcd[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_1bcd|U3bcd[3]~3_combout\,
	datab => \u4|totale_omw_1bcd|U5bcd[1]~0_combout\,
	datac => \u4|totale_omw_1bcd|U5bcd[0]~2_combout\,
	datad => \u4|totale_omw_1bcd|U5bcd[2]~3_combout\,
	combout => \u4|totale_omw_1bcd|bcd_out[5]~2_combout\);

-- Location: LCCOMB_X69_Y21_N10
\u4|tijd_minbcd|bcd_out[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|tijd_minbcd|bcd_out[1]~1_combout\ = (\u7|minutes_int\(1) & (((!\u4|tijd_minbcd|U3bcd[1]~0_combout\ & !\u4|tijd_minbcd|U3bcd[2]~1_combout\)))) # (!\u7|minutes_int\(1) & ((\u4|tijd_minbcd|U3bcd[2]~1_combout\) # ((\u4|tijd_minbcd|U3bcd[0]~2_combout\ & 
-- \u4|tijd_minbcd|U3bcd[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|minutes_int\(1),
	datab => \u4|tijd_minbcd|U3bcd[0]~2_combout\,
	datac => \u4|tijd_minbcd|U3bcd[1]~0_combout\,
	datad => \u4|tijd_minbcd|U3bcd[2]~1_combout\,
	combout => \u4|tijd_minbcd|bcd_out[1]~1_combout\);

-- Location: LCCOMB_X67_Y24_N12
\u4|maximale2bcd|bcd_out[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|bcd_out[1]~12_combout\ = (\u6|rpm_max_int\(1) & (!\u4|maximale2bcd|U3bcd[1]~0_combout\ & ((!\u4|maximale2bcd|U3bcd[2]~1_combout\)))) # (!\u6|rpm_max_int\(1) & ((\u4|maximale2bcd|U3bcd[2]~1_combout\) # 
-- ((\u4|maximale2bcd|U3bcd[1]~0_combout\ & \u4|maximale2bcd|U3bcd[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(1),
	datab => \u4|maximale2bcd|U3bcd[1]~0_combout\,
	datac => \u4|maximale2bcd|U3bcd[0]~2_combout\,
	datad => \u4|maximale2bcd|U3bcd[2]~1_combout\,
	combout => \u4|maximale2bcd|bcd_out[1]~12_combout\);

-- Location: LCCOMB_X67_Y24_N22
\u4|totale_omw_2bcd|bcd_out[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|bcd_out[1]~12_combout\ = (\u0|omwentel255\(1) & (((!\u4|totale_omw_2bcd|U3bcd[1]~0_combout\ & !\u4|totale_omw_2bcd|U3bcd[2]~1_combout\)))) # (!\u0|omwentel255\(1) & ((\u4|totale_omw_2bcd|U3bcd[2]~1_combout\) # 
-- ((\u4|totale_omw_2bcd|U3bcd[0]~2_combout\ & \u4|totale_omw_2bcd|U3bcd[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(1),
	datab => \u4|totale_omw_2bcd|U3bcd[0]~2_combout\,
	datac => \u4|totale_omw_2bcd|U3bcd[1]~0_combout\,
	datad => \u4|totale_omw_2bcd|U3bcd[2]~1_combout\,
	combout => \u4|totale_omw_2bcd|bcd_out[1]~12_combout\);

-- Location: LCCOMB_X69_Y22_N12
\u4|tijd_secbcd|bcd_out[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|tijd_secbcd|bcd_out[1]~1_combout\ = (\u4|tijd_secbcd|U3bcd[1]~0_combout\ & (!\u7|seconds_int\(1) & ((\u4|tijd_secbcd|U3bcd[0]~2_combout\) # (\u4|tijd_secbcd|U3bcd[2]~1_combout\)))) # (!\u4|tijd_secbcd|U3bcd[1]~0_combout\ & (\u7|seconds_int\(1) $ 
-- (((\u4|tijd_secbcd|U3bcd[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|tijd_secbcd|U3bcd[1]~0_combout\,
	datab => \u7|seconds_int\(1),
	datac => \u4|tijd_secbcd|U3bcd[0]~2_combout\,
	datad => \u4|tijd_secbcd|U3bcd[2]~1_combout\,
	combout => \u4|tijd_secbcd|bcd_out[1]~1_combout\);

-- Location: LCCOMB_X67_Y25_N22
\u4|totale_omw_2bcd|bcd_out[5]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|bcd_out[5]~13_combout\ = \u4|totale_omw_2bcd|U3bcd[3]~3_combout\ $ (((!\u4|totale_omw_2bcd|Add6~0_combout\ & ((\u4|totale_omw_2bcd|U5bcd[1]~1_combout\) # (!\u4|totale_omw_2bcd|U5bcd[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_2bcd|U3bcd[3]~3_combout\,
	datab => \u4|totale_omw_2bcd|U5bcd[1]~1_combout\,
	datac => \u4|totale_omw_2bcd|Add6~0_combout\,
	datad => \u4|totale_omw_2bcd|U5bcd[2]~0_combout\,
	combout => \u4|totale_omw_2bcd|bcd_out[5]~13_combout\);

-- Location: LCCOMB_X66_Y24_N28
\u4|maximale2bcd|bcd_out[5]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|bcd_out[5]~13_combout\ = \u4|maximale2bcd|U3bcd[3]~3_combout\ $ (((!\u4|maximale2bcd|Add6~0_combout\ & ((\u4|maximale2bcd|U5bcd[1]~1_combout\) # (!\u4|maximale2bcd|U5bcd[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|maximale2bcd|U5bcd[1]~1_combout\,
	datab => \u4|maximale2bcd|U3bcd[3]~3_combout\,
	datac => \u4|maximale2bcd|U5bcd[2]~0_combout\,
	datad => \u4|maximale2bcd|Add6~0_combout\,
	combout => \u4|maximale2bcd|bcd_out[5]~13_combout\);

-- Location: LCCOMB_X69_Y21_N12
\u4|tijd_minbcd|U3bcd[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|tijd_minbcd|U3bcd[3]~3_combout\ = (\u7|minutes_int\(3) & (\u7|minutes_int\(4) & ((\u7|minutes_int\(2)) # (!\u7|minutes_int\(5))))) # (!\u7|minutes_int\(3) & ((\u7|minutes_int\(5) & ((!\u7|minutes_int\(4)))) # (!\u7|minutes_int\(5) & 
-- (\u7|minutes_int\(2) & \u7|minutes_int\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|minutes_int\(2),
	datab => \u7|minutes_int\(3),
	datac => \u7|minutes_int\(5),
	datad => \u7|minutes_int\(4),
	combout => \u4|tijd_minbcd|U3bcd[3]~3_combout\);

-- Location: LCCOMB_X67_Y24_N8
\u4|totale_omw_2bcd|bcd_out[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|bcd_out[2]~14_combout\ = (\u0|omwentel255\(1) & (\u4|totale_omw_2bcd|U3bcd[0]~2_combout\)) # (!\u0|omwentel255\(1) & ((\u4|totale_omw_2bcd|U3bcd[0]~2_combout\ & (!\u4|totale_omw_2bcd|U3bcd[1]~0_combout\ & 
-- !\u4|totale_omw_2bcd|U3bcd[2]~1_combout\)) # (!\u4|totale_omw_2bcd|U3bcd[0]~2_combout\ & ((\u4|totale_omw_2bcd|U3bcd[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(1),
	datab => \u4|totale_omw_2bcd|U3bcd[0]~2_combout\,
	datac => \u4|totale_omw_2bcd|U3bcd[1]~0_combout\,
	datad => \u4|totale_omw_2bcd|U3bcd[2]~1_combout\,
	combout => \u4|totale_omw_2bcd|bcd_out[2]~14_combout\);

-- Location: LCCOMB_X66_Y25_N16
\u0|omwentel255[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel255[7]~0_combout\ = (\u0|omwentel255\(7) & (\u0|omwentel255\(6) & (\u0|omwentel255\(5) & \u0|omwentel255\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(7),
	datab => \u0|omwentel255\(6),
	datac => \u0|omwentel255\(5),
	datad => \u0|omwentel255\(4),
	combout => \u0|omwentel255[7]~0_combout\);

-- Location: LCCOMB_X67_Y25_N2
\u4|totale_omw_2bcd|Add6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|Add6~1_combout\ = (\u4|totale_omw_2bcd|is_gt_4~1_combout\ $ (!\u4|totale_omw_2bcd|U2bcd[3]~3_combout\)) # (!\u4|totale_omw_2bcd|U3bcd[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_2bcd|is_gt_4~1_combout\,
	datab => \u4|totale_omw_2bcd|U2bcd[3]~3_combout\,
	datad => \u4|totale_omw_2bcd|U3bcd[3]~3_combout\,
	combout => \u4|totale_omw_2bcd|Add6~1_combout\);

-- Location: LCCOMB_X69_Y22_N28
\u4|tijd_secbcd|bcd_out[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|tijd_secbcd|bcd_out[2]~2_combout\ = (\u7|seconds_int\(1) & (((\u4|tijd_secbcd|U3bcd[0]~2_combout\)))) # (!\u7|seconds_int\(1) & ((\u4|tijd_secbcd|U3bcd[0]~2_combout\ & (!\u4|tijd_secbcd|U3bcd[1]~0_combout\ & !\u4|tijd_secbcd|U3bcd[2]~1_combout\)) # 
-- (!\u4|tijd_secbcd|U3bcd[0]~2_combout\ & ((\u4|tijd_secbcd|U3bcd[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|tijd_secbcd|U3bcd[1]~0_combout\,
	datab => \u7|seconds_int\(1),
	datac => \u4|tijd_secbcd|U3bcd[0]~2_combout\,
	datad => \u4|tijd_secbcd|U3bcd[2]~1_combout\,
	combout => \u4|tijd_secbcd|bcd_out[2]~2_combout\);

-- Location: LCCOMB_X65_Y22_N20
\u4|totale_omw_1bcd|bcd_out[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|bcd_out[3]~5_combout\ = (\u4|totale_omw_1bcd|U3bcd[1]~0_combout\ & (!\u0|omwentel99\(1) & ((!\u4|totale_omw_1bcd|U3bcd[0]~2_combout\)))) # (!\u4|totale_omw_1bcd|U3bcd[1]~0_combout\ & (\u4|totale_omw_1bcd|U3bcd[2]~1_combout\ & 
-- ((\u0|omwentel99\(1)) # (\u4|totale_omw_1bcd|U3bcd[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(1),
	datab => \u4|totale_omw_1bcd|U3bcd[1]~0_combout\,
	datac => \u4|totale_omw_1bcd|U3bcd[2]~1_combout\,
	datad => \u4|totale_omw_1bcd|U3bcd[0]~2_combout\,
	combout => \u4|totale_omw_1bcd|bcd_out[3]~5_combout\);

-- Location: LCCOMB_X66_Y23_N18
\u4|totale_omw_1bcd|bcd_out[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|bcd_out[7]~6_combout\ = (\u4|totale_omw_1bcd|U3bcd[3]~3_combout\ & (\u4|totale_omw_1bcd|U5bcd[1]~0_combout\ & (!\u4|totale_omw_1bcd|U5bcd[0]~2_combout\))) # (!\u4|totale_omw_1bcd|U3bcd[3]~3_combout\ & 
-- (((\u4|totale_omw_1bcd|U5bcd[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_1bcd|U3bcd[3]~3_combout\,
	datab => \u4|totale_omw_1bcd|U5bcd[1]~0_combout\,
	datac => \u4|totale_omw_1bcd|U5bcd[0]~2_combout\,
	datad => \u4|totale_omw_1bcd|U5bcd[2]~3_combout\,
	combout => \u4|totale_omw_1bcd|bcd_out[7]~6_combout\);

-- Location: LCCOMB_X69_Y21_N2
\u4|tijd_minbcd|bcd_out[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|tijd_minbcd|bcd_out[3]~3_combout\ = (\u4|tijd_minbcd|U3bcd[1]~0_combout\ & (!\u7|minutes_int\(1) & (!\u4|tijd_minbcd|U3bcd[0]~2_combout\))) # (!\u4|tijd_minbcd|U3bcd[1]~0_combout\ & (\u4|tijd_minbcd|U3bcd[2]~1_combout\ & ((\u7|minutes_int\(1)) # 
-- (\u4|tijd_minbcd|U3bcd[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|minutes_int\(1),
	datab => \u4|tijd_minbcd|U3bcd[0]~2_combout\,
	datac => \u4|tijd_minbcd|U3bcd[1]~0_combout\,
	datad => \u4|tijd_minbcd|U3bcd[2]~1_combout\,
	combout => \u4|tijd_minbcd|bcd_out[3]~3_combout\);

-- Location: LCCOMB_X67_Y25_N8
\u4|totale_omw_2bcd|bcd_out[7]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|bcd_out[7]~16_combout\ = (\u4|totale_omw_2bcd|U5bcd[1]~2_combout\ & (((!\u4|totale_omw_2bcd|Add6~1_combout\)))) # (!\u4|totale_omw_2bcd|U5bcd[1]~2_combout\ & (!\u4|totale_omw_2bcd|U5bcd[1]~1_combout\ & 
-- (\u4|totale_omw_2bcd|U5bcd[2]~0_combout\ & \u4|totale_omw_2bcd|Add6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_2bcd|U5bcd[1]~2_combout\,
	datab => \u4|totale_omw_2bcd|U5bcd[1]~1_combout\,
	datac => \u4|totale_omw_2bcd|U5bcd[2]~0_combout\,
	datad => \u4|totale_omw_2bcd|Add6~1_combout\,
	combout => \u4|totale_omw_2bcd|bcd_out[7]~16_combout\);

-- Location: LCFF_X71_Y21_N13
\u7|ticks[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~44_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(22));

-- Location: LCFF_X71_Y21_N11
\u7|ticks[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~42_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(21));

-- Location: LCCOMB_X70_Y21_N6
\u7|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Equal0~2_combout\ = (!\u7|ticks\(22) & (!\u7|ticks\(23) & (!\u7|ticks\(20) & !\u7|ticks\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|ticks\(22),
	datab => \u7|ticks\(23),
	datac => \u7|ticks\(20),
	datad => \u7|ticks\(21),
	combout => \u7|Equal0~2_combout\);

-- Location: LCFF_X70_Y21_N9
\u7|ticks[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|ticks~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(10));

-- Location: LCFF_X70_Y21_N27
\u7|ticks[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|ticks~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(9));

-- Location: LCCOMB_X70_Y21_N10
\u7|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Equal0~6_combout\ = (\u7|ticks\(8) & (\u7|ticks\(9) & (\u7|ticks\(10) & !\u7|ticks\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|ticks\(8),
	datab => \u7|ticks\(9),
	datac => \u7|ticks\(10),
	datad => \u7|ticks\(11),
	combout => \u7|Equal0~6_combout\);

-- Location: LCFF_X71_Y22_N13
\u7|ticks[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~12_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(6));

-- Location: LCCOMB_X68_Y25_N0
\u0|omwentel255[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel255[7]~1_combout\ = (\u0|omwentel255\(2) & (\u0|omwentel255\(1) & (\u0|omwentel255\(0) & \u0|omwentel255\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(2),
	datab => \u0|omwentel255\(1),
	datac => \u0|omwentel255\(0),
	datad => \u0|omwentel255\(3),
	combout => \u0|omwentel255[7]~1_combout\);

-- Location: LCCOMB_X65_Y25_N4
\u0|omwentel255[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel255[7]~2_combout\ = (\u0|omwentel255[7]~1_combout\ & \u0|omwentel255[7]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|omwentel255[7]~1_combout\,
	datac => \u0|omwentel255[7]~0_combout\,
	combout => \u0|omwentel255[7]~2_combout\);

-- Location: LCCOMB_X68_Y25_N4
\u0|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~20_combout\ = (\u0|Equal0~1_combout\ & (\u0|Add1~6_combout\ & \u0|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|Equal0~1_combout\,
	datac => \u0|Add1~6_combout\,
	datad => \u0|Equal0~0_combout\,
	combout => \u0|Add1~20_combout\);

-- Location: LCCOMB_X68_Y25_N10
\u0|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~22_combout\ = (\u0|Equal0~0_combout\ & (\u0|Equal0~1_combout\ & \u0|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~0_combout\,
	datac => \u0|Equal0~1_combout\,
	datad => \u0|Add1~0_combout\,
	combout => \u0|Add1~22_combout\);

-- Location: LCCOMB_X70_Y21_N8
\u7|ticks~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|ticks~1_combout\ = (!\u7|Equal0~10_combout\ & \u7|Add2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u7|Equal0~10_combout\,
	datad => \u7|Add2~20_combout\,
	combout => \u7|ticks~1_combout\);

-- Location: LCCOMB_X70_Y21_N26
\u7|ticks~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|ticks~2_combout\ = (!\u7|Equal0~10_combout\ & \u7|Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u7|Equal0~10_combout\,
	datad => \u7|Add2~18_combout\,
	combout => \u7|ticks~2_combout\);

-- Location: LCCOMB_X63_Y23_N14
\u4|Selector19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector19~3_combout\ = (\u4|state.update~regout\ & (!\u4|Equal1~0_combout\ & (!\u4|drive~3_combout\ & \u4|lcdm|busy~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update~regout\,
	datab => \u4|Equal1~0_combout\,
	datac => \u4|drive~3_combout\,
	datad => \u4|lcdm|busy~regout\,
	combout => \u4|Selector19~3_combout\);

-- Location: LCCOMB_X78_Y24_N14
\u4|lcdm|WideOr41~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr41~3_combout\ = (\u4|lcdm|current_state.command_init_5~regout\) # ((\u4|lcdm|current_state.command_init_1~regout\) # ((\u4|lcdm|current_state.command_init_3~regout\) # (!\u4|lcdm|WideOr18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_5~regout\,
	datab => \u4|lcdm|current_state.command_init_1~regout\,
	datac => \u4|lcdm|WideOr18~1_combout\,
	datad => \u4|lcdm|current_state.command_init_3~regout\,
	combout => \u4|lcdm|WideOr41~3_combout\);

-- Location: LCCOMB_X68_Y21_N26
\u4|Mux263~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~142_combout\ = (!\u4|line_counter\(0) & (!\SW~combout\(0) & (\u4|Mux263~58_combout\ & !\u4|line_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \SW~combout\(0),
	datac => \u4|Mux263~58_combout\,
	datad => \u4|line_counter\(1),
	combout => \u4|Mux263~142_combout\);

-- Location: LCCOMB_X69_Y24_N26
\u4|Mux257~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux257~12_combout\ = (\SW~combout\(0) & (\u4|line_counter\(1) & ((\u4|character_counter\(2))))) # (!\SW~combout\(0) & (((!\u4|Mux258~4_combout\ & !\u4|character_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|line_counter\(1),
	datac => \u4|Mux258~4_combout\,
	datad => \u4|character_counter\(2),
	combout => \u4|Mux257~12_combout\);

-- Location: LCCOMB_X67_Y23_N28
\u4|Mux263~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~15_combout\ = (\KNOP~combout\(1) & (\u4|character_counter\(2) & ((\u4|RPM_line[1][6]~regout\) # (\u4|line_counter\(0))))) # (!\KNOP~combout\(1) & (((\u4|line_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|RPM_line[1][6]~regout\,
	datab => \u4|line_counter\(0),
	datac => \KNOP~combout\(1),
	datad => \u4|character_counter\(2),
	combout => \u4|Mux263~15_combout\);

-- Location: LCCOMB_X67_Y23_N10
\u4|Mux263~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~146_combout\ = (!\SW~combout\(0) & (!\u4|line_counter\(1) & \u4|Mux263~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datac => \u4|line_counter\(1),
	datad => \u4|Mux263~15_combout\,
	combout => \u4|Mux263~146_combout\);

-- Location: LCCOMB_X67_Y25_N28
\u4|totale_omw_2bcd|U2bcd[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|U2bcd[3]~3_combout\ = \u4|totale_omw_2bcd|U1bcd[2]~1_combout\ $ ((((!\u0|omwentel255\(3) & !\u4|totale_omw_2bcd|U1bcd[0]~2_combout\)) # (!\u4|totale_omw_2bcd|U1bcd[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(3),
	datab => \u4|totale_omw_2bcd|U1bcd[1]~0_combout\,
	datac => \u4|totale_omw_2bcd|U1bcd[2]~1_combout\,
	datad => \u4|totale_omw_2bcd|U1bcd[0]~2_combout\,
	combout => \u4|totale_omw_2bcd|U2bcd[3]~3_combout\);

-- Location: LCCOMB_X66_Y25_N28
\u4|totale_omw_2bcd|is_gt_4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|is_gt_4~2_combout\ = (\u0|omwentel255\(6)) # (\u0|omwentel255\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|omwentel255\(6),
	datad => \u0|omwentel255\(5),
	combout => \u4|totale_omw_2bcd|is_gt_4~2_combout\);

-- Location: LCCOMB_X67_Y25_N6
\u4|totale_omw_2bcd|U3bcd[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|U3bcd[3]~3_combout\ = \u4|totale_omw_2bcd|U2bcd[2]~1_combout\ $ ((((!\u0|omwentel255\(2) & !\u4|totale_omw_2bcd|U2bcd[0]~2_combout\)) # (!\u4|totale_omw_2bcd|U2bcd[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(2),
	datab => \u4|totale_omw_2bcd|U2bcd[1]~0_combout\,
	datac => \u4|totale_omw_2bcd|U2bcd[2]~1_combout\,
	datad => \u4|totale_omw_2bcd|U2bcd[0]~2_combout\,
	combout => \u4|totale_omw_2bcd|U3bcd[3]~3_combout\);

-- Location: LCCOMB_X66_Y24_N2
\u4|maximale2bcd|is_gt_4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|is_gt_4~2_combout\ = (\u6|rpm_max_int\(5)) # (\u6|rpm_max_int\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u6|rpm_max_int\(5),
	datad => \u6|rpm_max_int\(6),
	combout => \u4|maximale2bcd|is_gt_4~2_combout\);

-- Location: LCCOMB_X65_Y24_N28
\u4|maximale2bcd|bcd_out[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|bcd_out[6]~7_combout\ = (\u6|rpm_max_int\(5) & (\u6|rpm_max_int\(6) $ (((!\u6|rpm_max_int\(7)) # (!\u6|rpm_max_int\(4)))))) # (!\u6|rpm_max_int\(5) & ((\u6|rpm_max_int\(7) & ((!\u6|rpm_max_int\(6)))) # (!\u6|rpm_max_int\(7) & 
-- (!\u6|rpm_max_int\(4) & \u6|rpm_max_int\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(5),
	datab => \u6|rpm_max_int\(4),
	datac => \u6|rpm_max_int\(7),
	datad => \u6|rpm_max_int\(6),
	combout => \u4|maximale2bcd|bcd_out[6]~7_combout\);

-- Location: LCCOMB_X66_Y25_N26
\u4|totale_omw_2bcd|bcd_out[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|bcd_out[6]~3_combout\ = (\u0|omwentel255\(7) & ((\u0|omwentel255\(6) & (\u0|omwentel255\(4) & \u0|omwentel255\(5))) # (!\u0|omwentel255\(6) & ((\u0|omwentel255\(4)) # (\u0|omwentel255\(5)))))) # (!\u0|omwentel255\(7) & 
-- ((\u0|omwentel255\(6) & (!\u0|omwentel255\(4) & !\u0|omwentel255\(5))) # (!\u0|omwentel255\(6) & (\u0|omwentel255\(4) & \u0|omwentel255\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(7),
	datab => \u0|omwentel255\(6),
	datac => \u0|omwentel255\(4),
	datad => \u0|omwentel255\(5),
	combout => \u4|totale_omw_2bcd|bcd_out[6]~3_combout\);

-- Location: LCCOMB_X66_Y25_N20
\u4|totale_omw_2bcd|bcd_out[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|bcd_out[6]~4_combout\ = (\u0|omwentel255\(6) & ((\u0|omwentel255\(7) & (\u0|omwentel255\(4) & \u0|omwentel255\(5))) # (!\u0|omwentel255\(7) & (!\u0|omwentel255\(4) & !\u0|omwentel255\(5))))) # (!\u0|omwentel255\(6) & 
-- (\u0|omwentel255\(5) $ (((\u0|omwentel255\(7) & \u0|omwentel255\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(7),
	datab => \u0|omwentel255\(6),
	datac => \u0|omwentel255\(4),
	datad => \u0|omwentel255\(5),
	combout => \u4|totale_omw_2bcd|bcd_out[6]~4_combout\);

-- Location: LCCOMB_X66_Y25_N10
\u4|totale_omw_2bcd|bcd_out[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|bcd_out[6]~6_combout\ = (\u0|omwentel255\(7) & ((\u0|omwentel255\(5) & (\u0|omwentel255\(6) $ (!\u0|omwentel255\(4)))) # (!\u0|omwentel255\(5) & (!\u0|omwentel255\(6) & \u0|omwentel255\(4))))) # (!\u0|omwentel255\(7) & 
-- ((\u0|omwentel255\(5) & (!\u0|omwentel255\(6) & \u0|omwentel255\(4))) # (!\u0|omwentel255\(5) & (\u0|omwentel255\(6) & !\u0|omwentel255\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(7),
	datab => \u0|omwentel255\(5),
	datac => \u0|omwentel255\(6),
	datad => \u0|omwentel255\(4),
	combout => \u4|totale_omw_2bcd|bcd_out[6]~6_combout\);

-- Location: LCCOMB_X66_Y25_N0
\u4|totale_omw_2bcd|bcd_out[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|bcd_out[6]~7_combout\ = (\u0|omwentel255\(7) & (\u0|omwentel255\(6) $ (((!\u0|omwentel255\(4)) # (!\u0|omwentel255\(5)))))) # (!\u0|omwentel255\(7) & ((\u0|omwentel255\(5) & (!\u0|omwentel255\(6))) # (!\u0|omwentel255\(5) & 
-- (\u0|omwentel255\(6) & !\u0|omwentel255\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(7),
	datab => \u0|omwentel255\(5),
	datac => \u0|omwentel255\(6),
	datad => \u0|omwentel255\(4),
	combout => \u4|totale_omw_2bcd|bcd_out[6]~7_combout\);

-- Location: LCCOMB_X66_Y25_N18
\u4|totale_omw_2bcd|bcd_out[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|bcd_out[6]~8_combout\ = (\u0|omwentel255\(2) & (((\u0|omwentel255\(3))))) # (!\u0|omwentel255\(2) & ((\u0|omwentel255\(3) & (\u4|totale_omw_2bcd|bcd_out[6]~4_combout\)) # (!\u0|omwentel255\(3) & 
-- ((\u4|totale_omw_2bcd|bcd_out[6]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_2bcd|bcd_out[6]~4_combout\,
	datab => \u4|totale_omw_2bcd|bcd_out[6]~3_combout\,
	datac => \u0|omwentel255\(2),
	datad => \u0|omwentel255\(3),
	combout => \u4|totale_omw_2bcd|bcd_out[6]~8_combout\);

-- Location: LCCOMB_X66_Y25_N24
\u4|totale_omw_2bcd|bcd_out[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|bcd_out[6]~9_combout\ = (\u0|omwentel255\(2) & ((\u4|totale_omw_2bcd|bcd_out[6]~8_combout\ & ((\u4|totale_omw_2bcd|bcd_out[6]~7_combout\))) # (!\u4|totale_omw_2bcd|bcd_out[6]~8_combout\ & (\u4|totale_omw_2bcd|bcd_out[6]~6_combout\)))) 
-- # (!\u0|omwentel255\(2) & (((\u4|totale_omw_2bcd|bcd_out[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_2bcd|bcd_out[6]~6_combout\,
	datab => \u4|totale_omw_2bcd|bcd_out[6]~7_combout\,
	datac => \u0|omwentel255\(2),
	datad => \u4|totale_omw_2bcd|bcd_out[6]~8_combout\,
	combout => \u4|totale_omw_2bcd|bcd_out[6]~9_combout\);

-- Location: LCCOMB_X68_Y25_N12
\u0|omwentel255[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel255\(3) = (\BUTTON~combout\(3) & ((GLOBAL(\u0|omwentel255[7]~3clkctrl_outclk\) & ((\u0|Add1~20_combout\))) # (!GLOBAL(\u0|omwentel255[7]~3clkctrl_outclk\) & (\u0|omwentel255\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(3),
	datab => \BUTTON~combout\(3),
	datac => \u0|Add1~20_combout\,
	datad => \u0|omwentel255[7]~3clkctrl_outclk\,
	combout => \u0|omwentel255\(3));

-- Location: LCCOMB_X61_Y42_N8
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

-- Location: LCCOMB_X68_Y22_N30
\u4|totale_omw_line[14][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_line[14][0]~feeder_combout\ = \u0|omwentel99\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|omwentel99\(0),
	combout => \u4|totale_omw_line[14][0]~feeder_combout\);

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

-- Location: LCCOMB_X78_Y24_N28
\u4|lcdm|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector26~0_combout\ = (\u4|lcdm|current_state.command_init_2~regout\) # ((\u4|lcdm|current_state.command_init_3~regout\ & ((!\u4|lcdm|Equal0~0_combout\) # (!\u4|lcdm|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_2~regout\,
	datab => \u4|lcdm|Equal0~5_combout\,
	datac => \u4|lcdm|current_state.command_init_3~regout\,
	datad => \u4|lcdm|Equal0~0_combout\,
	combout => \u4|lcdm|Selector26~0_combout\);

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

-- Location: LCFF_X78_Y24_N29
\u4|lcdm|current_state.command_init_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector26~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_3~regout\);

-- Location: LCCOMB_X78_Y24_N22
\u4|lcdm|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector24~0_combout\ = ((\u4|lcdm|current_state.command_init_1~regout\ & ((!\u4|lcdm|Equal0~0_combout\) # (!\u4|lcdm|Equal0~5_combout\)))) # (!\u4|lcdm|current_state.reset~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.reset~regout\,
	datab => \u4|lcdm|Equal0~5_combout\,
	datac => \u4|lcdm|current_state.command_init_1~regout\,
	datad => \u4|lcdm|Equal0~0_combout\,
	combout => \u4|lcdm|Selector24~0_combout\);

-- Location: LCFF_X78_Y24_N23
\u4|lcdm|current_state.command_init_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector24~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_1~regout\);

-- Location: LCCOMB_X78_Y24_N6
\u4|lcdm|WideOr41~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr41~2_combout\ = (!\u4|lcdm|current_state.command_init_5~regout\ & (!\u4|lcdm|current_state.command_init_3~regout\ & !\u4|lcdm|current_state.command_init_1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_5~regout\,
	datab => \u4|lcdm|current_state.command_init_3~regout\,
	datad => \u4|lcdm|current_state.command_init_1~regout\,
	combout => \u4|lcdm|WideOr41~2_combout\);

-- Location: LCCOMB_X76_Y26_N16
\u4|lcdm|Selector52~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector52~0_combout\ = (!\u4|lcdm|current_state.pulse_e_4~regout\ & !\u4|lcdm|current_state.pulse_busy_flag_4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.pulse_e_4~regout\,
	datad => \u4|lcdm|current_state.pulse_busy_flag_4~regout\,
	combout => \u4|lcdm|Selector52~0_combout\);

-- Location: LCCOMB_X77_Y25_N28
\u4|lcdm|Selector43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector43~0_combout\ = ((\u4|lcdm|current_state.pulse_e~regout\ & (!\u4|lcdm|Equal0~6_combout\ & !\u4|lcdm|Selector52~0_combout\))) # (!\u4|lcdm|WideOr18~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr18~1_combout\,
	datab => \u4|lcdm|current_state.pulse_e~regout\,
	datac => \u4|lcdm|Equal0~6_combout\,
	datad => \u4|lcdm|Selector52~0_combout\,
	combout => \u4|lcdm|Selector43~0_combout\);

-- Location: LCCOMB_X77_Y25_N8
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

-- Location: LCFF_X77_Y25_N9
\u4|lcdm|current_state.pulse_e\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector43~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_e~regout\);

-- Location: LCFF_X62_Y23_N29
\u4|state.hold2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u4|state.hold~regout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|state.hold2~regout\);

-- Location: LCCOMB_X62_Y23_N4
\u4|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector0~0_combout\ = (!\u4|state.hold2~regout\ & ((\u4|lcdm|busy~regout\) # (\u4|state.reset~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|busy~regout\,
	datac => \u4|state.reset~regout\,
	datad => \u4|state.hold2~regout\,
	combout => \u4|Selector0~0_combout\);

-- Location: LCFF_X62_Y23_N5
\u4|state.reset\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector0~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|state.reset~regout\);

-- Location: LCCOMB_X62_Y23_N30
\u4|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector1~1_combout\ = (\u4|Selector1~0_combout\ & (!\u4|state.hold2~regout\ & ((\u4|state.update_linecount_wait~regout\) # (!\u4|state.reset~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update_linecount_wait~regout\,
	datab => \u4|Selector1~0_combout\,
	datac => \u4|state.reset~regout\,
	datad => \u4|state.hold2~regout\,
	combout => \u4|Selector1~1_combout\);

-- Location: LCCOMB_X62_Y23_N0
\u4|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector1~2_combout\ = (\u4|lcdm|busy~regout\ & ((\u4|state.update~regout\ & ((\u4|Equal1~0_combout\))) # (!\u4|state.update~regout\ & (\u4|Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update~regout\,
	datab => \u4|lcdm|busy~regout\,
	datac => \u4|Selector1~1_combout\,
	datad => \u4|Equal1~0_combout\,
	combout => \u4|Selector1~2_combout\);

-- Location: LCFF_X62_Y23_N1
\u4|state.write_char\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector1~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|state.write_char~regout\);

-- Location: LCFF_X62_Y23_N13
\u4|wr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u4|state.write_char~regout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|wr~regout\);

-- Location: LCCOMB_X62_Y23_N6
\u4|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector3~0_combout\ = (\u4|wr~regout\) # ((!\u4|lcdm|busy~regout\ & \u4|state.update~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|busy~regout\,
	datac => \u4|state.update~regout\,
	datad => \u4|wr~regout\,
	combout => \u4|Selector3~0_combout\);

-- Location: LCFF_X62_Y23_N7
\u4|state.update\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector3~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|state.update~regout\);

-- Location: LCCOMB_X63_Y23_N6
\u4|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector21~0_combout\ = (\u4|WideOr7~combout\) # ((\u4|line_counter\(2) & (!\u4|line_counter\(1) & \u4|state.update~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(2),
	datab => \u4|WideOr7~combout\,
	datac => \u4|line_counter\(1),
	datad => \u4|state.update~regout\,
	combout => \u4|Selector21~0_combout\);

-- Location: LCCOMB_X63_Y23_N26
\u4|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector22~0_combout\ = (!\u4|Equal1~0_combout\ & \u4|lcdm|busy~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Equal1~0_combout\,
	datad => \u4|lcdm|busy~regout\,
	combout => \u4|Selector22~0_combout\);

-- Location: LCCOMB_X67_Y23_N0
\u4|Selector21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector21~1_combout\ = (\u4|line_counter\(0) & ((\u4|Selector21~0_combout\) # ((\u4|state.update~regout\ & !\u4|Selector22~0_combout\)))) # (!\u4|line_counter\(0) & (\u4|state.update~regout\ & ((\u4|Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update~regout\,
	datab => \u4|Selector21~0_combout\,
	datac => \u4|line_counter\(0),
	datad => \u4|Selector22~0_combout\,
	combout => \u4|Selector21~1_combout\);

-- Location: LCFF_X67_Y23_N1
\u4|line_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector21~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|line_counter\(0));

-- Location: LCCOMB_X63_Y23_N18
\u4|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector20~0_combout\ = (\u4|WideOr7~combout\) # ((\u4|state.update~regout\ & ((\u4|drive~3_combout\) # (!\u4|Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update~regout\,
	datab => \u4|WideOr7~combout\,
	datac => \u4|drive~3_combout\,
	datad => \u4|Selector22~0_combout\,
	combout => \u4|Selector20~0_combout\);

-- Location: LCCOMB_X68_Y23_N0
\u4|Selector20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector20~1_combout\ = (\u4|line_counter\(1) & ((\u4|Selector20~0_combout\) # ((\u4|Selector19~3_combout\ & \u4|line_counter\(0))))) # (!\u4|line_counter\(1) & (\u4|Selector19~3_combout\ & (!\u4|line_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selector19~3_combout\,
	datab => \u4|line_counter\(0),
	datac => \u4|line_counter\(1),
	datad => \u4|Selector20~0_combout\,
	combout => \u4|Selector20~1_combout\);

-- Location: LCFF_X68_Y23_N1
\u4|line_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector20~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|line_counter\(1));

-- Location: LCCOMB_X63_Y23_N4
\u4|drive~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|drive~3_combout\ = (\u4|line_counter\(2) & (!\u4|line_counter\(1) & (\u4|line_counter\(0) & !\u4|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(2),
	datab => \u4|line_counter\(1),
	datac => \u4|line_counter\(0),
	datad => \u4|Equal1~0_combout\,
	combout => \u4|drive~3_combout\);

-- Location: LCCOMB_X62_Y23_N2
\u4|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector12~0_combout\ = (\u4|state.update~regout\ & (\u4|lcdm|busy~regout\ & \u4|drive~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update~regout\,
	datab => \u4|lcdm|busy~regout\,
	datad => \u4|drive~3_combout\,
	combout => \u4|Selector12~0_combout\);

-- Location: LCFF_X62_Y23_N3
\u4|state.hold\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector12~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|state.hold~regout\);

-- Location: LCCOMB_X62_Y23_N12
\u4|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector1~0_combout\ = (!\u4|state.update_linecount~regout\ & (!\u4|state.hold~regout\ & (!\u4|wr~regout\ & !\u4|state.write_char~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update_linecount~regout\,
	datab => \u4|state.hold~regout\,
	datac => \u4|wr~regout\,
	datad => \u4|state.write_char~regout\,
	combout => \u4|Selector1~0_combout\);

-- Location: LCCOMB_X62_Y23_N10
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

-- Location: LCFF_X62_Y23_N11
\u4|state.update_linecount_wait\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector5~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|state.update_linecount_wait~regout\);

-- Location: LCCOMB_X62_Y23_N28
\u4|WideOr7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|WideOr7~combout\ = ((\u4|state.hold2~regout\) # (\u4|state.update_linecount_wait~regout\)) # (!\u4|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Selector1~0_combout\,
	datac => \u4|state.hold2~regout\,
	datad => \u4|state.update_linecount_wait~regout\,
	combout => \u4|WideOr7~combout\);

-- Location: LCCOMB_X63_Y23_N10
\u4|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector15~0_combout\ = (\u4|WideOr7~combout\) # ((\u4|state.update~regout\ & ((\u4|drive~3_combout\) # (!\u4|lcdm|busy~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update~regout\,
	datab => \u4|WideOr7~combout\,
	datac => \u4|drive~3_combout\,
	datad => \u4|lcdm|busy~regout\,
	combout => \u4|Selector15~0_combout\);

-- Location: LCCOMB_X63_Y23_N20
\u4|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector14~0_combout\ = (\u4|state.update~regout\ & (!\u4|drive~3_combout\ & \u4|lcdm|busy~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|state.update~regout\,
	datac => \u4|drive~3_combout\,
	datad => \u4|lcdm|busy~regout\,
	combout => \u4|Selector14~0_combout\);

-- Location: LCCOMB_X66_Y23_N26
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

-- Location: LCFF_X66_Y23_N27
\u4|character_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector16~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|character_counter\(2));

-- Location: LCCOMB_X62_Y23_N20
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

-- Location: LCCOMB_X62_Y23_N24
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

-- Location: LCCOMB_X63_Y23_N24
\u4|Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector15~1_combout\ = (\u4|Selector14~0_combout\ & ((\u4|Add1~6_combout\) # ((\u4|character_counter\(3) & \u4|Selector15~0_combout\)))) # (!\u4|Selector14~0_combout\ & (((\u4|character_counter\(3) & \u4|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selector14~0_combout\,
	datab => \u4|Add1~6_combout\,
	datac => \u4|character_counter\(3),
	datad => \u4|Selector15~0_combout\,
	combout => \u4|Selector15~1_combout\);

-- Location: LCFF_X63_Y23_N25
\u4|character_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector15~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|character_counter\(3));

-- Location: LCCOMB_X62_Y23_N26
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

-- Location: LCCOMB_X63_Y23_N8
\u4|Selector14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector14~1_combout\ = (\u4|Equal1~0_combout\ & \u4|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|Equal1~0_combout\,
	datad => \u4|Add1~8_combout\,
	combout => \u4|Selector14~1_combout\);

-- Location: LCCOMB_X63_Y23_N2
\u4|Selector14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector14~2_combout\ = (\u4|Selector14~0_combout\ & ((\u4|Selector14~1_combout\) # ((\u4|character_counter\(4) & \u4|Selector15~0_combout\)))) # (!\u4|Selector14~0_combout\ & (((\u4|character_counter\(4) & \u4|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selector14~0_combout\,
	datab => \u4|Selector14~1_combout\,
	datac => \u4|character_counter\(4),
	datad => \u4|Selector15~0_combout\,
	combout => \u4|Selector14~2_combout\);

-- Location: LCFF_X63_Y23_N3
\u4|character_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector14~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|character_counter\(4));

-- Location: LCCOMB_X63_Y23_N30
\u4|Mux258~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux258~2_combout\ = (!\u4|character_counter\(1) & \u4|character_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|character_counter\(1),
	datad => \u4|character_counter\(0),
	combout => \u4|Mux258~2_combout\);

-- Location: LCCOMB_X63_Y23_N28
\u4|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Equal1~0_combout\ = (\u4|character_counter\(2)) # (((\u4|character_counter\(3)) # (!\u4|Mux258~2_combout\)) # (!\u4|character_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|character_counter\(4),
	datac => \u4|character_counter\(3),
	datad => \u4|Mux258~2_combout\,
	combout => \u4|Equal1~0_combout\);

-- Location: LCCOMB_X68_Y23_N8
\u4|Mux58~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux58~0_combout\ = (!\u4|line_counter\(0) & \u4|line_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|line_counter\(0),
	datad => \u4|line_counter\(1),
	combout => \u4|Mux58~0_combout\);

-- Location: LCCOMB_X66_Y23_N0
\u4|Selector19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector19~2_combout\ = (\u4|line_counter\(2) & ((\u4|Selector20~0_combout\) # ((\u4|Selector19~3_combout\ & !\u4|Mux58~0_combout\)))) # (!\u4|line_counter\(2) & (\u4|Selector19~3_combout\ & (\u4|Mux58~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selector19~3_combout\,
	datab => \u4|Mux58~0_combout\,
	datac => \u4|line_counter\(2),
	datad => \u4|Selector20~0_combout\,
	combout => \u4|Selector19~2_combout\);

-- Location: LCFF_X66_Y23_N1
\u4|line_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector19~2_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|line_counter\(2));

-- Location: LCCOMB_X71_Y24_N24
\u4|goto10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|goto10~0_combout\ = (!\u4|line_counter\(1) & (!\u4|Equal1~0_combout\ & !\u4|line_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \u4|Equal1~0_combout\,
	datad => \u4|line_counter\(2),
	combout => \u4|goto10~0_combout\);

-- Location: LCCOMB_X62_Y42_N10
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

-- Location: LCFF_X71_Y24_N25
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

-- Location: LCCOMB_X63_Y23_N12
\u4|Selector22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector22~1_combout\ = (\u4|line_counter\(2) & (\u4|state.update~regout\ & (!\u4|drive~3_combout\ & \u4|Selector22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(2),
	datab => \u4|state.update~regout\,
	datac => \u4|drive~3_combout\,
	datad => \u4|Selector22~0_combout\,
	combout => \u4|Selector22~1_combout\);

-- Location: LCCOMB_X63_Y23_N0
\u4|Selector22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector22~2_combout\ = (\u4|state.hold~regout\) # (\u4|Selector22~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.hold~regout\,
	datad => \u4|Selector22~1_combout\,
	combout => \u4|Selector22~2_combout\);

-- Location: LCFF_X63_Y23_N1
\u4|home\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector22~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|home~regout\);

-- Location: LCCOMB_X63_Y23_N22
\u4|goto30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|goto30~0_combout\ = (\u4|Mux58~0_combout\ & (\u4|state.update~regout\ & (!\u4|drive~3_combout\ & \u4|Selector22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux58~0_combout\,
	datab => \u4|state.update~regout\,
	datac => \u4|drive~3_combout\,
	datad => \u4|Selector22~0_combout\,
	combout => \u4|goto30~0_combout\);

-- Location: LCFF_X63_Y23_N23
\u4|goto30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|goto30~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|goto30~regout\);

-- Location: LCCOMB_X76_Y24_N2
\u4|lcdm|LCD_DB[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|LCD_DB[0]~8_combout\ = (!\u4|goto20~regout\ & (!\u4|goto10~regout\ & (!\u4|home~regout\ & !\u4|goto30~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|goto20~regout\,
	datab => \u4|goto10~regout\,
	datac => \u4|home~regout\,
	datad => \u4|goto30~regout\,
	combout => \u4|lcdm|LCD_DB[0]~8_combout\);

-- Location: LCCOMB_X76_Y26_N10
\u4|lcdm|Selector53~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector53~0_combout\ = (\LCD_DATA[7]~7\ & \u4|lcdm|current_state.pulse_busy_flag_3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_DATA[7]~7\,
	datad => \u4|lcdm|current_state.pulse_busy_flag_3~regout\,
	combout => \u4|lcdm|Selector53~0_combout\);

-- Location: LCCOMB_X76_Y26_N24
\u4|lcdm|Selector52~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector52~2_combout\ = (\u4|lcdm|current_state.pulse_busy_flag_3~regout\) # ((\u4|lcdm|Selector53~1_combout\) # ((\u4|lcdm|current_state.wait_for_command~regout\ & !\u4|lcdm|LCD_DB[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|lcdm|current_state.pulse_busy_flag_3~regout\,
	datac => \u4|lcdm|LCD_DB[0]~8_combout\,
	datad => \u4|lcdm|Selector53~1_combout\,
	combout => \u4|lcdm|Selector52~2_combout\);

-- Location: LCCOMB_X76_Y26_N28
\u4|lcdm|Selector52~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector52~1_combout\ = (\u4|lcdm|Selector52~0_combout\ & ((\u4|lcdm|current_state.wait_for_command~regout\ & (\u4|wr~regout\)) # (!\u4|lcdm|current_state.wait_for_command~regout\ & ((\u4|lcdm|Equal0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector52~0_combout\,
	datab => \u4|lcdm|current_state.wait_for_command~regout\,
	datac => \u4|wr~regout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector52~1_combout\);

-- Location: LCCOMB_X76_Y26_N6
\u4|lcdm|Selector52~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector52~3_combout\ = (\u4|lcdm|Selector52~2_combout\) # ((\u4|lcdm|Selector52~1_combout\) # ((!\u4|lcdm|current_state.wait_for_command~regout\ & \u4|lcdm|WideOr33~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|lcdm|WideOr33~1_combout\,
	datac => \u4|lcdm|Selector52~2_combout\,
	datad => \u4|lcdm|Selector52~1_combout\,
	combout => \u4|lcdm|Selector52~3_combout\);

-- Location: LCFF_X76_Y26_N11
\u4|lcdm|current_state.pulse_busy_flag_5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector53~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|Selector52~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_busy_flag_5~regout\);

-- Location: LCCOMB_X76_Y26_N26
\u4|lcdm|delay_counter[8]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|delay_counter[8]~2_combout\ = (!\u4|lcdm|current_state.pulse_busy_flag_4~regout\ & (!\u4|lcdm|current_state.pulse_e_4~regout\ & !\u4|lcdm|current_state.pulse_busy_flag_5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.pulse_busy_flag_4~regout\,
	datac => \u4|lcdm|current_state.pulse_e_4~regout\,
	datad => \u4|lcdm|current_state.pulse_busy_flag_5~regout\,
	combout => \u4|lcdm|delay_counter[8]~2_combout\);

-- Location: LCCOMB_X77_Y25_N10
\u4|lcdm|Selector48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector48~0_combout\ = (\u4|lcdm|Equal0~6_combout\ & (((\u4|lcdm|current_state.pulse_busy_flag_5~regout\)))) # (!\u4|lcdm|Equal0~6_combout\ & (!\u4|lcdm|Selector52~0_combout\ & (\u4|lcdm|current_state.pulse_busy_flag~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|Selector52~0_combout\,
	datac => \u4|lcdm|current_state.pulse_busy_flag~regout\,
	datad => \u4|lcdm|current_state.pulse_busy_flag_5~regout\,
	combout => \u4|lcdm|Selector48~0_combout\);

-- Location: LCFF_X77_Y25_N11
\u4|lcdm|current_state.pulse_busy_flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector48~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_busy_flag~regout\);

-- Location: LCCOMB_X75_Y26_N26
\u4|lcdm|Selector49~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector49~0_combout\ = (\u4|lcdm|current_state.pulse_busy_flag~regout\) # ((\u4|lcdm|current_state.pulse_busy_flag_1~regout\ & ((!\u4|lcdm|Equal0~5_combout\) # (!\u4|lcdm|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~0_combout\,
	datab => \u4|lcdm|Equal0~5_combout\,
	datac => \u4|lcdm|current_state.pulse_busy_flag_1~regout\,
	datad => \u4|lcdm|current_state.pulse_busy_flag~regout\,
	combout => \u4|lcdm|Selector49~0_combout\);

-- Location: LCFF_X75_Y26_N27
\u4|lcdm|current_state.pulse_busy_flag_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector49~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_busy_flag_1~regout\);

-- Location: LCCOMB_X76_Y26_N30
\u4|lcdm|Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector44~0_combout\ = (\u4|lcdm|current_state.pulse_e~regout\) # ((\u4|lcdm|current_state.pulse_e_1~regout\ & ((!\u4|lcdm|Equal0~5_combout\) # (!\u4|lcdm|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~0_combout\,
	datab => \u4|lcdm|current_state.pulse_e~regout\,
	datac => \u4|lcdm|Equal0~5_combout\,
	datad => \u4|lcdm|current_state.pulse_e_1~regout\,
	combout => \u4|lcdm|Selector44~0_combout\);

-- Location: LCCOMB_X75_Y26_N16
\u4|lcdm|current_state.pulse_e_1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|current_state.pulse_e_1~feeder_combout\ = \u4|lcdm|Selector44~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u4|lcdm|Selector44~0_combout\,
	combout => \u4|lcdm|current_state.pulse_e_1~feeder_combout\);

-- Location: LCFF_X75_Y26_N17
\u4|lcdm|current_state.pulse_e_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|current_state.pulse_e_1~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_e_1~regout\);

-- Location: LCCOMB_X75_Y26_N10
\u4|lcdm|Selector45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector45~0_combout\ = (\u4|lcdm|Equal0~0_combout\ & ((\u4|lcdm|Equal0~5_combout\ & (\u4|lcdm|current_state.pulse_e_1~regout\)) # (!\u4|lcdm|Equal0~5_combout\ & ((\u4|lcdm|current_state.pulse_e_2~regout\))))) # (!\u4|lcdm|Equal0~0_combout\ & 
-- (((\u4|lcdm|current_state.pulse_e_2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_e_1~regout\,
	datab => \u4|lcdm|Equal0~0_combout\,
	datac => \u4|lcdm|current_state.pulse_e_2~regout\,
	datad => \u4|lcdm|Equal0~5_combout\,
	combout => \u4|lcdm|Selector45~0_combout\);

-- Location: LCFF_X75_Y26_N11
\u4|lcdm|current_state.pulse_e_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector45~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_e_2~regout\);

-- Location: LCCOMB_X75_Y26_N24
\u4|lcdm|WideOr33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr33~0_combout\ = (!\u4|lcdm|current_state.pulse_busy_flag_2~regout\ & (!\u4|lcdm|current_state.pulse_busy_flag_1~regout\ & (!\u4|lcdm|current_state.pulse_e_1~regout\ & !\u4|lcdm|current_state.pulse_e_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag_2~regout\,
	datab => \u4|lcdm|current_state.pulse_busy_flag_1~regout\,
	datac => \u4|lcdm|current_state.pulse_e_1~regout\,
	datad => \u4|lcdm|current_state.pulse_e_2~regout\,
	combout => \u4|lcdm|WideOr33~0_combout\);

-- Location: LCCOMB_X75_Y24_N24
\u4|lcdm|WideOr33~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr33~1_combout\ = (!\u4|lcdm|current_state.pulse_e_3~regout\ & (\u4|lcdm|delay_counter[8]~2_combout\ & (\u4|lcdm|WideOr33~0_combout\ & \u4|lcdm|WideOr41~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_e_3~regout\,
	datab => \u4|lcdm|delay_counter[8]~2_combout\,
	datac => \u4|lcdm|WideOr33~0_combout\,
	datad => \u4|lcdm|WideOr41~2_combout\,
	combout => \u4|lcdm|WideOr33~1_combout\);

-- Location: LCCOMB_X76_Y24_N8
\u4|lcdm|Selector40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector40~0_combout\ = (\u4|lcdm|current_state.wait_for_command~regout\ & (\u4|lcdm|LCD_DB[0]~8_combout\ & (!\u4|wr~regout\))) # (!\u4|lcdm|current_state.wait_for_command~regout\ & (((!\u4|lcdm|WideOr33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|lcdm|LCD_DB[0]~8_combout\,
	datac => \u4|wr~regout\,
	datad => \u4|lcdm|WideOr33~1_combout\,
	combout => \u4|lcdm|Selector40~0_combout\);

-- Location: LCCOMB_X77_Y24_N0
\u4|lcdm|Selector40~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector40~1_combout\ = (\u4|lcdm|Selector40~0_combout\ & ((\u4|lcdm|current_state.wait_for_command~regout\) # ((!\u4|lcdm|Equal0~6_combout\) # (!\u4|lcdm|Selector52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|lcdm|Selector52~0_combout\,
	datac => \u4|lcdm|Equal0~6_combout\,
	datad => \u4|lcdm|Selector40~0_combout\,
	combout => \u4|lcdm|Selector40~1_combout\);

-- Location: LCCOMB_X77_Y24_N14
\u4|lcdm|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector32~0_combout\ = (\u4|lcdm|Selector40~1_combout\ & ((\u4|lcdm|Selector53~1_combout\ & (\u4|lcdm|return_state.command_init_9~regout\)) # (!\u4|lcdm|Selector53~1_combout\ & ((\u4|lcdm|current_state.command_init_9~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_9~regout\,
	datab => \u4|lcdm|Selector53~1_combout\,
	datac => \u4|lcdm|current_state.command_init_9~regout\,
	datad => \u4|lcdm|Selector40~1_combout\,
	combout => \u4|lcdm|Selector32~0_combout\);

-- Location: LCFF_X77_Y24_N15
\u4|lcdm|current_state.command_init_9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector32~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_9~regout\);

-- Location: LCCOMB_X77_Y24_N24
\u4|lcdm|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector33~0_combout\ = (\u4|lcdm|Selector40~1_combout\ & ((\u4|lcdm|Selector53~1_combout\ & (\u4|lcdm|return_state.command_init_10~regout\)) # (!\u4|lcdm|Selector53~1_combout\ & ((\u4|lcdm|current_state.command_init_10~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_10~regout\,
	datab => \u4|lcdm|Selector53~1_combout\,
	datac => \u4|lcdm|current_state.command_init_10~regout\,
	datad => \u4|lcdm|Selector40~1_combout\,
	combout => \u4|lcdm|Selector33~0_combout\);

-- Location: LCFF_X77_Y24_N25
\u4|lcdm|current_state.command_init_10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector33~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_10~regout\);

-- Location: LCCOMB_X76_Y24_N18
\u4|lcdm|Selector99~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector99~3_combout\ = (!\u4|lcdm|current_state.command_init_9~regout\ & !\u4|lcdm|current_state.command_init_10~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|current_state.command_init_9~regout\,
	datad => \u4|lcdm|current_state.command_init_10~regout\,
	combout => \u4|lcdm|Selector99~3_combout\);

-- Location: LCCOMB_X76_Y24_N28
\u4|lcdm|Selector42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector42~0_combout\ = (\u4|lcdm|current_state.wait_for_command~regout\ & (\u4|wr~regout\ & \u4|lcdm|LCD_DB[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.wait_for_command~regout\,
	datac => \u4|wr~regout\,
	datad => \u4|lcdm|LCD_DB[0]~8_combout\,
	combout => \u4|lcdm|Selector42~0_combout\);

-- Location: LCCOMB_X76_Y24_N6
\u4|lcdm|Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector38~0_combout\ = ((\u4|lcdm|Equal0~6_combout\ & ((!\u4|lcdm|Selector52~0_combout\) # (!\u4|lcdm|current_state.wait_for_command~regout\)))) # (!\u4|lcdm|Selector40~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|current_state.wait_for_command~regout\,
	datac => \u4|lcdm|Selector40~0_combout\,
	datad => \u4|lcdm|Selector52~0_combout\,
	combout => \u4|lcdm|Selector38~0_combout\);

-- Location: LCFF_X76_Y24_N29
\u4|lcdm|current_state.command_wr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector42~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|Selector38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_wr~regout\);

-- Location: LCCOMB_X77_Y24_N8
\u4|lcdm|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector30~0_combout\ = (\u4|lcdm|Selector40~1_combout\ & ((\u4|lcdm|Selector53~1_combout\ & (\u4|lcdm|return_state.command_init_7~regout\)) # (!\u4|lcdm|Selector53~1_combout\ & ((\u4|lcdm|current_state.command_init_7~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_7~regout\,
	datab => \u4|lcdm|Selector53~1_combout\,
	datac => \u4|lcdm|current_state.command_init_7~regout\,
	datad => \u4|lcdm|Selector40~1_combout\,
	combout => \u4|lcdm|Selector30~0_combout\);

-- Location: LCFF_X77_Y24_N9
\u4|lcdm|current_state.command_init_7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector30~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_7~regout\);

-- Location: LCCOMB_X77_Y24_N22
\u4|lcdm|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector29~0_combout\ = (\u4|lcdm|Selector40~1_combout\ & ((\u4|lcdm|Selector53~1_combout\ & (\u4|lcdm|return_state.command_init_6~regout\)) # (!\u4|lcdm|Selector53~1_combout\ & ((\u4|lcdm|current_state.command_init_6~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_6~regout\,
	datab => \u4|lcdm|Selector53~1_combout\,
	datac => \u4|lcdm|current_state.command_init_6~regout\,
	datad => \u4|lcdm|Selector40~1_combout\,
	combout => \u4|lcdm|Selector29~0_combout\);

-- Location: LCFF_X77_Y24_N23
\u4|lcdm|current_state.command_init_6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector29~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_6~regout\);

-- Location: LCCOMB_X76_Y24_N16
\u4|lcdm|WideOr18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr18~0_combout\ = (!\u4|lcdm|current_state.command_wr~regout\ & (!\u4|lcdm|current_state.command_init_7~regout\ & !\u4|lcdm|current_state.command_init_6~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.command_wr~regout\,
	datac => \u4|lcdm|current_state.command_init_7~regout\,
	datad => \u4|lcdm|current_state.command_init_6~regout\,
	combout => \u4|lcdm|WideOr18~0_combout\);

-- Location: LCCOMB_X77_Y24_N26
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

-- Location: LCFF_X77_Y24_N27
\u4|lcdm|current_state.command_home\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector38~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_home~regout\);

-- Location: LCCOMB_X77_Y24_N4
\u4|lcdm|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector34~0_combout\ = (\u4|lcdm|Selector40~1_combout\ & ((\u4|lcdm|Selector53~1_combout\ & (\u4|lcdm|return_state.command_init_11~regout\)) # (!\u4|lcdm|Selector53~1_combout\ & ((\u4|lcdm|current_state.command_init_11~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_11~regout\,
	datab => \u4|lcdm|Selector53~1_combout\,
	datac => \u4|lcdm|current_state.command_init_11~regout\,
	datad => \u4|lcdm|Selector40~1_combout\,
	combout => \u4|lcdm|Selector34~0_combout\);

-- Location: LCFF_X77_Y24_N5
\u4|lcdm|current_state.command_init_11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector34~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_11~regout\);

-- Location: LCCOMB_X75_Y24_N28
\u4|lcdm|Selector39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector39~0_combout\ = (\u4|goto10~regout\ & (!\u4|home~regout\ & \u4|lcdm|current_state.wait_for_command~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|goto10~regout\,
	datac => \u4|home~regout\,
	datad => \u4|lcdm|current_state.wait_for_command~regout\,
	combout => \u4|lcdm|Selector39~0_combout\);

-- Location: LCFF_X76_Y24_N25
\u4|lcdm|current_state.command_goto10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u4|lcdm|Selector39~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u4|lcdm|Selector38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_goto10~regout\);

-- Location: LCCOMB_X77_Y24_N28
\u4|lcdm|Selector99~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector99~2_combout\ = (!\u4|lcdm|current_state.command_init_8~regout\ & (!\u4|lcdm|current_state.command_home~regout\ & (!\u4|lcdm|current_state.command_init_11~regout\ & !\u4|lcdm|current_state.command_goto10~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_8~regout\,
	datab => \u4|lcdm|current_state.command_home~regout\,
	datac => \u4|lcdm|current_state.command_init_11~regout\,
	datad => \u4|lcdm|current_state.command_goto10~regout\,
	combout => \u4|lcdm|Selector99~2_combout\);

-- Location: LCCOMB_X76_Y24_N26
\u4|lcdm|WideOr18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr18~1_combout\ = (\u4|lcdm|Selector102~0_combout\ & (\u4|lcdm|Selector99~3_combout\ & (\u4|lcdm|WideOr18~0_combout\ & \u4|lcdm|Selector99~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector102~0_combout\,
	datab => \u4|lcdm|Selector99~3_combout\,
	datac => \u4|lcdm|WideOr18~0_combout\,
	datad => \u4|lcdm|Selector99~2_combout\,
	combout => \u4|lcdm|WideOr18~1_combout\);

-- Location: LCCOMB_X76_Y24_N12
\u4|lcdm|WideOr18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr18~combout\ = (\u4|lcdm|current_state.pulse_busy_flag_3~regout\) # ((\u4|lcdm|current_state.wait_for_command~regout\) # (!\u4|lcdm|WideOr18~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.pulse_busy_flag_3~regout\,
	datac => \u4|lcdm|current_state.wait_for_command~regout\,
	datad => \u4|lcdm|WideOr18~1_combout\,
	combout => \u4|lcdm|WideOr18~combout\);

-- Location: LCCOMB_X76_Y25_N26
\u4|lcdm|Selector20~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector20~4_combout\ = (\u4|lcdm|current_state.pulse_busy_flag~regout\) # ((\u4|lcdm|current_state.pulse_e~regout\) # ((\u4|lcdm|delay_counter\(1) & \u4|lcdm|WideOr18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag~regout\,
	datab => \u4|lcdm|current_state.pulse_e~regout\,
	datac => \u4|lcdm|delay_counter\(1),
	datad => \u4|lcdm|WideOr18~combout\,
	combout => \u4|lcdm|Selector20~4_combout\);

-- Location: LCCOMB_X75_Y26_N20
\u4|lcdm|Selector50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector50~0_combout\ = (\u4|lcdm|Equal0~0_combout\ & ((\u4|lcdm|Equal0~5_combout\ & (\u4|lcdm|current_state.pulse_busy_flag_1~regout\)) # (!\u4|lcdm|Equal0~5_combout\ & ((\u4|lcdm|current_state.pulse_busy_flag_2~regout\))))) # 
-- (!\u4|lcdm|Equal0~0_combout\ & (((\u4|lcdm|current_state.pulse_busy_flag_2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~0_combout\,
	datab => \u4|lcdm|current_state.pulse_busy_flag_1~regout\,
	datac => \u4|lcdm|current_state.pulse_busy_flag_2~regout\,
	datad => \u4|lcdm|Equal0~5_combout\,
	combout => \u4|lcdm|Selector50~0_combout\);

-- Location: LCFF_X75_Y26_N21
\u4|lcdm|current_state.pulse_busy_flag_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector50~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_busy_flag_2~regout\);

-- Location: LCCOMB_X75_Y26_N22
\u4|lcdm|LCD_E~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|LCD_E~0_combout\ = (\u4|lcdm|current_state.pulse_busy_flag_2~regout\) # (\u4|lcdm|current_state.pulse_e_2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|current_state.pulse_busy_flag_2~regout\,
	datad => \u4|lcdm|current_state.pulse_e_2~regout\,
	combout => \u4|lcdm|LCD_E~0_combout\);

-- Location: LCCOMB_X76_Y25_N14
\u4|lcdm|Selector20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector20~2_combout\ = (\u4|lcdm|LCD_E~0_combout\ & ((\u4|lcdm|Add0~2_combout\) # ((\u4|lcdm|Equal0~5_combout\ & \u4|lcdm|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Add0~2_combout\,
	datab => \u4|lcdm|Equal0~5_combout\,
	datac => \u4|lcdm|LCD_E~0_combout\,
	datad => \u4|lcdm|Equal0~0_combout\,
	combout => \u4|lcdm|Selector20~2_combout\);

-- Location: LCCOMB_X75_Y26_N30
\u4|lcdm|Selector46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector46~0_combout\ = (\u4|lcdm|Equal0~0_combout\ & ((\u4|lcdm|Equal0~5_combout\ & (\u4|lcdm|current_state.pulse_e_2~regout\)) # (!\u4|lcdm|Equal0~5_combout\ & ((\u4|lcdm|current_state.pulse_e_3~regout\))))) # (!\u4|lcdm|Equal0~0_combout\ & 
-- (((\u4|lcdm|current_state.pulse_e_3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_e_2~regout\,
	datab => \u4|lcdm|Equal0~0_combout\,
	datac => \u4|lcdm|current_state.pulse_e_3~regout\,
	datad => \u4|lcdm|Equal0~5_combout\,
	combout => \u4|lcdm|Selector46~0_combout\);

-- Location: LCFF_X75_Y26_N31
\u4|lcdm|current_state.pulse_e_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector46~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_e_3~regout\);

-- Location: LCCOMB_X75_Y26_N2
\u4|lcdm|WideOr33~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr33~2_combout\ = (\u4|lcdm|delay_counter[8]~2_combout\ & (!\u4|lcdm|current_state.pulse_e_3~regout\ & \u4|lcdm|WideOr41~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter[8]~2_combout\,
	datab => \u4|lcdm|current_state.pulse_e_3~regout\,
	datac => \u4|lcdm|WideOr41~2_combout\,
	combout => \u4|lcdm|WideOr33~2_combout\);

-- Location: LCCOMB_X75_Y26_N6
\u4|lcdm|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector15~0_combout\ = (!\u4|lcdm|Equal0~6_combout\ & ((\u4|lcdm|current_state.pulse_e_1~regout\) # ((\u4|lcdm|current_state.pulse_busy_flag_1~regout\) # (!\u4|lcdm|WideOr33~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_e_1~regout\,
	datab => \u4|lcdm|current_state.pulse_busy_flag_1~regout\,
	datac => \u4|lcdm|Equal0~6_combout\,
	datad => \u4|lcdm|WideOr33~2_combout\,
	combout => \u4|lcdm|Selector15~0_combout\);

-- Location: LCCOMB_X76_Y25_N24
\u4|lcdm|Selector20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector20~3_combout\ = (\u4|lcdm|Selector20~4_combout\) # ((\u4|lcdm|Selector20~2_combout\) # ((\u4|lcdm|Add0~2_combout\ & \u4|lcdm|Selector15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Add0~2_combout\,
	datab => \u4|lcdm|Selector20~4_combout\,
	datac => \u4|lcdm|Selector20~2_combout\,
	datad => \u4|lcdm|Selector15~0_combout\,
	combout => \u4|lcdm|Selector20~3_combout\);

-- Location: LCFF_X76_Y25_N25
\u4|lcdm|delay_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector20~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(1));

-- Location: LCCOMB_X75_Y25_N12
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

-- Location: LCCOMB_X77_Y24_N16
\u4|lcdm|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector27~0_combout\ = (\u4|lcdm|Selector40~1_combout\ & ((\u4|lcdm|Selector53~1_combout\ & (\u4|lcdm|return_state.command_init_4~regout\)) # (!\u4|lcdm|Selector53~1_combout\ & ((\u4|lcdm|current_state.command_init_4~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_4~regout\,
	datab => \u4|lcdm|Selector53~1_combout\,
	datac => \u4|lcdm|current_state.command_init_4~regout\,
	datad => \u4|lcdm|Selector40~1_combout\,
	combout => \u4|lcdm|Selector27~0_combout\);

-- Location: LCFF_X77_Y24_N17
\u4|lcdm|current_state.command_init_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector27~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_4~regout\);

-- Location: LCCOMB_X77_Y24_N2
\u4|lcdm|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector25~0_combout\ = (\u4|lcdm|Selector40~1_combout\ & ((\u4|lcdm|Selector53~1_combout\ & (\u4|lcdm|return_state.command_init_2~regout\)) # (!\u4|lcdm|Selector53~1_combout\ & ((\u4|lcdm|current_state.command_init_2~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_2~regout\,
	datab => \u4|lcdm|Selector53~1_combout\,
	datac => \u4|lcdm|current_state.command_init_2~regout\,
	datad => \u4|lcdm|Selector40~1_combout\,
	combout => \u4|lcdm|Selector25~0_combout\);

-- Location: LCFF_X77_Y24_N3
\u4|lcdm|current_state.command_init_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector25~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_2~regout\);

-- Location: LCCOMB_X77_Y25_N26
\u4|lcdm|Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector18~1_combout\ = (!\u4|lcdm|current_state.command_init_4~regout\ & !\u4|lcdm|current_state.command_init_2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|current_state.command_init_4~regout\,
	datad => \u4|lcdm|current_state.command_init_2~regout\,
	combout => \u4|lcdm|Selector18~1_combout\);

-- Location: LCCOMB_X77_Y24_N30
\u4|lcdm|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector22~0_combout\ = ((\u4|lcdm|Selector53~1_combout\ & (\u4|lcdm|return_state.reset~regout\)) # (!\u4|lcdm|Selector53~1_combout\ & ((\u4|lcdm|current_state.reset~regout\)))) # (!\u4|lcdm|Selector40~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.reset~regout\,
	datab => \u4|lcdm|Selector53~1_combout\,
	datac => \u4|lcdm|current_state.reset~regout\,
	datad => \u4|lcdm|Selector40~1_combout\,
	combout => \u4|lcdm|Selector22~0_combout\);

-- Location: LCFF_X77_Y24_N31
\u4|lcdm|current_state.reset\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector22~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.reset~regout\);

-- Location: LCCOMB_X77_Y25_N16
\u4|lcdm|delay_counter[20]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|delay_counter[20]~4_combout\ = (!\u4|lcdm|current_state.pulse_busy_flag~regout\ & (!\u4|lcdm|current_state.pulse_e~regout\ & (\u4|lcdm|current_state.reset~regout\ & \u4|lcdm|Selector18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag~regout\,
	datab => \u4|lcdm|current_state.pulse_e~regout\,
	datac => \u4|lcdm|current_state.reset~regout\,
	datad => \u4|lcdm|Selector18~1_combout\,
	combout => \u4|lcdm|delay_counter[20]~4_combout\);

-- Location: LCCOMB_X77_Y25_N12
\u4|lcdm|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector6~1_combout\ = (\u4|lcdm|Equal0~6_combout\ & (!\u4|lcdm|current_state.pulse_e_3~regout\ & ((!\u4|lcdm|delay_counter[20]~4_combout\) # (!\u4|lcdm|WideOr33~0_combout\)))) # (!\u4|lcdm|Equal0~6_combout\ & 
-- (((!\u4|lcdm|delay_counter[20]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr33~0_combout\,
	datab => \u4|lcdm|current_state.pulse_e_3~regout\,
	datac => \u4|lcdm|delay_counter[20]~4_combout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector6~1_combout\);

-- Location: LCCOMB_X77_Y25_N14
\u4|lcdm|Selector14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector14~1_combout\ = ((\u4|lcdm|Selector14~0_combout\ & ((!\u4|lcdm|current_state.reset~regout\) # (!\u4|lcdm|Selector18~1_combout\)))) # (!\u4|lcdm|Selector6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector14~0_combout\,
	datab => \u4|lcdm|Selector18~1_combout\,
	datac => \u4|lcdm|current_state.reset~regout\,
	datad => \u4|lcdm|Selector6~1_combout\,
	combout => \u4|lcdm|Selector14~1_combout\);

-- Location: LCCOMB_X77_Y25_N30
\u4|lcdm|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector6~0_combout\ = (\u4|lcdm|delay_counter[20]~4_combout\ & (((\u4|lcdm|WideOr33~0_combout\ & !\u4|lcdm|current_state.pulse_e_3~regout\)) # (!\u4|lcdm|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr33~0_combout\,
	datab => \u4|lcdm|current_state.pulse_e_3~regout\,
	datac => \u4|lcdm|delay_counter[20]~4_combout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector6~0_combout\);

-- Location: LCCOMB_X76_Y25_N30
\u4|lcdm|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector21~0_combout\ = ((\u4|lcdm|Add0~0_combout\ & \u4|lcdm|Selector6~0_combout\)) # (!\u4|lcdm|Selector14~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|Add0~0_combout\,
	datac => \u4|lcdm|Selector14~1_combout\,
	datad => \u4|lcdm|Selector6~0_combout\,
	combout => \u4|lcdm|Selector21~0_combout\);

-- Location: LCCOMB_X75_Y24_N26
\u4|lcdm|delay_counter[20]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|delay_counter[20]~8_combout\ = (!\u4|lcdm|WideOr18~combout\ & (((\u4|lcdm|delay_counter[8]~3_combout\) # (!\u4|lcdm|Equal0~5_combout\)) # (!\u4|lcdm|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~0_combout\,
	datab => \u4|lcdm|delay_counter[8]~3_combout\,
	datac => \u4|lcdm|WideOr18~combout\,
	datad => \u4|lcdm|Equal0~5_combout\,
	combout => \u4|lcdm|delay_counter[20]~8_combout\);

-- Location: LCFF_X76_Y25_N31
\u4|lcdm|delay_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector21~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(0));

-- Location: LCCOMB_X75_Y25_N16
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

-- Location: LCCOMB_X76_Y25_N20
\u4|lcdm|delay_counter[20]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|delay_counter[20]~5_combout\ = ((\u4|lcdm|Equal0~6_combout\ & (\u4|lcdm|delay_counter[8]~3_combout\ & !\u4|lcdm|WideOr18~combout\))) # (!\u4|lcdm|delay_counter[20]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|delay_counter[20]~4_combout\,
	datac => \u4|lcdm|delay_counter[8]~3_combout\,
	datad => \u4|lcdm|WideOr18~combout\,
	combout => \u4|lcdm|delay_counter[20]~5_combout\);

-- Location: LCCOMB_X75_Y25_N0
\u4|lcdm|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector19~0_combout\ = (\u4|lcdm|Add0~4_combout\ & !\u4|lcdm|delay_counter[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|Add0~4_combout\,
	datad => \u4|lcdm|delay_counter[20]~5_combout\,
	combout => \u4|lcdm|Selector19~0_combout\);

-- Location: LCFF_X75_Y25_N1
\u4|lcdm|delay_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector19~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(2));

-- Location: LCCOMB_X75_Y25_N18
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

-- Location: LCCOMB_X75_Y26_N14
\u4|lcdm|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector18~0_combout\ = (!\u4|lcdm|WideOr33~2_combout\ & (\u4|lcdm|Add0~6_combout\ & ((!\u4|lcdm|Equal0~5_combout\) # (!\u4|lcdm|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~0_combout\,
	datab => \u4|lcdm|WideOr33~2_combout\,
	datac => \u4|lcdm|Add0~6_combout\,
	datad => \u4|lcdm|Equal0~5_combout\,
	combout => \u4|lcdm|Selector18~0_combout\);

-- Location: LCCOMB_X75_Y26_N28
\u4|lcdm|Selector18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector18~2_combout\ = ((\u4|lcdm|Selector18~0_combout\) # ((\u4|lcdm|delay_counter\(3) & \u4|lcdm|WideOr18~combout\))) # (!\u4|lcdm|Selector18~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector18~1_combout\,
	datab => \u4|lcdm|delay_counter\(3),
	datac => \u4|lcdm|Selector18~0_combout\,
	datad => \u4|lcdm|WideOr18~combout\,
	combout => \u4|lcdm|Selector18~2_combout\);

-- Location: LCCOMB_X75_Y26_N18
\u4|lcdm|Selector18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector18~3_combout\ = (\u4|lcdm|Selector18~2_combout\) # ((!\u4|lcdm|WideOr33~0_combout\ & ((\u4|lcdm|Equal0~6_combout\) # (\u4|lcdm|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|WideOr33~0_combout\,
	datac => \u4|lcdm|Add0~6_combout\,
	datad => \u4|lcdm|Selector18~2_combout\,
	combout => \u4|lcdm|Selector18~3_combout\);

-- Location: LCFF_X75_Y26_N19
\u4|lcdm|delay_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector18~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(3));

-- Location: LCCOMB_X75_Y25_N20
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

-- Location: LCCOMB_X75_Y26_N4
\u4|lcdm|Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector17~1_combout\ = (\u4|lcdm|Add0~8_combout\ & (!\u4|lcdm|Equal0~6_combout\ & ((\u4|lcdm|LCD_E~0_combout\) # (!\u4|lcdm|WideOr33~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|LCD_E~0_combout\,
	datab => \u4|lcdm|WideOr33~2_combout\,
	datac => \u4|lcdm|Add0~8_combout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector17~1_combout\);

-- Location: LCCOMB_X75_Y26_N12
\u4|lcdm|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector17~0_combout\ = (\u4|lcdm|current_state.pulse_e_1~regout\ & (((\u4|lcdm|Add0~8_combout\) # (\u4|lcdm|Equal0~6_combout\)))) # (!\u4|lcdm|current_state.pulse_e_1~regout\ & (\u4|lcdm|current_state.pulse_busy_flag_1~regout\ & 
-- ((\u4|lcdm|Add0~8_combout\) # (\u4|lcdm|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_e_1~regout\,
	datab => \u4|lcdm|current_state.pulse_busy_flag_1~regout\,
	datac => \u4|lcdm|Add0~8_combout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector17~0_combout\);

-- Location: LCCOMB_X75_Y26_N8
\u4|lcdm|Selector17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector17~2_combout\ = (\u4|lcdm|Selector17~1_combout\) # ((\u4|lcdm|Selector17~0_combout\) # ((\u4|lcdm|WideOr18~combout\ & \u4|lcdm|delay_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr18~combout\,
	datab => \u4|lcdm|Selector17~1_combout\,
	datac => \u4|lcdm|delay_counter\(4),
	datad => \u4|lcdm|Selector17~0_combout\,
	combout => \u4|lcdm|Selector17~2_combout\);

-- Location: LCFF_X75_Y26_N9
\u4|lcdm|delay_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector17~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(4));

-- Location: LCCOMB_X76_Y25_N10
\u4|lcdm|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Equal0~0_combout\ = (!\u4|lcdm|delay_counter\(2) & (!\u4|lcdm|delay_counter\(1) & (!\u4|lcdm|delay_counter\(3) & !\u4|lcdm|delay_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(2),
	datab => \u4|lcdm|delay_counter\(1),
	datac => \u4|lcdm|delay_counter\(3),
	datad => \u4|lcdm|delay_counter\(4),
	combout => \u4|lcdm|Equal0~0_combout\);

-- Location: LCCOMB_X76_Y26_N0
\u4|lcdm|Selector47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector47~0_combout\ = (\u4|lcdm|Equal0~5_combout\ & ((\u4|lcdm|Equal0~0_combout\ & ((\u4|lcdm|current_state.pulse_e_3~regout\))) # (!\u4|lcdm|Equal0~0_combout\ & (\u4|lcdm|current_state.pulse_e_4~regout\)))) # (!\u4|lcdm|Equal0~5_combout\ & 
-- (((\u4|lcdm|current_state.pulse_e_4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~5_combout\,
	datab => \u4|lcdm|Equal0~0_combout\,
	datac => \u4|lcdm|current_state.pulse_e_4~regout\,
	datad => \u4|lcdm|current_state.pulse_e_3~regout\,
	combout => \u4|lcdm|Selector47~0_combout\);

-- Location: LCFF_X76_Y26_N1
\u4|lcdm|current_state.pulse_e_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector47~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_e_4~regout\);

-- Location: LCCOMB_X75_Y24_N30
\u4|lcdm|delay_counter[8]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|delay_counter[8]~3_combout\ = (!\u4|lcdm|current_state.pulse_busy_flag_5~regout\ & (!\u4|lcdm|current_state.pulse_e_4~regout\ & (!\u4|lcdm|current_state.pulse_busy_flag_4~regout\ & \u4|lcdm|WideOr41~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag_5~regout\,
	datab => \u4|lcdm|current_state.pulse_e_4~regout\,
	datac => \u4|lcdm|current_state.pulse_busy_flag_4~regout\,
	datad => \u4|lcdm|WideOr41~2_combout\,
	combout => \u4|lcdm|delay_counter[8]~3_combout\);

-- Location: LCCOMB_X74_Y25_N26
\u4|lcdm|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector5~2_combout\ = (\u4|lcdm|WideOr33~0_combout\ & (!\u4|lcdm|delay_counter[8]~3_combout\ & ((!\u4|lcdm|Equal0~0_combout\) # (!\u4|lcdm|Equal0~5_combout\)))) # (!\u4|lcdm|WideOr33~0_combout\ & (((!\u4|lcdm|Equal0~0_combout\)) # 
-- (!\u4|lcdm|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr33~0_combout\,
	datab => \u4|lcdm|Equal0~5_combout\,
	datac => \u4|lcdm|delay_counter[8]~3_combout\,
	datad => \u4|lcdm|Equal0~0_combout\,
	combout => \u4|lcdm|Selector5~2_combout\);

-- Location: LCCOMB_X75_Y25_N22
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

-- Location: LCCOMB_X74_Y25_N18
\u4|lcdm|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector16~0_combout\ = (\u4|lcdm|delay_counter\(5) & ((\u4|lcdm|WideOr18~combout\) # ((\u4|lcdm|Add0~10_combout\ & \u4|lcdm|Selector5~2_combout\)))) # (!\u4|lcdm|delay_counter\(5) & (\u4|lcdm|Add0~10_combout\ & 
-- ((\u4|lcdm|Selector5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(5),
	datab => \u4|lcdm|Add0~10_combout\,
	datac => \u4|lcdm|WideOr18~combout\,
	datad => \u4|lcdm|Selector5~2_combout\,
	combout => \u4|lcdm|Selector16~0_combout\);

-- Location: LCCOMB_X74_Y25_N6
\u4|lcdm|Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector16~1_combout\ = (\u4|lcdm|Selector16~0_combout\) # ((\u4|lcdm|current_state.pulse_e_3~regout\ & ((\u4|lcdm|Equal0~6_combout\) # (\u4|lcdm|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|Add0~10_combout\,
	datac => \u4|lcdm|current_state.pulse_e_3~regout\,
	datad => \u4|lcdm|Selector16~0_combout\,
	combout => \u4|lcdm|Selector16~1_combout\);

-- Location: LCFF_X74_Y25_N7
\u4|lcdm|delay_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector16~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(5));

-- Location: LCCOMB_X75_Y25_N24
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

-- Location: LCCOMB_X75_Y25_N26
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

-- Location: LCCOMB_X75_Y25_N28
\u4|lcdm|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~16_combout\ = (\u4|lcdm|delay_counter\(8) & ((GND) # (!\u4|lcdm|Add0~15\))) # (!\u4|lcdm|delay_counter\(8) & (\u4|lcdm|Add0~15\ $ (GND)))
-- \u4|lcdm|Add0~17\ = CARRY((\u4|lcdm|delay_counter\(8)) # (!\u4|lcdm|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(8),
	datad => VCC,
	cin => \u4|lcdm|Add0~15\,
	combout => \u4|lcdm|Add0~16_combout\,
	cout => \u4|lcdm|Add0~17\);

-- Location: LCCOMB_X75_Y24_N0
\u4|lcdm|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~20_combout\ = (\u4|lcdm|delay_counter\(10) & ((GND) # (!\u4|lcdm|Add0~19\))) # (!\u4|lcdm|delay_counter\(10) & (\u4|lcdm|Add0~19\ $ (GND)))
-- \u4|lcdm|Add0~21\ = CARRY((\u4|lcdm|delay_counter\(10)) # (!\u4|lcdm|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|delay_counter\(10),
	datad => VCC,
	cin => \u4|lcdm|Add0~19\,
	combout => \u4|lcdm|Add0~20_combout\,
	cout => \u4|lcdm|Add0~21\);

-- Location: LCCOMB_X76_Y25_N8
\u4|lcdm|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector11~0_combout\ = (\u4|lcdm|Selector1~0_combout\ & (!\u4|lcdm|Selector6~1_combout\ & ((\u4|lcdm|Add0~20_combout\) # (!\u4|lcdm|Selector6~0_combout\)))) # (!\u4|lcdm|Selector1~0_combout\ & (((\u4|lcdm|Add0~20_combout\)) # 
-- (!\u4|lcdm|Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector1~0_combout\,
	datab => \u4|lcdm|Selector6~0_combout\,
	datac => \u4|lcdm|Selector6~1_combout\,
	datad => \u4|lcdm|Add0~20_combout\,
	combout => \u4|lcdm|Selector11~0_combout\);

-- Location: LCFF_X76_Y25_N9
\u4|lcdm|delay_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector11~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(10));

-- Location: LCCOMB_X75_Y24_N2
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

-- Location: LCCOMB_X75_Y25_N2
\u4|lcdm|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector10~0_combout\ = (\u4|lcdm|Add0~22_combout\ & !\u4|lcdm|delay_counter[20]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|Add0~22_combout\,
	datad => \u4|lcdm|delay_counter[20]~5_combout\,
	combout => \u4|lcdm|Selector10~0_combout\);

-- Location: LCFF_X75_Y25_N3
\u4|lcdm|delay_counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector10~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(11));

-- Location: LCCOMB_X75_Y24_N4
\u4|lcdm|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~24_combout\ = (\u4|lcdm|delay_counter\(12) & ((GND) # (!\u4|lcdm|Add0~23\))) # (!\u4|lcdm|delay_counter\(12) & (\u4|lcdm|Add0~23\ $ (GND)))
-- \u4|lcdm|Add0~25\ = CARRY((\u4|lcdm|delay_counter\(12)) # (!\u4|lcdm|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|delay_counter\(12),
	datad => VCC,
	cin => \u4|lcdm|Add0~23\,
	combout => \u4|lcdm|Add0~24_combout\,
	cout => \u4|lcdm|Add0~25\);

-- Location: LCCOMB_X77_Y25_N18
\u4|lcdm|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector14~0_combout\ = (!\u4|lcdm|current_state.pulse_e~regout\ & !\u4|lcdm|current_state.pulse_busy_flag~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|current_state.pulse_e~regout\,
	datad => \u4|lcdm|current_state.pulse_busy_flag~regout\,
	combout => \u4|lcdm|Selector14~0_combout\);

-- Location: LCCOMB_X76_Y24_N30
\u4|lcdm|delay_counter[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|delay_counter[8]~6_combout\ = (\u4|lcdm|delay_counter[8]~3_combout\ & (!\u4|lcdm|current_state.command_init_4~regout\ & (\u4|lcdm|Equal0~6_combout\ & !\u4|lcdm|WideOr18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter[8]~3_combout\,
	datab => \u4|lcdm|current_state.command_init_4~regout\,
	datac => \u4|lcdm|Equal0~6_combout\,
	datad => \u4|lcdm|WideOr18~combout\,
	combout => \u4|lcdm|delay_counter[8]~6_combout\);

-- Location: LCCOMB_X76_Y24_N0
\u4|lcdm|delay_counter[8]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|delay_counter[8]~7_combout\ = (\u4|lcdm|current_state.command_init_2~regout\) # (((\u4|lcdm|delay_counter[8]~6_combout\) # (!\u4|lcdm|current_state.reset~regout\)) # (!\u4|lcdm|Selector14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_2~regout\,
	datab => \u4|lcdm|Selector14~0_combout\,
	datac => \u4|lcdm|current_state.reset~regout\,
	datad => \u4|lcdm|delay_counter[8]~6_combout\,
	combout => \u4|lcdm|delay_counter[8]~7_combout\);

-- Location: LCCOMB_X75_Y24_N22
\u4|lcdm|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector9~0_combout\ = (\u4|lcdm|current_state.command_init_4~regout\) # ((\u4|lcdm|Add0~24_combout\ & !\u4|lcdm|delay_counter[8]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_4~regout\,
	datab => \u4|lcdm|Add0~24_combout\,
	datac => \u4|lcdm|delay_counter[8]~7_combout\,
	combout => \u4|lcdm|Selector9~0_combout\);

-- Location: LCFF_X75_Y24_N23
\u4|lcdm|delay_counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector9~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(12));

-- Location: LCCOMB_X75_Y24_N6
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

-- Location: LCCOMB_X74_Y25_N22
\u4|lcdm|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector5~0_combout\ = (\u4|lcdm|current_state.pulse_e_3~regout\ & ((\u4|lcdm|Add0~32_combout\) # ((\u4|lcdm|Equal0~0_combout\ & \u4|lcdm|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~0_combout\,
	datab => \u4|lcdm|current_state.pulse_e_3~regout\,
	datac => \u4|lcdm|Add0~32_combout\,
	datad => \u4|lcdm|Equal0~5_combout\,
	combout => \u4|lcdm|Selector5~0_combout\);

-- Location: LCCOMB_X74_Y25_N4
\u4|lcdm|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector5~3_combout\ = (\u4|lcdm|Selector5~1_combout\) # ((\u4|lcdm|Selector5~0_combout\) # ((\u4|lcdm|Selector5~2_combout\ & \u4|lcdm|Add0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector5~1_combout\,
	datab => \u4|lcdm|Selector5~2_combout\,
	datac => \u4|lcdm|Add0~32_combout\,
	datad => \u4|lcdm|Selector5~0_combout\,
	combout => \u4|lcdm|Selector5~3_combout\);

-- Location: LCFF_X74_Y25_N5
\u4|lcdm|delay_counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector5~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(16));

-- Location: LCCOMB_X74_Y25_N12
\u4|lcdm|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector8~0_combout\ = (!\u4|lcdm|WideOr33~1_combout\ & (\u4|lcdm|Add0~26_combout\ & ((!\u4|lcdm|Equal0~5_combout\) # (!\u4|lcdm|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~0_combout\,
	datab => \u4|lcdm|Equal0~5_combout\,
	datac => \u4|lcdm|WideOr33~1_combout\,
	datad => \u4|lcdm|Add0~26_combout\,
	combout => \u4|lcdm|Selector8~0_combout\);

-- Location: LCCOMB_X74_Y25_N30
\u4|lcdm|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector8~1_combout\ = (\u4|lcdm|current_state.command_init_2~regout\) # ((\u4|lcdm|Selector8~0_combout\) # ((\u4|lcdm|WideOr18~combout\ & \u4|lcdm|delay_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_2~regout\,
	datab => \u4|lcdm|WideOr18~combout\,
	datac => \u4|lcdm|delay_counter\(13),
	datad => \u4|lcdm|Selector8~0_combout\,
	combout => \u4|lcdm|Selector8~1_combout\);

-- Location: LCFF_X74_Y25_N31
\u4|lcdm|delay_counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector8~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(13));

-- Location: LCCOMB_X77_Y25_N0
\u4|lcdm|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector1~0_combout\ = (\u4|lcdm|current_state.pulse_busy_flag~regout\) # ((\u4|lcdm|current_state.pulse_e~regout\) # ((\u4|lcdm|current_state.reset~regout\) # (!\u4|lcdm|Selector18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag~regout\,
	datab => \u4|lcdm|current_state.pulse_e~regout\,
	datac => \u4|lcdm|current_state.reset~regout\,
	datad => \u4|lcdm|Selector18~1_combout\,
	combout => \u4|lcdm|Selector1~0_combout\);

-- Location: LCCOMB_X76_Y25_N2
\u4|lcdm|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector6~2_combout\ = (\u4|lcdm|Add0~30_combout\ & (((!\u4|lcdm|Selector6~1_combout\)) # (!\u4|lcdm|Selector1~0_combout\))) # (!\u4|lcdm|Add0~30_combout\ & (!\u4|lcdm|Selector6~0_combout\ & ((!\u4|lcdm|Selector6~1_combout\) # 
-- (!\u4|lcdm|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Add0~30_combout\,
	datab => \u4|lcdm|Selector1~0_combout\,
	datac => \u4|lcdm|Selector6~1_combout\,
	datad => \u4|lcdm|Selector6~0_combout\,
	combout => \u4|lcdm|Selector6~2_combout\);

-- Location: LCFF_X76_Y25_N3
\u4|lcdm|delay_counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector6~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(15));

-- Location: LCCOMB_X75_Y25_N4
\u4|lcdm|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Equal0~2_combout\ = (!\u4|lcdm|delay_counter\(14) & (!\u4|lcdm|delay_counter\(16) & (!\u4|lcdm|delay_counter\(13) & !\u4|lcdm|delay_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(14),
	datab => \u4|lcdm|delay_counter\(16),
	datac => \u4|lcdm|delay_counter\(13),
	datad => \u4|lcdm|delay_counter\(15),
	combout => \u4|lcdm|Equal0~2_combout\);

-- Location: LCCOMB_X74_Y25_N14
\u4|lcdm|Selector14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector14~2_combout\ = (\u4|lcdm|Selector14~1_combout\ & ((\u4|lcdm|Add0~14_combout\) # (!\u4|lcdm|Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|Add0~14_combout\,
	datac => \u4|lcdm|Selector6~0_combout\,
	datad => \u4|lcdm|Selector14~1_combout\,
	combout => \u4|lcdm|Selector14~2_combout\);

-- Location: LCFF_X74_Y25_N15
\u4|lcdm|delay_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector14~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(7));

-- Location: LCCOMB_X74_Y25_N20
\u4|lcdm|Selector15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector15~2_combout\ = (\u4|lcdm|current_state.command_init_2~regout\) # ((\u4|lcdm|delay_counter\(6) & \u4|lcdm|WideOr18~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(6),
	datac => \u4|lcdm|current_state.command_init_2~regout\,
	datad => \u4|lcdm|WideOr18~combout\,
	combout => \u4|lcdm|Selector15~2_combout\);

-- Location: LCCOMB_X74_Y25_N8
\u4|lcdm|Selector15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector15~3_combout\ = (\u4|lcdm|Selector15~1_combout\) # ((\u4|lcdm|Selector15~2_combout\) # ((\u4|lcdm|Add0~12_combout\ & \u4|lcdm|Selector15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector15~1_combout\,
	datab => \u4|lcdm|Add0~12_combout\,
	datac => \u4|lcdm|Selector15~2_combout\,
	datad => \u4|lcdm|Selector15~0_combout\,
	combout => \u4|lcdm|Selector15~3_combout\);

-- Location: LCFF_X74_Y25_N9
\u4|lcdm|delay_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector15~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(6));

-- Location: LCCOMB_X75_Y25_N6
\u4|lcdm|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector13~0_combout\ = (\u4|lcdm|current_state.command_init_4~regout\) # ((\u4|lcdm|Add0~16_combout\ & !\u4|lcdm|delay_counter[8]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|Add0~16_combout\,
	datac => \u4|lcdm|current_state.command_init_4~regout\,
	datad => \u4|lcdm|delay_counter[8]~7_combout\,
	combout => \u4|lcdm|Selector13~0_combout\);

-- Location: LCFF_X75_Y25_N7
\u4|lcdm|delay_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector13~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(8));

-- Location: LCCOMB_X74_Y25_N28
\u4|lcdm|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Equal0~4_combout\ = (!\u4|lcdm|delay_counter\(5) & (!\u4|lcdm|delay_counter\(7) & (!\u4|lcdm|delay_counter\(6) & !\u4|lcdm|delay_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(5),
	datab => \u4|lcdm|delay_counter\(7),
	datac => \u4|lcdm|delay_counter\(6),
	datad => \u4|lcdm|delay_counter\(8),
	combout => \u4|lcdm|Equal0~4_combout\);

-- Location: LCCOMB_X75_Y25_N8
\u4|lcdm|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Equal0~3_combout\ = (!\u4|lcdm|delay_counter\(9) & (!\u4|lcdm|delay_counter\(11) & (!\u4|lcdm|delay_counter\(10) & !\u4|lcdm|delay_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(9),
	datab => \u4|lcdm|delay_counter\(11),
	datac => \u4|lcdm|delay_counter\(10),
	datad => \u4|lcdm|delay_counter\(12),
	combout => \u4|lcdm|Equal0~3_combout\);

-- Location: LCCOMB_X76_Y25_N22
\u4|lcdm|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Equal0~5_combout\ = (\u4|lcdm|Equal0~1_combout\ & (\u4|lcdm|Equal0~2_combout\ & (\u4|lcdm|Equal0~4_combout\ & \u4|lcdm|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~1_combout\,
	datab => \u4|lcdm|Equal0~2_combout\,
	datac => \u4|lcdm|Equal0~4_combout\,
	datad => \u4|lcdm|Equal0~3_combout\,
	combout => \u4|lcdm|Equal0~5_combout\);

-- Location: LCCOMB_X76_Y25_N16
\u4|lcdm|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Equal0~6_combout\ = (\u4|lcdm|Equal0~0_combout\ & \u4|lcdm|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~0_combout\,
	datad => \u4|lcdm|Equal0~5_combout\,
	combout => \u4|lcdm|Equal0~6_combout\);

-- Location: LCCOMB_X76_Y26_N2
\u4|lcdm|Selector51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector51~0_combout\ = (\u4|lcdm|Equal0~6_combout\ & (((\u4|lcdm|current_state.pulse_busy_flag_2~regout\)))) # (!\u4|lcdm|Equal0~6_combout\ & (!\u4|lcdm|Selector52~0_combout\ & (\u4|lcdm|current_state.pulse_busy_flag_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector52~0_combout\,
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|current_state.pulse_busy_flag_3~regout\,
	datad => \u4|lcdm|current_state.pulse_busy_flag_2~regout\,
	combout => \u4|lcdm|Selector51~0_combout\);

-- Location: LCFF_X76_Y26_N3
\u4|lcdm|current_state.pulse_busy_flag_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector51~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_busy_flag_3~regout\);

-- Location: LCCOMB_X76_Y26_N18
\u4|lcdm|Selector52~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector52~4_combout\ = (!\LCD_DATA[7]~7\ & \u4|lcdm|current_state.pulse_busy_flag_3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_DATA[7]~7\,
	datad => \u4|lcdm|current_state.pulse_busy_flag_3~regout\,
	combout => \u4|lcdm|Selector52~4_combout\);

-- Location: LCFF_X76_Y26_N19
\u4|lcdm|current_state.pulse_busy_flag_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector52~4_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|Selector52~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_busy_flag_4~regout\);

-- Location: LCCOMB_X76_Y26_N22
\u4|lcdm|Selector53~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector53~1_combout\ = (\u4|lcdm|Equal0~0_combout\ & (\u4|lcdm|Equal0~5_combout\ & ((\u4|lcdm|current_state.pulse_e_4~regout\) # (\u4|lcdm|current_state.pulse_busy_flag_4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_e_4~regout\,
	datab => \u4|lcdm|current_state.pulse_busy_flag_4~regout\,
	datac => \u4|lcdm|Equal0~0_combout\,
	datad => \u4|lcdm|Equal0~5_combout\,
	combout => \u4|lcdm|Selector53~1_combout\);

-- Location: LCCOMB_X77_Y24_N12
\u4|lcdm|Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector36~0_combout\ = (\u4|lcdm|Selector40~1_combout\ & ((\u4|lcdm|Selector53~1_combout\ & (\u4|lcdm|return_state.wait_for_command~regout\)) # (!\u4|lcdm|Selector53~1_combout\ & ((\u4|lcdm|current_state.wait_for_command~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.wait_for_command~regout\,
	datab => \u4|lcdm|Selector53~1_combout\,
	datac => \u4|lcdm|current_state.wait_for_command~regout\,
	datad => \u4|lcdm|Selector40~1_combout\,
	combout => \u4|lcdm|Selector36~0_combout\);

-- Location: LCFF_X77_Y24_N13
\u4|lcdm|current_state.wait_for_command\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector36~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.wait_for_command~regout\);

-- Location: LCCOMB_X76_Y26_N12
\u4|lcdm|busy~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|busy~0_combout\ = (!\u4|wr~regout\ & (\u4|lcdm|current_state.wait_for_command~regout\ & \u4|lcdm|LCD_DB[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|wr~regout\,
	datab => \u4|lcdm|current_state.wait_for_command~regout\,
	datad => \u4|lcdm|LCD_DB[0]~8_combout\,
	combout => \u4|lcdm|busy~0_combout\);

-- Location: LCFF_X76_Y26_N13
\u4|lcdm|busy\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|busy~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|busy~regout\);

-- Location: LCCOMB_X62_Y23_N18
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

-- Location: LCCOMB_X62_Y23_N8
\u4|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector18~0_combout\ = (\u4|state.update~regout\ & (((\u4|drive~3_combout\) # (!\u4|lcdm|busy~regout\)) # (!\u4|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update~regout\,
	datab => \u4|Add1~0_combout\,
	datac => \u4|lcdm|busy~regout\,
	datad => \u4|drive~3_combout\,
	combout => \u4|Selector18~0_combout\);

-- Location: LCCOMB_X62_Y23_N14
\u4|Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector18~1_combout\ = (\u4|character_counter\(0) & ((\u4|WideOr7~combout\) # ((\u4|Selector18~0_combout\)))) # (!\u4|character_counter\(0) & (((\u4|lcdm|busy~regout\ & \u4|Selector18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|WideOr7~combout\,
	datab => \u4|lcdm|busy~regout\,
	datac => \u4|character_counter\(0),
	datad => \u4|Selector18~0_combout\,
	combout => \u4|Selector18~1_combout\);

-- Location: LCFF_X62_Y23_N15
\u4|character_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector18~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|character_counter\(0));

-- Location: LCCOMB_X63_Y23_N16
\u4|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector17~0_combout\ = (\u4|Selector14~0_combout\ & ((\u4|Add1~2_combout\) # ((\u4|character_counter\(1) & \u4|Selector15~0_combout\)))) # (!\u4|Selector14~0_combout\ & (((\u4|character_counter\(1) & \u4|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selector14~0_combout\,
	datab => \u4|Add1~2_combout\,
	datac => \u4|character_counter\(1),
	datad => \u4|Selector15~0_combout\,
	combout => \u4|Selector17~0_combout\);

-- Location: LCFF_X63_Y23_N17
\u4|character_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector17~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|character_counter\(1));

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
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCCOMB_X70_Y22_N16
\u7|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add1~0_combout\ = \u7|seconds_int\(0) $ (VCC)
-- \u7|Add1~1\ = CARRY(\u7|seconds_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|seconds_int\(0),
	datad => VCC,
	combout => \u7|Add1~0_combout\,
	cout => \u7|Add1~1\);

-- Location: LCCOMB_X71_Y22_N0
\u7|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~0_combout\ = \u7|ticks\(0) $ (VCC)
-- \u7|Add2~1\ = CARRY(\u7|ticks\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7|ticks\(0),
	datad => VCC,
	combout => \u7|Add2~0_combout\,
	cout => \u7|Add2~1\);

-- Location: LCFF_X71_Y22_N1
\u7|ticks[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(0));

-- Location: LCCOMB_X71_Y22_N2
\u7|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~2_combout\ = (\u7|ticks\(1) & (!\u7|Add2~1\)) # (!\u7|ticks\(1) & ((\u7|Add2~1\) # (GND)))
-- \u7|Add2~3\ = CARRY((!\u7|Add2~1\) # (!\u7|ticks\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|ticks\(1),
	datad => VCC,
	cin => \u7|Add2~1\,
	combout => \u7|Add2~2_combout\,
	cout => \u7|Add2~3\);

-- Location: LCFF_X71_Y22_N3
\u7|ticks[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(1));

-- Location: LCCOMB_X71_Y22_N4
\u7|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~4_combout\ = (\u7|ticks\(2) & (\u7|Add2~3\ $ (GND))) # (!\u7|ticks\(2) & (!\u7|Add2~3\ & VCC))
-- \u7|Add2~5\ = CARRY((\u7|ticks\(2) & !\u7|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|ticks\(2),
	datad => VCC,
	cin => \u7|Add2~3\,
	combout => \u7|Add2~4_combout\,
	cout => \u7|Add2~5\);

-- Location: LCFF_X71_Y22_N5
\u7|ticks[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~4_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(2));

-- Location: LCCOMB_X71_Y22_N6
\u7|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~6_combout\ = (\u7|ticks\(3) & (!\u7|Add2~5\)) # (!\u7|ticks\(3) & ((\u7|Add2~5\) # (GND)))
-- \u7|Add2~7\ = CARRY((!\u7|Add2~5\) # (!\u7|ticks\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|ticks\(3),
	datad => VCC,
	cin => \u7|Add2~5\,
	combout => \u7|Add2~6_combout\,
	cout => \u7|Add2~7\);

-- Location: LCCOMB_X71_Y22_N8
\u7|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~8_combout\ = (\u7|ticks\(4) & (\u7|Add2~7\ $ (GND))) # (!\u7|ticks\(4) & (!\u7|Add2~7\ & VCC))
-- \u7|Add2~9\ = CARRY((\u7|ticks\(4) & !\u7|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|ticks\(4),
	datad => VCC,
	cin => \u7|Add2~7\,
	combout => \u7|Add2~8_combout\,
	cout => \u7|Add2~9\);

-- Location: LCCOMB_X70_Y21_N0
\u7|ticks~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|ticks~4_combout\ = (!\u7|Equal0~10_combout\ & \u7|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u7|Equal0~10_combout\,
	datad => \u7|Add2~8_combout\,
	combout => \u7|ticks~4_combout\);

-- Location: LCFF_X70_Y21_N1
\u7|ticks[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|ticks~4_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(4));

-- Location: LCCOMB_X71_Y22_N10
\u7|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~10_combout\ = (\u7|ticks\(5) & (!\u7|Add2~9\)) # (!\u7|ticks\(5) & ((\u7|Add2~9\) # (GND)))
-- \u7|Add2~11\ = CARRY((!\u7|Add2~9\) # (!\u7|ticks\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|ticks\(5),
	datad => VCC,
	cin => \u7|Add2~9\,
	combout => \u7|Add2~10_combout\,
	cout => \u7|Add2~11\);

-- Location: LCCOMB_X71_Y22_N14
\u7|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~14_combout\ = (\u7|ticks\(7) & (!\u7|Add2~13\)) # (!\u7|ticks\(7) & ((\u7|Add2~13\) # (GND)))
-- \u7|Add2~15\ = CARRY((!\u7|Add2~13\) # (!\u7|ticks\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|ticks\(7),
	datad => VCC,
	cin => \u7|Add2~13\,
	combout => \u7|Add2~14_combout\,
	cout => \u7|Add2~15\);

-- Location: LCFF_X71_Y22_N15
\u7|ticks[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~14_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(7));

-- Location: LCCOMB_X71_Y22_N16
\u7|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~16_combout\ = (\u7|ticks\(8) & (\u7|Add2~15\ $ (GND))) # (!\u7|ticks\(8) & (!\u7|Add2~15\ & VCC))
-- \u7|Add2~17\ = CARRY((\u7|ticks\(8) & !\u7|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|ticks\(8),
	datad => VCC,
	cin => \u7|Add2~15\,
	combout => \u7|Add2~16_combout\,
	cout => \u7|Add2~17\);

-- Location: LCCOMB_X70_Y21_N12
\u7|ticks~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|ticks~3_combout\ = (!\u7|Equal0~10_combout\ & \u7|Add2~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Equal0~10_combout\,
	datad => \u7|Add2~16_combout\,
	combout => \u7|ticks~3_combout\);

-- Location: LCFF_X70_Y21_N13
\u7|ticks[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|ticks~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(8));

-- Location: LCCOMB_X71_Y22_N22
\u7|Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~22_combout\ = (\u7|ticks\(11) & (!\u7|Add2~21\)) # (!\u7|ticks\(11) & ((\u7|Add2~21\) # (GND)))
-- \u7|Add2~23\ = CARRY((!\u7|Add2~21\) # (!\u7|ticks\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|ticks\(11),
	datad => VCC,
	cin => \u7|Add2~21\,
	combout => \u7|Add2~22_combout\,
	cout => \u7|Add2~23\);

-- Location: LCFF_X71_Y22_N23
\u7|ticks[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~22_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(11));

-- Location: LCCOMB_X71_Y22_N24
\u7|Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~24_combout\ = (\u7|ticks\(12) & (\u7|Add2~23\ $ (GND))) # (!\u7|ticks\(12) & (!\u7|Add2~23\ & VCC))
-- \u7|Add2~25\ = CARRY((\u7|ticks\(12) & !\u7|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|ticks\(12),
	datad => VCC,
	cin => \u7|Add2~23\,
	combout => \u7|Add2~24_combout\,
	cout => \u7|Add2~25\);

-- Location: LCCOMB_X71_Y22_N26
\u7|Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~26_combout\ = (\u7|ticks\(13) & (!\u7|Add2~25\)) # (!\u7|ticks\(13) & ((\u7|Add2~25\) # (GND)))
-- \u7|Add2~27\ = CARRY((!\u7|Add2~25\) # (!\u7|ticks\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|ticks\(13),
	datad => VCC,
	cin => \u7|Add2~25\,
	combout => \u7|Add2~26_combout\,
	cout => \u7|Add2~27\);

-- Location: LCCOMB_X70_Y21_N28
\u7|ticks~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|ticks~0_combout\ = (!\u7|Equal0~10_combout\ & \u7|Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Equal0~10_combout\,
	datac => \u7|Add2~26_combout\,
	combout => \u7|ticks~0_combout\);

-- Location: LCFF_X70_Y21_N29
\u7|ticks[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|ticks~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(13));

-- Location: LCFF_X71_Y22_N25
\u7|ticks[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~24_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(12));

-- Location: LCCOMB_X71_Y22_N28
\u7|Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~28_combout\ = (\u7|ticks\(14) & (\u7|Add2~27\ $ (GND))) # (!\u7|ticks\(14) & (!\u7|Add2~27\ & VCC))
-- \u7|Add2~29\ = CARRY((\u7|ticks\(14) & !\u7|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|ticks\(14),
	datad => VCC,
	cin => \u7|Add2~27\,
	combout => \u7|Add2~28_combout\,
	cout => \u7|Add2~29\);

-- Location: LCFF_X71_Y22_N29
\u7|ticks[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~28_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(14));

-- Location: LCCOMB_X70_Y21_N18
\u7|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Equal0~5_combout\ = (!\u7|ticks\(15) & (\u7|ticks\(13) & (!\u7|ticks\(12) & !\u7|ticks\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|ticks\(15),
	datab => \u7|ticks\(13),
	datac => \u7|ticks\(12),
	datad => \u7|ticks\(14),
	combout => \u7|Equal0~5_combout\);

-- Location: LCCOMB_X71_Y22_N30
\u7|Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~30_combout\ = (\u7|ticks\(15) & (!\u7|Add2~29\)) # (!\u7|ticks\(15) & ((\u7|Add2~29\) # (GND)))
-- \u7|Add2~31\ = CARRY((!\u7|Add2~29\) # (!\u7|ticks\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|ticks\(15),
	datad => VCC,
	cin => \u7|Add2~29\,
	combout => \u7|Add2~30_combout\,
	cout => \u7|Add2~31\);

-- Location: LCFF_X71_Y22_N31
\u7|ticks[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~30_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(15));

-- Location: LCCOMB_X71_Y21_N0
\u7|Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~32_combout\ = (\u7|ticks\(16) & (\u7|Add2~31\ $ (GND))) # (!\u7|ticks\(16) & (!\u7|Add2~31\ & VCC))
-- \u7|Add2~33\ = CARRY((\u7|ticks\(16) & !\u7|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|ticks\(16),
	datad => VCC,
	cin => \u7|Add2~31\,
	combout => \u7|Add2~32_combout\,
	cout => \u7|Add2~33\);

-- Location: LCFF_X71_Y21_N1
\u7|ticks[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~32_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(16));

-- Location: LCCOMB_X71_Y21_N2
\u7|Add2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~34_combout\ = (\u7|ticks\(17) & (!\u7|Add2~33\)) # (!\u7|ticks\(17) & ((\u7|Add2~33\) # (GND)))
-- \u7|Add2~35\ = CARRY((!\u7|Add2~33\) # (!\u7|ticks\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|ticks\(17),
	datad => VCC,
	cin => \u7|Add2~33\,
	combout => \u7|Add2~34_combout\,
	cout => \u7|Add2~35\);

-- Location: LCFF_X71_Y21_N3
\u7|ticks[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~34_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(17));

-- Location: LCCOMB_X71_Y21_N4
\u7|Add2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~36_combout\ = (\u7|ticks\(18) & (\u7|Add2~35\ $ (GND))) # (!\u7|ticks\(18) & (!\u7|Add2~35\ & VCC))
-- \u7|Add2~37\ = CARRY((\u7|ticks\(18) & !\u7|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|ticks\(18),
	datad => VCC,
	cin => \u7|Add2~35\,
	combout => \u7|Add2~36_combout\,
	cout => \u7|Add2~37\);

-- Location: LCFF_X71_Y21_N5
\u7|ticks[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~36_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(18));

-- Location: LCCOMB_X71_Y21_N6
\u7|Add2~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~38_combout\ = (\u7|ticks\(19) & (!\u7|Add2~37\)) # (!\u7|ticks\(19) & ((\u7|Add2~37\) # (GND)))
-- \u7|Add2~39\ = CARRY((!\u7|Add2~37\) # (!\u7|ticks\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|ticks\(19),
	datad => VCC,
	cin => \u7|Add2~37\,
	combout => \u7|Add2~38_combout\,
	cout => \u7|Add2~39\);

-- Location: LCFF_X71_Y21_N7
\u7|ticks[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~38_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(19));

-- Location: LCCOMB_X70_Y21_N4
\u7|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Equal0~3_combout\ = (!\u7|ticks\(17) & (!\u7|ticks\(19) & (!\u7|ticks\(16) & !\u7|ticks\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|ticks\(17),
	datab => \u7|ticks\(19),
	datac => \u7|ticks\(16),
	datad => \u7|ticks\(18),
	combout => \u7|Equal0~3_combout\);

-- Location: LCCOMB_X71_Y21_N8
\u7|Add2~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~40_combout\ = (\u7|ticks\(20) & (\u7|Add2~39\ $ (GND))) # (!\u7|ticks\(20) & (!\u7|Add2~39\ & VCC))
-- \u7|Add2~41\ = CARRY((\u7|ticks\(20) & !\u7|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|ticks\(20),
	datad => VCC,
	cin => \u7|Add2~39\,
	combout => \u7|Add2~40_combout\,
	cout => \u7|Add2~41\);

-- Location: LCFF_X71_Y21_N9
\u7|ticks[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~40_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(20));

-- Location: LCCOMB_X71_Y21_N14
\u7|Add2~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~46_combout\ = (\u7|ticks\(23) & (!\u7|Add2~45\)) # (!\u7|ticks\(23) & ((\u7|Add2~45\) # (GND)))
-- \u7|Add2~47\ = CARRY((!\u7|Add2~45\) # (!\u7|ticks\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|ticks\(23),
	datad => VCC,
	cin => \u7|Add2~45\,
	combout => \u7|Add2~46_combout\,
	cout => \u7|Add2~47\);

-- Location: LCFF_X71_Y21_N15
\u7|ticks[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~46_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(23));

-- Location: LCCOMB_X71_Y21_N16
\u7|Add2~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~48_combout\ = (\u7|ticks\(24) & (\u7|Add2~47\ $ (GND))) # (!\u7|ticks\(24) & (!\u7|Add2~47\ & VCC))
-- \u7|Add2~49\ = CARRY((\u7|ticks\(24) & !\u7|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|ticks\(24),
	datad => VCC,
	cin => \u7|Add2~47\,
	combout => \u7|Add2~48_combout\,
	cout => \u7|Add2~49\);

-- Location: LCCOMB_X71_Y21_N18
\u7|Add2~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~50_combout\ = (\u7|ticks\(25) & (!\u7|Add2~49\)) # (!\u7|ticks\(25) & ((\u7|Add2~49\) # (GND)))
-- \u7|Add2~51\ = CARRY((!\u7|Add2~49\) # (!\u7|ticks\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|ticks\(25),
	datad => VCC,
	cin => \u7|Add2~49\,
	combout => \u7|Add2~50_combout\,
	cout => \u7|Add2~51\);

-- Location: LCFF_X71_Y21_N19
\u7|ticks[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~50_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(25));

-- Location: LCCOMB_X71_Y21_N20
\u7|Add2~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~52_combout\ = (\u7|ticks\(26) & (\u7|Add2~51\ $ (GND))) # (!\u7|ticks\(26) & (!\u7|Add2~51\ & VCC))
-- \u7|Add2~53\ = CARRY((\u7|ticks\(26) & !\u7|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|ticks\(26),
	datad => VCC,
	cin => \u7|Add2~51\,
	combout => \u7|Add2~52_combout\,
	cout => \u7|Add2~53\);

-- Location: LCCOMB_X71_Y21_N22
\u7|Add2~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~54_combout\ = (\u7|ticks\(27) & (!\u7|Add2~53\)) # (!\u7|ticks\(27) & ((\u7|Add2~53\) # (GND)))
-- \u7|Add2~55\ = CARRY((!\u7|Add2~53\) # (!\u7|ticks\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|ticks\(27),
	datad => VCC,
	cin => \u7|Add2~53\,
	combout => \u7|Add2~54_combout\,
	cout => \u7|Add2~55\);

-- Location: LCFF_X71_Y21_N23
\u7|ticks[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~54_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(27));

-- Location: LCFF_X71_Y21_N17
\u7|ticks[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~48_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(24));

-- Location: LCFF_X71_Y21_N21
\u7|ticks[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~52_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(26));

-- Location: LCCOMB_X70_Y21_N20
\u7|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Equal0~1_combout\ = (!\u7|ticks\(25) & (!\u7|ticks\(27) & (!\u7|ticks\(24) & !\u7|ticks\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|ticks\(25),
	datab => \u7|ticks\(27),
	datac => \u7|ticks\(24),
	datad => \u7|ticks\(26),
	combout => \u7|Equal0~1_combout\);

-- Location: LCCOMB_X71_Y21_N24
\u7|Add2~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~56_combout\ = (\u7|ticks\(28) & (\u7|Add2~55\ $ (GND))) # (!\u7|ticks\(28) & (!\u7|Add2~55\ & VCC))
-- \u7|Add2~57\ = CARRY((\u7|ticks\(28) & !\u7|Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|ticks\(28),
	datad => VCC,
	cin => \u7|Add2~55\,
	combout => \u7|Add2~56_combout\,
	cout => \u7|Add2~57\);

-- Location: LCCOMB_X71_Y21_N26
\u7|Add2~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~58_combout\ = (\u7|ticks\(29) & (!\u7|Add2~57\)) # (!\u7|ticks\(29) & ((\u7|Add2~57\) # (GND)))
-- \u7|Add2~59\ = CARRY((!\u7|Add2~57\) # (!\u7|ticks\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|ticks\(29),
	datad => VCC,
	cin => \u7|Add2~57\,
	combout => \u7|Add2~58_combout\,
	cout => \u7|Add2~59\);

-- Location: LCFF_X71_Y21_N27
\u7|ticks[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~58_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(29));

-- Location: LCCOMB_X71_Y21_N28
\u7|Add2~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~60_combout\ = (\u7|ticks\(30) & (\u7|Add2~59\ $ (GND))) # (!\u7|ticks\(30) & (!\u7|Add2~59\ & VCC))
-- \u7|Add2~61\ = CARRY((\u7|ticks\(30) & !\u7|Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|ticks\(30),
	datad => VCC,
	cin => \u7|Add2~59\,
	combout => \u7|Add2~60_combout\,
	cout => \u7|Add2~61\);

-- Location: LCFF_X71_Y21_N29
\u7|ticks[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~60_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(30));

-- Location: LCCOMB_X71_Y21_N30
\u7|Add2~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add2~62_combout\ = \u7|Add2~61\ $ (\u7|ticks\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u7|ticks\(31),
	cin => \u7|Add2~61\,
	combout => \u7|Add2~62_combout\);

-- Location: LCFF_X71_Y21_N31
\u7|ticks[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~62_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(31));

-- Location: LCFF_X71_Y21_N25
\u7|ticks[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~56_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(28));

-- Location: LCCOMB_X72_Y21_N8
\u7|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Equal0~0_combout\ = (!\u7|ticks\(30) & (!\u7|ticks\(29) & (!\u7|ticks\(31) & !\u7|ticks\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|ticks\(30),
	datab => \u7|ticks\(29),
	datac => \u7|ticks\(31),
	datad => \u7|ticks\(28),
	combout => \u7|Equal0~0_combout\);

-- Location: LCCOMB_X70_Y21_N14
\u7|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Equal0~4_combout\ = (\u7|Equal0~2_combout\ & (\u7|Equal0~3_combout\ & (\u7|Equal0~1_combout\ & \u7|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Equal0~2_combout\,
	datab => \u7|Equal0~3_combout\,
	datac => \u7|Equal0~1_combout\,
	datad => \u7|Equal0~0_combout\,
	combout => \u7|Equal0~4_combout\);

-- Location: LCFF_X71_Y22_N7
\u7|ticks[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~6_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(3));

-- Location: LCCOMB_X70_Y21_N16
\u7|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Equal0~8_combout\ = (\u7|ticks\(2) & \u7|ticks\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u7|ticks\(2),
	datad => \u7|ticks\(3),
	combout => \u7|Equal0~8_combout\);

-- Location: LCFF_X71_Y22_N11
\u7|ticks[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add2~10_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|ticks\(5));

-- Location: LCCOMB_X70_Y21_N22
\u7|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Equal0~7_combout\ = (!\u7|ticks\(6) & (!\u7|ticks\(4) & (!\u7|ticks\(5) & !\u7|ticks\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|ticks\(6),
	datab => \u7|ticks\(4),
	datac => \u7|ticks\(5),
	datad => \u7|ticks\(7),
	combout => \u7|Equal0~7_combout\);

-- Location: LCCOMB_X70_Y21_N2
\u7|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Equal0~9_combout\ = (\u7|ticks\(1) & (\u7|ticks\(0) & (\u7|Equal0~8_combout\ & \u7|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|ticks\(1),
	datab => \u7|ticks\(0),
	datac => \u7|Equal0~8_combout\,
	datad => \u7|Equal0~7_combout\,
	combout => \u7|Equal0~9_combout\);

-- Location: LCCOMB_X70_Y21_N24
\u7|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Equal0~10_combout\ = (\u7|Equal0~6_combout\ & (\u7|Equal0~5_combout\ & (\u7|Equal0~4_combout\ & \u7|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|Equal0~6_combout\,
	datab => \u7|Equal0~5_combout\,
	datac => \u7|Equal0~4_combout\,
	datad => \u7|Equal0~9_combout\,
	combout => \u7|Equal0~10_combout\);

-- Location: LCFF_X70_Y22_N17
\u7|seconds_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add1~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|seconds_int\(0));

-- Location: LCFF_X70_Y22_N1
\u4|tijd_line[11][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u7|seconds_int\(0),
	sload => VCC,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|tijd_line[11][0]~regout\);

-- Location: LCCOMB_X66_Y42_N0
\u0|count[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|count[0]~16_combout\ = (\u0|stop~regout\ & (\u0|count\(0) & VCC)) # (!\u0|stop~regout\ & (!\u0|count\(0)))
-- \u0|count[0]~17\ = CARRY((!\u0|stop~regout\ & !\u0|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|stop~regout\,
	datab => \u0|count\(0),
	datad => VCC,
	combout => \u0|count[0]~16_combout\,
	cout => \u0|count[0]~17\);

-- Location: LCCOMB_X66_Y42_N12
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

-- Location: LCCOMB_X66_Y42_N14
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

-- Location: LCFF_X66_Y42_N15
\u0|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[7]~30_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(7));

-- Location: LCCOMB_X66_Y42_N16
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

-- Location: LCFF_X66_Y42_N17
\u0|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[8]~32_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(8));

-- Location: LCCOMB_X66_Y42_N6
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

-- Location: LCFF_X66_Y42_N7
\u0|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[3]~22_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(3));

-- Location: LCCOMB_X67_Y42_N8
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

-- Location: LCCOMB_X67_Y42_N18
\u0|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~1_combout\ = (\u0|count\(5) & (\u0|LessThan0~0_combout\ & \u0|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(5),
	datab => \u0|LessThan0~0_combout\,
	datad => \u0|count\(4),
	combout => \u0|LessThan0~1_combout\);

-- Location: LCCOMB_X67_Y42_N14
\u0|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~2_combout\ = (\u0|count\(8) & ((\u0|count\(7)) # ((\u0|count\(6)) # (\u0|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(7),
	datab => \u0|count\(6),
	datac => \u0|count\(8),
	datad => \u0|LessThan0~1_combout\,
	combout => \u0|LessThan0~2_combout\);

-- Location: LCCOMB_X66_Y42_N18
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

-- Location: LCFF_X66_Y42_N19
\u0|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[9]~34_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(9));

-- Location: LCCOMB_X66_Y42_N20
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

-- Location: LCFF_X66_Y42_N21
\u0|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[10]~36_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(10));

-- Location: LCCOMB_X67_Y42_N0
\u0|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~3_combout\ = (\u0|count\(11)) # ((\u0|count\(10) & ((\u0|LessThan0~2_combout\) # (\u0|count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(11),
	datab => \u0|LessThan0~2_combout\,
	datac => \u0|count\(10),
	datad => \u0|count\(9),
	combout => \u0|LessThan0~3_combout\);

-- Location: LCCOMB_X69_Y42_N10
\u0|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add3~4_combout\ = (\u0|wait_time\(2) & (\u0|Add3~3\ $ (GND))) # (!\u0|wait_time\(2) & (!\u0|Add3~3\ & VCC))
-- \u0|Add3~5\ = CARRY((\u0|wait_time\(2) & !\u0|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(2),
	datad => VCC,
	cin => \u0|Add3~3\,
	combout => \u0|Add3~4_combout\,
	cout => \u0|Add3~5\);

-- Location: LCCOMB_X69_Y42_N12
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

-- Location: LCCOMB_X69_Y42_N14
\u0|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add3~8_combout\ = (\u0|wait_time\(4) & (\u0|Add3~7\ $ (GND))) # (!\u0|wait_time\(4) & (!\u0|Add3~7\ & VCC))
-- \u0|Add3~9\ = CARRY((\u0|wait_time\(4) & !\u0|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(4),
	datad => VCC,
	cin => \u0|Add3~7\,
	combout => \u0|Add3~8_combout\,
	cout => \u0|Add3~9\);

-- Location: LCCOMB_X69_Y42_N18
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

-- Location: LCCOMB_X68_Y42_N16
\u0|wait_time[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[6]~7_combout\ = (\u0|wait_time[10]~2_combout\ & (\u0|Add3~12_combout\ & ((\u0|wait_time[0]~1_combout\)))) # (!\u0|wait_time[10]~2_combout\ & ((\u0|wait_time\(6)) # ((\u0|Add3~12_combout\ & \u0|wait_time[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time[10]~2_combout\,
	datab => \u0|Add3~12_combout\,
	datac => \u0|wait_time\(6),
	datad => \u0|wait_time[0]~1_combout\,
	combout => \u0|wait_time[6]~7_combout\);

-- Location: LCFF_X68_Y42_N17
\u0|wait_time[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(6));

-- Location: LCCOMB_X69_Y42_N20
\u0|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add3~14_combout\ = (\u0|wait_time\(7) & (!\u0|Add3~13\)) # (!\u0|wait_time\(7) & ((\u0|Add3~13\) # (GND)))
-- \u0|Add3~15\ = CARRY((!\u0|Add3~13\) # (!\u0|wait_time\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|wait_time\(7),
	datad => VCC,
	cin => \u0|Add3~13\,
	combout => \u0|Add3~14_combout\,
	cout => \u0|Add3~15\);

-- Location: LCCOMB_X68_Y42_N8
\u0|wait_time[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[7]~6_combout\ = (\u0|wait_time[10]~2_combout\ & (\u0|Add3~14_combout\ & ((\u0|wait_time[0]~1_combout\)))) # (!\u0|wait_time[10]~2_combout\ & ((\u0|wait_time\(7)) # ((\u0|Add3~14_combout\ & \u0|wait_time[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time[10]~2_combout\,
	datab => \u0|Add3~14_combout\,
	datac => \u0|wait_time\(7),
	datad => \u0|wait_time[0]~1_combout\,
	combout => \u0|wait_time[7]~6_combout\);

-- Location: LCFF_X68_Y42_N9
\u0|wait_time[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(7));

-- Location: LCCOMB_X69_Y42_N24
\u0|Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add3~18_combout\ = (\u0|wait_time\(9) & (!\u0|Add3~17\)) # (!\u0|wait_time\(9) & ((\u0|Add3~17\) # (GND)))
-- \u0|Add3~19\ = CARRY((!\u0|Add3~17\) # (!\u0|wait_time\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(9),
	datad => VCC,
	cin => \u0|Add3~17\,
	combout => \u0|Add3~18_combout\,
	cout => \u0|Add3~19\);

-- Location: LCCOMB_X68_Y42_N0
\u0|wait_time[9]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[9]~4_combout\ = (\u0|wait_time[10]~2_combout\ & (\u0|Add3~18_combout\ & ((\u0|wait_time[0]~1_combout\)))) # (!\u0|wait_time[10]~2_combout\ & ((\u0|wait_time\(9)) # ((\u0|Add3~18_combout\ & \u0|wait_time[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time[10]~2_combout\,
	datab => \u0|Add3~18_combout\,
	datac => \u0|wait_time\(9),
	datad => \u0|wait_time[0]~1_combout\,
	combout => \u0|wait_time[9]~4_combout\);

-- Location: LCFF_X68_Y42_N1
\u0|wait_time[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(9));

-- Location: LCCOMB_X69_Y42_N26
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

-- Location: LCCOMB_X68_Y42_N22
\u0|wait_time[10]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[10]~3_combout\ = (\u0|wait_time[10]~2_combout\ & (\u0|Add3~20_combout\ & ((\u0|wait_time[0]~1_combout\)))) # (!\u0|wait_time[10]~2_combout\ & ((\u0|wait_time\(10)) # ((\u0|Add3~20_combout\ & \u0|wait_time[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time[10]~2_combout\,
	datab => \u0|Add3~20_combout\,
	datac => \u0|wait_time\(10),
	datad => \u0|wait_time[0]~1_combout\,
	combout => \u0|wait_time[10]~3_combout\);

-- Location: LCFF_X68_Y42_N23
\u0|wait_time[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(10));

-- Location: LCCOMB_X68_Y42_N6
\u0|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal2~0_combout\ = (\u0|wait_time\(8) & (\u0|wait_time\(9) & (\u0|wait_time\(7) & \u0|wait_time\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(8),
	datab => \u0|wait_time\(9),
	datac => \u0|wait_time\(7),
	datad => \u0|wait_time\(10),
	combout => \u0|Equal2~0_combout\);

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

-- Location: LCCOMB_X68_Y42_N2
\u0|wait_time[10]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[10]~0_combout\ = (((\hall_sens~combout\) # (!\u0|Equal2~2_combout\)) # (!\u0|Equal2~0_combout\)) # (!\u0|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal2~1_combout\,
	datab => \u0|Equal2~0_combout\,
	datac => \u0|Equal2~2_combout\,
	datad => \hall_sens~combout\,
	combout => \u0|wait_time[10]~0_combout\);

-- Location: LCCOMB_X68_Y42_N24
\u0|wait_time[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[0]~1_combout\ = (\BUTTON~combout\(3) & (\u0|wait_time[10]~0_combout\ & !\u0|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON~combout\(3),
	datac => \u0|wait_time[10]~0_combout\,
	datad => \u0|process_0~0_combout\,
	combout => \u0|wait_time[0]~1_combout\);

-- Location: LCCOMB_X68_Y42_N18
\u0|wait_time[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[0]~9_combout\ = (\u0|Add3~0_combout\ & ((\u0|wait_time[0]~1_combout\) # ((!\BUTTON~combout\(3) & \u0|wait_time\(0))))) # (!\u0|Add3~0_combout\ & (!\BUTTON~combout\(3) & (\u0|wait_time\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add3~0_combout\,
	datab => \BUTTON~combout\(3),
	datac => \u0|wait_time\(0),
	datad => \u0|wait_time[0]~1_combout\,
	combout => \u0|wait_time[0]~9_combout\);

-- Location: LCFF_X68_Y42_N19
\u0|wait_time[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(0));

-- Location: LCCOMB_X69_Y42_N8
\u0|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add3~2_combout\ = (\u0|wait_time\(1) & (!\u0|Add3~1\)) # (!\u0|wait_time\(1) & ((\u0|Add3~1\) # (GND)))
-- \u0|Add3~3\ = CARRY((!\u0|Add3~1\) # (!\u0|wait_time\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|wait_time\(1),
	datad => VCC,
	cin => \u0|Add3~1\,
	combout => \u0|Add3~2_combout\,
	cout => \u0|Add3~3\);

-- Location: LCCOMB_X68_Y42_N14
\u0|wait_time[10]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[10]~2_combout\ = (\BUTTON~combout\(3) & \u0|wait_time[10]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BUTTON~combout\(3),
	datad => \u0|wait_time[10]~0_combout\,
	combout => \u0|wait_time[10]~2_combout\);

-- Location: LCFF_X69_Y42_N9
\u0|wait_time[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|Add3~2_combout\,
	ena => \u0|wait_time[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(1));

-- Location: LCFF_X69_Y42_N11
\u0|wait_time[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|Add3~4_combout\,
	ena => \u0|wait_time[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(2));

-- Location: LCCOMB_X68_Y42_N20
\u0|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal2~2_combout\ = (!\u0|wait_time\(2) & (!\u0|wait_time\(1) & !\u0|wait_time\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|wait_time\(2),
	datac => \u0|wait_time\(1),
	datad => \u0|wait_time\(0),
	combout => \u0|Equal2~2_combout\);

-- Location: LCFF_X69_Y42_N13
\u0|wait_time[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|Add3~6_combout\,
	ena => \u0|wait_time[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(3));

-- Location: LCCOMB_X68_Y42_N30
\u0|wait_time[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[4]~8_combout\ = (\u0|wait_time[10]~2_combout\ & (\u0|Add3~8_combout\ & ((\u0|wait_time[0]~1_combout\)))) # (!\u0|wait_time[10]~2_combout\ & ((\u0|wait_time\(4)) # ((\u0|Add3~8_combout\ & \u0|wait_time[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time[10]~2_combout\,
	datab => \u0|Add3~8_combout\,
	datac => \u0|wait_time\(4),
	datad => \u0|wait_time[0]~1_combout\,
	combout => \u0|wait_time[4]~8_combout\);

-- Location: LCFF_X68_Y42_N31
\u0|wait_time[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(4));

-- Location: LCCOMB_X68_Y42_N12
\u0|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal2~1_combout\ = (!\u0|wait_time\(5) & (!\u0|wait_time\(3) & (\u0|wait_time\(6) & \u0|wait_time\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(5),
	datab => \u0|wait_time\(3),
	datac => \u0|wait_time\(6),
	datad => \u0|wait_time\(4),
	combout => \u0|Equal2~1_combout\);

-- Location: LCCOMB_X67_Y42_N28
\u0|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|process_0~0_combout\ = (\u0|Equal2~0_combout\ & (\u0|Equal2~2_combout\ & (\u0|Equal2~1_combout\ & \hall_sens~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal2~0_combout\,
	datab => \u0|Equal2~2_combout\,
	datac => \u0|Equal2~1_combout\,
	datad => \hall_sens~combout\,
	combout => \u0|process_0~0_combout\);

-- Location: LCCOMB_X66_Y42_N22
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

-- Location: LCFF_X66_Y42_N23
\u0|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[11]~38_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(11));

-- Location: LCCOMB_X66_Y42_N24
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

-- Location: LCCOMB_X66_Y42_N26
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

-- Location: LCFF_X66_Y42_N27
\u0|count[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[13]~42_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(13));

-- Location: LCCOMB_X66_Y42_N28
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

-- Location: LCFF_X66_Y42_N29
\u0|count[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[14]~44_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(14));

-- Location: LCCOMB_X66_Y42_N30
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

-- Location: LCFF_X66_Y42_N31
\u0|count[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[15]~46_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(15));

-- Location: LCCOMB_X67_Y42_N30
\u0|tix_mem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem~0_combout\ = (\u0|process_0~0_combout\) # ((\u0|count\(15)) # ((\u0|LessThan0~4_combout\ & \u0|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|LessThan0~4_combout\,
	datab => \u0|LessThan0~3_combout\,
	datac => \u0|process_0~0_combout\,
	datad => \u0|count\(15),
	combout => \u0|tix_mem~0_combout\);

-- Location: LCFF_X66_Y42_N1
\u0|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[0]~16_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(0));

-- Location: LCCOMB_X66_Y42_N2
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

-- Location: LCFF_X66_Y42_N3
\u0|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[1]~18_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(1));

-- Location: LCCOMB_X66_Y42_N4
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

-- Location: LCFF_X66_Y42_N5
\u0|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[2]~20_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(2));

-- Location: LCCOMB_X66_Y42_N8
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

-- Location: LCFF_X66_Y42_N9
\u0|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[4]~24_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(4));

-- Location: LCCOMB_X66_Y42_N10
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

-- Location: LCFF_X66_Y42_N13
\u0|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[6]~28_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(6));

-- Location: LCFF_X67_Y42_N19
\u0|tix_mem[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(6),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(6));

-- Location: LCCOMB_X60_Y42_N16
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

-- Location: LCFF_X67_Y42_N31
\u0|calc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|process_0~0_combout\,
	sload => VCC,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|calc~regout\);

-- Location: LCFF_X60_Y42_N17
\u5|tix_int[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|tix_int[6]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(6));

-- Location: LCFF_X67_Y42_N17
\u0|tix_mem[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(7),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(7));

-- Location: LCFF_X61_Y42_N29
\u5|tix_int[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(7),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(7));

-- Location: LCFF_X66_Y42_N11
\u0|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[5]~26_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(5));

-- Location: LCFF_X68_Y42_N29
\u0|tix_mem[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(5),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(5));

-- Location: LCFF_X61_Y42_N7
\u5|tix_int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(5),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(5));

-- Location: LCCOMB_X61_Y42_N28
\u5|rpm[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[0]~2_combout\ = (\u5|tix_int\(6)) # ((\u5|tix_int\(7)) # ((\u5|tix_int\(4) & \u5|tix_int\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(4),
	datab => \u5|tix_int\(6),
	datac => \u5|tix_int\(7),
	datad => \u5|tix_int\(5),
	combout => \u5|rpm[0]~2_combout\);

-- Location: LCFF_X67_Y42_N1
\u0|tix_mem[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(10),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(10));

-- Location: LCFF_X61_Y42_N17
\u5|tix_int[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(10),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(10));

-- Location: LCFF_X67_Y42_N15
\u0|tix_mem[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(8),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(8));

-- Location: LCFF_X63_Y42_N11
\u5|tix_int[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(8),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(8));

-- Location: LCCOMB_X61_Y42_N16
\u5|rpm[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[0]~3_combout\ = (\u5|tix_int\(10) & ((\u5|tix_int\(9)) # ((\u5|rpm[0]~2_combout\ & \u5|tix_int\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(9),
	datab => \u5|rpm[0]~2_combout\,
	datac => \u5|tix_int\(10),
	datad => \u5|tix_int\(8),
	combout => \u5|rpm[0]~3_combout\);

-- Location: LCFF_X67_Y42_N13
\u0|tix_mem[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(14),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(14));

-- Location: LCFF_X63_Y42_N1
\u5|tix_int[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(14),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(14));

-- Location: LCFF_X66_Y42_N25
\u0|count[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|count[12]~40_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|count\(12));

-- Location: LCFF_X67_Y42_N5
\u0|tix_mem[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(12),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(12));

-- Location: LCFF_X63_Y42_N13
\u5|tix_int[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(12),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(12));

-- Location: LCCOMB_X67_Y42_N22
\u0|tix_mem[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem[13]~feeder_combout\ = \u0|count\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|count\(13),
	combout => \u0|tix_mem[13]~feeder_combout\);

-- Location: LCFF_X67_Y42_N23
\u0|tix_mem[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem[13]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(13));

-- Location: LCFF_X63_Y42_N3
\u5|tix_int[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(13),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(13));

-- Location: LCCOMB_X62_Y42_N2
\u5|rpm[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[0]~1_combout\ = (\u5|tix_int\(14) & (\u5|tix_int\(12) & \u5|tix_int\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|tix_int\(14),
	datac => \u5|tix_int\(12),
	datad => \u5|tix_int\(13),
	combout => \u5|rpm[0]~1_combout\);

-- Location: LCCOMB_X61_Y42_N4
\u5|rpm[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[0]~4_combout\ = (\u5|rpm[0]~1_combout\ & ((\u5|tix_int\(11)) # (\u5|rpm[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(11),
	datac => \u5|rpm[0]~3_combout\,
	datad => \u5|rpm[0]~1_combout\,
	combout => \u5|rpm[0]~4_combout\);

-- Location: LCCOMB_X67_Y42_N4
\u0|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~5_combout\ = (\u0|count\(14) & (\u0|LessThan0~3_combout\ & (\u0|count\(12) & \u0|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(14),
	datab => \u0|LessThan0~3_combout\,
	datac => \u0|count\(12),
	datad => \u0|count\(13),
	combout => \u0|LessThan0~5_combout\);

-- Location: LCCOMB_X68_Y42_N4
\u0|tix_mem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem~1_combout\ = (\u0|count\(15)) # ((!\u0|process_0~0_combout\ & (!\u0|LessThan0~5_combout\ & \u0|tix_mem\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|process_0~0_combout\,
	datab => \u0|LessThan0~5_combout\,
	datac => \u0|tix_mem\(15),
	datad => \u0|count\(15),
	combout => \u0|tix_mem~1_combout\);

-- Location: LCFF_X68_Y42_N5
\u0|tix_mem[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(15));

-- Location: LCFF_X63_Y42_N5
\u5|tix_int[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(15),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(15));

-- Location: LCFF_X67_Y42_N11
\u0|tix_mem[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(11),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(11));

-- Location: LCFF_X61_Y42_N27
\u5|tix_int[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(11),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(11));

-- Location: LCCOMB_X67_Y42_N24
\u0|tix_mem[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem[4]~feeder_combout\ = \u0|count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|count\(4),
	combout => \u0|tix_mem[4]~feeder_combout\);

-- Location: LCFF_X67_Y42_N25
\u0|tix_mem[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem[4]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(4));

-- Location: LCFF_X61_Y42_N1
\u5|tix_int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(4),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(4));

-- Location: LCCOMB_X61_Y42_N0
\u5|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan0~1_combout\ = (\u5|tix_int\(6)) # ((\u5|LessThan0~0_combout\ & (\u5|tix_int\(4) & \u5|tix_int\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|LessThan0~0_combout\,
	datab => \u5|tix_int\(6),
	datac => \u5|tix_int\(4),
	datad => \u5|tix_int\(5),
	combout => \u5|LessThan0~1_combout\);

-- Location: LCCOMB_X61_Y42_N26
\u5|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan0~3_combout\ = (\u5|tix_int\(11) & ((\u5|tix_int\(10)) # ((\u5|LessThan0~2_combout\ & \u5|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|LessThan0~2_combout\,
	datab => \u5|tix_int\(10),
	datac => \u5|tix_int\(11),
	datad => \u5|LessThan0~1_combout\,
	combout => \u5|LessThan0~3_combout\);

-- Location: LCCOMB_X61_Y42_N30
\u5|rpm[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[0]~0_combout\ = (!\u5|tix_int\(13) & (!\u5|LessThan0~3_combout\ & (!\u5|tix_int\(12) & !\u5|tix_int\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(13),
	datab => \u5|LessThan0~3_combout\,
	datac => \u5|tix_int\(12),
	datad => \u5|tix_int\(14),
	combout => \u5|rpm[0]~0_combout\);

-- Location: LCCOMB_X61_Y42_N14
\u5|rpm[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[0]~5_combout\ = (\u0|calc~regout\) # ((\u5|rpm[0]~4_combout\) # ((\u5|tix_int\(15)) # (\u5|rpm[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|calc~regout\,
	datab => \u5|rpm[0]~4_combout\,
	datac => \u5|tix_int\(15),
	datad => \u5|rpm[0]~0_combout\,
	combout => \u5|rpm[0]~5_combout\);

-- Location: LCCOMB_X61_Y41_N6
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

-- Location: LCCOMB_X61_Y42_N20
\u5|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~2_combout\ = (\u5|Add1~0_combout\ & !\u5|rpm[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|Add1~0_combout\,
	datac => \u5|rpm[0]~5_combout\,
	combout => \u5|Add1~2_combout\);

-- Location: LCCOMB_X61_Y42_N18
\u5|rpm[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[0]~6_combout\ = (!\u5|tix_int\(15) & (!\u5|rpm[0]~4_combout\ & !\u5|rpm[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(15),
	datab => \u5|rpm[0]~4_combout\,
	datad => \u5|rpm[0]~0_combout\,
	combout => \u5|rpm[0]~6_combout\);

-- Location: LCCOMB_X62_Y42_N12
\u5|x[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[0]~20_combout\ = (\u5|tix_int\(0) & (\u5|x\(0) $ (VCC))) # (!\u5|tix_int\(0) & ((\u5|x\(0)) # (GND)))
-- \u5|x[0]~21\ = CARRY((\u5|x\(0)) # (!\u5|tix_int\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(0),
	datab => \u5|x\(0),
	datad => VCC,
	combout => \u5|x[0]~20_combout\,
	cout => \u5|x[0]~21\);

-- Location: LCFF_X62_Y42_N5
\u5|stop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|stop~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|stop~regout\);

-- Location: LCCOMB_X62_Y42_N4
\u5|stop~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|stop~0_combout\ = (\u0|calc~regout\) # ((\u5|LessThan2~33_combout\ & (\u5|stop~regout\ & \u5|rpm[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|calc~regout\,
	datab => \u5|LessThan2~33_combout\,
	datac => \u5|stop~regout\,
	datad => \u5|rpm[0]~6_combout\,
	combout => \u5|stop~0_combout\);

-- Location: LCFF_X62_Y42_N13
\u5|x[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[0]~20_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(0));

-- Location: LCCOMB_X62_Y42_N14
\u5|x[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[1]~22_combout\ = (\u5|tix_int\(1) & ((\u5|x\(1) & (!\u5|x[0]~21\)) # (!\u5|x\(1) & ((\u5|x[0]~21\) # (GND))))) # (!\u5|tix_int\(1) & ((\u5|x\(1) & (\u5|x[0]~21\ & VCC)) # (!\u5|x\(1) & (!\u5|x[0]~21\))))
-- \u5|x[1]~23\ = CARRY((\u5|tix_int\(1) & ((!\u5|x[0]~21\) # (!\u5|x\(1)))) # (!\u5|tix_int\(1) & (!\u5|x\(1) & !\u5|x[0]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(1),
	datab => \u5|x\(1),
	datad => VCC,
	cin => \u5|x[0]~21\,
	combout => \u5|x[1]~22_combout\,
	cout => \u5|x[1]~23\);

-- Location: LCFF_X62_Y42_N15
\u5|x[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[1]~22_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(1));

-- Location: LCCOMB_X62_Y42_N16
\u5|x[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[2]~24_combout\ = ((\u5|tix_int\(2) $ (\u5|x\(2) $ (\u5|x[1]~23\)))) # (GND)
-- \u5|x[2]~25\ = CARRY((\u5|tix_int\(2) & (\u5|x\(2) & !\u5|x[1]~23\)) # (!\u5|tix_int\(2) & ((\u5|x\(2)) # (!\u5|x[1]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(2),
	datab => \u5|x\(2),
	datad => VCC,
	cin => \u5|x[1]~23\,
	combout => \u5|x[2]~24_combout\,
	cout => \u5|x[2]~25\);

-- Location: LCFF_X62_Y42_N17
\u5|x[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[2]~24_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(2));

-- Location: LCCOMB_X62_Y42_N18
\u5|x[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[3]~26_combout\ = (\u5|tix_int\(3) & ((\u5|x\(3) & (!\u5|x[2]~25\)) # (!\u5|x\(3) & ((\u5|x[2]~25\) # (GND))))) # (!\u5|tix_int\(3) & ((\u5|x\(3) & (\u5|x[2]~25\ & VCC)) # (!\u5|x\(3) & (!\u5|x[2]~25\))))
-- \u5|x[3]~27\ = CARRY((\u5|tix_int\(3) & ((!\u5|x[2]~25\) # (!\u5|x\(3)))) # (!\u5|tix_int\(3) & (!\u5|x\(3) & !\u5|x[2]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(3),
	datab => \u5|x\(3),
	datad => VCC,
	cin => \u5|x[2]~25\,
	combout => \u5|x[3]~26_combout\,
	cout => \u5|x[3]~27\);

-- Location: LCFF_X62_Y42_N19
\u5|x[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[3]~26_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(3));

-- Location: LCCOMB_X62_Y42_N20
\u5|x[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[4]~28_combout\ = ((\u5|tix_int\(4) $ (\u5|x\(4) $ (\u5|x[3]~27\)))) # (GND)
-- \u5|x[4]~29\ = CARRY((\u5|tix_int\(4) & (\u5|x\(4) & !\u5|x[3]~27\)) # (!\u5|tix_int\(4) & ((\u5|x\(4)) # (!\u5|x[3]~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(4),
	datab => \u5|x\(4),
	datad => VCC,
	cin => \u5|x[3]~27\,
	combout => \u5|x[4]~28_combout\,
	cout => \u5|x[4]~29\);

-- Location: LCFF_X62_Y42_N21
\u5|x[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[4]~28_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(4));

-- Location: LCCOMB_X62_Y42_N22
\u5|x[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[5]~30_combout\ = (\u5|x\(5) & ((\u5|tix_int\(5) & (!\u5|x[4]~29\)) # (!\u5|tix_int\(5) & (\u5|x[4]~29\ & VCC)))) # (!\u5|x\(5) & ((\u5|tix_int\(5) & ((\u5|x[4]~29\) # (GND))) # (!\u5|tix_int\(5) & (!\u5|x[4]~29\))))
-- \u5|x[5]~31\ = CARRY((\u5|x\(5) & (\u5|tix_int\(5) & !\u5|x[4]~29\)) # (!\u5|x\(5) & ((\u5|tix_int\(5)) # (!\u5|x[4]~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(5),
	datab => \u5|tix_int\(5),
	datad => VCC,
	cin => \u5|x[4]~29\,
	combout => \u5|x[5]~30_combout\,
	cout => \u5|x[5]~31\);

-- Location: LCCOMB_X62_Y42_N24
\u5|x[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[6]~32_combout\ = (\u5|x\(6) & ((\u5|tix_int\(6) & (\u5|x[5]~31\ & VCC)) # (!\u5|tix_int\(6) & (!\u5|x[5]~31\)))) # (!\u5|x\(6) & ((\u5|tix_int\(6) & (!\u5|x[5]~31\)) # (!\u5|tix_int\(6) & ((\u5|x[5]~31\) # (GND)))))
-- \u5|x[6]~33\ = CARRY((\u5|x\(6) & (!\u5|tix_int\(6) & !\u5|x[5]~31\)) # (!\u5|x\(6) & ((!\u5|x[5]~31\) # (!\u5|tix_int\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(6),
	datab => \u5|tix_int\(6),
	datad => VCC,
	cin => \u5|x[5]~31\,
	combout => \u5|x[6]~32_combout\,
	cout => \u5|x[6]~33\);

-- Location: LCCOMB_X62_Y42_N26
\u5|x[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[7]~34_combout\ = ((\u5|tix_int\(7) $ (\u5|x\(7) $ (!\u5|x[6]~33\)))) # (GND)
-- \u5|x[7]~35\ = CARRY((\u5|tix_int\(7) & ((\u5|x\(7)) # (!\u5|x[6]~33\))) # (!\u5|tix_int\(7) & (\u5|x\(7) & !\u5|x[6]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(7),
	datab => \u5|x\(7),
	datad => VCC,
	cin => \u5|x[6]~33\,
	combout => \u5|x[7]~34_combout\,
	cout => \u5|x[7]~35\);

-- Location: LCFF_X62_Y42_N27
\u5|x[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[7]~34_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(7));

-- Location: LCCOMB_X62_Y42_N28
\u5|x[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[8]~36_combout\ = (\u5|tix_int\(8) & ((\u5|x\(8) & (\u5|x[7]~35\ & VCC)) # (!\u5|x\(8) & (!\u5|x[7]~35\)))) # (!\u5|tix_int\(8) & ((\u5|x\(8) & (!\u5|x[7]~35\)) # (!\u5|x\(8) & ((\u5|x[7]~35\) # (GND)))))
-- \u5|x[8]~37\ = CARRY((\u5|tix_int\(8) & (!\u5|x\(8) & !\u5|x[7]~35\)) # (!\u5|tix_int\(8) & ((!\u5|x[7]~35\) # (!\u5|x\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(8),
	datab => \u5|x\(8),
	datad => VCC,
	cin => \u5|x[7]~35\,
	combout => \u5|x[8]~36_combout\,
	cout => \u5|x[8]~37\);

-- Location: LCFF_X62_Y42_N29
\u5|x[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[8]~36_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(8));

-- Location: LCCOMB_X62_Y42_N30
\u5|x[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[9]~38_combout\ = ((\u5|tix_int\(9) $ (\u5|x\(9) $ (!\u5|x[8]~37\)))) # (GND)
-- \u5|x[9]~39\ = CARRY((\u5|tix_int\(9) & ((\u5|x\(9)) # (!\u5|x[8]~37\))) # (!\u5|tix_int\(9) & (\u5|x\(9) & !\u5|x[8]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(9),
	datab => \u5|x\(9),
	datad => VCC,
	cin => \u5|x[8]~37\,
	combout => \u5|x[9]~38_combout\,
	cout => \u5|x[9]~39\);

-- Location: LCFF_X62_Y42_N31
\u5|x[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[9]~38_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(9));

-- Location: LCCOMB_X62_Y41_N0
\u5|x[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[10]~40_combout\ = (\u5|tix_int\(10) & ((\u5|x\(10) & (\u5|x[9]~39\ & VCC)) # (!\u5|x\(10) & (!\u5|x[9]~39\)))) # (!\u5|tix_int\(10) & ((\u5|x\(10) & (!\u5|x[9]~39\)) # (!\u5|x\(10) & ((\u5|x[9]~39\) # (GND)))))
-- \u5|x[10]~41\ = CARRY((\u5|tix_int\(10) & (!\u5|x\(10) & !\u5|x[9]~39\)) # (!\u5|tix_int\(10) & ((!\u5|x[9]~39\) # (!\u5|x\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(10),
	datab => \u5|x\(10),
	datad => VCC,
	cin => \u5|x[9]~39\,
	combout => \u5|x[10]~40_combout\,
	cout => \u5|x[10]~41\);

-- Location: LCFF_X62_Y41_N1
\u5|x[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[10]~40_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(10));

-- Location: LCCOMB_X62_Y41_N2
\u5|x[11]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[11]~42_combout\ = (\u5|tix_int\(11) & ((\u5|x\(11) & (!\u5|x[10]~41\)) # (!\u5|x\(11) & ((\u5|x[10]~41\) # (GND))))) # (!\u5|tix_int\(11) & ((\u5|x\(11) & (\u5|x[10]~41\ & VCC)) # (!\u5|x\(11) & (!\u5|x[10]~41\))))
-- \u5|x[11]~43\ = CARRY((\u5|tix_int\(11) & ((!\u5|x[10]~41\) # (!\u5|x\(11)))) # (!\u5|tix_int\(11) & (!\u5|x\(11) & !\u5|x[10]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(11),
	datab => \u5|x\(11),
	datad => VCC,
	cin => \u5|x[10]~41\,
	combout => \u5|x[11]~42_combout\,
	cout => \u5|x[11]~43\);

-- Location: LCFF_X62_Y41_N3
\u5|x[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[11]~42_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(11));

-- Location: LCCOMB_X62_Y41_N4
\u5|x[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[12]~44_combout\ = ((\u5|x\(12) $ (\u5|tix_int\(12) $ (\u5|x[11]~43\)))) # (GND)
-- \u5|x[12]~45\ = CARRY((\u5|x\(12) & ((!\u5|x[11]~43\) # (!\u5|tix_int\(12)))) # (!\u5|x\(12) & (!\u5|tix_int\(12) & !\u5|x[11]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(12),
	datab => \u5|tix_int\(12),
	datad => VCC,
	cin => \u5|x[11]~43\,
	combout => \u5|x[12]~44_combout\,
	cout => \u5|x[12]~45\);

-- Location: LCCOMB_X62_Y41_N8
\u5|x[14]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[14]~48_combout\ = ((\u5|tix_int\(14) $ (\u5|x\(14) $ (\u5|x[13]~47\)))) # (GND)
-- \u5|x[14]~49\ = CARRY((\u5|tix_int\(14) & (\u5|x\(14) & !\u5|x[13]~47\)) # (!\u5|tix_int\(14) & ((\u5|x\(14)) # (!\u5|x[13]~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(14),
	datab => \u5|x\(14),
	datad => VCC,
	cin => \u5|x[13]~47\,
	combout => \u5|x[14]~48_combout\,
	cout => \u5|x[14]~49\);

-- Location: LCFF_X62_Y41_N9
\u5|x[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[14]~48_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(14));

-- Location: LCCOMB_X62_Y41_N10
\u5|x[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[15]~50_combout\ = (\u5|tix_int\(15) & ((\u5|x\(15) & (!\u5|x[14]~49\)) # (!\u5|x\(15) & ((\u5|x[14]~49\) # (GND))))) # (!\u5|tix_int\(15) & ((\u5|x\(15) & (\u5|x[14]~49\ & VCC)) # (!\u5|x\(15) & (!\u5|x[14]~49\))))
-- \u5|x[15]~51\ = CARRY((\u5|tix_int\(15) & ((!\u5|x[14]~49\) # (!\u5|x\(15)))) # (!\u5|tix_int\(15) & (!\u5|x\(15) & !\u5|x[14]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(15),
	datab => \u5|x\(15),
	datad => VCC,
	cin => \u5|x[14]~49\,
	combout => \u5|x[15]~50_combout\,
	cout => \u5|x[15]~51\);

-- Location: LCFF_X62_Y41_N11
\u5|x[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[15]~50_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(15));

-- Location: LCCOMB_X62_Y41_N12
\u5|x[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[16]~52_combout\ = (\u5|x\(16) & (!\u5|x[15]~51\)) # (!\u5|x\(16) & ((\u5|x[15]~51\) # (GND)))
-- \u5|x[16]~53\ = CARRY((!\u5|x[15]~51\) # (!\u5|x\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(16),
	datad => VCC,
	cin => \u5|x[15]~51\,
	combout => \u5|x[16]~52_combout\,
	cout => \u5|x[16]~53\);

-- Location: LCCOMB_X62_Y41_N14
\u5|x[17]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[17]~54_combout\ = (\u5|x\(17) & (\u5|x[16]~53\ & VCC)) # (!\u5|x\(17) & (!\u5|x[16]~53\))
-- \u5|x[17]~55\ = CARRY((!\u5|x\(17) & !\u5|x[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|x\(17),
	datad => VCC,
	cin => \u5|x[16]~53\,
	combout => \u5|x[17]~54_combout\,
	cout => \u5|x[17]~55\);

-- Location: LCFF_X62_Y41_N15
\u5|x[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[17]~54_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(17));

-- Location: LCCOMB_X62_Y41_N18
\u5|x[19]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[19]~58_combout\ = \u5|x[18]~57\ $ (!\u5|x\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u5|x\(19),
	cin => \u5|x[18]~57\,
	combout => \u5|x[19]~58_combout\);

-- Location: LCFF_X62_Y41_N19
\u5|x[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[19]~58_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(19));

-- Location: LCFF_X62_Y41_N13
\u5|x[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[16]~52_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(16));

-- Location: LCFF_X62_Y41_N5
\u5|x[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[12]~44_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(12));

-- Location: LCFF_X68_Y42_N27
\u0|tix_mem[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(9),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(9));

-- Location: LCFF_X61_Y42_N19
\u5|tix_int[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|tix_mem\(9),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(9));

-- Location: LCFF_X62_Y42_N25
\u5|x[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[6]~32_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(6));

-- Location: LCFF_X62_Y42_N23
\u5|x[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|x[5]~30_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => \u0|calc~regout\,
	ena => \u5|stop~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|x\(5));

-- Location: LCCOMB_X67_Y42_N26
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

-- Location: LCFF_X67_Y42_N27
\u0|tix_mem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem[1]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(1));

-- Location: LCCOMB_X61_Y42_N2
\u5|tix_int[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|tix_int[1]~feeder_combout\ = \u0|tix_mem\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|tix_mem\(1),
	combout => \u5|tix_int[1]~feeder_combout\);

-- Location: LCFF_X61_Y42_N3
\u5|tix_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|tix_int[1]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(1));

-- Location: LCFF_X67_Y42_N9
\u0|tix_mem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(0),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(0));

-- Location: LCCOMB_X61_Y42_N24
\u5|tix_int[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|tix_int[0]~0_combout\ = !\u0|tix_mem\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|tix_mem\(0),
	combout => \u5|tix_int[0]~0_combout\);

-- Location: LCFF_X61_Y42_N25
\u5|tix_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|tix_int[0]~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(0));

-- Location: LCCOMB_X63_Y42_N0
\u5|LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~1_cout\ = CARRY((\u5|x\(0) & !\u5|tix_int\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(0),
	datab => \u5|tix_int\(0),
	datad => VCC,
	cout => \u5|LessThan2~1_cout\);

-- Location: LCCOMB_X63_Y42_N2
\u5|LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~3_cout\ = CARRY((\u5|x\(1) & (\u5|tix_int\(1) & !\u5|LessThan2~1_cout\)) # (!\u5|x\(1) & ((\u5|tix_int\(1)) # (!\u5|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(1),
	datab => \u5|tix_int\(1),
	datad => VCC,
	cin => \u5|LessThan2~1_cout\,
	cout => \u5|LessThan2~3_cout\);

-- Location: LCCOMB_X63_Y42_N4
\u5|LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~5_cout\ = CARRY((\u5|tix_int\(2) & (\u5|x\(2) & !\u5|LessThan2~3_cout\)) # (!\u5|tix_int\(2) & ((\u5|x\(2)) # (!\u5|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(2),
	datab => \u5|x\(2),
	datad => VCC,
	cin => \u5|LessThan2~3_cout\,
	cout => \u5|LessThan2~5_cout\);

-- Location: LCCOMB_X63_Y42_N6
\u5|LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~7_cout\ = CARRY((\u5|tix_int\(3) & ((!\u5|LessThan2~5_cout\) # (!\u5|x\(3)))) # (!\u5|tix_int\(3) & (!\u5|x\(3) & !\u5|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(3),
	datab => \u5|x\(3),
	datad => VCC,
	cin => \u5|LessThan2~5_cout\,
	cout => \u5|LessThan2~7_cout\);

-- Location: LCCOMB_X63_Y42_N8
\u5|LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~9_cout\ = CARRY((\u5|x\(4) & ((!\u5|LessThan2~7_cout\) # (!\u5|tix_int\(4)))) # (!\u5|x\(4) & (!\u5|tix_int\(4) & !\u5|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(4),
	datab => \u5|tix_int\(4),
	datad => VCC,
	cin => \u5|LessThan2~7_cout\,
	cout => \u5|LessThan2~9_cout\);

-- Location: LCCOMB_X63_Y42_N10
\u5|LessThan2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~11_cout\ = CARRY((\u5|tix_int\(5) & ((!\u5|LessThan2~9_cout\) # (!\u5|x\(5)))) # (!\u5|tix_int\(5) & (!\u5|x\(5) & !\u5|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(5),
	datab => \u5|x\(5),
	datad => VCC,
	cin => \u5|LessThan2~9_cout\,
	cout => \u5|LessThan2~11_cout\);

-- Location: LCCOMB_X63_Y42_N12
\u5|LessThan2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~13_cout\ = CARRY((\u5|tix_int\(6) & (!\u5|x\(6) & !\u5|LessThan2~11_cout\)) # (!\u5|tix_int\(6) & ((!\u5|LessThan2~11_cout\) # (!\u5|x\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(6),
	datab => \u5|x\(6),
	datad => VCC,
	cin => \u5|LessThan2~11_cout\,
	cout => \u5|LessThan2~13_cout\);

-- Location: LCCOMB_X63_Y42_N14
\u5|LessThan2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~15_cout\ = CARRY((\u5|tix_int\(7) & ((\u5|x\(7)) # (!\u5|LessThan2~13_cout\))) # (!\u5|tix_int\(7) & (\u5|x\(7) & !\u5|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(7),
	datab => \u5|x\(7),
	datad => VCC,
	cin => \u5|LessThan2~13_cout\,
	cout => \u5|LessThan2~15_cout\);

-- Location: LCCOMB_X63_Y42_N16
\u5|LessThan2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~17_cout\ = CARRY((\u5|tix_int\(8) & (!\u5|x\(8) & !\u5|LessThan2~15_cout\)) # (!\u5|tix_int\(8) & ((!\u5|LessThan2~15_cout\) # (!\u5|x\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(8),
	datab => \u5|x\(8),
	datad => VCC,
	cin => \u5|LessThan2~15_cout\,
	cout => \u5|LessThan2~17_cout\);

-- Location: LCCOMB_X63_Y42_N18
\u5|LessThan2~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~19_cout\ = CARRY((\u5|x\(9) & ((\u5|tix_int\(9)) # (!\u5|LessThan2~17_cout\))) # (!\u5|x\(9) & (\u5|tix_int\(9) & !\u5|LessThan2~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(9),
	datab => \u5|tix_int\(9),
	datad => VCC,
	cin => \u5|LessThan2~17_cout\,
	cout => \u5|LessThan2~19_cout\);

-- Location: LCCOMB_X63_Y42_N20
\u5|LessThan2~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~21_cout\ = CARRY((\u5|x\(10) & (!\u5|tix_int\(10) & !\u5|LessThan2~19_cout\)) # (!\u5|x\(10) & ((!\u5|LessThan2~19_cout\) # (!\u5|tix_int\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(10),
	datab => \u5|tix_int\(10),
	datad => VCC,
	cin => \u5|LessThan2~19_cout\,
	cout => \u5|LessThan2~21_cout\);

-- Location: LCCOMB_X63_Y42_N22
\u5|LessThan2~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~23_cout\ = CARRY((\u5|tix_int\(11) & ((!\u5|LessThan2~21_cout\) # (!\u5|x\(11)))) # (!\u5|tix_int\(11) & (!\u5|x\(11) & !\u5|LessThan2~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(11),
	datab => \u5|x\(11),
	datad => VCC,
	cin => \u5|LessThan2~21_cout\,
	cout => \u5|LessThan2~23_cout\);

-- Location: LCCOMB_X63_Y42_N24
\u5|LessThan2~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~25_cout\ = CARRY((\u5|tix_int\(12) & (\u5|x\(12) & !\u5|LessThan2~23_cout\)) # (!\u5|tix_int\(12) & ((\u5|x\(12)) # (!\u5|LessThan2~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(12),
	datab => \u5|x\(12),
	datad => VCC,
	cin => \u5|LessThan2~23_cout\,
	cout => \u5|LessThan2~25_cout\);

-- Location: LCCOMB_X63_Y42_N26
\u5|LessThan2~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~27_cout\ = CARRY((\u5|x\(13) & ((\u5|tix_int\(13)) # (!\u5|LessThan2~25_cout\))) # (!\u5|x\(13) & (\u5|tix_int\(13) & !\u5|LessThan2~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(13),
	datab => \u5|tix_int\(13),
	datad => VCC,
	cin => \u5|LessThan2~25_cout\,
	cout => \u5|LessThan2~27_cout\);

-- Location: LCCOMB_X63_Y42_N28
\u5|LessThan2~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~29_cout\ = CARRY((\u5|x\(14) & ((!\u5|LessThan2~27_cout\) # (!\u5|tix_int\(14)))) # (!\u5|x\(14) & (!\u5|tix_int\(14) & !\u5|LessThan2~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(14),
	datab => \u5|tix_int\(14),
	datad => VCC,
	cin => \u5|LessThan2~27_cout\,
	cout => \u5|LessThan2~29_cout\);

-- Location: LCCOMB_X63_Y42_N30
\u5|LessThan2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~30_combout\ = (\u5|tix_int\(15) & (\u5|LessThan2~29_cout\ & \u5|x\(15))) # (!\u5|tix_int\(15) & ((\u5|LessThan2~29_cout\) # (\u5|x\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|tix_int\(15),
	datad => \u5|x\(15),
	cin => \u5|LessThan2~29_cout\,
	combout => \u5|LessThan2~30_combout\);

-- Location: LCCOMB_X62_Y42_N0
\u5|LessThan2~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~33_combout\ = (\u5|LessThan2~32_combout\) # (((\u5|LessThan2~30_combout\) # (!\u5|x\(16))) # (!\u5|x\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|LessThan2~32_combout\,
	datab => \u5|x\(19),
	datac => \u5|x\(16),
	datad => \u5|LessThan2~30_combout\,
	combout => \u5|LessThan2~33_combout\);

-- Location: LCCOMB_X62_Y42_N6
\u5|rpm[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[0]~7_combout\ = (\u0|calc~regout\) # ((\u5|stop~regout\ & ((\u5|LessThan2~33_combout\) # (!\u5|rpm[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|stop~regout\,
	datab => \u5|rpm[0]~6_combout\,
	datac => \u0|calc~regout\,
	datad => \u5|LessThan2~33_combout\,
	combout => \u5|rpm[0]~7_combout\);

-- Location: LCFF_X61_Y42_N21
\u5|rpm[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|Add1~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(0));

-- Location: LCCOMB_X61_Y41_N8
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

-- Location: LCCOMB_X61_Y42_N12
\u5|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~20_combout\ = (!\u5|rpm[0]~5_combout\ & \u5|Add1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|rpm[0]~5_combout\,
	datad => \u5|Add1~3_combout\,
	combout => \u5|Add1~20_combout\);

-- Location: LCFF_X61_Y42_N13
\u5|rpm[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|Add1~20_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(1));

-- Location: LCCOMB_X61_Y41_N10
\u5|Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~5_combout\ = (\u5|rpm\(2) & (\u5|Add1~4\ $ (GND))) # (!\u5|rpm\(2) & (!\u5|Add1~4\ & VCC))
-- \u5|Add1~6\ = CARRY((\u5|rpm\(2) & !\u5|Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm\(2),
	datad => VCC,
	cin => \u5|Add1~4\,
	combout => \u5|Add1~5_combout\,
	cout => \u5|Add1~6\);

-- Location: LCCOMB_X61_Y41_N12
\u5|Add1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~7_combout\ = (\u5|rpm\(3) & (!\u5|Add1~6\)) # (!\u5|rpm\(3) & ((\u5|Add1~6\) # (GND)))
-- \u5|Add1~8\ = CARRY((!\u5|Add1~6\) # (!\u5|rpm\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm\(3),
	datad => VCC,
	cin => \u5|Add1~6\,
	combout => \u5|Add1~7_combout\,
	cout => \u5|Add1~8\);

-- Location: LCCOMB_X61_Y41_N14
\u5|Add1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~9_combout\ = (\u5|rpm\(4) & (\u5|Add1~8\ $ (GND))) # (!\u5|rpm\(4) & (!\u5|Add1~8\ & VCC))
-- \u5|Add1~10\ = CARRY((\u5|rpm\(4) & !\u5|Add1~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm\(4),
	datad => VCC,
	cin => \u5|Add1~8\,
	combout => \u5|Add1~9_combout\,
	cout => \u5|Add1~10\);

-- Location: LCCOMB_X61_Y41_N28
\u5|Add1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~11_combout\ = (!\u5|rpm[0]~5_combout\ & \u5|Add1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm[0]~5_combout\,
	datac => \u5|Add1~9_combout\,
	combout => \u5|Add1~11_combout\);

-- Location: LCFF_X61_Y41_N29
\u5|rpm[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|Add1~11_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(4));

-- Location: LCCOMB_X61_Y41_N16
\u5|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~12_combout\ = (\u5|rpm\(5) & (!\u5|Add1~10\)) # (!\u5|rpm\(5) & ((\u5|Add1~10\) # (GND)))
-- \u5|Add1~13\ = CARRY((!\u5|Add1~10\) # (!\u5|rpm\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm\(5),
	datad => VCC,
	cin => \u5|Add1~10\,
	combout => \u5|Add1~12_combout\,
	cout => \u5|Add1~13\);

-- Location: LCCOMB_X61_Y41_N18
\u5|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~14_combout\ = (\u5|rpm\(6) & (\u5|Add1~13\ $ (GND))) # (!\u5|rpm\(6) & (!\u5|Add1~13\ & VCC))
-- \u5|Add1~15\ = CARRY((\u5|rpm\(6) & !\u5|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm\(6),
	datad => VCC,
	cin => \u5|Add1~13\,
	combout => \u5|Add1~14_combout\,
	cout => \u5|Add1~15\);

-- Location: LCCOMB_X62_Y42_N8
\u5|rpm~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm~8_combout\ = (!\u0|calc~regout\ & ((\u5|tix_int\(15)) # ((!\u5|rpm[0]~0_combout\ & \u5|rpm[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|calc~regout\,
	datab => \u5|rpm[0]~0_combout\,
	datac => \u5|rpm[0]~4_combout\,
	datad => \u5|tix_int\(15),
	combout => \u5|rpm~8_combout\);

-- Location: LCCOMB_X61_Y41_N22
\u5|rpm~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm~10_combout\ = (\u5|rpm~8_combout\) # ((!\u5|rpm[0]~5_combout\ & \u5|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm[0]~5_combout\,
	datac => \u5|Add1~14_combout\,
	datad => \u5|rpm~8_combout\,
	combout => \u5|rpm~10_combout\);

-- Location: LCFF_X61_Y41_N23
\u5|rpm[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|rpm~10_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(6));

-- Location: LCCOMB_X61_Y41_N20
\u5|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~16_combout\ = \u5|Add1~15\ $ (\u5|rpm\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u5|rpm\(7),
	cin => \u5|Add1~15\,
	combout => \u5|Add1~16_combout\);

-- Location: LCCOMB_X61_Y41_N2
\u5|rpm~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm~9_combout\ = (\u5|rpm~8_combout\) # ((!\u5|rpm[0]~5_combout\ & \u5|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm[0]~5_combout\,
	datac => \u5|Add1~16_combout\,
	datad => \u5|rpm~8_combout\,
	combout => \u5|rpm~9_combout\);

-- Location: LCFF_X61_Y41_N3
\u5|rpm[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|rpm~9_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(7));

-- Location: LCCOMB_X67_Y42_N16
\u5|rpm_mem[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm_mem[3]~0_combout\ = (\BUTTON~combout\(3) & (!\u0|calc~regout\ & !\u5|stop~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u0|calc~regout\,
	datad => \u5|stop~regout\,
	combout => \u5|rpm_mem[3]~0_combout\);

-- Location: LCFF_X65_Y24_N13
\u5|rpm_mem[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~regout\,
	sdata => \u5|rpm\(7),
	sload => VCC,
	ena => \u5|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(7));

-- Location: LCFF_X65_Y24_N11
\u5|rpm_mem[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~regout\,
	sdata => \u5|rpm\(6),
	sload => VCC,
	ena => \u5|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(6));

-- Location: LCCOMB_X61_Y41_N4
\u5|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~18_combout\ = (!\u5|rpm[0]~5_combout\ & \u5|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm[0]~5_combout\,
	datac => \u5|Add1~12_combout\,
	combout => \u5|Add1~18_combout\);

-- Location: LCFF_X61_Y41_N5
\u5|rpm[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|Add1~18_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(5));

-- Location: LCFF_X65_Y24_N7
\u5|rpm_mem[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~regout\,
	sdata => \u5|rpm\(5),
	sload => VCC,
	ena => \u5|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(5));

-- Location: LCFF_X65_Y24_N3
\u5|rpm_mem[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~regout\,
	sdata => \u5|rpm\(4),
	sload => VCC,
	ena => \u5|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(4));

-- Location: LCCOMB_X65_Y24_N22
\u6|rpm_max_int[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_max_int\(4) = (\BUTTON~combout\(3) & ((GLOBAL(\u6|LessThan0~14clkctrl_outclk\) & (\u5|rpm_mem\(4))) # (!GLOBAL(\u6|LessThan0~14clkctrl_outclk\) & ((\u6|rpm_max_int\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u5|rpm_mem\(4),
	datac => \u6|rpm_max_int\(4),
	datad => \u6|LessThan0~14clkctrl_outclk\,
	combout => \u6|rpm_max_int\(4));

-- Location: LCCOMB_X66_Y24_N22
\u6|rpm_max_int[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_max_int\(3) = (\BUTTON~combout\(3) & ((GLOBAL(\u6|LessThan0~14clkctrl_outclk\) & (\u5|rpm_mem\(3))) # (!GLOBAL(\u6|LessThan0~14clkctrl_outclk\) & ((\u6|rpm_max_int\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(3),
	datab => \u6|rpm_max_int\(3),
	datac => \BUTTON~combout\(3),
	datad => \u6|LessThan0~14clkctrl_outclk\,
	combout => \u6|rpm_max_int\(3));

-- Location: LCCOMB_X61_Y41_N24
\u5|Add1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~19_combout\ = (!\u5|rpm[0]~5_combout\ & \u5|Add1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm[0]~5_combout\,
	datac => \u5|Add1~5_combout\,
	combout => \u5|Add1~19_combout\);

-- Location: LCFF_X61_Y41_N25
\u5|rpm[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|Add1~19_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(2));

-- Location: LCFF_X62_Y24_N27
\u5|rpm_mem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~regout\,
	sdata => \u5|rpm\(2),
	sload => VCC,
	ena => \u5|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(2));

-- Location: LCFF_X62_Y24_N25
\u5|rpm_mem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~regout\,
	sdata => \u5|rpm\(1),
	sload => VCC,
	ena => \u5|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(1));

-- Location: LCCOMB_X62_Y24_N24
\u6|rpm_max_int[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_max_int\(1) = (\BUTTON~combout\(3) & ((GLOBAL(\u6|LessThan0~14clkctrl_outclk\) & ((\u5|rpm_mem\(1)))) # (!GLOBAL(\u6|LessThan0~14clkctrl_outclk\) & (\u6|rpm_max_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(1),
	datab => \BUTTON~combout\(3),
	datac => \u5|rpm_mem\(1),
	datad => \u6|LessThan0~14clkctrl_outclk\,
	combout => \u6|rpm_max_int\(1));

-- Location: LCFF_X62_Y24_N1
\u5|rpm_mem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u5|rpm\(0),
	sload => VCC,
	ena => \u5|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(0));

-- Location: LCCOMB_X62_Y24_N4
\u6|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~1_cout\ = CARRY((!\u6|rpm_max_int\(0) & \u5|rpm_mem\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(0),
	datab => \u5|rpm_mem\(0),
	datad => VCC,
	cout => \u6|LessThan0~1_cout\);

-- Location: LCCOMB_X62_Y24_N6
\u6|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~3_cout\ = CARRY((\u5|rpm_mem\(1) & (\u6|rpm_max_int\(1) & !\u6|LessThan0~1_cout\)) # (!\u5|rpm_mem\(1) & ((\u6|rpm_max_int\(1)) # (!\u6|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(1),
	datab => \u6|rpm_max_int\(1),
	datad => VCC,
	cin => \u6|LessThan0~1_cout\,
	cout => \u6|LessThan0~3_cout\);

-- Location: LCCOMB_X62_Y24_N8
\u6|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~5_cout\ = CARRY((\u6|rpm_max_int\(2) & (\u5|rpm_mem\(2) & !\u6|LessThan0~3_cout\)) # (!\u6|rpm_max_int\(2) & ((\u5|rpm_mem\(2)) # (!\u6|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(2),
	datab => \u5|rpm_mem\(2),
	datad => VCC,
	cin => \u6|LessThan0~3_cout\,
	cout => \u6|LessThan0~5_cout\);

-- Location: LCCOMB_X62_Y24_N10
\u6|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~7_cout\ = CARRY((\u5|rpm_mem\(3) & (\u6|rpm_max_int\(3) & !\u6|LessThan0~5_cout\)) # (!\u5|rpm_mem\(3) & ((\u6|rpm_max_int\(3)) # (!\u6|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(3),
	datab => \u6|rpm_max_int\(3),
	datad => VCC,
	cin => \u6|LessThan0~5_cout\,
	cout => \u6|LessThan0~7_cout\);

-- Location: LCCOMB_X62_Y24_N12
\u6|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~9_cout\ = CARRY((\u5|rpm_mem\(4) & ((!\u6|LessThan0~7_cout\) # (!\u6|rpm_max_int\(4)))) # (!\u5|rpm_mem\(4) & (!\u6|rpm_max_int\(4) & !\u6|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(4),
	datab => \u6|rpm_max_int\(4),
	datad => VCC,
	cin => \u6|LessThan0~7_cout\,
	cout => \u6|LessThan0~9_cout\);

-- Location: LCCOMB_X62_Y24_N14
\u6|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~11_cout\ = CARRY((\u6|rpm_max_int\(5) & ((!\u6|LessThan0~9_cout\) # (!\u5|rpm_mem\(5)))) # (!\u6|rpm_max_int\(5) & (!\u5|rpm_mem\(5) & !\u6|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(5),
	datab => \u5|rpm_mem\(5),
	datad => VCC,
	cin => \u6|LessThan0~9_cout\,
	cout => \u6|LessThan0~11_cout\);

-- Location: LCCOMB_X62_Y24_N16
\u6|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~13_cout\ = CARRY((\u6|rpm_max_int\(6) & (\u5|rpm_mem\(6) & !\u6|LessThan0~11_cout\)) # (!\u6|rpm_max_int\(6) & ((\u5|rpm_mem\(6)) # (!\u6|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(6),
	datab => \u5|rpm_mem\(6),
	datad => VCC,
	cin => \u6|LessThan0~11_cout\,
	cout => \u6|LessThan0~13_cout\);

-- Location: LCCOMB_X62_Y24_N18
\u6|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|LessThan0~14_combout\ = (\u6|rpm_max_int\(7) & (\u6|LessThan0~13_cout\ & \u5|rpm_mem\(7))) # (!\u6|rpm_max_int\(7) & ((\u6|LessThan0~13_cout\) # (\u5|rpm_mem\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(7),
	datad => \u5|rpm_mem\(7),
	cin => \u6|LessThan0~13_cout\,
	combout => \u6|LessThan0~14_combout\);

-- Location: CLKCTRL_G7
\u6|LessThan0~14clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u6|LessThan0~14clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u6|LessThan0~14clkctrl_outclk\);

-- Location: LCCOMB_X62_Y24_N28
\u6|rpm_max_int[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_max_int\(2) = (\BUTTON~combout\(3) & ((GLOBAL(\u6|LessThan0~14clkctrl_outclk\) & (\u5|rpm_mem\(2))) # (!GLOBAL(\u6|LessThan0~14clkctrl_outclk\) & ((\u6|rpm_max_int\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(2),
	datab => \u6|rpm_max_int\(2),
	datac => \BUTTON~combout\(3),
	datad => \u6|LessThan0~14clkctrl_outclk\,
	combout => \u6|rpm_max_int\(2));

-- Location: LCCOMB_X65_Y24_N20
\u6|rpm_max_int[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_max_int\(5) = (\BUTTON~combout\(3) & ((GLOBAL(\u6|LessThan0~14clkctrl_outclk\) & (\u5|rpm_mem\(5))) # (!GLOBAL(\u6|LessThan0~14clkctrl_outclk\) & ((\u6|rpm_max_int\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u5|rpm_mem\(5),
	datac => \u6|rpm_max_int\(5),
	datad => \u6|LessThan0~14clkctrl_outclk\,
	combout => \u6|rpm_max_int\(5));

-- Location: LCCOMB_X65_Y24_N10
\u6|rpm_max_int[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_max_int\(6) = (\BUTTON~combout\(3) & ((GLOBAL(\u6|LessThan0~14clkctrl_outclk\) & ((\u5|rpm_mem\(6)))) # (!GLOBAL(\u6|LessThan0~14clkctrl_outclk\) & (\u6|rpm_max_int\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(6),
	datab => \BUTTON~combout\(3),
	datac => \u5|rpm_mem\(6),
	datad => \u6|LessThan0~14clkctrl_outclk\,
	combout => \u6|rpm_max_int\(6));

-- Location: LCCOMB_X65_Y24_N16
\u4|maximale2bcd|U1bcd[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|U1bcd[1]~0_combout\ = (\u6|rpm_max_int\(7) & (!\u6|rpm_max_int\(5) & ((\u6|rpm_max_int\(6)) # (!\u6|rpm_max_int\(4))))) # (!\u6|rpm_max_int\(7) & (\u6|rpm_max_int\(5) & ((\u6|rpm_max_int\(4)) # (!\u6|rpm_max_int\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(7),
	datab => \u6|rpm_max_int\(4),
	datac => \u6|rpm_max_int\(5),
	datad => \u6|rpm_max_int\(6),
	combout => \u4|maximale2bcd|U1bcd[1]~0_combout\);

-- Location: LCCOMB_X65_Y24_N30
\u4|maximale2bcd|U1bcd[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|U1bcd[0]~2_combout\ = (\u6|rpm_max_int\(4) & (\u6|rpm_max_int\(6) $ (((\u6|rpm_max_int\(5)) # (!\u6|rpm_max_int\(7)))))) # (!\u6|rpm_max_int\(4) & ((\u6|rpm_max_int\(7) & (!\u6|rpm_max_int\(5) & !\u6|rpm_max_int\(6))) # 
-- (!\u6|rpm_max_int\(7) & (\u6|rpm_max_int\(5) & \u6|rpm_max_int\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(7),
	datab => \u6|rpm_max_int\(4),
	datac => \u6|rpm_max_int\(5),
	datad => \u6|rpm_max_int\(6),
	combout => \u4|maximale2bcd|U1bcd[0]~2_combout\);

-- Location: LCCOMB_X65_Y24_N14
\u4|maximale2bcd|U1bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|U1bcd[2]~1_combout\ = (\u6|rpm_max_int\(4) & (\u6|rpm_max_int\(7) & (!\u6|rpm_max_int\(5) & !\u6|rpm_max_int\(6)))) # (!\u6|rpm_max_int\(4) & (\u6|rpm_max_int\(6) & (\u6|rpm_max_int\(7) $ (!\u6|rpm_max_int\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(7),
	datab => \u6|rpm_max_int\(4),
	datac => \u6|rpm_max_int\(5),
	datad => \u6|rpm_max_int\(6),
	combout => \u4|maximale2bcd|U1bcd[2]~1_combout\);

-- Location: LCCOMB_X66_Y24_N6
\u4|maximale2bcd|U2bcd[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|U2bcd[1]~0_combout\ = (\u6|rpm_max_int\(3) & (((\u4|maximale2bcd|U1bcd[0]~2_combout\)))) # (!\u6|rpm_max_int\(3) & ((\u4|maximale2bcd|U1bcd[0]~2_combout\ & (!\u4|maximale2bcd|U1bcd[1]~0_combout\ & !\u4|maximale2bcd|U1bcd[2]~1_combout\)) # 
-- (!\u4|maximale2bcd|U1bcd[0]~2_combout\ & ((\u4|maximale2bcd|U1bcd[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(3),
	datab => \u4|maximale2bcd|U1bcd[1]~0_combout\,
	datac => \u4|maximale2bcd|U1bcd[0]~2_combout\,
	datad => \u4|maximale2bcd|U1bcd[2]~1_combout\,
	combout => \u4|maximale2bcd|U2bcd[1]~0_combout\);

-- Location: LCCOMB_X66_Y24_N24
\u4|maximale2bcd|U2bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|U2bcd[2]~1_combout\ = (\u4|maximale2bcd|U1bcd[1]~0_combout\ & (!\u6|rpm_max_int\(3) & (!\u4|maximale2bcd|U1bcd[0]~2_combout\))) # (!\u4|maximale2bcd|U1bcd[1]~0_combout\ & (\u4|maximale2bcd|U1bcd[2]~1_combout\ & ((\u6|rpm_max_int\(3)) # 
-- (\u4|maximale2bcd|U1bcd[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(3),
	datab => \u4|maximale2bcd|U1bcd[1]~0_combout\,
	datac => \u4|maximale2bcd|U1bcd[0]~2_combout\,
	datad => \u4|maximale2bcd|U1bcd[2]~1_combout\,
	combout => \u4|maximale2bcd|U2bcd[2]~1_combout\);

-- Location: LCCOMB_X67_Y24_N30
\u4|maximale2bcd|U3bcd[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|U3bcd[1]~0_combout\ = (\u4|maximale2bcd|U2bcd[0]~2_combout\ & ((\u6|rpm_max_int\(2)) # ((!\u4|maximale2bcd|U2bcd[1]~0_combout\ & !\u4|maximale2bcd|U2bcd[2]~1_combout\)))) # (!\u4|maximale2bcd|U2bcd[0]~2_combout\ & (!\u6|rpm_max_int\(2) & 
-- ((\u4|maximale2bcd|U2bcd[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|maximale2bcd|U2bcd[0]~2_combout\,
	datab => \u6|rpm_max_int\(2),
	datac => \u4|maximale2bcd|U2bcd[1]~0_combout\,
	datad => \u4|maximale2bcd|U2bcd[2]~1_combout\,
	combout => \u4|maximale2bcd|U3bcd[1]~0_combout\);

-- Location: LCCOMB_X66_Y24_N14
\u4|maximale2bcd|U2bcd[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|U2bcd[0]~2_combout\ = (\u6|rpm_max_int\(3) & (!\u4|maximale2bcd|U1bcd[1]~0_combout\ & ((!\u4|maximale2bcd|U1bcd[2]~1_combout\)))) # (!\u6|rpm_max_int\(3) & ((\u4|maximale2bcd|U1bcd[2]~1_combout\) # ((\u4|maximale2bcd|U1bcd[1]~0_combout\ & 
-- \u4|maximale2bcd|U1bcd[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(3),
	datab => \u4|maximale2bcd|U1bcd[1]~0_combout\,
	datac => \u4|maximale2bcd|U1bcd[0]~2_combout\,
	datad => \u4|maximale2bcd|U1bcd[2]~1_combout\,
	combout => \u4|maximale2bcd|U2bcd[0]~2_combout\);

-- Location: LCCOMB_X66_Y24_N4
\u4|maximale2bcd|U3bcd[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|U3bcd[0]~2_combout\ = (\u6|rpm_max_int\(2) & (((!\u4|maximale2bcd|U2bcd[2]~1_combout\ & !\u4|maximale2bcd|U2bcd[1]~0_combout\)))) # (!\u6|rpm_max_int\(2) & ((\u4|maximale2bcd|U2bcd[2]~1_combout\) # ((\u4|maximale2bcd|U2bcd[0]~2_combout\ & 
-- \u4|maximale2bcd|U2bcd[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(2),
	datab => \u4|maximale2bcd|U2bcd[0]~2_combout\,
	datac => \u4|maximale2bcd|U2bcd[2]~1_combout\,
	datad => \u4|maximale2bcd|U2bcd[1]~0_combout\,
	combout => \u4|maximale2bcd|U3bcd[0]~2_combout\);

-- Location: LCCOMB_X66_Y24_N10
\u4|maximale2bcd|U3bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|U3bcd[2]~1_combout\ = (\u4|maximale2bcd|U2bcd[1]~0_combout\ & (!\u6|rpm_max_int\(2) & (!\u4|maximale2bcd|U2bcd[0]~2_combout\))) # (!\u4|maximale2bcd|U2bcd[1]~0_combout\ & (\u4|maximale2bcd|U2bcd[2]~1_combout\ & ((\u6|rpm_max_int\(2)) # 
-- (\u4|maximale2bcd|U2bcd[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(2),
	datab => \u4|maximale2bcd|U2bcd[0]~2_combout\,
	datac => \u4|maximale2bcd|U2bcd[2]~1_combout\,
	datad => \u4|maximale2bcd|U2bcd[1]~0_combout\,
	combout => \u4|maximale2bcd|U3bcd[2]~1_combout\);

-- Location: LCCOMB_X67_Y24_N16
\u4|maximale2bcd|bcd_out[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|bcd_out[4]~11_combout\ = \u4|maximale2bcd|U3bcd[2]~1_combout\ $ (((\u4|maximale2bcd|U3bcd[1]~0_combout\ & ((\u6|rpm_max_int\(1)) # (\u4|maximale2bcd|U3bcd[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(1),
	datab => \u4|maximale2bcd|U3bcd[1]~0_combout\,
	datac => \u4|maximale2bcd|U3bcd[0]~2_combout\,
	datad => \u4|maximale2bcd|U3bcd[2]~1_combout\,
	combout => \u4|maximale2bcd|bcd_out[4]~11_combout\);

-- Location: LCFF_X67_Y24_N17
\u4|maximale_line[11][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|maximale2bcd|bcd_out[4]~11_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|maximale_line[11][0]~regout\);

-- Location: LCCOMB_X68_Y23_N2
\u4|aline~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~8_combout\ = (!\KNOP~combout\(1) & (\u4|line_counter\(1) $ (!\u4|line_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \u4|line_counter\(1),
	datac => \u4|line_counter\(0),
	combout => \u4|aline~8_combout\);

-- Location: LCCOMB_X68_Y23_N24
\u4|Mux263~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~34_combout\ = (\u4|aline~8_combout\ & ((\u4|line_counter\(1) & ((\u4|maximale_line[11][0]~regout\))) # (!\u4|line_counter\(1) & (\u4|totale_omw_line[11][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_line[11][0]~regout\,
	datab => \u4|line_counter\(1),
	datac => \u4|maximale_line[11][0]~regout\,
	datad => \u4|aline~8_combout\,
	combout => \u4|Mux263~34_combout\);

-- Location: LCCOMB_X69_Y23_N0
\u4|Mux263~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~36_combout\ = (!\SW~combout\(0) & ((\u4|Mux263~34_combout\) # ((\u4|Mux263~35_combout\ & \u4|tijd_line[11][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~35_combout\,
	datab => \SW~combout\(0),
	datac => \u4|tijd_line[11][0]~regout\,
	datad => \u4|Mux263~34_combout\,
	combout => \u4|Mux263~36_combout\);

-- Location: LCCOMB_X69_Y24_N0
\u4|Mux263~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~37_combout\ = (!\u4|character_counter\(2) & ((\u4|Mux263~36_combout\) # ((\SW~combout\(0) & \u4|Mux58~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|character_counter\(2),
	datac => \u4|Mux58~0_combout\,
	datad => \u4|Mux263~36_combout\,
	combout => \u4|Mux263~37_combout\);

-- Location: LCCOMB_X66_Y21_N6
\u4|Mux263~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~25_combout\ = (!\KNOP~combout\(1) & (!\u4|line_counter\(0) & (\u4|character_counter\(2) & !\u4|line_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \u4|line_counter\(0),
	datac => \u4|character_counter\(2),
	datad => \u4|line_counter\(1),
	combout => \u4|Mux263~25_combout\);

-- Location: LCCOMB_X68_Y24_N14
\u4|Mux263~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~26_combout\ = (\u4|totale_omw_line[13][0]~regout\ & (!\SW~combout\(0) & \u4|Mux263~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_line[13][0]~regout\,
	datab => \SW~combout\(0),
	datad => \u4|Mux263~25_combout\,
	combout => \u4|Mux263~26_combout\);

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

-- Location: LCCOMB_X69_Y24_N10
\u6|rpm_max_int[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_max_int\(0) = (\BUTTON~combout\(3) & ((GLOBAL(\u6|LessThan0~14clkctrl_outclk\) & ((\u5|rpm_mem\(0)))) # (!GLOBAL(\u6|LessThan0~14clkctrl_outclk\) & (\u6|rpm_max_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(0),
	datab => \u5|rpm_mem\(0),
	datac => \BUTTON~combout\(3),
	datad => \u6|LessThan0~14clkctrl_outclk\,
	combout => \u6|rpm_max_int\(0));

-- Location: LCCOMB_X69_Y24_N30
\u4|maximale_line[12][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale_line[12][0]~feeder_combout\ = \u6|rpm_max_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u6|rpm_max_int\(0),
	combout => \u4|maximale_line[12][0]~feeder_combout\);

-- Location: LCFF_X69_Y24_N31
\u4|maximale_line[12][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|maximale_line[12][0]~feeder_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|maximale_line[12][0]~regout\);

-- Location: LCCOMB_X68_Y24_N2
\u4|Mux263~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~29_combout\ = (\u4|line_counter\(0) & (((\u4|maximale_line[12][0]~regout\ & \u4|line_counter\(1))))) # (!\u4|line_counter\(0) & ((\u4|RPM_line[1][6]~regout\) # ((!\u4|line_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|RPM_line[1][6]~regout\,
	datab => \u4|maximale_line[12][0]~regout\,
	datac => \u4|line_counter\(0),
	datad => \u4|line_counter\(1),
	combout => \u4|Mux263~29_combout\);

-- Location: LCCOMB_X68_Y24_N24
\u4|Mux263~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~30_combout\ = (\u4|character_counter\(2) & (\u4|Mux263~29_combout\ & ((\u4|totale_omw_line[12][0]~regout\) # (\u4|line_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_line[12][0]~regout\,
	datab => \u4|line_counter\(1),
	datac => \u4|character_counter\(2),
	datad => \u4|Mux263~29_combout\,
	combout => \u4|Mux263~30_combout\);

-- Location: LCCOMB_X68_Y21_N8
\u7|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add0~0_combout\ = \u7|minutes_int\(0) $ (VCC)
-- \u7|Add0~1\ = CARRY(\u7|minutes_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7|minutes_int\(0),
	datad => VCC,
	combout => \u7|Add0~0_combout\,
	cout => \u7|Add0~1\);

-- Location: LCCOMB_X70_Y22_N18
\u7|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add1~2_combout\ = (\u7|seconds_int\(1) & (!\u7|Add1~1\)) # (!\u7|seconds_int\(1) & ((\u7|Add1~1\) # (GND)))
-- \u7|Add1~3\ = CARRY((!\u7|Add1~1\) # (!\u7|seconds_int\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|seconds_int\(1),
	datad => VCC,
	cin => \u7|Add1~1\,
	combout => \u7|Add1~2_combout\,
	cout => \u7|Add1~3\);

-- Location: LCFF_X70_Y22_N19
\u7|seconds_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add1~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|seconds_int\(1));

-- Location: LCCOMB_X70_Y22_N20
\u7|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add1~4_combout\ = (\u7|seconds_int\(2) & (\u7|Add1~3\ $ (GND))) # (!\u7|seconds_int\(2) & (!\u7|Add1~3\ & VCC))
-- \u7|Add1~5\ = CARRY((\u7|seconds_int\(2) & !\u7|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|seconds_int\(2),
	datad => VCC,
	cin => \u7|Add1~3\,
	combout => \u7|Add1~4_combout\,
	cout => \u7|Add1~5\);

-- Location: LCCOMB_X70_Y22_N22
\u7|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add1~6_combout\ = (\u7|seconds_int\(3) & (!\u7|Add1~5\)) # (!\u7|seconds_int\(3) & ((\u7|Add1~5\) # (GND)))
-- \u7|Add1~7\ = CARRY((!\u7|Add1~5\) # (!\u7|seconds_int\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|seconds_int\(3),
	datad => VCC,
	cin => \u7|Add1~5\,
	combout => \u7|Add1~6_combout\,
	cout => \u7|Add1~7\);

-- Location: LCCOMB_X70_Y22_N24
\u7|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add1~8_combout\ = (\u7|seconds_int\(4) & (\u7|Add1~7\ $ (GND))) # (!\u7|seconds_int\(4) & (!\u7|Add1~7\ & VCC))
-- \u7|Add1~9\ = CARRY((\u7|seconds_int\(4) & !\u7|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|seconds_int\(4),
	datad => VCC,
	cin => \u7|Add1~7\,
	combout => \u7|Add1~8_combout\,
	cout => \u7|Add1~9\);

-- Location: LCCOMB_X70_Y22_N26
\u7|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add1~10_combout\ = \u7|seconds_int\(5) $ (\u7|Add1~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|seconds_int\(5),
	cin => \u7|Add1~9\,
	combout => \u7|Add1~10_combout\);

-- Location: LCCOMB_X69_Y22_N4
\u7|seconds_int~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|seconds_int~2_combout\ = (\u7|Add1~10_combout\ & (((!\u7|seconds_int\(1)) # (!\u7|Equal1~0_combout\)) # (!\u7|seconds_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|seconds_int\(0),
	datab => \u7|Equal1~0_combout\,
	datac => \u7|Add1~10_combout\,
	datad => \u7|seconds_int\(1),
	combout => \u7|seconds_int~2_combout\);

-- Location: LCFF_X69_Y22_N5
\u7|seconds_int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|seconds_int~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|seconds_int\(5));

-- Location: LCCOMB_X69_Y22_N0
\u7|seconds_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|seconds_int~0_combout\ = (\u7|Add1~4_combout\ & (((!\u7|Equal1~0_combout\) # (!\u7|seconds_int\(1))) # (!\u7|seconds_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|seconds_int\(0),
	datab => \u7|seconds_int\(1),
	datac => \u7|Equal1~0_combout\,
	datad => \u7|Add1~4_combout\,
	combout => \u7|seconds_int~0_combout\);

-- Location: LCFF_X69_Y22_N1
\u7|seconds_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|seconds_int~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|seconds_int\(2));

-- Location: LCCOMB_X69_Y22_N14
\u7|seconds_int~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|seconds_int~1_combout\ = (\u7|Add1~8_combout\ & (((!\u7|Equal1~0_combout\) # (!\u7|seconds_int\(1))) # (!\u7|seconds_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|seconds_int\(0),
	datab => \u7|seconds_int\(1),
	datac => \u7|Equal1~0_combout\,
	datad => \u7|Add1~8_combout\,
	combout => \u7|seconds_int~1_combout\);

-- Location: LCFF_X69_Y22_N15
\u7|seconds_int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|seconds_int~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|seconds_int\(4));

-- Location: LCCOMB_X69_Y22_N26
\u7|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Equal1~0_combout\ = (\u7|seconds_int\(3) & (\u7|seconds_int\(5) & (!\u7|seconds_int\(2) & \u7|seconds_int\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|seconds_int\(3),
	datab => \u7|seconds_int\(5),
	datac => \u7|seconds_int\(2),
	datad => \u7|seconds_int\(4),
	combout => \u7|Equal1~0_combout\);

-- Location: LCCOMB_X69_Y21_N30
\u7|minutes_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|minutes_int[1]~0_combout\ = (\u7|seconds_int\(0) & (\u7|seconds_int\(1) & (\u7|Equal1~0_combout\ & \u7|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|seconds_int\(0),
	datab => \u7|seconds_int\(1),
	datac => \u7|Equal1~0_combout\,
	datad => \u7|Equal0~10_combout\,
	combout => \u7|minutes_int[1]~0_combout\);

-- Location: LCFF_X68_Y21_N9
\u7|minutes_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|Add0~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u7|minutes_int[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|minutes_int\(0));

-- Location: LCFF_X69_Y24_N21
\u4|tijd_line[8][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u7|minutes_int\(0),
	sload => VCC,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|tijd_line[8][0]~regout\);

-- Location: LCCOMB_X69_Y24_N12
\u4|Mux263~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~27_combout\ = (\KNOP~combout\(1) & (!\u4|character_counter\(2) & (\u4|line_counter\(1) $ (!\u4|line_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \u4|line_counter\(1),
	datac => \u4|line_counter\(0),
	datad => \u4|character_counter\(2),
	combout => \u4|Mux263~27_combout\);

-- Location: LCCOMB_X69_Y24_N20
\u4|Mux263~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~28_combout\ = (\u4|Mux263~27_combout\ & ((\u4|line_counter\(1) & (\u4|RPM_line[8][0]~regout\)) # (!\u4|line_counter\(1) & ((\u4|tijd_line[8][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|RPM_line[8][0]~regout\,
	datab => \u4|line_counter\(1),
	datac => \u4|tijd_line[8][0]~regout\,
	datad => \u4|Mux263~27_combout\,
	combout => \u4|Mux263~28_combout\);

-- Location: LCCOMB_X68_Y24_N30
\u4|Mux263~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~31_combout\ = (\u4|Mux263~28_combout\) # ((!\KNOP~combout\(1) & ((\u4|drive~2_combout\) # (\u4|Mux263~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|drive~2_combout\,
	datab => \KNOP~combout\(1),
	datac => \u4|Mux263~30_combout\,
	datad => \u4|Mux263~28_combout\,
	combout => \u4|Mux263~31_combout\);

-- Location: LCCOMB_X68_Y24_N12
\u4|Mux263~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~32_combout\ = (\SW~combout\(0) & (\u4|Mux58~0_combout\ & (!\u4|character_counter\(2)))) # (!\SW~combout\(0) & (((\u4|Mux263~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|Mux58~0_combout\,
	datac => \u4|character_counter\(2),
	datad => \u4|Mux263~31_combout\,
	combout => \u4|Mux263~32_combout\);

-- Location: LCCOMB_X68_Y24_N18
\u4|Mux263~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~33_combout\ = (\u4|character_counter\(0) & (!\u4|character_counter\(1) & ((\u4|Mux263~32_combout\)))) # (!\u4|character_counter\(0) & ((\u4|character_counter\(1)) # ((\u4|Mux263~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|character_counter\(1),
	datac => \u4|Mux263~26_combout\,
	datad => \u4|Mux263~32_combout\,
	combout => \u4|Mux263~33_combout\);

-- Location: LCCOMB_X68_Y24_N4
\u4|Mux263~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~38_combout\ = (\u4|character_counter\(1) & ((\u4|Mux263~33_combout\ & ((\u4|Mux263~37_combout\))) # (!\u4|Mux263~33_combout\ & (\u4|Mux263~24_combout\)))) # (!\u4|character_counter\(1) & (((\u4|Mux263~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~24_combout\,
	datab => \u4|character_counter\(1),
	datac => \u4|Mux263~37_combout\,
	datad => \u4|Mux263~33_combout\,
	combout => \u4|Mux263~38_combout\);

-- Location: LCCOMB_X69_Y24_N14
\u4|Mux263~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~45_combout\ = (\SW~combout\(0)) # ((\u4|line_counter\(1)) # ((!\u4|character_counter\(2)) # (!\u4|line_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|line_counter\(1),
	datac => \u4|line_counter\(0),
	datad => \u4|character_counter\(2),
	combout => \u4|Mux263~45_combout\);

-- Location: LCCOMB_X68_Y24_N16
\u4|RPM_line[1][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|RPM_line[1][6]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u4|RPM_line[1][6]~feeder_combout\);

-- Location: LCFF_X68_Y24_N17
\u4|RPM_line[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|RPM_line[1][6]~feeder_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[1][6]~regout\);

-- Location: LCCOMB_X68_Y24_N0
\u4|Mux263~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~43_combout\ = (\u4|RPM_line[1][6]~regout\ & (((!\u4|line_counter\(1)) # (!\KNOP~combout\(1))))) # (!\u4|RPM_line[1][6]~regout\ & (\u4|line_counter\(0) & ((!\u4|line_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \KNOP~combout\(1),
	datac => \u4|RPM_line[1][6]~regout\,
	datad => \u4|line_counter\(1),
	combout => \u4|Mux263~43_combout\);

-- Location: LCCOMB_X65_Y24_N18
\u2|U1bcd[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U1bcd[0]~0_combout\ = (\u5|rpm_mem\(4) & (\u5|rpm_mem\(6) $ (((\u5|rpm_mem\(5)) # (!\u5|rpm_mem\(7)))))) # (!\u5|rpm_mem\(4) & ((\u5|rpm_mem\(5) & (!\u5|rpm_mem\(7) & \u5|rpm_mem\(6))) # (!\u5|rpm_mem\(5) & (\u5|rpm_mem\(7) & !\u5|rpm_mem\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(5),
	datab => \u5|rpm_mem\(7),
	datac => \u5|rpm_mem\(4),
	datad => \u5|rpm_mem\(6),
	combout => \u2|U1bcd[0]~0_combout\);

-- Location: LCCOMB_X65_Y24_N6
\u2|U1bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U1bcd[2]~1_combout\ = (\u5|rpm_mem\(4) & (\u5|rpm_mem\(7) & (!\u5|rpm_mem\(5) & !\u5|rpm_mem\(6)))) # (!\u5|rpm_mem\(4) & (\u5|rpm_mem\(6) & (\u5|rpm_mem\(7) $ (!\u5|rpm_mem\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(7),
	datab => \u5|rpm_mem\(4),
	datac => \u5|rpm_mem\(5),
	datad => \u5|rpm_mem\(6),
	combout => \u2|U1bcd[2]~1_combout\);

-- Location: LCCOMB_X61_Y42_N22
\u5|rpm~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm~11_combout\ = (\u5|rpm~8_combout\) # ((!\u5|rpm[0]~5_combout\ & \u5|Add1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm[0]~5_combout\,
	datac => \u5|Add1~7_combout\,
	datad => \u5|rpm~8_combout\,
	combout => \u5|rpm~11_combout\);

-- Location: LCFF_X61_Y42_N23
\u5|rpm[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|rpm~11_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(3));

-- Location: LCFF_X62_Y24_N23
\u5|rpm_mem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~regout\,
	sdata => \u5|rpm\(3),
	sload => VCC,
	ena => \u5|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(3));

-- Location: LCCOMB_X65_Y24_N8
\u2|U2bcd[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U2bcd[3]~3_combout\ = \u2|U1bcd[2]~1_combout\ $ ((((!\u2|U1bcd[0]~0_combout\ & !\u5|rpm_mem\(3))) # (!\u2|U1bcd[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U1bcd[1]~2_combout\,
	datab => \u2|U1bcd[0]~0_combout\,
	datac => \u2|U1bcd[2]~1_combout\,
	datad => \u5|rpm_mem\(3),
	combout => \u2|U2bcd[3]~3_combout\);

-- Location: LCCOMB_X63_Y24_N28
\u2|U5bcd[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U5bcd[2]~0_combout\ = (\u2|U2bcd[3]~3_combout\ & (\u5|rpm_mem\(7) & ((\u5|rpm_mem\(5)) # (\u5|rpm_mem\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(5),
	datab => \u5|rpm_mem\(6),
	datac => \u2|U2bcd[3]~3_combout\,
	datad => \u5|rpm_mem\(7),
	combout => \u2|U5bcd[2]~0_combout\);

-- Location: LCCOMB_X62_Y24_N0
\u2|U0bcd[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U0bcd[2]~0_combout\ = (\u5|rpm_mem\(6)) # (\u5|rpm_mem\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm_mem\(6),
	datad => \u5|rpm_mem\(5),
	combout => \u2|U0bcd[2]~0_combout\);

-- Location: LCCOMB_X63_Y24_N2
\u2|is_gt_4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~0_combout\ = (\u5|rpm_mem\(7) & \u5|rpm_mem\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm_mem\(7),
	datad => \u5|rpm_mem\(6),
	combout => \u2|is_gt_4~0_combout\);

-- Location: LCCOMB_X63_Y24_N8
\u2|is_gt_4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~1_combout\ = (\u2|is_gt_4~0_combout\ & ((\u5|rpm_mem\(5)) # ((\u5|rpm_mem\(3)) # (\u5|rpm_mem\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(5),
	datab => \u5|rpm_mem\(3),
	datac => \u5|rpm_mem\(4),
	datad => \u2|is_gt_4~0_combout\,
	combout => \u2|is_gt_4~1_combout\);

-- Location: LCCOMB_X65_Y24_N4
\u2|U1bcd[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U1bcd[1]~2_combout\ = (\u5|rpm_mem\(5) & (!\u5|rpm_mem\(7) & ((\u5|rpm_mem\(4)) # (!\u5|rpm_mem\(6))))) # (!\u5|rpm_mem\(5) & (\u5|rpm_mem\(7) & ((\u5|rpm_mem\(6)) # (!\u5|rpm_mem\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(5),
	datab => \u5|rpm_mem\(4),
	datac => \u5|rpm_mem\(7),
	datad => \u5|rpm_mem\(6),
	combout => \u2|U1bcd[1]~2_combout\);

-- Location: LCCOMB_X62_Y24_N22
\u2|is_gt_4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~2_combout\ = (\u2|U1bcd[2]~1_combout\) # ((\u2|U1bcd[1]~2_combout\ & ((\u2|U1bcd[0]~0_combout\) # (\u5|rpm_mem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U1bcd[0]~0_combout\,
	datab => \u2|U1bcd[1]~2_combout\,
	datac => \u5|rpm_mem\(3),
	datad => \u2|U1bcd[2]~1_combout\,
	combout => \u2|is_gt_4~2_combout\);

-- Location: LCCOMB_X62_Y24_N2
\u2|is_gt_4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~3_combout\ = (\u5|rpm_mem\(3) & (\u2|U1bcd[0]~0_combout\ & ((\u5|rpm_mem\(2)) # (!\u2|is_gt_4~2_combout\)))) # (!\u5|rpm_mem\(3) & ((\u2|U1bcd[0]~0_combout\ & (\u5|rpm_mem\(2) & !\u2|is_gt_4~2_combout\)) # (!\u2|U1bcd[0]~0_combout\ & 
-- ((\u2|is_gt_4~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(2),
	datab => \u5|rpm_mem\(3),
	datac => \u2|U1bcd[0]~0_combout\,
	datad => \u2|is_gt_4~2_combout\,
	combout => \u2|is_gt_4~3_combout\);

-- Location: LCCOMB_X63_Y24_N30
\u2|is_gt_4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~4_combout\ = (\u2|U2bcd[2]~1_combout\ & ((\u2|is_gt_4~1_combout\ $ (!\u2|U2bcd[3]~3_combout\)) # (!\u2|is_gt_4~3_combout\))) # (!\u2|U2bcd[2]~1_combout\ & ((\u2|is_gt_4~3_combout\) # (\u2|is_gt_4~1_combout\ $ (!\u2|U2bcd[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U2bcd[2]~1_combout\,
	datab => \u2|is_gt_4~1_combout\,
	datac => \u2|U2bcd[3]~3_combout\,
	datad => \u2|is_gt_4~3_combout\,
	combout => \u2|is_gt_4~4_combout\);

-- Location: LCCOMB_X63_Y24_N0
\u2|U6bcd[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[3]~6_combout\ = (\u2|U6bcd[2]~0_combout\ & (((\u2|U5bcd[2]~0_combout\ & \u2|U0bcd[2]~0_combout\)) # (!\u2|is_gt_4~4_combout\))) # (!\u2|U6bcd[2]~0_combout\ & (!\u2|U5bcd[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[2]~0_combout\,
	datab => \u2|U5bcd[2]~0_combout\,
	datac => \u2|U0bcd[2]~0_combout\,
	datad => \u2|is_gt_4~4_combout\,
	combout => \u2|U6bcd[3]~6_combout\);

-- Location: LCCOMB_X63_Y24_N26
\u4|RPM_line[6][0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|RPM_line[6][0]~0_combout\ = !\u2|U6bcd[3]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u2|U6bcd[3]~6_combout\,
	combout => \u4|RPM_line[6][0]~0_combout\);

-- Location: LCFF_X63_Y24_N27
\u4|RPM_line[6][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|RPM_line[6][0]~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[6][0]~regout\);

-- Location: LCCOMB_X68_Y24_N26
\u4|aline~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~11_combout\ = (\u4|line_counter\(0) & ((\KNOP~combout\(1) & ((\u4|RPM_line[6][0]~regout\))) # (!\KNOP~combout\(1) & (\u4|RPM_line[1][6]~regout\)))) # (!\u4|line_counter\(0) & (((\u4|RPM_line[1][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \KNOP~combout\(1),
	datac => \u4|RPM_line[1][6]~regout\,
	datad => \u4|RPM_line[6][0]~regout\,
	combout => \u4|aline~11_combout\);

-- Location: LCCOMB_X67_Y23_N30
\u4|goto20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|goto20~0_combout\ = (!\u4|line_counter\(2) & \u4|line_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|line_counter\(2),
	datad => \u4|line_counter\(0),
	combout => \u4|goto20~0_combout\);

-- Location: LCCOMB_X68_Y24_N10
\u4|Mux263~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~42_combout\ = (\u4|Mux263~41_combout\ & ((\u4|aline~11_combout\) # ((\SW~combout\(0) & \u4|goto20~0_combout\)))) # (!\u4|Mux263~41_combout\ & (((\SW~combout\(0) & \u4|goto20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~41_combout\,
	datab => \u4|aline~11_combout\,
	datac => \SW~combout\(0),
	datad => \u4|goto20~0_combout\,
	combout => \u4|Mux263~42_combout\);

-- Location: LCCOMB_X68_Y24_N6
\u4|Mux263~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~44_combout\ = (\u4|character_counter\(2) & (((\u4|Mux263~42_combout\)))) # (!\u4|character_counter\(2) & (\u4|Mux263~43_combout\ & (!\SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|Mux263~43_combout\,
	datac => \SW~combout\(0),
	datad => \u4|Mux263~42_combout\,
	combout => \u4|Mux263~44_combout\);

-- Location: LCCOMB_X68_Y24_N28
\u4|Mux263~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~46_combout\ = (\u4|character_counter\(0) & ((\u4|character_counter\(1) & ((\u4|Mux263~44_combout\))) # (!\u4|character_counter\(1) & (!\u4|Mux263~45_combout\)))) # (!\u4|character_counter\(0) & (\u4|character_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|character_counter\(1),
	datac => \u4|Mux263~45_combout\,
	datad => \u4|Mux263~44_combout\,
	combout => \u4|Mux263~46_combout\);

-- Location: LCCOMB_X68_Y23_N28
\u4|aline~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~10_combout\ = (!\u4|line_counter\(0) & (\u4|RPM_line[1][6]~regout\ & ((\u4|line_counter\(1)) # (!\KNOP~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|line_counter\(1),
	datac => \KNOP~combout\(1),
	datad => \u4|RPM_line[1][6]~regout\,
	combout => \u4|aline~10_combout\);

-- Location: LCCOMB_X69_Y24_N24
\u4|Mux263~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~145_combout\ = (\SW~combout\(0) & (\u4|line_counter\(1))) # (!\SW~combout\(0) & ((\u4|aline~10_combout\) # ((!\u4|line_counter\(1) & \u4|line_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|line_counter\(1),
	datac => \u4|line_counter\(0),
	datad => \u4|aline~10_combout\,
	combout => \u4|Mux263~145_combout\);

-- Location: LCCOMB_X69_Y24_N2
\u4|Mux263~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~39_combout\ = (\u4|line_counter\(1) & (\u4|RPM_line[1][6]~regout\ & ((!\u4|line_counter\(0)) # (!\KNOP~combout\(1))))) # (!\u4|line_counter\(1) & (((\u4|line_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \u4|RPM_line[1][6]~regout\,
	datac => \u4|line_counter\(0),
	datad => \u4|line_counter\(1),
	combout => \u4|Mux263~39_combout\);

-- Location: LCCOMB_X69_Y24_N8
\u4|Mux263~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~40_combout\ = (\u4|character_counter\(2) & (((\u4|Mux263~145_combout\)))) # (!\u4|character_counter\(2) & (!\SW~combout\(0) & ((\u4|Mux263~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|character_counter\(2),
	datac => \u4|Mux263~145_combout\,
	datad => \u4|Mux263~39_combout\,
	combout => \u4|Mux263~40_combout\);

-- Location: LCCOMB_X70_Y23_N30
\u4|Mux263~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~48_combout\ = (!\SW~combout\(0) & \u4|RPM_line[1][6]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datad => \u4|RPM_line[1][6]~regout\,
	combout => \u4|Mux263~48_combout\);

-- Location: LCCOMB_X69_Y23_N14
\u4|Mux263~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~47_combout\ = (\u4|line_counter\(0) & (\u4|line_counter\(1) & (\KNOP~combout\(1) $ (\u4|character_counter\(2))))) # (!\u4|line_counter\(0) & ((\u4|character_counter\(2) & ((!\KNOP~combout\(1)))) # (!\u4|character_counter\(2) & 
-- (\u4|line_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \KNOP~combout\(1),
	datac => \u4|line_counter\(0),
	datad => \u4|character_counter\(2),
	combout => \u4|Mux263~47_combout\);

-- Location: LCCOMB_X68_Y21_N12
\u7|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add0~4_combout\ = (\u7|minutes_int\(2) & (\u7|Add0~3\ $ (GND))) # (!\u7|minutes_int\(2) & (!\u7|Add0~3\ & VCC))
-- \u7|Add0~5\ = CARRY((\u7|minutes_int\(2) & !\u7|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|minutes_int\(2),
	datad => VCC,
	cin => \u7|Add0~3\,
	combout => \u7|Add0~4_combout\,
	cout => \u7|Add0~5\);

-- Location: LCCOMB_X69_Y21_N20
\u7|minutes_int~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|minutes_int~1_combout\ = (\u7|Add0~4_combout\ & (((!\u7|Equal2~0_combout\) # (!\u7|minutes_int\(0))) # (!\u7|minutes_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|minutes_int\(1),
	datab => \u7|minutes_int\(0),
	datac => \u7|Equal2~0_combout\,
	datad => \u7|Add0~4_combout\,
	combout => \u7|minutes_int~1_combout\);

-- Location: LCFF_X69_Y21_N21
\u7|minutes_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|minutes_int~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u7|minutes_int[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|minutes_int\(2));

-- Location: LCCOMB_X68_Y21_N14
\u7|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add0~6_combout\ = (\u7|minutes_int\(3) & (!\u7|Add0~5\)) # (!\u7|minutes_int\(3) & ((\u7|Add0~5\) # (GND)))
-- \u7|Add0~7\ = CARRY((!\u7|Add0~5\) # (!\u7|minutes_int\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u7|minutes_int\(3),
	datad => VCC,
	cin => \u7|Add0~5\,
	combout => \u7|Add0~6_combout\,
	cout => \u7|Add0~7\);

-- Location: LCCOMB_X69_Y21_N26
\u7|minutes_int~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|minutes_int~4_combout\ = (\u7|Add0~6_combout\ & (((!\u7|Equal2~0_combout\) # (!\u7|minutes_int\(0))) # (!\u7|minutes_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|minutes_int\(1),
	datab => \u7|minutes_int\(0),
	datac => \u7|Equal2~0_combout\,
	datad => \u7|Add0~6_combout\,
	combout => \u7|minutes_int~4_combout\);

-- Location: LCFF_X69_Y21_N27
\u7|minutes_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|minutes_int~4_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u7|minutes_int[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|minutes_int\(3));

-- Location: LCCOMB_X69_Y21_N4
\u7|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Equal2~0_combout\ = (\u7|minutes_int\(4) & (\u7|minutes_int\(3) & (\u7|minutes_int\(5) & !\u7|minutes_int\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|minutes_int\(4),
	datab => \u7|minutes_int\(3),
	datac => \u7|minutes_int\(5),
	datad => \u7|minutes_int\(2),
	combout => \u7|Equal2~0_combout\);

-- Location: LCCOMB_X68_Y21_N16
\u7|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add0~8_combout\ = (\u7|minutes_int\(4) & (\u7|Add0~7\ $ (GND))) # (!\u7|minutes_int\(4) & (!\u7|Add0~7\ & VCC))
-- \u7|Add0~9\ = CARRY((\u7|minutes_int\(4) & !\u7|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u7|minutes_int\(4),
	datad => VCC,
	cin => \u7|Add0~7\,
	combout => \u7|Add0~8_combout\,
	cout => \u7|Add0~9\);

-- Location: LCCOMB_X69_Y21_N14
\u7|minutes_int~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|minutes_int~2_combout\ = (\u7|Add0~8_combout\ & (((!\u7|Equal2~0_combout\) # (!\u7|minutes_int\(0))) # (!\u7|minutes_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|minutes_int\(1),
	datab => \u7|minutes_int\(0),
	datac => \u7|Equal2~0_combout\,
	datad => \u7|Add0~8_combout\,
	combout => \u7|minutes_int~2_combout\);

-- Location: LCFF_X69_Y21_N15
\u7|minutes_int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|minutes_int~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u7|minutes_int[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|minutes_int\(4));

-- Location: LCCOMB_X68_Y21_N18
\u7|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|Add0~10_combout\ = \u7|Add0~9\ $ (\u7|minutes_int\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u7|minutes_int\(5),
	cin => \u7|Add0~9\,
	combout => \u7|Add0~10_combout\);

-- Location: LCCOMB_X69_Y21_N28
\u7|minutes_int~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|minutes_int~3_combout\ = (\u7|Add0~10_combout\ & (((!\u7|Equal2~0_combout\) # (!\u7|minutes_int\(0))) # (!\u7|minutes_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|minutes_int\(1),
	datab => \u7|minutes_int\(0),
	datac => \u7|Equal2~0_combout\,
	datad => \u7|Add0~10_combout\,
	combout => \u7|minutes_int~3_combout\);

-- Location: LCFF_X69_Y21_N29
\u7|minutes_int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|minutes_int~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u7|minutes_int[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|minutes_int\(5));

-- Location: LCCOMB_X69_Y21_N8
\u4|tijd_minbcd|U3bcd[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|tijd_minbcd|U3bcd[0]~2_combout\ = (\u7|minutes_int\(2) & (\u7|minutes_int\(4) $ (((\u7|minutes_int\(3)) # (!\u7|minutes_int\(5)))))) # (!\u7|minutes_int\(2) & ((\u7|minutes_int\(5) & (!\u7|minutes_int\(4) & !\u7|minutes_int\(3))) # 
-- (!\u7|minutes_int\(5) & (\u7|minutes_int\(4) & \u7|minutes_int\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|minutes_int\(2),
	datab => \u7|minutes_int\(5),
	datac => \u7|minutes_int\(4),
	datad => \u7|minutes_int\(3),
	combout => \u4|tijd_minbcd|U3bcd[0]~2_combout\);

-- Location: LCCOMB_X69_Y21_N16
\u4|tijd_minbcd|U3bcd[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|tijd_minbcd|U3bcd[1]~0_combout\ = (\u7|minutes_int\(5) & (!\u7|minutes_int\(3) & ((\u7|minutes_int\(4)) # (!\u7|minutes_int\(2))))) # (!\u7|minutes_int\(5) & (\u7|minutes_int\(3) & ((\u7|minutes_int\(2)) # (!\u7|minutes_int\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|minutes_int\(2),
	datab => \u7|minutes_int\(5),
	datac => \u7|minutes_int\(4),
	datad => \u7|minutes_int\(3),
	combout => \u4|tijd_minbcd|U3bcd[1]~0_combout\);

-- Location: LCCOMB_X69_Y21_N22
\u4|tijd_minbcd|U3bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|tijd_minbcd|U3bcd[2]~1_combout\ = (\u7|minutes_int\(2) & (\u7|minutes_int\(5) & (!\u7|minutes_int\(4) & !\u7|minutes_int\(3)))) # (!\u7|minutes_int\(2) & (\u7|minutes_int\(4) & (\u7|minutes_int\(5) $ (!\u7|minutes_int\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|minutes_int\(2),
	datab => \u7|minutes_int\(5),
	datac => \u7|minutes_int\(4),
	datad => \u7|minutes_int\(3),
	combout => \u4|tijd_minbcd|U3bcd[2]~1_combout\);

-- Location: LCCOMB_X69_Y21_N24
\u4|tijd_minbcd|bcd_out[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|tijd_minbcd|bcd_out[4]~0_combout\ = \u4|tijd_minbcd|U3bcd[2]~1_combout\ $ (((\u4|tijd_minbcd|U3bcd[1]~0_combout\ & ((\u7|minutes_int\(1)) # (\u4|tijd_minbcd|U3bcd[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|minutes_int\(1),
	datab => \u4|tijd_minbcd|U3bcd[0]~2_combout\,
	datac => \u4|tijd_minbcd|U3bcd[1]~0_combout\,
	datad => \u4|tijd_minbcd|U3bcd[2]~1_combout\,
	combout => \u4|tijd_minbcd|bcd_out[4]~0_combout\);

-- Location: LCFF_X69_Y21_N25
\u4|tijd_line[7][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|tijd_minbcd|bcd_out[4]~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|tijd_line[7][0]~regout\);

-- Location: LCCOMB_X65_Y21_N22
\u2|U2bcd[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U2bcd[1]~2_combout\ = (\u2|U1bcd[0]~0_combout\ & ((\u5|rpm_mem\(3)) # ((!\u2|U1bcd[2]~1_combout\ & !\u2|U1bcd[1]~2_combout\)))) # (!\u2|U1bcd[0]~0_combout\ & (\u2|U1bcd[2]~1_combout\ & ((!\u5|rpm_mem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U1bcd[0]~0_combout\,
	datab => \u2|U1bcd[2]~1_combout\,
	datac => \u2|U1bcd[1]~2_combout\,
	datad => \u5|rpm_mem\(3),
	combout => \u2|U2bcd[1]~2_combout\);

-- Location: LCCOMB_X65_Y21_N4
\u2|U2bcd[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U2bcd[0]~0_combout\ = (\u2|U1bcd[2]~1_combout\ & (((!\u5|rpm_mem\(3))))) # (!\u2|U1bcd[2]~1_combout\ & ((\u2|U1bcd[1]~2_combout\ & (\u2|U1bcd[0]~0_combout\ & !\u5|rpm_mem\(3))) # (!\u2|U1bcd[1]~2_combout\ & ((\u5|rpm_mem\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U1bcd[0]~0_combout\,
	datab => \u2|U1bcd[2]~1_combout\,
	datac => \u2|U1bcd[1]~2_combout\,
	datad => \u5|rpm_mem\(3),
	combout => \u2|U2bcd[0]~0_combout\);

-- Location: LCCOMB_X65_Y24_N26
\u2|U2bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U2bcd[2]~1_combout\ = (\u2|U1bcd[1]~2_combout\ & (!\u2|U1bcd[0]~0_combout\ & ((!\u5|rpm_mem\(3))))) # (!\u2|U1bcd[1]~2_combout\ & (\u2|U1bcd[2]~1_combout\ & ((\u2|U1bcd[0]~0_combout\) # (\u5|rpm_mem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U1bcd[1]~2_combout\,
	datab => \u2|U1bcd[0]~0_combout\,
	datac => \u2|U1bcd[2]~1_combout\,
	datad => \u5|rpm_mem\(3),
	combout => \u2|U2bcd[2]~1_combout\);

-- Location: LCCOMB_X65_Y21_N8
\u2|U3bcd[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U3bcd[0]~0_combout\ = (\u5|rpm_mem\(2) & (!\u2|U2bcd[1]~2_combout\ & ((!\u2|U2bcd[2]~1_combout\)))) # (!\u5|rpm_mem\(2) & ((\u2|U2bcd[2]~1_combout\) # ((\u2|U2bcd[1]~2_combout\ & \u2|U2bcd[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(2),
	datab => \u2|U2bcd[1]~2_combout\,
	datac => \u2|U2bcd[0]~0_combout\,
	datad => \u2|U2bcd[2]~1_combout\,
	combout => \u2|U3bcd[0]~0_combout\);

-- Location: LCCOMB_X65_Y21_N24
\u2|U3bcd[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U3bcd[1]~2_combout\ = (\u5|rpm_mem\(2) & (((\u2|U2bcd[0]~0_combout\)))) # (!\u5|rpm_mem\(2) & ((\u2|U2bcd[0]~0_combout\ & (!\u2|U2bcd[1]~2_combout\ & !\u2|U2bcd[2]~1_combout\)) # (!\u2|U2bcd[0]~0_combout\ & ((\u2|U2bcd[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(2),
	datab => \u2|U2bcd[1]~2_combout\,
	datac => \u2|U2bcd[0]~0_combout\,
	datad => \u2|U2bcd[2]~1_combout\,
	combout => \u2|U3bcd[1]~2_combout\);

-- Location: LCCOMB_X65_Y21_N30
\u2|U3bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U3bcd[2]~1_combout\ = (\u2|U2bcd[1]~2_combout\ & (!\u5|rpm_mem\(2) & (!\u2|U2bcd[0]~0_combout\))) # (!\u2|U2bcd[1]~2_combout\ & (\u2|U2bcd[2]~1_combout\ & ((\u5|rpm_mem\(2)) # (\u2|U2bcd[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(2),
	datab => \u2|U2bcd[1]~2_combout\,
	datac => \u2|U2bcd[0]~0_combout\,
	datad => \u2|U2bcd[2]~1_combout\,
	combout => \u2|U3bcd[2]~1_combout\);

-- Location: LCCOMB_X65_Y21_N16
\u2|U4bcd[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U4bcd[3]~3_combout\ = \u2|U3bcd[2]~1_combout\ $ (((\u2|U3bcd[1]~2_combout\ & ((\u5|rpm_mem\(1)) # (\u2|U3bcd[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(1),
	datab => \u2|U3bcd[0]~0_combout\,
	datac => \u2|U3bcd[1]~2_combout\,
	datad => \u2|U3bcd[2]~1_combout\,
	combout => \u2|U4bcd[3]~3_combout\);

-- Location: LCFF_X65_Y21_N29
\u4|RPM_line[7][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u2|U4bcd[3]~3_combout\,
	sload => VCC,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[7][0]~regout\);

-- Location: LCCOMB_X68_Y23_N14
\u4|Mux263~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~49_combout\ = (\u4|line_counter\(1) & ((\u4|line_counter\(0) & ((\u4|RPM_line[7][0]~regout\))) # (!\u4|line_counter\(0) & (\u4|RPM_line[1][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|line_counter\(1),
	datac => \u4|RPM_line[1][6]~regout\,
	datad => \u4|RPM_line[7][0]~regout\,
	combout => \u4|Mux263~49_combout\);

-- Location: LCCOMB_X69_Y23_N6
\u4|Mux263~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~141_combout\ = (\u4|Mux263~49_combout\) # ((!\u4|line_counter\(1) & (!\u4|line_counter\(0) & \u4|tijd_line[7][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \u4|line_counter\(0),
	datac => \u4|tijd_line[7][0]~regout\,
	datad => \u4|Mux263~49_combout\,
	combout => \u4|Mux263~141_combout\);

-- Location: LCCOMB_X69_Y23_N28
\u4|Mux263~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~50_combout\ = (\SW~combout\(0) & (\u4|Mux58~0_combout\)) # (!\SW~combout\(0) & (((\KNOP~combout\(1) & \u4|Mux263~141_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux58~0_combout\,
	datab => \SW~combout\(0),
	datac => \KNOP~combout\(1),
	datad => \u4|Mux263~141_combout\,
	combout => \u4|Mux263~50_combout\);

-- Location: LCCOMB_X69_Y23_N22
\u4|Mux263~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~51_combout\ = (\u4|character_counter\(2) & ((\u4|Mux263~50_combout\) # ((\u4|Mux263~48_combout\ & \u4|Mux263~47_combout\)))) # (!\u4|character_counter\(2) & (\u4|Mux263~48_combout\ & (\u4|Mux263~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|Mux263~48_combout\,
	datac => \u4|Mux263~47_combout\,
	datad => \u4|Mux263~50_combout\,
	combout => \u4|Mux263~51_combout\);

-- Location: LCCOMB_X68_Y24_N22
\u4|Mux263~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~52_combout\ = (\u4|character_counter\(0) & (\u4|Mux263~46_combout\)) # (!\u4|character_counter\(0) & ((\u4|Mux263~46_combout\ & ((\u4|Mux263~51_combout\))) # (!\u4|Mux263~46_combout\ & (\u4|Mux263~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|Mux263~46_combout\,
	datac => \u4|Mux263~40_combout\,
	datad => \u4|Mux263~51_combout\,
	combout => \u4|Mux263~52_combout\);

-- Location: LCCOMB_X68_Y24_N8
\u4|Mux263~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~53_combout\ = (\u4|character_counter\(3) & (\u4|Mux263~38_combout\)) # (!\u4|character_counter\(3) & ((\u4|Mux263~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(3),
	datac => \u4|Mux263~38_combout\,
	datad => \u4|Mux263~52_combout\,
	combout => \u4|Mux263~53_combout\);

-- Location: LCFF_X68_Y24_N9
\u4|data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Mux263~53_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.write_char~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|data\(0));

-- Location: LCCOMB_X77_Y26_N6
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

-- Location: LCCOMB_X76_Y26_N20
\u4|lcdm|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr3~0_combout\ = (!\u4|lcdm|current_state.pulse_busy_flag_5~regout\ & (!\u4|lcdm|current_state.pulse_e_4~regout\ & (!\u4|lcdm|current_state.pulse_e~regout\ & !\u4|lcdm|current_state.pulse_busy_flag_4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag_5~regout\,
	datab => \u4|lcdm|current_state.pulse_e_4~regout\,
	datac => \u4|lcdm|current_state.pulse_e~regout\,
	datad => \u4|lcdm|current_state.pulse_busy_flag_4~regout\,
	combout => \u4|lcdm|WideOr3~0_combout\);

-- Location: LCCOMB_X76_Y26_N8
\u4|lcdm|WideOr3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr3~1_combout\ = (!\u4|lcdm|current_state.pulse_e_3~regout\ & (\u4|lcdm|WideOr33~0_combout\ & (\u4|lcdm|WideOr3~0_combout\ & !\u4|lcdm|current_state.pulse_busy_flag_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_e_3~regout\,
	datab => \u4|lcdm|WideOr33~0_combout\,
	datac => \u4|lcdm|WideOr3~0_combout\,
	datad => \u4|lcdm|current_state.pulse_busy_flag_3~regout\,
	combout => \u4|lcdm|WideOr3~1_combout\);

-- Location: LCCOMB_X77_Y26_N24
\u4|lcdm|WideOr3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr3~combout\ = (!\u4|lcdm|current_state.command_wr~regout\ & \u4|lcdm|WideOr3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_wr~regout\,
	datad => \u4|lcdm|WideOr3~1_combout\,
	combout => \u4|lcdm|WideOr3~combout\);

-- Location: LCFF_X77_Y26_N7
\u4|lcdm|LCD_DB[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector87~0_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[0]~reg0_regout\);

-- Location: LCCOMB_X77_Y26_N14
\u4|lcdm|Selector88~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector88~0_combout\ = (\u4|lcdm|current_state.command_init_5~regout\ & (\u4|lcdm|Equal0~0_combout\ & ((\u4|lcdm|Equal0~5_combout\)))) # (!\u4|lcdm|current_state.command_init_5~regout\ & (((\u4|lcdm|Equal0~0_combout\ & 
-- \u4|lcdm|Equal0~5_combout\)) # (!\u4|lcdm|current_state.command_init_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_5~regout\,
	datab => \u4|lcdm|Equal0~0_combout\,
	datac => \u4|lcdm|current_state.command_init_3~regout\,
	datad => \u4|lcdm|Equal0~5_combout\,
	combout => \u4|lcdm|Selector88~0_combout\);

-- Location: LCCOMB_X77_Y25_N20
\u4|lcdm|WideOr17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr17~0_combout\ = (!\u4|lcdm|current_state.command_init_4~regout\ & (!\u4|lcdm|current_state.command_init_2~regout\ & (\u4|lcdm|current_state.reset~regout\ & !\u4|lcdm|current_state.pulse_busy_flag~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_4~regout\,
	datab => \u4|lcdm|current_state.command_init_2~regout\,
	datac => \u4|lcdm|current_state.reset~regout\,
	datad => \u4|lcdm|current_state.pulse_busy_flag~regout\,
	combout => \u4|lcdm|WideOr17~0_combout\);

-- Location: LCCOMB_X76_Y26_N14
\u4|lcdm|Selector88~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector88~1_combout\ = (\u4|lcdm|WideOr17~0_combout\ & (((\u4|wr~regout\ & \u4|lcdm|LCD_DB[0]~8_combout\)) # (!\u4|lcdm|current_state.wait_for_command~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|lcdm|WideOr17~0_combout\,
	datac => \u4|wr~regout\,
	datad => \u4|lcdm|LCD_DB[0]~8_combout\,
	combout => \u4|lcdm|Selector88~1_combout\);

-- Location: LCCOMB_X77_Y26_N8
\u4|lcdm|Selector88~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector88~2_combout\ = (\u4|lcdm|Selector88~0_combout\ & (\u4|lcdm|Selector88~1_combout\ & ((\u4|lcdm|Equal0~6_combout\) # (!\u4|lcdm|current_state.command_init_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|current_state.command_init_1~regout\,
	datac => \u4|lcdm|Selector88~0_combout\,
	datad => \u4|lcdm|Selector88~1_combout\,
	combout => \u4|lcdm|Selector88~2_combout\);

-- Location: LCFF_X77_Y26_N25
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

-- Location: LCCOMB_X65_Y23_N0
\u4|Mux263~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~72_combout\ = (!\SW~combout\(0) & (\u4|RPM_line[1][6]~regout\ & (\KNOP~combout\(1) $ (!\u4|line_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \KNOP~combout\(1),
	datac => \u4|line_counter\(0),
	datad => \u4|RPM_line[1][6]~regout\,
	combout => \u4|Mux263~72_combout\);

-- Location: LCCOMB_X65_Y23_N26
\u4|Mux263~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~73_combout\ = (\u4|line_counter\(1) & ((\u4|character_counter\(2) & (\SW~combout\(0))) # (!\u4|character_counter\(2) & ((\u4|Mux263~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|line_counter\(1),
	datac => \SW~combout\(0),
	datad => \u4|Mux263~72_combout\,
	combout => \u4|Mux263~73_combout\);

-- Location: LCCOMB_X69_Y23_N16
\u4|Mux263~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~74_combout\ = (\u4|Mux263~73_combout\) # ((\u4|character_counter\(2) & (!\SW~combout\(0) & \u4|Mux263~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \SW~combout\(0),
	datac => \u4|Mux263~43_combout\,
	datad => \u4|Mux263~73_combout\,
	combout => \u4|Mux263~74_combout\);

-- Location: LCCOMB_X69_Y25_N8
\u4|Mux263~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~80_combout\ = (\SW~combout\(0)) # ((\KNOP~combout\(1) & !\u4|character_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datac => \SW~combout\(0),
	datad => \u4|character_counter\(2),
	combout => \u4|Mux263~80_combout\);

-- Location: LCCOMB_X69_Y25_N18
\u4|Mux263~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~81_combout\ = (\u4|line_counter\(1) & (\u4|RPM_line[1][6]~regout\ & ((\KNOP~combout\(1)) # (!\u4|line_counter\(0))))) # (!\u4|line_counter\(1) & (((\u4|line_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \u4|line_counter\(0),
	datac => \u4|line_counter\(1),
	datad => \u4|RPM_line[1][6]~regout\,
	combout => \u4|Mux263~81_combout\);

-- Location: LCCOMB_X69_Y25_N0
\u4|Mux263~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~82_combout\ = (!\u4|Mux263~80_combout\ & (\u4|Mux263~81_combout\ & (\u4|line_counter\(1) $ (!\u4|character_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \u4|character_counter\(2),
	datac => \u4|Mux263~80_combout\,
	datad => \u4|Mux263~81_combout\,
	combout => \u4|Mux263~82_combout\);

-- Location: LCCOMB_X65_Y23_N8
\u4|Mux263~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~75_combout\ = (\u4|line_counter\(1) & (\u4|character_counter\(2) & (!\u4|line_counter\(0) & \SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \u4|character_counter\(2),
	datac => \u4|line_counter\(0),
	datad => \SW~combout\(0),
	combout => \u4|Mux263~75_combout\);

-- Location: LCCOMB_X65_Y23_N14
\u4|Mux263~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~76_combout\ = (\u4|line_counter\(1) & (\u4|character_counter\(2) & (\u4|line_counter\(0) & \KNOP~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \u4|character_counter\(2),
	datac => \u4|line_counter\(0),
	datad => \KNOP~combout\(1),
	combout => \u4|Mux263~76_combout\);

-- Location: LCCOMB_X66_Y23_N22
\u4|Mux263~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~77_combout\ = (\u4|line_counter\(0)) # ((\KNOP~combout\(1) & (!\u4|line_counter\(1))) # (!\KNOP~combout\(1) & ((\u4|line_counter\(1)) # (\u4|character_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \u4|line_counter\(0),
	datac => \u4|line_counter\(1),
	datad => \u4|character_counter\(2),
	combout => \u4|Mux263~77_combout\);

-- Location: LCCOMB_X65_Y23_N12
\u4|Mux263~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~78_combout\ = (\u4|RPM_line[6][1]~regout\ & ((\u4|Mux263~76_combout\) # ((\u4|RPM_line[1][6]~regout\ & !\u4|Mux263~77_combout\)))) # (!\u4|RPM_line[6][1]~regout\ & (\u4|RPM_line[1][6]~regout\ & ((!\u4|Mux263~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|RPM_line[6][1]~regout\,
	datab => \u4|RPM_line[1][6]~regout\,
	datac => \u4|Mux263~76_combout\,
	datad => \u4|Mux263~77_combout\,
	combout => \u4|Mux263~78_combout\);

-- Location: LCCOMB_X65_Y23_N2
\u4|Mux263~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~79_combout\ = (\u4|Mux263~75_combout\) # ((!\SW~combout\(0) & ((\u4|drive~2_combout\) # (\u4|Mux263~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|drive~2_combout\,
	datab => \SW~combout\(0),
	datac => \u4|Mux263~75_combout\,
	datad => \u4|Mux263~78_combout\,
	combout => \u4|Mux263~79_combout\);

-- Location: LCCOMB_X68_Y21_N28
\u4|Mux262~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux262~2_combout\ = (\u4|character_counter\(1) & (((\u4|Mux263~79_combout\)) # (!\u4|character_counter\(0)))) # (!\u4|character_counter\(1) & (\u4|character_counter\(0) & (\u4|Mux263~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|character_counter\(0),
	datac => \u4|Mux263~82_combout\,
	datad => \u4|Mux263~79_combout\,
	combout => \u4|Mux262~2_combout\);

-- Location: LCCOMB_X68_Y21_N22
\u4|Mux262~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux262~3_combout\ = (\u4|character_counter\(0) & (((\u4|Mux262~2_combout\)))) # (!\u4|character_counter\(0) & ((\u4|Mux262~2_combout\ & (\u4|Mux263~86_combout\)) # (!\u4|Mux262~2_combout\ & ((\u4|Mux263~74_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~86_combout\,
	datab => \u4|character_counter\(0),
	datac => \u4|Mux263~74_combout\,
	datad => \u4|Mux262~2_combout\,
	combout => \u4|Mux262~3_combout\);

-- Location: LCCOMB_X68_Y21_N0
\u4|Mux262~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux262~4_combout\ = (\u4|character_counter\(3) & (\u4|Mux262~1_combout\)) # (!\u4|character_counter\(3) & ((\u4|Mux262~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux262~1_combout\,
	datab => \u4|character_counter\(3),
	datad => \u4|Mux262~3_combout\,
	combout => \u4|Mux262~4_combout\);

-- Location: LCFF_X68_Y21_N1
\u4|data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Mux262~4_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.write_char~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|data\(1));

-- Location: LCCOMB_X77_Y26_N10
\u4|lcdm|Selector90~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector90~0_combout\ = (\u4|lcdm|current_state.command_init_11~regout\) # ((\u4|lcdm|current_state.command_home~regout\) # ((\u4|lcdm|current_state.wait_for_command~regout\ & \u4|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|lcdm|current_state.command_init_11~regout\,
	datac => \u4|data\(1),
	datad => \u4|lcdm|current_state.command_home~regout\,
	combout => \u4|lcdm|Selector90~0_combout\);

-- Location: LCFF_X77_Y26_N11
\u4|lcdm|LCD_DB[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector90~0_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[1]~reg0_regout\);

-- Location: LCFF_X77_Y26_N9
\u4|lcdm|LCD_DB[1]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector88~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[1]~en_regout\);

-- Location: LCCOMB_X66_Y23_N24
\u4|Mux263~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~18_combout\ = (\SW~combout\(0) & (!\u4|character_counter\(2) & (\u4|line_counter\(0) & !\u4|line_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|character_counter\(2),
	datac => \u4|line_counter\(0),
	datad => \u4|line_counter\(2),
	combout => \u4|Mux263~18_combout\);

-- Location: LCCOMB_X67_Y23_N18
\u4|Mux263~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~68_combout\ = (!\u4|line_counter\(1) & !\u4|character_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|line_counter\(1),
	datad => \u4|character_counter\(2),
	combout => \u4|Mux263~68_combout\);

-- Location: LCCOMB_X67_Y22_N4
\u0|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add0~0_combout\ = \u0|omwentel99\(0) $ (VCC)
-- \u0|Add0~1\ = CARRY(\u0|omwentel99\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|omwentel99\(0),
	datad => VCC,
	combout => \u0|Add0~0_combout\,
	cout => \u0|Add0~1\);

-- Location: LCCOMB_X67_Y22_N0
\u0|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal0~1_combout\ = (!\u0|Add0~8_combout\ & (\u0|Add0~10_combout\ & (\u0|Add0~12_combout\ & !\u0|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add0~8_combout\,
	datab => \u0|Add0~10_combout\,
	datac => \u0|Add0~12_combout\,
	datad => \u0|Add0~14_combout\,
	combout => \u0|Equal0~1_combout\);

-- Location: LCCOMB_X68_Y22_N28
\u0|omwentel99~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel99~0_combout\ = (\u0|Add0~0_combout\ & ((!\u0|Equal0~1_combout\) # (!\u0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~0_combout\,
	datab => \u0|Add0~0_combout\,
	datac => \u0|Equal0~1_combout\,
	combout => \u0|omwentel99~0_combout\);

-- Location: LCCOMB_X68_Y22_N18
\u0|omwentel99[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel99\(0) = (\BUTTON~combout\(3) & ((\hall_sens~combout\ & ((\u0|omwentel99~0_combout\))) # (!\hall_sens~combout\ & (\u0|omwentel99\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(0),
	datab => \BUTTON~combout\(3),
	datac => \hall_sens~combout\,
	datad => \u0|omwentel99~0_combout\,
	combout => \u0|omwentel99\(0));

-- Location: LCCOMB_X67_Y22_N6
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

-- Location: LCCOMB_X68_Y22_N22
\u0|omwentel99~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel99~3_combout\ = (\u0|Add0~2_combout\ & ((!\u0|Equal0~1_combout\) # (!\u0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~0_combout\,
	datab => \u0|Add0~2_combout\,
	datac => \u0|Equal0~1_combout\,
	combout => \u0|omwentel99~3_combout\);

-- Location: LCCOMB_X68_Y22_N14
\u0|omwentel99[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel99\(1) = (\BUTTON~combout\(3) & ((\hall_sens~combout\ & ((\u0|omwentel99~3_combout\))) # (!\hall_sens~combout\ & (\u0|omwentel99\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u0|omwentel99\(1),
	datac => \hall_sens~combout\,
	datad => \u0|omwentel99~3_combout\,
	combout => \u0|omwentel99\(1));

-- Location: LCCOMB_X67_Y22_N8
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

-- Location: LCCOMB_X67_Y22_N28
\u0|omwentel99[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel99\(2) = (\BUTTON~combout\(3) & ((\hall_sens~combout\ & ((\u0|Add0~4_combout\))) # (!\hall_sens~combout\ & (\u0|omwentel99\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u0|omwentel99\(2),
	datac => \u0|Add0~4_combout\,
	datad => \hall_sens~combout\,
	combout => \u0|omwentel99\(2));

-- Location: LCCOMB_X67_Y22_N10
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

-- Location: LCCOMB_X67_Y22_N22
\u0|omwentel99[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel99\(3) = (\BUTTON~combout\(3) & ((\hall_sens~combout\ & ((\u0|Add0~6_combout\))) # (!\hall_sens~combout\ & (\u0|omwentel99\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u0|omwentel99\(3),
	datac => \u0|Add0~6_combout\,
	datad => \hall_sens~combout\,
	combout => \u0|omwentel99\(3));

-- Location: LCCOMB_X67_Y22_N12
\u0|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add0~8_combout\ = (\u0|omwentel99\(4) & (\u0|Add0~7\ $ (GND))) # (!\u0|omwentel99\(4) & (!\u0|Add0~7\ & VCC))
-- \u0|Add0~9\ = CARRY((\u0|omwentel99\(4) & !\u0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|omwentel99\(4),
	datad => VCC,
	cin => \u0|Add0~7\,
	combout => \u0|Add0~8_combout\,
	cout => \u0|Add0~9\);

-- Location: LCCOMB_X66_Y22_N18
\u0|omwentel99[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel99\(4) = (\BUTTON~combout\(3) & ((\hall_sens~combout\ & (\u0|Add0~8_combout\)) # (!\hall_sens~combout\ & ((\u0|omwentel99\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u0|Add0~8_combout\,
	datac => \u0|omwentel99\(4),
	datad => \hall_sens~combout\,
	combout => \u0|omwentel99\(4));

-- Location: LCCOMB_X67_Y22_N14
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

-- Location: LCCOMB_X67_Y22_N2
\u0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal0~0_combout\ = (\u0|Add0~2_combout\ & (\u0|Add0~0_combout\ & (!\u0|Add0~4_combout\ & !\u0|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add0~2_combout\,
	datab => \u0|Add0~0_combout\,
	datac => \u0|Add0~4_combout\,
	datad => \u0|Add0~6_combout\,
	combout => \u0|Equal0~0_combout\);

-- Location: LCCOMB_X66_Y22_N6
\u0|omwentel99~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel99~1_combout\ = (\u0|Add0~10_combout\ & ((!\u0|Equal0~0_combout\) # (!\u0|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|Add0~10_combout\,
	datac => \u0|Equal0~1_combout\,
	datad => \u0|Equal0~0_combout\,
	combout => \u0|omwentel99~1_combout\);

-- Location: LCCOMB_X66_Y22_N22
\u0|omwentel99[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel99\(5) = (\BUTTON~combout\(3) & ((\hall_sens~combout\ & ((\u0|omwentel99~1_combout\))) # (!\hall_sens~combout\ & (\u0|omwentel99\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(5),
	datab => \BUTTON~combout\(3),
	datac => \hall_sens~combout\,
	datad => \u0|omwentel99~1_combout\,
	combout => \u0|omwentel99\(5));

-- Location: LCCOMB_X67_Y22_N16
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

-- Location: LCCOMB_X67_Y22_N26
\u0|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal0~2_combout\ = (\u0|Add0~10_combout\ & !\u0|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|Add0~10_combout\,
	datad => \u0|Add0~8_combout\,
	combout => \u0|Equal0~2_combout\);

-- Location: LCCOMB_X67_Y22_N24
\u0|omwentel99~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel99~2_combout\ = (\u0|Add0~12_combout\ & (((\u0|Add0~14_combout\) # (!\u0|Equal0~2_combout\)) # (!\u0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~0_combout\,
	datab => \u0|Add0~14_combout\,
	datac => \u0|Add0~12_combout\,
	datad => \u0|Equal0~2_combout\,
	combout => \u0|omwentel99~2_combout\);

-- Location: LCCOMB_X67_Y22_N30
\u0|omwentel99[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel99\(6) = (\BUTTON~combout\(3) & ((\hall_sens~combout\ & ((\u0|omwentel99~2_combout\))) # (!\hall_sens~combout\ & (\u0|omwentel99\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u0|omwentel99\(6),
	datac => \u0|omwentel99~2_combout\,
	datad => \hall_sens~combout\,
	combout => \u0|omwentel99\(6));

-- Location: LCCOMB_X67_Y22_N18
\u0|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add0~14_combout\ = \u0|Add0~13\ $ (\u0|omwentel99\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u0|omwentel99\(7),
	cin => \u0|Add0~13\,
	combout => \u0|Add0~14_combout\);

-- Location: LCCOMB_X66_Y22_N16
\u0|omwentel99[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel99\(7) = (\BUTTON~combout\(3) & ((\hall_sens~combout\ & ((\u0|Add0~14_combout\))) # (!\hall_sens~combout\ & (\u0|omwentel99\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u0|omwentel99\(7),
	datac => \u0|Add0~14_combout\,
	datad => \hall_sens~combout\,
	combout => \u0|omwentel99\(7));

-- Location: LCCOMB_X66_Y22_N0
\u4|totale_omw_1bcd|U1bcd[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|U1bcd[0]~0_combout\ = (\u0|omwentel99\(4) & (\u0|omwentel99\(6) $ (((\u0|omwentel99\(5)) # (!\u0|omwentel99\(7)))))) # (!\u0|omwentel99\(4) & ((\u0|omwentel99\(7) & (!\u0|omwentel99\(5) & !\u0|omwentel99\(6))) # (!\u0|omwentel99\(7) & 
-- (\u0|omwentel99\(5) & \u0|omwentel99\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(4),
	datab => \u0|omwentel99\(7),
	datac => \u0|omwentel99\(5),
	datad => \u0|omwentel99\(6),
	combout => \u4|totale_omw_1bcd|U1bcd[0]~0_combout\);

-- Location: LCCOMB_X66_Y22_N4
\u4|totale_omw_1bcd|U1bcd[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|U1bcd[1]~2_combout\ = (\u0|omwentel99\(7) & (!\u0|omwentel99\(5) & ((\u0|omwentel99\(6)) # (!\u0|omwentel99\(4))))) # (!\u0|omwentel99\(7) & (\u0|omwentel99\(5) & ((\u0|omwentel99\(4)) # (!\u0|omwentel99\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(4),
	datab => \u0|omwentel99\(7),
	datac => \u0|omwentel99\(5),
	datad => \u0|omwentel99\(6),
	combout => \u4|totale_omw_1bcd|U1bcd[1]~2_combout\);

-- Location: LCCOMB_X66_Y22_N2
\u4|totale_omw_1bcd|U1bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|U1bcd[2]~1_combout\ = (\u0|omwentel99\(4) & (\u0|omwentel99\(7) & (!\u0|omwentel99\(5) & !\u0|omwentel99\(6)))) # (!\u0|omwentel99\(4) & (\u0|omwentel99\(6) & (\u0|omwentel99\(7) $ (!\u0|omwentel99\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(4),
	datab => \u0|omwentel99\(7),
	datac => \u0|omwentel99\(5),
	datad => \u0|omwentel99\(6),
	combout => \u4|totale_omw_1bcd|U1bcd[2]~1_combout\);

-- Location: LCCOMB_X66_Y22_N20
\u4|totale_omw_1bcd|U2bcd[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|U2bcd[1]~2_combout\ = (\u0|omwentel99\(3) & (\u4|totale_omw_1bcd|U1bcd[0]~0_combout\)) # (!\u0|omwentel99\(3) & ((\u4|totale_omw_1bcd|U1bcd[0]~0_combout\ & (!\u4|totale_omw_1bcd|U1bcd[1]~2_combout\ & 
-- !\u4|totale_omw_1bcd|U1bcd[2]~1_combout\)) # (!\u4|totale_omw_1bcd|U1bcd[0]~0_combout\ & ((\u4|totale_omw_1bcd|U1bcd[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(3),
	datab => \u4|totale_omw_1bcd|U1bcd[0]~0_combout\,
	datac => \u4|totale_omw_1bcd|U1bcd[1]~2_combout\,
	datad => \u4|totale_omw_1bcd|U1bcd[2]~1_combout\,
	combout => \u4|totale_omw_1bcd|U2bcd[1]~2_combout\);

-- Location: LCCOMB_X66_Y22_N8
\u4|totale_omw_1bcd|U2bcd[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|U2bcd[0]~0_combout\ = (\u0|omwentel99\(3) & (((!\u4|totale_omw_1bcd|U1bcd[1]~2_combout\ & !\u4|totale_omw_1bcd|U1bcd[2]~1_combout\)))) # (!\u0|omwentel99\(3) & ((\u4|totale_omw_1bcd|U1bcd[2]~1_combout\) # 
-- ((\u4|totale_omw_1bcd|U1bcd[0]~0_combout\ & \u4|totale_omw_1bcd|U1bcd[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(3),
	datab => \u4|totale_omw_1bcd|U1bcd[0]~0_combout\,
	datac => \u4|totale_omw_1bcd|U1bcd[1]~2_combout\,
	datad => \u4|totale_omw_1bcd|U1bcd[2]~1_combout\,
	combout => \u4|totale_omw_1bcd|U2bcd[0]~0_combout\);

-- Location: LCCOMB_X66_Y22_N28
\u4|totale_omw_1bcd|U2bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|U2bcd[2]~1_combout\ = (\u4|totale_omw_1bcd|U1bcd[1]~2_combout\ & (!\u0|omwentel99\(3) & (!\u4|totale_omw_1bcd|U1bcd[0]~0_combout\))) # (!\u4|totale_omw_1bcd|U1bcd[1]~2_combout\ & (\u4|totale_omw_1bcd|U1bcd[2]~1_combout\ & 
-- ((\u0|omwentel99\(3)) # (\u4|totale_omw_1bcd|U1bcd[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(3),
	datab => \u4|totale_omw_1bcd|U1bcd[0]~0_combout\,
	datac => \u4|totale_omw_1bcd|U1bcd[1]~2_combout\,
	datad => \u4|totale_omw_1bcd|U1bcd[2]~1_combout\,
	combout => \u4|totale_omw_1bcd|U2bcd[2]~1_combout\);

-- Location: LCCOMB_X65_Y22_N14
\u4|totale_omw_1bcd|U3bcd[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|U3bcd[1]~0_combout\ = (\u0|omwentel99\(2) & (((\u4|totale_omw_1bcd|U2bcd[0]~0_combout\)))) # (!\u0|omwentel99\(2) & ((\u4|totale_omw_1bcd|U2bcd[0]~0_combout\ & (!\u4|totale_omw_1bcd|U2bcd[1]~2_combout\ & 
-- !\u4|totale_omw_1bcd|U2bcd[2]~1_combout\)) # (!\u4|totale_omw_1bcd|U2bcd[0]~0_combout\ & ((\u4|totale_omw_1bcd|U2bcd[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(2),
	datab => \u4|totale_omw_1bcd|U2bcd[1]~2_combout\,
	datac => \u4|totale_omw_1bcd|U2bcd[0]~0_combout\,
	datad => \u4|totale_omw_1bcd|U2bcd[2]~1_combout\,
	combout => \u4|totale_omw_1bcd|U3bcd[1]~0_combout\);

-- Location: LCCOMB_X65_Y22_N8
\u4|totale_omw_1bcd|U3bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|U3bcd[2]~1_combout\ = (\u4|totale_omw_1bcd|U2bcd[1]~2_combout\ & (!\u0|omwentel99\(2) & (!\u4|totale_omw_1bcd|U2bcd[0]~0_combout\))) # (!\u4|totale_omw_1bcd|U2bcd[1]~2_combout\ & (\u4|totale_omw_1bcd|U2bcd[2]~1_combout\ & 
-- ((\u0|omwentel99\(2)) # (\u4|totale_omw_1bcd|U2bcd[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(2),
	datab => \u4|totale_omw_1bcd|U2bcd[1]~2_combout\,
	datac => \u4|totale_omw_1bcd|U2bcd[0]~0_combout\,
	datad => \u4|totale_omw_1bcd|U2bcd[2]~1_combout\,
	combout => \u4|totale_omw_1bcd|U3bcd[2]~1_combout\);

-- Location: LCCOMB_X65_Y22_N2
\u4|totale_omw_1bcd|U3bcd[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|U3bcd[0]~2_combout\ = (\u0|omwentel99\(2) & (!\u4|totale_omw_1bcd|U2bcd[1]~2_combout\ & ((!\u4|totale_omw_1bcd|U2bcd[2]~1_combout\)))) # (!\u0|omwentel99\(2) & ((\u4|totale_omw_1bcd|U2bcd[2]~1_combout\) # 
-- ((\u4|totale_omw_1bcd|U2bcd[1]~2_combout\ & \u4|totale_omw_1bcd|U2bcd[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(2),
	datab => \u4|totale_omw_1bcd|U2bcd[1]~2_combout\,
	datac => \u4|totale_omw_1bcd|U2bcd[0]~0_combout\,
	datad => \u4|totale_omw_1bcd|U2bcd[2]~1_combout\,
	combout => \u4|totale_omw_1bcd|U3bcd[0]~2_combout\);

-- Location: LCCOMB_X65_Y22_N18
\u4|totale_omw_1bcd|bcd_out[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|bcd_out[2]~3_combout\ = (\u0|omwentel99\(1) & (((\u4|totale_omw_1bcd|U3bcd[0]~2_combout\)))) # (!\u0|omwentel99\(1) & ((\u4|totale_omw_1bcd|U3bcd[2]~1_combout\ & ((!\u4|totale_omw_1bcd|U3bcd[0]~2_combout\))) # 
-- (!\u4|totale_omw_1bcd|U3bcd[2]~1_combout\ & (!\u4|totale_omw_1bcd|U3bcd[1]~0_combout\ & \u4|totale_omw_1bcd|U3bcd[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(1),
	datab => \u4|totale_omw_1bcd|U3bcd[1]~0_combout\,
	datac => \u4|totale_omw_1bcd|U3bcd[2]~1_combout\,
	datad => \u4|totale_omw_1bcd|U3bcd[0]~2_combout\,
	combout => \u4|totale_omw_1bcd|bcd_out[2]~3_combout\);

-- Location: LCFF_X65_Y22_N19
\u4|totale_omw_line[14][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_1bcd|bcd_out[2]~3_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[14][2]~regout\);

-- Location: LCCOMB_X69_Y22_N2
\u7|seconds_int~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u7|seconds_int~3_combout\ = (\u7|Add1~6_combout\ & (((!\u7|seconds_int\(1)) # (!\u7|Equal1~0_combout\)) # (!\u7|seconds_int\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|seconds_int\(0),
	datab => \u7|Equal1~0_combout\,
	datac => \u7|Add1~6_combout\,
	datad => \u7|seconds_int\(1),
	combout => \u7|seconds_int~3_combout\);

-- Location: LCFF_X69_Y22_N3
\u7|seconds_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u7|seconds_int~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u7|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u7|seconds_int\(3));

-- Location: LCCOMB_X69_Y22_N18
\u4|tijd_secbcd|is_gt_4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|tijd_secbcd|is_gt_4~0_combout\ = (\u7|seconds_int\(5) & ((\u7|seconds_int\(4)) # (\u7|seconds_int\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7|seconds_int\(4),
	datac => \u7|seconds_int\(5),
	datad => \u7|seconds_int\(3),
	combout => \u4|tijd_secbcd|is_gt_4~0_combout\);

-- Location: LCFF_X69_Y22_N19
\u4|tijd_line[10][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|tijd_secbcd|is_gt_4~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|tijd_line[10][2]~regout\);

-- Location: LCCOMB_X68_Y21_N4
\u4|Mux263~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~87_combout\ = (\u4|line_counter\(0)) # ((\KNOP~combout\(1) & \u4|tijd_line[10][2]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datac => \u4|tijd_line[10][2]~regout\,
	datad => \u4|line_counter\(0),
	combout => \u4|Mux263~87_combout\);

-- Location: LCCOMB_X65_Y21_N26
\u4|Mux263~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~88_combout\ = (\u4|Mux263~25_combout\ & ((\u4|totale_omw_line[14][2]~regout\) # ((\u4|Mux263~68_combout\ & \u4|Mux263~87_combout\)))) # (!\u4|Mux263~25_combout\ & (\u4|Mux263~68_combout\ & ((\u4|Mux263~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~25_combout\,
	datab => \u4|Mux263~68_combout\,
	datac => \u4|totale_omw_line[14][2]~regout\,
	datad => \u4|Mux263~87_combout\,
	combout => \u4|Mux263~88_combout\);

-- Location: LCCOMB_X66_Y21_N14
\u4|Mux263~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~89_combout\ = (\u4|Mux263~18_combout\) # ((!\SW~combout\(0) & \u4|Mux263~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datac => \u4|Mux263~18_combout\,
	datad => \u4|Mux263~88_combout\,
	combout => \u4|Mux263~89_combout\);

-- Location: LCCOMB_X68_Y23_N10
\u4|drive~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|drive~2_combout\ = (\u4|line_counter\(0) & !\u4|line_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|line_counter\(0),
	datad => \u4|line_counter\(1),
	combout => \u4|drive~2_combout\);

-- Location: LCCOMB_X68_Y23_N30
\u4|Mux263~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~35_combout\ = (\KNOP~combout\(1) & (!\u4|line_counter\(0) & !\u4|line_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KNOP~combout\(1),
	datac => \u4|line_counter\(0),
	datad => \u4|line_counter\(1),
	combout => \u4|Mux263~35_combout\);

-- Location: LCCOMB_X65_Y24_N12
\u6|rpm_max_int[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u6|rpm_max_int\(7) = (\BUTTON~combout\(3) & ((GLOBAL(\u6|LessThan0~14clkctrl_outclk\) & ((\u5|rpm_mem\(7)))) # (!GLOBAL(\u6|LessThan0~14clkctrl_outclk\) & (\u6|rpm_max_int\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u6|rpm_max_int\(7),
	datac => \u5|rpm_mem\(7),
	datad => \u6|LessThan0~14clkctrl_outclk\,
	combout => \u6|rpm_max_int\(7));

-- Location: LCCOMB_X65_Y24_N0
\u4|maximale2bcd|bcd_out[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|bcd_out[6]~6_combout\ = (\u6|rpm_max_int\(5) & ((\u6|rpm_max_int\(4) & (\u6|rpm_max_int\(7) $ (!\u6|rpm_max_int\(6)))) # (!\u6|rpm_max_int\(4) & (\u6|rpm_max_int\(7) & !\u6|rpm_max_int\(6))))) # (!\u6|rpm_max_int\(5) & 
-- ((\u6|rpm_max_int\(4) & (\u6|rpm_max_int\(7) & !\u6|rpm_max_int\(6))) # (!\u6|rpm_max_int\(4) & (!\u6|rpm_max_int\(7) & \u6|rpm_max_int\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(5),
	datab => \u6|rpm_max_int\(4),
	datac => \u6|rpm_max_int\(7),
	datad => \u6|rpm_max_int\(6),
	combout => \u4|maximale2bcd|bcd_out[6]~6_combout\);

-- Location: LCCOMB_X63_Y24_N24
\u4|maximale2bcd|bcd_out[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|bcd_out[6]~4_combout\ = (\u6|rpm_max_int\(5) & (\u6|rpm_max_int\(6) $ (((!\u6|rpm_max_int\(7)) # (!\u6|rpm_max_int\(4)))))) # (!\u6|rpm_max_int\(5) & ((\u6|rpm_max_int\(4) & (\u6|rpm_max_int\(7) & !\u6|rpm_max_int\(6))) # 
-- (!\u6|rpm_max_int\(4) & (!\u6|rpm_max_int\(7) & \u6|rpm_max_int\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(4),
	datab => \u6|rpm_max_int\(5),
	datac => \u6|rpm_max_int\(7),
	datad => \u6|rpm_max_int\(6),
	combout => \u4|maximale2bcd|bcd_out[6]~4_combout\);

-- Location: LCCOMB_X63_Y24_N22
\u4|maximale2bcd|bcd_out[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|bcd_out[6]~3_combout\ = (\u6|rpm_max_int\(4) & ((\u6|rpm_max_int\(5) & ((\u6|rpm_max_int\(7)) # (!\u6|rpm_max_int\(6)))) # (!\u6|rpm_max_int\(5) & (\u6|rpm_max_int\(7) & !\u6|rpm_max_int\(6))))) # (!\u6|rpm_max_int\(4) & 
-- ((\u6|rpm_max_int\(5) & (\u6|rpm_max_int\(7) & !\u6|rpm_max_int\(6))) # (!\u6|rpm_max_int\(5) & (!\u6|rpm_max_int\(7) & \u6|rpm_max_int\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(4),
	datab => \u6|rpm_max_int\(5),
	datac => \u6|rpm_max_int\(7),
	datad => \u6|rpm_max_int\(6),
	combout => \u4|maximale2bcd|bcd_out[6]~3_combout\);

-- Location: LCCOMB_X63_Y24_N6
\u4|maximale2bcd|bcd_out[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|bcd_out[6]~8_combout\ = (\u6|rpm_max_int\(3) & ((\u6|rpm_max_int\(2)) # ((\u4|maximale2bcd|bcd_out[6]~4_combout\)))) # (!\u6|rpm_max_int\(3) & (!\u6|rpm_max_int\(2) & ((\u4|maximale2bcd|bcd_out[6]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(3),
	datab => \u6|rpm_max_int\(2),
	datac => \u4|maximale2bcd|bcd_out[6]~4_combout\,
	datad => \u4|maximale2bcd|bcd_out[6]~3_combout\,
	combout => \u4|maximale2bcd|bcd_out[6]~8_combout\);

-- Location: LCCOMB_X63_Y24_N20
\u4|maximale2bcd|bcd_out[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|bcd_out[6]~9_combout\ = (\u6|rpm_max_int\(2) & ((\u4|maximale2bcd|bcd_out[6]~8_combout\ & (\u4|maximale2bcd|bcd_out[6]~7_combout\)) # (!\u4|maximale2bcd|bcd_out[6]~8_combout\ & ((\u4|maximale2bcd|bcd_out[6]~6_combout\))))) # 
-- (!\u6|rpm_max_int\(2) & (((\u4|maximale2bcd|bcd_out[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|maximale2bcd|bcd_out[6]~7_combout\,
	datab => \u6|rpm_max_int\(2),
	datac => \u4|maximale2bcd|bcd_out[6]~6_combout\,
	datad => \u4|maximale2bcd|bcd_out[6]~8_combout\,
	combout => \u4|maximale2bcd|bcd_out[6]~9_combout\);

-- Location: LCFF_X63_Y24_N21
\u4|maximale_line[11][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|maximale2bcd|bcd_out[6]~9_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|maximale_line[11][2]~regout\);

-- Location: LCCOMB_X67_Y23_N22
\u4|Mux263~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~100_combout\ = (\u4|aline~8_combout\ & ((\u4|line_counter\(1) & ((\u4|maximale_line[11][2]~regout\))) # (!\u4|line_counter\(1) & (\u4|totale_omw_line[11][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_line[11][2]~regout\,
	datab => \u4|line_counter\(1),
	datac => \u4|maximale_line[11][2]~regout\,
	datad => \u4|aline~8_combout\,
	combout => \u4|Mux263~100_combout\);

-- Location: LCCOMB_X67_Y23_N12
\u4|Mux263~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~101_combout\ = (!\u4|character_counter\(2) & ((\u4|Mux263~100_combout\) # ((\u4|tijd_line[11][2]~regout\ & \u4|Mux263~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|tijd_line[11][2]~regout\,
	datab => \u4|character_counter\(2),
	datac => \u4|Mux263~35_combout\,
	datad => \u4|Mux263~100_combout\,
	combout => \u4|Mux263~101_combout\);

-- Location: LCCOMB_X67_Y23_N2
\u4|Mux263~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~102_combout\ = (\u4|Mux263~99_combout\ & ((\u4|Mux263~101_combout\) # ((\u4|character_counter\(2) & \u4|drive~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~99_combout\,
	datab => \u4|character_counter\(2),
	datac => \u4|drive~2_combout\,
	datad => \u4|Mux263~101_combout\,
	combout => \u4|Mux263~102_combout\);

-- Location: LCCOMB_X66_Y21_N4
\u4|aline~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~9_combout\ = (\SW~combout\(0) & \u4|line_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datad => \u4|line_counter\(1),
	combout => \u4|aline~9_combout\);

-- Location: LCCOMB_X66_Y21_N24
\u2|U4bcd[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U4bcd[1]~1_combout\ = (\u5|rpm_mem\(1) & (((\u2|U3bcd[0]~0_combout\)))) # (!\u5|rpm_mem\(1) & ((\u2|U3bcd[2]~1_combout\ & ((!\u2|U3bcd[0]~0_combout\))) # (!\u2|U3bcd[2]~1_combout\ & (!\u2|U3bcd[1]~2_combout\ & \u2|U3bcd[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(1),
	datab => \u2|U3bcd[1]~2_combout\,
	datac => \u2|U3bcd[2]~1_combout\,
	datad => \u2|U3bcd[0]~0_combout\,
	combout => \u2|U4bcd[1]~1_combout\);

-- Location: LCFF_X66_Y21_N25
\u4|RPM_line[8][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u2|U4bcd[1]~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|RPM_line[8][2]~regout\);

-- Location: LCCOMB_X69_Y21_N6
\u4|tijd_minbcd|bcd_out[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|tijd_minbcd|bcd_out[2]~2_combout\ = (\u7|minutes_int\(1) & (\u4|tijd_minbcd|U3bcd[0]~2_combout\)) # (!\u7|minutes_int\(1) & ((\u4|tijd_minbcd|U3bcd[0]~2_combout\ & (!\u4|tijd_minbcd|U3bcd[1]~0_combout\ & !\u4|tijd_minbcd|U3bcd[2]~1_combout\)) # 
-- (!\u4|tijd_minbcd|U3bcd[0]~2_combout\ & ((\u4|tijd_minbcd|U3bcd[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|minutes_int\(1),
	datab => \u4|tijd_minbcd|U3bcd[0]~2_combout\,
	datac => \u4|tijd_minbcd|U3bcd[1]~0_combout\,
	datad => \u4|tijd_minbcd|U3bcd[2]~1_combout\,
	combout => \u4|tijd_minbcd|bcd_out[2]~2_combout\);

-- Location: LCFF_X69_Y21_N7
\u4|tijd_line[8][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|tijd_minbcd|bcd_out[2]~2_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|tijd_line[8][2]~regout\);

-- Location: LCCOMB_X67_Y21_N22
\u4|Mux263~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~96_combout\ = (\u4|line_counter\(1) & (((\u4|RPM_line[8][2]~regout\)))) # (!\u4|line_counter\(1) & (!\SW~combout\(0) & ((\u4|tijd_line[8][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|RPM_line[8][2]~regout\,
	datac => \u4|line_counter\(1),
	datad => \u4|tijd_line[8][2]~regout\,
	combout => \u4|Mux263~96_combout\);

-- Location: LCCOMB_X67_Y21_N20
\u4|aline~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~13_combout\ = (!\KNOP~combout\(1) & ((\u4|line_counter\(1) & (\u4|RPM_line[1][6]~regout\ & !\u4|line_counter\(0))) # (!\u4|line_counter\(1) & ((\u4|line_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|RPM_line[1][6]~regout\,
	datab => \KNOP~combout\(1),
	datac => \u4|line_counter\(1),
	datad => \u4|line_counter\(0),
	combout => \u4|aline~13_combout\);

-- Location: LCCOMB_X67_Y21_N28
\u4|aline~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~12_combout\ = (\KNOP~combout\(1) & (\u4|line_counter\(1) $ (!\u4|line_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KNOP~combout\(1),
	datac => \u4|line_counter\(1),
	datad => \u4|line_counter\(0),
	combout => \u4|aline~12_combout\);

-- Location: LCCOMB_X67_Y21_N26
\u4|Mux263~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~97_combout\ = (\SW~combout\(0) & (\u4|Mux263~96_combout\ & ((\u4|aline~12_combout\)))) # (!\SW~combout\(0) & ((\u4|aline~13_combout\) # ((\u4|Mux263~96_combout\ & \u4|aline~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|Mux263~96_combout\,
	datac => \u4|aline~13_combout\,
	datad => \u4|aline~12_combout\,
	combout => \u4|Mux263~97_combout\);

-- Location: LCCOMB_X67_Y24_N10
\u4|maximale2bcd|bcd_out[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|bcd_out[2]~14_combout\ = (\u6|rpm_max_int\(1) & (((\u4|maximale2bcd|U3bcd[0]~2_combout\)))) # (!\u6|rpm_max_int\(1) & ((\u4|maximale2bcd|U3bcd[0]~2_combout\ & (!\u4|maximale2bcd|U3bcd[1]~0_combout\ & 
-- !\u4|maximale2bcd|U3bcd[2]~1_combout\)) # (!\u4|maximale2bcd|U3bcd[0]~2_combout\ & ((\u4|maximale2bcd|U3bcd[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(1),
	datab => \u4|maximale2bcd|U3bcd[1]~0_combout\,
	datac => \u4|maximale2bcd|U3bcd[0]~2_combout\,
	datad => \u4|maximale2bcd|U3bcd[2]~1_combout\,
	combout => \u4|maximale2bcd|bcd_out[2]~14_combout\);

-- Location: LCFF_X67_Y24_N11
\u4|maximale_line[12][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|maximale2bcd|bcd_out[2]~14_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|maximale_line[12][2]~regout\);

-- Location: LCCOMB_X67_Y21_N2
\u4|Mux263~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~94_combout\ = (\u4|line_counter\(1) & ((\u4|line_counter\(0) & ((\u4|maximale_line[12][2]~regout\))) # (!\u4|line_counter\(0) & (\u4|RPM_line[1][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|RPM_line[1][6]~regout\,
	datab => \u4|maximale_line[12][2]~regout\,
	datac => \u4|line_counter\(1),
	datad => \u4|line_counter\(0),
	combout => \u4|Mux263~94_combout\);

-- Location: LCCOMB_X67_Y21_N16
\u4|Mux58~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux58~1_combout\ = (!\u4|line_counter\(1) & !\u4|line_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|line_counter\(1),
	datad => \u4|line_counter\(0),
	combout => \u4|Mux58~1_combout\);

-- Location: LCCOMB_X67_Y21_N0
\u4|Mux263~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~93_combout\ = (!\KNOP~combout\(1) & (\u4|character_counter\(2) & !\SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KNOP~combout\(1),
	datac => \u4|character_counter\(2),
	datad => \SW~combout\(0),
	combout => \u4|Mux263~93_combout\);

-- Location: LCCOMB_X67_Y21_N4
\u4|Mux263~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~95_combout\ = (\u4|Mux263~93_combout\ & ((\u4|Mux263~94_combout\) # ((\u4|totale_omw_line[12][2]~regout\ & \u4|Mux58~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_line[12][2]~regout\,
	datab => \u4|Mux263~94_combout\,
	datac => \u4|Mux58~1_combout\,
	datad => \u4|Mux263~93_combout\,
	combout => \u4|Mux263~95_combout\);

-- Location: LCCOMB_X66_Y21_N16
\u4|Mux263~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~98_combout\ = (\u4|Mux263~95_combout\) # ((!\u4|character_counter\(2) & ((\u4|aline~9_combout\) # (\u4|Mux263~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|aline~9_combout\,
	datac => \u4|Mux263~97_combout\,
	datad => \u4|Mux263~95_combout\,
	combout => \u4|Mux263~98_combout\);

-- Location: LCCOMB_X67_Y23_N20
\u4|Mux263~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~90_combout\ = (!\u4|character_counter\(2) & (!\u4|line_counter\(0) & (\u4|line_counter\(1) & \u4|RPM_line[1][6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|line_counter\(0),
	datac => \u4|line_counter\(1),
	datad => \u4|RPM_line[1][6]~regout\,
	combout => \u4|Mux263~90_combout\);

-- Location: LCCOMB_X67_Y22_N20
\u4|totale_omw_1bcd|U1bcd[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|U1bcd[3]~3_combout\ = (\u0|omwentel99\(6) & ((\u0|omwentel99\(4) & (!\u0|omwentel99\(5) & \u0|omwentel99\(7))) # (!\u0|omwentel99\(4) & ((\u0|omwentel99\(7)) # (!\u0|omwentel99\(5)))))) # (!\u0|omwentel99\(6) & (((\u0|omwentel99\(5)) # 
-- (!\u0|omwentel99\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(4),
	datab => \u0|omwentel99\(6),
	datac => \u0|omwentel99\(5),
	datad => \u0|omwentel99\(7),
	combout => \u4|totale_omw_1bcd|U1bcd[3]~3_combout\);

-- Location: LCCOMB_X66_Y23_N28
\u4|totale_omw_1bcd|U2bcd[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|U2bcd[3]~3_combout\ = \u4|totale_omw_1bcd|U1bcd[2]~1_combout\ $ ((((!\u0|omwentel99\(3) & !\u4|totale_omw_1bcd|U1bcd[0]~0_combout\)) # (!\u4|totale_omw_1bcd|U1bcd[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_1bcd|U1bcd[1]~2_combout\,
	datab => \u0|omwentel99\(3),
	datac => \u4|totale_omw_1bcd|U1bcd[2]~1_combout\,
	datad => \u4|totale_omw_1bcd|U1bcd[0]~0_combout\,
	combout => \u4|totale_omw_1bcd|U2bcd[3]~3_combout\);

-- Location: LCCOMB_X66_Y23_N14
\u4|totale_omw_1bcd|U5bcd[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|U5bcd[1]~0_combout\ = (!\u4|totale_omw_1bcd|U1bcd[3]~3_combout\ & (((!\u4|totale_omw_1bcd|U2bcd[3]~3_combout\) # (!\u0|omwentel99\(7))) # (!\u4|totale_omw_1bcd|U0bcd[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_1bcd|U0bcd[2]~0_combout\,
	datab => \u0|omwentel99\(7),
	datac => \u4|totale_omw_1bcd|U1bcd[3]~3_combout\,
	datad => \u4|totale_omw_1bcd|U2bcd[3]~3_combout\,
	combout => \u4|totale_omw_1bcd|U5bcd[1]~0_combout\);

-- Location: LCCOMB_X66_Y22_N26
\u4|totale_omw_1bcd|U5bcd[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|U5bcd[0]~1_combout\ = (\u0|omwentel99\(6) & (\u0|omwentel99\(5) & (\u0|omwentel99\(4) & \u0|omwentel99\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel99\(6),
	datab => \u0|omwentel99\(5),
	datac => \u0|omwentel99\(4),
	datad => \u0|omwentel99\(7),
	combout => \u4|totale_omw_1bcd|U5bcd[0]~1_combout\);

-- Location: LCCOMB_X66_Y23_N8
\u4|totale_omw_1bcd|U5bcd[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|U5bcd[0]~2_combout\ = (\u4|totale_omw_1bcd|U5bcd[0]~1_combout\) # ((!\u4|totale_omw_1bcd|U2bcd[3]~3_combout\ & ((!\u0|omwentel99\(7)) # (!\u4|totale_omw_1bcd|U0bcd[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_1bcd|U0bcd[2]~0_combout\,
	datab => \u4|totale_omw_1bcd|U5bcd[0]~1_combout\,
	datac => \u0|omwentel99\(7),
	datad => \u4|totale_omw_1bcd|U2bcd[3]~3_combout\,
	combout => \u4|totale_omw_1bcd|U5bcd[0]~2_combout\);

-- Location: LCCOMB_X66_Y23_N10
\u4|totale_omw_1bcd|U5bcd[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|U5bcd[2]~3_combout\ = (\u4|totale_omw_1bcd|U0bcd[2]~0_combout\ & (\u0|omwentel99\(7) & (\u4|totale_omw_1bcd|U1bcd[3]~3_combout\ & \u4|totale_omw_1bcd|U2bcd[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_1bcd|U0bcd[2]~0_combout\,
	datab => \u0|omwentel99\(7),
	datac => \u4|totale_omw_1bcd|U1bcd[3]~3_combout\,
	datad => \u4|totale_omw_1bcd|U2bcd[3]~3_combout\,
	combout => \u4|totale_omw_1bcd|U5bcd[2]~3_combout\);

-- Location: LCCOMB_X66_Y23_N2
\u4|totale_omw_1bcd|bcd_out[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_1bcd|bcd_out[6]~4_combout\ = (\u4|totale_omw_1bcd|U3bcd[3]~3_combout\ & ((\u4|totale_omw_1bcd|U5bcd[0]~2_combout\ & (!\u4|totale_omw_1bcd|U5bcd[1]~0_combout\ & !\u4|totale_omw_1bcd|U5bcd[2]~3_combout\)) # 
-- (!\u4|totale_omw_1bcd|U5bcd[0]~2_combout\ & ((\u4|totale_omw_1bcd|U5bcd[2]~3_combout\))))) # (!\u4|totale_omw_1bcd|U3bcd[3]~3_combout\ & (((\u4|totale_omw_1bcd|U5bcd[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_1bcd|U3bcd[3]~3_combout\,
	datab => \u4|totale_omw_1bcd|U5bcd[1]~0_combout\,
	datac => \u4|totale_omw_1bcd|U5bcd[0]~2_combout\,
	datad => \u4|totale_omw_1bcd|U5bcd[2]~3_combout\,
	combout => \u4|totale_omw_1bcd|bcd_out[6]~4_combout\);

-- Location: LCFF_X66_Y23_N3
\u4|totale_omw_line[13][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_1bcd|bcd_out[6]~4_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[13][2]~regout\);

-- Location: LCCOMB_X66_Y21_N12
\u4|Mux263~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~91_combout\ = (\u4|Mux263~25_combout\ & ((\u4|totale_omw_line[13][2]~regout\) # ((!\KNOP~combout\(1) & \u4|Mux263~90_combout\)))) # (!\u4|Mux263~25_combout\ & (!\KNOP~combout\(1) & (\u4|Mux263~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~25_combout\,
	datab => \KNOP~combout\(1),
	datac => \u4|Mux263~90_combout\,
	datad => \u4|totale_omw_line[13][2]~regout\,
	combout => \u4|Mux263~91_combout\);

-- Location: LCCOMB_X66_Y21_N2
\u4|Mux263~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~92_combout\ = (\u4|Mux263~18_combout\) # ((!\SW~combout\(0) & \u4|Mux263~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datac => \u4|Mux263~18_combout\,
	datad => \u4|Mux263~91_combout\,
	combout => \u4|Mux263~92_combout\);

-- Location: LCCOMB_X66_Y21_N18
\u4|Mux261~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux261~0_combout\ = (\u4|character_counter\(1) & (!\u4|character_counter\(0))) # (!\u4|character_counter\(1) & ((\u4|character_counter\(0) & (\u4|Mux263~98_combout\)) # (!\u4|character_counter\(0) & ((\u4|Mux263~92_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|character_counter\(0),
	datac => \u4|Mux263~98_combout\,
	datad => \u4|Mux263~92_combout\,
	combout => \u4|Mux261~0_combout\);

-- Location: LCCOMB_X66_Y21_N20
\u4|Mux261~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux261~1_combout\ = (\u4|character_counter\(1) & ((\u4|Mux261~0_combout\ & ((\u4|Mux263~102_combout\))) # (!\u4|Mux261~0_combout\ & (\u4|Mux263~89_combout\)))) # (!\u4|character_counter\(1) & (((\u4|Mux261~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|Mux263~89_combout\,
	datac => \u4|Mux263~102_combout\,
	datad => \u4|Mux261~0_combout\,
	combout => \u4|Mux261~1_combout\);

-- Location: LCCOMB_X67_Y23_N4
\u4|Mux263~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~104_combout\ = (\u4|aline~10_combout\) # ((!\u4|character_counter\(2) & (\u4|line_counter\(0) & !\u4|line_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|line_counter\(0),
	datac => \u4|line_counter\(1),
	datad => \u4|aline~10_combout\,
	combout => \u4|Mux263~104_combout\);

-- Location: LCCOMB_X67_Y23_N6
\u4|Mux263~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~105_combout\ = (\SW~combout\(0) & (\u4|character_counter\(2) & ((\u4|goto20~0_combout\)))) # (!\SW~combout\(0) & (((\u4|Mux263~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|character_counter\(2),
	datac => \u4|Mux263~104_combout\,
	datad => \u4|goto20~0_combout\,
	combout => \u4|Mux263~105_combout\);

-- Location: LCCOMB_X67_Y23_N8
\u4|Mux261~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux261~2_combout\ = (\u4|character_counter\(1) & (((\u4|Mux263~105_combout\) # (!\u4|character_counter\(0))))) # (!\u4|character_counter\(1) & (\u4|Mux263~146_combout\ & (\u4|character_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~146_combout\,
	datab => \u4|character_counter\(1),
	datac => \u4|character_counter\(0),
	datad => \u4|Mux263~105_combout\,
	combout => \u4|Mux261~2_combout\);

-- Location: LCCOMB_X66_Y21_N26
\u4|aline~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~14_combout\ = (!\u4|line_counter\(1) & (!\KNOP~combout\(1) & !\u4|line_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \KNOP~combout\(1),
	datad => \u4|line_counter\(0),
	combout => \u4|aline~14_combout\);

-- Location: LCCOMB_X66_Y21_N22
\u4|Mux263~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~143_combout\ = (\SW~combout\(0) & (((\u4|Mux58~0_combout\)))) # (!\SW~combout\(0) & (\u4|aline~14_combout\ & ((\u4|RPM_line[1][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|aline~14_combout\,
	datac => \u4|Mux58~0_combout\,
	datad => \u4|RPM_line[1][6]~regout\,
	combout => \u4|Mux263~143_combout\);

-- Location: LCCOMB_X66_Y21_N8
\u4|Mux263~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~103_combout\ = (\u4|character_counter\(2) & (((\u4|Mux263~143_combout\)))) # (!\u4|character_counter\(2) & (!\SW~combout\(0) & (\u4|Mux263~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|Mux263~43_combout\,
	datac => \u4|character_counter\(2),
	datad => \u4|Mux263~143_combout\,
	combout => \u4|Mux263~103_combout\);

-- Location: LCCOMB_X68_Y23_N26
\u4|Mux263~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~108_combout\ = (\u4|line_counter\(0) & (((\KNOP~combout\(1) & \u4|RPM_line[1][6]~regout\)) # (!\u4|line_counter\(1)))) # (!\u4|line_counter\(0) & (!\KNOP~combout\(1) & (\u4|RPM_line[1][6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \KNOP~combout\(1),
	datac => \u4|RPM_line[1][6]~regout\,
	datad => \u4|line_counter\(1),
	combout => \u4|Mux263~108_combout\);

-- Location: LCCOMB_X69_Y21_N0
\u4|tijd_minbcd|is_gt_4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|tijd_minbcd|is_gt_4~0_combout\ = (\u7|minutes_int\(5) & ((\u7|minutes_int\(3)) # (\u7|minutes_int\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u7|minutes_int\(3),
	datac => \u7|minutes_int\(5),
	datad => \u7|minutes_int\(4),
	combout => \u4|tijd_minbcd|is_gt_4~0_combout\);

-- Location: LCFF_X69_Y21_N1
\u4|tijd_line[7][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|tijd_minbcd|is_gt_4~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|tijd_line[7][2]~regout\);

-- Location: LCCOMB_X68_Y23_N18
\u4|Mux263~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~106_combout\ = (!\u4|line_counter\(0) & ((\u4|line_counter\(1) & (\u4|RPM_line[1][6]~regout\)) # (!\u4|line_counter\(1) & ((\u4|tijd_line[7][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|line_counter\(1),
	datac => \u4|RPM_line[1][6]~regout\,
	datad => \u4|tijd_line[7][2]~regout\,
	combout => \u4|Mux263~106_combout\);

-- Location: LCCOMB_X68_Y23_N12
\u4|Mux263~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~107_combout\ = (\KNOP~combout\(1) & ((\u4|Mux263~106_combout\) # ((\u4|aline~8_combout\ & \u4|RPM_line[1][6]~regout\)))) # (!\KNOP~combout\(1) & (\u4|aline~8_combout\ & (\u4|RPM_line[1][6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \u4|aline~8_combout\,
	datac => \u4|RPM_line[1][6]~regout\,
	datad => \u4|Mux263~106_combout\,
	combout => \u4|Mux263~107_combout\);

-- Location: LCCOMB_X68_Y23_N4
\u4|Mux263~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~109_combout\ = (!\SW~combout\(0) & ((\u4|character_counter\(2) & ((\u4|Mux263~107_combout\))) # (!\u4|character_counter\(2) & (\u4|Mux263~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|Mux263~108_combout\,
	datac => \u4|character_counter\(2),
	datad => \u4|Mux263~107_combout\,
	combout => \u4|Mux263~109_combout\);

-- Location: LCCOMB_X67_Y23_N26
\u4|Mux263~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~111_combout\ = (\u4|Mux263~109_combout\) # ((\u4|Mux263~110_combout\ & (\u4|character_counter\(2) & \u4|line_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~110_combout\,
	datab => \u4|character_counter\(2),
	datac => \u4|line_counter\(1),
	datad => \u4|Mux263~109_combout\,
	combout => \u4|Mux263~111_combout\);

-- Location: LCCOMB_X66_Y21_N30
\u4|Mux261~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux261~3_combout\ = (\u4|character_counter\(0) & (\u4|Mux261~2_combout\)) # (!\u4|character_counter\(0) & ((\u4|Mux261~2_combout\ & ((\u4|Mux263~111_combout\))) # (!\u4|Mux261~2_combout\ & (\u4|Mux263~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|Mux261~2_combout\,
	datac => \u4|Mux263~103_combout\,
	datad => \u4|Mux263~111_combout\,
	combout => \u4|Mux261~3_combout\);

-- Location: LCCOMB_X66_Y21_N0
\u4|Mux261~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux261~4_combout\ = (\u4|character_counter\(3) & (\u4|Mux261~1_combout\)) # (!\u4|character_counter\(3) & ((\u4|Mux261~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|character_counter\(3),
	datac => \u4|Mux261~1_combout\,
	datad => \u4|Mux261~3_combout\,
	combout => \u4|Mux261~4_combout\);

-- Location: LCFF_X66_Y21_N1
\u4|data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Mux261~4_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.write_char~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|data\(2));

-- Location: LCCOMB_X77_Y26_N28
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

-- Location: LCCOMB_X77_Y26_N22
\u4|lcdm|Selector93~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector93~0_combout\ = (\u4|lcdm|current_state.command_init_11~regout\) # (((\u4|lcdm|current_state.wait_for_command~regout\ & \u4|data\(2))) # (!\u4|lcdm|Selector96~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|data\(2),
	datac => \u4|lcdm|current_state.command_init_11~regout\,
	datad => \u4|lcdm|Selector96~0_combout\,
	combout => \u4|lcdm|Selector93~0_combout\);

-- Location: LCFF_X77_Y26_N23
\u4|lcdm|LCD_DB[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector93~0_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[2]~reg0_regout\);

-- Location: LCFF_X77_Y26_N21
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

-- Location: LCCOMB_X77_Y24_N10
\u4|lcdm|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector31~0_combout\ = (\u4|lcdm|Selector40~1_combout\ & ((\u4|lcdm|Selector53~1_combout\ & (\u4|lcdm|return_state.command_init_8~regout\)) # (!\u4|lcdm|Selector53~1_combout\ & ((\u4|lcdm|current_state.command_init_8~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_8~regout\,
	datab => \u4|lcdm|Selector53~1_combout\,
	datac => \u4|lcdm|current_state.command_init_8~regout\,
	datad => \u4|lcdm|Selector40~1_combout\,
	combout => \u4|lcdm|Selector31~0_combout\);

-- Location: LCFF_X77_Y24_N11
\u4|lcdm|current_state.command_init_8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector31~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_8~regout\);

-- Location: LCCOMB_X66_Y23_N20
\u4|Mux263~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~85_combout\ = (!\SW~combout\(0) & (!\u4|line_counter\(1) & (!\u4|line_counter\(0) & \u4|RPM_line[1][6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|line_counter\(1),
	datac => \u4|line_counter\(0),
	datad => \u4|RPM_line[1][6]~regout\,
	combout => \u4|Mux263~85_combout\);

-- Location: LCCOMB_X66_Y23_N4
\u4|Mux263~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~126_combout\ = (\u4|character_counter\(2) & ((\u4|Mux263~85_combout\) # ((\SW~combout\(0) & \u4|goto20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|character_counter\(2),
	datac => \u4|Mux263~85_combout\,
	datad => \u4|goto20~0_combout\,
	combout => \u4|Mux263~126_combout\);

-- Location: LCCOMB_X65_Y23_N18
\u4|Mux263~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~128_combout\ = (\u4|Mux263~126_combout\) # ((\u4|Mux263~127_combout\ & (!\SW~combout\(0) & !\u4|character_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~127_combout\,
	datab => \SW~combout\(0),
	datac => \u4|character_counter\(2),
	datad => \u4|Mux263~126_combout\,
	combout => \u4|Mux263~128_combout\);

-- Location: LCCOMB_X65_Y23_N22
\u4|Mux263~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~144_combout\ = (\u4|RPM_line[1][6]~regout\ & (\u4|Mux263~76_combout\ & !\SW~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|RPM_line[1][6]~regout\,
	datac => \u4|Mux263~76_combout\,
	datad => \SW~combout\(0),
	combout => \u4|Mux263~144_combout\);

-- Location: LCCOMB_X65_Y23_N30
\u4|Mux263~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~130_combout\ = (\u4|Mux263~129_combout\ & (!\SW~combout\(0) & !\u4|line_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~129_combout\,
	datab => \SW~combout\(0),
	datac => \u4|line_counter\(1),
	combout => \u4|Mux263~130_combout\);

-- Location: LCCOMB_X65_Y23_N4
\u4|Mux260~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux260~2_combout\ = (\u4|character_counter\(1) & (((\u4|Mux263~130_combout\) # (!\u4|character_counter\(0))))) # (!\u4|character_counter\(1) & (\u4|Mux263~144_combout\ & (\u4|character_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|Mux263~144_combout\,
	datac => \u4|character_counter\(0),
	datad => \u4|Mux263~130_combout\,
	combout => \u4|Mux260~2_combout\);

-- Location: LCCOMB_X65_Y25_N28
\u4|Mux263~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~22_combout\ = (\u4|line_counter\(1) & \u4|line_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|line_counter\(1),
	datad => \u4|line_counter\(0),
	combout => \u4|Mux263~22_combout\);

-- Location: LCCOMB_X65_Y23_N28
\u4|Mux263~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~132_combout\ = (\u4|Mux263~131_combout\ & ((\u4|Mux263~22_combout\) # ((\u4|RPM_line[1][6]~regout\ & \u4|Mux263~27_combout\)))) # (!\u4|Mux263~131_combout\ & (\u4|RPM_line[1][6]~regout\ & ((\u4|Mux263~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~131_combout\,
	datab => \u4|RPM_line[1][6]~regout\,
	datac => \u4|Mux263~22_combout\,
	datad => \u4|Mux263~27_combout\,
	combout => \u4|Mux263~132_combout\);

-- Location: LCCOMB_X65_Y23_N10
\u4|Mux263~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~133_combout\ = (\u4|Mux263~75_combout\) # ((!\SW~combout\(0) & \u4|Mux263~132_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \u4|Mux263~75_combout\,
	datad => \u4|Mux263~132_combout\,
	combout => \u4|Mux263~133_combout\);

-- Location: LCCOMB_X65_Y23_N16
\u4|Mux260~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux260~3_combout\ = (\u4|character_counter\(0) & (((\u4|Mux260~2_combout\)))) # (!\u4|character_counter\(0) & ((\u4|Mux260~2_combout\ & ((\u4|Mux263~133_combout\))) # (!\u4|Mux260~2_combout\ & (\u4|Mux263~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|Mux263~128_combout\,
	datac => \u4|Mux260~2_combout\,
	datad => \u4|Mux263~133_combout\,
	combout => \u4|Mux260~3_combout\);

-- Location: LCCOMB_X69_Y23_N18
\u4|Mux263~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~99_combout\ = (!\SW~combout\(0) & ((!\u4|character_counter\(2)) # (!\KNOP~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \KNOP~combout\(1),
	datad => \u4|character_counter\(2),
	combout => \u4|Mux263~99_combout\);

-- Location: LCCOMB_X69_Y22_N24
\u4|tijd_secbcd|U3bcd[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|tijd_secbcd|U3bcd[0]~2_combout\ = (\u7|seconds_int\(4) & ((\u7|seconds_int\(2) & (\u7|seconds_int\(5) & !\u7|seconds_int\(3))) # (!\u7|seconds_int\(2) & (!\u7|seconds_int\(5) & \u7|seconds_int\(3))))) # (!\u7|seconds_int\(4) & (\u7|seconds_int\(2) $ 
-- (((\u7|seconds_int\(5) & !\u7|seconds_int\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|seconds_int\(4),
	datab => \u7|seconds_int\(2),
	datac => \u7|seconds_int\(5),
	datad => \u7|seconds_int\(3),
	combout => \u4|tijd_secbcd|U3bcd[0]~2_combout\);

-- Location: LCCOMB_X69_Y22_N30
\u4|tijd_secbcd|U3bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|tijd_secbcd|U3bcd[2]~1_combout\ = (\u7|seconds_int\(4) & (!\u7|seconds_int\(2) & (\u7|seconds_int\(5) $ (!\u7|seconds_int\(3))))) # (!\u7|seconds_int\(4) & (\u7|seconds_int\(2) & (\u7|seconds_int\(5) & !\u7|seconds_int\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7|seconds_int\(4),
	datab => \u7|seconds_int\(2),
	datac => \u7|seconds_int\(5),
	datad => \u7|seconds_int\(3),
	combout => \u4|tijd_secbcd|U3bcd[2]~1_combout\);

-- Location: LCCOMB_X69_Y22_N22
\u4|tijd_secbcd|bcd_out[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|tijd_secbcd|bcd_out[3]~3_combout\ = (\u4|tijd_secbcd|U3bcd[1]~0_combout\ & (!\u7|seconds_int\(1) & (!\u4|tijd_secbcd|U3bcd[0]~2_combout\))) # (!\u4|tijd_secbcd|U3bcd[1]~0_combout\ & (\u4|tijd_secbcd|U3bcd[2]~1_combout\ & ((\u7|seconds_int\(1)) # 
-- (\u4|tijd_secbcd|U3bcd[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|tijd_secbcd|U3bcd[1]~0_combout\,
	datab => \u7|seconds_int\(1),
	datac => \u4|tijd_secbcd|U3bcd[0]~2_combout\,
	datad => \u4|tijd_secbcd|U3bcd[2]~1_combout\,
	combout => \u4|tijd_secbcd|bcd_out[3]~3_combout\);

-- Location: LCFF_X69_Y22_N23
\u4|tijd_line[11][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|tijd_secbcd|bcd_out[3]~3_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|tijd_line[11][3]~regout\);

-- Location: LCCOMB_X65_Y24_N24
\u4|maximale2bcd|U5bcd[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|U5bcd[1]~1_combout\ = (\u6|rpm_max_int\(7) & ((\u6|rpm_max_int\(5) & (\u6|rpm_max_int\(4) & \u6|rpm_max_int\(6))) # (!\u6|rpm_max_int\(5) & ((!\u6|rpm_max_int\(6)))))) # (!\u6|rpm_max_int\(7) & (\u6|rpm_max_int\(6) & 
-- ((\u6|rpm_max_int\(5)) # (\u6|rpm_max_int\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(7),
	datab => \u6|rpm_max_int\(5),
	datac => \u6|rpm_max_int\(4),
	datad => \u6|rpm_max_int\(6),
	combout => \u4|maximale2bcd|U5bcd[1]~1_combout\);

-- Location: LCCOMB_X66_Y24_N30
\u4|maximale2bcd|U2bcd[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|U2bcd[3]~3_combout\ = \u4|maximale2bcd|U1bcd[2]~1_combout\ $ ((((!\u4|maximale2bcd|U1bcd[0]~2_combout\ & !\u6|rpm_max_int\(3))) # (!\u4|maximale2bcd|U1bcd[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|maximale2bcd|U1bcd[0]~2_combout\,
	datab => \u4|maximale2bcd|U1bcd[1]~0_combout\,
	datac => \u6|rpm_max_int\(3),
	datad => \u4|maximale2bcd|U1bcd[2]~1_combout\,
	combout => \u4|maximale2bcd|U2bcd[3]~3_combout\);

-- Location: LCCOMB_X66_Y24_N20
\u4|maximale2bcd|U5bcd[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|U5bcd[2]~0_combout\ = (\u6|rpm_max_int\(7) & (\u4|maximale2bcd|U2bcd[3]~3_combout\ & ((\u6|rpm_max_int\(5)) # (\u6|rpm_max_int\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(5),
	datab => \u6|rpm_max_int\(6),
	datac => \u6|rpm_max_int\(7),
	datad => \u4|maximale2bcd|U2bcd[3]~3_combout\,
	combout => \u4|maximale2bcd|U5bcd[2]~0_combout\);

-- Location: LCCOMB_X65_Y24_N2
\u4|maximale2bcd|is_gt_4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|is_gt_4~0_combout\ = (\u6|rpm_max_int\(7) & \u6|rpm_max_int\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(7),
	datad => \u6|rpm_max_int\(6),
	combout => \u4|maximale2bcd|is_gt_4~0_combout\);

-- Location: LCCOMB_X66_Y24_N16
\u4|maximale2bcd|is_gt_4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|is_gt_4~1_combout\ = (\u4|maximale2bcd|is_gt_4~0_combout\ & ((\u6|rpm_max_int\(5)) # ((\u6|rpm_max_int\(4)) # (\u6|rpm_max_int\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(5),
	datab => \u6|rpm_max_int\(4),
	datac => \u6|rpm_max_int\(3),
	datad => \u4|maximale2bcd|is_gt_4~0_combout\,
	combout => \u4|maximale2bcd|is_gt_4~1_combout\);

-- Location: LCCOMB_X66_Y24_N8
\u4|maximale2bcd|U3bcd[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|U3bcd[3]~3_combout\ = \u4|maximale2bcd|U2bcd[2]~1_combout\ $ ((((!\u6|rpm_max_int\(2) & !\u4|maximale2bcd|U2bcd[0]~2_combout\)) # (!\u4|maximale2bcd|U2bcd[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(2),
	datab => \u4|maximale2bcd|U2bcd[0]~2_combout\,
	datac => \u4|maximale2bcd|U2bcd[2]~1_combout\,
	datad => \u4|maximale2bcd|U2bcd[1]~0_combout\,
	combout => \u4|maximale2bcd|U3bcd[3]~3_combout\);

-- Location: LCCOMB_X67_Y24_N6
\u4|maximale2bcd|Add6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|Add6~1_combout\ = (\u4|maximale2bcd|U2bcd[3]~3_combout\ $ (!\u4|maximale2bcd|is_gt_4~1_combout\)) # (!\u4|maximale2bcd|U3bcd[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|maximale2bcd|U2bcd[3]~3_combout\,
	datab => \u4|maximale2bcd|is_gt_4~1_combout\,
	datad => \u4|maximale2bcd|U3bcd[3]~3_combout\,
	combout => \u4|maximale2bcd|Add6~1_combout\);

-- Location: LCCOMB_X67_Y24_N0
\u4|maximale2bcd|bcd_out[7]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|bcd_out[7]~16_combout\ = (\u4|maximale2bcd|U5bcd[1]~2_combout\ & (((!\u4|maximale2bcd|Add6~1_combout\)))) # (!\u4|maximale2bcd|U5bcd[1]~2_combout\ & (!\u4|maximale2bcd|U5bcd[1]~1_combout\ & (\u4|maximale2bcd|U5bcd[2]~0_combout\ & 
-- \u4|maximale2bcd|Add6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|maximale2bcd|U5bcd[1]~2_combout\,
	datab => \u4|maximale2bcd|U5bcd[1]~1_combout\,
	datac => \u4|maximale2bcd|U5bcd[2]~0_combout\,
	datad => \u4|maximale2bcd|Add6~1_combout\,
	combout => \u4|maximale2bcd|bcd_out[7]~16_combout\);

-- Location: LCFF_X67_Y24_N1
\u4|maximale_line[11][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|maximale2bcd|bcd_out[7]~16_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|maximale_line[11][3]~regout\);

-- Location: LCCOMB_X68_Y23_N6
\u4|Mux263~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~123_combout\ = (\u4|aline~8_combout\ & ((\u4|line_counter\(1) & ((\u4|maximale_line[11][3]~regout\))) # (!\u4|line_counter\(1) & (\u4|totale_omw_line[11][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_line[11][3]~regout\,
	datab => \u4|line_counter\(1),
	datac => \u4|maximale_line[11][3]~regout\,
	datad => \u4|aline~8_combout\,
	combout => \u4|Mux263~123_combout\);

-- Location: LCCOMB_X68_Y23_N16
\u4|Mux263~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~124_combout\ = (!\u4|character_counter\(2) & ((\u4|Mux263~123_combout\) # ((\u4|Mux263~35_combout\ & \u4|tijd_line[11][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|Mux263~35_combout\,
	datac => \u4|tijd_line[11][3]~regout\,
	datad => \u4|Mux263~123_combout\,
	combout => \u4|Mux263~124_combout\);

-- Location: LCCOMB_X68_Y23_N22
\u4|Mux263~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~125_combout\ = (\u4|Mux263~99_combout\ & ((\u4|Mux263~124_combout\) # ((\u4|character_counter\(2) & \u4|drive~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|Mux263~99_combout\,
	datac => \u4|Mux263~124_combout\,
	datad => \u4|drive~2_combout\,
	combout => \u4|Mux263~125_combout\);

-- Location: LCCOMB_X67_Y23_N24
\u4|Mux263~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~64_combout\ = (\u4|character_counter\(2) & (\u4|line_counter\(0) $ (!\u4|line_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|line_counter\(0),
	datac => \u4|line_counter\(1),
	datad => \u4|character_counter\(2),
	combout => \u4|Mux263~64_combout\);

-- Location: LCCOMB_X67_Y23_N14
\u4|Mux263~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~62_combout\ = (!\u4|character_counter\(2) & (\u4|RPM_line[1][6]~regout\ & ((\u4|line_counter\(1)) # (!\u4|line_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|line_counter\(0),
	datac => \u4|line_counter\(1),
	datad => \u4|RPM_line[1][6]~regout\,
	combout => \u4|Mux263~62_combout\);

-- Location: LCCOMB_X67_Y24_N14
\u4|maximale2bcd|bcd_out[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|maximale2bcd|bcd_out[3]~15_combout\ = (\u4|maximale2bcd|U3bcd[1]~0_combout\ & (!\u6|rpm_max_int\(1) & (!\u4|maximale2bcd|U3bcd[0]~2_combout\))) # (!\u4|maximale2bcd|U3bcd[1]~0_combout\ & (\u4|maximale2bcd|U3bcd[2]~1_combout\ & ((\u6|rpm_max_int\(1)) # 
-- (\u4|maximale2bcd|U3bcd[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6|rpm_max_int\(1),
	datab => \u4|maximale2bcd|U3bcd[1]~0_combout\,
	datac => \u4|maximale2bcd|U3bcd[0]~2_combout\,
	datad => \u4|maximale2bcd|U3bcd[2]~1_combout\,
	combout => \u4|maximale2bcd|bcd_out[3]~15_combout\);

-- Location: LCFF_X67_Y24_N15
\u4|maximale_line[12][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|maximale2bcd|bcd_out[3]~15_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|maximale_line[12][3]~regout\);

-- Location: LCCOMB_X68_Y22_N20
\u0|omwentel255[7]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel255[7]~3_combout\ = (\hall_sens~combout\ & ((\u0|omwentel255[7]~2_combout\) # ((\u0|Equal0~1_combout\ & \u0|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255[7]~2_combout\,
	datab => \hall_sens~combout\,
	datac => \u0|Equal0~1_combout\,
	datad => \u0|Equal0~0_combout\,
	combout => \u0|omwentel255[7]~3_combout\);

-- Location: CLKCTRL_G6
\u0|omwentel255[7]~3clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u0|omwentel255[7]~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u0|omwentel255[7]~3clkctrl_outclk\);

-- Location: LCCOMB_X68_Y25_N30
\u0|omwentel255[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel255\(0) = (\BUTTON~combout\(3) & ((GLOBAL(\u0|omwentel255[7]~3clkctrl_outclk\) & (\u0|Add1~22_combout\)) # (!GLOBAL(\u0|omwentel255[7]~3clkctrl_outclk\) & ((\u0|omwentel255\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add1~22_combout\,
	datab => \u0|omwentel255\(0),
	datac => \BUTTON~combout\(3),
	datad => \u0|omwentel255[7]~3clkctrl_outclk\,
	combout => \u0|omwentel255\(0));

-- Location: LCCOMB_X68_Y25_N16
\u0|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~2_combout\ = (\u0|omwentel255\(1) & (!\u0|Add1~1\)) # (!\u0|omwentel255\(1) & ((\u0|Add1~1\) # (GND)))
-- \u0|Add1~3\ = CARRY((!\u0|Add1~1\) # (!\u0|omwentel255\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|omwentel255\(1),
	datad => VCC,
	cin => \u0|Add1~1\,
	combout => \u0|Add1~2_combout\,
	cout => \u0|Add1~3\);

-- Location: LCCOMB_X68_Y22_N16
\u0|Add1~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~23_combout\ = (\u0|Equal0~0_combout\ & (\u0|Equal0~1_combout\ & \u0|Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~0_combout\,
	datac => \u0|Equal0~1_combout\,
	datad => \u0|Add1~2_combout\,
	combout => \u0|Add1~23_combout\);

-- Location: LCCOMB_X68_Y22_N8
\u0|omwentel255[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel255\(1) = (\BUTTON~combout\(3) & ((GLOBAL(\u0|omwentel255[7]~3clkctrl_outclk\) & ((\u0|Add1~23_combout\))) # (!GLOBAL(\u0|omwentel255[7]~3clkctrl_outclk\) & (\u0|omwentel255\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u0|omwentel255\(1),
	datac => \u0|Add1~23_combout\,
	datad => \u0|omwentel255[7]~3clkctrl_outclk\,
	combout => \u0|omwentel255\(1));

-- Location: LCCOMB_X68_Y25_N18
\u0|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~4_combout\ = (\u0|omwentel255\(2) & (\u0|Add1~3\ $ (GND))) # (!\u0|omwentel255\(2) & (!\u0|Add1~3\ & VCC))
-- \u0|Add1~5\ = CARRY((\u0|omwentel255\(2) & !\u0|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|omwentel255\(2),
	datad => VCC,
	cin => \u0|Add1~3\,
	combout => \u0|Add1~4_combout\,
	cout => \u0|Add1~5\);

-- Location: LCCOMB_X68_Y22_N24
\u0|Add1~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~21_combout\ = (\u0|Equal0~0_combout\ & (\u0|Equal0~1_combout\ & \u0|Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~0_combout\,
	datac => \u0|Equal0~1_combout\,
	datad => \u0|Add1~4_combout\,
	combout => \u0|Add1~21_combout\);

-- Location: LCCOMB_X68_Y22_N26
\u0|omwentel255[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel255\(2) = (\BUTTON~combout\(3) & ((GLOBAL(\u0|omwentel255[7]~3clkctrl_outclk\) & ((\u0|Add1~21_combout\))) # (!GLOBAL(\u0|omwentel255[7]~3clkctrl_outclk\) & (\u0|omwentel255\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u0|omwentel255\(2),
	datac => \u0|Add1~21_combout\,
	datad => \u0|omwentel255[7]~3clkctrl_outclk\,
	combout => \u0|omwentel255\(2));

-- Location: LCCOMB_X68_Y25_N22
\u0|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~8_combout\ = (\u0|omwentel255\(4) & (\u0|Add1~7\ $ (GND))) # (!\u0|omwentel255\(4) & (!\u0|Add1~7\ & VCC))
-- \u0|Add1~9\ = CARRY((\u0|omwentel255\(4) & !\u0|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(4),
	datad => VCC,
	cin => \u0|Add1~7\,
	combout => \u0|Add1~8_combout\,
	cout => \u0|Add1~9\);

-- Location: LCCOMB_X68_Y25_N6
\u0|Add1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~17_combout\ = (\u0|Equal0~0_combout\ & (\u0|Equal0~1_combout\ & \u0|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~0_combout\,
	datac => \u0|Equal0~1_combout\,
	datad => \u0|Add1~8_combout\,
	combout => \u0|Add1~17_combout\);

-- Location: LCCOMB_X67_Y25_N0
\u0|omwentel255[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel255\(4) = (\BUTTON~combout\(3) & ((GLOBAL(\u0|omwentel255[7]~3clkctrl_outclk\) & ((\u0|Add1~17_combout\))) # (!GLOBAL(\u0|omwentel255[7]~3clkctrl_outclk\) & (\u0|omwentel255\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u0|omwentel255\(4),
	datac => \u0|omwentel255[7]~3clkctrl_outclk\,
	datad => \u0|Add1~17_combout\,
	combout => \u0|omwentel255\(4));

-- Location: LCCOMB_X68_Y25_N24
\u0|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~10_combout\ = (\u0|omwentel255\(5) & (!\u0|Add1~9\)) # (!\u0|omwentel255\(5) & ((\u0|Add1~9\) # (GND)))
-- \u0|Add1~11\ = CARRY((!\u0|Add1~9\) # (!\u0|omwentel255\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(5),
	datad => VCC,
	cin => \u0|Add1~9\,
	combout => \u0|Add1~10_combout\,
	cout => \u0|Add1~11\);

-- Location: LCCOMB_X68_Y25_N26
\u0|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~12_combout\ = (\u0|omwentel255\(6) & (\u0|Add1~11\ $ (GND))) # (!\u0|omwentel255\(6) & (!\u0|Add1~11\ & VCC))
-- \u0|Add1~13\ = CARRY((\u0|omwentel255\(6) & !\u0|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u0|omwentel255\(6),
	datad => VCC,
	cin => \u0|Add1~11\,
	combout => \u0|Add1~12_combout\,
	cout => \u0|Add1~13\);

-- Location: LCCOMB_X68_Y25_N8
\u0|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~18_combout\ = (\u0|Equal0~0_combout\ & (\u0|Equal0~1_combout\ & \u0|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~0_combout\,
	datac => \u0|Equal0~1_combout\,
	datad => \u0|Add1~12_combout\,
	combout => \u0|Add1~18_combout\);

-- Location: LCCOMB_X66_Y25_N30
\u0|omwentel255[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel255\(6) = (\BUTTON~combout\(3) & ((GLOBAL(\u0|omwentel255[7]~3clkctrl_outclk\) & ((\u0|Add1~18_combout\))) # (!GLOBAL(\u0|omwentel255[7]~3clkctrl_outclk\) & (\u0|omwentel255\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u0|omwentel255\(6),
	datac => \u0|omwentel255[7]~3clkctrl_outclk\,
	datad => \u0|Add1~18_combout\,
	combout => \u0|omwentel255\(6));

-- Location: LCCOMB_X68_Y25_N28
\u0|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~14_combout\ = \u0|Add1~13\ $ (\u0|omwentel255\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u0|omwentel255\(7),
	cin => \u0|Add1~13\,
	combout => \u0|Add1~14_combout\);

-- Location: LCCOMB_X66_Y25_N2
\u0|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~16_combout\ = (\u0|Equal0~0_combout\ & (\u0|Equal0~1_combout\ & \u0|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Equal0~0_combout\,
	datac => \u0|Equal0~1_combout\,
	datad => \u0|Add1~14_combout\,
	combout => \u0|Add1~16_combout\);

-- Location: LCCOMB_X66_Y25_N8
\u0|omwentel255[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel255\(7) = (\BUTTON~combout\(3) & ((GLOBAL(\u0|omwentel255[7]~3clkctrl_outclk\) & ((\u0|Add1~16_combout\))) # (!GLOBAL(\u0|omwentel255[7]~3clkctrl_outclk\) & (\u0|omwentel255\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(7),
	datab => \BUTTON~combout\(3),
	datac => \u0|omwentel255[7]~3clkctrl_outclk\,
	datad => \u0|Add1~16_combout\,
	combout => \u0|omwentel255\(7));

-- Location: LCCOMB_X67_Y25_N14
\u4|totale_omw_2bcd|U1bcd[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|U1bcd[1]~0_combout\ = (\u0|omwentel255\(5) & (!\u0|omwentel255\(7) & ((\u0|omwentel255\(4)) # (!\u0|omwentel255\(6))))) # (!\u0|omwentel255\(5) & (\u0|omwentel255\(7) & ((\u0|omwentel255\(6)) # (!\u0|omwentel255\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(5),
	datab => \u0|omwentel255\(4),
	datac => \u0|omwentel255\(6),
	datad => \u0|omwentel255\(7),
	combout => \u4|totale_omw_2bcd|U1bcd[1]~0_combout\);

-- Location: LCCOMB_X67_Y25_N20
\u4|totale_omw_2bcd|U1bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|U1bcd[2]~1_combout\ = (\u0|omwentel255\(4) & (!\u0|omwentel255\(5) & (!\u0|omwentel255\(6) & \u0|omwentel255\(7)))) # (!\u0|omwentel255\(4) & (\u0|omwentel255\(6) & (\u0|omwentel255\(5) $ (!\u0|omwentel255\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(5),
	datab => \u0|omwentel255\(4),
	datac => \u0|omwentel255\(6),
	datad => \u0|omwentel255\(7),
	combout => \u4|totale_omw_2bcd|U1bcd[2]~1_combout\);

-- Location: LCCOMB_X68_Y25_N2
\u0|Add1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~19_combout\ = (\u0|Equal0~1_combout\ & (\u0|Add1~10_combout\ & \u0|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|Equal0~1_combout\,
	datac => \u0|Add1~10_combout\,
	datad => \u0|Equal0~0_combout\,
	combout => \u0|Add1~19_combout\);

-- Location: LCCOMB_X67_Y25_N30
\u0|omwentel255[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|omwentel255\(5) = (\BUTTON~combout\(3) & ((GLOBAL(\u0|omwentel255[7]~3clkctrl_outclk\) & ((\u0|Add1~19_combout\))) # (!GLOBAL(\u0|omwentel255[7]~3clkctrl_outclk\) & (\u0|omwentel255\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u0|omwentel255\(5),
	datac => \u0|omwentel255[7]~3clkctrl_outclk\,
	datad => \u0|Add1~19_combout\,
	combout => \u0|omwentel255\(5));

-- Location: LCCOMB_X67_Y25_N10
\u4|totale_omw_2bcd|U1bcd[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|U1bcd[0]~2_combout\ = (\u0|omwentel255\(4) & (\u0|omwentel255\(6) $ (((\u0|omwentel255\(5)) # (!\u0|omwentel255\(7)))))) # (!\u0|omwentel255\(4) & ((\u0|omwentel255\(7) & (!\u0|omwentel255\(5) & !\u0|omwentel255\(6))) # 
-- (!\u0|omwentel255\(7) & (\u0|omwentel255\(5) & \u0|omwentel255\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(7),
	datab => \u0|omwentel255\(4),
	datac => \u0|omwentel255\(5),
	datad => \u0|omwentel255\(6),
	combout => \u4|totale_omw_2bcd|U1bcd[0]~2_combout\);

-- Location: LCCOMB_X67_Y25_N18
\u4|totale_omw_2bcd|U2bcd[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|U2bcd[0]~2_combout\ = (\u0|omwentel255\(3) & (!\u4|totale_omw_2bcd|U1bcd[1]~0_combout\ & (!\u4|totale_omw_2bcd|U1bcd[2]~1_combout\))) # (!\u0|omwentel255\(3) & ((\u4|totale_omw_2bcd|U1bcd[2]~1_combout\) # 
-- ((\u4|totale_omw_2bcd|U1bcd[1]~0_combout\ & \u4|totale_omw_2bcd|U1bcd[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(3),
	datab => \u4|totale_omw_2bcd|U1bcd[1]~0_combout\,
	datac => \u4|totale_omw_2bcd|U1bcd[2]~1_combout\,
	datad => \u4|totale_omw_2bcd|U1bcd[0]~2_combout\,
	combout => \u4|totale_omw_2bcd|U2bcd[0]~2_combout\);

-- Location: LCCOMB_X67_Y25_N26
\u4|totale_omw_2bcd|U2bcd[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|U2bcd[1]~0_combout\ = (\u0|omwentel255\(3) & (((\u4|totale_omw_2bcd|U1bcd[0]~2_combout\)))) # (!\u0|omwentel255\(3) & ((\u4|totale_omw_2bcd|U1bcd[2]~1_combout\ & ((!\u4|totale_omw_2bcd|U1bcd[0]~2_combout\))) # 
-- (!\u4|totale_omw_2bcd|U1bcd[2]~1_combout\ & (!\u4|totale_omw_2bcd|U1bcd[1]~0_combout\ & \u4|totale_omw_2bcd|U1bcd[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(3),
	datab => \u4|totale_omw_2bcd|U1bcd[1]~0_combout\,
	datac => \u4|totale_omw_2bcd|U1bcd[2]~1_combout\,
	datad => \u4|totale_omw_2bcd|U1bcd[0]~2_combout\,
	combout => \u4|totale_omw_2bcd|U2bcd[1]~0_combout\);

-- Location: LCCOMB_X67_Y24_N4
\u4|totale_omw_2bcd|U3bcd[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|U3bcd[0]~2_combout\ = (\u4|totale_omw_2bcd|U2bcd[2]~1_combout\ & (!\u0|omwentel255\(2))) # (!\u4|totale_omw_2bcd|U2bcd[2]~1_combout\ & ((\u0|omwentel255\(2) & ((!\u4|totale_omw_2bcd|U2bcd[1]~0_combout\))) # (!\u0|omwentel255\(2) & 
-- (\u4|totale_omw_2bcd|U2bcd[0]~2_combout\ & \u4|totale_omw_2bcd|U2bcd[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_2bcd|U2bcd[2]~1_combout\,
	datab => \u0|omwentel255\(2),
	datac => \u4|totale_omw_2bcd|U2bcd[0]~2_combout\,
	datad => \u4|totale_omw_2bcd|U2bcd[1]~0_combout\,
	combout => \u4|totale_omw_2bcd|U3bcd[0]~2_combout\);

-- Location: LCCOMB_X67_Y24_N24
\u4|totale_omw_2bcd|U3bcd[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|U3bcd[1]~0_combout\ = (\u4|totale_omw_2bcd|U2bcd[2]~1_combout\ & (\u0|omwentel255\(2) $ (((!\u4|totale_omw_2bcd|U2bcd[0]~2_combout\))))) # (!\u4|totale_omw_2bcd|U2bcd[2]~1_combout\ & (\u4|totale_omw_2bcd|U2bcd[0]~2_combout\ & 
-- ((\u0|omwentel255\(2)) # (!\u4|totale_omw_2bcd|U2bcd[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_2bcd|U2bcd[2]~1_combout\,
	datab => \u0|omwentel255\(2),
	datac => \u4|totale_omw_2bcd|U2bcd[1]~0_combout\,
	datad => \u4|totale_omw_2bcd|U2bcd[0]~2_combout\,
	combout => \u4|totale_omw_2bcd|U3bcd[1]~0_combout\);

-- Location: LCCOMB_X67_Y24_N18
\u4|totale_omw_2bcd|U3bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|U3bcd[2]~1_combout\ = (\u4|totale_omw_2bcd|U2bcd[1]~0_combout\ & (((!\u0|omwentel255\(2) & !\u4|totale_omw_2bcd|U2bcd[0]~2_combout\)))) # (!\u4|totale_omw_2bcd|U2bcd[1]~0_combout\ & (\u4|totale_omw_2bcd|U2bcd[2]~1_combout\ & 
-- ((\u0|omwentel255\(2)) # (\u4|totale_omw_2bcd|U2bcd[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_2bcd|U2bcd[2]~1_combout\,
	datab => \u0|omwentel255\(2),
	datac => \u4|totale_omw_2bcd|U2bcd[1]~0_combout\,
	datad => \u4|totale_omw_2bcd|U2bcd[0]~2_combout\,
	combout => \u4|totale_omw_2bcd|U3bcd[2]~1_combout\);

-- Location: LCCOMB_X67_Y24_N28
\u4|totale_omw_2bcd|bcd_out[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|totale_omw_2bcd|bcd_out[3]~15_combout\ = (\u4|totale_omw_2bcd|U3bcd[1]~0_combout\ & (!\u0|omwentel255\(1) & (!\u4|totale_omw_2bcd|U3bcd[0]~2_combout\))) # (!\u4|totale_omw_2bcd|U3bcd[1]~0_combout\ & (\u4|totale_omw_2bcd|U3bcd[2]~1_combout\ & 
-- ((\u0|omwentel255\(1)) # (\u4|totale_omw_2bcd|U3bcd[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|omwentel255\(1),
	datab => \u4|totale_omw_2bcd|U3bcd[0]~2_combout\,
	datac => \u4|totale_omw_2bcd|U3bcd[1]~0_combout\,
	datad => \u4|totale_omw_2bcd|U3bcd[2]~1_combout\,
	combout => \u4|totale_omw_2bcd|bcd_out[3]~15_combout\);

-- Location: LCFF_X67_Y24_N29
\u4|totale_omw_line[12][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|totale_omw_2bcd|bcd_out[3]~15_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|totale_omw_line[12][3]~regout\);

-- Location: LCCOMB_X67_Y24_N2
\u4|Mux263~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~120_combout\ = (\u4|line_counter\(1) & (\u4|maximale_line[12][3]~regout\)) # (!\u4|line_counter\(1) & ((\u4|totale_omw_line[12][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|maximale_line[12][3]~regout\,
	datac => \u4|totale_omw_line[12][3]~regout\,
	datad => \u4|line_counter\(1),
	combout => \u4|Mux263~120_combout\);

-- Location: LCCOMB_X66_Y22_N14
\u4|Mux263~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~121_combout\ = (!\KNOP~combout\(1) & ((\u4|Mux263~62_combout\) # ((\u4|Mux263~64_combout\ & \u4|Mux263~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \u4|Mux263~64_combout\,
	datac => \u4|Mux263~62_combout\,
	datad => \u4|Mux263~120_combout\,
	combout => \u4|Mux263~121_combout\);

-- Location: LCCOMB_X66_Y22_N30
\u4|Mux263~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~118_combout\ = (\u4|line_counter\(1) & ((\u4|line_counter\(0) & (\u4|RPM_line[8][3]~regout\)) # (!\u4|line_counter\(0) & ((\u4|RPM_line[1][6]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|RPM_line[8][3]~regout\,
	datab => \u4|line_counter\(0),
	datac => \u4|RPM_line[1][6]~regout\,
	datad => \u4|line_counter\(1),
	combout => \u4|Mux263~118_combout\);

-- Location: LCCOMB_X66_Y23_N16
\u4|Mux263~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~59_combout\ = (\KNOP~combout\(1) & !\u4|character_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datad => \u4|character_counter\(2),
	combout => \u4|Mux263~59_combout\);

-- Location: LCCOMB_X66_Y22_N24
\u4|Mux263~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~119_combout\ = (\u4|Mux263~59_combout\ & ((\u4|Mux263~118_combout\) # ((\u4|tijd_line[8][3]~regout\ & \u4|Mux58~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|tijd_line[8][3]~regout\,
	datab => \u4|Mux263~118_combout\,
	datac => \u4|Mux58~1_combout\,
	datad => \u4|Mux263~59_combout\,
	combout => \u4|Mux263~119_combout\);

-- Location: LCCOMB_X65_Y22_N4
\u4|Mux263~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~122_combout\ = (!\SW~combout\(0) & ((\u4|Mux263~121_combout\) # (\u4|Mux263~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datac => \u4|Mux263~121_combout\,
	datad => \u4|Mux263~119_combout\,
	combout => \u4|Mux263~122_combout\);

-- Location: LCCOMB_X66_Y22_N12
\u4|Mux263~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~115_combout\ = (!\u4|line_counter\(1) & ((\KNOP~combout\(1) & (!\u4|line_counter\(0) & \u4|RPM_line[1][6]~regout\)) # (!\KNOP~combout\(1) & (\u4|line_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \u4|line_counter\(0),
	datac => \u4|RPM_line[1][6]~regout\,
	datad => \u4|line_counter\(1),
	combout => \u4|Mux263~115_combout\);

-- Location: LCCOMB_X65_Y22_N28
\u4|Mux263~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~116_combout\ = (\u4|totale_omw_line[13][3]~regout\ & ((\u4|Mux263~25_combout\) # ((!\u4|character_counter\(2) & \u4|Mux263~115_combout\)))) # (!\u4|totale_omw_line[13][3]~regout\ & (!\u4|character_counter\(2) & (\u4|Mux263~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|totale_omw_line[13][3]~regout\,
	datab => \u4|character_counter\(2),
	datac => \u4|Mux263~115_combout\,
	datad => \u4|Mux263~25_combout\,
	combout => \u4|Mux263~116_combout\);

-- Location: LCCOMB_X65_Y22_N30
\u4|Mux263~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux263~117_combout\ = (\u4|Mux263~18_combout\) # ((!\SW~combout\(0) & \u4|Mux263~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~18_combout\,
	datac => \SW~combout\(0),
	datad => \u4|Mux263~116_combout\,
	combout => \u4|Mux263~117_combout\);

-- Location: LCCOMB_X65_Y22_N26
\u4|Mux260~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux260~0_combout\ = (\u4|character_counter\(0) & (!\u4|character_counter\(1) & (\u4|Mux263~122_combout\))) # (!\u4|character_counter\(0) & ((\u4|character_counter\(1)) # ((\u4|Mux263~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|character_counter\(1),
	datac => \u4|Mux263~122_combout\,
	datad => \u4|Mux263~117_combout\,
	combout => \u4|Mux260~0_combout\);

-- Location: LCCOMB_X65_Y22_N12
\u4|Mux260~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux260~1_combout\ = (\u4|character_counter\(1) & ((\u4|Mux260~0_combout\ & ((\u4|Mux263~125_combout\))) # (!\u4|Mux260~0_combout\ & (\u4|Mux263~114_combout\)))) # (!\u4|character_counter\(1) & (((\u4|Mux260~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux263~114_combout\,
	datab => \u4|character_counter\(1),
	datac => \u4|Mux263~125_combout\,
	datad => \u4|Mux260~0_combout\,
	combout => \u4|Mux260~1_combout\);

-- Location: LCCOMB_X65_Y22_N0
\u4|Mux260~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux260~4_combout\ = (\u4|character_counter\(3) & ((\u4|Mux260~1_combout\))) # (!\u4|character_counter\(3) & (\u4|Mux260~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|character_counter\(3),
	datac => \u4|Mux260~3_combout\,
	datad => \u4|Mux260~1_combout\,
	combout => \u4|Mux260~4_combout\);

-- Location: LCFF_X65_Y22_N1
\u4|data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Mux260~4_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.write_char~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|data\(3));

-- Location: LCCOMB_X77_Y26_N2
\u4|lcdm|Selector96~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector96~1_combout\ = (\u4|lcdm|current_state.command_init_8~regout\) # (((\u4|lcdm|current_state.wait_for_command~regout\ & \u4|data\(3))) # (!\u4|lcdm|Selector96~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|lcdm|current_state.command_init_8~regout\,
	datac => \u4|data\(3),
	datad => \u4|lcdm|Selector96~0_combout\,
	combout => \u4|lcdm|Selector96~1_combout\);

-- Location: LCFF_X77_Y26_N3
\u4|lcdm|LCD_DB[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector96~1_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[3]~reg0_regout\);

-- Location: LCFF_X77_Y26_N17
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

-- Location: LCCOMB_X71_Y23_N14
\u4|Mux259~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux259~4_combout\ = (\KNOP~combout\(1) & (!\u4|character_counter\(1) & (\u4|line_counter\(1) $ (!\u4|line_counter\(0))))) # (!\KNOP~combout\(1) & (\u4|line_counter\(0) $ (((!\u4|character_counter\(1)) # (!\u4|line_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \u4|line_counter\(1),
	datac => \u4|line_counter\(0),
	datad => \u4|character_counter\(1),
	combout => \u4|Mux259~4_combout\);

-- Location: LCCOMB_X71_Y23_N4
\u4|Mux259~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux259~3_combout\ = (\KNOP~combout\(1) & (\u4|line_counter\(1) & (\u4|character_counter\(0) & \u4|character_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \u4|line_counter\(1),
	datac => \u4|character_counter\(0),
	datad => \u4|character_counter\(1),
	combout => \u4|Mux259~3_combout\);

-- Location: LCCOMB_X70_Y23_N24
\u4|Mux259~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux259~5_combout\ = (\u4|Mux263~48_combout\ & ((\u4|Mux259~3_combout\) # ((!\u4|character_counter\(0) & \u4|Mux259~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|Mux263~48_combout\,
	datac => \u4|Mux259~4_combout\,
	datad => \u4|Mux259~3_combout\,
	combout => \u4|Mux259~5_combout\);

-- Location: LCCOMB_X70_Y23_N20
\u4|aline~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~25_combout\ = (\u4|line_counter\(0) & (\KNOP~combout\(1) & \u4|line_counter\(1))) # (!\u4|line_counter\(0) & ((!\u4|line_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datac => \u4|line_counter\(0),
	datad => \u4|line_counter\(1),
	combout => \u4|aline~25_combout\);

-- Location: LCCOMB_X70_Y23_N2
\u4|aline~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~28_combout\ = (\SW~combout\(0) & (((\u4|goto20~0_combout\)))) # (!\SW~combout\(0) & (\u4|RPM_line[1][6]~regout\ & (\u4|aline~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|RPM_line[1][6]~regout\,
	datab => \SW~combout\(0),
	datac => \u4|aline~25_combout\,
	datad => \u4|goto20~0_combout\,
	combout => \u4|aline~28_combout\);

-- Location: LCCOMB_X69_Y23_N24
\u4|aline~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~19_combout\ = (\u4|line_counter\(1) & (!\KNOP~combout\(1) & ((\u4|RPM_line[1][6]~regout\)))) # (!\u4|line_counter\(1) & ((\u4|line_counter\(0)) # ((\KNOP~combout\(1) & \u4|RPM_line[1][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \KNOP~combout\(1),
	datac => \u4|line_counter\(0),
	datad => \u4|RPM_line[1][6]~regout\,
	combout => \u4|aline~19_combout\);

-- Location: LCCOMB_X70_Y23_N22
\u4|aline~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~20_combout\ = (!\SW~combout\(0) & \u4|aline~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(0),
	datad => \u4|aline~19_combout\,
	combout => \u4|aline~20_combout\);

-- Location: LCCOMB_X69_Y23_N26
\u4|aline~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~21_combout\ = (\u4|line_counter\(1) & (\u4|RPM_line[1][6]~regout\ & ((\u4|line_counter\(0)) # (!\KNOP~combout\(1))))) # (!\u4|line_counter\(1) & (((\u4|line_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \KNOP~combout\(1),
	datac => \u4|line_counter\(0),
	datad => \u4|RPM_line[1][6]~regout\,
	combout => \u4|aline~21_combout\);

-- Location: LCCOMB_X69_Y23_N4
\u4|aline~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~22_combout\ = (\SW~combout\(0) & (\u4|line_counter\(1) & (!\u4|line_counter\(0)))) # (!\SW~combout\(0) & (((\u4|aline~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \SW~combout\(0),
	datac => \u4|line_counter\(0),
	datad => \u4|aline~21_combout\,
	combout => \u4|aline~22_combout\);

-- Location: LCCOMB_X69_Y23_N10
\u4|aline~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~23_combout\ = (\u4|line_counter\(1) & (\u4|RPM_line[1][6]~regout\ & ((\KNOP~combout\(1)) # (!\u4|line_counter\(0))))) # (!\u4|line_counter\(1) & (((\u4|line_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \KNOP~combout\(1),
	datac => \u4|line_counter\(0),
	datad => \u4|RPM_line[1][6]~regout\,
	combout => \u4|aline~23_combout\);

-- Location: LCCOMB_X70_Y23_N28
\u4|aline~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~24_combout\ = (!\SW~combout\(0) & \u4|aline~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(0),
	datad => \u4|aline~23_combout\,
	combout => \u4|aline~24_combout\);

-- Location: LCCOMB_X70_Y23_N10
\u4|Mux259~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux259~1_combout\ = (\u4|character_counter\(1) & (((\u4|aline~22_combout\)) # (!\u4|character_counter\(0)))) # (!\u4|character_counter\(1) & (\u4|character_counter\(0) & ((\u4|aline~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|character_counter\(0),
	datac => \u4|aline~22_combout\,
	datad => \u4|aline~24_combout\,
	combout => \u4|Mux259~1_combout\);

-- Location: LCCOMB_X70_Y23_N18
\u4|Mux259~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux259~2_combout\ = (\u4|character_counter\(0) & (((\u4|Mux259~1_combout\)))) # (!\u4|character_counter\(0) & ((\u4|Mux259~1_combout\ & (\u4|aline~28_combout\)) # (!\u4|Mux259~1_combout\ & ((\u4|aline~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|aline~28_combout\,
	datac => \u4|aline~20_combout\,
	datad => \u4|Mux259~1_combout\,
	combout => \u4|Mux259~2_combout\);

-- Location: LCCOMB_X70_Y23_N14
\u4|Mux259~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux259~6_combout\ = (\u4|character_counter\(2) & ((\u4|character_counter\(3)) # ((\u4|Mux259~2_combout\)))) # (!\u4|character_counter\(2) & (!\u4|character_counter\(3) & (\u4|Mux259~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|character_counter\(3),
	datac => \u4|Mux259~5_combout\,
	datad => \u4|Mux259~2_combout\,
	combout => \u4|Mux259~6_combout\);

-- Location: LCCOMB_X69_Y23_N2
\u4|aline~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~17_combout\ = (\u4|line_counter\(1) & (\u4|RPM_line[1][6]~regout\ & ((\KNOP~combout\(1)) # (\u4|line_counter\(0))))) # (!\u4|line_counter\(1) & ((\u4|line_counter\(0) & (\KNOP~combout\(1))) # (!\u4|line_counter\(0) & 
-- ((\u4|RPM_line[1][6]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \KNOP~combout\(1),
	datac => \u4|line_counter\(0),
	datad => \u4|RPM_line[1][6]~regout\,
	combout => \u4|aline~17_combout\);

-- Location: LCCOMB_X69_Y23_N30
\u4|aline~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~27_combout\ = (\SW~combout\(0) & (\u4|line_counter\(0) & (!\u4|line_counter\(2)))) # (!\SW~combout\(0) & (((\u4|aline~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|line_counter\(0),
	datac => \u4|line_counter\(2),
	datad => \u4|aline~17_combout\,
	combout => \u4|aline~27_combout\);

-- Location: LCCOMB_X69_Y23_N12
\u4|aline~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~16_combout\ = (\u4|line_counter\(0)) # ((\KNOP~combout\(1) & \u4|RPM_line[1][6]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KNOP~combout\(1),
	datac => \u4|line_counter\(0),
	datad => \u4|RPM_line[1][6]~regout\,
	combout => \u4|aline~16_combout\);

-- Location: LCCOMB_X69_Y23_N8
\u4|aline~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~26_combout\ = (\u4|line_counter\(1) & (\SW~combout\(0) & (!\u4|line_counter\(0)))) # (!\u4|line_counter\(1) & (!\SW~combout\(0) & ((\u4|aline~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \SW~combout\(0),
	datac => \u4|line_counter\(0),
	datad => \u4|aline~16_combout\,
	combout => \u4|aline~26_combout\);

-- Location: LCCOMB_X70_Y23_N26
\u4|Mux259~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux259~0_combout\ = (\u4|character_counter\(1) & (!\u4|character_counter\(0))) # (!\u4|character_counter\(1) & ((\u4|character_counter\(0) & (\u4|aline~27_combout\)) # (!\u4|character_counter\(0) & ((\u4|aline~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|character_counter\(0),
	datac => \u4|aline~27_combout\,
	datad => \u4|aline~26_combout\,
	combout => \u4|Mux259~0_combout\);

-- Location: LCCOMB_X70_Y23_N16
\u4|aline~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~15_combout\ = (\u4|line_counter\(0) & (!\KNOP~combout\(1) & ((\u4|RPM_line[1][6]~regout\) # (!\u4|line_counter\(1))))) # (!\u4|line_counter\(0) & (((\u4|RPM_line[1][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \u4|line_counter\(0),
	datac => \u4|RPM_line[1][6]~regout\,
	datad => \u4|line_counter\(1),
	combout => \u4|aline~15_combout\);

-- Location: LCCOMB_X70_Y23_N8
\u4|aline~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|aline~18_combout\ = (\u4|line_counter\(0) & (!\KNOP~combout\(1) & ((\u4|RPM_line[1][6]~regout\) # (!\u4|line_counter\(1))))) # (!\u4|line_counter\(0) & (\u4|RPM_line[1][6]~regout\ & ((\KNOP~combout\(1)) # (!\u4|line_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KNOP~combout\(1),
	datab => \u4|line_counter\(0),
	datac => \u4|RPM_line[1][6]~regout\,
	datad => \u4|line_counter\(1),
	combout => \u4|aline~18_combout\);

-- Location: LCCOMB_X70_Y23_N0
\u4|Mux259~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux259~11_combout\ = (\SW~combout\(0) & (\u4|line_counter\(1) & ((\u4|Mux259~0_combout\)))) # (!\SW~combout\(0) & (((\u4|aline~18_combout\) # (!\u4|Mux259~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|line_counter\(1),
	datac => \u4|aline~18_combout\,
	datad => \u4|Mux259~0_combout\,
	combout => \u4|Mux259~11_combout\);

-- Location: LCCOMB_X70_Y23_N6
\u4|Mux259~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux259~12_combout\ = (\u4|character_counter\(1) & (\u4|Mux259~11_combout\ & ((\u4|Mux259~0_combout\) # (\u4|aline~15_combout\)))) # (!\u4|character_counter\(1) & (\u4|Mux259~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|Mux259~0_combout\,
	datac => \u4|aline~15_combout\,
	datad => \u4|Mux259~11_combout\,
	combout => \u4|Mux259~12_combout\);

-- Location: LCCOMB_X70_Y23_N4
\u4|Mux259~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux259~10_combout\ = (\u4|character_counter\(3) & ((\u4|Mux259~6_combout\ & (\u4|Mux259~9_combout\)) # (!\u4|Mux259~6_combout\ & ((\u4|Mux259~12_combout\))))) # (!\u4|character_counter\(3) & (((\u4|Mux259~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux259~9_combout\,
	datab => \u4|character_counter\(3),
	datac => \u4|Mux259~6_combout\,
	datad => \u4|Mux259~12_combout\,
	combout => \u4|Mux259~10_combout\);

-- Location: LCFF_X70_Y23_N5
\u4|data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Mux259~10_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.write_char~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|data\(4));

-- Location: LCCOMB_X77_Y25_N4
\u4|lcdm|Selector99~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector99~5_combout\ = (!\u4|lcdm|current_state.command_init_10~regout\ & (!\u4|lcdm|current_state.command_init_9~regout\ & \u4|lcdm|Selector99~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.command_init_10~regout\,
	datac => \u4|lcdm|current_state.command_init_9~regout\,
	datad => \u4|lcdm|Selector99~2_combout\,
	combout => \u4|lcdm|Selector99~5_combout\);

-- Location: LCCOMB_X77_Y25_N6
\u4|lcdm|Selector99~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector99~4_combout\ = (\u4|lcdm|WideOr17~0_combout\ & (\u4|lcdm|Selector99~5_combout\ & ((\u4|data\(4)) # (!\u4|lcdm|current_state.wait_for_command~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr17~0_combout\,
	datab => \u4|data\(4),
	datac => \u4|lcdm|Selector99~5_combout\,
	datad => \u4|lcdm|current_state.wait_for_command~regout\,
	combout => \u4|lcdm|Selector99~4_combout\);

-- Location: LCFF_X77_Y25_N7
\u4|lcdm|LCD_DB[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector99~4_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[4]~reg0_regout\);

-- Location: LCFF_X77_Y26_N31
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

-- Location: LCCOMB_X63_Y21_N20
\u4|Mux258~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux258~6_combout\ = (\u4|character_counter\(2) & ((\u4|character_counter\(1)) # ((\u4|character_counter\(0)) # (!\u4|aline~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|character_counter\(0),
	datac => \u4|character_counter\(2),
	datad => \u4|aline~9_combout\,
	combout => \u4|Mux258~6_combout\);

-- Location: LCCOMB_X65_Y25_N10
\u4|Mux258~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux258~3_combout\ = (\u4|character_counter\(1) & (((!\KNOP~combout\(1)) # (!\u4|Mux263~22_combout\)) # (!\u4|RPM_line[1][6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|RPM_line[1][6]~regout\,
	datab => \u4|Mux263~22_combout\,
	datac => \KNOP~combout\(1),
	datad => \u4|character_counter\(1),
	combout => \u4|Mux258~3_combout\);

-- Location: LCCOMB_X69_Y24_N6
\u4|Mux258~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux258~4_combout\ = (!\u4|RPM_line[1][6]~regout\ & ((\u4|line_counter\(1)) # (!\u4|line_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|line_counter\(1),
	datad => \u4|RPM_line[1][6]~regout\,
	combout => \u4|Mux258~4_combout\);

-- Location: LCCOMB_X69_Y24_N16
\u4|Mux258~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux258~10_combout\ = (\SW~combout\(0)) # ((\u4|Mux258~4_combout\) # ((\u4|character_counter\(0) & !\u4|character_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(0),
	datab => \u4|character_counter\(0),
	datac => \u4|Mux258~4_combout\,
	datad => \u4|character_counter\(1),
	combout => \u4|Mux258~10_combout\);

-- Location: LCCOMB_X66_Y21_N28
\u4|Mux258~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux258~5_combout\ = (!\u4|character_counter\(2) & (!\u4|character_counter\(3) & ((\u4|Mux258~3_combout\) # (\u4|Mux258~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|character_counter\(3),
	datac => \u4|Mux258~3_combout\,
	datad => \u4|Mux258~10_combout\,
	combout => \u4|Mux258~5_combout\);

-- Location: LCCOMB_X66_Y21_N10
\u4|Mux258~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux258~9_combout\ = (\u4|Mux258~6_combout\) # ((\u4|Mux258~5_combout\) # ((\u4|Mux258~8_combout\ & \u4|character_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux258~8_combout\,
	datab => \u4|Mux258~6_combout\,
	datac => \u4|character_counter\(3),
	datad => \u4|Mux258~5_combout\,
	combout => \u4|Mux258~9_combout\);

-- Location: LCFF_X66_Y21_N11
\u4|data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Mux258~9_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.write_char~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|data\(5));

-- Location: LCCOMB_X77_Y25_N22
\u4|lcdm|Selector102~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector102~1_combout\ = (\u4|data\(5)) # (!\u4|lcdm|current_state.wait_for_command~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|data\(5),
	datad => \u4|lcdm|current_state.wait_for_command~regout\,
	combout => \u4|lcdm|Selector102~1_combout\);

-- Location: LCCOMB_X76_Y24_N14
\u4|lcdm|Selector41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector41~0_combout\ = (!\u4|goto20~regout\ & (\u4|lcdm|current_state.wait_for_command~regout\ & (!\u4|home~regout\ & !\u4|goto10~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|goto20~regout\,
	datab => \u4|lcdm|current_state.wait_for_command~regout\,
	datac => \u4|home~regout\,
	datad => \u4|goto10~regout\,
	combout => \u4|lcdm|Selector41~0_combout\);

-- Location: LCCOMB_X76_Y24_N10
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

-- Location: LCFF_X76_Y24_N11
\u4|lcdm|current_state.command_goto30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector41~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|Selector38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_goto30~regout\);

-- Location: LCCOMB_X76_Y24_N24
\u4|lcdm|Selector102~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector102~0_combout\ = (!\u4|lcdm|current_state.command_goto20~regout\ & !\u4|lcdm|current_state.command_goto30~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_goto20~regout\,
	datad => \u4|lcdm|current_state.command_goto30~regout\,
	combout => \u4|lcdm|Selector102~0_combout\);

-- Location: LCCOMB_X77_Y25_N24
\u4|lcdm|Selector102~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector102~2_combout\ = (\u4|lcdm|WideOr17~0_combout\ & (\u4|lcdm|Selector102~1_combout\ & (\u4|lcdm|Selector99~5_combout\ & \u4|lcdm|Selector102~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr17~0_combout\,
	datab => \u4|lcdm|Selector102~1_combout\,
	datac => \u4|lcdm|Selector99~5_combout\,
	datad => \u4|lcdm|Selector102~0_combout\,
	combout => \u4|lcdm|Selector102~2_combout\);

-- Location: LCFF_X77_Y25_N25
\u4|lcdm|LCD_DB[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector102~2_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[5]~reg0_regout\);

-- Location: LCFF_X77_Y26_N13
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

-- Location: LCCOMB_X76_Y24_N4
\u4|lcdm|Selector105~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector105~0_combout\ = (\u4|lcdm|current_state.command_goto10~regout\) # ((\u4|lcdm|current_state.command_goto30~regout\) # ((\u4|data\(6) & \u4|lcdm|current_state.wait_for_command~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|data\(6),
	datab => \u4|lcdm|current_state.command_goto10~regout\,
	datac => \u4|lcdm|current_state.wait_for_command~regout\,
	datad => \u4|lcdm|current_state.command_goto30~regout\,
	combout => \u4|lcdm|Selector105~0_combout\);

-- Location: LCFF_X76_Y24_N5
\u4|lcdm|LCD_DB[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector105~0_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[6]~reg0_regout\);

-- Location: LCFF_X77_Y26_N27
\u4|lcdm|LCD_DB[6]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u4|lcdm|Selector88~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[6]~en_regout\);

-- Location: LCCOMB_X76_Y24_N20
\u4|lcdm|Selector40~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector40~2_combout\ = (\u4|goto20~regout\ & (\u4|lcdm|current_state.wait_for_command~regout\ & (!\u4|home~regout\ & !\u4|goto10~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|goto20~regout\,
	datab => \u4|lcdm|current_state.wait_for_command~regout\,
	datac => \u4|home~regout\,
	datad => \u4|goto10~regout\,
	combout => \u4|lcdm|Selector40~2_combout\);

-- Location: LCFF_X76_Y24_N21
\u4|lcdm|current_state.command_goto20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector40~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|Selector38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_goto20~regout\);

-- Location: LCCOMB_X76_Y24_N22
\u4|lcdm|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr2~0_combout\ = (\u4|lcdm|current_state.command_goto30~regout\) # ((\u4|lcdm|current_state.command_goto20~regout\) # (\u4|lcdm|current_state.command_goto10~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_goto30~regout\,
	datac => \u4|lcdm|current_state.command_goto20~regout\,
	datad => \u4|lcdm|current_state.command_goto10~regout\,
	combout => \u4|lcdm|WideOr2~0_combout\);

-- Location: LCFF_X76_Y24_N23
\u4|lcdm|LCD_DB[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|WideOr2~0_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[7]~reg0_regout\);

-- Location: LCFF_X77_Y26_N5
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

-- Location: LCCOMB_X65_Y21_N14
\u2|U4bcd[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U4bcd[0]~0_combout\ = (\u5|rpm_mem\(1) & (((!\u2|U3bcd[1]~2_combout\ & !\u2|U3bcd[2]~1_combout\)))) # (!\u5|rpm_mem\(1) & ((\u2|U3bcd[2]~1_combout\) # ((\u2|U3bcd[0]~0_combout\ & \u2|U3bcd[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(1),
	datab => \u2|U3bcd[0]~0_combout\,
	datac => \u2|U3bcd[1]~2_combout\,
	datad => \u2|U3bcd[2]~1_combout\,
	combout => \u2|U4bcd[0]~0_combout\);

-- Location: LCCOMB_X65_Y21_N20
\u2|U4bcd[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U4bcd[2]~2_combout\ = (\u2|U3bcd[1]~2_combout\ & (!\u5|rpm_mem\(1) & (!\u2|U3bcd[0]~0_combout\))) # (!\u2|U3bcd[1]~2_combout\ & (\u2|U3bcd[2]~1_combout\ & ((\u5|rpm_mem\(1)) # (\u2|U3bcd[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(1),
	datab => \u2|U3bcd[0]~0_combout\,
	datac => \u2|U3bcd[1]~2_combout\,
	datad => \u2|U3bcd[2]~1_combout\,
	combout => \u2|U4bcd[2]~2_combout\);

-- Location: LCCOMB_X65_Y21_N2
\u2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux6~0_combout\ = (!\u2|U4bcd[0]~0_combout\ & (!\u2|U4bcd[2]~2_combout\ & (\u5|rpm_mem\(0) $ (\u2|U4bcd[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(0),
	datab => \u2|U4bcd[0]~0_combout\,
	datac => \u2|U4bcd[2]~2_combout\,
	datad => \u2|U4bcd[1]~1_combout\,
	combout => \u2|Mux6~0_combout\);

-- Location: LCCOMB_X65_Y21_N28
\u2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux5~0_combout\ = (\u2|U4bcd[1]~1_combout\ & (\u5|rpm_mem\(0) $ (\u2|U4bcd[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(0),
	datab => \u2|U4bcd[0]~0_combout\,
	datad => \u2|U4bcd[1]~1_combout\,
	combout => \u2|Mux5~0_combout\);

-- Location: LCCOMB_X65_Y21_N6
\u2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux4~0_combout\ = (!\u5|rpm_mem\(0) & (\u2|U4bcd[0]~0_combout\ & !\u2|U4bcd[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm_mem\(0),
	datac => \u2|U4bcd[0]~0_combout\,
	datad => \u2|U4bcd[1]~1_combout\,
	combout => \u2|Mux4~0_combout\);

-- Location: LCCOMB_X65_Y21_N12
\u2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux3~0_combout\ = (!\u2|U4bcd[2]~2_combout\ & ((\u2|U4bcd[0]~0_combout\ & (\u5|rpm_mem\(0) & \u2|U4bcd[1]~1_combout\)) # (!\u2|U4bcd[0]~0_combout\ & (\u5|rpm_mem\(0) $ (\u2|U4bcd[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[0]~0_combout\,
	datab => \u2|U4bcd[2]~2_combout\,
	datac => \u5|rpm_mem\(0),
	datad => \u2|U4bcd[1]~1_combout\,
	combout => \u2|Mux3~0_combout\);

-- Location: LCCOMB_X65_Y21_N18
\u2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux2~0_combout\ = (\u5|rpm_mem\(0)) # ((\u2|U4bcd[1]~1_combout\ & !\u2|U4bcd[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[1]~1_combout\,
	datac => \u5|rpm_mem\(0),
	datad => \u2|U4bcd[0]~0_combout\,
	combout => \u2|Mux2~0_combout\);

-- Location: LCCOMB_X65_Y21_N0
\u2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux1~0_combout\ = (!\u2|U4bcd[2]~2_combout\ & ((\u2|U4bcd[0]~0_combout\ & ((\u5|rpm_mem\(0)) # (!\u2|U4bcd[1]~1_combout\))) # (!\u2|U4bcd[0]~0_combout\ & (\u5|rpm_mem\(0) & !\u2|U4bcd[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[0]~0_combout\,
	datab => \u2|U4bcd[2]~2_combout\,
	datac => \u5|rpm_mem\(0),
	datad => \u2|U4bcd[1]~1_combout\,
	combout => \u2|Mux1~0_combout\);

-- Location: LCCOMB_X65_Y21_N10
\u2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux0~0_combout\ = (\u2|U4bcd[2]~2_combout\) # ((\u2|U4bcd[0]~0_combout\ & ((!\u2|U4bcd[1]~1_combout\) # (!\u5|rpm_mem\(0)))) # (!\u2|U4bcd[0]~0_combout\ & ((\u2|U4bcd[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[0]~0_combout\,
	datab => \u2|U4bcd[2]~2_combout\,
	datac => \u5|rpm_mem\(0),
	datad => \u2|U4bcd[1]~1_combout\,
	combout => \u2|Mux0~0_combout\);

-- Location: LCCOMB_X63_Y20_N0
\u2|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux13~0_combout\ = \u2|U2bcd[2]~1_combout\ $ (!\u2|is_gt_4~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|U2bcd[2]~1_combout\,
	datad => \u2|is_gt_4~3_combout\,
	combout => \u2|Mux13~0_combout\);

-- Location: LCCOMB_X62_Y24_N30
\u2|U6bcd[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[1]~2_combout\ = (\u5|rpm_mem\(4) & (\u5|rpm_mem\(6) & (\u5|rpm_mem\(5) & \u5|rpm_mem\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(4),
	datab => \u5|rpm_mem\(6),
	datac => \u5|rpm_mem\(5),
	datad => \u5|rpm_mem\(7),
	combout => \u2|U6bcd[1]~2_combout\);

-- Location: LCCOMB_X63_Y24_N4
\u2|U6bcd[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[1]~3_combout\ = (\u2|U6bcd[1]~2_combout\) # ((!\u2|U2bcd[3]~3_combout\ & ((!\u5|rpm_mem\(7)) # (!\u2|U0bcd[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U0bcd[2]~0_combout\,
	datab => \u5|rpm_mem\(7),
	datac => \u2|U6bcd[1]~2_combout\,
	datad => \u2|U2bcd[3]~3_combout\,
	combout => \u2|U6bcd[1]~3_combout\);

-- Location: LCCOMB_X63_Y20_N10
\u2|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux13~1_combout\ = \u2|U4bcd[3]~3_combout\ $ (((\u2|Mux13~0_combout\ & ((\u2|U6bcd[1]~3_combout\))) # (!\u2|Mux13~0_combout\ & (!\u2|Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add6~0_combout\,
	datab => \u2|Mux13~0_combout\,
	datac => \u2|U6bcd[1]~3_combout\,
	datad => \u2|U4bcd[3]~3_combout\,
	combout => \u2|Mux13~1_combout\);

-- Location: LCCOMB_X63_Y24_N18
\u2|is_gt_4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~5_combout\ = (\u2|U6bcd[2]~0_combout\ & (\u2|is_gt_4~4_combout\ & ((!\u2|U0bcd[2]~0_combout\) # (!\u2|U5bcd[2]~0_combout\)))) # (!\u2|U6bcd[2]~0_combout\ & (\u2|U5bcd[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[2]~0_combout\,
	datab => \u2|U5bcd[2]~0_combout\,
	datac => \u2|U0bcd[2]~0_combout\,
	datad => \u2|is_gt_4~4_combout\,
	combout => \u2|is_gt_4~5_combout\);

-- Location: LCCOMB_X63_Y24_N16
\u2|U6bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[2]~1_combout\ = (\u2|U6bcd[2]~0_combout\ & (!\u2|is_gt_4~4_combout\ & ((!\u2|U0bcd[2]~0_combout\) # (!\u2|U5bcd[2]~0_combout\)))) # (!\u2|U6bcd[2]~0_combout\ & (\u2|U5bcd[2]~0_combout\ & ((\u2|is_gt_4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[2]~0_combout\,
	datab => \u2|U5bcd[2]~0_combout\,
	datac => \u2|U0bcd[2]~0_combout\,
	datad => \u2|is_gt_4~4_combout\,
	combout => \u2|U6bcd[2]~1_combout\);

-- Location: LCCOMB_X63_Y20_N16
\u2|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux13~2_combout\ = (\u2|Mux13~1_combout\ & (!\u2|U6bcd[2]~1_combout\ & (\u2|is_gt_4~5_combout\ $ (\u2|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mux13~1_combout\,
	datab => \u2|is_gt_4~5_combout\,
	datac => \u2|U6bcd[2]~1_combout\,
	datad => \u2|Mux13~0_combout\,
	combout => \u2|Mux13~2_combout\);

-- Location: LCCOMB_X63_Y24_N14
\u2|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Add6~0_combout\ = \u2|U2bcd[3]~3_combout\ $ (\u2|is_gt_4~1_combout\ $ (\u2|U2bcd[2]~1_combout\ $ (!\u2|is_gt_4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U2bcd[3]~3_combout\,
	datab => \u2|is_gt_4~1_combout\,
	datac => \u2|U2bcd[2]~1_combout\,
	datad => \u2|is_gt_4~3_combout\,
	combout => \u2|Add6~0_combout\);

-- Location: LCCOMB_X63_Y20_N18
\u2|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux12~0_combout\ = \u2|U4bcd[3]~3_combout\ $ (\u2|U2bcd[2]~1_combout\ $ (!\u2|is_gt_4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[3]~3_combout\,
	datab => \u2|U2bcd[2]~1_combout\,
	datad => \u2|is_gt_4~3_combout\,
	combout => \u2|Mux12~0_combout\);

-- Location: LCCOMB_X63_Y20_N8
\u2|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux12~1_combout\ = (\u2|is_gt_4~5_combout\ & (!\u2|Add6~0_combout\ & ((\u2|Mux12~0_combout\)))) # (!\u2|is_gt_4~5_combout\ & (((\u2|U6bcd[1]~3_combout\ & !\u2|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add6~0_combout\,
	datab => \u2|is_gt_4~5_combout\,
	datac => \u2|U6bcd[1]~3_combout\,
	datad => \u2|Mux12~0_combout\,
	combout => \u2|Mux12~1_combout\);

-- Location: LCCOMB_X63_Y24_N10
\u2|U6bcd[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[1]~5_combout\ = (\u2|is_gt_4~5_combout\ & ((!\u2|Add6~0_combout\))) # (!\u2|is_gt_4~5_combout\ & (\u2|U6bcd[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|U6bcd[1]~3_combout\,
	datac => \u2|Add6~0_combout\,
	datad => \u2|is_gt_4~5_combout\,
	combout => \u2|U6bcd[1]~5_combout\);

-- Location: LCCOMB_X63_Y24_N12
\u2|U6bcd[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[0]~4_combout\ = \u2|is_gt_4~3_combout\ $ (\u2|U2bcd[2]~1_combout\ $ (\u2|is_gt_4~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|is_gt_4~3_combout\,
	datac => \u2|U2bcd[2]~1_combout\,
	datad => \u2|is_gt_4~5_combout\,
	combout => \u2|U6bcd[0]~4_combout\);

-- Location: LCCOMB_X63_Y20_N22
\u2|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux11~0_combout\ = (!\u2|U4bcd[3]~3_combout\ & (!\u2|U6bcd[1]~5_combout\ & \u2|U6bcd[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[3]~3_combout\,
	datab => \u2|U6bcd[1]~5_combout\,
	datad => \u2|U6bcd[0]~4_combout\,
	combout => \u2|Mux11~0_combout\);

-- Location: LCCOMB_X63_Y20_N20
\u2|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux10~0_combout\ = (!\u2|U6bcd[2]~1_combout\ & ((\u2|U6bcd[0]~4_combout\ & (\u2|U6bcd[1]~5_combout\ & \u2|U4bcd[3]~3_combout\)) # (!\u2|U6bcd[0]~4_combout\ & (\u2|U6bcd[1]~5_combout\ $ (\u2|U4bcd[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[0]~4_combout\,
	datab => \u2|U6bcd[1]~5_combout\,
	datac => \u2|U6bcd[2]~1_combout\,
	datad => \u2|U4bcd[3]~3_combout\,
	combout => \u2|Mux10~0_combout\);

-- Location: LCCOMB_X63_Y20_N26
\u2|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux9~0_combout\ = (\u2|U4bcd[3]~3_combout\) # ((\u2|U6bcd[1]~5_combout\ & !\u2|U6bcd[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[3]~3_combout\,
	datab => \u2|U6bcd[1]~5_combout\,
	datad => \u2|U6bcd[0]~4_combout\,
	combout => \u2|Mux9~0_combout\);

-- Location: LCCOMB_X63_Y20_N12
\u2|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux8~0_combout\ = (!\u2|U6bcd[2]~1_combout\ & ((\u2|U6bcd[0]~4_combout\ & ((\u2|U4bcd[3]~3_combout\) # (!\u2|U6bcd[1]~5_combout\))) # (!\u2|U6bcd[0]~4_combout\ & (!\u2|U6bcd[1]~5_combout\ & \u2|U4bcd[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[0]~4_combout\,
	datab => \u2|U6bcd[1]~5_combout\,
	datac => \u2|U6bcd[2]~1_combout\,
	datad => \u2|U4bcd[3]~3_combout\,
	combout => \u2|Mux8~0_combout\);

-- Location: LCCOMB_X63_Y20_N2
\u2|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux7~0_combout\ = (\u2|U6bcd[2]~1_combout\) # ((\u2|U6bcd[0]~4_combout\ & ((!\u2|U4bcd[3]~3_combout\) # (!\u2|U6bcd[1]~5_combout\))) # (!\u2|U6bcd[0]~4_combout\ & (\u2|U6bcd[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[0]~4_combout\,
	datab => \u2|U6bcd[1]~5_combout\,
	datac => \u2|U6bcd[2]~1_combout\,
	datad => \u2|U4bcd[3]~3_combout\,
	combout => \u2|Mux7~0_combout\);

-- Location: LCCOMB_X63_Y1_N16
\u2|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux15~0_combout\ = (\u2|is_gt_4~1_combout\) # (\u2|U6bcd[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|is_gt_4~1_combout\,
	datad => \u2|U6bcd[3]~6_combout\,
	combout => \u2|Mux15~0_combout\);

-- Location: LCCOMB_X63_Y1_N22
\u2|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux15~1_combout\ = (\u2|is_gt_4~1_combout\ & \u2|U6bcd[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|is_gt_4~1_combout\,
	datad => \u2|U6bcd[3]~6_combout\,
	combout => \u2|Mux15~1_combout\);

-- Location: LCCOMB_X63_Y1_N20
\u2|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux15~2_combout\ = (\u2|is_gt_4~1_combout\) # (!\u2|U6bcd[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|is_gt_4~1_combout\,
	datad => \u2|U6bcd[3]~6_combout\,
	combout => \u2|Mux15~2_combout\);

-- Location: LCCOMB_X72_Y24_N10
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

-- Location: LCCOMB_X72_Y24_N12
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

-- Location: LCCOMB_X72_Y24_N14
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

-- Location: LCFF_X72_Y24_N15
\u1|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~10_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(5));

-- Location: LCCOMB_X72_Y24_N16
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

-- Location: LCCOMB_X72_Y24_N28
\u1|count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count~3_combout\ = (\u1|Add0~12_combout\ & (((!\u1|Equal0~2_combout\) # (!\u1|Equal0~0_combout\)) # (!\u1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~1_combout\,
	datab => \u1|Equal0~0_combout\,
	datac => \u1|Add0~12_combout\,
	datad => \u1|Equal0~2_combout\,
	combout => \u1|count~3_combout\);

-- Location: LCFF_X72_Y24_N29
\u1|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(6));

-- Location: LCCOMB_X72_Y24_N18
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

-- Location: LCCOMB_X71_Y24_N28
\u1|count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count~2_combout\ = (\u1|Add0~14_combout\ & (((!\u1|Equal0~2_combout\) # (!\u1|Equal0~0_combout\)) # (!\u1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~1_combout\,
	datab => \u1|Equal0~0_combout\,
	datac => \u1|Equal0~2_combout\,
	datad => \u1|Add0~14_combout\,
	combout => \u1|count~2_combout\);

-- Location: LCFF_X71_Y24_N29
\u1|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(7));

-- Location: LCCOMB_X72_Y24_N20
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

-- Location: LCCOMB_X72_Y24_N30
\u1|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count~1_combout\ = (\u1|Add0~16_combout\ & (((!\u1|Equal0~2_combout\) # (!\u1|Equal0~0_combout\)) # (!\u1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~1_combout\,
	datab => \u1|Equal0~0_combout\,
	datac => \u1|Add0~16_combout\,
	datad => \u1|Equal0~2_combout\,
	combout => \u1|count~1_combout\);

-- Location: LCFF_X72_Y24_N31
\u1|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(8));

-- Location: LCCOMB_X72_Y24_N22
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

-- Location: LCFF_X72_Y24_N23
\u1|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~18_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(9));

-- Location: LCCOMB_X72_Y24_N24
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

-- Location: LCCOMB_X72_Y24_N26
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

-- Location: LCCOMB_X72_Y24_N0
\u1|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count~0_combout\ = (\u1|Add0~22_combout\ & (((!\u1|Equal0~2_combout\) # (!\u1|Equal0~0_combout\)) # (!\u1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~1_combout\,
	datab => \u1|Equal0~0_combout\,
	datac => \u1|Equal0~2_combout\,
	datad => \u1|Add0~22_combout\,
	combout => \u1|count~0_combout\);

-- Location: LCFF_X72_Y24_N1
\u1|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(11));

-- Location: LCFF_X72_Y24_N25
\u1|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~20_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(10));

-- Location: LCCOMB_X71_Y24_N22
\u1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Equal0~0_combout\ = (\u1|count\(0) & (!\u1|count\(9) & (\u1|count\(11) & !\u1|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(0),
	datab => \u1|count\(9),
	datac => \u1|count\(11),
	datad => \u1|count\(10),
	combout => \u1|Equal0~0_combout\);

-- Location: LCCOMB_X72_Y24_N4
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

-- Location: LCFF_X72_Y24_N5
\u1|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(0));

-- Location: LCCOMB_X72_Y24_N8
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

-- Location: LCCOMB_X72_Y24_N2
\u1|count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count~4_combout\ = (\u1|Add0~4_combout\ & (((!\u1|Equal0~2_combout\) # (!\u1|Equal0~0_combout\)) # (!\u1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~1_combout\,
	datab => \u1|Equal0~0_combout\,
	datac => \u1|Add0~4_combout\,
	datad => \u1|Equal0~2_combout\,
	combout => \u1|count~4_combout\);

-- Location: LCFF_X72_Y24_N3
\u1|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~4_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(2));

-- Location: LCFF_X72_Y24_N11
\u1|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~6_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(3));

-- Location: LCFF_X72_Y24_N13
\u1|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~8_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(4));

-- Location: LCCOMB_X71_Y24_N8
\u1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Equal0~2_combout\ = (\u1|count\(1) & (!\u1|count\(3) & (!\u1|count\(4) & !\u1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datab => \u1|count\(3),
	datac => \u1|count\(4),
	datad => \u1|count\(2),
	combout => \u1|Equal0~2_combout\);

-- Location: LCCOMB_X71_Y24_N10
\u1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Equal0~1_combout\ = (\u1|count\(7) & (\u1|count\(6) & (!\u1|count\(5) & \u1|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(7),
	datab => \u1|count\(6),
	datac => \u1|count\(5),
	datad => \u1|count\(8),
	combout => \u1|Equal0~1_combout\);

-- Location: LCCOMB_X66_Y24_N26
\u1|clkint~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|clkint~0_combout\ = \u1|clkint~regout\ $ (((\u1|Equal0~0_combout\ & (\u1|Equal0~2_combout\ & \u1|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~0_combout\,
	datab => \u1|Equal0~2_combout\,
	datac => \u1|clkint~regout\,
	datad => \u1|Equal0~1_combout\,
	combout => \u1|clkint~0_combout\);

-- Location: LCFF_X66_Y24_N27
\u1|clkint\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|clkint~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|clkint~regout\);

-- Location: CLKCTRL_G5
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

-- Location: LCFF_X67_Y42_N21
\u0|tix_mem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(2),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(2));

-- Location: LCFF_X67_Y42_N7
\u0|tix_mem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(3),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(3));

-- Location: LCFF_X75_Y26_N1
\u4|lcdm|LCD_E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u4|lcdm|LCD_E~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_E~regout\);

-- Location: LCCOMB_X77_Y26_N0
\u4|lcdm|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector0~0_combout\ = (\u4|lcdm|current_state.command_wr~regout\) # ((\u4|lcdm|LCD_RS~regout\ & !\u4|lcdm|WideOr3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_wr~regout\,
	datac => \u4|lcdm|LCD_RS~regout\,
	datad => \u4|lcdm|WideOr3~1_combout\,
	combout => \u4|lcdm|Selector0~0_combout\);

-- Location: LCFF_X77_Y26_N1
\u4|lcdm|LCD_RS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector0~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_RS~regout\);

-- Location: LCCOMB_X76_Y26_N4
\u4|lcdm|WideOr43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr43~0_combout\ = (\u4|lcdm|current_state.pulse_busy_flag~regout\) # ((\u4|lcdm|current_state.pulse_busy_flag_2~regout\) # ((\u4|lcdm|current_state.pulse_busy_flag_1~regout\) # (\u4|lcdm|current_state.pulse_busy_flag_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag~regout\,
	datab => \u4|lcdm|current_state.pulse_busy_flag_2~regout\,
	datac => \u4|lcdm|current_state.pulse_busy_flag_1~regout\,
	datad => \u4|lcdm|current_state.pulse_busy_flag_3~regout\,
	combout => \u4|lcdm|WideOr43~0_combout\);

-- Location: LCFF_X76_Y26_N5
\u4|lcdm|LCD_RW\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|WideOr43~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_RW~regout\);

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

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \u0|ALT_INV_tix_mem\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_tix_mem_sim(0));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \u5|rpm_mem\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem_sim(0));

-- Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \u5|rpm_mem\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem_sim(1));

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \u5|rpm_mem\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem_sim(2));

-- Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \u5|rpm_mem\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem_sim(3));

-- Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \u5|rpm_mem\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem_sim(4));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \u5|rpm_mem\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem_sim(5));

-- Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \u5|rpm_mem\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem_sim(6));

-- Location: PIN_T26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \u5|rpm_mem\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem_sim(7));

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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => \hall_sens~combout\,
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
	padio => ww_KNOP(2));

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
	padio => ww_KNOP(3));

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
	padio => ww_KNOP(5));

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
	padio => ww_KNOP(6));

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
	datain => GND,
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MOTOR_DOWN);

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
	padio => ww_DB(0));

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
	padio => ww_DB(1));

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
	padio => ww_DB(2));

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
	padio => ww_DB(3));

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
	padio => ww_DB(4));

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
	padio => ww_DB(5));

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
	padio => ww_DB(6));

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
	padio => ww_DB(7));

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
	padio => ww_BUSY);

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
	datain => GND,
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Convstart);
END structure;


