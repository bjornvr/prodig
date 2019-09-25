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

-- DATE "09/23/2019 17:28:40"

-- 
-- Device: Altera EP2C5T144C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	division IS
    PORT (
	tix_mem : IN IEEE.NUMERIC_STD.unsigned(15 DOWNTO 0);
	areset : IN std_logic;
	calc : IN std_logic;
	clock : IN std_logic;
	rpm_mem : OUT IEEE.NUMERIC_STD.unsigned(7 DOWNTO 0)
	);
END division;

-- Design Ports Information
-- rpm_mem[0]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem[1]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem[2]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem[3]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem[4]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem[5]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem[6]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rpm_mem[7]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- areset	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- calc	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tix_mem[15]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tix_mem[14]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tix_mem[13]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tix_mem[12]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tix_mem[11]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tix_mem[10]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tix_mem[9]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tix_mem[8]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tix_mem[7]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tix_mem[6]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tix_mem[5]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tix_mem[4]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tix_mem[3]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tix_mem[2]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tix_mem[1]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tix_mem[0]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF division IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_tix_mem : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_areset : std_logic;
SIGNAL ww_calc : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_rpm_mem : std_logic_vector(7 DOWNTO 0);
SIGNAL \areset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \x[1]~22_combout\ : std_logic;
SIGNAL \x[4]~28_combout\ : std_logic;
SIGNAL \x[6]~32_combout\ : std_logic;
SIGNAL \x[12]~44_combout\ : std_logic;
SIGNAL \x[16]~52_combout\ : std_logic;
SIGNAL \rpm~0_combout\ : std_logic;
SIGNAL \rpm~2_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \stop~0_combout\ : std_logic;
SIGNAL \tix_int[5]~feeder_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \tix_int[11]~feeder_combout\ : std_logic;
SIGNAL \areset~combout\ : std_logic;
SIGNAL \areset~clkctrl_outclk\ : std_logic;
SIGNAL \calc~combout\ : std_logic;
SIGNAL \tix_int[13]~feeder_combout\ : std_logic;
SIGNAL \rpm~1_combout\ : std_logic;
SIGNAL \tix_int[10]~feeder_combout\ : std_logic;
SIGNAL \tix_int[8]~feeder_combout\ : std_logic;
SIGNAL \rpm~3_combout\ : std_logic;
SIGNAL \rpm~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \rpm~5_combout\ : std_logic;
SIGNAL \tix_int[2]~feeder_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \rpm~6_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \tix_int[15]~feeder_combout\ : std_logic;
SIGNAL \x[0]~20_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \x[0]~21\ : std_logic;
SIGNAL \x[1]~23\ : std_logic;
SIGNAL \x[2]~25\ : std_logic;
SIGNAL \x[3]~27\ : std_logic;
SIGNAL \x[4]~29\ : std_logic;
SIGNAL \x[5]~30_combout\ : std_logic;
SIGNAL \x[5]~31\ : std_logic;
SIGNAL \x[6]~33\ : std_logic;
SIGNAL \x[7]~34_combout\ : std_logic;
SIGNAL \x[7]~35\ : std_logic;
SIGNAL \x[8]~37\ : std_logic;
SIGNAL \x[9]~38_combout\ : std_logic;
SIGNAL \x[9]~39\ : std_logic;
SIGNAL \x[10]~40_combout\ : std_logic;
SIGNAL \x[10]~41\ : std_logic;
SIGNAL \x[11]~42_combout\ : std_logic;
SIGNAL \x[11]~43\ : std_logic;
SIGNAL \x[12]~45\ : std_logic;
SIGNAL \x[13]~46_combout\ : std_logic;
SIGNAL \x[13]~47\ : std_logic;
SIGNAL \x[14]~49\ : std_logic;
SIGNAL \x[15]~50_combout\ : std_logic;
SIGNAL \x[14]~48_combout\ : std_logic;
SIGNAL \x[8]~36_combout\ : std_logic;
SIGNAL \x[3]~26_combout\ : std_logic;
SIGNAL \x[2]~24_combout\ : std_logic;
SIGNAL \LessThan2~1_cout\ : std_logic;
SIGNAL \LessThan2~3_cout\ : std_logic;
SIGNAL \LessThan2~5_cout\ : std_logic;
SIGNAL \LessThan2~7_cout\ : std_logic;
SIGNAL \LessThan2~9_cout\ : std_logic;
SIGNAL \LessThan2~11_cout\ : std_logic;
SIGNAL \LessThan2~13_cout\ : std_logic;
SIGNAL \LessThan2~15_cout\ : std_logic;
SIGNAL \LessThan2~17_cout\ : std_logic;
SIGNAL \LessThan2~19_cout\ : std_logic;
SIGNAL \LessThan2~21_cout\ : std_logic;
SIGNAL \LessThan2~23_cout\ : std_logic;
SIGNAL \LessThan2~25_cout\ : std_logic;
SIGNAL \LessThan2~27_cout\ : std_logic;
SIGNAL \LessThan2~29_cout\ : std_logic;
SIGNAL \LessThan2~30_combout\ : std_logic;
SIGNAL \stop~1_combout\ : std_logic;
SIGNAL \stop~2_combout\ : std_logic;
SIGNAL \stop~regout\ : std_logic;
SIGNAL \x[15]~51\ : std_logic;
SIGNAL \x[16]~53\ : std_logic;
SIGNAL \x[17]~54_combout\ : std_logic;
SIGNAL \x[17]~55\ : std_logic;
SIGNAL \x[18]~57\ : std_logic;
SIGNAL \x[19]~58_combout\ : std_logic;
SIGNAL \x[18]~56_combout\ : std_logic;
SIGNAL \LessThan2~32_combout\ : std_logic;
SIGNAL \rpm[0]~7_combout\ : std_logic;
SIGNAL \rpm[0]~8_combout\ : std_logic;
SIGNAL \rpm_mem[0]~0_combout\ : std_logic;
SIGNAL \rpm_mem[0]~reg0_regout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \rpm_mem[1]~reg0feeder_combout\ : std_logic;
SIGNAL \rpm_mem[1]~reg0_regout\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \rpm_mem[2]~reg0feeder_combout\ : std_logic;
SIGNAL \rpm_mem[2]~reg0_regout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \rpm~9_combout\ : std_logic;
SIGNAL \rpm_mem[3]~reg0feeder_combout\ : std_logic;
SIGNAL \rpm_mem[3]~reg0_regout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add1~13_combout\ : std_logic;
SIGNAL \rpm_mem[4]~reg0_regout\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \rpm_mem[5]~reg0feeder_combout\ : std_logic;
SIGNAL \rpm_mem[5]~reg0_regout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \rpm~10_combout\ : std_logic;
SIGNAL \rpm_mem[6]~reg0_regout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~19_combout\ : std_logic;
SIGNAL \rpm~11_combout\ : std_logic;
SIGNAL \rpm_mem[7]~reg0_regout\ : std_logic;
SIGNAL x : std_logic_vector(19 DOWNTO 0);
SIGNAL tix_int : std_logic_vector(15 DOWNTO 0);
SIGNAL rpm : std_logic_vector(7 DOWNTO 0);
SIGNAL \tix_mem~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_areset~clkctrl_outclk\ : std_logic;

