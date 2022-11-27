/////////////////////////////////////////////////////////////////////////////
//EDA����ƽ̨��Vivado 2019.1 + ModelSim SE-64 10.5 
//�����׼��ͺţ� STAR ����FPGA�����׼�
//��   Ȩ  ��   ���� �������ɡ�����ǳ����תFPGA�����ߡ���Ȩͬѧ��ԭ����
//				������Ȩͬѧ���FPGA�����׼�ѧϰʹ�ã�лл֧��
//�ٷ��Ա����̣� http://myfpga.taobao.com/
//΢ �� �� �� �ţ���FPGA����ѧϰ��
//				��ӭ��ע����ȡ������µ�FPGAѧϰ���� 
/////////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps
module testbench_top();
	
////////////////////////////////////////////////////////////
//��������

`define CLK_PERIORD		10		//ʱ����������Ϊ10ns��100MHz��	

////////////////////////////////////////////////////////////
//�ӿ�����
	
reg clk;
reg rst_n;
reg  [3:0]   i_cnt;
wire [3:0] o_cnt1,o_cnt2;

////////////////////////////////////////////////////////////	
//�Ա����Ե���ƽ�������
	
/*	
vlg_design_ex1 U_VLG_DESIGN_EX1_0(
    .i_clk                          ( clk                           ),
    .i_rst_n                        ( rst_n                         ),
    .o_cnt1                         ( o_cnt1                        ),
    .o_cnt2                         ( o_cnt2                        )
);
*/

vlg_design_ex2 U_VLG_DESIGN_EX2_0(
    .i_clk                          ( clk                         ),
    .i_rst_n                        ( rst_n                       ),
    .i_cnt                          ( i_cnt                         ),
    .o_cnt1                         ( o_cnt1                        ),
    .o_cnt2                         ( o_cnt2                        )
);

	
////////////////////////////////////////////////////////////
//��λ��ʱ�Ӳ���

	//ʱ�Ӻ͸�λ��ʼ������λ����
initial begin
	clk <= 0;
	rst_n <= 0;
    i_cnt <= 0;
	#1000;
	rst_n <= 1;

    @(posedge clk);#2;
    i_cnt <= 4'd1;
    @(posedge clk);#2;
    i_cnt <= 4'd2;
    @(posedge clk);#2;
    i_cnt <= 4'd3;
    @(posedge clk);#2;
    i_cnt <= 4'd4;
end
	
	//ʱ�Ӳ���
always #(`CLK_PERIORD/2) clk = ~clk;	

////////////////////////////////////////////////////////////
//���Լ�������

initial begin
	@(posedge rst_n);	//�ȴ���λ���
	
    @(posedge clk);

    repeat(20*16*2) begin
        @(posedge clk);
    end

	
	$stop;
end


endmodule





