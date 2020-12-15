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

-- DATE "12/14/2020 20:42:44"

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

ENTITY 	TB_UART_TX IS
    PORT (
	clock : IN std_logic;
	tb_reset_n : IN std_logic;
	freq_out : BUFFER std_logic_vector(7 DOWNTO 0);
	TX : OUT std_logic
	);
END TB_UART_TX;

-- Design Ports Information
-- freq_out[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_out[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_out[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_out[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_out[4]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_out[5]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_out[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- freq_out[7]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- tb_reset_n	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TB_UART_TX IS
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
SIGNAL ww_tb_reset_n : std_logic;
SIGNAL ww_freq_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_TX : std_logic;
SIGNAL \uart|TX_data_valid~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart|data_Tx_freq|subCLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \freq_out[0]~output_o\ : std_logic;
SIGNAL \freq_out[1]~output_o\ : std_logic;
SIGNAL \freq_out[2]~output_o\ : std_logic;
SIGNAL \freq_out[3]~output_o\ : std_logic;
SIGNAL \freq_out[4]~output_o\ : std_logic;
SIGNAL \freq_out[5]~output_o\ : std_logic;
SIGNAL \freq_out[6]~output_o\ : std_logic;
SIGNAL \freq_out[7]~output_o\ : std_logic;
SIGNAL \TX~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~0_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|count~0_combout\ : std_logic;
SIGNAL \tb_reset_n~input_o\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~1\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~2_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~3\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~4_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~5\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~6_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~7\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~8_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|count~5_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~9\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~10_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|count~9_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~11\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~12_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~13\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~14_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|count~8_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~15\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~16_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|Equal1~1_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~17\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~18_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~19\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~20_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~21\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~22_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|count~7_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~23\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~24_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~25\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~26_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|count~6_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|Equal1~2_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~27\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|Add0~28_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|count~2_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|count~3_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|Equal2~0_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|count~1_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|counter1|count~4_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|Equal1~0_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|Equal1~3_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|Equal1~4_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|Equal2~1_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|Equal2~2_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|subCLK~0_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|subCLK~feeder_combout\ : std_logic;
SIGNAL \uart|data_Tx_freq|subCLK~q\ : std_logic;
SIGNAL \uart|data_Tx_freq|subCLK~clkctrl_outclk\ : std_logic;
SIGNAL \uart|count~1_combout\ : std_logic;
SIGNAL \uart|count~2_combout\ : std_logic;
SIGNAL \uart|count~0_combout\ : std_logic;
SIGNAL \uart|count~3_combout\ : std_logic;
SIGNAL \uart|Equal0~0_combout\ : std_logic;
SIGNAL \uart|TX_end~0_combout\ : std_logic;
SIGNAL \uart|TX_end~1_combout\ : std_logic;
SIGNAL \uart|TX_data_valid~feeder_combout\ : std_logic;
SIGNAL \uart|TX_data_valid~q\ : std_logic;
SIGNAL \uart|TX_data_valid~clkctrl_outclk\ : std_logic;
SIGNAL \count[0]~1_combout\ : std_logic;
SIGNAL \count[1]~feeder_combout\ : std_logic;
SIGNAL \uart|TX_data_temp~0_combout\ : std_logic;
SIGNAL \count[2]~0_combout\ : std_logic;
SIGNAL \uart|transmit:TX_data_temp[0]~0_combout\ : std_logic;
SIGNAL \uart|transmit:TX_data_temp[3]~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \uart|transmit:TX_data_temp[5]~0_combout\ : std_logic;
SIGNAL \uart|LessThan0~0_combout\ : std_logic;
SIGNAL \uart|TX_data_temp~7_combout\ : std_logic;
SIGNAL \uart|TX_data_temp~8_combout\ : std_logic;
SIGNAL \uart|transmit:TX_data_temp[7]~q\ : std_logic;
SIGNAL \uart|TX_data_temp~6_combout\ : std_logic;
SIGNAL \uart|transmit:TX_data_temp[0]~1_combout\ : std_logic;
SIGNAL \uart|transmit:TX_data_temp[0]~2_combout\ : std_logic;
SIGNAL \uart|transmit:TX_data_temp[6]~q\ : std_logic;
SIGNAL \uart|transmit:TX_data_temp[5]~q\ : std_logic;
SIGNAL \uart|TX_data_temp~4_combout\ : std_logic;
SIGNAL \uart|TX_data_temp~5_combout\ : std_logic;
SIGNAL \uart|transmit:TX_data_temp[4]~q\ : std_logic;
SIGNAL \uart|transmit:TX_data_temp[3]~q\ : std_logic;
SIGNAL \uart|TX_data_temp~2_combout\ : std_logic;
SIGNAL \uart|TX_data_temp~3_combout\ : std_logic;
SIGNAL \uart|transmit:TX_data_temp[2]~q\ : std_logic;
SIGNAL \uart|TX_data_temp~1_combout\ : std_logic;
SIGNAL \uart|transmit:TX_data_temp[1]~q\ : std_logic;
SIGNAL \uart|transmit:TX_data_temp[0]~q\ : std_logic;
SIGNAL \uart|TX~0_combout\ : std_logic;
SIGNAL \uart|TX~1_combout\ : std_logic;
SIGNAL \uart|TX~q\ : std_logic;
SIGNAL \uart|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \uart|data_Tx_freq|counter1|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL count : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart|ALT_INV_TX~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_tb_reset_n <= tb_reset_n;
freq_out <= ww_freq_out;
TX <= ww_TX;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\uart|TX_data_valid~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \uart|TX_data_valid~q\);

\uart|data_Tx_freq|subCLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \uart|data_Tx_freq|subCLK~q\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\uart|ALT_INV_TX~q\ <= NOT \uart|TX~q\;
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => \freq_out[7]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\TX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uart|ALT_INV_TX~q\,
	devoe => ww_devoe,
	o => \TX~output_o\);

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

-- Location: LCCOMB_X52_Y18_N2
\uart|data_Tx_freq|counter1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|Add0~0_combout\ = \uart|data_Tx_freq|counter1|count\(0) $ (VCC)
-- \uart|data_Tx_freq|counter1|Add0~1\ = CARRY(\uart|data_Tx_freq|counter1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|data_Tx_freq|counter1|count\(0),
	datad => VCC,
	combout => \uart|data_Tx_freq|counter1|Add0~0_combout\,
	cout => \uart|data_Tx_freq|counter1|Add0~1\);

-- Location: LCCOMB_X52_Y18_N0
\uart|data_Tx_freq|counter1|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|count~0_combout\ = (\uart|data_Tx_freq|counter1|Add0~0_combout\ & !\uart|data_Tx_freq|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|data_Tx_freq|counter1|Add0~0_combout\,
	datac => \uart|data_Tx_freq|Equal1~4_combout\,
	combout => \uart|data_Tx_freq|counter1|count~0_combout\);

-- Location: IOIBUF_X53_Y14_N1
\tb_reset_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tb_reset_n,
	o => \tb_reset_n~input_o\);

-- Location: FF_X52_Y18_N1
\uart|data_Tx_freq|counter1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|data_Tx_freq|counter1|count~0_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|data_Tx_freq|counter1|count\(0));

-- Location: LCCOMB_X52_Y18_N4
\uart|data_Tx_freq|counter1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|Add0~2_combout\ = (\uart|data_Tx_freq|counter1|count\(1) & (!\uart|data_Tx_freq|counter1|Add0~1\)) # (!\uart|data_Tx_freq|counter1|count\(1) & ((\uart|data_Tx_freq|counter1|Add0~1\) # (GND)))
-- \uart|data_Tx_freq|counter1|Add0~3\ = CARRY((!\uart|data_Tx_freq|counter1|Add0~1\) # (!\uart|data_Tx_freq|counter1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|data_Tx_freq|counter1|count\(1),
	datad => VCC,
	cin => \uart|data_Tx_freq|counter1|Add0~1\,
	combout => \uart|data_Tx_freq|counter1|Add0~2_combout\,
	cout => \uart|data_Tx_freq|counter1|Add0~3\);

-- Location: FF_X52_Y18_N5
\uart|data_Tx_freq|counter1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|data_Tx_freq|counter1|Add0~2_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|data_Tx_freq|counter1|count\(1));

