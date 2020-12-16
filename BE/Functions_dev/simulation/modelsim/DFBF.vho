-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "12/16/2020 17:04:58"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	NMEA_RX IS
    PORT (
	clock : IN std_logic;
	reset_n : IN std_logic;
	rx_in : IN std_logic;
	data_valid_out : OUT std_logic;
	freq_out : OUT std_logic_vector(7 DOWNTO 0)
	);
END NMEA_RX;

-- Design Ports Information
-- data_valid_out	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_out[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_out[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_out[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_out[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_out[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_out[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_out[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_out[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_in	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF NMEA_RX IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_rx_in : std_logic;
SIGNAL ww_data_valid_out : std_logic;
SIGNAL ww_freq_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \freq_out[7]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \data_valid_out~output_o\ : std_logic;
SIGNAL \freq_out[0]~output_o\ : std_logic;
SIGNAL \freq_out[1]~output_o\ : std_logic;
SIGNAL \freq_out[2]~output_o\ : std_logic;
SIGNAL \freq_out[3]~output_o\ : std_logic;
SIGNAL \freq_out[4]~output_o\ : std_logic;
SIGNAL \freq_out[5]~output_o\ : std_logic;
SIGNAL \freq_out[6]~output_o\ : std_logic;
SIGNAL \freq_out[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \uart|present_State.reset_State~0_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \present_State.IDLE_State~feeder_combout\ : std_logic;
SIGNAL \present_State.IDLE_State~q\ : std_logic;
SIGNAL \rx_in~input_o\ : std_logic;
SIGNAL \uart|RX_data_temp[7]~feeder_combout\ : std_logic;
SIGNAL \uart|RX_data_temp[7]~0_combout\ : std_logic;
SIGNAL \uart|RX_data_temp[6]~feeder_combout\ : std_logic;
SIGNAL \uart|RX_data_temp[5]~feeder_combout\ : std_logic;
SIGNAL \uart|RX_data_temp[4]~feeder_combout\ : std_logic;
SIGNAL \uart|RX_data_temp[3]~feeder_combout\ : std_logic;
SIGNAL \uart|RX_data_temp[2]~feeder_combout\ : std_logic;
SIGNAL \uart|RX_data_temp[1]~feeder_combout\ : std_logic;
SIGNAL \uart|RX_data[1]~feeder_combout\ : std_logic;
SIGNAL \Combinatory_states~3_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Combinatory_states~0_combout\ : std_logic;
SIGNAL \uart|RX_data[0]~feeder_combout\ : std_logic;
SIGNAL \uart|RX_data[4]~feeder_combout\ : std_logic;
SIGNAL \uart|RX_data[5]~feeder_combout\ : std_logic;
SIGNAL \Combinatory_states~1_combout\ : std_logic;
SIGNAL \Combinatory_states~2_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \present_State.S_State~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \present_State.C_State~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \present_State.start_State~q\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \reset_n_UART_RX~combout\ : std_logic;
SIGNAL \uart|present_State.reset_State~q\ : std_logic;
SIGNAL \uart|Selector10~0_combout\ : std_logic;
SIGNAL \uart|Selector9~0_combout\ : std_logic;
SIGNAL \uart|Selector8~0_combout\ : std_logic;
SIGNAL \uart|Selector8~1_combout\ : std_logic;
SIGNAL \uart|LessThan1~0_combout\ : std_logic;
SIGNAL \uart|Selector7~0_combout\ : std_logic;
SIGNAL \uart|freq_count|count[0]~16_combout\ : std_logic;
SIGNAL \uart|start_bit~feeder_combout\ : std_logic;
SIGNAL \uart|Selector4~0_combout\ : std_logic;
SIGNAL \uart|reset_start_bit~feeder_combout\ : std_logic;
SIGNAL \uart|reset_start_bit~q\ : std_logic;
SIGNAL \uart|start_bit~q\ : std_logic;
SIGNAL \uart|Selector0~0_combout\ : std_logic;
SIGNAL \uart|present_State.IDLE_State~q\ : std_logic;
SIGNAL \uart|Selector1~0_combout\ : std_logic;
SIGNAL \uart|present_State.start_State~q\ : std_logic;
SIGNAL \uart|Selector5~0_combout\ : std_logic;
SIGNAL \uart|Selector5~1_combout\ : std_logic;
SIGNAL \uart|reset_counter~q\ : std_logic;
SIGNAL \uart|freq_count|count[0]~17\ : std_logic;
SIGNAL \uart|freq_count|count[1]~18_combout\ : std_logic;
SIGNAL \uart|freq_count|count[1]~19\ : std_logic;
SIGNAL \uart|freq_count|count[2]~20_combout\ : std_logic;
SIGNAL \uart|freq_count|count[2]~21\ : std_logic;
SIGNAL \uart|freq_count|count[3]~22_combout\ : std_logic;
SIGNAL \uart|freq_count|count[3]~23\ : std_logic;
SIGNAL \uart|freq_count|count[4]~24_combout\ : std_logic;
SIGNAL \uart|freq_count|count[4]~25\ : std_logic;
SIGNAL \uart|freq_count|count[5]~26_combout\ : std_logic;
SIGNAL \uart|freq_count|count[5]~27\ : std_logic;
SIGNAL \uart|freq_count|count[6]~28_combout\ : std_logic;
SIGNAL \uart|freq_count|count[6]~29\ : std_logic;
SIGNAL \uart|freq_count|count[7]~30_combout\ : std_logic;
SIGNAL \uart|freq_count|count[7]~31\ : std_logic;
SIGNAL \uart|freq_count|count[8]~32_combout\ : std_logic;
SIGNAL \uart|freq_count|count[8]~33\ : std_logic;
SIGNAL \uart|freq_count|count[9]~34_combout\ : std_logic;
SIGNAL \uart|freq_count|count[9]~35\ : std_logic;
SIGNAL \uart|freq_count|count[10]~36_combout\ : std_logic;
SIGNAL \uart|freq_count|count[10]~37\ : std_logic;
SIGNAL \uart|freq_count|count[11]~38_combout\ : std_logic;
SIGNAL \uart|freq_count|count[11]~39\ : std_logic;
SIGNAL \uart|freq_count|count[12]~40_combout\ : std_logic;
SIGNAL \uart|freq_count|count[12]~41\ : std_logic;
SIGNAL \uart|freq_count|count[13]~42_combout\ : std_logic;
SIGNAL \uart|freq_count|count[13]~43\ : std_logic;
SIGNAL \uart|freq_count|count[14]~44_combout\ : std_logic;
SIGNAL \uart|freq_count|count[14]~45\ : std_logic;
SIGNAL \uart|freq_count|count[15]~46_combout\ : std_logic;
SIGNAL \uart|LessThan0~1_combout\ : std_logic;
SIGNAL \uart|LessThan0~2_combout\ : std_logic;
SIGNAL \uart|Selector6~0_combout\ : std_logic;
SIGNAL \uart|X2~q\ : std_logic;
SIGNAL \uart|LessThan0~0_combout\ : std_logic;
SIGNAL \uart|LessThan0~3_combout\ : std_logic;
SIGNAL \uart|LessThan0~4_combout\ : std_logic;
SIGNAL \uart|LessThan0~5_combout\ : std_logic;
SIGNAL \uart|LessThan0~6_combout\ : std_logic;
SIGNAL \uart|LessThan0~7_combout\ : std_logic;
SIGNAL \uart|read_data_signal~q\ : std_logic;
SIGNAL \uart|next_State.Rx_State~0_combout\ : std_logic;
SIGNAL \uart|present_State.Rx_State~q\ : std_logic;
SIGNAL \uart|Selector2~0_combout\ : std_logic;
SIGNAL \uart|Selector2~1_combout\ : std_logic;
SIGNAL \uart|present_State.bit_read_prep_State~q\ : std_logic;
SIGNAL \uart|Selector3~0_combout\ : std_logic;
SIGNAL \uart|present_State.bit_read_State~q\ : std_logic;
SIGNAL \uart|next_State.stop_State~0_combout\ : std_logic;
SIGNAL \uart|present_State.stop_State~q\ : std_logic;
SIGNAL \uart|Selector11~0_combout\ : std_logic;
SIGNAL \uart|RX_data_valid~q\ : std_logic;
SIGNAL \Combinatory_states~4_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \present_State.D_State~q\ : std_logic;
SIGNAL \next_State.U_State~0_combout\ : std_logic;
SIGNAL \present_State.U_State~q\ : std_logic;
SIGNAL \present_State.ok_State~feeder_combout\ : std_logic;
SIGNAL \present_State.ok_State~q\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \data_valid~combout\ : std_logic;
SIGNAL \freq_out[7]~0_combout\ : std_logic;
SIGNAL \freq_out[7]~0clkctrl_outclk\ : std_logic;
SIGNAL \freq_out[0]$latch~combout\ : std_logic;
SIGNAL \freq_out[1]$latch~combout\ : std_logic;
SIGNAL \freq_out[2]$latch~combout\ : std_logic;
SIGNAL \freq_out[3]$latch~combout\ : std_logic;
SIGNAL \freq_out[4]$latch~combout\ : std_logic;
SIGNAL \freq_out[5]$latch~combout\ : std_logic;
SIGNAL \freq_out[6]$latch~combout\ : std_logic;
SIGNAL \freq_out[7]$latch~combout\ : std_logic;
SIGNAL \uart|freq_count|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \uart|RX_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart|RX_data_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart|n_data_bits\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rx_in~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset_n <= reset_n;
ww_rx_in <= rx_in;
data_valid_out <= ww_data_valid_out;
freq_out <= ww_freq_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\freq_out[7]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freq_out[7]~0_combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_rx_in~input_o\ <= NOT \rx_in~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y14_N9
\data_valid_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_valid~combout\,
	devoe => ww_devoe,
	o => \data_valid_out~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\freq_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \freq_out[0]$latch~combout\,
	devoe => ww_devoe,
	o => \freq_out[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\freq_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \freq_out[1]$latch~combout\,
	devoe => ww_devoe,
	o => \freq_out[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\freq_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \freq_out[2]$latch~combout\,
	devoe => ww_devoe,
	o => \freq_out[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\freq_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \freq_out[3]$latch~combout\,
	devoe => ww_devoe,
	o => \freq_out[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\freq_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \freq_out[4]$latch~combout\,
	devoe => ww_devoe,
	o => \freq_out[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\freq_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \freq_out[5]$latch~combout\,
	devoe => ww_devoe,
	o => \freq_out[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\freq_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \freq_out[6]$latch~combout\,
	devoe => ww_devoe,
	o => \freq_out[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\freq_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \freq_out[7]$latch~combout\,
	devoe => ww_devoe,
	o => \freq_out[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G18
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X50_Y10_N2
\uart|present_State.reset_State~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|present_State.reset_State~0_combout\ = !\uart|present_State.stop_State~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|present_State.stop_State~q\,
	combout => \uart|present_State.reset_State~0_combout\);

-- Location: IOIBUF_X53_Y14_N1
\reset_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: LCCOMB_X52_Y14_N20
\present_State.IDLE_State~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_State.IDLE_State~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \present_State.IDLE_State~feeder_combout\);

-- Location: FF_X52_Y14_N21
\present_State.IDLE_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \present_State.IDLE_State~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_State.IDLE_State~q\);

-- Location: IOIBUF_X45_Y0_N15
\rx_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_in,
	o => \rx_in~input_o\);

-- Location: LCCOMB_X49_Y14_N4
\uart|RX_data_temp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_data_temp[7]~feeder_combout\ = \rx_in~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_in~input_o\,
	combout => \uart|RX_data_temp[7]~feeder_combout\);

-- Location: LCCOMB_X49_Y14_N22
\uart|RX_data_temp[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_data_temp[7]~0_combout\ = (\reset_n_UART_RX~combout\ & \uart|present_State.bit_read_State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n_UART_RX~combout\,
	datad => \uart|present_State.bit_read_State~q\,
	combout => \uart|RX_data_temp[7]~0_combout\);

-- Location: FF_X49_Y14_N5
\uart|RX_data_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data_temp[7]~feeder_combout\,
	ena => \uart|RX_data_temp[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data_temp\(7));

-- Location: LCCOMB_X49_Y14_N18
\uart|RX_data_temp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_data_temp[6]~feeder_combout\ = \uart|RX_data_temp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|RX_data_temp\(7),
	combout => \uart|RX_data_temp[6]~feeder_combout\);

-- Location: FF_X49_Y14_N19
\uart|RX_data_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data_temp[6]~feeder_combout\,
	ena => \uart|RX_data_temp[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data_temp\(6));

-- Location: LCCOMB_X49_Y14_N20
\uart|RX_data_temp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_data_temp[5]~feeder_combout\ = \uart|RX_data_temp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_data_temp\(6),
	combout => \uart|RX_data_temp[5]~feeder_combout\);

-- Location: FF_X49_Y14_N21
\uart|RX_data_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data_temp[5]~feeder_combout\,
	ena => \uart|RX_data_temp[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data_temp\(5));

-- Location: LCCOMB_X49_Y14_N30
\uart|RX_data_temp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_data_temp[4]~feeder_combout\ = \uart|RX_data_temp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_data_temp\(5),
	combout => \uart|RX_data_temp[4]~feeder_combout\);

-- Location: FF_X49_Y14_N31
\uart|RX_data_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data_temp[4]~feeder_combout\,
	ena => \uart|RX_data_temp[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data_temp\(4));

-- Location: LCCOMB_X49_Y14_N16
\uart|RX_data_temp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_data_temp[3]~feeder_combout\ = \uart|RX_data_temp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|RX_data_temp\(4),
	combout => \uart|RX_data_temp[3]~feeder_combout\);

-- Location: FF_X49_Y14_N17
\uart|RX_data_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data_temp[3]~feeder_combout\,
	ena => \uart|RX_data_temp[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data_temp\(3));

-- Location: LCCOMB_X49_Y14_N6
\uart|RX_data_temp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_data_temp[2]~feeder_combout\ = \uart|RX_data_temp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_data_temp\(3),
	combout => \uart|RX_data_temp[2]~feeder_combout\);

-- Location: FF_X49_Y14_N7
\uart|RX_data_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data_temp[2]~feeder_combout\,
	ena => \uart|RX_data_temp[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data_temp\(2));

-- Location: FF_X50_Y14_N23
\uart|RX_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \uart|RX_data_temp\(2),
	clrn => \reset_n_UART_RX~combout\,
	sload => VCC,
	ena => \uart|present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data\(2));

-- Location: LCCOMB_X49_Y14_N24
\uart|RX_data_temp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_data_temp[1]~feeder_combout\ = \uart|RX_data_temp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_data_temp\(2),
	combout => \uart|RX_data_temp[1]~feeder_combout\);

-- Location: FF_X49_Y14_N25
\uart|RX_data_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data_temp[1]~feeder_combout\,
	ena => \uart|RX_data_temp[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data_temp\(1));

-- Location: LCCOMB_X50_Y14_N28
\uart|RX_data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_data[1]~feeder_combout\ = \uart|RX_data_temp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_data_temp\(1),
	combout => \uart|RX_data[1]~feeder_combout\);

-- Location: FF_X50_Y14_N29
\uart|RX_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data[1]~feeder_combout\,
	clrn => \reset_n_UART_RX~combout\,
	ena => \uart|present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data\(1));

-- Location: FF_X50_Y14_N31
\uart|RX_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \uart|RX_data_temp\(6),
	clrn => \reset_n_UART_RX~combout\,
	sload => VCC,
	ena => \uart|present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data\(6));

-- Location: FF_X50_Y14_N13
\uart|RX_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \uart|RX_data_temp\(3),
	clrn => \reset_n_UART_RX~combout\,
	sload => VCC,
	ena => \uart|present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data\(3));

-- Location: LCCOMB_X50_Y14_N30
\Combinatory_states~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combinatory_states~3_combout\ = (!\uart|RX_data\(6) & (((!\uart|RX_data\(2) & !\uart|RX_data\(1))) # (!\uart|RX_data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|RX_data\(2),
	datab => \uart|RX_data\(1),
	datac => \uart|RX_data\(6),
	datad => \uart|RX_data\(3),
	combout => \Combinatory_states~3_combout\);

-- Location: LCCOMB_X52_Y14_N30
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\present_State.S_State~q\) # ((\present_State.start_State~q\) # ((\present_State.D_State~q\) # (\present_State.C_State~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_State.S_State~q\,
	datab => \present_State.start_State~q\,
	datac => \present_State.D_State~q\,
	datad => \present_State.C_State~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X50_Y14_N5
\uart|RX_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \uart|RX_data_temp\(7),
	clrn => \reset_n_UART_RX~combout\,
	sload => VCC,
	ena => \uart|present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data\(7));

-- Location: LCCOMB_X50_Y14_N0
\Combinatory_states~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combinatory_states~0_combout\ = (\uart|RX_data_valid~q\ & (!\uart|RX_data\(1) & (!\uart|RX_data\(7) & !\uart|RX_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|RX_data_valid~q\,
	datab => \uart|RX_data\(1),
	datac => \uart|RX_data\(7),
	datad => \uart|RX_data\(2),
	combout => \Combinatory_states~0_combout\);

-- Location: FF_X49_Y14_N23
\uart|RX_data_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \uart|RX_data_temp\(1),
	sload => VCC,
	ena => \uart|RX_data_temp[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data_temp\(0));

-- Location: LCCOMB_X49_Y14_N28
\uart|RX_data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_data[0]~feeder_combout\ = \uart|RX_data_temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|RX_data_temp\(0),
	combout => \uart|RX_data[0]~feeder_combout\);

-- Location: FF_X49_Y14_N29
\uart|RX_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data[0]~feeder_combout\,
	clrn => \reset_n_UART_RX~combout\,
	ena => \uart|present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data\(0));

-- Location: LCCOMB_X50_Y14_N18
\uart|RX_data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_data[4]~feeder_combout\ = \uart|RX_data_temp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_data_temp\(4),
	combout => \uart|RX_data[4]~feeder_combout\);

