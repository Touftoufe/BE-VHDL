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

-- DATE "11/19/2020 18:54:02"

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

ENTITY 	UART_RX IS
    PORT (
	clock : IN std_logic;
	reset_n : IN std_logic;
	RX : IN std_logic;
	TicBit : IN std_logic_vector(15 DOWNTO 0);
	RX_data : OUT std_logic_vector(7 DOWNTO 0);
	RX_data_valid : OUT std_logic
	);
END UART_RX;

-- Design Ports Information
-- RX_data[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data[4]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX_data_valid	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RX	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TicBit[15]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TicBit[14]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TicBit[13]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TicBit[12]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TicBit[11]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TicBit[10]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TicBit[9]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TicBit[8]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TicBit[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TicBit[6]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TicBit[5]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TicBit[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TicBit[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TicBit[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TicBit[1]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TicBit[0]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UART_RX IS
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
SIGNAL ww_RX : std_logic;
SIGNAL ww_TicBit : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_RX_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_RX_data_valid : std_logic;
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RX_data[0]~output_o\ : std_logic;
SIGNAL \RX_data[1]~output_o\ : std_logic;
SIGNAL \RX_data[2]~output_o\ : std_logic;
SIGNAL \RX_data[3]~output_o\ : std_logic;
SIGNAL \RX_data[4]~output_o\ : std_logic;
SIGNAL \RX_data[5]~output_o\ : std_logic;
SIGNAL \RX_data[6]~output_o\ : std_logic;
SIGNAL \RX_data[7]~output_o\ : std_logic;
SIGNAL \RX_data_valid~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \RX~input_o\ : std_logic;
SIGNAL \RX_data_temp[0]~feeder_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \next_State.stop_State~0_combout\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \present_State.stop_State~q\ : std_logic;
SIGNAL \present_State.reset_State~0_combout\ : std_logic;
SIGNAL \present_State.reset_State~q\ : std_logic;
SIGNAL \start_bit~feeder_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \reset_start_bit~feeder_combout\ : std_logic;
SIGNAL \reset_start_bit~q\ : std_logic;
SIGNAL \start_bit~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \present_State.IDLE_State~q\ : std_logic;
SIGNAL \freq_count|count[0]~16_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \reset_counter~q\ : std_logic;
SIGNAL \freq_count|count[0]~17\ : std_logic;
SIGNAL \freq_count|count[1]~18_combout\ : std_logic;
SIGNAL \freq_count|count[1]~19\ : std_logic;
SIGNAL \freq_count|count[2]~20_combout\ : std_logic;
SIGNAL \freq_count|count[2]~21\ : std_logic;
SIGNAL \freq_count|count[3]~22_combout\ : std_logic;
SIGNAL \freq_count|count[3]~23\ : std_logic;
SIGNAL \freq_count|count[4]~24_combout\ : std_logic;
SIGNAL \freq_count|count[4]~25\ : std_logic;
SIGNAL \freq_count|count[5]~26_combout\ : std_logic;
SIGNAL \freq_count|count[5]~27\ : std_logic;
SIGNAL \freq_count|count[6]~28_combout\ : std_logic;
SIGNAL \freq_count|count[6]~29\ : std_logic;
SIGNAL \freq_count|count[7]~30_combout\ : std_logic;
SIGNAL \freq_count|count[7]~31\ : std_logic;
SIGNAL \freq_count|count[8]~32_combout\ : std_logic;
SIGNAL \freq_count|count[8]~33\ : std_logic;
SIGNAL \freq_count|count[9]~34_combout\ : std_logic;
SIGNAL \freq_count|count[9]~35\ : std_logic;
SIGNAL \freq_count|count[10]~36_combout\ : std_logic;
SIGNAL \freq_count|count[10]~37\ : std_logic;
SIGNAL \freq_count|count[11]~38_combout\ : std_logic;
SIGNAL \freq_count|count[11]~39\ : std_logic;
SIGNAL \freq_count|count[12]~40_combout\ : std_logic;
SIGNAL \freq_count|count[12]~41\ : std_logic;
SIGNAL \freq_count|count[13]~42_combout\ : std_logic;
SIGNAL \freq_count|count[13]~43\ : std_logic;
SIGNAL \freq_count|count[14]~44_combout\ : std_logic;
SIGNAL \freq_count|count[14]~45\ : std_logic;
SIGNAL \freq_count|count[15]~46_combout\ : std_logic;
SIGNAL \TicBit[15]~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \X2~q\ : std_logic;
SIGNAL \ticBit_temp~0_combout\ : std_logic;
SIGNAL \TicBit[14]~input_o\ : std_logic;
SIGNAL \ticBit_temp~1_combout\ : std_logic;
SIGNAL \TicBit[13]~input_o\ : std_logic;
SIGNAL \ticBit_temp~2_combout\ : std_logic;
SIGNAL \TicBit[12]~input_o\ : std_logic;
SIGNAL \ticBit_temp~3_combout\ : std_logic;
SIGNAL \TicBit[11]~input_o\ : std_logic;
SIGNAL \ticBit_temp~4_combout\ : std_logic;
SIGNAL \TicBit[10]~input_o\ : std_logic;
SIGNAL \ticBit_temp~5_combout\ : std_logic;
SIGNAL \TicBit[9]~input_o\ : std_logic;
SIGNAL \ticBit_temp~6_combout\ : std_logic;
SIGNAL \TicBit[8]~input_o\ : std_logic;
SIGNAL \ticBit_temp~7_combout\ : std_logic;
SIGNAL \TicBit[7]~input_o\ : std_logic;
SIGNAL \ticBit_temp~8_combout\ : std_logic;
SIGNAL \TicBit[6]~input_o\ : std_logic;
SIGNAL \ticBit_temp~9_combout\ : std_logic;
SIGNAL \TicBit[5]~input_o\ : std_logic;
SIGNAL \ticBit_temp~10_combout\ : std_logic;
SIGNAL \TicBit[4]~input_o\ : std_logic;
SIGNAL \ticBit_temp~11_combout\ : std_logic;
SIGNAL \TicBit[3]~input_o\ : std_logic;
SIGNAL \ticBit_temp~12_combout\ : std_logic;
SIGNAL \TicBit[2]~input_o\ : std_logic;
SIGNAL \ticBit_temp~13_combout\ : std_logic;
SIGNAL \TicBit[1]~input_o\ : std_logic;
SIGNAL \ticBit_temp~14_combout\ : std_logic;
SIGNAL \TicBit[0]~input_o\ : std_logic;
SIGNAL \ticBit_temp~15_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~30_combout\ : std_logic;
SIGNAL \read_data_signal~0_combout\ : std_logic;
SIGNAL \read_data_signal~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \present_State.start_State~q\ : std_logic;
SIGNAL \next_State.Rx_State~0_combout\ : std_logic;
SIGNAL \present_State.Rx_State~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \present_State.bit_read_prep_State~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \present_State.bit_read_State~q\ : std_logic;
SIGNAL \RX_data_temp[0]~0_combout\ : std_logic;
SIGNAL \RX_data[0]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_data[0]~reg0_q\ : std_logic;
SIGNAL \RX_data_temp[1]~feeder_combout\ : std_logic;
SIGNAL \RX_data[1]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_data[1]~reg0_q\ : std_logic;
SIGNAL \RX_data_temp[2]~feeder_combout\ : std_logic;
SIGNAL \RX_data[2]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_data[2]~reg0_q\ : std_logic;
SIGNAL \RX_data_temp[3]~feeder_combout\ : std_logic;
SIGNAL \RX_data[3]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_data[3]~reg0_q\ : std_logic;
SIGNAL \RX_data_temp[4]~feeder_combout\ : std_logic;
SIGNAL \RX_data[4]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_data[4]~reg0_q\ : std_logic;
SIGNAL \RX_data_temp[5]~feeder_combout\ : std_logic;
SIGNAL \RX_data[5]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_data[5]~reg0_q\ : std_logic;
SIGNAL \RX_data_temp[6]~feeder_combout\ : std_logic;
SIGNAL \RX_data[6]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_data[6]~reg0_q\ : std_logic;
SIGNAL \RX_data[7]~reg0feeder_combout\ : std_logic;
SIGNAL \RX_data[7]~reg0_q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \RX_data_valid~reg0_q\ : std_logic;
SIGNAL \freq_count|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL RX_data_temp : std_logic_vector(7 DOWNTO 0);
SIGNAL n_data_bits : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_RX~input_o\ : std_logic;
SIGNAL \ALT_INV_reset_n~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset_n <= reset_n;
ww_RX <= RX;
ww_TicBit <= TicBit;
RX_data <= ww_RX_data;
RX_data_valid <= ww_RX_data_valid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset_n~inputclkctrl_outclk\ <= NOT \reset_n~inputclkctrl_outclk\;
\ALT_INV_RX~input_o\ <= NOT \RX~input_o\;
\ALT_INV_reset_n~input_o\ <= NOT \reset_n~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y34_N2
\RX_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_data[0]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_data[0]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\RX_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_data[1]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_data[1]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\RX_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_data[2]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_data[2]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\RX_data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_data[3]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_data[3]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\RX_data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_data[4]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_data[4]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\RX_data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_data[5]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_data[5]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\RX_data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_data[6]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_data[6]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\RX_data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_data[7]~reg0_q\,
	devoe => ww_devoe,
	o => \RX_data[7]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\RX_data_valid~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RX_data_valid~reg0_q\,
	devoe => ww_devoe,
	o => \RX_data_valid~output_o\);

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

-- Location: IOIBUF_X40_Y34_N1
\RX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RX,
	o => \RX~input_o\);

-- Location: LCCOMB_X40_Y30_N24
\RX_data_temp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_data_temp[0]~feeder_combout\ = \RX~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RX~input_o\,
	combout => \RX_data_temp[0]~feeder_combout\);

-- Location: IOIBUF_X27_Y0_N15
\reset_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: LCCOMB_X39_Y30_N8
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (n_data_bits(0) & (\present_State.reset_State~q\ & !\present_State.bit_read_State~q\)) # (!n_data_bits(0) & ((\present_State.bit_read_State~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_State.reset_State~q\,
	datac => n_data_bits(0),
	datad => \present_State.bit_read_State~q\,
	combout => \Selector10~0_combout\);

-- Location: FF_X39_Y30_N9
\n_data_bits[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	ena => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_data_bits(0));

-- Location: LCCOMB_X39_Y30_N10
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\present_State.bit_read_State~q\ & (n_data_bits(0) $ (((n_data_bits(1)))))) # (!\present_State.bit_read_State~q\ & (((\present_State.reset_State~q\ & n_data_bits(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_data_bits(0),
	datab => \present_State.reset_State~q\,
	datac => n_data_bits(1),
	datad => \present_State.bit_read_State~q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X39_Y30_N11
