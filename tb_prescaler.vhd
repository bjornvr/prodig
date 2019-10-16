library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_prescaler is
end tb_prescaler;

architecture tb of tb_prescaler is
	signal clk    			: 	std_logic;
   signal areset    		: 	std_logic; 
	signal clkout			:  std_logic;

component prescaler
	port (clkin  : in std_logic;
			areset : in std_logic;
			clkout : out std_logic
			);
end component;

begin
	dut: prescaler
	port map (
		clkin => clk,
		areset => areset,
		clkout => clkout
	);

clockgen : process is
begin
	clk <= '0';
	wait for 10 ns;
	clk <= '1';
	wait for 10 ns;
end process clockgen;

gen : process is
begin
	areset <= '0';
	wait for 20 ns;
	areset <= '1';
	wait;
end process gen;

end tb;