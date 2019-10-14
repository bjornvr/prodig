--Schrijver:	Kevin Schrama

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gem_RPM is
	port(
		clock : in std_logic;
		areset : in std_logic;
		reset : in std_logic;
		RPM : in unsigned(7 downto 0);
		gem_RPM : out unsigned(7 downto 0);
		start : in std_logic
		);
end entity;

architecture rtl of gem_RPM is

signal tot_RPM : unsigned(11 downto 0);
signal tot_RPM_int : unsigned(11 downto 0);
signal count_RPM : unsigned(7 downto 0);
signal gem_RPM_int : unsigned(7 downto 0);
signal wait_gem_RPM : integer range 0 to 10000;		-- interval RPM meting voor gem_RPM
signal stop : std_logic;

begin
	process(clock, RPM, areset)
	begin
		if areset = '0' then						-- asynchrone reset
			tot_RPM <= "000000000000";
			tot_RPM_int <= "000000000000";
			count_RPM <= "00000000";
			gem_RPM_int <= "00000000";
			stop <= '1';
			wait_gem_RPM <= 0;
		else
			if rising_edge(clock) then
				if wait_gem_RPM = 10000 then		-- interval van 1 seconde
					wait_gem_RPM <= 0;
				else 
					wait_gem_RPM <= wait_gem_RPM + 1;
				end if;
				if reset = '0' then 				-- wanneer de reset op de hometrainer wordt ingedrukt
					tot_RPM <= "000000000000" + RPM;
					tot_RPM_int <= "000000000000";
					count_RPM <= "00000000";
					gem_RPM_int <= "00000000";
					stop <= '1';
				else
					if wait_gem_RPM = 10000 and start = '1' then		-- als de hall_sens wordt geactiveerd wordt de rpm bij totale rpm opgeteld en daarna 
						tot_RPM <= tot_RPM + RPM;		-- gedeeld door de hoevaak de rpm er bij opgeteld is om zo het gemiddelde rpm te berekenen
						count_RPM <= count_RPM + 1;
						stop <= '0';
						tot_RPM_int <= tot_RPM;
						gem_RPM_int <= "00000000";
					elsif stop = '0' then
						if tot_RPM_int >= count_RPM then
							tot_RPM_int <= tot_RPM_int - count_RPM;
							gem_RPM_int <= gem_RPM_int + 1;
						else 
							stop <= '1';
							gem_RPM <= gem_RPM_int;
						end if;
					end if;
				end if;
			end if;
		end if;
	end process;
	
end architecture;














