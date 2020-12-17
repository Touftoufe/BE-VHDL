library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Buttons_avalon is 
PORT( clock : in std_logic;
	reset_n : in std_logic;
	address : in std_logic;
	writedata : in STD_LOGIC_VECTOR(31 downto 0);
	readdata : out STD_LOGIC_VECTOR(31 downto 0);
	write_n : in std_logic;
	chipselect : in std_logic;
	b_Babord, b_Tribord, b_STBY : in std_logic;
	l_Babord, l_Tribord, l_STBY : out std_logic;
	buzzer : out std_logic
	);

end Buttons_avalon;


architecture arc_Buttons_avalon of Buttons_avalon is
	signal config : std_logic;
	signal code : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
	signal reset_buttons : std_logic := '0';

begin

	buttons: entity work.buttons
	Port map ( clock,
		reset_buttons,
		b_Babord,
		b_Tribord, 
		b_STBY,
		l_Babord, 
		l_Tribord, 
		l_STBY,
		buzzer,
		code); 

-------------------- AVALON BUS -------------------
process_write : process(clock,reset_n)
begin
	if(reset_n = '0') then
		config <= '0';
		reset_buttons <= '0';

	elsif(clock'event and clock = '1') then
		if(chipselect = '1' and write_n = '0') then
			if(address = '0') then
				config <= writedata(0);
				reset_buttons <= config;
			end if;
		end if;	
	end if;
end process;

process_read : process(clock)
begin
	if(clock'event and clock = '1') then
		if(chipselect = '1' and write_n = '1') then
			case address is
				when '0' => readdata(0) <= config;

				when '1' => readdata(3 downto 0) <= code;
			end case;
		end if;
	end if;
end process;

end arc_Buttons_avalon;
