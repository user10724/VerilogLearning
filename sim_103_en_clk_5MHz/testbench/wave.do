onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /testbench_top/clk
add wave -noupdate -radix unsigned /testbench_top/rst_n
add wave -noupdate -radix unsigned /testbench_top/U_VLG_DESIGN_0/clk_en
add wave -noupdate -radix unsigned -childformat {{{/testbench_top/syscnt[3]} -radix unsigned} {{/testbench_top/syscnt[2]} -radix unsigned} {{/testbench_top/syscnt[1]} -radix unsigned} {{/testbench_top/syscnt[0]} -radix unsigned}} -subitemconfig {{/testbench_top/syscnt[3]} {-radix unsigned} {/testbench_top/syscnt[2]} {-radix unsigned} {/testbench_top/syscnt[1]} {-radix unsigned} {/testbench_top/syscnt[0]} {-radix unsigned}} /testbench_top/syscnt
add wave -noupdate -radix unsigned /testbench_top/U_VLG_DESIGN_0/divcnt
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1710898 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 242
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
WaveRestoreZoom {0 ps} {6187209 ps}
