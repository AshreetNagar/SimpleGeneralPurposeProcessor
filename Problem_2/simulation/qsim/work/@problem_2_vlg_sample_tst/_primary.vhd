library verilog;
use verilog.vl_types.all;
entity Problem_2_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        Clock           : in     vl_logic;
        data_in         : in     vl_logic;
        Enable_decode   : in     vl_logic;
        FSM_reset       : in     vl_logic;
        Reset_A         : in     vl_logic;
        Reset_B         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Problem_2_vlg_sample_tst;
