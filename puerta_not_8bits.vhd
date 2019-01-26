Library ieee;
Use ieee.std_logic_1164.all;

Entity puerta_not_8bits is
	Port (A : in std_logic_vector (7 downto 0);
			F : out std_logic_vector (7 downto 0));
End puerta_not_8bits;

Architecture Comportamiento of puerta_not_8bits is
Begin	
	F<=NOT(A);	
End Comportamiento;
