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

-- DATE "11/19/2020 22:07:02"

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
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA


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

ENTITY 	TB_UART_RX IS
    PORT (
	clock : IN std_logic;
	tb_reset : IN std_logic;
	freq_out : BUFFER std_logic_vector(7 DOWNTO 0);
	RX : IN std_logic
	);
END TB_UART_RX;

-- Design Ports Information
-- freq_out[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_out[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_out[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_out[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_out[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_out[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_out[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_out[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tb_reset	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF TB_UART_RX IS
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
SIGNAL ww_tb_reset : std_logic;
SIGNAL ww_freq_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RX : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \RX~input_o\ : std_logic;
SIGNAL \uart|RX_data_temp[7]~feeder_combout\ : std_logic;
SIGNAL \tb_reset~input_o\ : std_logic;
SIGNAL \uart|freq_count|count[0]~16_combout\ : std_logic;
SIGNAL \uart|Selector10~0_combout\ : std_logic;
SIGNAL \uart|Selector9~0_combout\ : std_logic;
SIGNAL \uart|Selector8~0_combout\ : std_logic;
SIGNAL \uart|Selector8~1_combout\ : std_logic;
SIGNAL \uart|LessThan1~0_combout\ : std_logic;
SIGNAL \uart|Selector7~0_combout\ : std_logic;
SIGNAL \uart|next_State.stop_State~0_combout\ : std_logic;
SIGNAL \uart|present_State.stop_State~q\ : std_logic;
SIGNAL \uart|present_State.reset_State~0_combout\ : std_logic;
SIGNAL \uart|present_State.reset_State~q\ : std_logic;
SIGNAL \uart|start_bit~feeder_combout\ : std_logic;
SIGNAL \uart|Selector4~0_combout\ : std_logic;
SIGNAL \uart|reset_start_bit~feeder_combout\ : std_logic;
SIGNAL \uart|reset_start_bit~q\ : std_logic;
SIGNAL \uart|start_bit~q\ : std_logic;
SIGNAL \uart|Selector0~0_combout\ : std_logic;
SIGNAL \uart|present_State.IDLE_State~q\ : std_logic;
SIGNAL \uart|Selector1~0_combout\ : std_logic;
SIGNAL \uart|present_State.start_State~q\ : std_logic;
SIGNAL \uart|next_State.Rx_State~0_combout\ : std_logic;
SIGNAL \uart|present_State.Rx_State~q\ : std_logic;
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
SIGNAL \uart|LessThan0~7_combout\ : std_logic;
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
SIGNAL \uart|LessThan0~6_combout\ : std_logic;
SIGNAL \uart|LessThan0~8_combout\ : std_logic;
SIGNAL \uart|LessThan0~9_combout\ : std_logic;
SIGNAL \uart|Selector6~0_combout\ : std_logic;
SIGNAL \uart|X2~q\ : std_logic;
SIGNAL \uart|LessThan0~5_combout\ : std_logic;
SIGNAL \uart|freq_count|count[13]~43\ : std_logic;
SIGNAL \uart|freq_count|count[14]~44_combout\ : std_logic;
SIGNAL \uart|freq_count|count[14]~45\ : std_logic;
SIGNAL \uart|freq_count|count[15]~46_combout\ : std_logic;
SIGNAL \uart|LessThan0~0_combout\ : std_logic;
SIGNAL \uart|LessThan0~1_combout\ : std_logic;
SIGNAL \uart|LessThan0~2_combout\ : std_logic;
SIGNAL \uart|LessThan0~3_combout\ : std_logic;
SIGNAL \uart|LessThan0~4_combout\ : std_logic;
SIGNAL \uart|LessThan0~10_combout\ : std_logic;
SIGNAL \uart|read_data_signal~q\ : std_logic;
SIGNAL \uart|Selector2~0_combout\ : std_logic;
SIGNAL \uart|Selector2~1_combout\ : std_logic;
SIGNAL \uart|present_State.bit_read_prep_State~q\ : std_logic;
SIGNAL \uart|Selector3~0_combout\ : std_logic;
SIGNAL \uart|present_State.bit_read_State~q\ : std_logic;
SIGNAL \uart|RX_data_temp[0]~0_combout\ : std_logic;
SIGNAL \uart|RX_data_temp[6]~feeder_combout\ : std_logic;
SIGNAL \uart|RX_data_temp[5]~feeder_combout\ : std_logic;
SIGNAL \uart|RX_data_temp[4]~feeder_combout\ : std_logic;
SIGNAL \uart|RX_data_temp[2]~feeder_combout\ : std_logic;
SIGNAL \uart|RX_data_temp[1]~feeder_combout\ : std_logic;
SIGNAL \uart|RX_data_temp[0]~feeder_combout\ : std_logic;
SIGNAL \uart|RX_data[0]~feeder_combout\ : std_logic;
SIGNAL \freq_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \uart|Selector11~0_combout\ : std_logic;
SIGNAL \uart|RX_data_valid~q\ : std_logic;
SIGNAL \freq_out[0]~reg0_q\ : std_logic;
SIGNAL \uart|RX_data[1]~feeder_combout\ : std_logic;
SIGNAL \freq_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \freq_out[1]~reg0_q\ : std_logic;
SIGNAL \uart|RX_data[2]~feeder_combout\ : std_logic;
SIGNAL \freq_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \freq_out[2]~reg0_q\ : std_logic;
SIGNAL \uart|RX_data[3]~feeder_combout\ : std_logic;
SIGNAL \freq_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \freq_out[3]~reg0_q\ : std_logic;
SIGNAL \uart|RX_data[4]~feeder_combout\ : std_logic;
SIGNAL \freq_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \freq_out[4]~reg0_q\ : std_logic;
SIGNAL \uart|RX_data[5]~feeder_combout\ : std_logic;
SIGNAL \freq_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \freq_out[5]~reg0_q\ : std_logic;
SIGNAL \uart|RX_data[6]~feeder_combout\ : std_logic;
SIGNAL \freq_out[6]~reg0_q\ : std_logic;
SIGNAL \uart|RX_data[7]~feeder_combout\ : std_logic;
SIGNAL \freq_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \freq_out[7]~reg0_q\ : std_logic;
SIGNAL \uart|freq_count|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \uart|RX_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart|RX_data_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \uart|n_data_bits\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RX~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_tb_reset <= tb_reset;
freq_out <= ww_freq_out;
ww_RX <= RX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_RX~input_o\ <= NOT \RX~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X38_Y34_N16
\freq_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \freq_out[0]~reg0_q\,
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
	i => \freq_out[1]~reg0_q\,
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
	i => \freq_out[2]~reg0_q\,
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
	i => \freq_out[3]~reg0_q\,
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
	i => \freq_out[4]~reg0_q\,
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
	i => \freq_out[5]~reg0_q\,
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
	i => \freq_out[6]~reg0_q\,
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
	i => \freq_out[7]~reg0_q\,
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

-- Location: IOIBUF_X53_Y21_N22
\RX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX,
	o => \RX~input_o\);

-- Location: LCCOMB_X49_Y21_N22
\uart|RX_data_temp[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_data_temp[7]~feeder_combout\ = \RX~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~input_o\,
	combout => \uart|RX_data_temp[7]~feeder_combout\);

-- Location: IOIBUF_X53_Y14_N1
\tb_reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tb_reset,
	o => \tb_reset~input_o\);

-- Location: LCCOMB_X47_Y18_N0
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

-- Location: LCCOMB_X49_Y17_N10
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

-- Location: FF_X49_Y17_N11
\uart|n_data_bits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|Selector10~0_combout\,
	ena => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|n_data_bits\(0));

-- Location: LCCOMB_X49_Y17_N8
\uart|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector9~0_combout\ = (\uart|present_State.bit_read_State~q\ & (\uart|n_data_bits\(0) $ ((\uart|n_data_bits\(1))))) # (!\uart|present_State.bit_read_State~q\ & (((\uart|n_data_bits\(1) & \uart|present_State.reset_State~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|n_data_bits\(0),
	datab => \uart|present_State.bit_read_State~q\,
	datac => \uart|n_data_bits\(1),
	datad => \uart|present_State.reset_State~q\,
	combout => \uart|Selector9~0_combout\);

-- Location: FF_X49_Y17_N9
\uart|n_data_bits[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|Selector9~0_combout\,
	ena => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|n_data_bits\(1));

-- Location: LCCOMB_X49_Y17_N6
\uart|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector8~0_combout\ = (\uart|present_State.bit_read_State~q\ & (\uart|n_data_bits\(2) $ (((\uart|n_data_bits\(0) & \uart|n_data_bits\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|n_data_bits\(0),
	datab => \uart|n_data_bits\(2),
	datac => \uart|n_data_bits\(1),
	datad => \uart|present_State.bit_read_State~q\,
	combout => \uart|Selector8~0_combout\);

-- Location: LCCOMB_X49_Y17_N18
\uart|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector8~1_combout\ = (\uart|Selector8~0_combout\) # ((!\uart|present_State.bit_read_State~q\ & (\uart|n_data_bits\(2) & \uart|present_State.reset_State~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|Selector8~0_combout\,
	datab => \uart|present_State.bit_read_State~q\,
	datac => \uart|n_data_bits\(2),
	datad => \uart|present_State.reset_State~q\,
	combout => \uart|Selector8~1_combout\);

-- Location: FF_X49_Y17_N19
\uart|n_data_bits[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|Selector8~1_combout\,
	ena => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|n_data_bits\(2));

-- Location: LCCOMB_X49_Y17_N4
\uart|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan1~0_combout\ = (\uart|n_data_bits\(0) & (\uart|n_data_bits\(1) & \uart|n_data_bits\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|n_data_bits\(0),
	datac => \uart|n_data_bits\(1),
	datad => \uart|n_data_bits\(2),
	combout => \uart|LessThan1~0_combout\);

-- Location: LCCOMB_X49_Y17_N0
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

-- Location: FF_X49_Y17_N1
\uart|n_data_bits[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|Selector7~0_combout\,
	ena => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|n_data_bits\(3));

-- Location: LCCOMB_X50_Y18_N24
\uart|next_State.stop_State~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|next_State.stop_State~0_combout\ = (\uart|present_State.bit_read_State~q\ & ((\uart|n_data_bits\(3)) # (\uart|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|n_data_bits\(3),
	datac => \uart|LessThan1~0_combout\,
	datad => \uart|present_State.bit_read_State~q\,
	combout => \uart|next_State.stop_State~0_combout\);

-- Location: FF_X50_Y18_N25
\uart|present_State.stop_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|next_State.stop_State~0_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|present_State.stop_State~q\);

-- Location: LCCOMB_X50_Y18_N6
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

-- Location: FF_X50_Y18_N7
\uart|present_State.reset_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|present_State.reset_State~0_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|present_State.reset_State~q\);

-- Location: LCCOMB_X50_Y18_N18
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

-- Location: LCCOMB_X49_Y18_N28
\uart|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector4~0_combout\ = (\uart|present_State.reset_State~q\ & ((\uart|present_State.IDLE_State~q\) # (\uart|reset_start_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|present_State.IDLE_State~q\,
	datac => \uart|reset_start_bit~q\,
	datad => \uart|present_State.reset_State~q\,
	combout => \uart|Selector4~0_combout\);

-- Location: LCCOMB_X50_Y18_N12
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

-- Location: FF_X50_Y18_N13
\uart|reset_start_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|reset_start_bit~feeder_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|reset_start_bit~q\);

-- Location: FF_X50_Y18_N19
\uart|start_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RX~input_o\,
	d => \uart|start_bit~feeder_combout\,
	clrn => \uart|reset_start_bit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|start_bit~q\);

-- Location: LCCOMB_X50_Y18_N4
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

-- Location: FF_X50_Y18_N5
\uart|present_State.IDLE_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|Selector0~0_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|present_State.IDLE_State~q\);

-- Location: LCCOMB_X50_Y18_N22
\uart|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector1~0_combout\ = (\uart|read_data_signal~q\ & (\uart|present_State.IDLE_State~q\ & ((\uart|start_bit~q\)))) # (!\uart|read_data_signal~q\ & ((\uart|present_State.start_State~q\) # ((\uart|present_State.IDLE_State~q\ & \uart|start_bit~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|read_data_signal~q\,
	datab => \uart|present_State.IDLE_State~q\,
	datac => \uart|present_State.start_State~q\,
	datad => \uart|start_bit~q\,
	combout => \uart|Selector1~0_combout\);

-- Location: FF_X50_Y18_N23
\uart|present_State.start_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|Selector1~0_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|present_State.start_State~q\);

-- Location: LCCOMB_X50_Y18_N10
\uart|next_State.Rx_State~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|next_State.Rx_State~0_combout\ = (\uart|present_State.start_State~q\ & \uart|read_data_signal~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|present_State.start_State~q\,
	datac => \uart|read_data_signal~q\,
	combout => \uart|next_State.Rx_State~0_combout\);

-- Location: FF_X50_Y18_N11
\uart|present_State.Rx_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|next_State.Rx_State~0_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|present_State.Rx_State~q\);

-- Location: LCCOMB_X49_Y18_N2
\uart|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector5~0_combout\ = (\uart|present_State.Rx_State~q\) # ((!\uart|reset_counter~q\ & ((\uart|present_State.IDLE_State~q\) # (\uart|present_State.stop_State~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|present_State.IDLE_State~q\,
	datab => \uart|reset_counter~q\,
	datac => \uart|present_State.Rx_State~q\,
	datad => \uart|present_State.stop_State~q\,
	combout => \uart|Selector5~0_combout\);

-- Location: LCCOMB_X48_Y18_N10
\uart|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector5~1_combout\ = (!\uart|present_State.bit_read_State~q\ & (\uart|present_State.reset_State~q\ & !\uart|Selector5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|present_State.bit_read_State~q\,
	datab => \uart|present_State.reset_State~q\,
	datad => \uart|Selector5~0_combout\,
	combout => \uart|Selector5~1_combout\);

-- Location: FF_X48_Y18_N11
\uart|reset_counter\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|Selector5~1_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|reset_counter~q\);

-- Location: FF_X47_Y18_N1
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

-- Location: LCCOMB_X47_Y18_N2
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

-- Location: FF_X47_Y18_N3
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

-- Location: LCCOMB_X47_Y18_N4
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

-- Location: FF_X47_Y18_N5
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

-- Location: LCCOMB_X47_Y18_N6
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

-- Location: FF_X47_Y18_N7
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

-- Location: LCCOMB_X47_Y18_N8
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

-- Location: FF_X47_Y18_N9
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

-- Location: LCCOMB_X47_Y18_N10
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

-- Location: FF_X47_Y18_N11
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

-- Location: LCCOMB_X47_Y18_N12
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

-- Location: FF_X47_Y18_N13
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

-- Location: LCCOMB_X47_Y18_N14
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

-- Location: FF_X47_Y18_N15
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

-- Location: LCCOMB_X48_Y18_N8
\uart|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan0~7_combout\ = ((!\uart|freq_count|count\(5) & ((!\uart|freq_count|count\(4)) # (!\uart|freq_count|count\(3))))) # (!\uart|freq_count|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|freq_count|count\(5),
	datab => \uart|freq_count|count\(3),
	datac => \uart|freq_count|count\(4),
	datad => \uart|freq_count|count\(6),
	combout => \uart|LessThan0~7_combout\);

-- Location: LCCOMB_X47_Y18_N16
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

-- Location: FF_X47_Y18_N17
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

-- Location: LCCOMB_X47_Y18_N18
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

-- Location: FF_X47_Y18_N19
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

-- Location: LCCOMB_X47_Y18_N20
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

-- Location: FF_X47_Y18_N21
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

-- Location: LCCOMB_X47_Y18_N22
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

-- Location: FF_X47_Y18_N23
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

-- Location: LCCOMB_X47_Y18_N24
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

-- Location: FF_X47_Y18_N25
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

-- Location: LCCOMB_X47_Y18_N26
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

-- Location: FF_X47_Y18_N27
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

-- Location: LCCOMB_X48_Y18_N22
\uart|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan0~6_combout\ = (!\uart|freq_count|count\(13) & (((!\uart|freq_count|count\(10) & !\uart|freq_count|count\(11))) # (!\uart|freq_count|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|freq_count|count\(13),
	datab => \uart|freq_count|count\(10),
	datac => \uart|freq_count|count\(11),
	datad => \uart|freq_count|count\(12),
	combout => \uart|LessThan0~6_combout\);

-- Location: LCCOMB_X48_Y18_N18
\uart|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan0~8_combout\ = (!\uart|freq_count|count\(8) & (!\uart|freq_count|count\(11) & (!\uart|freq_count|count\(13) & !\uart|freq_count|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|freq_count|count\(8),
	datab => \uart|freq_count|count\(11),
	datac => \uart|freq_count|count\(13),
	datad => \uart|freq_count|count\(9),
	combout => \uart|LessThan0~8_combout\);

-- Location: LCCOMB_X48_Y18_N12
\uart|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan0~9_combout\ = (\uart|LessThan0~6_combout\) # ((!\uart|freq_count|count\(7) & (\uart|LessThan0~7_combout\ & \uart|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|freq_count|count\(7),
	datab => \uart|LessThan0~7_combout\,
	datac => \uart|LessThan0~6_combout\,
	datad => \uart|LessThan0~8_combout\,
	combout => \uart|LessThan0~9_combout\);

-- Location: LCCOMB_X51_Y18_N14
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

-- Location: FF_X51_Y18_N15
\uart|X2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|Selector6~0_combout\,
	ena => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|X2~q\);

-- Location: LCCOMB_X48_Y18_N28
\uart|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan0~5_combout\ = (!\uart|X2~q\ & (((!\uart|freq_count|count\(11) & !\uart|freq_count|count\(12))) # (!\uart|freq_count|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|freq_count|count\(13),
	datab => \uart|freq_count|count\(11),
	datac => \uart|X2~q\,
	datad => \uart|freq_count|count\(12),
	combout => \uart|LessThan0~5_combout\);

-- Location: LCCOMB_X47_Y18_N28
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

-- Location: FF_X47_Y18_N29
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

-- Location: LCCOMB_X47_Y18_N30
\uart|freq_count|count[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|freq_count|count[15]~46_combout\ = \uart|freq_count|count\(15) $ (\uart|freq_count|count[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart|freq_count|count\(15),
	cin => \uart|freq_count|count[14]~45\,
	combout => \uart|freq_count|count[15]~46_combout\);

-- Location: FF_X47_Y18_N31
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

-- Location: LCCOMB_X48_Y18_N30
\uart|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan0~0_combout\ = (!\uart|freq_count|count\(15) & !\uart|freq_count|count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|freq_count|count\(15),
	datad => \uart|freq_count|count\(14),
	combout => \uart|LessThan0~0_combout\);

-- Location: LCCOMB_X48_Y18_N4
\uart|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan0~1_combout\ = (!\uart|freq_count|count\(8) & (!\uart|freq_count|count\(9) & (!\uart|X2~q\ & !\uart|freq_count|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|freq_count|count\(8),
	datab => \uart|freq_count|count\(9),
	datac => \uart|X2~q\,
	datad => \uart|freq_count|count\(12),
	combout => \uart|LessThan0~1_combout\);

-- Location: LCCOMB_X48_Y18_N14
\uart|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan0~2_combout\ = (!\uart|freq_count|count\(0) & (!\uart|freq_count|count\(3) & (!\uart|freq_count|count\(2) & !\uart|freq_count|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|freq_count|count\(0),
	datab => \uart|freq_count|count\(3),
	datac => \uart|freq_count|count\(2),
	datad => \uart|freq_count|count\(1),
	combout => \uart|LessThan0~2_combout\);

-- Location: LCCOMB_X48_Y18_N24
\uart|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan0~3_combout\ = (!\uart|freq_count|count\(6) & (((\uart|LessThan0~2_combout\) # (!\uart|freq_count|count\(4))) # (!\uart|freq_count|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|freq_count|count\(5),
	datab => \uart|freq_count|count\(4),
	datac => \uart|LessThan0~2_combout\,
	datad => \uart|freq_count|count\(6),
	combout => \uart|LessThan0~3_combout\);

-- Location: LCCOMB_X48_Y18_N6
\uart|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan0~4_combout\ = (!\uart|freq_count|count\(10) & (\uart|LessThan0~1_combout\ & ((\uart|LessThan0~3_combout\) # (!\uart|freq_count|count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|freq_count|count\(7),
	datab => \uart|freq_count|count\(10),
	datac => \uart|LessThan0~1_combout\,
	datad => \uart|LessThan0~3_combout\,
	combout => \uart|LessThan0~4_combout\);

-- Location: LCCOMB_X48_Y18_N26
\uart|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan0~10_combout\ = ((!\uart|LessThan0~9_combout\ & (!\uart|LessThan0~5_combout\ & !\uart|LessThan0~4_combout\))) # (!\uart|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|LessThan0~9_combout\,
	datab => \uart|LessThan0~5_combout\,
	datac => \uart|LessThan0~0_combout\,
	datad => \uart|LessThan0~4_combout\,
	combout => \uart|LessThan0~10_combout\);

-- Location: FF_X48_Y18_N27
\uart|read_data_signal\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|LessThan0~10_combout\,
	clrn => \uart|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|read_data_signal~q\);

-- Location: LCCOMB_X50_Y18_N16
\uart|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector2~0_combout\ = (\uart|present_State.Rx_State~q\) # ((!\uart|read_data_signal~q\ & \uart|present_State.bit_read_prep_State~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|present_State.Rx_State~q\,
	datac => \uart|read_data_signal~q\,
	datad => \uart|present_State.bit_read_prep_State~q\,
	combout => \uart|Selector2~0_combout\);

-- Location: LCCOMB_X50_Y18_N28
\uart|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector2~1_combout\ = (\uart|Selector2~0_combout\) # ((!\uart|n_data_bits\(3) & (\uart|present_State.bit_read_State~q\ & !\uart|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|n_data_bits\(3),
	datab => \uart|present_State.bit_read_State~q\,
	datac => \uart|LessThan1~0_combout\,
	datad => \uart|Selector2~0_combout\,
	combout => \uart|Selector2~1_combout\);

-- Location: FF_X50_Y18_N29
\uart|present_State.bit_read_prep_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|Selector2~1_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|present_State.bit_read_prep_State~q\);

-- Location: LCCOMB_X49_Y21_N16
\uart|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector3~0_combout\ = (\uart|read_data_signal~q\ & \uart|present_State.bit_read_prep_State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|read_data_signal~q\,
	datad => \uart|present_State.bit_read_prep_State~q\,
	combout => \uart|Selector3~0_combout\);

-- Location: FF_X49_Y21_N17
\uart|present_State.bit_read_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|Selector3~0_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|present_State.bit_read_State~q\);

-- Location: LCCOMB_X49_Y21_N30
\uart|RX_data_temp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_data_temp[0]~0_combout\ = (\tb_reset~input_o\ & \uart|present_State.bit_read_State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tb_reset~input_o\,
	datad => \uart|present_State.bit_read_State~q\,
	combout => \uart|RX_data_temp[0]~0_combout\);

-- Location: FF_X49_Y21_N23
\uart|RX_data_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data_temp[7]~feeder_combout\,
	ena => \uart|RX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data_temp\(7));

-- Location: LCCOMB_X49_Y21_N12
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

-- Location: FF_X49_Y21_N13
\uart|RX_data_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data_temp[6]~feeder_combout\,
	ena => \uart|RX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data_temp\(6));

-- Location: LCCOMB_X49_Y21_N10
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

-- Location: FF_X49_Y21_N11
\uart|RX_data_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data_temp[5]~feeder_combout\,
	ena => \uart|RX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data_temp\(5));

-- Location: LCCOMB_X49_Y21_N8
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

-- Location: FF_X49_Y21_N9
\uart|RX_data_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data_temp[4]~feeder_combout\,
	ena => \uart|RX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data_temp\(4));

-- Location: FF_X49_Y21_N31
\uart|RX_data_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \uart|RX_data_temp\(4),
	sload => VCC,
	ena => \uart|RX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data_temp\(3));

-- Location: LCCOMB_X49_Y21_N4
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

-- Location: FF_X49_Y21_N5
\uart|RX_data_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data_temp[2]~feeder_combout\,
	ena => \uart|RX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data_temp\(2));

-- Location: LCCOMB_X49_Y21_N6
\uart|RX_data_temp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_data_temp[1]~feeder_combout\ = \uart|RX_data_temp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|RX_data_temp\(2),
	combout => \uart|RX_data_temp[1]~feeder_combout\);

-- Location: FF_X49_Y21_N7
\uart|RX_data_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data_temp[1]~feeder_combout\,
	ena => \uart|RX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data_temp\(1));

-- Location: LCCOMB_X49_Y21_N0
\uart|RX_data_temp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_data_temp[0]~feeder_combout\ = \uart|RX_data_temp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_data_temp\(1),
	combout => \uart|RX_data_temp[0]~feeder_combout\);

