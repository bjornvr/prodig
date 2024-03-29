library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity timer is
generic(
	ClockFrequencyHz : integer := 10000
	);
	
port(
    clk     		: 	in std_logic;
    areset    		: 	in std_logic;
	 reset			:  in std_logic;
	 start_stop		:  in std_logic;
	 seconds			:  out std_logic_vector(5 downto 0);
    minutes 		:  out std_logic_vector(5 downto 0);
	 seconds_max	:	out std_logic_vector(5 downto 0);
	 minutes_max	:	out std_logic_vector(5 downto 0);
	 rpm_max			:	in std_logic
	 );
end entity;
 
architecture rtl of timer is
 
    signal ticks : integer:=0;
	 signal seconds_int : unsigned (5 downto 0):=(others => '0');
	 signal minutes_int : unsigned(5 downto 0):=(others => '0');
begin
 
    process(clk, areset) is
    begin
		  if areset = '0' then
						 ticks   <= 0;
						 seconds_int <=(others => '0');
						 minutes_int <=(others => '0');
						 seconds_max <=(others => '0');
						 minutes_max <=(others => '0');
        elsif rising_edge(clk) then
				if reset = '1' then
					if start_stop = '1' then
						if ticks = clockFrequencyHz - 1 then
							ticks <= 0;
	 
							-- elke minuut
							if seconds_int = 59 then
								seconds_int <= (others => '0');

								if minutes_int = 59 then
									minutes_int <= (others => '0');
								else
									minutes_int <= minutes_int + 1;
								end if;
							else
								seconds_int <= seconds_int + 1;
							end if;
						else
							  ticks <= ticks + 1;
						end if;
					end if; 
				else
					--reset op button druk
					seconds_int <= (others => '0');
					minutes_int <= (others => '0');
					seconds_max <= (others => '0');
					minutes_max <= (others => '0');
				end if;
				if rpm_max = '1' then
					minutes_max <= std_logic_vector(minutes_int);
					seconds_max	<= std_logic_vector(seconds_int);
				end if;
			seconds <= std_logic_vector(seconds_int);
		   minutes <= std_logic_vector(minutes_int);
        end if;
		   
		
		
    end process;
 
end architecture;