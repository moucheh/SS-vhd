library ieee;
  use ieee.std_logic_1164.all;

entity top_tb is
end entity top_tb;

architecture arctop_tb of top_tb is

  component top is
    port (
      d  : in    std_logic_vector(2 downto 0);
      q  : out   std_logic_vector(7 downto 0);
      en : in    std_logic
    );
  end component top;

  signal d  : std_logic_vector(2 downto 0);
  signal q  : std_logic_vector(7 downto 0);
  signal en : std_logic;

begin

  uut : component top
    port map (
      d  => d,
      q  => q,
      en => en
    );

  tb : process is
  begin

    en <= '1';
    d  <= "000";
    wait for 2 ns;

    d <= "001";
    wait for 10 ns;

    d <= "011";
    wait for 10 ns;

    d <= "011";
    wait for 10 ns;

    d <= "111";
    wait for 10 ns;

    en <= '0';
    wait for 2 ns;
    wait;

  end process tb;

end architecture arctop_tb;
