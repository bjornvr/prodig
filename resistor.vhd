-- Filename:		Resistor.vhd
-- Filetype:		VHDL Hardware Discription
-- Date:				13 oktober 2019
-- Update:			Updated with comments for readability
-- Description:	VHDL Description of Display.vhd to control the 16x4 display
-- Author:			Bjoern van Rozelaar for PRODIG-PETERS-PG1
-- State:			Release
-- Error:			-
-- Version:			1.3.1
-- License:			Mozilla Public License Version 2.0

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity resistor is
	port (
		clock		: in  std_logic;	--Systeem klok van 10 kHz
		areset	: in	std_logic;	--Asynchronous reset
		BUT_UP	: in	std_logic;	--FROM buttons (Weerstand omhoog knop)
		BUT_DOWN : in	std_logic;	--FROM buttons	(Weerstand omlaag knop)
		res_busy	: in  std_logic;	--FROM ADC		(Busy flag, ADC aan het meten)
		res_data : in  std_logic_vector(7 downto 0); --FROM ADC (ADC-data uit adc)
		res_up	: out std_logic;	--TO H-bridge	(Weerstand omhoog aansturing)
		res_down	: out std_logic;	--TO H-bridge	(Weerstand omlaag aansturing)
		N_readADC: out std_logic;	--TO ADC			(Read Flag to ADC)
		N_convst : out std_logic;	--TO ADC			(Start converion of input ADC)
		ADC_data_out:	out std_logic_vector(7 downto 0) := "00000000";	-- DEBUG stuurt weerstandsWAARDE naar buiten
		resistance: out std_logic_vector(3 downto 0) 						-- Intern signaal weerstandslevel
		);
end entity;

architecture main of resistor is
signal resstart 	: std_logic := '0';											-- Interne flag voor gestart ADC proces
signal readADC		: std_logic := '0';											-- Intern signaal voor leesmoduss ADC
signal ADC_data	: std_logic_vector(7 downto 0) := "00000000";		-- Intern signaal voor huidige ADC data
signal restarget	: std_logic_vector(3 downto 0) := "0010";				-- Target level
signal resist_int	: std_logic_vector(3 downto 0) := "0000";				-- Current level

constant levela		: std_logic_vector(7 downto 0) := "00001111";	-- level 0 / 15
constant levelb		: std_logic_vector(7 downto 0) := "00011000";	-- level 1 / 24
constant levelc		: std_logic_vector(7 downto 0) := "00100110";	-- level 2 / 38
constant leveld		: std_logic_vector(7 downto 0) := "00110100";	-- level 3 / 52
constant levele		: std_logic_vector(7 downto 0) := "01000010";	-- level 4 / 66
constant levelf		: std_logic_vector(7 downto 0) := "01010000";	-- level 5 / 80
constant levelg		: std_logic_vector(7 downto 0) := "01011110";	-- level 6 / 94
constant levelh		: std_logic_vector(7 downto 0) := "01100101";	-- level 7 / 101

begin

process (clock, areset) is
variable pass		: integer range 0 to 3 := 0;		-- Intern signaal welke aangeeft in welke stap de ADC zit
variable reset		: integer range 0 to 1 := 0;		-- Intern singaal voor reset flag

--Process voor bepalen huidige weerstand
begin
	if areset = '0' then