-- Location: FF_X49_Y21_N1
\uart|RX_data_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data_temp[0]~feeder_combout\,
	ena => \uart|RX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data_temp\(0));

-- Location: LCCOMB_X49_Y18_N26
\uart|RX_data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_data[0]~feeder_combout\ = \uart|RX_data_temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_data_temp\(0),
	combout => \uart|RX_data[0]~feeder_combout\);

-- Location: FF_X49_Y18_N27
\uart|RX_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data[0]~feeder_combout\,
	clrn => \tb_reset~input_o\,
	ena => \uart|present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data\(0));

-- Location: LCCOMB_X48_Y18_N0
\freq_out[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_out[0]~reg0feeder_combout\ = \uart|RX_data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_data\(0),
	combout => \freq_out[0]~reg0feeder_combout\);

-- Location: LCCOMB_X51_Y18_N24
\uart|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Selector11~0_combout\ = (\uart|present_State.stop_State~q\) # ((\uart|present_State.reset_State~q\ & \uart|RX_data_valid~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|present_State.reset_State~q\,
	datac => \uart|RX_data_valid~q\,
	datad => \uart|present_State.stop_State~q\,
	combout => \uart|Selector11~0_combout\);

-- Location: FF_X51_Y18_N25
\uart|RX_data_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|Selector11~0_combout\,
	ena => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data_valid~q\);

