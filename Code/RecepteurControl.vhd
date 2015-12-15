library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY RecepteurControl IS
		PORT(
			i_resetBar				: IN	STD_LOGIC;
			i_clock					: IN	STD_LOGIC;
			i_RxD						: IN	STD_LOGIC;
			--i_EE						: IN  STD_LOGIC;
			--i_ED						: IN  STD_LOGIC;
			i_RRDP					: IN  STD_LOGIC;
			i_BClkx8					: IN  STD_LOGIC;
			--o_EE						: OUT STD_LOGIC;
			--o_ED						: OUT STD_LOGIC;
			o_RRDP					: OUT STD_LOGIC;
			o_loadRDRD				: OUT STD_LOGIC;
			o_loadRRD				: OUT STD_LOGIC);
END RecepteurControl;

ARCHITECTURE basic OF RecepteurControl IS
	
	
TYPE state_type IS (IDLE, START, DATA, PAUSE, SAVE);
SIGNAL presentState, nextState: state_type;
SIGNAL inc_compte4, inc_compte8, inc_RDRD : STD_LOGIC;
SIGNAL compte8: STD_LOGIC_VECTOR	(2 downto 0);
SIGNAL compte4: STD_LOGIC_VECTOR (1 downto 0);
SIGNAL RDRD_compteur : STD_LOGIC_VECTOR(3 downto 0);
BEGIN
	PROCESS(presentState, i_RxD, compte8, compte4, RDRD_compteur, i_RRDP)
	BEGIN
		CASE presentState IS
			WHEN IDLE 		=>	IF i_RxD = '0' THEN
										nextState <= START;
									ELSE 
										nextState <= IDLE;
									END IF;
									
			WHEN START		=> IF compte4 = "11" THEN
										nextState <= PAUSE;
									ELSE
										nextState <= START;
									END IF;
									
			WHEN DATA		=>		nextState <= PAUSE;
									
								
			WHEN PAUSE  	=> IF RDRD_compteur = "1000" AND compte8  = "111" THEN
										nextState <= SAVE;
									ELSIF compte8 = "111" THEN
										nextState <= Data;
									ELSE
										nextState <= PAUSE;
									END IF;
									
			WHEN SAVE      => nextState <= IDLE;
		END CASE;
	END PROCESS;
	
	PROCESS (i_BclkX8, i_resetbar)
	BEGIN
		IF (i_resetbar ='0') THEN
			presentState <= state_type'LEFT; -- or A
		ELSIF (i_bclkx8'EVENT AND i_bclkx8 = '1') THEN
			presentState <= nextState;
		END IF;
	END PROCESS;
	
	PROCESS(i_resetbar, i_BClkx8, inc_compte4, compte4)
		BEGIN
			IF(i_resetBar = '0' OR inc_compte4 = '0') THEN
				compte4 <= "00";
			ELSIF (i_BClkx8'EVENT AND i_BClkx8 = '1') THEN
				compte4 <= compte4 +1;
			END IF;
	END PROCESS;
	
	PROCESS(i_resetbar, i_BClkx8, inc_compte8, compte8)
		BEGIN
			IF(i_resetBar = '0' OR inc_compte8 = '0') THEN
				compte8 <= "001";
			ELSIF (i_BClkx8'EVENT AND i_BClkx8 = '1') THEN
				compte8 <= compte8 +1;
			END IF;
	END PROCESS;
	
	
	
	process(i_resetBar, inc_RDRD, i_BClkx8)
		BEGIN
			IF i_resetBar = '0' THEN
				RDRD_compteur <= "0000";		
			ELSIF (i_BClkx8'EVENT AND i_BClkx8 = '1' and inc_RDRD = '1' )THEN
				IF inc_RDRD = '1' THEN
					IF RDRD_compteur = "1000" THEN
						RDRD_compteur <="0000";
					ELSE
						RDRD_compteur <= RDRD_compteur + 1;
					END IF;
				END IF;
			END IF;
		END PROCESS;
				

	PROCESS (presentState)
		BEGIN
			CASE presentState is 	
				when IDLE	=> o_loadRDRD <= '0'; o_loadRRD <= '0'; o_RRDP <= '0';inc_compte4 <= '0'; inc_compte8 <= '0'; inc_RDRD <= '0';
				when START  => o_loadRDRD <= '0'; o_loadRRD <= '0'; o_RRDP <= '0';inc_compte4 <= '1'; inc_compte8 <= '0'; inc_RDRD <= '0';
				when DATA 	=> o_loadRDRD <= '1'; o_loadRRD <= '0'; o_RRDP <= '0';inc_compte4 <= '0'; inc_compte8 <= '0'; inc_RDRD <= '1';
				when PAUSE  => o_loadRDRD <= '0'; o_loadRRD <= '0'; o_RRDP <= '0';inc_compte4 <= '0'; inc_compte8 <= '1'; inc_RDRD <= '0';
				when SAVE 	=> o_loadRDRD <= '0'; o_loadRRD <= '1'; o_RRDP <= '1';inc_compte4 <= '0'; inc_compte8 <= '0'; inc_RDRD <= '1';
			END CASE;
		END PROCESS;
END ARCHITECTURE;