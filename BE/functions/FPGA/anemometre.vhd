library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


entity ANEMOMETRE is
    Port ( clk_50M : in STD_LOGIC;
           in_freq_anemometre : in std_logic;
			  reset_n : in std_logic;
			  continu : in std_logic;
			  start_stop : in std_logic;
			  data_valid : out std_logic;
           data_anemometre : buffer STD_LOGIC_VECTOR(7 downto 0) := (others => '0')
           );
end ANEMOMETRE;

architecture ARC_ANEMOMETRE of ANEMOMETRE is 
	signal int_subclk : std_logic := '0';
	signal reset_counter : std_logic := '0';
	signal int_seconde : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
	signal int_freq : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
	
	type State is (state0,state1,state2,state3,state4,state5);
	Signal present_State, next_State : State := state0;
	
begin
clock_div: entity work.DIVIDER
        generic map (16)
        Port map ( clk_50M,
               reset_n,
               int_subclk,
					std_logic_vector(to_unsigned(50000-1, 16))); 

seconde_count: entity work.COUNTER
        generic map (16)
        Port map ( int_subclk,
               reset_counter,
               '0',
               '0',
               int_seconde); 

freq_count: entity work.COUNTER
        generic map (8)
        Port map ( in_freq_anemometre,
               reset_counter,
               '0',
               '0',
               int_freq); 

					
Sequentiel_up_state : process (clk_50M, reset_n)
begin
	if reset_n = '0' then
		present_State <= state0;
	elsif clk_50M'event and clk_50M = '1' then
		present_State <= next_State;
	end if;
end process;

Combinatory_states : process (clk_50M)
begin
	case present_State is
		when state0 => 
			if (continu = '1' or (continu = '0' and start_stop = '1')) then
				next_State <= state1;
			else
				next_State <= present_State;
			end if;
		
		when state1 => 
			if (int_seconde >= 1000) then
				next_State <= state2;
			else
				next_State <= present_State;
			end if;
			
		when State2 => 
			if (continu = '1') then 
				next_State <= state3;
			elsif(continu = '0' and start_stop = '1') then
				next_State <= state4;
			elsif (continu = '0' and start_stop = '0') then
				next_State <= state5;
			else
				next_State <= present_State;
			end if;
		
		when State3 => 
				next_State <= state1;
				
		when State4 => 
			if (start_stop = '0') then 
				next_State <= state5;
			else
				next_State <= present_State;
			end if;
		
		when State5 => 
				next_State <= state0;
		
	end case;
end process;

Combinatory_outputs : process (clk_50M, reset_n)
begin
	if(reset_n = '0') then
		data_anemometre <= (others => '0');
		data_valid <= '0';
		reset_counter <= '0';
	elsif(clk_50M'event and clk_50M = '1') then
		if(present_State = state1) then
			reset_counter <= '1';
		elsif(present_State = state2) then
			data_valid <= '1';
			data_anemometre <= int_freq;
		elsif(present_State = state3 or present_State = state5) then
			reset_counter <= '0';
			data_valid <= '0';
		end if;
	end if;
end process;					

end ARC_ANEMOMETRE;