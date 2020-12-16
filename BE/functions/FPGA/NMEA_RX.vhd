library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity NMEA_RX is 
PORT( clock : in std_logic;
	reset_n : in std_logic;
	rx_in : in std_logic;
	data_valid_out : out std_logic;
	freq_out : out std_LOGIC_VECTOR(7 downto 0) := (others => '0')
	);

end NMEA_RX;


architecture arc_NMEA_RX of NMEA_RX is
	signal config : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
	signal synchro : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
	signal centaine : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
	signal dizaine : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
	signal unite : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

	signal RX_data : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
	signal end_RX, data_valid : std_logic := '0';
	signal reset_n_UART_RX : std_logic := '1';
	signal start_stop, mode : std_logic := '1';

begin

	uart: entity work.UART_RX
	Port map ( clock,
		reset_n_UART_RX,
		rx_in,
		X"28B0",
		RX_data,
		end_RX); 

	data_valid_out <= data_valid;


--------------------- FSM -----------------------
	FSM : process (clock, reset_n)
	type State is (IDLE_State,start_State,S_State,C_State,D_State,U_State,ok_State);
	variable present_State, next_State : State := IDLE_State;

	begin
		if(reset_n = '0') then
			reset_n_UART_RX <= '0';
			data_valid <= '0';
			synchro <= (others => '0');
			centaine <= (others => '0');
			dizaine <= (others => '0');
			unite <= (others => '0');

		elsif clock'event and clock = '1' then
			case present_State is
			when IDLE_State => 
			if (start_stop = '1' or mode = '1') then
				next_State := start_State;
			else
				next_State := present_State;
			end if;
			
			when start_State => 
			if(start_stop = '0' and mode = '0') then
				next_State := IDLE_State;
			elsif (end_RX = '1' and RX_data = X"40") then
				next_State := S_State;
			else
				next_State := present_State;
			end if;

			when S_State => 
			if (end_RX = '1' and (RX_data >= X"30" and RX_data <= X"39")) then
				next_State := C_State;
			elsif (end_RX = '1' and RX_data = X"40") then
				next_State := S_State;
			elsif (end_RX = '1') then
				next_State := start_State;
			else
				next_State := present_State;
			end if;
			
			when C_State => 
			if (end_RX = '1' and (RX_data >= X"30" and RX_data <= X"39")) then
				next_State := D_State;
			elsif (end_RX = '1' and RX_data = X"40") then
				next_State := S_State;
			elsif (end_RX = '1') then
				next_State := start_State;
			else
				next_State := present_State;
			end if;

			when D_State => 
			if (end_RX = '1' and (RX_data >= X"30" and RX_data <= X"39")) then
				next_State := U_State;
			elsif (end_RX = '1' and RX_data = X"40") then
				next_State := S_State;	
			elsif (end_RX = '1') then
				next_State := start_State;
			else
				next_State := present_State;
			end if;
			
			when U_State => 
			next_State := ok_State;
			when ok_State => 
			next_State := start_State;
			
		end case;

		present_State := next_State;

		case present_State is
			when IDLE_State =>
				reset_n_UART_RX <= '0';
				freq_out <= X"01";

			when start_State =>
				reset_n_UART_RX <= '1';
				data_valid <= '0';
				freq_out <= X"02";

			when S_State => 
				synchro <= RX_data;
				freq_out <= X"04";

			when C_State =>
				centaine <= RX_data;
				freq_out <= X"08";

			when D_State =>
				dizaine <= RX_data;
				freq_out <= X"10";

			when U_State =>
				unite <= RX_data;
				freq_out <= X"20";

			when ok_State =>
				data_valid <= '1';
				freq_out <= X"40";
				
		end case;
	end if;
end process;

-------------------- FIN FSM ----------------------


end arc_NMEA_RX;
