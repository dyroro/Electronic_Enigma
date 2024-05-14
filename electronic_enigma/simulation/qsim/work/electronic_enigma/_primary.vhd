library verilog;
use verilog.vl_types.all;
entity electronic_enigma is
    port(
        di              : in     vl_logic;
        clock           : in     vl_logic;
        input_vector    : in     vl_logic_vector(7 downto 0);
        input_int_1     : in     vl_logic_vector(4 downto 0);
        input_int_2     : in     vl_logic_vector(4 downto 0);
        input_int_3     : in     vl_logic_vector(4 downto 0);
        signal_out      : out    vl_logic_vector(7 downto 0)
    );
end electronic_enigma;
