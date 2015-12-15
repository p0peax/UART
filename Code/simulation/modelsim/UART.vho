-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/04/2015 23:16:21"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ControleurUART IS
    PORT (
	i_resetBar : IN std_logic;
	i_clock : IN std_logic;
	MSC_MAX : IN std_logic_vector(3 DOWNTO 0);
	SSC_MAX : IN std_logic_vector(3 DOWNTO 0);
	SSCS : IN std_logic;
	selBaud : IN std_logic_vector(2 DOWNTO 0);
	MSTL : OUT std_logic_vector(2 DOWNTO 0);
	SSTL : OUT std_logic_vector(2 DOWNTO 0);
	BCD1 : OUT std_logic_vector(6 DOWNTO 0);
	BCD2 : OUT std_logic_vector(6 DOWNTO 0);
	o_sortie : OUT std_logic_vector(7 DOWNTO 0)
	);
END ControleurUART;

-- Design Ports Information
-- MSTL[0]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MSTL[1]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MSTL[2]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SSTL[0]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SSTL[1]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SSTL[2]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD1[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD1[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD1[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD1[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD1[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD1[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD1[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD2[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD2[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD2[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD2[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD2[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD2[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD2[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sortie[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sortie[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sortie[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sortie[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sortie[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sortie[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sortie[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sortie[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- MSC_MAX[3]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MSC_MAX[2]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MSC_MAX[0]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MSC_MAX[1]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_resetBar	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SSC_MAX[3]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SSC_MAX[2]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SSC_MAX[0]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SSC_MAX[1]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SSCS	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_clock	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- selBaud[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- selBaud[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- selBaud[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ControleurUART IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_resetBar : std_logic;
SIGNAL ww_i_clock : std_logic;
SIGNAL ww_MSC_MAX : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SSC_MAX : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SSCS : std_logic;
SIGNAL ww_selBaud : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_MSTL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SSTL : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_BCD1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_BCD2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_o_sortie : std_logic_vector(7 DOWNTO 0);
SIGNAL \LAB3ENT|divHorloge|clock_1Hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART1|vitesseDeBaud1|mux|o~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LAB3ENT|divHorloge|clock_100hz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LAB3ENT|divHorloge|clock_1Khz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LAB3ENT|divHorloge|clock_10Hz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LAB3ENT|divHorloge|clock_10Khz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LAB3ENT|divHorloge|clock_100Khz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LAB3ENT|divHorloge|clock_1Mhz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_resetBar~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART1|vitesseDeBaud1|div41|count_614Khz[0]~6_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div41|count_614Khz[0]~7\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div41|count_614Khz[1]~8_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div41|count_614Khz[1]~9\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div41|count_614Khz[2]~10_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div41|count_614Khz[2]~11\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div41|count_614Khz[3]~12_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div41|count_614Khz[3]~13\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div41|count_614Khz[4]~14_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div41|count_614Khz[4]~15\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div41|count_614Khz[5]~16_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_1Mhz[0]~5_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_1Mhz[0]~6\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_1Mhz[1]~7_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_1Mhz[1]~8\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_1Mhz[2]~9_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_1Mhz[2]~10\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_1Mhz[3]~11_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_1Mhz[3]~12\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_1Mhz[4]~13_combout\ : std_logic;
SIGNAL \LAB3ENT|MST_Jaune|reg|ssb|int_q~regout\ : std_logic;
SIGNAL \LAB3ENT|CONT|Selector2~0_combout\ : std_logic;
SIGNAL \LAB3ENT|MS|reg|smb|int_q~0_combout\ : std_logic;
SIGNAL \LAB3ENT|MST_Jaune|reg|ssb|int_q~0_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|mux|Equal0~2_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|mux|Equal0~4_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|mux|Equal0~5_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|mux|Equal0~6_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_10Hz_int~regout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div41|clock_614KHz~regout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|RDRD_compteur~0_combout\ : std_logic;
SIGNAL \UART1|emetteur1|RDTD|bit1|int_q~regout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div8|div8|int_clk~regout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_1hz~2_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_10Hz_int~0_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_100hz_int~regout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div41|LessThan1~0_combout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|presentState.IDLE~regout\ : std_logic;
SIGNAL \UART1|emetteur1|RDTD|bit2|int_q~regout\ : std_logic;
SIGNAL \UART1|emetteur1|RDTD|FF_entry[1]~1_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div8|div4|int_clk~regout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_10hz~0_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_10hz[1]~1_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_10hz~2_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_100hz_int~0_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_1Khz_int~regout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div41|LessThan0~0_combout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|Selector0~0_combout\ : std_logic;
SIGNAL \UART1|emetteur1|RDTD|bit3|int_q~regout\ : std_logic;
SIGNAL \UART1|emetteur1|RTD|bit2|int_q~regout\ : std_logic;
SIGNAL \UART1|emetteur1|RDTD|FF_entry[2]~2_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div8|div2|int_clk~regout\ : std_logic;
SIGNAL \UART1|emetteur1|control_emetteur|presentState.IDLE~regout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_100hz~0_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_100hz[1]~1_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_100hz~2_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_1Khz_int~0_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_10Khz_int~regout\ : std_logic;
SIGNAL \UART1|emetteur1|RDTD|bit4|int_q~regout\ : std_logic;
SIGNAL \UART1|emetteur1|RTD|bit3|int_q~regout\ : std_logic;
SIGNAL \UART1|emetteur1|RDTD|FF_entry[3]~3_combout\ : std_logic;
SIGNAL \UART1|emetteur1|control_emetteur|Selector0~0_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_1Khz~0_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_1Khz[1]~1_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_1Khz~2_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_10Khz_int~0_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_100Khz_int~regout\ : std_logic;
SIGNAL \UART1|emetteur1|RDTD|bit5|int_q~regout\ : std_logic;
SIGNAL \UART1|emetteur1|RTD|bit4|int_q~regout\ : std_logic;
SIGNAL \UART1|emetteur1|RDTD|FF_entry[4]~4_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_10Khz~0_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_10Khz[1]~1_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_10Khz~2_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_100Khz_int~0_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_1Mhz_int~regout\ : std_logic;
SIGNAL \UART1|emetteur1|RDTD|bit6|int_q~regout\ : std_logic;
SIGNAL \UART1|emetteur1|RTD|bit5|int_q~regout\ : std_logic;
SIGNAL \UART1|emetteur1|RDTD|FF_entry[5]~5_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_100Khz~0_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_100Khz[1]~1_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_100Khz~2_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|LessThan1~0_combout\ : std_logic;
SIGNAL \UART1|emetteur1|RTD|bit6|int_q~regout\ : std_logic;
SIGNAL \UART1|emetteur1|RDTD|bit7|int_q~regout\ : std_logic;
SIGNAL \UART1|emetteur1|RDTD|FF_entry[6]~6_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|LessThan0~0_combout\ : std_logic;
SIGNAL \UART1|emetteur1|RTD|bit7|int_q~regout\ : std_logic;
SIGNAL \UART1|emetteur1|RDTD|FF_entry[7]~7_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div8|div8|int_clk~0_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div8|div4|int_clk~0_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div8|div2|int_clk~0_combout\ : std_logic;
SIGNAL \UART1|emetteur1|RTD|bit5|int_q~0_combout\ : std_logic;
SIGNAL \UART1|emetteur1|RTD|bit7|int_q~0_combout\ : std_logic;
SIGNAL \i_clock~combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\ : std_logic;
SIGNAL \i_clock~clkctrl_outclk\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_100hz_int~clkctrl_outclk\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_1Khz_int~clkctrl_outclk\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_10Hz_int~clkctrl_outclk\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_10Khz_int~clkctrl_outclk\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_100Khz_int~clkctrl_outclk\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_1Mhz_int~clkctrl_outclk\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_1Mhz_int~feeder_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_1hz~1_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_1hz[1]~0_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_1Hz_int~0_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_1Hz_int~regout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_1Hz~feeder_combout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_1Hz~regout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|clock_1Hz~clkctrl_outclk\ : std_logic;
SIGNAL \LAB3ENT|SST_Jaune|reg|lsb|int_q~0_combout\ : std_logic;
SIGNAL \i_resetBar~combout\ : std_logic;
SIGNAL \SSCS~combout\ : std_logic;
SIGNAL \LAB3ENT|rebondisseur|int_d2Input~combout\ : std_logic;
SIGNAL \i_resetBar~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \i_resetBar~clkctrl_outclk\ : std_logic;
SIGNAL \LAB3ENT|rebondisseur|second|int_q~regout\ : std_logic;
SIGNAL \LAB3ENT|rebondisseur|int_d1Input~0_combout\ : std_logic;
SIGNAL \LAB3ENT|rebondisseur|first|int_q~regout\ : std_logic;
SIGNAL \LAB3ENT|SS|reg|lsb|int_q~0_combout\ : std_logic;
SIGNAL \LAB3ENT|resetGreen~combout\ : std_logic;
SIGNAL \LAB3ENT|SS|reg|lsb|int_q~regout\ : std_logic;
SIGNAL \LAB3ENT|MS|reg|ssb|int_q~0_combout\ : std_logic;
SIGNAL \LAB3ENT|MS|reg|ssb|int_q~regout\ : std_logic;
SIGNAL \LAB3ENT|MS|reg|msb|int_q~0_combout\ : std_logic;
SIGNAL \LAB3ENT|MS|reg|msb|int_q~regout\ : std_logic;
SIGNAL \LAB3ENT|MS|reg|smb|int_q~1_combout\ : std_logic;
SIGNAL \LAB3ENT|MS|reg|smb|int_q~regout\ : std_logic;
SIGNAL \LAB3ENT|CONT|process_0~0_combout\ : std_logic;
SIGNAL \LAB3ENT|CONT|process_0~1_combout\ : std_logic;
SIGNAL \LAB3ENT|CONT|process_0~2_combout\ : std_logic;
SIGNAL \LAB3ENT|CONT|process_0~3_combout\ : std_logic;
SIGNAL \LAB3ENT|CONT|Selector1~0_combout\ : std_logic;
SIGNAL \LAB3ENT|CONT|presentState.B~regout\ : std_logic;
SIGNAL \LAB3ENT|comparateur|o_EQ~0_combout\ : std_logic;
SIGNAL \LAB3ENT|comparateur|o_EQ~1_combout\ : std_logic;
SIGNAL \LAB3ENT|comparateur|o_EQ~2_combout\ : std_logic;
SIGNAL \LAB3ENT|CONT|Selector2~1_combout\ : std_logic;
SIGNAL \LAB3ENT|CONT|presentState.C~regout\ : std_logic;
SIGNAL \LAB3ENT|resetYellow~combout\ : std_logic;
SIGNAL \LAB3ENT|SST_Jaune|reg|lsb|int_q~regout\ : std_logic;
SIGNAL \LAB3ENT|MST_Jaune|reg|smb|int_q~0_combout\ : std_logic;
SIGNAL \LAB3ENT|MST_Jaune|reg|smb|int_q~regout\ : std_logic;
SIGNAL \LAB3ENT|MST_Jaune|reg|msb|int_q~0_combout\ : std_logic;
SIGNAL \LAB3ENT|MST_Jaune|reg|msb|int_q~regout\ : std_logic;
SIGNAL \LAB3ENT|CONT|Selector0~0_combout\ : std_logic;
SIGNAL \LAB3ENT|CONT|Selector3~0_combout\ : std_logic;
SIGNAL \LAB3ENT|CONT|presentState.D~regout\ : std_logic;
SIGNAL \LAB3ENT|CONT|Selector0~1_combout\ : std_logic;
SIGNAL \LAB3ENT|CONT|presentState.A~regout\ : std_logic;
SIGNAL \LAB3ENT|CONT|selectLight~combout\ : std_logic;
SIGNAL \LAB3ENT|seg|Mux6~0_combout\ : std_logic;
SIGNAL \LAB3ENT|seg|Mux5~0_combout\ : std_logic;
SIGNAL \LAB3ENT|seg|Mux4~0_combout\ : std_logic;
SIGNAL \LAB3ENT|seg|Mux3~0_combout\ : std_logic;
SIGNAL \LAB3ENT|seg|Mux2~0_combout\ : std_logic;
SIGNAL \LAB3ENT|seg|Mux1~0_combout\ : std_logic;
SIGNAL \LAB3ENT|seg|Mux0~0_combout\ : std_logic;
SIGNAL \LAB3ENT|seg|Mux10~0_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div256|div128|int_clk~0_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div256|div128|int_clk~regout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|mux|Equal0~3_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|mux|Equal0~1_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div256|div4|int_clk~0_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div256|div4|int_clk~regout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div256|div2|int_clk~0_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div256|div2|int_clk~regout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|mux|Equal0~0_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div256|div256|int_clk~0_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div256|div256|int_clk~regout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|mux|o~0_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|mux|o~1_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div256|div8|int_clk~0_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div256|div8|int_clk~regout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|mux|o~2_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div256|div16|int_clk~0_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div256|div16|int_clk~regout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|mux|o~3_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div256|div32|int_clk~0_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div256|div32|int_clk~regout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|mux|o~4_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div256|div64|int_clk~0_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|div256|div64|int_clk~regout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|mux|o~5_combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|mux|o~combout\ : std_logic;
SIGNAL \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\ : std_logic;
SIGNAL \UART1|emetteur1|control_emetteur|compte8[0]~3_combout\ : std_logic;
SIGNAL \UART1|emetteur1|control_emetteur|process_2~0_combout\ : std_logic;
SIGNAL \UART1|emetteur1|control_emetteur|compte8[1]~2_combout\ : std_logic;
SIGNAL \UART1|emetteur1|control_emetteur|compte8[3]~0_combout\ : std_logic;
SIGNAL \UART1|emetteur1|control_emetteur|compte8[2]~1_combout\ : std_logic;
SIGNAL \UART1|emetteur1|control_emetteur|nextState.STOP~0_combout\ : std_logic;
SIGNAL \UART1|emetteur1|control_emetteur|Selector1~0_combout\ : std_logic;
SIGNAL \UART1|emetteur1|control_emetteur|presentState.DATA~regout\ : std_logic;
SIGNAL \UART1|emetteur1|control_emetteur|nextState.STOP~1_combout\ : std_logic;
SIGNAL \UART1|emetteur1|control_emetteur|presentState.STOP~regout\ : std_logic;
SIGNAL \UART1|emetteur1|control_emetteur|o_setRTDV~0_combout\ : std_logic;
SIGNAL \UART1|RTDV|int_q~regout\ : std_logic;
SIGNAL \UART1|emetteur1|control_emetteur|nextState.DETECTED~0_combout\ : std_logic;
SIGNAL \UART1|emetteur1|control_emetteur|presentState.DETECTED~regout\ : std_logic;
SIGNAL \UART1|emetteur1|control_emetteur|presentState.READY~regout\ : std_logic;
SIGNAL \UART1|emetteur1|control_emetteur|presentState.START~regout\ : std_logic;
SIGNAL \UART1|emetteur1|RDTD|FF_entry[0]~0_combout\ : std_logic;
SIGNAL \UART1|emetteur1|RDTD|enableLatch~combout\ : std_logic;
SIGNAL \UART1|emetteur1|RDTD|bit0|int_q~regout\ : std_logic;
SIGNAL \UART1|emetteur1|o_TxD~0_combout\ : std_logic;
SIGNAL \UART1|recepteur1|RDRD|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|compte8[0]~2_combout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|compte8[1]~1_combout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|Selector2~0_combout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|compte4[0]~1_combout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|Selector1~0_combout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|presentState.START~regout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|process_2~0_combout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|compte4[1]~0_combout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|Selector2~1_combout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|Selector2~2_combout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|presentState.PAUSE~regout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|process_3~0_combout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|compte8[2]~0_combout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|nextState.DATA~0_combout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|nextState.SAVE~0_combout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|presentState.SAVE~regout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|RDRD_compteur[1]~2_combout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|RDRD_compteur~3_combout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|inc_RDRD~combout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|RDRD_compteur[2]~1_combout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|Equal2~0_combout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|nextState.DATA~1_combout\ : std_logic;
SIGNAL \UART1|recepteur1|ControleurRecepteur|presentState.DATA~regout\ : std_logic;
SIGNAL \UART1|recepteur1|RDRD|bit7|int_q~regout\ : std_logic;
SIGNAL \UART1|recepteur1|RDRD|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \UART1|recepteur1|RDRD|bit6|int_q~regout\ : std_logic;
SIGNAL \UART1|recepteur1|RDRD|bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \UART1|recepteur1|RDRD|bit5|int_q~regout\ : std_logic;
SIGNAL \UART1|recepteur1|RDRD|bit4|int_q~regout\ : std_logic;
SIGNAL \UART1|recepteur1|RDRD|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \UART1|recepteur1|RDRD|bit3|int_q~regout\ : std_logic;
SIGNAL \UART1|recepteur1|RDRD|bit2|int_q~feeder_combout\ : std_logic;
SIGNAL \UART1|recepteur1|RDRD|bit2|int_q~regout\ : std_logic;
SIGNAL \UART1|recepteur1|RDRD|bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \UART1|recepteur1|RDRD|bit1|int_q~regout\ : std_logic;
SIGNAL \UART1|recepteur1|RDRD|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \UART1|recepteur1|RDRD|bit0|int_q~regout\ : std_logic;
SIGNAL \UART1|recepteur1|RRD|bit0|int_q~feeder_combout\ : std_logic;
SIGNAL \UART1|recepteur1|RRD|bit0|int_q~regout\ : std_logic;
SIGNAL \UART1|recepteur1|RRD|bit1|int_q~feeder_combout\ : std_logic;
SIGNAL \UART1|recepteur1|RRD|bit1|int_q~regout\ : std_logic;
SIGNAL \UART1|recepteur1|RRD|bit2|int_q~feeder_combout\ : std_logic;
SIGNAL \UART1|recepteur1|RRD|bit2|int_q~regout\ : std_logic;
SIGNAL \UART1|recepteur1|RRD|bit3|int_q~feeder_combout\ : std_logic;
SIGNAL \UART1|recepteur1|RRD|bit3|int_q~regout\ : std_logic;
SIGNAL \UART1|recepteur1|RRD|bit4|int_q~feeder_combout\ : std_logic;
SIGNAL \UART1|recepteur1|RRD|bit4|int_q~regout\ : std_logic;
SIGNAL \UART1|recepteur1|RRD|bit5|int_q~feeder_combout\ : std_logic;
SIGNAL \UART1|recepteur1|RRD|bit5|int_q~regout\ : std_logic;
SIGNAL \UART1|recepteur1|RRD|bit6|int_q~feeder_combout\ : std_logic;
SIGNAL \UART1|recepteur1|RRD|bit6|int_q~regout\ : std_logic;
SIGNAL \UART1|recepteur1|RRD|bit7|int_q~feeder_combout\ : std_logic;
SIGNAL \UART1|recepteur1|RRD|bit7|int_q~regout\ : std_logic;
SIGNAL \LAB3ENT|divHorloge|count_1hz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \LAB3ENT|divHorloge|count_1Mhz\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \LAB3ENT|divHorloge|count_1Khz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \LAB3ENT|divHorloge|count_10hz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \LAB3ENT|divHorloge|count_10Khz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \LAB3ENT|divHorloge|count_100hz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \LAB3ENT|divHorloge|count_100Khz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \UART1|emetteur1|control_emetteur|compte8\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART1|recepteur1|ControleurRecepteur|compte8\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \UART1|recepteur1|ControleurRecepteur|compte4\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UART1|vitesseDeBaud1|div41|count_614Khz\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \selBaud~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \SSC_MAX~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MSC_MAX~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LAB3ENT|seg|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \LAB3ENT|seg|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \LAB3ENT|CONT|ALT_INV_selectLight~combout\ : std_logic;
SIGNAL \LAB3ENT|CONT|ALT_INV_presentState.A~regout\ : std_logic;
SIGNAL \ALT_INV_i_resetBar~clkctrl_outclk\ : std_logic;

BEGIN

ww_i_resetBar <= i_resetBar;
ww_i_clock <= i_clock;
ww_MSC_MAX <= MSC_MAX;
ww_SSC_MAX <= SSC_MAX;
ww_SSCS <= SSCS;
ww_selBaud <= selBaud;
MSTL <= ww_MSTL;
SSTL <= ww_SSTL;
BCD1 <= ww_BCD1;
BCD2 <= ww_BCD2;
o_sortie <= ww_o_sortie;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\LAB3ENT|divHorloge|clock_1Hz~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \LAB3ENT|divHorloge|clock_1Hz~regout\);

\UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \UART1|vitesseDeBaud1|div8|div8|int_clk~regout\);

\UART1|vitesseDeBaud1|mux|o~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \UART1|vitesseDeBaud1|mux|o~combout\);

\i_clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \i_clock~combout\);

\LAB3ENT|divHorloge|clock_100hz_int~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \LAB3ENT|divHorloge|clock_100hz_int~regout\);

\LAB3ENT|divHorloge|clock_1Khz_int~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \LAB3ENT|divHorloge|clock_1Khz_int~regout\);

\LAB3ENT|divHorloge|clock_10Hz_int~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \LAB3ENT|divHorloge|clock_10Hz_int~regout\);

\LAB3ENT|divHorloge|clock_10Khz_int~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \LAB3ENT|divHorloge|clock_10Khz_int~regout\);

\LAB3ENT|divHorloge|clock_100Khz_int~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \LAB3ENT|divHorloge|clock_100Khz_int~regout\);

\LAB3ENT|divHorloge|clock_1Mhz_int~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \LAB3ENT|divHorloge|clock_1Mhz_int~regout\);

\i_resetBar~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \i_resetBar~clk_delay_ctrl_clkout\);
\LAB3ENT|seg|ALT_INV_Mux10~0_combout\ <= NOT \LAB3ENT|seg|Mux10~0_combout\;
\LAB3ENT|seg|ALT_INV_Mux0~0_combout\ <= NOT \LAB3ENT|seg|Mux0~0_combout\;
\LAB3ENT|CONT|ALT_INV_selectLight~combout\ <= NOT \LAB3ENT|CONT|selectLight~combout\;
\LAB3ENT|CONT|ALT_INV_presentState.A~regout\ <= NOT \LAB3ENT|CONT|presentState.A~regout\;
\ALT_INV_i_resetBar~clkctrl_outclk\ <= NOT \i_resetBar~clkctrl_outclk\;

-- Location: LCFF_X60_Y19_N23
\UART1|vitesseDeBaud1|div41|count_614Khz[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clock~clkctrl_outclk\,
	datain => \UART1|vitesseDeBaud1|div41|count_614Khz[2]~10_combout\,
	sclr => \UART1|vitesseDeBaud1|div41|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|vitesseDeBaud1|div41|count_614Khz\(2));

-- Location: LCFF_X60_Y19_N25
\UART1|vitesseDeBaud1|div41|count_614Khz[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clock~clkctrl_outclk\,
	datain => \UART1|vitesseDeBaud1|div41|count_614Khz[3]~12_combout\,
	sclr => \UART1|vitesseDeBaud1|div41|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|vitesseDeBaud1|div41|count_614Khz\(3));

-- Location: LCFF_X60_Y19_N27
\UART1|vitesseDeBaud1|div41|count_614Khz[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clock~clkctrl_outclk\,
	datain => \UART1|vitesseDeBaud1|div41|count_614Khz[4]~14_combout\,
	sclr => \UART1|vitesseDeBaud1|div41|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|vitesseDeBaud1|div41|count_614Khz\(4));

-- Location: LCFF_X60_Y19_N29
\UART1|vitesseDeBaud1|div41|count_614Khz[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clock~clkctrl_outclk\,
	datain => \UART1|vitesseDeBaud1|div41|count_614Khz[5]~16_combout\,
	sclr => \UART1|vitesseDeBaud1|div41|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|vitesseDeBaud1|div41|count_614Khz\(5));

-- Location: LCFF_X60_Y19_N21
\UART1|vitesseDeBaud1|div41|count_614Khz[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clock~clkctrl_outclk\,
	datain => \UART1|vitesseDeBaud1|div41|count_614Khz[1]~8_combout\,
	sclr => \UART1|vitesseDeBaud1|div41|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|vitesseDeBaud1|div41|count_614Khz\(1));

-- Location: LCFF_X60_Y19_N19
\UART1|vitesseDeBaud1|div41|count_614Khz[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clock~clkctrl_outclk\,
	datain => \UART1|vitesseDeBaud1|div41|count_614Khz[0]~6_combout\,
	sclr => \UART1|vitesseDeBaud1|div41|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|vitesseDeBaud1|div41|count_614Khz\(0));

-- Location: LCCOMB_X60_Y19_N18
\UART1|vitesseDeBaud1|div41|count_614Khz[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|div41|count_614Khz[0]~6_combout\ = \UART1|vitesseDeBaud1|div41|count_614Khz\(0) $ (VCC)
-- \UART1|vitesseDeBaud1|div41|count_614Khz[0]~7\ = CARRY(\UART1|vitesseDeBaud1|div41|count_614Khz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART1|vitesseDeBaud1|div41|count_614Khz\(0),
	datad => VCC,
	combout => \UART1|vitesseDeBaud1|div41|count_614Khz[0]~6_combout\,
	cout => \UART1|vitesseDeBaud1|div41|count_614Khz[0]~7\);

-- Location: LCCOMB_X60_Y19_N20
\UART1|vitesseDeBaud1|div41|count_614Khz[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|div41|count_614Khz[1]~8_combout\ = (\UART1|vitesseDeBaud1|div41|count_614Khz\(1) & (!\UART1|vitesseDeBaud1|div41|count_614Khz[0]~7\)) # (!\UART1|vitesseDeBaud1|div41|count_614Khz\(1) & 
-- ((\UART1|vitesseDeBaud1|div41|count_614Khz[0]~7\) # (GND)))
-- \UART1|vitesseDeBaud1|div41|count_614Khz[1]~9\ = CARRY((!\UART1|vitesseDeBaud1|div41|count_614Khz[0]~7\) # (!\UART1|vitesseDeBaud1|div41|count_614Khz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|vitesseDeBaud1|div41|count_614Khz\(1),
	datad => VCC,
	cin => \UART1|vitesseDeBaud1|div41|count_614Khz[0]~7\,
	combout => \UART1|vitesseDeBaud1|div41|count_614Khz[1]~8_combout\,
	cout => \UART1|vitesseDeBaud1|div41|count_614Khz[1]~9\);

-- Location: LCCOMB_X60_Y19_N22
\UART1|vitesseDeBaud1|div41|count_614Khz[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|div41|count_614Khz[2]~10_combout\ = (\UART1|vitesseDeBaud1|div41|count_614Khz\(2) & (\UART1|vitesseDeBaud1|div41|count_614Khz[1]~9\ $ (GND))) # (!\UART1|vitesseDeBaud1|div41|count_614Khz\(2) & 
-- (!\UART1|vitesseDeBaud1|div41|count_614Khz[1]~9\ & VCC))
-- \UART1|vitesseDeBaud1|div41|count_614Khz[2]~11\ = CARRY((\UART1|vitesseDeBaud1|div41|count_614Khz\(2) & !\UART1|vitesseDeBaud1|div41|count_614Khz[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART1|vitesseDeBaud1|div41|count_614Khz\(2),
	datad => VCC,
	cin => \UART1|vitesseDeBaud1|div41|count_614Khz[1]~9\,
	combout => \UART1|vitesseDeBaud1|div41|count_614Khz[2]~10_combout\,
	cout => \UART1|vitesseDeBaud1|div41|count_614Khz[2]~11\);

-- Location: LCCOMB_X60_Y19_N24
\UART1|vitesseDeBaud1|div41|count_614Khz[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|div41|count_614Khz[3]~12_combout\ = (\UART1|vitesseDeBaud1|div41|count_614Khz\(3) & (!\UART1|vitesseDeBaud1|div41|count_614Khz[2]~11\)) # (!\UART1|vitesseDeBaud1|div41|count_614Khz\(3) & 
-- ((\UART1|vitesseDeBaud1|div41|count_614Khz[2]~11\) # (GND)))
-- \UART1|vitesseDeBaud1|div41|count_614Khz[3]~13\ = CARRY((!\UART1|vitesseDeBaud1|div41|count_614Khz[2]~11\) # (!\UART1|vitesseDeBaud1|div41|count_614Khz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|vitesseDeBaud1|div41|count_614Khz\(3),
	datad => VCC,
	cin => \UART1|vitesseDeBaud1|div41|count_614Khz[2]~11\,
	combout => \UART1|vitesseDeBaud1|div41|count_614Khz[3]~12_combout\,
	cout => \UART1|vitesseDeBaud1|div41|count_614Khz[3]~13\);

-- Location: LCCOMB_X60_Y19_N26
\UART1|vitesseDeBaud1|div41|count_614Khz[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|div41|count_614Khz[4]~14_combout\ = (\UART1|vitesseDeBaud1|div41|count_614Khz\(4) & (\UART1|vitesseDeBaud1|div41|count_614Khz[3]~13\ $ (GND))) # (!\UART1|vitesseDeBaud1|div41|count_614Khz\(4) & 
-- (!\UART1|vitesseDeBaud1|div41|count_614Khz[3]~13\ & VCC))
-- \UART1|vitesseDeBaud1|div41|count_614Khz[4]~15\ = CARRY((\UART1|vitesseDeBaud1|div41|count_614Khz\(4) & !\UART1|vitesseDeBaud1|div41|count_614Khz[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \UART1|vitesseDeBaud1|div41|count_614Khz\(4),
	datad => VCC,
	cin => \UART1|vitesseDeBaud1|div41|count_614Khz[3]~13\,
	combout => \UART1|vitesseDeBaud1|div41|count_614Khz[4]~14_combout\,
	cout => \UART1|vitesseDeBaud1|div41|count_614Khz[4]~15\);

-- Location: LCCOMB_X60_Y19_N28
\UART1|vitesseDeBaud1|div41|count_614Khz[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|div41|count_614Khz[5]~16_combout\ = \UART1|vitesseDeBaud1|div41|count_614Khz[4]~15\ $ (\UART1|vitesseDeBaud1|div41|count_614Khz\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \UART1|vitesseDeBaud1|div41|count_614Khz\(5),
	cin => \UART1|vitesseDeBaud1|div41|count_614Khz[4]~15\,
	combout => \UART1|vitesseDeBaud1|div41|count_614Khz[5]~16_combout\);

-- Location: LCFF_X33_Y35_N21
\LAB3ENT|divHorloge|count_1Mhz[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clock~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_1Mhz[2]~9_combout\,
	sclr => \LAB3ENT|divHorloge|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_1Mhz\(2));

-- Location: LCFF_X33_Y35_N23
\LAB3ENT|divHorloge|count_1Mhz[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clock~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_1Mhz[3]~11_combout\,
	sclr => \LAB3ENT|divHorloge|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_1Mhz\(3));

-- Location: LCFF_X33_Y35_N25
\LAB3ENT|divHorloge|count_1Mhz[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clock~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_1Mhz[4]~13_combout\,
	sclr => \LAB3ENT|divHorloge|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_1Mhz\(4));

-- Location: LCFF_X33_Y35_N19
\LAB3ENT|divHorloge|count_1Mhz[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clock~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_1Mhz[1]~7_combout\,
	sclr => \LAB3ENT|divHorloge|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_1Mhz\(1));

-- Location: LCFF_X33_Y35_N17
\LAB3ENT|divHorloge|count_1Mhz[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clock~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_1Mhz[0]~5_combout\,
	sclr => \LAB3ENT|divHorloge|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_1Mhz\(0));

-- Location: LCCOMB_X33_Y35_N16
\LAB3ENT|divHorloge|count_1Mhz[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_1Mhz[0]~5_combout\ = \LAB3ENT|divHorloge|count_1Mhz\(0) $ (VCC)
-- \LAB3ENT|divHorloge|count_1Mhz[0]~6\ = CARRY(\LAB3ENT|divHorloge|count_1Mhz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|divHorloge|count_1Mhz\(0),
	datad => VCC,
	combout => \LAB3ENT|divHorloge|count_1Mhz[0]~5_combout\,
	cout => \LAB3ENT|divHorloge|count_1Mhz[0]~6\);

-- Location: LCCOMB_X33_Y35_N18
\LAB3ENT|divHorloge|count_1Mhz[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_1Mhz[1]~7_combout\ = (\LAB3ENT|divHorloge|count_1Mhz\(1) & (!\LAB3ENT|divHorloge|count_1Mhz[0]~6\)) # (!\LAB3ENT|divHorloge|count_1Mhz\(1) & ((\LAB3ENT|divHorloge|count_1Mhz[0]~6\) # (GND)))
-- \LAB3ENT|divHorloge|count_1Mhz[1]~8\ = CARRY((!\LAB3ENT|divHorloge|count_1Mhz[0]~6\) # (!\LAB3ENT|divHorloge|count_1Mhz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LAB3ENT|divHorloge|count_1Mhz\(1),
	datad => VCC,
	cin => \LAB3ENT|divHorloge|count_1Mhz[0]~6\,
	combout => \LAB3ENT|divHorloge|count_1Mhz[1]~7_combout\,
	cout => \LAB3ENT|divHorloge|count_1Mhz[1]~8\);

-- Location: LCCOMB_X33_Y35_N20
\LAB3ENT|divHorloge|count_1Mhz[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_1Mhz[2]~9_combout\ = (\LAB3ENT|divHorloge|count_1Mhz\(2) & (\LAB3ENT|divHorloge|count_1Mhz[1]~8\ $ (GND))) # (!\LAB3ENT|divHorloge|count_1Mhz\(2) & (!\LAB3ENT|divHorloge|count_1Mhz[1]~8\ & VCC))
-- \LAB3ENT|divHorloge|count_1Mhz[2]~10\ = CARRY((\LAB3ENT|divHorloge|count_1Mhz\(2) & !\LAB3ENT|divHorloge|count_1Mhz[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|divHorloge|count_1Mhz\(2),
	datad => VCC,
	cin => \LAB3ENT|divHorloge|count_1Mhz[1]~8\,
	combout => \LAB3ENT|divHorloge|count_1Mhz[2]~9_combout\,
	cout => \LAB3ENT|divHorloge|count_1Mhz[2]~10\);

-- Location: LCCOMB_X33_Y35_N22
\LAB3ENT|divHorloge|count_1Mhz[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_1Mhz[3]~11_combout\ = (\LAB3ENT|divHorloge|count_1Mhz\(3) & (!\LAB3ENT|divHorloge|count_1Mhz[2]~10\)) # (!\LAB3ENT|divHorloge|count_1Mhz\(3) & ((\LAB3ENT|divHorloge|count_1Mhz[2]~10\) # (GND)))
-- \LAB3ENT|divHorloge|count_1Mhz[3]~12\ = CARRY((!\LAB3ENT|divHorloge|count_1Mhz[2]~10\) # (!\LAB3ENT|divHorloge|count_1Mhz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LAB3ENT|divHorloge|count_1Mhz\(3),
	datad => VCC,
	cin => \LAB3ENT|divHorloge|count_1Mhz[2]~10\,
	combout => \LAB3ENT|divHorloge|count_1Mhz[3]~11_combout\,
	cout => \LAB3ENT|divHorloge|count_1Mhz[3]~12\);

-- Location: LCCOMB_X33_Y35_N24
\LAB3ENT|divHorloge|count_1Mhz[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_1Mhz[4]~13_combout\ = \LAB3ENT|divHorloge|count_1Mhz\(4) $ (!\LAB3ENT|divHorloge|count_1Mhz[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|divHorloge|count_1Mhz\(4),
	cin => \LAB3ENT|divHorloge|count_1Mhz[3]~12\,
	combout => \LAB3ENT|divHorloge|count_1Mhz[4]~13_combout\);

-- Location: LCFF_X36_Y2_N25
\LAB3ENT|MST_Jaune|reg|ssb|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_1Hz~clkctrl_outclk\,
	datain => \LAB3ENT|MST_Jaune|reg|ssb|int_q~0_combout\,
	aclr => \LAB3ENT|resetYellow~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|MST_Jaune|reg|ssb|int_q~regout\);

-- Location: LCCOMB_X36_Y2_N10
\LAB3ENT|CONT|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|CONT|Selector2~0_combout\ = (\LAB3ENT|MST_Jaune|reg|ssb|int_q~regout\ & (!\LAB3ENT|MST_Jaune|reg|smb|int_q~regout\ & (\LAB3ENT|SST_Jaune|reg|lsb|int_q~regout\ & !\LAB3ENT|MST_Jaune|reg|msb|int_q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|MST_Jaune|reg|ssb|int_q~regout\,
	datab => \LAB3ENT|MST_Jaune|reg|smb|int_q~regout\,
	datac => \LAB3ENT|SST_Jaune|reg|lsb|int_q~regout\,
	datad => \LAB3ENT|MST_Jaune|reg|msb|int_q~regout\,
	combout => \LAB3ENT|CONT|Selector2~0_combout\);

-- Location: LCCOMB_X37_Y2_N20
\LAB3ENT|MS|reg|smb|int_q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|MS|reg|smb|int_q~0_combout\ = (\LAB3ENT|SS|reg|lsb|int_q~regout\ & (\LAB3ENT|MS|reg|ssb|int_q~regout\ & ((\LAB3ENT|CONT|presentState.C~regout\) # (!\LAB3ENT|CONT|presentState.A~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|CONT|presentState.C~regout\,
	datab => \LAB3ENT|CONT|presentState.A~regout\,
	datac => \LAB3ENT|SS|reg|lsb|int_q~regout\,
	datad => \LAB3ENT|MS|reg|ssb|int_q~regout\,
	combout => \LAB3ENT|MS|reg|smb|int_q~0_combout\);

-- Location: LCCOMB_X36_Y2_N24
\LAB3ENT|MST_Jaune|reg|ssb|int_q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|MST_Jaune|reg|ssb|int_q~0_combout\ = \LAB3ENT|SST_Jaune|reg|lsb|int_q~regout\ $ (\LAB3ENT|MST_Jaune|reg|ssb|int_q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LAB3ENT|SST_Jaune|reg|lsb|int_q~regout\,
	datac => \LAB3ENT|MST_Jaune|reg|ssb|int_q~regout\,
	combout => \LAB3ENT|MST_Jaune|reg|ssb|int_q~0_combout\);

-- Location: LCCOMB_X64_Y19_N4
\UART1|vitesseDeBaud1|mux|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|mux|Equal0~2_combout\ = (!\selBaud~combout\(0) & (\selBaud~combout\(1) & !\selBaud~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selBaud~combout\(0),
	datac => \selBaud~combout\(1),
	datad => \selBaud~combout\(2),
	combout => \UART1|vitesseDeBaud1|mux|Equal0~2_combout\);

-- Location: LCCOMB_X64_Y19_N10
\UART1|vitesseDeBaud1|mux|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|mux|Equal0~4_combout\ = (!\selBaud~combout\(0) & (!\selBaud~combout\(1) & \selBaud~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selBaud~combout\(0),
	datac => \selBaud~combout\(1),
	datad => \selBaud~combout\(2),
	combout => \UART1|vitesseDeBaud1|mux|Equal0~4_combout\);

-- Location: LCCOMB_X64_Y19_N0
\UART1|vitesseDeBaud1|mux|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|mux|Equal0~5_combout\ = (!\selBaud~combout\(1) & (\selBaud~combout\(0) & \selBaud~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selBaud~combout\(1),
	datac => \selBaud~combout\(0),
	datad => \selBaud~combout\(2),
	combout => \UART1|vitesseDeBaud1|mux|Equal0~5_combout\);

-- Location: LCCOMB_X64_Y19_N22
\UART1|vitesseDeBaud1|mux|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|mux|Equal0~6_combout\ = (!\selBaud~combout\(0) & (\selBaud~combout\(1) & \selBaud~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selBaud~combout\(0),
	datac => \selBaud~combout\(1),
	datad => \selBaud~combout\(2),
	combout => \UART1|vitesseDeBaud1|mux|Equal0~6_combout\);

-- Location: LCFF_X38_Y5_N7
\UART1|recepteur1|ControleurRecepteur|RDRD_compteur[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur~0_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|recepteur1|ControleurRecepteur|inc_RDRD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(3));

-- Location: LCFF_X1_Y18_N17
\LAB3ENT|divHorloge|count_1hz[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_10Hz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_1hz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_1hz\(2));

-- Location: LCFF_X34_Y1_N19
\LAB3ENT|divHorloge|clock_10Hz_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_100hz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|clock_10Hz_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|clock_10Hz_int~regout\);

-- Location: LCFF_X60_Y19_N15
\UART1|vitesseDeBaud1|div41|clock_614KHz\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clock~clkctrl_outclk\,
	datain => \UART1|vitesseDeBaud1|div41|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|vitesseDeBaud1|div41|clock_614KHz~regout\);

-- Location: LCCOMB_X38_Y5_N6
\UART1|recepteur1|ControleurRecepteur|RDRD_compteur~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|ControleurRecepteur|RDRD_compteur~0_combout\ = (\UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(0) & (\UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(3) $ (((\UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(2) & 
-- \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(1)))))) # (!\UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(0) & (\UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(3) & ((\UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(2)) # 
-- (\UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(0),
	datab => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(2),
	datac => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(3),
	datad => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(1),
	combout => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur~0_combout\);

-- Location: LCFF_X36_Y5_N13
\UART1|emetteur1|RDTD|bit1|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	datain => \UART1|emetteur1|RDTD|FF_entry[1]~1_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|emetteur1|RDTD|enableLatch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|RDTD|bit1|int_q~regout\);

-- Location: LCFF_X32_Y1_N19
\UART1|vitesseDeBaud1|div8|div8|int_clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div4|int_clk~regout\,
	datain => \UART1|vitesseDeBaud1|div8|div8|int_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|vitesseDeBaud1|div8|div8|int_clk~regout\);

-- Location: LCCOMB_X1_Y18_N16
\LAB3ENT|divHorloge|count_1hz~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_1hz~2_combout\ = (\LAB3ENT|divHorloge|count_1hz\(1) & (\LAB3ENT|divHorloge|count_1hz\(2) $ (\LAB3ENT|divHorloge|count_1hz\(0)))) # (!\LAB3ENT|divHorloge|count_1hz\(1) & (\LAB3ENT|divHorloge|count_1hz\(2) & 
-- \LAB3ENT|divHorloge|count_1hz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LAB3ENT|divHorloge|count_1hz\(1),
	datac => \LAB3ENT|divHorloge|count_1hz\(2),
	datad => \LAB3ENT|divHorloge|count_1hz\(0),
	combout => \LAB3ENT|divHorloge|count_1hz~2_combout\);

-- Location: LCFF_X34_Y1_N23
\LAB3ENT|divHorloge|count_10hz[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_100hz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_10hz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_10hz\(0));

-- Location: LCFF_X34_Y1_N31
\LAB3ENT|divHorloge|count_10hz[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_100hz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_10hz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_10hz\(1));

-- Location: LCFF_X34_Y1_N21
\LAB3ENT|divHorloge|count_10hz[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_100hz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_10hz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_10hz\(2));

-- Location: LCCOMB_X34_Y1_N18
\LAB3ENT|divHorloge|clock_10Hz_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|clock_10Hz_int~0_combout\ = \LAB3ENT|divHorloge|clock_10Hz_int~regout\ $ (((\LAB3ENT|divHorloge|count_10hz\(2) & (!\LAB3ENT|divHorloge|count_10hz\(1) & !\LAB3ENT|divHorloge|count_10hz\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|divHorloge|count_10hz\(2),
	datab => \LAB3ENT|divHorloge|count_10hz\(1),
	datac => \LAB3ENT|divHorloge|clock_10Hz_int~regout\,
	datad => \LAB3ENT|divHorloge|count_10hz\(0),
	combout => \LAB3ENT|divHorloge|clock_10Hz_int~0_combout\);

-- Location: LCFF_X33_Y1_N29
\LAB3ENT|divHorloge|clock_100hz_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_1Khz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|clock_100hz_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|clock_100hz_int~regout\);

-- Location: LCCOMB_X60_Y19_N14
\UART1|vitesseDeBaud1|div41|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|div41|LessThan1~0_combout\ = (\UART1|vitesseDeBaud1|div41|count_614Khz\(5)) # ((\UART1|vitesseDeBaud1|div41|count_614Khz\(4) & ((\UART1|vitesseDeBaud1|div41|count_614Khz\(2)) # (\UART1|vitesseDeBaud1|div41|count_614Khz\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|vitesseDeBaud1|div41|count_614Khz\(2),
	datab => \UART1|vitesseDeBaud1|div41|count_614Khz\(4),
	datac => \UART1|vitesseDeBaud1|div41|count_614Khz\(3),
	datad => \UART1|vitesseDeBaud1|div41|count_614Khz\(5),
	combout => \UART1|vitesseDeBaud1|div41|LessThan1~0_combout\);

-- Location: LCFF_X37_Y5_N21
\UART1|recepteur1|ControleurRecepteur|presentState.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|ControleurRecepteur|Selector0~0_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|ControleurRecepteur|presentState.IDLE~regout\);

-- Location: LCFF_X36_Y5_N3
\UART1|emetteur1|RDTD|bit2|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	datain => \UART1|emetteur1|RDTD|FF_entry[2]~2_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|emetteur1|RDTD|enableLatch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|RDTD|bit2|int_q~regout\);

-- Location: LCCOMB_X36_Y5_N12
\UART1|emetteur1|RDTD|FF_entry[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|RDTD|FF_entry[1]~1_combout\ = (\UART1|emetteur1|RDTD|bit2|int_q~regout\ & \UART1|emetteur1|control_emetteur|presentState.DATA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART1|emetteur1|RDTD|bit2|int_q~regout\,
	datad => \UART1|emetteur1|control_emetteur|presentState.DATA~regout\,
	combout => \UART1|emetteur1|RDTD|FF_entry[1]~1_combout\);

-- Location: LCFF_X32_Y1_N1
\UART1|vitesseDeBaud1|div8|div4|int_clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div2|int_clk~regout\,
	datain => \UART1|vitesseDeBaud1|div8|div4|int_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|vitesseDeBaud1|div8|div4|int_clk~regout\);

-- Location: LCCOMB_X34_Y1_N22
\LAB3ENT|divHorloge|count_10hz~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_10hz~0_combout\ = (!\LAB3ENT|divHorloge|count_10hz\(0) & ((\LAB3ENT|divHorloge|count_10hz\(1)) # (!\LAB3ENT|divHorloge|count_10hz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|divHorloge|count_10hz\(2),
	datac => \LAB3ENT|divHorloge|count_10hz\(0),
	datad => \LAB3ENT|divHorloge|count_10hz\(1),
	combout => \LAB3ENT|divHorloge|count_10hz~0_combout\);

-- Location: LCCOMB_X34_Y1_N30
\LAB3ENT|divHorloge|count_10hz[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_10hz[1]~1_combout\ = \LAB3ENT|divHorloge|count_10hz\(1) $ (\LAB3ENT|divHorloge|count_10hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LAB3ENT|divHorloge|count_10hz\(1),
	datad => \LAB3ENT|divHorloge|count_10hz\(0),
	combout => \LAB3ENT|divHorloge|count_10hz[1]~1_combout\);

-- Location: LCCOMB_X34_Y1_N20
\LAB3ENT|divHorloge|count_10hz~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_10hz~2_combout\ = (\LAB3ENT|divHorloge|count_10hz\(1) & (\LAB3ENT|divHorloge|count_10hz\(2) $ (\LAB3ENT|divHorloge|count_10hz\(0)))) # (!\LAB3ENT|divHorloge|count_10hz\(1) & (\LAB3ENT|divHorloge|count_10hz\(2) & 
-- \LAB3ENT|divHorloge|count_10hz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LAB3ENT|divHorloge|count_10hz\(1),
	datac => \LAB3ENT|divHorloge|count_10hz\(2),
	datad => \LAB3ENT|divHorloge|count_10hz\(0),
	combout => \LAB3ENT|divHorloge|count_10hz~2_combout\);

-- Location: LCFF_X33_Y1_N31
\LAB3ENT|divHorloge|count_100hz[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_1Khz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_100hz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_100hz\(0));

-- Location: LCFF_X33_Y1_N27
\LAB3ENT|divHorloge|count_100hz[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_1Khz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_100hz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_100hz\(1));

-- Location: LCFF_X33_Y1_N25
\LAB3ENT|divHorloge|count_100hz[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_1Khz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_100hz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_100hz\(2));

-- Location: LCCOMB_X33_Y1_N28
\LAB3ENT|divHorloge|clock_100hz_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|clock_100hz_int~0_combout\ = \LAB3ENT|divHorloge|clock_100hz_int~regout\ $ (((\LAB3ENT|divHorloge|count_100hz\(2) & (!\LAB3ENT|divHorloge|count_100hz\(1) & !\LAB3ENT|divHorloge|count_100hz\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|divHorloge|count_100hz\(2),
	datab => \LAB3ENT|divHorloge|count_100hz\(1),
	datac => \LAB3ENT|divHorloge|clock_100hz_int~regout\,
	datad => \LAB3ENT|divHorloge|count_100hz\(0),
	combout => \LAB3ENT|divHorloge|clock_100hz_int~0_combout\);

-- Location: LCFF_X32_Y35_N11
\LAB3ENT|divHorloge|clock_1Khz_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_10Khz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|clock_1Khz_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|clock_1Khz_int~regout\);

-- Location: LCCOMB_X60_Y19_N0
\UART1|vitesseDeBaud1|div41|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|div41|LessThan0~0_combout\ = (\UART1|vitesseDeBaud1|div41|count_614Khz\(5) & ((\UART1|vitesseDeBaud1|div41|count_614Khz\(4)) # (\UART1|vitesseDeBaud1|div41|count_614Khz\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART1|vitesseDeBaud1|div41|count_614Khz\(4),
	datac => \UART1|vitesseDeBaud1|div41|count_614Khz\(3),
	datad => \UART1|vitesseDeBaud1|div41|count_614Khz\(5),
	combout => \UART1|vitesseDeBaud1|div41|LessThan0~0_combout\);

-- Location: LCCOMB_X37_Y5_N20
\UART1|recepteur1|ControleurRecepteur|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|ControleurRecepteur|Selector0~0_combout\ = (!\UART1|recepteur1|ControleurRecepteur|presentState.SAVE~regout\ & ((\UART1|emetteur1|control_emetteur|presentState.START~regout\) # 
-- ((\UART1|recepteur1|ControleurRecepteur|presentState.IDLE~regout\) # (\UART1|emetteur1|RDTD|bit0|int_q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|emetteur1|control_emetteur|presentState.START~regout\,
	datab => \UART1|recepteur1|ControleurRecepteur|presentState.SAVE~regout\,
	datac => \UART1|recepteur1|ControleurRecepteur|presentState.IDLE~regout\,
	datad => \UART1|emetteur1|RDTD|bit0|int_q~regout\,
	combout => \UART1|recepteur1|ControleurRecepteur|Selector0~0_combout\);

-- Location: LCFF_X36_Y5_N25
\UART1|emetteur1|RDTD|bit3|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	datain => \UART1|emetteur1|RDTD|FF_entry[3]~3_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|emetteur1|RDTD|enableLatch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|RDTD|bit3|int_q~regout\);

-- Location: LCFF_X36_Y2_N9
\UART1|emetteur1|RTD|bit2|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	sdata => \LAB3ENT|CONT|presentState.C~regout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	sload => VCC,
	ena => \UART1|emetteur1|control_emetteur|presentState.DETECTED~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|RTD|bit2|int_q~regout\);

-- Location: LCCOMB_X36_Y5_N2
\UART1|emetteur1|RDTD|FF_entry[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|RDTD|FF_entry[2]~2_combout\ = (\UART1|emetteur1|control_emetteur|presentState.DATA~regout\ & (\UART1|emetteur1|RDTD|bit3|int_q~regout\)) # (!\UART1|emetteur1|control_emetteur|presentState.DATA~regout\ & 
-- ((\UART1|emetteur1|RTD|bit2|int_q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART1|emetteur1|control_emetteur|presentState.DATA~regout\,
	datac => \UART1|emetteur1|RDTD|bit3|int_q~regout\,
	datad => \UART1|emetteur1|RTD|bit2|int_q~regout\,
	combout => \UART1|emetteur1|RDTD|FF_entry[2]~2_combout\);

-- Location: LCFF_X31_Y1_N15
\UART1|vitesseDeBaud1|div8|div2|int_clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|vitesseDeBaud1|div8|div2|int_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|vitesseDeBaud1|div8|div2|int_clk~regout\);

-- Location: LCFF_X35_Y5_N7
\UART1|emetteur1|control_emetteur|presentState.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	datain => \UART1|emetteur1|control_emetteur|Selector0~0_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|control_emetteur|presentState.IDLE~regout\);

-- Location: LCCOMB_X33_Y1_N30
\LAB3ENT|divHorloge|count_100hz~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_100hz~0_combout\ = (!\LAB3ENT|divHorloge|count_100hz\(0) & ((\LAB3ENT|divHorloge|count_100hz\(1)) # (!\LAB3ENT|divHorloge|count_100hz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|divHorloge|count_100hz\(2),
	datac => \LAB3ENT|divHorloge|count_100hz\(0),
	datad => \LAB3ENT|divHorloge|count_100hz\(1),
	combout => \LAB3ENT|divHorloge|count_100hz~0_combout\);

-- Location: LCCOMB_X33_Y1_N26
\LAB3ENT|divHorloge|count_100hz[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_100hz[1]~1_combout\ = \LAB3ENT|divHorloge|count_100hz\(1) $ (\LAB3ENT|divHorloge|count_100hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LAB3ENT|divHorloge|count_100hz\(1),
	datad => \LAB3ENT|divHorloge|count_100hz\(0),
	combout => \LAB3ENT|divHorloge|count_100hz[1]~1_combout\);

-- Location: LCCOMB_X33_Y1_N24
\LAB3ENT|divHorloge|count_100hz~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_100hz~2_combout\ = (\LAB3ENT|divHorloge|count_100hz\(1) & (\LAB3ENT|divHorloge|count_100hz\(2) $ (\LAB3ENT|divHorloge|count_100hz\(0)))) # (!\LAB3ENT|divHorloge|count_100hz\(1) & (\LAB3ENT|divHorloge|count_100hz\(2) & 
-- \LAB3ENT|divHorloge|count_100hz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LAB3ENT|divHorloge|count_100hz\(1),
	datac => \LAB3ENT|divHorloge|count_100hz\(2),
	datad => \LAB3ENT|divHorloge|count_100hz\(0),
	combout => \LAB3ENT|divHorloge|count_100hz~2_combout\);

-- Location: LCFF_X32_Y35_N19
\LAB3ENT|divHorloge|count_1Khz[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_10Khz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_1Khz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_1Khz\(0));

-- Location: LCFF_X32_Y35_N31
\LAB3ENT|divHorloge|count_1Khz[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_10Khz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_1Khz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_1Khz\(1));

-- Location: LCFF_X32_Y35_N17
\LAB3ENT|divHorloge|count_1Khz[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_10Khz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_1Khz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_1Khz\(2));

-- Location: LCCOMB_X32_Y35_N10
\LAB3ENT|divHorloge|clock_1Khz_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|clock_1Khz_int~0_combout\ = \LAB3ENT|divHorloge|clock_1Khz_int~regout\ $ (((\LAB3ENT|divHorloge|count_1Khz\(2) & (!\LAB3ENT|divHorloge|count_1Khz\(1) & !\LAB3ENT|divHorloge|count_1Khz\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|divHorloge|count_1Khz\(2),
	datab => \LAB3ENT|divHorloge|count_1Khz\(1),
	datac => \LAB3ENT|divHorloge|clock_1Khz_int~regout\,
	datad => \LAB3ENT|divHorloge|count_1Khz\(0),
	combout => \LAB3ENT|divHorloge|clock_1Khz_int~0_combout\);

-- Location: LCFF_X64_Y20_N19
\LAB3ENT|divHorloge|clock_10Khz_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_100Khz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|clock_10Khz_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|clock_10Khz_int~regout\);

-- Location: LCFF_X36_Y5_N23
\UART1|emetteur1|RDTD|bit4|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	datain => \UART1|emetteur1|RDTD|FF_entry[4]~4_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|emetteur1|RDTD|enableLatch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|RDTD|bit4|int_q~regout\);

-- Location: LCFF_X36_Y2_N19
\UART1|emetteur1|RTD|bit3|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	sdata => \LAB3ENT|CONT|presentState.D~regout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	sload => VCC,
	ena => \UART1|emetteur1|control_emetteur|presentState.DETECTED~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|RTD|bit3|int_q~regout\);

-- Location: LCCOMB_X36_Y5_N24
\UART1|emetteur1|RDTD|FF_entry[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|RDTD|FF_entry[3]~3_combout\ = (\UART1|emetteur1|control_emetteur|presentState.DATA~regout\ & (\UART1|emetteur1|RDTD|bit4|int_q~regout\)) # (!\UART1|emetteur1|control_emetteur|presentState.DATA~regout\ & 
-- ((\UART1|emetteur1|RTD|bit3|int_q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART1|emetteur1|RDTD|bit4|int_q~regout\,
	datac => \UART1|emetteur1|RTD|bit3|int_q~regout\,
	datad => \UART1|emetteur1|control_emetteur|presentState.DATA~regout\,
	combout => \UART1|emetteur1|RDTD|FF_entry[3]~3_combout\);

-- Location: LCCOMB_X35_Y5_N6
\UART1|emetteur1|control_emetteur|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|control_emetteur|Selector0~0_combout\ = (!\UART1|emetteur1|control_emetteur|presentState.STOP~regout\ & ((\UART1|emetteur1|control_emetteur|presentState.IDLE~regout\) # (\UART1|RTDV|int_q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART1|emetteur1|control_emetteur|presentState.STOP~regout\,
	datac => \UART1|emetteur1|control_emetteur|presentState.IDLE~regout\,
	datad => \UART1|RTDV|int_q~regout\,
	combout => \UART1|emetteur1|control_emetteur|Selector0~0_combout\);

-- Location: LCCOMB_X32_Y35_N18
\LAB3ENT|divHorloge|count_1Khz~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_1Khz~0_combout\ = (!\LAB3ENT|divHorloge|count_1Khz\(0) & ((\LAB3ENT|divHorloge|count_1Khz\(1)) # (!\LAB3ENT|divHorloge|count_1Khz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|divHorloge|count_1Khz\(2),
	datac => \LAB3ENT|divHorloge|count_1Khz\(0),
	datad => \LAB3ENT|divHorloge|count_1Khz\(1),
	combout => \LAB3ENT|divHorloge|count_1Khz~0_combout\);

-- Location: LCCOMB_X32_Y35_N30
\LAB3ENT|divHorloge|count_1Khz[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_1Khz[1]~1_combout\ = \LAB3ENT|divHorloge|count_1Khz\(1) $ (\LAB3ENT|divHorloge|count_1Khz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LAB3ENT|divHorloge|count_1Khz\(1),
	datad => \LAB3ENT|divHorloge|count_1Khz\(0),
	combout => \LAB3ENT|divHorloge|count_1Khz[1]~1_combout\);

-- Location: LCCOMB_X32_Y35_N16
\LAB3ENT|divHorloge|count_1Khz~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_1Khz~2_combout\ = (\LAB3ENT|divHorloge|count_1Khz\(1) & (\LAB3ENT|divHorloge|count_1Khz\(2) $ (\LAB3ENT|divHorloge|count_1Khz\(0)))) # (!\LAB3ENT|divHorloge|count_1Khz\(1) & (\LAB3ENT|divHorloge|count_1Khz\(2) & 
-- \LAB3ENT|divHorloge|count_1Khz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LAB3ENT|divHorloge|count_1Khz\(1),
	datac => \LAB3ENT|divHorloge|count_1Khz\(2),
	datad => \LAB3ENT|divHorloge|count_1Khz\(0),
	combout => \LAB3ENT|divHorloge|count_1Khz~2_combout\);

-- Location: LCFF_X64_Y20_N21
\LAB3ENT|divHorloge|count_10Khz[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_100Khz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_10Khz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_10Khz\(0));

-- Location: LCFF_X64_Y20_N27
\LAB3ENT|divHorloge|count_10Khz[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_100Khz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_10Khz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_10Khz\(1));

-- Location: LCFF_X64_Y20_N23
\LAB3ENT|divHorloge|count_10Khz[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_100Khz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_10Khz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_10Khz\(2));

-- Location: LCCOMB_X64_Y20_N18
\LAB3ENT|divHorloge|clock_10Khz_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|clock_10Khz_int~0_combout\ = \LAB3ENT|divHorloge|clock_10Khz_int~regout\ $ (((!\LAB3ENT|divHorloge|count_10Khz\(0) & (\LAB3ENT|divHorloge|count_10Khz\(2) & !\LAB3ENT|divHorloge|count_10Khz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|divHorloge|count_10Khz\(0),
	datab => \LAB3ENT|divHorloge|count_10Khz\(2),
	datac => \LAB3ENT|divHorloge|clock_10Khz_int~regout\,
	datad => \LAB3ENT|divHorloge|count_10Khz\(1),
	combout => \LAB3ENT|divHorloge|clock_10Khz_int~0_combout\);

-- Location: LCFF_X31_Y35_N3
\LAB3ENT|divHorloge|clock_100Khz_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_1Mhz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|clock_100Khz_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|clock_100Khz_int~regout\);

-- Location: LCFF_X36_Y5_N5
\UART1|emetteur1|RDTD|bit5|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	datain => \UART1|emetteur1|RDTD|FF_entry[5]~5_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|emetteur1|RDTD|enableLatch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|RDTD|bit5|int_q~regout\);

-- Location: LCFF_X36_Y2_N27
\UART1|emetteur1|RTD|bit4|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	sdata => \LAB3ENT|CONT|selectLight~combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	sload => VCC,
	ena => \UART1|emetteur1|control_emetteur|presentState.DETECTED~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|RTD|bit4|int_q~regout\);

-- Location: LCCOMB_X36_Y5_N22
\UART1|emetteur1|RDTD|FF_entry[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|RDTD|FF_entry[4]~4_combout\ = (\UART1|emetteur1|control_emetteur|presentState.DATA~regout\ & (\UART1|emetteur1|RDTD|bit5|int_q~regout\)) # (!\UART1|emetteur1|control_emetteur|presentState.DATA~regout\ & 
-- ((\UART1|emetteur1|RTD|bit4|int_q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART1|emetteur1|RDTD|bit5|int_q~regout\,
	datac => \UART1|emetteur1|control_emetteur|presentState.DATA~regout\,
	datad => \UART1|emetteur1|RTD|bit4|int_q~regout\,
	combout => \UART1|emetteur1|RDTD|FF_entry[4]~4_combout\);

-- Location: LCCOMB_X64_Y20_N20
\LAB3ENT|divHorloge|count_10Khz~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_10Khz~0_combout\ = (!\LAB3ENT|divHorloge|count_10Khz\(0) & ((\LAB3ENT|divHorloge|count_10Khz\(1)) # (!\LAB3ENT|divHorloge|count_10Khz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LAB3ENT|divHorloge|count_10Khz\(2),
	datac => \LAB3ENT|divHorloge|count_10Khz\(0),
	datad => \LAB3ENT|divHorloge|count_10Khz\(1),
	combout => \LAB3ENT|divHorloge|count_10Khz~0_combout\);

-- Location: LCCOMB_X64_Y20_N26
\LAB3ENT|divHorloge|count_10Khz[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_10Khz[1]~1_combout\ = \LAB3ENT|divHorloge|count_10Khz\(1) $ (\LAB3ENT|divHorloge|count_10Khz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LAB3ENT|divHorloge|count_10Khz\(1),
	datad => \LAB3ENT|divHorloge|count_10Khz\(0),
	combout => \LAB3ENT|divHorloge|count_10Khz[1]~1_combout\);

-- Location: LCCOMB_X64_Y20_N22
\LAB3ENT|divHorloge|count_10Khz~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_10Khz~2_combout\ = (\LAB3ENT|divHorloge|count_10Khz\(0) & (\LAB3ENT|divHorloge|count_10Khz\(2) $ (\LAB3ENT|divHorloge|count_10Khz\(1)))) # (!\LAB3ENT|divHorloge|count_10Khz\(0) & (\LAB3ENT|divHorloge|count_10Khz\(2) & 
-- \LAB3ENT|divHorloge|count_10Khz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|divHorloge|count_10Khz\(0),
	datac => \LAB3ENT|divHorloge|count_10Khz\(2),
	datad => \LAB3ENT|divHorloge|count_10Khz\(1),
	combout => \LAB3ENT|divHorloge|count_10Khz~2_combout\);

-- Location: LCFF_X31_Y35_N31
\LAB3ENT|divHorloge|count_100Khz[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_1Mhz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_100Khz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_100Khz\(0));

-- Location: LCFF_X31_Y35_N25
\LAB3ENT|divHorloge|count_100Khz[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_1Mhz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_100Khz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_100Khz\(1));

-- Location: LCFF_X31_Y35_N29
\LAB3ENT|divHorloge|count_100Khz[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_1Mhz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_100Khz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_100Khz\(2));

-- Location: LCCOMB_X31_Y35_N2
\LAB3ENT|divHorloge|clock_100Khz_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|clock_100Khz_int~0_combout\ = \LAB3ENT|divHorloge|clock_100Khz_int~regout\ $ (((!\LAB3ENT|divHorloge|count_100Khz\(1) & (\LAB3ENT|divHorloge|count_100Khz\(2) & !\LAB3ENT|divHorloge|count_100Khz\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|divHorloge|count_100Khz\(1),
	datab => \LAB3ENT|divHorloge|count_100Khz\(2),
	datac => \LAB3ENT|divHorloge|clock_100Khz_int~regout\,
	datad => \LAB3ENT|divHorloge|count_100Khz\(0),
	combout => \LAB3ENT|divHorloge|clock_100Khz_int~0_combout\);

-- Location: LCFF_X32_Y35_N3
\LAB3ENT|divHorloge|clock_1Mhz_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clock~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|clock_1Mhz_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|clock_1Mhz_int~regout\);

-- Location: LCFF_X36_Y5_N19
\UART1|emetteur1|RDTD|bit6|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	datain => \UART1|emetteur1|RDTD|FF_entry[6]~6_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|emetteur1|RDTD|enableLatch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|RDTD|bit6|int_q~regout\);

-- Location: LCFF_X36_Y2_N31
\UART1|emetteur1|RTD|bit5|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	datain => \UART1|emetteur1|RTD|bit5|int_q~0_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|emetteur1|control_emetteur|presentState.DETECTED~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|RTD|bit5|int_q~regout\);

-- Location: LCCOMB_X36_Y5_N4
\UART1|emetteur1|RDTD|FF_entry[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|RDTD|FF_entry[5]~5_combout\ = (\UART1|emetteur1|control_emetteur|presentState.DATA~regout\ & ((\UART1|emetteur1|RDTD|bit6|int_q~regout\))) # (!\UART1|emetteur1|control_emetteur|presentState.DATA~regout\ & 
-- (\UART1|emetteur1|RTD|bit5|int_q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|emetteur1|RTD|bit5|int_q~regout\,
	datab => \UART1|emetteur1|RDTD|bit6|int_q~regout\,
	datac => \UART1|emetteur1|control_emetteur|presentState.DATA~regout\,
	combout => \UART1|emetteur1|RDTD|FF_entry[5]~5_combout\);

-- Location: LCCOMB_X31_Y35_N30
\LAB3ENT|divHorloge|count_100Khz~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_100Khz~0_combout\ = (!\LAB3ENT|divHorloge|count_100Khz\(0) & ((\LAB3ENT|divHorloge|count_100Khz\(1)) # (!\LAB3ENT|divHorloge|count_100Khz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LAB3ENT|divHorloge|count_100Khz\(2),
	datac => \LAB3ENT|divHorloge|count_100Khz\(0),
	datad => \LAB3ENT|divHorloge|count_100Khz\(1),
	combout => \LAB3ENT|divHorloge|count_100Khz~0_combout\);

-- Location: LCCOMB_X31_Y35_N24
\LAB3ENT|divHorloge|count_100Khz[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_100Khz[1]~1_combout\ = \LAB3ENT|divHorloge|count_100Khz\(1) $ (\LAB3ENT|divHorloge|count_100Khz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LAB3ENT|divHorloge|count_100Khz\(1),
	datad => \LAB3ENT|divHorloge|count_100Khz\(0),
	combout => \LAB3ENT|divHorloge|count_100Khz[1]~1_combout\);

-- Location: LCCOMB_X31_Y35_N28
\LAB3ENT|divHorloge|count_100Khz~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_100Khz~2_combout\ = (\LAB3ENT|divHorloge|count_100Khz\(1) & (\LAB3ENT|divHorloge|count_100Khz\(2) $ (\LAB3ENT|divHorloge|count_100Khz\(0)))) # (!\LAB3ENT|divHorloge|count_100Khz\(1) & (\LAB3ENT|divHorloge|count_100Khz\(2) & 
-- \LAB3ENT|divHorloge|count_100Khz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|divHorloge|count_100Khz\(1),
	datac => \LAB3ENT|divHorloge|count_100Khz\(2),
	datad => \LAB3ENT|divHorloge|count_100Khz\(0),
	combout => \LAB3ENT|divHorloge|count_100Khz~2_combout\);

-- Location: LCCOMB_X33_Y35_N4
\LAB3ENT|divHorloge|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|LessThan1~0_combout\ = (\LAB3ENT|divHorloge|count_1Mhz\(4)) # ((\LAB3ENT|divHorloge|count_1Mhz\(2) & \LAB3ENT|divHorloge|count_1Mhz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|divHorloge|count_1Mhz\(4),
	datac => \LAB3ENT|divHorloge|count_1Mhz\(2),
	datad => \LAB3ENT|divHorloge|count_1Mhz\(3),
	combout => \LAB3ENT|divHorloge|LessThan1~0_combout\);

-- Location: LCFF_X36_Y2_N29
\UART1|emetteur1|RTD|bit6|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	sdata => \LAB3ENT|CONT|presentState.B~regout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	sload => VCC,
	ena => \UART1|emetteur1|control_emetteur|presentState.DETECTED~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|RTD|bit6|int_q~regout\);

-- Location: LCFF_X36_Y5_N29
\UART1|emetteur1|RDTD|bit7|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	datain => \UART1|emetteur1|RDTD|FF_entry[7]~7_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|emetteur1|RDTD|enableLatch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|RDTD|bit7|int_q~regout\);

-- Location: LCCOMB_X36_Y5_N18
\UART1|emetteur1|RDTD|FF_entry[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|RDTD|FF_entry[6]~6_combout\ = (\UART1|emetteur1|control_emetteur|presentState.DATA~regout\ & (!\UART1|emetteur1|RDTD|bit7|int_q~regout\)) # (!\UART1|emetteur1|control_emetteur|presentState.DATA~regout\ & 
-- ((\UART1|emetteur1|RTD|bit6|int_q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART1|emetteur1|RDTD|bit7|int_q~regout\,
	datac => \UART1|emetteur1|control_emetteur|presentState.DATA~regout\,
	datad => \UART1|emetteur1|RTD|bit6|int_q~regout\,
	combout => \UART1|emetteur1|RDTD|FF_entry[6]~6_combout\);

-- Location: LCCOMB_X33_Y35_N2
\LAB3ENT|divHorloge|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|LessThan0~0_combout\ = (\LAB3ENT|divHorloge|count_1Mhz\(4) & \LAB3ENT|divHorloge|count_1Mhz\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LAB3ENT|divHorloge|count_1Mhz\(4),
	datad => \LAB3ENT|divHorloge|count_1Mhz\(3),
	combout => \LAB3ENT|divHorloge|LessThan0~0_combout\);

-- Location: LCFF_X36_Y2_N3
\UART1|emetteur1|RTD|bit7|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	datain => \UART1|emetteur1|RTD|bit7|int_q~0_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|emetteur1|control_emetteur|presentState.DETECTED~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|RTD|bit7|int_q~regout\);

-- Location: LCCOMB_X36_Y5_N28
\UART1|emetteur1|RDTD|FF_entry[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|RDTD|FF_entry[7]~7_combout\ = (!\UART1|emetteur1|control_emetteur|presentState.DATA~regout\ & !\UART1|emetteur1|RTD|bit7|int_q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|emetteur1|control_emetteur|presentState.DATA~regout\,
	datad => \UART1|emetteur1|RTD|bit7|int_q~regout\,
	combout => \UART1|emetteur1|RDTD|FF_entry[7]~7_combout\);

-- Location: LCCOMB_X32_Y1_N18
\UART1|vitesseDeBaud1|div8|div8|int_clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|div8|div8|int_clk~0_combout\ = !\UART1|vitesseDeBaud1|div8|div8|int_clk~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|vitesseDeBaud1|div8|div8|int_clk~regout\,
	combout => \UART1|vitesseDeBaud1|div8|div8|int_clk~0_combout\);

-- Location: LCCOMB_X32_Y1_N0
\UART1|vitesseDeBaud1|div8|div4|int_clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|div8|div4|int_clk~0_combout\ = !\UART1|vitesseDeBaud1|div8|div4|int_clk~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|vitesseDeBaud1|div8|div4|int_clk~regout\,
	combout => \UART1|vitesseDeBaud1|div8|div4|int_clk~0_combout\);

-- Location: LCCOMB_X31_Y1_N14
\UART1|vitesseDeBaud1|div8|div2|int_clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|div8|div2|int_clk~0_combout\ = !\UART1|vitesseDeBaud1|div8|div2|int_clk~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|vitesseDeBaud1|div8|div2|int_clk~regout\,
	combout => \UART1|vitesseDeBaud1|div8|div2|int_clk~0_combout\);

-- Location: LCCOMB_X36_Y2_N30
\UART1|emetteur1|RTD|bit5|int_q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|RTD|bit5|int_q~0_combout\ = !\LAB3ENT|CONT|presentState.A~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LAB3ENT|CONT|presentState.A~regout\,
	combout => \UART1|emetteur1|RTD|bit5|int_q~0_combout\);

-- Location: LCCOMB_X36_Y2_N2
\UART1|emetteur1|RTD|bit7|int_q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|RTD|bit7|int_q~0_combout\ = !\LAB3ENT|CONT|selectLight~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LAB3ENT|CONT|selectLight~combout\,
	combout => \UART1|emetteur1|RTD|bit7|int_q~0_combout\);

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MSC_MAX[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MSC_MAX(0),
	combout => \MSC_MAX~combout\(0));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SSC_MAX[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SSC_MAX(1),
	combout => \SSC_MAX~combout\(1));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_clock,
	combout => \i_clock~combout\);

-- Location: CLKCTRL_G12
\UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\i_clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clock~clkctrl_outclk\);

-- Location: CLKCTRL_G13
\LAB3ENT|divHorloge|clock_100hz_int~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \LAB3ENT|divHorloge|clock_100hz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \LAB3ENT|divHorloge|clock_100hz_int~clkctrl_outclk\);

-- Location: CLKCTRL_G9
\LAB3ENT|divHorloge|clock_1Khz_int~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \LAB3ENT|divHorloge|clock_1Khz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \LAB3ENT|divHorloge|clock_1Khz_int~clkctrl_outclk\);

-- Location: CLKCTRL_G14
\LAB3ENT|divHorloge|clock_10Hz_int~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \LAB3ENT|divHorloge|clock_10Hz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \LAB3ENT|divHorloge|clock_10Hz_int~clkctrl_outclk\);

-- Location: CLKCTRL_G6
\LAB3ENT|divHorloge|clock_10Khz_int~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \LAB3ENT|divHorloge|clock_10Khz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \LAB3ENT|divHorloge|clock_10Khz_int~clkctrl_outclk\);

-- Location: CLKCTRL_G10
\LAB3ENT|divHorloge|clock_100Khz_int~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \LAB3ENT|divHorloge|clock_100Khz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \LAB3ENT|divHorloge|clock_100Khz_int~clkctrl_outclk\);

-- Location: CLKCTRL_G11
\LAB3ENT|divHorloge|clock_1Mhz_int~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \LAB3ENT|divHorloge|clock_1Mhz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \LAB3ENT|divHorloge|clock_1Mhz_int~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y35_N2
\LAB3ENT|divHorloge|clock_1Mhz_int~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|clock_1Mhz_int~feeder_combout\ = \LAB3ENT|divHorloge|LessThan1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LAB3ENT|divHorloge|LessThan1~0_combout\,
	combout => \LAB3ENT|divHorloge|clock_1Mhz_int~feeder_combout\);

-- Location: LCCOMB_X1_Y18_N28
\LAB3ENT|divHorloge|count_1hz~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_1hz~1_combout\ = (!\LAB3ENT|divHorloge|count_1hz\(0) & ((\LAB3ENT|divHorloge|count_1hz\(1)) # (!\LAB3ENT|divHorloge|count_1hz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|divHorloge|count_1hz\(2),
	datac => \LAB3ENT|divHorloge|count_1hz\(0),
	datad => \LAB3ENT|divHorloge|count_1hz\(1),
	combout => \LAB3ENT|divHorloge|count_1hz~1_combout\);

-- Location: LCFF_X1_Y18_N29
\LAB3ENT|divHorloge|count_1hz[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_10Hz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_1hz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_1hz\(0));

-- Location: LCCOMB_X1_Y18_N22
\LAB3ENT|divHorloge|count_1hz[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|count_1hz[1]~0_combout\ = \LAB3ENT|divHorloge|count_1hz\(1) $ (\LAB3ENT|divHorloge|count_1hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LAB3ENT|divHorloge|count_1hz\(1),
	datad => \LAB3ENT|divHorloge|count_1hz\(0),
	combout => \LAB3ENT|divHorloge|count_1hz[1]~0_combout\);

-- Location: LCFF_X1_Y18_N23
\LAB3ENT|divHorloge|count_1hz[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_10Hz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|count_1hz[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|count_1hz\(1));

-- Location: LCCOMB_X1_Y18_N30
\LAB3ENT|divHorloge|clock_1Hz_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|clock_1Hz_int~0_combout\ = \LAB3ENT|divHorloge|clock_1Hz_int~regout\ $ (((\LAB3ENT|divHorloge|count_1hz\(2) & (!\LAB3ENT|divHorloge|count_1hz\(1) & !\LAB3ENT|divHorloge|count_1hz\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|divHorloge|count_1hz\(2),
	datab => \LAB3ENT|divHorloge|count_1hz\(1),
	datac => \LAB3ENT|divHorloge|clock_1Hz_int~regout\,
	datad => \LAB3ENT|divHorloge|count_1hz\(0),
	combout => \LAB3ENT|divHorloge|clock_1Hz_int~0_combout\);

-- Location: LCFF_X1_Y18_N31
\LAB3ENT|divHorloge|clock_1Hz_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_10Hz_int~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|clock_1Hz_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|clock_1Hz_int~regout\);

-- Location: LCCOMB_X1_Y18_N20
\LAB3ENT|divHorloge|clock_1Hz~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|divHorloge|clock_1Hz~feeder_combout\ = \LAB3ENT|divHorloge|clock_1Hz_int~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LAB3ENT|divHorloge|clock_1Hz_int~regout\,
	combout => \LAB3ENT|divHorloge|clock_1Hz~feeder_combout\);

-- Location: LCFF_X1_Y18_N21
\LAB3ENT|divHorloge|clock_1Hz\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clock~clkctrl_outclk\,
	datain => \LAB3ENT|divHorloge|clock_1Hz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|divHorloge|clock_1Hz~regout\);

-- Location: CLKCTRL_G1
\LAB3ENT|divHorloge|clock_1Hz~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \LAB3ENT|divHorloge|clock_1Hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \LAB3ENT|divHorloge|clock_1Hz~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y2_N26
\LAB3ENT|SST_Jaune|reg|lsb|int_q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|SST_Jaune|reg|lsb|int_q~0_combout\ = !\LAB3ENT|SST_Jaune|reg|lsb|int_q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LAB3ENT|SST_Jaune|reg|lsb|int_q~regout\,
	combout => \LAB3ENT|SST_Jaune|reg|lsb|int_q~0_combout\);

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_resetBar~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_i_resetBar,
	combout => \i_resetBar~combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SSCS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SSCS,
	combout => \SSCS~combout\);

-- Location: LCCOMB_X35_Y2_N30
\LAB3ENT|rebondisseur|int_d2Input\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|rebondisseur|int_d2Input~combout\ = (!\SSCS~combout\ & (!\LAB3ENT|rebondisseur|second|int_q~regout\ & !\LAB3ENT|rebondisseur|first|int_q~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSCS~combout\,
	datac => \LAB3ENT|rebondisseur|second|int_q~regout\,
	datad => \LAB3ENT|rebondisseur|first|int_q~regout\,
	combout => \LAB3ENT|rebondisseur|int_d2Input~combout\);

-- Location: CLKDELAYCTRL_G7
\i_resetBar~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \i_resetBar~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \i_resetBar~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G7
\i_resetBar~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_resetBar~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_resetBar~clkctrl_outclk\);

-- Location: LCFF_X35_Y2_N31
\LAB3ENT|rebondisseur|second|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clock~clkctrl_outclk\,
	datain => \LAB3ENT|rebondisseur|int_d2Input~combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|rebondisseur|second|int_q~regout\);

-- Location: LCCOMB_X35_Y2_N28
\LAB3ENT|rebondisseur|int_d1Input~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|rebondisseur|int_d1Input~0_combout\ = (!\SSCS~combout\ & ((\LAB3ENT|rebondisseur|first|int_q~regout\) # (\LAB3ENT|rebondisseur|second|int_q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSCS~combout\,
	datac => \LAB3ENT|rebondisseur|first|int_q~regout\,
	datad => \LAB3ENT|rebondisseur|second|int_q~regout\,
	combout => \LAB3ENT|rebondisseur|int_d1Input~0_combout\);

-- Location: LCFF_X35_Y2_N29
\LAB3ENT|rebondisseur|first|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clock~clkctrl_outclk\,
	datain => \LAB3ENT|rebondisseur|int_d1Input~0_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|rebondisseur|first|int_q~regout\);

-- Location: LCCOMB_X37_Y2_N12
\LAB3ENT|SS|reg|lsb|int_q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|SS|reg|lsb|int_q~0_combout\ = !\LAB3ENT|SS|reg|lsb|int_q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LAB3ENT|SS|reg|lsb|int_q~regout\,
	combout => \LAB3ENT|SS|reg|lsb|int_q~0_combout\);

-- Location: LCCOMB_X36_Y2_N14
\LAB3ENT|resetGreen\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|resetGreen~combout\ = ((\LAB3ENT|CONT|presentState.A~regout\ & !\LAB3ENT|CONT|presentState.C~regout\)) # (!\i_resetBar~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|CONT|presentState.A~regout\,
	datab => \i_resetBar~combout\,
	datad => \LAB3ENT|CONT|presentState.C~regout\,
	combout => \LAB3ENT|resetGreen~combout\);

-- Location: LCFF_X37_Y2_N13
\LAB3ENT|SS|reg|lsb|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_1Hz~clkctrl_outclk\,
	datain => \LAB3ENT|SS|reg|lsb|int_q~0_combout\,
	aclr => \LAB3ENT|resetGreen~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|SS|reg|lsb|int_q~regout\);

-- Location: LCCOMB_X37_Y2_N14
\LAB3ENT|MS|reg|ssb|int_q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|MS|reg|ssb|int_q~0_combout\ = \LAB3ENT|MS|reg|ssb|int_q~regout\ $ (((\LAB3ENT|SS|reg|lsb|int_q~regout\ & ((\LAB3ENT|CONT|presentState.C~regout\) # (!\LAB3ENT|CONT|presentState.A~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|CONT|presentState.C~regout\,
	datab => \LAB3ENT|SS|reg|lsb|int_q~regout\,
	datac => \LAB3ENT|MS|reg|ssb|int_q~regout\,
	datad => \LAB3ENT|CONT|presentState.A~regout\,
	combout => \LAB3ENT|MS|reg|ssb|int_q~0_combout\);

-- Location: LCFF_X37_Y2_N15
\LAB3ENT|MS|reg|ssb|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_1Hz~clkctrl_outclk\,
	datain => \LAB3ENT|MS|reg|ssb|int_q~0_combout\,
	aclr => \LAB3ENT|resetGreen~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|MS|reg|ssb|int_q~regout\);

-- Location: LCCOMB_X37_Y2_N22
\LAB3ENT|MS|reg|msb|int_q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|MS|reg|msb|int_q~0_combout\ = \LAB3ENT|MS|reg|msb|int_q~regout\ $ (((\LAB3ENT|MS|reg|smb|int_q~regout\ & (\LAB3ENT|SS|reg|lsb|int_q~regout\ & \LAB3ENT|MS|reg|ssb|int_q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|MS|reg|smb|int_q~regout\,
	datab => \LAB3ENT|SS|reg|lsb|int_q~regout\,
	datac => \LAB3ENT|MS|reg|msb|int_q~regout\,
	datad => \LAB3ENT|MS|reg|ssb|int_q~regout\,
	combout => \LAB3ENT|MS|reg|msb|int_q~0_combout\);

-- Location: LCFF_X37_Y2_N23
\LAB3ENT|MS|reg|msb|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_1Hz~clkctrl_outclk\,
	datain => \LAB3ENT|MS|reg|msb|int_q~0_combout\,
	aclr => \LAB3ENT|resetGreen~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|MS|reg|msb|int_q~regout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MSC_MAX[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MSC_MAX(3),
	combout => \MSC_MAX~combout\(3));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MSC_MAX[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MSC_MAX(2),
	combout => \MSC_MAX~combout\(2));

-- Location: LCCOMB_X37_Y2_N16
\LAB3ENT|MS|reg|smb|int_q~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|MS|reg|smb|int_q~1_combout\ = \LAB3ENT|MS|reg|smb|int_q~0_combout\ $ (\LAB3ENT|MS|reg|smb|int_q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|MS|reg|smb|int_q~0_combout\,
	datac => \LAB3ENT|MS|reg|smb|int_q~regout\,
	combout => \LAB3ENT|MS|reg|smb|int_q~1_combout\);

-- Location: LCFF_X37_Y2_N17
\LAB3ENT|MS|reg|smb|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_1Hz~clkctrl_outclk\,
	datain => \LAB3ENT|MS|reg|smb|int_q~1_combout\,
	aclr => \LAB3ENT|resetGreen~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|MS|reg|smb|int_q~regout\);

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MSC_MAX[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MSC_MAX(1),
	combout => \MSC_MAX~combout\(1));

-- Location: LCCOMB_X37_Y2_N10
\LAB3ENT|CONT|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|CONT|process_0~0_combout\ = (\MSC_MAX~combout\(1) & (\LAB3ENT|MS|reg|ssb|int_q~regout\ & ((\LAB3ENT|SS|reg|lsb|int_q~regout\) # (!\MSC_MAX~combout\(0))))) # (!\MSC_MAX~combout\(1) & (((\LAB3ENT|MS|reg|ssb|int_q~regout\) # 
-- (\LAB3ENT|SS|reg|lsb|int_q~regout\)) # (!\MSC_MAX~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC_MAX~combout\(0),
	datab => \MSC_MAX~combout\(1),
	datac => \LAB3ENT|MS|reg|ssb|int_q~regout\,
	datad => \LAB3ENT|SS|reg|lsb|int_q~regout\,
	combout => \LAB3ENT|CONT|process_0~0_combout\);

-- Location: LCCOMB_X37_Y2_N0
\LAB3ENT|CONT|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|CONT|process_0~1_combout\ = (\MSC_MAX~combout\(2) & (\LAB3ENT|MS|reg|smb|int_q~regout\ & \LAB3ENT|CONT|process_0~0_combout\)) # (!\MSC_MAX~combout\(2) & ((\LAB3ENT|MS|reg|smb|int_q~regout\) # (\LAB3ENT|CONT|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSC_MAX~combout\(2),
	datac => \LAB3ENT|MS|reg|smb|int_q~regout\,
	datad => \LAB3ENT|CONT|process_0~0_combout\,
	combout => \LAB3ENT|CONT|process_0~1_combout\);

-- Location: LCCOMB_X37_Y2_N30
\LAB3ENT|CONT|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|CONT|process_0~2_combout\ = (\LAB3ENT|MS|reg|msb|int_q~regout\ & ((\LAB3ENT|CONT|process_0~1_combout\) # (!\MSC_MAX~combout\(3)))) # (!\LAB3ENT|MS|reg|msb|int_q~regout\ & (!\MSC_MAX~combout\(3) & \LAB3ENT|CONT|process_0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LAB3ENT|MS|reg|msb|int_q~regout\,
	datac => \MSC_MAX~combout\(3),
	datad => \LAB3ENT|CONT|process_0~1_combout\,
	combout => \LAB3ENT|CONT|process_0~2_combout\);

-- Location: LCCOMB_X36_Y2_N26
\LAB3ENT|CONT|process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|CONT|process_0~3_combout\ = (!\LAB3ENT|rebondisseur|second|int_q~regout\ & (\LAB3ENT|rebondisseur|first|int_q~regout\ & \LAB3ENT|CONT|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|rebondisseur|second|int_q~regout\,
	datab => \LAB3ENT|rebondisseur|first|int_q~regout\,
	datad => \LAB3ENT|CONT|process_0~2_combout\,
	combout => \LAB3ENT|CONT|process_0~3_combout\);

-- Location: LCCOMB_X36_Y2_N6
\LAB3ENT|CONT|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|CONT|Selector1~0_combout\ = (\LAB3ENT|CONT|Selector2~0_combout\ & (!\LAB3ENT|CONT|presentState.A~regout\ & ((\LAB3ENT|CONT|process_0~3_combout\)))) # (!\LAB3ENT|CONT|Selector2~0_combout\ & ((\LAB3ENT|CONT|presentState.B~regout\) # 
-- ((!\LAB3ENT|CONT|presentState.A~regout\ & \LAB3ENT|CONT|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|CONT|Selector2~0_combout\,
	datab => \LAB3ENT|CONT|presentState.A~regout\,
	datac => \LAB3ENT|CONT|presentState.B~regout\,
	datad => \LAB3ENT|CONT|process_0~3_combout\,
	combout => \LAB3ENT|CONT|Selector1~0_combout\);

-- Location: LCFF_X36_Y2_N7
\LAB3ENT|CONT|presentState.B\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_1Hz~clkctrl_outclk\,
	datain => \LAB3ENT|CONT|Selector1~0_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|CONT|presentState.B~regout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SSC_MAX[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SSC_MAX(3),
	combout => \SSC_MAX~combout\(3));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SSC_MAX[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SSC_MAX(2),
	combout => \SSC_MAX~combout\(2));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SSC_MAX[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SSC_MAX(0),
	combout => \SSC_MAX~combout\(0));

-- Location: LCCOMB_X37_Y2_N28
\LAB3ENT|comparateur|o_EQ~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|comparateur|o_EQ~0_combout\ = (\SSC_MAX~combout\(1) & (\LAB3ENT|MS|reg|ssb|int_q~regout\ & ((\LAB3ENT|SS|reg|lsb|int_q~regout\) # (!\SSC_MAX~combout\(0))))) # (!\SSC_MAX~combout\(1) & (((\LAB3ENT|MS|reg|ssb|int_q~regout\) # 
-- (\LAB3ENT|SS|reg|lsb|int_q~regout\)) # (!\SSC_MAX~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSC_MAX~combout\(1),
	datab => \SSC_MAX~combout\(0),
	datac => \LAB3ENT|MS|reg|ssb|int_q~regout\,
	datad => \LAB3ENT|SS|reg|lsb|int_q~regout\,
	combout => \LAB3ENT|comparateur|o_EQ~0_combout\);

-- Location: LCCOMB_X37_Y2_N6
\LAB3ENT|comparateur|o_EQ~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|comparateur|o_EQ~1_combout\ = (\SSC_MAX~combout\(2) & (\LAB3ENT|MS|reg|smb|int_q~regout\ & \LAB3ENT|comparateur|o_EQ~0_combout\)) # (!\SSC_MAX~combout\(2) & ((\LAB3ENT|MS|reg|smb|int_q~regout\) # (\LAB3ENT|comparateur|o_EQ~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSC_MAX~combout\(2),
	datac => \LAB3ENT|MS|reg|smb|int_q~regout\,
	datad => \LAB3ENT|comparateur|o_EQ~0_combout\,
	combout => \LAB3ENT|comparateur|o_EQ~1_combout\);

-- Location: LCCOMB_X36_Y2_N18
\LAB3ENT|comparateur|o_EQ~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|comparateur|o_EQ~2_combout\ = (\LAB3ENT|MS|reg|msb|int_q~regout\ & ((\LAB3ENT|comparateur|o_EQ~1_combout\) # (!\SSC_MAX~combout\(3)))) # (!\LAB3ENT|MS|reg|msb|int_q~regout\ & (!\SSC_MAX~combout\(3) & \LAB3ENT|comparateur|o_EQ~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|MS|reg|msb|int_q~regout\,
	datab => \SSC_MAX~combout\(3),
	datad => \LAB3ENT|comparateur|o_EQ~1_combout\,
	combout => \LAB3ENT|comparateur|o_EQ~2_combout\);

-- Location: LCCOMB_X36_Y2_N22
\LAB3ENT|CONT|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|CONT|Selector2~1_combout\ = (\LAB3ENT|CONT|Selector2~0_combout\ & ((\LAB3ENT|CONT|presentState.B~regout\) # ((\LAB3ENT|CONT|presentState.C~regout\ & !\LAB3ENT|comparateur|o_EQ~2_combout\)))) # (!\LAB3ENT|CONT|Selector2~0_combout\ & 
-- (((\LAB3ENT|CONT|presentState.C~regout\ & !\LAB3ENT|comparateur|o_EQ~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|CONT|Selector2~0_combout\,
	datab => \LAB3ENT|CONT|presentState.B~regout\,
	datac => \LAB3ENT|CONT|presentState.C~regout\,
	datad => \LAB3ENT|comparateur|o_EQ~2_combout\,
	combout => \LAB3ENT|CONT|Selector2~1_combout\);

-- Location: LCFF_X36_Y2_N23
\LAB3ENT|CONT|presentState.C\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_1Hz~clkctrl_outclk\,
	datain => \LAB3ENT|CONT|Selector2~1_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|CONT|presentState.C~regout\);

-- Location: LCCOMB_X36_Y2_N28
\LAB3ENT|resetYellow\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|resetYellow~combout\ = ((\LAB3ENT|CONT|presentState.C~regout\) # (!\i_resetBar~combout\)) # (!\LAB3ENT|CONT|presentState.A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|CONT|presentState.A~regout\,
	datab => \i_resetBar~combout\,
	datad => \LAB3ENT|CONT|presentState.C~regout\,
	combout => \LAB3ENT|resetYellow~combout\);

-- Location: LCFF_X36_Y2_N15
\LAB3ENT|SST_Jaune|reg|lsb|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_1Hz~clkctrl_outclk\,
	sdata => \LAB3ENT|SST_Jaune|reg|lsb|int_q~0_combout\,
	aclr => \LAB3ENT|resetYellow~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|SST_Jaune|reg|lsb|int_q~regout\);

-- Location: LCCOMB_X36_Y2_N12
\LAB3ENT|MST_Jaune|reg|smb|int_q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|MST_Jaune|reg|smb|int_q~0_combout\ = \LAB3ENT|MST_Jaune|reg|smb|int_q~regout\ $ (((\LAB3ENT|MST_Jaune|reg|ssb|int_q~regout\ & \LAB3ENT|SST_Jaune|reg|lsb|int_q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|MST_Jaune|reg|ssb|int_q~regout\,
	datab => \LAB3ENT|SST_Jaune|reg|lsb|int_q~regout\,
	datac => \LAB3ENT|MST_Jaune|reg|smb|int_q~regout\,
	combout => \LAB3ENT|MST_Jaune|reg|smb|int_q~0_combout\);

-- Location: LCFF_X36_Y2_N13
\LAB3ENT|MST_Jaune|reg|smb|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_1Hz~clkctrl_outclk\,
	datain => \LAB3ENT|MST_Jaune|reg|smb|int_q~0_combout\,
	aclr => \LAB3ENT|resetYellow~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|MST_Jaune|reg|smb|int_q~regout\);

-- Location: LCCOMB_X36_Y2_N0
\LAB3ENT|MST_Jaune|reg|msb|int_q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|MST_Jaune|reg|msb|int_q~0_combout\ = \LAB3ENT|MST_Jaune|reg|msb|int_q~regout\ $ (((\LAB3ENT|MST_Jaune|reg|ssb|int_q~regout\ & (\LAB3ENT|SST_Jaune|reg|lsb|int_q~regout\ & \LAB3ENT|MST_Jaune|reg|smb|int_q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|MST_Jaune|reg|ssb|int_q~regout\,
	datab => \LAB3ENT|SST_Jaune|reg|lsb|int_q~regout\,
	datac => \LAB3ENT|MST_Jaune|reg|msb|int_q~regout\,
	datad => \LAB3ENT|MST_Jaune|reg|smb|int_q~regout\,
	combout => \LAB3ENT|MST_Jaune|reg|msb|int_q~0_combout\);

-- Location: LCFF_X36_Y2_N1
\LAB3ENT|MST_Jaune|reg|msb|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_1Hz~clkctrl_outclk\,
	datain => \LAB3ENT|MST_Jaune|reg|msb|int_q~0_combout\,
	aclr => \LAB3ENT|resetYellow~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|MST_Jaune|reg|msb|int_q~regout\);

-- Location: LCCOMB_X36_Y2_N20
\LAB3ENT|CONT|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|CONT|Selector0~0_combout\ = (\LAB3ENT|MST_Jaune|reg|ssb|int_q~regout\ & (!\LAB3ENT|MST_Jaune|reg|smb|int_q~regout\ & (!\LAB3ENT|SST_Jaune|reg|lsb|int_q~regout\ & !\LAB3ENT|MST_Jaune|reg|msb|int_q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|MST_Jaune|reg|ssb|int_q~regout\,
	datab => \LAB3ENT|MST_Jaune|reg|smb|int_q~regout\,
	datac => \LAB3ENT|SST_Jaune|reg|lsb|int_q~regout\,
	datad => \LAB3ENT|MST_Jaune|reg|msb|int_q~regout\,
	combout => \LAB3ENT|CONT|Selector0~0_combout\);

-- Location: LCCOMB_X36_Y2_N4
\LAB3ENT|CONT|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|CONT|Selector3~0_combout\ = (\LAB3ENT|CONT|presentState.C~regout\ & ((\LAB3ENT|comparateur|o_EQ~2_combout\) # ((!\LAB3ENT|CONT|Selector0~0_combout\ & \LAB3ENT|CONT|presentState.D~regout\)))) # (!\LAB3ENT|CONT|presentState.C~regout\ & 
-- (!\LAB3ENT|CONT|Selector0~0_combout\ & (\LAB3ENT|CONT|presentState.D~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|CONT|presentState.C~regout\,
	datab => \LAB3ENT|CONT|Selector0~0_combout\,
	datac => \LAB3ENT|CONT|presentState.D~regout\,
	datad => \LAB3ENT|comparateur|o_EQ~2_combout\,
	combout => \LAB3ENT|CONT|Selector3~0_combout\);

-- Location: LCFF_X36_Y2_N5
\LAB3ENT|CONT|presentState.D\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_1Hz~clkctrl_outclk\,
	datain => \LAB3ENT|CONT|Selector3~0_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|CONT|presentState.D~regout\);

-- Location: LCCOMB_X36_Y2_N16
\LAB3ENT|CONT|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|CONT|Selector0~1_combout\ = (\LAB3ENT|CONT|Selector0~0_combout\ & (!\LAB3ENT|CONT|presentState.D~regout\ & ((\LAB3ENT|CONT|presentState.A~regout\) # (\LAB3ENT|CONT|process_0~3_combout\)))) # (!\LAB3ENT|CONT|Selector0~0_combout\ & 
-- (((\LAB3ENT|CONT|presentState.A~regout\) # (\LAB3ENT|CONT|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|CONT|Selector0~0_combout\,
	datab => \LAB3ENT|CONT|presentState.D~regout\,
	datac => \LAB3ENT|CONT|presentState.A~regout\,
	datad => \LAB3ENT|CONT|process_0~3_combout\,
	combout => \LAB3ENT|CONT|Selector0~1_combout\);

-- Location: LCFF_X36_Y2_N17
\LAB3ENT|CONT|presentState.A\ : cycloneii_lcell_ff
PORT MAP (
	clk => \LAB3ENT|divHorloge|clock_1Hz~clkctrl_outclk\,
	datain => \LAB3ENT|CONT|Selector0~1_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LAB3ENT|CONT|presentState.A~regout\);

-- Location: LCCOMB_X36_Y2_N8
\LAB3ENT|CONT|selectLight\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|CONT|selectLight~combout\ = (\LAB3ENT|CONT|presentState.B~regout\) # (!\LAB3ENT|CONT|presentState.A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|CONT|presentState.A~regout\,
	datad => \LAB3ENT|CONT|presentState.B~regout\,
	combout => \LAB3ENT|CONT|selectLight~combout\);

-- Location: LCCOMB_X33_Y2_N0
\LAB3ENT|seg|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|seg|Mux6~0_combout\ = (\LAB3ENT|MS|reg|ssb|int_q~regout\ & (\LAB3ENT|MS|reg|msb|int_q~regout\ & (\LAB3ENT|SS|reg|lsb|int_q~regout\ $ (\LAB3ENT|MS|reg|smb|int_q~regout\)))) # (!\LAB3ENT|MS|reg|ssb|int_q~regout\ & 
-- (!\LAB3ENT|MS|reg|msb|int_q~regout\ & (\LAB3ENT|SS|reg|lsb|int_q~regout\ $ (\LAB3ENT|MS|reg|smb|int_q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|MS|reg|ssb|int_q~regout\,
	datab => \LAB3ENT|MS|reg|msb|int_q~regout\,
	datac => \LAB3ENT|SS|reg|lsb|int_q~regout\,
	datad => \LAB3ENT|MS|reg|smb|int_q~regout\,
	combout => \LAB3ENT|seg|Mux6~0_combout\);

-- Location: LCCOMB_X33_Y2_N10
\LAB3ENT|seg|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|seg|Mux5~0_combout\ = (\LAB3ENT|MS|reg|smb|int_q~regout\ & ((\LAB3ENT|MS|reg|ssb|int_q~regout\ & (\LAB3ENT|MS|reg|msb|int_q~regout\ $ (!\LAB3ENT|SS|reg|lsb|int_q~regout\))) # (!\LAB3ENT|MS|reg|ssb|int_q~regout\ & 
-- (!\LAB3ENT|MS|reg|msb|int_q~regout\ & \LAB3ENT|SS|reg|lsb|int_q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|MS|reg|ssb|int_q~regout\,
	datab => \LAB3ENT|MS|reg|msb|int_q~regout\,
	datac => \LAB3ENT|SS|reg|lsb|int_q~regout\,
	datad => \LAB3ENT|MS|reg|smb|int_q~regout\,
	combout => \LAB3ENT|seg|Mux5~0_combout\);

-- Location: LCCOMB_X33_Y2_N8
\LAB3ENT|seg|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|seg|Mux4~0_combout\ = (!\LAB3ENT|SS|reg|lsb|int_q~regout\ & ((\LAB3ENT|MS|reg|ssb|int_q~regout\ & (!\LAB3ENT|MS|reg|msb|int_q~regout\ & !\LAB3ENT|MS|reg|smb|int_q~regout\)) # (!\LAB3ENT|MS|reg|ssb|int_q~regout\ & 
-- (\LAB3ENT|MS|reg|msb|int_q~regout\ & \LAB3ENT|MS|reg|smb|int_q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|MS|reg|ssb|int_q~regout\,
	datab => \LAB3ENT|MS|reg|msb|int_q~regout\,
	datac => \LAB3ENT|SS|reg|lsb|int_q~regout\,
	datad => \LAB3ENT|MS|reg|smb|int_q~regout\,
	combout => \LAB3ENT|seg|Mux4~0_combout\);

-- Location: LCCOMB_X33_Y2_N22
\LAB3ENT|seg|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|seg|Mux3~0_combout\ = (\LAB3ENT|SS|reg|lsb|int_q~regout\ & (\LAB3ENT|MS|reg|smb|int_q~regout\ $ (((\LAB3ENT|MS|reg|msb|int_q~regout\) # (!\LAB3ENT|MS|reg|ssb|int_q~regout\))))) # (!\LAB3ENT|SS|reg|lsb|int_q~regout\ & 
-- (\LAB3ENT|MS|reg|smb|int_q~regout\ & (\LAB3ENT|MS|reg|ssb|int_q~regout\ $ (!\LAB3ENT|MS|reg|msb|int_q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|MS|reg|ssb|int_q~regout\,
	datab => \LAB3ENT|MS|reg|msb|int_q~regout\,
	datac => \LAB3ENT|SS|reg|lsb|int_q~regout\,
	datad => \LAB3ENT|MS|reg|smb|int_q~regout\,
	combout => \LAB3ENT|seg|Mux3~0_combout\);

-- Location: LCCOMB_X33_Y2_N20
\LAB3ENT|seg|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|seg|Mux2~0_combout\ = (\LAB3ENT|SS|reg|lsb|int_q~regout\) # ((\LAB3ENT|MS|reg|smb|int_q~regout\ & (\LAB3ENT|MS|reg|ssb|int_q~regout\ $ (!\LAB3ENT|MS|reg|msb|int_q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|MS|reg|ssb|int_q~regout\,
	datab => \LAB3ENT|MS|reg|msb|int_q~regout\,
	datac => \LAB3ENT|SS|reg|lsb|int_q~regout\,
	datad => \LAB3ENT|MS|reg|smb|int_q~regout\,
	combout => \LAB3ENT|seg|Mux2~0_combout\);

-- Location: LCCOMB_X33_Y2_N18
\LAB3ENT|seg|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|seg|Mux1~0_combout\ = (\LAB3ENT|MS|reg|ssb|int_q~regout\ & ((\LAB3ENT|MS|reg|msb|int_q~regout\ & (\LAB3ENT|SS|reg|lsb|int_q~regout\ & !\LAB3ENT|MS|reg|smb|int_q~regout\)) # (!\LAB3ENT|MS|reg|msb|int_q~regout\ & 
-- ((\LAB3ENT|SS|reg|lsb|int_q~regout\) # (!\LAB3ENT|MS|reg|smb|int_q~regout\))))) # (!\LAB3ENT|MS|reg|ssb|int_q~regout\ & ((\LAB3ENT|MS|reg|msb|int_q~regout\ & ((\LAB3ENT|MS|reg|smb|int_q~regout\))) # (!\LAB3ENT|MS|reg|msb|int_q~regout\ & 
-- (\LAB3ENT|SS|reg|lsb|int_q~regout\ & !\LAB3ENT|MS|reg|smb|int_q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|MS|reg|ssb|int_q~regout\,
	datab => \LAB3ENT|MS|reg|msb|int_q~regout\,
	datac => \LAB3ENT|SS|reg|lsb|int_q~regout\,
	datad => \LAB3ENT|MS|reg|smb|int_q~regout\,
	combout => \LAB3ENT|seg|Mux1~0_combout\);

-- Location: LCCOMB_X33_Y2_N12
\LAB3ENT|seg|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|seg|Mux0~0_combout\ = (\LAB3ENT|MS|reg|smb|int_q~regout\ & (((\LAB3ENT|MS|reg|msb|int_q~regout\) # (!\LAB3ENT|SS|reg|lsb|int_q~regout\)) # (!\LAB3ENT|MS|reg|ssb|int_q~regout\))) # (!\LAB3ENT|MS|reg|smb|int_q~regout\ & 
-- (\LAB3ENT|MS|reg|ssb|int_q~regout\ $ ((\LAB3ENT|MS|reg|msb|int_q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|MS|reg|ssb|int_q~regout\,
	datab => \LAB3ENT|MS|reg|msb|int_q~regout\,
	datac => \LAB3ENT|SS|reg|lsb|int_q~regout\,
	datad => \LAB3ENT|MS|reg|smb|int_q~regout\,
	combout => \LAB3ENT|seg|Mux0~0_combout\);

-- Location: LCCOMB_X37_Y2_N24
\LAB3ENT|seg|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LAB3ENT|seg|Mux10~0_combout\ = ((!\LAB3ENT|MS|reg|ssb|int_q~regout\ & !\LAB3ENT|MS|reg|smb|int_q~regout\)) # (!\LAB3ENT|MS|reg|msb|int_q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LAB3ENT|MS|reg|ssb|int_q~regout\,
	datac => \LAB3ENT|MS|reg|smb|int_q~regout\,
	datad => \LAB3ENT|MS|reg|msb|int_q~regout\,
	combout => \LAB3ENT|seg|Mux10~0_combout\);

-- Location: LCCOMB_X64_Y19_N30
\UART1|vitesseDeBaud1|div256|div128|int_clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|div256|div128|int_clk~0_combout\ = !\UART1|vitesseDeBaud1|div256|div128|int_clk~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|vitesseDeBaud1|div256|div128|int_clk~regout\,
	combout => \UART1|vitesseDeBaud1|div256|div128|int_clk~0_combout\);

-- Location: LCFF_X64_Y19_N31
\UART1|vitesseDeBaud1|div256|div128|int_clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div256|div64|int_clk~regout\,
	datain => \UART1|vitesseDeBaud1|div256|div128|int_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|vitesseDeBaud1|div256|div128|int_clk~regout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\selBaud[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_selBaud(1),
	combout => \selBaud~combout\(1));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\selBaud[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_selBaud(0),
	combout => \selBaud~combout\(0));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\selBaud[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_selBaud(2),
	combout => \selBaud~combout\(2));

-- Location: LCCOMB_X64_Y19_N18
\UART1|vitesseDeBaud1|mux|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|mux|Equal0~3_combout\ = (\selBaud~combout\(1) & (\selBaud~combout\(0) & !\selBaud~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selBaud~combout\(1),
	datac => \selBaud~combout\(0),
	datad => \selBaud~combout\(2),
	combout => \UART1|vitesseDeBaud1|mux|Equal0~3_combout\);

-- Location: LCCOMB_X64_Y19_N8
\UART1|vitesseDeBaud1|mux|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|mux|Equal0~1_combout\ = (!\selBaud~combout\(2) & (!\selBaud~combout\(1) & \selBaud~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selBaud~combout\(2),
	datac => \selBaud~combout\(1),
	datad => \selBaud~combout\(0),
	combout => \UART1|vitesseDeBaud1|mux|Equal0~1_combout\);

-- Location: LCCOMB_X61_Y19_N30
\UART1|vitesseDeBaud1|div256|div4|int_clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|div256|div4|int_clk~0_combout\ = !\UART1|vitesseDeBaud1|div256|div4|int_clk~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|vitesseDeBaud1|div256|div4|int_clk~regout\,
	combout => \UART1|vitesseDeBaud1|div256|div4|int_clk~0_combout\);

-- Location: LCFF_X61_Y19_N31
\UART1|vitesseDeBaud1|div256|div4|int_clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div256|div2|int_clk~regout\,
	datain => \UART1|vitesseDeBaud1|div256|div4|int_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|vitesseDeBaud1|div256|div4|int_clk~regout\);

-- Location: LCCOMB_X61_Y19_N12
\UART1|vitesseDeBaud1|div256|div2|int_clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|div256|div2|int_clk~0_combout\ = !\UART1|vitesseDeBaud1|div256|div2|int_clk~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|vitesseDeBaud1|div256|div2|int_clk~regout\,
	combout => \UART1|vitesseDeBaud1|div256|div2|int_clk~0_combout\);

-- Location: LCFF_X61_Y19_N13
\UART1|vitesseDeBaud1|div256|div2|int_clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div41|clock_614KHz~regout\,
	datain => \UART1|vitesseDeBaud1|div256|div2|int_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|vitesseDeBaud1|div256|div2|int_clk~regout\);

-- Location: LCCOMB_X64_Y19_N24
\UART1|vitesseDeBaud1|mux|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|mux|Equal0~0_combout\ = (!\selBaud~combout\(2) & (!\selBaud~combout\(1) & !\selBaud~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selBaud~combout\(2),
	datac => \selBaud~combout\(1),
	datad => \selBaud~combout\(0),
	combout => \UART1|vitesseDeBaud1|mux|Equal0~0_combout\);

-- Location: LCCOMB_X64_Y19_N12
\UART1|vitesseDeBaud1|div256|div256|int_clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|div256|div256|int_clk~0_combout\ = !\UART1|vitesseDeBaud1|div256|div256|int_clk~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|vitesseDeBaud1|div256|div256|int_clk~regout\,
	combout => \UART1|vitesseDeBaud1|div256|div256|int_clk~0_combout\);

-- Location: LCFF_X64_Y19_N13
\UART1|vitesseDeBaud1|div256|div256|int_clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div256|div128|int_clk~regout\,
	datain => \UART1|vitesseDeBaud1|div256|div256|int_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|vitesseDeBaud1|div256|div256|int_clk~regout\);

-- Location: LCCOMB_X64_Y19_N26
\UART1|vitesseDeBaud1|mux|o~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|mux|o~0_combout\ = (\UART1|vitesseDeBaud1|mux|Equal0~0_combout\ & (\UART1|vitesseDeBaud1|div256|div2|int_clk~regout\)) # (!\UART1|vitesseDeBaud1|mux|Equal0~0_combout\ & ((\UART1|vitesseDeBaud1|div256|div256|int_clk~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART1|vitesseDeBaud1|div256|div2|int_clk~regout\,
	datac => \UART1|vitesseDeBaud1|mux|Equal0~0_combout\,
	datad => \UART1|vitesseDeBaud1|div256|div256|int_clk~regout\,
	combout => \UART1|vitesseDeBaud1|mux|o~0_combout\);

-- Location: LCCOMB_X64_Y19_N14
\UART1|vitesseDeBaud1|mux|o~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|mux|o~1_combout\ = (\UART1|vitesseDeBaud1|mux|Equal0~1_combout\ & (!\UART1|vitesseDeBaud1|div256|div4|int_clk~regout\)) # (!\UART1|vitesseDeBaud1|mux|Equal0~1_combout\ & ((!\UART1|vitesseDeBaud1|mux|o~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART1|vitesseDeBaud1|mux|Equal0~1_combout\,
	datac => \UART1|vitesseDeBaud1|div256|div4|int_clk~regout\,
	datad => \UART1|vitesseDeBaud1|mux|o~0_combout\,
	combout => \UART1|vitesseDeBaud1|mux|o~1_combout\);

-- Location: LCCOMB_X62_Y19_N14
\UART1|vitesseDeBaud1|div256|div8|int_clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|div256|div8|int_clk~0_combout\ = !\UART1|vitesseDeBaud1|div256|div8|int_clk~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|vitesseDeBaud1|div256|div8|int_clk~regout\,
	combout => \UART1|vitesseDeBaud1|div256|div8|int_clk~0_combout\);

-- Location: LCFF_X62_Y19_N15
\UART1|vitesseDeBaud1|div256|div8|int_clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div256|div4|int_clk~regout\,
	datain => \UART1|vitesseDeBaud1|div256|div8|int_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|vitesseDeBaud1|div256|div8|int_clk~regout\);

-- Location: LCCOMB_X63_Y19_N14
\UART1|vitesseDeBaud1|mux|o~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|mux|o~2_combout\ = (\UART1|vitesseDeBaud1|mux|Equal0~2_combout\ & ((!\UART1|vitesseDeBaud1|div256|div8|int_clk~regout\))) # (!\UART1|vitesseDeBaud1|mux|Equal0~2_combout\ & (\UART1|vitesseDeBaud1|mux|o~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|vitesseDeBaud1|mux|Equal0~2_combout\,
	datac => \UART1|vitesseDeBaud1|mux|o~1_combout\,
	datad => \UART1|vitesseDeBaud1|div256|div8|int_clk~regout\,
	combout => \UART1|vitesseDeBaud1|mux|o~2_combout\);

-- Location: LCCOMB_X62_Y19_N2
\UART1|vitesseDeBaud1|div256|div16|int_clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|div256|div16|int_clk~0_combout\ = !\UART1|vitesseDeBaud1|div256|div16|int_clk~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|vitesseDeBaud1|div256|div16|int_clk~regout\,
	combout => \UART1|vitesseDeBaud1|div256|div16|int_clk~0_combout\);

-- Location: LCFF_X62_Y19_N3
\UART1|vitesseDeBaud1|div256|div16|int_clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div256|div8|int_clk~regout\,
	datain => \UART1|vitesseDeBaud1|div256|div16|int_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|vitesseDeBaud1|div256|div16|int_clk~regout\);

-- Location: LCCOMB_X63_Y19_N8
\UART1|vitesseDeBaud1|mux|o~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|mux|o~3_combout\ = (\UART1|vitesseDeBaud1|mux|Equal0~3_combout\ & ((\UART1|vitesseDeBaud1|div256|div16|int_clk~regout\))) # (!\UART1|vitesseDeBaud1|mux|Equal0~3_combout\ & (!\UART1|vitesseDeBaud1|mux|o~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART1|vitesseDeBaud1|mux|Equal0~3_combout\,
	datac => \UART1|vitesseDeBaud1|mux|o~2_combout\,
	datad => \UART1|vitesseDeBaud1|div256|div16|int_clk~regout\,
	combout => \UART1|vitesseDeBaud1|mux|o~3_combout\);

-- Location: LCCOMB_X63_Y19_N10
\UART1|vitesseDeBaud1|div256|div32|int_clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|div256|div32|int_clk~0_combout\ = !\UART1|vitesseDeBaud1|div256|div32|int_clk~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|vitesseDeBaud1|div256|div32|int_clk~regout\,
	combout => \UART1|vitesseDeBaud1|div256|div32|int_clk~0_combout\);

-- Location: LCFF_X63_Y19_N11
\UART1|vitesseDeBaud1|div256|div32|int_clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div256|div16|int_clk~regout\,
	datain => \UART1|vitesseDeBaud1|div256|div32|int_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|vitesseDeBaud1|div256|div32|int_clk~regout\);

-- Location: LCCOMB_X63_Y19_N30
\UART1|vitesseDeBaud1|mux|o~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|mux|o~4_combout\ = (\UART1|vitesseDeBaud1|mux|Equal0~4_combout\ & ((!\UART1|vitesseDeBaud1|div256|div32|int_clk~regout\))) # (!\UART1|vitesseDeBaud1|mux|Equal0~4_combout\ & (!\UART1|vitesseDeBaud1|mux|o~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|vitesseDeBaud1|mux|Equal0~4_combout\,
	datac => \UART1|vitesseDeBaud1|mux|o~3_combout\,
	datad => \UART1|vitesseDeBaud1|div256|div32|int_clk~regout\,
	combout => \UART1|vitesseDeBaud1|mux|o~4_combout\);

-- Location: LCCOMB_X63_Y19_N12
\UART1|vitesseDeBaud1|div256|div64|int_clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|div256|div64|int_clk~0_combout\ = !\UART1|vitesseDeBaud1|div256|div64|int_clk~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|vitesseDeBaud1|div256|div64|int_clk~regout\,
	combout => \UART1|vitesseDeBaud1|div256|div64|int_clk~0_combout\);

-- Location: LCFF_X63_Y19_N13
\UART1|vitesseDeBaud1|div256|div64|int_clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div256|div32|int_clk~regout\,
	datain => \UART1|vitesseDeBaud1|div256|div64|int_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|vitesseDeBaud1|div256|div64|int_clk~regout\);

-- Location: LCCOMB_X64_Y19_N28
\UART1|vitesseDeBaud1|mux|o~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|mux|o~5_combout\ = (\UART1|vitesseDeBaud1|mux|Equal0~5_combout\ & ((!\UART1|vitesseDeBaud1|div256|div64|int_clk~regout\))) # (!\UART1|vitesseDeBaud1|mux|Equal0~5_combout\ & (\UART1|vitesseDeBaud1|mux|o~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|vitesseDeBaud1|mux|Equal0~5_combout\,
	datac => \UART1|vitesseDeBaud1|mux|o~4_combout\,
	datad => \UART1|vitesseDeBaud1|div256|div64|int_clk~regout\,
	combout => \UART1|vitesseDeBaud1|mux|o~5_combout\);

-- Location: LCCOMB_X64_Y19_N6
\UART1|vitesseDeBaud1|mux|o\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|vitesseDeBaud1|mux|o~combout\ = LCELL((\UART1|vitesseDeBaud1|mux|Equal0~6_combout\ & (\UART1|vitesseDeBaud1|div256|div128|int_clk~regout\)) # (!\UART1|vitesseDeBaud1|mux|Equal0~6_combout\ & ((!\UART1|vitesseDeBaud1|mux|o~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|vitesseDeBaud1|mux|Equal0~6_combout\,
	datac => \UART1|vitesseDeBaud1|div256|div128|int_clk~regout\,
	datad => \UART1|vitesseDeBaud1|mux|o~5_combout\,
	combout => \UART1|vitesseDeBaud1|mux|o~combout\);

-- Location: CLKCTRL_G5
\UART1|vitesseDeBaud1|mux|o~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \UART1|vitesseDeBaud1|mux|o~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\);

-- Location: LCCOMB_X35_Y5_N20
\UART1|emetteur1|control_emetteur|compte8[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|control_emetteur|compte8[0]~3_combout\ = !\UART1|emetteur1|control_emetteur|compte8\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|emetteur1|control_emetteur|compte8\(0),
	combout => \UART1|emetteur1|control_emetteur|compte8[0]~3_combout\);

-- Location: LCCOMB_X35_Y5_N14
\UART1|emetteur1|control_emetteur|process_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|control_emetteur|process_2~0_combout\ = (!\UART1|emetteur1|control_emetteur|presentState.DATA~regout\) # (!\i_resetBar~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_resetBar~combout\,
	datad => \UART1|emetteur1|control_emetteur|presentState.DATA~regout\,
	combout => \UART1|emetteur1|control_emetteur|process_2~0_combout\);

-- Location: LCFF_X35_Y5_N21
\UART1|emetteur1|control_emetteur|compte8[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	datain => \UART1|emetteur1|control_emetteur|compte8[0]~3_combout\,
	aclr => \UART1|emetteur1|control_emetteur|process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|control_emetteur|compte8\(0));

-- Location: LCCOMB_X35_Y5_N10
\UART1|emetteur1|control_emetteur|compte8[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|control_emetteur|compte8[1]~2_combout\ = \UART1|emetteur1|control_emetteur|compte8\(0) $ (\UART1|emetteur1|control_emetteur|compte8\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|emetteur1|control_emetteur|compte8\(0),
	datac => \UART1|emetteur1|control_emetteur|compte8\(1),
	combout => \UART1|emetteur1|control_emetteur|compte8[1]~2_combout\);

-- Location: LCFF_X35_Y5_N11
\UART1|emetteur1|control_emetteur|compte8[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	datain => \UART1|emetteur1|control_emetteur|compte8[1]~2_combout\,
	aclr => \UART1|emetteur1|control_emetteur|process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|control_emetteur|compte8\(1));

-- Location: LCCOMB_X35_Y5_N22
\UART1|emetteur1|control_emetteur|compte8[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|control_emetteur|compte8[3]~0_combout\ = \UART1|emetteur1|control_emetteur|compte8\(3) $ (((\UART1|emetteur1|control_emetteur|compte8\(2) & (\UART1|emetteur1|control_emetteur|compte8\(0) & \UART1|emetteur1|control_emetteur|compte8\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|emetteur1|control_emetteur|compte8\(2),
	datab => \UART1|emetteur1|control_emetteur|compte8\(0),
	datac => \UART1|emetteur1|control_emetteur|compte8\(3),
	datad => \UART1|emetteur1|control_emetteur|compte8\(1),
	combout => \UART1|emetteur1|control_emetteur|compte8[3]~0_combout\);

-- Location: LCFF_X35_Y5_N23
\UART1|emetteur1|control_emetteur|compte8[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	datain => \UART1|emetteur1|control_emetteur|compte8[3]~0_combout\,
	aclr => \UART1|emetteur1|control_emetteur|process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|control_emetteur|compte8\(3));

-- Location: LCCOMB_X35_Y5_N16
\UART1|emetteur1|control_emetteur|compte8[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|control_emetteur|compte8[2]~1_combout\ = \UART1|emetteur1|control_emetteur|compte8\(2) $ (((\UART1|emetteur1|control_emetteur|compte8\(0) & \UART1|emetteur1|control_emetteur|compte8\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|emetteur1|control_emetteur|compte8\(0),
	datac => \UART1|emetteur1|control_emetteur|compte8\(2),
	datad => \UART1|emetteur1|control_emetteur|compte8\(1),
	combout => \UART1|emetteur1|control_emetteur|compte8[2]~1_combout\);

-- Location: LCFF_X35_Y5_N17
\UART1|emetteur1|control_emetteur|compte8[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	datain => \UART1|emetteur1|control_emetteur|compte8[2]~1_combout\,
	aclr => \UART1|emetteur1|control_emetteur|process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|control_emetteur|compte8\(2));

-- Location: LCCOMB_X35_Y5_N18
\UART1|emetteur1|control_emetteur|nextState.STOP~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|control_emetteur|nextState.STOP~0_combout\ = (!\UART1|emetteur1|control_emetteur|compte8\(0) & (\UART1|emetteur1|control_emetteur|compte8\(3) & (!\UART1|emetteur1|control_emetteur|compte8\(2) & 
-- !\UART1|emetteur1|control_emetteur|compte8\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|emetteur1|control_emetteur|compte8\(0),
	datab => \UART1|emetteur1|control_emetteur|compte8\(3),
	datac => \UART1|emetteur1|control_emetteur|compte8\(2),
	datad => \UART1|emetteur1|control_emetteur|compte8\(1),
	combout => \UART1|emetteur1|control_emetteur|nextState.STOP~0_combout\);

-- Location: LCCOMB_X35_Y5_N28
\UART1|emetteur1|control_emetteur|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|control_emetteur|Selector1~0_combout\ = (\UART1|emetteur1|control_emetteur|presentState.START~regout\) # ((\UART1|emetteur1|control_emetteur|presentState.DATA~regout\ & !\UART1|emetteur1|control_emetteur|nextState.STOP~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART1|emetteur1|control_emetteur|presentState.START~regout\,
	datac => \UART1|emetteur1|control_emetteur|presentState.DATA~regout\,
	datad => \UART1|emetteur1|control_emetteur|nextState.STOP~0_combout\,
	combout => \UART1|emetteur1|control_emetteur|Selector1~0_combout\);

-- Location: LCFF_X35_Y5_N29
\UART1|emetteur1|control_emetteur|presentState.DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	datain => \UART1|emetteur1|control_emetteur|Selector1~0_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|control_emetteur|presentState.DATA~regout\);

-- Location: LCCOMB_X35_Y5_N24
\UART1|emetteur1|control_emetteur|nextState.STOP~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|control_emetteur|nextState.STOP~1_combout\ = (\UART1|emetteur1|control_emetteur|presentState.DATA~regout\ & \UART1|emetteur1|control_emetteur|nextState.STOP~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UART1|emetteur1|control_emetteur|presentState.DATA~regout\,
	datad => \UART1|emetteur1|control_emetteur|nextState.STOP~0_combout\,
	combout => \UART1|emetteur1|control_emetteur|nextState.STOP~1_combout\);

-- Location: LCFF_X35_Y5_N25
\UART1|emetteur1|control_emetteur|presentState.STOP\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	datain => \UART1|emetteur1|control_emetteur|nextState.STOP~1_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|control_emetteur|presentState.STOP~regout\);

-- Location: LCCOMB_X35_Y5_N12
\UART1|emetteur1|control_emetteur|o_setRTDV~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|control_emetteur|o_setRTDV~0_combout\ = (!\UART1|emetteur1|control_emetteur|presentState.STOP~regout\ & !\UART1|emetteur1|control_emetteur|presentState.DETECTED~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|emetteur1|control_emetteur|presentState.STOP~regout\,
	datad => \UART1|emetteur1|control_emetteur|presentState.DETECTED~regout\,
	combout => \UART1|emetteur1|control_emetteur|o_setRTDV~0_combout\);

-- Location: LCFF_X35_Y5_N13
\UART1|RTDV|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clock~clkctrl_outclk\,
	datain => \UART1|emetteur1|control_emetteur|o_setRTDV~0_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|RTDV|int_q~regout\);

-- Location: LCCOMB_X35_Y5_N0
\UART1|emetteur1|control_emetteur|nextState.DETECTED~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|control_emetteur|nextState.DETECTED~0_combout\ = (!\UART1|emetteur1|control_emetteur|presentState.IDLE~regout\ & \UART1|RTDV|int_q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|emetteur1|control_emetteur|presentState.IDLE~regout\,
	datad => \UART1|RTDV|int_q~regout\,
	combout => \UART1|emetteur1|control_emetteur|nextState.DETECTED~0_combout\);

-- Location: LCFF_X35_Y5_N1
\UART1|emetteur1|control_emetteur|presentState.DETECTED\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	datain => \UART1|emetteur1|control_emetteur|nextState.DETECTED~0_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|control_emetteur|presentState.DETECTED~regout\);

-- Location: LCFF_X36_Y5_N15
\UART1|emetteur1|control_emetteur|presentState.READY\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	sdata => \UART1|emetteur1|control_emetteur|presentState.DETECTED~regout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|control_emetteur|presentState.READY~regout\);

-- Location: LCFF_X36_Y5_N31
\UART1|emetteur1|control_emetteur|presentState.START\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	sdata => \UART1|emetteur1|control_emetteur|presentState.READY~regout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|control_emetteur|presentState.START~regout\);

-- Location: LCCOMB_X36_Y5_N16
\UART1|emetteur1|RDTD|FF_entry[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|RDTD|FF_entry[0]~0_combout\ = (!\UART1|emetteur1|control_emetteur|presentState.DATA~regout\) # (!\UART1|emetteur1|RDTD|bit1|int_q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|emetteur1|RDTD|bit1|int_q~regout\,
	datac => \UART1|emetteur1|control_emetteur|presentState.DATA~regout\,
	combout => \UART1|emetteur1|RDTD|FF_entry[0]~0_combout\);

-- Location: LCCOMB_X36_Y5_N20
\UART1|emetteur1|RDTD|enableLatch\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|RDTD|enableLatch~combout\ = (\UART1|emetteur1|control_emetteur|presentState.READY~regout\) # (\UART1|emetteur1|control_emetteur|presentState.DATA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|emetteur1|control_emetteur|presentState.READY~regout\,
	datad => \UART1|emetteur1|control_emetteur|presentState.DATA~regout\,
	combout => \UART1|emetteur1|RDTD|enableLatch~combout\);

-- Location: LCFF_X36_Y5_N17
\UART1|emetteur1|RDTD|bit0|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|div8|div8|int_clk~clkctrl_outclk\,
	datain => \UART1|emetteur1|RDTD|FF_entry[0]~0_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|emetteur1|RDTD|enableLatch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|emetteur1|RDTD|bit0|int_q~regout\);

-- Location: LCCOMB_X37_Y5_N26
\UART1|emetteur1|o_TxD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|emetteur1|o_TxD~0_combout\ = (!\UART1|emetteur1|control_emetteur|presentState.START~regout\ & !\UART1|emetteur1|RDTD|bit0|int_q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|emetteur1|control_emetteur|presentState.START~regout\,
	datad => \UART1|emetteur1|RDTD|bit0|int_q~regout\,
	combout => \UART1|emetteur1|o_TxD~0_combout\);

-- Location: LCCOMB_X37_Y5_N12
\UART1|recepteur1|RDRD|bit7|int_q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|RDRD|bit7|int_q~feeder_combout\ = \UART1|emetteur1|o_TxD~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART1|emetteur1|o_TxD~0_combout\,
	combout => \UART1|recepteur1|RDRD|bit7|int_q~feeder_combout\);

-- Location: LCCOMB_X38_Y5_N22
\UART1|recepteur1|ControleurRecepteur|compte8[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|ControleurRecepteur|compte8[0]~2_combout\ = !\UART1|recepteur1|ControleurRecepteur|compte8\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|recepteur1|ControleurRecepteur|compte8\(0),
	combout => \UART1|recepteur1|ControleurRecepteur|compte8[0]~2_combout\);

-- Location: LCCOMB_X38_Y5_N20
\UART1|recepteur1|ControleurRecepteur|compte8[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|ControleurRecepteur|compte8[1]~1_combout\ = \UART1|recepteur1|ControleurRecepteur|compte8\(1) $ (!\UART1|recepteur1|ControleurRecepteur|compte8\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|recepteur1|ControleurRecepteur|compte8\(1),
	datad => \UART1|recepteur1|ControleurRecepteur|compte8\(0),
	combout => \UART1|recepteur1|ControleurRecepteur|compte8[1]~1_combout\);

-- Location: LCFF_X38_Y5_N21
\UART1|recepteur1|ControleurRecepteur|compte8[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|ControleurRecepteur|compte8[1]~1_combout\,
	aclr => \UART1|recepteur1|ControleurRecepteur|process_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|ControleurRecepteur|compte8\(1));

-- Location: LCCOMB_X38_Y5_N16
\UART1|recepteur1|ControleurRecepteur|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|ControleurRecepteur|Selector2~0_combout\ = (\UART1|recepteur1|ControleurRecepteur|presentState.PAUSE~regout\ & (((\UART1|recepteur1|ControleurRecepteur|compte8\(0)) # (!\UART1|recepteur1|ControleurRecepteur|compte8\(1))) # 
-- (!\UART1|recepteur1|ControleurRecepteur|compte8\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|recepteur1|ControleurRecepteur|presentState.PAUSE~regout\,
	datab => \UART1|recepteur1|ControleurRecepteur|compte8\(2),
	datac => \UART1|recepteur1|ControleurRecepteur|compte8\(1),
	datad => \UART1|recepteur1|ControleurRecepteur|compte8\(0),
	combout => \UART1|recepteur1|ControleurRecepteur|Selector2~0_combout\);

-- Location: LCCOMB_X37_Y5_N28
\UART1|recepteur1|ControleurRecepteur|compte4[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|ControleurRecepteur|compte4[0]~1_combout\ = !\UART1|recepteur1|ControleurRecepteur|compte4\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|recepteur1|ControleurRecepteur|compte4\(0),
	combout => \UART1|recepteur1|ControleurRecepteur|compte4[0]~1_combout\);

-- Location: LCCOMB_X37_Y5_N0
\UART1|recepteur1|ControleurRecepteur|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|ControleurRecepteur|Selector1~0_combout\ = (\UART1|recepteur1|ControleurRecepteur|presentState.IDLE~regout\ & (!\UART1|recepteur1|ControleurRecepteur|Selector2~1_combout\ & 
-- (\UART1|recepteur1|ControleurRecepteur|presentState.START~regout\))) # (!\UART1|recepteur1|ControleurRecepteur|presentState.IDLE~regout\ & (((!\UART1|recepteur1|ControleurRecepteur|Selector2~1_combout\ & 
-- \UART1|recepteur1|ControleurRecepteur|presentState.START~regout\)) # (!\UART1|emetteur1|o_TxD~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|recepteur1|ControleurRecepteur|presentState.IDLE~regout\,
	datab => \UART1|recepteur1|ControleurRecepteur|Selector2~1_combout\,
	datac => \UART1|recepteur1|ControleurRecepteur|presentState.START~regout\,
	datad => \UART1|emetteur1|o_TxD~0_combout\,
	combout => \UART1|recepteur1|ControleurRecepteur|Selector1~0_combout\);

-- Location: LCFF_X37_Y5_N1
\UART1|recepteur1|ControleurRecepteur|presentState.START\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|ControleurRecepteur|Selector1~0_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|ControleurRecepteur|presentState.START~regout\);

-- Location: LCCOMB_X37_Y5_N30
\UART1|recepteur1|ControleurRecepteur|process_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|ControleurRecepteur|process_2~0_combout\ = (!\UART1|recepteur1|ControleurRecepteur|presentState.START~regout\) # (!\i_resetBar~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_resetBar~combout\,
	datad => \UART1|recepteur1|ControleurRecepteur|presentState.START~regout\,
	combout => \UART1|recepteur1|ControleurRecepteur|process_2~0_combout\);

-- Location: LCFF_X37_Y5_N29
\UART1|recepteur1|ControleurRecepteur|compte4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|ControleurRecepteur|compte4[0]~1_combout\,
	aclr => \UART1|recepteur1|ControleurRecepteur|process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|ControleurRecepteur|compte4\(0));

-- Location: LCCOMB_X37_Y5_N14
\UART1|recepteur1|ControleurRecepteur|compte4[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|ControleurRecepteur|compte4[1]~0_combout\ = \UART1|recepteur1|ControleurRecepteur|compte4\(1) $ (\UART1|recepteur1|ControleurRecepteur|compte4\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|recepteur1|ControleurRecepteur|compte4\(1),
	datad => \UART1|recepteur1|ControleurRecepteur|compte4\(0),
	combout => \UART1|recepteur1|ControleurRecepteur|compte4[1]~0_combout\);

-- Location: LCFF_X37_Y5_N15
\UART1|recepteur1|ControleurRecepteur|compte4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|ControleurRecepteur|compte4[1]~0_combout\,
	aclr => \UART1|recepteur1|ControleurRecepteur|process_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|ControleurRecepteur|compte4\(1));

-- Location: LCCOMB_X37_Y5_N22
\UART1|recepteur1|ControleurRecepteur|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|ControleurRecepteur|Selector2~1_combout\ = (\UART1|recepteur1|ControleurRecepteur|compte4\(1) & \UART1|recepteur1|ControleurRecepteur|compte4\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|recepteur1|ControleurRecepteur|compte4\(1),
	datad => \UART1|recepteur1|ControleurRecepteur|compte4\(0),
	combout => \UART1|recepteur1|ControleurRecepteur|Selector2~1_combout\);

-- Location: LCCOMB_X38_Y5_N12
\UART1|recepteur1|ControleurRecepteur|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|ControleurRecepteur|Selector2~2_combout\ = (\UART1|recepteur1|ControleurRecepteur|presentState.DATA~regout\) # ((\UART1|recepteur1|ControleurRecepteur|Selector2~0_combout\) # 
-- ((\UART1|recepteur1|ControleurRecepteur|presentState.START~regout\ & \UART1|recepteur1|ControleurRecepteur|Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|recepteur1|ControleurRecepteur|presentState.START~regout\,
	datab => \UART1|recepteur1|ControleurRecepteur|presentState.DATA~regout\,
	datac => \UART1|recepteur1|ControleurRecepteur|Selector2~0_combout\,
	datad => \UART1|recepteur1|ControleurRecepteur|Selector2~1_combout\,
	combout => \UART1|recepteur1|ControleurRecepteur|Selector2~2_combout\);

-- Location: LCFF_X38_Y5_N13
\UART1|recepteur1|ControleurRecepteur|presentState.PAUSE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|ControleurRecepteur|Selector2~2_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|ControleurRecepteur|presentState.PAUSE~regout\);

-- Location: LCCOMB_X38_Y5_N2
\UART1|recepteur1|ControleurRecepteur|process_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|ControleurRecepteur|process_3~0_combout\ = (!\UART1|recepteur1|ControleurRecepteur|presentState.PAUSE~regout\) # (!\i_resetBar~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_resetBar~combout\,
	datad => \UART1|recepteur1|ControleurRecepteur|presentState.PAUSE~regout\,
	combout => \UART1|recepteur1|ControleurRecepteur|process_3~0_combout\);

-- Location: LCFF_X38_Y5_N23
\UART1|recepteur1|ControleurRecepteur|compte8[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|ControleurRecepteur|compte8[0]~2_combout\,
	aclr => \UART1|recepteur1|ControleurRecepteur|process_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|ControleurRecepteur|compte8\(0));

-- Location: LCCOMB_X38_Y5_N18
\UART1|recepteur1|ControleurRecepteur|compte8[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|ControleurRecepteur|compte8[2]~0_combout\ = \UART1|recepteur1|ControleurRecepteur|compte8\(2) $ (((\UART1|recepteur1|ControleurRecepteur|compte8\(1) & !\UART1|recepteur1|ControleurRecepteur|compte8\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|recepteur1|ControleurRecepteur|compte8\(1),
	datac => \UART1|recepteur1|ControleurRecepteur|compte8\(2),
	datad => \UART1|recepteur1|ControleurRecepteur|compte8\(0),
	combout => \UART1|recepteur1|ControleurRecepteur|compte8[2]~0_combout\);

-- Location: LCFF_X38_Y5_N19
\UART1|recepteur1|ControleurRecepteur|compte8[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|ControleurRecepteur|compte8[2]~0_combout\,
	aclr => \UART1|recepteur1|ControleurRecepteur|process_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|ControleurRecepteur|compte8\(2));

-- Location: LCCOMB_X38_Y5_N24
\UART1|recepteur1|ControleurRecepteur|nextState.DATA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|ControleurRecepteur|nextState.DATA~0_combout\ = (\UART1|recepteur1|ControleurRecepteur|presentState.PAUSE~regout\ & (\UART1|recepteur1|ControleurRecepteur|compte8\(2) & (\UART1|recepteur1|ControleurRecepteur|compte8\(1) & 
-- !\UART1|recepteur1|ControleurRecepteur|compte8\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|recepteur1|ControleurRecepteur|presentState.PAUSE~regout\,
	datab => \UART1|recepteur1|ControleurRecepteur|compte8\(2),
	datac => \UART1|recepteur1|ControleurRecepteur|compte8\(1),
	datad => \UART1|recepteur1|ControleurRecepteur|compte8\(0),
	combout => \UART1|recepteur1|ControleurRecepteur|nextState.DATA~0_combout\);

-- Location: LCCOMB_X38_Y5_N28
\UART1|recepteur1|ControleurRecepteur|nextState.SAVE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|ControleurRecepteur|nextState.SAVE~0_combout\ = (\UART1|recepteur1|ControleurRecepteur|nextState.DATA~0_combout\ & \UART1|recepteur1|ControleurRecepteur|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|recepteur1|ControleurRecepteur|nextState.DATA~0_combout\,
	datad => \UART1|recepteur1|ControleurRecepteur|Equal2~0_combout\,
	combout => \UART1|recepteur1|ControleurRecepteur|nextState.SAVE~0_combout\);

-- Location: LCFF_X38_Y5_N29
\UART1|recepteur1|ControleurRecepteur|presentState.SAVE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|ControleurRecepteur|nextState.SAVE~0_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|ControleurRecepteur|presentState.SAVE~regout\);

-- Location: LCCOMB_X38_Y5_N30
\UART1|recepteur1|ControleurRecepteur|RDRD_compteur[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|ControleurRecepteur|RDRD_compteur[1]~2_combout\ = \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(1) $ (((\UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(0) & ((\UART1|recepteur1|ControleurRecepteur|presentState.DATA~regout\) # 
-- (\UART1|recepteur1|ControleurRecepteur|presentState.SAVE~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|recepteur1|ControleurRecepteur|presentState.DATA~regout\,
	datab => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(0),
	datac => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(1),
	datad => \UART1|recepteur1|ControleurRecepteur|presentState.SAVE~regout\,
	combout => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur[1]~2_combout\);

-- Location: LCFF_X38_Y5_N31
\UART1|recepteur1|ControleurRecepteur|RDRD_compteur[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur[1]~2_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(1));

-- Location: LCCOMB_X38_Y5_N8
\UART1|recepteur1|ControleurRecepteur|RDRD_compteur~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|ControleurRecepteur|RDRD_compteur~3_combout\ = (!\UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(0) & (((\UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(2)) # (\UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(1))) # 
-- (!\UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(3),
	datab => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(2),
	datac => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(0),
	datad => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(1),
	combout => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur~3_combout\);

-- Location: LCCOMB_X38_Y5_N0
\UART1|recepteur1|ControleurRecepteur|inc_RDRD\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|ControleurRecepteur|inc_RDRD~combout\ = (\UART1|recepteur1|ControleurRecepteur|presentState.DATA~regout\) # (\UART1|recepteur1|ControleurRecepteur|presentState.SAVE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|recepteur1|ControleurRecepteur|presentState.DATA~regout\,
	datad => \UART1|recepteur1|ControleurRecepteur|presentState.SAVE~regout\,
	combout => \UART1|recepteur1|ControleurRecepteur|inc_RDRD~combout\);

-- Location: LCFF_X38_Y5_N9
\UART1|recepteur1|ControleurRecepteur|RDRD_compteur[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur~3_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|recepteur1|ControleurRecepteur|inc_RDRD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(0));

-- Location: LCCOMB_X38_Y5_N4
\UART1|recepteur1|ControleurRecepteur|RDRD_compteur[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|ControleurRecepteur|RDRD_compteur[2]~1_combout\ = \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(2) $ (((\UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(1) & (\UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(0) & 
-- \UART1|recepteur1|ControleurRecepteur|inc_RDRD~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(1),
	datab => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(0),
	datac => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(2),
	datad => \UART1|recepteur1|ControleurRecepteur|inc_RDRD~combout\,
	combout => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur[2]~1_combout\);

-- Location: LCFF_X38_Y5_N5
\UART1|recepteur1|ControleurRecepteur|RDRD_compteur[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur[2]~1_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(2));

-- Location: LCCOMB_X38_Y5_N10
\UART1|recepteur1|ControleurRecepteur|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|ControleurRecepteur|Equal2~0_combout\ = (\UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(3) & (!\UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(2) & (!\UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(0) & 
-- !\UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(3),
	datab => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(2),
	datac => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(0),
	datad => \UART1|recepteur1|ControleurRecepteur|RDRD_compteur\(1),
	combout => \UART1|recepteur1|ControleurRecepteur|Equal2~0_combout\);

-- Location: LCCOMB_X38_Y5_N14
\UART1|recepteur1|ControleurRecepteur|nextState.DATA~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|ControleurRecepteur|nextState.DATA~1_combout\ = (\UART1|recepteur1|ControleurRecepteur|nextState.DATA~0_combout\ & !\UART1|recepteur1|ControleurRecepteur|Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UART1|recepteur1|ControleurRecepteur|nextState.DATA~0_combout\,
	datad => \UART1|recepteur1|ControleurRecepteur|Equal2~0_combout\,
	combout => \UART1|recepteur1|ControleurRecepteur|nextState.DATA~1_combout\);

-- Location: LCFF_X38_Y5_N15
\UART1|recepteur1|ControleurRecepteur|presentState.DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|ControleurRecepteur|nextState.DATA~1_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|ControleurRecepteur|presentState.DATA~regout\);

-- Location: LCFF_X37_Y5_N13
\UART1|recepteur1|RDRD|bit7|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|RDRD|bit7|int_q~feeder_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|recepteur1|ControleurRecepteur|presentState.DATA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|RDRD|bit7|int_q~regout\);

-- Location: LCCOMB_X37_Y5_N6
\UART1|recepteur1|RDRD|bit6|int_q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|RDRD|bit6|int_q~feeder_combout\ = \UART1|recepteur1|RDRD|bit7|int_q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART1|recepteur1|RDRD|bit7|int_q~regout\,
	combout => \UART1|recepteur1|RDRD|bit6|int_q~feeder_combout\);

-- Location: LCFF_X37_Y5_N7
\UART1|recepteur1|RDRD|bit6|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|RDRD|bit6|int_q~feeder_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|recepteur1|ControleurRecepteur|presentState.DATA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|RDRD|bit6|int_q~regout\);

-- Location: LCCOMB_X37_Y5_N24
\UART1|recepteur1|RDRD|bit5|int_q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|RDRD|bit5|int_q~feeder_combout\ = \UART1|recepteur1|RDRD|bit6|int_q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART1|recepteur1|RDRD|bit6|int_q~regout\,
	combout => \UART1|recepteur1|RDRD|bit5|int_q~feeder_combout\);

-- Location: LCFF_X37_Y5_N25
\UART1|recepteur1|RDRD|bit5|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|RDRD|bit5|int_q~feeder_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|recepteur1|ControleurRecepteur|presentState.DATA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|RDRD|bit5|int_q~regout\);

-- Location: LCFF_X37_Y5_N19
\UART1|recepteur1|RDRD|bit4|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	sdata => \UART1|recepteur1|RDRD|bit5|int_q~regout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	sload => VCC,
	ena => \UART1|recepteur1|ControleurRecepteur|presentState.DATA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|RDRD|bit4|int_q~regout\);

-- Location: LCCOMB_X37_Y5_N16
\UART1|recepteur1|RDRD|bit3|int_q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|RDRD|bit3|int_q~feeder_combout\ = \UART1|recepteur1|RDRD|bit4|int_q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART1|recepteur1|RDRD|bit4|int_q~regout\,
	combout => \UART1|recepteur1|RDRD|bit3|int_q~feeder_combout\);

-- Location: LCFF_X37_Y5_N17
\UART1|recepteur1|RDRD|bit3|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|RDRD|bit3|int_q~feeder_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|recepteur1|ControleurRecepteur|presentState.DATA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|RDRD|bit3|int_q~regout\);

-- Location: LCCOMB_X38_Y4_N28
\UART1|recepteur1|RDRD|bit2|int_q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|RDRD|bit2|int_q~feeder_combout\ = \UART1|recepteur1|RDRD|bit3|int_q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART1|recepteur1|RDRD|bit3|int_q~regout\,
	combout => \UART1|recepteur1|RDRD|bit2|int_q~feeder_combout\);

-- Location: LCFF_X38_Y4_N29
\UART1|recepteur1|RDRD|bit2|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|RDRD|bit2|int_q~feeder_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|recepteur1|ControleurRecepteur|presentState.DATA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|RDRD|bit2|int_q~regout\);

-- Location: LCCOMB_X38_Y4_N22
\UART1|recepteur1|RDRD|bit1|int_q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|RDRD|bit1|int_q~feeder_combout\ = \UART1|recepteur1|RDRD|bit2|int_q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART1|recepteur1|RDRD|bit2|int_q~regout\,
	combout => \UART1|recepteur1|RDRD|bit1|int_q~feeder_combout\);

-- Location: LCFF_X38_Y4_N23
\UART1|recepteur1|RDRD|bit1|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|RDRD|bit1|int_q~feeder_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|recepteur1|ControleurRecepteur|presentState.DATA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|RDRD|bit1|int_q~regout\);

-- Location: LCCOMB_X38_Y4_N0
\UART1|recepteur1|RDRD|bit0|int_q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|RDRD|bit0|int_q~feeder_combout\ = \UART1|recepteur1|RDRD|bit1|int_q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART1|recepteur1|RDRD|bit1|int_q~regout\,
	combout => \UART1|recepteur1|RDRD|bit0|int_q~feeder_combout\);

-- Location: LCFF_X38_Y4_N1
\UART1|recepteur1|RDRD|bit0|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|RDRD|bit0|int_q~feeder_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|recepteur1|ControleurRecepteur|presentState.DATA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|RDRD|bit0|int_q~regout\);

-- Location: LCCOMB_X38_Y4_N20
\UART1|recepteur1|RRD|bit0|int_q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|RRD|bit0|int_q~feeder_combout\ = \UART1|recepteur1|RDRD|bit0|int_q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART1|recepteur1|RDRD|bit0|int_q~regout\,
	combout => \UART1|recepteur1|RRD|bit0|int_q~feeder_combout\);

-- Location: LCFF_X38_Y4_N21
\UART1|recepteur1|RRD|bit0|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|RRD|bit0|int_q~feeder_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|recepteur1|ControleurRecepteur|presentState.SAVE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|RRD|bit0|int_q~regout\);

-- Location: LCCOMB_X38_Y4_N2
\UART1|recepteur1|RRD|bit1|int_q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|RRD|bit1|int_q~feeder_combout\ = \UART1|recepteur1|RDRD|bit1|int_q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART1|recepteur1|RDRD|bit1|int_q~regout\,
	combout => \UART1|recepteur1|RRD|bit1|int_q~feeder_combout\);

-- Location: LCFF_X38_Y4_N3
\UART1|recepteur1|RRD|bit1|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|RRD|bit1|int_q~feeder_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|recepteur1|ControleurRecepteur|presentState.SAVE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|RRD|bit1|int_q~regout\);

-- Location: LCCOMB_X38_Y4_N12
\UART1|recepteur1|RRD|bit2|int_q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|RRD|bit2|int_q~feeder_combout\ = \UART1|recepteur1|RDRD|bit2|int_q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART1|recepteur1|RDRD|bit2|int_q~regout\,
	combout => \UART1|recepteur1|RRD|bit2|int_q~feeder_combout\);

-- Location: LCFF_X38_Y4_N13
\UART1|recepteur1|RRD|bit2|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|RRD|bit2|int_q~feeder_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|recepteur1|ControleurRecepteur|presentState.SAVE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|RRD|bit2|int_q~regout\);

-- Location: LCCOMB_X38_Y4_N18
\UART1|recepteur1|RRD|bit3|int_q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|RRD|bit3|int_q~feeder_combout\ = \UART1|recepteur1|RDRD|bit3|int_q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART1|recepteur1|RDRD|bit3|int_q~regout\,
	combout => \UART1|recepteur1|RRD|bit3|int_q~feeder_combout\);

-- Location: LCFF_X38_Y4_N19
\UART1|recepteur1|RRD|bit3|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|RRD|bit3|int_q~feeder_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|recepteur1|ControleurRecepteur|presentState.SAVE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|RRD|bit3|int_q~regout\);

-- Location: LCCOMB_X41_Y5_N16
\UART1|recepteur1|RRD|bit4|int_q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|RRD|bit4|int_q~feeder_combout\ = \UART1|recepteur1|RDRD|bit4|int_q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART1|recepteur1|RDRD|bit4|int_q~regout\,
	combout => \UART1|recepteur1|RRD|bit4|int_q~feeder_combout\);

-- Location: LCFF_X41_Y5_N17
\UART1|recepteur1|RRD|bit4|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|RRD|bit4|int_q~feeder_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|recepteur1|ControleurRecepteur|presentState.SAVE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|RRD|bit4|int_q~regout\);

-- Location: LCCOMB_X40_Y5_N16
\UART1|recepteur1|RRD|bit5|int_q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|RRD|bit5|int_q~feeder_combout\ = \UART1|recepteur1|RDRD|bit5|int_q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART1|recepteur1|RDRD|bit5|int_q~regout\,
	combout => \UART1|recepteur1|RRD|bit5|int_q~feeder_combout\);

-- Location: LCFF_X40_Y5_N17
\UART1|recepteur1|RRD|bit5|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|RRD|bit5|int_q~feeder_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|recepteur1|ControleurRecepteur|presentState.SAVE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|RRD|bit5|int_q~regout\);

-- Location: LCCOMB_X41_Y5_N26
\UART1|recepteur1|RRD|bit6|int_q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|RRD|bit6|int_q~feeder_combout\ = \UART1|recepteur1|RDRD|bit6|int_q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART1|recepteur1|RDRD|bit6|int_q~regout\,
	combout => \UART1|recepteur1|RRD|bit6|int_q~feeder_combout\);

-- Location: LCFF_X41_Y5_N27
\UART1|recepteur1|RRD|bit6|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|RRD|bit6|int_q~feeder_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|recepteur1|ControleurRecepteur|presentState.SAVE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|RRD|bit6|int_q~regout\);

-- Location: LCCOMB_X41_Y5_N4
\UART1|recepteur1|RRD|bit7|int_q~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \UART1|recepteur1|RRD|bit7|int_q~feeder_combout\ = \UART1|recepteur1|RDRD|bit7|int_q~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART1|recepteur1|RDRD|bit7|int_q~regout\,
	combout => \UART1|recepteur1|RRD|bit7|int_q~feeder_combout\);

-- Location: LCFF_X41_Y5_N5
\UART1|recepteur1|RRD|bit7|int_q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \UART1|vitesseDeBaud1|mux|o~clkctrl_outclk\,
	datain => \UART1|recepteur1|RRD|bit7|int_q~feeder_combout\,
	aclr => \ALT_INV_i_resetBar~clkctrl_outclk\,
	ena => \UART1|recepteur1|ControleurRecepteur|presentState.SAVE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UART1|recepteur1|RRD|bit7|int_q~regout\);

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MSTL[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LAB3ENT|CONT|ALT_INV_presentState.A~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MSTL(0));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MSTL[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LAB3ENT|CONT|presentState.B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MSTL(1));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\MSTL[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LAB3ENT|CONT|ALT_INV_selectLight~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MSTL(2));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SSTL[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LAB3ENT|CONT|presentState.C~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SSTL(0));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SSTL[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LAB3ENT|CONT|presentState.D~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SSTL(1));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SSTL[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LAB3ENT|CONT|selectLight~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SSTL(2));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LAB3ENT|seg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD1(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LAB3ENT|seg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD1(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LAB3ENT|seg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD1(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LAB3ENT|seg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD1(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LAB3ENT|seg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD1(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LAB3ENT|seg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD1(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LAB3ENT|seg|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD1(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LAB3ENT|seg|ALT_INV_Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD2(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD2(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD2(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LAB3ENT|seg|ALT_INV_Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD2(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LAB3ENT|seg|ALT_INV_Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD2(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LAB3ENT|seg|ALT_INV_Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD2(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD2(6));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sortie[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \UART1|recepteur1|RRD|bit0|int_q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sortie(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sortie[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \UART1|recepteur1|RRD|bit1|int_q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sortie(1));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sortie[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \UART1|recepteur1|RRD|bit2|int_q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sortie(2));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sortie[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \UART1|recepteur1|RRD|bit3|int_q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sortie(3));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sortie[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \UART1|recepteur1|RRD|bit4|int_q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sortie(4));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sortie[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \UART1|recepteur1|RRD|bit5|int_q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sortie(5));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sortie[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \UART1|recepteur1|RRD|bit6|int_q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sortie(6));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sortie[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \UART1|recepteur1|RRD|bit7|int_q~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sortie(7));
END structure;


