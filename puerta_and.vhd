LIBRARY IEEE;
USE ieee.std_logic_1164.all;

ENTITY puerta_and IS
	PORT (x : IN STD_LOGIC;
			y : IN STD_LOGIC;
			f : OUT STD_LOGIC);
END puerta_and;

ARCHITECTURE solve OF puerta_and IS
SIGNAL tmp : STD_LOGIC;
BEGIN
	tmp <= x and y; 
	f <= tmp;
END solve;
