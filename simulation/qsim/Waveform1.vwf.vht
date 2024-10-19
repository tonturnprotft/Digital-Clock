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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/15/2024 15:06:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          clock_controller
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY clock_controller_vhd_vec_tst IS
END clock_controller_vhd_vec_tst;
ARCHITECTURE clock_controller_arch OF clock_controller_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_in : STD_LOGIC;
SIGNAL mode : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL seg_hour_high : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seg_hour_low : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seg_min_high : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL seg_min_low : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL set : STD_LOGIC;
SIGNAL up_down : STD_LOGIC;
COMPONENT clock_controller
	PORT (
	clk_in : IN STD_LOGIC;
	mode : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	seg_hour_high : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	seg_hour_low : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	seg_min_high : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	seg_min_low : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	set : IN STD_LOGIC;
	up_down : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : clock_controller
	PORT MAP (
-- list connections between master ports and signals
	clk_in => clk_in,
	mode => mode,
	reset => reset,
	seg_hour_high => seg_hour_high,
	seg_hour_low => seg_hour_low,
	seg_min_high => seg_min_high,
	seg_min_low => seg_min_low,
	set => set,
	up_down => up_down
	);

-- clk_in
t_prcs_clk_in: PROCESS
BEGIN
LOOP
	clk_in <= '0';
	WAIT FOR 10000 ps;
	clk_in <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_in;

-- mode
t_prcs_mode: PROCESS
BEGIN
	mode <= '0';
	WAIT FOR 10000 ps;
	mode <= '1';
	WAIT FOR 10000 ps;
	mode <= '0';
	WAIT FOR 15000 ps;
	mode <= '1';
	WAIT FOR 10000 ps;
	mode <= '0';
	WAIT FOR 10000 ps;
	mode <= '1';
	WAIT FOR 10000 ps;
	mode <= '0';
	WAIT FOR 5000 ps;
	mode <= '1';
	WAIT FOR 5000 ps;
	mode <= '0';
	WAIT FOR 5000 ps;
	mode <= '1';
	WAIT FOR 5000 ps;
	mode <= '0';
	WAIT FOR 20000 ps;
	mode <= '1';
	WAIT FOR 20000 ps;
	mode <= '0';
	WAIT FOR 15000 ps;
	mode <= '1';
	WAIT FOR 25000 ps;
	mode <= '0';
	WAIT FOR 15000 ps;
	mode <= '1';
	WAIT FOR 20000 ps;
	mode <= '0';
	WAIT FOR 10000 ps;
	mode <= '1';
	WAIT FOR 5000 ps;
	mode <= '0';
	WAIT FOR 5000 ps;
	mode <= '1';
	WAIT FOR 5000 ps;
	mode <= '0';
	WAIT FOR 5000 ps;
	mode <= '1';
	WAIT FOR 10000 ps;
	mode <= '0';
	WAIT FOR 5000 ps;
	mode <= '1';
	WAIT FOR 5000 ps;
	mode <= '0';
	WAIT FOR 5000 ps;
	mode <= '1';
	WAIT FOR 5000 ps;
	mode <= '0';
	WAIT FOR 5000 ps;
	mode <= '1';
	WAIT FOR 5000 ps;
	mode <= '0';
	WAIT FOR 10000 ps;
	mode <= '1';
	WAIT FOR 5000 ps;
	mode <= '0';
	WAIT FOR 10000 ps;
	mode <= '1';
	WAIT FOR 10000 ps;
	mode <= '0';
	WAIT FOR 5000 ps;
	mode <= '1';
	WAIT FOR 5000 ps;
	mode <= '0';
	WAIT FOR 10000 ps;
	mode <= '1';
	WAIT FOR 10000 ps;
	mode <= '0';
	WAIT FOR 5000 ps;
	mode <= '1';
	WAIT FOR 5000 ps;
	mode <= '0';
	WAIT FOR 5000 ps;
	mode <= '1';
	WAIT FOR 30000 ps;
	mode <= '0';
	WAIT FOR 10000 ps;
	mode <= '1';
	WAIT FOR 5000 ps;
	mode <= '0';
	WAIT FOR 15000 ps;
	mode <= '1';
	WAIT FOR 10000 ps;
	mode <= '0';
	WAIT FOR 5000 ps;
	mode <= '1';
	WAIT FOR 5000 ps;
	mode <= '0';
	WAIT FOR 15000 ps;
	mode <= '1';
	WAIT FOR 5000 ps;
	mode <= '0';
	WAIT FOR 5000 ps;
	mode <= '1';
	WAIT FOR 5000 ps;
	mode <= '0';
	WAIT FOR 10000 ps;
	mode <= '1';
	WAIT FOR 10000 ps;
	mode <= '0';
	WAIT FOR 10000 ps;
	mode <= '1';
	WAIT FOR 25000 ps;
	mode <= '0';
	WAIT FOR 5000 ps;
	mode <= '1';
	WAIT FOR 10000 ps;
	mode <= '0';
	WAIT FOR 5000 ps;
	mode <= '1';
	WAIT FOR 5000 ps;
	mode <= '0';
	WAIT FOR 5000 ps;
	mode <= '1';
	WAIT FOR 15000 ps;
	mode <= '0';
	WAIT FOR 5000 ps;
	mode <= '1';
	WAIT FOR 5000 ps;
	mode <= '0';
	WAIT FOR 10000 ps;
	mode <= '1';
	WAIT FOR 30000 ps;
	mode <= '0';
	WAIT FOR 10000 ps;
	mode <= '1';
	WAIT FOR 5000 ps;
	mode <= '0';
	WAIT FOR 5000 ps;
	mode <= '1';
	WAIT FOR 15000 ps;
	mode <= '0';
	WAIT FOR 50000 ps;
	mode <= '1';
	WAIT FOR 40000 ps;
	mode <= '0';
	WAIT FOR 5000 ps;
	mode <= '1';
	WAIT FOR 5000 ps;
	mode <= '0';
	WAIT FOR 10000 ps;
	mode <= '1';
	WAIT FOR 10000 ps;
	mode <= '0';
	WAIT FOR 25000 ps;
	mode <= '1';
	WAIT FOR 5000 ps;
	mode <= '0';
	WAIT FOR 10000 ps;
	mode <= '1';
	WAIT FOR 5000 ps;
	mode <= '0';
	WAIT FOR 10000 ps;
	mode <= '1';
	WAIT FOR 10000 ps;
	mode <= '0';
	WAIT FOR 5000 ps;
	mode <= '1';
	WAIT FOR 20000 ps;
	mode <= '0';
	WAIT FOR 10000 ps;
	mode <= '1';
	WAIT FOR 20000 ps;
	mode <= '0';
	WAIT FOR 10000 ps;
	mode <= '1';
	WAIT FOR 35000 ps;
	mode <= '0';
	WAIT FOR 5000 ps;
	mode <= '1';
	WAIT FOR 20000 ps;
	mode <= '0';
	WAIT FOR 20000 ps;
	mode <= '1';
	WAIT FOR 15000 ps;
	mode <= '0';
WAIT;
END PROCESS t_prcs_mode;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;

-- set
t_prcs_set: PROCESS
BEGIN
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 30000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 10000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 15000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 10000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 20000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 10000 ps;
	set <= '1';
	WAIT FOR 25000 ps;
	set <= '0';
	WAIT FOR 10000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 10000 ps;
	set <= '1';
	WAIT FOR 10000 ps;
	set <= '0';
	WAIT FOR 10000 ps;
	set <= '1';
	WAIT FOR 15000 ps;
	set <= '0';
	WAIT FOR 10000 ps;
	set <= '1';
	WAIT FOR 15000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 10000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 30000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 15000 ps;
	set <= '0';
	WAIT FOR 10000 ps;
	set <= '1';
	WAIT FOR 10000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 10000 ps;
	set <= '0';
	WAIT FOR 10000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 10000 ps;
	set <= '0';
	WAIT FOR 10000 ps;
	set <= '1';
	WAIT FOR 15000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 10000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 25000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 25000 ps;
	set <= '1';
	WAIT FOR 10000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 10000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 10000 ps;
	set <= '1';
	WAIT FOR 20000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 10000 ps;
	set <= '1';
	WAIT FOR 10000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 45000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 25000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 15000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 15000 ps;
	set <= '0';
	WAIT FOR 15000 ps;
	set <= '1';
	WAIT FOR 15000 ps;
	set <= '0';
	WAIT FOR 35000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 20000 ps;
	set <= '1';
	WAIT FOR 35000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 20000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 15000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 25000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
	WAIT FOR 5000 ps;
	set <= '1';
	WAIT FOR 5000 ps;
	set <= '0';
WAIT;
END PROCESS t_prcs_set;

-- up_down
t_prcs_up_down: PROCESS
BEGIN
	up_down <= '1';
WAIT;
END PROCESS t_prcs_up_down;
END clock_controller_arch;
