onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib debug_vio_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {debug_vio.udo}

run -all

quit -force
