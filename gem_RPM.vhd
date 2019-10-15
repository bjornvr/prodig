-- Name:				gem_rpm.vhd
-- Filetype:		VHDL Hardware Discription
-- Date:				11 oktober 2019
-- Update:			Updated with comments for readability
-- Description:	Gemiddelde aantal RPM bepalen
-- Author:			Kevin Schrama
-- State:			Release
-- Error:			-
-- Version:			1.4.1
-- License:			Mozilla Public License Version 2.0

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gem_RPM is
	port(
		clock : in std_logic;
		areset : in std_logic;
		reset : in std_logic;
		RPM : in unsigned(7 downto 0);
		gem_RPM : out unsigned(7 downto 0);
		start : in std_logic
		);
end entity;

architecture rtl of gem_RPM is

signal tot_RPM : unsigned(11 downto 0);
signal tot_RPM_int : unsigned(11 downto 0);
signal count_RPM : unsigned(7 downto 0);
signal gem_RPM_int : unsigned(7 downto 0);
signal wait_gem_RPM : integer range 0 to 10000;		-- interval RPM meting voor gem_RPM
signal stop : std_logic;

begin
	process(clock, RPM, areset)
	begin
		if areset = '0' then						-- asynchrone reset
			tot_RPM <= "000000000000";
			tot_RPM_int <= "000000000000";
			count_RPM <= "00000000";
			gem_RPM_int <= "00000000";
			stop <= '1';
			wait_gem_RPM <= 0;
		else
			if rising_edge(clock) then
				if wait_gem_RPM = 10000 then		-- interval van 1 seconde
					wait_gem_RPM <= 0;
				else
					wait_gem_RPM <= wait_gem_RPM + 1;
				end if;
				if reset = '0' then 				-- Wanneer de reset op de hometrainer wordt ingedrukt.
					tot_RPM <= "000000000000" + RPM;
					tot_RPM_int <= "000000000000";
					count_RPM <= "00000000";
					gem_RPM_int <= "00000000";
					stop <= '1';
				else
					if wait_gem_RPM = 10000 and start = '1' then		-- Elke seconde wordt de rpm bij totale rpm opgeteld en daarna gedeeld door
						-- Het RPM wordt opgeteld								-- hoevaak de rpm er bij opgeteld is om zo het gemiddelde rpm te berekenen.
						tot_RPM <= tot_RPM + RPM;
						-- Er wordt geteld hoevaak de RPM wordt opgeteld.
						count_RPM <= count_RPM + 1;
						-- Stop zorgt dat er maar 1 keer wordt gedeeld met dezelfde waarde.
						stop <= '0';
						-- Het totale RPM wordt doorgegeven zodat dat door de staartdeler kan gaan en het totale RPM niet veranderd wordt.
						tot_RPM_int <= tot_RPM;
						-- Het gemiddelde wordt weer op 0 gezet zodat er weer opnieuw kan worden gedeeld.
						gem_RPM_int <= "00000000";
					elsif stop = '0' then
						-- Er wordt afgetrokken zolang het af te trekken getal niet hoger is dan het getal waarvan wordt afgetrokken.
						if tot_RPM_int >= count_RPM then
							-- Er wordt afgetrokken en geteld hoevaak dat kan, dit is een deling.
							tot_RPM_int <= tot_RPM_int - count_RPM;
							gem_RPM_int <= gem_RPM_int + 1;
						else
							-- Als er niet meer kan worden afgetrokken wordt het gemiddelde RPM doorgegeven.
							stop <= '1';
							gem_RPM <= gem_RPM_int;
						end if;
					end if;
				end if;
			end if;
		end if;
	end process;

end architecture;
