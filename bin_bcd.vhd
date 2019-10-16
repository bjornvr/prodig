-- Name:				bin_bcd.vhd
-- Filetype:		VHDL Hardware Discription
-- Date:				15 oktober 2019
-- Update:			Updated with comments for readability
-- Description:	het om zetten van binair naar bcd
-- Author:			Jacco van Egmond for PRODIG-PETERS-PG1
-- State:			Release
-- Error:			-
-- Version:			1.4.1
-- License:			Mozilla Public License Version 2.0
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin_bcd is
	port(
			bin_in 	: in std_logic_vector(7 downto 0);		--het 8 bit binaire getal wat binnen komt
			bcd_out	: out std_logic_vector (11 downto 0)	--het 16 bit bcd getal wat naar het display gaat
			);
end entity bin_bcd;

architecture rtl of bin_bcd is							-- signalen aan gemaakt om te specificeren
	signal binU0 :std_logic_vector (3 downto 0);		-- welke bits naar welke adder gaan om een
	signal binU1 :std_logic_vector (3 downto 0);		-- werkende 8 bit bin naar bcd tekrijgen
	signal binU2 :std_logic_vector (3 downto 0);
	signal binU3 :std_logic_vector (3 downto 0);
	signal binU4 :std_logic_vector (3 downto 0);
	signal binU5 :std_logic_vector (3 downto 0);
	signal binU6 :std_logic_vector (3 downto 0);
	signal bcdU0 :std_logic_vector (3 downto 0);
	signal bcdU1 :std_logic_vector (3 downto 0);
	signal bcdU2 :std_logic_vector (3 downto 0);
	signal bcdU3 :std_logic_vector (3 downto 0);
	signal bcdU4 :std_logic_vector (3 downto 0);
	signal bcdU5 :std_logic_vector (3 downto 0);
	signal bcdU6 :std_logic_vector (3 downto 0);


component add3 is
	port(
		bin	: in std_logic_vector(3 downto 0);
		bcd 	: out std_logic_vector (3 downto 0)
		);
end component;

begin
	binU0 <= '0'& bin_in(7 downto 5);					-- hier wordt aangegeven welke signaal
	binU1 <= bcdU0(2 downto 0) & bin_in(4);			-- er bij welke add3 naar binnen gaat
	binU2 <= bcdU1(2 downto 0) & bin_in (3);			-- kijk naar ontwerp schema bin_bcd
	binU3	<= bcdU2(2 downto 0) & bin_in(2);
	binU4 <= bcdU3(2 downto 0) & bin_in(1);
	binU5 <=	'0' & bcdU0(3) & bcdU1(3) & bcdU2(3) ;
	binU6 <= bcdU5(2 downto 0) & bcdU3(3);

u0: add3															-- aan maken van alle add3 en signalen aan elkaar kopellen
port map(bin => binU0, bcd => bcdU0);

u1: add3
port map(bin => binU1, bcd => bcdU1);

u2: add3
port map(bin => binU2, bcd => bcdU2);

u3: add3
port map(bin => binU3, bcd => bcdU3);

u4: add3
port map(bin => binU4, bcd => bcdU4);

u5: add3
port map(bin => binU5, bcd => bcdU5);

u6: add3
port map(bin => binU6, bcd => bcdU6);

bcd_out <= '0' & '0' & bcdU5(3) & bcdU6 & bcdU4 & bin_in(0);	-- de uitgangen aan geven welke er naar buiten moeten
end rtl;
