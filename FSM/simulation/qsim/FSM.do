onerror {quit -f}
vlib work
vlog -work work FSM.vo
vlog -work work FSM.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.FSMDiagram_vlg_vec_tst
vcd file -direction FSM.msim.vcd
vcd add -internal FSMDiagram_vlg_vec_tst/*
vcd add -internal FSMDiagram_vlg_vec_tst/i1/*
add wave /*
run -all
