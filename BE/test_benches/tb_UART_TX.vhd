library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


entity TB_UART_TX is
    Port (  clock : in STD_LOGIC;
				tb_reset_n : in std_logic;
				freq_out : buffer STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
				TX : out std_logic := '1'
			);
end TB_UART_TX;

architecture ARC_TB_UART_TX of TB_UART_TX is 
	signal sig_valid : std_logic := '0';
	signal TX_data : STD_LOGIC_VECTOR(7 downto 0) := X"23";
begin

uart: entity work.UART_TX
        Port map( clock,
        	tb_reset_n,
			TX,
			X"28B0", -- tics per bit 50 Mhz / 4800 bauds = 0x28B1 
  		    TX_data,
  		    sig_valid
           );

blink: entity work.DIVIDER
		generic map (32)
      Port map ( clock,
				tb_reset_n.
               freq_out(0),
               X"02faf080"); 

end ARC_TB_UART_TX;