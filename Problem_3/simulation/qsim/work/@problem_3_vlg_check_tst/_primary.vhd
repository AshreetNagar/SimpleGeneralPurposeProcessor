library verilog;
use verilog.vl_types.all;
entity Problem_3_vlg_check_tst is
    port(
        Result          : in     vl_logic_vector(0 to 6);
        Student_ID      : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end Problem_3_vlg_check_tst;
