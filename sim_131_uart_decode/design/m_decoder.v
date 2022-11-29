/////////////////////////////////////////////////////////////////////////////
//EDA工具平台：Vivado 2021.2 + ModelSim SE-64 2020.4 
//开发套件型号： KINTEX7 GENESYS2 
// Author: NJU zhoutao 
/////////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps
module m_decoder
(
	input i_clk, //200MHz    5ns
	input i_rst_n,
    input i_rx_en,
    input[7:0] i_rx_data,
    output reg o_led_en,
    output reg [31:0] o_led_periord,
    output reg [31:0] o_led_high,
    output reg [15:0] o_led_num
);

//帧头
localparam DATASOF1     =   8'haa;
localparam DATASOF2     =   8'h55;
localparam DATASOF3     =   8'ha5;
localparam DATASOF4     =   8'h5a;
//帧尾
localparam DATAEOF1     =   8'hcc;
localparam DATAEOF2     =   8'h33;
localparam DATAEOF3     =   8'hc3;
localparam DATAEOF4     =   8'h3c;

//状态
localparam IDLE        = 4'd0     ;
localparam SOF1        = 4'd1     ;
localparam SOF2        = 4'd2    ;
localparam SOF3        = 4'd3    ;
localparam RXDB        = 4'd4    ;
localparam EOF1        = 4'd5    ;
localparam EOF2        = 4'd6    ;
localparam EOF3        = 4'd7    ;
localparam EOF4        = 4'd8    ;
localparam DONE        = 4'd9    ;

reg [3:0] r_cstate,r_nstate;
reg [3:0] r_bytecnt;

///////////////////////////////////
//时序逻辑状态切换

always @(posedge i_clk)
    if(!i_rst_n) r_cstate <= IDLE;
    else r_cstate <= r_nstate;
///////////////////////
//组合逻辑

always @(*) begin
    case(r_cstate)
        IDLE:begin
            if(i_rx_en) begin
                if(i_rx_data == DATASOF1) r_nstate = SOF1;
                else r_nstate = IDLE;
            end
            else r_nstate = IDLE;
        end
        SOF1:begin
            if(i_rx_en) begin
                if(i_rx_data == DATASOF2) r_nstate = SOF2;
                else r_nstate = IDLE;
                
            end
            else r_nstate = SOF1;
        end
        SOF2:begin
            if(i_rx_en) begin
                if(i_rx_data == DATASOF3) r_nstate = SOF3;
                else r_nstate = IDLE;

            end
            else r_nstate = SOF2;
        end
        SOF3:begin
            if(i_rx_en) begin
                if(i_rx_data == DATASOF4) r_nstate = RXDB;
                else r_nstate = IDLE;
            end
            else r_nstate = SOF3;
        end
        RXDB:begin
            if(i_rx_en) begin
                if(r_bytecnt >= 4'd9) r_nstate = EOF1;
                else r_nstate = RXDB;
            end
            else r_nstate = RXDB;
        end
        EOF1:begin
            if(i_rx_en) begin
                if(i_rx_data == DATAEOF1) r_nstate = EOF2;
                else r_nstate = IDLE;
            end
            else r_nstate = EOF1;
        end
        EOF2:begin
            if(i_rx_en) begin
                if(i_rx_data == DATAEOF2) r_nstate = EOF3;
                else r_nstate = IDLE;
            end
            else r_nstate = EOF2;
        end
        EOF3:begin
            if(i_rx_en) begin
                if(i_rx_data == DATAEOF3) r_nstate = EOF4;
                else r_nstate = IDLE;

            end
            else r_nstate = EOF3;
        end
        EOF4:begin
            if(i_rx_en) begin
                if(i_rx_data == DATAEOF4) r_nstate = DONE;
                else r_nstate = IDLE;

            end
            else r_nstate = EOF4;
        end
        DONE: r_nstate = IDLE;
        default: ;
    endcase
end

/////////////////////////////////////////////
//对10个有效数据字节进行计数


always @(posedge i_clk)
    if(r_cstate == RXDB)begin
        if(i_rx_en) r_bytecnt <= r_bytecnt+1;
        else ;
    end
    else r_bytecnt <= 'b0;

//////////////////////////////////////////////
//对有效数据进行锁存(采集)
always @(posedge i_clk)
    if((r_cstate ==RXDB) && i_rx_en)begin
        case(r_bytecnt)
            4'd0: o_led_periord[31:24] <= i_rx_data;
            4'd1: o_led_periord[23:16] <= i_rx_data;
            4'd2: o_led_periord[15:8] <= i_rx_data;
            4'd3: o_led_periord[7:0] <= i_rx_data;

            4'd4:o_led_high[31:24] <=i_rx_data;
            4'd5:o_led_high[23:16] <=i_rx_data;
            4'd6:o_led_high[15:8] <=i_rx_data;
            4'd7:o_led_high[7:0] <=i_rx_data;

            4'd8:o_led_num[15:8] <=i_rx_data;
            4'd9:o_led_num[7:0]  <=i_rx_data;
            default: ;
        endcase
    end

//////////////////////////////////////
//有效数据使能信号产生


always @(posedge i_clk)
    if(!i_rst_n) o_led_en <= 'b0;
    else if(r_cstate == DONE) o_led_en <= 'b1;
    else o_led_en <= 'b0;







endmodule

