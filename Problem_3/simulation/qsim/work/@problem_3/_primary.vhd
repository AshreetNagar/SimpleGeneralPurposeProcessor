library verilog;
use verilog.vl_types.all;
entity Problem_3 is
    port(
        Result          : out    vl_logic_vector(0 to 6);
        Clock           : in     vl_logic;
        Reset_A         : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        Reset_B         : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        Enable_decode   : in     vl_logic;
        data_in         : in     vl_logic;
        FSM_reset       : in     vl_logic;
        Student_ID      : out    vl_logic_vector(0 to 6)
    );
end Problem_3;
