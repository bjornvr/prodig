-- Name:				Prodig_7_seg_decoder.vhd
-- Filetype:		VHDL Hardware Discription
-- Date:				15 october 2019
-- Update:			Updated with comments for readability
-- Description:	het om zetten van 8 bit ingang naar 7 segment display
-- Author:			Jacco van Egmond for PRODIG-PETERS-PG1
-- State:			Release
-- Error:			-
-- Version:			1.4.1
-- License:			Mozilla Public License Version 2.0


-- bigin bin_bcd 
-- kijk voor werking van dit stuk naar de bin_bcd file
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity prodig_7_seg_decoder is
	port(
			rpm_mem 	: in unsigned(7 downto 0);
			bcd_hun 	: out std_logic_vector (6 downto 0);
			bcd_ten	: out std_logic_vector (6 downto 0); 
			bcd_one	: out std_logic_vector (6 downto 0)
			);
end entity prodig_7_seg_decoder;

architecture rtl of prodig_7_seg_decoder is
	signal binU0 :std_logic_vector (3 downto 0);
	signal binU1 :std_logic_vector (3 downto 0);
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
	signal bcd   :std_logic_vector(11 downto 0);
	
component add3 is
	port(
		bin	: in std_logic_vector(3 downto 0);
		bcd 	: out std_logic_vector (3 downto 0)
		);
end component;

begin
	binU0 <= std_logic_vector(unsigned('0' & rpm_mem(7 downto 5)));
	binU1 <= bcdU0(2 downto 0) & rpm_mem(4);
	binU2 <= bcdU1(2 downto 0) & rpm_mem (3);
	binU3	<= bcdU2(2 downto 0) & rpm_mem(2);
	binU4 <= bcdU3(2 downto 0) & rpm_mem(1);
	binU5 <=	'0' & bcdU0(3) & bcdU1(3) & bcdU2(3) ;
	binU6 <= bcdU5(2 downto 0) & bcdU3(3);

u0: add3
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


 bcd <= '0' & '0' & bcdU5(3) & bcdU6 & bcdU4 & rpm_mem(0);
	-- end bin_bcd
	

		with bcd(3  downto 0)  select						-- hierwordt aan gegeven voor welk getal
				--				 6543210							-- welke onderdelen van het 7 segment display
				bcd_one <=	"1000000" when "0000",--0	-- aanmoet om het gewenste getal te kunnen aflezen
								"1111001" when "0001",--1
								"0100100" when "0010",--2
								"0110000" when "0011",--3
								"0011001" when "0100",--4
								"0010010" when "0101",--5
								"0000010" when "0110",--6
								"1111000" when "0111",--7
								"0000000" when "1000",--8
								"0010000" when "1001",--9
								"-------" when others;
		
		with bcd(7  downto 4)  select
				--				 6543210
				bcd_ten <=	"1000000" when "0000",--0
								"1111001" when "0001",--1
								"0100100" when "0010",--2
								"0110000" when "0011",--3
								"0011001" when "0100",--4
								"0010010" when "0101",--5
								"0000010" when "0110",--6
								"1111000" when "0111",--7
								"0000000" when "1000",--8
								"0010000" when "1001",--9
								"-------" when others;

		with bcd(11  downto 8)  select
				--			 	 6543210
				bcd_hun <=	"1000000" when "0000",--0
								"1111001" when "0001",--1
								"0100100" when "0010",--2
								"0110000" when "0011",--3
								"0011001" when "0100",--4
								"0010010" when "0101",--5
								"0000010" when "0110",--6
								"1111000" when "0111",--7
								"0000000" when "1000",--8
								"0010000" when "1001",--9
								"-------" when others;
			


end rtl ;