library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity NMEA_TX_avalon is 
    PORT( clock : in std_logic;
          reset_n : in std_logic;
          address : in STD_LOGIC_VECTOR(2 downto 0);
          writedata : in STD_LOGIC_VECTOR(31 downto 0);
          readdata : out STD_LOGIC_VECTOR(31 downto 0);
          write_n : in std_logic;
          chipselect : in std_logic;
          tx_out : out std_logic
    );
	
end NMEA_TX_avalon;


architecture arc_NMEA_TX_avalon of NMEA_TX_avalon is
   	signal config : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
   	signal synchro : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
   	signal centaine : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
   	signal dizaine : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
   	signal unite : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

   	signal TX_data : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
   	signal end_TX, data_valid : std_logic := '0';
	signal reset_n_UART_TX : std_logic := '1';
	signal start_stop : std_logic := '0';

begin
	
	uart: entity work.UART_TX
        Port map ( clock,
               reset_n_UART_TX,
               tx_out,
               X"28B0",
               TX_data,
               end_TX); 


    process_transmit: process(end_TX, start_stop)
    	variable count : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
    begin
    	if(start_stop = '1') then
    		reset_n_UART_TX <= config(0);
	    	if(end_TX'event and end_TX = '1') then	
	    		if(count = 3) then
					data_valid <= '1';
				else
					data_valid <= '0';
				end if;
				count := count + 1;	
    		end if;
    		if(count = "00") then 
    			TX_data <= synchro;
    		elsif(count = "01") then 
    			TX_data <= centaine;
    		elsif(count = "10") then 
    			TX_data <= dizaine;
    		elsif(count = "11") then 
    			TX_data <= unite;
    		end if;
   		else
   			reset_n_UART_TX <= '0';
				--TX_data <= (others => '0');
    	end if;
    end process;
					
	process_write : process(clock,reset_n)
	begin
		if(reset_n = '0') then
			config <= (others => '0');
			synchro <= (others => '0');
			centaine <= (others => '0');
			dizaine <= (others => '0');
			unite <= (others => '0');
			start_stop <= '0';
			
		elsif(clock'event and clock = '1') then
			if(chipselect = '1' and write_n = '0') then
				if(address = "000") then
					config <= data_valid & writedata(1 downto 0);
					start_stop <= config(1);
					--end_TX <= config(2);
				elsif(address = "001") then
					synchro <= writedata(7 downto 0);
				
				elsif(address = "010") then
					centaine <= writedata(7 downto 0);
					
				elsif(address = "011") then
					dizaine <= writedata(7 downto 0);

				elsif(address = "100") then
					unite <= writedata(7 downto 0);
				end if;
			end if;	
		end if;
	end process;

	process_read : process(address, config, synchro, centaine, dizaine, unite)
	begin
			case address is
				when "000" => readdata <= X"0000000" & "0" & config;
				when "001" => readdata <= X"000000"  & synchro;
				when "010" => readdata <= X"000000"  & centaine;
				when "011" => readdata <= X"000000"  & dizaine;
				when "100" => readdata <= X"000000"  & unite;
				
				when others => readdata <= (others => '0');
			end case;
	end process;
	
end arc_NMEA_TX_avalon;