-- Location: LCCOMB_X52_Y18_N6
\uart|data_Tx_freq|counter1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|Add0~4_combout\ = (\uart|data_Tx_freq|counter1|count\(2) & (\uart|data_Tx_freq|counter1|Add0~3\ $ (GND))) # (!\uart|data_Tx_freq|counter1|count\(2) & (!\uart|data_Tx_freq|counter1|Add0~3\ & VCC))
-- \uart|data_Tx_freq|counter1|Add0~5\ = CARRY((\uart|data_Tx_freq|counter1|count\(2) & !\uart|data_Tx_freq|counter1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart|data_Tx_freq|counter1|count\(2),
	datad => VCC,
	cin => \uart|data_Tx_freq|counter1|Add0~3\,
	combout => \uart|data_Tx_freq|counter1|Add0~4_combout\,
	cout => \uart|data_Tx_freq|counter1|Add0~5\);

-- Location: FF_X52_Y18_N7
\uart|data_Tx_freq|counter1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|data_Tx_freq|counter1|Add0~4_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|data_Tx_freq|counter1|count\(2));

-- Location: LCCOMB_X52_Y18_N8
\uart|data_Tx_freq|counter1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|Add0~6_combout\ = (\uart|data_Tx_freq|counter1|count\(3) & (!\uart|data_Tx_freq|counter1|Add0~5\)) # (!\uart|data_Tx_freq|counter1|count\(3) & ((\uart|data_Tx_freq|counter1|Add0~5\) # (GND)))
-- \uart|data_Tx_freq|counter1|Add0~7\ = CARRY((!\uart|data_Tx_freq|counter1|Add0~5\) # (!\uart|data_Tx_freq|counter1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|data_Tx_freq|counter1|count\(3),
	datad => VCC,
	cin => \uart|data_Tx_freq|counter1|Add0~5\,
	combout => \uart|data_Tx_freq|counter1|Add0~6_combout\,
	cout => \uart|data_Tx_freq|counter1|Add0~7\);

-- Location: FF_X52_Y18_N9
\uart|data_Tx_freq|counter1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|data_Tx_freq|counter1|Add0~6_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|data_Tx_freq|counter1|count\(3));

-- Location: LCCOMB_X52_Y18_N10
\uart|data_Tx_freq|counter1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|Add0~8_combout\ = (\uart|data_Tx_freq|counter1|count\(4) & (\uart|data_Tx_freq|counter1|Add0~7\ $ (GND))) # (!\uart|data_Tx_freq|counter1|count\(4) & (!\uart|data_Tx_freq|counter1|Add0~7\ & VCC))
-- \uart|data_Tx_freq|counter1|Add0~9\ = CARRY((\uart|data_Tx_freq|counter1|count\(4) & !\uart|data_Tx_freq|counter1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart|data_Tx_freq|counter1|count\(4),
	datad => VCC,
	cin => \uart|data_Tx_freq|counter1|Add0~7\,
	combout => \uart|data_Tx_freq|counter1|Add0~8_combout\,
	cout => \uart|data_Tx_freq|counter1|Add0~9\);

-- Location: LCCOMB_X51_Y18_N16
\uart|data_Tx_freq|counter1|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|count~5_combout\ = (\uart|data_Tx_freq|counter1|Add0~8_combout\ & !\uart|data_Tx_freq|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|data_Tx_freq|counter1|Add0~8_combout\,
	datad => \uart|data_Tx_freq|Equal1~4_combout\,
	combout => \uart|data_Tx_freq|counter1|count~5_combout\);

-- Location: FF_X51_Y18_N17
\uart|data_Tx_freq|counter1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|data_Tx_freq|counter1|count~5_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|data_Tx_freq|counter1|count\(4));

