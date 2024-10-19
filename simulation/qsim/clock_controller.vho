-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/15/2024 17:27:17"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	clock_controller IS
    PORT (
	clk_in : IN std_logic;
	reset : IN std_logic;
	mode : IN std_logic;
	set : IN std_logic;
	up_down : IN std_logic;
	sw1 : IN std_logic;
	sw0 : IN std_logic;
	led_out : BUFFER std_logic;
	seg_hour_high : BUFFER std_logic_vector(6 DOWNTO 0);
	seg_hour_low : BUFFER std_logic_vector(6 DOWNTO 0);
	seg_min_high : BUFFER std_logic_vector(6 DOWNTO 0);
	seg_min_low : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END clock_controller;

-- Design Ports Information
-- led_out	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_hour_high[0]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_hour_high[1]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_hour_high[2]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_hour_high[3]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_hour_high[4]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_hour_high[5]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_hour_high[6]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_hour_low[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_hour_low[1]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_hour_low[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_hour_low[3]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_hour_low[4]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_hour_low[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_hour_low[6]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_min_high[0]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_min_high[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_min_high[2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_min_high[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_min_high[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_min_high[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_min_high[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_min_low[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_min_low[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_min_low[2]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_min_low[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_min_low[4]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_min_low[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- seg_min_low[6]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sw1	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw0	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- up_down	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_in	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- set	=>  Location: PIN_A7,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- mode	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF clock_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_mode : std_logic;
SIGNAL ww_set : std_logic;
SIGNAL ww_up_down : std_logic;
SIGNAL ww_sw1 : std_logic;
SIGNAL ww_sw0 : std_logic;
SIGNAL ww_led_out : std_logic;
SIGNAL ww_seg_hour_high : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg_hour_low : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg_min_high : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg_min_low : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock_divider_inst|clk_divided~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led_out~output_o\ : std_logic;
SIGNAL \seg_hour_high[0]~output_o\ : std_logic;
SIGNAL \seg_hour_high[1]~output_o\ : std_logic;
SIGNAL \seg_hour_high[2]~output_o\ : std_logic;
SIGNAL \seg_hour_high[3]~output_o\ : std_logic;
SIGNAL \seg_hour_high[4]~output_o\ : std_logic;
SIGNAL \seg_hour_high[5]~output_o\ : std_logic;
SIGNAL \seg_hour_high[6]~output_o\ : std_logic;
SIGNAL \seg_hour_low[0]~output_o\ : std_logic;
SIGNAL \seg_hour_low[1]~output_o\ : std_logic;
SIGNAL \seg_hour_low[2]~output_o\ : std_logic;
SIGNAL \seg_hour_low[3]~output_o\ : std_logic;
SIGNAL \seg_hour_low[4]~output_o\ : std_logic;
SIGNAL \seg_hour_low[5]~output_o\ : std_logic;
SIGNAL \seg_hour_low[6]~output_o\ : std_logic;
SIGNAL \seg_min_high[0]~output_o\ : std_logic;
SIGNAL \seg_min_high[1]~output_o\ : std_logic;
SIGNAL \seg_min_high[2]~output_o\ : std_logic;
SIGNAL \seg_min_high[3]~output_o\ : std_logic;
SIGNAL \seg_min_high[4]~output_o\ : std_logic;
SIGNAL \seg_min_high[5]~output_o\ : std_logic;
SIGNAL \seg_min_high[6]~output_o\ : std_logic;
SIGNAL \seg_min_low[0]~output_o\ : std_logic;
SIGNAL \seg_min_low[1]~output_o\ : std_logic;
SIGNAL \seg_min_low[2]~output_o\ : std_logic;
SIGNAL \seg_min_low[3]~output_o\ : std_logic;
SIGNAL \seg_min_low[4]~output_o\ : std_logic;
SIGNAL \seg_min_low[5]~output_o\ : std_logic;
SIGNAL \seg_min_low[6]~output_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \clk_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock_divider_inst|Add0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clock_divider_inst|Add0~1\ : std_logic;
SIGNAL \clock_divider_inst|Add0~2_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~3\ : std_logic;
SIGNAL \clock_divider_inst|Add0~4_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~5\ : std_logic;
SIGNAL \clock_divider_inst|Add0~6_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~7\ : std_logic;
SIGNAL \clock_divider_inst|Add0~8_combout\ : std_logic;
SIGNAL \clock_divider_inst|Equal0~6_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~9\ : std_logic;
SIGNAL \clock_divider_inst|Add0~10_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~11\ : std_logic;
SIGNAL \clock_divider_inst|Add0~12_combout\ : std_logic;
SIGNAL \clock_divider_inst|counter~11_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~13\ : std_logic;
SIGNAL \clock_divider_inst|Add0~14_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~15\ : std_logic;
SIGNAL \clock_divider_inst|Add0~16_combout\ : std_logic;
SIGNAL \clock_divider_inst|Equal0~5_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~17\ : std_logic;
SIGNAL \clock_divider_inst|Add0~18_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~19\ : std_logic;
SIGNAL \clock_divider_inst|Add0~20_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~21\ : std_logic;
SIGNAL \clock_divider_inst|Add0~22_combout\ : std_logic;
SIGNAL \clock_divider_inst|counter~10_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~23\ : std_logic;
SIGNAL \clock_divider_inst|Add0~24_combout\ : std_logic;
SIGNAL \clock_divider_inst|counter~9_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~25\ : std_logic;
SIGNAL \clock_divider_inst|Add0~26_combout\ : std_logic;
SIGNAL \clock_divider_inst|counter~8_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~27\ : std_logic;
SIGNAL \clock_divider_inst|Add0~28_combout\ : std_logic;
SIGNAL \clock_divider_inst|counter~7_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~29\ : std_logic;
SIGNAL \clock_divider_inst|Add0~30_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~31\ : std_logic;
SIGNAL \clock_divider_inst|Add0~32_combout\ : std_logic;
SIGNAL \clock_divider_inst|counter~6_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~33\ : std_logic;
SIGNAL \clock_divider_inst|Add0~34_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~35\ : std_logic;
SIGNAL \clock_divider_inst|Add0~36_combout\ : std_logic;
SIGNAL \clock_divider_inst|counter~5_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~37\ : std_logic;
SIGNAL \clock_divider_inst|Add0~38_combout\ : std_logic;
SIGNAL \clock_divider_inst|counter~4_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~39\ : std_logic;
SIGNAL \clock_divider_inst|Add0~40_combout\ : std_logic;
SIGNAL \clock_divider_inst|counter~3_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~41\ : std_logic;
SIGNAL \clock_divider_inst|Add0~42_combout\ : std_logic;
SIGNAL \clock_divider_inst|counter~2_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~43\ : std_logic;
SIGNAL \clock_divider_inst|Add0~44_combout\ : std_logic;
SIGNAL \clock_divider_inst|counter~1_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~45\ : std_logic;
SIGNAL \clock_divider_inst|Add0~46_combout\ : std_logic;
SIGNAL \clock_divider_inst|Add0~47\ : std_logic;
SIGNAL \clock_divider_inst|Add0~48_combout\ : std_logic;
SIGNAL \clock_divider_inst|counter~0_combout\ : std_logic;
SIGNAL \clock_divider_inst|Equal0~0_combout\ : std_logic;
SIGNAL \clock_divider_inst|Equal0~1_combout\ : std_logic;
SIGNAL \clock_divider_inst|Equal0~2_combout\ : std_logic;
SIGNAL \clock_divider_inst|Equal0~3_combout\ : std_logic;
SIGNAL \clock_divider_inst|Equal0~4_combout\ : std_logic;
SIGNAL \clock_divider_inst|Equal0~7_combout\ : std_logic;
SIGNAL \clock_divider_inst|clk_divided~0_combout\ : std_logic;
SIGNAL \clock_divider_inst|clk_divided~feeder_combout\ : std_logic;
SIGNAL \clock_divider_inst|clk_divided~q\ : std_logic;
SIGNAL \clock_divider_inst|clk_divided~clkctrl_outclk\ : std_logic;
SIGNAL \sw0~input_o\ : std_logic;
SIGNAL \sw1~input_o\ : std_logic;
SIGNAL \up_down~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \min_count[0]~5_combout\ : std_logic;
SIGNAL \min_count[0]~_wirecell_combout\ : std_logic;
SIGNAL \current_state.SET_HOUR~feeder_combout\ : std_logic;
SIGNAL \mode~input_o\ : std_logic;
SIGNAL \debounce_mode|button_sync_0~0_combout\ : std_logic;
SIGNAL \debounce_mode|button_sync_0~q\ : std_logic;
SIGNAL \debounce_mode|button_sync_1~feeder_combout\ : std_logic;
SIGNAL \debounce_mode|button_sync_1~q\ : std_logic;
SIGNAL \debounce_mode|button_prev~feeder_combout\ : std_logic;
SIGNAL \debounce_mode|button_prev~q\ : std_logic;
SIGNAL \debounce_mode|process_1~0_combout\ : std_logic;
SIGNAL \debounce_mode|edge_detect~q\ : std_logic;
SIGNAL \current_state.SET_HOUR~q\ : std_logic;
SIGNAL \current_state.NORMAL~0_combout\ : std_logic;
SIGNAL \current_state.NORMAL~q\ : std_logic;
SIGNAL \current_state.SET_MINUTE~0_combout\ : std_logic;
SIGNAL \current_state.SET_MINUTE~q\ : std_logic;
SIGNAL \set~input_o\ : std_logic;
SIGNAL \debounce_set|button_sync_0~0_combout\ : std_logic;
SIGNAL \debounce_set|button_sync_0~q\ : std_logic;
SIGNAL \debounce_set|button_sync_1~q\ : std_logic;
SIGNAL \debounce_set|button_prev~feeder_combout\ : std_logic;
SIGNAL \debounce_set|button_prev~q\ : std_logic;
SIGNAL \debounce_set|process_1~0_combout\ : std_logic;
SIGNAL \debounce_set|edge_detect~feeder_combout\ : std_logic;
SIGNAL \debounce_set|edge_detect~q\ : std_logic;
SIGNAL \process_3~0_combout\ : std_logic;
SIGNAL \sec_counter|Add0~0_combout\ : std_logic;
SIGNAL \sec_counter|Add0~1\ : std_logic;
SIGNAL \sec_counter|Add0~2_combout\ : std_logic;
SIGNAL \sec_counter|Add0~3\ : std_logic;
SIGNAL \sec_counter|Add0~4_combout\ : std_logic;
SIGNAL \sec_counter|cnt~3_combout\ : std_logic;
SIGNAL \sec_counter|Add0~5\ : std_logic;
SIGNAL \sec_counter|Add0~6_combout\ : std_logic;
SIGNAL \sec_counter|cnt~2_combout\ : std_logic;
SIGNAL \sec_counter|Add0~7\ : std_logic;
SIGNAL \sec_counter|Add0~8_combout\ : std_logic;
SIGNAL \sec_counter|cnt~1_combout\ : std_logic;
SIGNAL \sec_counter|Add0~9\ : std_logic;
SIGNAL \sec_counter|Add0~10_combout\ : std_logic;
SIGNAL \sec_counter|cnt~0_combout\ : std_logic;
SIGNAL \sec_counter|Equal1~0_combout\ : std_logic;
SIGNAL \sec_counter|Equal1~1_combout\ : std_logic;
SIGNAL \sec_counter|carry_reg~q\ : std_logic;
SIGNAL \sec_carry_sync1~feeder_combout\ : std_logic;
SIGNAL \sec_carry_sync1~q\ : std_logic;
SIGNAL \sec_carry_sync2~feeder_combout\ : std_logic;
SIGNAL \sec_carry_sync2~q\ : std_logic;
SIGNAL \sec_carry_edge~0_combout\ : std_logic;
SIGNAL \sec_carry_edge~feeder_combout\ : std_logic;
SIGNAL \sec_carry_edge~q\ : std_logic;
SIGNAL \min_count[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~4_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \min_count[1]~4_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~0_combout\ : std_logic;
SIGNAL \min_count[5]~0_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \min_count[5]~6_combout\ : std_logic;
SIGNAL \min_count[5]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~2_combout\ : std_logic;
SIGNAL \min_count[3]~2_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[34]~1_combout\ : std_logic;
SIGNAL \min_count[4]~1_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \min_count~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\ : std_logic;
SIGNAL \min_count[2]~3_combout\ : std_logic;
SIGNAL \Add1~7_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[21]~33_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[21]~32_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[20]~34_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[20]~35_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[19]~37_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[19]~36_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[18]~38_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[18]~39_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_3~9\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[25]~49_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[27]~47_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[28]~46_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[26]~48_combout\ : std_logic;
SIGNAL \process_5~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_3~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \process_5~1_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[24]~45_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[25]~43_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \process_5~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[28]~40_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[27]~41_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[24]~44_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_4~9\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_4~11\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_4~12_combout\ : std_logic;
SIGNAL \process_5~3_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \led_state~1_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_4~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \led_state~0_combout\ : std_logic;
SIGNAL \led_state~2_combout\ : std_logic;
SIGNAL \led_state~3_combout\ : std_logic;
SIGNAL \led_on~1_combout\ : std_logic;
SIGNAL \led_on~q\ : std_logic;
SIGNAL \led_timer~0_combout\ : std_logic;
SIGNAL \led_state~6_combout\ : std_logic;
SIGNAL \led_timer[1]~1_combout\ : std_logic;
SIGNAL \led_timer~2_combout\ : std_logic;
SIGNAL \led_on~0_combout\ : std_logic;
SIGNAL \led_state~4_combout\ : std_logic;
SIGNAL \led_state~5_combout\ : std_logic;
SIGNAL \led_state~q\ : std_logic;
SIGNAL \process_4~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add3~1_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[22]~0_combout\ : std_logic;
SIGNAL \hour_count[2]~0_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \min_count[5]~10_combout\ : std_logic;
SIGNAL \min_carry~0_combout\ : std_logic;
SIGNAL \min_carry~q\ : std_logic;
SIGNAL \min_carry_sync1~feeder_combout\ : std_logic;
SIGNAL \min_carry_sync1~q\ : std_logic;
SIGNAL \min_carry_sync2~feeder_combout\ : std_logic;
SIGNAL \min_carry_sync2~q\ : std_logic;
SIGNAL \min_carry_edge~0_combout\ : std_logic;
SIGNAL \min_carry_edge~q\ : std_logic;
SIGNAL \hour_count[2]~9_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~2_combout\ : std_logic;
SIGNAL \hour_count[0]~2_combout\ : std_logic;
SIGNAL \hour_count[0]~_wirecell_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~1_combout\ : std_logic;
SIGNAL \hour_count[1]~1_combout\ : std_logic;
SIGNAL \Add3~3_combout\ : std_logic;
SIGNAL \hour_count[2]~3_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \hour_count~11_combout\ : std_logic;
SIGNAL \hour_count~12_combout\ : std_logic;
SIGNAL \hour_count~4_combout\ : std_logic;
SIGNAL \hour_count~10_combout\ : std_logic;
SIGNAL \hour_count~13_combout\ : std_logic;
SIGNAL \hour_count[2]~7_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~2_combout\ : std_logic;
SIGNAL \hour_count~6_combout\ : std_logic;
SIGNAL \hour_count~5_combout\ : std_logic;
SIGNAL \hour_count~8_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \hour_high_bcd_to_7seg|Mux6~0_combout\ : std_logic;
SIGNAL \hour_high_bcd_to_7seg|Mux4~0_combout\ : std_logic;
SIGNAL \hour_high_bcd_to_7seg|Mux1~0_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ : std_logic;
SIGNAL \hour_low_bcd_to_7seg|Mux6~0_combout\ : std_logic;
SIGNAL \hour_low_bcd_to_7seg|Mux5~0_combout\ : std_logic;
SIGNAL \hour_low_bcd_to_7seg|Mux4~0_combout\ : std_logic;
SIGNAL \hour_low_bcd_to_7seg|Mux3~0_combout\ : std_logic;
SIGNAL \hour_low_bcd_to_7seg|Mux2~0_combout\ : std_logic;
SIGNAL \hour_low_bcd_to_7seg|Mux1~0_combout\ : std_logic;
SIGNAL \hour_low_bcd_to_7seg|Mux0~0_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \min_high_bcd_to_7seg|Mux6~0_combout\ : std_logic;
SIGNAL \min_high_bcd_to_7seg|Mux5~0_combout\ : std_logic;
SIGNAL \min_high_bcd_to_7seg|Mux4~0_combout\ : std_logic;
SIGNAL \min_high_bcd_to_7seg|Mux3~0_combout\ : std_logic;
SIGNAL \min_high_bcd_to_7seg|Mux2~0_combout\ : std_logic;
SIGNAL \min_high_bcd_to_7seg|Mux1~0_combout\ : std_logic;
SIGNAL \min_high_bcd_to_7seg|Mux0~0_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[28]~42_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~43_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ : std_logic;
SIGNAL \min_low_bcd_to_7seg|Mux6~0_combout\ : std_logic;
SIGNAL \min_low_bcd_to_7seg|Mux5~0_combout\ : std_logic;
SIGNAL \min_low_bcd_to_7seg|Mux4~0_combout\ : std_logic;
SIGNAL \min_low_bcd_to_7seg|Mux3~0_combout\ : std_logic;
SIGNAL \min_low_bcd_to_7seg|Mux2~0_combout\ : std_logic;
SIGNAL \min_low_bcd_to_7seg|Mux1~0_combout\ : std_logic;
SIGNAL \min_low_bcd_to_7seg|Mux0~0_combout\ : std_logic;
SIGNAL hour_count : std_logic_vector(4 DOWNTO 0);
SIGNAL min_count : std_logic_vector(5 DOWNTO 0);
SIGNAL led_timer : std_logic_vector(1 DOWNTO 0);
SIGNAL \clock_divider_inst|counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \sec_counter|cnt\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \hour_bin_to_bcd|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \hour_low_bcd_to_7seg|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \min_low_bcd_to_7seg|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \min_high_bcd_to_7seg|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_in <= clk_in;
ww_reset <= reset;
ww_mode <= mode;
ww_set <= set;
ww_up_down <= up_down;
ww_sw1 <= sw1;
ww_sw0 <= sw0;
led_out <= ww_led_out;
seg_hour_high <= ww_seg_hour_high;
seg_hour_low <= ww_seg_hour_low;
seg_min_high <= ww_seg_min_high;
seg_min_low <= ww_seg_min_low;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clock_divider_inst|clk_divided~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_divider_inst|clk_divided~q\);

\clk_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_in~input_o\);
\hour_bin_to_bcd|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ <= NOT \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\;
\hour_low_bcd_to_7seg|ALT_INV_Mux0~0_combout\ <= NOT \hour_low_bcd_to_7seg|Mux0~0_combout\;
\min_low_bcd_to_7seg|ALT_INV_Mux0~0_combout\ <= NOT \min_low_bcd_to_7seg|Mux0~0_combout\;
\min_high_bcd_to_7seg|ALT_INV_Mux0~0_combout\ <= NOT \min_high_bcd_to_7seg|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\led_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led_state~q\,
	devoe => ww_devoe,
	o => \led_out~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\seg_hour_high[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_high_bcd_to_7seg|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \seg_hour_high[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\seg_hour_high[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \seg_hour_high[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\seg_hour_high[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_high_bcd_to_7seg|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \seg_hour_high[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\seg_hour_high[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_high_bcd_to_7seg|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \seg_hour_high[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\seg_hour_high[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \seg_hour_high[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\seg_hour_high[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_high_bcd_to_7seg|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \seg_hour_high[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\seg_hour_high[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	devoe => ww_devoe,
	o => \seg_hour_high[6]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\seg_hour_low[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_low_bcd_to_7seg|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \seg_hour_low[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\seg_hour_low[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_low_bcd_to_7seg|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \seg_hour_low[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\seg_hour_low[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_low_bcd_to_7seg|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \seg_hour_low[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\seg_hour_low[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_low_bcd_to_7seg|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \seg_hour_low[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\seg_hour_low[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_low_bcd_to_7seg|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \seg_hour_low[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\seg_hour_low[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_low_bcd_to_7seg|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \seg_hour_low[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\seg_hour_low[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hour_low_bcd_to_7seg|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \seg_hour_low[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\seg_min_high[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_high_bcd_to_7seg|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \seg_min_high[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\seg_min_high[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_high_bcd_to_7seg|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \seg_min_high[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\seg_min_high[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_high_bcd_to_7seg|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \seg_min_high[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\seg_min_high[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_high_bcd_to_7seg|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \seg_min_high[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\seg_min_high[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_high_bcd_to_7seg|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \seg_min_high[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\seg_min_high[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_high_bcd_to_7seg|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \seg_min_high[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\seg_min_high[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_high_bcd_to_7seg|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \seg_min_high[6]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\seg_min_low[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_low_bcd_to_7seg|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \seg_min_low[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\seg_min_low[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_low_bcd_to_7seg|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \seg_min_low[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\seg_min_low[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_low_bcd_to_7seg|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \seg_min_low[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\seg_min_low[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_low_bcd_to_7seg|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \seg_min_low[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\seg_min_low[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_low_bcd_to_7seg|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \seg_min_low[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\seg_min_low[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_low_bcd_to_7seg|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \seg_min_low[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\seg_min_low[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_low_bcd_to_7seg|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \seg_min_low[6]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: CLKCTRL_G19
\clk_in~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_in~inputclkctrl_outclk\);

-- Location: LCCOMB_X64_Y51_N8
\clock_divider_inst|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~0_combout\ = \clock_divider_inst|counter\(0) $ (VCC)
-- \clock_divider_inst|Add0~1\ = CARRY(\clock_divider_inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|counter\(0),
	datad => VCC,
	combout => \clock_divider_inst|Add0~0_combout\,
	cout => \clock_divider_inst|Add0~1\);

-- Location: IOIBUF_X69_Y54_N1
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X64_Y51_N9
\clock_divider_inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|Add0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(0));

-- Location: LCCOMB_X64_Y51_N10
\clock_divider_inst|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~2_combout\ = (\clock_divider_inst|counter\(1) & (!\clock_divider_inst|Add0~1\)) # (!\clock_divider_inst|counter\(1) & ((\clock_divider_inst|Add0~1\) # (GND)))
-- \clock_divider_inst|Add0~3\ = CARRY((!\clock_divider_inst|Add0~1\) # (!\clock_divider_inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|counter\(1),
	datad => VCC,
	cin => \clock_divider_inst|Add0~1\,
	combout => \clock_divider_inst|Add0~2_combout\,
	cout => \clock_divider_inst|Add0~3\);

-- Location: FF_X64_Y51_N11
\clock_divider_inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|Add0~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(1));

-- Location: LCCOMB_X64_Y51_N12
\clock_divider_inst|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~4_combout\ = (\clock_divider_inst|counter\(2) & (\clock_divider_inst|Add0~3\ $ (GND))) # (!\clock_divider_inst|counter\(2) & (!\clock_divider_inst|Add0~3\ & VCC))
-- \clock_divider_inst|Add0~5\ = CARRY((\clock_divider_inst|counter\(2) & !\clock_divider_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|counter\(2),
	datad => VCC,
	cin => \clock_divider_inst|Add0~3\,
	combout => \clock_divider_inst|Add0~4_combout\,
	cout => \clock_divider_inst|Add0~5\);

-- Location: FF_X64_Y51_N13
\clock_divider_inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|Add0~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(2));

-- Location: LCCOMB_X64_Y51_N14
\clock_divider_inst|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~6_combout\ = (\clock_divider_inst|counter\(3) & (!\clock_divider_inst|Add0~5\)) # (!\clock_divider_inst|counter\(3) & ((\clock_divider_inst|Add0~5\) # (GND)))
-- \clock_divider_inst|Add0~7\ = CARRY((!\clock_divider_inst|Add0~5\) # (!\clock_divider_inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|counter\(3),
	datad => VCC,
	cin => \clock_divider_inst|Add0~5\,
	combout => \clock_divider_inst|Add0~6_combout\,
	cout => \clock_divider_inst|Add0~7\);

-- Location: FF_X64_Y51_N15
\clock_divider_inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|Add0~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(3));

-- Location: LCCOMB_X64_Y51_N16
\clock_divider_inst|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~8_combout\ = (\clock_divider_inst|counter\(4) & (\clock_divider_inst|Add0~7\ $ (GND))) # (!\clock_divider_inst|counter\(4) & (!\clock_divider_inst|Add0~7\ & VCC))
-- \clock_divider_inst|Add0~9\ = CARRY((\clock_divider_inst|counter\(4) & !\clock_divider_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|counter\(4),
	datad => VCC,
	cin => \clock_divider_inst|Add0~7\,
	combout => \clock_divider_inst|Add0~8_combout\,
	cout => \clock_divider_inst|Add0~9\);

-- Location: FF_X64_Y51_N17
\clock_divider_inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|Add0~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(4));

-- Location: LCCOMB_X64_Y51_N6
\clock_divider_inst|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Equal0~6_combout\ = (\clock_divider_inst|counter\(2) & (\clock_divider_inst|counter\(4) & (\clock_divider_inst|counter\(1) & \clock_divider_inst|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|counter\(2),
	datab => \clock_divider_inst|counter\(4),
	datac => \clock_divider_inst|counter\(1),
	datad => \clock_divider_inst|counter\(3),
	combout => \clock_divider_inst|Equal0~6_combout\);

-- Location: LCCOMB_X64_Y51_N18
\clock_divider_inst|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~10_combout\ = (\clock_divider_inst|counter\(5) & (!\clock_divider_inst|Add0~9\)) # (!\clock_divider_inst|counter\(5) & ((\clock_divider_inst|Add0~9\) # (GND)))
-- \clock_divider_inst|Add0~11\ = CARRY((!\clock_divider_inst|Add0~9\) # (!\clock_divider_inst|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|counter\(5),
	datad => VCC,
	cin => \clock_divider_inst|Add0~9\,
	combout => \clock_divider_inst|Add0~10_combout\,
	cout => \clock_divider_inst|Add0~11\);

-- Location: FF_X64_Y51_N19
\clock_divider_inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|Add0~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(5));

-- Location: LCCOMB_X64_Y51_N20
\clock_divider_inst|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~12_combout\ = (\clock_divider_inst|counter\(6) & (\clock_divider_inst|Add0~11\ $ (GND))) # (!\clock_divider_inst|counter\(6) & (!\clock_divider_inst|Add0~11\ & VCC))
-- \clock_divider_inst|Add0~13\ = CARRY((\clock_divider_inst|counter\(6) & !\clock_divider_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|counter\(6),
	datad => VCC,
	cin => \clock_divider_inst|Add0~11\,
	combout => \clock_divider_inst|Add0~12_combout\,
	cout => \clock_divider_inst|Add0~13\);

-- Location: LCCOMB_X64_Y51_N2
\clock_divider_inst|counter~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|counter~11_combout\ = (\clock_divider_inst|Add0~12_combout\ & !\clock_divider_inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|Add0~12_combout\,
	datac => \clock_divider_inst|Equal0~7_combout\,
	combout => \clock_divider_inst|counter~11_combout\);

-- Location: FF_X64_Y51_N3
\clock_divider_inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|counter~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(6));

-- Location: LCCOMB_X64_Y51_N22
\clock_divider_inst|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~14_combout\ = (\clock_divider_inst|counter\(7) & (!\clock_divider_inst|Add0~13\)) # (!\clock_divider_inst|counter\(7) & ((\clock_divider_inst|Add0~13\) # (GND)))
-- \clock_divider_inst|Add0~15\ = CARRY((!\clock_divider_inst|Add0~13\) # (!\clock_divider_inst|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|counter\(7),
	datad => VCC,
	cin => \clock_divider_inst|Add0~13\,
	combout => \clock_divider_inst|Add0~14_combout\,
	cout => \clock_divider_inst|Add0~15\);

-- Location: FF_X64_Y51_N23
\clock_divider_inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|Add0~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(7));

-- Location: LCCOMB_X64_Y51_N24
\clock_divider_inst|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~16_combout\ = (\clock_divider_inst|counter\(8) & (\clock_divider_inst|Add0~15\ $ (GND))) # (!\clock_divider_inst|counter\(8) & (!\clock_divider_inst|Add0~15\ & VCC))
-- \clock_divider_inst|Add0~17\ = CARRY((\clock_divider_inst|counter\(8) & !\clock_divider_inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|counter\(8),
	datad => VCC,
	cin => \clock_divider_inst|Add0~15\,
	combout => \clock_divider_inst|Add0~16_combout\,
	cout => \clock_divider_inst|Add0~17\);

-- Location: FF_X64_Y51_N25
\clock_divider_inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|Add0~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(8));

-- Location: LCCOMB_X64_Y51_N4
\clock_divider_inst|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Equal0~5_combout\ = (!\clock_divider_inst|counter\(7) & (\clock_divider_inst|counter\(5) & (!\clock_divider_inst|counter\(6) & !\clock_divider_inst|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|counter\(7),
	datab => \clock_divider_inst|counter\(5),
	datac => \clock_divider_inst|counter\(6),
	datad => \clock_divider_inst|counter\(8),
	combout => \clock_divider_inst|Equal0~5_combout\);

-- Location: LCCOMB_X64_Y51_N26
\clock_divider_inst|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~18_combout\ = (\clock_divider_inst|counter\(9) & (!\clock_divider_inst|Add0~17\)) # (!\clock_divider_inst|counter\(9) & ((\clock_divider_inst|Add0~17\) # (GND)))
-- \clock_divider_inst|Add0~19\ = CARRY((!\clock_divider_inst|Add0~17\) # (!\clock_divider_inst|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|counter\(9),
	datad => VCC,
	cin => \clock_divider_inst|Add0~17\,
	combout => \clock_divider_inst|Add0~18_combout\,
	cout => \clock_divider_inst|Add0~19\);

-- Location: FF_X64_Y51_N27
\clock_divider_inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|Add0~18_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(9));

-- Location: LCCOMB_X64_Y51_N28
\clock_divider_inst|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~20_combout\ = (\clock_divider_inst|counter\(10) & (\clock_divider_inst|Add0~19\ $ (GND))) # (!\clock_divider_inst|counter\(10) & (!\clock_divider_inst|Add0~19\ & VCC))
-- \clock_divider_inst|Add0~21\ = CARRY((\clock_divider_inst|counter\(10) & !\clock_divider_inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|counter\(10),
	datad => VCC,
	cin => \clock_divider_inst|Add0~19\,
	combout => \clock_divider_inst|Add0~20_combout\,
	cout => \clock_divider_inst|Add0~21\);

-- Location: FF_X64_Y51_N29
\clock_divider_inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|Add0~20_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(10));

-- Location: LCCOMB_X64_Y51_N30
\clock_divider_inst|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~22_combout\ = (\clock_divider_inst|counter\(11) & (!\clock_divider_inst|Add0~21\)) # (!\clock_divider_inst|counter\(11) & ((\clock_divider_inst|Add0~21\) # (GND)))
-- \clock_divider_inst|Add0~23\ = CARRY((!\clock_divider_inst|Add0~21\) # (!\clock_divider_inst|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|counter\(11),
	datad => VCC,
	cin => \clock_divider_inst|Add0~21\,
	combout => \clock_divider_inst|Add0~22_combout\,
	cout => \clock_divider_inst|Add0~23\);

-- Location: LCCOMB_X64_Y51_N0
\clock_divider_inst|counter~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|counter~10_combout\ = (!\clock_divider_inst|Equal0~7_combout\ & \clock_divider_inst|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|Equal0~7_combout\,
	datac => \clock_divider_inst|Add0~22_combout\,
	combout => \clock_divider_inst|counter~10_combout\);

-- Location: FF_X64_Y51_N1
\clock_divider_inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|counter~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(11));

-- Location: LCCOMB_X64_Y50_N0
\clock_divider_inst|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~24_combout\ = (\clock_divider_inst|counter\(12) & (\clock_divider_inst|Add0~23\ $ (GND))) # (!\clock_divider_inst|counter\(12) & (!\clock_divider_inst|Add0~23\ & VCC))
-- \clock_divider_inst|Add0~25\ = CARRY((\clock_divider_inst|counter\(12) & !\clock_divider_inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|counter\(12),
	datad => VCC,
	cin => \clock_divider_inst|Add0~23\,
	combout => \clock_divider_inst|Add0~24_combout\,
	cout => \clock_divider_inst|Add0~25\);

-- Location: LCCOMB_X65_Y50_N10
\clock_divider_inst|counter~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|counter~9_combout\ = (!\clock_divider_inst|Equal0~7_combout\ & \clock_divider_inst|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|Equal0~7_combout\,
	datac => \clock_divider_inst|Add0~24_combout\,
	combout => \clock_divider_inst|counter~9_combout\);

-- Location: FF_X65_Y50_N11
\clock_divider_inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|counter~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(12));

-- Location: LCCOMB_X64_Y50_N2
\clock_divider_inst|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~26_combout\ = (\clock_divider_inst|counter\(13) & (!\clock_divider_inst|Add0~25\)) # (!\clock_divider_inst|counter\(13) & ((\clock_divider_inst|Add0~25\) # (GND)))
-- \clock_divider_inst|Add0~27\ = CARRY((!\clock_divider_inst|Add0~25\) # (!\clock_divider_inst|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|counter\(13),
	datad => VCC,
	cin => \clock_divider_inst|Add0~25\,
	combout => \clock_divider_inst|Add0~26_combout\,
	cout => \clock_divider_inst|Add0~27\);

-- Location: LCCOMB_X64_Y50_N26
\clock_divider_inst|counter~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|counter~8_combout\ = (!\clock_divider_inst|Equal0~7_combout\ & \clock_divider_inst|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|Equal0~7_combout\,
	datad => \clock_divider_inst|Add0~26_combout\,
	combout => \clock_divider_inst|counter~8_combout\);

-- Location: FF_X64_Y50_N27
\clock_divider_inst|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|counter~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(13));

-- Location: LCCOMB_X64_Y50_N4
\clock_divider_inst|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~28_combout\ = (\clock_divider_inst|counter\(14) & (\clock_divider_inst|Add0~27\ $ (GND))) # (!\clock_divider_inst|counter\(14) & (!\clock_divider_inst|Add0~27\ & VCC))
-- \clock_divider_inst|Add0~29\ = CARRY((\clock_divider_inst|counter\(14) & !\clock_divider_inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|counter\(14),
	datad => VCC,
	cin => \clock_divider_inst|Add0~27\,
	combout => \clock_divider_inst|Add0~28_combout\,
	cout => \clock_divider_inst|Add0~29\);

-- Location: LCCOMB_X65_Y50_N14
\clock_divider_inst|counter~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|counter~7_combout\ = (!\clock_divider_inst|Equal0~7_combout\ & \clock_divider_inst|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|Equal0~7_combout\,
	datac => \clock_divider_inst|Add0~28_combout\,
	combout => \clock_divider_inst|counter~7_combout\);

-- Location: FF_X65_Y50_N15
\clock_divider_inst|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|counter~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(14));

-- Location: LCCOMB_X64_Y50_N6
\clock_divider_inst|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~30_combout\ = (\clock_divider_inst|counter\(15) & (!\clock_divider_inst|Add0~29\)) # (!\clock_divider_inst|counter\(15) & ((\clock_divider_inst|Add0~29\) # (GND)))
-- \clock_divider_inst|Add0~31\ = CARRY((!\clock_divider_inst|Add0~29\) # (!\clock_divider_inst|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|counter\(15),
	datad => VCC,
	cin => \clock_divider_inst|Add0~29\,
	combout => \clock_divider_inst|Add0~30_combout\,
	cout => \clock_divider_inst|Add0~31\);

-- Location: FF_X64_Y50_N7
\clock_divider_inst|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|Add0~30_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(15));

-- Location: LCCOMB_X64_Y50_N8
\clock_divider_inst|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~32_combout\ = (\clock_divider_inst|counter\(16) & (\clock_divider_inst|Add0~31\ $ (GND))) # (!\clock_divider_inst|counter\(16) & (!\clock_divider_inst|Add0~31\ & VCC))
-- \clock_divider_inst|Add0~33\ = CARRY((\clock_divider_inst|counter\(16) & !\clock_divider_inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|counter\(16),
	datad => VCC,
	cin => \clock_divider_inst|Add0~31\,
	combout => \clock_divider_inst|Add0~32_combout\,
	cout => \clock_divider_inst|Add0~33\);

-- Location: LCCOMB_X64_Y50_N28
\clock_divider_inst|counter~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|counter~6_combout\ = (\clock_divider_inst|Add0~32_combout\ & !\clock_divider_inst|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider_inst|Add0~32_combout\,
	datad => \clock_divider_inst|Equal0~7_combout\,
	combout => \clock_divider_inst|counter~6_combout\);

-- Location: FF_X64_Y50_N29
\clock_divider_inst|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|counter~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(16));

-- Location: LCCOMB_X64_Y50_N10
\clock_divider_inst|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~34_combout\ = (\clock_divider_inst|counter\(17) & (!\clock_divider_inst|Add0~33\)) # (!\clock_divider_inst|counter\(17) & ((\clock_divider_inst|Add0~33\) # (GND)))
-- \clock_divider_inst|Add0~35\ = CARRY((!\clock_divider_inst|Add0~33\) # (!\clock_divider_inst|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|counter\(17),
	datad => VCC,
	cin => \clock_divider_inst|Add0~33\,
	combout => \clock_divider_inst|Add0~34_combout\,
	cout => \clock_divider_inst|Add0~35\);

-- Location: FF_X64_Y50_N11
\clock_divider_inst|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|Add0~34_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(17));

-- Location: LCCOMB_X64_Y50_N12
\clock_divider_inst|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~36_combout\ = (\clock_divider_inst|counter\(18) & (\clock_divider_inst|Add0~35\ $ (GND))) # (!\clock_divider_inst|counter\(18) & (!\clock_divider_inst|Add0~35\ & VCC))
-- \clock_divider_inst|Add0~37\ = CARRY((\clock_divider_inst|counter\(18) & !\clock_divider_inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|counter\(18),
	datad => VCC,
	cin => \clock_divider_inst|Add0~35\,
	combout => \clock_divider_inst|Add0~36_combout\,
	cout => \clock_divider_inst|Add0~37\);

-- Location: LCCOMB_X64_Y50_N30
\clock_divider_inst|counter~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|counter~5_combout\ = (!\clock_divider_inst|Equal0~7_combout\ & \clock_divider_inst|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|Equal0~7_combout\,
	datad => \clock_divider_inst|Add0~36_combout\,
	combout => \clock_divider_inst|counter~5_combout\);

-- Location: FF_X64_Y50_N31
\clock_divider_inst|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|counter~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(18));

-- Location: LCCOMB_X64_Y50_N14
\clock_divider_inst|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~38_combout\ = (\clock_divider_inst|counter\(19) & (!\clock_divider_inst|Add0~37\)) # (!\clock_divider_inst|counter\(19) & ((\clock_divider_inst|Add0~37\) # (GND)))
-- \clock_divider_inst|Add0~39\ = CARRY((!\clock_divider_inst|Add0~37\) # (!\clock_divider_inst|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|counter\(19),
	datad => VCC,
	cin => \clock_divider_inst|Add0~37\,
	combout => \clock_divider_inst|Add0~38_combout\,
	cout => \clock_divider_inst|Add0~39\);

-- Location: LCCOMB_X65_Y50_N8
\clock_divider_inst|counter~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|counter~4_combout\ = (!\clock_divider_inst|Equal0~7_combout\ & \clock_divider_inst|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider_inst|Equal0~7_combout\,
	datad => \clock_divider_inst|Add0~38_combout\,
	combout => \clock_divider_inst|counter~4_combout\);

-- Location: FF_X65_Y50_N9
\clock_divider_inst|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|counter~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(19));

-- Location: LCCOMB_X64_Y50_N16
\clock_divider_inst|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~40_combout\ = (\clock_divider_inst|counter\(20) & (\clock_divider_inst|Add0~39\ $ (GND))) # (!\clock_divider_inst|counter\(20) & (!\clock_divider_inst|Add0~39\ & VCC))
-- \clock_divider_inst|Add0~41\ = CARRY((\clock_divider_inst|counter\(20) & !\clock_divider_inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|counter\(20),
	datad => VCC,
	cin => \clock_divider_inst|Add0~39\,
	combout => \clock_divider_inst|Add0~40_combout\,
	cout => \clock_divider_inst|Add0~41\);

-- Location: LCCOMB_X65_Y50_N12
\clock_divider_inst|counter~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|counter~3_combout\ = (!\clock_divider_inst|Equal0~7_combout\ & \clock_divider_inst|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|Equal0~7_combout\,
	datac => \clock_divider_inst|Add0~40_combout\,
	combout => \clock_divider_inst|counter~3_combout\);

-- Location: FF_X65_Y50_N13
\clock_divider_inst|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|counter~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(20));

-- Location: LCCOMB_X64_Y50_N18
\clock_divider_inst|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~42_combout\ = (\clock_divider_inst|counter\(21) & (!\clock_divider_inst|Add0~41\)) # (!\clock_divider_inst|counter\(21) & ((\clock_divider_inst|Add0~41\) # (GND)))
-- \clock_divider_inst|Add0~43\ = CARRY((!\clock_divider_inst|Add0~41\) # (!\clock_divider_inst|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|counter\(21),
	datad => VCC,
	cin => \clock_divider_inst|Add0~41\,
	combout => \clock_divider_inst|Add0~42_combout\,
	cout => \clock_divider_inst|Add0~43\);

-- Location: LCCOMB_X65_Y50_N2
\clock_divider_inst|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|counter~2_combout\ = (!\clock_divider_inst|Equal0~7_combout\ & \clock_divider_inst|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider_inst|Equal0~7_combout\,
	datad => \clock_divider_inst|Add0~42_combout\,
	combout => \clock_divider_inst|counter~2_combout\);

-- Location: FF_X65_Y50_N3
\clock_divider_inst|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|counter~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(21));

-- Location: LCCOMB_X64_Y50_N20
\clock_divider_inst|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~44_combout\ = (\clock_divider_inst|counter\(22) & (\clock_divider_inst|Add0~43\ $ (GND))) # (!\clock_divider_inst|counter\(22) & (!\clock_divider_inst|Add0~43\ & VCC))
-- \clock_divider_inst|Add0~45\ = CARRY((\clock_divider_inst|counter\(22) & !\clock_divider_inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|counter\(22),
	datad => VCC,
	cin => \clock_divider_inst|Add0~43\,
	combout => \clock_divider_inst|Add0~44_combout\,
	cout => \clock_divider_inst|Add0~45\);

-- Location: LCCOMB_X65_Y50_N24
\clock_divider_inst|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|counter~1_combout\ = (!\clock_divider_inst|Equal0~7_combout\ & \clock_divider_inst|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider_inst|Equal0~7_combout\,
	datad => \clock_divider_inst|Add0~44_combout\,
	combout => \clock_divider_inst|counter~1_combout\);

-- Location: FF_X65_Y50_N25
\clock_divider_inst|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|counter~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(22));

-- Location: LCCOMB_X64_Y50_N22
\clock_divider_inst|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~46_combout\ = (\clock_divider_inst|counter\(23) & (!\clock_divider_inst|Add0~45\)) # (!\clock_divider_inst|counter\(23) & ((\clock_divider_inst|Add0~45\) # (GND)))
-- \clock_divider_inst|Add0~47\ = CARRY((!\clock_divider_inst|Add0~45\) # (!\clock_divider_inst|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|counter\(23),
	datad => VCC,
	cin => \clock_divider_inst|Add0~45\,
	combout => \clock_divider_inst|Add0~46_combout\,
	cout => \clock_divider_inst|Add0~47\);

-- Location: FF_X64_Y50_N23
\clock_divider_inst|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|Add0~46_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(23));

-- Location: LCCOMB_X64_Y50_N24
\clock_divider_inst|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Add0~48_combout\ = \clock_divider_inst|Add0~47\ $ (!\clock_divider_inst|counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \clock_divider_inst|counter\(24),
	cin => \clock_divider_inst|Add0~47\,
	combout => \clock_divider_inst|Add0~48_combout\);

-- Location: LCCOMB_X65_Y50_N6
\clock_divider_inst|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|counter~0_combout\ = (!\clock_divider_inst|Equal0~7_combout\ & \clock_divider_inst|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider_inst|Equal0~7_combout\,
	datad => \clock_divider_inst|Add0~48_combout\,
	combout => \clock_divider_inst|counter~0_combout\);

-- Location: FF_X65_Y50_N7
\clock_divider_inst|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|counter~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|counter\(24));

-- Location: LCCOMB_X65_Y50_N30
\clock_divider_inst|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Equal0~0_combout\ = (\clock_divider_inst|counter\(24) & (\clock_divider_inst|counter\(22) & (!\clock_divider_inst|counter\(23) & \clock_divider_inst|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|counter\(24),
	datab => \clock_divider_inst|counter\(22),
	datac => \clock_divider_inst|counter\(23),
	datad => \clock_divider_inst|counter\(21),
	combout => \clock_divider_inst|Equal0~0_combout\);

-- Location: LCCOMB_X65_Y50_N4
\clock_divider_inst|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Equal0~1_combout\ = (\clock_divider_inst|counter\(20) & (\clock_divider_inst|counter\(19) & (\clock_divider_inst|counter\(18) & !\clock_divider_inst|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|counter\(20),
	datab => \clock_divider_inst|counter\(19),
	datac => \clock_divider_inst|counter\(18),
	datad => \clock_divider_inst|counter\(17),
	combout => \clock_divider_inst|Equal0~1_combout\);

-- Location: LCCOMB_X65_Y50_N26
\clock_divider_inst|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Equal0~2_combout\ = (\clock_divider_inst|counter\(13) & (!\clock_divider_inst|counter\(15) & (\clock_divider_inst|counter\(14) & \clock_divider_inst|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|counter\(13),
	datab => \clock_divider_inst|counter\(15),
	datac => \clock_divider_inst|counter\(14),
	datad => \clock_divider_inst|counter\(16),
	combout => \clock_divider_inst|Equal0~2_combout\);

-- Location: LCCOMB_X65_Y50_N20
\clock_divider_inst|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Equal0~3_combout\ = (\clock_divider_inst|counter\(12) & (\clock_divider_inst|counter\(11) & (!\clock_divider_inst|counter\(9) & !\clock_divider_inst|counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|counter\(12),
	datab => \clock_divider_inst|counter\(11),
	datac => \clock_divider_inst|counter\(9),
	datad => \clock_divider_inst|counter\(10),
	combout => \clock_divider_inst|Equal0~3_combout\);

-- Location: LCCOMB_X65_Y50_N16
\clock_divider_inst|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Equal0~4_combout\ = (\clock_divider_inst|Equal0~0_combout\ & (\clock_divider_inst|Equal0~1_combout\ & (\clock_divider_inst|Equal0~2_combout\ & \clock_divider_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|Equal0~0_combout\,
	datab => \clock_divider_inst|Equal0~1_combout\,
	datac => \clock_divider_inst|Equal0~2_combout\,
	datad => \clock_divider_inst|Equal0~3_combout\,
	combout => \clock_divider_inst|Equal0~4_combout\);

-- Location: LCCOMB_X65_Y50_N22
\clock_divider_inst|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|Equal0~7_combout\ = (\clock_divider_inst|Equal0~6_combout\ & (\clock_divider_inst|counter\(0) & (\clock_divider_inst|Equal0~5_combout\ & \clock_divider_inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_divider_inst|Equal0~6_combout\,
	datab => \clock_divider_inst|counter\(0),
	datac => \clock_divider_inst|Equal0~5_combout\,
	datad => \clock_divider_inst|Equal0~4_combout\,
	combout => \clock_divider_inst|Equal0~7_combout\);

-- Location: LCCOMB_X65_Y50_N0
\clock_divider_inst|clk_divided~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|clk_divided~0_combout\ = \clock_divider_inst|Equal0~7_combout\ $ (\clock_divider_inst|clk_divided~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_divider_inst|Equal0~7_combout\,
	datad => \clock_divider_inst|clk_divided~q\,
	combout => \clock_divider_inst|clk_divided~0_combout\);

-- Location: LCCOMB_X65_Y50_N28
\clock_divider_inst|clk_divided~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_divider_inst|clk_divided~feeder_combout\ = \clock_divider_inst|clk_divided~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_divider_inst|clk_divided~0_combout\,
	combout => \clock_divider_inst|clk_divided~feeder_combout\);

-- Location: FF_X65_Y50_N29
\clock_divider_inst|clk_divided\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clock_divider_inst|clk_divided~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_divider_inst|clk_divided~q\);

-- Location: CLKCTRL_G13
\clock_divider_inst|clk_divided~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_divider_inst|clk_divided~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_divider_inst|clk_divided~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N29
\sw0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw0,
	o => \sw0~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\sw1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw1,
	o => \sw1~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\up_down~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_up_down,
	o => \up_down~input_o\);

-- Location: LCCOMB_X67_Y52_N14
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = min_count(0) $ (VCC)
-- \Add0~1\ = CARRY(min_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X69_Y52_N26
\min_count[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_count[0]~5_combout\ = (\up_down~input_o\ & (!min_count(0))) # (!\up_down~input_o\ & ((\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \up_down~input_o\,
	datac => min_count(0),
	datad => \Add0~0_combout\,
	combout => \min_count[0]~5_combout\);

-- Location: LCCOMB_X69_Y52_N10
\min_count[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_count[0]~_wirecell_combout\ = !min_count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min_count(0),
	combout => \min_count[0]~_wirecell_combout\);

-- Location: LCCOMB_X67_Y49_N10
\current_state.SET_HOUR~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state.SET_HOUR~feeder_combout\ = \current_state.SET_MINUTE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.SET_MINUTE~q\,
	combout => \current_state.SET_HOUR~feeder_combout\);

-- Location: IOIBUF_X46_Y54_N29
\mode~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode,
	o => \mode~input_o\);

-- Location: LCCOMB_X66_Y49_N28
\debounce_mode|button_sync_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \debounce_mode|button_sync_0~0_combout\ = !\mode~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mode~input_o\,
	combout => \debounce_mode|button_sync_0~0_combout\);

-- Location: FF_X66_Y49_N29
\debounce_mode|button_sync_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \debounce_mode|button_sync_0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_mode|button_sync_0~q\);

-- Location: LCCOMB_X66_Y49_N16
\debounce_mode|button_sync_1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \debounce_mode|button_sync_1~feeder_combout\ = \debounce_mode|button_sync_0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \debounce_mode|button_sync_0~q\,
	combout => \debounce_mode|button_sync_1~feeder_combout\);

-- Location: FF_X66_Y49_N17
\debounce_mode|button_sync_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \debounce_mode|button_sync_1~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_mode|button_sync_1~q\);

-- Location: LCCOMB_X66_Y49_N30
\debounce_mode|button_prev~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \debounce_mode|button_prev~feeder_combout\ = \debounce_mode|button_sync_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \debounce_mode|button_sync_1~q\,
	combout => \debounce_mode|button_prev~feeder_combout\);

-- Location: FF_X66_Y49_N31
\debounce_mode|button_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \debounce_mode|button_prev~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_mode|button_prev~q\);

-- Location: LCCOMB_X66_Y49_N18
\debounce_mode|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \debounce_mode|process_1~0_combout\ = (\debounce_mode|button_sync_1~q\ & !\debounce_mode|button_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debounce_mode|button_sync_1~q\,
	datac => \debounce_mode|button_prev~q\,
	combout => \debounce_mode|process_1~0_combout\);

-- Location: FF_X66_Y49_N19
\debounce_mode|edge_detect\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \debounce_mode|process_1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_mode|edge_detect~q\);

-- Location: FF_X67_Y49_N11
\current_state.SET_HOUR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \current_state.SET_HOUR~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \debounce_mode|edge_detect~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.SET_HOUR~q\);

-- Location: LCCOMB_X67_Y49_N22
\current_state.NORMAL~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state.NORMAL~0_combout\ = !\current_state.SET_HOUR~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \current_state.SET_HOUR~q\,
	combout => \current_state.NORMAL~0_combout\);

-- Location: FF_X67_Y49_N23
\current_state.NORMAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \current_state.NORMAL~0_combout\,
	clrn => \reset~input_o\,
	ena => \debounce_mode|edge_detect~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.NORMAL~q\);

-- Location: LCCOMB_X67_Y49_N18
\current_state.SET_MINUTE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \current_state.SET_MINUTE~0_combout\ = !\current_state.NORMAL~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \current_state.NORMAL~q\,
	combout => \current_state.SET_MINUTE~0_combout\);

-- Location: FF_X67_Y49_N19
\current_state.SET_MINUTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \current_state.SET_MINUTE~0_combout\,
	clrn => \reset~input_o\,
	ena => \debounce_mode|edge_detect~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.SET_MINUTE~q\);

-- Location: IOIBUF_X49_Y54_N29
\set~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_set,
	o => \set~input_o\);

-- Location: LCCOMB_X65_Y50_N18
\debounce_set|button_sync_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \debounce_set|button_sync_0~0_combout\ = !\set~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \set~input_o\,
	combout => \debounce_set|button_sync_0~0_combout\);

-- Location: FF_X65_Y50_N19
\debounce_set|button_sync_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \debounce_set|button_sync_0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_set|button_sync_0~q\);

-- Location: FF_X66_Y49_N15
\debounce_set|button_sync_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	asdata => \debounce_set|button_sync_0~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_set|button_sync_1~q\);

-- Location: LCCOMB_X66_Y49_N12
\debounce_set|button_prev~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \debounce_set|button_prev~feeder_combout\ = \debounce_set|button_sync_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_set|button_sync_1~q\,
	combout => \debounce_set|button_prev~feeder_combout\);

-- Location: FF_X66_Y49_N13
\debounce_set|button_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \debounce_set|button_prev~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_set|button_prev~q\);

-- Location: LCCOMB_X66_Y49_N14
\debounce_set|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \debounce_set|process_1~0_combout\ = (\debounce_set|button_sync_1~q\ & !\debounce_set|button_prev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_set|button_sync_1~q\,
	datad => \debounce_set|button_prev~q\,
	combout => \debounce_set|process_1~0_combout\);

-- Location: LCCOMB_X67_Y49_N12
\debounce_set|edge_detect~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \debounce_set|edge_detect~feeder_combout\ = \debounce_set|process_1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \debounce_set|process_1~0_combout\,
	combout => \debounce_set|edge_detect~feeder_combout\);

-- Location: FF_X67_Y49_N13
\debounce_set|edge_detect\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \debounce_set|edge_detect~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debounce_set|edge_detect~q\);

-- Location: LCCOMB_X67_Y49_N4
\process_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_3~0_combout\ = (!\debounce_set|edge_detect~q\) # (!\current_state.SET_MINUTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.SET_MINUTE~q\,
	datad => \debounce_set|edge_detect~q\,
	combout => \process_3~0_combout\);

-- Location: LCCOMB_X66_Y51_N20
\sec_counter|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec_counter|Add0~0_combout\ = \sec_counter|cnt\(0) $ (VCC)
-- \sec_counter|Add0~1\ = CARRY(\sec_counter|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec_counter|cnt\(0),
	datad => VCC,
	combout => \sec_counter|Add0~0_combout\,
	cout => \sec_counter|Add0~1\);

-- Location: FF_X66_Y51_N21
\sec_counter|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_inst|clk_divided~clkctrl_outclk\,
	d => \sec_counter|Add0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_counter|cnt\(0));

-- Location: LCCOMB_X66_Y51_N22
\sec_counter|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec_counter|Add0~2_combout\ = (\sec_counter|cnt\(1) & (!\sec_counter|Add0~1\)) # (!\sec_counter|cnt\(1) & ((\sec_counter|Add0~1\) # (GND)))
-- \sec_counter|Add0~3\ = CARRY((!\sec_counter|Add0~1\) # (!\sec_counter|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec_counter|cnt\(1),
	datad => VCC,
	cin => \sec_counter|Add0~1\,
	combout => \sec_counter|Add0~2_combout\,
	cout => \sec_counter|Add0~3\);

-- Location: FF_X66_Y51_N23
\sec_counter|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_inst|clk_divided~clkctrl_outclk\,
	d => \sec_counter|Add0~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_counter|cnt\(1));

-- Location: LCCOMB_X66_Y51_N24
\sec_counter|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec_counter|Add0~4_combout\ = (\sec_counter|cnt\(2) & (\sec_counter|Add0~3\ $ (GND))) # (!\sec_counter|cnt\(2) & (!\sec_counter|Add0~3\ & VCC))
-- \sec_counter|Add0~5\ = CARRY((\sec_counter|cnt\(2) & !\sec_counter|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec_counter|cnt\(2),
	datad => VCC,
	cin => \sec_counter|Add0~3\,
	combout => \sec_counter|Add0~4_combout\,
	cout => \sec_counter|Add0~5\);

-- Location: LCCOMB_X66_Y51_N10
\sec_counter|cnt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec_counter|cnt~3_combout\ = (\sec_counter|Add0~4_combout\ & (((!\sec_counter|Equal1~0_combout\) # (!\sec_counter|cnt\(1))) # (!\sec_counter|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec_counter|cnt\(0),
	datab => \sec_counter|cnt\(1),
	datac => \sec_counter|Equal1~0_combout\,
	datad => \sec_counter|Add0~4_combout\,
	combout => \sec_counter|cnt~3_combout\);

-- Location: FF_X66_Y51_N11
\sec_counter|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_inst|clk_divided~clkctrl_outclk\,
	d => \sec_counter|cnt~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_counter|cnt\(2));

-- Location: LCCOMB_X66_Y51_N26
\sec_counter|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec_counter|Add0~6_combout\ = (\sec_counter|cnt\(3) & (!\sec_counter|Add0~5\)) # (!\sec_counter|cnt\(3) & ((\sec_counter|Add0~5\) # (GND)))
-- \sec_counter|Add0~7\ = CARRY((!\sec_counter|Add0~5\) # (!\sec_counter|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sec_counter|cnt\(3),
	datad => VCC,
	cin => \sec_counter|Add0~5\,
	combout => \sec_counter|Add0~6_combout\,
	cout => \sec_counter|Add0~7\);

-- Location: LCCOMB_X66_Y51_N12
\sec_counter|cnt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec_counter|cnt~2_combout\ = (\sec_counter|Add0~6_combout\ & (((!\sec_counter|cnt\(1)) # (!\sec_counter|Equal1~0_combout\)) # (!\sec_counter|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec_counter|cnt\(0),
	datab => \sec_counter|Equal1~0_combout\,
	datac => \sec_counter|Add0~6_combout\,
	datad => \sec_counter|cnt\(1),
	combout => \sec_counter|cnt~2_combout\);

-- Location: FF_X66_Y51_N13
\sec_counter|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_inst|clk_divided~clkctrl_outclk\,
	d => \sec_counter|cnt~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_counter|cnt\(3));

-- Location: LCCOMB_X66_Y51_N28
\sec_counter|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec_counter|Add0~8_combout\ = (\sec_counter|cnt\(4) & (\sec_counter|Add0~7\ $ (GND))) # (!\sec_counter|cnt\(4) & (!\sec_counter|Add0~7\ & VCC))
-- \sec_counter|Add0~9\ = CARRY((\sec_counter|cnt\(4) & !\sec_counter|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sec_counter|cnt\(4),
	datad => VCC,
	cin => \sec_counter|Add0~7\,
	combout => \sec_counter|Add0~8_combout\,
	cout => \sec_counter|Add0~9\);

-- Location: LCCOMB_X66_Y51_N18
\sec_counter|cnt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec_counter|cnt~1_combout\ = (\sec_counter|Add0~8_combout\ & (((!\sec_counter|Equal1~0_combout\) # (!\sec_counter|cnt\(1))) # (!\sec_counter|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec_counter|cnt\(0),
	datab => \sec_counter|cnt\(1),
	datac => \sec_counter|Equal1~0_combout\,
	datad => \sec_counter|Add0~8_combout\,
	combout => \sec_counter|cnt~1_combout\);

-- Location: FF_X66_Y51_N19
\sec_counter|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_inst|clk_divided~clkctrl_outclk\,
	d => \sec_counter|cnt~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_counter|cnt\(4));

-- Location: LCCOMB_X66_Y51_N30
\sec_counter|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec_counter|Add0~10_combout\ = \sec_counter|Add0~9\ $ (\sec_counter|cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sec_counter|cnt\(5),
	cin => \sec_counter|Add0~9\,
	combout => \sec_counter|Add0~10_combout\);

-- Location: LCCOMB_X66_Y51_N16
\sec_counter|cnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec_counter|cnt~0_combout\ = (\sec_counter|Add0~10_combout\ & (((!\sec_counter|cnt\(1)) # (!\sec_counter|Equal1~0_combout\)) # (!\sec_counter|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec_counter|cnt\(0),
	datab => \sec_counter|Equal1~0_combout\,
	datac => \sec_counter|Add0~10_combout\,
	datad => \sec_counter|cnt\(1),
	combout => \sec_counter|cnt~0_combout\);

-- Location: FF_X66_Y51_N17
\sec_counter|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_inst|clk_divided~clkctrl_outclk\,
	d => \sec_counter|cnt~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_counter|cnt\(5));

-- Location: LCCOMB_X66_Y51_N8
\sec_counter|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec_counter|Equal1~0_combout\ = (\sec_counter|cnt\(3) & (\sec_counter|cnt\(5) & (!\sec_counter|cnt\(2) & \sec_counter|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec_counter|cnt\(3),
	datab => \sec_counter|cnt\(5),
	datac => \sec_counter|cnt\(2),
	datad => \sec_counter|cnt\(4),
	combout => \sec_counter|Equal1~0_combout\);

-- Location: LCCOMB_X66_Y51_N14
\sec_counter|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec_counter|Equal1~1_combout\ = (\sec_counter|cnt\(0) & (\sec_counter|cnt\(1) & \sec_counter|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec_counter|cnt\(0),
	datab => \sec_counter|cnt\(1),
	datac => \sec_counter|Equal1~0_combout\,
	combout => \sec_counter|Equal1~1_combout\);

-- Location: FF_X66_Y51_N15
\sec_counter|carry_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_inst|clk_divided~clkctrl_outclk\,
	d => \sec_counter|Equal1~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_counter|carry_reg~q\);

-- Location: LCCOMB_X66_Y51_N0
\sec_carry_sync1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec_carry_sync1~feeder_combout\ = \sec_counter|carry_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sec_counter|carry_reg~q\,
	combout => \sec_carry_sync1~feeder_combout\);

-- Location: FF_X66_Y51_N1
sec_carry_sync1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \sec_carry_sync1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_carry_sync1~q\);

-- Location: LCCOMB_X66_Y52_N10
\sec_carry_sync2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec_carry_sync2~feeder_combout\ = \sec_carry_sync1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sec_carry_sync1~q\,
	combout => \sec_carry_sync2~feeder_combout\);

-- Location: FF_X66_Y52_N11
sec_carry_sync2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \sec_carry_sync2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_carry_sync2~q\);

-- Location: LCCOMB_X66_Y52_N30
\sec_carry_edge~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec_carry_edge~0_combout\ = (!\sec_carry_sync1~q\ & \sec_carry_sync2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec_carry_sync1~q\,
	datad => \sec_carry_sync2~q\,
	combout => \sec_carry_edge~0_combout\);

-- Location: LCCOMB_X67_Y49_N6
\sec_carry_edge~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sec_carry_edge~feeder_combout\ = \sec_carry_edge~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sec_carry_edge~0_combout\,
	combout => \sec_carry_edge~feeder_combout\);

-- Location: FF_X67_Y49_N7
sec_carry_edge : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \sec_carry_edge~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sec_carry_edge~q\);

-- Location: LCCOMB_X67_Y49_N16
\min_count[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_count[5]~8_combout\ = (\sec_carry_edge~q\ & (((\current_state.SET_MINUTE~q\ & \debounce_set|edge_detect~q\)) # (!\current_state.NORMAL~q\))) # (!\sec_carry_edge~q\ & (\current_state.SET_MINUTE~q\ & ((\debounce_set|edge_detect~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec_carry_edge~q\,
	datab => \current_state.SET_MINUTE~q\,
	datac => \current_state.NORMAL~q\,
	datad => \debounce_set|edge_detect~q\,
	combout => \min_count[5]~8_combout\);

-- Location: FF_X69_Y52_N27
\min_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \min_count[0]~5_combout\,
	asdata => \min_count[0]~_wirecell_combout\,
	clrn => \reset~input_o\,
	sload => \process_3~0_combout\,
	ena => \min_count[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_count(0));

-- Location: LCCOMB_X64_Y52_N6
\Mod0|auto_generated|divider|divider|StageOut[31]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~4_combout\ = min_count(1) $ (min_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min_count(1),
	datad => min_count(0),
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~4_combout\);

-- Location: LCCOMB_X67_Y52_N16
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (min_count(1) & (\Add0~1\ & VCC)) # (!min_count(1) & (!\Add0~1\))
-- \Add0~3\ = CARRY((!min_count(1) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min_count(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X69_Y52_N28
\min_count[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_count[1]~4_combout\ = (\up_down~input_o\ & (\Mod0|auto_generated|divider|divider|StageOut[31]~4_combout\)) # (!\up_down~input_o\ & ((\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~4_combout\,
	datab => \up_down~input_o\,
	datad => \Add0~2_combout\,
	combout => \min_count[1]~4_combout\);

-- Location: LCCOMB_X70_Y52_N0
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = min_count(1) $ (min_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min_count(1),
	datad => min_count(0),
	combout => \Add1~8_combout\);

-- Location: FF_X69_Y52_N29
\min_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \min_count[1]~4_combout\,
	asdata => \Add1~8_combout\,
	clrn => \reset~input_o\,
	sload => \process_3~0_combout\,
	ena => \min_count[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_count(1));

-- Location: LCCOMB_X67_Y52_N18
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (min_count(2) & ((GND) # (!\Add0~3\))) # (!min_count(2) & (\Add0~3\ $ (GND)))
-- \Add0~5\ = CARRY((min_count(2)) # (!\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min_count(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X67_Y52_N20
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (min_count(3) & (\Add0~5\ & VCC)) # (!min_count(3) & (!\Add0~5\))
-- \Add0~7\ = CARRY((!min_count(3) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min_count(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X69_Y52_N6
\Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (min_count(1) & (min_count(0) & min_count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min_count(1),
	datac => min_count(0),
	datad => min_count(2),
	combout => \Add1~3_combout\);

-- Location: LCCOMB_X69_Y52_N4
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (min_count(0) & min_count(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min_count(0),
	datad => min_count(1),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X69_Y52_N16
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\ = min_count(2) $ (\Add1~0_combout\ $ (VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~1\ = CARRY(min_count(2) $ (\Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(2),
	datab => \Add1~0_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~1\);

-- Location: LCCOMB_X69_Y52_N18
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~1\ & (\Add1~3_combout\ $ ((!min_count(3))))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~1\ & 
-- ((\Add1~3_combout\ $ (min_count(3))) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~3\ = CARRY((\Add1~3_combout\ $ (!min_count(3))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~3_combout\,
	datab => min_count(3),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~3\);

-- Location: LCCOMB_X69_Y52_N30
\Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = (min_count(4) & (min_count(3) & (\Add1~0_combout\ & min_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(4),
	datab => min_count(3),
	datac => \Add1~0_combout\,
	datad => min_count(2),
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X67_Y52_N22
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (min_count(4) & ((GND) # (!\Add0~7\))) # (!min_count(4) & (\Add0~7\ $ (GND)))
-- \Add0~9\ = CARRY((min_count(4)) # (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min_count(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X67_Y52_N24
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \Add0~9\ $ (!min_count(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => min_count(5),
	cin => \Add0~9\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X69_Y52_N12
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (min_count(0) & (min_count(1) & (min_count(3) & min_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(0),
	datab => min_count(1),
	datac => min_count(3),
	datad => min_count(2),
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X69_Y52_N20
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~3\ & ((\Add1~2_combout\ $ (min_count(4))))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~3\ & 
-- (\Add1~2_combout\ $ (min_count(4) $ (VCC))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~3\ & (\Add1~2_combout\ $ (min_count(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => min_count(4),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~5\);

-- Location: LCCOMB_X69_Y52_N22
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~5\ & (\Add1~1_combout\ $ ((!min_count(5))))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~5\ & 
-- ((\Add1~1_combout\ $ (min_count(5))) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~7\ = CARRY((\Add1~1_combout\ $ (!min_count(5))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~1_combout\,
	datab => min_count(5),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~7\);

-- Location: LCCOMB_X69_Y52_N8
\Mod0|auto_generated|divider|divider|StageOut[35]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~0_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & (min_count(5) $ ((\Add1~1_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & 
-- (((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(5),
	datab => \Add1~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~0_combout\);

-- Location: LCCOMB_X66_Y52_N12
\min_count[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_count[5]~0_combout\ = (\up_down~input_o\ & ((\Mod0|auto_generated|divider|divider|StageOut[35]~0_combout\))) # (!\up_down~input_o\ & (\Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_down~input_o\,
	datab => \Add0~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[35]~0_combout\,
	combout => \min_count[5]~0_combout\);

-- Location: LCCOMB_X66_Y52_N14
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = min_count(5) $ (((\Add1~2_combout\ & min_count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min_count(5),
	datac => \Add1~2_combout\,
	datad => min_count(4),
	combout => \Add1~4_combout\);

-- Location: LCCOMB_X67_Y52_N28
\min_count[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_count[5]~6_combout\ = (min_count(1) & (min_count(4) & (min_count(0) & min_count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(1),
	datab => min_count(4),
	datac => min_count(0),
	datad => min_count(5),
	combout => \min_count[5]~6_combout\);

-- Location: LCCOMB_X67_Y52_N6
\min_count[5]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_count[5]~7_combout\ = (min_count(3) & (\min_count[5]~6_combout\ & (!min_count(2) & \process_3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(3),
	datab => \min_count[5]~6_combout\,
	datac => min_count(2),
	datad => \process_3~0_combout\,
	combout => \min_count[5]~7_combout\);

-- Location: FF_X66_Y52_N13
\min_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \min_count[5]~0_combout\,
	asdata => \Add1~4_combout\,
	clrn => \reset~input_o\,
	sclr => \min_count[5]~7_combout\,
	sload => \process_3~0_combout\,
	ena => \min_count[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_count(5));

-- Location: LCCOMB_X69_Y52_N24
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\);

-- Location: LCCOMB_X69_Y52_N14
\Mod0|auto_generated|divider|divider|StageOut[33]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & (\Add1~3_combout\ $ (((min_count(3)))))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ 
-- & (((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~2_combout\,
	datac => min_count(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~2_combout\);

-- Location: LCCOMB_X67_Y52_N10
\min_count[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_count[3]~2_combout\ = (\up_down~input_o\ & ((\Mod0|auto_generated|divider|divider|StageOut[33]~2_combout\))) # (!\up_down~input_o\ & (\Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \up_down~input_o\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[33]~2_combout\,
	combout => \min_count[3]~2_combout\);

-- Location: LCCOMB_X67_Y52_N8
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = min_count(3) $ (((min_count(1) & (min_count(2) & min_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(1),
	datab => min_count(2),
	datac => min_count(0),
	datad => min_count(3),
	combout => \Add1~6_combout\);

-- Location: FF_X67_Y52_N11
\min_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \min_count[3]~2_combout\,
	asdata => \Add1~6_combout\,
	clrn => \reset~input_o\,
	sclr => \min_count[5]~7_combout\,
	sload => \process_3~0_combout\,
	ena => \min_count[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_count(3));

-- Location: LCCOMB_X69_Y52_N2
\Mod0|auto_generated|divider|divider|StageOut[34]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[34]~1_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & (min_count(4) $ (((\Add1~2_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ 
-- & (((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(4),
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~4_combout\,
	datac => \Add1~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[34]~1_combout\);

-- Location: LCCOMB_X67_Y52_N0
\min_count[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_count[4]~1_combout\ = (\up_down~input_o\ & ((\Mod0|auto_generated|divider|divider|StageOut[34]~1_combout\))) # (!\up_down~input_o\ & (\Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \up_down~input_o\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[34]~1_combout\,
	combout => \min_count[4]~1_combout\);

-- Location: LCCOMB_X66_Y52_N16
\Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = \Add1~2_combout\ $ (min_count(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~2_combout\,
	datac => min_count(4),
	combout => \Add1~5_combout\);

-- Location: FF_X67_Y52_N1
\min_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \min_count[4]~1_combout\,
	asdata => \Add1~5_combout\,
	clrn => \reset~input_o\,
	sclr => \min_count[5]~7_combout\,
	sload => \process_3~0_combout\,
	ena => \min_count[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_count(4));

-- Location: LCCOMB_X66_Y52_N0
\Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!min_count(4) & (!min_count(5) & (!min_count(3) & !min_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(4),
	datab => min_count(5),
	datac => min_count(3),
	datad => min_count(2),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X67_Y52_N30
\min_count~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_count~9_combout\ = (\Add0~4_combout\ & ((min_count(1)) # ((min_count(0)) # (!\Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(1),
	datab => \Equal5~0_combout\,
	datac => min_count(0),
	datad => \Add0~4_combout\,
	combout => \min_count~9_combout\);

-- Location: LCCOMB_X69_Y52_N0
\Mod0|auto_generated|divider|divider|StageOut[32]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ & (min_count(2) $ (((\Add1~0_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\ 
-- & (((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(2),
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~0_combout\,
	datac => \Add1~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\);

-- Location: LCCOMB_X67_Y52_N4
\min_count[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_count[2]~3_combout\ = (\up_down~input_o\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\))) # (!\up_down~input_o\ & (\min_count~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_count~9_combout\,
	datab => \up_down~input_o\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[32]~3_combout\,
	combout => \min_count[2]~3_combout\);

-- Location: LCCOMB_X67_Y52_N12
\Add1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~7_combout\ = min_count(2) $ (((min_count(0) & min_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(0),
	datab => min_count(2),
	datac => min_count(1),
	combout => \Add1~7_combout\);

-- Location: FF_X67_Y52_N5
\min_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \min_count[2]~3_combout\,
	asdata => \Add1~7_combout\,
	clrn => \reset~input_o\,
	sclr => \min_count[5]~7_combout\,
	sload => \process_3~0_combout\,
	ena => \min_count[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min_count(2));

-- Location: LCCOMB_X66_Y52_N20
\Mod2|auto_generated|divider|divider|op_2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_2~0_combout\ = min_count(2) $ (VCC)
-- \Mod2|auto_generated|divider|divider|op_2~1\ = CARRY(min_count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(2),
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|op_2~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X66_Y52_N22
\Mod2|auto_generated|divider|divider|op_2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_2~2_combout\ = (min_count(3) & (!\Mod2|auto_generated|divider|divider|op_2~1\)) # (!min_count(3) & ((\Mod2|auto_generated|divider|divider|op_2~1\) # (GND)))
-- \Mod2|auto_generated|divider|divider|op_2~3\ = CARRY((!\Mod2|auto_generated|divider|divider|op_2~1\) # (!min_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min_count(3),
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|op_2~1\,
	combout => \Mod2|auto_generated|divider|divider|op_2~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X66_Y52_N24
\Mod2|auto_generated|divider|divider|op_2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_2~4_combout\ = (min_count(4) & (\Mod2|auto_generated|divider|divider|op_2~3\ $ (GND))) # (!min_count(4) & (!\Mod2|auto_generated|divider|divider|op_2~3\ & VCC))
-- \Mod2|auto_generated|divider|divider|op_2~5\ = CARRY((min_count(4) & !\Mod2|auto_generated|divider|divider|op_2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min_count(4),
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|op_2~3\,
	combout => \Mod2|auto_generated|divider|divider|op_2~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X66_Y52_N26
\Mod2|auto_generated|divider|divider|op_2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_2~6_combout\ = (min_count(5) & (!\Mod2|auto_generated|divider|divider|op_2~5\)) # (!min_count(5) & ((\Mod2|auto_generated|divider|divider|op_2~5\) # (GND)))
-- \Mod2|auto_generated|divider|divider|op_2~7\ = CARRY((!\Mod2|auto_generated|divider|divider|op_2~5\) # (!min_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min_count(5),
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|op_2~5\,
	combout => \Mod2|auto_generated|divider|divider|op_2~6_combout\,
	cout => \Mod2|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X66_Y52_N28
\Mod2|auto_generated|divider|divider|op_2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_2~8_combout\ = \Mod2|auto_generated|divider|divider|op_2~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|op_2~7\,
	combout => \Mod2|auto_generated|divider|divider|op_2~8_combout\);

-- Location: LCCOMB_X66_Y52_N2
\Mod2|auto_generated|divider|divider|StageOut[21]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[21]~33_combout\ = (\Mod2|auto_generated|divider|divider|op_2~6_combout\ & !\Mod2|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|op_2~6_combout\,
	datad => \Mod2|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[21]~33_combout\);

-- Location: LCCOMB_X65_Y52_N24
\Mod2|auto_generated|divider|divider|StageOut[21]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[21]~32_combout\ = (min_count(5) & \Mod2|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min_count(5),
	datad => \Mod2|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[21]~32_combout\);

-- Location: LCCOMB_X65_Y52_N22
\Mod2|auto_generated|divider|divider|StageOut[20]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[20]~34_combout\ = (min_count(4) & \Mod2|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min_count(4),
	datad => \Mod2|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[20]~34_combout\);

-- Location: LCCOMB_X66_Y52_N8
\Mod2|auto_generated|divider|divider|StageOut[20]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[20]~35_combout\ = (!\Mod2|auto_generated|divider|divider|op_2~8_combout\ & \Mod2|auto_generated|divider|divider|op_2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|op_2~4_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[20]~35_combout\);

-- Location: LCCOMB_X66_Y52_N6
\Mod2|auto_generated|divider|divider|StageOut[19]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[19]~37_combout\ = (\Mod2|auto_generated|divider|divider|op_2~2_combout\ & !\Mod2|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|op_2~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[19]~37_combout\);

-- Location: LCCOMB_X65_Y52_N0
\Mod2|auto_generated|divider|divider|StageOut[19]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[19]~36_combout\ = (min_count(3) & \Mod2|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min_count(3),
	datad => \Mod2|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[19]~36_combout\);

-- Location: LCCOMB_X66_Y52_N4
\Mod2|auto_generated|divider|divider|StageOut[18]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[18]~38_combout\ = (min_count(2) & \Mod2|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(2),
	datad => \Mod2|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[18]~38_combout\);

-- Location: LCCOMB_X66_Y52_N18
\Mod2|auto_generated|divider|divider|StageOut[18]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[18]~39_combout\ = (\Mod2|auto_generated|divider|divider|op_2~0_combout\ & !\Mod2|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|op_2~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|op_2~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[18]~39_combout\);

-- Location: LCCOMB_X65_Y52_N6
\Mod2|auto_generated|divider|divider|op_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_3~0_combout\ = min_count(1) $ (VCC)
-- \Mod2|auto_generated|divider|divider|op_3~1\ = CARRY(min_count(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(1),
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|op_3~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X65_Y52_N8
\Mod2|auto_generated|divider|divider|op_3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_3~2_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[18]~38_combout\ & (((!\Mod2|auto_generated|divider|divider|op_3~1\)))) # (!\Mod2|auto_generated|divider|divider|StageOut[18]~38_combout\ & 
-- ((\Mod2|auto_generated|divider|divider|StageOut[18]~39_combout\ & (!\Mod2|auto_generated|divider|divider|op_3~1\)) # (!\Mod2|auto_generated|divider|divider|StageOut[18]~39_combout\ & ((\Mod2|auto_generated|divider|divider|op_3~1\) # (GND)))))
-- \Mod2|auto_generated|divider|divider|op_3~3\ = CARRY(((!\Mod2|auto_generated|divider|divider|StageOut[18]~38_combout\ & !\Mod2|auto_generated|divider|divider|StageOut[18]~39_combout\)) # (!\Mod2|auto_generated|divider|divider|op_3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[18]~38_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[18]~39_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|op_3~1\,
	combout => \Mod2|auto_generated|divider|divider|op_3~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X65_Y52_N10
\Mod2|auto_generated|divider|divider|op_3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_3~4_combout\ = (\Mod2|auto_generated|divider|divider|op_3~3\ & (((\Mod2|auto_generated|divider|divider|StageOut[19]~37_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[19]~36_combout\)))) # 
-- (!\Mod2|auto_generated|divider|divider|op_3~3\ & ((((\Mod2|auto_generated|divider|divider|StageOut[19]~37_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[19]~36_combout\)))))
-- \Mod2|auto_generated|divider|divider|op_3~5\ = CARRY((!\Mod2|auto_generated|divider|divider|op_3~3\ & ((\Mod2|auto_generated|divider|divider|StageOut[19]~37_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[19]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[19]~37_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[19]~36_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|op_3~3\,
	combout => \Mod2|auto_generated|divider|divider|op_3~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X65_Y52_N12
\Mod2|auto_generated|divider|divider|op_3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_3~6_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[20]~34_combout\ & (((!\Mod2|auto_generated|divider|divider|op_3~5\)))) # (!\Mod2|auto_generated|divider|divider|StageOut[20]~34_combout\ & 
-- ((\Mod2|auto_generated|divider|divider|StageOut[20]~35_combout\ & (!\Mod2|auto_generated|divider|divider|op_3~5\)) # (!\Mod2|auto_generated|divider|divider|StageOut[20]~35_combout\ & ((\Mod2|auto_generated|divider|divider|op_3~5\) # (GND)))))
-- \Mod2|auto_generated|divider|divider|op_3~7\ = CARRY(((!\Mod2|auto_generated|divider|divider|StageOut[20]~34_combout\ & !\Mod2|auto_generated|divider|divider|StageOut[20]~35_combout\)) # (!\Mod2|auto_generated|divider|divider|op_3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[20]~34_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[20]~35_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|op_3~5\,
	combout => \Mod2|auto_generated|divider|divider|op_3~6_combout\,
	cout => \Mod2|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X65_Y52_N14
\Mod2|auto_generated|divider|divider|op_3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_3~8_combout\ = (\Mod2|auto_generated|divider|divider|op_3~7\ & ((((\Mod2|auto_generated|divider|divider|StageOut[21]~33_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[21]~32_combout\))))) # 
-- (!\Mod2|auto_generated|divider|divider|op_3~7\ & ((\Mod2|auto_generated|divider|divider|StageOut[21]~33_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[21]~32_combout\) # (GND))))
-- \Mod2|auto_generated|divider|divider|op_3~9\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[21]~33_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[21]~32_combout\) # (!\Mod2|auto_generated|divider|divider|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[21]~33_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[21]~32_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|op_3~7\,
	combout => \Mod2|auto_generated|divider|divider|op_3~8_combout\,
	cout => \Mod2|auto_generated|divider|divider|op_3~9\);

-- Location: LCCOMB_X65_Y52_N16
\Mod2|auto_generated|divider|divider|op_3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_3~10_combout\ = !\Mod2|auto_generated|divider|divider|op_3~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|op_3~9\,
	combout => \Mod2|auto_generated|divider|divider|op_3~10_combout\);

-- Location: LCCOMB_X65_Y52_N30
\Mod2|auto_generated|divider|divider|StageOut[25]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[25]~49_combout\ = (\Mod2|auto_generated|divider|divider|op_3~10_combout\ & ((\Mod2|auto_generated|divider|divider|op_2~8_combout\ & (min_count(2))) # (!\Mod2|auto_generated|divider|divider|op_2~8_combout\ & 
-- ((\Mod2|auto_generated|divider|divider|op_2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(2),
	datab => \Mod2|auto_generated|divider|divider|op_2~8_combout\,
	datac => \Mod2|auto_generated|divider|divider|op_2~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[25]~49_combout\);

-- Location: LCCOMB_X65_Y52_N2
\Mod2|auto_generated|divider|divider|StageOut[27]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[27]~47_combout\ = (\Mod2|auto_generated|divider|divider|op_3~10_combout\ & ((\Mod2|auto_generated|divider|divider|op_2~8_combout\ & (min_count(4))) # (!\Mod2|auto_generated|divider|divider|op_2~8_combout\ & 
-- ((\Mod2|auto_generated|divider|divider|op_2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(4),
	datab => \Mod2|auto_generated|divider|divider|op_2~4_combout\,
	datac => \Mod2|auto_generated|divider|divider|op_2~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[27]~47_combout\);

-- Location: LCCOMB_X65_Y52_N4
\Mod2|auto_generated|divider|divider|StageOut[28]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[28]~46_combout\ = (\Mod2|auto_generated|divider|divider|op_3~10_combout\ & ((\Mod2|auto_generated|divider|divider|op_2~8_combout\ & ((min_count(5)))) # (!\Mod2|auto_generated|divider|divider|op_2~8_combout\ & 
-- (\Mod2|auto_generated|divider|divider|op_2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|op_2~8_combout\,
	datab => \Mod2|auto_generated|divider|divider|op_2~6_combout\,
	datac => min_count(5),
	datad => \Mod2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[28]~46_combout\);

-- Location: LCCOMB_X65_Y52_N20
\Mod2|auto_generated|divider|divider|StageOut[26]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[26]~48_combout\ = (\Mod2|auto_generated|divider|divider|op_3~10_combout\ & ((\Mod2|auto_generated|divider|divider|op_2~8_combout\ & ((min_count(3)))) # (!\Mod2|auto_generated|divider|divider|op_2~8_combout\ & 
-- (\Mod2|auto_generated|divider|divider|op_2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|op_2~2_combout\,
	datab => \Mod2|auto_generated|divider|divider|op_2~8_combout\,
	datac => min_count(3),
	datad => \Mod2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[26]~48_combout\);

-- Location: LCCOMB_X65_Y52_N26
\process_5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_5~0_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[25]~49_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[27]~47_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[28]~46_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[26]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[25]~49_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[27]~47_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[28]~46_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[26]~48_combout\,
	combout => \process_5~0_combout\);

-- Location: LCCOMB_X64_Y52_N12
\process_5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_5~1_combout\ = (\Mod2|auto_generated|divider|divider|op_3~10_combout\ & (min_count(1))) # (!\Mod2|auto_generated|divider|divider|op_3~10_combout\ & (((\Mod2|auto_generated|divider|divider|op_3~8_combout\) # 
-- (\Mod2|auto_generated|divider|divider|op_3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(1),
	datab => \Mod2|auto_generated|divider|divider|op_3~8_combout\,
	datac => \Mod2|auto_generated|divider|divider|op_3~6_combout\,
	datad => \Mod2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \process_5~1_combout\);

-- Location: LCCOMB_X64_Y52_N30
\Mod2|auto_generated|divider|divider|StageOut[24]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[24]~45_combout\ = (\Mod2|auto_generated|divider|divider|op_3~0_combout\ & !\Mod2|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|op_3~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[24]~45_combout\);

-- Location: LCCOMB_X64_Y52_N2
\Mod2|auto_generated|divider|divider|StageOut[25]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[25]~43_combout\ = (\Mod2|auto_generated|divider|divider|op_3~2_combout\ & !\Mod2|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|op_3~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[25]~43_combout\);

-- Location: LCCOMB_X64_Y52_N8
\Mod2|auto_generated|divider|divider|StageOut[26]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[26]~42_combout\ = (\Mod2|auto_generated|divider|divider|op_3~4_combout\ & !\Mod2|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|op_3~4_combout\,
	datad => \Mod2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X64_Y52_N0
\process_5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_5~2_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[24]~45_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[25]~43_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[26]~42_combout\) # (min_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[24]~45_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[25]~43_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datad => min_count(0),
	combout => \process_5~2_combout\);

-- Location: LCCOMB_X65_Y52_N18
\Mod2|auto_generated|divider|divider|StageOut[28]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[28]~40_combout\ = (\Mod2|auto_generated|divider|divider|op_3~8_combout\ & !\Mod2|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|op_3~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[28]~40_combout\);

-- Location: LCCOMB_X65_Y52_N28
\Mod2|auto_generated|divider|divider|StageOut[27]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[27]~41_combout\ = (\Mod2|auto_generated|divider|divider|op_3~6_combout\ & !\Mod2|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|op_3~6_combout\,
	datad => \Mod2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[27]~41_combout\);

-- Location: LCCOMB_X64_Y52_N28
\Mod2|auto_generated|divider|divider|StageOut[24]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[24]~44_combout\ = (min_count(1) & \Mod2|auto_generated|divider|divider|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min_count(1),
	datad => \Mod2|auto_generated|divider|divider|op_3~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[24]~44_combout\);

-- Location: LCCOMB_X64_Y52_N14
\Mod2|auto_generated|divider|divider|op_4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_4~0_combout\ = min_count(0) $ (VCC)
-- \Mod2|auto_generated|divider|divider|op_4~1\ = CARRY(min_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min_count(0),
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|op_4~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X64_Y52_N16
\Mod2|auto_generated|divider|divider|op_4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_4~2_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[24]~45_combout\ & (((!\Mod2|auto_generated|divider|divider|op_4~1\)))) # (!\Mod2|auto_generated|divider|divider|StageOut[24]~45_combout\ & 
-- ((\Mod2|auto_generated|divider|divider|StageOut[24]~44_combout\ & (!\Mod2|auto_generated|divider|divider|op_4~1\)) # (!\Mod2|auto_generated|divider|divider|StageOut[24]~44_combout\ & ((\Mod2|auto_generated|divider|divider|op_4~1\) # (GND)))))
-- \Mod2|auto_generated|divider|divider|op_4~3\ = CARRY(((!\Mod2|auto_generated|divider|divider|StageOut[24]~45_combout\ & !\Mod2|auto_generated|divider|divider|StageOut[24]~44_combout\)) # (!\Mod2|auto_generated|divider|divider|op_4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[24]~45_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[24]~44_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|op_4~1\,
	combout => \Mod2|auto_generated|divider|divider|op_4~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X64_Y52_N18
\Mod2|auto_generated|divider|divider|op_4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_4~4_combout\ = (\Mod2|auto_generated|divider|divider|op_4~3\ & (((\Mod2|auto_generated|divider|divider|StageOut[25]~49_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[25]~43_combout\)))) # 
-- (!\Mod2|auto_generated|divider|divider|op_4~3\ & ((((\Mod2|auto_generated|divider|divider|StageOut[25]~49_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[25]~43_combout\)))))
-- \Mod2|auto_generated|divider|divider|op_4~5\ = CARRY((!\Mod2|auto_generated|divider|divider|op_4~3\ & ((\Mod2|auto_generated|divider|divider|StageOut[25]~49_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[25]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[25]~49_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[25]~43_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|op_4~3\,
	combout => \Mod2|auto_generated|divider|divider|op_4~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X64_Y52_N20
\Mod2|auto_generated|divider|divider|op_4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_4~6_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[26]~48_combout\ & (((!\Mod2|auto_generated|divider|divider|op_4~5\)))) # (!\Mod2|auto_generated|divider|divider|StageOut[26]~48_combout\ & 
-- ((\Mod2|auto_generated|divider|divider|StageOut[26]~42_combout\ & (!\Mod2|auto_generated|divider|divider|op_4~5\)) # (!\Mod2|auto_generated|divider|divider|StageOut[26]~42_combout\ & ((\Mod2|auto_generated|divider|divider|op_4~5\) # (GND)))))
-- \Mod2|auto_generated|divider|divider|op_4~7\ = CARRY(((!\Mod2|auto_generated|divider|divider|StageOut[26]~48_combout\ & !\Mod2|auto_generated|divider|divider|StageOut[26]~42_combout\)) # (!\Mod2|auto_generated|divider|divider|op_4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[26]~48_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|op_4~5\,
	combout => \Mod2|auto_generated|divider|divider|op_4~6_combout\,
	cout => \Mod2|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X64_Y52_N22
\Mod2|auto_generated|divider|divider|op_4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_4~8_combout\ = (\Mod2|auto_generated|divider|divider|op_4~7\ & ((((\Mod2|auto_generated|divider|divider|StageOut[27]~47_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[27]~41_combout\))))) # 
-- (!\Mod2|auto_generated|divider|divider|op_4~7\ & ((\Mod2|auto_generated|divider|divider|StageOut[27]~47_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[27]~41_combout\) # (GND))))
-- \Mod2|auto_generated|divider|divider|op_4~9\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[27]~47_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[27]~41_combout\) # (!\Mod2|auto_generated|divider|divider|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[27]~47_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[27]~41_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|op_4~7\,
	combout => \Mod2|auto_generated|divider|divider|op_4~8_combout\,
	cout => \Mod2|auto_generated|divider|divider|op_4~9\);

-- Location: LCCOMB_X64_Y52_N24
\Mod2|auto_generated|divider|divider|op_4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_4~10_combout\ = (\Mod2|auto_generated|divider|divider|op_4~9\ & (((\Mod2|auto_generated|divider|divider|StageOut[28]~46_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[28]~40_combout\)))) # 
-- (!\Mod2|auto_generated|divider|divider|op_4~9\ & (!\Mod2|auto_generated|divider|divider|StageOut[28]~46_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[28]~40_combout\)))
-- \Mod2|auto_generated|divider|divider|op_4~11\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[28]~46_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[28]~40_combout\ & !\Mod2|auto_generated|divider|divider|op_4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[28]~46_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[28]~40_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|op_4~9\,
	combout => \Mod2|auto_generated|divider|divider|op_4~10_combout\,
	cout => \Mod2|auto_generated|divider|divider|op_4~11\);

-- Location: LCCOMB_X64_Y52_N26
\Mod2|auto_generated|divider|divider|op_4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|op_4~12_combout\ = \Mod2|auto_generated|divider|divider|op_4~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|op_4~11\,
	combout => \Mod2|auto_generated|divider|divider|op_4~12_combout\);

-- Location: LCCOMB_X63_Y52_N8
\process_5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_5~3_combout\ = (\Mod2|auto_generated|divider|divider|op_4~12_combout\ & ((\process_5~0_combout\) # ((\process_5~1_combout\) # (\process_5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_5~0_combout\,
	datab => \process_5~1_combout\,
	datac => \process_5~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|op_4~12_combout\,
	combout => \process_5~3_combout\);

-- Location: LCCOMB_X67_Y52_N2
\Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (\Equal5~0_combout\ & (!min_count(1) & !min_count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datac => min_count(1),
	datad => min_count(0),
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X64_Y52_N10
\led_state~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_state~1_combout\ = (\Mod2|auto_generated|divider|divider|op_4~12_combout\) # ((!\Mod2|auto_generated|divider|divider|op_4~0_combout\ & (!\Mod2|auto_generated|divider|divider|op_4~2_combout\ & !\Mod2|auto_generated|divider|divider|op_4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|op_4~0_combout\,
	datab => \Mod2|auto_generated|divider|divider|op_4~2_combout\,
	datac => \Mod2|auto_generated|divider|divider|op_4~12_combout\,
	datad => \Mod2|auto_generated|divider|divider|op_4~4_combout\,
	combout => \led_state~1_combout\);

-- Location: LCCOMB_X64_Y52_N4
\led_state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_state~0_combout\ = (\Mod2|auto_generated|divider|divider|op_4~12_combout\) # ((!\Mod2|auto_generated|divider|divider|op_4~8_combout\ & (!\Mod2|auto_generated|divider|divider|op_4~6_combout\ & !\Mod2|auto_generated|divider|divider|op_4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|op_4~8_combout\,
	datab => \Mod2|auto_generated|divider|divider|op_4~6_combout\,
	datac => \Mod2|auto_generated|divider|divider|op_4~12_combout\,
	datad => \Mod2|auto_generated|divider|divider|op_4~10_combout\,
	combout => \led_state~0_combout\);

-- Location: LCCOMB_X63_Y52_N18
\led_state~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_state~2_combout\ = (!\Equal5~1_combout\ & (\led_state~1_combout\ & \led_state~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal5~1_combout\,
	datac => \led_state~1_combout\,
	datad => \led_state~0_combout\,
	combout => \led_state~2_combout\);

-- Location: LCCOMB_X63_Y52_N10
\led_state~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_state~3_combout\ = (!\sw1~input_o\ & (!\process_5~3_combout\ & \led_state~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw1~input_o\,
	datac => \process_5~3_combout\,
	datad => \led_state~2_combout\,
	combout => \led_state~3_combout\);

-- Location: LCCOMB_X63_Y52_N14
\led_on~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_on~1_combout\ = (\led_on~0_combout\) # ((\sw0~input_o\ & (!\led_on~q\ & \led_state~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_on~0_combout\,
	datab => \sw0~input_o\,
	datac => \led_on~q\,
	datad => \led_state~3_combout\,
	combout => \led_on~1_combout\);

-- Location: FF_X63_Y52_N15
led_on : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_inst|clk_divided~clkctrl_outclk\,
	d => \led_on~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_on~q\);

-- Location: LCCOMB_X63_Y52_N24
\led_timer~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_timer~0_combout\ = (!led_timer(1) & (!led_timer(0) & \led_on~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_timer(1),
	datac => led_timer(0),
	datad => \led_on~q\,
	combout => \led_timer~0_combout\);

-- Location: LCCOMB_X63_Y52_N2
\led_state~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_state~6_combout\ = (!\Equal5~1_combout\ & (!\process_5~3_combout\ & (\led_state~1_combout\ & \led_state~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \process_5~3_combout\,
	datac => \led_state~1_combout\,
	datad => \led_state~0_combout\,
	combout => \led_state~6_combout\);

-- Location: LCCOMB_X63_Y52_N28
\led_timer[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_timer[1]~1_combout\ = (\led_on~q\) # ((!\sw1~input_o\ & (\sw0~input_o\ & \led_state~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw1~input_o\,
	datab => \sw0~input_o\,
	datac => \led_on~q\,
	datad => \led_state~6_combout\,
	combout => \led_timer[1]~1_combout\);

-- Location: FF_X63_Y52_N25
\led_timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_inst|clk_divided~clkctrl_outclk\,
	d => \led_timer~0_combout\,
	clrn => \reset~input_o\,
	ena => \led_timer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(0));

-- Location: LCCOMB_X63_Y52_N22
\led_timer~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_timer~2_combout\ = (\led_on~q\ & (!led_timer(1) & led_timer(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_on~q\,
	datac => led_timer(1),
	datad => led_timer(0),
	combout => \led_timer~2_combout\);

-- Location: FF_X63_Y52_N23
\led_timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_inst|clk_divided~clkctrl_outclk\,
	d => \led_timer~2_combout\,
	clrn => \reset~input_o\,
	ena => \led_timer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_timer(1));

-- Location: LCCOMB_X63_Y52_N12
\led_on~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_on~0_combout\ = (\led_on~q\ & ((led_timer(0)) # (!led_timer(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_on~q\,
	datac => led_timer(1),
	datad => led_timer(0),
	combout => \led_on~0_combout\);

-- Location: LCCOMB_X63_Y52_N20
\led_state~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_state~4_combout\ = (!\led_on~q\ & (\sw1~input_o\ $ (\sw0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw1~input_o\,
	datab => \sw0~input_o\,
	datad => \led_on~q\,
	combout => \led_state~4_combout\);

-- Location: LCCOMB_X63_Y52_N16
\led_state~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \led_state~5_combout\ = (\led_state~4_combout\ & (((\led_state~q\) # (\led_state~3_combout\)))) # (!\led_state~4_combout\ & (\led_on~0_combout\ & (\led_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \led_on~0_combout\,
	datab => \led_state~4_combout\,
	datac => \led_state~q\,
	datad => \led_state~3_combout\,
	combout => \led_state~5_combout\);

-- Location: FF_X63_Y52_N17
led_state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_divider_inst|clk_divided~clkctrl_outclk\,
	d => \led_state~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led_state~q\);

-- Location: LCCOMB_X67_Y49_N24
\process_4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_4~0_combout\ = (!\debounce_set|edge_detect~q\) # (!\current_state.SET_HOUR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.SET_HOUR~q\,
	datad => \debounce_set|edge_detect~q\,
	combout => \process_4~0_combout\);

-- Location: LCCOMB_X69_Y49_N18
\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = hour_count(0) $ (VCC)
-- \Add2~1\ = CARRY(hour_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour_count(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X69_Y49_N4
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = !hour_count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour_count(0),
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X69_Y49_N20
\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (hour_count(1) & (\Add2~1\ & VCC)) # (!hour_count(1) & (!\Add2~1\))
-- \Add2~3\ = CARRY((!hour_count(1) & !\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour_count(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X69_Y49_N22
\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (hour_count(2) & ((GND) # (!\Add2~3\))) # (!hour_count(2) & (\Add2~3\ $ (GND)))
-- \Add2~5\ = CARRY((hour_count(2)) # (!\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour_count(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X69_Y49_N14
\Add3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~1_combout\ = (hour_count(0) & hour_count(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour_count(0),
	datac => hour_count(1),
	combout => \Add3~1_combout\);

-- Location: LCCOMB_X70_Y49_N26
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~6_combout\ = hour_count(2) $ (\Add3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour_count(2),
	datad => \Add3~1_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~6_combout\);

-- Location: LCCOMB_X70_Y49_N18
\Mod1|auto_generated|divider|divider|StageOut[22]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[22]~0_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\ & (\Add3~1_combout\ $ ((hour_count(2))))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\ & 
-- (((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~1_combout\,
	datab => hour_count(2),
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[22]~0_combout\);

-- Location: LCCOMB_X70_Y49_N4
\hour_count[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_count[2]~0_combout\ = (\up_down~input_o\ & ((\Mod1|auto_generated|divider|divider|StageOut[22]~0_combout\))) # (!\up_down~input_o\ & (\Add2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_down~input_o\,
	datab => \Add2~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[22]~0_combout\,
	combout => \hour_count[2]~0_combout\);

-- Location: LCCOMB_X71_Y49_N30
\Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = hour_count(2) $ (((hour_count(0) & hour_count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_count(0),
	datab => hour_count(1),
	datac => hour_count(2),
	combout => \Add3~2_combout\);

-- Location: LCCOMB_X67_Y52_N26
\min_count[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_count[5]~10_combout\ = (min_count(3) & (!min_count(2) & \min_count[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(3),
	datab => min_count(2),
	datad => \min_count[5]~6_combout\,
	combout => \min_count[5]~10_combout\);

-- Location: LCCOMB_X67_Y49_N26
\min_carry~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_carry~0_combout\ = (\sec_carry_edge~q\ & ((\current_state.NORMAL~q\ & (\min_carry~q\)) # (!\current_state.NORMAL~q\ & ((\min_count[5]~10_combout\))))) # (!\sec_carry_edge~q\ & (((\min_carry~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec_carry_edge~q\,
	datab => \current_state.NORMAL~q\,
	datac => \min_carry~q\,
	datad => \min_count[5]~10_combout\,
	combout => \min_carry~0_combout\);

-- Location: FF_X67_Y49_N27
min_carry : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \min_carry~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_carry~q\);

-- Location: LCCOMB_X66_Y49_N22
\min_carry_sync1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_carry_sync1~feeder_combout\ = \min_carry~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \min_carry~q\,
	combout => \min_carry_sync1~feeder_combout\);

-- Location: FF_X66_Y49_N23
min_carry_sync1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \min_carry_sync1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_carry_sync1~q\);

-- Location: LCCOMB_X66_Y49_N20
\min_carry_sync2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_carry_sync2~feeder_combout\ = \min_carry_sync1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \min_carry_sync1~q\,
	combout => \min_carry_sync2~feeder_combout\);

-- Location: FF_X66_Y49_N21
min_carry_sync2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \min_carry_sync2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_carry_sync2~q\);

-- Location: LCCOMB_X66_Y49_N4
\min_carry_edge~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_carry_edge~0_combout\ = (!\min_carry_sync1~q\ & \min_carry_sync2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_carry_sync1~q\,
	datad => \min_carry_sync2~q\,
	combout => \min_carry_edge~0_combout\);

-- Location: FF_X66_Y49_N5
min_carry_edge : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \min_carry_edge~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \min_carry_edge~q\);

-- Location: LCCOMB_X67_Y49_N20
\hour_count[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_count[2]~9_combout\ = (\current_state.SET_HOUR~q\ & ((\debounce_set|edge_detect~q\) # ((\min_carry_edge~q\ & !\current_state.NORMAL~q\)))) # (!\current_state.SET_HOUR~q\ & (\min_carry_edge~q\ & (!\current_state.NORMAL~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.SET_HOUR~q\,
	datab => \min_carry_edge~q\,
	datac => \current_state.NORMAL~q\,
	datad => \debounce_set|edge_detect~q\,
	combout => \hour_count[2]~9_combout\);

-- Location: FF_X70_Y49_N5
\hour_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \hour_count[2]~0_combout\,
	asdata => \Add3~2_combout\,
	clrn => \reset~input_o\,
	sload => \process_4~0_combout\,
	ena => \hour_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_count(2));

-- Location: LCCOMB_X70_Y49_N22
\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (hour_count(1) & (hour_count(3) & (hour_count(2) & hour_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_count(1),
	datab => hour_count(3),
	datac => hour_count(2),
	datad => hour_count(0),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X70_Y49_N12
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~0_combout\ = \hour_count[2]~3_combout\ $ (hour_count(3) $ (VCC))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~1\ = CARRY(\hour_count[2]~3_combout\ $ (hour_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_count[2]~3_combout\,
	datab => hour_count(3),
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~1\);

-- Location: LCCOMB_X70_Y49_N14
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~1\ & (\Add3~0_combout\ $ ((!hour_count(4))))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~1\ & 
-- ((\Add3~0_combout\ $ (hour_count(4))) # (GND)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~3\ = CARRY((\Add3~0_combout\ $ (!hour_count(4))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => hour_count(4),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~3\);

-- Location: LCCOMB_X70_Y49_N16
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\ = \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\);

-- Location: LCCOMB_X70_Y49_N10
\Mod1|auto_generated|divider|divider|StageOut[20]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\ & (!hour_count(0))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour_count(0),
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~2_combout\);

-- Location: LCCOMB_X70_Y49_N0
\hour_count[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_count[0]~2_combout\ = (\up_down~input_o\ & ((\Mod1|auto_generated|divider|divider|StageOut[20]~2_combout\))) # (!\up_down~input_o\ & (\Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \up_down~input_o\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[20]~2_combout\,
	combout => \hour_count[0]~2_combout\);

-- Location: LCCOMB_X71_Y49_N0
\hour_count[0]~_wirecell\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_count[0]~_wirecell_combout\ = !hour_count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour_count(0),
	combout => \hour_count[0]~_wirecell_combout\);

-- Location: FF_X70_Y49_N1
\hour_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \hour_count[0]~2_combout\,
	asdata => \hour_count[0]~_wirecell_combout\,
	clrn => \reset~input_o\,
	sload => \process_4~0_combout\,
	ena => \hour_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_count(0));

-- Location: LCCOMB_X71_Y49_N12
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~8_combout\ = hour_count(1) $ (hour_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour_count(1),
	datac => hour_count(0),
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~8_combout\);

-- Location: LCCOMB_X70_Y49_N28
\Mod1|auto_generated|divider|divider|StageOut[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~1_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\ & (hour_count(1) $ ((hour_count(0))))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\ & 
-- (((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_count(1),
	datab => hour_count(0),
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~1_combout\);

-- Location: LCCOMB_X70_Y49_N30
\hour_count[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_count[1]~1_combout\ = (\up_down~input_o\ & ((\Mod1|auto_generated|divider|divider|StageOut[21]~1_combout\))) # (!\up_down~input_o\ & (\Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \up_down~input_o\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[21]~1_combout\,
	combout => \hour_count[1]~1_combout\);

-- Location: LCCOMB_X69_Y49_N16
\Add3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~3_combout\ = hour_count(0) $ (hour_count(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour_count(0),
	datac => hour_count(1),
	combout => \Add3~3_combout\);

-- Location: FF_X70_Y49_N31
\hour_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \hour_count[1]~1_combout\,
	asdata => \Add3~3_combout\,
	clrn => \reset~input_o\,
	sload => \process_4~0_combout\,
	ena => \hour_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_count(1));

-- Location: LCCOMB_X70_Y49_N6
\hour_count[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_count[2]~3_combout\ = (hour_count(1) & (hour_count(2) & hour_count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_count(1),
	datac => hour_count(2),
	datad => hour_count(0),
	combout => \hour_count[2]~3_combout\);

-- Location: LCCOMB_X69_Y49_N30
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!hour_count(1) & (!hour_count(4) & (!hour_count(3) & !hour_count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_count(1),
	datab => hour_count(4),
	datac => hour_count(3),
	datad => hour_count(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X69_Y49_N24
\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (hour_count(3) & (\Add2~5\ & VCC)) # (!hour_count(3) & (!\Add2~5\))
-- \Add2~7\ = CARRY((!hour_count(3) & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour_count(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X69_Y49_N0
\hour_count~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_count~11_combout\ = (!\up_down~input_o\ & (\Add2~6_combout\ & ((hour_count(0)) # (!\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \up_down~input_o\,
	datab => hour_count(0),
	datac => \Equal1~0_combout\,
	datad => \Add2~6_combout\,
	combout => \hour_count~11_combout\);

-- Location: LCCOMB_X70_Y49_N8
\hour_count~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_count~12_combout\ = (\hour_count~11_combout\) # ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~0_combout\ & (\up_down~input_o\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~0_combout\,
	datab => \up_down~input_o\,
	datac => \hour_count~11_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\,
	combout => \hour_count~12_combout\);

-- Location: LCCOMB_X70_Y49_N24
\hour_count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_count~4_combout\ = (((\up_down~input_o\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\)) # (!\debounce_set|edge_detect~q\)) # (!\current_state.SET_HOUR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.SET_HOUR~q\,
	datab => \up_down~input_o\,
	datac => \debounce_set|edge_detect~q\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\,
	combout => \hour_count~4_combout\);

-- Location: LCCOMB_X70_Y49_N2
\hour_count~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_count~10_combout\ = (\hour_count~4_combout\ & (\hour_count[2]~3_combout\ $ (hour_count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_count[2]~3_combout\,
	datab => hour_count(3),
	datad => \hour_count~4_combout\,
	combout => \hour_count~10_combout\);

-- Location: LCCOMB_X70_Y49_N20
\hour_count~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_count~13_combout\ = (!\hour_count[2]~7_combout\ & ((\hour_count~10_combout\) # ((!\process_4~0_combout\ & \hour_count~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_count[2]~7_combout\,
	datab => \process_4~0_combout\,
	datac => \hour_count~12_combout\,
	datad => \hour_count~10_combout\,
	combout => \hour_count~13_combout\);

-- Location: FF_X70_Y49_N21
\hour_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \hour_count~13_combout\,
	clrn => \reset~input_o\,
	ena => \hour_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_count(3));

-- Location: LCCOMB_X69_Y49_N12
\hour_count[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_count[2]~7_combout\ = (\process_4~0_combout\ & (hour_count(4) & (!hour_count(3) & \hour_count[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_4~0_combout\,
	datab => hour_count(4),
	datac => hour_count(3),
	datad => \hour_count[2]~3_combout\,
	combout => \hour_count[2]~7_combout\);

-- Location: LCCOMB_X69_Y49_N26
\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = \Add2~7\ $ (hour_count(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => hour_count(4),
	cin => \Add2~7\,
	combout => \Add2~8_combout\);

-- Location: LCCOMB_X69_Y49_N2
\hour_count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_count~6_combout\ = (\up_down~input_o\ & (((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\)))) # (!\up_down~input_o\ & (\Add2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \up_down~input_o\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~4_combout\,
	combout => \hour_count~6_combout\);

-- Location: LCCOMB_X69_Y49_N28
\hour_count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_count~5_combout\ = (\hour_count~4_combout\ & (hour_count(4) $ (\Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_count(4),
	datab => \Add3~0_combout\,
	datad => \hour_count~4_combout\,
	combout => \hour_count~5_combout\);

-- Location: LCCOMB_X69_Y49_N6
\hour_count~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_count~8_combout\ = (!\hour_count[2]~7_combout\ & ((\hour_count~5_combout\) # ((\hour_count~6_combout\ & !\process_4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_count[2]~7_combout\,
	datab => \hour_count~6_combout\,
	datac => \process_4~0_combout\,
	datad => \hour_count~5_combout\,
	combout => \hour_count~8_combout\);

-- Location: FF_X69_Y49_N7
\hour_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \hour_count~8_combout\,
	clrn => \reset~input_o\,
	ena => \hour_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => hour_count(4));

-- Location: LCCOMB_X74_Y45_N0
\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = hour_count(2) $ (VCC)
-- \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(hour_count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour_count(2),
	datad => VCC,
	combout => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X74_Y45_N2
\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (hour_count(3) & (\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!hour_count(3) & 
-- (!\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!hour_count(3) & !\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour_count(3),
	datad => VCC,
	cin => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X74_Y45_N4
\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (hour_count(4) & (\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!hour_count(4) & 
-- (!\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((hour_count(4) & !\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => hour_count(4),
	datad => VCC,
	cin => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X74_Y45_N6
\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X74_Y45_N12
\hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ = (hour_count(4) & \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour_count(4),
	datad => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: LCCOMB_X74_Y45_N14
\hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ = (\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\);

-- Location: LCCOMB_X74_Y45_N10
\hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\ = (\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\);

-- Location: LCCOMB_X74_Y45_N28
\hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ = (hour_count(3) & \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour_count(3),
	datad => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\);

-- Location: LCCOMB_X74_Y45_N30
\hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ = (hour_count(2) & \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour_count(2),
	datad => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\);

-- Location: LCCOMB_X74_Y45_N8
\hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ = (\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: LCCOMB_X74_Y45_N26
\hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\ = (hour_count(1) & \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_count(1),
	datad => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\);

-- Location: LCCOMB_X74_Y44_N0
\hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\ = (hour_count(1) & !\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour_count(1),
	datad => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\);

-- Location: LCCOMB_X74_Y45_N16
\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\ = CARRY((\hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\) # (\hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~6_combout\,
	datab => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~7_combout\,
	datad => VCC,
	cout => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\);

-- Location: LCCOMB_X74_Y45_N18
\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ = CARRY((!\hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ & (!\hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & 
-- !\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~4_combout\,
	datab => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datad => VCC,
	cin => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1_cout\,
	cout => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\);

-- Location: LCCOMB_X74_Y45_N20
\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\ = CARRY((!\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\ & 
-- ((\hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\) # (\hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~3_combout\,
	datab => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~2_combout\,
	datad => VCC,
	cin => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3_cout\,
	cout => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\);

-- Location: LCCOMB_X74_Y45_N22
\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ & (!\hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\ & 
-- !\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~0_combout\,
	datab => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~1_combout\,
	datad => VCC,
	cin => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5_cout\,
	cout => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X74_Y45_N24
\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X75_Y41_N28
\hour_high_bcd_to_7seg|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_high_bcd_to_7seg|Mux6~0_combout\ = (!\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hour_high_bcd_to_7seg|Mux6~0_combout\);

-- Location: LCCOMB_X75_Y41_N6
\hour_high_bcd_to_7seg|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_high_bcd_to_7seg|Mux4~0_combout\ = (\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hour_high_bcd_to_7seg|Mux4~0_combout\);

-- Location: LCCOMB_X75_Y41_N20
\hour_high_bcd_to_7seg|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_high_bcd_to_7seg|Mux1~0_combout\ = (!\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\) # (!\hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \hour_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hour_high_bcd_to_7seg|Mux1~0_combout\);

-- Location: LCCOMB_X71_Y45_N6
\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = hour_count(2) $ (VCC)
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(hour_count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => hour_count(2),
	datad => VCC,
	combout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X71_Y45_N8
\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (hour_count(3) & (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!hour_count(3) & 
-- (!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!hour_count(3) & !\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour_count(3),
	datad => VCC,
	cin => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X71_Y45_N10
\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (hour_count(4) & (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!hour_count(4) & 
-- (!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((hour_count(4) & !\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => hour_count(4),
	datad => VCC,
	cin => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X71_Y45_N12
\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X71_Y45_N14
\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[17]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\ = (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\);

-- Location: LCCOMB_X72_Y45_N22
\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[17]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\ = (hour_count(3) & \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour_count(3),
	datad => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\);

-- Location: LCCOMB_X71_Y45_N0
\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[16]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ = (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & 
-- !\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\);

-- Location: LCCOMB_X72_Y45_N24
\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[16]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ = (hour_count(2) & \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => hour_count(2),
	datad => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\);

-- Location: LCCOMB_X72_Y45_N10
\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\ = (hour_count(1) & !\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour_count(1),
	datad => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\);

-- Location: LCCOMB_X72_Y45_N8
\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ = (hour_count(1) & \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour_count(1),
	datad => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\);

-- Location: LCCOMB_X72_Y45_N12
\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\) # (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\)))
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\) # (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\,
	datab => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datad => VCC,
	combout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X72_Y45_N14
\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\) # 
-- (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\)))) # (!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ & 
-- (!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\)))
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ & (!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ & 
-- !\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\,
	datab => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datad => VCC,
	cin => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X72_Y45_N16
\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\) # 
-- (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\)))) # (!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\) # 
-- (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\)))))
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\) # 
-- (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datab => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datad => VCC,
	cin => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X71_Y45_N16
\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ = (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\);

-- Location: LCCOMB_X72_Y45_N28
\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\ = (hour_count(4) & \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => hour_count(4),
	datad => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\);

-- Location: LCCOMB_X72_Y45_N18
\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ & (!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\ & 
-- !\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\,
	datab => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\,
	datad => VCC,
	cin => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X72_Y45_N20
\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X72_Y45_N4
\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ = (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\) # 
-- ((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\)))) # (!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datab => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datad => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\);

-- Location: LCCOMB_X72_Y45_N26
\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ = (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((hour_count(1)))) # 
-- (!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => hour_count(1),
	datad => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\);

-- Location: LCCOMB_X72_Y45_N30
\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ = (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\) # 
-- ((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\)))) # (!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\,
	datab => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datac => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\);

-- Location: LCCOMB_X71_Y48_N0
\hour_low_bcd_to_7seg|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_low_bcd_to_7seg|Mux6~0_combout\ = (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\)) # 
-- (!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ $ (((!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & 
-- hour_count(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datac => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datad => hour_count(0),
	combout => \hour_low_bcd_to_7seg|Mux6~0_combout\);

-- Location: LCCOMB_X71_Y48_N6
\hour_low_bcd_to_7seg|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_low_bcd_to_7seg|Mux5~0_combout\ = (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & ((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\) # 
-- ((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\)))) # (!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & 
-- (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ $ (hour_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datac => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datad => hour_count(0),
	combout => \hour_low_bcd_to_7seg|Mux5~0_combout\);

-- Location: LCCOMB_X71_Y48_N16
\hour_low_bcd_to_7seg|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_low_bcd_to_7seg|Mux4~0_combout\ = (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\)) # 
-- (!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & ((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\) # 
-- (!hour_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datac => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datad => hour_count(0),
	combout => \hour_low_bcd_to_7seg|Mux4~0_combout\);

-- Location: LCCOMB_X71_Y48_N10
\hour_low_bcd_to_7seg|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_low_bcd_to_7seg|Mux3~0_combout\ = (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & ((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\) # 
-- ((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & hour_count(0))))) # (!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & 
-- (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ $ (((!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & hour_count(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datac => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datad => hour_count(0),
	combout => \hour_low_bcd_to_7seg|Mux3~0_combout\);

-- Location: LCCOMB_X71_Y48_N8
\hour_low_bcd_to_7seg|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_low_bcd_to_7seg|Mux2~0_combout\ = (hour_count(0)) # ((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\)) # 
-- (!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & ((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datac => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datad => hour_count(0),
	combout => \hour_low_bcd_to_7seg|Mux2~0_combout\);

-- Location: LCCOMB_X71_Y48_N26
\hour_low_bcd_to_7seg|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_low_bcd_to_7seg|Mux1~0_combout\ = (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & ((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\) # 
-- ((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & hour_count(0))))) # (!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & 
-- ((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\) # ((!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & hour_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datac => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datad => hour_count(0),
	combout => \hour_low_bcd_to_7seg|Mux1~0_combout\);

-- Location: LCCOMB_X71_Y48_N24
\hour_low_bcd_to_7seg|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \hour_low_bcd_to_7seg|Mux0~0_combout\ = (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & (!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & ((!hour_count(0)) # 
-- (!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\)))) # (!\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & (\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ $ 
-- ((\hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datac => \hour_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datad => hour_count(0),
	combout => \hour_low_bcd_to_7seg|Mux0~0_combout\);

-- Location: LCCOMB_X69_Y50_N10
\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = min_count(3) $ (VCC)
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(min_count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(3),
	datad => VCC,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X69_Y50_N12
\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (min_count(4) & (\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!min_count(4) & 
-- (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!min_count(4) & !\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min_count(4),
	datad => VCC,
	cin => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X69_Y50_N14
\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (min_count(5) & (\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!min_count(5) & 
-- (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((min_count(5) & !\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min_count(5),
	datad => VCC,
	cin => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X69_Y50_N16
\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X69_Y50_N30
\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ = (\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X69_Y50_N0
\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ = (min_count(5) & \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min_count(5),
	datad => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X69_Y50_N6
\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ = (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X69_Y50_N4
\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ = (min_count(4) & \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min_count(4),
	datad => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X67_Y50_N12
\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ = (min_count(3) & \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min_count(3),
	datad => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X69_Y50_N8
\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ = (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X70_Y50_N4
\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ = (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & min_count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => min_count(2),
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X69_Y50_N28
\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ = (min_count(2) & \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min_count(2),
	datad => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X69_Y50_N18
\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\)))
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datab => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datad => VCC,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X69_Y50_N20
\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\) # 
-- (\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\)))) # (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\)))
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ & (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- !\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datab => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datad => VCC,
	cin => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X69_Y50_N22
\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\)))) # (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\)))))
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datab => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datad => VCC,
	cin => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X69_Y50_N24
\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ & (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ & 
-- !\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datab => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datad => VCC,
	cin => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X69_Y50_N26
\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X70_Y50_N10
\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[23]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ = (\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (min_count(4))) # (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => min_count(4),
	datac => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\);

-- Location: LCCOMB_X70_Y50_N2
\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[23]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ = (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\);

-- Location: LCCOMB_X70_Y50_N8
\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[22]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ = (\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (min_count(3))) # (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => min_count(3),
	datac => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\);

-- Location: LCCOMB_X70_Y50_N24
\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[22]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ = (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LCCOMB_X70_Y50_N6
\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[21]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ = (\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & min_count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => min_count(2),
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\);

-- Location: LCCOMB_X70_Y50_N0
\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[21]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ = (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\);

-- Location: LCCOMB_X70_Y50_N22
\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[20]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ = (min_count(1) & \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(1),
	datac => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\);

-- Location: LCCOMB_X70_Y50_N26
\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[20]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ = (min_count(1) & !\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(1),
	datac => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\);

-- Location: LCCOMB_X70_Y50_N12
\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\ = CARRY((\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\) # (\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\,
	datab => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\,
	datad => VCC,
	cout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\);

-- Location: LCCOMB_X70_Y50_N14
\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ = CARRY((!\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ & (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ & 
-- !\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\,
	datab => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\,
	datad => VCC,
	cin => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1_cout\,
	cout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\);

-- Location: LCCOMB_X70_Y50_N16
\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\ = CARRY((!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\ & 
-- ((\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\) # (\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\,
	datab => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\,
	datad => VCC,
	cin => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3_cout\,
	cout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\);

-- Location: LCCOMB_X70_Y50_N18
\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ & (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ & 
-- !\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\,
	datab => \min_bin_to_bcd|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\,
	datad => VCC,
	cin => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5_cout\,
	cout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X70_Y50_N20
\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X69_Y50_N2
\min_high_bcd_to_7seg|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_high_bcd_to_7seg|Mux6~0_combout\ = (\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ $ 
-- (\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \min_high_bcd_to_7seg|Mux6~0_combout\);

-- Location: LCCOMB_X67_Y50_N30
\min_high_bcd_to_7seg|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_high_bcd_to_7seg|Mux5~0_combout\ = (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ 
-- (\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \min_high_bcd_to_7seg|Mux5~0_combout\);

-- Location: LCCOMB_X70_Y50_N28
\min_high_bcd_to_7seg|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_high_bcd_to_7seg|Mux4~0_combout\ = (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \min_high_bcd_to_7seg|Mux4~0_combout\);

-- Location: LCCOMB_X67_Y50_N4
\min_high_bcd_to_7seg|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_high_bcd_to_7seg|Mux3~0_combout\ = (\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- !\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \min_high_bcd_to_7seg|Mux3~0_combout\);

-- Location: LCCOMB_X67_Y50_N26
\min_high_bcd_to_7seg|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_high_bcd_to_7seg|Mux2~0_combout\ = ((!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # 
-- (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \min_high_bcd_to_7seg|Mux2~0_combout\);

-- Location: LCCOMB_X67_Y50_N0
\min_high_bcd_to_7seg|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_high_bcd_to_7seg|Mux1~0_combout\ = (\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # 
-- (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \min_high_bcd_to_7seg|Mux1~0_combout\);

-- Location: LCCOMB_X67_Y50_N2
\min_high_bcd_to_7seg|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_high_bcd_to_7seg|Mux0~0_combout\ = (\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # 
-- (!\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # 
-- (\min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \min_bin_to_bcd|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \min_high_bcd_to_7seg|Mux0~0_combout\);

-- Location: LCCOMB_X70_Y51_N0
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = min_count(3) $ (VCC)
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(min_count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min_count(3),
	datad => VCC,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X70_Y51_N2
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (min_count(4) & (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!min_count(4) & 
-- (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!min_count(4) & !\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => min_count(4),
	datad => VCC,
	cin => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X70_Y51_N4
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (min_count(5) & (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!min_count(5) & 
-- (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((min_count(5) & !\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => min_count(5),
	datad => VCC,
	cin => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X70_Y51_N6
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X70_Y51_N12
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ = (min_count(5) & \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min_count(5),
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X70_Y51_N14
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ = (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & 
-- !\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X69_Y51_N0
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[20]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ = (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & 
-- !\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X70_Y51_N16
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[20]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ = (min_count(4) & \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min_count(4),
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X70_Y51_N10
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[19]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ = (min_count(3) & \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => min_count(3),
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X70_Y51_N8
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[19]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ = (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X71_Y51_N4
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ = (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & min_count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => min_count(2),
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X70_Y51_N18
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ = (min_count(2) & \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => min_count(2),
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X70_Y51_N20
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\) # (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\)))
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\) # (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datad => VCC,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X70_Y51_N22
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\) # 
-- (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\)))) # (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\)))
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ & (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- !\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datad => VCC,
	cin => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X70_Y51_N24
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\)))) # (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\)))))
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datad => VCC,
	cin => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X70_Y51_N26
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\) # 
-- (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\)))) # (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\)))
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- !\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datad => VCC,
	cin => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X70_Y51_N28
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X71_Y51_N10
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ = (min_count(2) & \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(2),
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\);

-- Location: LCCOMB_X69_Y51_N24
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ = (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & 
-- !\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\);

-- Location: LCCOMB_X69_Y51_N22
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\ = (min_count(1) & \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(1),
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\);

-- Location: LCCOMB_X69_Y51_N4
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\ = (min_count(1) & !\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(1),
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\);

-- Location: LCCOMB_X69_Y51_N8
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\) # (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\)))
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\) # (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\,
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\,
	datad => VCC,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X69_Y51_N10
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\) # 
-- (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\)))) # (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ & 
-- (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\)))
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ & (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ & 
-- !\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datad => VCC,
	cin => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X70_Y51_N30
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[28]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[28]~42_combout\ = (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (min_count(5))) # (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(5),
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[28]~42_combout\);

-- Location: LCCOMB_X71_Y51_N14
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[28]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\ = (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & 
-- !\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\);

-- Location: LCCOMB_X71_Y51_N12
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ = (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & 
-- !\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\);

-- Location: LCCOMB_X69_Y51_N28
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~43_combout\ = (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((min_count(4)))) # (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => min_count(4),
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~43_combout\);

-- Location: LCCOMB_X69_Y51_N26
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\ = (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & 
-- !\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\);

-- Location: LCCOMB_X69_Y51_N6
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\ = (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((min_count(3)))) # (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => min_count(3),
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\);

-- Location: LCCOMB_X69_Y51_N12
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\)))) # (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\)))))
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\,
	datad => VCC,
	cin => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X69_Y51_N14
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ & (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~43_combout\ & 
-- !\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\,
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[27]~43_combout\,
	datad => VCC,
	cin => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X69_Y51_N16
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[28]~42_combout\) # ((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\) # 
-- (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[28]~42_combout\,
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\,
	datad => VCC,
	cin => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	cout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X69_Y51_N18
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X69_Y51_N20
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ = (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\) # 
-- ((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\)))) # (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datac => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\);

-- Location: LCCOMB_X69_Y51_N30
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ = (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\)))) # (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[26]~44_combout\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\);

-- Location: LCCOMB_X69_Y51_N2
\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ = (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (min_count(1))) # 
-- (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(1),
	datac => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\);

-- Location: LCCOMB_X69_Y53_N28
\min_low_bcd_to_7seg|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_low_bcd_to_7seg|Mux6~0_combout\ = (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & (((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\)))) # 
-- (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ $ (((min_count(0) & 
-- !\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(0),
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \min_low_bcd_to_7seg|Mux6~0_combout\);

-- Location: LCCOMB_X69_Y53_N14
\min_low_bcd_to_7seg|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_low_bcd_to_7seg|Mux5~0_combout\ = (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & ((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\) # (min_count(0) $ 
-- (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\)))) # (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ & 
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(0),
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \min_low_bcd_to_7seg|Mux5~0_combout\);

-- Location: LCCOMB_X69_Y53_N4
\min_low_bcd_to_7seg|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_low_bcd_to_7seg|Mux4~0_combout\ = (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\)))) # 
-- (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & ((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\) # 
-- (!min_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(0),
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \min_low_bcd_to_7seg|Mux4~0_combout\);

-- Location: LCCOMB_X69_Y53_N26
\min_low_bcd_to_7seg|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_low_bcd_to_7seg|Mux3~0_combout\ = (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & ((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\) # ((min_count(0) & 
-- \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\)))) # (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ $ 
-- (((min_count(0) & !\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(0),
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \min_low_bcd_to_7seg|Mux3~0_combout\);

-- Location: LCCOMB_X69_Y53_N8
\min_low_bcd_to_7seg|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_low_bcd_to_7seg|Mux2~0_combout\ = (min_count(0)) # ((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & ((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\))) # 
-- (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(0),
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \min_low_bcd_to_7seg|Mux2~0_combout\);

-- Location: LCCOMB_X69_Y53_N10
\min_low_bcd_to_7seg|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_low_bcd_to_7seg|Mux1~0_combout\ = (min_count(0) & ((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\) # (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ $ 
-- (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\)))) # (!min_count(0) & ((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & 
-- (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\)) # (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & ((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(0),
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \min_low_bcd_to_7seg|Mux1~0_combout\);

-- Location: LCCOMB_X69_Y53_N12
\min_low_bcd_to_7seg|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_low_bcd_to_7seg|Mux0~0_combout\ = (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ & 
-- ((!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\) # (!min_count(0))))) # (!\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & 
-- ((\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ $ (\min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min_count(0),
	datab => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datac => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datad => \min_bin_to_bcd|Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	combout => \min_low_bcd_to_7seg|Mux0~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_led_out <= \led_out~output_o\;

ww_seg_hour_high(0) <= \seg_hour_high[0]~output_o\;

ww_seg_hour_high(1) <= \seg_hour_high[1]~output_o\;

ww_seg_hour_high(2) <= \seg_hour_high[2]~output_o\;

ww_seg_hour_high(3) <= \seg_hour_high[3]~output_o\;

ww_seg_hour_high(4) <= \seg_hour_high[4]~output_o\;

ww_seg_hour_high(5) <= \seg_hour_high[5]~output_o\;

ww_seg_hour_high(6) <= \seg_hour_high[6]~output_o\;

ww_seg_hour_low(0) <= \seg_hour_low[0]~output_o\;

ww_seg_hour_low(1) <= \seg_hour_low[1]~output_o\;

ww_seg_hour_low(2) <= \seg_hour_low[2]~output_o\;

ww_seg_hour_low(3) <= \seg_hour_low[3]~output_o\;

ww_seg_hour_low(4) <= \seg_hour_low[4]~output_o\;

ww_seg_hour_low(5) <= \seg_hour_low[5]~output_o\;

ww_seg_hour_low(6) <= \seg_hour_low[6]~output_o\;

ww_seg_min_high(0) <= \seg_min_high[0]~output_o\;

ww_seg_min_high(1) <= \seg_min_high[1]~output_o\;

ww_seg_min_high(2) <= \seg_min_high[2]~output_o\;

ww_seg_min_high(3) <= \seg_min_high[3]~output_o\;

ww_seg_min_high(4) <= \seg_min_high[4]~output_o\;

ww_seg_min_high(5) <= \seg_min_high[5]~output_o\;

ww_seg_min_high(6) <= \seg_min_high[6]~output_o\;

ww_seg_min_low(0) <= \seg_min_low[0]~output_o\;

ww_seg_min_low(1) <= \seg_min_low[1]~output_o\;

ww_seg_min_low(2) <= \seg_min_low[2]~output_o\;

ww_seg_min_low(3) <= \seg_min_low[3]~output_o\;

ww_seg_min_low(4) <= \seg_min_low[4]~output_o\;

ww_seg_min_low(5) <= \seg_min_low[5]~output_o\;

ww_seg_min_low(6) <= \seg_min_low[6]~output_o\;
END structure;


