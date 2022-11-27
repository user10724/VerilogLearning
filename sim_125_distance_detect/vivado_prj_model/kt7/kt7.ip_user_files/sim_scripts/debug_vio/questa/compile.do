vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../kt7.gen/sources_1/ip/debug_vio/hdl/verilog" "+incdir+../../../../kt7.gen/sources_1/ip/debug_vio/hdl" \
"../../../../kt7.gen/sources_1/ip/debug_vio/sim/debug_vio.v" \


vlog -work xil_defaultlib \
"glbl.v"

