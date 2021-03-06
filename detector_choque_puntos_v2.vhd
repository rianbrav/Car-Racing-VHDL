library ieee;
use ieee.std_logic_1164.all;

entity detector_choque_puntos_v2 is
	port (patron_anodo, patron_catodo, pos_carro: in std_logic_vector(7 downto 0);
			 mux_selector_matriz: in std_logic_vector(2 downto 0);
		    suma_puntos, vida_menos: out std_logic);
end detector_choque_puntos_v2;

architecture sol of detector_choque_puntos_v2 is
begin
	vida_menos <= '1' when (patron_anodo = "00000001") and (mux_selector_matriz /= "111") and (pos_carro = patron_catodo) else '0';
	suma_puntos <= '1' when (patron_anodo = "00000001") and (pos_carro /= patron_catodo) and (mux_selector_matriz /= "111") else '0';
end sol;