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
use ieee.numeric_std.all;

-- The entity
entity display is
	port (clk_in : in std_logic;
			areset_in   : in std_logic;
			-- LCD of the DE0 board
			LCD_EN   : out std_logic;
			LCD_RS   : out std_logic;
			LCD_RW   : out std_logic;
			LCD_DATA : inout std_logic_vector(7 downto 0);
			-- Daadwerkelijke waardes
			RPM		: in unsigned (7 downto 0)
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

-- The system's frequency
constant sys_freq : integer := 50000000;

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

type state_type is (reset, write_char, write_char_wait, update, update_linecount,
						  update_linecount_wait, write_char_1, write_char_1_wait,
						  write_char_2, write_char_2_wait, write_char_3, write_char_4, hold,
						  hold2);
signal state : state_type;

-- A string of 16 characters
subtype string16_type is string(1 to 16);
-- An array of 4 strings of 16 characters.
type message4x16_type is array (1 to 4) of string16_type;

-- The four-line message
constant message : message4x16_type :=
							( 1 => "1Het werkt      ",
							  2 => "2               ",
							  3 => "3   RPM         ",
							  4 => "4               ");

-- Counts the characters on a line.
signal character_counter : integer range 1 to 16;
-- Counts the lines.
signal line_counter : integer range 1 to 4;

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
				 
	-- The client side
	drive: process (clk, areset) is
	variable aline : string16_type;
	
	
--------------------------------------------------------------------------------------------------------------------	
	
	
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
		elsif rising_edge(clk) then
			wr <= '0';
			init <= '0';
			cls <= '0';
			home <= '0';
			goto10 <= '0';
			goto20 <= '0';
			goto30 <= '0';
			data <= "00000000";
		
			case state is

				when reset =>
					-- Wait for the LCD module ready
					if busy = '0' then
						state <= write_char;
					end if;
					-- Setup message counter, start at 1.
					character_counter <= 1;
					line_counter <= 1;
					
				when write_char =>
					-- Set up WRITE!
					-- Use the data from the string
					aline := message(line_counter);
					data <= std_logic_vector( to_unsigned( character'pos(aline(character_counter)),8));
 					wr <= '1';
					state <= write_char_wait;

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