/////////////////////////////////////////////////////////////////////////////
//EDA工具平台：Vivado 2019.1 + ModelSim SE-64 10.5 
//开发套件型号： STAR 入门FPGA开发套件
//版   权  申   明： 本例程由《深入浅出玩转FPGA》作者“特权同学”原创，
//				仅供特权同学相关FPGA开发套件学习使用，谢谢支持
//官方淘宝店铺： http://myfpga.taobao.com/
//微 信 公 众 号：“FPGA快乐学习”
//				欢迎关注，获取更多更新的FPGA学习资料 
/////////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps
module vlg_design(
	input clk_n,            //200MHz    5ns
	input clk_p,
    input i_rst_n,
    input i_en,
	input [9:0] i_data,
    output o_vld,
	output [15:0] o_sin
    );


localparam TIMER_1S_MAX_CNT = 32'd1_000_000_000/5;

wire i_clk;
IBUFDS #(
      .DIFF_TERM("FALSE"),       // Differential Termination
      .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE" 
      .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
   ) IBUFDS_inst (
      .O(i_clk),  // Buffer output
      .I(clk_p),  // Diff_p buffer input (connect directly to top-level port)
      .IB(clk_n) // Diff_n buffer input (connect directly to top-level port)
   );

reg[1:0] r_vld;

always @(posedge i_clk)
    if(!i_rst_n) r_vld <= 2'b00;
    else r_vld <= {r_vld[0],i_en};

assign o_vld = r_vld[1]; 

blk_mem_gen_0 u_sin_rom (
  .clka(i_clk), //    // input wire clka
  .addra(i_data),  // input wire [9 : 0] addra
  .douta(o_sin)  // output wire [15 : 0] douta
);

endmodule

