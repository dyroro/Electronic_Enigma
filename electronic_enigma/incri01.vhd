library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity incri01 is
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
end incri01;

architecture code of incri01 is
signal signal_write : std_logic;
signal signal_read  : std_logic;

signal out_RAM_1_std : std_logic_vector(4 downto 0);
signal out_RAM_2_std : std_logic_vector(4 downto 0);
signal out_RAM_3_std : std_logic_vector(4 downto 0);

signal in_RAM_1_std  : std_logic_vector(4 downto 0);
signal in_RAM_2_std  : std_logic_vector(4 downto 0);
signal in_RAM_3_std  : std_logic_vector(4 downto 0);

signal in_RAM2_1_std  : std_logic_vector(4 downto 0);
signal in_RAM2_2_std  : std_logic_vector(4 downto 0);
signal in_RAM2_3_std  : std_logic_vector(4 downto 0);

signal out_RAM2_1    : std_logic_vector(4 downto 0);
signal out_RAM2_2    : std_logic_vector(4 downto 0);
signal out_RAM2_3    : std_logic_vector(4 downto 0);

signal out_RAM_1_int : INTEGER range 0 to 31;
signal out_RAM_2_int : INTEGER range 0 to 31;
signal out_RAM_3_int : INTEGER range 0 to 31;

signal in_RAM_1_int  : INTEGER range 0 to 31;
signal in_RAM_2_int  : INTEGER range 0 to 31;
signal in_RAM_3_int  : INTEGER range 0 to 31;
component incri is
port(
        signal_entree   : in   STD_LOGIC_VECTOR(7 downto 0);
        position1_in    : in   INTEGER range 0 to 31;
        position2_in    : in   INTEGER range 0 to 31;
        position3_in    : in   INTEGER range 0 to 31;
        position1_out   : out  INTEGER range 0 to 31;
        position2_out   : out  INTEGER range 0 to 31;
        position3_out   : out  INTEGER range 0 to 31;
		  W               : out  STD_LOGIC
    );
end component;
component RAM is 
port(     di       : in    std_logic ;
	       clock    : in    std_logic ;
	       R        : in    std_logic ;
			 W        : in    std_logic ;
			 sin      : in    std_logic_vector(4 downto 0) ;
			 out_incri: in    std_logic_vector(4 downto 0) ;
			 sout     : out   std_logic_vector(4 downto 0) 
    );
end component;
component test is
port(
test_bit : out  STD_LOGIC ;
signal_entree: in std_logic_vector(7 downto 0 )
);
end component; 
begin 
test1 : test port map (
        test_bit      => signal_read,
		  signal_entree => input_vector
		  
); 

        out_RAM_1_int <= to_integer( unsigned(out_RAM_1_std));
		  out_RAM_2_int <= to_integer(unsigned(out_RAM_2_std));
		  out_RAM_3_int <= to_integer(unsigned(out_RAM_3_std));
		  in_RAM2_1_std  <= std_logic_vector(to_unsigned(in_RAM_1_int,5));
		  in_RAM2_2_std  <= std_logic_vector(to_unsigned(in_RAM_2_int,5));
		  in_RAM2_3_std  <= std_logic_vector(to_unsigned(in_RAM_3_int,5));
		  output_int_1  <= in_RAM_1_int;
		  output_int_2  <= in_RAM_2_int;
		  output_int_3  <= in_RAM_3_int;
		  
op1: incri port map (
		  signal_entree => input_vector,
		  position1_in  => out_RAM_1_int,
		  position2_in  => out_RAM_2_int,
		  position3_in  => out_RAM_3_int,
		  position1_out => in_RAM_1_int,
		  position2_out => in_RAM_2_int,
		  position3_out => in_RAM_3_int,
		  W             =>  signal_write
);
RAM_11 : RAM PORT MAP (
        di            => di ,
		  clock         => clock,
		  R             => signal_read,
		  W             => not signal_read,
		  sin           => std_logic_vector(to_unsigned(input_int_1,5)),
		  out_incri     => out_RAM2_1,
		  sout          => out_RAM_1_std
);
RAM_12 : RAM PORT MAP (
        di            => di ,
		  clock         => clock,
		  R             => signal_read,
		  W             => not signal_read,
		  sin           => std_logic_vector(to_unsigned(input_int_2,5)),
		  out_incri     => out_RAM2_2,
		  sout          => out_RAM_2_std
);
RAM_13 : RAM PORT MAP (
        di            => di ,
		  clock         => clock,
		  R             => signal_read,
		  W             => not signal_read,
		  sin           => std_logic_vector(to_unsigned(input_int_3,5)),
		  out_incri     => out_RAM2_3,
		  sout          => out_RAM_3_std
);
RAM_21 : RAM PORT MAP (
        sin           => std_logic_vector(to_unsigned(input_int_1,5)),
        di            => di  ,
		  clock         => clock,
		  R             => not signal_read,
		  W             => signal_write,
		  out_incri     => in_RAM2_1_std,
		  sout          => out_RAM2_1
);
RAM_22 : RAM PORT MAP (
        sin           => std_logic_vector(to_unsigned(input_int_2,5)),
        di            => di  ,
		  clock         => clock,
		  R             => not signal_read,
		  W             => signal_write,
		  out_incri     => in_RAM2_2_std,
		  sout          => out_RAM2_2
);
RAM_23 : RAM PORT MAP (
        sin           => std_logic_vector(to_unsigned(input_int_3,5)),
        di            => di  ,
		  clock         => clock,
		  R             => not signal_read,
		  W             => signal_write,
		  out_incri     => in_RAM2_3_std,
		  sout          => out_RAM2_3
);


end code;
