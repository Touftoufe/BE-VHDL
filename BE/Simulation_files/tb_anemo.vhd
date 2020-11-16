library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TB_ANEMO is
end TB_ANEMO;

architecture ARC_TB_ANEMO of TB_ANEMO is 

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
	signal sig_valid : std_logic := '0';
	signal freq_anemo : std_logic := '0';
	signal freq_out: STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
begin

  -- Clock generation with concurrent procedure call
  clk_gen(clock, 1000);  -- 1 kHz clock
  clk_gen(freq_anemo, 2);  -- 1 Hz clock

	anemo: entity work.ANEMOMETRE
        Port map( clock,
           freq_anemo,
			  '0',
			  '0', -- continu
			  '1', --start_stop
			  sig_valid,
           freq_out
           );  
			  
end ARC_TB_ANEMO;