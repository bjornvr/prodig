library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_bin_bcd is
end tb_bin_bcd;

architecture tb of tb_bin_bcd is
	signal bin_in			:  std_logic_vector 	(7 downto 0);
   signal bcd_out 		:	std_logic_vector	(11 downto 0);

	
component bin_bcd
	 port(
	 bin_in			: in 	std_logic_vector 	(7 downto 0);
	 bcd_out		: out	std_logic_vector 	(11 downto 0)

	 );
end component;

begin
	dut: bin_bcd
	port map (
	bin_in => bin_in,
	bcd_out => bcd_out
	);

	
gen : process is
begin
	 bin_in	<= "11111111";			
	 wait;
end process;
end tb;