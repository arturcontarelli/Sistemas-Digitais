--USE work.lab12_1_pkg.all;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE lab12_1_pkg IS
    COMPONENT lab12_1_mux
        PORT (
            D0, D1, Sel : IN STD_LOGIC;
            Q : OUT STD_LOGIC
        );
    END COMPONENT;
	 
	 COMPONENT lab12_1_ffd
		PORT (
        D0, D1, Sel, Clock : IN STD_LOGIC;
        Q : OUT STD_LOGIC
    );
	 END COMPONENT;
    
END PACKAGE lab12_1_pkg;

