library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ontdender is
	generic (
		delay : integer := 100
		);
	port (
		CLK_10kHz : in std_logic; --100us
		input : in std_logic;
		output : out std_logic
	);
end entity;

architecture bhv of ontdender is

signal a : std_logic := '0'; -- checks for toggle on button

begin

process (CLK_10kHz, input)
variable ffa : integer range 0 to 100 := 100; -- 100 * 100us = 10ms debounce

begin 
	
	if rising_edge(CLK_10kHz) then
		if ffa < delay then
			ffa := ffa+1;
		else
			if input = '0' and a = '0' then
				output <= '1';
				ffa := 0;
				a <= '1';
			elsif input = '1' and a = '1' then
				output <= '0';
				ffa := 0;
				a <= '0';
			end if;
		end if;
	end if;
end process;
end architecture bhv;
	