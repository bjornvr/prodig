LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity prodig_RPM_counter is
	port (
		clock : in std_logic;
		areset : in std_logic;
		hall_sens : in std_logic;
		tix_mem : out unsigned(15 downto 0) := "0000000000000001"
		);
end entity;

architecture main of prodig_RPM_counter is

signal count : unsigned(15 downto 0) := "0000000000000001";
signal wait_timer : integer range 0 to 10000 := 0;
signal wait_reset : std_logic;

begin

process (clock) is



begin

	if rising_edge(clock) then
		if areset = '0' then 
			count <= "0000000000000001";
			wait_timer <= 0;
		else 
			if hall_sens = '1' and wait_reset = '0' then
				tix_mem <= count;
				count <= "0000000000000001";
				wait_reset <= '1';
			else
				count <= count + 1;
			end if;
			if hall_sens = '1' and wait_timer < 10000 then
				wait_timer <= wait_timer + 1;
			else
				wait_timer <= 0;
				wait_reset <= '0';
			end if;
		end if;
	end if;
end process;

end architecture;