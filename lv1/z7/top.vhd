library IEEE;
use IEEE.std_logic_1164.all;

-- 8:3 CODER

entity top is
  port (
    D : in std_logic_vector(7 downto 0);
    Q : out std_logic_vector(2 downto 0);
    EN : in std_logic
  );
end entity top;

architecture arctop of top is
  
begin
  process (D, EN)

  begin
    if EN = '1' then
      if D = "00000001" then
        Q <= "000";
      elsif D = "00000010" then
        Q <= "001";
      elsif D = "00000100" then
        Q <= "010";
      elsif D = "00001000" then
        Q <= "011";
      elsif D = "00010000" then
        Q <= "100";
      elsif D = "00100000" then
        Q <= "101";
      elsif D = "01000000" then
        Q <= "110";
      elsif D = "10000000" then
        Q <= "111";
      else
        Q <= "XXX";
      end if;
    else
      Q <= "XXX";
    end if;
  end process;
  
end architecture arctop;
