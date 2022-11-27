## Clock Signal
set_property -dict {PACKAGE_PIN AD11 IOSTANDARD LVDS} [get_ports i_clk_n]
set_property -dict {PACKAGE_PIN AD12 IOSTANDARD LVDS} [get_ports i_clk_p]

## Buttons
#set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVCMOS12 } [get_ports { btnc }]; #IO_25_17 Sch=btnc
#set_property -dict { PACKAGE_PIN M19   IOSTANDARD LVCMOS12 } [get_ports { btnd }]; #IO_0_15 Sch=btnd
#set_property -dict { PACKAGE_PIN M20   IOSTANDARD LVCMOS12 } [get_ports { btnl }]; #IO_L6P_T0_15 Sch=btnl
#set_property -dict { PACKAGE_PIN C19   IOSTANDARD LVCMOS12 } [get_ports { btnr }]; #IO_L24P_T3_17 Sch=btnr
#set_property -dict { PACKAGE_PIN B19   IOSTANDARD LVCMOS12 } [get_ports { btnu }]; #IO_L24N_T3_17 Sch=btnu
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports i_rst_n]



## PMOD Header JA
#set_property -dict { PACKAGE_PIN U27   IOSTANDARD LVCMOS33 } [get_ports { ja[0] }]; #IO_L13P_T2_MRCC_14 Sch=ja_p[1]
#set_property -dict { PACKAGE_PIN U28   IOSTANDARD LVCMOS33 } [get_ports { ja[1] }]; #IO_L13N_T2_MRCC_14 Sch=ja_n[1]
#set_property -dict { PACKAGE_PIN T26   IOSTANDARD LVCMOS33 } [get_ports { ja[2] }]; #IO_L12P_T1_MRCC_14 Sch=ja_p[2]
#set_property -dict { PACKAGE_PIN T27   IOSTANDARD LVCMOS33 } [get_ports { ja[3] }]; #IO_L12N_T1_MRCC_14 Sch=ja_n[2]
#set_property -dict { PACKAGE_PIN T22   IOSTANDARD LVCMOS33 } [get_ports { ja[4] }]; #IO_L5P_T0_D06_14 Sch=ja_p[3]
#set_property -dict { PACKAGE_PIN T23   IOSTANDARD LVCMOS33 } [get_ports { ja[5] }]; #IO_L5N_T0_D07_14 Sch=ja_n[3]
#set_property -dict { PACKAGE_PIN T20   IOSTANDARD LVCMOS33 } [get_ports { ja[6] }]; #IO_L4P_T0_D04_14 Sch=ja_p[4]
#set_property -dict { PACKAGE_PIN T21   IOSTANDARD LVCMOS33 } [get_ports { ja[7] }]; #IO_L4N_T0_D05_14 Sch=ja_n[4]


# 这里没有这个传感器就随便分配了
set_property -dict { PACKAGE_PIN U27   IOSTANDARD LVCMOS33 } [get_ports { i_echo }]; #IO_L13P_T2_MRCC_14 Sch=ja_p[1]
set_property -dict { PACKAGE_PIN U28   IOSTANDARD LVCMOS33 } [get_ports { o_trig }]; #IO_L13N_T2_MRCC_14 Sch=ja_n[1]
