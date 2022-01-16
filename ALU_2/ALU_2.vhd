-- Ashreet Nagar 
-- Section 10 
-- Student number: 500969636
-- COE328 Digital Systems
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;
ENTITY ALU_2 is
port ( Clock: in std_logic;
		A,B: IN UNSIGNED(7 DOWNTO 0);
		student_id: IN UNSIGNED(3 DOWNTO 0);
		OP: IN UNSIGNED(15 DOWNTO 0);
		NEG: OUT STD_logic;
		R1: OUT UNSIGNED(3 DOWNTO 0);
		R2: OUT UNSIGNED(3 DOWNTO 0));
end ALU_2;
Architecture calculation of ALU_2 is 
Signal Reg1,Reg2,Result: unsigned (7 downto 0):=(others => '0');
Signal Reg4: unsigned(0 to 7);
Begin
Reg1 <= A;
Reg2 <= B;
Process(Clock, OP)
Begin
        if(rising_edge(Clock)) THEN
            case OP is
                When "0000000000000001" => 
						IF (Reg1 > Reg2)THEN
							Result <= (Reg1 - Reg2);
							NEG <= '0';
						ELSE
							Result <= (Reg2 - Reg1);
							NEG <= '1';
						END IF;
                When "0000000000000010" => Result <= (NOT Reg2) + "0001";
                When "0000000000000100" => 
                    Result(7) <= Reg1(7);
                    Result(6) <= Reg1(6);
                    Result(5) <= Reg1(5);
                    Result(4) <= Reg1(4);
                    Result(3) <= Reg2(3);
                    Result(2) <= Reg2(2);
                    Result(1) <= Reg2(1);
                    Result(0) <= Reg2(0);
                When "0000000000001000" => Result <= null;
                When "0000000000010000" => Result <= Reg2 - "0101";
                When "0000000000100000" => 
                    Result(7) <= Reg1(0);
                    Result(6) <= Reg1(1);
                    Result(5) <= Reg1(2);
                    Result(4) <= Reg1(3);
                    Result(3) <= Reg1(4);
                    Result(2) <= Reg1(5);
                    Result(1) <= Reg1(6);
                    Result(0) <= Reg1(7);
                When "0000000001000000" => Result <= Reg2 sll 3;
                    Result(2) <= '1';
                    Result(1) <= '1';
                    Result(0) <= '1';
                When "0000000010000000" => Result <= Reg1 + "0011";
                When "0000000100000000" => Result <= NOT Reg2;
                When OTHERS =>
            end case;
        end if;
end process;
R1 <= Result (3 downto 0);
R2 <= Result (7 downto 4);
end calculation;