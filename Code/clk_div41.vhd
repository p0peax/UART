library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY clk_div41 IS

	PORT
	(
		clock_25Mhz				: IN	STD_LOGIC;
		clock_614KHz			: OUT	STD_LOGIC);
	
END clk_div41;

ARCHITECTURE a OF clk_div41 IS

	SIGNAL   int_clock_614KHz: STD_LOGIC;
	SIGNAL	count_614Khz: STD_LOGIC_VECTOR(5 DOWNTO 0);
	
BEGIN
	PROCESS 
	BEGIN
-- Divide by 41
		WAIT UNTIL clock_25Mhz'EVENT and clock_25Mhz = '1';
			IF count_614Khz < 40 THEN
				count_614Khz <= count_614Khz + 1;
			ELSE
				count_614Khz <= "000000";
			END IF;
			IF count_614Khz < 20 THEN
				clock_614KHz <= '0';
			ELSE
				clock_614KHz <= '1';
			END IF;	
	END PROCESS;	
	
END a;
