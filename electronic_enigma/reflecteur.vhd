library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std .ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity reflecteur is 
port(
		signal_entree : in  STD_LOGIC_VECTOR(7 downto 0);
		signal_sortie: out STD_LOGIC_VECTOR(7 downto 0)
     );
end reflecteur;
architecture code of reflecteur is
signal test_bit : STD_LOGIC ;
type rotor_type is array(0 to 25) of std_logic_vector(7 downto 0);
signal signal_reflector : rotor_type := (
      "01000101", "01001010", "01001101", "01000100", "01000001",
		"01001100", "01011001", "01011000", "01010110", "01000010", 
		"01010111", "01000110", "01000011", "01010010", "01010001",
		"01010101", "01001111", "01010010", "01010100", "01010011", 
		"01010000", "01001001", "01001011", "01011000", "01000111",
		"01000100");
begin
   process(signal_entree)
	begin
		-- tester si on a un signal a l'entree
		test_bit <= '0'; 
      for i in signal_entree'range loop 
			if signal_entree(i) = '1' then 
					test_bit <= '1'; 
					exit; 
			end if;
		end loop;
		--debut de chiffrement
		if test_bit = '0' then 
			signal_sortie <= "00000000" ;
		else 
      signal_sortie <= signal_reflector(to_integer(unsigned(signal_entree)) - 65 );
      end if;
      end process ;
end code ;