-- Location: LCCOMB_X52_Y18_N12
\uart|data_Tx_freq|counter1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|Add0~10_combout\ = (\uart|data_Tx_freq|counter1|count\(5) & (!\uart|data_Tx_freq|counter1|Add0~9\)) # (!\uart|data_Tx_freq|counter1|count\(5) & ((\uart|data_Tx_freq|counter1|Add0~9\) # (GND)))
-- \uart|data_Tx_freq|counter1|Add0~11\ = CARRY((!\uart|data_Tx_freq|counter1|Add0~9\) # (!\uart|data_Tx_freq|counter1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart|data_Tx_freq|counter1|count\(5),
	datad => VCC,
	cin => \uart|data_Tx_freq|counter1|Add0~9\,
	combout => \uart|data_Tx_freq|counter1|Add0~10_combout\,
	cout => \uart|data_Tx_freq|counter1|Add0~11\);

-- Location: LCCOMB_X51_Y18_N14
\uart|data_Tx_freq|counter1|count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|count~9_combout\ = (\uart|data_Tx_freq|counter1|Add0~10_combout\ & !\uart|data_Tx_freq|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|data_Tx_freq|counter1|Add0~10_combout\,
	datad => \uart|data_Tx_freq|Equal1~4_combout\,
	combout => \uart|data_Tx_freq|counter1|count~9_combout\);

-- Location: FF_X51_Y18_N15
\uart|data_Tx_freq|counter1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|data_Tx_freq|counter1|count~9_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|data_Tx_freq|counter1|count\(5));

-- Location: LCCOMB_X52_Y18_N14
\uart|data_Tx_freq|counter1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|Add0~12_combout\ = (\uart|data_Tx_freq|counter1|count\(6) & (\uart|data_Tx_freq|counter1|Add0~11\ $ (GND))) # (!\uart|data_Tx_freq|counter1|count\(6) & (!\uart|data_Tx_freq|counter1|Add0~11\ & VCC))
-- \uart|data_Tx_freq|counter1|Add0~13\ = CARRY((\uart|data_Tx_freq|counter1|count\(6) & !\uart|data_Tx_freq|counter1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|data_Tx_freq|counter1|count\(6),
	datad => VCC,
	cin => \uart|data_Tx_freq|counter1|Add0~11\,
	combout => \uart|data_Tx_freq|counter1|Add0~12_combout\,
	cout => \uart|data_Tx_freq|counter1|Add0~13\);

-- Location: FF_X52_Y18_N15
\uart|data_Tx_freq|counter1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|data_Tx_freq|counter1|Add0~12_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|data_Tx_freq|counter1|count\(6));

-- Location: LCCOMB_X52_Y18_N16
\uart|data_Tx_freq|counter1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|Add0~14_combout\ = (\uart|data_Tx_freq|counter1|count\(7) & (!\uart|data_Tx_freq|counter1|Add0~13\)) # (!\uart|data_Tx_freq|counter1|count\(7) & ((\uart|data_Tx_freq|counter1|Add0~13\) # (GND)))
-- \uart|data_Tx_freq|counter1|Add0~15\ = CARRY((!\uart|data_Tx_freq|counter1|Add0~13\) # (!\uart|data_Tx_freq|counter1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart|data_Tx_freq|counter1|count\(7),
	datad => VCC,
	cin => \uart|data_Tx_freq|counter1|Add0~13\,
	combout => \uart|data_Tx_freq|counter1|Add0~14_combout\,
	cout => \uart|data_Tx_freq|counter1|Add0~15\);

-- Location: LCCOMB_X51_Y18_N12
\uart|data_Tx_freq|counter1|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|count~8_combout\ = (!\uart|data_Tx_freq|Equal1~4_combout\ & \uart|data_Tx_freq|counter1|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|data_Tx_freq|Equal1~4_combout\,
	datad => \uart|data_Tx_freq|counter1|Add0~14_combout\,
	combout => \uart|data_Tx_freq|counter1|count~8_combout\);

-- Location: FF_X51_Y18_N13
\uart|data_Tx_freq|counter1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|data_Tx_freq|counter1|count~8_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|data_Tx_freq|counter1|count\(7));

-- Location: LCCOMB_X52_Y18_N18
\uart|data_Tx_freq|counter1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|Add0~16_combout\ = (\uart|data_Tx_freq|counter1|count\(8) & (\uart|data_Tx_freq|counter1|Add0~15\ $ (GND))) # (!\uart|data_Tx_freq|counter1|count\(8) & (!\uart|data_Tx_freq|counter1|Add0~15\ & VCC))
-- \uart|data_Tx_freq|counter1|Add0~17\ = CARRY((\uart|data_Tx_freq|counter1|count\(8) & !\uart|data_Tx_freq|counter1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|data_Tx_freq|counter1|count\(8),
	datad => VCC,
	cin => \uart|data_Tx_freq|counter1|Add0~15\,
	combout => \uart|data_Tx_freq|counter1|Add0~16_combout\,
	cout => \uart|data_Tx_freq|counter1|Add0~17\);

-- Location: FF_X52_Y18_N19
\uart|data_Tx_freq|counter1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|data_Tx_freq|counter1|Add0~16_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|data_Tx_freq|counter1|count\(8));

