/////////////////////////////////////////////////////////////////////////////
//EDA工具平台：Vivado 2021.2 + ModelSim SE-64 2020.4 
//开发套件型号： KINTEX7 GENESYS2 
// Author: NJU zhoutao 
/////////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps
module vlg_cal
(
	input i_clk, //200MHz    5ns
    input i_rst_n,
    input [15:0] i_t_us,
    output [13:0]  o_s_mm
    );

// s=0.173*t
// S*4096=0.173*4096
// S*4096=709*t;
//  S=709*t>>12
//  
//  方法1直接使用IP核   xilinx 支持直接乘号，使用专用乘法器， 但更推荐IP核 ，选择最优化设置，
//  使性能更好
//  方法2  709 =512+128+64+4+1=2^9+2^7+2^6+2^2+2^0

//////////////////////////////
//乘法器 ip例化

wire [25:0] w_mult_result;

mult_gen_0 u_mult (
  .CLK(i_clk),  // input wire CLK
  .A(10'd709),      // input wire [9 : 0] A
  .B(i_t_us),      // input wire [15 : 0] B
  .P(w_mult_result)      // output wire [25 : 0] P
);
//右移12位 所以只需要高14位
assign o_s_mm = w_mult_result[25:12];




    
endmodule

