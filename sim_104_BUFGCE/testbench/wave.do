onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /testbench_top/clk
add wave -noupdate -radix unsigned /testbench_top/rst_n
add wave -noupdate -radix unsigned /testbench_top/outclk
add wave -noupdate -radix unsigned /testbench_top/U_VLG_DESIGN_0/cnt
add wave -noupdate -radix unsigned /testbench_top/U_VLG_DESIGN_0/en_10ms
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {101206296 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {100939910 ps} {101324103 ps}
