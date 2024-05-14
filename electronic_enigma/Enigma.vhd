library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;
entity Enigma is
    port (
        signal_in  : in  STD_LOGIC_VECTOR(7 downto 0);
        signal_out : out STD_LOGIC_VECTOR(7 downto 0);
		  position_rotor1      : IN INTEGER range 0 to 31; 
        position_rotor2      : IN INTEGER range 0 to 31; 
        position_rotor3      : IN INTEGER range 0 to 31
    );
end Enigma;
architecture Machine of Enigma is
    component first_pass
        port (
            signal_entree  : in  STD_LOGIC_VECTOR(7 downto 0);
            position_rotor : in  INTEGER range 0 to 31;
            signal_sortie  : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
    component second_pass
        port (
            signal_entree  : in  STD_LOGIC_VECTOR(7 downto 0);
		signal_sortie  : out STD_LOGIC_VECTOR(7 downto 0);
		position_rotor : in  INTEGER range 0 to 31
        );
    end component;
    component reflecteur
        port (
            signal_entree  : in  STD_LOGIC_VECTOR(7 downto 0);
            signal_sortie  : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
    signal incriment            : STD_LOGIC;
    signal test_bit             : STD_LOGIC;
	 signal position_rotor_out1  : INTEGER range 0 to 31 ; 
    signal position_rotor_out2  : INTEGER range 0 to 31 ; 
    signal position_rotor_out3  : INTEGER range 0 to 31 ; 
    signal signal_interne1      : STD_LOGIC_VECTOR(7 downto 0);
    signal signal_interne2      : STD_LOGIC_VECTOR(7 downto 0);
    signal signal_interne3      : STD_LOGIC_VECTOR(7 downto 0);
    signal signal_interne4      : STD_LOGIC_VECTOR(7 downto 0);
    signal signal_interne5      : STD_LOGIC_VECTOR(7 downto 0);
    signal signal_interne6      : STD_LOGIC_VECTOR(7 downto 0);
    signal signal_interne7      : STD_LOGIC_VECTOR(7 downto 0);
begin
    pass1 : first_pass  port map (
        signal_entree  => signal_in,
        position_rotor =>   position_rotor1 ,
        signal_sortie  => signal_interne1
    );
    pass2 : first_pass  port map (
        signal_entree  => signal_interne1,
        position_rotor =>  position_rotor2,
        signal_sortie  => signal_interne2
    );
    pass3 : first_pass  port map (
        signal_entree  => signal_interne2,
        position_rotor =>   position_rotor3,
        signal_sortie  => signal_interne3
    );
    pass4 : reflecteur  port map (
        signal_entree  => signal_interne3,
        signal_sortie  => signal_interne4
    );
    pass5 : second_pass port map (
        signal_entree  => signal_interne4,
        position_rotor => position_rotor3,
        signal_sortie  => signal_interne5
    );

    pass6 : second_pass port map (
        signal_entree  => signal_interne5,
        position_rotor => position_rotor2,
        signal_sortie  => signal_interne6
    );
    pass7 : second_pass port map (
        signal_entree  => signal_interne6,
        position_rotor => position_rotor1,
        signal_sortie  => signal_interne7
    );
    signal_out <= signal_interne7;
	 
end Machine;

