onerror {quit -f}
vlib work
vlog -work work Register.vo
vlog -work work Register.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.LatchDiagram_vlg_vec_tst
vcd file -direction Register.msim.vcd
vcd add -internal LatchDiagram_vlg_vec_tst/*
vcd add -internal LatchDiagram_vlg_vec_tst/i1/*
add wave /*
run -all
