-- Filename:     Display.vhd
-- Filetype:     VHDL Source Code
-- Led explain
--		Rode leds is om iets te testen Groen is vrijblijfend vrij
-- 	LEDG[0] = Hall_sens_ontd
-- 	LEDG[1] = Hall_sens
-- 	LEDG[2] = -
-- 	LEDG[3] = -
-- 	LEDG[4] = -
-- 	LEDG[5] = -
-- 	LEDG[6] = -
-- 	LEDG[7] = -
-- 	LEDG[8] = -



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PRODIG_RPM is
	port(
		CLOCK_50 : in std_logic;
		hall_sens : in std_logic;
		-- 7 segment displays en punten
		HEX0_D : out std_logic_vector(6 downto 0);
		HEX1_D : out std_logic_vector(6 downto 0);
		HEX2_D : out std_logic_vector(6 downto 0);
		HEX3_D : out std_logic_vector(6 downto 0);
		HEX4_D : out std_logic_vector(6 downto 0);
		HEX5_D : out std_logic_vector(6 downto 0);
		HEX6_D : out std_logic_vector(6 downto 0);
		HEX7_D : out std_logic_vector(6 downto 0);
		HEX0_DP : out std_logic;
		HEX1_DP : out std_logic;
		HEX2_DP : out std_logic;
		HEX3_DP : out std_logic;
		HEX4_DP : out std_logic;
		HEX5_DP : out std_logic;
		HEX6_DP : out std_logic;
		HEX7_DP : out std_logic;
		-- RPM counter
		tix_mem_sim : out unsigned(15 downto 0);	-- Voor simulatie, verwijderen uit definitieve code	
		rpm_mem_sim : out unsigned( 7 downto 0);	-- Voor simulatie, verwijderen uit definitieve code	
		-- LCD 
		LCD_EN   : out std_logic;
		LCD_RS   : out std_logic;
		LCD_RW   : out std_logic;
		LCD_DATA : inout std_logic_vector(7 downto 0);
		--leds, switch, buttons
		LEDR     : out std_logic_vector(9 downto 0);
		LEDG		: out std_logic_vector(8 downto 0);
		SW			: in std_logic_vector(17 downto 0);
		BUTTON	: in std_logic_vector(3 downto 0);
		-- Home trainer knoppen
		KNOP 		: in std_logic_vector(6 downto 1);
		-- Weerstand en adc
		MOTOR_UP	: OUT std_logic;
		MOTOR_DOWN: OUT std_logic;
		DB			: in std_logic_vector(7 downto 0);
		BUSY		: in std_logic;
		RD			: OUT std_logic;
		Convstart: OUT std_logic
		
		);
end entity;

architecture code of PRODIG_RPM is

signal hall_sens_ontd : std_logic;
signal clock_int : std_logic;
signal tix_mem : unsigned(15 downto 0);
signal rpm_mem : unsigned(7 downto 0);
signal calc_int: std_logic;

component RPM_counter is
	port (
		clock		: in  std_logic;
		areset	: in  std_logic;
		hall_sens: in  std_logic;
		calc		: out std_logic;
		tix_mem	: out unsigned(15 downto 0)
		);
end component;

component prescaler is
	port (
		clkin  : in  std_logic;
		areset : in  std_logic;
		clkout : out std_logic
		);
end component;

component prodig_7_seg_decoder is
	port(
		rpm_mem 	: in  unsigned (7 downto 0);
		bcd_hun 	: out std_logic_vector (6 downto 0);
		bcd_ten	: out std_logic_vector (6 downto 0); 
		bcd_one	: out std_logic_vector (6 downto 0)
		);
end component;

component Display is
	port (clk_in : in std_logic;
			areset_in   : in std_logic;
			-- LCD
			LCD_EN   : out std_logic;
			LCD_RS   : out std_logic;
			LCD_RW   : out std_logic;
			LCD_DATA : inout std_logic_vector(7 downto 0);
			-- Daadwerkelijke waardes
			RPM		: in unsigned (7 downto 0)
	);
end component;

component division is
	port(
		tix_mem	: in unsigned (15 downto 0);
		areset	: in std_logic;
		calc		: in std_logic;
		clock		: in std_logic;
		rpm_mem	: out unsigned (7 downto 0)
		);
end component;

--component ontdender is
--	port(
--		clock : in std_logic;
--		areset : in std_logic;
--		input : in std_logic;
--		output : out std_logic
--);
--end component;

begin

u0: RPM_counter
port map(clock => clock_int, areset => BUTTON(3), hall_sens => hall_sens_ontd, tix_mem => tix_mem, calc => calc_int);

u1: prescaler
port map(clkin => CLOCK_50, areset => button(3), clkout => clock_int);

u2: prodig_7_seg_decoder
port map(rpm_mem => rpm_mem, bcd_hun => HEX2_D, bcd_ten => HEX1_D, bcd_one => HEX0_D);

--u3: ontdender
--port map(input => hall_sens, clock => clock, output => hall_sens_ontd, areset => button(3));

u4: Display
port map(clk_in => CLOCK_50, areset_in => button(3), LCD_EN => LCD_EN, LCD_RS => LCD_RS, LCD_RW => LCD_RW, LCD_DATA => LCD_DATA, RPM => RPM_mem);

u5: division
port map(tix_mem => tix_mem, areset => button(3), calc => calc_int, clock => clock_int, rpm_mem => rpm_mem);



hall_sens_ontd <= hall_sens;
LEDG(1) <= hall_sens;
LEDG(0) <= hall_sens_ontd;

tix_mem_sim <= tix_mem;	-- Voor simulatie, verwijderen uit definitieve code	
rpm_mem_sim <= rpm_mem; -- Voor simulatie, verwijderen uit definitieve code	


-- Nog te gebruiken outputs TIJDELIJK 0 VOOR MINDER WARNINGS
MOTOR_UP <= '0';	
MOTOR_DOWN <= '0';
RD <= '0'; 
Convstart <= '0';

-- niet gebruikte outputs
hex3_D <= "1111111";
hex4_D <= "1111111";
hex5_D <= "1111111";
hex6_D <= "1111111";
hex7_D <= "1111111";
HEX0_DP <= '1';
HEX1_DP <= '1';
HEX2_DP <= '1';
HEX3_DP <= '1';
HEX4_DP <= '1';
HEX5_DP <= '1';
HEX6_DP <= '1';
HEX7_DP <= '1';
LEDG(8 downto 2) <= (others => '0');
LEDR(9 downto 0) <= (others => '0');

end architecture;