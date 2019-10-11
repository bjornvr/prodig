-- Name:				division.vhd
-- Filetype:		VHDL Hardware Discription
-- Date:				23 september 2019
-- Description:	psuedo-divides tix to calculate RPM
-- Author:			Bjoern van Rozelaar for PRODIG-PETERS-PG1
-- State:			Testing
-- Error:			-
-- Version:			1.0

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity division is
	port (tix_mem	: in unsigned (15 downto 0);
			areset	: in std_logic;
			calc		: in std_logic;
			clock		: in std_logic;
			rpm_mem  : out unsigned (7 downto 0);
			te_hoog	: out std_logic
			);
end entity division;   

architecture rtl of division is
	
begin
	process (areset, calc, clock, tix_mem)
	variable x		: unsigned (19 downto 0);
	variable rpm	: unsigned (7 downto 0);
	variable stop	: std_logic;
   variable tix_int : unsigned (15 downto 0);
	begin
		
		--Asynchronous reset or start calculation
		if areset = '0' then
			tix_int := "0000000000000000";
			RPM := "00000000";
			stop := '1';
			x := "10010010011111000000"; -- 600.000 to x
			
		elsif rising_edge (clock) then
			if tix_mem > 30000 or tix_mem = 0 then
				rpm_mem <= "00000000";
				rpm := "00000000";
				te_hoog <= '0';
			elsif tix_mem < 3000 then
				-- RPM te hoog
				te_hoog <= '1';
			else
				te_hoog <= '0';
				if calc = '1' then
					tix_int := tix_mem;
					rpm := "00000000";
					x := "10010010011111000000"; -- 600.000 to x
					stop := '0';
				elsif stop = '0' then
					if (tix_int > "000101110111000") then -- Als tix_int > next check
						if (tix_int < "111010100110000") then -- Alx tix_int < 30.000 ga rekenen
							if x > tix_int then
								x    := x - tix_int;
								rpm  := rpm + 1;  
							else
								stop := '1';
							end if;
						else
							rpm  := "11001000";
							stop := '1';
						end if;
					else
						rpm  := "00000000";
						stop := '1'  ;
					end if;
				else
					rpm_mem <= rpm;
				end if;
			end if;
		end if;
	end process;
	

	
	
end architecture rtl;