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
	input clk_n,            //200MHz    5ns
	input clk_p,
    input i_rst_n,
	//input [3:0] i_data, 
	output [3:0] o_gray
    );


localparam TIMER_1S_MAX_CNT = 32'd1_000_000_000/5;

wire i_clk;
IBUFDS #(
      .DIFF_TERM("FALSE"),       // Differential Termination
      .IBUF_LOW_PWR("TRUE"),     // Low power="TRUE", Highest performance="FALSE" 
      .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
   ) IBUFDS_inst (
      .O(i_clk),  // Buffer output
      .I(clk_p),  // Diff_p buffer input (connect directly to top-level port)
      .IB(clk_n) // Diff_n buffer input (connect directly to top-level port)
   );
    //////////////////////////////////////////
    //  1S定时计数
reg[31:0]   r_cnt; 

always @(posedge i_clk)
    if(!i_rst_n) r_cnt <='b0;
    else if(r_cnt < (TIMER_1S_MAX_CNT-1)) r_cnt <= r_cnt +1;
    else r_cnt <= 'b0;

    ///////////////////
//1s 计数器

reg[3:0] r_second;
always @(posedge i_clk)
    if(!i_rst_n) r_second <= 'b0;
    else if(r_cnt ==(TIMER_1S_MAX_CNT-1))r_second <= r_second+1;
    else ;

/////////////////////////////////
//r_second 译码位格雷码

reg [3:0] r_gray;
/*
always @(posedge i_clk)
    if(!i_rst_n) r_gray <= 4'b0;
    else if(i_data == 4'b0000) r_gray <= 4'b0000;
    else if(i_data == 4'b0001) r_gray <= 4'b0001;
    else if(i_data == 4'b0010) r_gray <= 4'b0011;
    else if(i_data == 4'b0011) r_gray <= 4'b0010;
    else if(i_data == 4'b0100) r_gray <= 4'b0110;
    else if(i_data == 4'b0101) r_gray <= 4'b0111;
    else if(i_data == 4'b0110) r_gray <= 4'b0101;
    else if(i_data == 4'b0111) r_gray <= 4'b0100;
    else if(i_data == 4'b1000) r_gray <= 4'b1100;
    else if(i_data == 4'b1001) r_gray <= 4'b1101;
    else if(i_data == 4'b1010) r_gray <= 4'b1111;
    else if(i_data == 4'b1011) r_gray <= 4'b1110;
    else if(i_data == 4'b1100) r_gray <= 4'b1010;
    else if(i_data == 4'b1101) r_gray <= 4'b1011;
    else if(i_data == 4'b1110) r_gray <= 4'b1001;
    else if(i_data == 4'b1111) r_gray <= 4'b1000;
*/


always @(posedge i_clk)
    if(!i_rst_n) r_gray <= 4'b0;
    else begin
        case(r_second)
            4'b0000: r_gray <= 4'b0000;
            4'b0001: r_gray <= 4'b0001;
            4'b0010: r_gray <= 4'b0011;
            4'b0011: r_gray <= 4'b0010;
            4'b0100: r_gray <= 4'b0110;
            4'b0101: r_gray <= 4'b0111;
            4'b0110: r_gray <= 4'b0101;
            4'b0111: r_gray <= 4'b0100;
            4'b1000: r_gray <= 4'b1100;
            4'b1001: r_gray <= 4'b1101;
            4'b1010: r_gray <= 4'b1111;
            4'b1011: r_gray <= 4'b1110;
            4'b1100: r_gray <= 4'b1010;
            4'b1101: r_gray <= 4'b1011;
            4'b1110: r_gray <= 4'b1001;
            4'b1111: r_gray <= 4'b1000;
            default: ;
        endcase
    end


assign o_gray = r_gray;

endmodule

