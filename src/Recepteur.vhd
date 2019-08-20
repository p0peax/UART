LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Recepteur IS
		PORT(
			i_resetBar				: IN	STD_LOGIC;
		--	i_clock					: IN	STD_LOGIC;
			i_RxD						: IN	STD_LOGIC;
		--	i_EE						: IN  STD_LOGIC;
		--	i_ED						: IN  STD_LOGIC;
			i_RRDP					: IN  STD_LOGIC;
			i_BClkx8					: IN  STD_LOGIC;
		--	o_EE						: OUT  STD_LOGIC;
		--	o_ED						: OUT  STD_LOGIC;
			o_RRDP					: OUT  STD_LOGIC;
			o_Value					: OUT	STD_LOGIC_VECTOR(7 downto 0)
		);
END Recepteur;

ARCHITECTURE basic OF Recepteur IS

	SIGNAL int_loadRRD, int_loadRDRD, int_RRDP : STD_LOGIC; --, int_ED, int_EE
	SIGNAL int_value, int_valueOut : STD_LOGIC_VECTOR (7 downto 0);

	COMPONENT eightBitRegister
		PORT(
			i_resetBar, i_load	: IN	STD_LOGIC;
			i_clock					: IN	STD_LOGIC;
			i_Value					: IN	STD_LOGIC_VECTOR(7 downto 0);
			o_Value					: OUT	STD_LOGIC_VECTOR(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT eightBitShiftRegister
		PORT(
			i_resetBar, i_load	: IN	STD_LOGIC;
			i_clock					: IN	STD_LOGIC;
			i_Value					: IN  STD_LOGIC;
			o_Value					: OUT	STD_LOGIC_VECTOR(7 downto 0)
		);
	END COMPONENT;
		
	COMPONENT RecepteurControl
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
			o_loadRRD				: OUT STD_LOGIC
		);
	END COMPONENT;
	
BEGIN
	RRD: eightBitRegister
	Port map (i_resetBar => i_resetBar,
				i_load => int_loadRRD,
				i_clock => i_BClkx8,
				i_Value => int_value,
				o_Value => int_valueOut);
				
	RDRD: eightBitShiftRegister
	Port map (i_resetBar => i_resetBar,
				i_load => int_loadRDRD,
				i_clock => i_BCLkx8,
				i_Value => i_RxD,
				o_Value => int_value);
				
	ControleurRecepteur: RecepteurControl
	Port map (i_resetBar => i_resetBar,
				i_clock => i_BClkx8,
				i_RxD => i_RxD,
			--	i_EE => i_EE,
			--	i_ED => i_ED,
				i_RRDP => i_RRDP,
				i_BClkx8 => i_BClkx8,
			--	o_EE => int_EE,
			--	o_ED => int_ED,
				o_RRDP => int_RRDP,
				o_loadRDRD => int_loadRDRD,
				o_loadRRD => int_loadRRD);
	
	--o_EE <= int_EE;
	--o_ED <= int_ED;
	o_RRDP <= int_RRDP;
	o_Value <= int_valueOut;
	
END Basic;
	