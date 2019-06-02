library verilog;
use verilog.vl_types.all;
entity Logic_vlg_sample_tst is
    port(
        Logic_exe       : in     vl_logic;
        Logic_in        : in     vl_logic_vector(15 downto 0);
        Logic_upd       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Logic_vlg_sample_tst;