-- Location: FF_X48_Y18_N1
\freq_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \freq_out[0]~reg0feeder_combout\,
	clrn => \tb_reset~input_o\,
	ena => \uart|RX_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_out[0]~reg0_q\);

-- Location: LCCOMB_X49_Y18_N12
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

-- Location: FF_X49_Y18_N13
\uart|RX_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data[1]~feeder_combout\,
	clrn => \tb_reset~input_o\,
	ena => \uart|present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data\(1));

-- Location: LCCOMB_X49_Y18_N24
\freq_out[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_out[1]~reg0feeder_combout\ = \uart|RX_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_data\(1),
	combout => \freq_out[1]~reg0feeder_combout\);

-- Location: FF_X49_Y18_N25
\freq_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \freq_out[1]~reg0feeder_combout\,
	clrn => \tb_reset~input_o\,
	ena => \uart|RX_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_out[1]~reg0_q\);

-- Location: LCCOMB_X49_Y18_N10
\uart|RX_data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_data[2]~feeder_combout\ = \uart|RX_data_temp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|RX_data_temp\(2),
	combout => \uart|RX_data[2]~feeder_combout\);

-- Location: FF_X49_Y18_N11
\uart|RX_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data[2]~feeder_combout\,
	clrn => \tb_reset~input_o\,
	ena => \uart|present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data\(2));

