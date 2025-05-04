-- 4:1 MUX

library ieee;
  use ieee.std_logic_1164.all;

entity top is
  port (
    d0  : in    std_logic;
    d1  : in    std_logic;
    d2  : in    std_logic;
    d3  : in    std_logic;
    sel : in    std_logic_vector(1 downto 0);
    y   : out   std_logic
  );
end entity top;

architecture arctop of top is

begin

  y <= d3 when (sel = "11") else
       d2 when (sel = "10") else
       d1 when (sel = "01") else
       d0 when (sel = "00") else
       '0';

end architecture arctop;
