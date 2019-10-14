-- Name:				Max_rpm.vhd
-- Filetype:		VHDL Hardware Discription
-- Date:				11 october 2019
-- Update:			Updated with comments for readability
-- Description:	Maximale RPM calculator
-- Author:			Jacco van Egmond for PRODIG-PETERS-PG1
-- State:			Release
-- Error:			-
-- Version:			1.4.1
-- License:			Mozilla Public License Version 2.0
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity prodig_7_seg_decoder is
	port(
			rpm_mem 	: in unsigned(7 downto 0);
			bcd_hun 	: out std_logic_vector (6 downto 0);
			bcd_ten	: out std_logic_vector (6 downto 0); 
			bcd_one	: out std_logic_vector (6 downto 0)
			);
end entity prodig_7_seg_decoder;

architecture rtl of prodig_7_seg_decoder is
	signal bcd : std_logic_vector (11 downto 0);
	
    procedure add3 (signal rpm_mem: in  std_logic_vector (3 downto 0); 
                    signal bcd: out std_logic_vector (3 downto 0)) is
    variable is_gt_4:  std_logic;
    begin
        is_gt_4 := rpm_mem(3) or (rpm_mem(2) and (rpm_mem(1) or rpm_mem(0)));

        if is_gt_4 = '1' then
        -- if to_integer(unsigned (bin)) > 4 then
            bcd <= std_logic_vector(unsigned(rpm_mem) + "0011");
        else
            bcd <= rpm_mem;
        end if;
    end procedure;

    signal U0bin,U1bin,U2bin,U3bin,U4bin,U5bin,U6bin:
                std_logic_vector (3 downto 0);

    signal U0bcd,U1bcd,U2bcd,U3bcd,U4bcd,U5bcd,U6bcd:
                std_logic_vector (3 downto 0);       
begin
    U0bin <= std_logic_vector(unsigned('0' & rpm_mem (7 downto 5)));
    U1bin <= U0bcd(2 downto 0) & rpm_mem(4);
    U2bin <= U1bcd(2 downto 0) & rpm_mem(3);
    U3bin <= U2bcd(2 downto 0) & rpm_mem(2);
    U4bin <= U3bcd(2 downto 0) & rpm_mem(1);

    U5bin <= '0' & U0bcd(3) & U1bcd(3) & U2bcd(3);
    U6bin <= U5bcd(2 downto 0) & U3bcd(3);

U0: add3(U0bin,U0bcd);

U1: add3(U1bin,U1bcd);

U2: add3(U2bin,U2bcd);

U3: add3(U3bin,U3bcd);

U4: add3(U4bin,U4bcd);

U5: add3(U5bin,U5bcd);

U6: add3(U6bin,U6bcd);

OUTP:
    bcd <= '0' & '0' & U5bcd(3) & U6bcd & U4bcd & rpm_mem(0);
	 

		with bcd(3  downto 0)  select
				--				 6543210
				bcd_one <=	"1000000" when "0000",--0
								"1111001" when "0001",--1
								"0100100" when "0010",--2
								"0110000" when "0011",--3
								"0011001" when "0100",--4
								"0010010" when "0101",--5
								"0000010" when "0110",--6
								"1111000" when "0111",--7
								"0000000" when "1000",--8
								"0010000" when "1001",--9
								"-------" when others;
		
		with bcd(7  downto 4)  select
				--				 6543210
				bcd_ten <=	"1000000" when "0000",--0
								"1111001" when "0001",--1
								"0100100" when "0010",--2
								"0110000" when "0011",--3
								"0011001" when "0100",--4
								"0010010" when "0101",--5
								"0000010" when "0110",--6
								"1111000" when "0111",--7
								"0000000" when "1000",--8
								"0010000" when "1001",--9
								"-------" when others;

		with bcd(11  downto 8)  select
				--			 	 6543210
				bcd_hun <=	"1000000" when "0000",--0
								"1111001" when "0001",--1
								"0100100" when "0010",--2
								"0110000" when "0011",--3
								"0011001" when "0100",--4
								"0010010" when "0101",--5
								"0000010" when "0110",--6
								"1111000" when "0111",--7
								"0000000" when "1000",--8
								"0010000" when "1001",--9
								"-------" when others;
			


end rtl ;