
/////////////////////////////////////////////////////////////////////////////
//EDA工具平台：Vivado 2021.2 + ModelSim SE-64 20.4 
//开发套件型号： kintex7 genesys2
//作者: NJU zhoutao
/////////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps
module testbench_top();
	
////////////////////////////////////////////////////////////
//参数定义

`define CLK_PERIORD		10		//时钟周期设置为5ns（200MHz）	

////////////////////////////////////////////////////////////
//接口申明
	
reg i_clk_p;
reg i_clk_n;
reg i_rst_n;

reg i_1yuan;
reg i_2yuan;
reg i_5yuan;
wire o_done;
////////////////////////////////////////////////////////////	
//对被测试的设计进行例化
	


vlg_design U_VLG_DESIGN_0(
    .i_clk_p                        ( i_clk_p                       ),

    .i_rst_n                        ( i_rst_n                       ),
    .i_1yuan                        ( i_1yuan                       ),
    .i_2yuan                        ( i_2yuan                       ),
    .i_5yuan                        ( i_5yuan                       ),
    .o_done                         ( o_done                        )
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
integer i;

initial begin
    i_1yuan = 0;
    i_2yuan = 0;
    i_5yuan = 0;
	@(posedge i_rst_n);	//等待复位完成
    #100; 
    @(posedge i_clk_p);
    for(i=0;i<20;i=i+1)begin
        task_random_pay();
    end
    #5000;
		
	$stop;
end

integer random_data;

task task_random_pay;
    begin
        #1000;
        random_data ={$random}%3;
        @(posedge i_clk_p);
        if(random_data ==0) i_1yuan <= 1'b1;
        else if(random_data ==1) i_2yuan <= 1'b1;
        else if(random_data ==2) i_5yuan <= 1'b1;
        else ;
        @(posedge i_clk_p);
        i_1yuan <= 0;
        i_2yuan <= 0;
        i_5yuan <= 0;
    end
endtask

always @(posedge i_clk_p) begin
    if(i_1yuan) $display("Pay 1 yuan.");
    else if(i_2yuan) $display("Pay 2 yuan.");
    else if(i_5yuan) $display("Pay 5 yuan.");
    else if(o_done)  $display("Got your want.");
    else ;
end


endmodule






