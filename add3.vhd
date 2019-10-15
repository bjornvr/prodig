-- Name:				add3.vhd
-- Filetype:		VHDL Hardware Discription
-- Date:				11 october 2019
-- Update:			Updated with comments for readability
-- Description:	een add 3 om een 8 bit bin naar bcd temaken
-- Author:			Jacco van Egmond for PRODIG-PETERS-PG1
-- State:			Release
-- Error:			-
-- Version:			1.4.1
-- License:			Mozilla Public License Version 2.0

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity add3 is
	port(
			bin	: in std_logic_vector(3 downto 0); -- binnen komende 4 bits
			bcd 	: out std_logic_vector (3 downto 0)	-- uitgaande 4 bits
			);
end entity add3;

architecture rtl of add3 is

begin		
	   with bin(3  downto 0)  select						-- simpelen add 3 volgends de waarheidstabel van een add 3
							 --waarheids tabel	
				bcd <=		"0000" when "0000",--0		-- als ingang 0000 is dan uitgang 0000
								"0001" when "0001",--1		-- "		" 		"		"		"			"		   
								"0010" when "0010",--2		-- "		" 		"		"		"			"	
								"0011" when "0011",--3		-- "		" 		"		"		"			"	
								"0100" when "0100",--4		-- "		" 		"		"		"			"	
								"1000" when "0101",--5		-- als ingang 0101 is dan uitgang 1000
								"1001" when "0110",--6		-- als ingang 0110 is dan uitgang 1001
								"1010" when "0111",--7		-- als ingang 0111 is dan uitgang 1010
								"1011" when "1000",--8		-- als ingang 1000 is dan uitgang 1011
								"1100" when "1001",--9		-- als ingang 1001 is dan uitgang 1100
								"----" when others;
end rtl ;