
vlog list.svh
vopt work.top +cover=fcbest -o multiple_wr_rd
vsim -coverage multiple_wr_rd
coverage save -onexit multiple_wr_rd.ucdb
add wave -position insertpoint sim:/top/dut/*
#do wave.do
do exclusion.do
run -all
