-- Name:				RPM_counter.vhd
-- Filetype:		VHDL Hardware Discription
-- Date:				11 oktober 2019
-- Update:			Updated with comments for readability
-- Description:	Maximale RPM calculator
-- Author:			Jordi Aldewereld
-- State:			Release
-- Error:			-
-- Version:			1.4.1
-- License:			Mozilla Public License Version 2.0
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity RPM_counter is
	port (
		clock 		: in std_logic;
		areset 		: in std_logic;
		reset 		: in std_logic;
		hall_sens 	: in std_logic;
		calc			: out std_logic;
		tix_mem		: out unsigned(15 downto 0);
		start			: in std_logic;
		-- Voor de totale omwentelingen
		tot_omwentel99 : out std_logic_vector(7 downto 0); -- telt tot 99 en begint daarna weer vanaf 0
		tot_omwentel255 : out std_logic_vector(7 downto 0) -- wordt groter met 1 zodra de teller van omwentel99 opnieuw begint
		);
end entity;



architecture main of RPM_counter is
signal hal_state : std_logic;

begin

process (clock, areset) is
variable count : unsigned(15 downto 0) := "0000000000000001";
variable wait_time : integer range 0 to 2000 := 0;
variable stop : std_logic;
variable omwentel99 : unsigned(7 downto 0);
variable omwentel255 : unsigned(7 downto 0);
begin
	-- Als areset actief is wordt alles gereset
	if areset = '0' then
		count := "0000000000000001";
		tix_mem <= count;
		-- Reset de totale omwentelingen
		omwentel99 := "00000000"; -- Telt tot 100 (0 tot 99)
		omwentel255 := "00000000"; -- Telt tot 256 (0 tot 255)
	else
	-- Teller wordt geactiveerd de hallsensor geactiveerd is.
		if rising_edge(clock) then
			if hall_sens = '1' and hal_state = '0'  and start = '1' then
					-- Teller wordt met de waarde één verhoogd
					omwentel99 := omwentel99 + 1;
				-- Zodra de eerste twee bits de waarde 100 (0 tot 99) bevat, wordt in een nieuwe variabele 'omwentel255' de waarde met één verhoogd.
				if omwentel99 = "01100100" then
					omwentel255 := omwentel255 + 1;
					-- De waarde 100 is bereikt en wordt dus gereset naar 0
					omwentel99 := "00000000";
				-- Zodra de maximale waarde van omwentel255 is bereikt, wordt deze gereset naar 0.
				elsif omwentel255 = "11111111" then
					omwentel255 := "00000000";
				end if;
			-- Als de reset (actief laag) geavtiveerd is worden alle variabelen op 0 gezet.
			elsif reset = '0' then
				omwentel99 := "00000000";
				omwentel255 := "00000000";
			end if;
			hal_state <= hall_sens;



			if hall_sens = '1' and wait_time = 2000 then
				tix_mem <= count;
				count := "0000000000000001";
				calc <= '1';
				wait_time := 0;
				stop := '0';
			else
				if count > 30000 then
					tix_mem <= count;
					count := "0000000000000000";
					stop := '1';
				else
					if stop = '0' then
						count := count + "0000000000000001";
					end if;
				end if;
				if wait_time /= 2000 then
					wait_time := wait_time + 1;
				end if;
				calc <= '0';
			end if;
		end if;
	end if;
	-- Zet waarden in std_logic_vector om en kent daarna de variabele toe aan een port
	tot_omwentel99 <= std_logic_vector(omwentel99);
	tot_omwentel255 <= std_logic_vector(omwentel255);
end process;
end architecture;
