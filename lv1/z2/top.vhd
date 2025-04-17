-- 4:1 MUX

library IEEE;
use IEEE.std_logic_1164.all;

entity top is
  port (
    D0, D1, D2, D3 : in std_logic;
    SEL : in std_logic_vector(1 downto 0);
    Y : out std_logic
  );
end entity top;

architecture arctop of top is
begin
  Y <= D3 when (SEL = "11") else
       D2 when (SEL = "10") else
       D1 when (SEL = "01") else
       D0 when (SEL = "00") else
       '0';
  
end architecture arctop;
