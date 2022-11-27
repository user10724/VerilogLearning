/////////////////////////////////////////////////////////////////////////////
//EDA工具平台：Vivado 2021.2 + ModelSim SE-64 2020.4 
//开发套件型号： KINTEX7 GENESYS2 
// Author: NJU zhoutao 
/////////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps
module vlg_design #(
    parameter MSB =3
)
(
	input i_clk_p, //200MHz    5ns
    input i_clk_n,
	input i_rst_n,
    input i_en,
    input [MSB :0] i_data,
    output reg o_vld,
    output reg [MSB:0] o_gray

    );
IBUFDS #(
      .DIFF_TERM("FALSE"),       // Differential Termination
      .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE" 
      .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
   ) IBUFDS_inst (
      .O(i_clk),  // Buffer output
      .I(i_clk_p),  // Diff_p buffer input (connect directly to top-level port)
      .IB(i_clk_n) // Diff_n buffer input (connect directly to top-level port)
   );

always @(posedge i_clk)
    if(!i_rst_n)    o_vld <= 'b0;
    else o_vld <= i_en;

always @(posedge i_clk)
    o_gray[MSB] <= i_data[MSB];

genvar i;

generate 
    for(i=MSB-1;i>=0;i=i-1)begin
        always @(posedge i_clk) begin
            o_gray[i] <= i_data[i]^i_data[i+1];
        end
    end
endgenerate

endmodule

