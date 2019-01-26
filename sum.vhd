library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY sum IS
	PORT (a: IN std_logic_vector(10 DOWNTO 0);
			nivel: IN std_logic_vector(3 DOWNTO 0);
         salida : buffer std_logic_vector(10 DOWNTO 0));
END sum;

ARCHITECTURE synth OF sum IS
BEGIN
	process(a,nivel)
	begin
		case nivel is
			when "0000" => salida <= "00000000000";
			when "0001" => salida <= a;
			when "0010" => salida <= a + "00000000101";
			when "0011" => salida <= a + "00000001010";
			when "0100" => salida <= "00000000000";
			when "0101" => salida <= "00000000000";
			when "0110" => salida <= "00000000000";
			when "0111" => salida <= "00000000000";
			when "1000" => salida <= "00000000000";
			when "1001" => salida <= "00000000000";
			when "1010" => salida <= "00000000000";
			when "1011" => salida <= "00000000000";
			when "1100" => salida <= "00000000000";
			when "1101" => salida <= "00000000000";
			when "1110" => salida <= "00000000000";
			when "1111" => salida <= "00000000000";
		end case;
	end process;
END synth;