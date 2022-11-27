vlib work
vmap work work

#library
#vlog  -work work ../../library/artix7/*.v

#IP
#vlog  -work work ../../../source_code/ROM_IP/rom_controller.v

#SourceCode
vlog  -work work ../design/vlg_design.v

#Testbench
vlog  -work work testbench_top.v 


vsim -voptargs=+acc work.testbench_top

#Add signal into wave window
do wave.do

run -all
