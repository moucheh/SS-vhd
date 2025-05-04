library ieee;
  use ieee.std_logic_1164.all;

entity top_tb is
end entity top_tb;

architecture arctop_tb of top_tb is

  component top is
    port (
      a : in    std_logic;
      b : in    std_logic;
      c : in    std_logic;
      d : in    std_logic;
      f : out   std_logic
    );
  end component top;

  signal a : std_logic;
  signal b : std_logic;
  signal c : std_logic;
  signal d : std_logic;
  signal f : std_logic;

begin

  uut : component top
    port map (
      a => a,
      b => b,
      c => c,
      d => d,
      f => f
    );

  tb : process is
  begin

    a <= '0';
    b <= '0';
    c <= '0';
    d <= '0';

    wait for 10 ns;

    a <= '1';
    b <= '1';
    c <= '0';
    c <= '0';

    wait for 10 ns;

    wait;

  end process tb;

end architecture arctop_tb;
