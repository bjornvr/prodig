LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity tb_PRODIG_RPM is
end entity;

architecture test of tb_PRODIG_RPM is

	signal CLOCK_50 : std_logic := '0';
	signal areset : std_logic := '1';
	signal hall_sens : std_logic := '0';
	signal HEX0_D : std_logic_vector(6 downto 0);
	signal HEX1_D : std_logic_vector(6 downto 0);
	signal HEX2_D : std_logic_vector(6 downto 0);
	signal HEX3_D : std_logic_vector(6 downto 0);
	signal HEX4_D : std_logic_vector(6 downto 0);
	signal HEX5_D : std_logic_vector(6 downto 0);
	signal HEX6_D : std_logic_vector(6 downto 0);
	signal HEX7_D : std_logic_vector(6 downto 0);
	signal HEX0_DP : std_logic;
	signal HEX1_DP : std_logic;
	signal HEX2_DP : std_logic;
	signal HEX3_DP : std_logic;
	signal HEX4_DP : std_logic;
	signal HEX5_DP : std_logic;
	signal HEX6_DP : std_logic;
	signal HEX7_DP : std_logic;
	signal LCD_EN 	: std_logic;
	signal LCD_RS 	: std_logic;
	signal LCD_RW 	: std_logic;	
	signal LCD_DATA 	: std_logic_vector(7 downto 0);
	signal LEDR		: std_logic_vector(9 downto 0);
	signal LEDG		: std_logic_vector(8 downto 0);
	signal SW		: std_logic_vector(17 downto 0);
	signal BUTTON		: std_logic_vector(3 downto 0);
	signal knop		: std_logic_vector(6 downto 1);
	signal MOTOR_UP 	: std_logic;	
	signal MOTOR_DOWN 	: std_logic;	
	signal DB 	: std_logic_vector(7 downto 0);	
	signal BUSY	: std_logic;	
	signal RD 	: std_logic;	
	signal Convstart 	: std_logic;	

	
component PRODIG_RPM is
	port(
		CLOCK_50 		: in std_logic;
		hall_sens 		: in std_logic;
		-- 7 segment displays en punten
		HEX0_D 			: out std_logic_vector(6 downto 0);
		HEX1_D 			: out std_logic_vector(6 downto 0);
		HEX2_D 			: out std_logic_vector(6 downto 0);
		HEX3_D 			: out std_logic_vector(6 downto 0);
		HEX4_D 			: out std_logic_vector(6 downto 0);
		HEX5_D 			: out std_logic_vector(6 downto 0);
		HEX6_D 			: out std_logic_vector(6 downto 0);
		HEX7_D 			: out std_logic_vector(6 downto 0);
		HEX0_DP 			: out std_logic;
		HEX1_DP 			: out std_logic;
		HEX2_DP 			: out std_logic;
		HEX3_DP 			: out std_logic;
		HEX4_DP 			: out std_logic;
		HEX5_DP 			: out std_logic;
		HEX6_DP 			: out std_logic;
		HEX7_DP 			: out std_logic;
		-- LCD
		LCD_EN   		: out std_logic;
		LCD_RS   		: out std_logic;
		LCD_RW   		: out std_logic;
		LCD_DATA 		: inout std_logic_vector(7 downto 0);
		--leds, switch, buttons
		LEDR     		: out std_logic_vector(9 downto 0);
		LEDG				: out std_logic_vector(8 downto 0);
		SW					: in std_logic_vector(17 downto 0);
		BUTTON			: in std_logic_vector(3 downto 0);
		-- Home trainer knoppen
		KNOP 				: in std_logic_vector(6 downto 1);
		-- Weerstand en adc
		MOTOR_UP			: OUT std_logic;
		MOTOR_DOWN		: OUT std_logic;
		DB					: in std_logic_vector(7 downto 0);
		BUSY				: in std_logic;
		RD					: OUT std_logic;
		Convstart		: OUT std_logic

		);
end component;

begin

dut: PRODIG_RPM
port map (CLOCK_50 => CLOCK_50, hall_sens => hall_sens, 
			HEX0_D => HEX0_D, HEX1_D => HEX1_D, HEX2_D => HEX2_D, HEX3_D => HEX3_D, HEX4_D => HEX4_D, HEX5_D => HEX5_D, HEX6_D => HEX6_D, HEX7_D => HEX7_D, 
			HEX0_DP => HEX0_DP, HEX1_DP => HEX1_DP, HEX2_DP => HEX2_DP, HEX3_DP => HEX3_DP, HEX4_DP => HEX4_DP, HEX5_DP => HEX5_DP, HEX6_DP => HEX6_DP, HEX7_DP => HEX7_DP, 
			LCD_EN => LCD_EN, LCD_RS => LCD_RS, LCD_RW => LCD_RW, LCD_DATA => LCD_DATA,
			LEDR => LEDR, LEDG => LEDG, SW => SW, BUTTON => BUTTON, KNOP => KNOP,
			MOTOR_UP => MOTOR_UP, MOTOR_DOWN => MOTOR_DOWN, DB => DB, BUSY => BUSY, RD => RD, Convstart => convstart);

clockgen : process is
begin
	CLOCK_50 <= '0';
	wait for 10 ns;
	CLOCK_50 <= '1';
	wait for 10 ns;
end process;

hallgen : process is
begin
	hall_sens <= '1';
	wait for 5 ms;
	hall_sens <= '0';
	wait for 1000 ms;

end process;

process is
begin
	areset <= '1';
	knop(3) <= '1';
	wait for 40000 ns;
	areset <= '0';
	wait for 40000 ns;
	areset <= '1';
	knop(3) <= '0';
	wait for 500000 ns;
	knop(3) <= '1';

	wait;
end process;

end architecture;
