library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity mux_1bit is
port (sin ,out_incri,di : in std_logic ;
      out_put: out std_logic );
end mux_1bit; 
architecture code of mux_1bit is 
begin 
process(sin,out_incri,di)
begin 
if di = '1' then 
out_put <= sin ;
else 
out_put <= out_incri ;
end if;
end process;
end code ;