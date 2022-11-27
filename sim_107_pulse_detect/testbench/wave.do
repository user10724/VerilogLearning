onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench_top/clk
add wave -noupdate /testbench_top/rst_n
add wave -noupdate /testbench_top/U_VLG_DESIGN_0/r_pulse
add wave -noupdate /testbench_top/i_pulse
add wave -noupdate {/testbench_top/U_VLG_DESIGN_0/r_pulse[0]}
add wave -noupdate {/testbench_top/U_VLG_DESIGN_0/r_pulse[1]}
add wave -noupdate /testbench_top/U_VLG_DESIGN_0/r_pulse1_invert
add wave -noupdate /testbench_top/o_rise_edge
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
WaveRestoreZoom {421930 ps} {1896976 ps}
