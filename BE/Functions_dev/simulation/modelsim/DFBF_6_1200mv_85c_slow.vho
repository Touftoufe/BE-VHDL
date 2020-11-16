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

-- DATE "11/16/2020 11:32:10"

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

ENTITY 	TB_ANEMO IS
    PORT (
	clock : IN std_logic;
	tb_reset : IN std_logic;
	freq_out : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END TB_ANEMO;

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


ARCHITECTURE structure OF TB_ANEMO IS
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
SIGNAL \pwm1|clock_div|subCLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \anemo|clock_div|subCLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pwm1|pwm_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \pwm1|clock_div|counter1|Add0~0_combout\ : std_logic;
SIGNAL \tb_reset~input_o\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~1\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~2_combout\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~7\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~8_combout\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|count~4_combout\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~9\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~10_combout\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|count~3_combout\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~11\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~12_combout\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|count~2_combout\ : std_logic;
SIGNAL \pwm1|clock_div|Equal1~3_combout\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~17\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~18_combout\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~19\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~20_combout\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~21\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~22_combout\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~23\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~24_combout\ : std_logic;
SIGNAL \pwm1|clock_div|Equal1~2_combout\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~25\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~26_combout\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~27\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~28_combout\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~29\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~30_combout\ : std_logic;
SIGNAL \pwm1|clock_div|Equal1~1_combout\ : std_logic;
SIGNAL \pwm1|clock_div|Equal1~4_combout\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~13\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~14_combout\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|count~1_combout\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~15\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~16_combout\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|count~0_combout\ : std_logic;
SIGNAL \pwm1|clock_div|Equal1~0_combout\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~3\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~4_combout\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|count~5_combout\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~5\ : std_logic;
SIGNAL \pwm1|clock_div|counter1|Add0~6_combout\ : std_logic;
SIGNAL \pwm1|clock_div|Equal2~0_combout\ : std_logic;
SIGNAL \pwm1|clock_div|subCLK~0_combout\ : std_logic;
SIGNAL \pwm1|clock_div|subCLK~feeder_combout\ : std_logic;
SIGNAL \pwm1|clock_div|subCLK~q\ : std_logic;
SIGNAL \pwm1|clock_div|subCLK~clkctrl_outclk\ : std_logic;
SIGNAL \pwm1|freq_count|count[0]~16_combout\ : std_logic;
SIGNAL \pwm1|Equal0~3_combout\ : std_logic;
SIGNAL \pwm1|Equal0~2_combout\ : std_logic;
SIGNAL \pwm1|freq_count|count[8]~33\ : std_logic;
SIGNAL \pwm1|freq_count|count[9]~34_combout\ : std_logic;
SIGNAL \pwm1|freq_count|count[9]~35\ : std_logic;
SIGNAL \pwm1|freq_count|count[10]~36_combout\ : std_logic;
SIGNAL \pwm1|freq_count|count[10]~37\ : std_logic;
SIGNAL \pwm1|freq_count|count[11]~38_combout\ : std_logic;
SIGNAL \pwm1|freq_count|count[11]~39\ : std_logic;
SIGNAL \pwm1|freq_count|count[12]~40_combout\ : std_logic;
SIGNAL \pwm1|freq_count|count[12]~41\ : std_logic;
SIGNAL \pwm1|freq_count|count[13]~42_combout\ : std_logic;
SIGNAL \pwm1|freq_count|count[13]~43\ : std_logic;
SIGNAL \pwm1|freq_count|count[14]~44_combout\ : std_logic;
SIGNAL \pwm1|freq_count|count[14]~45\ : std_logic;
SIGNAL \pwm1|freq_count|count[15]~46_combout\ : std_logic;
SIGNAL \pwm1|Equal0~0_combout\ : std_logic;
SIGNAL \pwm1|Equal0~1_combout\ : std_logic;
SIGNAL \pwm1|Equal0~4_combout\ : std_logic;
SIGNAL \pwm1|reset_counter~q\ : std_logic;
SIGNAL \pwm1|freq_count|count[0]~17\ : std_logic;
SIGNAL \pwm1|freq_count|count[1]~18_combout\ : std_logic;
SIGNAL \pwm1|freq_count|count[1]~19\ : std_logic;
SIGNAL \pwm1|freq_count|count[2]~20_combout\ : std_logic;
SIGNAL \pwm1|freq_count|count[2]~21\ : std_logic;
SIGNAL \pwm1|freq_count|count[3]~22_combout\ : std_logic;
SIGNAL \pwm1|freq_count|count[3]~23\ : std_logic;
SIGNAL \pwm1|freq_count|count[4]~24_combout\ : std_logic;
SIGNAL \pwm1|freq_count|count[4]~25\ : std_logic;
SIGNAL \pwm1|freq_count|count[5]~26_combout\ : std_logic;
SIGNAL \pwm1|freq_count|count[5]~27\ : std_logic;
SIGNAL \pwm1|freq_count|count[6]~28_combout\ : std_logic;
SIGNAL \pwm1|freq_count|count[6]~29\ : std_logic;
SIGNAL \pwm1|freq_count|count[7]~30_combout\ : std_logic;
SIGNAL \pwm1|freq_count|count[7]~31\ : std_logic;
SIGNAL \pwm1|freq_count|count[8]~32_combout\ : std_logic;
SIGNAL \pwm1|pwm_out~0_combout\ : std_logic;
SIGNAL \pwm1|pwm_out~1_combout\ : std_logic;
SIGNAL \pwm1|pwm_out~2_combout\ : std_logic;
SIGNAL \pwm1|pwm_out~feeder_combout\ : std_logic;
SIGNAL \pwm1|pwm_out~q\ : std_logic;
SIGNAL \pwm1|pwm_out~clkctrl_outclk\ : std_logic;
SIGNAL \anemo|freq_count|count[0]~8_combout\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~0_combout\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~1\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~2_combout\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~3\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~4_combout\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~5\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~6_combout\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~7\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~8_combout\ : std_logic;
SIGNAL \anemo|clock_div|counter1|count~3_combout\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~9\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~10_combout\ : std_logic;
SIGNAL \anemo|clock_div|Equal1~2_combout\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~11\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~13\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~14_combout\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~15\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~16_combout\ : std_logic;
SIGNAL \anemo|clock_div|counter1|count~2_combout\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~17\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~19\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~20_combout\ : std_logic;
SIGNAL \anemo|clock_div|Equal1~1_combout\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~21\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~22_combout\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~23\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~24_combout\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~25\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~26_combout\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~27\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~28_combout\ : std_logic;
SIGNAL \anemo|clock_div|counter1|count~1_combout\ : std_logic;
SIGNAL \anemo|clock_div|Equal1~0_combout\ : std_logic;
SIGNAL \anemo|clock_div|Equal1~3_combout\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~18_combout\ : std_logic;
SIGNAL \anemo|clock_div|counter1|count~5_combout\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~29\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~30_combout\ : std_logic;
SIGNAL \anemo|clock_div|counter1|count~4_combout\ : std_logic;
SIGNAL \anemo|clock_div|Equal1~4_combout\ : std_logic;
SIGNAL \anemo|clock_div|counter1|Add0~12_combout\ : std_logic;
SIGNAL \anemo|clock_div|counter1|count~0_combout\ : std_logic;
SIGNAL \anemo|clock_div|Equal2~0_combout\ : std_logic;
SIGNAL \anemo|clock_div|Equal2~1_combout\ : std_logic;
SIGNAL \anemo|clock_div|Equal2~2_combout\ : std_logic;
SIGNAL \anemo|clock_div|Equal1~5_combout\ : std_logic;
SIGNAL \anemo|clock_div|subCLK~0_combout\ : std_logic;
SIGNAL \anemo|clock_div|subCLK~q\ : std_logic;
SIGNAL \anemo|clock_div|subCLK~clkctrl_outclk\ : std_logic;
SIGNAL \anemo|seconde_count|count[0]~16_combout\ : std_logic;
SIGNAL \anemo|seconde_count|count[0]~17\ : std_logic;
SIGNAL \anemo|seconde_count|count[1]~18_combout\ : std_logic;
SIGNAL \anemo|seconde_count|count[1]~19\ : std_logic;
SIGNAL \anemo|seconde_count|count[2]~20_combout\ : std_logic;
SIGNAL \anemo|seconde_count|count[2]~21\ : std_logic;
SIGNAL \anemo|seconde_count|count[3]~22_combout\ : std_logic;
SIGNAL \anemo|seconde_count|count[3]~23\ : std_logic;
SIGNAL \anemo|seconde_count|count[4]~24_combout\ : std_logic;
SIGNAL \anemo|seconde_count|count[4]~25\ : std_logic;
SIGNAL \anemo|seconde_count|count[5]~26_combout\ : std_logic;
SIGNAL \anemo|seconde_count|count[5]~27\ : std_logic;
SIGNAL \anemo|seconde_count|count[6]~28_combout\ : std_logic;
SIGNAL \anemo|seconde_count|count[6]~29\ : std_logic;
SIGNAL \anemo|seconde_count|count[7]~30_combout\ : std_logic;
SIGNAL \anemo|seconde_count|count[7]~31\ : std_logic;
SIGNAL \anemo|seconde_count|count[8]~32_combout\ : std_logic;
SIGNAL \anemo|seconde_count|count[8]~33\ : std_logic;
SIGNAL \anemo|seconde_count|count[9]~34_combout\ : std_logic;
SIGNAL \anemo|Selector2~0_combout\ : std_logic;
SIGNAL \anemo|Selector2~1_combout\ : std_logic;
SIGNAL \anemo|seconde_count|count[9]~35\ : std_logic;
SIGNAL \anemo|seconde_count|count[10]~36_combout\ : std_logic;
SIGNAL \anemo|seconde_count|count[10]~37\ : std_logic;
SIGNAL \anemo|seconde_count|count[11]~38_combout\ : std_logic;
SIGNAL \anemo|seconde_count|count[11]~39\ : std_logic;
SIGNAL \anemo|seconde_count|count[12]~40_combout\ : std_logic;
SIGNAL \anemo|seconde_count|count[12]~41\ : std_logic;
SIGNAL \anemo|seconde_count|count[13]~42_combout\ : std_logic;
SIGNAL \anemo|seconde_count|count[13]~43\ : std_logic;
SIGNAL \anemo|seconde_count|count[14]~44_combout\ : std_logic;
SIGNAL \anemo|seconde_count|count[14]~45\ : std_logic;
SIGNAL \anemo|seconde_count|count[15]~46_combout\ : std_logic;
SIGNAL \anemo|Selector2~2_combout\ : std_logic;
SIGNAL \anemo|Selector2~3_combout\ : std_logic;
SIGNAL \anemo|Selector1~0_combout\ : std_logic;
SIGNAL \anemo|present_State.state1~q\ : std_logic;
SIGNAL \anemo|Selector2~4_combout\ : std_logic;
SIGNAL \anemo|present_State.state2~q\ : std_logic;
SIGNAL \anemo|present_State.state3~q\ : std_logic;
SIGNAL \anemo|reset_counter~0_combout\ : std_logic;
SIGNAL \anemo|reset_counter~feeder_combout\ : std_logic;
SIGNAL \anemo|reset_counter~q\ : std_logic;
SIGNAL \anemo|data_anemometre[0]~feeder_combout\ : std_logic;
SIGNAL \anemo|freq_count|count[0]~9\ : std_logic;
SIGNAL \anemo|freq_count|count[1]~10_combout\ : std_logic;
SIGNAL \anemo|data_anemometre[1]~feeder_combout\ : std_logic;
SIGNAL \anemo|freq_count|count[1]~11\ : std_logic;
SIGNAL \anemo|freq_count|count[2]~12_combout\ : std_logic;
SIGNAL \anemo|data_anemometre[2]~feeder_combout\ : std_logic;
SIGNAL \anemo|freq_count|count[2]~13\ : std_logic;
SIGNAL \anemo|freq_count|count[3]~14_combout\ : std_logic;
SIGNAL \anemo|data_anemometre[3]~feeder_combout\ : std_logic;
SIGNAL \anemo|freq_count|count[3]~15\ : std_logic;
SIGNAL \anemo|freq_count|count[4]~16_combout\ : std_logic;
SIGNAL \anemo|data_anemometre[4]~feeder_combout\ : std_logic;
SIGNAL \anemo|freq_count|count[4]~17\ : std_logic;
SIGNAL \anemo|freq_count|count[5]~18_combout\ : std_logic;
SIGNAL \anemo|data_anemometre[5]~feeder_combout\ : std_logic;
SIGNAL \anemo|freq_count|count[5]~19\ : std_logic;
SIGNAL \anemo|freq_count|count[6]~20_combout\ : std_logic;
SIGNAL \anemo|data_anemometre[6]~feeder_combout\ : std_logic;
SIGNAL \anemo|freq_count|count[6]~21\ : std_logic;
SIGNAL \anemo|freq_count|count[7]~22_combout\ : std_logic;
SIGNAL \anemo|data_anemometre[7]~feeder_combout\ : std_logic;
SIGNAL \anemo|freq_count|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pwm1|clock_div|counter1|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \anemo|data_anemometre\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \anemo|seconde_count|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pwm1|freq_count|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \anemo|clock_div|counter1|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \anemo|ALT_INV_reset_counter~q\ : std_logic;

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pwm1|clock_div|subCLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pwm1|clock_div|subCLK~q\);

\anemo|clock_div|subCLK~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \anemo|clock_div|subCLK~q\);

\pwm1|pwm_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pwm1|pwm_out~q\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\anemo|ALT_INV_reset_counter~q\ <= NOT \anemo|reset_counter~q\;
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
	i => \anemo|data_anemometre\(0),
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
	i => \anemo|data_anemometre\(1),
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
	i => \anemo|data_anemometre\(2),
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
	i => \anemo|data_anemometre\(3),
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
	i => \anemo|data_anemometre\(4),
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
	i => \anemo|data_anemometre\(5),
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
	i => \anemo|data_anemometre\(6),
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
	i => \anemo|data_anemometre\(7),
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

