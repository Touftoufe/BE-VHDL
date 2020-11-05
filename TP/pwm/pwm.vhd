library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity pwm is

    GENERIC (
        prescaler : integer := 0;
        freq_bus : integer := 16;
        duty_bus : integer := 16
    );
    PORT( clock : in std_logic;
          reset_n : in std_logic;
          freq : in STD_LOGIC_VECTOR(freq_bus - 1 downto 0) := (others => '0');
          duty : in STD_LOGIC_VECTOR(duty_bus - 1 downto 0) := (others => '0');
          pwm_out : out std_logic
    );
	
end pwm;

architecture arc_pwm of pwm is
	signal int_subclk : std_logic := '0';
	signal reset_counter : std_logic := '0';
	signal freq_compare : STD_LOGIC_VECTOR(freq_bus - 1 downto 0) := (others => '0');
begin
	clock_div: entity work.DIVIDER
        generic map (8, 50-1)
        Port map ( clock,
               reset_n,
               int_subclk); 
    
    freq_count: entity work.COUNTER
        generic map (freq_bus, 0)
        Port map ( int_subclk,
               reset_counter,
               '0',
               '1',
               freq_compare); 
	
	comparator1 : process(clock, reset_n)
        begin
			if(reset_n = '1') then
				reset_counter <= '1';
				pwm_out <= '0';
            elsif (clock'event and clock='1') then
				if(reset_counter = '1') then
					reset_counter <= '0';
				end if;
                
				if (freq_compare < duty) then
					pwm_out <= '1';
				elsif (freq_compare < freq) then
					pwm_out <= '0';
				elsif (freq_compare = freq) then
				reset_counter <= '1';	
                end if;
                
            end if;
		end process;   
    
end arc_pwm;
