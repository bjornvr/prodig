LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity tb_Display is
end entity;

architecture test of tb_Display is

	signal clk_in : std_logic;
	signal areset_in	: std_logic;
	signal LCD_EN	: std_logic;
	signal LCD_RS	: std_logic;
	signal LCD_RW	: std_logic;
	signal LCD_DATA: std_logic_vector(7 downto 0);
	signal LEDR		: std_logic_vector(9 downto 0);
	
component Display is
	port(
			clk_in : in std_logic;
			areset_in   : in std_logic;
			LEDR     : out std_logic_vector(9 downto 0);
			-- LCD of the DE0 board
			LCD_EN   : out std_logic;
			LCD_RS   : out std_logic;
			LCD_RW   : out std_logic;
			LCD_DATA : inout std_logic_vector(7 downto 0)
			-- Daadwerkelijke waardes
			--RPM		: in unsigned (7 downto 0)
		);
end component;

begin

dut: Display
port map (clk_in => clk_in, areset_in => areset_in, LCD_EN => LCD_EN, LCD_RS => LCD_RS, LCD_RW => LCD_RW, LCD_DATA => LCD_DATA, LEDR => LEDR);

clockgen : process is
begin
	clk_in <= '0';
	wait for 50 us;
	clk_in <= '1';
	wait for 50 us;
end process;

process is
begin
	areset_in <= '0';
	wait for 100 us;
	areset_in <= '1';
	--wait for 100 us;
	
	wait;
end process;

end architecture;