library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_selec_frec_cnt_nivel is
port (
		i0 : in std_logic;
      i1 : in std_logic;
     sel : in std_logic;
     frecout : out std_logic);
end mux_selec_frec_cnt_nivel;

architecture Behavioral of mux_selec_frec_cnt_nivel is
begin
	with sel select
		frecout <= i0 when '0',
					  i1 when others;
end Behavioral;