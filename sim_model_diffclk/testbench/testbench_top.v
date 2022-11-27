
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

////////////////////////////////////////////////////////////
//接口申明
	
reg i_clk_p;
reg i_clk_n;
reg i_rst_n;

////////////////////////////////////////////////////////////	
//对被测试的设计进行例化
	
	

vlg_design U_VLG_DESIGN_0(
    .i_clk_p                        ( i_clk_p                       ),
    .i_clk_n                        ( i_clk_n                       ),
    .i_rst_n                        ( i_rst_n                       )
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

	@(posedge i_rst_n);	//等待复位完成
    
    @(posedge i_clk_p);

    
    
    repeat(20*16*2) begin
        @(posedge i_clk_p);
    end


	
	
	$stop;
end


endmodule






