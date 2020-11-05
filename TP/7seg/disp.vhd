library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity disp is
	PORT(
			out_7seg : out std_logic_vector(6 downto 0);
			clock,rst : in std_logic
			);
			
end disp;

ARCHITECTURE arc_disp OF disp IS
	signal int_subclk : std_logic;
	signal count : STD_LOGIC_VECTOR(4-1 downto 0) := (others => '0');
BEGIN
	divider1: entity work.DIVIDER
        generic map (40, 50000000-1)
        Port map ( clock,
               rst,
               int_subclk); 
	
	counter1: entity work.COUNTER
        generic map (4, 0)
        Port map ( int_subclk,
               rst,
               '0',
               '0',
               count); 
               
    decoder1: entity work.dec_7seg
        Port map ( out_7seg,
               count,
               clock); 
               
end arc_disp;