library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;
entity RAM is 
    port(  di   : in std_logic;
	       clock : in std_logic ;
	       R     : in std_logic ;
			 W     : in std_logic ;
			 sin   : in  std_logic_vector(4 downto 0) ;
			 out_incri: in  std_logic_vector(4 downto 0) ;
			 sout  : out   std_logic_vector(4 downto 0) 
    );
end RAM;
architecture code of RAM is 
component RAM_1bit is 
   port(  di   : in std_logic;
	       clock : in std_logic ;
	       R     : in std_logic ;
			 W     : in std_logic ;
			 sin   : in std_logic ;
			 out_incri: in std_logic;
			 sout  : out std_logic  
    );
end component;
begin 
bit1 : RAM_1bit port map (
       di => di ,
		 clock => clock ,
		 R     => R ,
		 W     => W,
		 sin => sin(0),
		 out_incri => out_incri(0),
		 sout => sout(0)	 
);
bit2 : RAM_1bit port map (
       di => di ,
		 clock => clock ,
		 R     => R,
		 W     => W,
		 sin => sin(1),
		 out_incri => out_incri(1),
		 sout => sout(1)	 
);
bit3 : RAM_1bit port map (
       di => di ,
		 clock => clock ,
		 R     => R,
		 W     => W,
		 sin => sin(2),
		 out_incri => out_incri(2),
		 sout => sout(2)	 
);
bit4 : RAM_1bit port map (
       di => di ,
		 clock => clock ,
		 R     => R,
		 W     => W,
		 sin => sin(3),
		 out_incri => out_incri(3),
		 sout => sout(3)	 
);
bit5 : RAM_1bit port map (
       di => di ,
		 clock => clock ,
		 R     => R,
		 W     => W,
		 sin => sin(4),
		 out_incri => out_incri(4),
		 sout => sout(4)	 
);
end code;