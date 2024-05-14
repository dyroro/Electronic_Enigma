library verilog;
use verilog.vl_types.all;
entity electronic_enigma_vlg_check_tst is
    port(
        signal_out      : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end electronic_enigma_vlg_check_tst;
