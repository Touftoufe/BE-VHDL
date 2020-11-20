library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


entity TB_UART_RX is
    Port (  clock : in STD_LOGIC;
				tb_reset : in std_logic;
				freq_out : buffer STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
				RX : in std_logic := '0'
			);
end TB_UART_RX;

architecture ARC_TB_UART_RX of TB_UART_RX is 
	signal sig_valid : std_logic := '0';
	signal int_seconde : STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
	signal RX_out : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
begin

uart: entity work.UART_RX
        Port map( clock,
        	not tb_reset,
			RX,
			X"28B1", -- tics per bit
  		    RX_out,
  		    sig_valid
           );
			 
output : process(clock, sig_valid)
begin
	if(tb_reset = '0') then
		freq_out <= (others => '0');
	elsif (clock'event and clock = '1' and sig_valid = '1') then
		freq_out <= RX_out;
	end if;
end process; 



end ARC_TB_UART_RX;