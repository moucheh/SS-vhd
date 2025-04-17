library IEEE;
use IEEE.std_logic_1164.all;

-- 2:4 DECODER

entity top is
  port (
    D : in std_logic_vector(1 downto 0);
    Q : out std_logic_vector(3 downto 0)
  );
end entity top;

architecture arctop of top is
  
begin
  Q <= "0001" when (D = "00") else
       "0010" when (D = "01") else
       "0100" when (D = "10") else
       "1000" when (D = "11") else
       "0000";
  
end architecture arctop;
