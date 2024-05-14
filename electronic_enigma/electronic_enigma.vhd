library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity electronic_enigma is
port(
     di : in std_logic ;
	  clock : in std_logic;
     input_vector : in STD_LOGIC_VECTOR(7 downto 0);
     input_int_1  : in     INTEGER range 0 to 31;
     input_int_2  : in     INTEGER range 0 to 31;
     input_int_3  : in     INTEGER range 0 to 31;
	  signal_out : out STD_LOGIC_VECTOR(7 downto 0)
);
end electronic_enigma;
architecture code of electronic_enigma is
signal  interne1 : integer range 0 to 31;
signal  interne2 : integer range 0 to 31;
signal  interne3 : integer range 0 to 31;
component incri01 is 
Port (
	     di : in std_logic ;
		  clock : in std_logic;
        input_vector : in STD_LOGIC_VECTOR(7 downto 0);
        input_int_1  : in     INTEGER range 0 to 31;
        input_int_2  : in     INTEGER range 0 to 31;
        input_int_3  : in     INTEGER range 0 to 31;
        output_int_1 : buffer INTEGER range 0 to 31;
        output_int_2 : buffer INTEGER range 0 to 31;
        output_int_3 : buffer INTEGER range 0 to 31
    );
end component;
component Enigma is 
port (
        signal_in  : in  STD_LOGIC_VECTOR(7 downto 0);
        signal_out : out STD_LOGIC_VECTOR(7 downto 0);
		  position_rotor1      : IN INTEGER range 0 to 31 ; 
        position_rotor2      : IN INTEGER range 0 to 31; 
        position_rotor3      : IN INTEGER range 0 to 31
    );
end component ;
begin 
incrimenteur : incri01 port map (
        di   =>  di,
		  clock => clock,
		  input_vector=>input_vector,
		  input_int_1=> input_int_1,
		  input_int_2=> input_int_2,
		  input_int_3=> input_int_3,
		  output_int_1=> interne1,
		  output_int_2=> interne2,
		  output_int_3=> interne3	  
);
enigma_alghorithme : enigma port map (
        signal_in  => input_vector,
		  signal_out => signal_out,
		  position_rotor1=>interne1,
		  position_rotor2=>interne2,
		  position_rotor3=>interne3		  
);
end code ;