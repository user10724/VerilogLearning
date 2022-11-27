// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Nov 25 23:33:20 2022
// Host        : ZHOUXXXX running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/Verilog_Learn/sim_114_graycounter_8bit/vivado_prj_114/kt7/kt7.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [7:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.3768 mW" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19904)
`pragma protect data_block
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
39lgraDAufOxtMM=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
