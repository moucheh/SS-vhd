library ieee;
  use ieee.std_logic_1164.all;
-- DECODER 3:8 with EN

entity top is
  port (
    d  : in    std_logic_vector(2 downto 0);
    q  : out   std_logic_vector(7 downto 0);
    en : in    std_logic
  );
end entity top;

architecture arctop of top is

begin

  proc : process (en, d) is
  begin

    if (en = '1') then
      if (d = "000") then
        q <= "00000001";
      elsif (d = "001") then
        q <= "00000010";
      elsif (d = "010") then
        q <= "00000100";
      elsif (d = "011") then
        q <= "00001000";
      elsif (d = "100") then
        q <= "00010000";
      elsif (d = "101") then
        q <= "00100000";
      elsif (d = "110") then
        q <= "01000000";
      elsif (d = "111") then
        q <= "10000000";
      else
        q <= "00000000";
      end if;
    else
      q <= "00000000";
    end if;

  end process proc;

end architecture arctop;
