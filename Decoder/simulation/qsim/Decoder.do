onerror {quit -f}
vlib work
vlog -work work Decoder.vo
vlog -work work Decoder.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.DecoderDiagram_vlg_vec_tst
vcd file -direction Decoder.msim.vcd
vcd add -internal DecoderDiagram_vlg_vec_tst/*
vcd add -internal DecoderDiagram_vlg_vec_tst/i1/*
add wave /*
run -all
