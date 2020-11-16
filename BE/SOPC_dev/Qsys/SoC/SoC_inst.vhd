	component SoC is
		port (
			clk_clk                                  : in  std_logic                    := 'X';             -- clk
			keys_in_export                           : in  std_logic_vector(1 downto 0) := (others => 'X'); -- export
			leds_out_export                          : out std_logic_vector(7 downto 0);                    -- export
			pwm_out_new_signal                       : out std_logic;                                       -- new_signal
			anemometer_in_freq_anemometre_new_signal : in  std_logic                    := 'X';             -- new_signal
			anemometer_data_anemometre_new_signal    : out std_logic_vector(7 downto 0);                    -- new_signal
			anemometer_data_valid_new_signal         : out std_logic;                                       -- new_signal
			reset_reset_n                            : in  std_logic                    := 'X'              -- reset_n
		);
	end component SoC;

	u0 : component SoC
		port map (
			clk_clk                                  => CONNECTED_TO_clk_clk,                                  --                           clk.clk
			keys_in_export                           => CONNECTED_TO_keys_in_export,                           --                       keys_in.export
			leds_out_export                          => CONNECTED_TO_leds_out_export,                          --                      leds_out.export
			pwm_out_new_signal                       => CONNECTED_TO_pwm_out_new_signal,                       --                       pwm_out.new_signal
			anemometer_in_freq_anemometre_new_signal => CONNECTED_TO_anemometer_in_freq_anemometre_new_signal, -- anemometer_in_freq_anemometre.new_signal
			anemometer_data_anemometre_new_signal    => CONNECTED_TO_anemometer_data_anemometre_new_signal,    --    anemometer_data_anemometre.new_signal
			anemometer_data_valid_new_signal         => CONNECTED_TO_anemometer_data_valid_new_signal,         --         anemometer_data_valid.new_signal
			reset_reset_n                            => CONNECTED_TO_reset_reset_n                             --                         reset.reset_n
		);

