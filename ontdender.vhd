library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ontdender is
generic(
	pulse: boolean			 := true;
	active_low: boolean	 := true;
	delay: integer 		 := 50000
);
port(
	clock: 	   in std_logic;
	areset:   	in std_logic; --Active Low
	input:     	in std_logic;
	output: 		out std_logic
);
end entity;

architecture arch of ontdender is
	signal sample: std_logic_vector(9 downto 0) := "0001111000";
	signal sample_pulse: std_logic := '0';
	
begin

process(clock) --Clock Divider
variable count: integer := 0;
begin
	if (clock'event and clock = '1') then
		if (areset = '0') then
			count := 0;
			sample_pulse <= '0';
		else
			if (count < delay) then
				count := count + 1;
				sample_pulse <= '0';
			else
				count := 0;
				sample_pulse <= '1';
			end if;
		end if;
	end if;
end process;

process(clock) --Sampling Process
begin
	if (clock'event and clock = '1') then
		if (areset = '0') then
			sample <= (others => input);
		else
			if (sample_pulse = '1') then
				sample(9 downto 1) <= sample(8 downto 0); -- Left Shift
				sample(0) <= input;
			end if;
		end if;
	end if;
end process;

process(clock) --Button Debouncing 
variable flag: std_logic := '0';
begin
	if (clock'event and clock = '1') then
	
		if (areset = '0') then 
			output <= '0';
			
		else
		
			if (active_low) then
			
				if (pulse) then
				
					if (sample = "0000000000") then --Active Low Pulse Out
						if (flag = '0') then
							output <= '1';
							flag := '1';
						else
							output <= '0';
						end if;
					else
						output <= '0';
						flag := '0';
					end if;
					
				else
				
					if (sample = "0000000000") then --Active Low Constant Out
						output <= '1';
					elsif (sample = "1111111111") then
						output <= '0';
					end if;
					
				end if;
				
			else
			
				if (pulse) then
				
					if (sample = "1111111111") then --Active High Pulse Out
						if (flag = '0') then
							output <= '1';
							flag := '1';
						else
							output <= '0';
						end if;
					else
						output <= '0';
						flag := '0';
					end if;
					
				else
				
					if (sample = "1111111111") then --Active High Constant Out
						output <= '1';
					elsif (sample = "0000000000") then
						output <= '0';
					end if;
					
				end if;
			end if;
		end if;
	end if;
end process;

end arch;