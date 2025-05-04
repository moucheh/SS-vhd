library ieee;
  use ieee.std_logic_1164.all;

-- 2:4 DECODER

entity top is
  port (
    d : in    std_logic_vector(1 downto 0);
    q : out   std_logic_vector(3 downto 0)
  );
end entity top;

architecture arctop of top is

begin

  q <= "0001" when (d = "00") else
       "0010" when (d = "01") else
       "0100" when (d = "10") else
       "1000" when (d = "11") else
       "0000";

end architecture arctop;
