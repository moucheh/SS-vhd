library ieee;
  use ieee.std_logic_1164.all;

entity top is
  port (
    d0  : in    std_logic;
    d1  : in    std_logic;
    d2  : in    std_logic;
    d3  : in    std_logic;
    sel : in    std_logic_vector(1 downto 0);
    f   : out   std_logic
  );
end entity top;

architecture arctop of top is

begin

  with sel select f <=
    d3 when "11",
    d2 when "10",
    d1 when "01",
    d0 when "00",
    '0' when others;

end architecture arctop;
