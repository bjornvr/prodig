LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity RPM_counter is
	port (
		clock 		: in std_logic;
		areset 		: in std_logic;
		hall_sens 	: in std_logic;
		calc			: out std_logic;
		tix_mem		: out unsigned(15 downto 0);
		-- Voor de totale omwentelingen
		tot_omwentel : out unsigned(14 downto 0) -- uur lang maximale rpm 200*60= 12000 dus 15 bit = 16384
		);
end entity;

architecture main of RPM_counter is
begin

process (clock, areset) is
variable count : unsigned(15 downto 0) := "0000000000000001";
variable wait_time : integer range 0 to 2000 := 0;
variable stop : std_logic;
variable omwentel : unsigned(14 downto 0);
begin

	if areset = '0' then
		count := "0000000000000001";
		tix_mem <= count;
		-- Voor totale omwentelingen
		omwentel := "000000000000000";
	else
		if hall_sens = '1' then
			omwentel := omwentel + 1;
		else
			-- nothing
		end if;
		
		if rising_edge(clock) then
		
			if hall_sens = '1' and wait_time = 2000 then
				tix_mem <= count;
				count := "0000000000000001";
				calc <= '1';
				wait_time := 0;
				stop := '0';
			else 
				if count > 30000 then
					tix_mem <= count;
					count := "0000000000000001";
					stop := '1';
					calc <= '1';
				else
					if stop = '0' then
						count := count + "0000000000000001";
					end if;
				end if;
				if wait_time /= 2000 then
					wait_time := wait_time + 1;
				end if;
				calc <= '0';
			end if;
		end if;
	end if;	 
	tot_omwentel <= omwentel;
end process;
end architecture;



