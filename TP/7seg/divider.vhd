-- ------------------ DIVIDER ----------------------------- --
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

ENTITY DIVIDER IS 
    GENERIC (
        size : integer := 4;
        prescaler : integer := 0
    );
    PORT( clock : in std_logic;
          rst : in std_logic;
          subCLK: buffer std_logic := '0'
          );
END DIVIDER;

architecture arc_divider of divider is
signal count : STD_LOGIC_VECTOR(size-1 downto 0) := (others => '0');
begin
    counter1: entity work.COUNTER
        generic map (size, prescaler)
        Port map ( clock,
               rst,
               '0',
               '1',
               count); 
    divided_clock: process(clock,rst)
        begin
            if (rst = '1') then 
                subCLK <= '0';
                
            elsif (clock'event and clock='1') then
				
                if (
                       (prescaler = 0 and (count = (count'range => '1') or (to_integer(unsigned(count)) = 2**(count'length - 1 ) - 1))) 
                    or (prescaler > 0 and (count = std_logic_vector(to_unsigned(prescaler, count'length)) or (to_integer(unsigned(count)) = prescaler/2)))
                    
                   ) 
                    then
                subCLK <= not subCLK;
                end if;
            end if;
    end process;      
end arc_divider;
-- ------------------ END DIVIDER ------------------------- --