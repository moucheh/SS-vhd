library ieee;
  use ieee.std_logic_1164.all;

-- F = *(A + B) ex+ CD

entity top is
  port (
    a : in    std_logic;
    b : in    std_logic;
    c : in    std_logic;
    d : in    std_logic;
    f : out   std_logic
  );
end entity top;

architecture arctop of top is

begin

  f <= (not (a or b)) xor (c and d);

end architecture arctop;
