library ieee;
use ieee.std_logic_1164.all;

entity top is
	port
	(
		A, B, C : in std_logic;
		F : out std_logic
	);
end top;

architecture atop of top is

	signal t_sig1 : std_logic := '0';
	signal t_sig2 : std_logic := '0';
begin

	t_sig1 <= (not(A) and B) or (A and B and (not C));
	t_sig2 <= (A and B) nor C;
	F <= t_sig1 or t_sig2;

end atop;