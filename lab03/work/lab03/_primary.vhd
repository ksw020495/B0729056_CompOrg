library verilog;
use verilog.vl_types.all;
entity lab03 is
    port(
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        I2              : in     vl_logic;
        I3              : in     vl_logic;
        I4              : in     vl_logic;
        I5              : in     vl_logic;
        I6              : in     vl_logic;
        I7              : in     vl_logic;
        Load            : in     vl_logic;
        CLK             : in     vl_logic;
        A0              : out    vl_logic;
        A1              : out    vl_logic;
        A2              : out    vl_logic;
        A3              : out    vl_logic;
        A4              : out    vl_logic;
        A5              : out    vl_logic;
        A6              : out    vl_logic;
        A7              : out    vl_logic
    );
end lab03;
