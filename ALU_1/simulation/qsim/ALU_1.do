onerror {quit -f}
vlib work
vlog -work work ALU_1.vo
vlog -work work ALU_1.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ALU_1_vlg_vec_tst
vcd file -direction ALU_1.msim.vcd
vcd add -internal ALU_1_vlg_vec_tst/*
vcd add -internal ALU_1_vlg_vec_tst/i1/*
add wave /*
run -all
