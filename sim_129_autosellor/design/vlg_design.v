/////////////////////////////////////////////////////////////////////////////
//EDA工具平台：Vivado 2021.2 + ModelSim SE-64 2020.4 
//开发套件型号： KINTEX7 GENESYS2 
// Author: NJU zhoutao 



/////////////////////////////////////////////////////////////////////////////
//
//遇到的问题： 差分时钟时 @(*) 状态机仿真问题很大 
//目前不知道如何解决，先用单端时钟
`timescale 1ns/1ps
module vlg_design(
	input i_clk_p, //200MHz    5ns
	input i_rst_n,
    input i_1yuan,
    input i_2yuan,
    input i_5yuan,
    output reg o_done
    );

//////////////////////////////////////////
//参数和变量的声明
localparam  IDLE =8'b00000001,
            IN_1 =8'b00000010,
            IN_2 =8'b00000100,
            IN_3 =8'b00001000,
            IN_4 =8'b00010000,
            IN_5 =8'b00100000,
            IN_6 =8'b01000000,
            DONE =8'b10000000;

localparam  MONEY_PAY   = 4'd6;

reg [7:0] cstate,nstate;
reg [3:0] money_sum;
//////////////////////////////
//时序逻辑，锁存状态

always @(posedge i_clk_p)
    if(!i_rst_n) cstate <= IDLE;
    else cstate <= nstate;

//////////////////////////////
//组合逻辑实现状态变迁
/*
always @(*) begin
	case(cstate)
		IDLE: begin
			if(i_1yuan || i_2yuan || i_5yuan) nstate <= IN_1;
			else nstate <= IDLE;
		end
		IN_1: begin
			if(i_1yuan || i_2yuan || i_5yuan) nstate <= IN_2;
			else nstate <= IN_1;
		end		
		IN_2: begin
			if(money_sum >= MONEY_PAY) nstate <= DONE;
			else if(i_1yuan || i_2yuan || i_5yuan) nstate <= IN_3;
			else nstate <= IN_2;
		end
		IN_3: begin
			if(money_sum >= MONEY_PAY) nstate <= DONE;
			else if(i_1yuan || i_2yuan || i_5yuan) nstate <= IN_4;
			else nstate <= IN_3;
		end
		IN_4: begin
			if(money_sum >= MONEY_PAY) nstate <= DONE;
			else if(i_1yuan || i_2yuan || i_5yuan) nstate <= IN_5;
			else nstate <= IN_4;
		end
		IN_5: begin
			if(money_sum >= MONEY_PAY) nstate <= DONE;
			else if(i_1yuan || i_2yuan || i_5yuan) nstate <= IN_6;
			else nstate = IN_5;
		end
		IN_6: begin
			if(money_sum >= MONEY_PAY) nstate <= DONE;
			else if(i_1yuan || i_2yuan || i_5yuan) nstate <= DONE;
			else nstate <= IN_6;
		end
		DONE: nstate <= IDLE;
		default: ;
	endcase
end
*/


always @(*) begin
    case(cstate)
        IDLE: begin
            if(i_1yuan || i_2yuan || i_5yuan) nstate = IN_1;
            else nstate = IDLE;
        end

        IN_1: begin
            if(i_1yuan || i_2yuan || i_5yuan) nstate = IN_2;
            else nstate = IN_1;
        end
        
        IN_2: begin
            if(money_sum >= MONEY_PAY) nstate = DONE;
            else if(i_1yuan || i_2yuan || i_5yuan) nstate = IN_3;
            else nstate = IN_2;
        end
        IN_3: begin
            if(money_sum >= MONEY_PAY) nstate = DONE;
            if(i_1yuan || i_2yuan || i_5yuan) nstate = IN_4;
            else nstate = IN_3;
        end
        IN_4: begin
            if(money_sum >=MONEY_PAY) nstate = DONE;
            if(i_1yuan || i_2yuan || i_5yuan) nstate = IN_5;
            else nstate = IN_4;
        end
        IN_5: begin
            if(money_sum >=MONEY_PAY) nstate = DONE;
            if(i_1yuan || i_2yuan || i_5yuan) nstate = IN_6;
            else nstate = IN_5;
        end
        IN_6: begin
            if(money_sum >=MONEY_PAY) nstate = DONE;
            if(i_1yuan || i_2yuan || i_5yuan) nstate = DONE;
            else nstate = IN_6;
        end
        DONE: nstate =IDLE;
        default: ;
    endcase
end
//////////////////////////////////////////////
//当前状态输入钱币的累加计算

always @(posedge i_clk_p)	
	if(!i_rst_n) money_sum <= 'b0;
	else begin
		case(cstate)
			DONE: money_sum <= 'b0;
			default: begin
				if(i_1yuan) money_sum <= money_sum+1;
				else if(i_2yuan) money_sum <= money_sum+2;
				else if(i_5yuan) money_sum <= money_sum+5;
				else ;
			end
		endcase
	end

    /*
always @(posedge i_clk)
    if(!i_rst_n) money_sum <= 'b0;
    else begin
        case(cstate)
            DONE: money_sum <= 'b0;
            default: begin
                if(i_1yuan) money_sum <= money_sum + 4'd1;
                else if(i_2yuan) money_sum <= money_sum + 4'd2;
                else if(i_5yuan) money_sum <= money_sum + 4'd5;
                else ;
            end
        endcase
    end

    */

/////////////////////
//状态机的输出赋值

/*
always @(posedge i_clk)
    if(!i_rst_n) o_done <= 'b0;
    else if(cstate == DONE) o_done <= 'b1;
    else o_done <= 'b0;

*/

always @(posedge i_clk_p)	
	if(!i_rst_n) o_done <= 'b0;
	else if(cstate == DONE) o_done <= 'b1;
	else o_done <= 'b0;

endmodule

