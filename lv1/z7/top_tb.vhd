library IEEE;
use IEEE.std_logic_1164.all;

entity top_tb is
end entity top_tb;

architecture rtl of top_tb is
  component top
    port (
      D : in std_logic_vector(7 downto 0);
      Q : out std_logic_vector(2 downto 0);
      EN : in std_logic
    );
  end component;

  signal D : std_logic_vector(7 downto 0);
  signal Q : std_logic_vector(2 downto 0);
  signal EN : std_logic;
begin
  UUT : top
  port map(D => D, Q => Q, EN => EN);
  process
  begin
    EN <= '1';
    wait for 1 ns;
    
    D <= "00000001";
    wait for 10 ns;

    D <= "00001000";
    wait for 10 ns;

    EN <= '0';
    wait for 2 ns;

    EN <= '1';
    D <= "10000000";
    wait for 10 ns;

    wait;
  end process;
  
end architecture rtl;
