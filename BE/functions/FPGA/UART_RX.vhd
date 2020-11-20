library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity UART_RX is
	 GENERIC (
        freq_bus : integer := 16
    );
    PORT( clock : in std_logic;
          reset_n : in std_logic;
          RX : in std_logic;
          TicBit : in STD_LOGIC_VECTOR(freq_bus - 1 downto 0) := (others => '0');
			 RX_data: out STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
			 RX_data_valid : out std_logic := '0'
    );
	
end UART_RX;

architecture arc_UART_RX of UART_RX is
	signal reset_counter, reset_start_bit : std_logic := '0';
	signal freq_compare : std_LOGIC_VECTOR(freq_bus - 1 downto 0) := (others => '0');
	signal read_data_signal : std_logic := '0';
	signal start_bit : std_logic := '0';
	
	type State is (reset_State,IDLE_State,start_State,Rx_State,bit_read_prep_State,bit_read_State,stop_State);
	Signal present_State, next_State : State := reset_State;
	Signal n_data_bits : std_LOGIC_VECTOR(3 downto 0) := (others => '0');
	signal RX_data_temp : std_LOGIC_VECTOR(7 downto 0) := (others => '0');
	signal X2 : std_logic := '0';
	
begin
	freq_count: entity work.COUNTER
        generic map (freq_bus)
        Port map ( clock,
               reset_counter,
               '0',
               '1',
               freq_compare); 
					
comparator : process(clock, reset_counter)
variable ticBit_temp : std_LOGIC_VECTOR(15 downto 0) := (others => '0');
begin
	if(reset_counter = '1') then
		read_data_signal <= '0';
	elsif (clock'event and clock='1') then
		if(X2 = '1') then
			ticBit_temp := "0" & ticBit(15 downto 1);
		else
			ticBit_temp := ticBit;
		end if;
		
		if(freq_compare >= ticBit_temp) then
			read_data_signal <= '1';
		else 
			read_data_signal <= '0';
		end if;
		
   end if;
end process; 

start_bit_detect : process(RX, reset_start_bit)
begin
	if(reset_start_bit = '1') then
		start_bit <= '0';
	elsif (RX'event and RX='0') then
		start_bit <= '1';
   end if;
end process; 		
		
		
------------------------- FSM ----------------------------
Sequentiel_up_state : process (clock, reset_n)
begin
	if reset_n = '1' then
		present_State <= reset_State;
	elsif clock'event and clock = '1' then
		present_State <= next_State;
	end if;
end process;

Combinatory_states : process (clock)
begin
	case present_State is
		when IDLE_State => 
			if (start_bit = '1') then
				next_State <= start_State;
			else
				next_State <= present_State;
			end if;
		
		when start_State => 
			if (read_data_signal = '1') then
				next_State <= Rx_State;
			else
				next_State <= present_State;
			end if;
			
		when Rx_State => 
			next_State <= bit_read_prep_State;
		
		when bit_read_prep_State => 
			if (read_data_signal = '1') then
				next_State <= bit_read_State;
			else
				next_State <= present_State;
			end if;
				
		when bit_read_State => 
			if (n_data_bits < 7) then 
				next_State <= bit_read_prep_State;
			elsif (n_data_bits >= 7) then
				next_State <= stop_State;
			else
				next_State <= present_State;
			end if;
		
		when stop_State => 
				next_State <= reset_State;
		when reset_State => 
				next_State <= IDLE_State;
		
	end case;
end process;

Combinatory_outputs : process (clock, reset_n)
begin
	if(reset_n = '1') then
		reset_counter <= '1';
		reset_start_bit <= '1';
		RX_data <= (others => '0');
		
	elsif(clock'event and clock = '1') then
		case present_State is
			when IDLE_State =>
				reset_start_bit <= '0';

			when start_State =>
				reset_counter <= '0';
				X2 <= '1';
				
			when Rx_State => 
				reset_counter <= '1';
				X2 <= '0';
				
			when bit_read_prep_State =>
				reset_counter <= '0';
				
			when bit_read_State =>
				reset_counter <= '1';
				n_data_bits <= n_data_bits + 1;
				RX_data_temp <= RX & RX_data_temp(7 downto 1);
			when stop_State =>
				RX_data_valid <= '1';
				RX_data <=  RX_data_temp;
				
			when reset_State =>
				RX_data_valid <= '0';
				reset_counter <= '1';
				reset_start_bit <= '1';
				n_data_bits <= (others => '0');
			
		end case;
	end if;
end process;					

		
end arc_UART_RX;
