onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench_top/U_VLG_DESIGN_0/i_clk
add wave -noupdate /testbench_top/U_VLG_DESIGN_0/i_rst_n
add wave -noupdate /testbench_top/U_VLG_DESIGN_0/i_pulse
add wave -noupdate /testbench_top/U_VLG_DESIGN_0/i_en
add wave -noupdate /testbench_top/U_VLG_DESIGN_0/o_vld
add wave -noupdate /testbench_top/U_VLG_DESIGN_0/o_pulse_cnt
add wave -noupdate /testbench_top/U_VLG_DESIGN_0/r_pulse
add wave -noupdate /testbench_top/U_VLG_DESIGN_0/w_rise_edge
add wave -noupdate /testbench_top/U_VLG_DESIGN_0/r_flag
add wave -noupdate /testbench_top/U_VLG_DESIGN_0/r_pulse_cnt
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {36728195 ps} 0}
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
WaveRestoreZoom {733417523 ps} {838355920 ps}