-- Location: LCCOMB_X51_Y18_N26
\uart|data_Tx_freq|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|Equal1~1_combout\ = (!\uart|data_Tx_freq|counter1|count\(2) & (\uart|data_Tx_freq|counter1|count\(4) & (!\uart|data_Tx_freq|counter1|count\(1) & !\uart|data_Tx_freq|counter1|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|data_Tx_freq|counter1|count\(2),
	datab => \uart|data_Tx_freq|counter1|count\(4),
	datac => \uart|data_Tx_freq|counter1|count\(1),
	datad => \uart|data_Tx_freq|counter1|count\(8),
	combout => \uart|data_Tx_freq|Equal1~1_combout\);

-- Location: LCCOMB_X52_Y18_N20
\uart|data_Tx_freq|counter1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|Add0~18_combout\ = (\uart|data_Tx_freq|counter1|count\(9) & (!\uart|data_Tx_freq|counter1|Add0~17\)) # (!\uart|data_Tx_freq|counter1|count\(9) & ((\uart|data_Tx_freq|counter1|Add0~17\) # (GND)))
-- \uart|data_Tx_freq|counter1|Add0~19\ = CARRY((!\uart|data_Tx_freq|counter1|Add0~17\) # (!\uart|data_Tx_freq|counter1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|data_Tx_freq|counter1|count\(9),
	datad => VCC,
	cin => \uart|data_Tx_freq|counter1|Add0~17\,
	combout => \uart|data_Tx_freq|counter1|Add0~18_combout\,
	cout => \uart|data_Tx_freq|counter1|Add0~19\);

-- Location: FF_X52_Y18_N21
\uart|data_Tx_freq|counter1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|data_Tx_freq|counter1|Add0~18_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|data_Tx_freq|counter1|count\(9));

-- Location: LCCOMB_X52_Y18_N22
\uart|data_Tx_freq|counter1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|Add0~20_combout\ = (\uart|data_Tx_freq|counter1|count\(10) & (\uart|data_Tx_freq|counter1|Add0~19\ $ (GND))) # (!\uart|data_Tx_freq|counter1|count\(10) & (!\uart|data_Tx_freq|counter1|Add0~19\ & VCC))
-- \uart|data_Tx_freq|counter1|Add0~21\ = CARRY((\uart|data_Tx_freq|counter1|count\(10) & !\uart|data_Tx_freq|counter1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart|data_Tx_freq|counter1|count\(10),
	datad => VCC,
	cin => \uart|data_Tx_freq|counter1|Add0~19\,
	combout => \uart|data_Tx_freq|counter1|Add0~20_combout\,
	cout => \uart|data_Tx_freq|counter1|Add0~21\);

-- Location: FF_X52_Y18_N23
\uart|data_Tx_freq|counter1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|data_Tx_freq|counter1|Add0~20_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|data_Tx_freq|counter1|count\(10));

-- Location: LCCOMB_X52_Y18_N24
\uart|data_Tx_freq|counter1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|Add0~22_combout\ = (\uart|data_Tx_freq|counter1|count\(11) & (!\uart|data_Tx_freq|counter1|Add0~21\)) # (!\uart|data_Tx_freq|counter1|count\(11) & ((\uart|data_Tx_freq|counter1|Add0~21\) # (GND)))
-- \uart|data_Tx_freq|counter1|Add0~23\ = CARRY((!\uart|data_Tx_freq|counter1|Add0~21\) # (!\uart|data_Tx_freq|counter1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uart|data_Tx_freq|counter1|count\(11),
	datad => VCC,
	cin => \uart|data_Tx_freq|counter1|Add0~21\,
	combout => \uart|data_Tx_freq|counter1|Add0~22_combout\,
	cout => \uart|data_Tx_freq|counter1|Add0~23\);

-- Location: LCCOMB_X51_Y18_N6
\uart|data_Tx_freq|counter1|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|count~7_combout\ = (!\uart|data_Tx_freq|Equal1~4_combout\ & \uart|data_Tx_freq|counter1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|data_Tx_freq|Equal1~4_combout\,
	datad => \uart|data_Tx_freq|counter1|Add0~22_combout\,
	combout => \uart|data_Tx_freq|counter1|count~7_combout\);

-- Location: FF_X51_Y18_N7
\uart|data_Tx_freq|counter1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|data_Tx_freq|counter1|count~7_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|data_Tx_freq|counter1|count\(11));

-- Location: LCCOMB_X52_Y18_N26
\uart|data_Tx_freq|counter1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|Add0~24_combout\ = (\uart|data_Tx_freq|counter1|count\(12) & (\uart|data_Tx_freq|counter1|Add0~23\ $ (GND))) # (!\uart|data_Tx_freq|counter1|count\(12) & (!\uart|data_Tx_freq|counter1|Add0~23\ & VCC))
-- \uart|data_Tx_freq|counter1|Add0~25\ = CARRY((\uart|data_Tx_freq|counter1|count\(12) & !\uart|data_Tx_freq|counter1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart|data_Tx_freq|counter1|count\(12),
	datad => VCC,
	cin => \uart|data_Tx_freq|counter1|Add0~23\,
	combout => \uart|data_Tx_freq|counter1|Add0~24_combout\,
	cout => \uart|data_Tx_freq|counter1|Add0~25\);

-- Location: FF_X52_Y18_N27
\uart|data_Tx_freq|counter1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|data_Tx_freq|counter1|Add0~24_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|data_Tx_freq|counter1|count\(12));

-- Location: LCCOMB_X52_Y18_N28
\uart|data_Tx_freq|counter1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|Add0~26_combout\ = (\uart|data_Tx_freq|counter1|count\(13) & (!\uart|data_Tx_freq|counter1|Add0~25\)) # (!\uart|data_Tx_freq|counter1|count\(13) & ((\uart|data_Tx_freq|counter1|Add0~25\) # (GND)))
-- \uart|data_Tx_freq|counter1|Add0~27\ = CARRY((!\uart|data_Tx_freq|counter1|Add0~25\) # (!\uart|data_Tx_freq|counter1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart|data_Tx_freq|counter1|count\(13),
	datad => VCC,
	cin => \uart|data_Tx_freq|counter1|Add0~25\,
	combout => \uart|data_Tx_freq|counter1|Add0~26_combout\,
	cout => \uart|data_Tx_freq|counter1|Add0~27\);

-- Location: LCCOMB_X51_Y18_N8
\uart|data_Tx_freq|counter1|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|count~6_combout\ = (!\uart|data_Tx_freq|Equal1~4_combout\ & \uart|data_Tx_freq|counter1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|data_Tx_freq|Equal1~4_combout\,
	datad => \uart|data_Tx_freq|counter1|Add0~26_combout\,
	combout => \uart|data_Tx_freq|counter1|count~6_combout\);

-- Location: FF_X51_Y18_N9
\uart|data_Tx_freq|counter1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|data_Tx_freq|counter1|count~6_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|data_Tx_freq|counter1|count\(13));