-- Location: LCCOMB_X49_Y18_N18
\freq_out[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_out[2]~reg0feeder_combout\ = \uart|RX_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_data\(2),
	combout => \freq_out[2]~reg0feeder_combout\);

-- Location: FF_X49_Y18_N19
\freq_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \freq_out[2]~reg0feeder_combout\,
	clrn => \tb_reset~input_o\,
	ena => \uart|RX_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_out[2]~reg0_q\);

-- Location: LCCOMB_X49_Y18_N4
\uart|RX_data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_data[3]~feeder_combout\ = \uart|RX_data_temp\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_data_temp\(3),
	combout => \uart|RX_data[3]~feeder_combout\);

-- Location: FF_X49_Y18_N5
\uart|RX_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data[3]~feeder_combout\,
	clrn => \tb_reset~input_o\,
	ena => \uart|present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data\(3));

-- Location: LCCOMB_X48_Y18_N2
\freq_out[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_out[3]~reg0feeder_combout\ = \uart|RX_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_data\(3),
	combout => \freq_out[3]~reg0feeder_combout\);

-- Location: FF_X48_Y18_N3
\freq_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \freq_out[3]~reg0feeder_combout\,
	clrn => \tb_reset~input_o\,
	ena => \uart|RX_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_out[3]~reg0_q\);

