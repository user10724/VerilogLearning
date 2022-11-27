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
module vlg_design_ex2(
	input i_clk,
	input i_rst_n,
    input [3:0] i_cnt,
	output [3:0]    o_cnt1,o_cnt2
    );


reg [3:0]   r_cnt1,r_cnt2;

always @(posedge i_clk)
    if(!i_rst_n)begin
        r_cnt1 <='b0;
        r_cnt2 <='b0;
    end
    else begin 
        r_cnt1 <= i_cnt;
        r_cnt2 <= i_cnt;
    end


assign o_cnt1 = r_cnt1;
assign o_cnt2 = r_cnt2;
	

endmodule

