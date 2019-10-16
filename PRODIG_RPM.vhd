-- Name:				Max_rpm.vhd
-- Filetype:		VHDL Hardware Discription
-- Date:				11 october 2019
-- Update:			Updated with comments for readability
-- Description:	Maximale RPM calculator
-- Author:			Mirko Bosch & Kevin Schrama for PRODIG-PETERS-PG1
-- State:			Release
-- Error:			-
-- Version:			1.4.1
-- License:			Mozilla Public License Version 2.0

-- 	LEDG[0] = Hall_sens_ontd
-- 	LEDG[1] = Hall_sens
-- 	LEDG[2] .. [8] = -
--		LEDR[0} .. [7] = Weerstands waarde
--		LEDR[8] .. [9] = -



library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PRODIG_RPM is
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
end entity;

architecture code of PRODIG_RPM is


signal clock_int 		: std_logic;

-- RPM invloeden signalen
signal tix_mem 		: unsigned(15 downto 0);								-- Bevat de ruwe getelde tijd
signal rpm_mem 		: unsigned(7 downto 0);									-- bevat de RPM waarde tot 200
signal calc_int		: std_logic;												-- Geeft aan of de RPM berekend kan worden, nieuwe waarde beschikbaar op klok flank
--Overige RPM signalen
signal maximale_rpm 	: std_logic_vector (7 downto 0) := "01111011";	-- Bevat de maximale RPM waarde
signal totale_omw_1 	: std_logic_vector (7 downto 0) := "00000000";	-- Bevat de minst significante bid's van de totale omwentelingen 0-99
signal totale_omw_2 	: std_logic_vector (7 downto 0) := "00000000";	-- Bevat de meest significante bid's van de totale omwentelingen 100-25500
signal gemiddelde 	: unsigned (7 downto 0);								-- Bevat het Gemiddelde RPM
signal te_hoog 		: std_logic;												-- Geeft aan of het RPM hoger is dan 200 RPM

-- Tijd signalen
signal tijd_sec 		: std_logic_vector (5 downto 0) := "010101";		-- Bevat de gefietste tijd van de seconden
signal tijd_min 		: std_logic_vector (5 downto 0) := "010101";		-- Bevat de gefietste tijd van de minuten
signal time_save 		: std_logic;												-- Is logisch hoge zodra er een nieuwe maximale RPM word gemeten
signal seconds_max 	: std_logic_vector (5 downto 0);						-- Bevat de gefietste tijd van de seconden, op het moment dat de maximale rpm is bereikt
signal minutes_max 	: std_logic_vector (5 downto 0);						-- Bevat de gefietste tijd van de minuten, op het moment dat de maximale rpm is bereikt

--Weerstand signalen
signal weerstand 		: std_logic_vector (3 downto 0) := "0101";		-- Bevat de weerstands waarde 0-7


-- ontdenderde en lang ingedrukte input signalen
signal knop_reset 	: std_logic;
signal knop_start 	: std_logic;
signal knop_mode 		: std_logic;
signal knop_up 		: std_logic;
signal knop_down 		: std_logic;
signal hall_sens_ontd : std_logic;
signal long_reset 	: std_logic;


-- Signal voor het omschakelen van knoppen
signal start 				: std_logic := '0';	-- Start stop knop
signal mode					: std_logic := '1';	-- mode knop
signal start_stop_state : std_logic := '0';
signal knop_mode_state 	: std_logic := '0';

--***************************************************************************
-- Declaratie van de compontnets
-- Zie de compontnets voor meer informatie.
--***************************************************************************
component RPM_counter is
	port (
		clock				: in  std_logic;
		areset			: in  std_logic;
		reset 			: in std_logic;
		hall_sens		: in  std_logic;
		calc				: out std_logic;
		tix_mem			: out unsigned(15 downto 0);
		-- Voor de totale omwentelingen
		start				: in std_logic;
		tot_omwentel99 : out std_logic_vector(7 downto 0); -- telt tot 99 en begint daarna weer vanaf 0
		tot_omwentel255 : out std_logic_vector(7 downto 0) -- wordt groter met 1 zodra de teller van omwentel99 opnieuw begint
		);
