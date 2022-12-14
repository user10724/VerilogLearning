######################################################################
#
# File name : testbench_top_simulate.do
# Created on: Sun Nov 27 23:17:34 +0800 2022
#
# Auto generated by Vivado for 'behavioral' simulation
#
######################################################################
vsim -voptargs="+acc" -L xil_defaultlib -L xbip_utils_v3_0_10 -L xbip_pipe_v3_0_6 -L xbip_bram18k_v3_0_6 -L mult_gen_v12_0_17 -L unisims_ver -L unimacro_ver -L secureip -L xpm -lib xil_defaultlib xil_defaultlib.testbench_top xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {testbench_top_wave.do}

view wave
view structure
view signals

do {testbench_top.udo}

run 1000ns
