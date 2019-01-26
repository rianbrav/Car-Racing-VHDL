library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity contador_up is
    PORT (
        clk    : IN  STD_LOGIC;
        areset : IN  STD_LOGIC;
        aload  : IN  STD_LOGIC;
		  enable_cnt: IN STD_LOGIC;
        data   : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
        cnt_out: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
end contador_up;
 
architecture Behavioral of contador_up is
    -- Señal temporal para el contador.
	signal cnt_tmp: STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";
begin
    proceso_contador: process (aload, areset, clk, data, enable_cnt) begin
        if areset = '1' then
            cnt_tmp <= "00000000";
        elsif aload = '1' then
            cnt_tmp <= data;
        elsif rising_edge(clk) and enable_cnt = '1' then
            cnt_tmp <= cnt_tmp + 1;
        end if;
    end process;
 
    cnt_out <= cnt_tmp;
end Behavioral;