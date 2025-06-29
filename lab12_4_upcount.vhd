
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lab12_4_upcount IS
    PORT (
        R : IN INTEGER RANGE 0 TO 15;
        Clock, Resetn, L, E : IN STD_LOGIC;
        Q : BUFFER INTEGER RANGE 0 TO 15
    );
END lab12_4_upcount;

ARCHITECTURE Behavior OF lab12_4_upcount IS
BEGIN
    PROCESS(Clock, Resetn)
    BEGIN
        IF Resetn = '0' THEN
            Q <= 0;
        ELSIF (Clock'EVENT AND Clock = '1') THEN
            IF L = '1' THEN
                Q <= R;  -- Carga paralela
            ELSIF E = '1' THEN
                IF Q = 15 THEN
                    Q <= 0;  -- Overflow: volta para 0
                ELSE
                    Q <= Q + 1;  -- Incrementa
                END IF;
            -- ELSE: Mantém valor atual quando E = '0'
            END IF;
        END IF;
    END PROCESS;
END Behavior;