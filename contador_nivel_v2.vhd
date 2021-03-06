library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity contador_nivel_v2 is
    PORT (
		  clk: IN STD_LOGIC;
        areset : IN  STD_LOGIC;
        aload  : IN  STD_LOGIC;
		  enable_cnt: IN STD_LOGIC;
		  enable_cnt_2: IN STD_LOGIC;
        data   : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        cnt_out: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
end contador_nivel_v2;
 
architecture Behavioral of contador_nivel_v2 is
    -- Señal temporal para el contador.
    signal cnt_tmp: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
begin
    proceso_contador: process (aload, clk, areset, data, enable_cnt) begin
		  if areset = '1' then
            cnt_tmp <= "0000";
        elsif aload = '1' then
            cnt_tmp <= data;
        elsif rising_edge(clk) and enable_cnt = '1' then
            cnt_tmp <= cnt_tmp + 1;
		  elsif rising_edge(clk) and enable_cnt_2 = '1' then
				cnt_tmp <= cnt_tmp + 1;
        end if;
    end process;
 
    cnt_out <= cnt_tmp;
end Behavioral;