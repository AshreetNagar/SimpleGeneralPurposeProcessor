-- Ashreet Nagar 
-- Section 10 
-- Student number: 500969636
-- COE328 Digital Systems
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY ALU_1 IS
PORT( Clock: in std_logic;
		A,B: IN UNSIGNED(7 DOWNTO 0);
		student_id: IN UNSIGNED(3 DOWNTO 0);
		OP: IN UNSIGNED(15 DOWNTO 0);
		NEG: OUT STD_logic;
		R1: OUT UNSIGNED(3 DOWNTO 0);
		R2: OUT UNSIGNED(3 DOWNTO 0));
END ALU_1;
ARCHITECTURE calculation of ALU_1 is
signal Reg1,Reg2,Result: unsigned(7 downto 0):=(others=>'0');
signal Reg4:unsigned(0 to 7);
begin
Reg1 <= A;
Reg2 <= B;
process(Clock,OP)
begin
	if(rising_edge(Clock)) THEN
		case OP is
			When "0000000000000001"=>
				NEG <= '0';
				Result <= Reg1 + Reg2;
			When "0000000000000010"=>
				NEG <= '0';
				Result <= Reg1 - Reg2;
					IF Reg2 > Reg1 THEN
						NEG <= '1';
						Result <= not(Reg1 - Reg2)+1;
					END IF;
			When "0000000000000100"=>
				NEG <= '0';
				Result <= NOT(Reg1);
			When "0000000000001000"=>
				NEG <= '0';
				Result <= Reg1 NAND Reg2;
			When "0000000000010000"=>
				NEG <= '0';
				Result <= Reg1 NOR Reg2;
			When "0000000000100000"=>
				NEG <= '0';
				Result <= Reg1 AND Reg2;
			When "0000000001000000"=>
				NEG <= '0';
				Result <= Reg1 XOR Reg2;
			When "0000000010000000"=>
				NEG <= '0';
				Result <= Reg1 OR Reg2;
			When "0000000100000000"=>
				NEG <= '0';
				Result <= Reg1 XNOR Reg2;
			When OTHERS =>
		end case;
	end if;
end process;
R1<= Result(3 downto 0);
R2<= Result(7 downto 4);
end calculation;