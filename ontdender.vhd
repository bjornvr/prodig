-- Name:				ontdender.vhd
-- Filetype:		VHDL Hardware Discription
-- Date:				11 oktober 2019
-- Update:			Updated with comments for readability
-- Description:	Ontdenderaar voor knoppen
-- Author:			Thomas Ypma for PRODIG-PETERS-PG1
-- State:			Release
-- Error:			-
-- Version:			1
-- License:			Mozilla Public License Version 2.0
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ontdender is
	generic (
		delay : integer := 100;
		long_press : integer := 10000 -- 1 second
		);
	port (
		CLK_10kHz 	: in std_logic; --100us
		areset 		: in std_logic;
		input 		: in std_logic;
		output 		: out std_logic;
		long			: out std_logic
	);
end entity;

architecture bhv of ontdender is

signal a : std_logic := '0'; -- checks for toggle on button
signal output_int : std_logic := '1';
signal counter : std_logic_vector(15 downto 0);
begin

process (CLK_10kHz, input)
variable ffa : integer range 0 to 100 := 100; -- 100 * 100us = 10ms debounce
variable long_press_counter : unsigned(15 downto 0);

begin
	if areset = '0' then
	long_press_counter := "0000000000000000";
	elsif rising_edge(CLK_10kHz) then
		if ffa < delay then
			ffa := ffa+1;
		else
			if input = '0' and a = '0' then
				output_int <= '0';
				ffa := 0;
				a <= '1';
			elsif input = '1' and a = '1' then
				output_int <= '1';
				ffa := 0;
				a <= '0';
				long_press_counter :="0000000000000000";
			end if;
		end if;
		output <= output_int;

		if "0010011100010000" > long_press_counter and output_int = '0'  then
					long_press_counter := long_press_counter + "0000000000000001";
		end if;
		if long_press_counter = "0010011100010000" then
			long <= '0';
		else
			long <= '1';
		end if;
	end if;
	counter <= std_logic_vector(long_press_counter);
end process;
end architecture bhv;
