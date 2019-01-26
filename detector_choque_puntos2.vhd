library ieee;
use ieee.std_logic_1164.all;

entity detector_choque_puntos2 is
	port ( patron_anodo, patron_catodo, pos_carro: in std_logic_vector(7 downto 0);
			 clk: in std_logic;
		    vida_menos: out std_logic);
end detector_choque_puntos2;

architecture sol of detector_choque_puntos2 is
begin
	process(patron_anodo, patron_catodo, pos_carro, clk)
	begin
		if (clk'event and clk = '1') and (patron_anodo = "00000001" and  pos_carro = patron_catodo) then
			vida_menos <= '1';
		else vida_menos <= '0';
		end if;
	end process;
end sol;