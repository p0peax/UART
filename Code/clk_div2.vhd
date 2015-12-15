library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY clk_div2 IS
	PORT(
		clk : 	IN STD_LOGIC;
		o_clk:	OUT STD_LOGIC
		);
END ENTITY;

ARCHITECTURE rtl OF clk_div2 IS


SIGNAL int_clk : STD_LOGIC  := '0';
--SIGNAL y1_in, y0_in : STD_LOGIC;
--SIGNAL y1_out, y0_out : STD_LOGIC;
--	COMPONENT enArdFF_2
--		PORT(
--			i_resetBar	: IN	STD_LOGIC;
--			i_d		: IN	STD_LOGIC;
--			i_enable	: IN	STD_LOGIC;
--			i_clock		: IN	STD_LOGIC;
--			o_q	: OUT	STD_LOGIC);
--	END COMPONENT;
--	
--	BEGIN
--	
--y1_in <= (not(clk) and y0_out) or (clk and y1_out);
--y0_in <= (not(clk) and y0_out) or (clk and not(y1_out));
--	msb: enArdFF_2
--		port map('1', y1_in, '1', clk, y1_out );
--	lsb: enArdFF_2
--		port map('1', y0_in, '1', clk, y0_out);
--		
--clk_div <= y0_out;
BEGIN
PROCESS 
	BEGIN
-- Divide by 2
		WAIT UNTIL CLK'EVENT and clk = '1';
			int_clk <= not(int_clk);
		END PROCESS;	
		o_clk <= int_clk;
END ARCHITECTURE;