-- Location: LCCOMB_X49_Y18_N6
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

-- Location: FF_X49_Y18_N7
\uart|RX_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data[4]~feeder_combout\,
	clrn => \tb_reset~input_o\,
	ena => \uart|present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data\(4));

-- Location: LCCOMB_X48_Y18_N20
\freq_out[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_out[4]~reg0feeder_combout\ = \uart|RX_data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_data\(4),
	combout => \freq_out[4]~reg0feeder_combout\);

-- Location: FF_X48_Y18_N21
\freq_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \freq_out[4]~reg0feeder_combout\,
	clrn => \tb_reset~input_o\,
	ena => \uart|RX_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_out[4]~reg0_q\);

-- Location: LCCOMB_X49_Y18_N20
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

-- Location: FF_X49_Y18_N21
\uart|RX_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data[5]~feeder_combout\,
	clrn => \tb_reset~input_o\,
	ena => \uart|present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data\(5));

-- Location: LCCOMB_X49_Y18_N16
\freq_out[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_out[5]~reg0feeder_combout\ = \uart|RX_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_data\(5),
	combout => \freq_out[5]~reg0feeder_combout\);

-- Location: FF_X49_Y18_N17
\freq_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \freq_out[5]~reg0feeder_combout\,
	clrn => \tb_reset~input_o\,
	ena => \uart|RX_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_out[5]~reg0_q\);

