LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity resistor is
	port (
		clock		: in  std_logic;		--10 kHz clock
		areset		: in std_logic;
		BUT_UP		: in std_logic;	--FROM buttons (Weerstand omhoog)
		BUT_DOWN 	: in std_logic;	--FROM buttons (Weerstand omlaag)
		res_busy	: in  std_logic;		--FROM ADC (BUSY flag vanuit ADC)
		res_data 	: in  std_logic_vector(7 downto 0);
		res_up		: out std_logic; 	--TO H-bridge
		res_down	: out std_logic; 		--TO H-bridge
		N_readADC	: out std_logic;	--TO ADC (Zet de ADC in leesmodus)
		N_convst 	: out std_logic;	--TO ADC (Start het omzetten in de ADC)
		ADC_data_out: out std_logic_vector(7 downto 0) := "00000000";	--DEBUG ADC data raw link
		resistance	: out std_logic_vector(3 downto 0)						--Intern signaal met weerstandslevel voor display
		);
end entity;

architecture main of resistor is
signal resstart 	: std_logic := '0';											--Interne flag voor gestarte ADC proces
signal pass		 	: std_logic := '0';											--Houdt bij in welke stap de ADC zit
signal readADC		: std_logic := '0';											--Intern signaal voor leesmodus ADC
signal ADC_data	: std_logic_vector(7 downto 0) := "00000000";		--Signaal voor huidige ADC data
signal restarget	: std_logic_vector(3 downto 0) := "0010";				--Target level
signal resist_int	: std_logic_vector(3 downto 0) := "0000";				--Current level

constant levela		: std_logic_vector(7 downto 0) := "00001111";	-- level 0 / 15
constant levelb		: std_logic_vector(7 downto 0) := "00011000";	-- level 1 / 24
constant levelc		: std_logic_vector(7 downto 0) := "00100110";	-- level 2 / 38
constant leveld		: std_logic_vector(7 downto 0) := "00110100";	-- level 3 / 52
constant levele		: std_logic_vector(7 downto 0) := "01000010";	-- level 4 / 66
constant levelf		: std_logic_vector(7 downto 0) := "01010000";	-- level 5 / 80
constant levelg		: std_logic_vector(7 downto 0) := "01011110";	-- level 6 / 94
constant levelh		: std_logic_vector(7 downto 0) := "01100101";	-- level 7 / 105

begin

process (clock) is
--Process voor bepalen huidige weerstand
begin
	if areset = '0' then										--Voer een reset uit
		--ADC_data <= levela;
		resstart <= '0';
		pass		<= '0';
--		readADC	<= '1';
		res_up	<= '1';
		res_down	<= '1';
--		N_readADC<= '1';
		N_convst	<= '0';
	else
		if rising_edge(clock) then							--Als klok RISING EDGE hoog
			if resstart = '1' then							--En weerstandsbepaling gestart
				N_convst <= '0';								--Stop conversiepuls
				if pass = '1' then
					if readADC = '0' then					--Als ADC in leesstand
						N_readADC <= '1';						--Zet ADC uit leesstand
						readADC <= '0';
						pass <= '0';							--Zet in stap 0
						resstart <= '0';
					else
						N_readADC <= '0';						--Zet ADC in leesstand
						readADC <= '0';
					end if;
				else
					if res_busy = '0' then					--Als BUSY flag is niet waar
						if readADC = '0' then				--Als ADC in leesstand
							ADC_data <= res_data;			--Lees ADC waarden in
							N_readADC <= '1';					--Zet ADC uit leesstand
							readADC <= '1';
							pass <= '1';						--Zet in stap 1
						else
							N_readADC <= '1';					--Zet ADC uit leesstand
							readADC <= '1';
						end if;
					end if;
				end if;
			else 													--Weerstandsbepaling starten en huidige weerstand level bepalen
				N_convst <= '1';								--Start conversiepuls
				resstart <= '1';
				if ADC_data < levela then					--Alleen aanpassen weerstand indien
					resist_int <= "0000"; 					-- Error / level 0 (te bepalen met marge)
				else
					if ADC_data > levele then				-- Level 4: te bepalen
						if ADC_data > levelh then			-- Level 7: te bepalen
							resist_int <= "0111";			--RESISTOR7
						else
							if ADC_data > levelg then 		-- Level 6: te bepalen
								resist_int <= "0110"; 		--RESISTOR6
							else
								if ADC_data > levelf then	-- Level 5: te bepalen
									resist_int <= "0101";	--RESISTOR5
								else
									resist_int <= "0100";	--RESISTOR4
								end if;
							end if;
						end if;
					else
						if ADC_data > leveld then		-- Level 3: te bepalen
							resist_int <= "0011";		--RESISTOR3
						else
							if ADC_data > levelc the	-- Level 2: te bepalen
								resist_int <= "0010";	--RESISTOR2
							else
								resist_int <= "0001";	-- Level 1 actief
							end if;
						end if;
					end if;
				end if;
				if BUT_UP = '0' and BUT_DOWN = '0' then --Als beide knoppen doe niets en stop met aanpassen weerstand
					restarget <= resist_int;
				elsif BUT_UP = '0' and resist_int < "0111" then		--Als OMHOOG, weerstandsdoel een level omhoog
					restarget <= std_logic_vector(unsigned(resist_int) + 1);
				elsif BUT_DOWN = '0' and resist_int > "0000" then	--Als OMLAAG, weerstandsdoel een level omlaag
					restarget <= std_logic_vector(unsigned(resist_int) - 1);
				end if;
				if resist_int > restarget then		--Als weerstandsdoel lager dan huidige weerstand, weerstand verlagen
					res_up	<= '0';
					res_down	<= '1';				
				elsif resist_int < restarget then	--Als weerstandsdoel hoger dan huidige weerstand, weerstand verhogen
					res_up	<= '1';
					res_down	<= '0';				
				else											--Als weerstand gelijk aan weerstandsdoel, doe niets en stop verandering	
					res_up	<= '1';
					res_down	<= '1';
				end if;				
			end if;
		end if;
	end if;

end process;
	ADC_data_out <= res_data;	--DEBUG ruwe weerstandswaarde naar buiten sturen;
	resistance <= resist_int;	--Intern signaal weerstandslevel koppelen naar display
end architecture;