-- Location: FF_X50_Y14_N19
\uart|RX_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data[4]~feeder_combout\,
	clrn => \reset_n_UART_RX~combout\,
	ena => \uart|present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data\(4));

-- Location: LCCOMB_X50_Y14_N8
\uart|RX_data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_data[5]~feeder_combout\ = \uart|RX_data_temp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|RX_data_temp\(5),
	combout => \uart|RX_data[5]~feeder_combout\);

-- Location: FF_X50_Y14_N9
\uart|RX_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data[5]~feeder_combout\,
	clrn => \reset_n_UART_RX~combout\,
	ena => \uart|present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data\(5));

-- Location: LCCOMB_X50_Y14_N12
\Combinatory_states~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combinatory_states~1_combout\ = (\uart|RX_data\(6) & (!\uart|RX_data\(4) & (!\uart|RX_data\(3) & !\uart|RX_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|RX_data\(6),
	datab => \uart|RX_data\(4),
	datac => \uart|RX_data\(3),
	datad => \uart|RX_data\(5),
	combout => \Combinatory_states~1_combout\);

-- Location: LCCOMB_X50_Y14_N10
\Combinatory_states~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combinatory_states~2_combout\ = (\Combinatory_states~0_combout\ & (!\uart|RX_data\(0) & \Combinatory_states~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Combinatory_states~0_combout\,
	datac => \uart|RX_data\(0),
	datad => \Combinatory_states~1_combout\,
	combout => \Combinatory_states~2_combout\);

-- Location: LCCOMB_X52_Y14_N18
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\ & ((\Combinatory_states~2_combout\) # ((!\uart|RX_data_valid~q\ & \present_State.S_State~q\)))) # (!\Selector1~0_combout\ & (!\uart|RX_data_valid~q\ & (\present_State.S_State~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \uart|RX_data_valid~q\,
	datac => \present_State.S_State~q\,
	datad => \Combinatory_states~2_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X52_Y14_N19
\present_State.S_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_State.S_State~q\);

-- Location: LCCOMB_X51_Y14_N24
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Combinatory_states~3_combout\ & (\Combinatory_states~4_combout\ & \present_State.S_State~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Combinatory_states~3_combout\,
	datac => \Combinatory_states~4_combout\,
	datad => \present_State.S_State~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X51_Y14_N25
\present_State.C_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart|RX_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_State.C_State~q\);

-- Location: LCCOMB_X51_Y14_N8
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\uart|RX_data_valid~q\ & ((\present_State.D_State~q\) # ((\present_State.C_State~q\) # (\present_State.S_State~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_State.D_State~q\,
	datab => \present_State.C_State~q\,
	datac => \uart|RX_data_valid~q\,
	datad => \present_State.S_State~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X51_Y14_N26
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\present_State.start_State~q\) # ((\Selector0~0_combout\ & ((!\Combinatory_states~3_combout\) # (!\Combinatory_states~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_State.start_State~q\,
	datab => \Selector0~0_combout\,
	datac => \Combinatory_states~4_combout\,
	datad => \Combinatory_states~3_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X52_Y14_N16
\Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = ((\present_State.ok_State~q\) # ((\Selector0~1_combout\ & !\Combinatory_states~2_combout\))) # (!\present_State.IDLE_State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_State.IDLE_State~q\,
	datab => \present_State.ok_State~q\,
	datac => \Selector0~1_combout\,
	datad => \Combinatory_states~2_combout\,
	combout => \Selector0~2_combout\);

-- Location: FF_X52_Y14_N17
\present_State.start_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \Selector0~2_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_State.start_State~q\);

-- Location: LCCOMB_X52_Y14_N14
\WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\present_State.start_State~q\) # (!\present_State.IDLE_State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_State.IDLE_State~q\,
	datad => \present_State.start_State~q\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X52_Y14_N0
reset_n_UART_RX : cycloneive_lcell_comb
-- Equation(s):
-- \reset_n_UART_RX~combout\ = (\reset_n~input_o\ & ((\WideOr3~0_combout\ & ((\present_State.start_State~q\))) # (!\WideOr3~0_combout\ & (\reset_n_UART_RX~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n_UART_RX~combout\,
	datab => \reset_n~input_o\,
	datac => \WideOr3~0_combout\,
	datad => \present_State.start_State~q\,
	combout => \reset_n_UART_RX~combout\);

-- Location: FF_X50_Y10_N3
\uart|present_State.reset_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|present_State.reset_State~0_combout\,
	clrn => \reset_n_UART_RX~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|present_State.reset_State~q\);

-- Location: LCCOMB_X50_Y10_N8
\uart|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector10~0_combout\ = (\uart|present_State.bit_read_State~q\ & (!\uart|n_data_bits\(0))) # (!\uart|present_State.bit_read_State~q\ & (\uart|n_data_bits\(0) & \uart|present_State.reset_State~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|present_State.bit_read_State~q\,
	datac => \uart|n_data_bits\(0),
	datad => \uart|present_State.reset_State~q\,
	combout => \uart|Selector10~0_combout\);

