
module SoC (
	anemometer_data_anemometre_new_signal,
	anemometer_data_valid_new_signal,
	anemometer_in_freq_anemometre_new_signal,
	clk_clk,
	keys_in_export,
	leds_out_export,
	nmea_rx_new_signal,
	nmea_rx_0_data_valid_out_new_signal,
	nmea_tx_new_signal,
	pwm_out_new_signal,
	reset_reset_n);	

	output	[7:0]	anemometer_data_anemometre_new_signal;
	output		anemometer_data_valid_new_signal;
	input		anemometer_in_freq_anemometre_new_signal;
	input		clk_clk;
	input	[1:0]	keys_in_export;
	output	[7:0]	leds_out_export;
	input		nmea_rx_new_signal;
	output		nmea_rx_0_data_valid_out_new_signal;
	output		nmea_tx_new_signal;
	output		pwm_out_new_signal;
	input		reset_reset_n;
endmodule
