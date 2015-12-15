library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY clk_div8 IS

	PORT
	(
		i_clock				: IN	STD_LOGIC;
		o_clock				: OUT	STD_LOGIC);
	
END clk_div8;

ARCHITECTURE a OF clk_div8 IS

	SIGNAL   int_clock: STD_LOGIC;
	SIGNAL	count: STD_LOGIC_VECTOR(2 DOWNTO 0);
	
BEGIN
	PROCESS 
	BEGIN
-- Divide by 8
		WAIT UNTIL i_clock'EVENT and i_clock = '1';
			IF count < 8 THEN
				count <= count + 1;
			ELSE
				count <= "000";
			END IF;
			IF count < 4 THEN
				int_clock <= '0';
			ELSE
				int_clock <= '1';
			END IF;	

			o_clock <= int_clock;

	END PROCESS;	
	
END a;