library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity max_rpm is
	port (
			areset : in std_logic;
			rpm_in : in unsigned (7 downto 0);
			rpm_max : out std_logic_vector (7 downto 0);
			time_save: out std_logic
			);
end entity max_rpm;

architecture rtl of max_rpm is
	signal rpm_int : std_logic_vector(7 downto 0);
begin
	process (rpm_in)
		variable rpm_max_int : std_logic_vector (7 downto 0) := "00000000";
		begin
		rpm_int <= std_logic_vector(rpm_in);
		if areset = '0' then
		rpm_max <= "00000000";
		rpm_max_int := "00000000";
		time_save <= '0';
		elsif rpm_int > rpm_max_int then
			rpm_max_int := rpm_int;
			time_save <= '1';
		else
			time_save <= '0';
		end if;
		rpm_max <= rpm_max_int;
	end process;
end rtl;