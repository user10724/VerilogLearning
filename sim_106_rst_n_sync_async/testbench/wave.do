onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench_top/clk
add wave -noupdate /testbench_top/rst_n
add wave -noupdate /testbench_top/i_data
add wave -noupdate /testbench_top/o_sync_data
add wave -noupdate /testbench_top/o_asyn_data
add wave -noupdate /testbench_top/o_asyn_data2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1174025 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 223
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
WaveRestoreZoom {988050 ps} {1364133 ps}
