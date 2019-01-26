Library ieee;
Use ieee.std_logic_1164.all;
ENTITY registro_sostenimiento IS
	PORT(clock,reset,enable: IN STD_LOGIC;
		 Ent : IN STD_LOGIC_VECTOR(10 downto 0);
		 Q : OUT STD_LOGIC_VECTOR (10 downto 0));
END registro_sostenimiento;

ARCHITECTURE sol OF registro_sostenimiento IS
SIGNAL temp: STD_LOGIC_VECTOR(10 downto 0);
BEGIN
	PROCESS(clock,reset)
	BEGIN
		if reset='1' then temp<="00000000000";
		elsif (clock'event and clock='1') then
			if(enable='1') then 
				temp<=Ent;
			end if;
		end if;
	end process;
	Q<=temp;
END sol;
