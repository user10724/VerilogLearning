// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sat Nov 26 15:04:59 2022
// Host        : ZHOUXXXX running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18064)
`pragma protect data_block
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
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
