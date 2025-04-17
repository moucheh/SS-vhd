library ieee;
use ieee.std_logic_1164.all;

entity top is
  port (
    D0, D1, D2, D3 : in  std_logic := '0';
    SEL            : in  std_logic_vector (1 downto 0);
    F              : out std_logic
  );
end entity top;

architecture arctop of top is
  
begin
  with SEL select
    F <= D3 when "11",
         D2 when "10",
         D1 when "01",
         D0 when "00",
         '0' when others;
  
  
end architecture arctop;