\n_data_bits[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	ena => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_data_bits(1));

-- Location: LCCOMB_X39_Y30_N24
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\present_State.bit_read_State~q\ & (n_data_bits(2) $ (((n_data_bits(1) & n_data_bits(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_data_bits(1),
	datab => n_data_bits(2),
	datac => n_data_bits(0),
	datad => \present_State.bit_read_State~q\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X39_Y30_N20
\Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\Selector8~0_combout\) # ((!\present_State.bit_read_State~q\ & (\present_State.reset_State~q\ & n_data_bits(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_State.bit_read_State~q\,
	datab => \present_State.reset_State~q\,
	datac => n_data_bits(2),
	datad => \Selector8~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: FF_X39_Y30_N21
\n_data_bits[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector8~1_combout\,
	ena => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_data_bits(2));

-- Location: LCCOMB_X39_Y30_N6
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = n_data_bits(3) $ (((n_data_bits(1) & (n_data_bits(0) & n_data_bits(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => n_data_bits(1),
	datab => n_data_bits(0),
	datac => n_data_bits(3),
	datad => n_data_bits(2),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X39_Y30_N22
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\present_State.bit_read_State~q\ & (\Add0~0_combout\)) # (!\present_State.bit_read_State~q\ & (((\present_State.reset_State~q\ & n_data_bits(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \present_State.reset_State~q\,
	datac => n_data_bits(3),
	datad => \present_State.bit_read_State~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X39_Y30_N23
\n_data_bits[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	ena => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => n_data_bits(3));

-- Location: LCCOMB_X40_Y27_N14
\next_State.stop_State~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_State.stop_State~0_combout\ = (n_data_bits(3) & \present_State.bit_read_State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => n_data_bits(3),
	datad => \present_State.bit_read_State~q\,
	combout => \next_State.stop_State~0_combout\);

-- Location: CLKCTRL_G19
\reset_n~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_n~inputclkctrl_outclk\);

-- Location: FF_X40_Y27_N15
\present_State.stop_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \next_State.stop_State~0_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_State.stop_State~q\);

-- Location: LCCOMB_X40_Y27_N4
\present_State.reset_State~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \present_State.reset_State~0_combout\ = !\present_State.stop_State~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \present_State.stop_State~q\,
	combout => \present_State.reset_State~0_combout\);

-- Location: FF_X40_Y27_N5
\present_State.reset_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \present_State.reset_State~0_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_State.reset_State~q\);

-- Location: LCCOMB_X39_Y27_N24
\start_bit~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \start_bit~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \start_bit~feeder_combout\);

-- Location: LCCOMB_X40_Y27_N24
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\present_State.reset_State~q\ & ((\present_State.IDLE_State~q\) # (\reset_start_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_State.IDLE_State~q\,
	datab => \present_State.reset_State~q\,
	datac => \reset_start_bit~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X40_Y27_N26
\reset_start_bit~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reset_start_bit~feeder_combout\ = \Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector4~0_combout\,
	combout => \reset_start_bit~feeder_combout\);

-- Location: FF_X40_Y27_N27
reset_start_bit : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \reset_start_bit~feeder_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_start_bit~q\);

-- Location: FF_X39_Y27_N25
start_bit : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RX~input_o\,
	d => \start_bit~feeder_combout\,
	clrn => \reset_start_bit~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \start_bit~q\);

-- Location: LCCOMB_X40_Y27_N12
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ((\present_State.IDLE_State~q\ & !\start_bit~q\)) # (!\present_State.reset_State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_State.reset_State~q\,
	datac => \present_State.IDLE_State~q\,
	datad => \start_bit~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X40_Y27_N13
\present_State.IDLE_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_State.IDLE_State~q\);

