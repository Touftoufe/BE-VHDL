library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Buttons is 
PORT( clock : in std_logic;
	reset_n : in std_logic;
	b_Babord, b_Tribord, b_STBY : in std_logic;
	l_Babord, l_Tribord, l_STBY : out std_logic;
	buzzer : out std_logic;
	code_out : out std_logic_vector(3 downto 0)
	);

end Buttons;

architecture arc_Buttons of Buttons is
	signal s_1Hz, pwm_out, bip_end, bip, bip2, reset_bip, reset_Delay : std_logic;
	signal Delay : std_logic_vector(3 downto 0) := (others => '0');
begin

	p_1Hz : entity work.DIVIDER
		generic map (32)
        Port map ( clock,
               reset_n,
               s_1Hz,
			   std_logic_vector(to_unsigned(50000000-1, 32))); 
				
    pwm : entity work.pwm
        Port map ( clock,
        	reset_n,
			std_logic_vector(to_unsigned(1000-1, 16)),
			std_logic_vector(to_unsigned(40-1, 16)),
            pwm_out,
			std_logic_vector(to_unsigned(50-1, 16)));

    p_bip : process(s_1Hz, reset_n)
    	variable count : integer range 0 to 1 := 0; 
    begin
    	if(reset_n = '0'or reset_bip = '0') then 
    		bip <= '0';
    		bip2 <= '0';
    		bip_end <= '0';
		else
			bip2 <= s_1Hz;
			if (s_1Hz'event and s_1Hz = '1') then
				bip <= not bip;
				count := count + 1;
				if(count = 0) then
					bip_end <= '1';
				end if;
			end if;
    	end if;	
    end process;

    p_delay: entity work.counter
     	generic map (4)
        Port map ( s_1Hz,
               reset_Delay,
               '0',
               '0',
               Delay); 
--------------------- FSM -----------------------
FSM : process (clock, reset_n)
	variable present_State, next_State : integer range 0 to 13 := 0;
	begin
		if(reset_n = '0') then
			present_State := 0;
			l_STBY <= s_1Hz;
			l_Tribord <= pwm_out;
			l_Babord <= pwm_out;
			reset_Delay <= '0';
			reset_bip <= '0';

		elsif clock'event and clock = '1' then
			case present_State is
			when 0 => 
				if(b_Tribord = '0') then
					next_State := 2;
				elsif(b_Babord = '0') then
					next_State := 1;
				elsif (b_STBY = '0') then
					next_State := 3;
				else
					next_State := present_State;
				end if;
			
			when 1 => 
				if(b_Babord = '1') then
					next_State := 0;
				else
					next_State := present_State;
				end if;

			when 2 => 
				if(b_Tribord = '1') then
					next_State := 0;
				else
					next_State := present_State;
				end if;
			
			when 3 => 
				if(b_STBY = '1') then
					next_State := 4;
				else
					next_State := present_State;
				end if;

			when 4 => 
				if (b_STBY = '0') then
					next_State := 5;
				elsif (b_Babord = '0') then
					next_State := 6;	
				elsif (b_Tribord = '0') then
					next_State := 7;
				else
					next_State := present_State;
				end if;
				
			when 5 => 
				if(b_STBY = '1') then	
					next_State := 0;
				else
					next_State := present_State;
				end if;

			when 6 => 
				if (b_Babord = '0' and Delay >= 2) then
					next_State := 8;
				elsif (b_Babord = '1' and Delay < 2) then
					next_State := 9;	
				else
					next_State := present_State;
				end if;

			when 7 => 
				if (b_Tribord = '0' and Delay >= 2) then
					next_State := 10;
				elsif (b_Tribord = '1' and Delay < 2) then
					next_State := 11;	
				else
					next_State := present_State;
				end if;
			
			when 8 => 
				if (bip_end = '1') then
					next_State := 12;	
				else
					next_State := present_State;
				end if;

			when 9 => 
				if (bip_end = '1') then
					next_State := 4;	
				else
					next_State := present_State;
				end if;

			when 10 => 
				if (bip_end = '1') then
					next_State := 13;	
				else
					next_State := present_State;
				end if;

			when 11 => 
				if (bip_end = '1') then
					next_State := 4;	
				else
					next_State := present_State;
				end if;

			when 12 => 
				if (b_Babord = '1') then
					next_State := 4;	
				else
					next_State := present_State;
				end if;

			when 13 => 
				if (b_Tribord = '1') then
					next_State := 4;	
				else
					next_State := present_State;
				end if;
		end case;

		present_State := next_State;

		case present_State is
			when 0 =>
				code_out <= "0000";
				l_STBY <= s_1Hz;
				l_Tribord <= pwm_out;
				l_Babord <= pwm_out;
				buzzer <= '0';

			when 1 =>
				code_out <= "0001";
				l_STBY <= s_1Hz;
				l_Tribord <= pwm_out;
				l_Babord <= '1';
				buzzer <= '0';

			when 2 =>
				code_out <= "0010";
				l_STBY <= s_1Hz;
				l_Tribord <= '1';
				l_Babord <= pwm_out;
				buzzer <= '0';

			when 3 =>
				code_out <= "0000";
				l_STBY <= s_1Hz;
				l_Tribord <= pwm_out;
				l_Babord <= pwm_out;
				buzzer <= '0';

			when 4 =>
				code_out <= "0011";
				l_STBY <= '1';
				l_Tribord <= pwm_out;
				l_Babord <= pwm_out;
				buzzer <= '0';
				reset_Delay <= '0';
				reset_bip <= '0';

			when 5 =>
				code_out <= "0000";
				l_STBY <= s_1Hz;
				l_Tribord <= pwm_out;
				l_Babord <= pwm_out;
				buzzer <= '0';

			when 6 =>
				code_out <= "0011";
				l_STBY <= '1';
				l_Tribord <= pwm_out;
				l_Babord <= pwm_out;
				buzzer <= '0';
				reset_Delay <= '1';

			when 7 =>
				code_out <= "0011";
				l_STBY <= '1';
				l_Tribord <= pwm_out;
				l_Babord <= pwm_out;
				buzzer <= '0';
				reset_Delay <= '1';

			when 8 =>
				code_out <= "0101";
				l_STBY <= '1';
				l_Babord <= bip2;
				l_Tribord <= pwm_out;
				buzzer <= bip2;
				reset_bip <= '1';

			when 9 =>
				code_out <= "0100";
				l_STBY <= '1';
				l_Babord <= bip;
				l_Tribord <= pwm_out;
				buzzer <= bip;
				reset_bip <= '1';

			when 10 =>
				code_out <= "0110";
				l_STBY <= '1';
				l_Babord <= pwm_out;
				l_Tribord <= bip2;
				buzzer <= bip2;
				reset_bip <= '1';

			when 11 =>
				code_out <= "0111";
				l_STBY <= '1';
				l_Tribord <= bip;
				l_Babord <= pwm_out;
				buzzer <= bip;
				reset_bip <= '1';

			when 12 =>
				code_out <= "0101";
				l_STBY <= '1';
				l_Tribord <= pwm_out;
				l_Babord <= pwm_out;
				buzzer <= '0';	

			when 13 =>
				code_out <= "0110";
				l_STBY <= '1';
				l_Tribord <= pwm_out;
				l_Babord <= pwm_out;
				buzzer <= '0';

		end case;
	end if;
end process;

-------------------- FIN FSM ----------------------

-------------------- AVALON BUS -------------------
--process_write : process(clock,reset_n)
--begin
--	if(reset_n = '0') then
--		config <= (others => '0');
--		start_stop <= '0';
--		mode <= '0';
--
--	elsif(clock'event and clock = '1') then
--		if(chipselect = '1' and write_n = '0') then
--			if(address = "000") then
--				config <= writedata(2 downto 0);
--				start_stop <= config(1);
--				mode <= config(2);
--			end if;
--		end if;	
--	end if;
--end process;
--
--process_read : process(clock)
--begin
--	if(clock'event and clock = '1') then
--		if(chipselect = '1' and write_n = '1') then
--			case address is
--				when "000" => readdata <= X"0000000" & "0" & config;
--				when "001" => readdata <= X"000000"  & synchro;
--				when "010" => readdata <= X"000000"  & centaine;
--				when "011" => readdata <= X"000000"  & dizaine;
--				when "100" => readdata <= X"000000"  & unite;
--
--				when others => readdata <= (others => '0');
--			end case;
--		end if;
--	end if;
--end process;

end arc_Buttons;
