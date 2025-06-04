
LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE lab12_2_pkg IS
    COMPONENT muxdff
        PORT (
            D0, D1, Sel, Clock : IN STD_LOGIC;
            Q : OUT STD_LOGIC
        );
    END COMPONENT;
	 
	     COMPONENT lab12_2_shift
    PORT (
        R     : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
        L, w  : IN  STD_LOGIC;
        Clock : IN  STD_LOGIC;
        Q     : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
    END COMPONENT;
	
    
END PACKAGE lab12_2_pkg;

