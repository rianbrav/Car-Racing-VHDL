LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY contador_60_seg IS
	PORT(clock,enable,reset : IN STD_LOGIC;
		 sesenta : OUT STD_LOGIC;
		 Q : Buffer STD_LOGIC_VECTOR (7 downto 0));
END contador_60_seg;

ARCHITECTURE sol OF contador_60_seg IS
BEGIN

	PROCESS(clock,reset)
	BEGIN
		if reset='1' then Q<="00000000";sesenta<='0';
  		elsif (clock'event and clock='1') then
			if enable='1' then
				if (Q="0111100") then Q<="00000000";sesenta<='1';
				else Q<=Q+1;sesenta<='0';
				end if;
			end if;
		end if;
	END PROCESS;
END sol;
