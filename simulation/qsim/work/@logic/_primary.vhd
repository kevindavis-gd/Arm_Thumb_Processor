library verilog;
use verilog.vl_types.all;
entity Logic is
    port(
        Logic_exe       : in     vl_logic;
        Logic_upd       : in     vl_logic;
        Logic_in        : in     vl_logic_vector(15 downto 0);
        reg0_valueout   : out    vl_logic_vector(7 downto 0);
        reg1_valueout   : out    vl_logic_vector(7 downto 0);
        regT_valueout   : out    vl_logic_vector(7 downto 0);
        a0              : out    vl_logic;
        a1              : out    vl_logic;
        a2              : out    vl_logic;
        a3              : out    vl_logic;
        a4              : out    vl_logic;
        a5              : out    vl_logic;
        a6              : out    vl_logic;
        b0              : out    vl_logic;
        b1              : out    vl_logic;
        b2              : out    vl_logic;
        b3              : out    vl_logic;
        b4              : out    vl_logic;
        b5              : out    vl_logic;
        b6              : out    vl_logic
    );
end Logic;
