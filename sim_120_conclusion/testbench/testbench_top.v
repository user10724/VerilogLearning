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
module testbench_top();
reg a= 0;
reg b =0;
reg clk =0;

initial begin
    #100;
    a=1;

end


initial begin
    #50;
    b=1;
    #100;
    $stop;
end



always    #10 clk = ~ clk;

initial begin
    #10;
    $display("%0tps",$time);
    #5.481;
    $display("%0tps",$time);
    #10.58289;
    $display("%0fns",$realtime);
    $display("%0tps",$time);
    #10;
    $display("%0tps",$time);

end

endmodule






