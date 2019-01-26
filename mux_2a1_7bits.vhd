library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2a1_7bits is
port (
      i1 : in std_logic_vector(1 to 7);
		i2 : in std_logic_vector(1 to 7);
     sel : in std_logic;
     arrayout : out std_logic_vector(1 to 7));
end mux_2a1_7bits;

architecture Behavioral of mux_2a1_7bits is
begin
	with sel select
		arrayout <= i1 when '0',
						i2 when others;
end Behavioral;