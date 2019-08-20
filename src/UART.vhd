LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY UART IS
	port (
		i_clock		: IN STD_LOGIC;
		i_resetBar	: IN STD_LOGIC;
		i_donnees	: IN STD_LOGIC_VECTOR (7 downto 0);--depuis le bus
		i_SEL			: IN STD_LOGIC_VECTOR (2 downto 0);
		i_RxD			: IN STD_LOGIC;
		o_sortie		: OUT STD_LOGIC_VECTOR (7 downto 0);--vers le bus
		o_TxD			: OUT STD_LOGIC
	);
END UART;

ARCHITECTURE Basic OF UART IS
	
	SIGNAL	int_RTDV, int_RRDP, int_PIT, int_PIR, int_ED, int_EE, int_BClk, int_BClkx8, int_TxD, int_Load : STD_LOGIC;
	SIGNAL 	v_RTDV, v_RRDP : STD_LOGIC;
	SIGNAL	int_sortie : STD_LOGIC_VECTOR (7 downto 0);

	COMPONENT Recepteur
		PORT(
			i_resetBar				: IN	STD_LOGIC;
			i_RxD						: IN	STD_LOGIC;
			i_RRDP					: IN  STD_LOGIC;
			i_BClkx8					: IN  STD_LOGIC;
			o_RRDP					: OUT  STD_LOGIC;
			o_Value					: OUT	STD_LOGIC_VECTOR(7 downto 0)
		);
	END COMPONENT;
	COMPONENT Emetteur
		PORT(
			i_resetBar				: IN	STD_LOGIC;
			i_BClk 					: IN  STD_LOGIC;
			i_RTDV					: IN  STD_LOGIC;
			i_value					: IN 	STD_LOGIC_VECTOR (7 downto 0);
			o_RTDV					: OUT STD_LOGIC;
			o_TxD 					: OUT STD_LOGIC
		);
	END COMPONENT;

	COMPONENT VitesseDeBaud
		PORT(
			i_resetBar				: IN	STD_LOGIC;
			i_clock					: IN	STD_LOGIC;
			i_SEL						: IN	STD_LOGIC_VECTOR(2 downto 0);
			o_BClkx8					: OUT	STD_LOGIC;
			o_BClk					: OUT	STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT enArdFF_2 
		PORT(
		i_resetBar	: IN	STD_LOGIC;
		i_d		: IN	STD_LOGIC;
		i_enable	: IN	STD_LOGIC;
		i_clock		: IN	STD_LOGIC;
		o_q	: OUT	STD_LOGIC);
	END COMPONENT;
	
BEGIN

	RTDV: enArdFF_2
		port map(i_resetBar, int_RTDV, '1', i_clock, v_RTDV);
		
	RRDP : enArdFF_2
		port map(i_resetBar, int_RRDP, '1', i_clock, v_RRDP);

	emetteur1: Emetteur
		Port map (i_resetBar => i_resetBar,
					i_BClk => int_BClk,
					i_Value => i_donnees,
					i_RTDV => v_RTDV,
					o_RTDV => int_RTDV,
					o_TxD => int_TxD);
					
	recepteur1: Recepteur
		Port map (i_resetBar => i_resetBar,
					i_RxD => i_RxD,
					i_RRDP => v_RRDP,
					i_BClkx8 => int_BClkx8,
					o_RRDP => int_RRDP,
					o_Value => int_sortie);
					
	vitesseDeBaud1: VitesseDeBaud
		Port map (i_resetBar => i_resetBar,
					i_clock => i_clock,
					i_SEL => i_SEL,
					o_BClkx8 => int_BClkx8,
					o_BClk => int_BClk);
					
	o_sortie <= int_sortie;
	o_TxD	<= int_TxD;
	
END Basic;
	
	
	
	