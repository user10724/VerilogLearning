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
	input clk,          //100MHz
	input rst_n,
   // input en,
    output outclk
    );

`define SIMULATION
    //如果是外部使能信号
//reg enr;

//always @(posedge clk)
  //  if(!rst_n) enr <='b0;
    //else enr <= en;
#`ifdef SIMULATION

localparam TIMER_CNT_1S = 30'd1_000 -1'b1;  //1s周期最大值
localparam TIMER_CNT_10MS = 30'd10 -1'b1;  //10ms周期最大值
`else

localparam TIMER_CNT_1S = 30'd100_000_000 -1'b1;  //1s周期最大值
localparam TIMER_CNT_10MS = 30'd1_000_000 -1'b1;  //10ms周期最大值

`endif    
// 1s周期计数
reg [29:0]  cnt;

always @(posedge clk)
    if(!rst_n) cnt <='b0;
    else if(cnt < TIMER_CNT_1S)cnt <= cnt +1'b1;
    else cnt <= 'b0;


//10ms 使能信号产生
reg en_10ms;

always @(posedge clk)
    if(!rst_n) en_10ms <='b0;
    else if(cnt <= TIMER_CNT_10MS) en_10ms <=1'b1;	
    else en_10ms <= 'b0;

//例化原语

   BUFGCE BUFGCE_inst (
      .O(outclk),   // 1-bit output: Clock output
      .CE(en_10ms), // 1-bit input: Clock enable input for I0
      .I(clk)    // 1-bit input: Primary clock
  );
endmodule

