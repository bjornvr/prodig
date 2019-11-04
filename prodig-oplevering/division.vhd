-- Name:				division.vhd
-- Filetype:		VHDL Hardware Discription
-- Date:				11 october 2019
-- Description:	psuedo-divides tix to calculate RPM
-- Author:			Bjoern van Rozelaar for PRODIG-PETERS-PG1
-- State:			Release
-- Error:			-
-- Version:			1.4.1

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity division is
	port (tix_mem	: in unsigned (15 downto 0); 	-- Input met getelde ticks in RPM_Counter
			areset	: in std_logic;					-- Asynchronous reset of division
			calc		: in std_logic;					-- Start het berekenen van de deling
			clock		: in std_logic;					-- De 10 kHz klok uit de prescaler
			rpm_mem  : out unsigned (7 downto 0);	-- De uitgang van de berekende RPM
			te_hoog	: out std_logic					-- Intern uitgangsignaal indien RPM te hoog is
			);
end entity division;

architecture rtl of division is

begin
	process (areset, calc, clock, tix_mem)
	variable x		: unsigned (19 downto 0);		-- Interne waarde van de deling
	variable rpm	: unsigned (7 downto 0);		-- Interne waarde van de RPM
	variable stop	: std_logic;						-- Stop flag indien einde deling bereikt is
   variable tix_int : unsigned (15 downto 0);	-- Interne waarde van het aantal ticks uit RPM_Counter
	begin

		--Asynchronous reset: Zet alles op beginwaarden en stop het berekenen
		if areset = '0' then
			tix_int := "0000000000000000";
			RPM := "00000000";
			stop := '1';
			x := "10010010011111000000"; 				-- 600.000 to x (Als startgetal van de deling)

		elsif rising_edge (clock) then				-- Op rising edge klokpuls
			if tix_mem > 30000 or tix_mem = 0 then
				rpm_mem <= "00000000";
				rpm := "00000000";
				te_hoog <= '0';
			elsif tix_mem < 3000 then
				-- RPM te hoog
				te_hoog <= '1';
			else
				te_hoog <= '0';
				if calc = '1' then						-- Indien calc signaal wordt gegeven
					tix_int := tix_mem;					-- Binnenhalen van ticks uit RPM_counter
					rpm := "00000000";					-- Huidige RPM resetten
					x := "10010010011111000000"; 		-- 600.000 to x (Als startgetal van de deling)
					stop := '0';							-- Start deling
				elsif stop = '0' then
					if (tix_int > "000101110111000") then 		-- Als tix_int > next check
						if (tix_int < "111010100110000") then	-- Alx tix_int < 30.000 ga rekenen
							if x > tix_int then			-- Als deelwaarde is groter dan aantal ticks
								x    := x - tix_int;		-- Haal ticks van deelwaarde af
								rpm  := rpm + 1;  		-- RPM ophogen
							else
								stop := '1';				-- Als deelwaarde kleiner is dan aantal ticks berekening stoppen
							end if;
						else
							rpm  := "11001000";			-- Ticks te klein om te berekenen, stop berekening (RPM > 200)
							stop := '1';
						end if;
					else
						rpm  := "00000000";				-- Ticks te groot om te berekenen, stop berekening (RPM < 20)
						stop := '1'  ;
					end if;
				else
					rpm_mem <= rpm;
				end if;
			end if;
		end if;
	end process;




end architecture rtl;
