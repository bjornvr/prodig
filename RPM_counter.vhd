-- Name:				RPM_counter.vhd
-- Filetype:		VHDL Hardware Discription
-- Date:				11 october 2019
-- Update:			Updated with comments for readability
-- Description:	RPM counter
-- Author:			Jordi Aldewereld (Totale omwentelingen) en Kevin Schrama (RPM counter)  for PRODIG-PETERS-PG1
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
			-- Totale omwentelingen
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
		
		
			-- RPM Counter
			if hall_sens = '1' and wait_time = 2000 then -- Als het pedaal langs de hallsensor komt wordt de tijd dat het duurde 
				tix_mem <= count;									-- opgeslagen en wordt de teller weer op nul gezet zodat er weer opnieuw wordt geteld.
				count := "0000000000000001";
				calc <= '1';	-- Er wordt verteld dat de rpm moet worden berekend, dit zodat er niet de hele tijd wordt gerekend, anders komen er verkeerd waardes uit.
				wait_time := 0;	-- De wait time is zodat het opnieuw tellen van de tijd niet constant gebeurt wanneer de hallsensor getriggerd wordt maar dat er een buffer tussen zit van 0,2 seconde.
				stop := '0';
			else 	-- Nadat er langs de hallsensor is gegaan en de hall_sens weer 0 is begint er weer te tellen totdat de hall_sens weer 1 is.
				if count > 30000 then	-- Als er voor 3 seconde niet wordt getrapt wordt de rpm op 0 gezet.
					tix_mem <= count;
					count := "0000000000000000";
					stop := '1';
				else	-- Er wordt begonnen met tellen tussen hall_sens pulsen om RPM te meten.
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