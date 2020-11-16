library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


entity TB_ANEMO is
    Port (  clock : in STD_LOGIC;
				--freq_anemo : in std_logic;
				tb_reset : in std_logic;
				--tb_continu : out std_logic;
				--start_stop : out std_logic;
				freq_out : buffer STD_LOGIC_VECTOR(7 downto 0) := (others => '0')
			);
end TB_ANEMO;

architecture ARC_TB_ANEMO of TB_ANEMO is 
	signal sig_valid : std_logic := '0';
	signal freq_anemo : std_logic := '0';
	signal int_seconde : STD_LOGIC_VECTOR(9 downto 0) := (others => '0');
begin


pwm1: entity work.pwm
        Port map( clock,
           not tb_reset,
			  X"0190", -- freq: 400 //250Hz
           X"00C8", -- duty: 200 
			  freq_anemo,
			  X"01F3" -- prescaler : 500-1
           );


anemo: entity work.anemometre
        Port map( clock,
           freq_anemo,
			  '0',
			  '1', -- continu
			  '0', -- start_stop
			  sig_valid,
           freq_out
           );
			  



end ARC_TB_ANEMO;