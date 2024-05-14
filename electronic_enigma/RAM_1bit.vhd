library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;
entity RAM_1bit is 
    port(  di   : in std_logic;
	       clock : in std_logic ;
	       R     : in std_logic ;
			 W     : in std_logic ;
			 sin   : in std_logic ;
			 out_incri: in std_logic;
			 sout  : out std_logic  
    );
end RAM_1bit;
architecture code of RAM_1bit is
signal info : std_logic;
component mux_1bit is 
port (sin ,out_incri,di : in std_logic ;
      out_put: out std_logic );
end component;
component memoire is 
Port ( DIN, CLOCK, W, R : in  STD_LOGIC;
       DOUT : out  STD_LOGIC);
end component ;
begin 
pass1 : mux_1bit port map (
        sin => sin ,
		  out_incri => out_incri,
		  di => di,
		  out_put => info 
);
pass2 : memoire port map (
        DIN   => info,
		  clock =>clock,
		  W     => W or di,
		  R     =>R,
		  DOUT  =>sout
);
end code;
   


