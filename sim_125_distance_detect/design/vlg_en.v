/////////////////////////////////////////////////////////////////////////////
//EDA工具平台：Vivado 2021.2 + ModelSim SE-64 2020.4 
//开发套件型号： KINTEX7 GENESYS2 
// Author: NJU zhoutao 
/////////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps
module vlg_en #(
    parameter P_CLK_PERIOD =5          //i_clk 时钟周期为 5ns
)
(
	input i_clk, //200MHz    5ns
    input i_rst_n,
    output reg o_clk_en
    );

localparam P_DIVCLK_MAX     = (1000/P_CLK_PERIOD)-1;  //分频计数的最大值
reg [7:0]   r_divcnt;

//////////////////////////////
//对输入时钟 i_clk

always @(posedge i_clk)
    if(!i_rst_n) r_divcnt <=0;
    else if(r_divcnt <P_DIVCLK_MAX) 
        r_divcnt <= r_divcnt +1;
    else r_divcnt <= 'b0;
    
////////////////////////////////////
//产生时钟使能信号

always @(posedge i_clk)
    if(r_divcnt == P_DIVCLK_MAX) o_clk_en <= 1'b1;
    else o_clk_en <= 1'b0;
    
endmodule

