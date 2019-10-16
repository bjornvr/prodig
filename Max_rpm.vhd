-- Name:				Max_rpm.vhd
-- Filetype:		VHDL Hardware Discription
-- Date:				11 oktober 2019
-- Update:			Updated with comments for readability
-- Description:	Maximale RPM calculator
-- Author:			Jacco van Egmond for PRODIG-PETERS-PG1
-- State:			Release
-- Error:			-
-- Version:			1.4.1
-- License:			Mozilla Public License Version 2.0

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity max_rpm is
	port (
			areset : in std_logic;								-- Uitwendige reset voor het volledige systeem
			reset  : in std_logic;						 		-- Interne reset geregeld via de druk knop op de fiets
			clk 	 : in std_logic;								-- Clock uit de prescaler die loopt op 10kHz
			rpm_in : in unsigned (7 downto 0);    		   -- Het huidige RPM dat wordt doorgegeven vanuit de RPM_counter
			rpm_max : out std_logic_vector (7 downto 0); -- Het maximale RPM dat hier wordt vastgesteld
			time_save: out std_logic;							-- Het moment waarop eht maximale RPM is vastgesteld
			start : in std_logic									-- De start die wordt geregeld via de druk knop op de fiets
			);
end entity max_rpm;

architecture rtl of max_rpm is								-- Begin van Max_rpm vaststellen
	signal rpm_int : std_logic_vector(7 downto 0):= "00000000";					-- Intern signaal voor de RPM
begin
	process (clk, areset)
		variable rpm_max_int : std_logic_vector (7 downto 0) := "00000000";	-- Interne variabele voor de Maximale RPM
		begin

		if areset = '0' then											-- Als de reset actief is wordt alles op 0 gezet
			rpm_max <= "00000000";
			rpm_max_int := "00000000";
			rpm_int <= "00000000";
			time_save <= '0';
		elsif rising_edge(clk) then								-- Op opgaande klokflank
			rpm_int <= std_logic_vector(rpm_in);				-- Waarde voor rpm_int wordt geinitialiseerd met de waarde uit rpm_in
			if reset = '0' then										-- Als reset van fiets actief is worden alle waarden op 0 gezet
				rpm_max <= "00000000";
				rpm_int <= "00000000";
				rpm_max_int := "00000000";
			elsif rpm_int > rpm_max_int and start = '1' then-- Als rpm_int groter is als rpm_max_int en start=1
				rpm_max_int := rpm_int;								-- Waarde van rpm_int wordt in rpm_max_int gezet
				time_save <= '1';										-- time_save wordt op 1 gezet zodat de tijd opgeslagen wordt op het moment van rpm_int > rpm_max_int
			else
				time_save <= '0';										-- Anders time_save = 0
			end if;
				rpm_max <= rpm_max_int;								-- Aan het einde wordt het interne signaal van rpm_max_int in rpm_max geplaatst om naar buiten te sturen
		end if;
	end process;
end rtl;
