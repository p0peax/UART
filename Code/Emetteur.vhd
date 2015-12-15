LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Emetteur IS
	PORT(
			i_resetBar				: IN	STD_LOGIC;
			--i_clock					: IN	STD_LOGIC;
			i_BClk 					: IN  STD_LOGIC;
			i_RTDV					: IN  STD_LOGIC;
			i_value					: IN 	STD_LOGIC_VECTOR (7 downto 0);
			o_RTDV					: OUT STD_LOGIC;
			o_TxD 					: OUT STD_LOGIC
			);
END Emetteur;

ARCHITECTURE basic OF Emetteur IS

	SIGNAL int_loadRTD, int_loadRDTD, int_RTDC, int_TxD, int_StartBit, int_shiftRTDT: STD_LOGIC;
	SIGNAL int_value, RTD_valueOut: STD_LOGIC_VECTOR(7 downto 0);

	COMPONENT eightBitRegister
		PORT(
			i_resetBar				: IN	STD_LOGIC;
			i_load					: IN	STD_LOGIC;
			i_clock					: IN	STD_LOGIC;
			i_Value					: IN	STD_LOGIC_VECTOR(7 downto 0);
			o_Value					: OUT	STD_LOGIC_VECTOR(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT eightBitShiftRegister_emetteur IS
		PORT(
			i_resetBar, i_load, i_shift: IN	STD_LOGIC;
			i_clock			: IN	STD_LOGIC;
			i_Value			: IN	STD_LOGIC;
			load_value		: IN 	STD_LOGIC_VECTOR (7 downto 0);
			o_Value			: OUT	STD_LOGIC;
			o_Values			: OUT STD_LOGIC_VECTOR (7 downto 0)
			);
	END COMPONENT;
		
	COMPONENT EmetteurControl
		PORT(
			i_resetBar				: IN	STD_LOGIC;
			i_clock					: IN	STD_LOGIC;
			i_BClk					: IN  STD_LOGIC;
			i_RTDV					: IN  STD_LOGIC;
			o_startbit			: OUT STD_LOGIC;
			o_shiftRDTD				: OUT STD_LOGIC;
			o_loadRDTD				: OUT STD_LOGIC;
			o_loadRTD				: OUT STD_LOGIC;
			o_setRTDV				: OUT STD_LOGIC
			);
	END COMPONENT;
	
BEGIN



	RTD: eightBitRegister
	Port map (i_resetBar => i_resetBar,
				i_load => int_loadRTD,
				i_clock => i_Bclk,
				i_Value => i_value,
				o_Value => RTD_valueOut);
				
	RDTD: eightBitShiftRegister_emetteur
	Port map (i_resetBar => i_resetBar,
				i_load => int_loadRDTD,
				i_shift => int_shiftRTDT,
				i_clock => i_Bclk,
				i_Value => '1',
				load_Value => RTD_valueOut,
				o_Value => int_TxD);
				
	control_emetteur : emetteurControl
	Port map (i_resetBar => i_resetBar,
				i_clock 		=> i_Bclk,
				i_BClk 		=> i_BClk,
				i_RTDV 		=> i_RTDV,
				o_startbit	=> int_StartBit,
				o_shiftRDTD => int_shiftRTDT,
				o_loadRDTD 	=> int_loadRDTD,
				o_loadRTD 	=> int_loadRTD,
				o_setRTDV 	=> o_RTDV);
	
	o_TxD <= int_TxD when int_startBit = '0' else '0';

	
END Basic;