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
	input i_clk,
	input i_rst_n,
	input [3:0] i_pulse,
    input i_en,
	output [15:0] o_pulse_cnt0,o_pulse_cnt1,o_pulse_cnt2,o_pulse_cnt3
    );



pulse_counter U_PULSE_COUNTER_0(
    .i_clk                          ( i_clk                         ),
    .i_rst_n                        ( i_rst_n                       ),
    .i_pulse                        ( i_pulse[0]                       ),
    .i_en                           ( i_en                          ),
    .o_pulse_cnt                    ( o_pulse_cnt0                   )
);


pulse_counter U_PULSE_COUNTER_1(
    .i_clk                          ( i_clk                         ),
    .i_rst_n                        ( i_rst_n                       ),
    .i_pulse                        ( i_pulse[1]                       ),
    .i_en                           ( i_en                          ),
    .o_pulse_cnt                    ( o_pulse_cnt1                   )
);

pulse_counter U_PULSE_COUNTER_2(
    .i_clk                          ( i_clk                         ),
    .i_rst_n                        ( i_rst_n                       ),
    .i_pulse                        ( i_pulse[2]                       ),
    .i_en                           ( i_en                          ),
    .o_pulse_cnt                    ( o_pulse_cnt2                   )
);

pulse_counter U_PULSE_COUNTER_3(
    .i_clk                          ( i_clk                         ),
    .i_rst_n                        ( i_rst_n                       ),
    .i_pulse                        ( i_pulse[3]                       ),
    .i_en                           ( i_en                          ),
    .o_pulse_cnt                    ( o_pulse_cnt3                   )
);

endmodule

