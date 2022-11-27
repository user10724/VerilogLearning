onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench_top/clk
add wave -noupdate /testbench_top/rst_n
add wave -noupdate -expand /testbench_top/i_pulse
add wave -noupdate /testbench_top/i_en
add wave -noupdate -radix unsigned /testbench_top/o_pulse_cnt0
add wave -noupdate -radix unsigned /testbench_top/o_pulse_cnt1
add wave -noupdate -radix unsigned /testbench_top/o_pulse_cnt2
add wave -noupdate -radix unsigned /testbench_top/o_pulse_cnt3
add wave -noupdate /testbench_top/i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {48783983 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 547
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
WaveRestoreZoom {0 ps} {193657631 ps}
