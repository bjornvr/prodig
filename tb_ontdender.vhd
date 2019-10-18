library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_ontdender is
end tb_ontdender;

architecture testbench of tb_ontdender is
	signal CLK_10kHz : std_logic;
	signal areset : std_logic;
	signal input : std_logic;
	signal output : std_logic;
	signal long : std_logic;
	
component ontdender
port (
		CLK_10kHz : in std_logic; --100us
		areset : in std_logic;
		input : in std_logic;
		output : out std_logic;
		long : out std_logic
	);
end component;

begin
	dut : ontdender
	port map(CLK_10kHz => CLK_10kHz, areset => areset, input => input, output => output, long => long);
	
	clockgen : process is
	begin
		CLK_10kHz <= '0';
		wait for 50 us;
		loop
			CLK_10kHz <= '1';
			wait for 100 us;
			CLK_10kHz <= '0';
			wait for 100 us;
		end loop;
	end process clockgen;
	
	start : process is
	begin
		areset <= '0';
		wait for 5 ms;
		areset <= '1';
		wait;
	end process;
	
	tb : process is
	begin
		input <= '1';
		wait for 8 ms;
		input <= '0';
		wait for 2 ms;
		input <= '0';
		wait for 2 ms;
		input <= '1';
		wait for 5 ms;
		input <= '0';
		wait for 13 ms;
		input <= '1';
		wait for 8 ms;
		input <= '0';
		wait for 2 ms;
		input <= '1';
		wait for 2 ms;
		input <= '0';
		wait for 5 ms;
		input <= '1';
		wait for 13 ms;
		input <= '1';
		wait for 10 ms;
		input <= '0';
		wait for 1200 ms;
	end process tb;
end testbench;

	