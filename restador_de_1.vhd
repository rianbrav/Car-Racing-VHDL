library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity restador_de_1 is
	port(a,b: in std_logic_vector(3 downto 0);
		salida: out std_logic_vector(3 downto 0));
end restador_de_1;

architecture synth of restador_de_1 is
begin
	process(a,b) is
	begin
		salida <= std_logic_vector(unsigned(a)-unsigned(b));
	end process;
end synth;