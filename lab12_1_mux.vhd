LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lab12_1_mux IS
    PORT (
        D0, D1, Sel : IN STD_LOGIC;
        Q : OUT STD_LOGIC
    );
END lab12_1_mux;

ARCHITECTURE Behavior OF lab12_1_mux IS
BEGIN
    Q <= D0 WHEN Sel = '0' ELSE D1; 
END Behavior;