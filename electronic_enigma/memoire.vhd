library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity memoire  is
    Port ( DIN, CLOCK, W, R : in  STD_LOGIC;
           DOUT : out  STD_LOGIC);
end memoire ;

architecture code of memoire  is
    component bascul
        Port ( clk, d : in  STD_LOGIC;
               q : out  STD_LOGIC);
    end component;
    
    signal A, D : STD_LOGIC;
begin
PROCESS (W)
BEGIN

    A <= (W and DIN) or ((not W) and D)  ;

END PROCESS;
    U1: bascul port map(clk => CLOCK, d => A, q => D);
process(R)
BEGIN

	 DOUT <= D AND R  ;

END PROCESS;
end code ;