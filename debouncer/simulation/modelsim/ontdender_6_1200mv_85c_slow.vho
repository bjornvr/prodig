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

-- DATE "10/08/2019 17:12:28"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
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

ENTITY 	ontdender IS
    PORT (
	CLK_10kHz : IN std_logic;
	input : IN std_logic;
	output : OUT std_logic
	);
END ontdender;

-- Design Ports Information
-- output	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK_10kHz	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ontdender IS
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
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \ffa~0_combout\ : std_logic;
SIGNAL \ffa[2]~4_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \output~output_o\ : std_logic;
SIGNAL \CLK_10kHz~input_o\ : std_logic;
SIGNAL \CLK_10kHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \input~input_o\ : std_logic;
SIGNAL \a~1_combout\ : std_logic;
SIGNAL \a~0_combout\ : std_logic;
SIGNAL \ffa~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \ffa[3]~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \ffa[4]~6_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \ffa[5]~3_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \ffa[6]~1_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \a~q\ : std_logic;
SIGNAL ffa : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_CLK_10kHz <= CLK_10kHz;
ww_input <= input;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK_10kHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_10kHz~input_o\);

-- Location: LCCOMB_X2_Y23_N0
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ffa(0) $ (VCC)
-- \Add0~1\ = CARRY(ffa(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ffa(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X2_Y23_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (ffa(2) & (!\Add0~3\ & VCC)) # (!ffa(2) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((!ffa(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ffa(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X2_Y23_N23
\ffa[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_10kHz~inputclkctrl_outclk\,
	d => \ffa[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ffa(2));

-- Location: FF_X2_Y23_N27
\ffa[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_10kHz~inputclkctrl_outclk\,
	d => \Add0~15_combout\,
	ena => \ffa~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ffa(0));

-- Location: LCCOMB_X1_Y23_N24
\ffa~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ffa~0_combout\ = \input~input_o\ $ (!\a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input~input_o\,
	datad => \a~q\,
	combout => \ffa~0_combout\);

-- Location: LCCOMB_X2_Y23_N22
\ffa[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ffa[2]~4_combout\ = (\LessThan0~1_combout\ & (!\Add0~4_combout\ & ((\ffa~2_combout\) # (ffa(2))))) # (!\LessThan0~1_combout\ & ((\ffa~2_combout\) # ((ffa(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \ffa~2_combout\,
	datac => ffa(2),
	datad => \Add0~4_combout\,
	combout => \ffa[2]~4_combout\);

-- Location: LCCOMB_X2_Y23_N26
\Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\Add0~0_combout\ & ((ffa(6)) # (\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ffa(6),
	datab => \LessThan0~0_combout\,
	datad => \Add0~0_combout\,
	combout => \Add0~15_combout\);

-- Location: IOOBUF_X0_Y23_N2
\output~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a~q\,
	devoe => ww_devoe,
	o => \output~output_o\);

-- Location: IOIBUF_X0_Y11_N1
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

-- Location: IOIBUF_X0_Y23_N8
\input~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input,
	o => \input~input_o\);

-- Location: LCCOMB_X1_Y23_N10
\a~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a~1_combout\ = \input~input_o\ $ (\a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input~input_o\,
	datad => \a~q\,
	combout => \a~1_combout\);

-- Location: LCCOMB_X1_Y23_N20
\a~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \a~0_combout\ = (\a~q\ & ((\a~1_combout\))) # (!\a~q\ & (!\input~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~input_o\,
	datac => \a~q\,
	datad => \a~1_combout\,
	combout => \a~0_combout\);

-- Location: LCCOMB_X1_Y23_N6
\ffa~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ffa~2_combout\ = (ffa(6)) # ((\LessThan0~0_combout\) # (\input~input_o\ $ (!\a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~input_o\,
	datab => \a~q\,
	datac => ffa(6),
	datad => \LessThan0~0_combout\,
	combout => \ffa~2_combout\);

-- Location: LCCOMB_X2_Y23_N2
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (ffa(1) & (!\Add0~1\)) # (!ffa(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!ffa(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ffa(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X2_Y23_N16
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\Add0~2_combout\ & ((ffa(6)) # (\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ffa(6),
	datab => \LessThan0~0_combout\,
	datad => \Add0~2_combout\,
	combout => \Add0~14_combout\);

-- Location: FF_X2_Y23_N17
\ffa[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_10kHz~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	ena => \ffa~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ffa(1));

-- Location: LCCOMB_X2_Y23_N6
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

-- Location: LCCOMB_X2_Y23_N20
\ffa[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ffa[3]~5_combout\ = (\LessThan0~1_combout\ & ((\Add0~6_combout\) # ((!\ffa~2_combout\ & ffa(3))))) # (!\LessThan0~1_combout\ & (!\ffa~2_combout\ & (ffa(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \ffa~2_combout\,
	datac => ffa(3),
	datad => \Add0~6_combout\,
	combout => \ffa[3]~5_combout\);

-- Location: FF_X2_Y23_N21
\ffa[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_10kHz~inputclkctrl_outclk\,
	d => \ffa[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ffa(3));

-- Location: LCCOMB_X2_Y23_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (ffa(4) & (\Add0~7\ $ (GND))) # (!ffa(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((ffa(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => ffa(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X2_Y23_N14
\ffa[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ffa[4]~6_combout\ = (\LessThan0~1_combout\ & ((\Add0~8_combout\) # ((!\ffa~2_combout\ & ffa(4))))) # (!\LessThan0~1_combout\ & (!\ffa~2_combout\ & (ffa(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \ffa~2_combout\,
	datac => ffa(4),
	datad => \Add0~8_combout\,
	combout => \ffa[4]~6_combout\);

-- Location: FF_X2_Y23_N15
\ffa[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_10kHz~inputclkctrl_outclk\,
	d => \ffa[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ffa(4));

-- Location: LCCOMB_X2_Y23_N10
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (ffa(5) & ((\Add0~9\) # (GND))) # (!ffa(5) & (!\Add0~9\))
-- \Add0~11\ = CARRY((ffa(5)) # (!\Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ffa(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X2_Y23_N24
\ffa[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ffa[5]~3_combout\ = (\LessThan0~1_combout\ & (!\Add0~10_combout\ & ((\ffa~2_combout\) # (ffa(5))))) # (!\LessThan0~1_combout\ & ((\ffa~2_combout\) # ((ffa(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \ffa~2_combout\,
	datac => ffa(5),
	datad => \Add0~10_combout\,
	combout => \ffa[5]~3_combout\);

-- Location: FF_X2_Y23_N25
\ffa[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_10kHz~inputclkctrl_outclk\,
	d => \ffa[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ffa(5));

-- Location: LCCOMB_X2_Y23_N28
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (ffa(5)) # ((ffa(2) & (!ffa(4) & !ffa(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ffa(2),
	datab => ffa(5),
	datac => ffa(4),
	datad => ffa(3),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X2_Y23_N12
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ffa(6) $ (\Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ffa(6),
	cin => \Add0~11\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X2_Y23_N30
\ffa[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ffa[6]~1_combout\ = (\LessThan0~0_combout\ & (((!\Add0~12_combout\)))) # (!\LessThan0~0_combout\ & ((ffa(6) & ((!\Add0~12_combout\))) # (!ffa(6) & (\ffa~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ffa~0_combout\,
	datab => \LessThan0~0_combout\,
	datac => ffa(6),
	datad => \Add0~12_combout\,
	combout => \ffa[6]~1_combout\);

-- Location: FF_X2_Y23_N31
\ffa[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_10kHz~inputclkctrl_outclk\,
	d => \ffa[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ffa(6));

-- Location: LCCOMB_X2_Y23_N18
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (ffa(6)) # (\LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ffa(6),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: FF_X1_Y23_N21
a : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_10kHz~inputclkctrl_outclk\,
	d => \a~0_combout\,
	asdata => \a~q\,
	sload => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \a~q\);

ww_output <= \output~output_o\;
END structure;