-- Location: LCCOMB_X49_Y18_N30
\uart|RX_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_data[6]~feeder_combout\ = \uart|RX_data_temp\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_data_temp\(6),
	combout => \uart|RX_data[6]~feeder_combout\);

-- Location: FF_X49_Y18_N31
\uart|RX_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data[6]~feeder_combout\,
	clrn => \tb_reset~input_o\,
	ena => \uart|present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data\(6));

-- Location: FF_X48_Y18_N31
\freq_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \uart|RX_data\(6),
	clrn => \tb_reset~input_o\,
	sload => VCC,
	ena => \uart|RX_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_out[6]~reg0_q\);

-- Location: LCCOMB_X49_Y18_N8
\uart|RX_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|RX_data[7]~feeder_combout\ = \uart|RX_data_temp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|RX_data_temp\(7),
	combout => \uart|RX_data[7]~feeder_combout\);

-- Location: FF_X49_Y18_N9
\uart|RX_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|RX_data[7]~feeder_combout\,
	clrn => \tb_reset~input_o\,
	ena => \uart|present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|RX_data\(7));

-- Location: LCCOMB_X48_Y18_N16
\freq_out[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_out[7]~reg0feeder_combout\ = \uart|RX_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|RX_data\(7),
	combout => \freq_out[7]~reg0feeder_combout\);

-- Location: FF_X48_Y18_N17
\freq_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \freq_out[7]~reg0feeder_combout\,
	clrn => \tb_reset~input_o\,
	ena => \uart|RX_data_valid~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_out[7]~reg0_q\);

ww_freq_out(0) <= \freq_out[0]~output_o\;

ww_freq_out(1) <= \freq_out[1]~output_o\;

ww_freq_out(2) <= \freq_out[2]~output_o\;

ww_freq_out(3) <= \freq_out[3]~output_o\;

ww_freq_out(4) <= \freq_out[4]~output_o\;

ww_freq_out(5) <= \freq_out[5]~output_o\;

ww_freq_out(6) <= \freq_out[6]~output_o\;

ww_freq_out(7) <= \freq_out[7]~output_o\;
END structure;


