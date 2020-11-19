library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SIMU_TB_UART_RX is
end SIMU_TB_UART_RX;

architecture ARC_SIMU_TB_UART_RX of SIMU_TB_UART_RX is 

  -- Procedure for clock generation
  procedure clk_gen(signal clk : out std_logic; constant FREQ : integer) is
    constant PERIOD    : time := 1 sec / FREQ;        -- Full period
    constant HIGH_TIME : time := PERIOD / 2;          -- High time
    constant LOW_TIME  : time := PERIOD - HIGH_TIME;  -- Low time; always >= HIGH_TIME
  begin
    -- Check the arguments
    assert (HIGH_TIME /= 0 fs) report "clk_plain: High time is zero; time resolution to large for frequency" severity FAILURE;
    -- Generate a clock cycle
    loop
      clk <= '1';
      wait for HIGH_TIME;
      clk <= '0';
      wait for LOW_TIME;
    end loop;
  end procedure;

	signal clock : std_logic := '0';
	signal sig_valid, RX : std_logic := '0';
	signal reset_n : std_logic := '0';
	signal rx_out: STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
begin

  -- Clock generation with concurrent procedure call
  clk_gen(clock, 50000000);  -- 50 MHz clock
  clk_gen(RX, 2400);  -- 2400 Hz clock

	uart: entity work.UART_RX
        Port map( clock,
           reset_n,
			  RX,
			  X"28B1", -- Baud = 4800, tics per bit : 10417 // 0x28b1
			  rx_out,
           sig_valid
           );  
			  
end ARC_SIMU_TB_UART_RX;