library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PRODIG_RPM is
	port(
		CLOCK_50 : in std_logic;
		clock1 : out std_logic;
		areset : in std_logic;
		hall_sens : in std_logic;
		HEX0_D : out std_logic_vector(6 downto 0);
		HEX1_D : out std_logic_vector(6 downto 0);
		HEX2_D : out std_logic_vector(6 downto 0);
		led : out std_logic;
		led2 : out std_logic;
		tix_mem_sim : out unsigned(15 downto 0);	-- Voor simulatie, verwijderen uit definitieve code	
		rpm_mem_sim : out unsigned( 7 downto 0);	-- Voor simulatie, verwijderen uit definitieve code	
		HEX3_D : out std_logic_vector(6 downto 0) := "1111111";
		HEX4_D : out std_logic_vector(6 downto 0) := "1111111";
		HEX5_D : out std_logic_vector(6 downto 0) := "1111111";
		HEX6_D : out std_logic_vector(6 downto 0) := "1111111";
		HEX7_D : out std_logic_vector(6 downto 0) := "1111111";
		HEX0_DP : out std_logic := '1';
		HEX1_DP : out std_logic := '1';
		HEX2_DP : out std_logic := '1';
		HEX3_DP : out std_logic := '1';
		HEX4_DP : out std_logic := '1';
		HEX5_DP : out std_logic := '1';
		HEX6_DP : out std_logic := '1';
		HEX7_DP : out std_logic := '1'
		);
end entity;

architecture code of PRODIG_RPM is

signal hall_sens_ontd : std_logic;
signal clock_int : std_logic;
signal tix_mem : unsigned(15 downto 0);
signal rpm_mem : unsigned(7 downto 0);
signal calc_int: std_logic;

component prodig_RPM_counter is
	port (
		clock		: in  std_logic;
		areset	: in  std_logic;
		hall_sens: in  std_logic;
		calc		: out std_logic;
		tix_mem	: out unsigned(15 downto 0)
		);
end component;

component prescaler is
	port (
		clkin  : in  std_logic;
		areset : in  std_logic;
		clkout : out std_logic
		);
end component;

component prodig_7_seg_decoder is
	port(
		rpm_mem 	: in  unsigned (7 downto 0);
		bcd_hun 	: out std_logic_vector (6 downto 0);
		bcd_ten	: out std_logic_vector (6 downto 0); 
		bcd_one	: out std_logic_vector (6 downto 0)
		);
end component;

component division is
	port(
		tix_mem	: in unsigned (15 downto 0);
		areset	: in std_logic;
		calc		: in std_logic;
		clock		: in std_logic;
		rpm_mem	: out unsigned (7 downto 0)
		);
end component;

--component ontdender is
--	port(
--		clock : in std_logic;
--		areset : in std_logic;
--		input : in std_logic;
--		output : out std_logic
--);
--end component;

begin

u0: prodig_RPM_counter
port map(clock => clock_int, areset => areset, hall_sens => hall_sens_ontd, tix_mem => tix_mem, calc => calc_int);

u1: prescaler
port map(clkin => CLOCK_50, areset => areset, clkout => clock_int);

u2: prodig_7_seg_decoder
port map(rpm_mem => rpm_mem, bcd_hun => HEX2_D, bcd_ten => HEX1_D, bcd_one => HEX0_D);

--u3: ontdender
--port map(input => hall_sens, clock => clock, output => hall_sens_ontd, areset => areset);

u5: division
port map(tix_mem => tix_mem, areset => areset, calc => calc_int, clock => clock_int, rpm_mem => rpm_mem);

--process (clock_int) is
--begin
--
--rpm_mem2 <= 600000/tix_mem;
--if rpm_mem2 < 200  and 20 < rpm_mem2 then
--rpm_mem <= rpm_mem2(7 downto 0);
--else
--rpm_mem <= "00000000";
--end if;
--tix_mem1 <= tix_mem;

--end process;

hall_sens_ontd <= hall_sens;
led2 <= hall_sens;
led <= hall_sens_ontd;
clock1 <= clock_int;
tix_mem_sim <= tix_mem;	-- Voor simulatie, verwijderen uit definitieve code	
rpm_mem_sim <= rpm_mem; -- Voor simulatie, verwijderen uit definitieve code	
end architecture;