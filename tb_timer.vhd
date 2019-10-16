library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_timer is
end tb_timer;

architecture tb of tb_timer is
	signal clk    			: 	std_logic;
   signal areset    		: 	std_logic; 
	signal seconds			:  std_logic_vector(5 downto 0);
   signal minutes 		:  std_logic_vector(5 downto 0);
	signal seconds_max	:	std_logic_vector(5 downto 0);
	signal minutes_max	:	std_logic_vector(5 downto 0);
	signal rpm_max			:	std_logic;
	
component timer
	port(
    clk     		: 	in std_logic;
    areset    		: 	in std_logic;
	 seconds 		: 	inout std_logic_vector(5 downto 0);
    minutes 		: 	inout std_logic_vector(5 downto 0);
	 seconds_max	:	out std_logic_vector(5 downto 0);
	 minutes_max	:	out std_logic_vector(5 downto 0);
	 rpm_max			:	in std_logic
	 );
end component;

begin
	dut: timer
	port map (
		clk 			=> 	clk,
		areset 		=> 	areset,
		seconds 		=> 	seconds,
		minutes 		=>		minutes,
		seconds_max =>		seconds_max,
		minutes_max	=>		minutes_max,
		rpm_max		=>		rpm_max		
	);

clockgen : process is
begin
	clk <= '0';
	wait for 5 ns;
	clk <= '1';
	wait for 5 ns;
end process clockgen;

gen : process is
begin
	rpm_max <= '0';
	areset <= '1';
	wait for 100 ns;
	areset <= '1';
	wait for 10 ms;
	rpm_max <= '1';
	wait for 100 ns; 
	rpm_max <= '0';
	wait;
end process gen;

end tb;