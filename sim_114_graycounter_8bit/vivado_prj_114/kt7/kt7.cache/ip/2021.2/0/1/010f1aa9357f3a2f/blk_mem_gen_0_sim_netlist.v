// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Nov 25 23:33:20 2022
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19936)
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
