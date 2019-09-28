-- Filename : tb_moore_machine.vhd
-- Filetype : VHDL testbench code (behavior)
-- Date : 20-06-2011

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_kookwekker is
end tb_kookwekker;

architecture testbench of tb_kookwekker is
	signal reset 		: STD_LOGIC;
	signal clock 		: STD_LOGIC;
	signal start_stop : STD_LOGIC;
	signal mins 		: STD_LOGIC;
	signal time_zero 	: STD_LOGIC;
	signal secs 		: STD_LOGIC;
	signal ready 		: STD_LOGIC;
   signal mins_up		: STD_LOGIC;
   signal secs_up		: STD_LOGIC;
   signal countdown 	: STD_LOGIC;
   signal clear 		: STD_LOGIC;

component kookwekker
    PORT (
        reset 			: IN STD_LOGIC := '0';
        clock 			: IN STD_LOGIC;
        start_stop 	: IN STD_LOGIC := '0';
        mins 			: IN STD_LOGIC := '0';
        time_zero 	: IN STD_LOGIC := '0';
        secs 			: IN STD_LOGIC := '0';
        ready 			: OUT STD_LOGIC;
        mins_up 		: OUT STD_LOGIC;
        secs_up 		: OUT STD_LOGIC;
        countdown 	: OUT STD_LOGIC;
        clear 			: OUT STD_LOGIC		
    );
end component;

begin
		dut : kookwekker
		port map (
			reset => reset,
			clock => clock,
			start_stop => start_stop,
			mins => mins,
			time_zero => time_zero,
			secs => secs,
			ready => ready,
			mins_up => mins_up,
			secs_up => secs_up,
			countdown => countdown,
			clear => clear
			);

clockgen : process is
begin
	clock <= '0';
	wait for 100 ns;
	clock <= '1';
	wait for 100 ns;
end process clockgen;
 
 
gen : process is
begin
 reset <= '1';
 wait for 100 ns;
 reset <= '0';
 wait until clock = '1';
 
 
 reset <= '0';
 start_stop <= '0';
 mins <= '0';
 secs <= '0';
 time_zero <= '0';
 wait for 200 ns;
	mins <= '1';
	secs <= '0';
 wait for 200 ns;
 	mins <= '0';
	secs <= '0';
 wait for 200 ns;
 	mins <= '0';
	secs <= '1';
 wait for 200 ns;
 	mins <= '0';
	secs <= '0';
 wait for 200 ns;
 	start_stop <= '1';
 wait for 200 ns;
 wait for 400 ns;
	

 wait;

end process gen;

end testbench;































