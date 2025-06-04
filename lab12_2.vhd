LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.lab12_2_pkg.all;

ENTITY lab12_2 IS
PORT (
    SW    : IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
    KEY   : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
    HEX2  : OUT STD_LOGIC_VECTOR(0 TO 6);
	 HEX0  : OUT STD_LOGIC_VECTOR(0 TO 6);
    Q_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
);
END lab12_2;

ARCHITECTURE Structure OF lab12_2 IS    
    SIGNAL Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
    
BEGIN

    shift_register: lab12_2_shift PORT MAP (
        R(3) => SW(3),
        R(2) => SW(2),
        R(1) => SW(1),
        R(0) => SW(0),
        w    => SW(5),
        L    => KEY(1),
        Clock => KEY(0),
        Q    => Q
    );
    
    Q_out <= Q;
    

    WITH Q SELECT
    HEX2 <= "0000001" WHEN "0000",  
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
				
				    WITH SW(3 DOWNTO 0) SELECT -- R
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
				
				
END Structure;