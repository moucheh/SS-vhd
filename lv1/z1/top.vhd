library IEEE;
use IEEE.std_logic_1164.all;

-- F = *(A + B) ex+ CD

entity top is
  port (
    A, B, C, D : in std_logic;
    F : out std_logic
  );
end entity top;

architecture arctop of top is
begin
  F <= (not (A or B)) xor (C and D);
  
end architecture arctop;
