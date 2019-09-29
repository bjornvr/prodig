-- Name:				division.vhd
-- Filetype:		VHDL Testbench
-- Date:				23 september 2019
-- Description:	psuedo-divides tix to calculate RPM
-- Author:			Bjoern van Rozelaar for PRODIG-PETERS-PG1
-- State:			Testing
-- Error:			-
-- Version:			1.0

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--Empty entity
entity tb_division is
end entity;

--The architecture
architecture sim of tb_division is

--Signals to monitor
signal CLOCK_50 : std_logic := '0';
signal areset   : std_logic := '1';
signal calc		 : std_logic := '0';
signal tix_mem  : unsigned (15 downto 0);
signal rpm_mem  : unsigned ( 7 downto 0);

component division is
	port (tix_mem	: in unsigned (15 downto 0);
			areset	: in std_logic;
			calc		: in std_logic;
			clock		: in std_logic;
			rpm_mem  : out unsigned (7 downto 0)
	)
	;
end component division;

begin

dut: division
port map (tix_mem => tix_mem, areset => areset, calc => calc, clock => CLOCK_50, rpm_mem => rpm_mem);

--Clockgeneration
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
	tix_mem <= "0001011101110000"; -- put 6000 in tix_mem
	wait for 100 us;
	calc <= '1'; -- start calculation
	wait for 100 us;
	calc <= '0';
	wait for 1000 us;
	tix_mem <= "0010011100010000"; -- put 10000 in tix_mem
	wait for 100 us;
	calc <= '1'; -- start calculation
	wait for 100 us;
	calc <= '0';
	wait for 1000 us;
	wait;
end process;
--S

end architecture;