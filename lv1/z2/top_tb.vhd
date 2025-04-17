library IEEE;
use IEEE.std_logic_1164.all;

entity top_tb is
end entity top_tb;

architecture rtl of top_tb is
  component top
    port (
      D0, D1, D2, D3 : in std_logic;
      SEL : in std_logic_vector(1 downto 0);
      Y : out std_logic
    );
  end component;
  signal D0, D1, D2, D3 : std_logic;
  signal SEL : std_logic_vector(1 downto 0);
  signal Y : std_logic;
begin
  UUT : top
  port map(D0 => D0, D1 => D1, D2 => D2, D3 => D3, SEL => SEL, Y => Y);
  process
  begin
    D0 <= '0';
    D1 <= '1';
    D2 <= '1';
    D3 <= '0';

    SEL <= "01";
    wait for 10 ns;

    SEL <= "00";
    wait for 10 ns;

    SEL <= "11";
    wait for 10 ns;

    wait;
  end process;
  
end architecture rtl;
