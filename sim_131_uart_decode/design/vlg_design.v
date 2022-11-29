/////////////////////////////////////////////////////////////////////////////
//EDA工具平台：Vivado 2021.2 + ModelSim SE-64 2020.4 
//开发套件型号： KINTEX7 GENESYS2 
// Author: NJU zhoutao 
/////////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps
module vlg_design(
	input i_clk_p, //200MHz    5ns
    input i_clk_n,
	input i_rst_n,
    input i_uart_rx,
    output o_pwm
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
`define CLK_PERIORD		5		//时钟周期设置为5ns（200MHz）	
parameter UART_BPS_RATE = 115200;       //串口波特率

////////////////////////////////////////////////////////////
//接口申明
wire w_bps_en;
wire w_bps_done;
wire w_rx_en;
wire [7:0] w_rx_data;

wire w_led_en;
wire [31:0] w_led_periord;
wire [31:0] w_led_high;
wire [15:0] w_led_num;

///////////////////////////////////
//例化 串口波特率控制模块

m_bps #(
    .UART_BPS_RATE                  ( UART_BPS_RATE                        ),
    .CLK_PERIORD                    ( `CLK_PERIORD                             ))
U_M_BPS_0(
    .i_clk                          ( i_clk                         ),
    .i_rst_n                        ( i_rst_n                       ),
    .i_bps_en                       ( w_bps_en                      ),
    .o_bps_done                     ( w_bps_done                    )
);

/////////////////////////////////
//串口数据串并转换模块
m_s2p U_M_S2P_0(
    .i_clk                          ( i_clk                         ),
    .i_rst_n                        ( i_rst_n                       ),
    .i_uart_rx                      ( i_uart_rx                     ),
    .i_bps_done                     ( w_bps_done                    ),
    .o_bps_en                       ( w_bps_en                      ),
    .o_rx_en                        ( w_rx_en                       ),
    .o_rx_data                      ( w_rx_data                     )
);

/////////////////////////////////
//串口指令帧解码模块

m_decoder U_M_DECODER_0(
    .i_clk                          ( i_clk                         ),
    .i_rst_n                        ( i_rst_n                       ),
    .i_rx_en                        ( w_rx_en                       ),
    .i_rx_data                      ( w_rx_data                     ),
    .o_led_en                       ( w_led_en                      ),
    .o_led_periord                  ( w_led_periord                 ),
    .o_led_high                     ( w_led_high                    ),
    .o_led_num                      ( w_led_num                     )
);

///////////////////////////////
//////////////////////////////////////////////////////////////	
//对PWM led 例化
	
	

m_led U_M_LED_0(
    .i_clk_p                        ( i_clk                       ),
   // .i_clk_n                        ( i_clk_n                       ),
    .i_rst_n                        ( i_rst_n                       ),
    .i_en                           ( w_led_en                          ),
    .i_period                       ( w_led_periord                     ),
    .i_high                         ( w_led_high                        ),
    .i_times                        ( w_led_num                       ),
    .o_pwm                          ( o_pwm                         )
);




endmodule

