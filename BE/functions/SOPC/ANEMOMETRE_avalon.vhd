library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity anemometre_avalon is

    PORT( clk_50M : in std_logic;
			 in_freq_anemometre : in std_logic;
          reset_n : in std_logic;
          address : in STD_LOGIC;
          writedata : in STD_LOGIC_VECTOR(31 downto 0);
			 readdata : out STD_LOGIC_VECTOR(31 downto 0);
			 write_n : in std_logic;
          chipselect : in std_logic;
			 data_valid : out std_logic;
          data_anemometre : out STD_LOGIC_VECTOR(7 downto 0) := (others => '0')
    );
	
end anemometre_avalon;

architecture arc_anemometre_avalon of anemometre_avalon is
	signal reset_anemometre : std_logic := '1';
	signal continu : std_logic := '0';
	signal start_stop : std_logic := '0';
   signal config : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
   signal code : STD_LOGIC_VECTOR(8 downto 0) := (others => '0');
	signal int_data_anemometre : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
	signal int_data_valid : std_logic;
begin
	
	pwm: entity work.ANEMOMETRE
        Port map ( clk_50M,
               in_freq_anemometre,
					reset_anemometre,
					continu,
               start_stop,
					int_data_valid,
					int_data_anemometre); 

	process_out: process(clk_50M)
	begin
		if(clk_50M'event and clk_50M = '1') then
			data_valid <= int_data_valid;
			data_anemometre <= int_data_anemometre;
		end if;
	end process;
	process_write : process(clk_50M,reset_n)
	begin
		if(reset_n = '0') then
			reset_anemometre <= '0';
			config <= (others => '0');
			code <= (others => '0');
			start_stop <= '0';
			continu <= '0';
			
		elsif(clk_50M'event and clk_50M = '1') then
			if(chipselect = '1' and write_n = '0') then
				if(address = '0') then
					config <= writedata(2 downto 0);
					reset_anemometre <= config(0);
					continu <= config(1);
					start_stop <= config(2);
				end if;
				
			end if;	
		end if;
	end process;
	
	process_read : process(address, int_data_valid, int_data_anemometre)
	begin
			case address is
				when '1' => readdata <= X"00000" & "000" & int_data_valid & int_data_anemometre;
				when others => readdata <= (others => '0');
			end case;
	end process;
	
end arc_anemometre_avalon;
