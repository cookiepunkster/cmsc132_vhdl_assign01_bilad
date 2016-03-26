library IEEE; use IEEE.std_logic_1164.all;

entity t1l_bilad is
	port (lights : in std_logic_vector(5 downto 0); o : out std_logic);
end t1l_bilad;

	architecture behav of t1l_bilad is
	begin
	
		o <= (lighta(4) and lights(5)) or (lights(3) and lights(4)) or (lights(2) and lights(5)) or (lights(2) and lights(3)) or (lights(1) and lights(5) or (lights(1) and lights(2)) or (lights(0) and lights(5)) or (lights(0) and lights(3)) or (lights(0) and lights(1));
	
	end architecture behav;
