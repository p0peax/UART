library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY EmetteurControl IS
	PORT(	i_resetBar				: IN	STD_LOGIC;
			i_clock					: IN	STD_LOGIC;
			i_BClk					: IN  STD_LOGIC;
			i_RTDV					: IN  STD_LOGIC;
			o_startbit			: OUT STD_LOGIC;
			o_shiftRDTD				: OUT STD_LOGIC;
			o_loadRDTD				: OUT STD_LOGIC;
			o_loadRTD				: OUT STD_LOGIC;
			o_setRTDV				: OUT STD_LOGIC
			);

END ENTITY;

ARCHITECTURE basic OF EmetteurControl IS

TYPE state_type IS (IDLE, DETECTED, READY, START, DATA, STOP);
SIGNAL presentState, nextState: state_type;
SIGNAL compte : STD_LOGIC;
SIGNAL compte8: STD_LOGIC_VECTOR	(3 downto 0);

BEGIN
	PROCESS(presentState, i_RTDV, compte8)
	BEGIN
		CASE presentState IS
			WHEN IDLE 		=>	IF i_RTDV = '0' THEN
										nextState <= IDLE;
									ELSE 
										nextState <= DETECTED;
									END IF;
									
			WHEN DETECTED 	=>	nextState <= READY;
			
			WHEN READY   	=>	nextState <= START;
			
			WHEN START		=>	nextState <= DATA;
									
			WHEN DATA		=>	IF	 compte8 = "1000" THEN
										nextState <= STOP;
									ELSE	
										nextState <= DATA;
									END IF;
			
			WHEN STOP		=>	nextState <= IDLE;
			
		END CASE;
	END PROCESS;
	
	PROCESS (i_Bclk, i_resetbar)
	BEGIN
		IF (i_resetbar ='0') THEN
			presentState <= state_type'LEFT; -- or A
		ELSIF (i_bclk'EVENT AND i_bclk = '1') THEN
			presentState <= nextState;
		END IF;
	END PROCESS;
	
	
	process (i_Bclk, compte8, compte, i_resetBar)
	BEGIN
		IF i_resetBar = '0' OR compte = '0' THEN
			compte8 <= "0000";
		ELSIF (i_BClk'EVENT AND i_BClk = '1') THEN
			IF (compte = '1') THEN
				compte8 <= compte8 + 1;
			END IF;
		END IF;
	END PROCESS;

	PROCESS (presentState)
		BEGIN
			CASE presentState is 	
				when IDLE => 		o_startBit <='0';	o_shiftRDTD <= '0'; o_loadRDTD <= '0'; o_loadRTD <= '0'; o_setRTDV <= '1'; compte <= '0';
				when DETECTED	=> o_startBit <='0'; o_shiftRDTD <= '0'; o_loadRDTD <= '0'; o_loadRTD <= '1'; o_setRTDV <= '0'; compte <= '0';
				when READY  =>		o_startBit <='0'; o_shiftRDTD <= '0'; o_loadRDTD <= '1'; o_loadRTD <= '0'; o_setRTDV <= '1'; compte <= '0';
				when START 	=>		o_startBit <='1'; o_shiftRDTD <= '0'; o_loadRDTD <= '0'; o_loadRTD <= '0'; o_setRTDV <= '1'; compte <= '0';
				when DATA 	=>  	o_startBit <='0'; o_shiftRDTD <= '1'; o_loadRDTD <= '0'; o_loadRTD <= '0'; o_setRTDV <= '1'; compte <= '1';
				when STOP 	=>  	o_startBit <='0'; o_shiftRDTD <= '0'; o_loadRDTD <= '0'; o_loadRTD <= '0'; o_setRTDV <= '0'; compte <= '0';
			END CASE;
		END PROCESS;
END ARCHITECTURE;
