LIBRARY ieee;
USE ieee.std_logic_1164.all;
--USE work.lab12_3_pkg.all;

PACKAGE lab12_3_pkg IS

    COMPONENT lab12_3_cont IS
        PORT (
            Clock, Resetn, E: IN  STD_LOGIC;
            Q               : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
        );
    END COMPONENT;
	 END PACKAGE lab12_3_pkg;