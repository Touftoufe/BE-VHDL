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
	shared variable count : integer range 0 to 7 := 0;
	signal TX_data : STD_LOGIC_VECTOR(63 downto 0) :=  X"7E570F1254FF9823";
begin

uart: entity work.UART_TX
        Port map( clock,
        	tb_reset_n,
			TX,
			X"28B0", -- tics per bit 50 Mhz / 4800 bauds = 0x28B1 
  		    TX_data((7 + 8 * count) downto (count * 8)),
  		    sig_valid
           );

	DATA: process(sig_valid,tb_reset_n)
	begin
		if(tb_reset_n = '0') then
			count := 0;
		elsif(sig_valid'event and sig_valid = '1') then
			count := count + 1;
		end if;
	end process;

end ARC_TB_UART_TX;