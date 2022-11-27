
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
reg i_en    ;
reg [31:0]    i_period;       //周期， 单位5ns
reg [31:0]    i_high;         //高电平时间    单位5ns
reg [15:0]    i_times;        //次数
wire o_pwm;
////////////////////////////////////////////////////////////	
//对被测试的设计进行例化
	
	

vlg_design U_VLG_DESIGN_0(
    .i_clk_p                        ( i_clk_p                       ),
    .i_clk_n                        ( i_clk_n                       ),
    .i_rst_n                        ( i_rst_n                       ),
    .i_en                           ( i_en                          ),
    .i_period                       ( i_period                      ),
    .i_high                         ( i_high                        ),
    .i_times                        ( i_times                       ),
    .o_pwm                          ( o_pwm                         )
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

    i_en        <=1'b0;
    i_period    <= 32'd0;       //周期， 单位5ns
    i_high      <= 32'd0;    //高电平时间    单位5ns
    i_times     <= 32'd0;   //次数
	@(posedge i_rst_n);	//等待复位完成
    #1000;
    @(posedge i_clk_p);
    
    task_pwm_setting(2500,250,3);

    #100_000;
    task_pwm_setting(1000,500,5);
   
    #10_000;
	
	$stop;
end

task task_pwm_setting;
    input[31:0] pwm_period;
    input[31:0] pwm_high;
    input[15:0] pwm_times;
    begin
        @(posedge i_clk_p);
        i_en <= 1'b1;

        i_period <= pwm_period;
        i_high  <= pwm_high;
        i_times <= pwm_times;

        #(pwm_period*pwm_times*`CLK_PERIORD);
        @(posedge i_clk_p);
        i_en    <= 1'b0;
    end
endtask


endmodule






