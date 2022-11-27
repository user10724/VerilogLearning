onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench_top/clk
add wave -noupdate /testbench_top/rst_n
add wave -noupdate /testbench_top/clk_1mhz
add wave -noupdate /testbench_top/U_VLG_DESIGN_0/clk
add wave -noupdate /testbench_top/U_VLG_DESIGN_0/rst_n
add wave -noupdate /testbench_top/U_VLG_DESIGN_0/clk_1mhz
add wave -noupdate -radix unsigned /testbench_top/U_VLG_DESIGN_0/cnt
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {787211 ps} 0} {{Cursor 2} {1505000 ps} 0} {{Cursor 3} {2005000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 304
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {120078 ps} {3442790 ps}