-- Location: LCCOMB_X41_Y27_N0
\freq_count|count[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_count|count[0]~16_combout\ = \freq_count|count\(0) $ (VCC)
-- \freq_count|count[0]~17\ = CARRY(\freq_count|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freq_count|count\(0),
	datad => VCC,
	combout => \freq_count|count[0]~16_combout\,
	cout => \freq_count|count[0]~17\);

-- Location: LCCOMB_X40_Y27_N10
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\present_State.Rx_State~q\) # ((!\reset_counter~q\ & ((\present_State.IDLE_State~q\) # (\present_State.stop_State~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_State.IDLE_State~q\,
	datab => \present_State.Rx_State~q\,
	datac => \reset_counter~q\,
	datad => \present_State.stop_State~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X40_Y27_N16
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (!\present_State.bit_read_State~q\ & (\present_State.reset_State~q\ & !\Selector5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_State.bit_read_State~q\,
	datac => \present_State.reset_State~q\,
	datad => \Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X41_Y27_N1
reset_counter : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Selector5~1_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reset_counter~q\);

-- Location: FF_X43_Y27_N27
\freq_count|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \freq_count|count[0]~16_combout\,
	clrn => \reset_counter~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_count|count\(0));

-- Location: LCCOMB_X41_Y27_N2
\freq_count|count[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_count|count[1]~18_combout\ = (\freq_count|count\(1) & (!\freq_count|count[0]~17\)) # (!\freq_count|count\(1) & ((\freq_count|count[0]~17\) # (GND)))
-- \freq_count|count[1]~19\ = CARRY((!\freq_count|count[0]~17\) # (!\freq_count|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_count|count\(1),
	datad => VCC,
	cin => \freq_count|count[0]~17\,
	combout => \freq_count|count[1]~18_combout\,
	cout => \freq_count|count[1]~19\);

-- Location: FF_X41_Y27_N3
\freq_count|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \freq_count|count[1]~18_combout\,
	clrn => \reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_count|count\(1));

