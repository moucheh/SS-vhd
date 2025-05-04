library ieee;
  use ieee.std_logic_1164.all;

entity top_tb is
end entity top_tb;

architecture rtl of top_tb is

  component top is
    port (
      d0  : in    std_logic;
      d1  : in    std_logic;
      d2  : in    std_logic;
      d3  : in    std_logic;
      sel : in    std_logic_vector(1 downto 0);
      y   : out   std_logic
    );
  end component top;

  signal d0  : std_logic;
  signal d1  : std_logic;
  signal d2  : std_logic;
  signal d3  : std_logic;
  signal sel : std_logic_vector(1 downto 0);
  signal y   : std_logic;

begin

  uut : component top
    port map (
      d0  => d0,
      d1  => d1,
      d2  => d2,
      d3  => d3,
      sel => sel,
      y   => y
    );

  tb : process is
  begin

    d0 <= '0';
    d1 <= '1';
    d2 <= '1';
    d3 <= '0';

    sel <= "01";
    wait for 10 ns;

    sel <= "00";
    wait for 10 ns;

    sel <= "11";
    wait for 10 ns;

    wait;

  end process tb;

end architecture rtl;
