-- Ashreet Nagar 
-- Section 10 
-- Student number: 500969636
-- COE328 Digital Systems
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY ALU_3 IS
PORT( Clock: in std_logic;
		A,B: IN UNSIGNED(7 DOWNTO 0);
		student_id: IN UNSIGNED(3 DOWNTO 0);
		OP: IN UNSIGNED(15 DOWNTO 0);
		Result: OUT UNSIGNED(3 DOWNTO 0));
END ALU_3;
ARCHITECTURE calculation of ALU_3 is
begin
process(Clock,OP)
begin
	if(rising_edge(Clock)) THEN
		case OP is
			When OTHERS =>
				IF student_id(0) = '1' THEN
					Result <= "0001";
				ELSE
					Result <= "0000";
				END IF;
		end case;
	end if;
end process;
end calculation;