-- Location: FF_X50_Y10_N9
\uart|n_data_bits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|Selector10~0_combout\,
	ena => \reset_n_UART_RX~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|n_data_bits\(0));

-- Location: LCCOMB_X50_Y10_N26
\uart|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector9~0_combout\ = (\uart|present_State.bit_read_State~q\ & (\uart|n_data_bits\(0) $ ((\uart|n_data_bits\(1))))) # (!\uart|present_State.bit_read_State~q\ & (((\uart|n_data_bits\(1) & \uart|present_State.reset_State~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|present_State.bit_read_State~q\,
	datab => \uart|n_data_bits\(0),
	datac => \uart|n_data_bits\(1),
	datad => \uart|present_State.reset_State~q\,
	combout => \uart|Selector9~0_combout\);

-- Location: FF_X50_Y10_N27
\uart|n_data_bits[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|Selector9~0_combout\,
	ena => \reset_n_UART_RX~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|n_data_bits\(1));

-- Location: LCCOMB_X50_Y10_N18
\uart|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector8~0_combout\ = (\uart|present_State.bit_read_State~q\ & (\uart|n_data_bits\(2) $ (((\uart|n_data_bits\(1) & \uart|n_data_bits\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|n_data_bits\(1),
	datab => \uart|present_State.bit_read_State~q\,
	datac => \uart|n_data_bits\(0),
	datad => \uart|n_data_bits\(2),
	combout => \uart|Selector8~0_combout\);

-- Location: LCCOMB_X50_Y10_N20
\uart|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector8~1_combout\ = (\uart|Selector8~0_combout\) # ((!\uart|present_State.bit_read_State~q\ & (\uart|present_State.reset_State~q\ & \uart|n_data_bits\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|present_State.bit_read_State~q\,
	datab => \uart|present_State.reset_State~q\,
	datac => \uart|n_data_bits\(2),
	datad => \uart|Selector8~0_combout\,
	combout => \uart|Selector8~1_combout\);

-- Location: FF_X50_Y10_N21
\uart|n_data_bits[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|Selector8~1_combout\,
	ena => \reset_n_UART_RX~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|n_data_bits\(2));

-- Location: LCCOMB_X50_Y10_N10
\uart|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan1~0_combout\ = (\uart|n_data_bits\(1) & (\uart|n_data_bits\(0) & \uart|n_data_bits\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|n_data_bits\(1),
	datac => \uart|n_data_bits\(0),
	datad => \uart|n_data_bits\(2),
	combout => \uart|LessThan1~0_combout\);

-- Location: LCCOMB_X50_Y10_N30
\uart|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector7~0_combout\ = (\uart|present_State.bit_read_State~q\ & (\uart|LessThan1~0_combout\ $ ((\uart|n_data_bits\(3))))) # (!\uart|present_State.bit_read_State~q\ & (((\uart|n_data_bits\(3) & \uart|present_State.reset_State~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|LessThan1~0_combout\,
	datab => \uart|present_State.bit_read_State~q\,
	datac => \uart|n_data_bits\(3),
	datad => \uart|present_State.reset_State~q\,
	combout => \uart|Selector7~0_combout\);

-- Location: FF_X50_Y10_N31
\uart|n_data_bits[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|Selector7~0_combout\,
	ena => \reset_n_UART_RX~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|n_data_bits\(3));

-- Location: LCCOMB_X52_Y10_N0
\uart|freq_count|count[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|freq_count|count[0]~16_combout\ = \uart|freq_count|count\(0) $ (VCC)
-- \uart|freq_count|count[0]~17\ = CARRY(\uart|freq_count|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|freq_count|count\(0),
	datad => VCC,
	combout => \uart|freq_count|count[0]~16_combout\,
	cout => \uart|freq_count|count[0]~17\);

-- Location: LCCOMB_X49_Y10_N28
\uart|start_bit~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|start_bit~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \uart|start_bit~feeder_combout\);

-- Location: LCCOMB_X49_Y10_N16
\uart|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector4~0_combout\ = (\uart|present_State.IDLE_State~q\) # ((\uart|reset_start_bit~q\ & \uart|present_State.reset_State~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|present_State.IDLE_State~q\,
	datab => \uart|reset_start_bit~q\,
	datad => \uart|present_State.reset_State~q\,
	combout => \uart|Selector4~0_combout\);

-- Location: LCCOMB_X49_Y10_N30
\uart|reset_start_bit~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|reset_start_bit~feeder_combout\ = \uart|Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|Selector4~0_combout\,
	combout => \uart|reset_start_bit~feeder_combout\);

-- Location: FF_X49_Y10_N31
\uart|reset_start_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|reset_start_bit~feeder_combout\,
	clrn => \reset_n_UART_RX~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|reset_start_bit~q\);

