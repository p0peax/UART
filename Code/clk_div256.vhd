library ieee;	
use ieee.std_logic_1164.all;

ENTITY clk_div256 IS
	PORT(
		i_clk : IN STD_LOGIC;
		o_div : OUT STD_LOGIC_VECTOR(7 downto 0)
		);
END ENTITY;

ARCHITECTURE rtl OF clk_div256 IS
	
	SIGNAL div : STD_LOGIC_VECTOR(7 downto 0);
	
	COMPONENT clk_div2 IS
		PORT(
			clk : 	IN STD_LOGIC;
			o_clk:	OUT STD_LOGIC
			);
	END COMPONENT;
		
		
	BEGIN
	
		div2: clk_div2
			PORT MAP(i_clk, div(0));
		div4: clk_div2
			port map(div(0), div(1));
		div8: clk_div2
			port map(div(1), div(2));
		div16: clk_div2
			port map(div(2), div(3));
		div32: clk_div2
			port map(div(3), div(4));
		div64: clk_div2
			port map(div(4), div(5));
		div128: clk_div2
			port map(div(5), div(6));
		div256: clk_div2
			port map(div(6), div(7));
			
	o_div <= div;
			
END ARCHITECTURE;