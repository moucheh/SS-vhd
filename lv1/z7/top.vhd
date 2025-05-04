library ieee;
  use ieee.std_logic_1164.all;

-- 8:3 CODER

entity top is
  port (
    d  : in    std_logic_vector(7 downto 0);
    q  : out   std_logic_vector(2 downto 0);
    en : in    std_logic
  );
end entity top;

architecture arctop of top is

begin

  proc : process (d, en) is
  begin

    if (en = '1') then
      if (d = "00000001") then
        q <= "000";
      elsif (d = "00000010") then
        q <= "001";
      elsif (d = "00000100") then
        q <= "010";
      elsif (d = "00001000") then
        q <= "011";
      elsif (d = "00010000") then
        q <= "100";
      elsif (d = "00100000") then
        q <= "101";
      elsif (d = "01000000") then
        q <= "110";
      elsif (d = "10000000") then
        q <= "111";
      else
        q <= "XXX";
      end if;
    else
      q <= "XXX";
    end if;

  end process proc;

end architecture arctop;
