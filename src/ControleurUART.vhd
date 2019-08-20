LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY ControleurUART IS
		PORT(
			i_resetBar				: IN	STD_LOGIC;
			i_clock					: IN	STD_LOGIC;
			MSC_MAX, SSC_MAX		: IN  STD_LOGIC_VECTOR(3 downto 0);
			SSCS						: IN STD_LOGIC;
		--	i_Feu						: IN STD_LOGIC_VECTOR(7 downto 0);
			selBaud					: IN STD_LOGIC_VECTOR(2 downto 0);
			MSTL, SSTL				: OUT STD_LOGIC_VECTOR(2 downto 0);
			BCD1, BCD2				: OUT STD_LOGIC_VECTOR(6 downto 0);
			o_sortie					: OUT STD_LOGIC_VECTOR(7 downto 0)
			
		);
END ControleurUART;

ARCHITECTURE basic 	OF ControleurUART IS

SIGNAL IO : STD_LOGIC;
SIGNAL int_MSTL, int_SSTL : STD_LOGIC_VECTOR(2 downto 0);
SIGNAL i_UART: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL hg: STD_LOGIC;
	COMPONENT UART IS
	PORT(
		i_clock		: IN STD_LOGIC;
		i_resetBar	: IN STD_LOGIC;
		i_donnees	: IN STD_LOGIC_VECTOR (7 downto 0);--depuis le bus
		i_SEL			: IN STD_LOGIC_VECTOR (2 downto 0);
		i_RxD			: IN STD_LOGIC;
		o_sortie		: OUT STD_LOGIC_VECTOR (7 downto 0);--vers le bus
		o_TxD			: OUT STD_LOGIC
	);
	END COMPONENT;
	
	COMPONENT LAB3 IS
		PORT(
		horlogeG, resetG 	: IN STD_LOGIC;
		MSC_MAX, SSC_MAX 			: IN STD_LOGIC_VECTOR(3 downto 0);
		SSCS					: IN STD_LOGIC;
		MSTL, SSTL			: OUT STD_LOGIC_VECTOR (2 downto 0);
		BCD1, BCD2			: OUT STD_LOGIC_VECTOR (6 downto 0)
		);
	END COMPONENT;
	
	BEGIN
--	UART1 : UART
--		PORT MAP(I_CLOCK, i_resetBar, i_Feu, selBaud, IO, o_sortie, IO);
	
	i_UART <= INT_MSTL & INT_SSTL & "00";
	SSTL <= int_SSTL;
	MSTL <= int_MSTL;
	
	
	LAB3ENT: LAB3
		port map(i_clock, i_resetBar, MSC_MAX, SSC_MAX, SSCS, int_MSTL, int_SSTL, BCD1, BCD2);
	
	UART1 : UART
	port map (i_clock, i_resetBar, i_UART,selBaud,IO, o_sortie, IO);
	
END ARCHITECTURE;
	
