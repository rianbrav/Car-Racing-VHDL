library ieee;
use ieee.std_logic_1164.all;

entity detector_180 is
	port ( ciento_ochenta: in std_logic;
		    enable: out std_logic);
end detector_180;

architecture sol of detector_180 is
begin
	enable <= '1' when (ciento_ochenta = '1') else '0';
end sol;