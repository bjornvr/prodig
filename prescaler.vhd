-- Filename:     prescaler.vhd
-- Filetype:     VHDL code of a prescaler(behavioral)
-- Date:         3 march 2012
-- Update:       -
-- Description:  A behavioral description of selectable 1 Hz/10 Hz prescaler
-- Author:       J. op den Brouw
-- State:        demo
-- Error:        -
-- Version:      1.0
-- Copyright:    (c)2012, De Haagse Hogeschool
--
-- This is a behavioral description of a selectable 1 Hz/10 Hz prescaler.
-- The input clock frequency is assumed to be 50 MHz as is on the DE0 and
-- DE2-70 boards. The prescaler creates a 50% Duty Cycle output clock.
--
-- The port signals of the prescaler:
--
--    clkin    - the input clock
--    areset   - asynchronous reset
--    selclk   - select the output clock frequency
--    clkout   - the output clock

-- Please note that the current output clock cylce is finished
-- before the selclk signal is sampled. This garantees a nice
-- clock frequency change over.

library ieee;
-- Name:				Max_rpm.vhd
-- Filetype:		VHDL Hardware Discription
-- Date:				11 october 2019
-- Update:			Updated with comments for readability
-- Description:	Maximale RPM calculator
-- Author:			Jacco van Egmond for PRODIG-PETERS-PG1
-- State:			Release
-- Error:			-
-- Version:			1.4.1
-- License:			Mozilla Public License Version 2.0
use ieee.std_logic_1164.all;

entity prescaler is
	port (clkin  : in std_logic;
			areset : in std_logic;
			clkout : out std_logic
			);
end entity prescaler;

-- Behavioral description of the prescaler
architecture behav of prescaler is
-- We need to count up to some maximum...
signal count : integer range 0 to 2499;

begin
	process (clkin, areset) is
	variable clkint : std_logic;
	begin
		if areset = '0' then
			count <= 0;
			clkint := '0';
		elsif rising_edge(clkin) then
			if (count = 2499) then
				clkint := not clkint;
				count <= 0;
			else
				count <= count + 1;
			end if;
		end if;
		clkout <= clkint;
	end process;

end behav;