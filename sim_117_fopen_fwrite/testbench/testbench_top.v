
/////////////////////////////////////////////////////////////////////////////
//EDA工具平台：Vivado 2021.2 + ModelSim SE-64 20.4 
//开发套件型号： kintex7 genesys2
//作者: NJU zhoutao
/////////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps
module testbench_top();
	
////////////////////////////////////////////////////////////
//参数定义

`define CLK_PERIORD		5.0		//时钟周期设置为5ns（200MHz）	

parameter GRAY_MSB =    7;

////////////////////////////////////////////////////////////
//接口申明
	
reg i_clk_p;
reg i_clk_n;
reg i_rst_n;
reg i_en;
reg [GRAY_MSB:0] i_data;

wire o_vld;
wire [GRAY_MSB:0] o_gray;

////////////////////////////////////////////////////////////	
//对被测试的设计进行例化
	
	


vlg_design #(
    .MSB                            ( GRAY_MSB                      ))
U_VLG_DESIGN_0(
    .i_clk_p                        ( i_clk_p                       ),
    .i_clk_n                        ( i_clk_n                       ),
    .i_rst_n                        ( i_rst_n                       ),
    .i_en                           ( i_en                          ),
    .i_data                         ( i_data                        ),
    .o_vld                          ( o_vld                         ),
    .o_gray                         ( o_gray                        )
);



////////////////////////////////////////////////////////////
//复位和时钟产生

//时钟和复位初始化、复位产生
initial begin
	i_clk_p <= 0;
    i_clk_n <= 1;
	i_rst_n <= 0;
	#1000;
	i_rst_n <= 1;
end
	
	//时钟产生
always #(`CLK_PERIORD/2) i_clk_p <= ~i_clk_p;	

always #(`CLK_PERIORD/2) i_clk_n <= ~i_clk_n;
////////////////////////////////////////////////////////////
//测试激励产生

initial begin

    i_en <='b0;
    i_data <= 'b0;
    $display("The value of GRAY_MSB is %0d",GRAY_MSB);
	@(posedge i_rst_n);	//等待复位完成
    
    @(posedge i_clk_p);
    
    i_en <= 'b1;
    i_data <= 'b0;
    
    
    repeat(2**(GRAY_MSB+1)-1) begin
        @(posedge i_clk_p);
        i_en <='b1;
        i_data <= i_data + 1;
    end

    @(posedge i_clk_p);
    i_en <= 'b0;

	#100;
    $fclose(wfile);
	
	$stop;
end

integer wfile;

initial begin
    wfile = $fopen("F:/Verilog_Learn/sim_117_fopen_fwrite/testbench/output_file/result_data.txt","w");
end

always @(posedge i_clk_p) begin
    if(o_vld) $fwrite(wfile ,"%b\n",o_gray);
end

endmodule






