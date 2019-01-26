library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity contador_puntos_11bits_v3 is
    PORT (
        clk    : IN  STD_LOGIC;
		  clk2   : IN  STD_LOGIC;
        areset : IN  STD_LOGIC;
        aload  : IN  STD_LOGIC;
		  enable_cnt: IN STD_LOGIC;
        data   : IN  STD_LOGIC_VECTOR(10 DOWNTO 0);
		  enable_2: IN STD_LOGIC;
        cnt_out: OUT STD_LOGIC_VECTOR(10 DOWNTO 0)
    );
end contador_puntos_11bits_v3;
 
architecture Behavioral of contador_puntos_11bits_v3 is
    -- Señal temporal para el contador.
    signal cnt_tmp: STD_LOGIC_VECTOR(10 DOWNTO 0) := "00000000000";
begin
    proceso_contador: process (aload, areset, clk, clk2, data, enable_cnt, enable_2) begin
        if areset = '1' then
            cnt_tmp <= "00000000000";
        elsif aload = '1' then
            cnt_tmp <= data;
        elsif rising_edge(clk) and enable_cnt = '1' then
            cnt_tmp <= cnt_tmp + "00000000011";
		  elsif rising_edge(clk2) and enable_2 = '1' then
		      cnt_tmp <= cnt_tmp + "00000000101";
        end if;
    end process;
 
    cnt_out <= cnt_tmp;
end Behavioral;