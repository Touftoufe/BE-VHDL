----------------------------------------------------------------------------------
-- Company: 
-- Name: Sofiane AOUCI & Kassendra BONHOURE
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
        size : integer := 16
    );
    Port ( clk : in STD_LOGIC;
           rst_n : in std_logic;
           direction : in std_logic := '0';
           faling_rising_edge : in std_logic := '0';
           count : buffer STD_LOGIC_VECTOR(size-1 downto 0);
			  preload: in STD_LOGIC_VECTOR(size-1 downto 0) := (others => '0')
           );
end COUNTER;


architecture arc_counter of counter is
begin
    process(clk,rst_n)
    begin
        if(rst_n = '0') then 
            count <= (others => direction);
        elsif (clk'event and clk='1') then
            if(preload > 0 and count = preload) then
                count <= (others => '0');
            else
                count <= count + ((not direction) and '1') - (direction and '1');
            end if;
        end if;
    end process;
    
end arc_counter;

-- ------------------ end counter ------------------------- --