-- Location: LCCOMB_X41_Y27_N4
\freq_count|count[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_count|count[2]~20_combout\ = (\freq_count|count\(2) & (\freq_count|count[1]~19\ $ (GND))) # (!\freq_count|count\(2) & (!\freq_count|count[1]~19\ & VCC))
-- \freq_count|count[2]~21\ = CARRY((\freq_count|count\(2) & !\freq_count|count[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_count|count\(2),
	datad => VCC,
	cin => \freq_count|count[1]~19\,
	combout => \freq_count|count[2]~20_combout\,
	cout => \freq_count|count[2]~21\);

-- Location: FF_X41_Y27_N5
\freq_count|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \freq_count|count[2]~20_combout\,
	clrn => \reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_count|count\(2));

-- Location: LCCOMB_X41_Y27_N6
\freq_count|count[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_count|count[3]~22_combout\ = (\freq_count|count\(3) & (!\freq_count|count[2]~21\)) # (!\freq_count|count\(3) & ((\freq_count|count[2]~21\) # (GND)))
-- \freq_count|count[3]~23\ = CARRY((!\freq_count|count[2]~21\) # (!\freq_count|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_count|count\(3),
	datad => VCC,
	cin => \freq_count|count[2]~21\,
	combout => \freq_count|count[3]~22_combout\,
	cout => \freq_count|count[3]~23\);

-- Location: FF_X41_Y27_N7
\freq_count|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \freq_count|count[3]~22_combout\,
	clrn => \reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_count|count\(3));

-- Location: LCCOMB_X41_Y27_N8
\freq_count|count[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_count|count[4]~24_combout\ = (\freq_count|count\(4) & (\freq_count|count[3]~23\ $ (GND))) # (!\freq_count|count\(4) & (!\freq_count|count[3]~23\ & VCC))
-- \freq_count|count[4]~25\ = CARRY((\freq_count|count\(4) & !\freq_count|count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_count|count\(4),
	datad => VCC,
	cin => \freq_count|count[3]~23\,
	combout => \freq_count|count[4]~24_combout\,
	cout => \freq_count|count[4]~25\);

-- Location: FF_X41_Y27_N9
\freq_count|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \freq_count|count[4]~24_combout\,
	clrn => \reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_count|count\(4));

-- Location: LCCOMB_X41_Y27_N10
\freq_count|count[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_count|count[5]~26_combout\ = (\freq_count|count\(5) & (!\freq_count|count[4]~25\)) # (!\freq_count|count\(5) & ((\freq_count|count[4]~25\) # (GND)))
-- \freq_count|count[5]~27\ = CARRY((!\freq_count|count[4]~25\) # (!\freq_count|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_count|count\(5),
	datad => VCC,
	cin => \freq_count|count[4]~25\,
	combout => \freq_count|count[5]~26_combout\,
	cout => \freq_count|count[5]~27\);

-- Location: FF_X41_Y27_N11
\freq_count|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \freq_count|count[5]~26_combout\,
	clrn => \reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_count|count\(5));

-- Location: LCCOMB_X41_Y27_N12
\freq_count|count[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_count|count[6]~28_combout\ = (\freq_count|count\(6) & (\freq_count|count[5]~27\ $ (GND))) # (!\freq_count|count\(6) & (!\freq_count|count[5]~27\ & VCC))
-- \freq_count|count[6]~29\ = CARRY((\freq_count|count\(6) & !\freq_count|count[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_count|count\(6),
	datad => VCC,
	cin => \freq_count|count[5]~27\,
	combout => \freq_count|count[6]~28_combout\,
	cout => \freq_count|count[6]~29\);

-- Location: FF_X41_Y27_N13
\freq_count|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \freq_count|count[6]~28_combout\,
	clrn => \reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_count|count\(6));

-- Location: LCCOMB_X41_Y27_N14
\freq_count|count[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_count|count[7]~30_combout\ = (\freq_count|count\(7) & (!\freq_count|count[6]~29\)) # (!\freq_count|count\(7) & ((\freq_count|count[6]~29\) # (GND)))
-- \freq_count|count[7]~31\ = CARRY((!\freq_count|count[6]~29\) # (!\freq_count|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_count|count\(7),
	datad => VCC,
	cin => \freq_count|count[6]~29\,
	combout => \freq_count|count[7]~30_combout\,
	cout => \freq_count|count[7]~31\);

-- Location: FF_X41_Y27_N15
\freq_count|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \freq_count|count[7]~30_combout\,
	clrn => \reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_count|count\(7));

-- Location: LCCOMB_X41_Y27_N16
\freq_count|count[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_count|count[8]~32_combout\ = (\freq_count|count\(8) & (\freq_count|count[7]~31\ $ (GND))) # (!\freq_count|count\(8) & (!\freq_count|count[7]~31\ & VCC))
-- \freq_count|count[8]~33\ = CARRY((\freq_count|count\(8) & !\freq_count|count[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_count|count\(8),
	datad => VCC,
	cin => \freq_count|count[7]~31\,
	combout => \freq_count|count[8]~32_combout\,
	cout => \freq_count|count[8]~33\);

-- Location: FF_X41_Y27_N17
\freq_count|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \freq_count|count[8]~32_combout\,
	clrn => \reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_count|count\(8));

-- Location: LCCOMB_X41_Y27_N18
\freq_count|count[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_count|count[9]~34_combout\ = (\freq_count|count\(9) & (!\freq_count|count[8]~33\)) # (!\freq_count|count\(9) & ((\freq_count|count[8]~33\) # (GND)))
-- \freq_count|count[9]~35\ = CARRY((!\freq_count|count[8]~33\) # (!\freq_count|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_count|count\(9),
	datad => VCC,
	cin => \freq_count|count[8]~33\,
	combout => \freq_count|count[9]~34_combout\,
	cout => \freq_count|count[9]~35\);

-- Location: FF_X41_Y27_N19
\freq_count|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \freq_count|count[9]~34_combout\,
	clrn => \reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_count|count\(9));

-- Location: LCCOMB_X41_Y27_N20
\freq_count|count[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_count|count[10]~36_combout\ = (\freq_count|count\(10) & (\freq_count|count[9]~35\ $ (GND))) # (!\freq_count|count\(10) & (!\freq_count|count[9]~35\ & VCC))
-- \freq_count|count[10]~37\ = CARRY((\freq_count|count\(10) & !\freq_count|count[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_count|count\(10),
	datad => VCC,
	cin => \freq_count|count[9]~35\,
	combout => \freq_count|count[10]~36_combout\,
	cout => \freq_count|count[10]~37\);

-- Location: FF_X41_Y27_N21
\freq_count|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \freq_count|count[10]~36_combout\,
	clrn => \reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_count|count\(10));

-- Location: LCCOMB_X41_Y27_N22
\freq_count|count[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_count|count[11]~38_combout\ = (\freq_count|count\(11) & (!\freq_count|count[10]~37\)) # (!\freq_count|count\(11) & ((\freq_count|count[10]~37\) # (GND)))
-- \freq_count|count[11]~39\ = CARRY((!\freq_count|count[10]~37\) # (!\freq_count|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_count|count\(11),
	datad => VCC,
	cin => \freq_count|count[10]~37\,
	combout => \freq_count|count[11]~38_combout\,
	cout => \freq_count|count[11]~39\);

-- Location: FF_X41_Y27_N23
\freq_count|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \freq_count|count[11]~38_combout\,
	clrn => \reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_count|count\(11));

-- Location: LCCOMB_X41_Y27_N24
\freq_count|count[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_count|count[12]~40_combout\ = (\freq_count|count\(12) & (\freq_count|count[11]~39\ $ (GND))) # (!\freq_count|count\(12) & (!\freq_count|count[11]~39\ & VCC))
-- \freq_count|count[12]~41\ = CARRY((\freq_count|count\(12) & !\freq_count|count[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_count|count\(12),
	datad => VCC,
	cin => \freq_count|count[11]~39\,
	combout => \freq_count|count[12]~40_combout\,
	cout => \freq_count|count[12]~41\);

-- Location: FF_X41_Y27_N25
\freq_count|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \freq_count|count[12]~40_combout\,
	clrn => \reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_count|count\(12));

-- Location: LCCOMB_X41_Y27_N26
\freq_count|count[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_count|count[13]~42_combout\ = (\freq_count|count\(13) & (!\freq_count|count[12]~41\)) # (!\freq_count|count\(13) & ((\freq_count|count[12]~41\) # (GND)))
-- \freq_count|count[13]~43\ = CARRY((!\freq_count|count[12]~41\) # (!\freq_count|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_count|count\(13),
	datad => VCC,
	cin => \freq_count|count[12]~41\,
	combout => \freq_count|count[13]~42_combout\,
	cout => \freq_count|count[13]~43\);

-- Location: FF_X41_Y27_N27
\freq_count|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \freq_count|count[13]~42_combout\,
	clrn => \reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_count|count\(13));

-- Location: LCCOMB_X41_Y27_N28
\freq_count|count[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_count|count[14]~44_combout\ = (\freq_count|count\(14) & (\freq_count|count[13]~43\ $ (GND))) # (!\freq_count|count\(14) & (!\freq_count|count[13]~43\ & VCC))
-- \freq_count|count[14]~45\ = CARRY((\freq_count|count\(14) & !\freq_count|count[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_count|count\(14),
	datad => VCC,
	cin => \freq_count|count[13]~43\,
	combout => \freq_count|count[14]~44_combout\,
	cout => \freq_count|count[14]~45\);

-- Location: FF_X41_Y27_N29
\freq_count|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \freq_count|count[14]~44_combout\,
	clrn => \reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_count|count\(14));

-- Location: LCCOMB_X41_Y27_N30
\freq_count|count[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \freq_count|count[15]~46_combout\ = \freq_count|count\(15) $ (\freq_count|count[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_count|count\(15),
	cin => \freq_count|count[14]~45\,
	combout => \freq_count|count[15]~46_combout\);

-- Location: FF_X41_Y27_N31
\freq_count|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \freq_count|count[15]~46_combout\,
	clrn => \reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freq_count|count\(15));

-- Location: IOIBUF_X53_Y22_N8
\TicBit[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TicBit(15),
	o => \TicBit[15]~input_o\);

-- Location: LCCOMB_X40_Y27_N2
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\present_State.start_State~q\) # ((!\present_State.Rx_State~q\ & \X2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_State.Rx_State~q\,
	datac => \X2~q\,
	datad => \present_State.start_State~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X44_Y27_N1
X2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \Selector6~0_combout\,
	sload => VCC,
	ena => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \X2~q\);

-- Location: LCCOMB_X44_Y27_N0
\ticBit_temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ticBit_temp~0_combout\ = (\TicBit[15]~input_o\ & !\X2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TicBit[15]~input_o\,
	datac => \X2~q\,
	combout => \ticBit_temp~0_combout\);

-- Location: IOIBUF_X49_Y34_N1
\TicBit[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TicBit(14),
	o => \TicBit[14]~input_o\);

-- Location: LCCOMB_X44_Y27_N10
\ticBit_temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ticBit_temp~1_combout\ = (\X2~q\ & ((\TicBit[15]~input_o\))) # (!\X2~q\ & (\TicBit[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TicBit[14]~input_o\,
	datac => \TicBit[15]~input_o\,
	datad => \X2~q\,
	combout => \ticBit_temp~1_combout\);

-- Location: IOIBUF_X45_Y34_N15
\TicBit[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TicBit(13),
	o => \TicBit[13]~input_o\);

-- Location: LCCOMB_X44_Y27_N4
\ticBit_temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ticBit_temp~2_combout\ = (\X2~q\ & (\TicBit[14]~input_o\)) # (!\X2~q\ & ((\TicBit[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TicBit[14]~input_o\,
	datac => \TicBit[13]~input_o\,
	datad => \X2~q\,
	combout => \ticBit_temp~2_combout\);

-- Location: IOIBUF_X53_Y30_N1
\TicBit[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TicBit(12),
	o => \TicBit[12]~input_o\);

-- Location: LCCOMB_X44_Y27_N18
\ticBit_temp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ticBit_temp~3_combout\ = (\X2~q\ & ((\TicBit[13]~input_o\))) # (!\X2~q\ & (\TicBit[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TicBit[12]~input_o\,
	datac => \TicBit[13]~input_o\,
	datad => \X2~q\,
	combout => \ticBit_temp~3_combout\);

-- Location: IOIBUF_X53_Y24_N22
\TicBit[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TicBit(11),
	o => \TicBit[11]~input_o\);

-- Location: LCCOMB_X44_Y27_N24
\ticBit_temp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ticBit_temp~4_combout\ = (\X2~q\ & (\TicBit[12]~input_o\)) # (!\X2~q\ & ((\TicBit[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TicBit[12]~input_o\,
	datac => \TicBit[11]~input_o\,
	datad => \X2~q\,
	combout => \ticBit_temp~4_combout\);

-- Location: IOIBUF_X51_Y34_N8
\TicBit[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TicBit(10),
	o => \TicBit[10]~input_o\);

-- Location: LCCOMB_X44_Y27_N14
\ticBit_temp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ticBit_temp~5_combout\ = (\X2~q\ & ((\TicBit[11]~input_o\))) # (!\X2~q\ & (\TicBit[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TicBit[10]~input_o\,
	datac => \TicBit[11]~input_o\,
	datad => \X2~q\,
	combout => \ticBit_temp~5_combout\);

-- Location: IOIBUF_X47_Y34_N22
\TicBit[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TicBit(9),
	o => \TicBit[9]~input_o\);

-- Location: LCCOMB_X44_Y27_N28
\ticBit_temp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ticBit_temp~6_combout\ = (\X2~q\ & (\TicBit[10]~input_o\)) # (!\X2~q\ & ((\TicBit[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TicBit[10]~input_o\,
	datac => \TicBit[9]~input_o\,
	datad => \X2~q\,
	combout => \ticBit_temp~6_combout\);

-- Location: IOIBUF_X45_Y34_N8
\TicBit[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TicBit(8),
	o => \TicBit[8]~input_o\);

-- Location: LCCOMB_X44_Y27_N22
\ticBit_temp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ticBit_temp~7_combout\ = (\X2~q\ & (\TicBit[9]~input_o\)) # (!\X2~q\ & ((\TicBit[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TicBit[9]~input_o\,
	datac => \TicBit[8]~input_o\,
	datad => \X2~q\,
	combout => \ticBit_temp~7_combout\);

-- Location: IOIBUF_X51_Y34_N22
\TicBit[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TicBit(7),
	o => \TicBit[7]~input_o\);

-- Location: LCCOMB_X44_Y27_N16
\ticBit_temp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ticBit_temp~8_combout\ = (\X2~q\ & (\TicBit[8]~input_o\)) # (!\X2~q\ & ((\TicBit[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TicBit[8]~input_o\,
	datac => \TicBit[7]~input_o\,
	datad => \X2~q\,
	combout => \ticBit_temp~8_combout\);

-- Location: IOIBUF_X49_Y34_N8
\TicBit[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TicBit(6),
	o => \TicBit[6]~input_o\);

-- Location: LCCOMB_X44_Y27_N26
\ticBit_temp~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ticBit_temp~9_combout\ = (\X2~q\ & ((\TicBit[7]~input_o\))) # (!\X2~q\ & (\TicBit[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TicBit[6]~input_o\,
	datac => \TicBit[7]~input_o\,
	datad => \X2~q\,
	combout => \ticBit_temp~9_combout\);

-- Location: IOIBUF_X45_Y34_N1
\TicBit[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TicBit(5),
	o => \TicBit[5]~input_o\);

-- Location: LCCOMB_X44_Y27_N12
\ticBit_temp~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ticBit_temp~10_combout\ = (\X2~q\ & (\TicBit[6]~input_o\)) # (!\X2~q\ & ((\TicBit[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TicBit[6]~input_o\,
	datac => \TicBit[5]~input_o\,
	datad => \X2~q\,
	combout => \ticBit_temp~10_combout\);

-- Location: IOIBUF_X53_Y30_N8
\TicBit[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TicBit(4),
	o => \TicBit[4]~input_o\);

-- Location: LCCOMB_X44_Y27_N6
\ticBit_temp~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ticBit_temp~11_combout\ = (\X2~q\ & ((\TicBit[5]~input_o\))) # (!\X2~q\ & (\TicBit[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TicBit[4]~input_o\,
	datac => \TicBit[5]~input_o\,
	datad => \X2~q\,
	combout => \ticBit_temp~11_combout\);

-- Location: IOIBUF_X53_Y26_N22
\TicBit[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TicBit(3),
	o => \TicBit[3]~input_o\);

-- Location: LCCOMB_X44_Y27_N8
\ticBit_temp~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ticBit_temp~12_combout\ = (\X2~q\ & (\TicBit[4]~input_o\)) # (!\X2~q\ & ((\TicBit[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TicBit[4]~input_o\,
	datac => \TicBit[3]~input_o\,
	datad => \X2~q\,
	combout => \ticBit_temp~12_combout\);

