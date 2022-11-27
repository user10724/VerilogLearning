onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+debug_vio -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.debug_vio xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {debug_vio.udo}

run -all

endsim

quit -force
