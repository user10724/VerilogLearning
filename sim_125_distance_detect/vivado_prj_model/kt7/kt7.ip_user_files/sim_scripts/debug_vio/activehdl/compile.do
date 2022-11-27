vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../kt7.gen/sources_1/ip/debug_vio/hdl/verilog" "+incdir+../../../../kt7.gen/sources_1/ip/debug_vio/hdl" \
"../../../../kt7.gen/sources_1/ip/debug_vio/sim/debug_vio.v" \


vlog -work xil_defaultlib \
"glbl.v"

