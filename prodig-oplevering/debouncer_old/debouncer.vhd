library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity knoppen is
	port 
	(
		CLK_10kHz : in std_logic;
		input : in std_logic;
		output : out std_logic
	);
end entity;

architecture bhv of knoppen is

signal ffa : integer range 0 to 31;
begin

process (CLK_10kHz, input)
begin 
	
	if CLK_10kHz'event and CLK_10kHz = '1' then
		if input = '1' then
			if ffa < 31 then -- de_debounce_length*2
				ffa <= ffa + 1;
			end if;
		else
			if ffa > 0 then
				ffa <= ffa - 1;
			elsif ffa > 15 then -- de_debounce_length = 16
				ffa <= 31;
			end if;
		end if;
	end if;
	
	if ffa > 15 then -- de_debounce_length = 15
		output <= '1';
	else
		output <= '0';
	end if;
end process;
end bhv;
