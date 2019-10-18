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
library ieee;																						-- necessary libraries for the code
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ontdender is																				-- the entity contains the input and outputs we want to code with
	generic (
		delay : integer := 100;																	-- 100us
		long_press : integer := 5000	 														-- 1 second
		);
	port (
		CLK_10kHz 	: in std_logic; 															-- Goes on at a pace of 10kHz
		areset 		: in std_logic;															--	Resets everything in the machine
		input 		: in std_logic;															--	input
		output 		: out std_logic;															-- two possible outputs
		long			: out std_logic
	);
end entity;

architecture bhv of ontdender is																-- start of code

signal a : std_logic := '0'; 																	-- checks for toggle on button
signal output_int : std_logic := '1';														-- signal to be linked to the output
signal counter : std_logic_vector(15 downto 0);											-- shows the state of the long_press_counter
begin

process (CLK_10kHz, input)								
variable ffa : integer range 0 to 100 := 100; 											-- 100 * 100us = 10ms debounce
variable long_press_counter : unsigned(15 downto 0);									-- times the 'long' press

begin
	if areset = '0' then 																		-- counters to 0
	long_press_counter := "0000000000000000";
	elsif rising_edge(CLK_10kHz) then
		if ffa < delay then
			ffa := ffa+1; 																			-- start counting for 100us
		else 																							-- resets ffa and gives te next signal
			if input = '0' and a = '0' then													-- a makes sure that the output signal stays active for at least 100us
				output_int <= '0';																-- 'output' is active
				ffa := 0;																			-- ffa resets
				a <= '1'; 																			-- allows for toggle
			elsif input = '1' and a = '1' then
				output_int <= '1';																-- 'output' is inactive
				ffa := 0;																			-- ffa resets
				a <= '0';																			-- allows for toggle
				long_press_counter := "0000000000000000";
			end if;
		end if;
		output <= output_int;																	-- 'output' signal is defined
																										-- long press is reserved for the internal reset button
		if long_press > long_press_counter then
					long_press_counter := long_press_counter + "0000000000000001"; -- counts for the long press
		end if;
		if long_press_counter >= "0001001110001000" then 											-- long press only needs to reset when it's no longer pressed
			long <= '0';																			-- 'input' has been active for long so the output 'long' is active 
		else	
			long <= '1';																			-- 'long' is inactive
		end if;
	end if;
	counter <= std_logic_vector(long_press_counter);									-- 'counter' is given the state of 'long_press_counter'
end process;
end architecture bhv;																			-- end of code
