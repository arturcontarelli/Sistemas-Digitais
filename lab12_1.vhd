library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.lab12_1_pkg.all;

entity lab12_1 is
    port (
        SW  : in  STD_LOGIC_VECTOR(2 downto 0);  -- SW(0)=D0, SW(1)=D1, SW(2)=SEL
        KEY : in  STD_LOGIC_VECTOR (0 to 0);  -- KEY=Clock
        LEDR : out STD_LOGIC_VECTOR(2 downto 0)  -- LEDR(0)=Q, LEDR(1)=D1, LEDR(2)=SEL
    );
end lab12_1;

architecture Behavioral of lab12_1 is  
    signal mux_output : STD_LOGIC;
begin
    ffd: lab12_1_ffd
        port map (
            D0    => SW(0),
            D1    => SW(1),
            Sel   => SW(2),
            Clock => KEY(0),
            Q     => mux_output
        );
    

    LEDR(0) <= mux_output;  -- Saída Q do flip-flop
    LEDR(1) <= SW(1);       -- Mostra o estado de D1 no LED
    LEDR(2) <= SW(2);       -- Mostra o estado de SEL no LED
    
end Behavioral;