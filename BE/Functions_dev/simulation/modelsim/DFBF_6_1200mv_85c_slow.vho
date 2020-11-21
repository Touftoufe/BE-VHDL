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

-- DATE "11/21/2020 23:54:26"

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

ENTITY 	UART_TX IS
    PORT (
	clock : IN std_logic;
	reset_n : IN std_logic;
	TX : OUT std_logic;
	Baud : IN std_logic_vector(15 DOWNTO 0);
	TX_data : IN std_logic_vector(7 DOWNTO 0);
	TX_data_valid : BUFFER std_logic
	);
END UART_TX;

-- Design Ports Information
-- TX	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- TX_data_valid	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_data[0]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_data[1]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baud[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baud[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baud[3]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baud[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baud[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baud[6]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baud[7]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baud[8]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baud[9]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baud[10]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baud[11]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baud[12]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baud[13]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baud[14]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baud[15]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baud[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_data[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_data[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_data[4]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_data[5]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_data[6]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TX_data[7]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UART_TX IS
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
SIGNAL ww_TX : std_logic;
SIGNAL ww_Baud : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_TX_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_TX_data_valid : std_logic;
SIGNAL \data_Tx_freq|subCLK~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TX~output_o\ : std_logic;
SIGNAL \TX_data_valid~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \Baud[0]~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[0]~17_combout\ : std_logic;
SIGNAL \reset_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \Baud[2]~input_o\ : std_logic;
SIGNAL \Baud[4]~input_o\ : std_logic;
SIGNAL \Baud[8]~input_o\ : std_logic;
SIGNAL \Baud[10]~input_o\ : std_logic;
SIGNAL \Baud[9]~input_o\ : std_logic;
SIGNAL \Baud[11]~input_o\ : std_logic;
SIGNAL \data_Tx_freq|subCLK~8_combout\ : std_logic;
SIGNAL \Baud[7]~input_o\ : std_logic;
SIGNAL \Baud[5]~input_o\ : std_logic;
SIGNAL \Baud[6]~input_o\ : std_logic;
SIGNAL \data_Tx_freq|subCLK~9_combout\ : std_logic;
SIGNAL \Baud[3]~input_o\ : std_logic;
SIGNAL \data_Tx_freq|subCLK~10_combout\ : std_logic;
SIGNAL \Baud[1]~input_o\ : std_logic;
SIGNAL \Baud[15]~input_o\ : std_logic;
SIGNAL \Baud[13]~input_o\ : std_logic;
SIGNAL \Baud[14]~input_o\ : std_logic;
SIGNAL \Baud[12]~input_o\ : std_logic;
SIGNAL \data_Tx_freq|subCLK~7_combout\ : std_logic;
SIGNAL \data_Tx_freq|subCLK~11_combout\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[0]~18\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[1]~19_combout\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[1]~20\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[2]~21_combout\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[2]~22\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[3]~23_combout\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[3]~24\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[4]~25_combout\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[4]~26\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[5]~27_combout\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[5]~28\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[6]~29_combout\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[6]~30\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[7]~31_combout\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[7]~32\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[8]~33_combout\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[8]~34\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[9]~35_combout\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[9]~36\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[10]~37_combout\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[10]~38\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[11]~39_combout\ : std_logic;
SIGNAL \data_Tx_freq|Equal1~6_combout\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[11]~40\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[12]~41_combout\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[12]~42\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[13]~43_combout\ : std_logic;
SIGNAL \data_Tx_freq|Equal1~7_combout\ : std_logic;
SIGNAL \data_Tx_freq|Equal1~5_combout\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[13]~44\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count[14]~45_combout\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count~47_combout\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count~48_combout\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count~49_combout\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count~50_combout\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count~51_combout\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count~52_combout\ : std_logic;
SIGNAL \data_Tx_freq|Equal1~8_combout\ : std_logic;
SIGNAL \data_Tx_freq|Equal1~9_combout\ : std_logic;
SIGNAL \data_Tx_freq|counter1|process_0~0_combout\ : std_logic;
SIGNAL \data_Tx_freq|Equal1~0_combout\ : std_logic;
SIGNAL \data_Tx_freq|Equal1~2_combout\ : std_logic;
SIGNAL \data_Tx_freq|Equal1~1_combout\ : std_logic;
SIGNAL \data_Tx_freq|Equal1~3_combout\ : std_logic;
SIGNAL \data_Tx_freq|Equal1~4_combout\ : std_logic;
SIGNAL \data_Tx_freq|Equal1~10_combout\ : std_logic;
SIGNAL \data_Tx_freq|subCLK~1_combout\ : std_logic;
SIGNAL \data_Tx_freq|Equal2~5_combout\ : std_logic;
SIGNAL \data_Tx_freq|Equal2~6_combout\ : std_logic;
SIGNAL \data_Tx_freq|Equal2~7_combout\ : std_logic;
SIGNAL \data_Tx_freq|Equal2~8_combout\ : std_logic;
SIGNAL \data_Tx_freq|Equal2~0_combout\ : std_logic;
SIGNAL \data_Tx_freq|Equal2~1_combout\ : std_logic;
SIGNAL \data_Tx_freq|Equal2~3_combout\ : std_logic;
SIGNAL \data_Tx_freq|Equal2~2_combout\ : std_logic;
SIGNAL \data_Tx_freq|Equal2~4_combout\ : std_logic;
SIGNAL \data_Tx_freq|Equal2~9_combout\ : std_logic;
SIGNAL \data_Tx_freq|subCLK~4_combout\ : std_logic;
SIGNAL \data_Tx_freq|subCLK~0_combout\ : std_logic;
SIGNAL \data_Tx_freq|subCLK~_emulated_q\ : std_logic;
SIGNAL \data_Tx_freq|subCLK~3_combout\ : std_logic;
SIGNAL \data_Tx_freq|subCLK~2_combout\ : std_logic;
SIGNAL \data_Tx_freq|subCLK~2clkctrl_outclk\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \TX_data[7]~input_o\ : std_logic;
SIGNAL \TX_data_temp~7_combout\ : std_logic;
SIGNAL \transmit:TX_data_temp[7]~q\ : std_logic;
SIGNAL \TX_data[6]~input_o\ : std_logic;
SIGNAL \TX_data_temp~6_combout\ : std_logic;
SIGNAL \transmit:TX_data_temp[0]~0_combout\ : std_logic;
SIGNAL \transmit:TX_data_temp[6]~q\ : std_logic;
SIGNAL \TX_data[5]~input_o\ : std_logic;
SIGNAL \TX_data_temp~5_combout\ : std_logic;
SIGNAL \transmit:TX_data_temp[5]~q\ : std_logic;
SIGNAL \TX_data[4]~input_o\ : std_logic;
SIGNAL \TX_data_temp~4_combout\ : std_logic;
SIGNAL \transmit:TX_data_temp[4]~q\ : std_logic;
SIGNAL \TX_data[3]~input_o\ : std_logic;
SIGNAL \TX_data_temp~3_combout\ : std_logic;
SIGNAL \transmit:TX_data_temp[3]~q\ : std_logic;
SIGNAL \TX_data[2]~input_o\ : std_logic;
SIGNAL \TX_data_temp~2_combout\ : std_logic;
SIGNAL \transmit:TX_data_temp[2]~q\ : std_logic;
SIGNAL \TX_data[1]~input_o\ : std_logic;
SIGNAL \TX_data_temp~1_combout\ : std_logic;
SIGNAL \transmit:TX_data_temp[1]~q\ : std_logic;
SIGNAL \TX_data[0]~input_o\ : std_logic;
SIGNAL \TX_data_temp~0_combout\ : std_logic;
SIGNAL \transmit:TX_data_temp[0]~q\ : std_logic;
SIGNAL \TX_end~0_combout\ : std_logic;
SIGNAL \TX~0_combout\ : std_logic;
SIGNAL \TX~1_combout\ : std_logic;
SIGNAL \TX~reg0_q\ : std_logic;
SIGNAL \TX_end~1_combout\ : std_logic;
SIGNAL \TX_data_valid~reg0_q\ : std_logic;
SIGNAL \data_Tx_freq|counter1|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL count : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~input_o\ : std_logic;
SIGNAL \data_Tx_freq|ALT_INV_subCLK~0_combout\ : std_logic;
SIGNAL \ALT_INV_TX~reg0_q\ : std_logic;
SIGNAL \ALT_INV_reset_n~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset_n <= reset_n;
TX <= ww_TX;
ww_Baud <= Baud;
ww_TX_data <= TX_data;
TX_data_valid <= ww_TX_data_valid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\data_Tx_freq|subCLK~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \data_Tx_freq|subCLK~2_combout\);

\reset_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_n~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset_n~input_o\ <= NOT \reset_n~input_o\;
\data_Tx_freq|ALT_INV_subCLK~0_combout\ <= NOT \data_Tx_freq|subCLK~0_combout\;
\ALT_INV_TX~reg0_q\ <= NOT \TX~reg0_q\;
\ALT_INV_reset_n~inputclkctrl_outclk\ <= NOT \reset_n~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X45_Y0_N16
\TX~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_TX~reg0_q\,
	devoe => ww_devoe,
	o => \TX~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\TX_data_valid~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TX_data_valid~reg0_q\,
	devoe => ww_devoe,
	o => \TX_data_valid~output_o\);

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

-- Location: IOIBUF_X29_Y0_N1
\Baud[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Baud(0),
	o => \Baud[0]~input_o\);

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

-- Location: LCCOMB_X31_Y1_N0
\data_Tx_freq|counter1|count[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|counter1|count[0]~17_combout\ = \data_Tx_freq|counter1|count\(0) $ (VCC)
-- \data_Tx_freq|counter1|count[0]~18\ = CARRY(\data_Tx_freq|counter1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_Tx_freq|counter1|count\(0),
	datad => VCC,
	combout => \data_Tx_freq|counter1|count[0]~17_combout\,
	cout => \data_Tx_freq|counter1|count[0]~18\);

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

-- Location: IOIBUF_X29_Y34_N15
\Baud[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Baud(2),
	o => \Baud[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\Baud[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Baud(4),
	o => \Baud[4]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\Baud[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Baud(8),
	o => \Baud[8]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\Baud[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Baud(10),
	o => \Baud[10]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\Baud[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Baud(9),
	o => \Baud[9]~input_o\);

-- Location: IOIBUF_X36_Y0_N8
\Baud[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Baud(11),
	o => \Baud[11]~input_o\);

-- Location: LCCOMB_X28_Y1_N10
\data_Tx_freq|subCLK~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|subCLK~8_combout\ = (!\Baud[8]~input_o\ & (!\Baud[10]~input_o\ & (!\Baud[9]~input_o\ & !\Baud[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud[8]~input_o\,
	datab => \Baud[10]~input_o\,
	datac => \Baud[9]~input_o\,
	datad => \Baud[11]~input_o\,
	combout => \data_Tx_freq|subCLK~8_combout\);

-- Location: IOIBUF_X36_Y0_N15
\Baud[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Baud(7),
	o => \Baud[7]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\Baud[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Baud(5),
	o => \Baud[5]~input_o\);

-- Location: IOIBUF_X36_Y0_N22
\Baud[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Baud(6),
	o => \Baud[6]~input_o\);

-- Location: LCCOMB_X28_Y1_N12
\data_Tx_freq|subCLK~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|subCLK~9_combout\ = (\data_Tx_freq|subCLK~8_combout\ & (!\Baud[7]~input_o\ & (!\Baud[5]~input_o\ & !\Baud[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_Tx_freq|subCLK~8_combout\,
	datab => \Baud[7]~input_o\,
	datac => \Baud[5]~input_o\,
	datad => \Baud[6]~input_o\,
	combout => \data_Tx_freq|subCLK~9_combout\);

-- Location: IOIBUF_X38_Y0_N1
\Baud[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Baud(3),
	o => \Baud[3]~input_o\);

-- Location: LCCOMB_X30_Y1_N12
\data_Tx_freq|subCLK~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|subCLK~10_combout\ = (!\Baud[2]~input_o\ & (!\Baud[4]~input_o\ & (\data_Tx_freq|subCLK~9_combout\ & !\Baud[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud[2]~input_o\,
	datab => \Baud[4]~input_o\,
	datac => \data_Tx_freq|subCLK~9_combout\,
	datad => \Baud[3]~input_o\,
	combout => \data_Tx_freq|subCLK~10_combout\);

-- Location: IOIBUF_X38_Y0_N8
\Baud[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Baud(1),
	o => \Baud[1]~input_o\);

-- Location: IOIBUF_X53_Y17_N15
\Baud[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Baud(15),
	o => \Baud[15]~input_o\);

-- Location: IOIBUF_X34_Y0_N15
\Baud[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Baud(13),
	o => \Baud[13]~input_o\);

-- Location: IOIBUF_X53_Y17_N22
\Baud[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Baud(14),
	o => \Baud[14]~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\Baud[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Baud(12),
	o => \Baud[12]~input_o\);

-- Location: LCCOMB_X29_Y1_N16
\data_Tx_freq|subCLK~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|subCLK~7_combout\ = (!\Baud[15]~input_o\ & (!\Baud[13]~input_o\ & (!\Baud[14]~input_o\ & !\Baud[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud[15]~input_o\,
	datab => \Baud[13]~input_o\,
	datac => \Baud[14]~input_o\,
	datad => \Baud[12]~input_o\,
	combout => \data_Tx_freq|subCLK~7_combout\);

-- Location: LCCOMB_X30_Y1_N2
\data_Tx_freq|subCLK~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|subCLK~11_combout\ = (\data_Tx_freq|subCLK~10_combout\ & (!\Baud[1]~input_o\ & (\data_Tx_freq|subCLK~7_combout\ & !\Baud[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_Tx_freq|subCLK~10_combout\,
	datab => \Baud[1]~input_o\,
	datac => \data_Tx_freq|subCLK~7_combout\,
	datad => \Baud[0]~input_o\,
	combout => \data_Tx_freq|subCLK~11_combout\);

-- Location: LCCOMB_X31_Y1_N2
\data_Tx_freq|counter1|count[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|counter1|count[1]~19_combout\ = (\data_Tx_freq|counter1|count\(1) & (!\data_Tx_freq|counter1|count[0]~18\)) # (!\data_Tx_freq|counter1|count\(1) & ((\data_Tx_freq|counter1|count[0]~18\) # (GND)))
-- \data_Tx_freq|counter1|count[1]~20\ = CARRY((!\data_Tx_freq|counter1|count[0]~18\) # (!\data_Tx_freq|counter1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_Tx_freq|counter1|count\(1),
	datad => VCC,
	cin => \data_Tx_freq|counter1|count[0]~18\,
	combout => \data_Tx_freq|counter1|count[1]~19_combout\,
	cout => \data_Tx_freq|counter1|count[1]~20\);

-- Location: FF_X31_Y1_N3
\data_Tx_freq|counter1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_Tx_freq|counter1|count[1]~19_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	sclr => \data_Tx_freq|counter1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_Tx_freq|counter1|count\(1));

-- Location: LCCOMB_X31_Y1_N4
\data_Tx_freq|counter1|count[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|counter1|count[2]~21_combout\ = (\data_Tx_freq|counter1|count\(2) & (\data_Tx_freq|counter1|count[1]~20\ $ (GND))) # (!\data_Tx_freq|counter1|count\(2) & (!\data_Tx_freq|counter1|count[1]~20\ & VCC))
-- \data_Tx_freq|counter1|count[2]~22\ = CARRY((\data_Tx_freq|counter1|count\(2) & !\data_Tx_freq|counter1|count[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_Tx_freq|counter1|count\(2),
	datad => VCC,
	cin => \data_Tx_freq|counter1|count[1]~20\,
	combout => \data_Tx_freq|counter1|count[2]~21_combout\,
	cout => \data_Tx_freq|counter1|count[2]~22\);

-- Location: FF_X31_Y1_N5
\data_Tx_freq|counter1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_Tx_freq|counter1|count[2]~21_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	sclr => \data_Tx_freq|counter1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_Tx_freq|counter1|count\(2));

-- Location: LCCOMB_X31_Y1_N6
\data_Tx_freq|counter1|count[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|counter1|count[3]~23_combout\ = (\data_Tx_freq|counter1|count\(3) & (!\data_Tx_freq|counter1|count[2]~22\)) # (!\data_Tx_freq|counter1|count\(3) & ((\data_Tx_freq|counter1|count[2]~22\) # (GND)))
-- \data_Tx_freq|counter1|count[3]~24\ = CARRY((!\data_Tx_freq|counter1|count[2]~22\) # (!\data_Tx_freq|counter1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_Tx_freq|counter1|count\(3),
	datad => VCC,
	cin => \data_Tx_freq|counter1|count[2]~22\,
	combout => \data_Tx_freq|counter1|count[3]~23_combout\,
	cout => \data_Tx_freq|counter1|count[3]~24\);

-- Location: FF_X31_Y1_N7
\data_Tx_freq|counter1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_Tx_freq|counter1|count[3]~23_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	sclr => \data_Tx_freq|counter1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_Tx_freq|counter1|count\(3));

-- Location: LCCOMB_X31_Y1_N8
\data_Tx_freq|counter1|count[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|counter1|count[4]~25_combout\ = (\data_Tx_freq|counter1|count\(4) & (\data_Tx_freq|counter1|count[3]~24\ $ (GND))) # (!\data_Tx_freq|counter1|count\(4) & (!\data_Tx_freq|counter1|count[3]~24\ & VCC))
-- \data_Tx_freq|counter1|count[4]~26\ = CARRY((\data_Tx_freq|counter1|count\(4) & !\data_Tx_freq|counter1|count[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_Tx_freq|counter1|count\(4),
	datad => VCC,
	cin => \data_Tx_freq|counter1|count[3]~24\,
	combout => \data_Tx_freq|counter1|count[4]~25_combout\,
	cout => \data_Tx_freq|counter1|count[4]~26\);

-- Location: FF_X31_Y1_N9
\data_Tx_freq|counter1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_Tx_freq|counter1|count[4]~25_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	sclr => \data_Tx_freq|counter1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_Tx_freq|counter1|count\(4));

-- Location: LCCOMB_X31_Y1_N10
\data_Tx_freq|counter1|count[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|counter1|count[5]~27_combout\ = (\data_Tx_freq|counter1|count\(5) & (!\data_Tx_freq|counter1|count[4]~26\)) # (!\data_Tx_freq|counter1|count\(5) & ((\data_Tx_freq|counter1|count[4]~26\) # (GND)))
-- \data_Tx_freq|counter1|count[5]~28\ = CARRY((!\data_Tx_freq|counter1|count[4]~26\) # (!\data_Tx_freq|counter1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_Tx_freq|counter1|count\(5),
	datad => VCC,
	cin => \data_Tx_freq|counter1|count[4]~26\,
	combout => \data_Tx_freq|counter1|count[5]~27_combout\,
	cout => \data_Tx_freq|counter1|count[5]~28\);

-- Location: FF_X31_Y1_N11
\data_Tx_freq|counter1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_Tx_freq|counter1|count[5]~27_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	sclr => \data_Tx_freq|counter1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_Tx_freq|counter1|count\(5));

-- Location: LCCOMB_X31_Y1_N12
\data_Tx_freq|counter1|count[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|counter1|count[6]~29_combout\ = (\data_Tx_freq|counter1|count\(6) & (\data_Tx_freq|counter1|count[5]~28\ $ (GND))) # (!\data_Tx_freq|counter1|count\(6) & (!\data_Tx_freq|counter1|count[5]~28\ & VCC))
-- \data_Tx_freq|counter1|count[6]~30\ = CARRY((\data_Tx_freq|counter1|count\(6) & !\data_Tx_freq|counter1|count[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_Tx_freq|counter1|count\(6),
	datad => VCC,
	cin => \data_Tx_freq|counter1|count[5]~28\,
	combout => \data_Tx_freq|counter1|count[6]~29_combout\,
	cout => \data_Tx_freq|counter1|count[6]~30\);

-- Location: FF_X31_Y1_N13
\data_Tx_freq|counter1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_Tx_freq|counter1|count[6]~29_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	sclr => \data_Tx_freq|counter1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_Tx_freq|counter1|count\(6));

-- Location: LCCOMB_X31_Y1_N14
\data_Tx_freq|counter1|count[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|counter1|count[7]~31_combout\ = (\data_Tx_freq|counter1|count\(7) & (!\data_Tx_freq|counter1|count[6]~30\)) # (!\data_Tx_freq|counter1|count\(7) & ((\data_Tx_freq|counter1|count[6]~30\) # (GND)))
-- \data_Tx_freq|counter1|count[7]~32\ = CARRY((!\data_Tx_freq|counter1|count[6]~30\) # (!\data_Tx_freq|counter1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_Tx_freq|counter1|count\(7),
	datad => VCC,
	cin => \data_Tx_freq|counter1|count[6]~30\,
	combout => \data_Tx_freq|counter1|count[7]~31_combout\,
	cout => \data_Tx_freq|counter1|count[7]~32\);

-- Location: FF_X31_Y1_N15
\data_Tx_freq|counter1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_Tx_freq|counter1|count[7]~31_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	sclr => \data_Tx_freq|counter1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_Tx_freq|counter1|count\(7));

-- Location: LCCOMB_X31_Y1_N16
\data_Tx_freq|counter1|count[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|counter1|count[8]~33_combout\ = (\data_Tx_freq|counter1|count\(8) & (\data_Tx_freq|counter1|count[7]~32\ $ (GND))) # (!\data_Tx_freq|counter1|count\(8) & (!\data_Tx_freq|counter1|count[7]~32\ & VCC))
-- \data_Tx_freq|counter1|count[8]~34\ = CARRY((\data_Tx_freq|counter1|count\(8) & !\data_Tx_freq|counter1|count[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_Tx_freq|counter1|count\(8),
	datad => VCC,
	cin => \data_Tx_freq|counter1|count[7]~32\,
	combout => \data_Tx_freq|counter1|count[8]~33_combout\,
	cout => \data_Tx_freq|counter1|count[8]~34\);

-- Location: FF_X31_Y1_N17
\data_Tx_freq|counter1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_Tx_freq|counter1|count[8]~33_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	sclr => \data_Tx_freq|counter1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_Tx_freq|counter1|count\(8));

-- Location: LCCOMB_X31_Y1_N18
\data_Tx_freq|counter1|count[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|counter1|count[9]~35_combout\ = (\data_Tx_freq|counter1|count\(9) & (!\data_Tx_freq|counter1|count[8]~34\)) # (!\data_Tx_freq|counter1|count\(9) & ((\data_Tx_freq|counter1|count[8]~34\) # (GND)))
-- \data_Tx_freq|counter1|count[9]~36\ = CARRY((!\data_Tx_freq|counter1|count[8]~34\) # (!\data_Tx_freq|counter1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_Tx_freq|counter1|count\(9),
	datad => VCC,
	cin => \data_Tx_freq|counter1|count[8]~34\,
	combout => \data_Tx_freq|counter1|count[9]~35_combout\,
	cout => \data_Tx_freq|counter1|count[9]~36\);

-- Location: FF_X31_Y1_N19
\data_Tx_freq|counter1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_Tx_freq|counter1|count[9]~35_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	sclr => \data_Tx_freq|counter1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_Tx_freq|counter1|count\(9));

-- Location: LCCOMB_X31_Y1_N20
\data_Tx_freq|counter1|count[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|counter1|count[10]~37_combout\ = (\data_Tx_freq|counter1|count\(10) & (\data_Tx_freq|counter1|count[9]~36\ $ (GND))) # (!\data_Tx_freq|counter1|count\(10) & (!\data_Tx_freq|counter1|count[9]~36\ & VCC))
-- \data_Tx_freq|counter1|count[10]~38\ = CARRY((\data_Tx_freq|counter1|count\(10) & !\data_Tx_freq|counter1|count[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_Tx_freq|counter1|count\(10),
	datad => VCC,
	cin => \data_Tx_freq|counter1|count[9]~36\,
	combout => \data_Tx_freq|counter1|count[10]~37_combout\,
	cout => \data_Tx_freq|counter1|count[10]~38\);

-- Location: FF_X31_Y1_N21
\data_Tx_freq|counter1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_Tx_freq|counter1|count[10]~37_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	sclr => \data_Tx_freq|counter1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_Tx_freq|counter1|count\(10));

-- Location: LCCOMB_X31_Y1_N22
\data_Tx_freq|counter1|count[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|counter1|count[11]~39_combout\ = (\data_Tx_freq|counter1|count\(11) & (!\data_Tx_freq|counter1|count[10]~38\)) # (!\data_Tx_freq|counter1|count\(11) & ((\data_Tx_freq|counter1|count[10]~38\) # (GND)))
-- \data_Tx_freq|counter1|count[11]~40\ = CARRY((!\data_Tx_freq|counter1|count[10]~38\) # (!\data_Tx_freq|counter1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_Tx_freq|counter1|count\(11),
	datad => VCC,
	cin => \data_Tx_freq|counter1|count[10]~38\,
	combout => \data_Tx_freq|counter1|count[11]~39_combout\,
	cout => \data_Tx_freq|counter1|count[11]~40\);

-- Location: FF_X31_Y1_N23
\data_Tx_freq|counter1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_Tx_freq|counter1|count[11]~39_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	sclr => \data_Tx_freq|counter1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_Tx_freq|counter1|count\(11));

-- Location: LCCOMB_X29_Y1_N10
\data_Tx_freq|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|Equal1~6_combout\ = (\Baud[11]~input_o\ & (\data_Tx_freq|counter1|count\(11) & (\Baud[10]~input_o\ $ (!\data_Tx_freq|counter1|count\(10))))) # (!\Baud[11]~input_o\ & (!\data_Tx_freq|counter1|count\(11) & (\Baud[10]~input_o\ $ 
-- (!\data_Tx_freq|counter1|count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud[11]~input_o\,
	datab => \Baud[10]~input_o\,
	datac => \data_Tx_freq|counter1|count\(10),
	datad => \data_Tx_freq|counter1|count\(11),
	combout => \data_Tx_freq|Equal1~6_combout\);

-- Location: LCCOMB_X31_Y1_N24
\data_Tx_freq|counter1|count[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|counter1|count[12]~41_combout\ = (\data_Tx_freq|counter1|count\(12) & (\data_Tx_freq|counter1|count[11]~40\ $ (GND))) # (!\data_Tx_freq|counter1|count\(12) & (!\data_Tx_freq|counter1|count[11]~40\ & VCC))
-- \data_Tx_freq|counter1|count[12]~42\ = CARRY((\data_Tx_freq|counter1|count\(12) & !\data_Tx_freq|counter1|count[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \data_Tx_freq|counter1|count\(12),
	datad => VCC,
	cin => \data_Tx_freq|counter1|count[11]~40\,
	combout => \data_Tx_freq|counter1|count[12]~41_combout\,
	cout => \data_Tx_freq|counter1|count[12]~42\);

-- Location: FF_X31_Y1_N25
\data_Tx_freq|counter1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_Tx_freq|counter1|count[12]~41_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	sclr => \data_Tx_freq|counter1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_Tx_freq|counter1|count\(12));

-- Location: LCCOMB_X31_Y1_N26
\data_Tx_freq|counter1|count[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|counter1|count[13]~43_combout\ = (\data_Tx_freq|counter1|count\(13) & (!\data_Tx_freq|counter1|count[12]~42\)) # (!\data_Tx_freq|counter1|count\(13) & ((\data_Tx_freq|counter1|count[12]~42\) # (GND)))
-- \data_Tx_freq|counter1|count[13]~44\ = CARRY((!\data_Tx_freq|counter1|count[12]~42\) # (!\data_Tx_freq|counter1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \data_Tx_freq|counter1|count\(13),
	datad => VCC,
	cin => \data_Tx_freq|counter1|count[12]~42\,
	combout => \data_Tx_freq|counter1|count[13]~43_combout\,
	cout => \data_Tx_freq|counter1|count[13]~44\);

-- Location: FF_X31_Y1_N27
\data_Tx_freq|counter1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_Tx_freq|counter1|count[13]~43_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	sclr => \data_Tx_freq|counter1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_Tx_freq|counter1|count\(13));

-- Location: LCCOMB_X29_Y1_N8
\data_Tx_freq|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|Equal1~7_combout\ = (\Baud[12]~input_o\ & (\data_Tx_freq|counter1|count\(12) & (\Baud[13]~input_o\ $ (!\data_Tx_freq|counter1|count\(13))))) # (!\Baud[12]~input_o\ & (!\data_Tx_freq|counter1|count\(12) & (\Baud[13]~input_o\ $ 
-- (!\data_Tx_freq|counter1|count\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud[12]~input_o\,
	datab => \Baud[13]~input_o\,
	datac => \data_Tx_freq|counter1|count\(12),
	datad => \data_Tx_freq|counter1|count\(13),
	combout => \data_Tx_freq|Equal1~7_combout\);

-- Location: LCCOMB_X30_Y1_N0
\data_Tx_freq|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|Equal1~5_combout\ = (\Baud[8]~input_o\ & (\data_Tx_freq|counter1|count\(8) & (\Baud[9]~input_o\ $ (!\data_Tx_freq|counter1|count\(9))))) # (!\Baud[8]~input_o\ & (!\data_Tx_freq|counter1|count\(8) & (\Baud[9]~input_o\ $ 
-- (!\data_Tx_freq|counter1|count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud[8]~input_o\,
	datab => \data_Tx_freq|counter1|count\(8),
	datac => \Baud[9]~input_o\,
	datad => \data_Tx_freq|counter1|count\(9),
	combout => \data_Tx_freq|Equal1~5_combout\);

-- Location: LCCOMB_X31_Y1_N28
\data_Tx_freq|counter1|count[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|counter1|count[14]~45_combout\ = \data_Tx_freq|counter1|count[13]~44\ $ (!\data_Tx_freq|counter1|count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \data_Tx_freq|counter1|count\(14),
	cin => \data_Tx_freq|counter1|count[13]~44\,
	combout => \data_Tx_freq|counter1|count[14]~45_combout\);

-- Location: FF_X31_Y1_N29
\data_Tx_freq|counter1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_Tx_freq|counter1|count[14]~45_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	sclr => \data_Tx_freq|counter1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_Tx_freq|counter1|count\(14));

-- Location: LCCOMB_X30_Y1_N20
\data_Tx_freq|counter1|count~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|counter1|count~47_combout\ = (\data_Tx_freq|counter1|count\(2) & (\data_Tx_freq|counter1|count\(0) & (\data_Tx_freq|counter1|count\(1) & \data_Tx_freq|counter1|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_Tx_freq|counter1|count\(2),
	datab => \data_Tx_freq|counter1|count\(0),
	datac => \data_Tx_freq|counter1|count\(1),
	datad => \data_Tx_freq|counter1|count\(3),
	combout => \data_Tx_freq|counter1|count~47_combout\);

-- Location: LCCOMB_X30_Y1_N30
\data_Tx_freq|counter1|count~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|counter1|count~48_combout\ = (\data_Tx_freq|counter1|count\(4) & (\data_Tx_freq|counter1|count\(5) & (\data_Tx_freq|counter1|count\(7) & \data_Tx_freq|counter1|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_Tx_freq|counter1|count\(4),
	datab => \data_Tx_freq|counter1|count\(5),
	datac => \data_Tx_freq|counter1|count\(7),
	datad => \data_Tx_freq|counter1|count\(6),
	combout => \data_Tx_freq|counter1|count~48_combout\);

-- Location: LCCOMB_X28_Y1_N18
\data_Tx_freq|counter1|count~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|counter1|count~49_combout\ = (\data_Tx_freq|counter1|count\(8) & (\data_Tx_freq|counter1|count\(11) & (\data_Tx_freq|counter1|count\(10) & \data_Tx_freq|counter1|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_Tx_freq|counter1|count\(8),
	datab => \data_Tx_freq|counter1|count\(11),
	datac => \data_Tx_freq|counter1|count\(10),
	datad => \data_Tx_freq|counter1|count\(9),
	combout => \data_Tx_freq|counter1|count~49_combout\);

-- Location: LCCOMB_X28_Y1_N24
\data_Tx_freq|counter1|count~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|counter1|count~50_combout\ = (\data_Tx_freq|counter1|count\(13) & (\data_Tx_freq|counter1|count\(12) & (\data_Tx_freq|counter1|count\(14) & \data_Tx_freq|counter1|count~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_Tx_freq|counter1|count\(13),
	datab => \data_Tx_freq|counter1|count\(12),
	datac => \data_Tx_freq|counter1|count\(14),
	datad => \data_Tx_freq|counter1|count~49_combout\,
	combout => \data_Tx_freq|counter1|count~50_combout\);

-- Location: LCCOMB_X29_Y1_N14
\data_Tx_freq|counter1|count~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|counter1|count~51_combout\ = \data_Tx_freq|counter1|count\(15) $ (((\data_Tx_freq|counter1|count~47_combout\ & (\data_Tx_freq|counter1|count~48_combout\ & \data_Tx_freq|counter1|count~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_Tx_freq|counter1|count~47_combout\,
	datab => \data_Tx_freq|counter1|count\(15),
	datac => \data_Tx_freq|counter1|count~48_combout\,
	datad => \data_Tx_freq|counter1|count~50_combout\,
	combout => \data_Tx_freq|counter1|count~51_combout\);

-- Location: LCCOMB_X29_Y1_N0
\data_Tx_freq|counter1|count~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|counter1|count~52_combout\ = (\data_Tx_freq|counter1|count~51_combout\ & (((\data_Tx_freq|subCLK~11_combout\) # (!\data_Tx_freq|Equal1~4_combout\)) # (!\data_Tx_freq|Equal1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_Tx_freq|Equal1~9_combout\,
	datab => \data_Tx_freq|Equal1~4_combout\,
	datac => \data_Tx_freq|counter1|count~51_combout\,
	datad => \data_Tx_freq|subCLK~11_combout\,
	combout => \data_Tx_freq|counter1|count~52_combout\);

-- Location: FF_X29_Y1_N1
\data_Tx_freq|counter1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_Tx_freq|counter1|count~52_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_Tx_freq|counter1|count\(15));

-- Location: LCCOMB_X29_Y1_N24
\data_Tx_freq|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|Equal1~8_combout\ = (\Baud[15]~input_o\ & (\data_Tx_freq|counter1|count\(15) & (\Baud[14]~input_o\ $ (!\data_Tx_freq|counter1|count\(14))))) # (!\Baud[15]~input_o\ & (!\data_Tx_freq|counter1|count\(15) & (\Baud[14]~input_o\ $ 
-- (!\data_Tx_freq|counter1|count\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud[15]~input_o\,
	datab => \Baud[14]~input_o\,
	datac => \data_Tx_freq|counter1|count\(14),
	datad => \data_Tx_freq|counter1|count\(15),
	combout => \data_Tx_freq|Equal1~8_combout\);

-- Location: LCCOMB_X29_Y1_N2
\data_Tx_freq|Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|Equal1~9_combout\ = (\data_Tx_freq|Equal1~6_combout\ & (\data_Tx_freq|Equal1~7_combout\ & (\data_Tx_freq|Equal1~5_combout\ & \data_Tx_freq|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_Tx_freq|Equal1~6_combout\,
	datab => \data_Tx_freq|Equal1~7_combout\,
	datac => \data_Tx_freq|Equal1~5_combout\,
	datad => \data_Tx_freq|Equal1~8_combout\,
	combout => \data_Tx_freq|Equal1~9_combout\);

-- Location: LCCOMB_X31_Y1_N30
\data_Tx_freq|counter1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|counter1|process_0~0_combout\ = (\data_Tx_freq|Equal1~4_combout\ & (!\data_Tx_freq|subCLK~11_combout\ & \data_Tx_freq|Equal1~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_Tx_freq|Equal1~4_combout\,
	datab => \data_Tx_freq|subCLK~11_combout\,
	datad => \data_Tx_freq|Equal1~9_combout\,
	combout => \data_Tx_freq|counter1|process_0~0_combout\);

-- Location: FF_X31_Y1_N1
\data_Tx_freq|counter1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \data_Tx_freq|counter1|count[0]~17_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	sclr => \data_Tx_freq|counter1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_Tx_freq|counter1|count\(0));

-- Location: LCCOMB_X30_Y1_N8
\data_Tx_freq|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|Equal1~0_combout\ = (\Baud[5]~input_o\ & (\data_Tx_freq|counter1|count\(5) & (\data_Tx_freq|counter1|count\(4) $ (!\Baud[4]~input_o\)))) # (!\Baud[5]~input_o\ & (!\data_Tx_freq|counter1|count\(5) & (\data_Tx_freq|counter1|count\(4) $ 
-- (!\Baud[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud[5]~input_o\,
	datab => \data_Tx_freq|counter1|count\(4),
	datac => \data_Tx_freq|counter1|count\(5),
	datad => \Baud[4]~input_o\,
	combout => \data_Tx_freq|Equal1~0_combout\);

-- Location: LCCOMB_X30_Y1_N4
\data_Tx_freq|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|Equal1~2_combout\ = (\Baud[2]~input_o\ & (\data_Tx_freq|counter1|count\(2) & (\Baud[3]~input_o\ $ (!\data_Tx_freq|counter1|count\(3))))) # (!\Baud[2]~input_o\ & (!\data_Tx_freq|counter1|count\(2) & (\Baud[3]~input_o\ $ 
-- (!\data_Tx_freq|counter1|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud[2]~input_o\,
	datab => \Baud[3]~input_o\,
	datac => \data_Tx_freq|counter1|count\(3),
	datad => \data_Tx_freq|counter1|count\(2),
	combout => \data_Tx_freq|Equal1~2_combout\);

-- Location: LCCOMB_X30_Y1_N28
\data_Tx_freq|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|Equal1~1_combout\ = (\Baud[6]~input_o\ & (\data_Tx_freq|counter1|count\(6) & (\Baud[7]~input_o\ $ (!\data_Tx_freq|counter1|count\(7))))) # (!\Baud[6]~input_o\ & (!\data_Tx_freq|counter1|count\(6) & (\Baud[7]~input_o\ $ 
-- (!\data_Tx_freq|counter1|count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud[6]~input_o\,
	datab => \Baud[7]~input_o\,
	datac => \data_Tx_freq|counter1|count\(7),
	datad => \data_Tx_freq|counter1|count\(6),
	combout => \data_Tx_freq|Equal1~1_combout\);

-- Location: LCCOMB_X30_Y1_N16
\data_Tx_freq|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|Equal1~3_combout\ = (\data_Tx_freq|Equal1~2_combout\ & (\data_Tx_freq|Equal1~1_combout\ & (\data_Tx_freq|counter1|count\(1) $ (!\Baud[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_Tx_freq|counter1|count\(1),
	datab => \Baud[1]~input_o\,
	datac => \data_Tx_freq|Equal1~2_combout\,
	datad => \data_Tx_freq|Equal1~1_combout\,
	combout => \data_Tx_freq|Equal1~3_combout\);

-- Location: LCCOMB_X30_Y1_N18
\data_Tx_freq|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|Equal1~4_combout\ = (\data_Tx_freq|Equal1~0_combout\ & (\data_Tx_freq|Equal1~3_combout\ & (\Baud[0]~input_o\ $ (!\data_Tx_freq|counter1|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud[0]~input_o\,
	datab => \data_Tx_freq|counter1|count\(0),
	datac => \data_Tx_freq|Equal1~0_combout\,
	datad => \data_Tx_freq|Equal1~3_combout\,
	combout => \data_Tx_freq|Equal1~4_combout\);

-- Location: LCCOMB_X29_Y1_N4
\data_Tx_freq|Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|Equal1~10_combout\ = (\data_Tx_freq|Equal1~4_combout\ & \data_Tx_freq|Equal1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_Tx_freq|Equal1~4_combout\,
	datad => \data_Tx_freq|Equal1~9_combout\,
	combout => \data_Tx_freq|Equal1~10_combout\);

-- Location: LCCOMB_X29_Y1_N12
\data_Tx_freq|subCLK~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|subCLK~1_combout\ = (!\reset_n~input_o\ & ((\data_Tx_freq|subCLK~11_combout\ & (\clock~input_o\)) # (!\data_Tx_freq|subCLK~11_combout\ & ((\data_Tx_freq|subCLK~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_Tx_freq|subCLK~11_combout\,
	datab => \reset_n~input_o\,
	datac => \clock~input_o\,
	datad => \data_Tx_freq|subCLK~1_combout\,
	combout => \data_Tx_freq|subCLK~1_combout\);

-- Location: LCCOMB_X28_Y1_N16
\data_Tx_freq|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|Equal2~5_combout\ = (\Baud[9]~input_o\ & (\data_Tx_freq|counter1|count\(8) & (\Baud[10]~input_o\ $ (!\data_Tx_freq|counter1|count\(9))))) # (!\Baud[9]~input_o\ & (!\data_Tx_freq|counter1|count\(8) & (\Baud[10]~input_o\ $ 
-- (!\data_Tx_freq|counter1|count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud[9]~input_o\,
	datab => \Baud[10]~input_o\,
	datac => \data_Tx_freq|counter1|count\(8),
	datad => \data_Tx_freq|counter1|count\(9),
	combout => \data_Tx_freq|Equal2~5_combout\);

-- Location: LCCOMB_X29_Y1_N20
\data_Tx_freq|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|Equal2~6_combout\ = (\Baud[11]~input_o\ & (\data_Tx_freq|counter1|count\(10) & (\Baud[12]~input_o\ $ (!\data_Tx_freq|counter1|count\(11))))) # (!\Baud[11]~input_o\ & (!\data_Tx_freq|counter1|count\(10) & (\Baud[12]~input_o\ $ 
-- (!\data_Tx_freq|counter1|count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud[11]~input_o\,
	datab => \Baud[12]~input_o\,
	datac => \data_Tx_freq|counter1|count\(10),
	datad => \data_Tx_freq|counter1|count\(11),
	combout => \data_Tx_freq|Equal2~6_combout\);

-- Location: LCCOMB_X30_Y1_N26
\data_Tx_freq|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|Equal2~7_combout\ = (\Baud[14]~input_o\ & (\data_Tx_freq|counter1|count\(13) & (\Baud[13]~input_o\ $ (!\data_Tx_freq|counter1|count\(12))))) # (!\Baud[14]~input_o\ & (!\data_Tx_freq|counter1|count\(13) & (\Baud[13]~input_o\ $ 
-- (!\data_Tx_freq|counter1|count\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud[14]~input_o\,
	datab => \Baud[13]~input_o\,
	datac => \data_Tx_freq|counter1|count\(12),
	datad => \data_Tx_freq|counter1|count\(13),
	combout => \data_Tx_freq|Equal2~7_combout\);

-- Location: LCCOMB_X29_Y1_N26
\data_Tx_freq|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|Equal2~8_combout\ = (!\data_Tx_freq|counter1|count\(15) & (\data_Tx_freq|Equal2~7_combout\ & (\Baud[15]~input_o\ $ (!\data_Tx_freq|counter1|count\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud[15]~input_o\,
	datab => \data_Tx_freq|counter1|count\(15),
	datac => \data_Tx_freq|counter1|count\(14),
	datad => \data_Tx_freq|Equal2~7_combout\,
	combout => \data_Tx_freq|Equal2~8_combout\);

-- Location: LCCOMB_X30_Y1_N6
\data_Tx_freq|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|Equal2~0_combout\ = (\Baud[2]~input_o\ & (\data_Tx_freq|counter1|count\(1) & (\Baud[1]~input_o\ $ (!\data_Tx_freq|counter1|count\(0))))) # (!\Baud[2]~input_o\ & (!\data_Tx_freq|counter1|count\(1) & (\Baud[1]~input_o\ $ 
-- (!\data_Tx_freq|counter1|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud[2]~input_o\,
	datab => \Baud[1]~input_o\,
	datac => \data_Tx_freq|counter1|count\(0),
	datad => \data_Tx_freq|counter1|count\(1),
	combout => \data_Tx_freq|Equal2~0_combout\);

-- Location: LCCOMB_X30_Y1_N24
\data_Tx_freq|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|Equal2~1_combout\ = (\data_Tx_freq|counter1|count\(2) & (\Baud[3]~input_o\ & (\Baud[4]~input_o\ $ (!\data_Tx_freq|counter1|count\(3))))) # (!\data_Tx_freq|counter1|count\(2) & (!\Baud[3]~input_o\ & (\Baud[4]~input_o\ $ 
-- (!\data_Tx_freq|counter1|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_Tx_freq|counter1|count\(2),
	datab => \Baud[4]~input_o\,
	datac => \Baud[3]~input_o\,
	datad => \data_Tx_freq|counter1|count\(3),
	combout => \data_Tx_freq|Equal2~1_combout\);

-- Location: LCCOMB_X30_Y1_N14
\data_Tx_freq|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|Equal2~3_combout\ = (\Baud[8]~input_o\ & (\data_Tx_freq|counter1|count\(7) & (\Baud[7]~input_o\ $ (!\data_Tx_freq|counter1|count\(6))))) # (!\Baud[8]~input_o\ & (!\data_Tx_freq|counter1|count\(7) & (\Baud[7]~input_o\ $ 
-- (!\data_Tx_freq|counter1|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud[8]~input_o\,
	datab => \data_Tx_freq|counter1|count\(7),
	datac => \Baud[7]~input_o\,
	datad => \data_Tx_freq|counter1|count\(6),
	combout => \data_Tx_freq|Equal2~3_combout\);

-- Location: LCCOMB_X30_Y1_N10
\data_Tx_freq|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|Equal2~2_combout\ = (\Baud[6]~input_o\ & (\data_Tx_freq|counter1|count\(5) & (\data_Tx_freq|counter1|count\(4) $ (!\Baud[5]~input_o\)))) # (!\Baud[6]~input_o\ & (!\data_Tx_freq|counter1|count\(5) & (\data_Tx_freq|counter1|count\(4) $ 
-- (!\Baud[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Baud[6]~input_o\,
	datab => \data_Tx_freq|counter1|count\(4),
	datac => \data_Tx_freq|counter1|count\(5),
	datad => \Baud[5]~input_o\,
	combout => \data_Tx_freq|Equal2~2_combout\);

-- Location: LCCOMB_X30_Y1_N22
\data_Tx_freq|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|Equal2~4_combout\ = (\data_Tx_freq|Equal2~0_combout\ & (\data_Tx_freq|Equal2~1_combout\ & (\data_Tx_freq|Equal2~3_combout\ & \data_Tx_freq|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_Tx_freq|Equal2~0_combout\,
	datab => \data_Tx_freq|Equal2~1_combout\,
	datac => \data_Tx_freq|Equal2~3_combout\,
	datad => \data_Tx_freq|Equal2~2_combout\,
	combout => \data_Tx_freq|Equal2~4_combout\);

-- Location: LCCOMB_X29_Y1_N6
\data_Tx_freq|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|Equal2~9_combout\ = (\data_Tx_freq|Equal2~5_combout\ & (\data_Tx_freq|Equal2~6_combout\ & (\data_Tx_freq|Equal2~8_combout\ & \data_Tx_freq|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_Tx_freq|Equal2~5_combout\,
	datab => \data_Tx_freq|Equal2~6_combout\,
	datac => \data_Tx_freq|Equal2~8_combout\,
	datad => \data_Tx_freq|Equal2~4_combout\,
	combout => \data_Tx_freq|Equal2~9_combout\);

-- Location: LCCOMB_X29_Y1_N30
\data_Tx_freq|subCLK~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|subCLK~4_combout\ = \data_Tx_freq|subCLK~2_combout\ $ (\data_Tx_freq|subCLK~1_combout\ $ (((\data_Tx_freq|Equal1~10_combout\) # (\data_Tx_freq|Equal2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_Tx_freq|subCLK~2_combout\,
	datab => \data_Tx_freq|Equal1~10_combout\,
	datac => \data_Tx_freq|subCLK~1_combout\,
	datad => \data_Tx_freq|Equal2~9_combout\,
	combout => \data_Tx_freq|subCLK~4_combout\);

-- Location: LCCOMB_X29_Y1_N28
\data_Tx_freq|subCLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|subCLK~0_combout\ = (\reset_n~input_o\) # (\data_Tx_freq|subCLK~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_n~input_o\,
	datad => \data_Tx_freq|subCLK~11_combout\,
	combout => \data_Tx_freq|subCLK~0_combout\);

-- Location: FF_X29_Y1_N31
\data_Tx_freq|subCLK~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \data_Tx_freq|subCLK~4_combout\,
	clrn => \data_Tx_freq|ALT_INV_subCLK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_Tx_freq|subCLK~_emulated_q\);

-- Location: LCCOMB_X29_Y1_N22
\data_Tx_freq|subCLK~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|subCLK~3_combout\ = \data_Tx_freq|subCLK~_emulated_q\ $ (\data_Tx_freq|subCLK~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_Tx_freq|subCLK~_emulated_q\,
	datad => \data_Tx_freq|subCLK~1_combout\,
	combout => \data_Tx_freq|subCLK~3_combout\);

-- Location: LCCOMB_X29_Y1_N18
\data_Tx_freq|subCLK~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_Tx_freq|subCLK~2_combout\ = (!\reset_n~input_o\ & ((\data_Tx_freq|subCLK~11_combout\ & (\clock~input_o\)) # (!\data_Tx_freq|subCLK~11_combout\ & ((\data_Tx_freq|subCLK~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock~input_o\,
	datab => \reset_n~input_o\,
	datac => \data_Tx_freq|subCLK~3_combout\,
	datad => \data_Tx_freq|subCLK~11_combout\,
	combout => \data_Tx_freq|subCLK~2_combout\);

-- Location: CLKCTRL_G15
\data_Tx_freq|subCLK~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \data_Tx_freq|subCLK~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \data_Tx_freq|subCLK~2clkctrl_outclk\);

-- Location: LCCOMB_X44_Y4_N30
\count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~3_combout\ = (!count(3) & (count(0) $ (count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datac => count(1),
	datad => count(3),
	combout => \count~3_combout\);

-- Location: FF_X44_Y4_N31
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data_Tx_freq|subCLK~2clkctrl_outclk\,
	d => \count~3_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X44_Y4_N28
\count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (count(2) & (count(0) & (!count(3) & count(1)))) # (!count(2) & (!count(0) & (count(3) & !count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(0),
	datac => count(3),
	datad => count(1),
	combout => \count~0_combout\);

-- Location: FF_X44_Y4_N29
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data_Tx_freq|subCLK~2clkctrl_outclk\,
	d => \count~0_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X44_Y4_N4
\count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (!count(3) & (count(2) $ (((count(0) & count(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(0),
	datac => count(2),
	datad => count(1),
	combout => \count~2_combout\);

-- Location: FF_X44_Y4_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data_Tx_freq|subCLK~2clkctrl_outclk\,
	d => \count~2_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X44_Y4_N10
\count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (!count(0) & (((!count(2) & !count(1))) # (!count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(3),
	datac => count(0),
	datad => count(1),
	combout => \count~1_combout\);

-- Location: FF_X44_Y4_N11
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data_Tx_freq|subCLK~2clkctrl_outclk\,
	d => \count~1_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X44_Y4_N18
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!count(0) & (!count(2) & (!count(3) & !count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(2),
	datac => count(3),
	datad => count(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X44_Y4_N22
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!count(0) & (!count(2) & !count(1)))) # (!count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(2),
	datac => count(1),
	datad => count(3),
	combout => \LessThan0~0_combout\);

-- Location: IOIBUF_X43_Y0_N22
\TX_data[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_data(7),
	o => \TX_data[7]~input_o\);

-- Location: LCCOMB_X43_Y4_N12
\TX_data_temp~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_data_temp~7_combout\ = (\Equal0~0_combout\ & (((\TX_data[7]~input_o\)))) # (!\Equal0~0_combout\ & (!\LessThan0~0_combout\ & (\transmit:TX_data_temp[7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \transmit:TX_data_temp[7]~q\,
	datad => \TX_data[7]~input_o\,
	combout => \TX_data_temp~7_combout\);

-- Location: FF_X43_Y4_N13
\transmit:TX_data_temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data_Tx_freq|subCLK~2clkctrl_outclk\,
	d => \TX_data_temp~7_combout\,
	ena => \ALT_INV_reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmit:TX_data_temp[7]~q\);

-- Location: IOIBUF_X45_Y0_N22
\TX_data[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_data(6),
	o => \TX_data[6]~input_o\);

-- Location: LCCOMB_X43_Y4_N10
\TX_data_temp~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_data_temp~6_combout\ = (\Equal0~0_combout\ & ((\TX_data[6]~input_o\))) # (!\Equal0~0_combout\ & (\transmit:TX_data_temp[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \transmit:TX_data_temp[7]~q\,
	datab => \Equal0~0_combout\,
	datad => \TX_data[6]~input_o\,
	combout => \TX_data_temp~6_combout\);

-- Location: LCCOMB_X43_Y4_N20
\transmit:TX_data_temp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \transmit:TX_data_temp[0]~0_combout\ = (!\reset_n~input_o\ & \LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset_n~input_o\,
	datad => \LessThan0~0_combout\,
	combout => \transmit:TX_data_temp[0]~0_combout\);

-- Location: FF_X43_Y4_N11
\transmit:TX_data_temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data_Tx_freq|subCLK~2clkctrl_outclk\,
	d => \TX_data_temp~6_combout\,
	ena => \transmit:TX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmit:TX_data_temp[6]~q\);

-- Location: IOIBUF_X40_Y0_N15
\TX_data[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_data(5),
	o => \TX_data[5]~input_o\);

-- Location: LCCOMB_X43_Y4_N4
\TX_data_temp~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_data_temp~5_combout\ = (\Equal0~0_combout\ & ((\TX_data[5]~input_o\))) # (!\Equal0~0_combout\ & (\transmit:TX_data_temp[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \transmit:TX_data_temp[6]~q\,
	datad => \TX_data[5]~input_o\,
	combout => \TX_data_temp~5_combout\);

-- Location: FF_X43_Y4_N5
\transmit:TX_data_temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data_Tx_freq|subCLK~2clkctrl_outclk\,
	d => \TX_data_temp~5_combout\,
	ena => \transmit:TX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmit:TX_data_temp[5]~q\);

-- Location: IOIBUF_X40_Y0_N22
\TX_data[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_data(4),
	o => \TX_data[4]~input_o\);

-- Location: LCCOMB_X43_Y4_N2
\TX_data_temp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_data_temp~4_combout\ = (\Equal0~0_combout\ & ((\TX_data[4]~input_o\))) # (!\Equal0~0_combout\ & (\transmit:TX_data_temp[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \transmit:TX_data_temp[5]~q\,
	datad => \TX_data[4]~input_o\,
	combout => \TX_data_temp~4_combout\);

-- Location: FF_X43_Y4_N3
\transmit:TX_data_temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data_Tx_freq|subCLK~2clkctrl_outclk\,
	d => \TX_data_temp~4_combout\,
	ena => \transmit:TX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmit:TX_data_temp[4]~q\);

-- Location: IOIBUF_X53_Y17_N1
\TX_data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_data(3),
	o => \TX_data[3]~input_o\);

-- Location: LCCOMB_X43_Y4_N0
\TX_data_temp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_data_temp~3_combout\ = (\Equal0~0_combout\ & ((\TX_data[3]~input_o\))) # (!\Equal0~0_combout\ & (\transmit:TX_data_temp[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \transmit:TX_data_temp[4]~q\,
	datad => \TX_data[3]~input_o\,
	combout => \TX_data_temp~3_combout\);

-- Location: FF_X43_Y4_N1
\transmit:TX_data_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data_Tx_freq|subCLK~2clkctrl_outclk\,
	d => \TX_data_temp~3_combout\,
	ena => \transmit:TX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmit:TX_data_temp[3]~q\);

-- Location: IOIBUF_X53_Y17_N8
\TX_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_data(2),
	o => \TX_data[2]~input_o\);

-- Location: LCCOMB_X43_Y4_N18
\TX_data_temp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_data_temp~2_combout\ = (\Equal0~0_combout\ & ((\TX_data[2]~input_o\))) # (!\Equal0~0_combout\ & (\transmit:TX_data_temp[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \transmit:TX_data_temp[3]~q\,
	datad => \TX_data[2]~input_o\,
	combout => \TX_data_temp~2_combout\);

-- Location: FF_X43_Y4_N19
\transmit:TX_data_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data_Tx_freq|subCLK~2clkctrl_outclk\,
	d => \TX_data_temp~2_combout\,
	ena => \transmit:TX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmit:TX_data_temp[2]~q\);

-- Location: IOIBUF_X47_Y0_N22
\TX_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_data(1),
	o => \TX_data[1]~input_o\);

-- Location: LCCOMB_X43_Y4_N14
\TX_data_temp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_data_temp~1_combout\ = (\Equal0~0_combout\ & ((\TX_data[1]~input_o\))) # (!\Equal0~0_combout\ & (\transmit:TX_data_temp[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \transmit:TX_data_temp[2]~q\,
	datad => \TX_data[1]~input_o\,
	combout => \TX_data_temp~1_combout\);

-- Location: FF_X43_Y4_N15
\transmit:TX_data_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data_Tx_freq|subCLK~2clkctrl_outclk\,
	d => \TX_data_temp~1_combout\,
	ena => \transmit:TX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmit:TX_data_temp[1]~q\);

-- Location: IOIBUF_X43_Y0_N15
\TX_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TX_data(0),
	o => \TX_data[0]~input_o\);

-- Location: LCCOMB_X43_Y4_N8
\TX_data_temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_data_temp~0_combout\ = (\Equal0~0_combout\ & ((\TX_data[0]~input_o\))) # (!\Equal0~0_combout\ & (\transmit:TX_data_temp[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \transmit:TX_data_temp[1]~q\,
	datad => \TX_data[0]~input_o\,
	combout => \TX_data_temp~0_combout\);

-- Location: FF_X43_Y4_N9
\transmit:TX_data_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data_Tx_freq|subCLK~2clkctrl_outclk\,
	d => \TX_data_temp~0_combout\,
	ena => \transmit:TX_data_temp[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \transmit:TX_data_temp[0]~q\);

-- Location: LCCOMB_X44_Y4_N16
\TX_end~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_end~0_combout\ = (!count(1) & (count(3) & (!count(2) & count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(3),
	datac => count(2),
	datad => count(0),
	combout => \TX_end~0_combout\);

-- Location: LCCOMB_X44_Y4_N24
\TX~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX~0_combout\ = (\LessThan0~0_combout\ & (((\transmit:TX_data_temp[0]~q\)))) # (!\LessThan0~0_combout\ & (((\TX_end~0_combout\)) # (!\TX~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TX~reg0_q\,
	datab => \transmit:TX_data_temp[0]~q\,
	datac => \TX_end~0_combout\,
	datad => \LessThan0~0_combout\,
	combout => \TX~0_combout\);

-- Location: LCCOMB_X44_Y4_N8
\TX~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX~1_combout\ = (\Equal0~0_combout\) # (!\TX~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \TX~0_combout\,
	combout => \TX~1_combout\);

-- Location: FF_X44_Y4_N9
\TX~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \data_Tx_freq|subCLK~2clkctrl_outclk\,
	d => \TX~1_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX~reg0_q\);

-- Location: LCCOMB_X44_Y4_N26
\TX_end~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \TX_end~1_combout\ = (!\TX_data_valid~reg0_q\ & \TX_end~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TX_data_valid~reg0_q\,
	datad => \TX_end~0_combout\,
	combout => \TX_end~1_combout\);

-- Location: FF_X44_Y4_N27
\TX_data_valid~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \TX_end~1_combout\,
	clrn => \ALT_INV_reset_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TX_data_valid~reg0_q\);

ww_TX <= \TX~output_o\;

ww_TX_data_valid <= \TX_data_valid~output_o\;
END structure;