-- Location: LCCOMB_X51_Y12_N0
\pwm1|clock_div|counter1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|counter1|Add0~0_combout\ = \pwm1|clock_div|counter1|count\(0) $ (VCC)
-- \pwm1|clock_div|counter1|Add0~1\ = CARRY(\pwm1|clock_div|counter1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm1|clock_div|counter1|count\(0),
	datad => VCC,
	combout => \pwm1|clock_div|counter1|Add0~0_combout\,
	cout => \pwm1|clock_div|counter1|Add0~1\);

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

-- Location: FF_X51_Y12_N1
\pwm1|clock_div|counter1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pwm1|clock_div|counter1|Add0~0_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|clock_div|counter1|count\(0));

-- Location: LCCOMB_X51_Y12_N2
\pwm1|clock_div|counter1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|counter1|Add0~2_combout\ = (\pwm1|clock_div|counter1|count\(1) & (!\pwm1|clock_div|counter1|Add0~1\)) # (!\pwm1|clock_div|counter1|count\(1) & ((\pwm1|clock_div|counter1|Add0~1\) # (GND)))
-- \pwm1|clock_div|counter1|Add0~3\ = CARRY((!\pwm1|clock_div|counter1|Add0~1\) # (!\pwm1|clock_div|counter1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm1|clock_div|counter1|count\(1),
	datad => VCC,
	cin => \pwm1|clock_div|counter1|Add0~1\,
	combout => \pwm1|clock_div|counter1|Add0~2_combout\,
	cout => \pwm1|clock_div|counter1|Add0~3\);

-- Location: FF_X51_Y12_N3
\pwm1|clock_div|counter1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pwm1|clock_div|counter1|Add0~2_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|clock_div|counter1|count\(1));

-- Location: LCCOMB_X51_Y12_N6
\pwm1|clock_div|counter1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|counter1|Add0~6_combout\ = (\pwm1|clock_div|counter1|count\(3) & (!\pwm1|clock_div|counter1|Add0~5\)) # (!\pwm1|clock_div|counter1|count\(3) & ((\pwm1|clock_div|counter1|Add0~5\) # (GND)))
-- \pwm1|clock_div|counter1|Add0~7\ = CARRY((!\pwm1|clock_div|counter1|Add0~5\) # (!\pwm1|clock_div|counter1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|clock_div|counter1|count\(3),
	datad => VCC,
	cin => \pwm1|clock_div|counter1|Add0~5\,
	combout => \pwm1|clock_div|counter1|Add0~6_combout\,
	cout => \pwm1|clock_div|counter1|Add0~7\);

