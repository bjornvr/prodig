-- Filename:      prescaler.vhd
-- Filetype:      VHDL Hardware Discription
-- Date:          23 september 2019
-- Update:        -
-- Description:   Zet 50MHz om naar 10KHz
-- Author:        Mirko Bosch for PRODIG-PETERS-PG1
-- State:         Release
-- Error:         -
-- Version:	      1.0
-- License:			Mozilla Public License Version 2.0

library ieee;
use ieee.std_logic_1164.all;

entity prescaler is
	port (clkin  : in std_logic;
			areset : in std_logic;
			clkout : out std_logic
			);
end entity prescaler;


architecture behav of prescaler is
signal count : integer range 0 to 2499;	-- Counter voor de deling van 50 MHz naar 10 KHz

begin
	process (clkin, areset) is
	variable clkint : std_logic := '0';
	begin										--Als areset reset
		if areset = '0' then
			count <= 0;
			clkint := '0';
		elsif rising_edge(clkin) then
			if (count = 2499) then		--Als count 2499 is schakel clkint signaal en reset de count
				clkint := not clkint;
				count <= 0;
			else
				count <= count + 1;		-- Als count nog niet groot gegnoeg is increase count
			end if;
		end if;
		clkout <= clkint;					-- Zet intern om naar extern
	end process;

end behav;