-- Location: IOIBUF_X53_Y25_N1
\TicBit[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TicBit(2),
	o => \TicBit[2]~input_o\);

-- Location: LCCOMB_X44_Y27_N30
\ticBit_temp~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ticBit_temp~13_combout\ = (\X2~q\ & ((\TicBit[3]~input_o\))) # (!\X2~q\ & (\TicBit[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TicBit[2]~input_o\,
	datac => \TicBit[3]~input_o\,
	datad => \X2~q\,
	combout => \ticBit_temp~13_combout\);

-- Location: IOIBUF_X53_Y17_N22
\TicBit[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TicBit(1),
	o => \TicBit[1]~input_o\);

-- Location: LCCOMB_X44_Y27_N20
\ticBit_temp~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ticBit_temp~14_combout\ = (\X2~q\ & (\TicBit[2]~input_o\)) # (!\X2~q\ & ((\TicBit[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TicBit[2]~input_o\,
	datac => \TicBit[1]~input_o\,
	datad => \X2~q\,
	combout => \ticBit_temp~14_combout\);

-- Location: IOIBUF_X53_Y17_N15
\TicBit[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TicBit(0),
	o => \TicBit[0]~input_o\);

-- Location: LCCOMB_X44_Y27_N2
\ticBit_temp~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ticBit_temp~15_combout\ = (\X2~q\ & (\TicBit[1]~input_o\)) # (!\X2~q\ & ((\TicBit[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TicBit[1]~input_o\,
	datac => \TicBit[0]~input_o\,
	datad => \X2~q\,
	combout => \ticBit_temp~15_combout\);

