Library ieee;
Use ieee.std_logic_1164.all;

			
ENTITY dec_7seg is 
	PORT(
			out_7seg : out std_logic_vector(6 downto 0);
			in_7seg: in std_logic_vector(3 downto 0);
			CLK : in std_logic
			);
END dec_7seg;

ARCHITECTURE arc_dec_7seg OF dec_7seg IS
BEGIN
	PROCESS(clk)
	BEGIN
		IF (CLK'EVENT AND CLK ='1') THEN
			CASE in_7seg IS
				WHEN "0000" => out_7seg <= not "1111110";
				WHEN "0001" => out_7seg <= not "0110000";
				WHEN "0010" => out_7seg <= not "1101101";
				WHEN "0011" => out_7seg <= not "1111001";
				WHEN "0100" => out_7seg <= not "0110011";
				WHEN "0101" => out_7seg <= not "1011011";
				WHEN "0110" => out_7seg <= not "1011111";
				WHEN "0111" => out_7seg <= not "1110000";
				WHEN "1000" => out_7seg <= not "1111111";
				WHEN "1001" => out_7seg <= not "1111011";
				WHEN "1010" => out_7seg <= not "1110111";
				WHEN "1011" => out_7seg <= not "0011111";
				WHEN "1100" => out_7seg <= not "1001110";
				WHEN "1101" => out_7seg <= not "0111101";
				WHEN "1110" => out_7seg <= not "1001111";
				WHEN "1111" => out_7seg <= not "1000111";
			END CASE;
		END IF;
	END PROCESS;
END arc_dec_7seg;

