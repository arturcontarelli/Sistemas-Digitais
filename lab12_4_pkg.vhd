
LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE lab12_4_pkg IS
    COMPONENT lab12_4_upcount IS
        PORT (
            R : IN INTEGER RANGE 0 TO 15;
            Clock, Resetn, L, E : IN STD_LOGIC;
            Q : BUFFER INTEGER RANGE 0 TO 15
        );
    END COMPONENT;
    
    COMPONENT lab12_4_bcd_to_7seg IS
        PORT (
            bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            seg : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
        );
    END COMPONENT;
    
    COMPONENT lab12_4_sw_to_int IS
        PORT (
            sw_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            int_out : OUT INTEGER RANGE 0 TO 15
        );
    END COMPONENT;
    
    COMPONENT lab12_4_int_to_bcd IS
        PORT (
            int_in : IN INTEGER RANGE 0 TO 15;
            bcd_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
        );
    END COMPONENT;
END PACKAGE lab12_4_pkg;