vlog list.svh
vsim -novopt -suppress 12110 top
add wave -position insertpoint sim:/top/dut/*
#do wave.do
run -all
