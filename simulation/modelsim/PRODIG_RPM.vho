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

-- DATE "10/04/2019 21:27:14"

-- 
-- Device: Altera EP2C70F896C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
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
	tix_mem_sim : OUT IEEE.NUMERIC_STD.unsigned(15 DOWNTO 0);
	rpm_mem_sim : OUT IEEE.NUMERIC_STD.unsigned(7 DOWNTO 0);
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
-- tix_mem_sim[0]	=>  Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[1]	=>  Location: PIN_AJ14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[2]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[3]	=>  Location: PIN_AJ16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[4]	=>  Location: PIN_AK14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[5]	=>  Location: PIN_AK12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[6]	=>  Location: PIN_AJ12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[7]	=>  Location: PIN_AJ15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[8]	=>  Location: PIN_AH16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[9]	=>  Location: PIN_AH13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[10]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[11]	=>  Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[12]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[13]	=>  Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[14]	=>  Location: PIN_AK17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tix_mem_sim[15]	=>  Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[0]	=>  Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[1]	=>  Location: PIN_AJ13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[2]	=>  Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[4]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[5]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[6]	=>  Location: PIN_AK19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem_sim[7]	=>  Location: PIN_AJ18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- KNOP[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL \u1|clkint~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u5|Add1~3_combout\ : std_logic;
SIGNAL \u5|Add1~5_combout\ : std_logic;
SIGNAL \u5|Add1~7_combout\ : std_logic;
SIGNAL \u5|Add1~9_combout\ : std_logic;
SIGNAL \u0|count[14]~45\ : std_logic;
SIGNAL \u0|count[15]~46_combout\ : std_logic;
SIGNAL \u0|Add1~2_combout\ : std_logic;
SIGNAL \u0|Add1~6_combout\ : std_logic;
SIGNAL \u0|Add1~8_combout\ : std_logic;
SIGNAL \u0|Add1~12_combout\ : std_logic;
SIGNAL \u0|Add1~16_combout\ : std_logic;
SIGNAL \u0|Add1~19\ : std_logic;
SIGNAL \u0|Add1~20_combout\ : std_logic;
SIGNAL \u5|x[0]~20_combout\ : std_logic;
SIGNAL \u5|x[1]~22_combout\ : std_logic;
SIGNAL \u5|x[4]~28_combout\ : std_logic;
SIGNAL \u5|x[17]~55\ : std_logic;
SIGNAL \u5|x[18]~56_combout\ : std_logic;
SIGNAL \u5|x[18]~57\ : std_logic;
SIGNAL \u5|x[19]~58_combout\ : std_logic;
SIGNAL \u1|Add0~6_combout\ : std_logic;
SIGNAL \u1|Add0~21\ : std_logic;
SIGNAL \u1|Add0~22_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~34_combout\ : std_logic;
SIGNAL \u4|Add1~1\ : std_logic;
SIGNAL \u4|Add1~2_combout\ : std_logic;
SIGNAL \u4|Add1~3\ : std_logic;
SIGNAL \u4|Add1~4_combout\ : std_logic;
SIGNAL \u4|Add1~5\ : std_logic;
SIGNAL \u4|Add1~6_combout\ : std_logic;
SIGNAL \u4|Add1~7\ : std_logic;
SIGNAL \u4|Add1~8_combout\ : std_logic;
SIGNAL \u2|is_gt_4~2_combout\ : std_logic;
SIGNAL \u2|is_gt_4~4_combout\ : std_logic;
SIGNAL \u2|U6bcd[1]~2_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr3~0_combout\ : std_logic;
SIGNAL \u5|LessThan0~0_combout\ : std_logic;
SIGNAL \u5|LessThan0~1_combout\ : std_logic;
SIGNAL \u5|LessThan0~2_combout\ : std_logic;
SIGNAL \u5|LessThan0~3_combout\ : std_logic;
SIGNAL \u5|rpm[3]~0_combout\ : std_logic;
SIGNAL \u5|rpm[3]~1_combout\ : std_logic;
SIGNAL \u5|rpm[3]~6_combout\ : std_logic;
SIGNAL \u0|stop~regout\ : std_logic;
SIGNAL \u4|lcdm|Equal0~0_combout\ : std_logic;
SIGNAL \u4|goto30~regout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_5~regout\ : std_logic;
SIGNAL \u1|count~0_combout\ : std_logic;
SIGNAL \u0|stop~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector17~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector4~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector4~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector4~2_combout\ : std_logic;
SIGNAL \u4|lcdm|return_state.wait_for_command~regout\ : std_logic;
SIGNAL \u4|Mux9~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector28~0_combout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_8~regout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_11~regout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_9~regout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_10~regout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_6~regout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_7~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector99~1_combout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_2~regout\ : std_logic;
SIGNAL \u4|lcdm|return_state.command_init_4~regout\ : std_logic;
SIGNAL \u4|lcdm|return_state.reset~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector68~0_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr41~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector68~1_combout\ : std_logic;
SIGNAL \u4|Selector1~0_combout\ : std_logic;
SIGNAL \u4|state.update_linecount~regout\ : std_logic;
SIGNAL \u4|Selector18~2_combout\ : std_logic;
SIGNAL \u4|Selector14~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector63~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector66~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector64~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector65~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector61~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector61~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector62~0_combout\ : std_logic;
SIGNAL \u4|Mux7~1_combout\ : std_logic;
SIGNAL \u4|Mux7~2_combout\ : std_logic;
SIGNAL \u4|Mux7~3_combout\ : std_logic;
SIGNAL \u4|Mux5~1_combout\ : std_logic;
SIGNAL \u4|Mux3~0_combout\ : std_logic;
SIGNAL \u4|Mux3~1_combout\ : std_logic;
SIGNAL \u4|Mux3~2_combout\ : std_logic;
SIGNAL \u4|Mux8~5_combout\ : std_logic;
SIGNAL \u4|Mux8~6_combout\ : std_logic;
SIGNAL \u4|Mux2~0_combout\ : std_logic;
SIGNAL \u4|Mux2~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector57~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector57~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector59~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector59~1_combout\ : std_logic;
SIGNAL \u4|lcdm|return_state.reset~0_combout\ : std_logic;
SIGNAL \u4|lcdm|return_state.reset~1_combout\ : std_logic;
SIGNAL \u4|Selector4~0_combout\ : std_logic;
SIGNAL \u4|goto30~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector63~3_combout\ : std_logic;
SIGNAL \LCD_DATA[7]~7\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \u4|lcdm|Selector45~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_e_2~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector46~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_e_3~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector47~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_e_4~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector52~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector49~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_busy_flag_1~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector50~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_busy_flag_2~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector51~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_busy_flag_3~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector52~4_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector36~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.wait_for_command~regout\ : std_logic;
SIGNAL \u4|lcdm|busy~0_combout\ : std_logic;
SIGNAL \u4|lcdm|busy~regout\ : std_logic;
SIGNAL \u4|Selector5~0_combout\ : std_logic;
SIGNAL \u4|state.update_linecount_wait~regout\ : std_logic;
SIGNAL \u4|Selector1~1_combout\ : std_logic;
SIGNAL \u4|WideOr7~combout\ : std_logic;
SIGNAL \u4|Selector15~0_combout\ : std_logic;
SIGNAL \u4|Selector16~0_combout\ : std_logic;
SIGNAL \u4|Equal1~1_combout\ : std_logic;
SIGNAL \u4|Selector18~0_combout\ : std_logic;
SIGNAL \u4|Selector14~0_combout\ : std_logic;
SIGNAL \u4|Selector17~0_combout\ : std_logic;
SIGNAL \u4|Selector14~2_combout\ : std_logic;
SIGNAL \u4|Selector15~1_combout\ : std_logic;
SIGNAL \u4|Equal1~0_combout\ : std_logic;
SIGNAL \u4|Selector21~0_combout\ : std_logic;
SIGNAL \u4|Selector21~1_combout\ : std_logic;
SIGNAL \u4|Selector21~2_combout\ : std_logic;
SIGNAL \u4|line_counter~0_combout\ : std_logic;
SIGNAL \u4|Selector20~0_combout\ : std_logic;
SIGNAL \u4|Selector20~1_combout\ : std_logic;
SIGNAL \u4|drive~0_combout\ : std_logic;
SIGNAL \u4|Selector12~0_combout\ : std_logic;
SIGNAL \u4|Selector12~1_combout\ : std_logic;
SIGNAL \u4|state.hold~regout\ : std_logic;
SIGNAL \u4|state.hold2~regout\ : std_logic;
SIGNAL \u4|Selector0~0_combout\ : std_logic;
SIGNAL \u4|state.reset~regout\ : std_logic;
SIGNAL \u4|Selector1~2_combout\ : std_logic;
SIGNAL \u4|Selector1~3_combout\ : std_logic;
SIGNAL \u4|state.write_char~regout\ : std_logic;
SIGNAL \u4|wr~regout\ : std_logic;
SIGNAL \u4|Selector3~0_combout\ : std_logic;
SIGNAL \u4|state.update~regout\ : std_logic;
SIGNAL \u4|Selector22~1_combout\ : std_logic;
SIGNAL \u4|Selector19~0_combout\ : std_logic;
SIGNAL \u4|goto10~2_combout\ : std_logic;
SIGNAL \u4|goto10~regout\ : std_logic;
SIGNAL \u4|goto20~0_combout\ : std_logic;
SIGNAL \u4|goto20~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \u4|goto20~regout\ : std_logic;
SIGNAL \u4|Selector22~0_combout\ : std_logic;
SIGNAL \u4|home~regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[0]~8_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector52~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector52~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector52~3_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_busy_flag_4~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector53~3_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector25~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_2~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector26~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_3~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector22~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.reset~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector24~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_1~regout\ : std_logic;
SIGNAL \u4|lcdm|WideOr41~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector29~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_6~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector30~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_7~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector41~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector41~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector53~2_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_busy_flag_5~regout\ : std_logic;
SIGNAL \u4|lcdm|delay_counter[12]~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector44~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_e_1~regout\ : std_logic;
SIGNAL \u4|lcdm|WideOr33~0_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr33~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector35~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector38~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_goto30~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector40~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_goto20~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector102~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector34~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_11~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector31~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_8~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector39~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_goto10~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector99~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector102~1_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr18~3_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector43~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector43~1_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_e~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector48~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.pulse_busy_flag~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector14~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector27~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_4~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector18~1_combout\ : std_logic;
SIGNAL \u4|lcdm|delay_counter[18]~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector6~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector14~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector6~0_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr33~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector15~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector42~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_wr~regout\ : std_logic;
SIGNAL \u4|lcdm|WideOr18~2_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr18~combout\ : std_logic;
SIGNAL \u4|lcdm|delay_counter[18]~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector21~0_combout\ : std_logic;
SIGNAL \u4|lcdm|delay_counter[18]~3_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~1\ : std_logic;
SIGNAL \u4|lcdm|Add0~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector20~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector20~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~3\ : std_logic;
SIGNAL \u4|lcdm|Add0~4_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector19~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~5\ : std_logic;
SIGNAL \u4|lcdm|Add0~6_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector18~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector18~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector18~3_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~7\ : std_logic;
SIGNAL \u4|lcdm|Add0~8_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector17~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector17~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~9\ : std_logic;
SIGNAL \u4|lcdm|Add0~10_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector5~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector16~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector16~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~11\ : std_logic;
SIGNAL \u4|lcdm|Add0~12_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector15~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector15~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~13\ : std_logic;
SIGNAL \u4|lcdm|Add0~14_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector14~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Equal0~5_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~15\ : std_logic;
SIGNAL \u4|lcdm|Add0~16_combout\ : std_logic;
SIGNAL \u4|lcdm|delay_counter[12]~4_combout\ : std_logic;
SIGNAL \u4|lcdm|delay_counter[12]~5_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector13~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~17\ : std_logic;
SIGNAL \u4|lcdm|Add0~18_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector12~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector12~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~19\ : std_logic;
SIGNAL \u4|lcdm|Add0~20_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector11~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~21\ : std_logic;
SIGNAL \u4|lcdm|Add0~22_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector10~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~23\ : std_logic;
SIGNAL \u4|lcdm|Add0~24_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector9~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Equal0~4_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~25\ : std_logic;
SIGNAL \u4|lcdm|Add0~26_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector8~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector8~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~27\ : std_logic;
SIGNAL \u4|lcdm|Add0~28_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector7~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~29\ : std_logic;
SIGNAL \u4|lcdm|Add0~30_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector6~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~31\ : std_logic;
SIGNAL \u4|lcdm|Add0~32_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector5~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector5~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Equal0~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector1~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~33\ : std_logic;
SIGNAL \u4|lcdm|Add0~35\ : std_logic;
SIGNAL \u4|lcdm|Add0~36_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector3~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~37\ : std_logic;
SIGNAL \u4|lcdm|Add0~39\ : std_logic;
SIGNAL \u4|lcdm|Add0~40_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector1~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Add0~38_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector2~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Equal0~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Equal0~3_combout\ : std_logic;
SIGNAL \u4|lcdm|Equal0~6_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector35~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector32~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_9~regout\ : std_logic;
SIGNAL \u4|Mux8~0_combout\ : std_logic;
SIGNAL \u4|Mux8~1_combout\ : std_logic;
SIGNAL \u4|Add1~0_combout\ : std_logic;
SIGNAL \u4|Selector18~1_combout\ : std_logic;
SIGNAL \u4|Selector18~3_combout\ : std_logic;
SIGNAL \u4|Mux8~2_combout\ : std_logic;
SIGNAL \u4|Mux8~3_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector87~0_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr3~1_combout\ : std_logic;
SIGNAL \u4|lcdm|WideOr3~combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[0]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|WideOr17~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector88~1_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector88~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector88~2_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[0]~en_regout\ : std_logic;
SIGNAL \u4|lcdm|Selector38~1_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_home~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector90~0_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[1]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[1]~en_regout\ : std_logic;
SIGNAL \u4|Mux6~0_combout\ : std_logic;
SIGNAL \u4|Mux8~4_combout\ : std_logic;
SIGNAL \u4|Mux6~1_combout\ : std_logic;
SIGNAL \u4|Mux6~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector33~0_combout\ : std_logic;
SIGNAL \u4|lcdm|current_state.command_init_10~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector96~0_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector93~0_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[2]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[2]~en_regout\ : std_logic;
SIGNAL \u4|Mux5~0_combout\ : std_logic;
SIGNAL \u4|Mux7~0_combout\ : std_logic;
SIGNAL \u4|Mux5~2_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector96~1_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[3]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[3]~en_regout\ : std_logic;
SIGNAL \u4|Mux4~1_combout\ : std_logic;
SIGNAL \u4|Mux1~0_combout\ : std_logic;
SIGNAL \u4|Mux4~0_combout\ : std_logic;
SIGNAL \u4|Mux4~2_combout\ : std_logic;
SIGNAL \u4|Mux4~3_combout\ : std_logic;
SIGNAL \u4|lcdm|Selector99~2_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[4]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[4]~en_regout\ : std_logic;
SIGNAL \u4|lcdm|Selector102~2_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[5]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[5]~en_regout\ : std_logic;
SIGNAL \u4|lcdm|Selector105~0_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[6]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[6]~en_regout\ : std_logic;
SIGNAL \u4|lcdm|WideOr2~0_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[7]~reg0_regout\ : std_logic;
SIGNAL \u4|lcdm|LCD_DB[7]~en_regout\ : std_logic;
SIGNAL \u0|wait_time[0]~1_combout\ : std_logic;
SIGNAL \u0|Add1~0_combout\ : std_logic;
SIGNAL \u0|wait_time[0]~9_combout\ : std_logic;
SIGNAL \u0|Add1~1\ : std_logic;
SIGNAL \u0|Add1~3\ : std_logic;
SIGNAL \u0|Add1~4_combout\ : std_logic;
SIGNAL \u0|Equal0~2_combout\ : std_logic;
SIGNAL \u0|wait_time[8]~5_combout\ : std_logic;
SIGNAL \u0|Add1~5\ : std_logic;
SIGNAL \u0|Add1~7\ : std_logic;
SIGNAL \u0|Add1~9\ : std_logic;
SIGNAL \u0|Add1~11\ : std_logic;
SIGNAL \u0|Add1~13\ : std_logic;
SIGNAL \u0|Add1~14_combout\ : std_logic;
SIGNAL \u0|wait_time[7]~6_combout\ : std_logic;
SIGNAL \u0|Add1~15\ : std_logic;
SIGNAL \u0|Add1~17\ : std_logic;
SIGNAL \u0|Add1~18_combout\ : std_logic;
SIGNAL \u0|wait_time[9]~4_combout\ : std_logic;
SIGNAL \u0|wait_time[10]~3_combout\ : std_logic;
SIGNAL \u0|Equal0~0_combout\ : std_logic;
SIGNAL \u0|wait_time[10]~0_combout\ : std_logic;
SIGNAL \u0|wait_time[10]~2_combout\ : std_logic;
SIGNAL \u0|wait_time[6]~7_combout\ : std_logic;
SIGNAL \u0|Add1~10_combout\ : std_logic;
SIGNAL \u0|wait_time[4]~8_combout\ : std_logic;
SIGNAL \u0|Equal0~1_combout\ : std_logic;
SIGNAL \u0|process_0~0_combout\ : std_logic;
SIGNAL \u0|calc~feeder_combout\ : std_logic;
SIGNAL \u0|calc~regout\ : std_logic;
SIGNAL \u0|count[0]~16_combout\ : std_logic;
SIGNAL \u0|count[10]~36_combout\ : std_logic;
SIGNAL \u0|count[3]~22_combout\ : std_logic;
SIGNAL \u0|LessThan0~0_combout\ : std_logic;
SIGNAL \u0|count[5]~26_combout\ : std_logic;
SIGNAL \u0|LessThan0~1_combout\ : std_logic;
SIGNAL \u0|count[6]~28_combout\ : std_logic;
SIGNAL \u0|count[8]~32_combout\ : std_logic;
SIGNAL \u0|LessThan0~2_combout\ : std_logic;
SIGNAL \u0|LessThan0~3_combout\ : std_logic;
SIGNAL \u0|count[11]~39\ : std_logic;
SIGNAL \u0|count[12]~41\ : std_logic;
SIGNAL \u0|count[13]~42_combout\ : std_logic;
SIGNAL \u0|count[13]~43\ : std_logic;
SIGNAL \u0|count[14]~44_combout\ : std_logic;
SIGNAL \u0|LessThan0~4_combout\ : std_logic;
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
SIGNAL \u0|count[6]~29\ : std_logic;
SIGNAL \u0|count[7]~30_combout\ : std_logic;
SIGNAL \u0|count[7]~31\ : std_logic;
SIGNAL \u0|count[8]~33\ : std_logic;
SIGNAL \u0|count[9]~34_combout\ : std_logic;
SIGNAL \u0|count[9]~35\ : std_logic;
SIGNAL \u0|count[10]~37\ : std_logic;
SIGNAL \u0|count[11]~38_combout\ : std_logic;
SIGNAL \u0|tix_mem[11]~feeder_combout\ : std_logic;
SIGNAL \u5|tix_int[11]~feeder_combout\ : std_logic;
SIGNAL \u0|tix_mem[9]~feeder_combout\ : std_logic;
SIGNAL \u5|tix_int[9]~feeder_combout\ : std_logic;
SIGNAL \u5|tix_int[6]~feeder_combout\ : std_logic;
SIGNAL \u0|tix_mem[7]~feeder_combout\ : std_logic;
SIGNAL \u5|rpm[3]~2_combout\ : std_logic;
SIGNAL \u0|tix_mem[8]~feeder_combout\ : std_logic;
SIGNAL \u5|rpm[3]~3_combout\ : std_logic;
SIGNAL \u5|rpm[3]~4_combout\ : std_logic;
SIGNAL \u0|count[12]~40_combout\ : std_logic;
SIGNAL \u0|LessThan0~5_combout\ : std_logic;
SIGNAL \u0|tix_mem~1_combout\ : std_logic;
SIGNAL \u5|rpm[3]~5_combout\ : std_logic;
SIGNAL \u5|Add1~11_combout\ : std_logic;
SIGNAL \u0|tix_mem[14]~feeder_combout\ : std_logic;
SIGNAL \u0|tix_mem[4]~feeder_combout\ : std_logic;
SIGNAL \u5|tix_int[3]~feeder_combout\ : std_logic;
SIGNAL \u5|tix_int[2]~feeder_combout\ : std_logic;
SIGNAL \u5|tix_int[1]~feeder_combout\ : std_logic;
SIGNAL \u5|tix_int[0]~0_combout\ : std_logic;
SIGNAL \u5|tix_int[0]~feeder_combout\ : std_logic;
SIGNAL \u5|x[0]~21\ : std_logic;
SIGNAL \u5|x[1]~23\ : std_logic;
SIGNAL \u5|x[2]~25\ : std_logic;
SIGNAL \u5|x[3]~27\ : std_logic;
SIGNAL \u5|x[4]~29\ : std_logic;
SIGNAL \u5|x[5]~30_combout\ : std_logic;
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
SIGNAL \u5|x[13]~46_combout\ : std_logic;
SIGNAL \u5|x[13]~47\ : std_logic;
SIGNAL \u5|x[14]~49\ : std_logic;
SIGNAL \u5|x[15]~51\ : std_logic;
SIGNAL \u5|x[16]~53\ : std_logic;
SIGNAL \u5|x[17]~54_combout\ : std_logic;
SIGNAL \u5|LessThan2~32_combout\ : std_logic;
SIGNAL \u5|x[16]~52_combout\ : std_logic;
SIGNAL \u5|x[15]~50_combout\ : std_logic;
SIGNAL \u5|x[14]~48_combout\ : std_logic;
SIGNAL \u0|tix_mem[13]~feeder_combout\ : std_logic;
SIGNAL \u5|x[12]~44_combout\ : std_logic;
SIGNAL \u5|x[6]~32_combout\ : std_logic;
SIGNAL \u5|x[3]~26_combout\ : std_logic;
SIGNAL \u5|x[2]~24_combout\ : std_logic;
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
SIGNAL \u5|stop~0_combout\ : std_logic;
SIGNAL \u5|stop~regout\ : std_logic;
SIGNAL \u5|rpm[3]~7_combout\ : std_logic;
SIGNAL \u5|rpm~8_combout\ : std_logic;
SIGNAL \u5|rpm~11_combout\ : std_logic;
SIGNAL \u5|Add1~19_combout\ : std_logic;
SIGNAL \u5|Add1~0_combout\ : std_logic;
SIGNAL \u5|Add1~2_combout\ : std_logic;
SIGNAL \u5|Add1~1\ : std_logic;
SIGNAL \u5|Add1~4\ : std_logic;
SIGNAL \u5|Add1~6\ : std_logic;
SIGNAL \u5|Add1~8\ : std_logic;
SIGNAL \u5|Add1~10\ : std_logic;
SIGNAL \u5|Add1~12_combout\ : std_logic;
SIGNAL \u5|Add1~18_combout\ : std_logic;
SIGNAL \u5|Add1~13\ : std_logic;
SIGNAL \u5|Add1~14_combout\ : std_logic;
SIGNAL \u5|rpm~10_combout\ : std_logic;
SIGNAL \u5|rpm_mem[3]~0_combout\ : std_logic;
SIGNAL \u5|Add1~15\ : std_logic;
SIGNAL \u5|Add1~16_combout\ : std_logic;
SIGNAL \u5|rpm~9_combout\ : std_logic;
SIGNAL \u2|U1bcd[2]~1_combout\ : std_logic;
SIGNAL \u2|U1bcd[0]~0_combout\ : std_logic;
SIGNAL \u2|U2bcd[0]~0_combout\ : std_logic;
SIGNAL \u2|U2bcd[1]~2_combout\ : std_logic;
SIGNAL \u2|U3bcd[1]~2_combout\ : std_logic;
SIGNAL \u2|U3bcd[0]~0_combout\ : std_logic;
SIGNAL \u2|U3bcd[2]~1_combout\ : std_logic;
SIGNAL \u2|U4bcd[1]~1_combout\ : std_logic;
SIGNAL \u2|U4bcd[2]~2_combout\ : std_logic;
SIGNAL \u2|U4bcd[0]~0_combout\ : std_logic;
SIGNAL \u2|Mux6~0_combout\ : std_logic;
SIGNAL \u2|Mux5~0_combout\ : std_logic;
SIGNAL \u2|Mux4~0_combout\ : std_logic;
SIGNAL \u2|Mux3~0_combout\ : std_logic;
SIGNAL \u2|Mux2~0_combout\ : std_logic;
SIGNAL \u2|Mux1~0_combout\ : std_logic;
SIGNAL \u2|Mux0~0_combout\ : std_logic;
SIGNAL \u2|U2bcd[2]~1_combout\ : std_logic;
SIGNAL \u2|is_gt_4~3_combout\ : std_logic;
SIGNAL \u2|Mux13~0_combout\ : std_logic;
SIGNAL \u2|U1bcd[1]~2_combout\ : std_logic;
SIGNAL \u2|U2bcd[3]~3_combout\ : std_logic;
SIGNAL \u2|U5bcd[2]~0_combout\ : std_logic;
SIGNAL \u2|U0bcd[2]~0_combout\ : std_logic;
SIGNAL \u2|U6bcd[2]~0_combout\ : std_logic;
SIGNAL \u2|U6bcd[2]~1_combout\ : std_logic;
SIGNAL \u2|is_gt_4~5_combout\ : std_logic;
SIGNAL \u2|U6bcd[1]~3_combout\ : std_logic;
SIGNAL \u5|Add1~20_combout\ : std_logic;
SIGNAL \u2|U4bcd[3]~3_combout\ : std_logic;
SIGNAL \u2|is_gt_4~0_combout\ : std_logic;
SIGNAL \u2|is_gt_4~1_combout\ : std_logic;
SIGNAL \u2|Add6~0_combout\ : std_logic;
SIGNAL \u2|Mux13~1_combout\ : std_logic;
SIGNAL \u2|Mux13~2_combout\ : std_logic;
SIGNAL \u2|Mux12~0_combout\ : std_logic;
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
SIGNAL \u1|Add0~0_combout\ : std_logic;
SIGNAL \u1|Add0~1\ : std_logic;
SIGNAL \u1|Add0~2_combout\ : std_logic;
SIGNAL \u1|Add0~3\ : std_logic;
SIGNAL \u1|Add0~4_combout\ : std_logic;
SIGNAL \u1|count~4_combout\ : std_logic;
SIGNAL \u1|Add0~5\ : std_logic;
SIGNAL \u1|Add0~7\ : std_logic;
SIGNAL \u1|Add0~8_combout\ : std_logic;
SIGNAL \u1|Equal0~2_combout\ : std_logic;
SIGNAL \u1|Add0~9\ : std_logic;
SIGNAL \u1|Add0~10_combout\ : std_logic;
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
SIGNAL \u1|Add0~18_combout\ : std_logic;
SIGNAL \u1|Add0~19\ : std_logic;
SIGNAL \u1|Add0~20_combout\ : std_logic;
SIGNAL \u1|Equal0~0_combout\ : std_logic;
SIGNAL \u1|clkint~0_combout\ : std_logic;
SIGNAL \u1|clkint~regout\ : std_logic;
SIGNAL \u1|clkint~clkctrl_outclk\ : std_logic;
SIGNAL \u4|lcdm|LCD_E~0_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_E~feeder_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_E~regout\ : std_logic;
SIGNAL \u4|lcdm|Selector0~0_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_RS~regout\ : std_logic;
SIGNAL \u4|lcdm|WideOr43~0_combout\ : std_logic;
SIGNAL \u4|lcdm|LCD_RW~regout\ : std_logic;
SIGNAL \hall_sens~combout\ : std_logic;
SIGNAL \BUTTON~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u4|lcdm|delay_counter\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \u5|x\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \u5|rpm\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u5|rpm_mem\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u5|tix_int\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u0|wait_time\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u0|tix_mem\ : std_logic_vector(15 DOWNTO 0);
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
tix_mem_sim <= IEEE.NUMERIC_STD.UNSIGNED(ww_tix_mem_sim);
rpm_mem_sim <= IEEE.NUMERIC_STD.UNSIGNED(ww_rpm_mem_sim);
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
\u4|lcdm|ALT_INV_busy~regout\ <= NOT \u4|lcdm|busy~regout\;
\u4|ALT_INV_state.update~regout\ <= NOT \u4|state.update~regout\;
\u4|ALT_INV_state.write_char~regout\ <= NOT \u4|state.write_char~regout\;
\u0|ALT_INV_tix_mem\(0) <= NOT \u0|tix_mem\(0);
\u2|ALT_INV_Mux15~0_combout\ <= NOT \u2|Mux15~0_combout\;
\u2|ALT_INV_U6bcd[3]~6_combout\ <= NOT \u2|U6bcd[3]~6_combout\;
\u2|ALT_INV_Mux7~0_combout\ <= NOT \u2|Mux7~0_combout\;
\u2|ALT_INV_is_gt_4~1_combout\ <= NOT \u2|is_gt_4~1_combout\;
\u2|ALT_INV_Mux0~0_combout\ <= NOT \u2|Mux0~0_combout\;

-- Location: LCFF_X48_Y3_N31
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

-- Location: LCFF_X51_Y3_N21
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

-- Location: LCFF_X51_Y3_N15
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

-- Location: LCFF_X51_Y3_N13
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

-- Location: LCFF_X51_Y2_N17
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

-- Location: LCFF_X51_Y2_N19
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

-- Location: LCCOMB_X49_Y2_N8
\u5|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~3_combout\ = (\u5|rpm\(1) & (!\u5|Add1~1\)) # (!\u5|rpm\(1) & ((\u5|Add1~1\) # (GND)))
-- \u5|Add1~4\ = CARRY((!\u5|Add1~1\) # (!\u5|rpm\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm\(1),
	datad => VCC,
	cin => \u5|Add1~1\,
	combout => \u5|Add1~3_combout\,
	cout => \u5|Add1~4\);

-- Location: LCCOMB_X49_Y2_N10
\u5|Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~5_combout\ = (\u5|rpm\(2) & (\u5|Add1~4\ $ (GND))) # (!\u5|rpm\(2) & (!\u5|Add1~4\ & VCC))
-- \u5|Add1~6\ = CARRY((\u5|rpm\(2) & !\u5|Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm\(2),
	datad => VCC,
	cin => \u5|Add1~4\,
	combout => \u5|Add1~5_combout\,
	cout => \u5|Add1~6\);

-- Location: LCCOMB_X49_Y2_N12
\u5|Add1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~7_combout\ = (\u5|rpm\(3) & (!\u5|Add1~6\)) # (!\u5|rpm\(3) & ((\u5|Add1~6\) # (GND)))
-- \u5|Add1~8\ = CARRY((!\u5|Add1~6\) # (!\u5|rpm\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm\(3),
	datad => VCC,
	cin => \u5|Add1~6\,
	combout => \u5|Add1~7_combout\,
	cout => \u5|Add1~8\);

-- Location: LCCOMB_X49_Y2_N14
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

-- Location: LCCOMB_X48_Y3_N28
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

-- Location: LCCOMB_X48_Y3_N30
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

-- Location: LCCOMB_X47_Y2_N12
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

-- Location: LCCOMB_X47_Y2_N16
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

-- Location: LCCOMB_X47_Y2_N18
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

-- Location: LCCOMB_X47_Y2_N22
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

-- Location: LCCOMB_X47_Y2_N26
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

-- Location: LCCOMB_X47_Y2_N28
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

-- Location: LCCOMB_X47_Y2_N30
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

-- Location: LCCOMB_X51_Y3_N12
\u5|x[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[0]~20_combout\ = (\u5|x\(0) & ((GND) # (!\u5|tix_int\(0)))) # (!\u5|x\(0) & (\u5|tix_int\(0) $ (GND)))
-- \u5|x[0]~21\ = CARRY((\u5|x\(0)) # (!\u5|tix_int\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(0),
	datab => \u5|tix_int\(0),
	datad => VCC,
	combout => \u5|x[0]~20_combout\,
	cout => \u5|x[0]~21\);

-- Location: LCCOMB_X51_Y3_N14
\u5|x[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[1]~22_combout\ = (\u5|x\(1) & ((\u5|tix_int\(1) & (!\u5|x[0]~21\)) # (!\u5|tix_int\(1) & (\u5|x[0]~21\ & VCC)))) # (!\u5|x\(1) & ((\u5|tix_int\(1) & ((\u5|x[0]~21\) # (GND))) # (!\u5|tix_int\(1) & (!\u5|x[0]~21\))))
-- \u5|x[1]~23\ = CARRY((\u5|x\(1) & (\u5|tix_int\(1) & !\u5|x[0]~21\)) # (!\u5|x\(1) & ((\u5|tix_int\(1)) # (!\u5|x[0]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(1),
	datab => \u5|tix_int\(1),
	datad => VCC,
	cin => \u5|x[0]~21\,
	combout => \u5|x[1]~22_combout\,
	cout => \u5|x[1]~23\);

-- Location: LCCOMB_X51_Y3_N20
\u5|x[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[4]~28_combout\ = ((\u5|x\(4) $ (\u5|tix_int\(4) $ (\u5|x[3]~27\)))) # (GND)
-- \u5|x[4]~29\ = CARRY((\u5|x\(4) & ((!\u5|x[3]~27\) # (!\u5|tix_int\(4)))) # (!\u5|x\(4) & (!\u5|tix_int\(4) & !\u5|x[3]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(4),
	datab => \u5|tix_int\(4),
	datad => VCC,
	cin => \u5|x[3]~27\,
	combout => \u5|x[4]~28_combout\,
	cout => \u5|x[4]~29\);

-- Location: LCCOMB_X51_Y2_N14
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

-- Location: LCCOMB_X51_Y2_N16
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

-- Location: LCCOMB_X51_Y2_N18
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

-- Location: LCCOMB_X93_Y26_N10
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

-- Location: LCCOMB_X93_Y26_N24
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

-- Location: LCCOMB_X93_Y26_N26
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

-- Location: LCCOMB_X92_Y39_N12
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

-- Location: LCCOMB_X92_Y38_N14
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

-- Location: LCFF_X88_Y39_N23
\u4|data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Mux7~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.write_char~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|data\(1));

-- Location: LCFF_X88_Y37_N19
\u4|data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Mux3~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.write_char~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|data\(5));

-- Location: LCFF_X88_Y37_N21
\u4|data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Mux2~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.write_char~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|data\(6));

-- Location: LCCOMB_X87_Y38_N4
\u4|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Add1~0_combout\ = \u4|character_counter\(0) $ (GND)
-- \u4|Add1~1\ = CARRY(!\u4|character_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datad => VCC,
	combout => \u4|Add1~0_combout\,
	cout => \u4|Add1~1\);

-- Location: LCCOMB_X87_Y38_N6
\u4|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Add1~2_combout\ = (\u4|character_counter\(1) & (!\u4|Add1~1\)) # (!\u4|character_counter\(1) & ((\u4|Add1~1\) # (GND)))
-- \u4|Add1~3\ = CARRY((!\u4|Add1~1\) # (!\u4|character_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|character_counter\(1),
	datad => VCC,
	cin => \u4|Add1~1\,
	combout => \u4|Add1~2_combout\,
	cout => \u4|Add1~3\);

-- Location: LCCOMB_X87_Y38_N8
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

-- Location: LCCOMB_X87_Y38_N10
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

-- Location: LCCOMB_X87_Y38_N12
\u4|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Add1~8_combout\ = \u4|character_counter\(4) $ (!\u4|Add1~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|character_counter\(4),
	cin => \u4|Add1~7\,
	combout => \u4|Add1~8_combout\);

-- Location: LCCOMB_X53_Y2_N6
\u2|is_gt_4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~2_combout\ = (\u2|U1bcd[2]~1_combout\) # ((\u2|U1bcd[1]~2_combout\ & ((\u2|U1bcd[0]~0_combout\) # (\u5|rpm_mem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U1bcd[1]~2_combout\,
	datab => \u2|U1bcd[2]~1_combout\,
	datac => \u2|U1bcd[0]~0_combout\,
	datad => \u5|rpm_mem\(3),
	combout => \u2|is_gt_4~2_combout\);

-- Location: LCCOMB_X54_Y2_N16
\u2|is_gt_4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~4_combout\ = (\u2|U2bcd[3]~3_combout\ & ((\u2|is_gt_4~1_combout\) # (\u2|U2bcd[2]~1_combout\ $ (\u2|is_gt_4~3_combout\)))) # (!\u2|U2bcd[3]~3_combout\ & ((\u2|U2bcd[2]~1_combout\ $ (\u2|is_gt_4~3_combout\)) # (!\u2|is_gt_4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U2bcd[3]~3_combout\,
	datab => \u2|is_gt_4~1_combout\,
	datac => \u2|U2bcd[2]~1_combout\,
	datad => \u2|is_gt_4~3_combout\,
	combout => \u2|is_gt_4~4_combout\);

-- Location: LCCOMB_X53_Y2_N2
\u2|U6bcd[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[1]~2_combout\ = (\u5|rpm_mem\(7) & (\u5|rpm_mem\(5) & (\u5|rpm_mem\(6) & \u5|rpm_mem\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(7),
	datab => \u5|rpm_mem\(5),
	datac => \u5|rpm_mem\(6),
	datad => \u5|rpm_mem\(4),
	combout => \u2|U6bcd[1]~2_combout\);

-- Location: LCFF_X47_Y2_N17
\u0|wait_time[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|Add1~6_combout\,
	ena => \u0|wait_time[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(3));

-- Location: LCFF_X47_Y2_N13
\u0|wait_time[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|Add1~2_combout\,
	ena => \u0|wait_time[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(1));

-- Location: LCCOMB_X89_Y38_N24
\u4|lcdm|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr3~0_combout\ = (!\u4|lcdm|current_state.pulse_busy_flag_4~regout\ & (!\u4|lcdm|current_state.pulse_busy_flag_5~regout\ & (!\u4|lcdm|current_state.pulse_e_4~regout\ & !\u4|lcdm|current_state.pulse_e~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag_4~regout\,
	datab => \u4|lcdm|current_state.pulse_busy_flag_5~regout\,
	datac => \u4|lcdm|current_state.pulse_e_4~regout\,
	datad => \u4|lcdm|current_state.pulse_e~regout\,
	combout => \u4|lcdm|WideOr3~0_combout\);

-- Location: LCFF_X50_Y3_N21
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

-- Location: LCCOMB_X50_Y3_N28
\u5|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan0~0_combout\ = (\u5|tix_int\(3) & ((\u5|tix_int\(2)) # ((\u5|tix_int\(1)) # (\u5|tix_int\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(2),
	datab => \u5|tix_int\(1),
	datac => \u5|tix_int\(3),
	datad => \u5|tix_int\(0),
	combout => \u5|LessThan0~0_combout\);

-- Location: LCCOMB_X50_Y3_N22
\u5|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan0~1_combout\ = (\u5|tix_int\(6)) # ((\u5|tix_int\(5) & (\u5|tix_int\(4) & \u5|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(6),
	datab => \u5|tix_int\(5),
	datac => \u5|tix_int\(4),
	datad => \u5|LessThan0~0_combout\,
	combout => \u5|LessThan0~1_combout\);

-- Location: LCCOMB_X50_Y3_N12
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

-- Location: LCCOMB_X50_Y3_N14
\u5|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan0~3_combout\ = (\u5|tix_int\(11) & ((\u5|tix_int\(10)) # ((\u5|LessThan0~1_combout\ & \u5|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(10),
	datab => \u5|LessThan0~1_combout\,
	datac => \u5|tix_int\(11),
	datad => \u5|LessThan0~2_combout\,
	combout => \u5|LessThan0~3_combout\);

-- Location: LCCOMB_X51_Y3_N2
\u5|rpm[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[3]~0_combout\ = (!\u5|tix_int\(13) & (!\u5|tix_int\(12) & (!\u5|tix_int\(14) & !\u5|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(13),
	datab => \u5|tix_int\(12),
	datac => \u5|tix_int\(14),
	datad => \u5|LessThan0~3_combout\,
	combout => \u5|rpm[3]~0_combout\);

-- Location: LCCOMB_X51_Y3_N4
\u5|rpm[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[3]~1_combout\ = (\u5|tix_int\(13) & (\u5|tix_int\(14) & \u5|tix_int\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(13),
	datac => \u5|tix_int\(14),
	datad => \u5|tix_int\(12),
	combout => \u5|rpm[3]~1_combout\);

-- Location: LCCOMB_X51_Y3_N6
\u5|rpm[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[3]~6_combout\ = (!\u5|tix_int\(15) & (!\u5|rpm[3]~4_combout\ & !\u5|rpm[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|tix_int\(15),
	datac => \u5|rpm[3]~4_combout\,
	datad => \u5|rpm[3]~0_combout\,
	combout => \u5|rpm[3]~6_combout\);

-- Location: LCFF_X93_Y26_N29
\u1|count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(11));

-- Location: LCFF_X93_Y26_N11
\u1|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~6_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(3));

-- Location: LCFF_X47_Y3_N1
\u0|stop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|stop~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|stop~regout\);

-- Location: LCCOMB_X90_Y38_N10
\u4|lcdm|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Equal0~0_combout\ = (!\u4|lcdm|delay_counter\(3) & (!\u4|lcdm|delay_counter\(1) & (!\u4|lcdm|delay_counter\(2) & !\u4|lcdm|delay_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(3),
	datab => \u4|lcdm|delay_counter\(1),
	datac => \u4|lcdm|delay_counter\(2),
	datad => \u4|lcdm|delay_counter\(4),
	combout => \u4|lcdm|Equal0~0_combout\);

-- Location: LCFF_X91_Y38_N11
\u4|lcdm|delay_counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector4~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(17));

-- Location: LCFF_X89_Y37_N11
\u4|goto30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|goto30~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|goto30~regout\);

-- Location: LCFF_X89_Y38_N13
\u4|lcdm|current_state.command_init_5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector28~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_5~regout\);

-- Location: LCCOMB_X93_Y26_N28
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

-- Location: LCCOMB_X47_Y3_N0
\u0|stop~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|stop~0_combout\ = (!\u0|process_0~0_combout\ & ((\u0|count\(15)) # ((\u0|stop~regout\) # (\u0|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|process_0~0_combout\,
	datab => \u0|count\(15),
	datac => \u0|stop~regout\,
	datad => \u0|LessThan0~5_combout\,
	combout => \u0|stop~0_combout\);

-- Location: LCCOMB_X91_Y39_N10
\u4|lcdm|Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector17~1_combout\ = (!\u4|lcdm|Equal0~6_combout\ & (\u4|lcdm|Add0~8_combout\ & ((\u4|lcdm|LCD_E~0_combout\) # (!\u4|lcdm|WideOr33~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|LCD_E~0_combout\,
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|WideOr33~2_combout\,
	datad => \u4|lcdm|Add0~8_combout\,
	combout => \u4|lcdm|Selector17~1_combout\);

-- Location: LCCOMB_X91_Y38_N30
\u4|lcdm|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector4~0_combout\ = (\u4|lcdm|Add0~34_combout\ & (!\u4|lcdm|Equal0~6_combout\ & ((!\u4|lcdm|WideOr33~0_combout\) # (!\u4|lcdm|WideOr33~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr33~2_combout\,
	datab => \u4|lcdm|WideOr33~0_combout\,
	datac => \u4|lcdm|Add0~34_combout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector4~0_combout\);

-- Location: LCCOMB_X91_Y37_N30
\u4|lcdm|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector4~1_combout\ = (\u4|lcdm|current_state.reset~regout\ & !\u4|lcdm|current_state.command_init_2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.reset~regout\,
	datad => \u4|lcdm|current_state.command_init_2~regout\,
	combout => \u4|lcdm|Selector4~1_combout\);

-- Location: LCCOMB_X91_Y38_N10
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

-- Location: LCFF_X90_Y39_N11
\u4|lcdm|return_state.wait_for_command\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector68~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.wait_for_command~regout\);

-- Location: LCCOMB_X88_Y37_N28
\u4|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux9~0_combout\ = (\u4|line_counter\(1)) # (\u4|line_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|line_counter\(1),
	datad => \u4|line_counter\(2),
	combout => \u4|Mux9~0_combout\);

-- Location: LCCOMB_X89_Y38_N12
\u4|lcdm|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector28~0_combout\ = (\u4|lcdm|current_state.command_init_4~regout\) # ((!\u4|lcdm|Equal0~6_combout\ & \u4|lcdm|current_state.command_init_5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_4~regout\,
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|current_state.command_init_5~regout\,
	combout => \u4|lcdm|Selector28~0_combout\);

-- Location: LCFF_X90_Y39_N21
\u4|lcdm|return_state.command_init_8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector63~2_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_8~regout\);

-- Location: LCFF_X90_Y39_N3
\u4|lcdm|return_state.command_init_11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector66~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_11~regout\);

-- Location: LCFF_X90_Y39_N13
\u4|lcdm|return_state.command_init_9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector64~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_9~regout\);

-- Location: LCFF_X90_Y39_N31
\u4|lcdm|return_state.command_init_10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector65~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_10~regout\);

-- Location: LCFF_X91_Y37_N7
\u4|lcdm|return_state.command_init_6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector61~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_6~regout\);

-- Location: LCFF_X90_Y39_N29
\u4|lcdm|return_state.command_init_7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector62~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_7~regout\);

-- Location: LCCOMB_X91_Y39_N24
\u4|lcdm|Selector99~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector99~1_combout\ = (!\u4|lcdm|current_state.command_init_10~regout\ & (!\u4|lcdm|current_state.command_init_9~regout\ & \u4|lcdm|Selector99~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.command_init_10~regout\,
	datac => \u4|lcdm|current_state.command_init_9~regout\,
	datad => \u4|lcdm|Selector99~0_combout\,
	combout => \u4|lcdm|Selector99~1_combout\);

-- Location: LCFF_X91_Y37_N25
\u4|lcdm|return_state.command_init_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector57~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_2~regout\);

-- Location: LCFF_X91_Y37_N23
\u4|lcdm|return_state.command_init_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector59~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.command_init_4~regout\);

-- Location: LCFF_X89_Y38_N29
\u4|lcdm|return_state.reset\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|return_state.reset~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|return_state.reset~regout\);

-- Location: LCCOMB_X90_Y39_N4
\u4|lcdm|Selector68~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector68~0_combout\ = (\u4|lcdm|current_state.command_wr~regout\) # ((\u4|lcdm|current_state.command_goto10~regout\) # ((\u4|lcdm|current_state.command_home~regout\) # (\u4|lcdm|current_state.command_init_11~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_wr~regout\,
	datab => \u4|lcdm|current_state.command_goto10~regout\,
	datac => \u4|lcdm|current_state.command_home~regout\,
	datad => \u4|lcdm|current_state.command_init_11~regout\,
	combout => \u4|lcdm|Selector68~0_combout\);

-- Location: LCCOMB_X91_Y37_N8
\u4|lcdm|WideOr41~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr41~1_combout\ = ((!\u4|lcdm|WideOr18~2_combout\) # (!\u4|lcdm|Selector102~1_combout\)) # (!\u4|lcdm|WideOr41~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|WideOr41~0_combout\,
	datac => \u4|lcdm|Selector102~1_combout\,
	datad => \u4|lcdm|WideOr18~2_combout\,
	combout => \u4|lcdm|WideOr41~1_combout\);

-- Location: LCCOMB_X90_Y39_N10
\u4|lcdm|Selector68~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector68~1_combout\ = ((\u4|lcdm|Selector68~0_combout\) # ((\u4|lcdm|return_state.wait_for_command~regout\ & \u4|lcdm|Selector63~3_combout\))) # (!\u4|lcdm|Selector102~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector102~0_combout\,
	datab => \u4|lcdm|Selector68~0_combout\,
	datac => \u4|lcdm|return_state.wait_for_command~regout\,
	datad => \u4|lcdm|Selector63~3_combout\,
	combout => \u4|lcdm|Selector68~1_combout\);

-- Location: LCCOMB_X88_Y38_N10
\u4|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector1~0_combout\ = (\u4|state.update~regout\ & (\u4|lcdm|busy~regout\ & ((\u4|Equal1~0_combout\) # (\u4|character_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Equal1~0_combout\,
	datab => \u4|state.update~regout\,
	datac => \u4|character_counter\(2),
	datad => \u4|lcdm|busy~regout\,
	combout => \u4|Selector1~0_combout\);

-- Location: LCFF_X88_Y38_N25
\u4|state.update_linecount\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector4~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|state.update_linecount~regout\);

-- Location: LCCOMB_X87_Y38_N24
\u4|Selector18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector18~2_combout\ = ((!\u4|character_counter\(0) & !\u4|lcdm|busy~regout\)) # (!\u4|state.update~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update~regout\,
	datac => \u4|character_counter\(0),
	datad => \u4|lcdm|busy~regout\,
	combout => \u4|Selector18~2_combout\);

-- Location: LCCOMB_X87_Y38_N30
\u4|Selector14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector14~1_combout\ = (\u4|Add1~8_combout\ & ((\u4|Equal1~0_combout\) # (\u4|character_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Add1~8_combout\,
	datab => \u4|Equal1~0_combout\,
	datad => \u4|character_counter\(2),
	combout => \u4|Selector14~1_combout\);

-- Location: LCCOMB_X90_Y39_N20
\u4|lcdm|Selector63~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector63~2_combout\ = (\u4|lcdm|current_state.command_init_7~regout\) # ((\u4|lcdm|return_state.command_init_8~regout\ & \u4|lcdm|Selector63~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_7~regout\,
	datac => \u4|lcdm|return_state.command_init_8~regout\,
	datad => \u4|lcdm|Selector63~3_combout\,
	combout => \u4|lcdm|Selector63~2_combout\);

-- Location: LCCOMB_X90_Y39_N2
\u4|lcdm|Selector66~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector66~0_combout\ = (\u4|lcdm|current_state.command_init_10~regout\) # ((\u4|lcdm|return_state.command_init_11~regout\ & \u4|lcdm|Selector63~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_10~regout\,
	datac => \u4|lcdm|return_state.command_init_11~regout\,
	datad => \u4|lcdm|Selector63~3_combout\,
	combout => \u4|lcdm|Selector66~0_combout\);

-- Location: LCCOMB_X90_Y39_N12
\u4|lcdm|Selector64~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector64~0_combout\ = (\u4|lcdm|current_state.command_init_8~regout\) # ((\u4|lcdm|return_state.command_init_9~regout\ & \u4|lcdm|Selector63~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.command_init_8~regout\,
	datac => \u4|lcdm|return_state.command_init_9~regout\,
	datad => \u4|lcdm|Selector63~3_combout\,
	combout => \u4|lcdm|Selector64~0_combout\);

-- Location: LCCOMB_X90_Y39_N30
\u4|lcdm|Selector65~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector65~0_combout\ = (\u4|lcdm|current_state.command_init_9~regout\) # ((\u4|lcdm|return_state.command_init_10~regout\ & \u4|lcdm|Selector63~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.command_init_9~regout\,
	datac => \u4|lcdm|return_state.command_init_10~regout\,
	datad => \u4|lcdm|Selector63~3_combout\,
	combout => \u4|lcdm|Selector65~0_combout\);

-- Location: LCCOMB_X91_Y37_N26
\u4|lcdm|Selector61~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector61~0_combout\ = (\u4|lcdm|WideOr41~1_combout\ & ((\u4|lcdm|Equal0~6_combout\) # ((!\u4|lcdm|current_state.command_init_3~regout\ & !\u4|lcdm|current_state.command_init_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_3~regout\,
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|WideOr41~1_combout\,
	datad => \u4|lcdm|current_state.command_init_1~regout\,
	combout => \u4|lcdm|Selector61~0_combout\);

-- Location: LCCOMB_X91_Y37_N6
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

-- Location: LCCOMB_X90_Y39_N28
\u4|lcdm|Selector62~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector62~0_combout\ = (\u4|lcdm|current_state.command_init_6~regout\) # ((\u4|lcdm|return_state.command_init_7~regout\ & \u4|lcdm|Selector63~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_6~regout\,
	datac => \u4|lcdm|return_state.command_init_7~regout\,
	datad => \u4|lcdm|Selector63~3_combout\,
	combout => \u4|lcdm|Selector62~0_combout\);

-- Location: LCCOMB_X88_Y39_N6
\u4|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux7~1_combout\ = (\u4|character_counter\(1) & (!\u4|line_counter\(1) & (\u4|character_counter\(0) & !\u4|line_counter\(2)))) # (!\u4|character_counter\(1) & (\u4|line_counter\(1) & (!\u4|character_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|line_counter\(1),
	datac => \u4|character_counter\(0),
	datad => \u4|line_counter\(2),
	combout => \u4|Mux7~1_combout\);

-- Location: LCCOMB_X88_Y39_N4
\u4|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux7~2_combout\ = (\u4|character_counter\(1) & (!\u4|character_counter\(2))) # (!\u4|character_counter\(1) & (\u4|character_counter\(2) & \u4|line_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|character_counter\(2),
	datad => \u4|line_counter\(0),
	combout => \u4|Mux7~2_combout\);

-- Location: LCCOMB_X88_Y39_N22
\u4|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux7~3_combout\ = (\u4|Mux7~0_combout\) # ((\u4|Mux7~1_combout\ & (!\u4|character_counter\(3) & !\u4|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux7~1_combout\,
	datab => \u4|character_counter\(3),
	datac => \u4|Mux7~2_combout\,
	datad => \u4|Mux7~0_combout\,
	combout => \u4|Mux7~3_combout\);

-- Location: LCCOMB_X87_Y39_N0
\u4|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux5~1_combout\ = (\u4|character_counter\(1) & (!\u4|character_counter\(3) & (\u4|character_counter\(2) $ (\u4|character_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|character_counter\(1),
	datac => \u4|character_counter\(0),
	datad => \u4|character_counter\(3),
	combout => \u4|Mux5~1_combout\);

-- Location: LCCOMB_X88_Y37_N24
\u4|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux3~0_combout\ = (!\u4|character_counter\(2) & ((\u4|line_counter\(1)) # ((\u4|line_counter\(2)) # (!\u4|character_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|line_counter\(1),
	datac => \u4|character_counter\(0),
	datad => \u4|line_counter\(2),
	combout => \u4|Mux3~0_combout\);

-- Location: LCCOMB_X88_Y37_N22
\u4|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux3~1_combout\ = (\u4|character_counter\(3)) # ((\u4|character_counter\(2) & ((\u4|line_counter\(0)) # (!\u4|line_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|character_counter\(3),
	datac => \u4|line_counter\(0),
	datad => \u4|line_counter\(1),
	combout => \u4|Mux3~1_combout\);

-- Location: LCCOMB_X88_Y37_N18
\u4|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux3~2_combout\ = (\u4|Mux3~0_combout\) # ((\u4|Mux3~1_combout\) # ((!\u4|character_counter\(1) & \u4|character_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux3~0_combout\,
	datab => \u4|character_counter\(1),
	datac => \u4|character_counter\(0),
	datad => \u4|Mux3~1_combout\,
	combout => \u4|Mux3~2_combout\);

-- Location: LCCOMB_X88_Y37_N12
\u4|Mux8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux8~5_combout\ = (\u4|character_counter\(2) & (((!\u4|line_counter\(0))))) # (!\u4|character_counter\(2) & (!\u4|line_counter\(1) & ((!\u4|line_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|line_counter\(1),
	datac => \u4|line_counter\(0),
	datad => \u4|line_counter\(2),
	combout => \u4|Mux8~5_combout\);

-- Location: LCCOMB_X88_Y37_N30
\u4|Mux8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux8~6_combout\ = (\u4|character_counter\(2) & ((\u4|character_counter\(0) & ((!\u4|Mux9~0_combout\))) # (!\u4|character_counter\(0) & (\u4|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|Mux1~0_combout\,
	datac => \u4|character_counter\(0),
	datad => \u4|Mux9~0_combout\,
	combout => \u4|Mux8~6_combout\);

-- Location: LCCOMB_X87_Y37_N30
\u4|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux2~0_combout\ = (\u4|character_counter\(1) & ((\u4|character_counter\(3)) # ((\u4|Mux8~5_combout\)))) # (!\u4|character_counter\(1) & (!\u4|character_counter\(3) & ((\u4|Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|character_counter\(3),
	datac => \u4|Mux8~5_combout\,
	datad => \u4|Mux8~6_combout\,
	combout => \u4|Mux2~0_combout\);

-- Location: LCCOMB_X88_Y37_N20
\u4|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux2~1_combout\ = (\u4|character_counter\(3) & (\u4|Mux8~4_combout\ & ((\u4|character_counter\(0)) # (!\u4|Mux2~0_combout\)))) # (!\u4|character_counter\(3) & (((\u4|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|character_counter\(3),
	datac => \u4|Mux2~0_combout\,
	datad => \u4|Mux8~4_combout\,
	combout => \u4|Mux2~1_combout\);

-- Location: LCCOMB_X91_Y37_N16
\u4|lcdm|Selector57~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector57~0_combout\ = (\u4|lcdm|WideOr41~1_combout\ & ((\u4|lcdm|Equal0~6_combout\) # ((!\u4|lcdm|current_state.command_init_3~regout\ & !\u4|lcdm|current_state.command_init_5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_3~regout\,
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|WideOr41~1_combout\,
	datad => \u4|lcdm|current_state.command_init_5~regout\,
	combout => \u4|lcdm|Selector57~0_combout\);

-- Location: LCCOMB_X91_Y37_N24
\u4|lcdm|Selector57~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector57~1_combout\ = (\u4|lcdm|return_state.command_init_2~regout\ & (((\u4|lcdm|current_state.command_init_1~regout\)) # (!\u4|lcdm|Selector57~0_combout\))) # (!\u4|lcdm|return_state.command_init_2~regout\ & (((\u4|lcdm|Equal0~6_combout\ & 
-- \u4|lcdm|current_state.command_init_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector57~0_combout\,
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|return_state.command_init_2~regout\,
	datad => \u4|lcdm|current_state.command_init_1~regout\,
	combout => \u4|lcdm|Selector57~1_combout\);

-- Location: LCCOMB_X91_Y37_N18
\u4|lcdm|Selector59~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector59~0_combout\ = (\u4|lcdm|WideOr41~1_combout\ & ((\u4|lcdm|Equal0~6_combout\) # ((!\u4|lcdm|current_state.command_init_1~regout\ & !\u4|lcdm|current_state.command_init_5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_1~regout\,
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|WideOr41~1_combout\,
	datad => \u4|lcdm|current_state.command_init_5~regout\,
	combout => \u4|lcdm|Selector59~0_combout\);

-- Location: LCCOMB_X91_Y37_N22
\u4|lcdm|Selector59~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector59~1_combout\ = (\u4|lcdm|current_state.command_init_3~regout\ & ((\u4|lcdm|Equal0~6_combout\) # ((\u4|lcdm|return_state.command_init_4~regout\)))) # (!\u4|lcdm|current_state.command_init_3~regout\ & 
-- (((\u4|lcdm|return_state.command_init_4~regout\ & !\u4|lcdm|Selector59~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_3~regout\,
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|return_state.command_init_4~regout\,
	datad => \u4|lcdm|Selector59~0_combout\,
	combout => \u4|lcdm|Selector59~1_combout\);

-- Location: LCCOMB_X89_Y38_N22
\u4|lcdm|return_state.reset~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|return_state.reset~0_combout\ = (\BUTTON~combout\(3) & (((\u4|lcdm|Equal0~6_combout\ & !\u4|lcdm|WideOr41~0_combout\)) # (!\u4|lcdm|WideOr18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|WideOr18~3_combout\,
	datad => \u4|lcdm|WideOr41~0_combout\,
	combout => \u4|lcdm|return_state.reset~0_combout\);

-- Location: LCCOMB_X89_Y38_N28
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

-- Location: LCCOMB_X88_Y38_N24
\u4|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector4~0_combout\ = (!\u4|Equal1~1_combout\ & (\u4|Selector12~0_combout\ & ((!\u4|line_counter\(0)) # (!\u4|drive~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Equal1~1_combout\,
	datab => \u4|drive~0_combout\,
	datac => \u4|line_counter\(0),
	datad => \u4|Selector12~0_combout\,
	combout => \u4|Selector4~0_combout\);

-- Location: LCCOMB_X89_Y37_N10
\u4|goto30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|goto30~2_combout\ = (\u4|line_counter\(1) & (\u4|state.update~regout\ & (!\u4|line_counter\(0) & \u4|line_counter~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \u4|state.update~regout\,
	datac => \u4|line_counter\(0),
	datad => \u4|line_counter~0_combout\,
	combout => \u4|goto30~2_combout\);

-- Location: LCCOMB_X90_Y39_N22
\u4|lcdm|Selector63~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector63~3_combout\ = (\u4|lcdm|WideOr41~0_combout\ & (\u4|lcdm|Selector102~1_combout\ & (\u4|lcdm|WideOr18~2_combout\))) # (!\u4|lcdm|WideOr41~0_combout\ & (((!\u4|lcdm|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr41~0_combout\,
	datab => \u4|lcdm|Selector102~1_combout\,
	datac => \u4|lcdm|WideOr18~2_combout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector63~3_combout\);

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

-- Location: LCCOMB_X90_Y37_N28
\u4|lcdm|Selector45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector45~0_combout\ = (\u4|lcdm|Equal0~6_combout\ & (\u4|lcdm|current_state.pulse_e_1~regout\)) # (!\u4|lcdm|Equal0~6_combout\ & ((\u4|lcdm|current_state.pulse_e_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_e_1~regout\,
	datac => \u4|lcdm|current_state.pulse_e_2~regout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector45~0_combout\);

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

-- Location: LCFF_X90_Y37_N29
\u4|lcdm|current_state.pulse_e_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector45~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_e_2~regout\);

-- Location: LCCOMB_X90_Y37_N0
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

-- Location: LCFF_X90_Y37_N1
\u4|lcdm|current_state.pulse_e_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector46~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_e_3~regout\);

-- Location: LCCOMB_X89_Y38_N4
\u4|lcdm|Selector47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector47~0_combout\ = (\u4|lcdm|Equal0~6_combout\ & ((\u4|lcdm|current_state.pulse_e_3~regout\))) # (!\u4|lcdm|Equal0~6_combout\ & (\u4|lcdm|current_state.pulse_e_4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|current_state.pulse_e_4~regout\,
	datad => \u4|lcdm|current_state.pulse_e_3~regout\,
	combout => \u4|lcdm|Selector47~0_combout\);

-- Location: LCFF_X89_Y38_N5
\u4|lcdm|current_state.pulse_e_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector47~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_e_4~regout\);

-- Location: LCCOMB_X89_Y38_N14
\u4|lcdm|Selector52~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector52~0_combout\ = (!\u4|lcdm|current_state.pulse_e_4~regout\ & !\u4|lcdm|current_state.pulse_busy_flag_4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|current_state.pulse_e_4~regout\,
	datad => \u4|lcdm|current_state.pulse_busy_flag_4~regout\,
	combout => \u4|lcdm|Selector52~0_combout\);

-- Location: LCCOMB_X90_Y37_N22
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

-- Location: LCFF_X90_Y37_N23
\u4|lcdm|current_state.pulse_busy_flag_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector49~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_busy_flag_1~regout\);

-- Location: LCCOMB_X90_Y37_N26
\u4|lcdm|Selector50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector50~0_combout\ = (\u4|lcdm|Equal0~6_combout\ & (\u4|lcdm|current_state.pulse_busy_flag_1~regout\)) # (!\u4|lcdm|Equal0~6_combout\ & ((\u4|lcdm|current_state.pulse_busy_flag_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.pulse_busy_flag_1~regout\,
	datac => \u4|lcdm|current_state.pulse_busy_flag_2~regout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector50~0_combout\);

-- Location: LCFF_X90_Y37_N27
\u4|lcdm|current_state.pulse_busy_flag_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector50~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_busy_flag_2~regout\);

-- Location: LCCOMB_X90_Y37_N18
\u4|lcdm|Selector51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector51~0_combout\ = (\u4|lcdm|Equal0~6_combout\ & (((\u4|lcdm|current_state.pulse_busy_flag_2~regout\)))) # (!\u4|lcdm|Equal0~6_combout\ & (!\u4|lcdm|Selector52~0_combout\ & (\u4|lcdm|current_state.pulse_busy_flag_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|Selector52~0_combout\,
	datac => \u4|lcdm|current_state.pulse_busy_flag_3~regout\,
	datad => \u4|lcdm|current_state.pulse_busy_flag_2~regout\,
	combout => \u4|lcdm|Selector51~0_combout\);

-- Location: LCFF_X90_Y37_N19
\u4|lcdm|current_state.pulse_busy_flag_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector51~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_busy_flag_3~regout\);

-- Location: LCCOMB_X89_Y38_N6
\u4|lcdm|Selector52~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector52~4_combout\ = (\u4|lcdm|current_state.pulse_busy_flag_3~regout\ & !\LCD_DATA[7]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|current_state.pulse_busy_flag_3~regout\,
	datad => \LCD_DATA[7]~7\,
	combout => \u4|lcdm|Selector52~4_combout\);

-- Location: LCCOMB_X90_Y38_N20
\u4|lcdm|Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector36~0_combout\ = (\u4|lcdm|Selector35~1_combout\ & ((\u4|lcdm|Selector53~3_combout\ & (\u4|lcdm|return_state.wait_for_command~regout\)) # (!\u4|lcdm|Selector53~3_combout\ & ((\u4|lcdm|current_state.wait_for_command~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.wait_for_command~regout\,
	datab => \u4|lcdm|Selector35~1_combout\,
	datac => \u4|lcdm|current_state.wait_for_command~regout\,
	datad => \u4|lcdm|Selector53~3_combout\,
	combout => \u4|lcdm|Selector36~0_combout\);

-- Location: LCFF_X90_Y38_N21
\u4|lcdm|current_state.wait_for_command\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector36~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.wait_for_command~regout\);

-- Location: LCCOMB_X89_Y37_N26
\u4|lcdm|busy~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|busy~0_combout\ = (!\u4|wr~regout\ & (\u4|lcdm|LCD_DB[0]~8_combout\ & \u4|lcdm|current_state.wait_for_command~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|wr~regout\,
	datac => \u4|lcdm|LCD_DB[0]~8_combout\,
	datad => \u4|lcdm|current_state.wait_for_command~regout\,
	combout => \u4|lcdm|busy~0_combout\);

-- Location: LCFF_X89_Y37_N27
\u4|lcdm|busy\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|busy~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|busy~regout\);

-- Location: LCCOMB_X88_Y38_N26
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

-- Location: LCFF_X88_Y38_N27
\u4|state.update_linecount_wait\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector5~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|state.update_linecount_wait~regout\);

-- Location: LCCOMB_X88_Y38_N0
\u4|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector1~1_combout\ = (!\u4|state.update_linecount~regout\ & (!\u4|state.hold~regout\ & (!\u4|state.write_char~regout\ & !\u4|wr~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update_linecount~regout\,
	datab => \u4|state.hold~regout\,
	datac => \u4|state.write_char~regout\,
	datad => \u4|wr~regout\,
	combout => \u4|Selector1~1_combout\);

-- Location: LCCOMB_X88_Y38_N12
\u4|WideOr7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|WideOr7~combout\ = (\u4|state.update_linecount_wait~regout\) # ((\u4|state.hold2~regout\) # (!\u4|Selector1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|state.update_linecount_wait~regout\,
	datac => \u4|state.hold2~regout\,
	datad => \u4|Selector1~1_combout\,
	combout => \u4|WideOr7~combout\);

-- Location: LCCOMB_X88_Y38_N28
\u4|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector15~0_combout\ = (\u4|WideOr7~combout\) # ((\u4|state.update~regout\ & !\u4|Selector18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|state.update~regout\,
	datac => \u4|Selector18~0_combout\,
	datad => \u4|WideOr7~combout\,
	combout => \u4|Selector15~0_combout\);

-- Location: LCCOMB_X87_Y38_N0
\u4|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector16~0_combout\ = (\u4|Add1~4_combout\ & ((\u4|Selector14~0_combout\) # ((\u4|character_counter\(2) & \u4|Selector15~0_combout\)))) # (!\u4|Add1~4_combout\ & (((\u4|character_counter\(2) & \u4|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Add1~4_combout\,
	datab => \u4|Selector14~0_combout\,
	datac => \u4|character_counter\(2),
	datad => \u4|Selector15~0_combout\,
	combout => \u4|Selector16~0_combout\);

-- Location: LCFF_X87_Y38_N1
\u4|character_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector16~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|character_counter\(2));

-- Location: LCCOMB_X88_Y38_N16
\u4|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Equal1~1_combout\ = (\u4|character_counter\(2)) # (\u4|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|character_counter\(2),
	datad => \u4|Equal1~0_combout\,
	combout => \u4|Equal1~1_combout\);

-- Location: LCCOMB_X88_Y38_N14
\u4|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector18~0_combout\ = (\u4|lcdm|busy~regout\ & (((\u4|Equal1~1_combout\) # (!\u4|drive~0_combout\)) # (!\u4|line_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|drive~0_combout\,
	datac => \u4|Equal1~1_combout\,
	datad => \u4|lcdm|busy~regout\,
	combout => \u4|Selector18~0_combout\);

-- Location: LCCOMB_X87_Y38_N22
\u4|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector14~0_combout\ = (\u4|Selector18~0_combout\ & \u4|state.update~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|Selector18~0_combout\,
	datad => \u4|state.update~regout\,
	combout => \u4|Selector14~0_combout\);

-- Location: LCCOMB_X87_Y38_N26
\u4|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector17~0_combout\ = (\u4|Add1~2_combout\ & ((\u4|Selector14~0_combout\) # ((\u4|character_counter\(1) & \u4|Selector15~0_combout\)))) # (!\u4|Add1~2_combout\ & (((\u4|character_counter\(1) & \u4|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Add1~2_combout\,
	datab => \u4|Selector14~0_combout\,
	datac => \u4|character_counter\(1),
	datad => \u4|Selector15~0_combout\,
	combout => \u4|Selector17~0_combout\);

-- Location: LCFF_X87_Y38_N27
\u4|character_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector17~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|character_counter\(1));

-- Location: LCCOMB_X87_Y38_N14
\u4|Selector14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector14~2_combout\ = (\u4|Selector14~1_combout\ & ((\u4|Selector14~0_combout\) # ((\u4|character_counter\(4) & \u4|Selector15~0_combout\)))) # (!\u4|Selector14~1_combout\ & (((\u4|character_counter\(4) & \u4|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selector14~1_combout\,
	datab => \u4|Selector14~0_combout\,
	datac => \u4|character_counter\(4),
	datad => \u4|Selector15~0_combout\,
	combout => \u4|Selector14~2_combout\);

-- Location: LCFF_X87_Y38_N15
\u4|character_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector14~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|character_counter\(4));

-- Location: LCCOMB_X87_Y38_N18
\u4|Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector15~1_combout\ = (\u4|Add1~6_combout\ & ((\u4|Selector14~0_combout\) # ((\u4|character_counter\(3) & \u4|Selector15~0_combout\)))) # (!\u4|Add1~6_combout\ & (((\u4|character_counter\(3) & \u4|Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Add1~6_combout\,
	datab => \u4|Selector14~0_combout\,
	datac => \u4|character_counter\(3),
	datad => \u4|Selector15~0_combout\,
	combout => \u4|Selector15~1_combout\);

-- Location: LCFF_X87_Y38_N19
\u4|character_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector15~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|character_counter\(3));

-- Location: LCCOMB_X87_Y38_N28
\u4|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Equal1~0_combout\ = ((\u4|character_counter\(1)) # ((\u4|character_counter\(3)) # (!\u4|character_counter\(4)))) # (!\u4|character_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|character_counter\(1),
	datac => \u4|character_counter\(4),
	datad => \u4|character_counter\(3),
	combout => \u4|Equal1~0_combout\);

-- Location: LCCOMB_X88_Y38_N22
\u4|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector21~0_combout\ = (!\u4|character_counter\(2) & (!\u4|Equal1~0_combout\ & \u4|lcdm|busy~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|Equal1~0_combout\,
	datad => \u4|lcdm|busy~regout\,
	combout => \u4|Selector21~0_combout\);

-- Location: LCCOMB_X88_Y38_N6
\u4|Selector21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector21~1_combout\ = ((\u4|line_counter\(0) & (!\u4|drive~0_combout\ & \u4|Selector21~0_combout\)) # (!\u4|line_counter\(0) & ((!\u4|Selector21~0_combout\)))) # (!\u4|state.update~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|drive~0_combout\,
	datac => \u4|Selector21~0_combout\,
	datad => \u4|state.update~regout\,
	combout => \u4|Selector21~1_combout\);

-- Location: LCCOMB_X88_Y38_N18
\u4|Selector21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector21~2_combout\ = ((\u4|WideOr7~combout\ & \u4|line_counter\(0))) # (!\u4|Selector21~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|WideOr7~combout\,
	datac => \u4|line_counter\(0),
	datad => \u4|Selector21~1_combout\,
	combout => \u4|Selector21~2_combout\);

-- Location: LCFF_X88_Y38_N19
\u4|line_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector21~2_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|line_counter\(0));

-- Location: LCCOMB_X88_Y37_N14
\u4|line_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|line_counter~0_combout\ = (\u4|lcdm|busy~regout\ & (!\u4|Equal1~1_combout\ & ((!\u4|line_counter\(0)) # (!\u4|drive~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|busy~regout\,
	datab => \u4|drive~0_combout\,
	datac => \u4|line_counter\(0),
	datad => \u4|Equal1~1_combout\,
	combout => \u4|line_counter~0_combout\);

-- Location: LCCOMB_X89_Y37_N28
\u4|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector20~0_combout\ = (\u4|WideOr7~combout\) # ((\u4|state.update~regout\ & !\u4|line_counter~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|WideOr7~combout\,
	datac => \u4|state.update~regout\,
	datad => \u4|line_counter~0_combout\,
	combout => \u4|Selector20~0_combout\);

-- Location: LCCOMB_X89_Y37_N20
\u4|Selector20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector20~1_combout\ = (\u4|line_counter\(1) & ((\u4|Selector20~0_combout\) # ((\u4|line_counter\(0) & \u4|Selector22~1_combout\)))) # (!\u4|line_counter\(1) & (!\u4|line_counter\(0) & (\u4|Selector22~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(0),
	datab => \u4|Selector22~1_combout\,
	datac => \u4|line_counter\(1),
	datad => \u4|Selector20~0_combout\,
	combout => \u4|Selector20~1_combout\);

-- Location: LCFF_X89_Y37_N21
\u4|line_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector20~1_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|line_counter\(1));

-- Location: LCCOMB_X88_Y37_N0
\u4|drive~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|drive~0_combout\ = (!\u4|line_counter\(1) & \u4|line_counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|line_counter\(1),
	datad => \u4|line_counter\(2),
	combout => \u4|drive~0_combout\);

-- Location: LCCOMB_X87_Y37_N0
\u4|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector12~0_combout\ = (\u4|lcdm|busy~regout\ & \u4|state.update~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|busy~regout\,
	datad => \u4|state.update~regout\,
	combout => \u4|Selector12~0_combout\);

-- Location: LCCOMB_X88_Y38_N2
\u4|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector12~1_combout\ = (!\u4|Equal1~1_combout\ & (\u4|drive~0_combout\ & (\u4|line_counter\(0) & \u4|Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Equal1~1_combout\,
	datab => \u4|drive~0_combout\,
	datac => \u4|line_counter\(0),
	datad => \u4|Selector12~0_combout\,
	combout => \u4|Selector12~1_combout\);

-- Location: LCFF_X88_Y38_N3
\u4|state.hold\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector12~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|state.hold~regout\);

-- Location: LCFF_X88_Y38_N13
\u4|state.hold2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u4|state.hold~regout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|state.hold2~regout\);

-- Location: LCCOMB_X88_Y38_N8
\u4|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector0~0_combout\ = (!\u4|state.hold2~regout\ & ((\u4|state.reset~regout\) # (\u4|lcdm|busy~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|state.hold2~regout\,
	datac => \u4|state.reset~regout\,
	datad => \u4|lcdm|busy~regout\,
	combout => \u4|Selector0~0_combout\);

-- Location: LCFF_X88_Y38_N9
\u4|state.reset\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector0~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|state.reset~regout\);

-- Location: LCCOMB_X88_Y38_N4
\u4|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector1~2_combout\ = (!\u4|state.update~regout\ & (\u4|lcdm|busy~regout\ & ((\u4|state.update_linecount_wait~regout\) # (!\u4|state.reset~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update_linecount_wait~regout\,
	datab => \u4|state.update~regout\,
	datac => \u4|state.reset~regout\,
	datad => \u4|lcdm|busy~regout\,
	combout => \u4|Selector1~2_combout\);

-- Location: LCCOMB_X88_Y38_N20
\u4|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector1~3_combout\ = (\u4|Selector1~0_combout\) # ((!\u4|state.hold2~regout\ & (\u4|Selector1~2_combout\ & \u4|Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selector1~0_combout\,
	datab => \u4|state.hold2~regout\,
	datac => \u4|Selector1~2_combout\,
	datad => \u4|Selector1~1_combout\,
	combout => \u4|Selector1~3_combout\);

-- Location: LCFF_X88_Y38_N21
\u4|state.write_char\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector1~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|state.write_char~regout\);

-- Location: LCFF_X88_Y38_N23
\u4|wr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \u4|state.write_char~regout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|wr~regout\);

-- Location: LCCOMB_X88_Y37_N6
\u4|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector3~0_combout\ = (\u4|wr~regout\) # ((!\u4|lcdm|busy~regout\ & \u4|state.update~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|busy~regout\,
	datac => \u4|state.update~regout\,
	datad => \u4|wr~regout\,
	combout => \u4|Selector3~0_combout\);

-- Location: LCFF_X88_Y37_N7
\u4|state.update\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector3~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|state.update~regout\);

-- Location: LCCOMB_X89_Y37_N18
\u4|Selector22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector22~1_combout\ = (\u4|state.update~regout\ & \u4|line_counter~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|state.update~regout\,
	datad => \u4|line_counter~0_combout\,
	combout => \u4|Selector22~1_combout\);

-- Location: LCCOMB_X89_Y37_N4
\u4|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector19~0_combout\ = (\u4|line_counter\(2) & ((\u4|Selector20~0_combout\) # ((!\u4|Mux1~0_combout\ & \u4|Selector22~1_combout\)))) # (!\u4|line_counter\(2) & (\u4|Mux1~0_combout\ & (\u4|Selector22~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux1~0_combout\,
	datab => \u4|Selector22~1_combout\,
	datac => \u4|line_counter\(2),
	datad => \u4|Selector20~0_combout\,
	combout => \u4|Selector19~0_combout\);

-- Location: LCFF_X89_Y37_N5
\u4|line_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector19~0_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|line_counter\(2));

-- Location: LCCOMB_X89_Y37_N0
\u4|goto10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|goto10~2_combout\ = (!\u4|line_counter\(1) & (!\u4|line_counter\(2) & (\u4|state.update~regout\ & \u4|line_counter~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(1),
	datab => \u4|line_counter\(2),
	datac => \u4|state.update~regout\,
	datad => \u4|line_counter~0_combout\,
	combout => \u4|goto10~2_combout\);

-- Location: LCFF_X89_Y37_N1
\u4|goto10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|goto10~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|goto10~regout\);

-- Location: LCCOMB_X88_Y37_N16
\u4|goto20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|goto20~0_combout\ = (!\u4|character_counter\(2) & (\u4|line_counter\(0) & (!\u4|Equal1~0_combout\ & !\u4|line_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|line_counter\(0),
	datac => \u4|Equal1~0_combout\,
	datad => \u4|line_counter\(2),
	combout => \u4|goto20~0_combout\);

-- Location: LCCOMB_X89_Y37_N24
\u4|goto20~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|goto20~feeder_combout\ = \u4|goto20~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u4|goto20~0_combout\,
	combout => \u4|goto20~feeder_combout\);

-- Location: LCCOMB_X51_Y2_N24
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

-- Location: LCFF_X89_Y37_N25
\u4|goto20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|goto20~feeder_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.update~regout\,
	sload => \u4|lcdm|ALT_INV_busy~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|goto20~regout\);

-- Location: LCCOMB_X89_Y37_N2
\u4|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector22~0_combout\ = (\u4|state.hold~regout\) # ((\u4|line_counter\(2) & (\u4|state.update~regout\ & \u4|line_counter~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.hold~regout\,
	datab => \u4|line_counter\(2),
	datac => \u4|state.update~regout\,
	datad => \u4|line_counter~0_combout\,
	combout => \u4|Selector22~0_combout\);

-- Location: LCFF_X89_Y37_N3
\u4|home\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector22~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|home~regout\);

-- Location: LCCOMB_X89_Y37_N16
\u4|lcdm|LCD_DB[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|LCD_DB[0]~8_combout\ = (!\u4|goto30~regout\ & (!\u4|goto10~regout\ & (!\u4|goto20~regout\ & !\u4|home~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|goto30~regout\,
	datab => \u4|goto10~regout\,
	datac => \u4|goto20~regout\,
	datad => \u4|home~regout\,
	combout => \u4|lcdm|LCD_DB[0]~8_combout\);

-- Location: LCCOMB_X89_Y37_N22
\u4|lcdm|Selector52~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector52~2_combout\ = (\u4|lcdm|current_state.pulse_busy_flag_3~regout\) # ((!\u4|lcdm|LCD_DB[0]~8_combout\ & \u4|lcdm|current_state.wait_for_command~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.pulse_busy_flag_3~regout\,
	datac => \u4|lcdm|LCD_DB[0]~8_combout\,
	datad => \u4|lcdm|current_state.wait_for_command~regout\,
	combout => \u4|lcdm|Selector52~2_combout\);

-- Location: LCCOMB_X89_Y38_N20
\u4|lcdm|Selector52~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector52~1_combout\ = (\u4|lcdm|Selector52~0_combout\ & ((\u4|lcdm|current_state.wait_for_command~regout\ & (\u4|wr~regout\)) # (!\u4|lcdm|current_state.wait_for_command~regout\ & ((\u4|lcdm|Equal0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|wr~regout\,
	datac => \u4|lcdm|Equal0~6_combout\,
	datad => \u4|lcdm|Selector52~0_combout\,
	combout => \u4|lcdm|Selector52~1_combout\);

-- Location: LCCOMB_X89_Y38_N26
\u4|lcdm|Selector52~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector52~3_combout\ = ((\u4|lcdm|Selector52~2_combout\) # ((\u4|lcdm|Selector52~1_combout\) # (\u4|lcdm|Selector53~3_combout\))) # (!\u4|lcdm|WideOr33~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr33~1_combout\,
	datab => \u4|lcdm|Selector52~2_combout\,
	datac => \u4|lcdm|Selector52~1_combout\,
	datad => \u4|lcdm|Selector53~3_combout\,
	combout => \u4|lcdm|Selector52~3_combout\);

-- Location: LCFF_X89_Y38_N7
\u4|lcdm|current_state.pulse_busy_flag_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector52~4_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|Selector52~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_busy_flag_4~regout\);

-- Location: LCCOMB_X90_Y38_N30
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

-- Location: LCCOMB_X90_Y38_N8
\u4|lcdm|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector25~0_combout\ = (\u4|lcdm|Selector35~1_combout\ & ((\u4|lcdm|Selector53~3_combout\ & (\u4|lcdm|return_state.command_init_2~regout\)) # (!\u4|lcdm|Selector53~3_combout\ & ((\u4|lcdm|current_state.command_init_2~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_2~regout\,
	datab => \u4|lcdm|Selector35~1_combout\,
	datac => \u4|lcdm|current_state.command_init_2~regout\,
	datad => \u4|lcdm|Selector53~3_combout\,
	combout => \u4|lcdm|Selector25~0_combout\);

-- Location: LCFF_X90_Y38_N9
\u4|lcdm|current_state.command_init_2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector25~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_2~regout\);

-- Location: LCCOMB_X89_Y38_N8
\u4|lcdm|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector26~0_combout\ = (\u4|lcdm|current_state.command_init_2~regout\) # ((!\u4|lcdm|Equal0~6_combout\ & \u4|lcdm|current_state.command_init_3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|current_state.command_init_3~regout\,
	datad => \u4|lcdm|current_state.command_init_2~regout\,
	combout => \u4|lcdm|Selector26~0_combout\);

-- Location: LCFF_X89_Y38_N9
\u4|lcdm|current_state.command_init_3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector26~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_3~regout\);

-- Location: LCCOMB_X90_Y38_N22
\u4|lcdm|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector22~0_combout\ = ((\u4|lcdm|Selector53~3_combout\ & (\u4|lcdm|return_state.reset~regout\)) # (!\u4|lcdm|Selector53~3_combout\ & ((\u4|lcdm|current_state.reset~regout\)))) # (!\u4|lcdm|Selector35~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.reset~regout\,
	datab => \u4|lcdm|Selector35~1_combout\,
	datac => \u4|lcdm|current_state.reset~regout\,
	datad => \u4|lcdm|Selector53~3_combout\,
	combout => \u4|lcdm|Selector22~0_combout\);

-- Location: LCFF_X90_Y38_N23
\u4|lcdm|current_state.reset\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector22~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.reset~regout\);

-- Location: LCCOMB_X89_Y38_N10
\u4|lcdm|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector24~0_combout\ = ((!\u4|lcdm|Equal0~6_combout\ & \u4|lcdm|current_state.command_init_1~regout\)) # (!\u4|lcdm|current_state.reset~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|current_state.command_init_1~regout\,
	datad => \u4|lcdm|current_state.reset~regout\,
	combout => \u4|lcdm|Selector24~0_combout\);

-- Location: LCFF_X89_Y38_N11
\u4|lcdm|current_state.command_init_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector24~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_1~regout\);

-- Location: LCCOMB_X89_Y38_N30
\u4|lcdm|WideOr41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr41~0_combout\ = (!\u4|lcdm|current_state.command_init_5~regout\ & (!\u4|lcdm|current_state.command_init_3~regout\ & !\u4|lcdm|current_state.command_init_1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_5~regout\,
	datac => \u4|lcdm|current_state.command_init_3~regout\,
	datad => \u4|lcdm|current_state.command_init_1~regout\,
	combout => \u4|lcdm|WideOr41~0_combout\);

-- Location: LCCOMB_X90_Y37_N2
\u4|lcdm|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector29~0_combout\ = (\u4|lcdm|Selector35~1_combout\ & ((\u4|lcdm|Selector53~3_combout\ & (\u4|lcdm|return_state.command_init_6~regout\)) # (!\u4|lcdm|Selector53~3_combout\ & ((\u4|lcdm|current_state.command_init_6~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_6~regout\,
	datab => \u4|lcdm|Selector53~3_combout\,
	datac => \u4|lcdm|current_state.command_init_6~regout\,
	datad => \u4|lcdm|Selector35~1_combout\,
	combout => \u4|lcdm|Selector29~0_combout\);

-- Location: LCFF_X90_Y37_N3
\u4|lcdm|current_state.command_init_6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector29~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_6~regout\);

-- Location: LCCOMB_X90_Y37_N8
\u4|lcdm|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector30~0_combout\ = (\u4|lcdm|Selector35~1_combout\ & ((\u4|lcdm|Selector53~3_combout\ & (\u4|lcdm|return_state.command_init_7~regout\)) # (!\u4|lcdm|Selector53~3_combout\ & ((\u4|lcdm|current_state.command_init_7~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_7~regout\,
	datab => \u4|lcdm|Selector53~3_combout\,
	datac => \u4|lcdm|current_state.command_init_7~regout\,
	datad => \u4|lcdm|Selector35~1_combout\,
	combout => \u4|lcdm|Selector30~0_combout\);

-- Location: LCFF_X90_Y37_N9
\u4|lcdm|current_state.command_init_7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector30~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_7~regout\);

-- Location: LCCOMB_X89_Y39_N18
\u4|lcdm|Selector41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector41~0_combout\ = (\u4|goto30~regout\ & (!\u4|home~regout\ & (!\u4|goto10~regout\ & \u4|lcdm|current_state.wait_for_command~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|goto30~regout\,
	datab => \u4|home~regout\,
	datac => \u4|goto10~regout\,
	datad => \u4|lcdm|current_state.wait_for_command~regout\,
	combout => \u4|lcdm|Selector41~0_combout\);

-- Location: LCCOMB_X89_Y39_N14
\u4|lcdm|Selector41~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector41~1_combout\ = (!\u4|goto20~regout\ & \u4|lcdm|Selector41~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|goto20~regout\,
	datad => \u4|lcdm|Selector41~0_combout\,
	combout => \u4|lcdm|Selector41~1_combout\);

-- Location: LCCOMB_X89_Y38_N2
\u4|lcdm|Selector53~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector53~2_combout\ = (\u4|lcdm|current_state.pulse_busy_flag_3~regout\ & \LCD_DATA[7]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|current_state.pulse_busy_flag_3~regout\,
	datad => \LCD_DATA[7]~7\,
	combout => \u4|lcdm|Selector53~2_combout\);

-- Location: LCFF_X89_Y38_N3
\u4|lcdm|current_state.pulse_busy_flag_5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector53~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|Selector52~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_busy_flag_5~regout\);

-- Location: LCCOMB_X89_Y38_N0
\u4|lcdm|delay_counter[12]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|delay_counter[12]~0_combout\ = (!\u4|lcdm|current_state.pulse_busy_flag_4~regout\ & (!\u4|lcdm|current_state.pulse_busy_flag_5~regout\ & (!\u4|lcdm|current_state.pulse_e_4~regout\ & \u4|lcdm|WideOr41~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag_4~regout\,
	datab => \u4|lcdm|current_state.pulse_busy_flag_5~regout\,
	datac => \u4|lcdm|current_state.pulse_e_4~regout\,
	datad => \u4|lcdm|WideOr41~0_combout\,
	combout => \u4|lcdm|delay_counter[12]~0_combout\);

-- Location: LCCOMB_X90_Y37_N20
\u4|lcdm|Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector44~0_combout\ = (\u4|lcdm|current_state.pulse_e~regout\) # ((\u4|lcdm|current_state.pulse_e_1~regout\ & !\u4|lcdm|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.pulse_e~regout\,
	datac => \u4|lcdm|current_state.pulse_e_1~regout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector44~0_combout\);

-- Location: LCFF_X90_Y37_N21
\u4|lcdm|current_state.pulse_e_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector44~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_e_1~regout\);

-- Location: LCCOMB_X90_Y37_N4
\u4|lcdm|WideOr33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr33~0_combout\ = (!\u4|lcdm|current_state.pulse_busy_flag_2~regout\ & (!\u4|lcdm|current_state.pulse_e_2~regout\ & (!\u4|lcdm|current_state.pulse_e_1~regout\ & !\u4|lcdm|current_state.pulse_busy_flag_1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag_2~regout\,
	datab => \u4|lcdm|current_state.pulse_e_2~regout\,
	datac => \u4|lcdm|current_state.pulse_e_1~regout\,
	datad => \u4|lcdm|current_state.pulse_busy_flag_1~regout\,
	combout => \u4|lcdm|WideOr33~0_combout\);

-- Location: LCCOMB_X90_Y38_N26
\u4|lcdm|WideOr33~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr33~1_combout\ = (\u4|lcdm|current_state.wait_for_command~regout\) # ((\u4|lcdm|current_state.pulse_e_3~regout\) # ((!\u4|lcdm|WideOr33~0_combout\) # (!\u4|lcdm|delay_counter[12]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|lcdm|current_state.pulse_e_3~regout\,
	datac => \u4|lcdm|delay_counter[12]~0_combout\,
	datad => \u4|lcdm|WideOr33~0_combout\,
	combout => \u4|lcdm|WideOr33~1_combout\);

-- Location: LCCOMB_X90_Y38_N12
\u4|lcdm|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector35~0_combout\ = (\u4|lcdm|WideOr33~1_combout\ & (((\u4|lcdm|LCD_DB[0]~8_combout\ & !\u4|wr~regout\)) # (!\u4|lcdm|current_state.wait_for_command~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|lcdm|LCD_DB[0]~8_combout\,
	datac => \u4|wr~regout\,
	datad => \u4|lcdm|WideOr33~1_combout\,
	combout => \u4|lcdm|Selector35~0_combout\);

-- Location: LCCOMB_X90_Y38_N6
\u4|lcdm|Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector38~0_combout\ = ((\u4|lcdm|Equal0~6_combout\ & ((!\u4|lcdm|current_state.wait_for_command~regout\) # (!\u4|lcdm|Selector52~0_combout\)))) # (!\u4|lcdm|Selector35~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector52~0_combout\,
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|current_state.wait_for_command~regout\,
	datad => \u4|lcdm|Selector35~0_combout\,
	combout => \u4|lcdm|Selector38~0_combout\);

-- Location: LCFF_X89_Y39_N15
\u4|lcdm|current_state.command_goto30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector41~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|Selector38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_goto30~regout\);

-- Location: LCCOMB_X89_Y39_N28
\u4|lcdm|Selector40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector40~0_combout\ = (\u4|lcdm|current_state.wait_for_command~regout\ & (\u4|goto20~regout\ & (!\u4|goto10~regout\ & !\u4|home~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|goto20~regout\,
	datac => \u4|goto10~regout\,
	datad => \u4|home~regout\,
	combout => \u4|lcdm|Selector40~0_combout\);

-- Location: LCFF_X89_Y39_N29
\u4|lcdm|current_state.command_goto20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector40~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|Selector38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_goto20~regout\);

-- Location: LCCOMB_X89_Y39_N20
\u4|lcdm|Selector102~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector102~0_combout\ = (!\u4|lcdm|current_state.command_goto30~regout\ & !\u4|lcdm|current_state.command_goto20~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|current_state.command_goto30~regout\,
	datad => \u4|lcdm|current_state.command_goto20~regout\,
	combout => \u4|lcdm|Selector102~0_combout\);

-- Location: LCCOMB_X90_Y39_N26
\u4|lcdm|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector34~0_combout\ = (\u4|lcdm|Selector35~1_combout\ & ((\u4|lcdm|Selector53~3_combout\ & (\u4|lcdm|return_state.command_init_11~regout\)) # (!\u4|lcdm|Selector53~3_combout\ & ((\u4|lcdm|current_state.command_init_11~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_11~regout\,
	datab => \u4|lcdm|Selector53~3_combout\,
	datac => \u4|lcdm|current_state.command_init_11~regout\,
	datad => \u4|lcdm|Selector35~1_combout\,
	combout => \u4|lcdm|Selector34~0_combout\);

-- Location: LCFF_X90_Y39_N27
\u4|lcdm|current_state.command_init_11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector34~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_11~regout\);

-- Location: LCCOMB_X90_Y39_N8
\u4|lcdm|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector31~0_combout\ = (\u4|lcdm|Selector35~1_combout\ & ((\u4|lcdm|Selector53~3_combout\ & (\u4|lcdm|return_state.command_init_8~regout\)) # (!\u4|lcdm|Selector53~3_combout\ & ((\u4|lcdm|current_state.command_init_8~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_8~regout\,
	datab => \u4|lcdm|Selector53~3_combout\,
	datac => \u4|lcdm|current_state.command_init_8~regout\,
	datad => \u4|lcdm|Selector35~1_combout\,
	combout => \u4|lcdm|Selector31~0_combout\);

-- Location: LCFF_X90_Y39_N9
\u4|lcdm|current_state.command_init_8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector31~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_8~regout\);

-- Location: LCCOMB_X89_Y37_N30
\u4|lcdm|Selector39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector39~0_combout\ = (\u4|lcdm|current_state.wait_for_command~regout\ & (\u4|goto10~regout\ & !\u4|home~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datac => \u4|goto10~regout\,
	datad => \u4|home~regout\,
	combout => \u4|lcdm|Selector39~0_combout\);

-- Location: LCFF_X90_Y38_N25
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

-- Location: LCCOMB_X90_Y39_N6
\u4|lcdm|Selector99~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector99~0_combout\ = (!\u4|lcdm|current_state.command_home~regout\ & (!\u4|lcdm|current_state.command_init_11~regout\ & (!\u4|lcdm|current_state.command_init_8~regout\ & !\u4|lcdm|current_state.command_goto10~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_home~regout\,
	datab => \u4|lcdm|current_state.command_init_11~regout\,
	datac => \u4|lcdm|current_state.command_init_8~regout\,
	datad => \u4|lcdm|current_state.command_goto10~regout\,
	combout => \u4|lcdm|Selector99~0_combout\);

-- Location: LCCOMB_X90_Y39_N18
\u4|lcdm|Selector102~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector102~1_combout\ = (!\u4|lcdm|current_state.command_init_10~regout\ & (!\u4|lcdm|current_state.command_init_9~regout\ & (\u4|lcdm|Selector102~0_combout\ & \u4|lcdm|Selector99~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_10~regout\,
	datab => \u4|lcdm|current_state.command_init_9~regout\,
	datac => \u4|lcdm|Selector102~0_combout\,
	datad => \u4|lcdm|Selector99~0_combout\,
	combout => \u4|lcdm|Selector102~1_combout\);

-- Location: LCCOMB_X90_Y37_N24
\u4|lcdm|WideOr18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr18~3_combout\ = (!\u4|lcdm|current_state.command_wr~regout\ & (!\u4|lcdm|current_state.command_init_6~regout\ & (!\u4|lcdm|current_state.command_init_7~regout\ & \u4|lcdm|Selector102~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_wr~regout\,
	datab => \u4|lcdm|current_state.command_init_6~regout\,
	datac => \u4|lcdm|current_state.command_init_7~regout\,
	datad => \u4|lcdm|Selector102~1_combout\,
	combout => \u4|lcdm|WideOr18~3_combout\);

-- Location: LCCOMB_X90_Y37_N12
\u4|lcdm|Selector43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector43~0_combout\ = ((!\u4|lcdm|Equal0~6_combout\ & (\u4|lcdm|current_state.pulse_e~regout\ & !\u4|lcdm|Selector52~0_combout\))) # (!\u4|lcdm|WideOr18~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|current_state.pulse_e~regout\,
	datac => \u4|lcdm|WideOr18~3_combout\,
	datad => \u4|lcdm|Selector52~0_combout\,
	combout => \u4|lcdm|Selector43~0_combout\);

-- Location: LCCOMB_X90_Y37_N30
\u4|lcdm|Selector43~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector43~1_combout\ = (\u4|lcdm|Selector43~0_combout\) # ((!\u4|lcdm|WideOr41~0_combout\ & ((\u4|lcdm|Equal0~6_combout\) # (\u4|lcdm|current_state.pulse_e~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|WideOr41~0_combout\,
	datac => \u4|lcdm|current_state.pulse_e~regout\,
	datad => \u4|lcdm|Selector43~0_combout\,
	combout => \u4|lcdm|Selector43~1_combout\);

-- Location: LCFF_X90_Y37_N31
\u4|lcdm|current_state.pulse_e\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector43~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_e~regout\);

-- Location: LCCOMB_X90_Y37_N16
\u4|lcdm|Selector48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector48~0_combout\ = (\u4|lcdm|Equal0~6_combout\ & (\u4|lcdm|current_state.pulse_busy_flag_5~regout\)) # (!\u4|lcdm|Equal0~6_combout\ & (((!\u4|lcdm|Selector52~0_combout\ & \u4|lcdm|current_state.pulse_busy_flag~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag_5~regout\,
	datab => \u4|lcdm|Selector52~0_combout\,
	datac => \u4|lcdm|current_state.pulse_busy_flag~regout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector48~0_combout\);

-- Location: LCFF_X90_Y37_N17
\u4|lcdm|current_state.pulse_busy_flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector48~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.pulse_busy_flag~regout\);

-- Location: LCCOMB_X91_Y37_N0
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

-- Location: LCCOMB_X90_Y38_N18
\u4|lcdm|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector27~0_combout\ = (\u4|lcdm|Selector35~1_combout\ & ((\u4|lcdm|Selector53~3_combout\ & (\u4|lcdm|return_state.command_init_4~regout\)) # (!\u4|lcdm|Selector53~3_combout\ & ((\u4|lcdm|current_state.command_init_4~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_4~regout\,
	datab => \u4|lcdm|Selector35~1_combout\,
	datac => \u4|lcdm|current_state.command_init_4~regout\,
	datad => \u4|lcdm|Selector53~3_combout\,
	combout => \u4|lcdm|Selector27~0_combout\);

-- Location: LCFF_X90_Y38_N19
\u4|lcdm|current_state.command_init_4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector27~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_4~regout\);

-- Location: LCCOMB_X90_Y38_N0
\u4|lcdm|Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector18~1_combout\ = (!\u4|lcdm|current_state.command_init_2~regout\ & !\u4|lcdm|current_state.command_init_4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|current_state.command_init_2~regout\,
	datad => \u4|lcdm|current_state.command_init_4~regout\,
	combout => \u4|lcdm|Selector18~1_combout\);

-- Location: LCCOMB_X91_Y38_N26
\u4|lcdm|delay_counter[18]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|delay_counter[18]~1_combout\ = (\u4|lcdm|current_state.reset~regout\ & (!\u4|lcdm|current_state.pulse_e~regout\ & (\u4|lcdm|Selector18~1_combout\ & !\u4|lcdm|current_state.pulse_busy_flag~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.reset~regout\,
	datab => \u4|lcdm|current_state.pulse_e~regout\,
	datac => \u4|lcdm|Selector18~1_combout\,
	datad => \u4|lcdm|current_state.pulse_busy_flag~regout\,
	combout => \u4|lcdm|delay_counter[18]~1_combout\);

-- Location: LCCOMB_X91_Y38_N4
\u4|lcdm|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector6~1_combout\ = (\u4|lcdm|Equal0~6_combout\ & (!\u4|lcdm|current_state.pulse_e_3~regout\ & ((!\u4|lcdm|WideOr33~0_combout\) # (!\u4|lcdm|delay_counter[18]~1_combout\)))) # (!\u4|lcdm|Equal0~6_combout\ & 
-- (((!\u4|lcdm|delay_counter[18]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_e_3~regout\,
	datab => \u4|lcdm|delay_counter[18]~1_combout\,
	datac => \u4|lcdm|WideOr33~0_combout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector6~1_combout\);

-- Location: LCCOMB_X91_Y38_N22
\u4|lcdm|Selector14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector14~1_combout\ = ((\u4|lcdm|Selector14~0_combout\ & ((!\u4|lcdm|current_state.reset~regout\) # (!\u4|lcdm|Selector18~1_combout\)))) # (!\u4|lcdm|Selector6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector18~1_combout\,
	datab => \u4|lcdm|Selector14~0_combout\,
	datac => \u4|lcdm|Selector6~1_combout\,
	datad => \u4|lcdm|current_state.reset~regout\,
	combout => \u4|lcdm|Selector14~1_combout\);

-- Location: LCCOMB_X93_Y38_N8
\u4|lcdm|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector6~0_combout\ = (\u4|lcdm|delay_counter[18]~1_combout\ & (((\u4|lcdm|WideOr33~0_combout\ & !\u4|lcdm|current_state.pulse_e_3~regout\)) # (!\u4|lcdm|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr33~0_combout\,
	datab => \u4|lcdm|current_state.pulse_e_3~regout\,
	datac => \u4|lcdm|delay_counter[18]~1_combout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector6~0_combout\);

-- Location: LCCOMB_X90_Y37_N6
\u4|lcdm|WideOr33~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr33~2_combout\ = (!\u4|lcdm|current_state.pulse_e_3~regout\ & \u4|lcdm|delay_counter[12]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.pulse_e_3~regout\,
	datad => \u4|lcdm|delay_counter[12]~0_combout\,
	combout => \u4|lcdm|WideOr33~2_combout\);

-- Location: LCCOMB_X91_Y37_N14
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

-- Location: LCCOMB_X90_Y38_N16
\u4|lcdm|Selector42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector42~0_combout\ = (\u4|wr~regout\ & (\u4|lcdm|current_state.wait_for_command~regout\ & \u4|lcdm|LCD_DB[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|wr~regout\,
	datac => \u4|lcdm|current_state.wait_for_command~regout\,
	datad => \u4|lcdm|LCD_DB[0]~8_combout\,
	combout => \u4|lcdm|Selector42~0_combout\);

-- Location: LCFF_X90_Y38_N17
\u4|lcdm|current_state.command_wr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector42~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|Selector38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_wr~regout\);

-- Location: LCCOMB_X90_Y37_N10
\u4|lcdm|WideOr18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr18~2_combout\ = (!\u4|lcdm|current_state.command_init_7~regout\ & (!\u4|lcdm|current_state.command_wr~regout\ & !\u4|lcdm|current_state.command_init_6~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.command_init_7~regout\,
	datac => \u4|lcdm|current_state.command_wr~regout\,
	datad => \u4|lcdm|current_state.command_init_6~regout\,
	combout => \u4|lcdm|WideOr18~2_combout\);

-- Location: LCCOMB_X90_Y39_N0
\u4|lcdm|WideOr18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr18~combout\ = (\u4|lcdm|current_state.wait_for_command~regout\) # ((\u4|lcdm|current_state.pulse_busy_flag_3~regout\) # ((!\u4|lcdm|Selector102~1_combout\) # (!\u4|lcdm|WideOr18~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|lcdm|current_state.pulse_busy_flag_3~regout\,
	datac => \u4|lcdm|WideOr18~2_combout\,
	datad => \u4|lcdm|Selector102~1_combout\,
	combout => \u4|lcdm|WideOr18~combout\);

-- Location: LCCOMB_X91_Y38_N12
\u4|lcdm|delay_counter[18]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|delay_counter[18]~2_combout\ = ((\u4|lcdm|Equal0~6_combout\ & (\u4|lcdm|delay_counter[12]~0_combout\ & !\u4|lcdm|WideOr18~combout\))) # (!\u4|lcdm|delay_counter[18]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|delay_counter[18]~1_combout\,
	datac => \u4|lcdm|delay_counter[12]~0_combout\,
	datad => \u4|lcdm|WideOr18~combout\,
	combout => \u4|lcdm|delay_counter[18]~2_combout\);

-- Location: LCCOMB_X92_Y39_N0
\u4|lcdm|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector21~0_combout\ = ((\u4|lcdm|Add0~0_combout\ & \u4|lcdm|Selector6~0_combout\)) # (!\u4|lcdm|Selector14~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Add0~0_combout\,
	datac => \u4|lcdm|Selector14~1_combout\,
	datad => \u4|lcdm|Selector6~0_combout\,
	combout => \u4|lcdm|Selector21~0_combout\);

-- Location: LCCOMB_X93_Y38_N22
\u4|lcdm|delay_counter[18]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|delay_counter[18]~3_combout\ = (!\u4|lcdm|WideOr18~combout\ & ((\u4|lcdm|delay_counter[12]~0_combout\) # (!\u4|lcdm|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|delay_counter[12]~0_combout\,
	datac => \u4|lcdm|Equal0~6_combout\,
	datad => \u4|lcdm|WideOr18~combout\,
	combout => \u4|lcdm|delay_counter[18]~3_combout\);

-- Location: LCFF_X92_Y39_N1
\u4|lcdm|delay_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector21~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(0));

-- Location: LCCOMB_X92_Y39_N14
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

-- Location: LCCOMB_X91_Y37_N4
\u4|lcdm|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector20~0_combout\ = (\u4|lcdm|LCD_E~0_combout\ & ((\u4|lcdm|Equal0~6_combout\) # ((\u4|lcdm|Add0~2_combout\)))) # (!\u4|lcdm|LCD_E~0_combout\ & (((\u4|lcdm|Selector15~0_combout\ & \u4|lcdm|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|LCD_E~0_combout\,
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|Selector15~0_combout\,
	datad => \u4|lcdm|Add0~2_combout\,
	combout => \u4|lcdm|Selector20~0_combout\);

-- Location: LCCOMB_X91_Y37_N20
\u4|lcdm|Selector20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector20~1_combout\ = ((\u4|lcdm|Selector20~0_combout\) # ((\u4|lcdm|WideOr18~combout\ & \u4|lcdm|delay_counter\(1)))) # (!\u4|lcdm|Selector14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr18~combout\,
	datab => \u4|lcdm|Selector14~0_combout\,
	datac => \u4|lcdm|delay_counter\(1),
	datad => \u4|lcdm|Selector20~0_combout\,
	combout => \u4|lcdm|Selector20~1_combout\);

-- Location: LCFF_X91_Y37_N21
\u4|lcdm|delay_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector20~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(1));

-- Location: LCCOMB_X92_Y39_N16
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

-- Location: LCCOMB_X93_Y38_N4
\u4|lcdm|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector19~0_combout\ = (!\u4|lcdm|delay_counter[18]~2_combout\ & \u4|lcdm|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|delay_counter[18]~2_combout\,
	datad => \u4|lcdm|Add0~4_combout\,
	combout => \u4|lcdm|Selector19~0_combout\);

-- Location: LCFF_X93_Y38_N5
\u4|lcdm|delay_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector19~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(2));

-- Location: LCCOMB_X92_Y39_N18
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

-- Location: LCCOMB_X91_Y38_N18
\u4|lcdm|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector18~0_combout\ = (!\u4|lcdm|Equal0~6_combout\ & (\u4|lcdm|Add0~6_combout\ & ((\u4|lcdm|current_state.pulse_e_3~regout\) # (!\u4|lcdm|delay_counter[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|current_state.pulse_e_3~regout\,
	datac => \u4|lcdm|delay_counter[12]~0_combout\,
	datad => \u4|lcdm|Add0~6_combout\,
	combout => \u4|lcdm|Selector18~0_combout\);

-- Location: LCCOMB_X91_Y38_N20
\u4|lcdm|Selector18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector18~2_combout\ = ((\u4|lcdm|Selector18~0_combout\) # ((\u4|lcdm|WideOr18~combout\ & \u4|lcdm|delay_counter\(3)))) # (!\u4|lcdm|Selector18~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr18~combout\,
	datab => \u4|lcdm|delay_counter\(3),
	datac => \u4|lcdm|Selector18~1_combout\,
	datad => \u4|lcdm|Selector18~0_combout\,
	combout => \u4|lcdm|Selector18~2_combout\);

-- Location: LCCOMB_X91_Y38_N16
\u4|lcdm|Selector18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector18~3_combout\ = (\u4|lcdm|Selector18~2_combout\) # ((!\u4|lcdm|WideOr33~0_combout\ & ((\u4|lcdm|Equal0~6_combout\) # (\u4|lcdm|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|WideOr33~0_combout\,
	datac => \u4|lcdm|Selector18~2_combout\,
	datad => \u4|lcdm|Add0~6_combout\,
	combout => \u4|lcdm|Selector18~3_combout\);

-- Location: LCFF_X91_Y38_N17
\u4|lcdm|delay_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector18~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(3));

-- Location: LCCOMB_X92_Y39_N20
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

-- Location: LCCOMB_X91_Y39_N28
\u4|lcdm|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector17~0_combout\ = (\u4|lcdm|current_state.pulse_e_1~regout\ & (((\u4|lcdm|Equal0~6_combout\) # (\u4|lcdm|Add0~8_combout\)))) # (!\u4|lcdm|current_state.pulse_e_1~regout\ & (\u4|lcdm|current_state.pulse_busy_flag_1~regout\ & 
-- ((\u4|lcdm|Equal0~6_combout\) # (\u4|lcdm|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_e_1~regout\,
	datab => \u4|lcdm|current_state.pulse_busy_flag_1~regout\,
	datac => \u4|lcdm|Equal0~6_combout\,
	datad => \u4|lcdm|Add0~8_combout\,
	combout => \u4|lcdm|Selector17~0_combout\);

-- Location: LCCOMB_X91_Y39_N22
\u4|lcdm|Selector17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector17~2_combout\ = (\u4|lcdm|Selector17~1_combout\) # ((\u4|lcdm|Selector17~0_combout\) # ((\u4|lcdm|WideOr18~combout\ & \u4|lcdm|delay_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector17~1_combout\,
	datab => \u4|lcdm|WideOr18~combout\,
	datac => \u4|lcdm|delay_counter\(4),
	datad => \u4|lcdm|Selector17~0_combout\,
	combout => \u4|lcdm|Selector17~2_combout\);

-- Location: LCFF_X91_Y39_N23
\u4|lcdm|delay_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector17~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(4));

-- Location: LCCOMB_X92_Y39_N22
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

-- Location: LCCOMB_X93_Y38_N20
\u4|lcdm|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector5~0_combout\ = (!\u4|lcdm|Equal0~6_combout\ & ((!\u4|lcdm|delay_counter[12]~0_combout\) # (!\u4|lcdm|WideOr33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr33~0_combout\,
	datac => \u4|lcdm|delay_counter[12]~0_combout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector5~0_combout\);

-- Location: LCCOMB_X93_Y38_N6
\u4|lcdm|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector16~0_combout\ = (\u4|lcdm|delay_counter\(5) & ((\u4|lcdm|WideOr18~combout\) # ((\u4|lcdm|Selector5~0_combout\ & \u4|lcdm|Add0~10_combout\)))) # (!\u4|lcdm|delay_counter\(5) & (((\u4|lcdm|Selector5~0_combout\ & 
-- \u4|lcdm|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(5),
	datab => \u4|lcdm|WideOr18~combout\,
	datac => \u4|lcdm|Selector5~0_combout\,
	datad => \u4|lcdm|Add0~10_combout\,
	combout => \u4|lcdm|Selector16~0_combout\);

-- Location: LCCOMB_X93_Y38_N16
\u4|lcdm|Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector16~1_combout\ = (\u4|lcdm|Selector16~0_combout\) # ((\u4|lcdm|current_state.pulse_e_3~regout\ & ((\u4|lcdm|Equal0~6_combout\) # (\u4|lcdm|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|current_state.pulse_e_3~regout\,
	datac => \u4|lcdm|Add0~10_combout\,
	datad => \u4|lcdm|Selector16~0_combout\,
	combout => \u4|lcdm|Selector16~1_combout\);

-- Location: LCFF_X93_Y38_N17
\u4|lcdm|delay_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector16~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(5));

-- Location: LCCOMB_X92_Y39_N24
\u4|lcdm|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~12_combout\ = (\u4|lcdm|delay_counter\(6) & ((GND) # (!\u4|lcdm|Add0~11\))) # (!\u4|lcdm|delay_counter\(6) & (\u4|lcdm|Add0~11\ $ (GND)))
-- \u4|lcdm|Add0~13\ = CARRY((\u4|lcdm|delay_counter\(6)) # (!\u4|lcdm|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|delay_counter\(6),
	datad => VCC,
	cin => \u4|lcdm|Add0~11\,
	combout => \u4|lcdm|Add0~12_combout\,
	cout => \u4|lcdm|Add0~13\);

-- Location: LCCOMB_X91_Y37_N28
\u4|lcdm|Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector15~1_combout\ = (\u4|lcdm|LCD_E~0_combout\ & ((\u4|lcdm|Equal0~6_combout\) # ((\u4|lcdm|Add0~12_combout\)))) # (!\u4|lcdm|LCD_E~0_combout\ & (((\u4|lcdm|Selector15~0_combout\ & \u4|lcdm|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|LCD_E~0_combout\,
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|Selector15~0_combout\,
	datad => \u4|lcdm|Add0~12_combout\,
	combout => \u4|lcdm|Selector15~1_combout\);

-- Location: LCCOMB_X91_Y37_N2
\u4|lcdm|Selector15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector15~2_combout\ = (\u4|lcdm|current_state.command_init_2~regout\) # ((\u4|lcdm|Selector15~1_combout\) # ((\u4|lcdm|WideOr18~combout\ & \u4|lcdm|delay_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr18~combout\,
	datab => \u4|lcdm|current_state.command_init_2~regout\,
	datac => \u4|lcdm|delay_counter\(6),
	datad => \u4|lcdm|Selector15~1_combout\,
	combout => \u4|lcdm|Selector15~2_combout\);

-- Location: LCFF_X91_Y37_N3
\u4|lcdm|delay_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector15~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(6));

-- Location: LCCOMB_X92_Y39_N26
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

-- Location: LCCOMB_X92_Y38_N22
\u4|lcdm|Selector14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector14~2_combout\ = (\u4|lcdm|Selector14~1_combout\ & ((\u4|lcdm|Add0~14_combout\) # (!\u4|lcdm|Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|Selector14~1_combout\,
	datac => \u4|lcdm|Selector6~0_combout\,
	datad => \u4|lcdm|Add0~14_combout\,
	combout => \u4|lcdm|Selector14~2_combout\);

-- Location: LCFF_X92_Y38_N23
\u4|lcdm|delay_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector14~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(7));

-- Location: LCCOMB_X91_Y38_N24
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

-- Location: LCCOMB_X92_Y39_N28
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

-- Location: LCCOMB_X91_Y38_N2
\u4|lcdm|delay_counter[12]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|delay_counter[12]~4_combout\ = (\u4|lcdm|Equal0~6_combout\ & (!\u4|lcdm|current_state.command_init_4~regout\ & (\u4|lcdm|delay_counter[12]~0_combout\ & !\u4|lcdm|WideOr18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|current_state.command_init_4~regout\,
	datac => \u4|lcdm|delay_counter[12]~0_combout\,
	datad => \u4|lcdm|WideOr18~combout\,
	combout => \u4|lcdm|delay_counter[12]~4_combout\);

-- Location: LCCOMB_X91_Y38_N0
\u4|lcdm|delay_counter[12]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|delay_counter[12]~5_combout\ = (((\u4|lcdm|current_state.command_init_2~regout\) # (\u4|lcdm|delay_counter[12]~4_combout\)) # (!\u4|lcdm|Selector14~0_combout\)) # (!\u4|lcdm|current_state.reset~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.reset~regout\,
	datab => \u4|lcdm|Selector14~0_combout\,
	datac => \u4|lcdm|current_state.command_init_2~regout\,
	datad => \u4|lcdm|delay_counter[12]~4_combout\,
	combout => \u4|lcdm|delay_counter[12]~5_combout\);

-- Location: LCCOMB_X91_Y38_N6
\u4|lcdm|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector13~0_combout\ = (\u4|lcdm|current_state.command_init_4~regout\) # ((\u4|lcdm|Add0~16_combout\ & !\u4|lcdm|delay_counter[12]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.command_init_4~regout\,
	datac => \u4|lcdm|Add0~16_combout\,
	datad => \u4|lcdm|delay_counter[12]~5_combout\,
	combout => \u4|lcdm|Selector13~0_combout\);

-- Location: LCFF_X91_Y38_N7
\u4|lcdm|delay_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector13~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(8));

-- Location: LCCOMB_X92_Y39_N30
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

-- Location: LCCOMB_X93_Y38_N12
\u4|lcdm|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector12~0_combout\ = (\u4|lcdm|current_state.pulse_e_3~regout\ & ((\u4|lcdm|Equal0~6_combout\) # ((\u4|lcdm|Add0~18_combout\)))) # (!\u4|lcdm|current_state.pulse_e_3~regout\ & (((\u4|lcdm|Selector5~0_combout\ & \u4|lcdm|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|current_state.pulse_e_3~regout\,
	datac => \u4|lcdm|Selector5~0_combout\,
	datad => \u4|lcdm|Add0~18_combout\,
	combout => \u4|lcdm|Selector12~0_combout\);

-- Location: LCCOMB_X93_Y38_N10
\u4|lcdm|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector12~1_combout\ = (\u4|lcdm|current_state.command_init_4~regout\) # ((\u4|lcdm|Selector12~0_combout\) # ((\u4|lcdm|WideOr18~combout\ & \u4|lcdm|delay_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_4~regout\,
	datab => \u4|lcdm|WideOr18~combout\,
	datac => \u4|lcdm|delay_counter\(9),
	datad => \u4|lcdm|Selector12~0_combout\,
	combout => \u4|lcdm|Selector12~1_combout\);

-- Location: LCFF_X93_Y38_N11
\u4|lcdm|delay_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector12~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(9));

-- Location: LCCOMB_X92_Y38_N0
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

-- Location: LCCOMB_X93_Y38_N28
\u4|lcdm|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector11~0_combout\ = (\u4|lcdm|Selector1~0_combout\ & (!\u4|lcdm|Selector6~1_combout\ & ((\u4|lcdm|Add0~20_combout\) # (!\u4|lcdm|Selector6~0_combout\)))) # (!\u4|lcdm|Selector1~0_combout\ & (((\u4|lcdm|Add0~20_combout\) # 
-- (!\u4|lcdm|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector1~0_combout\,
	datab => \u4|lcdm|Selector6~1_combout\,
	datac => \u4|lcdm|Selector6~0_combout\,
	datad => \u4|lcdm|Add0~20_combout\,
	combout => \u4|lcdm|Selector11~0_combout\);

-- Location: LCFF_X93_Y38_N29
\u4|lcdm|delay_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector11~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(10));

-- Location: LCCOMB_X92_Y38_N2
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

-- Location: LCCOMB_X92_Y38_N28
\u4|lcdm|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector10~0_combout\ = (\u4|lcdm|Add0~22_combout\ & !\u4|lcdm|delay_counter[18]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|Add0~22_combout\,
	datad => \u4|lcdm|delay_counter[18]~2_combout\,
	combout => \u4|lcdm|Selector10~0_combout\);

-- Location: LCFF_X92_Y38_N29
\u4|lcdm|delay_counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector10~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(11));

-- Location: LCCOMB_X92_Y38_N4
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

-- Location: LCCOMB_X91_Y38_N14
\u4|lcdm|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector9~0_combout\ = (\u4|lcdm|current_state.command_init_4~regout\) # ((\u4|lcdm|Add0~24_combout\ & !\u4|lcdm|delay_counter[12]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.command_init_4~regout\,
	datac => \u4|lcdm|Add0~24_combout\,
	datad => \u4|lcdm|delay_counter[12]~5_combout\,
	combout => \u4|lcdm|Selector9~0_combout\);

-- Location: LCFF_X91_Y38_N15
\u4|lcdm|delay_counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector9~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(12));

-- Location: LCCOMB_X91_Y38_N8
\u4|lcdm|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Equal0~4_combout\ = (!\u4|lcdm|delay_counter\(10) & (!\u4|lcdm|delay_counter\(11) & (!\u4|lcdm|delay_counter\(12) & !\u4|lcdm|delay_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(10),
	datab => \u4|lcdm|delay_counter\(11),
	datac => \u4|lcdm|delay_counter\(12),
	datad => \u4|lcdm|delay_counter\(9),
	combout => \u4|lcdm|Equal0~4_combout\);

-- Location: LCCOMB_X92_Y38_N6
\u4|lcdm|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~26_combout\ = (\u4|lcdm|delay_counter\(13) & (\u4|lcdm|Add0~25\ & VCC)) # (!\u4|lcdm|delay_counter\(13) & (!\u4|lcdm|Add0~25\))
-- \u4|lcdm|Add0~27\ = CARRY((!\u4|lcdm|delay_counter\(13) & !\u4|lcdm|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|delay_counter\(13),
	datad => VCC,
	cin => \u4|lcdm|Add0~25\,
	combout => \u4|lcdm|Add0~26_combout\,
	cout => \u4|lcdm|Add0~27\);

-- Location: LCCOMB_X93_Y38_N18
\u4|lcdm|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector8~0_combout\ = (!\u4|lcdm|Equal0~6_combout\ & (\u4|lcdm|Add0~26_combout\ & ((!\u4|lcdm|WideOr33~2_combout\) # (!\u4|lcdm|WideOr33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr33~0_combout\,
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|Add0~26_combout\,
	datad => \u4|lcdm|WideOr33~2_combout\,
	combout => \u4|lcdm|Selector8~0_combout\);

-- Location: LCCOMB_X93_Y38_N0
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

-- Location: LCFF_X93_Y38_N1
\u4|lcdm|delay_counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector8~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(13));

-- Location: LCCOMB_X92_Y38_N8
\u4|lcdm|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~28_combout\ = (\u4|lcdm|delay_counter\(14) & ((GND) # (!\u4|lcdm|Add0~27\))) # (!\u4|lcdm|delay_counter\(14) & (\u4|lcdm|Add0~27\ $ (GND)))
-- \u4|lcdm|Add0~29\ = CARRY((\u4|lcdm|delay_counter\(14)) # (!\u4|lcdm|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|delay_counter\(14),
	datad => VCC,
	cin => \u4|lcdm|Add0~27\,
	combout => \u4|lcdm|Add0~28_combout\,
	cout => \u4|lcdm|Add0~29\);

-- Location: LCCOMB_X93_Y38_N14
\u4|lcdm|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector7~0_combout\ = (!\u4|lcdm|delay_counter[18]~2_combout\ & \u4|lcdm|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|delay_counter[18]~2_combout\,
	datad => \u4|lcdm|Add0~28_combout\,
	combout => \u4|lcdm|Selector7~0_combout\);

-- Location: LCFF_X93_Y38_N15
\u4|lcdm|delay_counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector7~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(14));

-- Location: LCCOMB_X92_Y38_N10
\u4|lcdm|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~30_combout\ = (\u4|lcdm|delay_counter\(15) & (\u4|lcdm|Add0~29\ & VCC)) # (!\u4|lcdm|delay_counter\(15) & (!\u4|lcdm|Add0~29\))
-- \u4|lcdm|Add0~31\ = CARRY((!\u4|lcdm|delay_counter\(15) & !\u4|lcdm|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|delay_counter\(15),
	datad => VCC,
	cin => \u4|lcdm|Add0~29\,
	combout => \u4|lcdm|Add0~30_combout\,
	cout => \u4|lcdm|Add0~31\);

-- Location: LCCOMB_X93_Y38_N24
\u4|lcdm|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector6~2_combout\ = (\u4|lcdm|Selector1~0_combout\ & (!\u4|lcdm|Selector6~1_combout\ & ((\u4|lcdm|Add0~30_combout\) # (!\u4|lcdm|Selector6~0_combout\)))) # (!\u4|lcdm|Selector1~0_combout\ & (((\u4|lcdm|Add0~30_combout\) # 
-- (!\u4|lcdm|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector1~0_combout\,
	datab => \u4|lcdm|Selector6~1_combout\,
	datac => \u4|lcdm|Selector6~0_combout\,
	datad => \u4|lcdm|Add0~30_combout\,
	combout => \u4|lcdm|Selector6~2_combout\);

-- Location: LCFF_X93_Y38_N25
\u4|lcdm|delay_counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector6~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(15));

-- Location: LCCOMB_X92_Y38_N12
\u4|lcdm|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~32_combout\ = (\u4|lcdm|delay_counter\(16) & ((GND) # (!\u4|lcdm|Add0~31\))) # (!\u4|lcdm|delay_counter\(16) & (\u4|lcdm|Add0~31\ $ (GND)))
-- \u4|lcdm|Add0~33\ = CARRY((\u4|lcdm|delay_counter\(16)) # (!\u4|lcdm|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(16),
	datad => VCC,
	cin => \u4|lcdm|Add0~31\,
	combout => \u4|lcdm|Add0~32_combout\,
	cout => \u4|lcdm|Add0~33\);

-- Location: LCCOMB_X93_Y38_N2
\u4|lcdm|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector5~1_combout\ = (\u4|lcdm|current_state.pulse_e_3~regout\ & ((\u4|lcdm|Equal0~6_combout\) # ((\u4|lcdm|Add0~32_combout\)))) # (!\u4|lcdm|current_state.pulse_e_3~regout\ & (((\u4|lcdm|Selector5~0_combout\ & \u4|lcdm|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~6_combout\,
	datab => \u4|lcdm|current_state.pulse_e_3~regout\,
	datac => \u4|lcdm|Selector5~0_combout\,
	datad => \u4|lcdm|Add0~32_combout\,
	combout => \u4|lcdm|Selector5~1_combout\);

-- Location: LCCOMB_X93_Y38_N26
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

-- Location: LCFF_X93_Y38_N27
\u4|lcdm|delay_counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector5~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(16));

-- Location: LCCOMB_X93_Y38_N30
\u4|lcdm|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Equal0~2_combout\ = (!\u4|lcdm|delay_counter\(15) & (!\u4|lcdm|delay_counter\(16) & (!\u4|lcdm|delay_counter\(14) & !\u4|lcdm|delay_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(15),
	datab => \u4|lcdm|delay_counter\(16),
	datac => \u4|lcdm|delay_counter\(14),
	datad => \u4|lcdm|delay_counter\(13),
	combout => \u4|lcdm|Equal0~2_combout\);

-- Location: LCCOMB_X92_Y37_N0
\u4|lcdm|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector1~0_combout\ = (\u4|lcdm|current_state.pulse_e~regout\) # ((\u4|lcdm|current_state.pulse_busy_flag~regout\) # ((\u4|lcdm|current_state.reset~regout\) # (!\u4|lcdm|Selector18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_e~regout\,
	datab => \u4|lcdm|current_state.pulse_busy_flag~regout\,
	datac => \u4|lcdm|Selector18~1_combout\,
	datad => \u4|lcdm|current_state.reset~regout\,
	combout => \u4|lcdm|Selector1~0_combout\);

-- Location: LCCOMB_X92_Y38_N16
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

-- Location: LCCOMB_X92_Y38_N26
\u4|lcdm|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector3~0_combout\ = ((\u4|lcdm|Add0~36_combout\ & !\u4|lcdm|delay_counter[18]~2_combout\)) # (!\u4|lcdm|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|Selector1~0_combout\,
	datac => \u4|lcdm|Add0~36_combout\,
	datad => \u4|lcdm|delay_counter[18]~2_combout\,
	combout => \u4|lcdm|Selector3~0_combout\);

-- Location: LCFF_X92_Y38_N27
\u4|lcdm|delay_counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector3~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(18));

-- Location: LCCOMB_X92_Y38_N18
\u4|lcdm|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Add0~38_combout\ = (\u4|lcdm|delay_counter\(19) & (\u4|lcdm|Add0~37\ & VCC)) # (!\u4|lcdm|delay_counter\(19) & (!\u4|lcdm|Add0~37\))
-- \u4|lcdm|Add0~39\ = CARRY((!\u4|lcdm|delay_counter\(19) & !\u4|lcdm|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(19),
	datad => VCC,
	cin => \u4|lcdm|Add0~37\,
	combout => \u4|lcdm|Add0~38_combout\,
	cout => \u4|lcdm|Add0~39\);

-- Location: LCCOMB_X92_Y38_N20
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

-- Location: LCCOMB_X92_Y38_N30
\u4|lcdm|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector1~1_combout\ = ((\u4|lcdm|Add0~40_combout\ & !\u4|lcdm|delay_counter[18]~2_combout\)) # (!\u4|lcdm|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|Selector1~0_combout\,
	datac => \u4|lcdm|Add0~40_combout\,
	datad => \u4|lcdm|delay_counter[18]~2_combout\,
	combout => \u4|lcdm|Selector1~1_combout\);

-- Location: LCFF_X92_Y38_N31
\u4|lcdm|delay_counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector1~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(20));

-- Location: LCCOMB_X92_Y38_N24
\u4|lcdm|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector2~0_combout\ = ((!\u4|lcdm|delay_counter[18]~2_combout\ & \u4|lcdm|Add0~38_combout\)) # (!\u4|lcdm|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter[18]~2_combout\,
	datab => \u4|lcdm|Selector1~0_combout\,
	datad => \u4|lcdm|Add0~38_combout\,
	combout => \u4|lcdm|Selector2~0_combout\);

-- Location: LCFF_X92_Y38_N25
\u4|lcdm|delay_counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector2~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|delay_counter[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|delay_counter\(19));

-- Location: LCCOMB_X91_Y38_N28
\u4|lcdm|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Equal0~1_combout\ = (!\u4|lcdm|delay_counter\(17) & (!\u4|lcdm|delay_counter\(20) & (!\u4|lcdm|delay_counter\(18) & !\u4|lcdm|delay_counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|delay_counter\(17),
	datab => \u4|lcdm|delay_counter\(20),
	datac => \u4|lcdm|delay_counter\(18),
	datad => \u4|lcdm|delay_counter\(19),
	combout => \u4|lcdm|Equal0~1_combout\);

-- Location: LCCOMB_X90_Y38_N28
\u4|lcdm|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Equal0~3_combout\ = (\u4|lcdm|Equal0~2_combout\ & \u4|lcdm|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|Equal0~2_combout\,
	datad => \u4|lcdm|Equal0~1_combout\,
	combout => \u4|lcdm|Equal0~3_combout\);

-- Location: LCCOMB_X90_Y38_N14
\u4|lcdm|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Equal0~6_combout\ = (\u4|lcdm|Equal0~0_combout\ & (\u4|lcdm|Equal0~5_combout\ & (\u4|lcdm|Equal0~4_combout\ & \u4|lcdm|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Equal0~0_combout\,
	datab => \u4|lcdm|Equal0~5_combout\,
	datac => \u4|lcdm|Equal0~4_combout\,
	datad => \u4|lcdm|Equal0~3_combout\,
	combout => \u4|lcdm|Equal0~6_combout\);

-- Location: LCCOMB_X90_Y38_N4
\u4|lcdm|Selector35~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector35~1_combout\ = (\u4|lcdm|Selector35~0_combout\ & (((\u4|lcdm|current_state.wait_for_command~regout\) # (!\u4|lcdm|Equal0~6_combout\)) # (!\u4|lcdm|Selector52~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector52~0_combout\,
	datab => \u4|lcdm|Equal0~6_combout\,
	datac => \u4|lcdm|current_state.wait_for_command~regout\,
	datad => \u4|lcdm|Selector35~0_combout\,
	combout => \u4|lcdm|Selector35~1_combout\);

-- Location: LCCOMB_X90_Y38_N2
\u4|lcdm|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector32~0_combout\ = (\u4|lcdm|Selector35~1_combout\ & ((\u4|lcdm|Selector53~3_combout\ & (\u4|lcdm|return_state.command_init_9~regout\)) # (!\u4|lcdm|Selector53~3_combout\ & ((\u4|lcdm|current_state.command_init_9~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_9~regout\,
	datab => \u4|lcdm|Selector35~1_combout\,
	datac => \u4|lcdm|current_state.command_init_9~regout\,
	datad => \u4|lcdm|Selector53~3_combout\,
	combout => \u4|lcdm|Selector32~0_combout\);

-- Location: LCFF_X90_Y38_N3
\u4|lcdm|current_state.command_init_9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector32~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_9~regout\);

-- Location: LCCOMB_X88_Y39_N20
\u4|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux8~0_combout\ = (\u4|character_counter\(3) & (!\u4|line_counter\(2) & ((!\u4|line_counter\(1))))) # (!\u4|character_counter\(3) & (((!\u4|line_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(2),
	datab => \u4|line_counter\(0),
	datac => \u4|line_counter\(1),
	datad => \u4|character_counter\(3),
	combout => \u4|Mux8~0_combout\);

-- Location: LCCOMB_X88_Y39_N14
\u4|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux8~1_combout\ = (!\u4|character_counter\(0) & (!\u4|character_counter\(2) & (\u4|Mux8~0_combout\ & !\u4|character_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|character_counter\(2),
	datac => \u4|Mux8~0_combout\,
	datad => \u4|character_counter\(1),
	combout => \u4|Mux8~1_combout\);

-- Location: LCCOMB_X88_Y38_N30
\u4|Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector18~1_combout\ = ((!\u4|state.update_linecount_wait~regout\ & (!\u4|state.hold2~regout\ & \u4|Selector1~1_combout\))) # (!\u4|character_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|state.update_linecount_wait~regout\,
	datab => \u4|character_counter\(0),
	datac => \u4|state.hold2~regout\,
	datad => \u4|Selector1~1_combout\,
	combout => \u4|Selector18~1_combout\);

-- Location: LCCOMB_X87_Y38_N20
\u4|Selector18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Selector18~3_combout\ = ((!\u4|Selector18~2_combout\ & ((!\u4|Add1~0_combout\) # (!\u4|Selector18~0_combout\)))) # (!\u4|Selector18~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Selector18~2_combout\,
	datab => \u4|Selector18~0_combout\,
	datac => \u4|Add1~0_combout\,
	datad => \u4|Selector18~1_combout\,
	combout => \u4|Selector18~3_combout\);

-- Location: LCFF_X87_Y38_N21
\u4|character_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Selector18~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|character_counter\(0));

-- Location: LCCOMB_X88_Y39_N0
\u4|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux8~2_combout\ = (\u4|character_counter\(2) & ((\u4|character_counter\(0) & (!\u4|Mux9~0_combout\)) # (!\u4|character_counter\(0) & ((!\u4|line_counter\(0)))))) # (!\u4|character_counter\(2) & (!\u4|Mux9~0_combout\ & (!\u4|character_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux9~0_combout\,
	datab => \u4|character_counter\(2),
	datac => \u4|character_counter\(0),
	datad => \u4|line_counter\(0),
	combout => \u4|Mux8~2_combout\);

-- Location: LCCOMB_X88_Y39_N12
\u4|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux8~3_combout\ = (\u4|Mux8~1_combout\) # ((\u4|character_counter\(1) & (!\u4|character_counter\(3) & \u4|Mux8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|character_counter\(3),
	datac => \u4|Mux8~1_combout\,
	datad => \u4|Mux8~2_combout\,
	combout => \u4|Mux8~3_combout\);

-- Location: LCFF_X88_Y39_N13
\u4|data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Mux8~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.write_char~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|data\(0));

-- Location: LCCOMB_X91_Y39_N16
\u4|lcdm|Selector87~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector87~0_combout\ = (\u4|lcdm|current_state.command_init_9~regout\) # ((\u4|lcdm|current_state.wait_for_command~regout\ & \u4|data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.command_init_9~regout\,
	datac => \u4|lcdm|current_state.wait_for_command~regout\,
	datad => \u4|data\(0),
	combout => \u4|lcdm|Selector87~0_combout\);

-- Location: LCCOMB_X89_Y38_N18
\u4|lcdm|WideOr3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr3~1_combout\ = (\u4|lcdm|WideOr3~0_combout\ & (!\u4|lcdm|current_state.pulse_e_3~regout\ & (!\u4|lcdm|current_state.pulse_busy_flag_3~regout\ & \u4|lcdm|WideOr33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|WideOr3~0_combout\,
	datab => \u4|lcdm|current_state.pulse_e_3~regout\,
	datac => \u4|lcdm|current_state.pulse_busy_flag_3~regout\,
	datad => \u4|lcdm|WideOr33~0_combout\,
	combout => \u4|lcdm|WideOr3~1_combout\);

-- Location: LCCOMB_X90_Y38_N24
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

-- Location: LCFF_X91_Y39_N17
\u4|lcdm|LCD_DB[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector87~0_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[0]~reg0_regout\);

-- Location: LCCOMB_X89_Y37_N8
\u4|lcdm|WideOr17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr17~0_combout\ = (!\u4|lcdm|current_state.pulse_busy_flag~regout\ & (\u4|lcdm|current_state.reset~regout\ & (!\u4|lcdm|current_state.command_init_4~regout\ & !\u4|lcdm|current_state.command_init_2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag~regout\,
	datab => \u4|lcdm|current_state.reset~regout\,
	datac => \u4|lcdm|current_state.command_init_4~regout\,
	datad => \u4|lcdm|current_state.command_init_2~regout\,
	combout => \u4|lcdm|WideOr17~0_combout\);

-- Location: LCCOMB_X89_Y37_N6
\u4|lcdm|Selector88~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector88~1_combout\ = (\u4|lcdm|WideOr17~0_combout\ & (((\u4|lcdm|LCD_DB[0]~8_combout\ & \u4|wr~regout\)) # (!\u4|lcdm|current_state.wait_for_command~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|LCD_DB[0]~8_combout\,
	datab => \u4|wr~regout\,
	datac => \u4|lcdm|WideOr17~0_combout\,
	datad => \u4|lcdm|current_state.wait_for_command~regout\,
	combout => \u4|lcdm|Selector88~1_combout\);

-- Location: LCCOMB_X89_Y39_N24
\u4|lcdm|Selector88~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector88~0_combout\ = (\u4|lcdm|Equal0~6_combout\) # ((!\u4|lcdm|current_state.command_init_5~regout\ & !\u4|lcdm|current_state.command_init_3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_5~regout\,
	datab => \u4|lcdm|current_state.command_init_3~regout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector88~0_combout\);

-- Location: LCCOMB_X89_Y39_N16
\u4|lcdm|Selector88~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector88~2_combout\ = (\u4|lcdm|Selector88~1_combout\ & (\u4|lcdm|Selector88~0_combout\ & ((\u4|lcdm|Equal0~6_combout\) # (!\u4|lcdm|current_state.command_init_1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_1~regout\,
	datab => \u4|lcdm|Selector88~1_combout\,
	datac => \u4|lcdm|Selector88~0_combout\,
	datad => \u4|lcdm|Equal0~6_combout\,
	combout => \u4|lcdm|Selector88~2_combout\);

-- Location: LCFF_X89_Y39_N11
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

-- Location: LCCOMB_X90_Y39_N16
\u4|lcdm|Selector38~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector38~1_combout\ = (\u4|home~regout\ & ((\u4|lcdm|current_state.wait_for_command~regout\) # ((\u4|lcdm|current_state.command_home~regout\ & !\u4|lcdm|Selector38~0_combout\)))) # (!\u4|home~regout\ & 
-- (((\u4|lcdm|current_state.command_home~regout\ & !\u4|lcdm|Selector38~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|home~regout\,
	datab => \u4|lcdm|current_state.wait_for_command~regout\,
	datac => \u4|lcdm|current_state.command_home~regout\,
	datad => \u4|lcdm|Selector38~0_combout\,
	combout => \u4|lcdm|Selector38~1_combout\);

-- Location: LCFF_X90_Y39_N17
\u4|lcdm|current_state.command_home\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector38~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_home~regout\);

-- Location: LCCOMB_X91_Y39_N18
\u4|lcdm|Selector90~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector90~0_combout\ = (\u4|lcdm|current_state.command_home~regout\) # ((\u4|lcdm|current_state.command_init_11~regout\) # ((\u4|data\(1) & \u4|lcdm|current_state.wait_for_command~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|data\(1),
	datab => \u4|lcdm|current_state.command_home~regout\,
	datac => \u4|lcdm|current_state.wait_for_command~regout\,
	datad => \u4|lcdm|current_state.command_init_11~regout\,
	combout => \u4|lcdm|Selector90~0_combout\);

-- Location: LCFF_X91_Y39_N19
\u4|lcdm|LCD_DB[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector90~0_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[1]~reg0_regout\);

-- Location: LCFF_X89_Y39_N9
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

-- Location: LCCOMB_X88_Y39_N2
\u4|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux6~0_combout\ = (\u4|character_counter\(0) & (\u4|character_counter\(2) & (!\u4|line_counter\(1) & !\u4|line_counter\(2)))) # (!\u4|character_counter\(0) & (!\u4|character_counter\(2) & ((\u4|line_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|character_counter\(2),
	datac => \u4|line_counter\(1),
	datad => \u4|line_counter\(2),
	combout => \u4|Mux6~0_combout\);

-- Location: LCCOMB_X88_Y39_N10
\u4|Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux8~4_combout\ = (!\u4|character_counter\(2) & (!\u4|line_counter\(1) & !\u4|line_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|character_counter\(2),
	datac => \u4|line_counter\(1),
	datad => \u4|line_counter\(2),
	combout => \u4|Mux8~4_combout\);

-- Location: LCCOMB_X88_Y39_N16
\u4|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux6~1_combout\ = (\u4|character_counter\(1) & (((\u4|character_counter\(0) & \u4|Mux8~4_combout\)))) # (!\u4|character_counter\(1) & (\u4|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|Mux6~0_combout\,
	datac => \u4|character_counter\(0),
	datad => \u4|Mux8~4_combout\,
	combout => \u4|Mux6~1_combout\);

-- Location: LCCOMB_X88_Y39_N24
\u4|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux6~2_combout\ = (\u4|character_counter\(1) & ((\u4|character_counter\(3) & (\u4|Mux6~1_combout\)) # (!\u4|character_counter\(3) & ((\u4|Mux8~2_combout\))))) # (!\u4|character_counter\(1) & (!\u4|character_counter\(3) & (\u4|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|character_counter\(3),
	datac => \u4|Mux6~1_combout\,
	datad => \u4|Mux8~2_combout\,
	combout => \u4|Mux6~2_combout\);

-- Location: LCFF_X88_Y39_N25
\u4|data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Mux6~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.write_char~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|data\(2));

-- Location: LCCOMB_X90_Y39_N24
\u4|lcdm|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector33~0_combout\ = (\u4|lcdm|Selector35~1_combout\ & ((\u4|lcdm|Selector53~3_combout\ & (\u4|lcdm|return_state.command_init_10~regout\)) # (!\u4|lcdm|Selector53~3_combout\ & ((\u4|lcdm|current_state.command_init_10~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|return_state.command_init_10~regout\,
	datab => \u4|lcdm|Selector53~3_combout\,
	datac => \u4|lcdm|current_state.command_init_10~regout\,
	datad => \u4|lcdm|Selector35~1_combout\,
	combout => \u4|lcdm|Selector33~0_combout\);

-- Location: LCFF_X90_Y39_N25
\u4|lcdm|current_state.command_init_10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector33~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|current_state.command_init_10~regout\);

-- Location: LCCOMB_X90_Y39_N14
\u4|lcdm|Selector96~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector96~0_combout\ = (!\u4|lcdm|current_state.command_init_10~regout\ & !\u4|lcdm|current_state.command_init_7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|lcdm|current_state.command_init_10~regout\,
	datad => \u4|lcdm|current_state.command_init_7~regout\,
	combout => \u4|lcdm|Selector96~0_combout\);

-- Location: LCCOMB_X91_Y39_N12
\u4|lcdm|Selector93~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector93~0_combout\ = (\u4|lcdm|current_state.command_init_11~regout\) # (((\u4|lcdm|current_state.wait_for_command~regout\ & \u4|data\(2))) # (!\u4|lcdm|Selector96~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.wait_for_command~regout\,
	datab => \u4|lcdm|current_state.command_init_11~regout\,
	datac => \u4|data\(2),
	datad => \u4|lcdm|Selector96~0_combout\,
	combout => \u4|lcdm|Selector93~0_combout\);

-- Location: LCFF_X91_Y39_N13
\u4|lcdm|LCD_DB[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector93~0_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[2]~reg0_regout\);

-- Location: LCFF_X89_Y39_N7
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

-- Location: LCCOMB_X88_Y39_N18
\u4|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux5~0_combout\ = (\u4|character_counter\(0) & (((!\u4|line_counter\(1) & !\u4|line_counter\(2))))) # (!\u4|character_counter\(0) & (!\u4|line_counter\(0) & (\u4|line_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(0),
	datab => \u4|line_counter\(0),
	datac => \u4|line_counter\(1),
	datad => \u4|line_counter\(2),
	combout => \u4|Mux5~0_combout\);

-- Location: LCCOMB_X88_Y39_N28
\u4|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux7~0_combout\ = (!\u4|character_counter\(1) & (\u4|character_counter\(3) & \u4|Mux8~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(1),
	datab => \u4|character_counter\(3),
	datad => \u4|Mux8~4_combout\,
	combout => \u4|Mux7~0_combout\);

-- Location: LCCOMB_X88_Y39_N26
\u4|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux5~2_combout\ = (\u4|Mux5~1_combout\ & ((\u4|Mux5~0_combout\) # ((!\u4|character_counter\(0) & \u4|Mux7~0_combout\)))) # (!\u4|Mux5~1_combout\ & (((!\u4|character_counter\(0) & \u4|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|Mux5~1_combout\,
	datab => \u4|Mux5~0_combout\,
	datac => \u4|character_counter\(0),
	datad => \u4|Mux7~0_combout\,
	combout => \u4|Mux5~2_combout\);

-- Location: LCFF_X88_Y39_N27
\u4|data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Mux5~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.write_char~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|data\(3));

-- Location: LCCOMB_X91_Y39_N2
\u4|lcdm|Selector96~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector96~1_combout\ = (\u4|lcdm|current_state.command_init_8~regout\) # (((\u4|data\(3) & \u4|lcdm|current_state.wait_for_command~regout\)) # (!\u4|lcdm|Selector96~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_init_8~regout\,
	datab => \u4|data\(3),
	datac => \u4|lcdm|current_state.wait_for_command~regout\,
	datad => \u4|lcdm|Selector96~0_combout\,
	combout => \u4|lcdm|Selector96~1_combout\);

-- Location: LCFF_X91_Y39_N3
\u4|lcdm|LCD_DB[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector96~1_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[3]~reg0_regout\);

-- Location: LCFF_X89_Y39_N25
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

-- Location: LCCOMB_X88_Y37_N8
\u4|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux4~1_combout\ = (\u4|character_counter\(1) & (((!\u4|line_counter\(0))))) # (!\u4|character_counter\(1) & (!\u4|line_counter\(2) & (!\u4|line_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|line_counter\(2),
	datab => \u4|line_counter\(1),
	datac => \u4|line_counter\(0),
	datad => \u4|character_counter\(1),
	combout => \u4|Mux4~1_combout\);

-- Location: LCCOMB_X88_Y37_N26
\u4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux1~0_combout\ = (!\u4|line_counter\(0) & \u4|line_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u4|line_counter\(0),
	datad => \u4|line_counter\(1),
	combout => \u4|Mux1~0_combout\);

-- Location: LCCOMB_X88_Y37_N2
\u4|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux4~0_combout\ = (!\u4|character_counter\(1) & (!\u4|character_counter\(0) & ((\u4|Mux1~0_combout\) # (!\u4|character_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|character_counter\(1),
	datac => \u4|character_counter\(0),
	datad => \u4|Mux1~0_combout\,
	combout => \u4|Mux4~0_combout\);

-- Location: LCCOMB_X88_Y37_N10
\u4|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux4~2_combout\ = (\u4|Mux4~0_combout\) # ((\u4|character_counter\(2) & (\u4|Mux4~1_combout\ & \u4|character_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(2),
	datab => \u4|Mux4~1_combout\,
	datac => \u4|character_counter\(0),
	datad => \u4|Mux4~0_combout\,
	combout => \u4|Mux4~2_combout\);

-- Location: LCCOMB_X88_Y37_N4
\u4|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|Mux4~3_combout\ = (\u4|character_counter\(3) & (\u4|Mux8~4_combout\ & (\u4|character_counter\(0)))) # (!\u4|character_counter\(3) & (((\u4|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|character_counter\(3),
	datab => \u4|Mux8~4_combout\,
	datac => \u4|character_counter\(0),
	datad => \u4|Mux4~2_combout\,
	combout => \u4|Mux4~3_combout\);

-- Location: LCFF_X88_Y37_N5
\u4|data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|Mux4~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	sclr => \u4|ALT_INV_state.write_char~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|data\(4));

-- Location: LCCOMB_X91_Y39_N0
\u4|lcdm|Selector99~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector99~2_combout\ = (\u4|lcdm|Selector99~1_combout\ & (\u4|lcdm|WideOr17~0_combout\ & ((\u4|data\(4)) # (!\u4|lcdm|current_state.wait_for_command~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|Selector99~1_combout\,
	datab => \u4|data\(4),
	datac => \u4|lcdm|current_state.wait_for_command~regout\,
	datad => \u4|lcdm|WideOr17~0_combout\,
	combout => \u4|lcdm|Selector99~2_combout\);

-- Location: LCFF_X91_Y39_N1
\u4|lcdm|LCD_DB[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector99~2_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[4]~reg0_regout\);

-- Location: LCFF_X89_Y39_N23
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

-- Location: LCCOMB_X91_Y39_N6
\u4|lcdm|Selector102~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector102~2_combout\ = (\u4|lcdm|Selector102~1_combout\ & (\u4|lcdm|WideOr17~0_combout\ & ((\u4|data\(5)) # (!\u4|lcdm|current_state.wait_for_command~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|data\(5),
	datab => \u4|lcdm|Selector102~1_combout\,
	datac => \u4|lcdm|current_state.wait_for_command~regout\,
	datad => \u4|lcdm|WideOr17~0_combout\,
	combout => \u4|lcdm|Selector102~2_combout\);

-- Location: LCFF_X91_Y39_N7
\u4|lcdm|LCD_DB[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector102~2_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[5]~reg0_regout\);

-- Location: LCFF_X89_Y39_N13
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

-- Location: LCCOMB_X89_Y39_N30
\u4|lcdm|Selector105~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|Selector105~0_combout\ = (\u4|lcdm|current_state.command_goto30~regout\) # ((\u4|lcdm|current_state.command_goto10~regout\) # ((\u4|data\(6) & \u4|lcdm|current_state.wait_for_command~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|data\(6),
	datab => \u4|lcdm|current_state.wait_for_command~regout\,
	datac => \u4|lcdm|current_state.command_goto30~regout\,
	datad => \u4|lcdm|current_state.command_goto10~regout\,
	combout => \u4|lcdm|Selector105~0_combout\);

-- Location: LCFF_X89_Y39_N31
\u4|lcdm|LCD_DB[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector105~0_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[6]~reg0_regout\);

-- Location: LCFF_X89_Y39_N1
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

-- Location: LCCOMB_X89_Y39_N26
\u4|lcdm|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr2~0_combout\ = (\u4|lcdm|current_state.command_goto20~regout\) # ((\u4|lcdm|current_state.command_goto10~regout\) # (\u4|lcdm|current_state.command_goto30~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.command_goto20~regout\,
	datac => \u4|lcdm|current_state.command_goto10~regout\,
	datad => \u4|lcdm|current_state.command_goto30~regout\,
	combout => \u4|lcdm|WideOr2~0_combout\);

-- Location: LCFF_X89_Y39_N27
\u4|lcdm|LCD_DB[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|WideOr2~0_combout\,
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[7]~reg0_regout\);

-- Location: LCFF_X89_Y39_N17
\u4|lcdm|LCD_DB[7]~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector88~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u4|lcdm|WideOr3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_DB[7]~en_regout\);

-- Location: LCCOMB_X48_Y2_N28
\u0|wait_time[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[0]~1_combout\ = (\u0|wait_time[10]~0_combout\ & (\BUTTON~combout\(3) & !\u0|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time[10]~0_combout\,
	datac => \BUTTON~combout\(3),
	datad => \u0|process_0~0_combout\,
	combout => \u0|wait_time[0]~1_combout\);

-- Location: LCCOMB_X47_Y2_N10
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

-- Location: LCCOMB_X48_Y2_N16
\u0|wait_time[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[0]~9_combout\ = (\BUTTON~combout\(3) & (\u0|wait_time[0]~1_combout\ & ((\u0|Add1~0_combout\)))) # (!\BUTTON~combout\(3) & ((\u0|wait_time\(0)) # ((\u0|wait_time[0]~1_combout\ & \u0|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u0|wait_time[0]~1_combout\,
	datac => \u0|wait_time\(0),
	datad => \u0|Add1~0_combout\,
	combout => \u0|wait_time[0]~9_combout\);

-- Location: LCFF_X48_Y2_N17
\u0|wait_time[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(0));

-- Location: LCCOMB_X47_Y2_N14
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

-- Location: LCFF_X47_Y2_N15
\u0|wait_time[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|Add1~4_combout\,
	ena => \u0|wait_time[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(2));

-- Location: LCCOMB_X48_Y2_N14
\u0|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal0~2_combout\ = (!\u0|wait_time\(1) & (!\u0|wait_time\(0) & !\u0|wait_time\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(1),
	datac => \u0|wait_time\(0),
	datad => \u0|wait_time\(2),
	combout => \u0|Equal0~2_combout\);

-- Location: LCCOMB_X47_Y2_N2
\u0|wait_time[8]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[8]~5_combout\ = (\u0|Add1~16_combout\ & ((\u0|wait_time[0]~1_combout\) # ((!\u0|wait_time[10]~2_combout\ & \u0|wait_time\(8))))) # (!\u0|Add1~16_combout\ & (!\u0|wait_time[10]~2_combout\ & (\u0|wait_time\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add1~16_combout\,
	datab => \u0|wait_time[10]~2_combout\,
	datac => \u0|wait_time\(8),
	datad => \u0|wait_time[0]~1_combout\,
	combout => \u0|wait_time[8]~5_combout\);

-- Location: LCFF_X47_Y2_N3
\u0|wait_time[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(8));

-- Location: LCCOMB_X47_Y2_N20
\u0|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Add1~10_combout\ = (\u0|wait_time\(5) & (!\u0|Add1~9\)) # (!\u0|wait_time\(5) & ((\u0|Add1~9\) # (GND)))
-- \u0|Add1~11\ = CARRY((!\u0|Add1~9\) # (!\u0|wait_time\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(5),
	datad => VCC,
	cin => \u0|Add1~9\,
	combout => \u0|Add1~10_combout\,
	cout => \u0|Add1~11\);

-- Location: LCCOMB_X47_Y2_N24
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

-- Location: LCCOMB_X48_Y2_N12
\u0|wait_time[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[7]~6_combout\ = (\u0|wait_time[10]~2_combout\ & (\u0|wait_time[0]~1_combout\ & ((\u0|Add1~14_combout\)))) # (!\u0|wait_time[10]~2_combout\ & ((\u0|wait_time\(7)) # ((\u0|wait_time[0]~1_combout\ & \u0|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time[10]~2_combout\,
	datab => \u0|wait_time[0]~1_combout\,
	datac => \u0|wait_time\(7),
	datad => \u0|Add1~14_combout\,
	combout => \u0|wait_time[7]~6_combout\);

-- Location: LCFF_X48_Y2_N13
\u0|wait_time[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(7));

-- Location: LCCOMB_X48_Y2_N22
\u0|wait_time[9]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[9]~4_combout\ = (\u0|wait_time[10]~2_combout\ & (\u0|wait_time[0]~1_combout\ & ((\u0|Add1~18_combout\)))) # (!\u0|wait_time[10]~2_combout\ & ((\u0|wait_time\(9)) # ((\u0|wait_time[0]~1_combout\ & \u0|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time[10]~2_combout\,
	datab => \u0|wait_time[0]~1_combout\,
	datac => \u0|wait_time\(9),
	datad => \u0|Add1~18_combout\,
	combout => \u0|wait_time[9]~4_combout\);

-- Location: LCFF_X48_Y2_N23
\u0|wait_time[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(9));

-- Location: LCCOMB_X47_Y2_N0
\u0|wait_time[10]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[10]~3_combout\ = (\u0|Add1~20_combout\ & ((\u0|wait_time[0]~1_combout\) # ((\u0|wait_time\(10) & !\u0|wait_time[10]~2_combout\)))) # (!\u0|Add1~20_combout\ & (((\u0|wait_time\(10) & !\u0|wait_time[10]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add1~20_combout\,
	datab => \u0|wait_time[0]~1_combout\,
	datac => \u0|wait_time\(10),
	datad => \u0|wait_time[10]~2_combout\,
	combout => \u0|wait_time[10]~3_combout\);

-- Location: LCFF_X47_Y2_N1
\u0|wait_time[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[10]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(10));

-- Location: LCCOMB_X48_Y2_N18
\u0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal0~0_combout\ = (\u0|wait_time\(7) & (\u0|wait_time\(9) & (\u0|wait_time\(10) & \u0|wait_time\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(7),
	datab => \u0|wait_time\(9),
	datac => \u0|wait_time\(10),
	datad => \u0|wait_time\(8),
	combout => \u0|Equal0~0_combout\);

-- Location: LCCOMB_X48_Y2_N6
\u0|wait_time[10]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[10]~0_combout\ = (\hall_sens~combout\) # (((!\u0|Equal0~0_combout\) # (!\u0|Equal0~1_combout\)) # (!\u0|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hall_sens~combout\,
	datab => \u0|Equal0~2_combout\,
	datac => \u0|Equal0~1_combout\,
	datad => \u0|Equal0~0_combout\,
	combout => \u0|wait_time[10]~0_combout\);

-- Location: LCCOMB_X48_Y2_N30
\u0|wait_time[10]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[10]~2_combout\ = (\BUTTON~combout\(3) & \u0|wait_time[10]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BUTTON~combout\(3),
	datad => \u0|wait_time[10]~0_combout\,
	combout => \u0|wait_time[10]~2_combout\);

-- Location: LCCOMB_X47_Y2_N8
\u0|wait_time[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[6]~7_combout\ = (\u0|Add1~12_combout\ & ((\u0|wait_time[0]~1_combout\) # ((!\u0|wait_time[10]~2_combout\ & \u0|wait_time\(6))))) # (!\u0|Add1~12_combout\ & (!\u0|wait_time[10]~2_combout\ & (\u0|wait_time\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add1~12_combout\,
	datab => \u0|wait_time[10]~2_combout\,
	datac => \u0|wait_time\(6),
	datad => \u0|wait_time[0]~1_combout\,
	combout => \u0|wait_time[6]~7_combout\);

-- Location: LCFF_X47_Y2_N9
\u0|wait_time[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(6));

-- Location: LCFF_X47_Y2_N21
\u0|wait_time[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|Add1~10_combout\,
	ena => \u0|wait_time[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(5));

-- Location: LCCOMB_X47_Y2_N6
\u0|wait_time[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|wait_time[4]~8_combout\ = (\u0|Add1~8_combout\ & ((\u0|wait_time[0]~1_combout\) # ((!\u0|wait_time[10]~2_combout\ & \u0|wait_time\(4))))) # (!\u0|Add1~8_combout\ & (!\u0|wait_time[10]~2_combout\ & (\u0|wait_time\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Add1~8_combout\,
	datab => \u0|wait_time[10]~2_combout\,
	datac => \u0|wait_time\(4),
	datad => \u0|wait_time[0]~1_combout\,
	combout => \u0|wait_time[4]~8_combout\);

-- Location: LCFF_X47_Y2_N7
\u0|wait_time[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|wait_time[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|wait_time\(4));

-- Location: LCCOMB_X47_Y2_N4
\u0|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|Equal0~1_combout\ = (!\u0|wait_time\(3) & (\u0|wait_time\(6) & (!\u0|wait_time\(5) & \u0|wait_time\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|wait_time\(3),
	datab => \u0|wait_time\(6),
	datac => \u0|wait_time\(5),
	datad => \u0|wait_time\(4),
	combout => \u0|Equal0~1_combout\);

-- Location: LCCOMB_X48_Y2_N0
\u0|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|process_0~0_combout\ = (\hall_sens~combout\ & (\u0|Equal0~1_combout\ & (\u0|Equal0~2_combout\ & \u0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hall_sens~combout\,
	datab => \u0|Equal0~1_combout\,
	datac => \u0|Equal0~2_combout\,
	datad => \u0|Equal0~0_combout\,
	combout => \u0|process_0~0_combout\);

-- Location: LCCOMB_X51_Y2_N28
\u0|calc~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|calc~feeder_combout\ = \u0|process_0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|process_0~0_combout\,
	combout => \u0|calc~feeder_combout\);

-- Location: LCFF_X51_Y2_N29
\u0|calc\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|calc~feeder_combout\,
	ena => \BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|calc~regout\);

-- Location: LCCOMB_X48_Y3_N0
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

-- Location: LCCOMB_X48_Y3_N20
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

-- Location: LCFF_X48_Y3_N21
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

-- Location: LCCOMB_X48_Y3_N6
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

-- Location: LCFF_X48_Y3_N7
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

-- Location: LCCOMB_X49_Y3_N8
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

-- Location: LCCOMB_X48_Y3_N10
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

-- Location: LCFF_X48_Y3_N11
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

-- Location: LCCOMB_X49_Y3_N14
\u0|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~1_combout\ = (\u0|count\(4) & (\u0|LessThan0~0_combout\ & \u0|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(4),
	datab => \u0|LessThan0~0_combout\,
	datad => \u0|count\(5),
	combout => \u0|LessThan0~1_combout\);

-- Location: LCCOMB_X48_Y3_N12
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

-- Location: LCFF_X48_Y3_N13
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

-- Location: LCCOMB_X48_Y3_N16
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

-- Location: LCFF_X48_Y3_N17
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

-- Location: LCCOMB_X49_Y3_N28
\u0|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~2_combout\ = (\u0|count\(8) & ((\u0|count\(7)) # ((\u0|LessThan0~1_combout\) # (\u0|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(7),
	datab => \u0|LessThan0~1_combout\,
	datac => \u0|count\(6),
	datad => \u0|count\(8),
	combout => \u0|LessThan0~2_combout\);

-- Location: LCCOMB_X49_Y3_N20
\u0|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~3_combout\ = (\u0|count\(11)) # ((\u0|count\(10) & ((\u0|count\(9)) # (\u0|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(9),
	datab => \u0|count\(11),
	datac => \u0|count\(10),
	datad => \u0|LessThan0~2_combout\,
	combout => \u0|LessThan0~3_combout\);

-- Location: LCCOMB_X48_Y3_N22
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

-- Location: LCCOMB_X48_Y3_N24
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

-- Location: LCCOMB_X48_Y3_N26
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

-- Location: LCFF_X48_Y3_N27
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

-- Location: LCFF_X48_Y3_N29
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

-- Location: LCCOMB_X49_Y3_N6
\u0|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~4_combout\ = (\u0|count\(12) & (\u0|count\(13) & \u0|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(12),
	datab => \u0|count\(13),
	datad => \u0|count\(14),
	combout => \u0|LessThan0~4_combout\);

-- Location: LCCOMB_X49_Y3_N10
\u0|tix_mem~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem~0_combout\ = (\u0|count\(15)) # ((\u0|process_0~0_combout\) # ((\u0|LessThan0~3_combout\ & \u0|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(15),
	datab => \u0|process_0~0_combout\,
	datac => \u0|LessThan0~3_combout\,
	datad => \u0|LessThan0~4_combout\,
	combout => \u0|tix_mem~0_combout\);

-- Location: LCFF_X48_Y3_N1
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

-- Location: LCCOMB_X48_Y3_N2
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

-- Location: LCFF_X48_Y3_N3
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

-- Location: LCCOMB_X48_Y3_N4
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

-- Location: LCFF_X48_Y3_N5
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

-- Location: LCCOMB_X48_Y3_N8
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

-- Location: LCFF_X48_Y3_N9
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

-- Location: LCCOMB_X48_Y3_N14
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

-- Location: LCFF_X48_Y3_N15
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

-- Location: LCCOMB_X48_Y3_N18
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

-- Location: LCFF_X48_Y3_N19
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

-- Location: LCFF_X48_Y3_N23
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

-- Location: LCCOMB_X49_Y3_N18
\u0|tix_mem[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem[11]~feeder_combout\ = \u0|count\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|count\(11),
	combout => \u0|tix_mem[11]~feeder_combout\);

-- Location: LCFF_X49_Y3_N19
\u0|tix_mem[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem[11]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(11));

-- Location: LCCOMB_X50_Y3_N10
\u5|tix_int[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|tix_int[11]~feeder_combout\ = \u0|tix_mem\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|tix_mem\(11),
	combout => \u5|tix_int[11]~feeder_combout\);

-- Location: LCFF_X50_Y3_N11
\u5|tix_int[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|tix_int[11]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(11));

-- Location: LCCOMB_X49_Y3_N22
\u0|tix_mem[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem[9]~feeder_combout\ = \u0|count\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|count\(9),
	combout => \u0|tix_mem[9]~feeder_combout\);

-- Location: LCFF_X49_Y3_N23
\u0|tix_mem[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem[9]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(9));

-- Location: LCCOMB_X50_Y3_N18
\u5|tix_int[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|tix_int[9]~feeder_combout\ = \u0|tix_mem\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|tix_mem\(9),
	combout => \u5|tix_int[9]~feeder_combout\);

-- Location: LCFF_X50_Y3_N19
\u5|tix_int[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|tix_int[9]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(9));

-- Location: LCFF_X49_Y3_N29
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

-- Location: LCCOMB_X50_Y3_N26
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

-- Location: LCFF_X50_Y3_N27
\u5|tix_int[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|tix_int[6]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(6));

-- Location: LCCOMB_X49_Y3_N30
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

-- Location: LCFF_X49_Y3_N31
\u0|tix_mem[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem[7]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(7));

-- Location: LCFF_X50_Y3_N9
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

-- Location: LCFF_X49_Y3_N7
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

-- Location: LCFF_X50_Y3_N13
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

-- Location: LCCOMB_X50_Y3_N8
\u5|rpm[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[3]~2_combout\ = (\u5|tix_int\(6)) # ((\u5|tix_int\(7)) # ((\u5|tix_int\(4) & \u5|tix_int\(5))))

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
	combout => \u5|rpm[3]~2_combout\);

-- Location: LCCOMB_X49_Y3_N12
\u0|tix_mem[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem[8]~feeder_combout\ = \u0|count\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u0|count\(8),
	combout => \u0|tix_mem[8]~feeder_combout\);

-- Location: LCFF_X49_Y3_N13
\u0|tix_mem[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem[8]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(8));

-- Location: LCFF_X52_Y3_N27
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

-- Location: LCCOMB_X50_Y3_N0
\u5|rpm[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[3]~3_combout\ = (\u5|tix_int\(10) & ((\u5|tix_int\(9)) # ((\u5|rpm[3]~2_combout\ & \u5|tix_int\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(10),
	datab => \u5|tix_int\(9),
	datac => \u5|rpm[3]~2_combout\,
	datad => \u5|tix_int\(8),
	combout => \u5|rpm[3]~3_combout\);

-- Location: LCCOMB_X50_Y3_N30
\u5|rpm[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[3]~4_combout\ = (\u5|rpm[3]~1_combout\ & ((\u5|tix_int\(11)) # (\u5|rpm[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm[3]~1_combout\,
	datac => \u5|tix_int\(11),
	datad => \u5|rpm[3]~3_combout\,
	combout => \u5|rpm[3]~4_combout\);

-- Location: LCFF_X48_Y3_N25
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

-- Location: LCCOMB_X49_Y3_N24
\u0|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|LessThan0~5_combout\ = (\u0|LessThan0~3_combout\ & (\u0|count\(13) & (\u0|count\(12) & \u0|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|LessThan0~3_combout\,
	datab => \u0|count\(13),
	datac => \u0|count\(12),
	datad => \u0|count\(14),
	combout => \u0|LessThan0~5_combout\);

-- Location: LCCOMB_X50_Y3_N24
\u0|tix_mem~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u0|tix_mem~1_combout\ = (\u0|count\(15)) # ((!\u0|process_0~0_combout\ & (\u0|tix_mem\(15) & !\u0|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(15),
	datab => \u0|process_0~0_combout\,
	datac => \u0|tix_mem\(15),
	datad => \u0|LessThan0~5_combout\,
	combout => \u0|tix_mem~1_combout\);

-- Location: LCFF_X50_Y3_N25
\u0|tix_mem[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(15));

-- Location: LCFF_X52_Y3_N29
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

-- Location: LCCOMB_X50_Y2_N26
\u5|rpm[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[3]~5_combout\ = (\u5|rpm[3]~0_combout\) # ((\u0|calc~regout\) # ((\u5|rpm[3]~4_combout\) # (\u5|tix_int\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm[3]~0_combout\,
	datab => \u0|calc~regout\,
	datac => \u5|rpm[3]~4_combout\,
	datad => \u5|tix_int\(15),
	combout => \u5|rpm[3]~5_combout\);

-- Location: LCCOMB_X50_Y2_N22
\u5|Add1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~11_combout\ = (\u5|Add1~9_combout\ & !\u5|rpm[3]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Add1~9_combout\,
	datad => \u5|rpm[3]~5_combout\,
	combout => \u5|Add1~11_combout\);

-- Location: LCCOMB_X49_Y3_N4
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

-- Location: LCFF_X49_Y3_N5
\u0|tix_mem[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem[14]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(14));

-- Location: LCFF_X52_Y3_N17
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

-- Location: LCFF_X49_Y3_N25
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

-- Location: LCFF_X52_Y3_N25
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

-- Location: LCCOMB_X49_Y3_N0
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

-- Location: LCFF_X49_Y3_N1
\u0|tix_mem[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem[4]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(4));

-- Location: LCFF_X50_Y3_N23
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

-- Location: LCFF_X49_Y3_N3
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

-- Location: LCCOMB_X50_Y3_N16
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

-- Location: LCFF_X50_Y3_N17
\u5|tix_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|tix_int[3]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(3));

-- Location: LCFF_X49_Y3_N17
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

-- Location: LCCOMB_X50_Y3_N6
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

-- Location: LCFF_X50_Y3_N7
\u5|tix_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|tix_int[2]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(2));

-- Location: LCFF_X49_Y3_N15
\u0|tix_mem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u0|count\(1),
	aclr => \ALT_INV_BUTTON~combout\(3),
	sload => VCC,
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(1));

-- Location: LCCOMB_X50_Y3_N4
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

-- Location: LCFF_X50_Y3_N5
\u5|tix_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|tix_int[1]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(1));

-- Location: LCFF_X49_Y3_N9
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

-- Location: LCCOMB_X49_Y3_N16
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

-- Location: LCCOMB_X50_Y3_N2
\u5|tix_int[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|tix_int[0]~feeder_combout\ = \u5|tix_int[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u5|tix_int[0]~0_combout\,
	combout => \u5|tix_int[0]~feeder_combout\);

-- Location: LCFF_X50_Y3_N3
\u5|tix_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|tix_int[0]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|calc~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|tix_int\(0));

-- Location: LCCOMB_X51_Y3_N16
\u5|x[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[2]~24_combout\ = ((\u5|x\(2) $ (\u5|tix_int\(2) $ (\u5|x[1]~23\)))) # (GND)
-- \u5|x[2]~25\ = CARRY((\u5|x\(2) & ((!\u5|x[1]~23\) # (!\u5|tix_int\(2)))) # (!\u5|x\(2) & (!\u5|tix_int\(2) & !\u5|x[1]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(2),
	datab => \u5|tix_int\(2),
	datad => VCC,
	cin => \u5|x[1]~23\,
	combout => \u5|x[2]~24_combout\,
	cout => \u5|x[2]~25\);

-- Location: LCCOMB_X51_Y3_N18
\u5|x[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[3]~26_combout\ = (\u5|x\(3) & ((\u5|tix_int\(3) & (!\u5|x[2]~25\)) # (!\u5|tix_int\(3) & (\u5|x[2]~25\ & VCC)))) # (!\u5|x\(3) & ((\u5|tix_int\(3) & ((\u5|x[2]~25\) # (GND))) # (!\u5|tix_int\(3) & (!\u5|x[2]~25\))))
-- \u5|x[3]~27\ = CARRY((\u5|x\(3) & (\u5|tix_int\(3) & !\u5|x[2]~25\)) # (!\u5|x\(3) & ((\u5|tix_int\(3)) # (!\u5|x[2]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(3),
	datab => \u5|tix_int\(3),
	datad => VCC,
	cin => \u5|x[2]~25\,
	combout => \u5|x[3]~26_combout\,
	cout => \u5|x[3]~27\);

-- Location: LCCOMB_X51_Y3_N22
\u5|x[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[5]~30_combout\ = (\u5|tix_int\(5) & ((\u5|x\(5) & (!\u5|x[4]~29\)) # (!\u5|x\(5) & ((\u5|x[4]~29\) # (GND))))) # (!\u5|tix_int\(5) & ((\u5|x\(5) & (\u5|x[4]~29\ & VCC)) # (!\u5|x\(5) & (!\u5|x[4]~29\))))
-- \u5|x[5]~31\ = CARRY((\u5|tix_int\(5) & ((!\u5|x[4]~29\) # (!\u5|x\(5)))) # (!\u5|tix_int\(5) & (!\u5|x\(5) & !\u5|x[4]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(5),
	datab => \u5|x\(5),
	datad => VCC,
	cin => \u5|x[4]~29\,
	combout => \u5|x[5]~30_combout\,
	cout => \u5|x[5]~31\);

-- Location: LCFF_X51_Y3_N23
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

-- Location: LCCOMB_X51_Y3_N24
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

-- Location: LCCOMB_X51_Y3_N26
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

-- Location: LCFF_X51_Y3_N27
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

-- Location: LCCOMB_X51_Y3_N28
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

-- Location: LCFF_X51_Y3_N29
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

-- Location: LCCOMB_X51_Y3_N30
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

-- Location: LCFF_X51_Y3_N31
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

-- Location: LCCOMB_X51_Y2_N0
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

-- Location: LCFF_X51_Y2_N1
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

-- Location: LCCOMB_X51_Y2_N2
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

-- Location: LCFF_X51_Y2_N3
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

-- Location: LCCOMB_X51_Y2_N4
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

-- Location: LCCOMB_X51_Y2_N6
\u5|x[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[13]~46_combout\ = ((\u5|tix_int\(13) $ (\u5|x\(13) $ (!\u5|x[12]~45\)))) # (GND)
-- \u5|x[13]~47\ = CARRY((\u5|tix_int\(13) & ((\u5|x\(13)) # (!\u5|x[12]~45\))) # (!\u5|tix_int\(13) & (\u5|x\(13) & !\u5|x[12]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(13),
	datab => \u5|x\(13),
	datad => VCC,
	cin => \u5|x[12]~45\,
	combout => \u5|x[13]~46_combout\,
	cout => \u5|x[13]~47\);

-- Location: LCFF_X51_Y2_N7
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

-- Location: LCCOMB_X51_Y2_N8
\u5|x[14]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[14]~48_combout\ = ((\u5|x\(14) $ (\u5|tix_int\(14) $ (\u5|x[13]~47\)))) # (GND)
-- \u5|x[14]~49\ = CARRY((\u5|x\(14) & ((!\u5|x[13]~47\) # (!\u5|tix_int\(14)))) # (!\u5|x\(14) & (!\u5|tix_int\(14) & !\u5|x[13]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(14),
	datab => \u5|tix_int\(14),
	datad => VCC,
	cin => \u5|x[13]~47\,
	combout => \u5|x[14]~48_combout\,
	cout => \u5|x[14]~49\);

-- Location: LCCOMB_X51_Y2_N10
\u5|x[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|x[15]~50_combout\ = (\u5|x\(15) & ((\u5|tix_int\(15) & (!\u5|x[14]~49\)) # (!\u5|tix_int\(15) & (\u5|x[14]~49\ & VCC)))) # (!\u5|x\(15) & ((\u5|tix_int\(15) & ((\u5|x[14]~49\) # (GND))) # (!\u5|tix_int\(15) & (!\u5|x[14]~49\))))
-- \u5|x[15]~51\ = CARRY((\u5|x\(15) & (\u5|tix_int\(15) & !\u5|x[14]~49\)) # (!\u5|x\(15) & ((\u5|tix_int\(15)) # (!\u5|x[14]~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(15),
	datab => \u5|tix_int\(15),
	datad => VCC,
	cin => \u5|x[14]~49\,
	combout => \u5|x[15]~50_combout\,
	cout => \u5|x[15]~51\);

-- Location: LCCOMB_X51_Y2_N12
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

-- Location: LCFF_X51_Y2_N15
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

-- Location: LCCOMB_X51_Y2_N22
\u5|LessThan2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~32_combout\ = (\u5|x\(18)) # (\u5|x\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(18),
	datac => \u5|x\(17),
	combout => \u5|LessThan2~32_combout\);

-- Location: LCFF_X51_Y2_N13
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

-- Location: LCFF_X51_Y2_N11
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

-- Location: LCFF_X51_Y2_N9
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

-- Location: LCCOMB_X49_Y3_N26
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

-- Location: LCFF_X49_Y3_N27
\u0|tix_mem[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u0|tix_mem[13]~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u0|tix_mem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u0|tix_mem\(13));

-- Location: LCFF_X52_Y3_N3
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

-- Location: LCFF_X51_Y2_N5
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

-- Location: LCFF_X51_Y3_N25
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

-- Location: LCFF_X51_Y3_N19
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

-- Location: LCFF_X51_Y3_N17
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

-- Location: LCCOMB_X52_Y3_N0
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

-- Location: LCCOMB_X52_Y3_N2
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

-- Location: LCCOMB_X52_Y3_N4
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

-- Location: LCCOMB_X52_Y3_N6
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

-- Location: LCCOMB_X52_Y3_N8
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

-- Location: LCCOMB_X52_Y3_N10
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

-- Location: LCCOMB_X52_Y3_N12
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

-- Location: LCCOMB_X52_Y3_N14
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

-- Location: LCCOMB_X52_Y3_N16
\u5|LessThan2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~17_cout\ = CARRY((\u5|x\(8) & (!\u5|tix_int\(8) & !\u5|LessThan2~15_cout\)) # (!\u5|x\(8) & ((!\u5|LessThan2~15_cout\) # (!\u5|tix_int\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(8),
	datab => \u5|tix_int\(8),
	datad => VCC,
	cin => \u5|LessThan2~15_cout\,
	cout => \u5|LessThan2~17_cout\);

-- Location: LCCOMB_X52_Y3_N18
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

-- Location: LCCOMB_X52_Y3_N20
\u5|LessThan2~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~21_cout\ = CARRY((\u5|tix_int\(10) & (!\u5|x\(10) & !\u5|LessThan2~19_cout\)) # (!\u5|tix_int\(10) & ((!\u5|LessThan2~19_cout\) # (!\u5|x\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(10),
	datab => \u5|x\(10),
	datad => VCC,
	cin => \u5|LessThan2~19_cout\,
	cout => \u5|LessThan2~21_cout\);

-- Location: LCCOMB_X52_Y3_N22
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

-- Location: LCCOMB_X52_Y3_N24
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

-- Location: LCCOMB_X52_Y3_N26
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

-- Location: LCCOMB_X52_Y3_N28
\u5|LessThan2~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~29_cout\ = CARRY((\u5|tix_int\(14) & (\u5|x\(14) & !\u5|LessThan2~27_cout\)) # (!\u5|tix_int\(14) & ((\u5|x\(14)) # (!\u5|LessThan2~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u5|tix_int\(14),
	datab => \u5|x\(14),
	datad => VCC,
	cin => \u5|LessThan2~27_cout\,
	cout => \u5|LessThan2~29_cout\);

-- Location: LCCOMB_X52_Y3_N30
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

-- Location: LCCOMB_X51_Y3_N0
\u5|LessThan2~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|LessThan2~33_combout\ = ((\u5|LessThan2~32_combout\) # ((\u5|LessThan2~30_combout\) # (!\u5|x\(16)))) # (!\u5|x\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|x\(19),
	datab => \u5|LessThan2~32_combout\,
	datac => \u5|x\(16),
	datad => \u5|LessThan2~30_combout\,
	combout => \u5|LessThan2~33_combout\);

-- Location: LCCOMB_X51_Y3_N8
\u5|stop~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|stop~0_combout\ = (\u0|calc~regout\) # ((\u5|rpm[3]~6_combout\ & (\u5|stop~regout\ & \u5|LessThan2~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm[3]~6_combout\,
	datab => \u0|calc~regout\,
	datac => \u5|stop~regout\,
	datad => \u5|LessThan2~33_combout\,
	combout => \u5|stop~0_combout\);

-- Location: LCFF_X51_Y3_N9
\u5|stop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|stop~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|stop~regout\);

-- Location: LCCOMB_X51_Y3_N10
\u5|rpm[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm[3]~7_combout\ = (\u0|calc~regout\) # ((\u5|stop~regout\ & ((\u5|LessThan2~33_combout\) # (!\u5|rpm[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm[3]~6_combout\,
	datab => \u0|calc~regout\,
	datac => \u5|stop~regout\,
	datad => \u5|LessThan2~33_combout\,
	combout => \u5|rpm[3]~7_combout\);

-- Location: LCFF_X50_Y2_N23
\u5|rpm[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|Add1~11_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(4));

-- Location: LCCOMB_X50_Y2_N30
\u5|rpm~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm~8_combout\ = (!\u0|calc~regout\ & ((\u5|tix_int\(15)) # ((!\u5|rpm[3]~0_combout\ & \u5|rpm[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm[3]~0_combout\,
	datab => \u0|calc~regout\,
	datac => \u5|rpm[3]~4_combout\,
	datad => \u5|tix_int\(15),
	combout => \u5|rpm~8_combout\);

-- Location: LCCOMB_X50_Y2_N10
\u5|rpm~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm~11_combout\ = (\u5|rpm~8_combout\) # ((\u5|Add1~7_combout\ & !\u5|rpm[3]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Add1~7_combout\,
	datab => \u5|rpm[3]~5_combout\,
	datad => \u5|rpm~8_combout\,
	combout => \u5|rpm~11_combout\);

-- Location: LCFF_X50_Y2_N11
\u5|rpm[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|rpm~11_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(3));

-- Location: LCCOMB_X50_Y2_N24
\u5|Add1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~19_combout\ = (\u5|Add1~5_combout\ & !\u5|rpm[3]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Add1~5_combout\,
	datad => \u5|rpm[3]~5_combout\,
	combout => \u5|Add1~19_combout\);

-- Location: LCFF_X50_Y2_N25
\u5|rpm[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|Add1~19_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(2));

-- Location: LCCOMB_X49_Y2_N6
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

-- Location: LCCOMB_X50_Y2_N14
\u5|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~2_combout\ = (\u5|Add1~0_combout\ & !\u5|rpm[3]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|Add1~0_combout\,
	datad => \u5|rpm[3]~5_combout\,
	combout => \u5|Add1~2_combout\);

-- Location: LCFF_X50_Y2_N15
\u5|rpm[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|Add1~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(0));

-- Location: LCCOMB_X49_Y2_N16
\u5|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~12_combout\ = (\u5|rpm\(5) & (!\u5|Add1~10\)) # (!\u5|rpm\(5) & ((\u5|Add1~10\) # (GND)))
-- \u5|Add1~13\ = CARRY((!\u5|Add1~10\) # (!\u5|rpm\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm\(5),
	datad => VCC,
	cin => \u5|Add1~10\,
	combout => \u5|Add1~12_combout\,
	cout => \u5|Add1~13\);

-- Location: LCCOMB_X50_Y2_N0
\u5|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~18_combout\ = (\u5|Add1~12_combout\ & !\u5|rpm[3]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|Add1~12_combout\,
	datad => \u5|rpm[3]~5_combout\,
	combout => \u5|Add1~18_combout\);

-- Location: LCFF_X50_Y2_N1
\u5|rpm[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|Add1~18_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(5));

-- Location: LCCOMB_X49_Y2_N18
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

-- Location: LCCOMB_X50_Y2_N8
\u5|rpm~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm~10_combout\ = (\u5|rpm~8_combout\) # ((!\u5|rpm[3]~5_combout\ & \u5|Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm[3]~5_combout\,
	datac => \u5|Add1~14_combout\,
	datad => \u5|rpm~8_combout\,
	combout => \u5|rpm~10_combout\);

-- Location: LCFF_X50_Y2_N9
\u5|rpm[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|rpm~10_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(6));

-- Location: LCCOMB_X50_Y2_N16
\u5|rpm_mem[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm_mem[3]~0_combout\ = (\BUTTON~combout\(3) & (!\u5|stop~regout\ & !\u0|calc~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BUTTON~combout\(3),
	datab => \u5|stop~regout\,
	datad => \u0|calc~regout\,
	combout => \u5|rpm_mem[3]~0_combout\);

-- Location: LCFF_X53_Y2_N3
\u5|rpm_mem[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u5|rpm\(6),
	sload => VCC,
	ena => \u5|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(6));

-- Location: LCCOMB_X49_Y2_N20
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

-- Location: LCCOMB_X50_Y2_N18
\u5|rpm~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|rpm~9_combout\ = (\u5|rpm~8_combout\) # ((!\u5|rpm[3]~5_combout\ & \u5|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm[3]~5_combout\,
	datac => \u5|Add1~16_combout\,
	datad => \u5|rpm~8_combout\,
	combout => \u5|rpm~9_combout\);

-- Location: LCFF_X50_Y2_N19
\u5|rpm[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|rpm~9_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(7));

-- Location: LCFF_X53_Y2_N23
\u5|rpm_mem[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u5|rpm\(7),
	sload => VCC,
	ena => \u5|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(7));

-- Location: LCFF_X53_Y2_N21
\u5|rpm_mem[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u5|rpm\(5),
	sload => VCC,
	ena => \u5|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(5));

-- Location: LCCOMB_X53_Y2_N22
\u2|U1bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U1bcd[2]~1_combout\ = (\u5|rpm_mem\(4) & (!\u5|rpm_mem\(6) & (\u5|rpm_mem\(7) & !\u5|rpm_mem\(5)))) # (!\u5|rpm_mem\(4) & (\u5|rpm_mem\(6) & (\u5|rpm_mem\(7) $ (!\u5|rpm_mem\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(4),
	datab => \u5|rpm_mem\(6),
	datac => \u5|rpm_mem\(7),
	datad => \u5|rpm_mem\(5),
	combout => \u2|U1bcd[2]~1_combout\);

-- Location: LCFF_X53_Y2_N9
\u5|rpm_mem[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u5|rpm\(4),
	sload => VCC,
	ena => \u5|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(4));

-- Location: LCCOMB_X53_Y2_N8
\u2|U1bcd[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U1bcd[0]~0_combout\ = (\u5|rpm_mem\(4) & (\u5|rpm_mem\(6) $ (((\u5|rpm_mem\(5)) # (!\u5|rpm_mem\(7)))))) # (!\u5|rpm_mem\(4) & ((\u5|rpm_mem\(7) & (!\u5|rpm_mem\(5) & !\u5|rpm_mem\(6))) # (!\u5|rpm_mem\(7) & (\u5|rpm_mem\(5) & \u5|rpm_mem\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(7),
	datab => \u5|rpm_mem\(5),
	datac => \u5|rpm_mem\(4),
	datad => \u5|rpm_mem\(6),
	combout => \u2|U1bcd[0]~0_combout\);

-- Location: LCFF_X53_Y2_N19
\u5|rpm_mem[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u5|rpm\(3),
	sload => VCC,
	ena => \u5|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(3));

-- Location: LCCOMB_X53_Y2_N12
\u2|U2bcd[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U2bcd[0]~0_combout\ = (\u2|U1bcd[1]~2_combout\ & (!\u5|rpm_mem\(3) & ((\u2|U1bcd[2]~1_combout\) # (\u2|U1bcd[0]~0_combout\)))) # (!\u2|U1bcd[1]~2_combout\ & (\u2|U1bcd[2]~1_combout\ $ (((\u5|rpm_mem\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U1bcd[1]~2_combout\,
	datab => \u2|U1bcd[2]~1_combout\,
	datac => \u2|U1bcd[0]~0_combout\,
	datad => \u5|rpm_mem\(3),
	combout => \u2|U2bcd[0]~0_combout\);

-- Location: LCFF_X50_Y2_N21
\u5|rpm_mem[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u5|rpm\(2),
	sload => VCC,
	ena => \u5|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(2));

-- Location: LCCOMB_X53_Y2_N24
\u2|U2bcd[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U2bcd[1]~2_combout\ = (\u2|U1bcd[2]~1_combout\ & ((\u2|U1bcd[0]~0_combout\ $ (!\u5|rpm_mem\(3))))) # (!\u2|U1bcd[2]~1_combout\ & (\u2|U1bcd[0]~0_combout\ & ((\u5|rpm_mem\(3)) # (!\u2|U1bcd[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U1bcd[1]~2_combout\,
	datab => \u2|U1bcd[2]~1_combout\,
	datac => \u2|U1bcd[0]~0_combout\,
	datad => \u5|rpm_mem\(3),
	combout => \u2|U2bcd[1]~2_combout\);

-- Location: LCCOMB_X50_Y2_N28
\u2|U3bcd[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U3bcd[1]~2_combout\ = (\u2|U2bcd[2]~1_combout\ & (\u2|U2bcd[0]~0_combout\ $ ((!\u5|rpm_mem\(2))))) # (!\u2|U2bcd[2]~1_combout\ & (\u2|U2bcd[0]~0_combout\ & ((\u5|rpm_mem\(2)) # (!\u2|U2bcd[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U2bcd[2]~1_combout\,
	datab => \u2|U2bcd[0]~0_combout\,
	datac => \u5|rpm_mem\(2),
	datad => \u2|U2bcd[1]~2_combout\,
	combout => \u2|U3bcd[1]~2_combout\);

-- Location: LCCOMB_X50_Y2_N12
\u2|U3bcd[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U3bcd[0]~0_combout\ = (\u2|U2bcd[2]~1_combout\ & (((!\u5|rpm_mem\(2))))) # (!\u2|U2bcd[2]~1_combout\ & ((\u5|rpm_mem\(2) & ((!\u2|U2bcd[1]~2_combout\))) # (!\u5|rpm_mem\(2) & (\u2|U2bcd[0]~0_combout\ & \u2|U2bcd[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U2bcd[2]~1_combout\,
	datab => \u2|U2bcd[0]~0_combout\,
	datac => \u5|rpm_mem\(2),
	datad => \u2|U2bcd[1]~2_combout\,
	combout => \u2|U3bcd[0]~0_combout\);

-- Location: LCCOMB_X50_Y2_N6
\u2|U3bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U3bcd[2]~1_combout\ = (\u2|U2bcd[1]~2_combout\ & (((!\u2|U2bcd[0]~0_combout\ & !\u5|rpm_mem\(2))))) # (!\u2|U2bcd[1]~2_combout\ & (\u2|U2bcd[2]~1_combout\ & ((\u2|U2bcd[0]~0_combout\) # (\u5|rpm_mem\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U2bcd[2]~1_combout\,
	datab => \u2|U2bcd[0]~0_combout\,
	datac => \u5|rpm_mem\(2),
	datad => \u2|U2bcd[1]~2_combout\,
	combout => \u2|U3bcd[2]~1_combout\);

-- Location: LCCOMB_X49_Y2_N4
\u2|U4bcd[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U4bcd[1]~1_combout\ = (\u5|rpm_mem\(1) & (((\u2|U3bcd[0]~0_combout\)))) # (!\u5|rpm_mem\(1) & ((\u2|U3bcd[0]~0_combout\ & (!\u2|U3bcd[1]~2_combout\ & !\u2|U3bcd[2]~1_combout\)) # (!\u2|U3bcd[0]~0_combout\ & ((\u2|U3bcd[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(1),
	datab => \u2|U3bcd[1]~2_combout\,
	datac => \u2|U3bcd[0]~0_combout\,
	datad => \u2|U3bcd[2]~1_combout\,
	combout => \u2|U4bcd[1]~1_combout\);

-- Location: LCFF_X49_Y2_N29
\u5|rpm_mem[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u5|rpm\(0),
	sload => VCC,
	ena => \u5|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(0));

-- Location: LCCOMB_X49_Y2_N26
\u2|U4bcd[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U4bcd[2]~2_combout\ = (\u2|U3bcd[1]~2_combout\ & (!\u5|rpm_mem\(1) & (!\u2|U3bcd[0]~0_combout\))) # (!\u2|U3bcd[1]~2_combout\ & (\u2|U3bcd[2]~1_combout\ & ((\u5|rpm_mem\(1)) # (\u2|U3bcd[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(1),
	datab => \u2|U3bcd[1]~2_combout\,
	datac => \u2|U3bcd[0]~0_combout\,
	datad => \u2|U3bcd[2]~1_combout\,
	combout => \u2|U4bcd[2]~2_combout\);

-- Location: LCCOMB_X49_Y2_N30
\u2|U4bcd[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U4bcd[0]~0_combout\ = (\u5|rpm_mem\(1) & (!\u2|U3bcd[1]~2_combout\ & ((!\u2|U3bcd[2]~1_combout\)))) # (!\u5|rpm_mem\(1) & ((\u2|U3bcd[2]~1_combout\) # ((\u2|U3bcd[1]~2_combout\ & \u2|U3bcd[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(1),
	datab => \u2|U3bcd[1]~2_combout\,
	datac => \u2|U3bcd[0]~0_combout\,
	datad => \u2|U3bcd[2]~1_combout\,
	combout => \u2|U4bcd[0]~0_combout\);

-- Location: LCCOMB_X48_Y2_N4
\u2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux6~0_combout\ = (!\u2|U4bcd[2]~2_combout\ & (!\u2|U4bcd[0]~0_combout\ & (\u2|U4bcd[1]~1_combout\ $ (\u5|rpm_mem\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[1]~1_combout\,
	datab => \u5|rpm_mem\(0),
	datac => \u2|U4bcd[2]~2_combout\,
	datad => \u2|U4bcd[0]~0_combout\,
	combout => \u2|Mux6~0_combout\);

-- Location: LCCOMB_X48_Y2_N26
\u2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux5~0_combout\ = (\u2|U4bcd[1]~1_combout\ & (\u5|rpm_mem\(0) $ (\u2|U4bcd[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[1]~1_combout\,
	datab => \u5|rpm_mem\(0),
	datad => \u2|U4bcd[0]~0_combout\,
	combout => \u2|Mux5~0_combout\);

-- Location: LCCOMB_X48_Y2_N24
\u2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux4~0_combout\ = (!\u2|U4bcd[1]~1_combout\ & (!\u5|rpm_mem\(0) & \u2|U4bcd[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[1]~1_combout\,
	datab => \u5|rpm_mem\(0),
	datad => \u2|U4bcd[0]~0_combout\,
	combout => \u2|Mux4~0_combout\);

-- Location: LCCOMB_X48_Y2_N10
\u2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux3~0_combout\ = (!\u2|U4bcd[2]~2_combout\ & ((\u2|U4bcd[1]~1_combout\ & (\u5|rpm_mem\(0) $ (!\u2|U4bcd[0]~0_combout\))) # (!\u2|U4bcd[1]~1_combout\ & (\u5|rpm_mem\(0) & !\u2|U4bcd[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[1]~1_combout\,
	datab => \u5|rpm_mem\(0),
	datac => \u2|U4bcd[2]~2_combout\,
	datad => \u2|U4bcd[0]~0_combout\,
	combout => \u2|Mux3~0_combout\);

-- Location: LCCOMB_X48_Y2_N8
\u2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux2~0_combout\ = (\u5|rpm_mem\(0)) # ((\u2|U4bcd[1]~1_combout\ & !\u2|U4bcd[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[1]~1_combout\,
	datab => \u5|rpm_mem\(0),
	datad => \u2|U4bcd[0]~0_combout\,
	combout => \u2|Mux2~0_combout\);

-- Location: LCCOMB_X48_Y2_N2
\u2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux1~0_combout\ = (!\u2|U4bcd[2]~2_combout\ & ((\u2|U4bcd[1]~1_combout\ & (\u5|rpm_mem\(0) & \u2|U4bcd[0]~0_combout\)) # (!\u2|U4bcd[1]~1_combout\ & ((\u5|rpm_mem\(0)) # (\u2|U4bcd[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[1]~1_combout\,
	datab => \u5|rpm_mem\(0),
	datac => \u2|U4bcd[2]~2_combout\,
	datad => \u2|U4bcd[0]~0_combout\,
	combout => \u2|Mux1~0_combout\);

-- Location: LCCOMB_X48_Y2_N20
\u2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux0~0_combout\ = (\u2|U4bcd[2]~2_combout\) # ((\u2|U4bcd[1]~1_combout\ & ((!\u2|U4bcd[0]~0_combout\) # (!\u5|rpm_mem\(0)))) # (!\u2|U4bcd[1]~1_combout\ & ((\u2|U4bcd[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U4bcd[1]~1_combout\,
	datab => \u5|rpm_mem\(0),
	datac => \u2|U4bcd[2]~2_combout\,
	datad => \u2|U4bcd[0]~0_combout\,
	combout => \u2|Mux0~0_combout\);

-- Location: LCCOMB_X53_Y2_N30
\u2|U2bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U2bcd[2]~1_combout\ = (\u2|U1bcd[1]~2_combout\ & (((!\u2|U1bcd[0]~0_combout\ & !\u5|rpm_mem\(3))))) # (!\u2|U1bcd[1]~2_combout\ & (\u2|U1bcd[2]~1_combout\ & ((\u2|U1bcd[0]~0_combout\) # (\u5|rpm_mem\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U1bcd[1]~2_combout\,
	datab => \u2|U1bcd[2]~1_combout\,
	datac => \u2|U1bcd[0]~0_combout\,
	datad => \u5|rpm_mem\(3),
	combout => \u2|U2bcd[2]~1_combout\);

-- Location: LCCOMB_X53_Y2_N16
\u2|is_gt_4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~3_combout\ = (\u2|is_gt_4~2_combout\ & ((\u5|rpm_mem\(3) & (\u2|U1bcd[0]~0_combout\ & \u5|rpm_mem\(2))) # (!\u5|rpm_mem\(3) & (!\u2|U1bcd[0]~0_combout\)))) # (!\u2|is_gt_4~2_combout\ & (\u2|U1bcd[0]~0_combout\ & ((\u5|rpm_mem\(3)) # 
-- (\u5|rpm_mem\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|is_gt_4~2_combout\,
	datab => \u5|rpm_mem\(3),
	datac => \u2|U1bcd[0]~0_combout\,
	datad => \u5|rpm_mem\(2),
	combout => \u2|is_gt_4~3_combout\);

-- Location: LCCOMB_X54_Y2_N6
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

-- Location: LCCOMB_X53_Y2_N0
\u2|U1bcd[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U1bcd[1]~2_combout\ = (\u5|rpm_mem\(7) & (!\u5|rpm_mem\(5) & ((\u5|rpm_mem\(6)) # (!\u5|rpm_mem\(4))))) # (!\u5|rpm_mem\(7) & (\u5|rpm_mem\(5) & ((\u5|rpm_mem\(4)) # (!\u5|rpm_mem\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(4),
	datab => \u5|rpm_mem\(6),
	datac => \u5|rpm_mem\(7),
	datad => \u5|rpm_mem\(5),
	combout => \u2|U1bcd[1]~2_combout\);

-- Location: LCCOMB_X53_Y2_N18
\u2|U2bcd[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U2bcd[3]~3_combout\ = \u2|U1bcd[2]~1_combout\ $ ((((!\u2|U1bcd[0]~0_combout\ & !\u5|rpm_mem\(3))) # (!\u2|U1bcd[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U1bcd[0]~0_combout\,
	datab => \u2|U1bcd[2]~1_combout\,
	datac => \u5|rpm_mem\(3),
	datad => \u2|U1bcd[1]~2_combout\,
	combout => \u2|U2bcd[3]~3_combout\);

-- Location: LCCOMB_X53_Y2_N10
\u2|U5bcd[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U5bcd[2]~0_combout\ = (\u5|rpm_mem\(7) & (\u2|U2bcd[3]~3_combout\ & ((\u5|rpm_mem\(6)) # (\u5|rpm_mem\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(7),
	datab => \u5|rpm_mem\(6),
	datac => \u5|rpm_mem\(5),
	datad => \u2|U2bcd[3]~3_combout\,
	combout => \u2|U5bcd[2]~0_combout\);

-- Location: LCCOMB_X53_Y2_N28
\u2|U0bcd[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U0bcd[2]~0_combout\ = (\u5|rpm_mem\(6)) # (\u5|rpm_mem\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5|rpm_mem\(6),
	datac => \u5|rpm_mem\(5),
	combout => \u2|U0bcd[2]~0_combout\);

-- Location: LCCOMB_X53_Y2_N20
\u2|U6bcd[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[2]~0_combout\ = (\u5|rpm_mem\(7) & ((\u5|rpm_mem\(6) & (\u5|rpm_mem\(5) & \u5|rpm_mem\(4))) # (!\u5|rpm_mem\(6) & (!\u5|rpm_mem\(5))))) # (!\u5|rpm_mem\(7) & (\u5|rpm_mem\(6) & ((\u5|rpm_mem\(5)) # (\u5|rpm_mem\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(7),
	datab => \u5|rpm_mem\(6),
	datac => \u5|rpm_mem\(5),
	datad => \u5|rpm_mem\(4),
	combout => \u2|U6bcd[2]~0_combout\);

-- Location: LCCOMB_X52_Y2_N12
\u2|U6bcd[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[2]~1_combout\ = (\u2|is_gt_4~4_combout\ & (\u2|U5bcd[2]~0_combout\ & ((!\u2|U6bcd[2]~0_combout\)))) # (!\u2|is_gt_4~4_combout\ & (\u2|U6bcd[2]~0_combout\ & ((!\u2|U0bcd[2]~0_combout\) # (!\u2|U5bcd[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|is_gt_4~4_combout\,
	datab => \u2|U5bcd[2]~0_combout\,
	datac => \u2|U0bcd[2]~0_combout\,
	datad => \u2|U6bcd[2]~0_combout\,
	combout => \u2|U6bcd[2]~1_combout\);

-- Location: LCCOMB_X52_Y2_N22
\u2|is_gt_4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~5_combout\ = (\u2|U6bcd[2]~0_combout\ & (\u2|is_gt_4~4_combout\ & ((!\u2|U0bcd[2]~0_combout\) # (!\u2|U5bcd[2]~0_combout\)))) # (!\u2|U6bcd[2]~0_combout\ & (((\u2|U5bcd[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|is_gt_4~4_combout\,
	datab => \u2|U5bcd[2]~0_combout\,
	datac => \u2|U0bcd[2]~0_combout\,
	datad => \u2|U6bcd[2]~0_combout\,
	combout => \u2|is_gt_4~5_combout\);

-- Location: LCCOMB_X53_Y2_N26
\u2|U6bcd[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[1]~3_combout\ = (\u2|U6bcd[1]~2_combout\) # ((!\u2|U2bcd[3]~3_combout\ & ((!\u5|rpm_mem\(7)) # (!\u2|U0bcd[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[1]~2_combout\,
	datab => \u2|U0bcd[2]~0_combout\,
	datac => \u5|rpm_mem\(7),
	datad => \u2|U2bcd[3]~3_combout\,
	combout => \u2|U6bcd[1]~3_combout\);

-- Location: LCCOMB_X50_Y2_N4
\u5|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u5|Add1~20_combout\ = (\u5|Add1~3_combout\ & !\u5|rpm[3]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|Add1~3_combout\,
	datad => \u5|rpm[3]~5_combout\,
	combout => \u5|Add1~20_combout\);

-- Location: LCFF_X50_Y2_N5
\u5|rpm[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	datain => \u5|Add1~20_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	ena => \u5|rpm[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm\(1));

-- Location: LCFF_X50_Y2_N17
\u5|rpm_mem[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \u1|clkint~clkctrl_outclk\,
	sdata => \u5|rpm\(1),
	sload => VCC,
	ena => \u5|rpm_mem[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u5|rpm_mem\(1));

-- Location: LCCOMB_X50_Y2_N2
\u2|U4bcd[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U4bcd[3]~3_combout\ = \u2|U3bcd[2]~1_combout\ $ ((((!\u5|rpm_mem\(1) & !\u2|U3bcd[0]~0_combout\)) # (!\u2|U3bcd[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U3bcd[2]~1_combout\,
	datab => \u2|U3bcd[1]~2_combout\,
	datac => \u5|rpm_mem\(1),
	datad => \u2|U3bcd[0]~0_combout\,
	combout => \u2|U4bcd[3]~3_combout\);

-- Location: LCCOMB_X53_Y2_N14
\u2|is_gt_4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~0_combout\ = (\u5|rpm_mem\(7) & \u5|rpm_mem\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5|rpm_mem\(7),
	datad => \u5|rpm_mem\(6),
	combout => \u2|is_gt_4~0_combout\);

-- Location: LCCOMB_X53_Y2_N4
\u2|is_gt_4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|is_gt_4~1_combout\ = (\u2|is_gt_4~0_combout\ & ((\u5|rpm_mem\(5)) # ((\u5|rpm_mem\(3)) # (\u5|rpm_mem\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5|rpm_mem\(5),
	datab => \u5|rpm_mem\(3),
	datac => \u2|is_gt_4~0_combout\,
	datad => \u5|rpm_mem\(4),
	combout => \u2|is_gt_4~1_combout\);

-- Location: LCCOMB_X54_Y2_N28
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

-- Location: LCCOMB_X54_Y2_N18
\u2|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux13~1_combout\ = \u2|U4bcd[3]~3_combout\ $ (((\u2|Mux13~0_combout\ & (!\u2|U6bcd[1]~3_combout\)) # (!\u2|Mux13~0_combout\ & ((\u2|Add6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mux13~0_combout\,
	datab => \u2|U6bcd[1]~3_combout\,
	datac => \u2|U4bcd[3]~3_combout\,
	datad => \u2|Add6~0_combout\,
	combout => \u2|Mux13~1_combout\);

-- Location: LCCOMB_X54_Y2_N24
\u2|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux13~2_combout\ = (!\u2|U6bcd[2]~1_combout\ & (\u2|Mux13~1_combout\ & (\u2|Mux13~0_combout\ $ (\u2|is_gt_4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Mux13~0_combout\,
	datab => \u2|U6bcd[2]~1_combout\,
	datac => \u2|is_gt_4~5_combout\,
	datad => \u2|Mux13~1_combout\,
	combout => \u2|Mux13~2_combout\);

-- Location: LCCOMB_X54_Y2_N14
\u2|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux12~0_combout\ = \u2|U2bcd[2]~1_combout\ $ (\u2|U4bcd[3]~3_combout\ $ (\u2|is_gt_4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U2bcd[2]~1_combout\,
	datac => \u2|U4bcd[3]~3_combout\,
	datad => \u2|is_gt_4~3_combout\,
	combout => \u2|Mux12~0_combout\);

-- Location: LCCOMB_X54_Y2_N8
\u2|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux12~1_combout\ = (\u2|is_gt_4~5_combout\ & (!\u2|Add6~0_combout\ & (\u2|Mux12~0_combout\))) # (!\u2|is_gt_4~5_combout\ & (((!\u2|Mux12~0_combout\ & \u2|U6bcd[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|is_gt_4~5_combout\,
	datab => \u2|Add6~0_combout\,
	datac => \u2|Mux12~0_combout\,
	datad => \u2|U6bcd[1]~3_combout\,
	combout => \u2|Mux12~1_combout\);

-- Location: LCCOMB_X54_Y2_N12
\u2|U6bcd[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[1]~5_combout\ = (\u2|is_gt_4~5_combout\ & ((!\u2|Add6~0_combout\))) # (!\u2|is_gt_4~5_combout\ & (\u2|U6bcd[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|U6bcd[1]~3_combout\,
	datac => \u2|is_gt_4~5_combout\,
	datad => \u2|Add6~0_combout\,
	combout => \u2|U6bcd[1]~5_combout\);

-- Location: LCCOMB_X54_Y2_N22
\u2|U6bcd[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[0]~4_combout\ = \u2|U2bcd[2]~1_combout\ $ (\u2|is_gt_4~5_combout\ $ (!\u2|is_gt_4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U2bcd[2]~1_combout\,
	datac => \u2|is_gt_4~5_combout\,
	datad => \u2|is_gt_4~3_combout\,
	combout => \u2|U6bcd[0]~4_combout\);

-- Location: LCCOMB_X54_Y2_N2
\u2|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux11~0_combout\ = (!\u2|U6bcd[1]~5_combout\ & (\u2|U4bcd[3]~3_combout\ & !\u2|U6bcd[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[1]~5_combout\,
	datac => \u2|U4bcd[3]~3_combout\,
	datad => \u2|U6bcd[0]~4_combout\,
	combout => \u2|Mux11~0_combout\);

-- Location: LCCOMB_X54_Y2_N0
\u2|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux10~0_combout\ = (!\u2|U6bcd[2]~1_combout\ & ((\u2|U6bcd[1]~5_combout\ & (\u2|U4bcd[3]~3_combout\ $ (!\u2|U6bcd[0]~4_combout\))) # (!\u2|U6bcd[1]~5_combout\ & (!\u2|U4bcd[3]~3_combout\ & \u2|U6bcd[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[1]~5_combout\,
	datab => \u2|U6bcd[2]~1_combout\,
	datac => \u2|U4bcd[3]~3_combout\,
	datad => \u2|U6bcd[0]~4_combout\,
	combout => \u2|Mux10~0_combout\);

-- Location: LCCOMB_X54_Y2_N26
\u2|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux9~0_combout\ = ((\u2|U6bcd[1]~5_combout\ & \u2|U6bcd[0]~4_combout\)) # (!\u2|U4bcd[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[1]~5_combout\,
	datac => \u2|U4bcd[3]~3_combout\,
	datad => \u2|U6bcd[0]~4_combout\,
	combout => \u2|Mux9~0_combout\);

-- Location: LCCOMB_X54_Y2_N20
\u2|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux8~0_combout\ = (!\u2|U6bcd[2]~1_combout\ & ((\u2|U6bcd[1]~5_combout\ & (!\u2|U4bcd[3]~3_combout\ & !\u2|U6bcd[0]~4_combout\)) # (!\u2|U6bcd[1]~5_combout\ & ((!\u2|U6bcd[0]~4_combout\) # (!\u2|U4bcd[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[1]~5_combout\,
	datab => \u2|U6bcd[2]~1_combout\,
	datac => \u2|U4bcd[3]~3_combout\,
	datad => \u2|U6bcd[0]~4_combout\,
	combout => \u2|Mux8~0_combout\);

-- Location: LCCOMB_X54_Y2_N10
\u2|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux7~0_combout\ = (\u2|U6bcd[2]~1_combout\) # ((\u2|U6bcd[1]~5_combout\ & ((\u2|U4bcd[3]~3_combout\) # (\u2|U6bcd[0]~4_combout\))) # (!\u2|U6bcd[1]~5_combout\ & ((!\u2|U6bcd[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|U6bcd[1]~5_combout\,
	datab => \u2|U6bcd[2]~1_combout\,
	datac => \u2|U4bcd[3]~3_combout\,
	datad => \u2|U6bcd[0]~4_combout\,
	combout => \u2|Mux7~0_combout\);

-- Location: LCCOMB_X52_Y2_N4
\u2|U6bcd[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|U6bcd[3]~6_combout\ = (\u2|U6bcd[2]~0_combout\ & (((\u2|U5bcd[2]~0_combout\ & \u2|U0bcd[2]~0_combout\)) # (!\u2|is_gt_4~4_combout\))) # (!\u2|U6bcd[2]~0_combout\ & (((!\u2|U5bcd[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|is_gt_4~4_combout\,
	datab => \u2|U5bcd[2]~0_combout\,
	datac => \u2|U0bcd[2]~0_combout\,
	datad => \u2|U6bcd[2]~0_combout\,
	combout => \u2|U6bcd[3]~6_combout\);

-- Location: LCCOMB_X52_Y2_N10
\u2|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux15~0_combout\ = (\u2|U6bcd[3]~6_combout\) # (\u2|is_gt_4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|U6bcd[3]~6_combout\,
	datad => \u2|is_gt_4~1_combout\,
	combout => \u2|Mux15~0_combout\);

-- Location: LCCOMB_X52_Y2_N16
\u2|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux15~1_combout\ = (\u2|U6bcd[3]~6_combout\ & \u2|is_gt_4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|U6bcd[3]~6_combout\,
	datad => \u2|is_gt_4~1_combout\,
	combout => \u2|Mux15~1_combout\);

-- Location: LCCOMB_X72_Y1_N0
\u2|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u2|Mux15~2_combout\ = (\u2|is_gt_4~1_combout\) # (!\u2|U6bcd[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u2|U6bcd[3]~6_combout\,
	datad => \u2|is_gt_4~1_combout\,
	combout => \u2|Mux15~2_combout\);

-- Location: LCCOMB_X93_Y26_N4
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

-- Location: LCFF_X93_Y26_N5
\u1|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(0));

-- Location: LCCOMB_X93_Y26_N6
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

-- Location: LCFF_X93_Y26_N7
\u1|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(1));

-- Location: LCCOMB_X93_Y26_N8
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

-- Location: LCCOMB_X93_Y26_N30
\u1|count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|count~4_combout\ = (\u1|Add0~4_combout\ & (((!\u1|Equal0~0_combout\) # (!\u1|Equal0~1_combout\)) # (!\u1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~2_combout\,
	datab => \u1|Equal0~1_combout\,
	datac => \u1|Add0~4_combout\,
	datad => \u1|Equal0~0_combout\,
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

-- Location: LCCOMB_X93_Y26_N12
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

-- Location: LCFF_X93_Y26_N13
\u1|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~8_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(4));

-- Location: LCCOMB_X94_Y26_N20
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

-- Location: LCCOMB_X93_Y26_N14
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

-- Location: LCFF_X93_Y26_N15
\u1|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~10_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(5));

-- Location: LCCOMB_X93_Y26_N16
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

-- Location: LCCOMB_X93_Y26_N0
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

-- Location: LCFF_X93_Y26_N1
\u1|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~3_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(6));

-- Location: LCCOMB_X93_Y26_N18
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

-- Location: LCCOMB_X94_Y26_N14
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

-- Location: LCFF_X94_Y26_N15
\u1|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~2_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(7));

-- Location: LCCOMB_X94_Y26_N12
\u1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Equal0~1_combout\ = (!\u1|count\(5) & (\u1|count\(7) & (\u1|count\(6) & \u1|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(5),
	datab => \u1|count\(7),
	datac => \u1|count\(6),
	datad => \u1|count\(8),
	combout => \u1|Equal0~1_combout\);

-- Location: LCCOMB_X93_Y26_N20
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

-- Location: LCCOMB_X93_Y26_N2
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

-- Location: LCFF_X93_Y26_N3
\u1|count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|count~1_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(8));

-- Location: LCCOMB_X93_Y26_N22
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

-- Location: LCFF_X93_Y26_N23
\u1|count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~18_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(9));

-- Location: LCFF_X93_Y26_N25
\u1|count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|Add0~20_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|count\(10));

-- Location: LCCOMB_X94_Y26_N30
\u1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|Equal0~0_combout\ = (\u1|count\(11) & (!\u1|count\(10) & (\u1|count\(0) & !\u1|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(11),
	datab => \u1|count\(10),
	datac => \u1|count\(0),
	datad => \u1|count\(9),
	combout => \u1|Equal0~0_combout\);

-- Location: LCCOMB_X94_Y26_N16
\u1|clkint~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u1|clkint~0_combout\ = \u1|clkint~regout\ $ (((\u1|Equal0~2_combout\ & (\u1|Equal0~0_combout\ & \u1|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Equal0~2_combout\,
	datab => \u1|Equal0~0_combout\,
	datac => \u1|clkint~regout\,
	datad => \u1|Equal0~1_combout\,
	combout => \u1|clkint~0_combout\);

-- Location: LCFF_X94_Y26_N17
\u1|clkint\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u1|clkint~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u1|clkint~regout\);

-- Location: CLKCTRL_G4
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

-- Location: LCFF_X49_Y3_N21
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

-- Location: LCCOMB_X91_Y37_N10
\u4|lcdm|LCD_E~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|LCD_E~0_combout\ = (\u4|lcdm|current_state.pulse_busy_flag_2~regout\) # (\u4|lcdm|current_state.pulse_e_2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4|lcdm|current_state.pulse_busy_flag_2~regout\,
	datac => \u4|lcdm|current_state.pulse_e_2~regout\,
	combout => \u4|lcdm|LCD_E~0_combout\);

-- Location: LCCOMB_X91_Y39_N20
\u4|lcdm|LCD_E~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|LCD_E~feeder_combout\ = \u4|lcdm|LCD_E~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u4|lcdm|LCD_E~0_combout\,
	combout => \u4|lcdm|LCD_E~feeder_combout\);

-- Location: LCFF_X91_Y39_N21
\u4|lcdm|LCD_E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|LCD_E~feeder_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_E~regout\);

-- Location: LCCOMB_X89_Y38_N16
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

-- Location: LCFF_X89_Y38_N17
\u4|lcdm|LCD_RS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|Selector0~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_RS~regout\);

-- Location: LCCOMB_X91_Y37_N12
\u4|lcdm|WideOr43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u4|lcdm|WideOr43~0_combout\ = (\u4|lcdm|current_state.pulse_busy_flag_3~regout\) # ((\u4|lcdm|current_state.pulse_busy_flag_2~regout\) # ((\u4|lcdm|current_state.pulse_busy_flag~regout\) # (\u4|lcdm|current_state.pulse_busy_flag_1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4|lcdm|current_state.pulse_busy_flag_3~regout\,
	datab => \u4|lcdm|current_state.pulse_busy_flag_2~regout\,
	datac => \u4|lcdm|current_state.pulse_busy_flag~regout\,
	datad => \u4|lcdm|current_state.pulse_busy_flag_1~regout\,
	combout => \u4|lcdm|WideOr43~0_combout\);

-- Location: LCFF_X91_Y37_N13
\u4|lcdm|LCD_RW\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \u4|lcdm|WideOr43~0_combout\,
	aclr => \ALT_INV_BUTTON~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u4|lcdm|LCD_RW~regout\);

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

-- Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AJ14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AJ16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AK14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AK12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AJ12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AJ15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AH16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AH13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AJ17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AK17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AC16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AJ13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AJ19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AJ18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => ww_KNOP(1));

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