-- Location: LCCOMB_X43_Y27_N0
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\ticBit_temp~15_combout\ & !\freq_count|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ticBit_temp~15_combout\,
	datab => \freq_count|count\(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X43_Y27_N2
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\ticBit_temp~14_combout\ & (\freq_count|count\(1) & !\LessThan0~1_cout\)) # (!\ticBit_temp~14_combout\ & ((\freq_count|count\(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ticBit_temp~14_combout\,
	datab => \freq_count|count\(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X43_Y27_N4
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\ticBit_temp~13_combout\ & ((!\LessThan0~3_cout\) # (!\freq_count|count\(2)))) # (!\ticBit_temp~13_combout\ & (!\freq_count|count\(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ticBit_temp~13_combout\,
	datab => \freq_count|count\(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X43_Y27_N6
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\freq_count|count\(3) & ((!\LessThan0~5_cout\) # (!\ticBit_temp~12_combout\))) # (!\freq_count|count\(3) & (!\ticBit_temp~12_combout\ & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_count|count\(3),
	datab => \ticBit_temp~12_combout\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X43_Y27_N8
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\ticBit_temp~11_combout\ & ((!\LessThan0~7_cout\) # (!\freq_count|count\(4)))) # (!\ticBit_temp~11_combout\ & (!\freq_count|count\(4) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ticBit_temp~11_combout\,
	datab => \freq_count|count\(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X43_Y27_N10
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\freq_count|count\(5) & ((!\LessThan0~9_cout\) # (!\ticBit_temp~10_combout\))) # (!\freq_count|count\(5) & (!\ticBit_temp~10_combout\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_count|count\(5),
	datab => \ticBit_temp~10_combout\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X43_Y27_N12
\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\freq_count|count\(6) & (\ticBit_temp~9_combout\ & !\LessThan0~11_cout\)) # (!\freq_count|count\(6) & ((\ticBit_temp~9_combout\) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_count|count\(6),
	datab => \ticBit_temp~9_combout\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X43_Y27_N14
\LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\freq_count|count\(7) & ((!\LessThan0~13_cout\) # (!\ticBit_temp~8_combout\))) # (!\freq_count|count\(7) & (!\ticBit_temp~8_combout\ & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_count|count\(7),
	datab => \ticBit_temp~8_combout\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X43_Y27_N16
\LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\freq_count|count\(8) & (\ticBit_temp~7_combout\ & !\LessThan0~15_cout\)) # (!\freq_count|count\(8) & ((\ticBit_temp~7_combout\) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_count|count\(8),
	datab => \ticBit_temp~7_combout\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X43_Y27_N18
\LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\freq_count|count\(9) & ((!\LessThan0~17_cout\) # (!\ticBit_temp~6_combout\))) # (!\freq_count|count\(9) & (!\ticBit_temp~6_combout\ & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_count|count\(9),
	datab => \ticBit_temp~6_combout\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X43_Y27_N20
\LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\freq_count|count\(10) & (\ticBit_temp~5_combout\ & !\LessThan0~19_cout\)) # (!\freq_count|count\(10) & ((\ticBit_temp~5_combout\) # (!\LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_count|count\(10),
	datab => \ticBit_temp~5_combout\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X43_Y27_N22
\LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\freq_count|count\(11) & ((!\LessThan0~21_cout\) # (!\ticBit_temp~4_combout\))) # (!\freq_count|count\(11) & (!\ticBit_temp~4_combout\ & !\LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_count|count\(11),
	datab => \ticBit_temp~4_combout\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X43_Y27_N24
\LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\freq_count|count\(12) & (\ticBit_temp~3_combout\ & !\LessThan0~23_cout\)) # (!\freq_count|count\(12) & ((\ticBit_temp~3_combout\) # (!\LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_count|count\(12),
	datab => \ticBit_temp~3_combout\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X43_Y27_N26
\LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\ticBit_temp~2_combout\ & (\freq_count|count\(13) & !\LessThan0~25_cout\)) # (!\ticBit_temp~2_combout\ & ((\freq_count|count\(13)) # (!\LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ticBit_temp~2_combout\,
	datab => \freq_count|count\(13),
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X43_Y27_N28
\LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\freq_count|count\(14) & (\ticBit_temp~1_combout\ & !\LessThan0~27_cout\)) # (!\freq_count|count\(14) & ((\ticBit_temp~1_combout\) # (!\LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freq_count|count\(14),
	datab => \ticBit_temp~1_combout\,
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X43_Y27_N30
\LessThan0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~30_combout\ = (\freq_count|count\(15) & (\LessThan0~29_cout\ & \ticBit_temp~0_combout\)) # (!\freq_count|count\(15) & ((\LessThan0~29_cout\) # (\ticBit_temp~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freq_count|count\(15),
	datad => \ticBit_temp~0_combout\,
	cin => \LessThan0~29_cout\,
	combout => \LessThan0~30_combout\);

-- Location: LCCOMB_X40_Y27_N28
\read_data_signal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \read_data_signal~0_combout\ = !\LessThan0~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LessThan0~30_combout\,
	combout => \read_data_signal~0_combout\);

-- Location: FF_X40_Y27_N29
read_data_signal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \read_data_signal~0_combout\,
	clrn => \reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_data_signal~q\);

-- Location: LCCOMB_X40_Y27_N20
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\present_State.IDLE_State~q\ & ((\start_bit~q\) # ((!\read_data_signal~q\ & \present_State.start_State~q\)))) # (!\present_State.IDLE_State~q\ & (!\read_data_signal~q\ & (\present_State.start_State~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_State.IDLE_State~q\,
	datab => \read_data_signal~q\,
	datac => \present_State.start_State~q\,
	datad => \start_bit~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X40_Y27_N21
\present_State.start_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_State.start_State~q\);

-- Location: LCCOMB_X40_Y27_N8
\next_State.Rx_State~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \next_State.Rx_State~0_combout\ = (\present_State.start_State~q\ & \read_data_signal~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_State.start_State~q\,
	datad => \read_data_signal~q\,
	combout => \next_State.Rx_State~0_combout\);

-- Location: FF_X40_Y27_N9
\present_State.Rx_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \next_State.Rx_State~0_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_State.Rx_State~q\);

