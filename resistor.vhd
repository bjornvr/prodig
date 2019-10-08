LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity resistor is
	port (
		clock		: in  std_logic;
		areset	: in	std_logic;
		res_busy	: in  std_logic;
		res_data : in  std_logic_vector(7 downto 0);
		res_up	: out std_logic;
		res_down	: out std_logic;
		N_readADC: out std_logic;
		N_convst : out std_logic;
		ADC_data_out:	out std_logic_vector(7 downto 0) := "00000000";
		resistance: out std_logic_vector(3 downto 0)
		);
end entity;

architecture main of resistor is
signal resstart 	: std_logic := '0';
signal pass		 	: std_logic := '0';
signal readADC		: std_logic := '0';
signal ADC_data		: std_logic_vector(7 downto 0) := "00000000";

constant levela		: std_logic_vector(7 downto 0) := "00001010";	-- level 0
constant levelb		: std_logic_vector(7 downto 0) := "00011000";	-- level 1
constant levelc		: std_logic_vector(7 downto 0) := "00100110";	-- level 2
constant leveld		: std_logic_vector(7 downto 0) := "00110100";	-- level 3
constant levele		: std_logic_vector(7 downto 0) := "01000010";	-- level 4
constant levelf		: std_logic_vector(7 downto 0) := "01010000";	-- level 5
constant levelg		: std_logic_vector(7 downto 0) := "01011110";	-- level 6
constant levelh		: std_logic_vector(7 downto 0) := "01101100";	-- level 7

begin

process (clock) is
--Process voor bepalen huidige weerstand
begin
	if areset = '0' then
		--ADC_data <= levela;
		resstart <= '0';
		pass		<= '0';
	else
		if rising_edge(clock) then
			if resstart = '1' then
				N_convst <= '0';
				if pass = '1' then
					if readADC = '0' then
						N_readADC <= '1';
						readADC <= '0';
						pass <= '0';
						resstart <= '0';
					else
						N_readADC <= '0';
						readADC <= '0';
					end if;
				else
					if res_busy = '0' then
						if readADC = '0' then
							ADC_data <= res_data;
							N_readADC <= '1';
							readADC <= '1';
							pass <= '1';
						else
							N_readADC <= '1';
							readADC <= '1';
						end if;
					end if;
				end if;
			else
				N_convst <= '1';
				resstart <= '1';
				if ADC_data < levela then
					resistance <= "0000"; -- Error / level 0 (te bepalen met marge)
				else
					if ADC_data > levele then-- Level 4: te bepalen
						if ADC_data > levelh then -- Level 7: te bepalen
							resistance <= "0111"; --RESISTOR7
						else
							if ADC_data > levelg then -- Level 6: te bepalen
								resistance <= "0110"; --RESISTOR6
							else
								if ADC_data > levelf then -- Level 5: te bepalen
									resistance <= "0101"; --RESISTOR5
								else
									resistance <= "0100";  --RESISTOR4
								end if;
							end if;
						end if;
					else
						if ADC_data > leveld then -- Level 3: te bepalen
							resistance <= "0011"; --RESISTOR3
						else
							if ADC_data > levelc then -- Level 2: te bepalen
								resistance <= "0010"; --RESISTOR2
							else
								resistance <= "0001"; -- Level 1 actief
							end if;
						end if;
					end if;
				end if;
			end if;
		end if;
	end if;
end process;
	ADC_data_out <= res_data;--ADC_data;
end architecture;