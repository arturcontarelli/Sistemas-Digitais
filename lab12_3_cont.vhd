

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab12_3_cont IS
    PORT (
        Clock, Resetn, E : IN  STD_LOGIC;
        Q               : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END lab12_3_cont;

ARCHITECTURE Behavior OF lab12_3_cont IS
    SIGNAL Count : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
    PROCESS (Clock, Resetn)
    BEGIN
        IF Resetn = '0' THEN
            Count <= "0000";
        ELSIF (Clock'EVENT AND Clock = '1') THEN
            IF E = '1' THEN
                Count <= Count + 1;
            ELSE
                Count <= Count;
            END IF;
        END IF;
    END PROCESS;
    
    Q <= Count;
END Behavior;



