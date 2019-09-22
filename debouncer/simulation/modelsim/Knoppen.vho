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

-- DATE "09/19/2019 23:48:30"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	knoppen IS
    PORT (
	CLK_10kHz : IN std_logic;
	input : IN std_logic;
	output : OUT std_logic
	);
END knoppen;

-- Design Ports Information
-- output	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_10kHz	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF knoppen IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK_10kHz : std_logic;
SIGNAL ww_input : std_logic;
SIGNAL ww_output : std_logic;
SIGNAL \CLK_10kHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output~output_o\ : std_logic;
SIGNAL \CLK_10kHz~input_o\ : std_logic;
SIGNAL \CLK_10kHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \input~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \ffa~6_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \ffa~5_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \ffa[3]~3_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \ffa~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \ffa~2_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \ffa~0_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \ffa~1_combout\ : std_logic;
SIGNAL ffa : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_CLK_10kHz <= CLK_10kHz;
ww_input <= input;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK_10kHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_10kHz~input_o\);

-- Location: IOOBUF_X41_Y7_N16
\output~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ffa(4),
	devoe => ww_devoe,
	o => \output~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\CLK_10kHz~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK_10kHz,
	o => \CLK_10kHz~input_o\);

-- Location: CLKCTRL_G4
\CLK_10kHz~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_10kHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_10kHz~inputclkctrl_outclk\);

-- Location: IOIBUF_X41_Y7_N1
\input~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input,
	o => \input~input_o\);

-- Location: LCCOMB_X39_Y7_N4
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ffa(0) $ (VCC)
-- \Add1~1\ = CARRY(ffa(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ffa(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X39_Y7_N20
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ffa(0) $ (VCC)
-- \Add0~1\ = CARRY(ffa(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ffa(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X39_Y7_N0
\ffa~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ffa~6_combout\ = (\input~input_o\ & ((\Add0~0_combout\))) # (!\input~input_o\ & (\Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input~input_o\,
	datac => \Add1~0_combout\,
	datad => \Add0~0_combout\,
	combout => \ffa~6_combout\);

-- Location: LCCOMB_X39_Y7_N22
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (ffa(1) & (!\Add0~1\)) # (!ffa(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!ffa(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ffa(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X39_Y7_N6
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (ffa(1) & (\Add1~1\ & VCC)) # (!ffa(1) & (!\Add1~1\))
-- \Add1~3\ = CARRY((!ffa(1) & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ffa(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X39_Y7_N30
\ffa~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ffa~5_combout\ = (\input~input_o\ & (\Add0~2_combout\)) # (!\input~input_o\ & ((\Add1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input~input_o\,
	datac => \Add0~2_combout\,
	datad => \Add1~2_combout\,
	combout => \ffa~5_combout\);

-- Location: FF_X39_Y7_N31
\ffa[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_10kHz~inputclkctrl_outclk\,
	d => \ffa~5_combout\,
	ena => \ffa[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ffa(1));

-- Location: LCCOMB_X40_Y7_N6
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (ffa(3) & (ffa(2) & (ffa(0) & ffa(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ffa(3),
	datab => ffa(2),
	datac => ffa(0),
	datad => ffa(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X39_Y7_N2
\ffa[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ffa[3]~3_combout\ = (\input~input_o\ & (((!\LessThan0~0_combout\)) # (!ffa(4)))) # (!\input~input_o\ & ((ffa(4)) # ((\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~input_o\,
	datab => ffa(4),
	datac => \LessThan1~0_combout\,
	datad => \LessThan0~0_combout\,
	combout => \ffa[3]~3_combout\);

-- Location: FF_X39_Y7_N1
\ffa[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_10kHz~inputclkctrl_outclk\,
	d => \ffa~6_combout\,
	ena => \ffa[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ffa(0));

-- Location: LCCOMB_X39_Y7_N8
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (ffa(2) & ((GND) # (!\Add1~3\))) # (!ffa(2) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((ffa(2)) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ffa(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X39_Y7_N24
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (ffa(2) & (\Add0~3\ $ (GND))) # (!ffa(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((ffa(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ffa(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X39_Y7_N18
\ffa~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ffa~4_combout\ = (\input~input_o\ & ((\Add0~4_combout\))) # (!\input~input_o\ & (\Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input~input_o\,
	datac => \Add1~4_combout\,
	datad => \Add0~4_combout\,
	combout => \ffa~4_combout\);

-- Location: FF_X39_Y7_N19
\ffa[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_10kHz~inputclkctrl_outclk\,
	d => \ffa~4_combout\,
	ena => \ffa[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ffa(2));

-- Location: LCCOMB_X39_Y7_N26
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (ffa(3) & (!\Add0~5\)) # (!ffa(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!ffa(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ffa(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X39_Y7_N10
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (ffa(3) & (\Add1~5\ & VCC)) # (!ffa(3) & (!\Add1~5\))
-- \Add1~7\ = CARRY((!ffa(3) & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ffa(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X39_Y7_N16
\ffa~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ffa~2_combout\ = (\input~input_o\ & (\Add0~6_combout\)) # (!\input~input_o\ & ((\Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input~input_o\,
	datac => \Add0~6_combout\,
	datad => \Add1~6_combout\,
	combout => \ffa~2_combout\);

-- Location: FF_X39_Y7_N17
\ffa[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_10kHz~inputclkctrl_outclk\,
	d => \ffa~2_combout\,
	ena => \ffa[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ffa(3));

-- Location: LCCOMB_X39_Y7_N14
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (ffa(1)) # ((ffa(2)) # ((ffa(0)) # (ffa(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ffa(1),
	datab => ffa(2),
	datac => ffa(0),
	datad => ffa(3),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X40_Y7_N4
\ffa~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ffa~0_combout\ = (ffa(4) & (((!\input~input_o\)) # (!\LessThan0~0_combout\))) # (!ffa(4) & (((\input~input_o\) # (\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => ffa(4),
	datac => \input~input_o\,
	datad => \LessThan1~0_combout\,
	combout => \ffa~0_combout\);

-- Location: LCCOMB_X39_Y7_N12
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ffa(4) $ (\Add1~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ffa(4),
	cin => \Add1~7\,
	combout => \Add1~8_combout\);

-- Location: LCCOMB_X39_Y7_N28
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ffa(4) $ (!\Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ffa(4),
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X40_Y7_N0
\ffa~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ffa~1_combout\ = (\input~input_o\ & (\ffa~0_combout\ $ (((!\Add0~8_combout\))))) # (!\input~input_o\ & (\ffa~0_combout\ & (\Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~input_o\,
	datab => \ffa~0_combout\,
	datac => \Add1~8_combout\,
	datad => \Add0~8_combout\,
	combout => \ffa~1_combout\);

-- Location: FF_X40_Y7_N1
\ffa[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_10kHz~inputclkctrl_outclk\,
	d => \ffa~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ffa(4));

ww_output <= \output~output_o\;
END structure;


