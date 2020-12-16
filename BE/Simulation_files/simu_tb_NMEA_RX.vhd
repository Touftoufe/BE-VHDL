library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SIMU_TB_NMEA_RX is
end SIMU_TB_NMEA_RX;

architecture ARC_SIMU_TB_UART_RX of SIMU_TB_NMEA_RX is 

  constant c_BIT_PERIOD : time := 208333 ns;
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

  procedure UART_WRITE_BYTE (
    i_Data_In       : in  std_logic_vector(7 downto 0);
    signal o_Serial : out std_logic) is
  begin

    -- Send Start Bit
    o_Serial <= '0';
    wait for c_BIT_PERIOD;

    -- Send Data Byte
    for ii in 0 to 7 loop
      o_Serial <= i_Data_In(ii);
      wait for c_BIT_PERIOD;
    end loop;  -- ii

    -- Send Stop Bit
    o_Serial <= '1';
    wait for c_BIT_PERIOD;
  end UART_WRITE_BYTE;

	signal clock : std_logic := '0';
	signal sig_valid, RX : std_logic := '1';
	signal reset_n : std_logic := '1';
	signal rx_out: STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
begin

  -- Clock generation with concurrent procedure call
  clk_gen(clock, 50000000);  -- 50 MHz clock
  --clk_gen(RX, 2400);  -- 2400 Hz clock


	nmea: entity work.NMEA_RX
        Port map( clock,
           reset_n,
			     RX,
           sig_valid
           );  
			  

  process
  begin
    -- Send a command to the UART
    RX <= '1';
    wait for 100 ns;
    wait until rising_edge(clock);
    UART_WRITE_BYTE(X"40", RX);
    wait until rising_edge(clock);
    UART_WRITE_BYTE(X"40", RX);
    wait until rising_edge(clock);
    UART_WRITE_BYTE(X"24", RX);
    wait until rising_edge(clock);
    UART_WRITE_BYTE(X"40", RX);
    wait until rising_edge(clock);
    UART_WRITE_BYTE(X"40", RX);
    wait until rising_edge(clock);
    UART_WRITE_BYTE(X"30", RX);
    wait until rising_edge(clock);
    UART_WRITE_BYTE(X"40", RX);
    wait until rising_edge(clock);
    UART_WRITE_BYTE(X"35", RX);
    wait until rising_edge(clock);
    UART_WRITE_BYTE(X"39", RX);
    wait until rising_edge(clock);
    UART_WRITE_BYTE(X"40", RX);
    wait until rising_edge(clock);
    UART_WRITE_BYTE(X"34", RX);
    wait until rising_edge(clock);
    UART_WRITE_BYTE(X"29", RX);
    wait until rising_edge(clock);
    UART_WRITE_BYTE(X"40", RX);
    wait until rising_edge(clock);
    UART_WRITE_BYTE(X"30", RX);
    wait until rising_edge(clock);
    UART_WRITE_BYTE(X"31", RX);
    wait until rising_edge(clock);
    UART_WRITE_BYTE(X"55", RX);
    wait until rising_edge(clock);
    UART_WRITE_BYTE(X"40", RX);
    wait until rising_edge(clock);
    UART_WRITE_BYTE(X"30", RX);
    wait until rising_edge(clock);
    UART_WRITE_BYTE(X"31", RX);
    wait until rising_edge(clock);
    UART_WRITE_BYTE(X"32", RX);
    wait until rising_edge(clock);


  end process;
end ARC_SIMU_TB_UART_RX;