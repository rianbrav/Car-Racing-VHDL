library ieee;
use ieee.std_logic_1164.all;

entity detector_choque_puntos_v5 is
	port ( patron_anodo, patron_catodo, pos_carro: in std_logic_vector(7 downto 0);
		    suma_puntos, vida_menos: out std_logic);
end detector_choque_puntos_v5;

architecture sol of detector_choque_puntos_v5 is
begin
	vida_menos <= '1' when ((patron_anodo = "00000001") and (pos_carro = patron_catodo)) else '0';
	suma_puntos <= '1' when (((patron_anodo = "00000001") and (pos_carro /= patron_catodo))  and ((patron_catodo /= "11111111") and (patron_catodo /= "10011111") and (patron_catodo /= "11001111") and (patron_catodo /= "11100111")  and (patron_catodo /= "11110011") and (patron_catodo /= "11111001") and (patron_catodo /= "11111100") and (patron_catodo /= "10001111") and (patron_catodo /= "11000111") and (patron_catodo /= "11100011") and (patron_catodo /= "11110001") and (patron_catodo /= "11111000") and (patron_catodo /= "10000111") and (patron_catodo /= "11000011") and (patron_catodo /= "11100001") and (patron_catodo /= "11110000") and (patron_catodo /= "10000011") and (patron_catodo /= "11000001") and (patron_catodo /= "11100000") and (patron_catodo /= "10000001") and (patron_catodo /= "11000000"))) else '0';
end sol;