-- Location: LCCOMB_X51_Y18_N28
\uart|data_Tx_freq|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|Equal1~2_combout\ = (\uart|data_Tx_freq|counter1|count\(11) & (\uart|data_Tx_freq|counter1|count\(13) & (\uart|data_Tx_freq|counter1|count\(5) & \uart|data_Tx_freq|counter1|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|data_Tx_freq|counter1|count\(11),
	datab => \uart|data_Tx_freq|counter1|count\(13),
	datac => \uart|data_Tx_freq|counter1|count\(5),
	datad => \uart|data_Tx_freq|counter1|count\(7),
	combout => \uart|data_Tx_freq|Equal1~2_combout\);

-- Location: LCCOMB_X52_Y18_N30
\uart|data_Tx_freq|counter1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|Add0~28_combout\ = \uart|data_Tx_freq|counter1|count\(14) $ (!\uart|data_Tx_freq|counter1|Add0~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uart|data_Tx_freq|counter1|count\(14),
	cin => \uart|data_Tx_freq|counter1|Add0~27\,
	combout => \uart|data_Tx_freq|counter1|Add0~28_combout\);

-- Location: FF_X52_Y18_N31
\uart|data_Tx_freq|counter1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|data_Tx_freq|counter1|Add0~28_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|data_Tx_freq|counter1|count\(14));

-- Location: LCCOMB_X51_Y18_N20
\uart|data_Tx_freq|counter1|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|count~2_combout\ = (\uart|data_Tx_freq|counter1|count\(14) & (\uart|data_Tx_freq|counter1|count\(0) & (\uart|data_Tx_freq|counter1|count\(9) & \uart|data_Tx_freq|counter1|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|data_Tx_freq|counter1|count\(14),
	datab => \uart|data_Tx_freq|counter1|count\(0),
	datac => \uart|data_Tx_freq|counter1|count\(9),
	datad => \uart|data_Tx_freq|counter1|count\(8),
	combout => \uart|data_Tx_freq|counter1|count~2_combout\);

-- Location: LCCOMB_X51_Y18_N22
\uart|data_Tx_freq|counter1|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|count~3_combout\ = (\uart|data_Tx_freq|counter1|count\(2) & (\uart|data_Tx_freq|counter1|count\(4) & (\uart|data_Tx_freq|counter1|count\(1) & \uart|data_Tx_freq|counter1|count~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|data_Tx_freq|counter1|count\(2),
	datab => \uart|data_Tx_freq|counter1|count\(4),
	datac => \uart|data_Tx_freq|counter1|count\(1),
	datad => \uart|data_Tx_freq|counter1|count~2_combout\,
	combout => \uart|data_Tx_freq|counter1|count~3_combout\);

-- Location: LCCOMB_X51_Y18_N10
\uart|data_Tx_freq|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|Equal2~0_combout\ = (\uart|data_Tx_freq|counter1|count\(10) & (\uart|data_Tx_freq|counter1|count\(3) & (\uart|data_Tx_freq|counter1|count\(6) & \uart|data_Tx_freq|counter1|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|data_Tx_freq|counter1|count\(10),
	datab => \uart|data_Tx_freq|counter1|count\(3),
	datac => \uart|data_Tx_freq|counter1|count\(6),
	datad => \uart|data_Tx_freq|counter1|count\(12),
	combout => \uart|data_Tx_freq|Equal2~0_combout\);

-- Location: LCCOMB_X50_Y18_N2
\uart|data_Tx_freq|counter1|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|count~1_combout\ = (\uart|data_Tx_freq|Equal2~0_combout\ & \uart|data_Tx_freq|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|data_Tx_freq|Equal2~0_combout\,
	datad => \uart|data_Tx_freq|Equal1~2_combout\,
	combout => \uart|data_Tx_freq|counter1|count~1_combout\);

-- Location: LCCOMB_X51_Y18_N24
\uart|data_Tx_freq|counter1|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|counter1|count~4_combout\ = (!\uart|data_Tx_freq|Equal1~4_combout\ & (\uart|data_Tx_freq|counter1|count\(15) $ (((\uart|data_Tx_freq|counter1|count~3_combout\ & \uart|data_Tx_freq|counter1|count~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|data_Tx_freq|counter1|count~3_combout\,
	datab => \uart|data_Tx_freq|Equal1~4_combout\,
	datac => \uart|data_Tx_freq|counter1|count\(15),
	datad => \uart|data_Tx_freq|counter1|count~1_combout\,
	combout => \uart|data_Tx_freq|counter1|count~4_combout\);

-- Location: FF_X51_Y18_N25
\uart|data_Tx_freq|counter1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|data_Tx_freq|counter1|count~4_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|data_Tx_freq|counter1|count\(15));

-- Location: LCCOMB_X51_Y18_N30
\uart|data_Tx_freq|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|Equal1~0_combout\ = (!\uart|data_Tx_freq|counter1|count\(14) & (!\uart|data_Tx_freq|counter1|count\(0) & (!\uart|data_Tx_freq|counter1|count\(9) & !\uart|data_Tx_freq|counter1|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|data_Tx_freq|counter1|count\(14),
	datab => \uart|data_Tx_freq|counter1|count\(0),
	datac => \uart|data_Tx_freq|counter1|count\(9),
	datad => \uart|data_Tx_freq|counter1|count\(15),
	combout => \uart|data_Tx_freq|Equal1~0_combout\);

-- Location: LCCOMB_X51_Y18_N2
\uart|data_Tx_freq|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|Equal1~3_combout\ = (!\uart|data_Tx_freq|counter1|count\(10) & (!\uart|data_Tx_freq|counter1|count\(3) & (!\uart|data_Tx_freq|counter1|count\(6) & !\uart|data_Tx_freq|counter1|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|data_Tx_freq|counter1|count\(10),
	datab => \uart|data_Tx_freq|counter1|count\(3),
	datac => \uart|data_Tx_freq|counter1|count\(6),
	datad => \uart|data_Tx_freq|counter1|count\(12),
	combout => \uart|data_Tx_freq|Equal1~3_combout\);

-- Location: LCCOMB_X51_Y18_N0
\uart|data_Tx_freq|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|Equal1~4_combout\ = (\uart|data_Tx_freq|Equal1~1_combout\ & (\uart|data_Tx_freq|Equal1~2_combout\ & (\uart|data_Tx_freq|Equal1~0_combout\ & \uart|data_Tx_freq|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|data_Tx_freq|Equal1~1_combout\,
	datab => \uart|data_Tx_freq|Equal1~2_combout\,
	datac => \uart|data_Tx_freq|Equal1~0_combout\,
	datad => \uart|data_Tx_freq|Equal1~3_combout\,
	combout => \uart|data_Tx_freq|Equal1~4_combout\);

-- Location: LCCOMB_X51_Y18_N4
\uart|data_Tx_freq|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|Equal2~1_combout\ = (!\uart|data_Tx_freq|counter1|count\(11) & (!\uart|data_Tx_freq|counter1|count\(13) & (!\uart|data_Tx_freq|counter1|count\(5) & !\uart|data_Tx_freq|counter1|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|data_Tx_freq|counter1|count\(11),
	datab => \uart|data_Tx_freq|counter1|count\(13),
	datac => \uart|data_Tx_freq|counter1|count\(5),
	datad => \uart|data_Tx_freq|counter1|count\(7),
	combout => \uart|data_Tx_freq|Equal2~1_combout\);

-- Location: LCCOMB_X51_Y18_N18
\uart|data_Tx_freq|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|Equal2~2_combout\ = (\uart|data_Tx_freq|Equal1~1_combout\ & (\uart|data_Tx_freq|Equal2~1_combout\ & (\uart|data_Tx_freq|Equal1~0_combout\ & \uart|data_Tx_freq|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|data_Tx_freq|Equal1~1_combout\,
	datab => \uart|data_Tx_freq|Equal2~1_combout\,
	datac => \uart|data_Tx_freq|Equal1~0_combout\,
	datad => \uart|data_Tx_freq|Equal2~0_combout\,
	combout => \uart|data_Tx_freq|Equal2~2_combout\);

-- Location: LCCOMB_X50_Y18_N18
\uart|data_Tx_freq|subCLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|subCLK~0_combout\ = \uart|data_Tx_freq|subCLK~q\ $ (((\uart|data_Tx_freq|Equal1~4_combout\) # (\uart|data_Tx_freq|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|data_Tx_freq|subCLK~q\,
	datac => \uart|data_Tx_freq|Equal1~4_combout\,
	datad => \uart|data_Tx_freq|Equal2~2_combout\,
	combout => \uart|data_Tx_freq|subCLK~0_combout\);

-- Location: LCCOMB_X50_Y18_N30
\uart|data_Tx_freq|subCLK~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|data_Tx_freq|subCLK~feeder_combout\ = \uart|data_Tx_freq|subCLK~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|data_Tx_freq|subCLK~0_combout\,
	combout => \uart|data_Tx_freq|subCLK~feeder_combout\);

-- Location: FF_X50_Y18_N31
\uart|data_Tx_freq|subCLK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|data_Tx_freq|subCLK~feeder_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|data_Tx_freq|subCLK~q\);

-- Location: CLKCTRL_G5
\uart|data_Tx_freq|subCLK~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \uart|data_Tx_freq|subCLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \uart|data_Tx_freq|subCLK~clkctrl_outclk\);

-- Location: LCCOMB_X52_Y13_N24
\uart|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|count~1_combout\ = (!\uart|count\(0) & (((!\uart|count\(1) & !\uart|count\(2))) # (!\uart|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|count\(1),
	datab => \uart|count\(2),
	datac => \uart|count\(0),
	datad => \uart|count\(3),
	combout => \uart|count~1_combout\);

-- Location: FF_X52_Y13_N25
\uart|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|data_Tx_freq|subCLK~clkctrl_outclk\,
	d => \uart|count~1_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|count\(0));

-- Location: LCCOMB_X52_Y13_N26
\uart|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|count~2_combout\ = (!\uart|count\(3) & (\uart|count\(2) $ (((\uart|count\(1) & \uart|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|count\(3),
	datab => \uart|count\(1),
	datac => \uart|count\(2),
	datad => \uart|count\(0),
	combout => \uart|count~2_combout\);

-- Location: FF_X52_Y13_N27
\uart|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|data_Tx_freq|subCLK~clkctrl_outclk\,
	d => \uart|count~2_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|count\(2));

-- Location: LCCOMB_X52_Y13_N12
\uart|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|count~0_combout\ = (\uart|count\(1) & (\uart|count\(2) & (!\uart|count\(3) & \uart|count\(0)))) # (!\uart|count\(1) & (!\uart|count\(2) & (\uart|count\(3) & !\uart|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|count\(1),
	datab => \uart|count\(2),
	datac => \uart|count\(3),
	datad => \uart|count\(0),
	combout => \uart|count~0_combout\);

-- Location: FF_X52_Y13_N13
\uart|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|data_Tx_freq|subCLK~clkctrl_outclk\,
	d => \uart|count~0_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|count\(3));

-- Location: LCCOMB_X52_Y13_N30
\uart|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|count~3_combout\ = (!\uart|count\(3) & (\uart|count\(1) $ (\uart|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|count\(3),
	datac => \uart|count\(1),
	datad => \uart|count\(0),
	combout => \uart|count~3_combout\);

-- Location: FF_X52_Y13_N31
\uart|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|data_Tx_freq|subCLK~clkctrl_outclk\,
	d => \uart|count~3_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|count\(1));

-- Location: LCCOMB_X52_Y13_N8
\uart|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|Equal0~0_combout\ = (\uart|count\(1)) # ((\uart|count\(0)) # ((\uart|count\(2)) # (\uart|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|count\(1),
	datab => \uart|count\(0),
	datac => \uart|count\(2),
	datad => \uart|count\(3),
	combout => \uart|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y13_N20
\uart|TX_end~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX_end~0_combout\ = (!\uart|count\(2) & (\uart|count\(0) & (!\uart|count\(1) & \uart|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|count\(2),
	datab => \uart|count\(0),
	datac => \uart|count\(1),
	datad => \uart|count\(3),
	combout => \uart|TX_end~0_combout\);

-- Location: LCCOMB_X52_Y13_N22
\uart|TX_end~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX_end~1_combout\ = (!\uart|TX_data_valid~q\ & \uart|TX_end~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uart|TX_data_valid~q\,
	datad => \uart|TX_end~0_combout\,
	combout => \uart|TX_end~1_combout\);

-- Location: LCCOMB_X52_Y13_N10
\uart|TX_data_valid~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX_data_valid~feeder_combout\ = \uart|TX_end~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|TX_end~1_combout\,
	combout => \uart|TX_data_valid~feeder_combout\);

-- Location: FF_X52_Y13_N11
\uart|TX_data_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \uart|TX_data_valid~feeder_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|TX_data_valid~q\);

-- Location: CLKCTRL_G8
\uart|TX_data_valid~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \uart|TX_data_valid~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \uart|TX_data_valid~clkctrl_outclk\);

-- Location: LCCOMB_X51_Y13_N26
\count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[0]~1_combout\ = !count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(0),
	combout => \count[0]~1_combout\);

-- Location: FF_X51_Y13_N27
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|TX_data_valid~clkctrl_outclk\,
	d => \count[0]~1_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X51_Y13_N16
\count[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[1]~feeder_combout\ = \uart|TX_data_temp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \uart|TX_data_temp~0_combout\,
	combout => \count[1]~feeder_combout\);

-- Location: FF_X51_Y13_N17
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|TX_data_valid~clkctrl_outclk\,
	d => \count[1]~feeder_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X51_Y13_N0
\uart|TX_data_temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX_data_temp~0_combout\ = count(0) $ (count(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(0),
	datad => count(1),
	combout => \uart|TX_data_temp~0_combout\);

-- Location: LCCOMB_X51_Y13_N14
\count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count[2]~0_combout\ = count(2) $ (((count(1) & count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datac => count(2),
	datad => count(0),
	combout => \count[2]~0_combout\);

-- Location: FF_X51_Y13_N15
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|TX_data_valid~clkctrl_outclk\,
	d => \count[2]~0_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X51_Y13_N2
\uart|transmit:TX_data_temp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|transmit:TX_data_temp[0]~0_combout\ = (count(2) & (\uart|TX_data_temp~0_combout\)) # (!count(2) & ((!count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|TX_data_temp~0_combout\,
	datab => count(2),
	datad => count(0),
	combout => \uart|transmit:TX_data_temp[0]~0_combout\);

-- Location: LCCOMB_X51_Y13_N22
\uart|transmit:TX_data_temp[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|transmit:TX_data_temp[3]~0_combout\ = count(0) $ (((count(1) & !count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datad => count(2),
	combout => \uart|transmit:TX_data_temp[3]~0_combout\);

-- Location: LCCOMB_X51_Y13_N20
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (count(1) & count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(1),
	datad => count(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X51_Y13_N6
\uart|transmit:TX_data_temp[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|transmit:TX_data_temp[5]~0_combout\ = (count(2) & (\Add0~0_combout\)) # (!count(2) & ((!count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => \Add0~0_combout\,
	datad => count(0),
	combout => \uart|transmit:TX_data_temp[5]~0_combout\);

-- Location: LCCOMB_X52_Y13_N28
\uart|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|LessThan0~0_combout\ = ((!\uart|count\(1) & (!\uart|count\(0) & !\uart|count\(2)))) # (!\uart|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|count\(1),
	datab => \uart|count\(0),
	datac => \uart|count\(2),
	datad => \uart|count\(3),
	combout => \uart|LessThan0~0_combout\);

-- Location: LCCOMB_X51_Y13_N28
\uart|TX_data_temp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX_data_temp~7_combout\ = (!count(2) & (count(0) $ (count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datac => count(0),
	datad => count(1),
	combout => \uart|TX_data_temp~7_combout\);

-- Location: LCCOMB_X50_Y13_N24
\uart|TX_data_temp~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX_data_temp~8_combout\ = (\uart|Equal0~0_combout\ & (!\uart|LessThan0~0_combout\ & (\uart|transmit:TX_data_temp[7]~q\))) # (!\uart|Equal0~0_combout\ & (((\uart|TX_data_temp~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|LessThan0~0_combout\,
	datab => \uart|Equal0~0_combout\,
	datac => \uart|transmit:TX_data_temp[7]~q\,
	datad => \uart|TX_data_temp~7_combout\,
	combout => \uart|TX_data_temp~8_combout\);

-- Location: FF_X50_Y13_N25
\uart|transmit:TX_data_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|data_Tx_freq|subCLK~clkctrl_outclk\,
	d => \uart|TX_data_temp~8_combout\,
	ena => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|transmit:TX_data_temp[7]~q\);

-- Location: LCCOMB_X51_Y13_N12
\uart|TX_data_temp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX_data_temp~6_combout\ = (\uart|Equal0~0_combout\ & ((\uart|transmit:TX_data_temp[7]~q\))) # (!\uart|Equal0~0_combout\ & (count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|Equal0~0_combout\,
	datac => count(1),
	datad => \uart|transmit:TX_data_temp[7]~q\,
	combout => \uart|TX_data_temp~6_combout\);

-- Location: LCCOMB_X52_Y13_N6
\uart|transmit:TX_data_temp[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|transmit:TX_data_temp[0]~1_combout\ = (\tb_reset_n~input_o\ & ((!\uart|count\(3)) # (!\uart|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tb_reset_n~input_o\,
	datac => \uart|count\(1),
	datad => \uart|count\(3),
	combout => \uart|transmit:TX_data_temp[0]~1_combout\);

-- Location: LCCOMB_X52_Y13_N18
\uart|transmit:TX_data_temp[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|transmit:TX_data_temp[0]~2_combout\ = (\uart|transmit:TX_data_temp[0]~1_combout\ & (((!\uart|count\(0) & !\uart|count\(2))) # (!\uart|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|count\(3),
	datab => \uart|count\(0),
	datac => \uart|count\(2),
	datad => \uart|transmit:TX_data_temp[0]~1_combout\,
	combout => \uart|transmit:TX_data_temp[0]~2_combout\);

-- Location: FF_X51_Y13_N13
\uart|transmit:TX_data_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|data_Tx_freq|subCLK~clkctrl_outclk\,
	d => \uart|TX_data_temp~6_combout\,
	ena => \uart|transmit:TX_data_temp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|transmit:TX_data_temp[6]~q\);

-- Location: FF_X51_Y13_N7
\uart|transmit:TX_data_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|data_Tx_freq|subCLK~clkctrl_outclk\,
	d => \uart|transmit:TX_data_temp[5]~0_combout\,
	asdata => \uart|transmit:TX_data_temp[6]~q\,
	sload => \uart|Equal0~0_combout\,
	ena => \uart|transmit:TX_data_temp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|transmit:TX_data_temp[5]~q\);

-- Location: LCCOMB_X51_Y13_N24
\uart|TX_data_temp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX_data_temp~4_combout\ = (count(1)) # (count(2) $ (count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datac => count(2),
	datad => count(0),
	combout => \uart|TX_data_temp~4_combout\);

-- Location: LCCOMB_X51_Y13_N10
\uart|TX_data_temp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX_data_temp~5_combout\ = (\uart|Equal0~0_combout\ & (\uart|transmit:TX_data_temp[5]~q\)) # (!\uart|Equal0~0_combout\ & ((\uart|TX_data_temp~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|transmit:TX_data_temp[5]~q\,
	datac => \uart|Equal0~0_combout\,
	datad => \uart|TX_data_temp~4_combout\,
	combout => \uart|TX_data_temp~5_combout\);

-- Location: FF_X51_Y13_N11
\uart|transmit:TX_data_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|data_Tx_freq|subCLK~clkctrl_outclk\,
	d => \uart|TX_data_temp~5_combout\,
	ena => \uart|transmit:TX_data_temp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|transmit:TX_data_temp[4]~q\);

-- Location: FF_X51_Y13_N23
\uart|transmit:TX_data_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|data_Tx_freq|subCLK~clkctrl_outclk\,
	d => \uart|transmit:TX_data_temp[3]~0_combout\,
	asdata => \uart|transmit:TX_data_temp[4]~q\,
	sload => \uart|Equal0~0_combout\,
	ena => \uart|transmit:TX_data_temp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|transmit:TX_data_temp[3]~q\);

-- Location: LCCOMB_X51_Y13_N8
\uart|TX_data_temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX_data_temp~2_combout\ = (count(1)) # ((count(0) & count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datac => count(2),
	combout => \uart|TX_data_temp~2_combout\);

-- Location: LCCOMB_X51_Y13_N18
\uart|TX_data_temp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX_data_temp~3_combout\ = (\uart|Equal0~0_combout\ & (\uart|transmit:TX_data_temp[3]~q\)) # (!\uart|Equal0~0_combout\ & ((\uart|TX_data_temp~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|transmit:TX_data_temp[3]~q\,
	datac => \uart|Equal0~0_combout\,
	datad => \uart|TX_data_temp~2_combout\,
	combout => \uart|TX_data_temp~3_combout\);

-- Location: FF_X51_Y13_N19
\uart|transmit:TX_data_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|data_Tx_freq|subCLK~clkctrl_outclk\,
	d => \uart|TX_data_temp~3_combout\,
	ena => \uart|transmit:TX_data_temp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|transmit:TX_data_temp[2]~q\);

-- Location: LCCOMB_X51_Y13_N30
\uart|TX_data_temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX_data_temp~1_combout\ = (\uart|Equal0~0_combout\ & (((\uart|transmit:TX_data_temp[2]~q\)))) # (!\uart|Equal0~0_combout\ & (((count(2))) # (!count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => \uart|transmit:TX_data_temp[2]~q\,
	datac => \uart|Equal0~0_combout\,
	datad => count(2),
	combout => \uart|TX_data_temp~1_combout\);

-- Location: FF_X51_Y13_N31
\uart|transmit:TX_data_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|data_Tx_freq|subCLK~clkctrl_outclk\,
	d => \uart|TX_data_temp~1_combout\,
	ena => \uart|transmit:TX_data_temp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|transmit:TX_data_temp[1]~q\);

-- Location: FF_X51_Y13_N3
\uart|transmit:TX_data_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|data_Tx_freq|subCLK~clkctrl_outclk\,
	d => \uart|transmit:TX_data_temp[0]~0_combout\,
	asdata => \uart|transmit:TX_data_temp[1]~q\,
	sload => \uart|Equal0~0_combout\,
	ena => \uart|transmit:TX_data_temp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|transmit:TX_data_temp[0]~q\);

-- Location: LCCOMB_X52_Y13_N14
\uart|TX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX~0_combout\ = (\uart|LessThan0~0_combout\ & (\uart|transmit:TX_data_temp[0]~q\)) # (!\uart|LessThan0~0_combout\ & (((\uart|TX_end~0_combout\) # (!\uart|TX~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart|transmit:TX_data_temp[0]~q\,
	datab => \uart|TX_end~0_combout\,
	datac => \uart|TX~q\,
	datad => \uart|LessThan0~0_combout\,
	combout => \uart|TX~0_combout\);

-- Location: LCCOMB_X52_Y13_N16
\uart|TX~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uart|TX~1_combout\ = (!\uart|TX~0_combout\) # (!\uart|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart|Equal0~0_combout\,
	datac => \uart|TX~0_combout\,
	combout => \uart|TX~1_combout\);

-- Location: FF_X52_Y13_N17
\uart|TX\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \uart|data_Tx_freq|subCLK~clkctrl_outclk\,
	d => \uart|TX~1_combout\,
	clrn => \tb_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart|TX~q\);

ww_freq_out(0) <= \freq_out[0]~output_o\;

ww_freq_out(1) <= \freq_out[1]~output_o\;

ww_freq_out(2) <= \freq_out[2]~output_o\;

ww_freq_out(3) <= \freq_out[3]~output_o\;

ww_freq_out(4) <= \freq_out[4]~output_o\;

ww_freq_out(5) <= \freq_out[5]~output_o\;

ww_freq_out(6) <= \freq_out[6]~output_o\;

ww_freq_out(7) <= \freq_out[7]~output_o\;

ww_TX <= \TX~output_o\;
END structure;


