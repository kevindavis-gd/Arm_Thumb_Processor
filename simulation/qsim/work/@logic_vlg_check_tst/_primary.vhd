library verilog;
use verilog.vl_types.all;
entity Logic_vlg_check_tst is
    port(
        a0              : in     vl_logic;
        a1              : in     vl_logic;
        a2              : in     vl_logic;
        a3              : in     vl_logic;
        a4              : in     vl_logic;
        a5              : in     vl_logic;
        a6              : in     vl_logic;
        b0              : in     vl_logic;
        b1              : in     vl_logic;
        b2              : in     vl_logic;
        b3              : in     vl_logic;
        b4              : in     vl_logic;
        b5              : in     vl_logic;
        b6              : in     vl_logic;
        reg0_valueout   : in     vl_logic_vector(7 downto 0);
        reg1_valueout   : in     vl_logic_vector(7 downto 0);
        regT_valueout   : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Logic_vlg_check_tst;
