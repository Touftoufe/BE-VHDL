----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 
-- Design Name: 
-- Module Name: 
-- Project Name: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision: 0.1
-- Revision 0.1 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


-- --------------------- COUNTER ------------------------ --
entity COUNTER is
    generic (
        size : integer := 16;
        preload: integer :=0
    );
    Port ( clk : in STD_LOGIC;
           rst : in std_logic;
           direction : in std_logic;
           faling_rising_edge : in std_logic;
           count : buffer STD_LOGIC_VECTOR(size-1 downto 0)
           );
end COUNTER;


architecture arc_counter of counter is
begin
    process(clk,rst)
    begin
        if(rst = '1') then 
            count <= (others => direction);
        elsif (clk'event and clk='1') then
            if(preload > 0 and count = std_logic_vector(to_unsigned(preload, count'length))) then
                count <= (others => '0');
            else
                count <= count + ((not direction) and '1') - (direction and '1');
            end if;
        end if;
    end process;
    
end arc_counter;

-- ------------------ end counter ------------------------- --


-- ------------------ DIVIDER ----------------------------- --
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

ENTITY DIVIDER IS 
    GENERIC (
        size : integer := 16;
        prescaler : integer :=0
    );
    PORT( CLK,rst : in std_logic;
          subCLK: buffer std_logic;
          count : buffer STD_LOGIC_VECTOR(size-1 downto 0));
END DIVIDER;

architecture arc_divider of divider is
begin
    counter1: entity work.COUNTER
        generic map (size, prescaler)
        Port map ( clk,
               rst,
               '0',
               '1',
               count); 
    divided_clock: process(clk,rst)
        begin
            if (rst = '1') then 
                subCLK <= '0';
            elsif (clk'event and clk='1') then
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

