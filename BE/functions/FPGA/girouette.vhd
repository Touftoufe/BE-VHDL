library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


entity GIROUETTE is
    Port ( clock : in STD_LOGIC;
           pwm : in std_logic;
			  reset : in std_logic;
           angle : out STD_LOGIC_VECTOR(9 downto 0) := (others => '0')
           );
end GIROUETTE;

architecture arc_girouette of GIROUETTE is 
	signal int_subclk : std_logic := '0';
	signal reset_counter : std_logic := '0';
	signal Etat_haut : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
begin
clock_div: entity work.DIVIDER
        generic map (16)
        Port map ( clock,
               '0',
               int_subclk,
					std_logic_vector(to_unsigned(50-1, 16))); 

freq_count: entity work.COUNTER
        generic map (16)
        Port map ( int_subclk,
               reset_counter,
               '0',
               '0',
               Etat_haut); 


calcul_angle : process(clock, reset)
begin
	if(reset = '1') then
		reset_counter <= '1';
		angle <= (others => '0');
	else
		if(clock'event and clock = '1') then
			if(pwm = '1') then
				reset_counter <= '0';
			elsif(reset_counter = '0') then 
				angle <= std_logic_vector(resize(25*((unsigned(Etat_haut)) - 1000)/1000, 10));
				reset_counter <= '1';
			end if;
		end if;
	end if;
end process;

end arc_girouette;