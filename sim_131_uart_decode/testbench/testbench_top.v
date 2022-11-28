
/////////////////////////////////////////////////////////////////////////////
//EDA工具平台：Vivado 2021.2 + ModelSim SE-64 20.4 
//开发套件型号： kintex7 genesys2
//作者: NJU zhoutao

//遇到问题 ：时钟改成5.0ns 仿真不对 ，20ns 正确。 原因5.0不是整形

/////////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps
module testbench_top();
	
////////////////////////////////////////////////////////////
//参数定义

`define CLK_PERIORD		5		//时钟周期设置为5ns（200MHz）	
parameter UART_BPS_RATE = 115200;
parameter BPS_DLY_BIT =1_000_000_000/UART_BPS_RATE;

////////////////////////////////////////////////////////////
//接口申明
	
reg i_clk_p;
reg i_clk_n;
reg i_rst_n;

reg i_uart_rx;

wire w_bps_en;
wire w_bps_done;
wire w_rx_en;
wire [7:0] w_rx_data;

////////////////////////////////////////////////////////////	
//对被测试的设计进行例化

m_bps #(
    .UART_BPS_RATE                  ( UART_BPS_RATE                        ),
    .CLK_PERIORD                    ( `CLK_PERIORD                             ))
U_M_BPS_0(
    .i_clk                          ( i_clk_p                         ),
    .i_rst_n                        ( i_rst_n                       ),
    .i_bps_en                       ( w_bps_en                      ),
    .o_bps_done                     ( w_bps_done                    )
);


m_s2p U_M_S2P_0(
    .i_clk                          ( i_clk_p                         ),
    .i_rst_n                        ( i_rst_n                       ),
    .i_uart_rx                      ( i_uart_rx                     ),
    .i_bps_done                     ( w_bps_done                    ),
    .o_bps_en                       ( w_bps_en                      ),
    .o_rx_en                        ( w_rx_en                       ),
    .o_rx_data                      ( w_rx_data                     )
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
always #(`CLK_PERIORD/2.0) i_clk_p <= ~i_clk_p;	

always #(`CLK_PERIORD/2.0) i_clk_n <= ~i_clk_n;
////////////////////////////////////////////////////////////
//测试激励产生

initial begin

    i_uart_rx <= 'b1;

	@(posedge i_rst_n);	//等待复位完成
    
    @(posedge i_clk_p);

    #100_000;
    task_uart_tx(8'haa);
	
    #100_000;
    task_uart_tx(8'h55);
    #100_000;
    task_uart_tx(8'ha5);
    #100_000;
    task_uart_tx(8'h5a);
    #100_000;
	$stop;
end


///////////
//模拟一次UART传输的任务
integer i;
        




task task_uart_tx;
    input [7:0] tx_db;
    begin
        i_uart_rx <= 'b0;
        #BPS_DLY_BIT;
        for(i=0;i<8;i=i+1)begin
            i_uart_rx <= tx_db[i];
            #BPS_DLY_BIT;
        end
        i_uart_rx <= 'b1;
        #BPS_DLY_BIT;
    end
endtask


always @(posedge i_clk_p)
    if(w_rx_en) $display("w_rx_data = %x",w_rx_data);
    else ;

endmodule






