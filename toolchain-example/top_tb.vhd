library ieee;
use ieee.std_logic_1164.all;

entity top_tb is
end top_tb;
architecture atop_tb of top_tb is
	component top is
		port
		(
			A, B, C : in std_logic;
			F : out std_logic
		);
	end component;

	signal A, B, C : std_logic := '0';
	signal F : std_logic;
begin
	uut : top port map
	(
		A => A, B => B, C => C,
		F => F
	);

	tproc : process
	begin
		A <= '1';
		B <= '0';
		C <= '0';
		wait for 5 ns;

		A <= '0';
		B <= '1';
		C <= '1';
		wait for 5 ns;

		A <= '1';
		B <= '0';
		C <= '1';
		wait for 5 ns;

		A <= '1';
		B <= '1';
		C <= '1';
		wait for 5 ns;
		wait;
	end process tproc;
end atop_tb;