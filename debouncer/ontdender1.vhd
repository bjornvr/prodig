library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ontdender1 is
	port 
	(
		CLK_10kHz : in std_logic;
		input : in std_logic;
		areset : in std_logic;
		output : out std_logic
	);
end entity;

architecture bhv of ontdender1 is

begin

process (CLK_10kHz, input, areset)
variable ffa : integer range 0 to 3000;

type state_type is (idle, wait_time, aan);
variable state : state_type := idle;

begin 

	if areset = '0' then
		state := idle;
		ffa := 0;
		output <= '1'; 
	elsif  rising_edge(CLK_10kHz) then
		case state is
			when idle =>
				if input = '0' then
					state := idle;
				else
					state := wait_time;
				end if;
				output <= '1';
				ffa := 0;
			when wait_time =>
				if ffa = 2500 then
					if input = '0' then
						state := idle;
					elsif input = '1' then
						state := aan;
					end if;
				else						
					ffa := ffa+1;
				end if;
			when aan =>
				if input = '0' then
					state := wait_time;
				else
					state := aan;
				end if;
				output <= '0';
				ffa := 0;
		end case;		
	end if;
	
	
end process;
end bhv;