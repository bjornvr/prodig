LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity prodig_RPM_counter is
	port (
		clock : in std_logic;
		areset : in std_logic;
		hall_sens : in std_logic;
		tix_mem : out unsigned(15 downto 0)
		);
end entity;

architecture main of prodig_RPM_counter is

--signal count : unsigned(15 downto 0) := "0000000000000000";

begin

process (clock) is
variable count : unsigned(15 downto 0) := "0000000000000001";
variable wait_time : integer range 0 to 2000 := 0;
begin

	if areset = '0' then
		count := "0000000000000001";
	else
	
		if rising_edge(clock) then
		
			if hall_sens = '1' and wait_time = 2000 then
				tix_mem <= count;
				count := "0000000000000001";
				wait_time := 0;
			else 
				if count > 30000 then
					count := "0000000000000001";
				else
					count := count + "0000000000000001";
				end if;
				if wait_time /= 2000 then
					wait_time := wait_time + 1;
				end if;
			end if;
		end if;
	end if;
end process;

--begin
--	if areset = '0' then
--		count <= "0000000000000000";
--	else
--		if rising_edge(clock) then
--			if hall_sens = '0' then
--				tix_mem <= count;
--				count <= "0000000000000000";
--			else
--				count <= count + 1;
--			end if;
--		end if;
--	end if;


end architecture;