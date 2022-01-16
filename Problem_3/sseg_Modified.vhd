LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY sseg_Modified IS
    PORT (    bcd       : IN        STD_LOGIC_VECTOR(3 DOWNTO 0) ;
              leds      : OUT       STD_LOGIC_VECTOR(0 TO 6));
END sseg_Modified ;

ARCHITECTURE Behavior OF sseg_Modified IS
BEGIN
    PROCESS ( bcd )
    BEGIN
        CASE bcd IS                 --abcdefg
        when "0000" => leds <= "0010101"; --0
        WHEN "0001"    => leds <= "0111011"; --1
        WHEN OTHERS    => leds <= "-------";
        END CASE ;
    END PROCESS ;
END Behavior ;