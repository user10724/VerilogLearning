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
	input i_clk,
	input i_rst_n,
    input [3:0] i_data,
    output reg [3:0] o_sync_data,
    output reg [3:0] o_asyn_data,
    output reg [3:0] o_asyn_data2
    );

always @(posedge i_clk)	
	if(!i_rst_n) o_sync_data <= 4'd0;
	else o_sync_data <= i_data;
	
always @(posedge i_clk or negedge i_rst_n)	
	if(!i_rst_n) o_asyn_data <= 4'd0;
	else o_asyn_data <= i_data;


//对复位信号做同步处理，产生新的异步复位信号
reg r_rst_n;
always @(posedge i_clk)	
	r_rst_n <=  i_rst_n;

always @(posedge i_clk or negedge r_rst_n)	
	if(!r_rst_n) o_asyn_data2 <= 4'd0;
	else o_asyn_data2 <= i_data;


endmodule

