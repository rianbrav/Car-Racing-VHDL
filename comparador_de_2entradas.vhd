library ieee;
use ieee.std_logic_1164.all;

entity comparador_de_2entradas is
	port ( A,B: in std_logic_vector(10 downto 0);
		 C,D,E: out std_logic);
end comparador_de_2entradas;

architecture sol of comparador_de_2entradas is
begin
	C <= '1' when (A>B) else '0';
	D <= '1' when (A=B) else '0';
	E <= '1' when (A<B) else '0';
end sol;
