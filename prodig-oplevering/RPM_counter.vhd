LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity RPM_counter is
	port (
		clock 		: in std_logic;
		areset 		: in std_logic;
		reset 		: in std_logic;
		hall_sens 	: in std_logic;
		calc			: out std_logic;
		tix_mem		: out unsigned(15 downto 0);
		-- Voor de totale omwentelingen
		start			: in std_logic;
		tot_omwentel99 : out std_logic_vector(7 downto 0); -- telt tot 99 en begint daarna weer vanaf 0
		tot_omwentel255 : out std_logic_vector(7 downto 0) -- wordt groter met 1 zodra de teller van omwentel99 opnieuw begint
		);
end entity;



architecture main of RPM_counter is
signal hal_state : std_logic;

begin

process (clock, areset) is
variable count : unsigned(15 downto 0) := "0000000000000001";
variable wait_time : integer range 0 to 2000 := 0;
variable stop : std_logic;
variable omwentel99 : unsigned(7 downto 0);
variable omwentel255 : unsigned(7 downto 0);
begin

	if areset = '0' then
		count := "0000000000000001";
		tix_mem <= count;
		-- Reset de totale omwentelingen
		omwentel99 := "00000000"; -- eentje om tot 99 te tellen
		omwentel255 := "00000000"; -- eentje om tot 255 te tellen
	else
		if rising_edge(clock) then
			if hall_sens = '1' and hal_state = '0'  and start = '1' then -- zodra hallsensor langsgekomen is wordt activeert de teller
					omwentel99 := omwentel99 + 1; -- teller verhoogt met 1 zodra hallsensor geactiveerd is
				if omwentel99 = "01100100" then -- Kijkt of omwentel99 de waarde 99 heeft bereikt
					omwentel255 := omwentel255 + 1; -- vergroot de waarde van omwentel255 met 1 zodra de waarde 99 bereikt is in omwentel99
					omwentel99 := "00000000"; -- Reset omwentel99 zodra de waarde 99 bereikt is
				elsif omwentel255 = "11111111" then -- Kijkt of omwentel255 de maximale waarde heeft bereikt
					omwentel255 := "00000000"; -- Reset omwentel255 zodra de maximale waarde ervan is bereikt
				end if;
			elsif reset = '0' then
				omwentel99 := "00000000"; -- eentje om tot 99 te tellen
				omwentel255 := "00000000"; -- eentje om tot 255 te tellen
			end if;
			hal_state <= hall_sens;
		
		
		
			if hall_sens = '1' and wait_time = 2000 then
				tix_mem <= count;
				count := "0000000000000001";
				calc <= '1';
				wait_time := 0;
				stop := '0';
			else 
				if count > 30000 then
					tix_mem <= count;
					count := "0000000000000000";
					stop := '1';
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
	tot_omwentel99 <= std_logic_vector(omwentel99);
	tot_omwentel255 <= std_logic_vector(omwentel255);
end process;
end architecture;