end component;

component prescaler is
	port (
		clkin  			: in  std_logic;
		areset 			: in  std_logic;
		clkout 			: out std_logic
		);
end component;

component prodig_7_seg_decoder is
	port(
		rpm_mem 			: in  unsigned (7 downto 0);
		bcd_hun 			: out std_logic_vector (6 downto 0);
		bcd_ten			: out std_logic_vector (6 downto 0); 
		bcd_one			: out std_logic_vector (6 downto 0)
		);
end component;

component Display is
	port (clk_in 			: in std_logic;
			areset_in   	: in std_logic;
			-- LCD of the DE0 board
			LCD_EN   		: out std_logic;
			LCD_RS   		: out std_logic;
			LCD_RW   		: out std_logic;
			LCD_DATA 		: inout std_logic_vector(7 downto 0);
			start_screen 	: in std_logic;
			-- Daadwerkelijke waardes
			RPM				: in unsigned (7 downto 0);
			weerstand		: in std_logic_vector (3 downto 0);
			gemiddelde		: in unsigned(7 downto 0);
			totale_omw_1 	: in std_logic_vector (7 downto 0);
			totale_omw_2 	: in std_logic_vector (7 downto 0);
			maximale 		: in std_logic_vector (7 downto 0);
			tijd_sec			: in std_logic_vector (5 downto 0);
			tijd_min 		: in std_logic_vector (5 downto 0);
			tijd_sec_max	: in std_logic_vector (5 downto 0);
			tijd_min_max 	: in std_logic_vector (5 downto 0);
			-- Externe inputs
			modus 			: in std_logic;
			te_hoog			: in std_logic
	);
end component;

component division is
	port(
		tix_mem	: in unsigned (15 downto 0);
		areset	: in std_logic;
		calc		: in std_logic;
		clock		: in std_logic;
		rpm_mem	: out unsigned (7 downto 0);
		te_hoog	: out std_logic
		);
end component;

component max_rpm is
	port (
			areset 	: in std_logic;
			reset  	: in std_logic;
			clk 	 	: in std_logic;
			rpm_in 	: in unsigned (7 downto 0);
			rpm_max 	: out std_logic_vector (7 downto 0);
			time_save: out std_logic;
			start : in std_logic
			);
end component;

component timer is
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
end component;

component gem_RPM is
	port(
		clock 		: in std_logic;
		areset 		: in std_logic;
		reset 		: in std_logic;
		RPM 			: in unsigned(7 downto 0);
		gem_RPM 		: out unsigned(7 downto 0);
		start 		: in std_logic
		);
end component;

component resistor is
	port (
		clock			: in  std_logic;
		areset		: in	std_logic;
		BUT_UP		: in	std_logic;
		BUT_DOWN 	: in	std_logic;
		res_busy		: in  std_logic;
		res_data 	: in  std_logic_vector(7 downto 0);
		res_up		: out std_logic;
		res_down		: out std_logic;
		N_readADC	: out std_logic;
		N_convst 	: out std_logic;
		ADC_data_out:	out std_logic_vector(7 downto 0) := "00000000";
		resistance	: out std_logic_vector(3 downto 0)
		);
end component;

component ontdender is
	port (
		CLK_10kHz 	: in std_logic; --100us
		areset 		: in std_logic;
		input 		: in std_logic;
		output 		: out std_logic;
		long			: out std_logic
	);
end component;


begin
-- Alle gedefineerde portmappen
u0: RPM_counter
port map(clock => clock_int, areset => BUTTON(3), reset => long_reset, start => start, hall_sens => hall_sens_ontd, tix_mem => tix_mem, calc => calc_int, tot_omwentel99 => totale_omw_1, tot_omwentel255 => totale_omw_2);

u1: prescaler
port map(clkin => CLOCK_50, areset => BUTTON(3), clkout => clock_int);

