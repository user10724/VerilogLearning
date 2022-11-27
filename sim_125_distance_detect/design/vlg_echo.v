/////////////////////////////////////////////////////////////////////////////
//EDA工具平台：Vivado 2021.2 + ModelSim SE-64 2020.4 
//开发套件型号： KINTEX7 GENESYS2 
// Author: NJU zhoutao 
/////////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps
module vlg_echo (
	input i_clk, //200MHz    5ns
    input i_rst_n,
    input i_clk_en,
    input i_echo,
    output reg [15:0]  o_t_us
    );


reg [1:0] r_echo;
wire pos_echo;
wire neg_echo;

reg r_cnt_en;
reg [15:0] r_echo_cnt;

/*
*
    超声波量程 2mm~4500mm
        s =0.173*t;
    11 < t< 26011
    * */



//////////////////////////////
//对i_echo 信号锁存2拍，获取边沿监测信号，产生计数使能信号r_cnt_en

always @(posedge i_clk)
    if(!i_rst_n) r_echo <='b0;
    else r_echo <= {r_echo[0],i_echo};
    
assign pos_echo = ~r_echo[1] & r_echo[0];
assign neg_echo = r_echo[1] & ~r_echo[0];
////////////////////////////////////
//产生时钟使能信号

always @(posedge i_clk)
    if(!i_rst_n) r_cnt_en <= 'b0;
    else if(pos_echo) r_cnt_en <= 'b1;
    else if(neg_echo) r_cnt_en <= 'b0;
    else ;

/////////////////////////////
//对i_echo信号的高电平保持时间进行1us为单位的计数

always @(posedge i_clk)
    if(!i_rst_n) r_echo_cnt <= 'b0;
    else if(!r_cnt_en) r_echo_cnt <= 'b0;
    else if(i_clk_en) r_echo_cnt <= r_echo_cnt +1;
    else ;

/////////////////////////////////////////////
//对r_echo_cnt计数最大值做锁存

always @(posedge i_clk)
    if(!i_rst_n) o_t_us <= 'b0;
    else if(neg_echo) o_t_us<= r_echo_cnt;

endmodule

