library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_gem_RPM is
end entity;

architecture tb of tb_gem_RPM is

component gem_RPM is
	port(
		clock : in std_logic;
		areset : in std_logic;
		reset : in std_logic;
		RPM : in unsigned(7 downto 0);
		gem_RPM : out unsigned(7 downto 0)
		);
end component;

signal clock : std_logic;
signal areset : std_logic;
signal reset : std_logic;
signal RPM : unsigned(7 downto 0);
signal gemiddeld_RPM : unsigned(7 downto 0);

begin

dut: gem_RPM 
	port map(clock => clock, areset => areset, reset => reset, RPM => RPM, gem_RPM => gemiddeld_RPM);
	
	
clockgen : process is 
begin
	clock <= '0';
	wait for 50 ns;
	clock <= '1';
	wait for 50 ns;
end process;

process is			-- RPM's zijn 150, 100, 30, 50, 60		gem_RPM is dan 78
begin
	areset <= '0';
	wait for 250 ns;
	areset <= '1';
	wait for 200 ns;
	reset <= '1';
	wait for 200 ns;
	reset <= '0';
	wait for 100 ns;
	RPM	<=	"10010110";		--150
	wait for 10 ms;
	RPM <= "01100100";		--100
	wait for 10 ms;
	RPM <= "00011110";		--30
	wait for 10 ms;
	RPM <= "00110010";		--50
	wait for 10 ms;
	RPM <= "00111100";		--60
	wait;
end process;

end architecture;
	
	
	
	
	
	
	
	