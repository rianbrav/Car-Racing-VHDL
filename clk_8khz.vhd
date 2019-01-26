LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY clk_8khz IS 
PORT (
        Clk50Mhz: IN STD_LOGIC;
        Clk: OUT STD_LOGIC
        );
END clk_8khz;

ARCHITECTURE rtl OF clk_8khz IS
    CONSTANT max: INTEGER := 6250;
    CONSTANT half: INTEGER := max/2;
    SIGNAL count: INTEGER RANGE 0 TO max;
   
BEGIN
    PROCESS
    BEGIN
        WAIT UNTIL Clk50Mhz'EVENT and Clk50Mhz = '1';
        IF 
            count < max THEN count <= count + 1;
            ELSE count <= 0;
        END IF;
       
        IF 
            count < half THEN Clk <= '0';
            ELSE Clk <= '1';
        END IF;
    END PROCESS;
END rtl;