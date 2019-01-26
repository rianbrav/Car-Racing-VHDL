Library ieee;
Use ieee.std_logic_1164.all;

Entity puerta_not_7bits is
	Port (A : in std_logic_vector (1 to 7);
			F : out std_logic_vector (1 to 7));
End puerta_not_7bits;

Architecture Comportamiento of puerta_not_7bits is
Begin	
	F<=NOT(A);	
End Comportamiento;