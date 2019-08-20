--------------------------------------------------------------------------------
-- Title         : Type D Flip-Flop - 1st realization
-- Project       : VHDL Synthesis Overview
-------------------------------------------------------------------------------
-- File          : dFF.vhd
-- Author        : Rami Abielmona  <rabielmo@site.uottawa.ca>
-- Created       : 2003/05/17
-- Last modified : 2007/09/25
-------------------------------------------------------------------------------
-- Description : This file creates a flip-flop of type D as defined in the VHDL
--		 Synthesis lecture.  The architecture is done at the RTL
--		 abstraction level and the implementation is done in structural
--		 VHDL.
-------------------------------------------------------------------------------
-- Modification history :
-- 2003.05.17 	R. Abielmona		Creation
-- 2004.09.22 	R. Abielmona		Ported for CEG 3550
-- 2007.09.25 	R. Abielmona		Modified copyright notice
-------------------------------------------------------------------------------
-- This file is copyright material of Rami Abielmona, Ph.D., P.Eng., Chief Research
-- Scientist at Larus Technologies.  Permission to make digital or hard copies of part
-- or all of this work for personal or classroom use is granted without fee
-- provided that copies are not made or distributed for profit or commercial
-- advantage and that copies bear this notice and the full citation of this work.
-- Prior permission is required to copy, republish, redistribute or post this work.
-- This notice is adapted from the ACM copyright notice.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY dFF IS
	PORT(
		i_d			: IN	STD_LOGIC;
		i_clock			: IN	STD_LOGIC;
		o_q, o_qBar		: OUT	STD_LOGIC);
END dFF;

ARCHITECTURE rtl OF dFF IS
	SIGNAL int_q, int_qBar : STD_LOGIC;
	SIGNAL int_d, int_dBar : STD_LOGIC;
	SIGNAL int_notD, int_notClock : STD_LOGIC;

	COMPONENT enabledSRLatch
		PORT(
			i_set, i_reset	: IN	STD_LOGIC;
			i_enable	: IN	STD_LOGIC;
			o_q, o_qBar	: OUT	STD_LOGIC);
	END COMPONENT;

BEGIN

	-- Component Instantiation
	masterLatch: enabledSRLatch
		PORT MAP (	i_set 		=> i_d, 
				i_reset 	=> int_notD,
				i_enable 	=> int_notClock,
				o_q 		=> int_q,
				o_qBar		=> int_qBar);

	slaveLatch: enabledSRLatch
		PORT MAP (	i_set 		=> int_q, 
				i_reset 	=> int_qBar,
				i_enable	=> i_clock,
				o_q 		=> o_q,
				o_qBar		=> o_qBar);
	
	--  Concurrent Signal Assignment

	int_notD	<=	not(i_d);
	int_notClock	<=	not(i_clock);

END rtl;