-- Location: FF_X49_Y10_N29
\uart|start_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_rx_in~input_o\,
	d => \uart|start_bit~feeder_combout\,
	clrn => \uart|reset_start_bit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|start_bit~q\);

-- Location: LCCOMB_X49_Y10_N26
\uart|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector0~0_combout\ = ((\uart|present_State.IDLE_State~q\ & !\uart|start_bit~q\)) # (!\uart|present_State.reset_State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|present_State.reset_State~q\,
	datac => \uart|present_State.IDLE_State~q\,
	datad => \uart|start_bit~q\,
	combout => \uart|Selector0~0_combout\);

-- Location: FF_X49_Y10_N27
\uart|present_State.IDLE_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|Selector0~0_combout\,
	clrn => \reset_n_UART_RX~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|present_State.IDLE_State~q\);

-- Location: LCCOMB_X49_Y10_N24
\uart|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector1~0_combout\ = (\uart|present_State.IDLE_State~q\ & ((\uart|start_bit~q\) # ((!\uart|read_data_signal~q\ & \uart|present_State.start_State~q\)))) # (!\uart|present_State.IDLE_State~q\ & (!\uart|read_data_signal~q\ & 
-- (\uart|present_State.start_State~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|present_State.IDLE_State~q\,
	datab => \uart|read_data_signal~q\,
	datac => \uart|present_State.start_State~q\,
	datad => \uart|start_bit~q\,
	combout => \uart|Selector1~0_combout\);

-- Location: FF_X49_Y10_N25
\uart|present_State.start_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|Selector1~0_combout\,
	clrn => \reset_n_UART_RX~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|present_State.start_State~q\);

-- Location: LCCOMB_X50_Y10_N6
\uart|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector5~0_combout\ = (\uart|present_State.start_State~q\) # ((\uart|reset_counter~q\ & ((\uart|present_State.stop_State~q\) # (\uart|present_State.IDLE_State~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|reset_counter~q\,
	datab => \uart|present_State.stop_State~q\,
	datac => \uart|present_State.IDLE_State~q\,
	datad => \uart|present_State.start_State~q\,
	combout => \uart|Selector5~0_combout\);

