LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY contador_999 IS
	PORT(clock,enable,reset : IN STD_LOGIC;
		 disparo : OUT STD_LOGIC;
		 Q : Buffer STD_LOGIC_VECTOR (9 downto 0));
END contador_999;

ARCHITECTURE sol OF contador_999 IS
BEGIN

	PROCESS(clock,reset)
	BEGIN
		if reset='1' then Q<="0000000000";disparo<='0';
  		elsif (clock'event and clock='1') then
			if enable='1' then
				if (Q="1111100111") then Q<="0000000000";disparo<='1';
				else Q<=Q+1;disparo<='0';
				end if;
			end if;
		end if;
	END PROCESS;
END sol;
