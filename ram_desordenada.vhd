library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ram_desordenada is
	port(data: in std_logic_vector(10 downto 0);
	add: in std_logic_vector(3 downto 0);
	modo: in std_logic;
	q: out std_logic_vector(10 downto 0));
end ram_desordenada;
architecture sol of ram_desordenada is
signal r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15: std_logic_vector(10 downto 0);
begin
		process(modo,add,data,r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15)
			begin
				if modo='1' then --escritura
					case add is
						when "0000" => r0<=data;
						when "0001" => r1<=data;
						when "0010" => r2<=data;
						when "0011" => r3<=data;
						when "0100" => r4<=data;
						when "0101" => r5<=data;
						when "0110" => r6<=data;
						when "0111" => r7<=data;
						when "1000" => r8<=data;
						when "1001" => r9<=data;
						when "1010" => r10<=data;
						when "1011" => r11<=data;
						when "1100" => r12<=data;
						when "1101" => r13<=data;
						when "1110" => r14<=data;
						when "1111" => r15<=data;
					end case;
				else
					case add is
						when "0000" => q<=r0;
						when "0001" => q<=r1;
						when "0010" => q<=r2;
						when "0011" => q<=r3;
						when "0100" => q<=r4;
						when "0101" => q<=r5;
						when "0110" => q<=r6;
						when "0111" => q<=r7;
						when "1000" => q<=r8;
						when "1001" => q<=r9;
						when "1010" => q<=r10;
						when "1011" => q<=r11;
						when "1100" => q<=r12;
						when "1101" => q<=r13;
						when "1110" => q<=r14;
						when "1111" => q<=r15;
					end case;
				end if;
	end process;
end sol;
