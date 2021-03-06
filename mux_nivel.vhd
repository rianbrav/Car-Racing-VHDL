library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_nivel is
port (
		i0 : in std_logic_vector(3 downto 0);
		i1 : in std_logic_vector(3 downto 0);
		i2 : in std_logic_vector(3 downto 0);
		i3 : in std_logic_vector(3 downto 0);
		i4 : in std_logic_vector(3 downto 0);
		i5 : in std_logic_vector(3 downto 0);
		i6 : in std_logic_vector(3 downto 0);
		i7 : in std_logic_vector(3 downto 0);
     sel : in std_logic_vector(2 downto 0);
     nivel : out std_logic_vector(3 downto 0));
end mux_nivel;

architecture Behavioral of mux_nivel is
begin
	with sel select
		nivel   <= i0 when "000",
					  i1 when "001",
					  i2 when "010",
					  i3 when "011",
					  i4 when "100",
					  i5 when "101",
					  i6 when "110",
					  i7 when others;
end Behavioral;