library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity areset is
	generic (
		delay : integer := 100;
		resetwait : integer := 100
		);
	port (
		CLK_10kHz : in std_logic; --100us
		input : in std_logic;
		output : out std_logic
	);
end entity;

architecture behavior of areset is

signal a : std_logic := '0'; -- checks for toggle on button

begin

process (CLK_10kHz, input)
variable ffa : integer range 0 to 100 := 100; -- 100 * 100us = 10ms debounce
variable t : integer range 0 to 100 := 0;

begin 
	
	if rising_edge(CLK_10kHz) then
			ffa := ffa+1;
		if ffa >= delay then
			if input = '0' and a = '0' then
				ffa := 0;
				a <= '1';
				t := t+1;
				if t = resetwait then
					output <= '1';
					t := 0;
				end if;
			elsif input = '1' and a = '1' then
				output <= '0';
				ffa := 0;
				a <= '0';
			end if;
		end if;
	end if;
end process;
end architecture behavior;
	