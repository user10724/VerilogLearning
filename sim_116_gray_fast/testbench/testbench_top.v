
/////////////////////////////////////////////////////////////////////////////
//EDA����ƽ̨��Vivado 2021.2 + ModelSim SE-64 20.4 
//�����׼��ͺţ� kintex7 genesys2
//����: NJU zhoutao
/////////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps
module testbench_top();
	
////////////////////////////////////////////////////////////
//��������

`define CLK_PERIORD		5.0		//ʱ����������Ϊ5ns��200MHz��	

parameter GRAY_MSB =    7;

////////////////////////////////////////////////////////////
//�ӿ�����
	
reg i_clk_p;
reg i_clk_n;
reg i_rst_n;
reg i_en;
reg [GRAY_MSB:0] i_data;

wire o_vld;
wire [GRAY_MSB:0] o_gray;

////////////////////////////////////////////////////////////	
//�Ա����Ե���ƽ�������
	
	


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
//��λ��ʱ�Ӳ���

//ʱ�Ӻ͸�λ��ʼ������λ����
initial begin
	i_clk_p <= 0;
    i_clk_n <= 1;
	i_rst_n <= 0;
	#1000;
	i_rst_n <= 1;
end
	
	//ʱ�Ӳ���
always #(`CLK_PERIORD/2) i_clk_p <= ~i_clk_p;	

always #(`CLK_PERIORD/2) i_clk_n <= ~i_clk_n;
////////////////////////////////////////////////////////////
//���Լ�������

initial begin

    i_en <='b0;
    i_data <= 'b0;
    $display("The value of GRAY_MSB is %0d",GRAY_MSB);
	@(posedge i_rst_n);	//�ȴ���λ���
    
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

	
	
	$stop;
end

always @(posedge i_clk_p)
    if(o_vld) $display("%b", o_gray);
    else ;


endmodule





