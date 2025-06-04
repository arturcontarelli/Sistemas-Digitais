library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE work.lab12_1_pkg.all;


entity lab12_1_ffd is
    PORT (
        D0, D1, Sel, Clock : IN STD_LOGIC;
        Q : OUT STD_LOGIC
    );
end lab12_1_ffd;

architecture Behavior of lab12_1_ffd is
    SIGNAL mux_output : STD_LOGIC;
begin

    mux2to1: lab12_1_mux PORT MAP (
        D0 => D0,
        D1 => D1,
        Sel => Sel,
        Q => mux_output
    );
	 
     PROCESS
    BEGIN
        WAIT UNTIL rising_edge(Clock);
        Q <= mux_output; 
    END PROCESS;
END Behavior;