-- Location: LCCOMB_X40_Y27_N30
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\present_State.bit_read_State~q\ & (((\present_State.bit_read_prep_State~q\ & !\read_data_signal~q\)) # (!n_data_bits(3)))) # (!\present_State.bit_read_State~q\ & (\present_State.bit_read_prep_State~q\ & 
-- ((!\read_data_signal~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \present_State.bit_read_State~q\,
	datab => \present_State.bit_read_prep_State~q\,
	datac => n_data_bits(3),
	datad => \read_data_signal~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X40_Y27_N18
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\present_State.Rx_State~q\) # (\Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_State.Rx_State~q\,
	datac => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X40_Y27_N19
\present_State.bit_read_prep_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_State.bit_read_prep_State~q\);

-- Location: LCCOMB_X40_Y27_N6
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\present_State.bit_read_prep_State~q\ & \read_data_signal~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_State.bit_read_prep_State~q\,
	datad => \read_data_signal~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X40_Y27_N7
\present_State.bit_read_State\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \present_State.bit_read_State~q\);

-- Location: LCCOMB_X39_Y30_N4
\RX_data_temp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_data_temp[0]~0_combout\ = (!\reset_n~input_o\ & \present_State.bit_read_State~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_n~input_o\,
	datad => \present_State.bit_read_State~q\,
	combout => \RX_data_temp[0]~0_combout\);

-- Location: FF_X40_Y30_N25
\RX_data_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RX_data_temp[0]~feeder_combout\,
	ena => \RX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RX_data_temp(0));

-- Location: LCCOMB_X39_Y30_N0
\RX_data[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_data[0]~reg0feeder_combout\ = RX_data_temp(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RX_data_temp(0),
	combout => \RX_data[0]~reg0feeder_combout\);

-- Location: FF_X39_Y30_N1
\RX_data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RX_data[0]~reg0feeder_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	ena => \present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_data[0]~reg0_q\);