-- Location: LCCOMB_X51_Y10_N20
\uart|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector5~1_combout\ = (\uart|Selector5~0_combout\) # (\uart|present_State.bit_read_prep_State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|Selector5~0_combout\,
	datad => \uart|present_State.bit_read_prep_State~q\,
	combout => \uart|Selector5~1_combout\);

-- Location: FF_X51_Y10_N21
\uart|reset_counter\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|Selector5~1_combout\,
	clrn => \reset_n_UART_RX~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|reset_counter~q\);

-- Location: FF_X52_Y10_N1
\uart|freq_count|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|freq_count|count[0]~16_combout\,
	clrn => \uart|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|freq_count|count\(0));

-- Location: LCCOMB_X52_Y10_N2
\uart|freq_count|count[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|freq_count|count[1]~18_combout\ = (\uart|freq_count|count\(1) & (!\uart|freq_count|count[0]~17\)) # (!\uart|freq_count|count\(1) & ((\uart|freq_count|count[0]~17\) # (GND)))
-- \uart|freq_count|count[1]~19\ = CARRY((!\uart|freq_count|count[0]~17\) # (!\uart|freq_count|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|freq_count|count\(1),
	datad => VCC,
	cin => \uart|freq_count|count[0]~17\,
	combout => \uart|freq_count|count[1]~18_combout\,
	cout => \uart|freq_count|count[1]~19\);

-- Location: FF_X52_Y10_N3
\uart|freq_count|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|freq_count|count[1]~18_combout\,
	clrn => \uart|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|freq_count|count\(1));

