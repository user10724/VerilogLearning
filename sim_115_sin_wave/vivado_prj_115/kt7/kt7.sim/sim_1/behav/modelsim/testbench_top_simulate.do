######################################################################
#
# File name : testbench_top_simulate.do
# Created on: Sat Nov 26 15:11:46 +0800 2022
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L xil_defaultlib -L blk_mem_gen_v8_4_5 -L unisims_ver -L unimacro_ver -L secureip -L xpm -lib xil_defaultlib xil_defaultlib.testbench_top xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {testbench_top_wave.do}

view wave
view structure
view signals

do {testbench_top.udo}

run 1000ns
