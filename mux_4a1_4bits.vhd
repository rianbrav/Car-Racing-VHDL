library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4a1_4bits is
port (
      i1 : in std_logic_vector(3 downto 0);
		i2 : in std_logic_vector(3 downto 0);
		i3 : in std_logic_vector(3 downto 0);
		i4 : in std_logic_vector(3 downto 0);
     sel : in std_logic_vector(1 downto 0);
     arrayout : out std_logic_vector(3 downto 0));
end mux_4a1_4bits;

architecture Behavioral of mux_4a1_4bits is
begin
	with sel select
		arrayout <= i1 when "00",
						i2 when "01",
						i3 when "10",
						i4 when others;
end Behavioral;