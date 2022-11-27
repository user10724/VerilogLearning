// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sat Nov 26 15:05:00 2022
// Host        : ZHOUXXXX running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/Verilog_Learn/sim_115_sin_wave/vivado_prj_115/kt7/kt7.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [15:0]douta;
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
  wire [15:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [15:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.3548 mW" *) 
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
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "16" *) 
  (* C_READ_WIDTH_B = "16" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "16" *) 
  (* C_WRITE_WIDTH_B = "16" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[15:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[15:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18032)
`pragma protect data_block
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
u/JgmbnpI6STwHLK8uSNgej1r2c=
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
