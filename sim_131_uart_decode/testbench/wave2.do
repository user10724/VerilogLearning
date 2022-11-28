onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench_top/i_clk_p
add wave -noupdate /testbench_top/i_clk_n
add wave -noupdate /testbench_top/i_rst_n
add wave -noupdate /testbench_top/i_uart_rx
add wave -noupdate /testbench_top/w_bps_en
add wave -noupdate /testbench_top/w_bps_done
add wave -noupdate /testbench_top/w_rx_en
add wave -noupdate /testbench_top/w_rx_data
add wave -noupdate /testbench_top/i
add wave -noupdate /testbench_top/U_M_BPS_0/i_clk
add wave -noupdate /testbench_top/U_M_BPS_0/i_rst_n
add wave -noupdate /testbench_top/U_M_BPS_0/i_bps_en
add wave -noupdate /testbench_top/U_M_BPS_0/o_bps_done
add wave -noupdate -radix unsigned /testbench_top/U_M_BPS_0/r_bps_cnt
add wave -noupdate /testbench_top/U_M_S2P_0/i_clk
add wave -noupdate /testbench_top/U_M_S2P_0/i_rst_n
add wave -noupdate /testbench_top/U_M_S2P_0/i_uart_rx
add wave -noupdate /testbench_top/U_M_S2P_0/i_bps_done
add wave -noupdate /testbench_top/U_M_S2P_0/o_bps_en
add wave -noupdate /testbench_top/U_M_S2P_0/o_rx_en
add wave -noupdate /testbench_top/U_M_S2P_0/o_rx_data
add wave -noupdate /testbench_top/U_M_S2P_0/r_uart_rx
add wave -noupdate /testbench_top/U_M_S2P_0/neg_uart_rx
add wave -noupdate /testbench_top/U_M_S2P_0/r_bit_cnt
add wave -noupdate /testbench_top/U_M_S2P_0/r_rx_data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {157352481 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 368
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
WaveRestoreZoom {157186878 ps} {158163109 ps}
