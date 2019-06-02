onerror {quit -f}
vlib work
vlog -work work Logic.vo
vlog -work work Logic.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Logic_vlg_vec_tst
vcd file -direction Logic.msim.vcd
vcd add -internal Logic_vlg_vec_tst/*
vcd add -internal Logic_vlg_vec_tst/i1/*
add wave /*
run -all
