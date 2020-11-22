-- ------------------ DIVIDER ----------------------------- --
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

ENTITY DIVIDER IS 
    GENERIC (
        size : integer := 4
    );
    PORT( clock : in std_logic;
          rst_n : in std_logic;
          subCLK: buffer std_logic := '0';
			 prescaler: in STD_LOGIC_VECTOR(size-1 downto 0) := (others => '0')
          );
END DIVIDER;

architecture arc_divider of divider is
signal count : STD_LOGIC_VECTOR(size-1 downto 0) := (others => '0');
begin
    counter1: entity work.COUNTER
        generic map (size)
        Port map ( clock,
               rst_n,
               '0',
               '1',
               count,
					prescaler); 
    divided_clock: process(clock,rst_n)
        begin
            if (rst_n = '0') then 
                subCLK <= '0';
            elsif (unsigned(prescaler) = 0) then
				subCLK <= clock;
            elsif (clock'event and clock='1') then
				
                if (
                       --(prescaler = 0 and (count = (count'range => '1') or (to_integer(unsigned(count)) = 2**(count'length - 1 ) - 1))) 
                    --or 
                    (count = prescaler or count = "0"&prescaler(prescaler'left downto 1))
                    
                   ) 
                    then
                subCLK <= not subCLK;
                end if;
            end if;
    end process;      
end arc_divider;
-- ------------------ END DIVIDER ------------------------- --