library IEEE;
use IEEE.std_logic_1164.all;
-- DECODER 3:8 with EN
entity top is
  port (
    D : in std_logic_vector(2 downto 0);
    Q : out std_logic_vector(7 downto 0);
    EN : in std_logic
  );
end entity top;

architecture arctop of top is
begin
  process (EN, D)
  begin
    if (EN = '1') then
      if D = "000" then
        Q <= "00000001";
      elsif D = "001" then
        Q <= "00000010";
      elsif D = "010" then
        Q <= "00000100";
      elsif D = "011" then
        Q <= "00001000";
      elsif D = "100" then
        Q <= "00010000";
      elsif D = "101" then
        Q <= "00100000";
      elsif D = "110" then
        Q <= "01000000";
      elsif D = "111" then
        Q <= "10000000";
      else
        Q <= "00000000";
      end if;
    else
      Q <= "00000000";
    end if;
  end process;
end architecture arctop;
