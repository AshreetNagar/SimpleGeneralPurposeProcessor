library verilog;
use verilog.vl_types.all;
entity Problem1_vlg_check_tst is
    port(
        R_FIrst_Four    : in     vl_logic_vector(0 to 6);
        R_Last_Four     : in     vl_logic_vector(0 to 6);
        SIgn            : in     vl_logic_vector(0 to 6);
        Student_ID      : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end Problem1_vlg_check_tst;
