library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;
entity incri is 
    port(
        signal_entree   : in   STD_LOGIC_VECTOR(7 downto 0);
        position1_in    : in   INTEGER range 0 to 31 ;
        position2_in    : in   INTEGER range 0 to 31 ;
        position3_in    : in   INTEGER range 0 to 31 ;
        position1_out   : out  INTEGER range 0 to 31 ;
        position2_out   : out  INTEGER range 0 to 31 ;
        position3_out   : out  INTEGER range 0 to 31 ;
		  W               : out  std_logic
    );
end incri;
architecture code of incri is
    signal test_bit: std_logic ;
begin
    process(position1_in, position2_in, position3_in, signal_entree)
    begin  
	     position1_out <= position1_in;
		  position2_out <= position2_in;
		  position3_out <= position3_in;
        -- Reset test_bit to '0' at the beginning of each process iteration
        test_bit <= '0';   
        -- Check if any bit in signal_entree is high
        for i in signal_entree'range loop 
            if signal_entree(i) = '1' then 
                test_bit <= '1'; 
                exit;
				else 
			       test_bit <= '0';	
            end if;
				
        end loop;
        -- Increment outputs based on conditions
        if test_bit='1'  then
            if position1_in = 26 then 
                position1_out <=  0 ;
                if position2_in = 26 then
                    position2_out <=  0 ; 
                    if position3_in= 26 then
                        position3_out <=  0 ;
                    else
                   position3_out <=  position3_in + 1 ;
                    end if;
                else
                   position2_out <=  position2_in + 1 ;
                end if;
            else 
                   position1_out <=  position1_in + 1 ;		 
            end if;
			 W <= '1';
		   else 
			 W <= '0';
        end if;
    end process;
end code;