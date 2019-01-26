LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY decodificador_de_3a8 IS
	PORT(	w	:IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			En	:IN STD_LOGIC;
			y	:OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END decodificador_de_3a8;

ARCHITECTURE Behavior of decodificador_de_3a8 IS
SIGNAL Enw: STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	Enw <=En&w;
	WITH Enw SELECT
		y<= "10000000" WHEN "1000",
			"01000000" WHEN "1001",
			"00100000" WHEN "1010",
			"00010000" WHEN "1011",
			"00001000" WHEN "1100",
			"00000100" WHEN "1101",
			"00000010" WHEN "1110",
			"00000001" WHEN "1111",
			"00000000" WHEN OTHERS;
END Behavior;
