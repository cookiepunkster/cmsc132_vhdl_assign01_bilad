library IEEE; use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity t1l_bilad_tb is
	constant MAX_COMB: integer := 64;
	constant DELAY: time := 10 ns;
end entity t1l_bilad_tb;

architecture tb of t1l_bilad_tb is
	signal o: std_logic;
	signal lights: std_logic_vector(0 to 5);
	
	
		component t1l_bilad is

			port (lights : in std_logic_vector(5 downto 0); o : out std_logic);

		end component t1l_bilad;

		begin

			UUT: component t1l_bilad port map(o, lights);

			main: process is
				variable temp: unsigned(5 downto 0);
				variable expected_o: std_logic;
				variable error_count: integer := 0;

			begin 
				report "Process starting...";

				for count in 0 to 64 loop
				temp := TO_UNSIGNED(count, 6);
				lights(5) <= std_logic(temp(5));
				lights(4) <= std_logic(temp(4));
				lights(3) <= std_logic(temp(3));
				lights(2) <= std_logic(temp(2));
				lights(1) <= std_logic(temp(1));
				lights(0) <= std_logic(temp(0));

				if(count = 0)
					expected_o := '0';

				end if;

				wait for DELAY;

		end process;

end architecture tb;