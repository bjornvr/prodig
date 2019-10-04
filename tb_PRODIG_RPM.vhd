LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity tb_PRODIG_RPM is
end entity;

architecture test of tb_PRODIG_RPM is

	signal CLOCK_50 : std_logic := '0';
	signal clock1 : std_logic;
	signal areset : std_logic := '1';
	signal hall_sens : std_logic := '0';
	signal HEX0_D : std_logic_vector(6 downto 0);
	signal HEX1_D : std_logic_vector(6 downto 0);
	signal HEX2_D : std_logic_vector(6 downto 0);
	signal led : std_logic;
	signal led2 : std_logic;
	signal clock : std_logic;
	signal tix_mem_sim : unsigned(15 downto 0);
	signal rpm_mem_sim : unsigned(7 downto 0);
	signal hall_sens_in : std_logic;
	signal areset2 : std_logic;
	
component PRODIG_RPM is
	port(
		CLOCK_50 : in std_logic;
		clock1 : out std_logic;
		areset : in std_logic;
		hall_sens : in std_logic;
		HEX0_D : out std_logic_vector(6 downto 0);
		HEX1_D : out std_logic_vector(6 downto 0);
		HEX2_D : out std_logic_vector(6 downto 0);
		led : out std_logic;
		tix_mem_sim : out unsigned(15 downto 0);
		rpm_mem_sim : out unsigned( 7 downto 0);
		led2 : out std_logic
		);
end component;

begin

dut: PRODIG_RPM
port map (CLOCK_50 => CLOCK_50, clock1 => clock1, areset => areset, hall_sens => hall_sens, 
			HEX0_D => HEX0_D, HEX1_D => HEX1_D, HEX2_D => HEX2_D, led => led, led2 => led2, tix_mem_sim => tix_mem_sim, rpm_mem_sim => rpm_mem_sim);

clockgen : process is
begin
	CLOCK_50 <= '0';
	wait for 100 ns;
	CLOCK_50 <= '1';
	wait for 100 ns;
end process;

process is
begin
	areset <= '0';
	wait for 100 us;
	areset <= '1';
	wait for 100 us;
	hall_sens <= '1';
	wait for 1000 us;
	hall_sens <= '0';
	wait for 5000 us;
	hall_sens <= '1';
	wait for 1000 us;
	hall_sens <= '0';
	wait for 3000 us;
	hall_sens <= '1';
	wait for 1000 us;
	hall_sens <= '0';
	wait for 5000 us;
	hall_sens <= '1';
	wait for 1000 us;
	hall_sens <= '0';
	wait for 3000 us;
	hall_sens <= '1';
	wait;
end process;

end architecture;
