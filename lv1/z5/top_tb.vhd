library IEEE;
use IEEE.std_logic_1164.all;

entity top_tb is
end entity top_tb;

architecture arctop_tb of top_tb is
  component top
    port (
      D : in std_logic_vector(1 downto 0);
      Q : out std_logic_vector(3 downto 0)
    );
  end component;
  signal D : std_logic_vector(1 downto 0);
  signal Q : std_logic_vector(3 downto 0);
begin
  UUT : top
  port map (D => D, Q => Q);
  process
  begin
    D <= "11";
    wait for 10 ns;

    D <= "01";
    wait for 10 ns;

    D <= "10";
    wait for 10 ns;

    wait;
  end process;
  
end architecture arctop_tb;
