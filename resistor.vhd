LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity resistor is
	port (
		clock		: in  std_logic;
		areset	: in	std_logic;
		res_busy	: in  std_logic;
		res_data : in  std_logic_vector(7 downto 0);
		res_up	: out std_logic;
		res_down	: out std_logic;
		N_readADC: out std_logic;
		N_convst : out std_logic;
		resistance: out std_logic_vector(7 downto 0)
		);
end entity;

architecture main of resistor is
signal resstart : std_logic := '0';
signal pass		 : std_logic := '0';
signal readADC		std_logic := '0';
begin

process (clock) is

begin
	if areset = '0' then
		resistance <= "0000000";
		resstart <= '0';
		pass		<= '0';
	else
		if resstart = '1' then
			N_convst <= '0';
			if pass = '1' then
				if N_readADC = '0' then
					N_readADC <= '1';
					pass <= '0';
					resstart <= '0';
				else
					N_readADC <= '0';
				end if;
			else
				if res_busy = '0' then
					if N_readADC = '0' then
						resistance <= res_data;
						N_readADC <= '1';
						pass <= '1';
					else
						N_readADC <= '1';
					end if;
				end if;
			end if;
		else
			N_convst <= '1';
			resstart <= '1';
		end if;
	end if;
end process;

end architecture;