-- Location: LCCOMB_X52_Y10_N4
\uart|freq_count|count[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|freq_count|count[2]~20_combout\ = (\uart|freq_count|count\(2) & (\uart|freq_count|count[1]~19\ $ (GND))) # (!\uart|freq_count|count\(2) & (!\uart|freq_count|count[1]~19\ & VCC))
-- \uart|freq_count|count[2]~21\ = CARRY((\uart|freq_count|count\(2) & !\uart|freq_count|count[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|freq_count|count\(2),
	datad => VCC,
	cin => \uart|freq_count|count[1]~19\,
	combout => \uart|freq_count|count[2]~20_combout\,
	cout => \uart|freq_count|count[2]~21\);

-- Location: FF_X52_Y10_N5
\uart|freq_count|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|freq_count|count[2]~20_combout\,
	clrn => \uart|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|freq_count|count\(2));

-- Location: LCCOMB_X52_Y10_N6
\uart|freq_count|count[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|freq_count|count[3]~22_combout\ = (\uart|freq_count|count\(3) & (!\uart|freq_count|count[2]~21\)) # (!\uart|freq_count|count\(3) & ((\uart|freq_count|count[2]~21\) # (GND)))
-- \uart|freq_count|count[3]~23\ = CARRY((!\uart|freq_count|count[2]~21\) # (!\uart|freq_count|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart|freq_count|count\(3),
	datad => VCC,
	cin => \uart|freq_count|count[2]~21\,
	combout => \uart|freq_count|count[3]~22_combout\,
	cout => \uart|freq_count|count[3]~23\);

-- Location: FF_X52_Y10_N7
\uart|freq_count|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|freq_count|count[3]~22_combout\,
	clrn => \uart|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|freq_count|count\(3));

-- Location: LCCOMB_X52_Y10_N8
\uart|freq_count|count[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|freq_count|count[4]~24_combout\ = (\uart|freq_count|count\(4) & (\uart|freq_count|count[3]~23\ $ (GND))) # (!\uart|freq_count|count\(4) & (!\uart|freq_count|count[3]~23\ & VCC))
-- \uart|freq_count|count[4]~25\ = CARRY((\uart|freq_count|count\(4) & !\uart|freq_count|count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|freq_count|count\(4),
	datad => VCC,
	cin => \uart|freq_count|count[3]~23\,
	combout => \uart|freq_count|count[4]~24_combout\,
	cout => \uart|freq_count|count[4]~25\);

-- Location: FF_X52_Y10_N9
\uart|freq_count|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|freq_count|count[4]~24_combout\,
	clrn => \uart|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|freq_count|count\(4));

-- Location: LCCOMB_X52_Y10_N10
\uart|freq_count|count[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|freq_count|count[5]~26_combout\ = (\uart|freq_count|count\(5) & (!\uart|freq_count|count[4]~25\)) # (!\uart|freq_count|count\(5) & ((\uart|freq_count|count[4]~25\) # (GND)))
-- \uart|freq_count|count[5]~27\ = CARRY((!\uart|freq_count|count[4]~25\) # (!\uart|freq_count|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart|freq_count|count\(5),
	datad => VCC,
	cin => \uart|freq_count|count[4]~25\,
	combout => \uart|freq_count|count[5]~26_combout\,
	cout => \uart|freq_count|count[5]~27\);

-- Location: FF_X52_Y10_N11
\uart|freq_count|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|freq_count|count[5]~26_combout\,
	clrn => \uart|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|freq_count|count\(5));

-- Location: LCCOMB_X52_Y10_N12
\uart|freq_count|count[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|freq_count|count[6]~28_combout\ = (\uart|freq_count|count\(6) & (\uart|freq_count|count[5]~27\ $ (GND))) # (!\uart|freq_count|count\(6) & (!\uart|freq_count|count[5]~27\ & VCC))
-- \uart|freq_count|count[6]~29\ = CARRY((\uart|freq_count|count\(6) & !\uart|freq_count|count[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart|freq_count|count\(6),
	datad => VCC,
	cin => \uart|freq_count|count[5]~27\,
	combout => \uart|freq_count|count[6]~28_combout\,
	cout => \uart|freq_count|count[6]~29\);

-- Location: FF_X52_Y10_N13
\uart|freq_count|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|freq_count|count[6]~28_combout\,
	clrn => \uart|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|freq_count|count\(6));

-- Location: LCCOMB_X52_Y10_N14
\uart|freq_count|count[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|freq_count|count[7]~30_combout\ = (\uart|freq_count|count\(7) & (!\uart|freq_count|count[6]~29\)) # (!\uart|freq_count|count\(7) & ((\uart|freq_count|count[6]~29\) # (GND)))
-- \uart|freq_count|count[7]~31\ = CARRY((!\uart|freq_count|count[6]~29\) # (!\uart|freq_count|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|freq_count|count\(7),
	datad => VCC,
	cin => \uart|freq_count|count[6]~29\,
	combout => \uart|freq_count|count[7]~30_combout\,
	cout => \uart|freq_count|count[7]~31\);

-- Location: FF_X52_Y10_N15
\uart|freq_count|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|freq_count|count[7]~30_combout\,
	clrn => \uart|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|freq_count|count\(7));

-- Location: LCCOMB_X52_Y10_N16
\uart|freq_count|count[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|freq_count|count[8]~32_combout\ = (\uart|freq_count|count\(8) & (\uart|freq_count|count[7]~31\ $ (GND))) # (!\uart|freq_count|count\(8) & (!\uart|freq_count|count[7]~31\ & VCC))
-- \uart|freq_count|count[8]~33\ = CARRY((\uart|freq_count|count\(8) & !\uart|freq_count|count[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|freq_count|count\(8),
	datad => VCC,
	cin => \uart|freq_count|count[7]~31\,
	combout => \uart|freq_count|count[8]~32_combout\,
	cout => \uart|freq_count|count[8]~33\);

-- Location: FF_X52_Y10_N17
\uart|freq_count|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|freq_count|count[8]~32_combout\,
	clrn => \uart|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|freq_count|count\(8));

-- Location: LCCOMB_X52_Y10_N18
\uart|freq_count|count[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|freq_count|count[9]~34_combout\ = (\uart|freq_count|count\(9) & (!\uart|freq_count|count[8]~33\)) # (!\uart|freq_count|count\(9) & ((\uart|freq_count|count[8]~33\) # (GND)))
-- \uart|freq_count|count[9]~35\ = CARRY((!\uart|freq_count|count[8]~33\) # (!\uart|freq_count|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|freq_count|count\(9),
	datad => VCC,
	cin => \uart|freq_count|count[8]~33\,
	combout => \uart|freq_count|count[9]~34_combout\,
	cout => \uart|freq_count|count[9]~35\);

-- Location: FF_X52_Y10_N19
\uart|freq_count|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|freq_count|count[9]~34_combout\,
	clrn => \uart|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|freq_count|count\(9));

-- Location: LCCOMB_X52_Y10_N20
\uart|freq_count|count[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|freq_count|count[10]~36_combout\ = (\uart|freq_count|count\(10) & (\uart|freq_count|count[9]~35\ $ (GND))) # (!\uart|freq_count|count\(10) & (!\uart|freq_count|count[9]~35\ & VCC))
-- \uart|freq_count|count[10]~37\ = CARRY((\uart|freq_count|count\(10) & !\uart|freq_count|count[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|freq_count|count\(10),
	datad => VCC,
	cin => \uart|freq_count|count[9]~35\,
	combout => \uart|freq_count|count[10]~36_combout\,
	cout => \uart|freq_count|count[10]~37\);

-- Location: FF_X52_Y10_N21
\uart|freq_count|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|freq_count|count[10]~36_combout\,
	clrn => \uart|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|freq_count|count\(10));

-- Location: LCCOMB_X52_Y10_N22
\uart|freq_count|count[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|freq_count|count[11]~38_combout\ = (\uart|freq_count|count\(11) & (!\uart|freq_count|count[10]~37\)) # (!\uart|freq_count|count\(11) & ((\uart|freq_count|count[10]~37\) # (GND)))
-- \uart|freq_count|count[11]~39\ = CARRY((!\uart|freq_count|count[10]~37\) # (!\uart|freq_count|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart|freq_count|count\(11),
	datad => VCC,
	cin => \uart|freq_count|count[10]~37\,
	combout => \uart|freq_count|count[11]~38_combout\,
	cout => \uart|freq_count|count[11]~39\);

-- Location: FF_X52_Y10_N23
\uart|freq_count|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|freq_count|count[11]~38_combout\,
	clrn => \uart|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|freq_count|count\(11));

-- Location: LCCOMB_X52_Y10_N24
\uart|freq_count|count[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|freq_count|count[12]~40_combout\ = (\uart|freq_count|count\(12) & (\uart|freq_count|count[11]~39\ $ (GND))) # (!\uart|freq_count|count\(12) & (!\uart|freq_count|count[11]~39\ & VCC))
-- \uart|freq_count|count[12]~41\ = CARRY((\uart|freq_count|count\(12) & !\uart|freq_count|count[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|freq_count|count\(12),
	datad => VCC,
	cin => \uart|freq_count|count[11]~39\,
	combout => \uart|freq_count|count[12]~40_combout\,
	cout => \uart|freq_count|count[12]~41\);

-- Location: FF_X52_Y10_N25
\uart|freq_count|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|freq_count|count[12]~40_combout\,
	clrn => \uart|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|freq_count|count\(12));

-- Location: LCCOMB_X52_Y10_N26
\uart|freq_count|count[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|freq_count|count[13]~42_combout\ = (\uart|freq_count|count\(13) & (!\uart|freq_count|count[12]~41\)) # (!\uart|freq_count|count\(13) & ((\uart|freq_count|count[12]~41\) # (GND)))
-- \uart|freq_count|count[13]~43\ = CARRY((!\uart|freq_count|count[12]~41\) # (!\uart|freq_count|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart|freq_count|count\(13),
	datad => VCC,
	cin => \uart|freq_count|count[12]~41\,
	combout => \uart|freq_count|count[13]~42_combout\,
	cout => \uart|freq_count|count[13]~43\);

-- Location: FF_X52_Y10_N27
\uart|freq_count|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|freq_count|count[13]~42_combout\,
	clrn => \uart|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|freq_count|count\(13));

-- Location: LCCOMB_X52_Y10_N28
\uart|freq_count|count[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|freq_count|count[14]~44_combout\ = (\uart|freq_count|count\(14) & (\uart|freq_count|count[13]~43\ $ (GND))) # (!\uart|freq_count|count\(14) & (!\uart|freq_count|count[13]~43\ & VCC))
-- \uart|freq_count|count[14]~45\ = CARRY((\uart|freq_count|count\(14) & !\uart|freq_count|count[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|freq_count|count\(14),
	datad => VCC,
	cin => \uart|freq_count|count[13]~43\,
	combout => \uart|freq_count|count[14]~44_combout\,
	cout => \uart|freq_count|count[14]~45\);

-- Location: FF_X52_Y10_N29
\uart|freq_count|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|freq_count|count[14]~44_combout\,
	clrn => \uart|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|freq_count|count\(14));

-- Location: LCCOMB_X52_Y10_N30
\uart|freq_count|count[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|freq_count|count[15]~46_combout\ = \uart|freq_count|count[14]~45\ $ (\uart|freq_count|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \uart|freq_count|count\(15),
	cin => \uart|freq_count|count[14]~45\,
	combout => \uart|freq_count|count[15]~46_combout\);

-- Location: FF_X52_Y10_N31
\uart|freq_count|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|freq_count|count[15]~46_combout\,
	clrn => \uart|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|freq_count|count\(15));

-- Location: LCCOMB_X51_Y10_N12
\uart|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan0~1_combout\ = ((!\uart|freq_count|count\(5) & ((!\uart|freq_count|count\(4)) # (!\uart|freq_count|count\(3))))) # (!\uart|freq_count|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|freq_count|count\(3),
	datab => \uart|freq_count|count\(5),
	datac => \uart|freq_count|count\(6),
	datad => \uart|freq_count|count\(4),
	combout => \uart|LessThan0~1_combout\);

-- Location: LCCOMB_X51_Y10_N22
\uart|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan0~2_combout\ = (!\uart|freq_count|count\(9) & (!\uart|freq_count|count\(8) & (!\uart|freq_count|count\(7) & !\uart|freq_count|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|freq_count|count\(9),
	datab => \uart|freq_count|count\(8),
	datac => \uart|freq_count|count\(7),
	datad => \uart|freq_count|count\(11),
	combout => \uart|LessThan0~2_combout\);

-- Location: LCCOMB_X50_Y10_N28
\uart|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector6~0_combout\ = (\uart|present_State.start_State~q\) # ((!\uart|present_State.Rx_State~q\ & \uart|X2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|present_State.Rx_State~q\,
	datac => \uart|X2~q\,
	datad => \uart|present_State.start_State~q\,
	combout => \uart|Selector6~0_combout\);

-- Location: FF_X50_Y10_N29
\uart|X2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|Selector6~0_combout\,
	ena => \reset_n_UART_RX~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|X2~q\);

-- Location: LCCOMB_X51_Y10_N18
\uart|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan0~0_combout\ = (((!\uart|freq_count|count\(10) & !\uart|freq_count|count\(11))) # (!\uart|freq_count|count\(12))) # (!\uart|X2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|freq_count|count\(10),
	datab => \uart|X2~q\,
	datac => \uart|freq_count|count\(12),
	datad => \uart|freq_count|count\(11),
	combout => \uart|LessThan0~0_combout\);

-- Location: LCCOMB_X51_Y10_N4
\uart|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan0~3_combout\ = (!\uart|freq_count|count\(13) & ((\uart|LessThan0~0_combout\) # ((\uart|LessThan0~1_combout\ & \uart|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|LessThan0~1_combout\,
	datab => \uart|freq_count|count\(13),
	datac => \uart|LessThan0~2_combout\,
	datad => \uart|LessThan0~0_combout\,
	combout => \uart|LessThan0~3_combout\);

-- Location: LCCOMB_X51_Y10_N30
\uart|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan0~4_combout\ = ((!\uart|freq_count|count\(6) & ((!\uart|freq_count|count\(5)) # (!\uart|freq_count|count\(4))))) # (!\uart|freq_count|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|freq_count|count\(4),
	datab => \uart|freq_count|count\(7),
	datac => \uart|freq_count|count\(6),
	datad => \uart|freq_count|count\(5),
	combout => \uart|LessThan0~4_combout\);

-- Location: LCCOMB_X51_Y10_N8
\uart|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan0~5_combout\ = (!\uart|freq_count|count\(10) & (!\uart|freq_count|count\(8) & (\uart|LessThan0~4_combout\ & !\uart|freq_count|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|freq_count|count\(10),
	datab => \uart|freq_count|count\(8),
	datac => \uart|LessThan0~4_combout\,
	datad => \uart|freq_count|count\(9),
	combout => \uart|LessThan0~5_combout\);

-- Location: LCCOMB_X51_Y10_N6
\uart|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan0~6_combout\ = (!\uart|freq_count|count\(12) & (!\uart|X2~q\ & ((\uart|LessThan0~5_combout\) # (!\uart|freq_count|count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|freq_count|count\(12),
	datab => \uart|X2~q\,
	datac => \uart|LessThan0~5_combout\,
	datad => \uart|freq_count|count\(11),
	combout => \uart|LessThan0~6_combout\);

-- Location: LCCOMB_X51_Y10_N24
\uart|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan0~7_combout\ = (\uart|freq_count|count\(15)) # ((\uart|freq_count|count\(14)) # ((!\uart|LessThan0~3_combout\ & !\uart|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|freq_count|count\(15),
	datab => \uart|freq_count|count\(14),
	datac => \uart|LessThan0~3_combout\,
	datad => \uart|LessThan0~6_combout\,
	combout => \uart|LessThan0~7_combout\);

-- Location: FF_X51_Y10_N25
\uart|read_data_signal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|LessThan0~7_combout\,
	clrn => \uart|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|read_data_signal~q\);

-- Location: LCCOMB_X50_Y10_N22
\uart|next_State.Rx_State~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|next_State.Rx_State~0_combout\ = (\uart|read_data_signal~q\ & \uart|present_State.start_State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|read_data_signal~q\,
	datad => \uart|present_State.start_State~q\,
	combout => \uart|next_State.Rx_State~0_combout\);

-- Location: FF_X50_Y10_N23
\uart|present_State.Rx_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|next_State.Rx_State~0_combout\,
	clrn => \reset_n_UART_RX~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|present_State.Rx_State~q\);

-- Location: LCCOMB_X50_Y10_N12
\uart|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector2~0_combout\ = (\uart|present_State.Rx_State~q\) # ((\uart|present_State.bit_read_prep_State~q\ & !\uart|read_data_signal~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|present_State.Rx_State~q\,
	datab => \uart|present_State.bit_read_prep_State~q\,
	datad => \uart|read_data_signal~q\,
	combout => \uart|Selector2~0_combout\);

-- Location: LCCOMB_X50_Y10_N24
\uart|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector2~1_combout\ = (\uart|Selector2~0_combout\) # ((!\uart|LessThan1~0_combout\ & (\uart|present_State.bit_read_State~q\ & !\uart|n_data_bits\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|LessThan1~0_combout\,
	datab => \uart|present_State.bit_read_State~q\,
	datac => \uart|n_data_bits\(3),
	datad => \uart|Selector2~0_combout\,
	combout => \uart|Selector2~1_combout\);

-- Location: FF_X50_Y10_N25
\uart|present_State.bit_read_prep_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|Selector2~1_combout\,
	clrn => \reset_n_UART_RX~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|present_State.bit_read_prep_State~q\);

-- Location: LCCOMB_X50_Y10_N16
\uart|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector3~0_combout\ = (\uart|present_State.bit_read_prep_State~q\ & \uart|read_data_signal~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|present_State.bit_read_prep_State~q\,
	datad => \uart|read_data_signal~q\,
	combout => \uart|Selector3~0_combout\);

-- Location: FF_X50_Y10_N17
\uart|present_State.bit_read_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|Selector3~0_combout\,
	clrn => \reset_n_UART_RX~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|present_State.bit_read_State~q\);

-- Location: LCCOMB_X50_Y10_N0
\uart|next_State.stop_State~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|next_State.stop_State~0_combout\ = (\uart|present_State.bit_read_State~q\ & ((\uart|n_data_bits\(3)) # (\uart|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|present_State.bit_read_State~q\,
	datac => \uart|n_data_bits\(3),
	datad => \uart|LessThan1~0_combout\,
	combout => \uart|next_State.stop_State~0_combout\);

-- Location: FF_X50_Y10_N1
\uart|present_State.stop_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|next_State.stop_State~0_combout\,
	clrn => \reset_n_UART_RX~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|present_State.stop_State~q\);

-- Location: LCCOMB_X50_Y14_N6
\uart|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector11~0_combout\ = (\uart|present_State.stop_State~q\) # ((\uart|RX_data_valid~q\ & \uart|present_State.reset_State~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|present_State.stop_State~q\,
	datac => \uart|RX_data_valid~q\,
	datad => \uart|present_State.reset_State~q\,
	combout => \uart|Selector11~0_combout\);

-- Location: FF_X50_Y14_N7
\uart|RX_data_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|Selector11~0_combout\,
	ena => \reset_n_UART_RX~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data_valid~q\);

-- Location: LCCOMB_X50_Y14_N4
\Combinatory_states~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Combinatory_states~4_combout\ = (\uart|RX_data_valid~q\ & (\uart|RX_data\(4) & (!\uart|RX_data\(7) & \uart|RX_data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|RX_data_valid~q\,
	datab => \uart|RX_data\(4),
	datac => \uart|RX_data\(7),
	datad => \uart|RX_data\(5),
	combout => \Combinatory_states~4_combout\);

-- Location: LCCOMB_X51_Y14_N6
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Combinatory_states~4_combout\ & (\present_State.C_State~q\ & \Combinatory_states~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Combinatory_states~4_combout\,
	datac => \present_State.C_State~q\,
	datad => \Combinatory_states~3_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X51_Y14_N7
\present_State.D_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \uart|RX_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_State.D_State~q\);

-- Location: LCCOMB_X52_Y14_N28
\next_State.U_State~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_State.U_State~0_combout\ = (\present_State.D_State~q\ & (\Combinatory_states~3_combout\ & \Combinatory_states~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_State.D_State~q\,
	datac => \Combinatory_states~3_combout\,
	datad => \Combinatory_states~4_combout\,
	combout => \next_State.U_State~0_combout\);

-- Location: FF_X52_Y14_N29
\present_State.U_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \next_State.U_State~0_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_State.U_State~q\);

-- Location: LCCOMB_X52_Y14_N24
\present_State.ok_State~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_State.ok_State~feeder_combout\ = \present_State.U_State~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \present_State.U_State~q\,
	combout => \present_State.ok_State~feeder_combout\);

-- Location: FF_X52_Y14_N25
\present_State.ok_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \present_State.ok_State~feeder_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_State.ok_State~q\);

-- Location: LCCOMB_X52_Y14_N26
\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\present_State.ok_State~q\) # (\present_State.start_State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_State.ok_State~q\,
	datad => \present_State.start_State~q\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X52_Y14_N10
data_valid : cycloneive_lcell_comb
-- Equation(s):
-- \data_valid~combout\ = (\reset_n~input_o\ & ((\WideOr4~0_combout\ & ((\present_State.ok_State~q\))) # (!\WideOr4~0_combout\ & (\data_valid~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_valid~combout\,
	datab => \present_State.ok_State~q\,
	datac => \WideOr4~0_combout\,
	datad => \reset_n~input_o\,
	combout => \data_valid~combout\);

-- Location: LCCOMB_X52_Y14_N22
\freq_out[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_out[7]~0_combout\ = (\reset_n~input_o\ & \present_State.start_State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_n~input_o\,
	datad => \present_State.start_State~q\,
	combout => \freq_out[7]~0_combout\);

-- Location: CLKCTRL_G8
\freq_out[7]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \freq_out[7]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \freq_out[7]~0clkctrl_outclk\);

-- Location: LCCOMB_X49_Y14_N26
\freq_out[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_out[0]$latch~combout\ = (GLOBAL(\freq_out[7]~0clkctrl_outclk\) & ((\uart|RX_data\(0)))) # (!GLOBAL(\freq_out[7]~0clkctrl_outclk\) & (\freq_out[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_out[0]$latch~combout\,
	datac => \uart|RX_data\(0),
	datad => \freq_out[7]~0clkctrl_outclk\,
	combout => \freq_out[0]$latch~combout\);

-- Location: LCCOMB_X50_Y14_N16
\freq_out[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_out[1]$latch~combout\ = (GLOBAL(\freq_out[7]~0clkctrl_outclk\) & ((\uart|RX_data\(1)))) # (!GLOBAL(\freq_out[7]~0clkctrl_outclk\) & (\freq_out[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_out[1]$latch~combout\,
	datac => \uart|RX_data\(1),
	datad => \freq_out[7]~0clkctrl_outclk\,
	combout => \freq_out[1]$latch~combout\);

-- Location: LCCOMB_X50_Y14_N2
\freq_out[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_out[2]$latch~combout\ = (GLOBAL(\freq_out[7]~0clkctrl_outclk\) & ((\uart|RX_data\(2)))) # (!GLOBAL(\freq_out[7]~0clkctrl_outclk\) & (\freq_out[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_out[2]$latch~combout\,
	datac => \uart|RX_data\(2),
	datad => \freq_out[7]~0clkctrl_outclk\,
	combout => \freq_out[2]$latch~combout\);

-- Location: LCCOMB_X50_Y14_N22
\freq_out[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_out[3]$latch~combout\ = (GLOBAL(\freq_out[7]~0clkctrl_outclk\) & ((\uart|RX_data\(3)))) # (!GLOBAL(\freq_out[7]~0clkctrl_outclk\) & (\freq_out[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_out[3]$latch~combout\,
	datab => \freq_out[7]~0clkctrl_outclk\,
	datad => \uart|RX_data\(3),
	combout => \freq_out[3]$latch~combout\);

-- Location: LCCOMB_X50_Y14_N24
\freq_out[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_out[4]$latch~combout\ = (GLOBAL(\freq_out[7]~0clkctrl_outclk\) & ((\uart|RX_data\(4)))) # (!GLOBAL(\freq_out[7]~0clkctrl_outclk\) & (\freq_out[4]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_out[4]$latch~combout\,
	datac => \uart|RX_data\(4),
	datad => \freq_out[7]~0clkctrl_outclk\,
	combout => \freq_out[4]$latch~combout\);

-- Location: LCCOMB_X50_Y14_N14
\freq_out[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_out[5]$latch~combout\ = (GLOBAL(\freq_out[7]~0clkctrl_outclk\) & ((\uart|RX_data\(5)))) # (!GLOBAL(\freq_out[7]~0clkctrl_outclk\) & (\freq_out[5]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_out[5]$latch~combout\,
	datac => \uart|RX_data\(5),
	datad => \freq_out[7]~0clkctrl_outclk\,
	combout => \freq_out[5]$latch~combout\);

-- Location: LCCOMB_X50_Y14_N20
\freq_out[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_out[6]$latch~combout\ = (GLOBAL(\freq_out[7]~0clkctrl_outclk\) & ((\uart|RX_data\(6)))) # (!GLOBAL(\freq_out[7]~0clkctrl_outclk\) & (\freq_out[6]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freq_out[6]$latch~combout\,
	datac => \uart|RX_data\(6),
	datad => \freq_out[7]~0clkctrl_outclk\,
	combout => \freq_out[6]$latch~combout\);

-- Location: LCCOMB_X50_Y14_N26
\freq_out[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_out[7]$latch~combout\ = (GLOBAL(\freq_out[7]~0clkctrl_outclk\) & ((\uart|RX_data\(7)))) # (!GLOBAL(\freq_out[7]~0clkctrl_outclk\) & (\freq_out[7]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_out[7]$latch~combout\,
	datac => \uart|RX_data\(7),
	datad => \freq_out[7]~0clkctrl_outclk\,
	combout => \freq_out[7]$latch~combout\);

ww_data_valid_out <= \data_valid_out~output_o\;

ww_freq_out(0) <= \freq_out[0]~output_o\;

ww_freq_out(1) <= \freq_out[1]~output_o\;

ww_freq_out(2) <= \freq_out[2]~output_o\;

ww_freq_out(3) <= \freq_out[3]~output_o\;

ww_freq_out(4) <= \freq_out[4]~output_o\;

ww_freq_out(5) <= \freq_out[5]~output_o\;

ww_freq_out(6) <= \freq_out[6]~output_o\;

ww_freq_out(7) <= \freq_out[7]~output_o\;
END structure;


