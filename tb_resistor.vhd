-- Filename:		tb_resistor.vhd
-- Filetype:		VHDL Testbench Discription
-- Date:				13 oktober 2019
-- Update:			Updated with comments for readability
-- Description:	VHDL testbench of Resistor.vhd to control the 16x4 display
-- Author:			Bjoern van Rozelaar for PRODIG-PETERS-PG1
-- State:			Release
-- Error:			-
-- Version:			1.4
-- License:			Mozilla Public License Version 2.0

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity tb_resistor is
end entity;

architecture test of tb_resistor is

	signal	clock		: std_logic;	--Systeem klok van 10 kHz
	signal	areset	: std_logic;	--Asynchronous reset
	signal	BUT_UP	: std_logic;	--FROM buttons (Weerstand omhoog knop)
	signal	BUT_DOWN : std_logic;	--FROM buttons	(Weerstand omlaag knop)
	signal	res_busy	: std_logic;	--FROM ADC		(Busy flag, ADC aan het meten)
	signal	res_data : std_logic_vector(7 downto 0); --FROM ADC (ADC-data uit adc)
	signal	res_up	: std_logic;	--TO H-bridge	(Weerstand omhoog aansturing)
	signal	res_down	: std_logic;	--TO H-bridge	(Weerstand omlaag aansturing)
	signal	N_readADC: std_logic;	--TO ADC			(Read Flag to ADC)
	signal	N_convst : std_logic;	--TO ADC			(Start converion of input ADC)
	signal	resistance: std_logic_vector(3 downto 0); 						-- Intern signaal weerstandslevel
	
component resistor is
	port(
		clock		: in  std_logic;	--Systeem klok van 10 kHz
		areset	: in	std_logic;	--Asynchronous reset
		BUT_UP	: in	std_logic;	--FROM buttons (Weerstand omhoog knop)
		BUT_DOWN : in	std_logic;	--FROM buttons	(Weerstand omlaag knop)
		res_busy	: in  std_logic;	--FROM ADC		(Busy flag, ADC aan het meten)
		res_data : in  std_logic_vector(7 downto 0); --FROM ADC (ADC-data uit adc)
		res_up	: out std_logic;	--TO H-bridge	(Weerstand omhoog aansturing)
		res_down	: out std_logic;	--TO H-bridge	(Weerstand omlaag aansturing)
		N_readADC: out std_logic;	--TO ADC			(Read Flag to ADC)
		N_convst : out std_logic;	--TO ADC			(Start converion of input ADC)
		resistance: out std_logic_vector(3 downto 0) 						-- Intern signaal weerstandslevel
		);
end component;

begin

dut: resistor
port map (clock => clock, areset => areset, BUT_UP => BUT_UP, BUT_DOWN => BUT_DOWN, res_busy => res_busy, res_data => res_data, res_up => res_up, res_down => res_down, N_readADC => N_readADC, N_convst => N_convst, resistance => resistance);

clockgen : process is
begin
	clock <= '0';
	wait for 50 us;
	clock <= '1';
	wait for 50 us;
end process;

process is
begin
	areset <= '0';
	BUT_UP <= '1';
	BUT_DOWN <= '0';
	res_busy <= '0';
	wait for 100 us;
	areset <= '1';
	wait for 100 us;
	res_busy <= '1';
	wait for 10 us;
	res_busy <= '0';
	res_data <= "00100101";
	wait for 40 us;
	res_busy <= '1';
	wait for 10 us;
	res_busy <= '0';
	wait for 10 us;	
	BUT_UP <= '0';
	wait for 100 us;
	res_busy <= '1';
	wait for 10 us;
	res_busy <= '0';
	res_data <= "00010111";
	wait;
end process;

end architecture;