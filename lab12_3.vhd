LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.lab12_3_pkg.all;

ENTITY lab12_3 IS
    PORT (
        KEY : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);  -- KEY(0)=Clock, KEY(1)=Resetn
        SW  : IN  STD_LOGIC_VECTOR(5 DOWNTO 0);  -- SW(0)=E
        HEX0: OUT STD_LOGIC_VECTOR(0 TO 6)		-- Display 7 segmentos (ativo baixo)
    );
END lab12_3;

ARCHITECTURE Behavior OF lab12_3 IS


    SIGNAL Q_internal : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
    -- Instância do componente upcount
    counter: lab12_3_cont
    PORT MAP (
        Clock  => KEY(0),   -- Clock conectado a KEY(0)
        Resetn => KEY(1),   -- Resetn conectado a KEY(1) (ativo baixo)
        E      => SW(0),    -- Enable conectado a SW(0)
        Q      => Q_internal
    );

    -- Decodificador para display de 7 segmentos (HEX0)
    WITH Q_internal SELECT
    HEX0 <= "0000001" WHEN "0000",  
            "1001111" WHEN "0001",  
            "0010010" WHEN "0010",  
            "0000110" WHEN "0011",  
            "1001100" WHEN "0100",  
            "0100100" WHEN "0101",  -- 5
            "0100000" WHEN "0110",  -- 6
            "0001111" WHEN "0111",  -- 7
            "0000000" WHEN "1000",  -- 8
            "0000100" WHEN "1001",  -- 9
            "0001000" WHEN "1010",  -- A
            "1100000" WHEN "1011",  -- B
            "0110001" WHEN "1100",  -- C
            "1000010" WHEN "1101",  -- D
            "0110000" WHEN "1110",  -- E
            "0111000" WHEN "1111",  -- F
            "1111111" WHEN OTHERS;

END Behavior;
