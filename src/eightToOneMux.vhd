LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity eightToOneMux is 
	port (
		s: in std_logic_vector(2 downto 0);
		w: in std_logic_vector(7 downto 0);
		o: out std_logic
		);
end eightToOneMux;

architecture basic of eightToOneMux is
begin

o <= 	
		w(6) when s="110" else
		w(5) when s="101" else
		w(4) when s="100" else
		w(3) when s="011" else
		w(2)  when s="010" else
		w(1)when s="001" else
		w(0) when s = "000" else
		w(7);


end basic;