u2: prodig_7_seg_decoder
port map(rpm_mem => rpm_mem, bcd_hun => HEX2_D, bcd_ten => HEX1_D, bcd_one => HEX0_D);

u3a: ontdender -- Hall sensor
port map(CLK_10kHz => clock_int, areset => BUTTON(3), input => hall_sens, output => hall_sens_ontd);

u3b: ontdender -- Start knop
port map(CLK_10kHz => clock_int, areset => BUTTON(3), input => KNOP(3), output => knop_start);

u3c: ontdender -- Reset knop
port map(CLK_10kHz => clock_int, areset => BUTTON(3), input => KNOP(6), output => knop_reset, long => long_reset);

u3d: ontdender -- Mode knop
port map(CLK_10kHz => clock_int, areset => BUTTON(3), input => KNOP(2), output => knop_mode);

u3e: ontdender -- UP knop
port map(CLK_10kHz => clock_int, areset => BUTTON(3), input => KNOP(1), output => knop_up);

u3f: ontdender -- DOWN knop
port map(CLK_10kHz => clock_int, areset => BUTTON(3), input => KNOP(5), output => knop_down);

u4: Display
port map(clk_in => CLOCK_50, areset_in => BUTTON(3), LCD_EN => LCD_EN, LCD_RS => LCD_RS, LCD_RW => LCD_RW, LCD_DATA => LCD_DATA, modus => mode, start_screen => start,
			RPM => RPM_mem, weerstand => weerstand, gemiddelde => gemiddelde, totale_omw_1 => totale_omw_1, totale_omw_2 => totale_omw_2, maximale => maximale_rpm, tijd_sec => tijd_sec, 
			tijd_min => tijd_min, tijd_sec_max => seconds_max, tijd_min_max => minutes_max, te_hoog => te_hoog);

u5: division
port map(tix_mem => tix_mem, areset => BUTTON(3), calc => calc_int, clock => clock_int, rpm_mem => rpm_mem, te_hoog => te_hoog);

u6: max_rpm
port map(areset => BUTTON(3), reset => long_reset, clk => clock_int, rpm_in => rpm_mem, rpm_max => maximale_rpm, time_save => time_save, start => start);

u7: timer
port map (clk => clock_int, areset => BUTTON(3), reset => long_reset, start_stop => start, seconds => tijd_sec, minutes => tijd_min, rpm_max => time_save, seconds_max => seconds_max, 
minutes_max => minutes_max);

u8: gem_RPM
port map (clock => clock_int, areset => BUTTON(3), reset => long_reset, RPM => RPM_mem, gem_RPM => gemiddelde, start => start);

u9: resistor 
port map(clock => clock_int, areset => BUTTON(3), res_busy => BUSY, res_data => DB, res_up => MOTOR_UP, res_down => MOTOR_DOWN, N_readADC => RD, N_convst => Convstart, 
resistance => weerstand, BUT_UP => knop_up, BUT_DOWN => knop_down , ADC_data_out => LEDR(7 downto 0));





-- Start een eenvoudig process om te zorgen dat de knoppen niet continue moeten worden ingedrukt.
-- Reset de waardes ook op een areset
drive: process (clock_int, BUTTON(3)) is
begin
	if BUTTON(3) = '0' then
		start <= '1';
		mode <= '0';
	elsif rising_edge(clock_int) then
	
		-- Switch voor start/stop knop
		if knop_start = '0' and start_stop_state = '1' then
			start <= not(start);
		end if;
		start_stop_state <= knop_start;
		
		-- Switch voor modus knop
		if knop_mode = '0' and knop_mode_state = '1' then
			mode <= not(mode);
		end if;
		knop_mode_state <= knop_mode;
	end if;
end process;

-- Leds worden gebruikt voor debuggen van Hallsensor
LEDG(1) <= hall_sens;
LEDG(0) <= hall_sens_ontd;


-- Niet gebruikte outputs op de de2-70 board
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
LEDR(9 downto 8) <= (others => '0');

end architecture;