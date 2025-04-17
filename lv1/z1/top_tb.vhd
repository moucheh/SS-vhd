library IEEE;
use IEEE.std_logic_1164.all;

entity top_tb is
end entity top_tb;

architecture arctop_tb of top_tb is
  component top
    port(
      A, B, C, D : in std_logic;
      F : out std_logic
    );
  end component;
  signal A, B, C, D : std_logic;
  signal F : std_logic;
begin
  UUT : top
  port map (A => A, B => B, C => C, D => D, F => F);
  process
    begin
      A <= '0';
      B <= '0';
      C <= '0';
      D <= '0';

      wait for 10 ns;

      A <= '1';
      B <= '1';
      C <= '0';
      C <= '0';

      wait for 10 ns;

      wait;
    
  end process;
end architecture arctop_tb;
