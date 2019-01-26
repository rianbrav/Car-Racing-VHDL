library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY sum_v2 IS
	PORT (a : IN std_logic_vector(10 DOWNTO 0); 
         b : IN std_logic_vector(10 DOWNTO 0);
			clk: IN std_logic;
			reset: IN std_logic;
         salida : OUT std_logic_vector(10 DOWNTO 0));
     END sum_v2;

ARCHITECTURE synth OF sum_v2 IS
BEGIN
	PROCESS (clk, reset, a) IS
   BEGIN
		if reset = '1' then 
			salida <= "00000000000";
		elsif (clk'event and clk = '1') then 
			salida <= a + b ;
		end if;
   END PROCESS;
END synth;