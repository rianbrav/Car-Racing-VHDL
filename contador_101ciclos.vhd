LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY contador_101ciclos IS
	PORT(clock,enable,reset : IN STD_LOGIC;
		 ciento_uno: OUT STD_LOGIC;
		 Q : Buffer STD_LOGIC_VECTOR (6 downto 0));
END contador_101ciclos;

ARCHITECTURE sol OF contador_101ciclos IS
BEGIN

	PROCESS(clock,reset)
	BEGIN
		if reset='1' then Q<="0000000";ciento_uno<='0';
  		elsif (clock'event and clock='1') then
			if enable='1' then
				if (Q="1100101") then Q<="0000000";ciento_uno<='1';
				else Q<=Q+1;ciento_uno<='0';
				end if;
			end if;
		end if;
	END PROCESS;
END sol;
