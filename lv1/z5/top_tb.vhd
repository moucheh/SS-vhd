library ieee;
  use ieee.std_logic_1164.all;

entity top_tb is
end entity top_tb;

architecture arctop_tb of top_tb is

  component top is
    port (
      d : in    std_logic_vector(1 downto 0);
      q : out   std_logic_vector(3 downto 0)
    );
  end component top;

  signal d : std_logic_vector(1 downto 0);
  signal q : std_logic_vector(3 downto 0);

begin

  uut : component top
    port map (
      d => d,
      q => q
    );

  tb : process is
  begin

    d <= "11";
    wait for 10 ns;

    d <= "01";
    wait for 10 ns;

    d <= "10";
    wait for 10 ns;

    wait;

  end process tb;

end architecture arctop_tb;
