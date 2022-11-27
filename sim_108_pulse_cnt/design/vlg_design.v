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
	input i_pulse,
    input i_en,
	output reg [15:0] o_pulse_cnt
    );

reg[1:0] r_pulse;
wire w_rise_edge;

/////////////////////////////////
//脉冲边沿检测逻辑
always @(posedge i_clk )	
	if(!i_rst_n) r_pulse <= 2'b00;
	else r_pulse <= {r_pulse[0],i_pulse};
    //  r_pulse[0] <= i_pulse;   //等价
    //  r_pulse[1] <= r_pulse[0];
    //
    //


	
assign w_rise_edge = r_pulse[0] & ~r_pulse[1];

////////////////////////////////
//脉冲计数逻辑
always @(posedge i_clk)
    if(i_en)begin
        if(w_rise_edge) o_pulse_cnt <= o_pulse_cnt+1;
        else o_pulse_cnt <= o_pulse_cnt;
    end
    else o_pulse_cnt <= 'b0;

endmodule

