-- Name:				Timer.vhd
-- Filetype:		VHDL Hardware Discription
-- Date:				14 oktober 2019
-- Update:			Updated with comments for readability
-- Description:	Maximale RPM calculator
-- Author:			Jordi Aldewereld for PRODIG-PETERS-PG1
-- State:			Release
-- Error:			-
-- Version:			1.4.1
-- License:			Mozilla Public License Version 2.0
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer is
generic(
	Clockpulsen : integer := 10000											-- Waarde voor de Clocksnelheid van de interne clock wordt vastgezet
	);

port(
    clk     		: 	in std_logic;											-- Interne clock
    areset    		: 	in std_logic;											-- Asynchrone reset voor het gehele systeem
	 reset			:  in std_logic;											-- Reset vanaf de fiets
	 start_stop		:  in std_logic;											-- Start_stop knop vanaf de fiets
	 seconds			:  out std_logic_vector(5 downto 0);				-- Weergeven van seconden op display
    minutes 		:  out std_logic_vector(5 downto 0);				-- Weergeven van minuten op display
	 seconds_max	:	out std_logic_vector(5 downto 0);				-- Weergeven van seconden op display bij RPM_max
	 minutes_max	:	out std_logic_vector(5 downto 0);				-- Weergeven van minuten op display bij RPM_max
	 rpm_max			:	in std_logic											-- Waarde vanaf time_save uit RPM_max
	 );
end entity;

architecture rtl of timer is

    signal ticks : integer:=0;												-- Intern signaal voor het tellen van clockpulsen
	 signal seconds_int : unsigned (5 downto 0):=(others => '0');	-- Intern signaal voor seconden
	 signal minutes_int : unsigned(5 downto 0):=(others => '0');	-- Intern signaal voor minuten
begin
    process(clk, areset) is
    begin
		  if areset = '0' then													-- Als areset actief is worden alle waardes op 0 gezet
						 ticks   <= 0;
						 seconds_int <=(others => '0');
						 minutes_int <=(others => '0');
						 seconds_max <=(others => '0');
						 minutes_max <=(others => '0');
        elsif rising_edge(clk) then
				if reset = '1' then												-- Als reset van de fiets niet geactiveerd is
					if start_stop = '1' then									-- Als de start op de fiets is geactiveerd
						if ticks = Clockpulsen - 1 then						-- Kijkt of waarde van ticks gelijk is aan die van clockpulsen
							ticks <= 0;												-- Zo ja dan wordt ticks gereset

							-- elke minuut
							if seconds_int = 59 then							-- Kijkt of seconds_int gelijk is aan 59
								seconds_int <= (others => '0');				-- Als dat zo is dan wordt seconds_int op 0 gezet

								if minutes_int = 59 then						-- Kijkt of minutes_int gelijk is aan 59
									minutes_int <= (others => '0');			-- Als dat zo is dan wordt minutes_int op 0 gezet
								else
									minutes_int <= minutes_int + 1;			-- Als minutes_int niet gelijk is aan 59 en seconds_int = 59 dan wordt minutes_int met één verhoogd
								end if;
							else
								seconds_int <= seconds_int + 1;				-- Als seconds_int niet gelijk is aan 59 en als ticks gelijk is aan clockpulsen-1 dan wordt seconds_int met één verhoogd
							end if;
						else
							  ticks <= ticks + 1;								-- Als ticks niet gelijk is aan clockpulsen-1 dan wordt ticks verhoogd met één
						end if;
					end if;
				else
					--reset op button druk										-- Als de reset op de fiets wordt geactiveerd worden de outputs op 0 gezet
					seconds_int <= (others => '0');
					minutes_int <= (others => '0');
					seconds_max <= (others => '0');
					minutes_max <= (others => '0');
				end if;
				--Begin Jacco Max_rpm
				if rpm_max = '1' then											-- Als het binnenkomende signaal van Max_rpm een 1 is
					minutes_max <= std_logic_vector(minutes_int);		-- Huidige waarde van minutes_int wordt aan minutes_max gekoppeld
					seconds_max	<= std_logic_vector(seconds_int);		-- Huidige waarde van seconds_int wordt aan seconds_max gekoppeld
				end if;
				-- Eind Jacco Max_rpm
			seconds <= std_logic_vector(seconds_int);						-- Interne signaal seconds_int wordt gekoppeld aan uitgaande port seconds
		   minutes <= std_logic_vector(minutes_int);						-- Interne signaal minutes_int wordt gekoppeld aan uitgaande port minutes
        end if;
    end process;
end architecture;
