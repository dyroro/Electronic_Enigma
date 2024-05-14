library verilog;
use verilog.vl_types.all;
entity electronic_enigma_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        di              : in     vl_logic;
        input_int_1     : in     vl_logic_vector(4 downto 0);
        input_int_2     : in     vl_logic_vector(4 downto 0);
        input_int_3     : in     vl_logic_vector(4 downto 0);
        input_vector    : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end electronic_enigma_vlg_sample_tst;
