library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity UART_TX is
	 GENERIC (
        freq_bus : integer := 16
    );
    PORT( clock : in std_logic;
          reset_n : in std_logic;
          TX : out std_logic := '1';
          Baud : in STD_LOGIC_VECTOR(freq_bus - 1 downto 0);
			 TX_data: in STD_LOGIC_VECTOR(7 downto 0);
			 TX_data_valid : buffer std_logic := '0'
    );
	
end UART_TX;

architecture arc_UART_TX of UART_TX is	
	signal sub_clk : std_logic := '0';
	shared variable count : std_LOGIC_VECTOR(3 downto 0) := (others => '0');
begin

	data_Tx_freq: entity work.DIVIDER
		generic map (freq_bus)
      Port map ( clock,
					reset_n,
               sub_clk,
               Baud); 
	
	transmit : Process(sub_clk, reset_n)
		variable TX_data_temp : std_LOGIC_VECTOR(7 downto 0) := (others => '0');
	begin
		if(reset_n = '1') then
			TX <= '1';
			count := (others => '0');
			
		elsif(sub_clk'event and sub_clk = '1') then
			if(count = 0) then
				TX <= '0';
				TX_data_temp := TX_data;
			elsif(count < 9) then
				TX <= TX_data_temp(0);
				TX_data_temp := "0" & TX_data_temp(7 downto 1);
			elsif(count = 9)  then
				TX <= '1';	
			end if;
			
			if(count < 9) then
				count := count + 1;
			else
				count := (others => '0');
			end if;
			
		end if;
		
	end process;
	
	TX_end: process(clock, reset_n)
	begin
		if(reset_n = '1') then
			TX_data_valid <= '0';
		elsif(clock'event and clock = '1') then
			if(count = 9 and TX_data_valid = '0') then
				TX_data_valid <= '1';
			elsif(TX_data_valid = '1') then
				TX_data_valid <= '0';
			end if;
		end if;
	end process;
	
end arc_UART_TX;
