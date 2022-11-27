vlib work
vmap work work

#library
#vlog  -work work ../../library/artix7/*.v

#IP
#vlog  -work work ../vivado_prj_114/kt7/kt7.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.vhdl

#SourceCode
vlog  -work work ../design/*.v

#Testbench
vlog  -work work testbench_top.v 


vsim -voptargs=+acc work.testbench_top

#Add signal into wave window
do wave.do

run -all
