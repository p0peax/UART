--------------------------------------------------------------------------------
-- Title         : S'-R' Lact
-- Project       : VHDL Synthesis Overview
-------------------------------------------------------------------------------
-- File          : sBarrBarLatch.vhd
-- Author        : Rami Abielmona  <rabielmo@site.uottawa.ca>
-- Created       : 2003/05/17
-- Last modified : 2007/09/25
-------------------------------------------------------------------------------
-- Description : This file creates a S'-R' latch as defined in the VHDL
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

ENTITY sBarrBarLatch IS
	PORT(
		i_setBar, i_resetBar	: IN	STD_LOGIC;
		o_q, o_qBar		: OUT	STD_LOGIC);
END sBarrBarLatch;

ARCHITECTURE rtl OF sBarrBarLatch IS
	SIGNAL int_q, int_qBar : STD_LOGIC;
BEGIN

	--  Concurrent Signal Assignment

	int_q		<=	i_setBar nand int_qBar;
	int_qBar	<=	int_q nand i_resetBar;

	--  Output Driver

	o_q		<=	int_q;
	o_qBar		<=	int_qBar;

END rtl;
