library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity pwm_avalon is

    GENERIC (
        freq_bus : integer := 16;
        duty_bus : integer := 16
    );
    PORT( clock : in std_logic;
          reset_n : in std_logic;
          address : in STD_LOGIC_VECTOR(1 downto 0);
          writedata : in STD_LOGIC_VECTOR(31 downto 0);
			 readdata : out STD_LOGIC_VECTOR(31 downto 0);
			 write_n : in std_logic;
          chipselect : in std_logic;
			 pwm_out : out std_logic
    );
	
end pwm_avalon;

architecture arc_pwm_avalon of pwm_avalon is
	signal reset_pwm : std_logic := '1';
   signal freq : STD_LOGIC_VECTOR(freq_bus - 1 downto 0) := (others => '0');
   signal duty : STD_LOGIC_VECTOR(duty_bus - 1 downto 0) := (others => '0');
	signal prescaler: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
begin
	
	pwm: entity work.pwm
        Port map ( clock,
               reset_pwm,
					freq,
					duty,
               pwm_out,
					prescaler); 

					
	process_write : process(clock,reset_n)
	begin
		if(reset_n = '0') then
			reset_pwm <= '0';
			freq <= (others => '0');
			duty <= (others => '0');
		elsif(clock'event and clock = '1') then
			if(chipselect = '1' and write_n = '0') then
				if(address = "00") then
					prescaler <= writedata(15 downto 0);
				elsif(address = "01") then
					freq <= writedata(15 downto 0);
				
				elsif(address = "10") then
					duty <= writedata(15 downto 0);
					
				elsif(address = "11") then
					reset_pwm <= writedata(0);
				end if;
			end if;	
		end if;
	end process;
	
	process_read : process(address, prescaler, freq, duty, reset_pwm)
	begin
		case address is
			when "00" => readdata <= X"0000"&prescaler;
			when "01" => readdata <= X"0000"&freq;
			when "10" => readdata <= X"0000"&duty;
			when "11" => readdata <= (0 => reset_pwm, others => '0');
		end case;
	end process;
	
end arc_pwm_avalon;
