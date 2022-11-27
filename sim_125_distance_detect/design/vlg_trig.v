/////////////////////////////////////////////////////////////////////////////
//EDA工具平台：Vivado 2021.2 + ModelSim SE-64 2020.4 
//开发套件型号： KINTEX7 GENESYS2 
// Author: NJU zhoutao 
/////////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps
module vlg_trig 
(
	input i_clk, //200MHz    5ns
    input i_rst_n,
    input i_clk_en,
    output reg  o_trig
    );

localparam P_TRIG_PERIORD_MAX     = 100_000-1;  //分频计数的最大值
localparam P_TRIG_HIGH_MAX        = 10;         //10us 高脉冲保持时间


reg [16:0]   r_tricnt;

//////////////////////////////
//100ms 周期计数

always @(posedge i_clk)
    if(!i_rst_n) r_tricnt <=0;
    else if(i_clk_en)begin
        if(r_tricnt <P_TRIG_PERIORD_MAX) r_tricnt <= r_tricnt+1;
        else r_tricnt <= 'b0;
    end
    else ;
    
////////////////////////////////////
//产生时钟使能信号

always @(posedge i_clk)
    if((r_tricnt >'b0) && (r_tricnt <=P_TRIG_HIGH_MAX)) o_trig <= 1'b1;
    else o_trig <= 1'b0;
    
endmodule

