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
reg [3:0] i_data;
wire [3:0]   o_sync_data;
wire [3:0]   o_asyn_data;
wire [3:0]  o_asyn_data2;

////////////////////////////////////////////////////////////	
//�Ա����Ե���ƽ�������
	
	

vlg_design U_VLG_DESIGN_0(
    .i_clk                          ( clk                           ),
    .i_rst_n                        ( rst_n                         ),
    .i_data                         ( i_data                        ),
    .o_sync_data                    ( o_sync_data                   ),
    .o_asyn_data                    ( o_asyn_data                   ),
    .o_asyn_data2                   ( o_asyn_data2                  )
);

////////////////////////////////////////////////////////////
//��λ��ʱ�Ӳ���

//ʱ�Ӻ͸�λ��ʼ������λ����
initial begin
	clk <= 0;
	rst_n <= 0;
	#1000;
	rst_n <= 1;
    repeat(10) begin @(posedge clk); end
    #4;
    rst_n <= 0;
    repeat(10) begin @(posedge clk); end
    rst_n <= 1;
end
	
	//ʱ�Ӳ���
always #(`CLK_PERIORD/2) clk = ~clk;	

////////////////////////////////////////////////////////////
//���Լ�������

initial begin
    i_data  <= 4'd1111;
	@(posedge rst_n);	//�ȴ���λ���
    
    @(posedge clk);

    
    
    repeat(20*16*2) begin
        @(posedge clk);
    end


	
	
	$stop;
end


endmodule





