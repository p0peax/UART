LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY VitesseDeBaud IS
	PORT(
			i_resetBar				: IN	STD_LOGIC;
			i_clock					: IN	STD_LOGIC;
			i_SEL						: IN	STD_LOGIC_VECTOR(2 downto 0);
			o_BClkx8					: OUT	STD_LOGIC;
			o_BClk					: OUT	STD_LOGIC
	);
END VitesseDeBaud;

ARCHITECTURE basic OF VitesseDeBaud IS

	SIGNAL int_sortie41, int_sortieMux : STD_LOGIC;
	SIGNAL int_sortie256, int_sortie8: STD_LOGIC_VECTOR(7 downto 0);

COMPONENT clk_div41
		PORT(
		clock_25Mhz				: IN	STD_LOGIC;
		clock_614KHz			: OUT	STD_LOGIC
		);
	END COMPONENT;
	
	COMPONENT clk_div256
		PORT(
		i_clk : IN STD_LOGIC;
		o_div : OUT STD_LOGIC_VECTOR(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT eightToOneMux
		PORT (
			s: in std_logic_vector(2 downto 0);
			w: in std_logic_vector(7 downto 0);
			o: out std_logic
		);
	END COMPONENT;
	
	COMPONENT clk_div8
		PORT (
			i_clock				: IN	STD_LOGIC;
			o_clock				: OUT	STD_LOGIC
		);
	END COMPONENT;
	
BEGIN
	div41: clk_div41
	Port map(I_CLOCK, int_sortie41);
--int_sortie41 <= i_clock; --supprimer quand transferer a la carte
	div256: clk_div256
		Port map (int_sortie41, int_sortie256);
	
	mux: eightToOneMux
		Port map(i_sel, int_sortie256, int_sortieMux);
		
	div8: clk_div256
		Port map(int_sortieMux, int_sortie8);
	
	o_Bclk <= int_sortie8(2);
	o_BClkx8 <= int_sortieMux;
	
END Basic;
