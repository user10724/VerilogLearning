vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../kt7.gen/sources_1/ip/debug_vio/hdl/verilog" "+incdir+../../../../kt7.gen/sources_1/ip/debug_vio/hdl" \
"../../../../kt7.gen/sources_1/ip/debug_vio/sim/debug_vio.v" \


vlog -work xil_defaultlib \
"glbl.v"

