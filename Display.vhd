-- Filename:     Display.vhd
-- Filetype:     VHDL Source Code
-- Date:         27 sep 2019
-- Update:       -
-- Description:  VHDL Description of Display.vhd to control the 16x4 display
-- Author:       Mirko
-- State:
-- Error:        -
-- Version:      1.0
-- Copyright:    (c)2012, De Haagse Hogeschool



-- Libraries
library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
use ieee.std_logic_arith.all;

-- The entity
entity display is
	port (clk_in 			: in std_logic;
			areset_in   	: in std_logic;
			-- LCD of the DE0 board
			LCD_EN   		: out std_logic;
			LCD_RS   		: out std_logic;
			LCD_RW   		: out std_logic;
			LCD_DATA 		: inout std_logic_vector(7 downto 0);
			start_screen 	: in std_logic;
			-- Daadwerkelijke waardes
			RPM				: in std_logic_vector (7 downto 0);
			weerstand		: in std_logic_vector (3 downto 0);
			gemiddelde		: in std_logic_vector(7 downto 0);
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

end entity display;



-- The architecture!
architecture hardware of display is

-- Component declaration of the LCD module driver
component lcd_driver_hd44780_module is
	generic (freq         : integer := 50000000;
				areset_pol   : std_logic := '1';
				time_init1   : time := 40 ms;
				time_init2   : time := 4100 us;
				time_init3   : time := 100 us;
				time_tas     : time := 60 ns;
				time_cycle_e : time := 1000 ns;
				time_pweh    : time := 500 ns;
				time_no_bf   : time := 2 ms;
				cursor_on    : boolean := false;
				blink_on     : boolean := false;
				use_bf       : boolean := true
			  );
	port	  (clk      : in std_logic;
			   areset   : in std_logic;
			   -- User site
			   init     : in std_logic;
  			   data     : in std_logic_vector(7 downto 0);
			   wr       : in std_logic;
			   cls      : in std_logic;
			   home     : in std_logic;
			   goto10   : in std_logic;
			   goto20   : in std_logic;
			   goto30   : in std_logic;
			   busy     : out std_logic;
			   -- LCD side
			   LCD_E    : out std_logic;
			   LCD_RS   : out std_logic;
			   LCD_RW   : out std_logic;
			   LCD_DB   : inout std_logic_vector(7 downto 0)
			  );
end component lcd_driver_hd44780_module;

-- Component voor het omzetten van bin(8bit) naar bcd(4x4bit)
component bin_bcd is
	port(
			bin_in 	: in std_logic_vector(7 downto 0);
			bcd_out	: out std_logic_vector (11 downto 0)
			);
end component bin_bcd;

-- The system's frequency
constant sys_freq : integer := 50000000;

--Signals behorende bij de lcd driver
signal areset   : std_logic;
signal clk      : std_logic;
signal init     : std_logic;
signal data     : std_logic_vector(7 downto 0);
signal wr       : std_logic;
signal cls      : std_logic;
signal home     : std_logic;
signal goto10   : std_logic;
signal goto20   : std_logic;
signal goto30   : std_logic;
signal busy		 : std_logic;

-- alle gebruikte states
type state_type is (reset, write_char, write_char_wait, update, update_linecount,
						  update_linecount_wait, write_char_1, write_char_1_wait,
						  write_char_2, write_char_2_wait, write_char_3, write_char_4, hold,
						  hold2);
signal state : state_type;

-- Opstart tekst string en array
subtype string16_type is string(1 to 16);
type message4x16_type is array (1 to 4) of string16_type;

-- Het opstart scherm tekst
constant message : message4x16_type :=
							( 1 => "                ",
							  2 => "    Kettler     ",
							  3 => "    Groep 1     ",
							  4 => "                ");

-- Houd bij welke characters al afgedrukt zijn op het scherm(per letter en regel)
signal character_counter : integer range 1 to 16;
signal line_counter : integer range 1 to 4;

--Signals voor de verschillende waardes. Zijn strings voor de gehele regel
signal RPM_line 			: string(1 to 16) := "                ";
signal tijd_line 			: string(1 to 16) := "                ";
signal gemiddelde_line 	: string(1 to 16) := "                ";
signal totale_omw_line	: string(1 to 16) := "                ";
signal maximale_line 	: string(1 to 16) := "                ";
signal weerstand_line	: string(1 to 16) := "                ";
signal tijd_line_max		: string(1 to 16) := "                ";

-- De verschillende signals omgezet in bcd 4bit
signal RPM_BCD				: std_logic_vector (11 downto 0);	-- 3 digits
signal tijd_sec_BCD		: std_logic_vector (11 downto 0);	-- 2 digits 	> blijft 3 om de bin_bcd te gebruiken
signal tijd_min_BCD		: std_logic_vector (11 downto 0);	-- 2 digits		> blijft 3 om de bin_bcd te gebruiken
signal tijd_sec_max_BCD	: std_logic_vector (11 downto 0);	-- 2 digits 	> blijft 3 om de bin_bcd te gebruiken
signal tijd_min_max_BCD	: std_logic_vector (11 downto 0);	-- 2 digits		> blijft 3 om de bin_bcd te gebruiken
signal gemiddelde_BCD	: std_logic_vector (11 downto 0);	-- 3 digits
signal maximale_BCD		: std_logic_vector (11 downto 0);	-- 3 digits
--signal weerstand_BCD		: std_logic_vector (11 downto 0);	-- 1 digits > dus hoeft deze niet omgezet te worden
signal totale_omw_BCD	: std_logic_vector (23 downto 0);	-- 5 digits
signal start				: std_logic;


begin

	-- Push buttons are active low.
	areset <= areset_in;

	-- The clock
	clk <= clk_in;

	-- Use LCD module.
	lcdm : lcd_driver_hd44780_module
	generic map (freq => sys_freq, areset_pol => '1', time_cycle_e => 2000 ns, time_pweh => 500 ns,
					 cursor_on => false, blink_on => false, use_bf => false)
	port map (clk => clk, areset => areset, init => init, data => data, wr => wr, cls => cls,
				 home => home, goto10 => goto10, goto20 => goto20, goto30 => goto30, busy => busy,
				 LCD_E => LCD_EN, LCD_RS => LCD_RS, LCD_RW => LCD_RW, LCD_DB => LCD_DATA);



	-- De omzetting van bin naar bcd
	RPM2bcd: bin_bcd
		port map (bin_in => RPM, bcd_out => RPM_BCD);

	gemiddelde2bcd: bin_bcd
		port map (bin_in => gemiddelde, bcd_out => gemiddelde_BCD);

	maximale2bcd: bin_bcd
		port map (bin_in => maximale, bcd_out => maximale_BCD);

	tijd_secbcd: bin_bcd
		port map (bin_in => ("00" & tijd_sec), bcd_out => tijd_sec_bcd);

	tijd_sec_maxbcd: bin_bcd
		port map (bin_in => ("00" & tijd_sec_max), bcd_out => tijd_sec_max_bcd);

	tijd_minbcd: bin_bcd
		port map(bin_in => ("00" & tijd_min), bcd_out => tijd_min_bcd);

	tijd_min_maxbcd: bin_bcd
		port map(bin_in => ("00" & tijd_min_max), bcd_out => tijd_min_max_bcd);

	totale_omw_1bcd: bin_bcd
		port map (bin_in => totale_omw_1, bcd_out => totale_omw_BCD(11 downto 0));

	totale_omw_2bcd: bin_bcd
		port map (bin_in => totale_omw_2, bcd_out => totale_omw_BCD(23 downto 12));





	-- The client side
	drive: process (clk, areset) is


	variable aline : string16_type; -- variable voor het schrijven van de regel


	begin
		if areset = '0' then
			wr <= '0';
			init <= '0';
			cls <= '0';
			home <= '0';
			goto10 <= '0';
			goto20 <= '0';
			goto30 <= '0';
			data <= "00000000";
			character_counter <= 1;
			state <= reset;
			start <= '0';
		elsif rising_edge(clk) then
			wr <= '0';
			init <= '0';
			cls <= '0';
			home <= '0';
			goto10 <= '0';
			goto20 <= '0';
			goto30 <= '0';
			data <= "00000000";

			--update lines doe dit voor elke soort waarde (dit is hieronder beschreven voor elke waarde die wordt heengestuurd)
			if te_hoog = '0' then
				-- Schrijf alleen de gekregen waarde als deze geldig onder de 200 RPM blijft
				rpm_line <= ("RPM:       " &
								character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & RPM_BCD(11 downto 8))))))) &
								character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & RPM_BCD(7 downto 4))))))) &
								character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & RPM_BCD(3 downto 0))))))) &
								"  ");
			else
				-- Geen geldige RPM waarde schrijf dan XXX
				rpm_line <= ("RPM:       XXX  ");
			end if;

			tijd_line <= ("Tijd:      " &
							character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & tijd_min_BCD(7 downto 4))))))) &
							character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & tijd_min_BCD(3 downto 0))))))) &
							":" &
							character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & tijd_sec_BCD(7 downto 4))))))) &
							character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & tijd_sec_BCD(3 downto 0))))))) & 
							"");
			tijd_line_max <= ("@ time:    " &
							character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & tijd_min_max_BCD(7 downto 4))))))) &
							character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & tijd_min_max_BCD(3 downto 0))))))) &
							":" &
							character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & tijd_sec_max_BCD(7 downto 4))))))) &
							character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & tijd_sec_max_BCD(3 downto 0))))))) &
							"");
			gemiddelde_line <= ("Average:   " &
							character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & Gemiddelde_BCD(11 downto 8))))))) &
							character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & Gemiddelde_BCD(7 downto 4))))))) &
							character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & Gemiddelde_BCD(3 downto 0))))))) &
							"  ");
			totale_omw_line <= ("Tot omw:   " &
							character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & totale_omw_BCD(23 downto 20))))))) &
							character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & totale_omw_BCD(19 downto 16))))))) &
							character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & totale_omw_BCD(15 downto 12))))))) &
							--character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & totale_omw_BCD(11 downto 8))))))) & -- valt weg omdat we de eerste alleen maar laten tellen tot 99
							character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & totale_omw_BCD(7 downto 4))))))) &
							character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & totale_omw_BCD(3 downto 0))))))) &
							"");
			maximale_line <= ("Max rpm:   " &
							character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & maximale_BCD(11 downto 8))))))) &
							character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & maximale_BCD(7 downto 4))))))) &
							character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & maximale_BCD(3 downto 0))))))) &
							"  ");
			weerstand_line <= ("Weerstand: " &
							character'val(integer(conv_integer(unsigned((std_logic_vector("0011" & weerstand(3 downto 0))))))) &
							"    ");

			if start_screen = '1' then
				-- Bij opstarten wachten met schrijven van waardes tot gebruiker op start drukt.
				start <= '1';
			end if;






			case state is
				when write_char =>
					-- Gebruik de lijnen die eerder gedeclareerd zijn.
					-- modus zorgt er voor dat er verschillende beelden kunnen worden weergegeven.

					if start = '0' then
						aline := message(line_counter);		--word gebruikt om een hele array door te sturen, dit is het welkoms scherm.
					elsif modus = '1' then
						case line_counter is
							when 1 => aline := tijd_line;
							when 2 => aline := RPM_line;
							when 3 => aline := gemiddelde_line;
							when 4 => aline := "Modus:RPM       ";
							when others => null;
						end case;
					else
						case line_counter is
							when 1 => aline := totale_omw_line;
							when 2 => aline := maximale_line;
							when 3 => aline := tijd_line_max;
							when 4 => aline := weerstand_line;
							when others => null;
						end case;
					end if;


					data <= std_logic_vector(conv_unsigned( character'pos(aline(character_counter)),8));
 					wr <= '1';
					state <= write_char_wait;



-- Onderstaande behoord bij de lcd driver
				when reset =>
					-- Wait for the LCD module ready
					if busy = '0' then
						state <= write_char;
					end if;
					-- Setup message counter, start at 1.
					character_counter <= 1;
					line_counter <= 1;

				when write_char_wait =>
					-- This state is needed so that the LCD driver
					-- can process the write command. Note that data
					-- and wr are registered outputs and get their
					-- respective values while in *this* state. If you don't
					-- want this behaviour, please make your outputs
					-- non-registered.
					state <= update;

				when update =>
					-- Wait for the write complete
					if busy = '0' then
						-- If end of string, goto hold mode...
						if line_counter = 4 and character_counter = 16 then
							state <= hold;
						-- If end of line...
						elsif character_counter = 16 then
							case line_counter is
								when 1 => goto10 <= '1';
								when 2 => goto20 <= '1';
								when 3 => goto30 <= '1';
								-- Never reached, but nice anyway...
								when 4 => home <= '1';
								when others => null;
							end case;
							-- Set new values of the counters
							line_counter <= line_counter+1;
							character_counter <= 1;
							-- Goto the update state
							state <= update_linecount;
						else
						   -- Not the end of a lines, update the character counter.
							character_counter <= character_counter+1;
							state <= write_char;
						end if;
					end if;

				when update_linecount =>
					-- This state is needed so that the LCD driver
					-- can process the gotoXX command. Note that the gotoXX
					-- signals are registered outputs and get their
					-- respective values while in *this* state. If you don't
					-- want this behaviour, please make your outputs
					-- non-registered.
					state <= update_linecount_wait;

				when update_linecount_wait =>
					-- Wait for the LCD module ready
					if busy = '0' then
						state <= write_char;
					end if;

				-- Done welkoms scherm
				when hold =>
					--state <= hold;
					state <= hold2;
					home <= '1';
				when hold2 =>
					state <= reset;

				when others =>
					null;

			end case;
		end if;
	end process;




end architecture hardware;