BEGIN

ww_tix_mem <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(tix_mem);
ww_areset <= areset;
ww_calc <= calc;
ww_clock <= clock;
rpm_mem <= IEEE.NUMERIC_STD.UNSIGNED(ww_rpm_mem);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\areset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \areset~combout\);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);
\ALT_INV_areset~clkctrl_outclk\ <= NOT \areset~clkctrl_outclk\;

-- Location: LCFF_X19_Y12_N5
\x[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \x[12]~44_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => \calc~combout\,
	ena => \stop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(12));

-- Location: LCFF_X19_Y13_N25
\x[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \x[6]~32_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => \calc~combout\,
	ena => \stop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(6));

-- Location: LCFF_X19_Y13_N21
\x[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \x[4]~28_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => \calc~combout\,
	ena => \stop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(4));

-- Location: LCFF_X19_Y13_N15
\x[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \x[1]~22_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => \calc~combout\,
	ena => \stop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(1));

-- Location: LCFF_X19_Y12_N13
\x[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \x[16]~52_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => \calc~combout\,
	ena => \stop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(16));

-- Location: LCCOMB_X19_Y13_N14
\x[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \x[1]~22_combout\ = (x(1) & ((tix_int(1) & (!\x[0]~21\)) # (!tix_int(1) & (\x[0]~21\ & VCC)))) # (!x(1) & ((tix_int(1) & ((\x[0]~21\) # (GND))) # (!tix_int(1) & (!\x[0]~21\))))
-- \x[1]~23\ = CARRY((x(1) & (tix_int(1) & !\x[0]~21\)) # (!x(1) & ((tix_int(1)) # (!\x[0]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datab => tix_int(1),
	datad => VCC,
	cin => \x[0]~21\,
	combout => \x[1]~22_combout\,
	cout => \x[1]~23\);

-- Location: LCCOMB_X19_Y13_N20
\x[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \x[4]~28_combout\ = ((x(4) $ (tix_int(4) $ (\x[3]~27\)))) # (GND)
-- \x[4]~29\ = CARRY((x(4) & ((!\x[3]~27\) # (!tix_int(4)))) # (!x(4) & (!tix_int(4) & !\x[3]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x(4),
	datab => tix_int(4),
	datad => VCC,
	cin => \x[3]~27\,
	combout => \x[4]~28_combout\,
	cout => \x[4]~29\);

-- Location: LCCOMB_X19_Y13_N24
\x[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \x[6]~32_combout\ = (x(6) & ((tix_int(6) & (\x[5]~31\ & VCC)) # (!tix_int(6) & (!\x[5]~31\)))) # (!x(6) & ((tix_int(6) & (!\x[5]~31\)) # (!tix_int(6) & ((\x[5]~31\) # (GND)))))
-- \x[6]~33\ = CARRY((x(6) & (!tix_int(6) & !\x[5]~31\)) # (!x(6) & ((!\x[5]~31\) # (!tix_int(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x(6),
	datab => tix_int(6),
	datad => VCC,
	cin => \x[5]~31\,
	combout => \x[6]~32_combout\,
	cout => \x[6]~33\);

-- Location: LCCOMB_X19_Y12_N4
\x[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \x[12]~44_combout\ = ((x(12) $ (tix_int(12) $ (\x[11]~43\)))) # (GND)
-- \x[12]~45\ = CARRY((x(12) & ((!\x[11]~43\) # (!tix_int(12)))) # (!x(12) & (!tix_int(12) & !\x[11]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x(12),
	datab => tix_int(12),
	datad => VCC,
	cin => \x[11]~43\,
	combout => \x[12]~44_combout\,
	cout => \x[12]~45\);

-- Location: LCCOMB_X19_Y12_N12
\x[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \x[16]~52_combout\ = (x(16) & (!\x[15]~51\)) # (!x(16) & ((\x[15]~51\) # (GND)))
-- \x[16]~53\ = CARRY((!\x[15]~51\) # (!x(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x(16),
	datad => VCC,
	cin => \x[15]~51\,
	combout => \x[16]~52_combout\,
	cout => \x[16]~53\);

-- Location: LCCOMB_X17_Y12_N14
\rpm~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rpm~0_combout\ = (!tix_int(15) & !\calc~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => tix_int(15),
	datad => \calc~combout\,
	combout => \rpm~0_combout\);

-- Location: LCFF_X21_Y13_N5
\tix_int[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \tix_mem~combout\(7),
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => VCC,
	ena => \calc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tix_int(7));

-- Location: LCFF_X21_Y13_N3
\tix_int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tix_int[5]~feeder_combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	ena => \calc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tix_int(5));

-- Location: LCCOMB_X21_Y13_N12
\rpm~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rpm~2_combout\ = (tix_int(7)) # ((tix_int(6)) # ((tix_int(4) & tix_int(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tix_int(4),
	datab => tix_int(5),
	datac => tix_int(7),
	datad => tix_int(6),
	combout => \rpm~2_combout\);

-- Location: LCCOMB_X21_Y13_N20
\LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (tix_int(11) & (tix_int(7) & (tix_int(9) & tix_int(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tix_int(11),
	datab => tix_int(7),
	datac => tix_int(9),
	datad => tix_int(8),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X19_Y12_N24
\stop~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \stop~0_combout\ = (!x(18) & (x(19) & (!x(17) & x(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(18),
	datab => x(19),
	datac => x(17),
	datad => x(16),
	combout => \stop~0_combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tix_mem[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_tix_mem(7),
	combout => \tix_mem~combout\(7));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tix_mem[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_tix_mem(5),
	combout => \tix_mem~combout\(5));

-- Location: LCCOMB_X21_Y13_N2
\tix_int[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tix_int[5]~feeder_combout\ = \tix_mem~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tix_mem~combout\(5),
	combout => \tix_int[5]~feeder_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G2
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tix_mem[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_tix_mem(11),
	combout => \tix_mem~combout\(11));

-- Location: LCCOMB_X21_Y13_N14
\tix_int[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tix_int[11]~feeder_combout\ = \tix_mem~combout\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tix_mem~combout\(11),
	combout => \tix_int[11]~feeder_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G1
\areset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \areset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \areset~clkctrl_outclk\);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\calc~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_calc,
	combout => \calc~combout\);

-- Location: LCFF_X21_Y13_N15
\tix_int[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tix_int[11]~feeder_combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	ena => \calc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tix_int(11));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tix_mem[13]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_tix_mem(13),
	combout => \tix_mem~combout\(13));

-- Location: LCCOMB_X21_Y13_N30
\tix_int[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tix_int[13]~feeder_combout\ = \tix_mem~combout\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tix_mem~combout\(13),
	combout => \tix_int[13]~feeder_combout\);

-- Location: LCFF_X21_Y13_N31
\tix_int[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tix_int[13]~feeder_combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	ena => \calc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tix_int(13));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tix_mem[14]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_tix_mem(14),
	combout => \tix_mem~combout\(14));

-- Location: LCFF_X21_Y13_N17
\tix_int[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \tix_mem~combout\(14),
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => VCC,
	ena => \calc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tix_int(14));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tix_mem[12]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_tix_mem(12),
	combout => \tix_mem~combout\(12));

-- Location: LCFF_X20_Y13_N11
\tix_int[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \tix_mem~combout\(12),
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => VCC,
	ena => \calc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tix_int(12));

-- Location: LCCOMB_X21_Y13_N8
\rpm~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rpm~1_combout\ = (tix_int(13) & (tix_int(14) & tix_int(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tix_int(13),
	datac => tix_int(14),
	datad => tix_int(12),
	combout => \rpm~1_combout\);

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tix_mem[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_tix_mem(10),
	combout => \tix_mem~combout\(10));

-- Location: LCCOMB_X21_Y13_N28
\tix_int[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tix_int[10]~feeder_combout\ = \tix_mem~combout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tix_mem~combout\(10),
	combout => \tix_int[10]~feeder_combout\);

-- Location: LCFF_X21_Y13_N29
\tix_int[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tix_int[10]~feeder_combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	ena => \calc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tix_int(10));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tix_mem[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_tix_mem(9),
	combout => \tix_mem~combout\(9));

-- Location: LCFF_X20_Y13_N7
\tix_int[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \tix_mem~combout\(9),
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => VCC,
	ena => \calc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tix_int(9));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tix_mem[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_tix_mem(8),
	combout => \tix_mem~combout\(8));

-- Location: LCCOMB_X21_Y13_N26
\tix_int[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tix_int[8]~feeder_combout\ = \tix_mem~combout\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tix_mem~combout\(8),
	combout => \tix_int[8]~feeder_combout\);

-- Location: LCFF_X21_Y13_N27
\tix_int[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tix_int[8]~feeder_combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	ena => \calc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tix_int(8));

-- Location: LCCOMB_X21_Y13_N22
\rpm~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \rpm~3_combout\ = (tix_int(10) & ((tix_int(9)) # ((\rpm~2_combout\ & tix_int(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rpm~2_combout\,
	datab => tix_int(10),
	datac => tix_int(9),
	datad => tix_int(8),
	combout => \rpm~3_combout\);

-- Location: LCCOMB_X21_Y13_N24
\rpm~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rpm~4_combout\ = (\rpm~1_combout\ & ((tix_int(11)) # (\rpm~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tix_int(11),
	datac => \rpm~1_combout\,
	datad => \rpm~3_combout\,
	combout => \rpm~4_combout\);

-- Location: LCCOMB_X18_Y12_N14
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = rpm(0) $ (VCC)
-- \Add1~1\ = CARRY(rpm(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rpm(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X21_Y13_N18
\rpm~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \rpm~5_combout\ = (!tix_int(13) & (!tix_int(14) & ((!tix_int(10)) # (!tix_int(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tix_int(13),
	datab => tix_int(11),
	datac => tix_int(14),
	datad => tix_int(10),
	combout => \rpm~5_combout\);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tix_mem[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_tix_mem(4),
	combout => \tix_mem~combout\(4));

-- Location: LCFF_X20_Y13_N13
\tix_int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \tix_mem~combout\(4),
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => VCC,
	ena => \calc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tix_int(4));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tix_mem[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_tix_mem(6),
	combout => \tix_mem~combout\(6));

-- Location: LCFF_X20_Y13_N15
\tix_int[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \tix_mem~combout\(6),
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => VCC,
	ena => \calc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tix_int(6));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tix_mem[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_tix_mem(1),
	combout => \tix_mem~combout\(1));

-- Location: LCFF_X20_Y13_N25
\tix_int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \tix_mem~combout\(1),
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => VCC,
	ena => \calc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tix_int(1));

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tix_mem[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_tix_mem(3),
	combout => \tix_mem~combout\(3));

-- Location: LCFF_X20_Y13_N1
\tix_int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \tix_mem~combout\(3),
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => VCC,
	ena => \calc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tix_int(3));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tix_mem[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_tix_mem(2),
	combout => \tix_mem~combout\(2));

-- Location: LCCOMB_X19_Y13_N10
\tix_int[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tix_int[2]~feeder_combout\ = \tix_mem~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tix_mem~combout\(2),
	combout => \tix_int[2]~feeder_combout\);

-- Location: LCFF_X19_Y13_N11
\tix_int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tix_int[2]~feeder_combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	ena => \calc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tix_int(2));

-- Location: LCCOMB_X19_Y13_N0
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (tix_int(3) & ((tix_int(0)) # ((tix_int(1)) # (tix_int(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tix_int(0),
	datab => tix_int(1),
	datac => tix_int(3),
	datad => tix_int(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y13_N2
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (tix_int(6)) # ((tix_int(5) & (tix_int(4) & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tix_int(5),
	datab => tix_int(4),
	datac => tix_int(6),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y13_N4
\rpm~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rpm~6_combout\ = (\rpm~5_combout\ & (!tix_int(12) & ((!\LessThan0~1_combout\) # (!\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \rpm~5_combout\,
	datac => tix_int(12),
	datad => \LessThan0~1_combout\,
	combout => \rpm~6_combout\);

-- Location: LCCOMB_X18_Y12_N8
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\rpm~0_combout\ & (!\rpm~4_combout\ & (\Add1~0_combout\ & !\rpm~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rpm~0_combout\,
	datab => \rpm~4_combout\,
	datac => \Add1~0_combout\,
	datad => \rpm~6_combout\,
	combout => \Add1~2_combout\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tix_mem[15]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_tix_mem(15),
	combout => \tix_mem~combout\(15));

-- Location: LCCOMB_X19_Y13_N8
\tix_int[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \tix_int[15]~feeder_combout\ = \tix_mem~combout\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \tix_mem~combout\(15),
	combout => \tix_int[15]~feeder_combout\);

-- Location: LCFF_X19_Y13_N9
\tix_int[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \tix_int[15]~feeder_combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	ena => \calc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tix_int(15));

-- Location: LCCOMB_X19_Y13_N12
\x[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \x[0]~20_combout\ = (tix_int(0) & (x(0) $ (VCC))) # (!tix_int(0) & ((x(0)) # (GND)))
-- \x[0]~21\ = CARRY((x(0)) # (!tix_int(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tix_int(0),
	datab => x(0),
	datad => VCC,
	combout => \x[0]~20_combout\,
	cout => \x[0]~21\);

-- Location: LCCOMB_X19_Y13_N6
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

-- Location: LCFF_X19_Y13_N13
\x[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \x[0]~20_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => \calc~combout\,
	ena => \stop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(0));

-- Location: LCCOMB_X19_Y13_N16
\x[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \x[2]~24_combout\ = ((x(2) $ (tix_int(2) $ (\x[1]~23\)))) # (GND)
-- \x[2]~25\ = CARRY((x(2) & ((!\x[1]~23\) # (!tix_int(2)))) # (!x(2) & (!tix_int(2) & !\x[1]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x(2),
	datab => tix_int(2),
	datad => VCC,
	cin => \x[1]~23\,
	combout => \x[2]~24_combout\,
	cout => \x[2]~25\);

-- Location: LCCOMB_X19_Y13_N18
\x[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \x[3]~26_combout\ = (x(3) & ((tix_int(3) & (!\x[2]~25\)) # (!tix_int(3) & (\x[2]~25\ & VCC)))) # (!x(3) & ((tix_int(3) & ((\x[2]~25\) # (GND))) # (!tix_int(3) & (!\x[2]~25\))))
-- \x[3]~27\ = CARRY((x(3) & (tix_int(3) & !\x[2]~25\)) # (!x(3) & ((tix_int(3)) # (!\x[2]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x(3),
	datab => tix_int(3),
	datad => VCC,
	cin => \x[2]~25\,
	combout => \x[3]~26_combout\,
	cout => \x[3]~27\);

-- Location: LCCOMB_X19_Y13_N22
\x[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \x[5]~30_combout\ = (tix_int(5) & ((x(5) & (!\x[4]~29\)) # (!x(5) & ((\x[4]~29\) # (GND))))) # (!tix_int(5) & ((x(5) & (\x[4]~29\ & VCC)) # (!x(5) & (!\x[4]~29\))))
-- \x[5]~31\ = CARRY((tix_int(5) & ((!\x[4]~29\) # (!x(5)))) # (!tix_int(5) & (!x(5) & !\x[4]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tix_int(5),
	datab => x(5),
	datad => VCC,
	cin => \x[4]~29\,
	combout => \x[5]~30_combout\,
	cout => \x[5]~31\);

-- Location: LCFF_X19_Y13_N23
\x[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \x[5]~30_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => \calc~combout\,
	ena => \stop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(5));

-- Location: LCCOMB_X19_Y13_N26
\x[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \x[7]~34_combout\ = ((tix_int(7) $ (x(7) $ (!\x[6]~33\)))) # (GND)
-- \x[7]~35\ = CARRY((tix_int(7) & ((x(7)) # (!\x[6]~33\))) # (!tix_int(7) & (x(7) & !\x[6]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tix_int(7),
	datab => x(7),
	datad => VCC,
	cin => \x[6]~33\,
	combout => \x[7]~34_combout\,
	cout => \x[7]~35\);

-- Location: LCFF_X19_Y13_N27
\x[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \x[7]~34_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => \calc~combout\,
	ena => \stop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(7));

-- Location: LCCOMB_X19_Y13_N28
\x[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \x[8]~36_combout\ = (x(8) & ((tix_int(8) & (\x[7]~35\ & VCC)) # (!tix_int(8) & (!\x[7]~35\)))) # (!x(8) & ((tix_int(8) & (!\x[7]~35\)) # (!tix_int(8) & ((\x[7]~35\) # (GND)))))
-- \x[8]~37\ = CARRY((x(8) & (!tix_int(8) & !\x[7]~35\)) # (!x(8) & ((!\x[7]~35\) # (!tix_int(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x(8),
	datab => tix_int(8),
	datad => VCC,
	cin => \x[7]~35\,
	combout => \x[8]~36_combout\,
	cout => \x[8]~37\);

-- Location: LCCOMB_X19_Y13_N30
\x[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \x[9]~38_combout\ = ((tix_int(9) $ (x(9) $ (!\x[8]~37\)))) # (GND)
-- \x[9]~39\ = CARRY((tix_int(9) & ((x(9)) # (!\x[8]~37\))) # (!tix_int(9) & (x(9) & !\x[8]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tix_int(9),
	datab => x(9),
	datad => VCC,
	cin => \x[8]~37\,
	combout => \x[9]~38_combout\,
	cout => \x[9]~39\);

-- Location: LCFF_X19_Y13_N31
\x[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \x[9]~38_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => \calc~combout\,
	ena => \stop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(9));

-- Location: LCCOMB_X19_Y12_N0
\x[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \x[10]~40_combout\ = (tix_int(10) & ((x(10) & (\x[9]~39\ & VCC)) # (!x(10) & (!\x[9]~39\)))) # (!tix_int(10) & ((x(10) & (!\x[9]~39\)) # (!x(10) & ((\x[9]~39\) # (GND)))))
-- \x[10]~41\ = CARRY((tix_int(10) & (!x(10) & !\x[9]~39\)) # (!tix_int(10) & ((!\x[9]~39\) # (!x(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tix_int(10),
	datab => x(10),
	datad => VCC,
	cin => \x[9]~39\,
	combout => \x[10]~40_combout\,
	cout => \x[10]~41\);

-- Location: LCFF_X19_Y12_N1
\x[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \x[10]~40_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => \calc~combout\,
	ena => \stop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(10));

-- Location: LCCOMB_X19_Y12_N2
\x[11]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \x[11]~42_combout\ = (tix_int(11) & ((x(11) & (!\x[10]~41\)) # (!x(11) & ((\x[10]~41\) # (GND))))) # (!tix_int(11) & ((x(11) & (\x[10]~41\ & VCC)) # (!x(11) & (!\x[10]~41\))))
-- \x[11]~43\ = CARRY((tix_int(11) & ((!\x[10]~41\) # (!x(11)))) # (!tix_int(11) & (!x(11) & !\x[10]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tix_int(11),
	datab => x(11),
	datad => VCC,
	cin => \x[10]~41\,
	combout => \x[11]~42_combout\,
	cout => \x[11]~43\);

-- Location: LCFF_X19_Y12_N3
\x[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \x[11]~42_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => \calc~combout\,
	ena => \stop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(11));

-- Location: LCCOMB_X19_Y12_N6
\x[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \x[13]~46_combout\ = ((tix_int(13) $ (x(13) $ (!\x[12]~45\)))) # (GND)
-- \x[13]~47\ = CARRY((tix_int(13) & ((x(13)) # (!\x[12]~45\))) # (!tix_int(13) & (x(13) & !\x[12]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tix_int(13),
	datab => x(13),
	datad => VCC,
	cin => \x[12]~45\,
	combout => \x[13]~46_combout\,
	cout => \x[13]~47\);

-- Location: LCFF_X19_Y12_N7
\x[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \x[13]~46_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => \calc~combout\,
	ena => \stop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(13));

-- Location: LCCOMB_X19_Y12_N8
\x[14]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \x[14]~48_combout\ = ((x(14) $ (tix_int(14) $ (\x[13]~47\)))) # (GND)
-- \x[14]~49\ = CARRY((x(14) & ((!\x[13]~47\) # (!tix_int(14)))) # (!x(14) & (!tix_int(14) & !\x[13]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x(14),
	datab => tix_int(14),
	datad => VCC,
	cin => \x[13]~47\,
	combout => \x[14]~48_combout\,
	cout => \x[14]~49\);

-- Location: LCCOMB_X19_Y12_N10
\x[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \x[15]~50_combout\ = (tix_int(15) & ((x(15) & (!\x[14]~49\)) # (!x(15) & ((\x[14]~49\) # (GND))))) # (!tix_int(15) & ((x(15) & (\x[14]~49\ & VCC)) # (!x(15) & (!\x[14]~49\))))
-- \x[15]~51\ = CARRY((tix_int(15) & ((!\x[14]~49\) # (!x(15)))) # (!tix_int(15) & (!x(15) & !\x[14]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tix_int(15),
	datab => x(15),
	datad => VCC,
	cin => \x[14]~49\,
	combout => \x[15]~50_combout\,
	cout => \x[15]~51\);

-- Location: LCFF_X19_Y12_N11
\x[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \x[15]~50_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => \calc~combout\,
	ena => \stop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(15));

-- Location: LCFF_X19_Y12_N9
\x[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \x[14]~48_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => \calc~combout\,
	ena => \stop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(14));

-- Location: LCFF_X19_Y13_N29
\x[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \x[8]~36_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => \calc~combout\,
	ena => \stop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(8));

-- Location: LCFF_X19_Y13_N19
\x[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \x[3]~26_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => \calc~combout\,
	ena => \stop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(3));

-- Location: LCFF_X19_Y13_N17
\x[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \x[2]~24_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => \calc~combout\,
	ena => \stop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(2));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tix_mem[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_tix_mem(0),
	combout => \tix_mem~combout\(0));

-- Location: LCFF_X20_Y13_N5
\tix_int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \tix_mem~combout\(0),
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => VCC,
	ena => \calc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tix_int(0));

-- Location: LCCOMB_X20_Y13_N0
\LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY((x(0) & !tix_int(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x(0),
	datab => tix_int(0),
	datad => VCC,
	cout => \LessThan2~1_cout\);

-- Location: LCCOMB_X20_Y13_N2
\LessThan2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((x(1) & (tix_int(1) & !\LessThan2~1_cout\)) # (!x(1) & ((tix_int(1)) # (!\LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x(1),
	datab => tix_int(1),
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

-- Location: LCCOMB_X20_Y13_N4
\LessThan2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((tix_int(2) & (x(2) & !\LessThan2~3_cout\)) # (!tix_int(2) & ((x(2)) # (!\LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tix_int(2),
	datab => x(2),
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

-- Location: LCCOMB_X20_Y13_N6
\LessThan2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((tix_int(3) & ((!\LessThan2~5_cout\) # (!x(3)))) # (!tix_int(3) & (!x(3) & !\LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tix_int(3),
	datab => x(3),
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

-- Location: LCCOMB_X20_Y13_N8
\LessThan2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((x(4) & ((!\LessThan2~7_cout\) # (!tix_int(4)))) # (!x(4) & (!tix_int(4) & !\LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x(4),
	datab => tix_int(4),
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

-- Location: LCCOMB_X20_Y13_N10
\LessThan2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~11_cout\ = CARRY((tix_int(5) & ((!\LessThan2~9_cout\) # (!x(5)))) # (!tix_int(5) & (!x(5) & !\LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tix_int(5),
	datab => x(5),
	datad => VCC,
	cin => \LessThan2~9_cout\,
	cout => \LessThan2~11_cout\);

-- Location: LCCOMB_X20_Y13_N12
\LessThan2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~13_cout\ = CARRY((x(6) & (!tix_int(6) & !\LessThan2~11_cout\)) # (!x(6) & ((!\LessThan2~11_cout\) # (!tix_int(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x(6),
	datab => tix_int(6),
	datad => VCC,
	cin => \LessThan2~11_cout\,
	cout => \LessThan2~13_cout\);

-- Location: LCCOMB_X20_Y13_N14
\LessThan2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~15_cout\ = CARRY((tix_int(7) & ((x(7)) # (!\LessThan2~13_cout\))) # (!tix_int(7) & (x(7) & !\LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tix_int(7),
	datab => x(7),
	datad => VCC,
	cin => \LessThan2~13_cout\,
	cout => \LessThan2~15_cout\);

-- Location: LCCOMB_X20_Y13_N16
\LessThan2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~17_cout\ = CARRY((tix_int(8) & (!x(8) & !\LessThan2~15_cout\)) # (!tix_int(8) & ((!\LessThan2~15_cout\) # (!x(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tix_int(8),
	datab => x(8),
	datad => VCC,
	cin => \LessThan2~15_cout\,
	cout => \LessThan2~17_cout\);

-- Location: LCCOMB_X20_Y13_N18
\LessThan2~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~19_cout\ = CARRY((tix_int(9) & ((x(9)) # (!\LessThan2~17_cout\))) # (!tix_int(9) & (x(9) & !\LessThan2~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tix_int(9),
	datab => x(9),
	datad => VCC,
	cin => \LessThan2~17_cout\,
	cout => \LessThan2~19_cout\);

-- Location: LCCOMB_X20_Y13_N20
\LessThan2~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~21_cout\ = CARRY((x(10) & (!tix_int(10) & !\LessThan2~19_cout\)) # (!x(10) & ((!\LessThan2~19_cout\) # (!tix_int(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x(10),
	datab => tix_int(10),
	datad => VCC,
	cin => \LessThan2~19_cout\,
	cout => \LessThan2~21_cout\);

-- Location: LCCOMB_X20_Y13_N22
\LessThan2~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~23_cout\ = CARRY((x(11) & (tix_int(11) & !\LessThan2~21_cout\)) # (!x(11) & ((tix_int(11)) # (!\LessThan2~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x(11),
	datab => tix_int(11),
	datad => VCC,
	cin => \LessThan2~21_cout\,
	cout => \LessThan2~23_cout\);

-- Location: LCCOMB_X20_Y13_N24
\LessThan2~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~25_cout\ = CARRY((x(12) & ((!\LessThan2~23_cout\) # (!tix_int(12)))) # (!x(12) & (!tix_int(12) & !\LessThan2~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x(12),
	datab => tix_int(12),
	datad => VCC,
	cin => \LessThan2~23_cout\,
	cout => \LessThan2~25_cout\);

-- Location: LCCOMB_X20_Y13_N26
\LessThan2~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~27_cout\ = CARRY((x(13) & ((tix_int(13)) # (!\LessThan2~25_cout\))) # (!x(13) & (tix_int(13) & !\LessThan2~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x(13),
	datab => tix_int(13),
	datad => VCC,
	cin => \LessThan2~25_cout\,
	cout => \LessThan2~27_cout\);

-- Location: LCCOMB_X20_Y13_N28
\LessThan2~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~29_cout\ = CARRY((tix_int(14) & (x(14) & !\LessThan2~27_cout\)) # (!tix_int(14) & ((x(14)) # (!\LessThan2~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tix_int(14),
	datab => x(14),
	datad => VCC,
	cin => \LessThan2~27_cout\,
	cout => \LessThan2~29_cout\);

-- Location: LCCOMB_X20_Y13_N30
\LessThan2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~30_combout\ = (tix_int(15) & (\LessThan2~29_cout\ & x(15))) # (!tix_int(15) & ((\LessThan2~29_cout\) # (x(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tix_int(15),
	datad => x(15),
	cin => \LessThan2~29_cout\,
	combout => \LessThan2~30_combout\);

-- Location: LCCOMB_X19_Y12_N22
\stop~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \stop~1_combout\ = ((tix_int(15)) # ((\stop~0_combout\ & !\LessThan2~30_combout\))) # (!\stop~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop~0_combout\,
	datab => \stop~regout\,
	datac => tix_int(15),
	datad => \LessThan2~30_combout\,
	combout => \stop~1_combout\);

-- Location: LCCOMB_X19_Y12_N20
\stop~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \stop~2_combout\ = (\calc~combout\) # ((!\rpm~6_combout\ & (!\rpm~4_combout\ & !\stop~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc~combout\,
	datab => \rpm~6_combout\,
	datac => \rpm~4_combout\,
	datad => \stop~1_combout\,
	combout => \stop~2_combout\);

-- Location: LCFF_X19_Y12_N21
stop : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \stop~2_combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \stop~regout\);

-- Location: LCCOMB_X19_Y12_N14
\x[17]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \x[17]~54_combout\ = (x(17) & (\x[16]~53\ & VCC)) # (!x(17) & (!\x[16]~53\))
-- \x[17]~55\ = CARRY((!x(17) & !\x[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => x(17),
	datad => VCC,
	cin => \x[16]~53\,
	combout => \x[17]~54_combout\,
	cout => \x[17]~55\);

-- Location: LCFF_X19_Y12_N15
\x[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \x[17]~54_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => \calc~combout\,
	ena => \stop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(17));

-- Location: LCCOMB_X19_Y12_N16
\x[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \x[18]~56_combout\ = (x(18) & ((GND) # (!\x[17]~55\))) # (!x(18) & (\x[17]~55\ $ (GND)))
-- \x[18]~57\ = CARRY((x(18)) # (!\x[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => x(18),
	datad => VCC,
	cin => \x[17]~55\,
	combout => \x[18]~56_combout\,
	cout => \x[18]~57\);

-- Location: LCCOMB_X19_Y12_N18
\x[19]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \x[19]~58_combout\ = \x[18]~57\ $ (!x(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => x(19),
	cin => \x[18]~57\,
	combout => \x[19]~58_combout\);

-- Location: LCFF_X19_Y12_N19
\x[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \x[19]~58_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => \calc~combout\,
	ena => \stop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(19));

-- Location: LCFF_X19_Y12_N17
\x[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \x[18]~56_combout\,
	sdata => \~GND~combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	sload => \calc~combout\,
	ena => \stop~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x(18));

-- Location: LCCOMB_X19_Y12_N26
\LessThan2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~32_combout\ = ((x(17)) # ((x(18)) # (\LessThan2~30_combout\))) # (!x(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x(16),
	datab => x(17),
	datac => x(18),
	datad => \LessThan2~30_combout\,
	combout => \LessThan2~32_combout\);

-- Location: LCCOMB_X19_Y12_N28
\rpm[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \rpm[0]~7_combout\ = (!tix_int(15) & (x(19) & (!\rpm~6_combout\ & !\LessThan2~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tix_int(15),
	datab => x(19),
	datac => \rpm~6_combout\,
	datad => \LessThan2~32_combout\,
	combout => \rpm[0]~7_combout\);

-- Location: LCCOMB_X19_Y12_N30
\rpm[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \rpm[0]~8_combout\ = (\calc~combout\) # ((\stop~regout\ & ((\rpm~4_combout\) # (!\rpm[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \calc~combout\,
	datab => \stop~regout\,
	datac => \rpm~4_combout\,
	datad => \rpm[0]~7_combout\,
	combout => \rpm[0]~8_combout\);

-- Location: LCFF_X18_Y12_N9
\rpm[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~2_combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	ena => \rpm[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rpm(0));

-- Location: LCCOMB_X17_Y12_N12
\rpm_mem[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rpm_mem[0]~0_combout\ = (!\stop~regout\ & (\areset~combout\ & !\calc~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stop~regout\,
	datac => \areset~combout\,
	datad => \calc~combout\,
	combout => \rpm_mem[0]~0_combout\);

-- Location: LCFF_X17_Y12_N29
\rpm_mem[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => rpm(0),
	sload => VCC,
	ena => \rpm_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rpm_mem[0]~reg0_regout\);

-- Location: LCCOMB_X18_Y12_N16
\Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (rpm(1) & (!\Add1~1\)) # (!rpm(1) & ((\Add1~1\) # (GND)))
-- \Add1~4\ = CARRY((!\Add1~1\) # (!rpm(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rpm(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X18_Y12_N30
\Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (\rpm~0_combout\ & (!\rpm~4_combout\ & (\Add1~3_combout\ & !\rpm~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rpm~0_combout\,
	datab => \rpm~4_combout\,
	datac => \Add1~3_combout\,
	datad => \rpm~6_combout\,
	combout => \Add1~5_combout\);

-- Location: LCFF_X18_Y12_N31
\rpm[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~5_combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	ena => \rpm[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rpm(1));

-- Location: LCCOMB_X17_Y12_N6
\rpm_mem[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rpm_mem[1]~reg0feeder_combout\ = rpm(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rpm(1),
	combout => \rpm_mem[1]~reg0feeder_combout\);

-- Location: LCFF_X17_Y12_N7
\rpm_mem[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \rpm_mem[1]~reg0feeder_combout\,
	ena => \rpm_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rpm_mem[1]~reg0_regout\);

-- Location: LCCOMB_X18_Y12_N18
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (rpm(2) & (\Add1~4\ $ (GND))) # (!rpm(2) & (!\Add1~4\ & VCC))
-- \Add1~7\ = CARRY((rpm(2) & !\Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rpm(2),
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X18_Y12_N4
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\rpm~0_combout\ & (!\rpm~6_combout\ & (\Add1~6_combout\ & !\rpm~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rpm~0_combout\,
	datab => \rpm~6_combout\,
	datac => \Add1~6_combout\,
	datad => \rpm~4_combout\,
	combout => \Add1~8_combout\);

-- Location: LCFF_X18_Y12_N5
\rpm[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~8_combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	ena => \rpm[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rpm(2));

-- Location: LCCOMB_X17_Y12_N4
\rpm_mem[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rpm_mem[2]~reg0feeder_combout\ = rpm(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rpm(2),
	combout => \rpm_mem[2]~reg0feeder_combout\);

-- Location: LCFF_X17_Y12_N5
\rpm_mem[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \rpm_mem[2]~reg0feeder_combout\,
	ena => \rpm_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rpm_mem[2]~reg0_regout\);

-- Location: LCCOMB_X18_Y12_N20
\Add1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (rpm(3) & (!\Add1~7\)) # (!rpm(3) & ((\Add1~7\) # (GND)))
-- \Add1~10\ = CARRY((!\Add1~7\) # (!rpm(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rpm(3),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~9_combout\,
	cout => \Add1~10\);

-- Location: LCCOMB_X18_Y12_N6
\rpm~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \rpm~9_combout\ = (\rpm~0_combout\ & ((\rpm~6_combout\) # ((!\rpm~4_combout\ & \Add1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rpm~0_combout\,
	datab => \rpm~4_combout\,
	datac => \Add1~9_combout\,
	datad => \rpm~6_combout\,
	combout => \rpm~9_combout\);

-- Location: LCFF_X18_Y12_N7
\rpm[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \rpm~9_combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	ena => \rpm[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rpm(3));

-- Location: LCCOMB_X17_Y12_N22
\rpm_mem[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rpm_mem[3]~reg0feeder_combout\ = rpm(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rpm(3),
	combout => \rpm_mem[3]~reg0feeder_combout\);

-- Location: LCFF_X17_Y12_N23
\rpm_mem[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \rpm_mem[3]~reg0feeder_combout\,
	ena => \rpm_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rpm_mem[3]~reg0_regout\);

-- Location: LCCOMB_X18_Y12_N22
\Add1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (rpm(4) & (\Add1~10\ $ (GND))) # (!rpm(4) & (!\Add1~10\ & VCC))
-- \Add1~12\ = CARRY((rpm(4) & !\Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rpm(4),
	datad => VCC,
	cin => \Add1~10\,
	combout => \Add1~11_combout\,
	cout => \Add1~12\);

-- Location: LCCOMB_X18_Y12_N0
\Add1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~13_combout\ = (\rpm~0_combout\ & (!\rpm~6_combout\ & (\Add1~11_combout\ & !\rpm~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rpm~0_combout\,
	datab => \rpm~6_combout\,
	datac => \Add1~11_combout\,
	datad => \rpm~4_combout\,
	combout => \Add1~13_combout\);

-- Location: LCFF_X18_Y12_N1
\rpm[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~13_combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	ena => \rpm[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rpm(4));

-- Location: LCFF_X17_Y12_N21
\rpm_mem[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => rpm(4),
	sload => VCC,
	ena => \rpm_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rpm_mem[4]~reg0_regout\);

-- Location: LCCOMB_X18_Y12_N24
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (rpm(5) & (!\Add1~12\)) # (!rpm(5) & ((\Add1~12\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~12\) # (!rpm(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rpm(5),
	datad => VCC,
	cin => \Add1~12\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X18_Y12_N2
\Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (\rpm~0_combout\ & (!\rpm~4_combout\ & (\Add1~14_combout\ & !\rpm~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rpm~0_combout\,
	datab => \rpm~4_combout\,
	datac => \Add1~14_combout\,
	datad => \rpm~6_combout\,
	combout => \Add1~16_combout\);

-- Location: LCFF_X18_Y12_N3
\rpm[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Add1~16_combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	ena => \rpm[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rpm(5));

-- Location: LCCOMB_X17_Y12_N10
\rpm_mem[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rpm_mem[5]~reg0feeder_combout\ = rpm(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rpm(5),
	combout => \rpm_mem[5]~reg0feeder_combout\);

-- Location: LCFF_X17_Y12_N11
\rpm_mem[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \rpm_mem[5]~reg0feeder_combout\,
	ena => \rpm_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rpm_mem[5]~reg0_regout\);

-- Location: LCCOMB_X18_Y12_N26
\Add1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (rpm(6) & (\Add1~15\ $ (GND))) # (!rpm(6) & (!\Add1~15\ & VCC))
-- \Add1~18\ = CARRY((rpm(6) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rpm(6),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~17_combout\,
	cout => \Add1~18\);

-- Location: LCCOMB_X18_Y12_N12
\rpm~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \rpm~10_combout\ = (\rpm~0_combout\ & ((\rpm~6_combout\) # ((\Add1~17_combout\ & !\rpm~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rpm~0_combout\,
	datab => \rpm~6_combout\,
	datac => \Add1~17_combout\,
	datad => \rpm~4_combout\,
	combout => \rpm~10_combout\);

-- Location: LCFF_X18_Y12_N13
\rpm[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \rpm~10_combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	ena => \rpm[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rpm(6));

-- Location: LCFF_X17_Y12_N1
\rpm_mem[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => rpm(6),
	sload => VCC,
	ena => \rpm_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rpm_mem[6]~reg0_regout\);

-- Location: LCCOMB_X18_Y12_N28
\Add1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~19_combout\ = \Add1~18\ $ (rpm(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => rpm(7),
	cin => \Add1~18\,
	combout => \Add1~19_combout\);

-- Location: LCCOMB_X18_Y12_N10
\rpm~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \rpm~11_combout\ = (\rpm~0_combout\ & ((\rpm~6_combout\) # ((\Add1~19_combout\ & !\rpm~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rpm~0_combout\,
	datab => \rpm~6_combout\,
	datac => \Add1~19_combout\,
	datad => \rpm~4_combout\,
	combout => \rpm~11_combout\);

-- Location: LCFF_X18_Y12_N11
\rpm[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \rpm~11_combout\,
	aclr => \ALT_INV_areset~clkctrl_outclk\,
	ena => \rpm[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rpm(7));

-- Location: LCFF_X17_Y12_N3
\rpm_mem[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => rpm(7),
	sload => VCC,
	ena => \rpm_mem[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rpm_mem[7]~reg0_regout\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rpm_mem[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \rpm_mem[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem(0));

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rpm_mem[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \rpm_mem[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem(1));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rpm_mem[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \rpm_mem[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem(2));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rpm_mem[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \rpm_mem[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem(3));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rpm_mem[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \rpm_mem[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem(4));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rpm_mem[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \rpm_mem[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem(5));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rpm_mem[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \rpm_mem[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem(6));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rpm_mem[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \rpm_mem[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rpm_mem(7));
END structure;


