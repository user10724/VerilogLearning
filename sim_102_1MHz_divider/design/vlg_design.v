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
	input clk,
	input rst_n,
	output reg clk_1mhz
    );

`define CNT_MAX  100

`define CNT_MAX_DIV2 `CNT_MAX/2
   // localparam CNT_MAX = 8'd100;
   // localparam CNT_MAX_DIV2= 8'd50;

    reg [7:0]   cnt;

    always @(posedge clk)
        if(!rst_n) cnt<= 8'd0;
        else if(cnt < (`CNT_MAX -1)) cnt <= cnt+1'b1;
        else cnt<=  8'd0;

    always @(posedge clk)
        if(!rst_n) clk_1mhz <=1'd0;
        else if(cnt < `CNT_MAX_DIV2) clk_1mhz <=1'b1;
        else clk_1mhz<=1'b0;

	

endmodule