-- Location: LCCOMB_X51_Y12_N8
\pwm1|clock_div|counter1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|counter1|Add0~8_combout\ = (\pwm1|clock_div|counter1|count\(4) & (\pwm1|clock_div|counter1|Add0~7\ $ (GND))) # (!\pwm1|clock_div|counter1|count\(4) & (!\pwm1|clock_div|counter1|Add0~7\ & VCC))
-- \pwm1|clock_div|counter1|Add0~9\ = CARRY((\pwm1|clock_div|counter1|count\(4) & !\pwm1|clock_div|counter1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm1|clock_div|counter1|count\(4),
	datad => VCC,
	cin => \pwm1|clock_div|counter1|Add0~7\,
	combout => \pwm1|clock_div|counter1|Add0~8_combout\,
	cout => \pwm1|clock_div|counter1|Add0~9\);

-- Location: LCCOMB_X52_Y12_N28
\pwm1|clock_div|counter1|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|counter1|count~4_combout\ = (\pwm1|clock_div|counter1|Add0~8_combout\ & ((!\pwm1|clock_div|Equal1~0_combout\) # (!\pwm1|clock_div|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|clock_div|Equal1~4_combout\,
	datac => \pwm1|clock_div|Equal1~0_combout\,
	datad => \pwm1|clock_div|counter1|Add0~8_combout\,
	combout => \pwm1|clock_div|counter1|count~4_combout\);

-- Location: FF_X52_Y12_N29
\pwm1|clock_div|counter1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pwm1|clock_div|counter1|count~4_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|clock_div|counter1|count\(4));

-- Location: LCCOMB_X51_Y12_N10
\pwm1|clock_div|counter1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|counter1|Add0~10_combout\ = (\pwm1|clock_div|counter1|count\(5) & (!\pwm1|clock_div|counter1|Add0~9\)) # (!\pwm1|clock_div|counter1|count\(5) & ((\pwm1|clock_div|counter1|Add0~9\) # (GND)))
-- \pwm1|clock_div|counter1|Add0~11\ = CARRY((!\pwm1|clock_div|counter1|Add0~9\) # (!\pwm1|clock_div|counter1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|clock_div|counter1|count\(5),
	datad => VCC,
	cin => \pwm1|clock_div|counter1|Add0~9\,
	combout => \pwm1|clock_div|counter1|Add0~10_combout\,
	cout => \pwm1|clock_div|counter1|Add0~11\);

-- Location: LCCOMB_X52_Y12_N20
\pwm1|clock_div|counter1|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|counter1|count~3_combout\ = (\pwm1|clock_div|counter1|Add0~10_combout\ & ((!\pwm1|clock_div|Equal1~0_combout\) # (!\pwm1|clock_div|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|clock_div|Equal1~4_combout\,
	datac => \pwm1|clock_div|Equal1~0_combout\,
	datad => \pwm1|clock_div|counter1|Add0~10_combout\,
	combout => \pwm1|clock_div|counter1|count~3_combout\);

-- Location: FF_X52_Y12_N21
\pwm1|clock_div|counter1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pwm1|clock_div|counter1|count~3_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|clock_div|counter1|count\(5));

-- Location: LCCOMB_X51_Y12_N12
\pwm1|clock_div|counter1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|counter1|Add0~12_combout\ = (\pwm1|clock_div|counter1|count\(6) & (\pwm1|clock_div|counter1|Add0~11\ $ (GND))) # (!\pwm1|clock_div|counter1|count\(6) & (!\pwm1|clock_div|counter1|Add0~11\ & VCC))
-- \pwm1|clock_div|counter1|Add0~13\ = CARRY((\pwm1|clock_div|counter1|count\(6) & !\pwm1|clock_div|counter1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm1|clock_div|counter1|count\(6),
	datad => VCC,
	cin => \pwm1|clock_div|counter1|Add0~11\,
	combout => \pwm1|clock_div|counter1|Add0~12_combout\,
	cout => \pwm1|clock_div|counter1|Add0~13\);

-- Location: LCCOMB_X52_Y12_N22
\pwm1|clock_div|counter1|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|counter1|count~2_combout\ = (\pwm1|clock_div|counter1|Add0~12_combout\ & ((!\pwm1|clock_div|Equal1~0_combout\) # (!\pwm1|clock_div|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|clock_div|Equal1~4_combout\,
	datac => \pwm1|clock_div|Equal1~0_combout\,
	datad => \pwm1|clock_div|counter1|Add0~12_combout\,
	combout => \pwm1|clock_div|counter1|count~2_combout\);

-- Location: FF_X52_Y12_N23
\pwm1|clock_div|counter1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pwm1|clock_div|counter1|count~2_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|clock_div|counter1|count\(6));

-- Location: LCCOMB_X52_Y12_N16
\pwm1|clock_div|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|Equal1~3_combout\ = (\pwm1|clock_div|counter1|count\(6) & (\pwm1|clock_div|counter1|count\(7) & (\pwm1|clock_div|counter1|count\(5) & \pwm1|clock_div|counter1|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|clock_div|counter1|count\(6),
	datab => \pwm1|clock_div|counter1|count\(7),
	datac => \pwm1|clock_div|counter1|count\(5),
	datad => \pwm1|clock_div|counter1|count\(4),
	combout => \pwm1|clock_div|Equal1~3_combout\);

-- Location: LCCOMB_X51_Y12_N16
\pwm1|clock_div|counter1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|counter1|Add0~16_combout\ = (\pwm1|clock_div|counter1|count\(8) & (\pwm1|clock_div|counter1|Add0~15\ $ (GND))) # (!\pwm1|clock_div|counter1|count\(8) & (!\pwm1|clock_div|counter1|Add0~15\ & VCC))
-- \pwm1|clock_div|counter1|Add0~17\ = CARRY((\pwm1|clock_div|counter1|count\(8) & !\pwm1|clock_div|counter1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|clock_div|counter1|count\(8),
	datad => VCC,
	cin => \pwm1|clock_div|counter1|Add0~15\,
	combout => \pwm1|clock_div|counter1|Add0~16_combout\,
	cout => \pwm1|clock_div|counter1|Add0~17\);

-- Location: LCCOMB_X51_Y12_N18
\pwm1|clock_div|counter1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|counter1|Add0~18_combout\ = (\pwm1|clock_div|counter1|count\(9) & (!\pwm1|clock_div|counter1|Add0~17\)) # (!\pwm1|clock_div|counter1|count\(9) & ((\pwm1|clock_div|counter1|Add0~17\) # (GND)))
-- \pwm1|clock_div|counter1|Add0~19\ = CARRY((!\pwm1|clock_div|counter1|Add0~17\) # (!\pwm1|clock_div|counter1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm1|clock_div|counter1|count\(9),
	datad => VCC,
	cin => \pwm1|clock_div|counter1|Add0~17\,
	combout => \pwm1|clock_div|counter1|Add0~18_combout\,
	cout => \pwm1|clock_div|counter1|Add0~19\);

-- Location: FF_X51_Y12_N19
\pwm1|clock_div|counter1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pwm1|clock_div|counter1|Add0~18_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|clock_div|counter1|count\(9));

-- Location: LCCOMB_X51_Y12_N20
\pwm1|clock_div|counter1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|counter1|Add0~20_combout\ = (\pwm1|clock_div|counter1|count\(10) & (\pwm1|clock_div|counter1|Add0~19\ $ (GND))) # (!\pwm1|clock_div|counter1|count\(10) & (!\pwm1|clock_div|counter1|Add0~19\ & VCC))
-- \pwm1|clock_div|counter1|Add0~21\ = CARRY((\pwm1|clock_div|counter1|count\(10) & !\pwm1|clock_div|counter1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm1|clock_div|counter1|count\(10),
	datad => VCC,
	cin => \pwm1|clock_div|counter1|Add0~19\,
	combout => \pwm1|clock_div|counter1|Add0~20_combout\,
	cout => \pwm1|clock_div|counter1|Add0~21\);

-- Location: FF_X51_Y12_N21
\pwm1|clock_div|counter1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pwm1|clock_div|counter1|Add0~20_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|clock_div|counter1|count\(10));

-- Location: LCCOMB_X51_Y12_N22
\pwm1|clock_div|counter1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|counter1|Add0~22_combout\ = (\pwm1|clock_div|counter1|count\(11) & (!\pwm1|clock_div|counter1|Add0~21\)) # (!\pwm1|clock_div|counter1|count\(11) & ((\pwm1|clock_div|counter1|Add0~21\) # (GND)))
-- \pwm1|clock_div|counter1|Add0~23\ = CARRY((!\pwm1|clock_div|counter1|Add0~21\) # (!\pwm1|clock_div|counter1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|clock_div|counter1|count\(11),
	datad => VCC,
	cin => \pwm1|clock_div|counter1|Add0~21\,
	combout => \pwm1|clock_div|counter1|Add0~22_combout\,
	cout => \pwm1|clock_div|counter1|Add0~23\);

-- Location: FF_X51_Y12_N23
\pwm1|clock_div|counter1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pwm1|clock_div|counter1|Add0~22_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|clock_div|counter1|count\(11));

-- Location: LCCOMB_X51_Y12_N24
\pwm1|clock_div|counter1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|counter1|Add0~24_combout\ = (\pwm1|clock_div|counter1|count\(12) & (\pwm1|clock_div|counter1|Add0~23\ $ (GND))) # (!\pwm1|clock_div|counter1|count\(12) & (!\pwm1|clock_div|counter1|Add0~23\ & VCC))
-- \pwm1|clock_div|counter1|Add0~25\ = CARRY((\pwm1|clock_div|counter1|count\(12) & !\pwm1|clock_div|counter1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm1|clock_div|counter1|count\(12),
	datad => VCC,
	cin => \pwm1|clock_div|counter1|Add0~23\,
	combout => \pwm1|clock_div|counter1|Add0~24_combout\,
	cout => \pwm1|clock_div|counter1|Add0~25\);

-- Location: FF_X51_Y12_N25
\pwm1|clock_div|counter1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pwm1|clock_div|counter1|Add0~24_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|clock_div|counter1|count\(12));

-- Location: LCCOMB_X52_Y12_N26
\pwm1|clock_div|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|Equal1~2_combout\ = (!\pwm1|clock_div|counter1|count\(12) & (!\pwm1|clock_div|counter1|count\(10) & (!\pwm1|clock_div|counter1|count\(11) & !\pwm1|clock_div|counter1|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|clock_div|counter1|count\(12),
	datab => \pwm1|clock_div|counter1|count\(10),
	datac => \pwm1|clock_div|counter1|count\(11),
	datad => \pwm1|clock_div|counter1|count\(9),
	combout => \pwm1|clock_div|Equal1~2_combout\);

-- Location: LCCOMB_X51_Y12_N26
\pwm1|clock_div|counter1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|counter1|Add0~26_combout\ = (\pwm1|clock_div|counter1|count\(13) & (!\pwm1|clock_div|counter1|Add0~25\)) # (!\pwm1|clock_div|counter1|count\(13) & ((\pwm1|clock_div|counter1|Add0~25\) # (GND)))
-- \pwm1|clock_div|counter1|Add0~27\ = CARRY((!\pwm1|clock_div|counter1|Add0~25\) # (!\pwm1|clock_div|counter1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|clock_div|counter1|count\(13),
	datad => VCC,
	cin => \pwm1|clock_div|counter1|Add0~25\,
	combout => \pwm1|clock_div|counter1|Add0~26_combout\,
	cout => \pwm1|clock_div|counter1|Add0~27\);

-- Location: FF_X51_Y12_N27
\pwm1|clock_div|counter1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pwm1|clock_div|counter1|Add0~26_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|clock_div|counter1|count\(13));

-- Location: LCCOMB_X51_Y12_N28
\pwm1|clock_div|counter1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|counter1|Add0~28_combout\ = (\pwm1|clock_div|counter1|count\(14) & (\pwm1|clock_div|counter1|Add0~27\ $ (GND))) # (!\pwm1|clock_div|counter1|count\(14) & (!\pwm1|clock_div|counter1|Add0~27\ & VCC))
-- \pwm1|clock_div|counter1|Add0~29\ = CARRY((\pwm1|clock_div|counter1|count\(14) & !\pwm1|clock_div|counter1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm1|clock_div|counter1|count\(14),
	datad => VCC,
	cin => \pwm1|clock_div|counter1|Add0~27\,
	combout => \pwm1|clock_div|counter1|Add0~28_combout\,
	cout => \pwm1|clock_div|counter1|Add0~29\);

-- Location: FF_X51_Y12_N29
\pwm1|clock_div|counter1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pwm1|clock_div|counter1|Add0~28_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|clock_div|counter1|count\(14));

-- Location: LCCOMB_X51_Y12_N30
\pwm1|clock_div|counter1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|counter1|Add0~30_combout\ = \pwm1|clock_div|counter1|count\(15) $ (\pwm1|clock_div|counter1|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|clock_div|counter1|count\(15),
	cin => \pwm1|clock_div|counter1|Add0~29\,
	combout => \pwm1|clock_div|counter1|Add0~30_combout\);

-- Location: FF_X51_Y12_N31
\pwm1|clock_div|counter1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pwm1|clock_div|counter1|Add0~30_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|clock_div|counter1|count\(15));

-- Location: LCCOMB_X52_Y12_N18
\pwm1|clock_div|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|Equal1~1_combout\ = (\pwm1|clock_div|counter1|count\(0) & (!\pwm1|clock_div|counter1|count\(15) & (!\pwm1|clock_div|counter1|count\(13) & !\pwm1|clock_div|counter1|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|clock_div|counter1|count\(0),
	datab => \pwm1|clock_div|counter1|count\(15),
	datac => \pwm1|clock_div|counter1|count\(13),
	datad => \pwm1|clock_div|counter1|count\(14),
	combout => \pwm1|clock_div|Equal1~1_combout\);

-- Location: LCCOMB_X52_Y12_N12
\pwm1|clock_div|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|Equal1~4_combout\ = (!\pwm1|clock_div|counter1|count\(2) & (\pwm1|clock_div|Equal1~3_combout\ & (\pwm1|clock_div|Equal1~2_combout\ & \pwm1|clock_div|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|clock_div|counter1|count\(2),
	datab => \pwm1|clock_div|Equal1~3_combout\,
	datac => \pwm1|clock_div|Equal1~2_combout\,
	datad => \pwm1|clock_div|Equal1~1_combout\,
	combout => \pwm1|clock_div|Equal1~4_combout\);

-- Location: LCCOMB_X51_Y12_N14
\pwm1|clock_div|counter1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|counter1|Add0~14_combout\ = (\pwm1|clock_div|counter1|count\(7) & (!\pwm1|clock_div|counter1|Add0~13\)) # (!\pwm1|clock_div|counter1|count\(7) & ((\pwm1|clock_div|counter1|Add0~13\) # (GND)))
-- \pwm1|clock_div|counter1|Add0~15\ = CARRY((!\pwm1|clock_div|counter1|Add0~13\) # (!\pwm1|clock_div|counter1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm1|clock_div|counter1|count\(7),
	datad => VCC,
	cin => \pwm1|clock_div|counter1|Add0~13\,
	combout => \pwm1|clock_div|counter1|Add0~14_combout\,
	cout => \pwm1|clock_div|counter1|Add0~15\);

-- Location: LCCOMB_X52_Y12_N24
\pwm1|clock_div|counter1|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|counter1|count~1_combout\ = (\pwm1|clock_div|counter1|Add0~14_combout\ & ((!\pwm1|clock_div|Equal1~0_combout\) # (!\pwm1|clock_div|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|clock_div|Equal1~4_combout\,
	datac => \pwm1|clock_div|Equal1~0_combout\,
	datad => \pwm1|clock_div|counter1|Add0~14_combout\,
	combout => \pwm1|clock_div|counter1|count~1_combout\);

-- Location: FF_X52_Y12_N25
\pwm1|clock_div|counter1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pwm1|clock_div|counter1|count~1_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|clock_div|counter1|count\(7));

-- Location: LCCOMB_X52_Y12_N6
\pwm1|clock_div|counter1|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|counter1|count~0_combout\ = (\pwm1|clock_div|counter1|Add0~16_combout\ & ((!\pwm1|clock_div|Equal1~4_combout\) # (!\pwm1|clock_div|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm1|clock_div|Equal1~0_combout\,
	datac => \pwm1|clock_div|counter1|Add0~16_combout\,
	datad => \pwm1|clock_div|Equal1~4_combout\,
	combout => \pwm1|clock_div|counter1|count~0_combout\);

-- Location: FF_X52_Y12_N7
\pwm1|clock_div|counter1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pwm1|clock_div|counter1|count~0_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|clock_div|counter1|count\(8));

-- Location: LCCOMB_X52_Y12_N14
\pwm1|clock_div|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|Equal1~0_combout\ = (\pwm1|clock_div|counter1|count\(1) & (!\pwm1|clock_div|counter1|count\(3) & \pwm1|clock_div|counter1|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|clock_div|counter1|count\(1),
	datac => \pwm1|clock_div|counter1|count\(3),
	datad => \pwm1|clock_div|counter1|count\(8),
	combout => \pwm1|clock_div|Equal1~0_combout\);

-- Location: LCCOMB_X51_Y12_N4
\pwm1|clock_div|counter1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|counter1|Add0~4_combout\ = (\pwm1|clock_div|counter1|count\(2) & (\pwm1|clock_div|counter1|Add0~3\ $ (GND))) # (!\pwm1|clock_div|counter1|count\(2) & (!\pwm1|clock_div|counter1|Add0~3\ & VCC))
-- \pwm1|clock_div|counter1|Add0~5\ = CARRY((\pwm1|clock_div|counter1|count\(2) & !\pwm1|clock_div|counter1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|clock_div|counter1|count\(2),
	datad => VCC,
	cin => \pwm1|clock_div|counter1|Add0~3\,
	combout => \pwm1|clock_div|counter1|Add0~4_combout\,
	cout => \pwm1|clock_div|counter1|Add0~5\);

-- Location: LCCOMB_X52_Y12_N30
\pwm1|clock_div|counter1|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|counter1|count~5_combout\ = (\pwm1|clock_div|counter1|Add0~4_combout\ & ((!\pwm1|clock_div|Equal1~4_combout\) # (!\pwm1|clock_div|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm1|clock_div|Equal1~0_combout\,
	datac => \pwm1|clock_div|counter1|Add0~4_combout\,
	datad => \pwm1|clock_div|Equal1~4_combout\,
	combout => \pwm1|clock_div|counter1|count~5_combout\);

-- Location: FF_X52_Y12_N31
\pwm1|clock_div|counter1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pwm1|clock_div|counter1|count~5_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|clock_div|counter1|count\(2));

-- Location: FF_X51_Y12_N7
\pwm1|clock_div|counter1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pwm1|clock_div|counter1|Add0~6_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|clock_div|counter1|count\(3));

-- Location: LCCOMB_X52_Y12_N10
\pwm1|clock_div|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|Equal2~0_combout\ = (!\pwm1|clock_div|counter1|count\(1) & (\pwm1|clock_div|counter1|count\(3) & !\pwm1|clock_div|counter1|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|clock_div|counter1|count\(1),
	datac => \pwm1|clock_div|counter1|count\(3),
	datad => \pwm1|clock_div|counter1|count\(8),
	combout => \pwm1|clock_div|Equal2~0_combout\);

-- Location: LCCOMB_X52_Y12_N8
\pwm1|clock_div|subCLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|subCLK~0_combout\ = \pwm1|clock_div|subCLK~q\ $ (((\pwm1|clock_div|Equal1~4_combout\ & ((\pwm1|clock_div|Equal2~0_combout\) # (\pwm1|clock_div|Equal1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|clock_div|Equal2~0_combout\,
	datab => \pwm1|clock_div|subCLK~q\,
	datac => \pwm1|clock_div|Equal1~0_combout\,
	datad => \pwm1|clock_div|Equal1~4_combout\,
	combout => \pwm1|clock_div|subCLK~0_combout\);

-- Location: LCCOMB_X52_Y12_N0
\pwm1|clock_div|subCLK~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|clock_div|subCLK~feeder_combout\ = \pwm1|clock_div|subCLK~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pwm1|clock_div|subCLK~0_combout\,
	combout => \pwm1|clock_div|subCLK~feeder_combout\);

-- Location: FF_X52_Y12_N1
\pwm1|clock_div|subCLK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pwm1|clock_div|subCLK~feeder_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|clock_div|subCLK~q\);

-- Location: CLKCTRL_G6
\pwm1|clock_div|subCLK~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pwm1|clock_div|subCLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pwm1|clock_div|subCLK~clkctrl_outclk\);

-- Location: LCCOMB_X20_Y3_N0
\pwm1|freq_count|count[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|freq_count|count[0]~16_combout\ = \pwm1|freq_count|count\(0) $ (VCC)
-- \pwm1|freq_count|count[0]~17\ = CARRY(\pwm1|freq_count|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pwm1|freq_count|count\(0),
	datad => VCC,
	combout => \pwm1|freq_count|count[0]~16_combout\,
	cout => \pwm1|freq_count|count[0]~17\);

-- Location: LCCOMB_X21_Y3_N18
\pwm1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|Equal0~3_combout\ = (!\pwm1|freq_count|count\(6) & (!\pwm1|freq_count|count\(2) & (!\pwm1|freq_count|count\(0) & \pwm1|freq_count|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|freq_count|count\(6),
	datab => \pwm1|freq_count|count\(2),
	datac => \pwm1|freq_count|count\(0),
	datad => \pwm1|freq_count|count\(4),
	combout => \pwm1|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y3_N26
\pwm1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|Equal0~2_combout\ = (!\pwm1|freq_count|count\(5) & (!\pwm1|freq_count|count\(3) & (\pwm1|freq_count|count\(8) & \pwm1|freq_count|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|freq_count|count\(5),
	datab => \pwm1|freq_count|count\(3),
	datac => \pwm1|freq_count|count\(8),
	datad => \pwm1|freq_count|count\(7),
	combout => \pwm1|Equal0~2_combout\);

-- Location: LCCOMB_X20_Y3_N16
\pwm1|freq_count|count[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|freq_count|count[8]~32_combout\ = (\pwm1|freq_count|count\(8) & (\pwm1|freq_count|count[7]~31\ $ (GND))) # (!\pwm1|freq_count|count\(8) & (!\pwm1|freq_count|count[7]~31\ & VCC))
-- \pwm1|freq_count|count[8]~33\ = CARRY((\pwm1|freq_count|count\(8) & !\pwm1|freq_count|count[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm1|freq_count|count\(8),
	datad => VCC,
	cin => \pwm1|freq_count|count[7]~31\,
	combout => \pwm1|freq_count|count[8]~32_combout\,
	cout => \pwm1|freq_count|count[8]~33\);

-- Location: LCCOMB_X20_Y3_N18
\pwm1|freq_count|count[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|freq_count|count[9]~34_combout\ = (\pwm1|freq_count|count\(9) & (!\pwm1|freq_count|count[8]~33\)) # (!\pwm1|freq_count|count\(9) & ((\pwm1|freq_count|count[8]~33\) # (GND)))
-- \pwm1|freq_count|count[9]~35\ = CARRY((!\pwm1|freq_count|count[8]~33\) # (!\pwm1|freq_count|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm1|freq_count|count\(9),
	datad => VCC,
	cin => \pwm1|freq_count|count[8]~33\,
	combout => \pwm1|freq_count|count[9]~34_combout\,
	cout => \pwm1|freq_count|count[9]~35\);

-- Location: FF_X20_Y3_N19
\pwm1|freq_count|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|clock_div|subCLK~clkctrl_outclk\,
	d => \pwm1|freq_count|count[9]~34_combout\,
	clrn => \pwm1|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|freq_count|count\(9));

-- Location: LCCOMB_X20_Y3_N20
\pwm1|freq_count|count[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|freq_count|count[10]~36_combout\ = (\pwm1|freq_count|count\(10) & (\pwm1|freq_count|count[9]~35\ $ (GND))) # (!\pwm1|freq_count|count\(10) & (!\pwm1|freq_count|count[9]~35\ & VCC))
-- \pwm1|freq_count|count[10]~37\ = CARRY((\pwm1|freq_count|count\(10) & !\pwm1|freq_count|count[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm1|freq_count|count\(10),
	datad => VCC,
	cin => \pwm1|freq_count|count[9]~35\,
	combout => \pwm1|freq_count|count[10]~36_combout\,
	cout => \pwm1|freq_count|count[10]~37\);

-- Location: FF_X20_Y3_N21
\pwm1|freq_count|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|clock_div|subCLK~clkctrl_outclk\,
	d => \pwm1|freq_count|count[10]~36_combout\,
	clrn => \pwm1|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|freq_count|count\(10));

-- Location: LCCOMB_X20_Y3_N22
\pwm1|freq_count|count[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|freq_count|count[11]~38_combout\ = (\pwm1|freq_count|count\(11) & (!\pwm1|freq_count|count[10]~37\)) # (!\pwm1|freq_count|count\(11) & ((\pwm1|freq_count|count[10]~37\) # (GND)))
-- \pwm1|freq_count|count[11]~39\ = CARRY((!\pwm1|freq_count|count[10]~37\) # (!\pwm1|freq_count|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|freq_count|count\(11),
	datad => VCC,
	cin => \pwm1|freq_count|count[10]~37\,
	combout => \pwm1|freq_count|count[11]~38_combout\,
	cout => \pwm1|freq_count|count[11]~39\);

-- Location: FF_X20_Y3_N23
\pwm1|freq_count|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|clock_div|subCLK~clkctrl_outclk\,
	d => \pwm1|freq_count|count[11]~38_combout\,
	clrn => \pwm1|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|freq_count|count\(11));

-- Location: LCCOMB_X20_Y3_N24
\pwm1|freq_count|count[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|freq_count|count[12]~40_combout\ = (\pwm1|freq_count|count\(12) & (\pwm1|freq_count|count[11]~39\ $ (GND))) # (!\pwm1|freq_count|count\(12) & (!\pwm1|freq_count|count[11]~39\ & VCC))
-- \pwm1|freq_count|count[12]~41\ = CARRY((\pwm1|freq_count|count\(12) & !\pwm1|freq_count|count[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm1|freq_count|count\(12),
	datad => VCC,
	cin => \pwm1|freq_count|count[11]~39\,
	combout => \pwm1|freq_count|count[12]~40_combout\,
	cout => \pwm1|freq_count|count[12]~41\);

-- Location: FF_X20_Y3_N25
\pwm1|freq_count|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|clock_div|subCLK~clkctrl_outclk\,
	d => \pwm1|freq_count|count[12]~40_combout\,
	clrn => \pwm1|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|freq_count|count\(12));

-- Location: LCCOMB_X20_Y3_N26
\pwm1|freq_count|count[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|freq_count|count[13]~42_combout\ = (\pwm1|freq_count|count\(13) & (!\pwm1|freq_count|count[12]~41\)) # (!\pwm1|freq_count|count\(13) & ((\pwm1|freq_count|count[12]~41\) # (GND)))
-- \pwm1|freq_count|count[13]~43\ = CARRY((!\pwm1|freq_count|count[12]~41\) # (!\pwm1|freq_count|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|freq_count|count\(13),
	datad => VCC,
	cin => \pwm1|freq_count|count[12]~41\,
	combout => \pwm1|freq_count|count[13]~42_combout\,
	cout => \pwm1|freq_count|count[13]~43\);

-- Location: FF_X20_Y3_N27
\pwm1|freq_count|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|clock_div|subCLK~clkctrl_outclk\,
	d => \pwm1|freq_count|count[13]~42_combout\,
	clrn => \pwm1|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|freq_count|count\(13));

-- Location: LCCOMB_X20_Y3_N28
\pwm1|freq_count|count[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|freq_count|count[14]~44_combout\ = (\pwm1|freq_count|count\(14) & (\pwm1|freq_count|count[13]~43\ $ (GND))) # (!\pwm1|freq_count|count\(14) & (!\pwm1|freq_count|count[13]~43\ & VCC))
-- \pwm1|freq_count|count[14]~45\ = CARRY((\pwm1|freq_count|count\(14) & !\pwm1|freq_count|count[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm1|freq_count|count\(14),
	datad => VCC,
	cin => \pwm1|freq_count|count[13]~43\,
	combout => \pwm1|freq_count|count[14]~44_combout\,
	cout => \pwm1|freq_count|count[14]~45\);

-- Location: FF_X20_Y3_N29
\pwm1|freq_count|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|clock_div|subCLK~clkctrl_outclk\,
	d => \pwm1|freq_count|count[14]~44_combout\,
	clrn => \pwm1|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|freq_count|count\(14));

-- Location: LCCOMB_X20_Y3_N30
\pwm1|freq_count|count[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|freq_count|count[15]~46_combout\ = \pwm1|freq_count|count\(15) $ (\pwm1|freq_count|count[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|freq_count|count\(15),
	cin => \pwm1|freq_count|count[14]~45\,
	combout => \pwm1|freq_count|count[15]~46_combout\);

-- Location: FF_X20_Y3_N31
\pwm1|freq_count|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|clock_div|subCLK~clkctrl_outclk\,
	d => \pwm1|freq_count|count[15]~46_combout\,
	clrn => \pwm1|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|freq_count|count\(15));

-- Location: LCCOMB_X21_Y3_N24
\pwm1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|Equal0~0_combout\ = (!\pwm1|freq_count|count\(11) & (!\pwm1|freq_count|count\(10) & (!\pwm1|freq_count|count\(9) & !\pwm1|freq_count|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|freq_count|count\(11),
	datab => \pwm1|freq_count|count\(10),
	datac => \pwm1|freq_count|count\(9),
	datad => \pwm1|freq_count|count\(12),
	combout => \pwm1|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y3_N30
\pwm1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|Equal0~1_combout\ = (!\pwm1|freq_count|count\(13) & (!\pwm1|freq_count|count\(14) & (!\pwm1|freq_count|count\(15) & \pwm1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|freq_count|count\(13),
	datab => \pwm1|freq_count|count\(14),
	datac => \pwm1|freq_count|count\(15),
	datad => \pwm1|Equal0~0_combout\,
	combout => \pwm1|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y3_N12
\pwm1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|Equal0~4_combout\ = ((\pwm1|freq_count|count\(1)) # ((!\pwm1|Equal0~1_combout\) # (!\pwm1|Equal0~2_combout\))) # (!\pwm1|Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|Equal0~3_combout\,
	datab => \pwm1|freq_count|count\(1),
	datac => \pwm1|Equal0~2_combout\,
	datad => \pwm1|Equal0~1_combout\,
	combout => \pwm1|Equal0~4_combout\);

-- Location: FF_X21_Y3_N13
\pwm1|reset_counter\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pwm1|Equal0~4_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|reset_counter~q\);

-- Location: FF_X20_Y3_N1
\pwm1|freq_count|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|clock_div|subCLK~clkctrl_outclk\,
	d => \pwm1|freq_count|count[0]~16_combout\,
	clrn => \pwm1|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|freq_count|count\(0));

-- Location: LCCOMB_X20_Y3_N2
\pwm1|freq_count|count[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|freq_count|count[1]~18_combout\ = (\pwm1|freq_count|count\(1) & (!\pwm1|freq_count|count[0]~17\)) # (!\pwm1|freq_count|count\(1) & ((\pwm1|freq_count|count[0]~17\) # (GND)))
-- \pwm1|freq_count|count[1]~19\ = CARRY((!\pwm1|freq_count|count[0]~17\) # (!\pwm1|freq_count|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm1|freq_count|count\(1),
	datad => VCC,
	cin => \pwm1|freq_count|count[0]~17\,
	combout => \pwm1|freq_count|count[1]~18_combout\,
	cout => \pwm1|freq_count|count[1]~19\);

-- Location: FF_X20_Y3_N3
\pwm1|freq_count|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|clock_div|subCLK~clkctrl_outclk\,
	d => \pwm1|freq_count|count[1]~18_combout\,
	clrn => \pwm1|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|freq_count|count\(1));

-- Location: LCCOMB_X20_Y3_N4
\pwm1|freq_count|count[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|freq_count|count[2]~20_combout\ = (\pwm1|freq_count|count\(2) & (\pwm1|freq_count|count[1]~19\ $ (GND))) # (!\pwm1|freq_count|count\(2) & (!\pwm1|freq_count|count[1]~19\ & VCC))
-- \pwm1|freq_count|count[2]~21\ = CARRY((\pwm1|freq_count|count\(2) & !\pwm1|freq_count|count[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm1|freq_count|count\(2),
	datad => VCC,
	cin => \pwm1|freq_count|count[1]~19\,
	combout => \pwm1|freq_count|count[2]~20_combout\,
	cout => \pwm1|freq_count|count[2]~21\);

-- Location: FF_X20_Y3_N5
\pwm1|freq_count|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|clock_div|subCLK~clkctrl_outclk\,
	d => \pwm1|freq_count|count[2]~20_combout\,
	clrn => \pwm1|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|freq_count|count\(2));

-- Location: LCCOMB_X20_Y3_N6
\pwm1|freq_count|count[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|freq_count|count[3]~22_combout\ = (\pwm1|freq_count|count\(3) & (!\pwm1|freq_count|count[2]~21\)) # (!\pwm1|freq_count|count\(3) & ((\pwm1|freq_count|count[2]~21\) # (GND)))
-- \pwm1|freq_count|count[3]~23\ = CARRY((!\pwm1|freq_count|count[2]~21\) # (!\pwm1|freq_count|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|freq_count|count\(3),
	datad => VCC,
	cin => \pwm1|freq_count|count[2]~21\,
	combout => \pwm1|freq_count|count[3]~22_combout\,
	cout => \pwm1|freq_count|count[3]~23\);

-- Location: FF_X20_Y3_N7
\pwm1|freq_count|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|clock_div|subCLK~clkctrl_outclk\,
	d => \pwm1|freq_count|count[3]~22_combout\,
	clrn => \pwm1|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|freq_count|count\(3));

-- Location: LCCOMB_X20_Y3_N8
\pwm1|freq_count|count[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|freq_count|count[4]~24_combout\ = (\pwm1|freq_count|count\(4) & (\pwm1|freq_count|count[3]~23\ $ (GND))) # (!\pwm1|freq_count|count\(4) & (!\pwm1|freq_count|count[3]~23\ & VCC))
-- \pwm1|freq_count|count[4]~25\ = CARRY((\pwm1|freq_count|count\(4) & !\pwm1|freq_count|count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm1|freq_count|count\(4),
	datad => VCC,
	cin => \pwm1|freq_count|count[3]~23\,
	combout => \pwm1|freq_count|count[4]~24_combout\,
	cout => \pwm1|freq_count|count[4]~25\);

-- Location: FF_X20_Y3_N9
\pwm1|freq_count|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|clock_div|subCLK~clkctrl_outclk\,
	d => \pwm1|freq_count|count[4]~24_combout\,
	clrn => \pwm1|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|freq_count|count\(4));

-- Location: LCCOMB_X20_Y3_N10
\pwm1|freq_count|count[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|freq_count|count[5]~26_combout\ = (\pwm1|freq_count|count\(5) & (!\pwm1|freq_count|count[4]~25\)) # (!\pwm1|freq_count|count\(5) & ((\pwm1|freq_count|count[4]~25\) # (GND)))
-- \pwm1|freq_count|count[5]~27\ = CARRY((!\pwm1|freq_count|count[4]~25\) # (!\pwm1|freq_count|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|freq_count|count\(5),
	datad => VCC,
	cin => \pwm1|freq_count|count[4]~25\,
	combout => \pwm1|freq_count|count[5]~26_combout\,
	cout => \pwm1|freq_count|count[5]~27\);

-- Location: FF_X20_Y3_N11
\pwm1|freq_count|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|clock_div|subCLK~clkctrl_outclk\,
	d => \pwm1|freq_count|count[5]~26_combout\,
	clrn => \pwm1|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|freq_count|count\(5));

-- Location: LCCOMB_X20_Y3_N12
\pwm1|freq_count|count[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|freq_count|count[6]~28_combout\ = (\pwm1|freq_count|count\(6) & (\pwm1|freq_count|count[5]~27\ $ (GND))) # (!\pwm1|freq_count|count\(6) & (!\pwm1|freq_count|count[5]~27\ & VCC))
-- \pwm1|freq_count|count[6]~29\ = CARRY((\pwm1|freq_count|count\(6) & !\pwm1|freq_count|count[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|freq_count|count\(6),
	datad => VCC,
	cin => \pwm1|freq_count|count[5]~27\,
	combout => \pwm1|freq_count|count[6]~28_combout\,
	cout => \pwm1|freq_count|count[6]~29\);

-- Location: FF_X20_Y3_N13
\pwm1|freq_count|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|clock_div|subCLK~clkctrl_outclk\,
	d => \pwm1|freq_count|count[6]~28_combout\,
	clrn => \pwm1|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|freq_count|count\(6));

-- Location: LCCOMB_X20_Y3_N14
\pwm1|freq_count|count[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|freq_count|count[7]~30_combout\ = (\pwm1|freq_count|count\(7) & (!\pwm1|freq_count|count[6]~29\)) # (!\pwm1|freq_count|count\(7) & ((\pwm1|freq_count|count[6]~29\) # (GND)))
-- \pwm1|freq_count|count[7]~31\ = CARRY((!\pwm1|freq_count|count[6]~29\) # (!\pwm1|freq_count|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwm1|freq_count|count\(7),
	datad => VCC,
	cin => \pwm1|freq_count|count[6]~29\,
	combout => \pwm1|freq_count|count[7]~30_combout\,
	cout => \pwm1|freq_count|count[7]~31\);

-- Location: FF_X20_Y3_N15
\pwm1|freq_count|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|clock_div|subCLK~clkctrl_outclk\,
	d => \pwm1|freq_count|count[7]~30_combout\,
	clrn => \pwm1|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|freq_count|count\(7));

-- Location: FF_X20_Y3_N17
\pwm1|freq_count|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|clock_div|subCLK~clkctrl_outclk\,
	d => \pwm1|freq_count|count[8]~32_combout\,
	clrn => \pwm1|reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|freq_count|count\(8));

-- Location: LCCOMB_X21_Y3_N28
\pwm1|pwm_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|pwm_out~0_combout\ = (\pwm1|freq_count|count\(4)) # ((\pwm1|freq_count|count\(5)) # ((\pwm1|freq_count|count\(3) & \pwm1|freq_count|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|freq_count|count\(4),
	datab => \pwm1|freq_count|count\(3),
	datac => \pwm1|freq_count|count\(5),
	datad => \pwm1|freq_count|count\(6),
	combout => \pwm1|pwm_out~0_combout\);

-- Location: LCCOMB_X21_Y3_N16
\pwm1|pwm_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|pwm_out~1_combout\ = (\pwm1|freq_count|count\(7) & ((\pwm1|freq_count|count\(6) & ((\pwm1|freq_count|count\(8)) # (\pwm1|pwm_out~0_combout\))) # (!\pwm1|freq_count|count\(6) & (\pwm1|freq_count|count\(8) & \pwm1|pwm_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|freq_count|count\(6),
	datab => \pwm1|freq_count|count\(7),
	datac => \pwm1|freq_count|count\(8),
	datad => \pwm1|pwm_out~0_combout\,
	combout => \pwm1|pwm_out~1_combout\);

-- Location: LCCOMB_X21_Y3_N22
\pwm1|pwm_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|pwm_out~2_combout\ = (\pwm1|Equal0~1_combout\ & ((\pwm1|freq_count|count\(8) & (\pwm1|pwm_out~q\ & \pwm1|pwm_out~1_combout\)) # (!\pwm1|freq_count|count\(8) & ((!\pwm1|pwm_out~1_combout\))))) # (!\pwm1|Equal0~1_combout\ & (\pwm1|pwm_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|pwm_out~q\,
	datab => \pwm1|freq_count|count\(8),
	datac => \pwm1|Equal0~1_combout\,
	datad => \pwm1|pwm_out~1_combout\,
	combout => \pwm1|pwm_out~2_combout\);

-- Location: LCCOMB_X21_Y3_N20
\pwm1|pwm_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \pwm1|pwm_out~feeder_combout\ = \pwm1|pwm_out~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwm1|pwm_out~2_combout\,
	combout => \pwm1|pwm_out~feeder_combout\);

-- Location: FF_X21_Y3_N21
\pwm1|pwm_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pwm1|pwm_out~feeder_combout\,
	clrn => \tb_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm1|pwm_out~q\);

-- Location: CLKCTRL_G17
\pwm1|pwm_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pwm1|pwm_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pwm1|pwm_out~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y29_N16
\anemo|freq_count|count[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|freq_count|count[0]~8_combout\ = \anemo|freq_count|count\(0) $ (VCC)
-- \anemo|freq_count|count[0]~9\ = CARRY(\anemo|freq_count|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \anemo|freq_count|count\(0),
	datad => VCC,
	combout => \anemo|freq_count|count[0]~8_combout\,
	cout => \anemo|freq_count|count[0]~9\);

-- Location: LCCOMB_X20_Y19_N0
\anemo|clock_div|counter1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|counter1|Add0~0_combout\ = \anemo|clock_div|counter1|count\(0) $ (VCC)
-- \anemo|clock_div|counter1|Add0~1\ = CARRY(\anemo|clock_div|counter1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \anemo|clock_div|counter1|count\(0),
	datad => VCC,
	combout => \anemo|clock_div|counter1|Add0~0_combout\,
	cout => \anemo|clock_div|counter1|Add0~1\);

-- Location: FF_X20_Y19_N1
\anemo|clock_div|counter1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|clock_div|counter1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|clock_div|counter1|count\(0));

-- Location: LCCOMB_X20_Y19_N2
\anemo|clock_div|counter1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|counter1|Add0~2_combout\ = (\anemo|clock_div|counter1|count\(1) & (!\anemo|clock_div|counter1|Add0~1\)) # (!\anemo|clock_div|counter1|count\(1) & ((\anemo|clock_div|counter1|Add0~1\) # (GND)))
-- \anemo|clock_div|counter1|Add0~3\ = CARRY((!\anemo|clock_div|counter1|Add0~1\) # (!\anemo|clock_div|counter1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anemo|clock_div|counter1|count\(1),
	datad => VCC,
	cin => \anemo|clock_div|counter1|Add0~1\,
	combout => \anemo|clock_div|counter1|Add0~2_combout\,
	cout => \anemo|clock_div|counter1|Add0~3\);

-- Location: FF_X20_Y19_N3
\anemo|clock_div|counter1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|clock_div|counter1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|clock_div|counter1|count\(1));

-- Location: LCCOMB_X20_Y19_N4
\anemo|clock_div|counter1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|counter1|Add0~4_combout\ = (\anemo|clock_div|counter1|count\(2) & (\anemo|clock_div|counter1|Add0~3\ $ (GND))) # (!\anemo|clock_div|counter1|count\(2) & (!\anemo|clock_div|counter1|Add0~3\ & VCC))
-- \anemo|clock_div|counter1|Add0~5\ = CARRY((\anemo|clock_div|counter1|count\(2) & !\anemo|clock_div|counter1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anemo|clock_div|counter1|count\(2),
	datad => VCC,
	cin => \anemo|clock_div|counter1|Add0~3\,
	combout => \anemo|clock_div|counter1|Add0~4_combout\,
	cout => \anemo|clock_div|counter1|Add0~5\);

-- Location: FF_X20_Y19_N5
\anemo|clock_div|counter1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|clock_div|counter1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|clock_div|counter1|count\(2));

-- Location: LCCOMB_X20_Y19_N6
\anemo|clock_div|counter1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|counter1|Add0~6_combout\ = (\anemo|clock_div|counter1|count\(3) & (!\anemo|clock_div|counter1|Add0~5\)) # (!\anemo|clock_div|counter1|count\(3) & ((\anemo|clock_div|counter1|Add0~5\) # (GND)))
-- \anemo|clock_div|counter1|Add0~7\ = CARRY((!\anemo|clock_div|counter1|Add0~5\) # (!\anemo|clock_div|counter1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|counter1|count\(3),
	datad => VCC,
	cin => \anemo|clock_div|counter1|Add0~5\,
	combout => \anemo|clock_div|counter1|Add0~6_combout\,
	cout => \anemo|clock_div|counter1|Add0~7\);

-- Location: FF_X20_Y19_N7
\anemo|clock_div|counter1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|clock_div|counter1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|clock_div|counter1|count\(3));

-- Location: LCCOMB_X20_Y19_N8
\anemo|clock_div|counter1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|counter1|Add0~8_combout\ = (\anemo|clock_div|counter1|count\(4) & (\anemo|clock_div|counter1|Add0~7\ $ (GND))) # (!\anemo|clock_div|counter1|count\(4) & (!\anemo|clock_div|counter1|Add0~7\ & VCC))
-- \anemo|clock_div|counter1|Add0~9\ = CARRY((\anemo|clock_div|counter1|count\(4) & !\anemo|clock_div|counter1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|counter1|count\(4),
	datad => VCC,
	cin => \anemo|clock_div|counter1|Add0~7\,
	combout => \anemo|clock_div|counter1|Add0~8_combout\,
	cout => \anemo|clock_div|counter1|Add0~9\);

-- Location: LCCOMB_X21_Y19_N2
\anemo|clock_div|counter1|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|counter1|count~3_combout\ = (\anemo|clock_div|counter1|Add0~8_combout\ & (((!\anemo|clock_div|Equal1~4_combout\) # (!\anemo|clock_div|Equal1~2_combout\)) # (!\anemo|clock_div|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|Equal1~3_combout\,
	datab => \anemo|clock_div|Equal1~2_combout\,
	datac => \anemo|clock_div|Equal1~4_combout\,
	datad => \anemo|clock_div|counter1|Add0~8_combout\,
	combout => \anemo|clock_div|counter1|count~3_combout\);

-- Location: FF_X21_Y19_N3
\anemo|clock_div|counter1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|clock_div|counter1|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|clock_div|counter1|count\(4));

-- Location: LCCOMB_X20_Y19_N10
\anemo|clock_div|counter1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|counter1|Add0~10_combout\ = (\anemo|clock_div|counter1|count\(5) & (!\anemo|clock_div|counter1|Add0~9\)) # (!\anemo|clock_div|counter1|count\(5) & ((\anemo|clock_div|counter1|Add0~9\) # (GND)))
-- \anemo|clock_div|counter1|Add0~11\ = CARRY((!\anemo|clock_div|counter1|Add0~9\) # (!\anemo|clock_div|counter1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|counter1|count\(5),
	datad => VCC,
	cin => \anemo|clock_div|counter1|Add0~9\,
	combout => \anemo|clock_div|counter1|Add0~10_combout\,
	cout => \anemo|clock_div|counter1|Add0~11\);

-- Location: FF_X20_Y19_N11
\anemo|clock_div|counter1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|clock_div|counter1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|clock_div|counter1|count\(5));

-- Location: LCCOMB_X21_Y19_N18
\anemo|clock_div|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|Equal1~2_combout\ = (\anemo|clock_div|counter1|count\(6) & (\anemo|clock_div|counter1|count\(3) & !\anemo|clock_div|counter1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|counter1|count\(6),
	datac => \anemo|clock_div|counter1|count\(3),
	datad => \anemo|clock_div|counter1|count\(5),
	combout => \anemo|clock_div|Equal1~2_combout\);

-- Location: LCCOMB_X20_Y19_N12
\anemo|clock_div|counter1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|counter1|Add0~12_combout\ = (\anemo|clock_div|counter1|count\(6) & (\anemo|clock_div|counter1|Add0~11\ $ (GND))) # (!\anemo|clock_div|counter1|count\(6) & (!\anemo|clock_div|counter1|Add0~11\ & VCC))
-- \anemo|clock_div|counter1|Add0~13\ = CARRY((\anemo|clock_div|counter1|count\(6) & !\anemo|clock_div|counter1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|counter1|count\(6),
	datad => VCC,
	cin => \anemo|clock_div|counter1|Add0~11\,
	combout => \anemo|clock_div|counter1|Add0~12_combout\,
	cout => \anemo|clock_div|counter1|Add0~13\);

-- Location: LCCOMB_X20_Y19_N14
\anemo|clock_div|counter1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|counter1|Add0~14_combout\ = (\anemo|clock_div|counter1|count\(7) & (!\anemo|clock_div|counter1|Add0~13\)) # (!\anemo|clock_div|counter1|count\(7) & ((\anemo|clock_div|counter1|Add0~13\) # (GND)))
-- \anemo|clock_div|counter1|Add0~15\ = CARRY((!\anemo|clock_div|counter1|Add0~13\) # (!\anemo|clock_div|counter1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anemo|clock_div|counter1|count\(7),
	datad => VCC,
	cin => \anemo|clock_div|counter1|Add0~13\,
	combout => \anemo|clock_div|counter1|Add0~14_combout\,
	cout => \anemo|clock_div|counter1|Add0~15\);

-- Location: FF_X20_Y19_N15
\anemo|clock_div|counter1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|clock_div|counter1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|clock_div|counter1|count\(7));

-- Location: LCCOMB_X20_Y19_N16
\anemo|clock_div|counter1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|counter1|Add0~16_combout\ = (\anemo|clock_div|counter1|count\(8) & (\anemo|clock_div|counter1|Add0~15\ $ (GND))) # (!\anemo|clock_div|counter1|count\(8) & (!\anemo|clock_div|counter1|Add0~15\ & VCC))
-- \anemo|clock_div|counter1|Add0~17\ = CARRY((\anemo|clock_div|counter1|count\(8) & !\anemo|clock_div|counter1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|counter1|count\(8),
	datad => VCC,
	cin => \anemo|clock_div|counter1|Add0~15\,
	combout => \anemo|clock_div|counter1|Add0~16_combout\,
	cout => \anemo|clock_div|counter1|Add0~17\);

-- Location: LCCOMB_X21_Y19_N20
\anemo|clock_div|counter1|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|counter1|count~2_combout\ = (\anemo|clock_div|counter1|Add0~16_combout\ & (((!\anemo|clock_div|Equal1~4_combout\) # (!\anemo|clock_div|Equal1~2_combout\)) # (!\anemo|clock_div|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|Equal1~3_combout\,
	datab => \anemo|clock_div|Equal1~2_combout\,
	datac => \anemo|clock_div|counter1|Add0~16_combout\,
	datad => \anemo|clock_div|Equal1~4_combout\,
	combout => \anemo|clock_div|counter1|count~2_combout\);

-- Location: FF_X21_Y19_N21
\anemo|clock_div|counter1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|clock_div|counter1|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|clock_div|counter1|count\(8));

-- Location: LCCOMB_X20_Y19_N18
\anemo|clock_div|counter1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|counter1|Add0~18_combout\ = (\anemo|clock_div|counter1|count\(9) & (!\anemo|clock_div|counter1|Add0~17\)) # (!\anemo|clock_div|counter1|count\(9) & ((\anemo|clock_div|counter1|Add0~17\) # (GND)))
-- \anemo|clock_div|counter1|Add0~19\ = CARRY((!\anemo|clock_div|counter1|Add0~17\) # (!\anemo|clock_div|counter1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anemo|clock_div|counter1|count\(9),
	datad => VCC,
	cin => \anemo|clock_div|counter1|Add0~17\,
	combout => \anemo|clock_div|counter1|Add0~18_combout\,
	cout => \anemo|clock_div|counter1|Add0~19\);

-- Location: LCCOMB_X20_Y19_N20
\anemo|clock_div|counter1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|counter1|Add0~20_combout\ = (\anemo|clock_div|counter1|count\(10) & (\anemo|clock_div|counter1|Add0~19\ $ (GND))) # (!\anemo|clock_div|counter1|count\(10) & (!\anemo|clock_div|counter1|Add0~19\ & VCC))
-- \anemo|clock_div|counter1|Add0~21\ = CARRY((\anemo|clock_div|counter1|count\(10) & !\anemo|clock_div|counter1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anemo|clock_div|counter1|count\(10),
	datad => VCC,
	cin => \anemo|clock_div|counter1|Add0~19\,
	combout => \anemo|clock_div|counter1|Add0~20_combout\,
	cout => \anemo|clock_div|counter1|Add0~21\);

-- Location: FF_X20_Y19_N21
\anemo|clock_div|counter1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|clock_div|counter1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|clock_div|counter1|count\(10));

-- Location: LCCOMB_X21_Y19_N26
\anemo|clock_div|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|Equal1~1_combout\ = (\anemo|clock_div|counter1|count\(8) & (!\anemo|clock_div|counter1|count\(4) & (\anemo|clock_div|counter1|count\(2) & !\anemo|clock_div|counter1|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|counter1|count\(8),
	datab => \anemo|clock_div|counter1|count\(4),
	datac => \anemo|clock_div|counter1|count\(2),
	datad => \anemo|clock_div|counter1|count\(10),
	combout => \anemo|clock_div|Equal1~1_combout\);

-- Location: LCCOMB_X20_Y19_N22
\anemo|clock_div|counter1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|counter1|Add0~22_combout\ = (\anemo|clock_div|counter1|count\(11) & (!\anemo|clock_div|counter1|Add0~21\)) # (!\anemo|clock_div|counter1|count\(11) & ((\anemo|clock_div|counter1|Add0~21\) # (GND)))
-- \anemo|clock_div|counter1|Add0~23\ = CARRY((!\anemo|clock_div|counter1|Add0~21\) # (!\anemo|clock_div|counter1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|counter1|count\(11),
	datad => VCC,
	cin => \anemo|clock_div|counter1|Add0~21\,
	combout => \anemo|clock_div|counter1|Add0~22_combout\,
	cout => \anemo|clock_div|counter1|Add0~23\);

-- Location: FF_X20_Y19_N23
\anemo|clock_div|counter1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|clock_div|counter1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|clock_div|counter1|count\(11));

-- Location: LCCOMB_X20_Y19_N24
\anemo|clock_div|counter1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|counter1|Add0~24_combout\ = (\anemo|clock_div|counter1|count\(12) & (\anemo|clock_div|counter1|Add0~23\ $ (GND))) # (!\anemo|clock_div|counter1|count\(12) & (!\anemo|clock_div|counter1|Add0~23\ & VCC))
-- \anemo|clock_div|counter1|Add0~25\ = CARRY((\anemo|clock_div|counter1|count\(12) & !\anemo|clock_div|counter1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anemo|clock_div|counter1|count\(12),
	datad => VCC,
	cin => \anemo|clock_div|counter1|Add0~23\,
	combout => \anemo|clock_div|counter1|Add0~24_combout\,
	cout => \anemo|clock_div|counter1|Add0~25\);

-- Location: FF_X20_Y19_N25
\anemo|clock_div|counter1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|clock_div|counter1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|clock_div|counter1|count\(12));

-- Location: LCCOMB_X20_Y19_N26
\anemo|clock_div|counter1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|counter1|Add0~26_combout\ = (\anemo|clock_div|counter1|count\(13) & (!\anemo|clock_div|counter1|Add0~25\)) # (!\anemo|clock_div|counter1|count\(13) & ((\anemo|clock_div|counter1|Add0~25\) # (GND)))
-- \anemo|clock_div|counter1|Add0~27\ = CARRY((!\anemo|clock_div|counter1|Add0~25\) # (!\anemo|clock_div|counter1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|counter1|count\(13),
	datad => VCC,
	cin => \anemo|clock_div|counter1|Add0~25\,
	combout => \anemo|clock_div|counter1|Add0~26_combout\,
	cout => \anemo|clock_div|counter1|Add0~27\);

-- Location: FF_X20_Y19_N27
\anemo|clock_div|counter1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|clock_div|counter1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|clock_div|counter1|count\(13));

-- Location: LCCOMB_X20_Y19_N28
\anemo|clock_div|counter1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|counter1|Add0~28_combout\ = (\anemo|clock_div|counter1|count\(14) & (\anemo|clock_div|counter1|Add0~27\ $ (GND))) # (!\anemo|clock_div|counter1|count\(14) & (!\anemo|clock_div|counter1|Add0~27\ & VCC))
-- \anemo|clock_div|counter1|Add0~29\ = CARRY((\anemo|clock_div|counter1|count\(14) & !\anemo|clock_div|counter1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|counter1|count\(14),
	datad => VCC,
	cin => \anemo|clock_div|counter1|Add0~27\,
	combout => \anemo|clock_div|counter1|Add0~28_combout\,
	cout => \anemo|clock_div|counter1|Add0~29\);

-- Location: LCCOMB_X21_Y19_N4
\anemo|clock_div|counter1|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|counter1|count~1_combout\ = (\anemo|clock_div|counter1|Add0~28_combout\ & (((!\anemo|clock_div|Equal1~4_combout\) # (!\anemo|clock_div|Equal1~2_combout\)) # (!\anemo|clock_div|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|Equal1~3_combout\,
	datab => \anemo|clock_div|Equal1~2_combout\,
	datac => \anemo|clock_div|Equal1~4_combout\,
	datad => \anemo|clock_div|counter1|Add0~28_combout\,
	combout => \anemo|clock_div|counter1|count~1_combout\);

-- Location: FF_X21_Y19_N5
\anemo|clock_div|counter1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|clock_div|counter1|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|clock_div|counter1|count\(14));

-- Location: LCCOMB_X21_Y19_N16
\anemo|clock_div|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|Equal1~0_combout\ = (\anemo|clock_div|counter1|count\(0) & (!\anemo|clock_div|counter1|count\(12) & (\anemo|clock_div|counter1|count\(14) & !\anemo|clock_div|counter1|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|counter1|count\(0),
	datab => \anemo|clock_div|counter1|count\(12),
	datac => \anemo|clock_div|counter1|count\(14),
	datad => \anemo|clock_div|counter1|count\(11),
	combout => \anemo|clock_div|Equal1~0_combout\);

-- Location: LCCOMB_X21_Y19_N10
\anemo|clock_div|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|Equal1~3_combout\ = (\anemo|clock_div|counter1|count\(1) & (\anemo|clock_div|Equal1~1_combout\ & \anemo|clock_div|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|counter1|count\(1),
	datac => \anemo|clock_div|Equal1~1_combout\,
	datad => \anemo|clock_div|Equal1~0_combout\,
	combout => \anemo|clock_div|Equal1~3_combout\);

-- Location: LCCOMB_X21_Y19_N22
\anemo|clock_div|counter1|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|counter1|count~5_combout\ = (\anemo|clock_div|counter1|Add0~18_combout\ & (((!\anemo|clock_div|Equal1~4_combout\) # (!\anemo|clock_div|Equal1~2_combout\)) # (!\anemo|clock_div|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|Equal1~3_combout\,
	datab => \anemo|clock_div|Equal1~2_combout\,
	datac => \anemo|clock_div|Equal1~4_combout\,
	datad => \anemo|clock_div|counter1|Add0~18_combout\,
	combout => \anemo|clock_div|counter1|count~5_combout\);

-- Location: FF_X21_Y19_N23
\anemo|clock_div|counter1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|clock_div|counter1|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|clock_div|counter1|count\(9));

-- Location: LCCOMB_X20_Y19_N30
\anemo|clock_div|counter1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|counter1|Add0~30_combout\ = \anemo|clock_div|counter1|Add0~29\ $ (\anemo|clock_div|counter1|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \anemo|clock_div|counter1|count\(15),
	cin => \anemo|clock_div|counter1|Add0~29\,
	combout => \anemo|clock_div|counter1|Add0~30_combout\);

-- Location: LCCOMB_X21_Y19_N28
\anemo|clock_div|counter1|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|counter1|count~4_combout\ = (\anemo|clock_div|counter1|Add0~30_combout\ & (((!\anemo|clock_div|Equal1~4_combout\) # (!\anemo|clock_div|Equal1~2_combout\)) # (!\anemo|clock_div|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|Equal1~3_combout\,
	datab => \anemo|clock_div|Equal1~2_combout\,
	datac => \anemo|clock_div|Equal1~4_combout\,
	datad => \anemo|clock_div|counter1|Add0~30_combout\,
	combout => \anemo|clock_div|counter1|count~4_combout\);

-- Location: FF_X21_Y19_N29
\anemo|clock_div|counter1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|clock_div|counter1|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|clock_div|counter1|count\(15));

-- Location: LCCOMB_X21_Y19_N8
\anemo|clock_div|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|Equal1~4_combout\ = (\anemo|clock_div|counter1|count\(9) & (\anemo|clock_div|counter1|count\(15) & (!\anemo|clock_div|counter1|count\(13) & !\anemo|clock_div|counter1|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|counter1|count\(9),
	datab => \anemo|clock_div|counter1|count\(15),
	datac => \anemo|clock_div|counter1|count\(13),
	datad => \anemo|clock_div|counter1|count\(7),
	combout => \anemo|clock_div|Equal1~4_combout\);

-- Location: LCCOMB_X21_Y19_N6
\anemo|clock_div|counter1|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|counter1|count~0_combout\ = (\anemo|clock_div|counter1|Add0~12_combout\ & (((!\anemo|clock_div|Equal1~3_combout\) # (!\anemo|clock_div|Equal1~2_combout\)) # (!\anemo|clock_div|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|Equal1~4_combout\,
	datab => \anemo|clock_div|Equal1~2_combout\,
	datac => \anemo|clock_div|Equal1~3_combout\,
	datad => \anemo|clock_div|counter1|Add0~12_combout\,
	combout => \anemo|clock_div|counter1|count~0_combout\);

-- Location: FF_X21_Y19_N7
\anemo|clock_div|counter1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|clock_div|counter1|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|clock_div|counter1|count\(6));

-- Location: LCCOMB_X21_Y19_N24
\anemo|clock_div|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|Equal2~0_combout\ = (!\anemo|clock_div|counter1|count\(6) & (!\anemo|clock_div|counter1|count\(3) & \anemo|clock_div|counter1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|counter1|count\(6),
	datab => \anemo|clock_div|counter1|count\(3),
	datad => \anemo|clock_div|counter1|count\(5),
	combout => \anemo|clock_div|Equal2~0_combout\);

-- Location: LCCOMB_X21_Y19_N30
\anemo|clock_div|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|Equal2~1_combout\ = (!\anemo|clock_div|counter1|count\(9) & (!\anemo|clock_div|counter1|count\(15) & (\anemo|clock_div|counter1|count\(13) & \anemo|clock_div|counter1|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|counter1|count\(9),
	datab => \anemo|clock_div|counter1|count\(15),
	datac => \anemo|clock_div|counter1|count\(13),
	datad => \anemo|clock_div|counter1|count\(7),
	combout => \anemo|clock_div|Equal2~1_combout\);

-- Location: LCCOMB_X21_Y19_N14
\anemo|clock_div|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|Equal2~2_combout\ = (\anemo|clock_div|counter1|count\(1) & (\anemo|clock_div|Equal1~0_combout\ & (\anemo|clock_div|Equal2~1_combout\ & \anemo|clock_div|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|counter1|count\(1),
	datab => \anemo|clock_div|Equal1~0_combout\,
	datac => \anemo|clock_div|Equal2~1_combout\,
	datad => \anemo|clock_div|Equal1~1_combout\,
	combout => \anemo|clock_div|Equal2~2_combout\);

-- Location: LCCOMB_X21_Y19_N12
\anemo|clock_div|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|Equal1~5_combout\ = (\anemo|clock_div|Equal1~2_combout\ & (\anemo|clock_div|Equal1~4_combout\ & \anemo|clock_div|Equal1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \anemo|clock_div|Equal1~2_combout\,
	datac => \anemo|clock_div|Equal1~4_combout\,
	datad => \anemo|clock_div|Equal1~3_combout\,
	combout => \anemo|clock_div|Equal1~5_combout\);

-- Location: LCCOMB_X21_Y19_N0
\anemo|clock_div|subCLK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|clock_div|subCLK~0_combout\ = \anemo|clock_div|subCLK~q\ $ (((\anemo|clock_div|Equal1~5_combout\) # ((\anemo|clock_div|Equal2~0_combout\ & \anemo|clock_div|Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|clock_div|subCLK~q\,
	datab => \anemo|clock_div|Equal2~0_combout\,
	datac => \anemo|clock_div|Equal2~2_combout\,
	datad => \anemo|clock_div|Equal1~5_combout\,
	combout => \anemo|clock_div|subCLK~0_combout\);

-- Location: FF_X21_Y19_N25
\anemo|clock_div|subCLK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \anemo|clock_div|subCLK~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|clock_div|subCLK~q\);

-- Location: CLKCTRL_G10
\anemo|clock_div|subCLK~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \anemo|clock_div|subCLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \anemo|clock_div|subCLK~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y29_N0
\anemo|seconde_count|count[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|seconde_count|count[0]~16_combout\ = \anemo|seconde_count|count\(0) $ (VCC)
-- \anemo|seconde_count|count[0]~17\ = CARRY(\anemo|seconde_count|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \anemo|seconde_count|count\(0),
	datad => VCC,
	combout => \anemo|seconde_count|count[0]~16_combout\,
	cout => \anemo|seconde_count|count[0]~17\);

-- Location: FF_X29_Y29_N1
\anemo|seconde_count|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \anemo|clock_div|subCLK~clkctrl_outclk\,
	d => \anemo|seconde_count|count[0]~16_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|seconde_count|count\(0));

-- Location: LCCOMB_X29_Y29_N2
\anemo|seconde_count|count[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|seconde_count|count[1]~18_combout\ = (\anemo|seconde_count|count\(1) & (!\anemo|seconde_count|count[0]~17\)) # (!\anemo|seconde_count|count\(1) & ((\anemo|seconde_count|count[0]~17\) # (GND)))
-- \anemo|seconde_count|count[1]~19\ = CARRY((!\anemo|seconde_count|count[0]~17\) # (!\anemo|seconde_count|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anemo|seconde_count|count\(1),
	datad => VCC,
	cin => \anemo|seconde_count|count[0]~17\,
	combout => \anemo|seconde_count|count[1]~18_combout\,
	cout => \anemo|seconde_count|count[1]~19\);

-- Location: FF_X29_Y29_N3
\anemo|seconde_count|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \anemo|clock_div|subCLK~clkctrl_outclk\,
	d => \anemo|seconde_count|count[1]~18_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|seconde_count|count\(1));

-- Location: LCCOMB_X29_Y29_N4
\anemo|seconde_count|count[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|seconde_count|count[2]~20_combout\ = (\anemo|seconde_count|count\(2) & (\anemo|seconde_count|count[1]~19\ $ (GND))) # (!\anemo|seconde_count|count\(2) & (!\anemo|seconde_count|count[1]~19\ & VCC))
-- \anemo|seconde_count|count[2]~21\ = CARRY((\anemo|seconde_count|count\(2) & !\anemo|seconde_count|count[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anemo|seconde_count|count\(2),
	datad => VCC,
	cin => \anemo|seconde_count|count[1]~19\,
	combout => \anemo|seconde_count|count[2]~20_combout\,
	cout => \anemo|seconde_count|count[2]~21\);

-- Location: FF_X29_Y29_N5
\anemo|seconde_count|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \anemo|clock_div|subCLK~clkctrl_outclk\,
	d => \anemo|seconde_count|count[2]~20_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|seconde_count|count\(2));

-- Location: LCCOMB_X29_Y29_N6
\anemo|seconde_count|count[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|seconde_count|count[3]~22_combout\ = (\anemo|seconde_count|count\(3) & (!\anemo|seconde_count|count[2]~21\)) # (!\anemo|seconde_count|count\(3) & ((\anemo|seconde_count|count[2]~21\) # (GND)))
-- \anemo|seconde_count|count[3]~23\ = CARRY((!\anemo|seconde_count|count[2]~21\) # (!\anemo|seconde_count|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|seconde_count|count\(3),
	datad => VCC,
	cin => \anemo|seconde_count|count[2]~21\,
	combout => \anemo|seconde_count|count[3]~22_combout\,
	cout => \anemo|seconde_count|count[3]~23\);

-- Location: FF_X29_Y29_N7
\anemo|seconde_count|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \anemo|clock_div|subCLK~clkctrl_outclk\,
	d => \anemo|seconde_count|count[3]~22_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|seconde_count|count\(3));

-- Location: LCCOMB_X29_Y29_N8
\anemo|seconde_count|count[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|seconde_count|count[4]~24_combout\ = (\anemo|seconde_count|count\(4) & (\anemo|seconde_count|count[3]~23\ $ (GND))) # (!\anemo|seconde_count|count\(4) & (!\anemo|seconde_count|count[3]~23\ & VCC))
-- \anemo|seconde_count|count[4]~25\ = CARRY((\anemo|seconde_count|count\(4) & !\anemo|seconde_count|count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anemo|seconde_count|count\(4),
	datad => VCC,
	cin => \anemo|seconde_count|count[3]~23\,
	combout => \anemo|seconde_count|count[4]~24_combout\,
	cout => \anemo|seconde_count|count[4]~25\);

-- Location: FF_X29_Y29_N9
\anemo|seconde_count|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \anemo|clock_div|subCLK~clkctrl_outclk\,
	d => \anemo|seconde_count|count[4]~24_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|seconde_count|count\(4));

-- Location: LCCOMB_X29_Y29_N10
\anemo|seconde_count|count[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|seconde_count|count[5]~26_combout\ = (\anemo|seconde_count|count\(5) & (!\anemo|seconde_count|count[4]~25\)) # (!\anemo|seconde_count|count\(5) & ((\anemo|seconde_count|count[4]~25\) # (GND)))
-- \anemo|seconde_count|count[5]~27\ = CARRY((!\anemo|seconde_count|count[4]~25\) # (!\anemo|seconde_count|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|seconde_count|count\(5),
	datad => VCC,
	cin => \anemo|seconde_count|count[4]~25\,
	combout => \anemo|seconde_count|count[5]~26_combout\,
	cout => \anemo|seconde_count|count[5]~27\);

-- Location: FF_X29_Y29_N11
\anemo|seconde_count|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \anemo|clock_div|subCLK~clkctrl_outclk\,
	d => \anemo|seconde_count|count[5]~26_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|seconde_count|count\(5));

-- Location: LCCOMB_X29_Y29_N12
\anemo|seconde_count|count[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|seconde_count|count[6]~28_combout\ = (\anemo|seconde_count|count\(6) & (\anemo|seconde_count|count[5]~27\ $ (GND))) # (!\anemo|seconde_count|count\(6) & (!\anemo|seconde_count|count[5]~27\ & VCC))
-- \anemo|seconde_count|count[6]~29\ = CARRY((\anemo|seconde_count|count\(6) & !\anemo|seconde_count|count[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|seconde_count|count\(6),
	datad => VCC,
	cin => \anemo|seconde_count|count[5]~27\,
	combout => \anemo|seconde_count|count[6]~28_combout\,
	cout => \anemo|seconde_count|count[6]~29\);

-- Location: FF_X29_Y29_N13
\anemo|seconde_count|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \anemo|clock_div|subCLK~clkctrl_outclk\,
	d => \anemo|seconde_count|count[6]~28_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|seconde_count|count\(6));

-- Location: LCCOMB_X29_Y29_N14
\anemo|seconde_count|count[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|seconde_count|count[7]~30_combout\ = (\anemo|seconde_count|count\(7) & (!\anemo|seconde_count|count[6]~29\)) # (!\anemo|seconde_count|count\(7) & ((\anemo|seconde_count|count[6]~29\) # (GND)))
-- \anemo|seconde_count|count[7]~31\ = CARRY((!\anemo|seconde_count|count[6]~29\) # (!\anemo|seconde_count|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anemo|seconde_count|count\(7),
	datad => VCC,
	cin => \anemo|seconde_count|count[6]~29\,
	combout => \anemo|seconde_count|count[7]~30_combout\,
	cout => \anemo|seconde_count|count[7]~31\);

-- Location: FF_X29_Y29_N15
\anemo|seconde_count|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \anemo|clock_div|subCLK~clkctrl_outclk\,
	d => \anemo|seconde_count|count[7]~30_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|seconde_count|count\(7));

-- Location: LCCOMB_X29_Y29_N16
\anemo|seconde_count|count[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|seconde_count|count[8]~32_combout\ = (\anemo|seconde_count|count\(8) & (\anemo|seconde_count|count[7]~31\ $ (GND))) # (!\anemo|seconde_count|count\(8) & (!\anemo|seconde_count|count[7]~31\ & VCC))
-- \anemo|seconde_count|count[8]~33\ = CARRY((\anemo|seconde_count|count\(8) & !\anemo|seconde_count|count[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anemo|seconde_count|count\(8),
	datad => VCC,
	cin => \anemo|seconde_count|count[7]~31\,
	combout => \anemo|seconde_count|count[8]~32_combout\,
	cout => \anemo|seconde_count|count[8]~33\);

-- Location: FF_X29_Y29_N17
\anemo|seconde_count|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \anemo|clock_div|subCLK~clkctrl_outclk\,
	d => \anemo|seconde_count|count[8]~32_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|seconde_count|count\(8));

-- Location: LCCOMB_X29_Y29_N18
\anemo|seconde_count|count[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|seconde_count|count[9]~34_combout\ = (\anemo|seconde_count|count\(9) & (!\anemo|seconde_count|count[8]~33\)) # (!\anemo|seconde_count|count\(9) & ((\anemo|seconde_count|count[8]~33\) # (GND)))
-- \anemo|seconde_count|count[9]~35\ = CARRY((!\anemo|seconde_count|count[8]~33\) # (!\anemo|seconde_count|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anemo|seconde_count|count\(9),
	datad => VCC,
	cin => \anemo|seconde_count|count[8]~33\,
	combout => \anemo|seconde_count|count[9]~34_combout\,
	cout => \anemo|seconde_count|count[9]~35\);

-- Location: FF_X29_Y29_N19
\anemo|seconde_count|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \anemo|clock_div|subCLK~clkctrl_outclk\,
	d => \anemo|seconde_count|count[9]~34_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|seconde_count|count\(9));

-- Location: LCCOMB_X30_Y29_N18
\anemo|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|Selector2~0_combout\ = (\anemo|seconde_count|count\(6) & (\anemo|seconde_count|count\(5) & ((\anemo|seconde_count|count\(3)) # (\anemo|seconde_count|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|seconde_count|count\(6),
	datab => \anemo|seconde_count|count\(3),
	datac => \anemo|seconde_count|count\(4),
	datad => \anemo|seconde_count|count\(5),
	combout => \anemo|Selector2~0_combout\);

-- Location: LCCOMB_X30_Y29_N8
\anemo|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|Selector2~1_combout\ = (\anemo|seconde_count|count\(7) & (\anemo|seconde_count|count\(9) & (\anemo|seconde_count|count\(8) & \anemo|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|seconde_count|count\(7),
	datab => \anemo|seconde_count|count\(9),
	datac => \anemo|seconde_count|count\(8),
	datad => \anemo|Selector2~0_combout\,
	combout => \anemo|Selector2~1_combout\);

-- Location: LCCOMB_X29_Y29_N20
\anemo|seconde_count|count[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|seconde_count|count[10]~36_combout\ = (\anemo|seconde_count|count\(10) & (\anemo|seconde_count|count[9]~35\ $ (GND))) # (!\anemo|seconde_count|count\(10) & (!\anemo|seconde_count|count[9]~35\ & VCC))
-- \anemo|seconde_count|count[10]~37\ = CARRY((\anemo|seconde_count|count\(10) & !\anemo|seconde_count|count[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anemo|seconde_count|count\(10),
	datad => VCC,
	cin => \anemo|seconde_count|count[9]~35\,
	combout => \anemo|seconde_count|count[10]~36_combout\,
	cout => \anemo|seconde_count|count[10]~37\);

-- Location: FF_X29_Y29_N21
\anemo|seconde_count|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \anemo|clock_div|subCLK~clkctrl_outclk\,
	d => \anemo|seconde_count|count[10]~36_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|seconde_count|count\(10));

-- Location: LCCOMB_X29_Y29_N22
\anemo|seconde_count|count[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|seconde_count|count[11]~38_combout\ = (\anemo|seconde_count|count\(11) & (!\anemo|seconde_count|count[10]~37\)) # (!\anemo|seconde_count|count\(11) & ((\anemo|seconde_count|count[10]~37\) # (GND)))
-- \anemo|seconde_count|count[11]~39\ = CARRY((!\anemo|seconde_count|count[10]~37\) # (!\anemo|seconde_count|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|seconde_count|count\(11),
	datad => VCC,
	cin => \anemo|seconde_count|count[10]~37\,
	combout => \anemo|seconde_count|count[11]~38_combout\,
	cout => \anemo|seconde_count|count[11]~39\);

-- Location: FF_X29_Y29_N23
\anemo|seconde_count|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \anemo|clock_div|subCLK~clkctrl_outclk\,
	d => \anemo|seconde_count|count[11]~38_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|seconde_count|count\(11));

-- Location: LCCOMB_X29_Y29_N24
\anemo|seconde_count|count[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|seconde_count|count[12]~40_combout\ = (\anemo|seconde_count|count\(12) & (\anemo|seconde_count|count[11]~39\ $ (GND))) # (!\anemo|seconde_count|count\(12) & (!\anemo|seconde_count|count[11]~39\ & VCC))
-- \anemo|seconde_count|count[12]~41\ = CARRY((\anemo|seconde_count|count\(12) & !\anemo|seconde_count|count[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anemo|seconde_count|count\(12),
	datad => VCC,
	cin => \anemo|seconde_count|count[11]~39\,
	combout => \anemo|seconde_count|count[12]~40_combout\,
	cout => \anemo|seconde_count|count[12]~41\);

-- Location: FF_X29_Y29_N25
\anemo|seconde_count|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \anemo|clock_div|subCLK~clkctrl_outclk\,
	d => \anemo|seconde_count|count[12]~40_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|seconde_count|count\(12));

-- Location: LCCOMB_X29_Y29_N26
\anemo|seconde_count|count[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|seconde_count|count[13]~42_combout\ = (\anemo|seconde_count|count\(13) & (!\anemo|seconde_count|count[12]~41\)) # (!\anemo|seconde_count|count\(13) & ((\anemo|seconde_count|count[12]~41\) # (GND)))
-- \anemo|seconde_count|count[13]~43\ = CARRY((!\anemo|seconde_count|count[12]~41\) # (!\anemo|seconde_count|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|seconde_count|count\(13),
	datad => VCC,
	cin => \anemo|seconde_count|count[12]~41\,
	combout => \anemo|seconde_count|count[13]~42_combout\,
	cout => \anemo|seconde_count|count[13]~43\);

-- Location: FF_X29_Y29_N27
\anemo|seconde_count|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \anemo|clock_div|subCLK~clkctrl_outclk\,
	d => \anemo|seconde_count|count[13]~42_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|seconde_count|count\(13));

-- Location: LCCOMB_X29_Y29_N28
\anemo|seconde_count|count[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|seconde_count|count[14]~44_combout\ = (\anemo|seconde_count|count\(14) & (\anemo|seconde_count|count[13]~43\ $ (GND))) # (!\anemo|seconde_count|count\(14) & (!\anemo|seconde_count|count[13]~43\ & VCC))
-- \anemo|seconde_count|count[14]~45\ = CARRY((\anemo|seconde_count|count\(14) & !\anemo|seconde_count|count[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anemo|seconde_count|count\(14),
	datad => VCC,
	cin => \anemo|seconde_count|count[13]~43\,
	combout => \anemo|seconde_count|count[14]~44_combout\,
	cout => \anemo|seconde_count|count[14]~45\);

-- Location: FF_X29_Y29_N29
\anemo|seconde_count|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \anemo|clock_div|subCLK~clkctrl_outclk\,
	d => \anemo|seconde_count|count[14]~44_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|seconde_count|count\(14));

-- Location: LCCOMB_X29_Y29_N30
\anemo|seconde_count|count[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|seconde_count|count[15]~46_combout\ = \anemo|seconde_count|count\(15) $ (\anemo|seconde_count|count[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|seconde_count|count\(15),
	cin => \anemo|seconde_count|count[14]~45\,
	combout => \anemo|seconde_count|count[15]~46_combout\);

-- Location: FF_X29_Y29_N31
\anemo|seconde_count|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \anemo|clock_div|subCLK~clkctrl_outclk\,
	d => \anemo|seconde_count|count[15]~46_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|seconde_count|count\(15));

-- Location: LCCOMB_X30_Y29_N6
\anemo|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|Selector2~2_combout\ = (\anemo|seconde_count|count\(10)) # ((\anemo|seconde_count|count\(11)) # ((\anemo|seconde_count|count\(13)) # (\anemo|seconde_count|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|seconde_count|count\(10),
	datab => \anemo|seconde_count|count\(11),
	datac => \anemo|seconde_count|count\(13),
	datad => \anemo|seconde_count|count\(12),
	combout => \anemo|Selector2~2_combout\);

-- Location: LCCOMB_X30_Y29_N0
\anemo|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|Selector2~3_combout\ = (\anemo|seconde_count|count\(15)) # ((\anemo|seconde_count|count\(14)) # (\anemo|Selector2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \anemo|seconde_count|count\(15),
	datac => \anemo|seconde_count|count\(14),
	datad => \anemo|Selector2~2_combout\,
	combout => \anemo|Selector2~3_combout\);

-- Location: LCCOMB_X30_Y29_N12
\anemo|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|Selector1~0_combout\ = (!\anemo|present_State.state2~q\ & (((!\anemo|Selector2~1_combout\ & !\anemo|Selector2~3_combout\)) # (!\anemo|present_State.state1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|present_State.state2~q\,
	datab => \anemo|Selector2~1_combout\,
	datac => \anemo|present_State.state1~q\,
	datad => \anemo|Selector2~3_combout\,
	combout => \anemo|Selector1~0_combout\);

-- Location: FF_X30_Y29_N13
\anemo|present_State.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|present_State.state1~q\);

-- Location: LCCOMB_X30_Y29_N4
\anemo|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|Selector2~4_combout\ = (\anemo|present_State.state1~q\ & ((\anemo|Selector2~1_combout\) # (\anemo|Selector2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|present_State.state1~q\,
	datac => \anemo|Selector2~1_combout\,
	datad => \anemo|Selector2~3_combout\,
	combout => \anemo|Selector2~4_combout\);

-- Location: FF_X30_Y29_N5
\anemo|present_State.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|Selector2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|present_State.state2~q\);

-- Location: FF_X30_Y29_N31
\anemo|present_State.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \anemo|present_State.state2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|present_State.state3~q\);

-- Location: LCCOMB_X30_Y29_N30
\anemo|reset_counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|reset_counter~0_combout\ = (!\anemo|present_State.state1~q\ & ((\anemo|reset_counter~q\) # ((!\anemo|present_State.state2~q\ & \anemo|present_State.state3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|reset_counter~q\,
	datab => \anemo|present_State.state2~q\,
	datac => \anemo|present_State.state3~q\,
	datad => \anemo|present_State.state1~q\,
	combout => \anemo|reset_counter~0_combout\);

-- Location: LCCOMB_X30_Y29_N26
\anemo|reset_counter~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|reset_counter~feeder_combout\ = \anemo|reset_counter~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \anemo|reset_counter~0_combout\,
	combout => \anemo|reset_counter~feeder_combout\);

-- Location: FF_X30_Y29_N27
\anemo|reset_counter\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|reset_counter~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|reset_counter~q\);

-- Location: FF_X31_Y29_N17
\anemo|freq_count|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|pwm_out~clkctrl_outclk\,
	d => \anemo|freq_count|count[0]~8_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|freq_count|count\(0));

-- Location: LCCOMB_X31_Y29_N0
\anemo|data_anemometre[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|data_anemometre[0]~feeder_combout\ = \anemo|freq_count|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \anemo|freq_count|count\(0),
	combout => \anemo|data_anemometre[0]~feeder_combout\);

-- Location: FF_X31_Y29_N1
\anemo|data_anemometre[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|data_anemometre[0]~feeder_combout\,
	ena => \anemo|present_State.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|data_anemometre\(0));

-- Location: LCCOMB_X31_Y29_N18
\anemo|freq_count|count[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|freq_count|count[1]~10_combout\ = (\anemo|freq_count|count\(1) & (!\anemo|freq_count|count[0]~9\)) # (!\anemo|freq_count|count\(1) & ((\anemo|freq_count|count[0]~9\) # (GND)))
-- \anemo|freq_count|count[1]~11\ = CARRY((!\anemo|freq_count|count[0]~9\) # (!\anemo|freq_count|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anemo|freq_count|count\(1),
	datad => VCC,
	cin => \anemo|freq_count|count[0]~9\,
	combout => \anemo|freq_count|count[1]~10_combout\,
	cout => \anemo|freq_count|count[1]~11\);

-- Location: FF_X31_Y29_N19
\anemo|freq_count|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|pwm_out~clkctrl_outclk\,
	d => \anemo|freq_count|count[1]~10_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|freq_count|count\(1));

-- Location: LCCOMB_X31_Y29_N10
\anemo|data_anemometre[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|data_anemometre[1]~feeder_combout\ = \anemo|freq_count|count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \anemo|freq_count|count\(1),
	combout => \anemo|data_anemometre[1]~feeder_combout\);

-- Location: FF_X31_Y29_N11
\anemo|data_anemometre[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|data_anemometre[1]~feeder_combout\,
	ena => \anemo|present_State.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|data_anemometre\(1));

-- Location: LCCOMB_X31_Y29_N20
\anemo|freq_count|count[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|freq_count|count[2]~12_combout\ = (\anemo|freq_count|count\(2) & (\anemo|freq_count|count[1]~11\ $ (GND))) # (!\anemo|freq_count|count\(2) & (!\anemo|freq_count|count[1]~11\ & VCC))
-- \anemo|freq_count|count[2]~13\ = CARRY((\anemo|freq_count|count\(2) & !\anemo|freq_count|count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anemo|freq_count|count\(2),
	datad => VCC,
	cin => \anemo|freq_count|count[1]~11\,
	combout => \anemo|freq_count|count[2]~12_combout\,
	cout => \anemo|freq_count|count[2]~13\);

-- Location: FF_X31_Y29_N21
\anemo|freq_count|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|pwm_out~clkctrl_outclk\,
	d => \anemo|freq_count|count[2]~12_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|freq_count|count\(2));

-- Location: LCCOMB_X31_Y29_N12
\anemo|data_anemometre[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|data_anemometre[2]~feeder_combout\ = \anemo|freq_count|count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \anemo|freq_count|count\(2),
	combout => \anemo|data_anemometre[2]~feeder_combout\);

-- Location: FF_X31_Y29_N13
\anemo|data_anemometre[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|data_anemometre[2]~feeder_combout\,
	ena => \anemo|present_State.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|data_anemometre\(2));

-- Location: LCCOMB_X31_Y29_N22
\anemo|freq_count|count[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|freq_count|count[3]~14_combout\ = (\anemo|freq_count|count\(3) & (!\anemo|freq_count|count[2]~13\)) # (!\anemo|freq_count|count\(3) & ((\anemo|freq_count|count[2]~13\) # (GND)))
-- \anemo|freq_count|count[3]~15\ = CARRY((!\anemo|freq_count|count[2]~13\) # (!\anemo|freq_count|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|freq_count|count\(3),
	datad => VCC,
	cin => \anemo|freq_count|count[2]~13\,
	combout => \anemo|freq_count|count[3]~14_combout\,
	cout => \anemo|freq_count|count[3]~15\);

-- Location: FF_X31_Y29_N23
\anemo|freq_count|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|pwm_out~clkctrl_outclk\,
	d => \anemo|freq_count|count[3]~14_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|freq_count|count\(3));

-- Location: LCCOMB_X31_Y29_N6
\anemo|data_anemometre[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|data_anemometre[3]~feeder_combout\ = \anemo|freq_count|count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \anemo|freq_count|count\(3),
	combout => \anemo|data_anemometre[3]~feeder_combout\);

-- Location: FF_X31_Y29_N7
\anemo|data_anemometre[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|data_anemometre[3]~feeder_combout\,
	ena => \anemo|present_State.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|data_anemometre\(3));

-- Location: LCCOMB_X31_Y29_N24
\anemo|freq_count|count[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|freq_count|count[4]~16_combout\ = (\anemo|freq_count|count\(4) & (\anemo|freq_count|count[3]~15\ $ (GND))) # (!\anemo|freq_count|count\(4) & (!\anemo|freq_count|count[3]~15\ & VCC))
-- \anemo|freq_count|count[4]~17\ = CARRY((\anemo|freq_count|count\(4) & !\anemo|freq_count|count[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \anemo|freq_count|count\(4),
	datad => VCC,
	cin => \anemo|freq_count|count[3]~15\,
	combout => \anemo|freq_count|count[4]~16_combout\,
	cout => \anemo|freq_count|count[4]~17\);

-- Location: FF_X31_Y29_N25
\anemo|freq_count|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|pwm_out~clkctrl_outclk\,
	d => \anemo|freq_count|count[4]~16_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|freq_count|count\(4));

-- Location: LCCOMB_X31_Y29_N4
\anemo|data_anemometre[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|data_anemometre[4]~feeder_combout\ = \anemo|freq_count|count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \anemo|freq_count|count\(4),
	combout => \anemo|data_anemometre[4]~feeder_combout\);

-- Location: FF_X31_Y29_N5
\anemo|data_anemometre[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|data_anemometre[4]~feeder_combout\,
	ena => \anemo|present_State.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|data_anemometre\(4));

-- Location: LCCOMB_X31_Y29_N26
\anemo|freq_count|count[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|freq_count|count[5]~18_combout\ = (\anemo|freq_count|count\(5) & (!\anemo|freq_count|count[4]~17\)) # (!\anemo|freq_count|count\(5) & ((\anemo|freq_count|count[4]~17\) # (GND)))
-- \anemo|freq_count|count[5]~19\ = CARRY((!\anemo|freq_count|count[4]~17\) # (!\anemo|freq_count|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|freq_count|count\(5),
	datad => VCC,
	cin => \anemo|freq_count|count[4]~17\,
	combout => \anemo|freq_count|count[5]~18_combout\,
	cout => \anemo|freq_count|count[5]~19\);

-- Location: FF_X31_Y29_N27
\anemo|freq_count|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|pwm_out~clkctrl_outclk\,
	d => \anemo|freq_count|count[5]~18_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|freq_count|count\(5));

-- Location: LCCOMB_X31_Y29_N14
\anemo|data_anemometre[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|data_anemometre[5]~feeder_combout\ = \anemo|freq_count|count\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \anemo|freq_count|count\(5),
	combout => \anemo|data_anemometre[5]~feeder_combout\);

-- Location: FF_X31_Y29_N15
\anemo|data_anemometre[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|data_anemometre[5]~feeder_combout\,
	ena => \anemo|present_State.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|data_anemometre\(5));

-- Location: LCCOMB_X31_Y29_N28
\anemo|freq_count|count[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|freq_count|count[6]~20_combout\ = (\anemo|freq_count|count\(6) & (\anemo|freq_count|count[5]~19\ $ (GND))) # (!\anemo|freq_count|count\(6) & (!\anemo|freq_count|count[5]~19\ & VCC))
-- \anemo|freq_count|count[6]~21\ = CARRY((\anemo|freq_count|count\(6) & !\anemo|freq_count|count[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \anemo|freq_count|count\(6),
	datad => VCC,
	cin => \anemo|freq_count|count[5]~19\,
	combout => \anemo|freq_count|count[6]~20_combout\,
	cout => \anemo|freq_count|count[6]~21\);

-- Location: FF_X31_Y29_N29
\anemo|freq_count|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|pwm_out~clkctrl_outclk\,
	d => \anemo|freq_count|count[6]~20_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|freq_count|count\(6));

-- Location: LCCOMB_X31_Y29_N8
\anemo|data_anemometre[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|data_anemometre[6]~feeder_combout\ = \anemo|freq_count|count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \anemo|freq_count|count\(6),
	combout => \anemo|data_anemometre[6]~feeder_combout\);

-- Location: FF_X31_Y29_N9
\anemo|data_anemometre[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|data_anemometre[6]~feeder_combout\,
	ena => \anemo|present_State.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|data_anemometre\(6));

-- Location: LCCOMB_X31_Y29_N30
\anemo|freq_count|count[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|freq_count|count[7]~22_combout\ = \anemo|freq_count|count[6]~21\ $ (\anemo|freq_count|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \anemo|freq_count|count\(7),
	cin => \anemo|freq_count|count[6]~21\,
	combout => \anemo|freq_count|count[7]~22_combout\);

-- Location: FF_X31_Y29_N31
\anemo|freq_count|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pwm1|pwm_out~clkctrl_outclk\,
	d => \anemo|freq_count|count[7]~22_combout\,
	clrn => \anemo|ALT_INV_reset_counter~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|freq_count|count\(7));

-- Location: LCCOMB_X31_Y29_N2
\anemo|data_anemometre[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \anemo|data_anemometre[7]~feeder_combout\ = \anemo|freq_count|count\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \anemo|freq_count|count\(7),
	combout => \anemo|data_anemometre[7]~feeder_combout\);

-- Location: FF_X31_Y29_N3
\anemo|data_anemometre[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \anemo|data_anemometre[7]~feeder_combout\,
	ena => \anemo|present_State.state2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \anemo|data_anemometre\(7));

ww_freq_out(0) <= \freq_out[0]~output_o\;

ww_freq_out(1) <= \freq_out[1]~output_o\;

ww_freq_out(2) <= \freq_out[2]~output_o\;

ww_freq_out(3) <= \freq_out[3]~output_o\;

ww_freq_out(4) <= \freq_out[4]~output_o\;

ww_freq_out(5) <= \freq_out[5]~output_o\;

ww_freq_out(6) <= \freq_out[6]~output_o\;

ww_freq_out(7) <= \freq_out[7]~output_o\;
END structure;