--		ADC_data <= levela;
		resstart <= '0';										-- Zet alle flaggen op beginwaarden en start reset
		pass		:= 0;
		readADC	<= '0';
		res_up	<= '1';
		res_down	<= '1';
		N_readADC<= '1';
		N_convst	<= '0';
		reset		:= 1;
		restarget<= "0010";									-- Consistent op level 2 na reset
	else
		if rising_edge(clock) then							-- Als klokpuls omhoog
			if reset		= 1 then								-- Als er gereset moet worden, zet uit leesstand
				N_readADC <= '1';
				if res_busy = '0' then						-- Als BUSY flag niet wordt gestuurd
					if pass = 0 then							-- Als stap 0: Zet in  leesstand en in stap 1
						N_readADC <= '0';
						pass := 1;
					elsif pass = 1 then						-- Als stap 1: Zet uit leesstand en in stap 2
						N_readADC <= '1';
						pass := 2;
					elsif pass = 2 then						-- Als stap 2: Zet in  leesstand en in stap 3
						N_readADC <= '0';
						pass := 3;
					elsif pass = 3 then						-- Als stap 3: Zet uit leesstand, in stap 0 en zet reset uit
						N_readADC <= '1';
						pass := 0;
						reset := 0;
					end if;
				end if;
			elsif resstart = '1' then						-- Als Weerstandbepaling gestart
				N_convst <= '0';								-- Stop conversiepuls
				if pass > 0 then								-- Als in stap 1
					if readADC = '0' then					-- Als ADC in leesstand
						N_readADC <= '1';						-- Zet ADC uit leesstand
						readADC <= '0';
						pass := 0;								-- Zet in stap 0
						resstart <= '0';
					else
						N_readADC <= '0';						-- Zet ADC in leesstand
						readADC <= '0';
					end if;
				else
					if res_busy = '0' then					-- Als BUSY flag niet wordt gestuurd
						if readADC = '0' then				-- Als ADC in leesstand staat
							ADC_data <= res_data;			-- Lees ADC waarden in
							N_readADC <= '1';					-- Zet ADC uit leesstand
							readADC <= '1';
							pass := 1;							-- Zet in stap 1
						else
							N_readADC <= '1';					-- Zet ADC uit leesstand
							readADC <= '1';
						end if;
					end if;
				end if;
			else													-- Weerstandbepaling starten en huidige weerstand level bepalen
				N_convst <= '1';								-- Start conversiepuls
				resstart <= '1';
				if ADC_data < levela then					-- Alleen aanpassen weerstand indien weerstand groter dan minimum
					resist_int <= "0000"; 					-- Error / level 0 (te bepalen met marge)
				else
					if ADC_data > levele then				-- Level 4: Als hoger dan L4
						if ADC_data > levelh then 			-- Level 7: Als hoger dan L7
							resist_int <= "0111"; 			-- Level 7 actief
						else
							if ADC_data > levelg then 		-- Level 6: Als hoger dan L6
								resist_int <= "0110"; 		-- Level 6 actief
							else
								if ADC_data > levelf then	-- Level 5: Als hoger dan L5
									resist_int <= "0101";	-- Level 5 actief
								else								-- Blijft over Level 4
									resist_int <= "0100";	-- Level 4 actief
								end if;
							end if;
						end if;
					else
						if ADC_data > leveld then 			-- Level 3: Als hoger dan L3
							resist_int <= "0011"; 			-- Level 3 actief
						else
							if ADC_data > levelc then 		-- Level 2: Als hoger dan L2
								resist_int <= "0010"; 		-- Level 2 actief
							else									-- Blijft over Level 1
								resist_int <= "0001"; 		-- Level 1 actief
							end if;
						end if;
					end if;
				end if;
				if BUT_UP = '0' and BUT_DOWN = '0' then		-- Als beide knoppen doe niets en stop met aanpassen weerstand
					restarget <= resist_int;
				elsif BUT_UP = '0' and resist_int < "0111" then					-- Als OMHOOG, weerstandsdoel een level omhoog
					restarget <= std_logic_vector(unsigned(resist_int) + 1);
				elsif BUT_DOWN = '0' and resist_int > "0000" then				-- Als OMLAAG, weerstandsdoel een level omlaag
					restarget <= std_logic_vector(unsigned(resist_int) - 1);
				end if;
				if resist_int > restarget then			-- Als weerstandswaarde lager dan huidige waarde, weerstand verlagen
					res_up	<= '0';
					res_down	<= '1';
				elsif resist_int < restarget then		-- Als weerstandswaarde hoger dan huidige waarde, weerstand verhogen
					res_up	<= '1';
					res_down	<= '0';
				else												-- Als weerstandswaarde gelijk, doe niets en stop verandering
					res_up	<= '1';
					res_down	<= '1';
				end if;
			end if;
		end if;
	end if;

end process;
	ADC_data_out <= res_data;								-- DEBUG ruwe weerstandswaarde naar buiten sturen
	resistance <= resist_int;								-- Intern signaal weerstandslevel koppelen naar display
end architecture;
