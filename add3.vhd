library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity add3 is
	port(
			bin	: in std_logic_vector(3 downto 0);
			bcd 	: out std_logic_vector (3 downto 0)
			);
end entity add3;

architecture rtl of add3 is

begin
	   with bin(3  downto 0)  select
				--				 6543210
				bcd <=		"0000" when "0000",--0
								"0001" when "0001",--1
								"0010" when "0010",--2
								"0011" when "0011",--3
								"0100" when "0100",--4
								"1000" when "0101",--5
								"1001" when "0110",--6
								"1010" when "0111",--7
								"1011" when "1000",--8
								"1100" when "1001",--9
								"----" when others;
end rtl ;