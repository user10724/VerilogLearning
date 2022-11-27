// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sun Nov 27 17:02:52 2022
// Host        : ZHOUXXXX running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/Verilog_Learn/sim_121_PWM/vivado_prj_model/kt7/kt7.gen/sources_1/ip/debug_vio/debug_vio_stub.v
// Design      : debug_vio
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2021.2" *)
module debug_vio(clk, probe_out0, probe_out1, probe_out2, 
  probe_out3)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_out0[0:0],probe_out1[31:0],probe_out2[31:0],probe_out3[15:0]" */;
  input clk;
  output [0:0]probe_out0;
  output [31:0]probe_out1;
  output [31:0]probe_out2;
  output [15:0]probe_out3;
endmodule
