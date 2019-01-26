library ieee;
use ieee.std_logic_1164.all;

entity detector_choque_puntos_v3 is
	port (patron_anodo, patron_catodo, pos_carro: in std_logic_vector(7 downto 0);
			reset, clk: in std_logic;
		   suma_puntos, vida_menos: out std_logic);
end detector_choque_puntos_v3;

architecture sol of detector_choque_puntos_v3 is
begin
	process(reset,clk,patron_anodo,patron_catodo,pos_carro)
	begin
		if reset = '1' then suma_puntos <= '0'; vida_menos <= '0';
		elsif clk'event and clk = '1' then
			if patron_anodo = "00000001" and patron_catodo = pos_carro then vida_menos <= '1';
			elsif patron_anodo = "00000001" and patron_catodo /= pos_carro then suma_puntos <= '1';
			else suma_puntos <= '0'; vida_menos <= '0';
			end if;
		end if;
	end process;
end sol;