-- Location: LCCOMB_X40_Y30_N2
\RX_data_temp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_data_temp[1]~feeder_combout\ = RX_data_temp(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RX_data_temp(0),
	combout => \RX_data_temp[1]~feeder_combout\);

-- Location: FF_X40_Y30_N3
\RX_data_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RX_data_temp[1]~feeder_combout\,
	ena => \RX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RX_data_temp(1));

-- Location: LCCOMB_X39_Y30_N26
\RX_data[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_data[1]~reg0feeder_combout\ = RX_data_temp(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RX_data_temp(1),
	combout => \RX_data[1]~reg0feeder_combout\);

-- Location: FF_X39_Y30_N27
\RX_data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RX_data[1]~reg0feeder_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	ena => \present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_data[1]~reg0_q\);

-- Location: LCCOMB_X39_Y27_N20
\RX_data_temp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_data_temp[2]~feeder_combout\ = RX_data_temp(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RX_data_temp(1),
	combout => \RX_data_temp[2]~feeder_combout\);

-- Location: FF_X39_Y27_N21
\RX_data_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RX_data_temp[2]~feeder_combout\,
	ena => \RX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RX_data_temp(2));

-- Location: LCCOMB_X39_Y30_N12
\RX_data[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_data[2]~reg0feeder_combout\ = RX_data_temp(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RX_data_temp(2),
	combout => \RX_data[2]~reg0feeder_combout\);

-- Location: FF_X39_Y30_N13
\RX_data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RX_data[2]~reg0feeder_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	ena => \present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_data[2]~reg0_q\);

-- Location: LCCOMB_X39_Y27_N10
\RX_data_temp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_data_temp[3]~feeder_combout\ = RX_data_temp(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RX_data_temp(2),
	combout => \RX_data_temp[3]~feeder_combout\);

-- Location: FF_X39_Y27_N11
\RX_data_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RX_data_temp[3]~feeder_combout\,
	ena => \RX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RX_data_temp(3));

-- Location: LCCOMB_X39_Y30_N30
\RX_data[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_data[3]~reg0feeder_combout\ = RX_data_temp(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RX_data_temp(3),
	combout => \RX_data[3]~reg0feeder_combout\);

-- Location: FF_X39_Y30_N31
\RX_data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RX_data[3]~reg0feeder_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	ena => \present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_data[3]~reg0_q\);

-- Location: LCCOMB_X39_Y27_N12
\RX_data_temp[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_data_temp[4]~feeder_combout\ = RX_data_temp(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RX_data_temp(3),
	combout => \RX_data_temp[4]~feeder_combout\);

-- Location: FF_X39_Y27_N13
\RX_data_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RX_data_temp[4]~feeder_combout\,
	ena => \RX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RX_data_temp(4));

-- Location: LCCOMB_X39_Y30_N28
\RX_data[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_data[4]~reg0feeder_combout\ = RX_data_temp(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RX_data_temp(4),
	combout => \RX_data[4]~reg0feeder_combout\);

-- Location: FF_X39_Y30_N29
\RX_data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RX_data[4]~reg0feeder_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	ena => \present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_data[4]~reg0_q\);

-- Location: LCCOMB_X39_Y27_N18
\RX_data_temp[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_data_temp[5]~feeder_combout\ = RX_data_temp(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RX_data_temp(4),
	combout => \RX_data_temp[5]~feeder_combout\);

-- Location: FF_X39_Y27_N19
\RX_data_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RX_data_temp[5]~feeder_combout\,
	ena => \RX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RX_data_temp(5));

-- Location: LCCOMB_X39_Y30_N14
\RX_data[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_data[5]~reg0feeder_combout\ = RX_data_temp(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => RX_data_temp(5),
	combout => \RX_data[5]~reg0feeder_combout\);

-- Location: FF_X39_Y30_N15
\RX_data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RX_data[5]~reg0feeder_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	ena => \present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_data[5]~reg0_q\);

-- Location: LCCOMB_X39_Y27_N4
\RX_data_temp[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_data_temp[6]~feeder_combout\ = RX_data_temp(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RX_data_temp(5),
	combout => \RX_data_temp[6]~feeder_combout\);

-- Location: FF_X39_Y27_N5
\RX_data_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RX_data_temp[6]~feeder_combout\,
	ena => \RX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RX_data_temp(6));

-- Location: LCCOMB_X39_Y30_N16
\RX_data[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_data[6]~reg0feeder_combout\ = RX_data_temp(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RX_data_temp(6),
	combout => \RX_data[6]~reg0feeder_combout\);

-- Location: FF_X39_Y30_N17
\RX_data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RX_data[6]~reg0feeder_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	ena => \present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_data[6]~reg0_q\);

-- Location: FF_X39_Y27_N15
\RX_data_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => RX_data_temp(6),
	sload => VCC,
	ena => \RX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RX_data_temp(7));

-- Location: LCCOMB_X40_Y27_N0
\RX_data[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RX_data[7]~reg0feeder_combout\ = RX_data_temp(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => RX_data_temp(7),
	combout => \RX_data[7]~reg0feeder_combout\);

-- Location: FF_X40_Y27_N1
\RX_data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \RX_data[7]~reg0feeder_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	ena => \present_State.stop_State~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_data[7]~reg0_q\);

-- Location: LCCOMB_X39_Y30_N2
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\present_State.stop_State~q\) # ((\present_State.reset_State~q\ & \RX_data_valid~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \present_State.reset_State~q\,
	datac => \RX_data_valid~reg0_q\,
	datad => \present_State.stop_State~q\,
	combout => \Selector11~0_combout\);

-- Location: FF_X39_Y30_N3
\RX_data_valid~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	ena => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RX_data_valid~reg0_q\);

ww_RX_data(0) <= \RX_data[0]~output_o\;

ww_RX_data(1) <= \RX_data[1]~output_o\;

ww_RX_data(2) <= \RX_data[2]~output_o\;

ww_RX_data(3) <= \RX_data[3]~output_o\;

ww_RX_data(4) <= \RX_data[4]~output_o\;

ww_RX_data(5) <= \RX_data[5]~output_o\;

ww_RX_data(6) <= \RX_data[6]~output_o\;

ww_RX_data(7) <= \RX_data[7]~output_o\;

ww_RX_data_valid <= \RX_data_valid~output_o\;
END structure;


