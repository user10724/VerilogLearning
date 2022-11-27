// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sun Nov 27 22:20:36 2022
// Host        : ZHOUXXXX running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/Verilog_Learn/sim_125_distance_detect/vivado_prj_model/kt7/kt7.gen/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_17,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module mult_gen_0
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [9:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [25:0]P;

  wire [9:0]A;
  wire [15:0]B;
  wire CLK;
  wire [25:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "10" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "25" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  mult_gen_0_mult_gen_v12_0_17 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
DKwuQ0aO1o4xPWv3S7X2cQqcGZzRcHdILcDz5vFiiL+gKhHJ8EmLqT+obUmKFllosTfWWPfw6o3W
EKYijlr22e4tsyftrP5Ih1htSs5AUS9J+ITMIu7ifuRAa3P6969W8N26ZMayyL4kkcKVGKN2+V1C
EWOo+ySD86Dq4uTey7s=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aqM4G1eN04rHMaC8dEp3T/UB2ShUS+ZTZwphdITgIxVjSglVesOcBWUX4H0PsKXFPcrMSYKBM00q
St3XVkf4drCO5UvaKpQy7cUv5ibJB8r34nEZhWLbTky0zBrOBFRfq7Uwig59sqovSN1xahMIAENz
wUbvWdnMBJJkCLY1VloiJSJn0jGCKdRX2ygt8/zTJSEcHLIVqJY7ZkONI9AO4k220pXbdMC3CV5p
FZfxKmE7Vz5B7Po3n50llghcIFjWmsWPyKuUN0TII6bE/YWZtaJSc1DDuIwZ7dUkMs3znU5ZWmfX
vfA5KpFoFhQAitqrvx+XocD+ncnK5umzxfaA9Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Ype2ywNiYBXzN1iZQECBgP2i6SrYunJy26pUNb1ybpjvE9rrB8zVifRkVKzsA7TxlKrkdIbz5gf5
UoZnyozLVF40I3gSh7+ELuZZdRvRsRbEKm7E+BYUxgfCNX+6eGBskiPW7T+/a9P4HaYmvFvNrxKE
JkkXUp2ZEtgqnToxSoA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OfiaJt80KOLyjWTQXazqAPYmtf9Lhrm9yq6orR9DcIoVyic4vuIqanWgU9z9axkww4ZXeOe/rGx4
MWfhvnU/S1x0bMtHhdBEL9f0saR0/Bo9XvXu6PVfHA0qzsjOZpLSyICwVtwAMC/kDTYxHC4JXWc+
9U51kkq5kLykUj1RHUQD9C0cWNvboTZVdFT8YRi8BainccoghSTgmsQwiEfjRyCGxVxiOCJBP66J
op5bdGwwxCLVo0SSHbxtIJ+texL7T3V/AuNqWFX11SpSaKgPTuhIKuCdt7fcD558s8Kvhv2XaqWK
HXEIk0gB/0biGjMdmu77OvtqpVuoaUBA3RECtg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GAZu0sZ3H6bB1x7QA9PnZrXP5ytYTLR6AyMXzjtnNPeIuZwuMSXsJKfa8boTcLWX4PTOiRousiX+
MkSA8SyC1LklSsGtdw2dT5nkWhNTLUC2hkda3nTdLKeUdQB0uFZet1YP34ETkJvEu84qk+8ZhCf1
OFoZJE9wC6mXj9i7bWVYaDoC7dZ1vGWaA3ispjcy8cRn6rHqnemOrr3XqjhqqXSocecO6G6cPeDn
c2X7HbK5mxvNquvWm7h1rtbXLCiouuXY1dpBRkpBfwxtEbuyZCebDK1v68VlKa2IHjFrxfXUdy/m
bh2vF1gXJdYYz+bzFYNivhlihyhlNknv6gNL1Q==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TBjqZD8oi2AcKjw6iu/gXbnfB0Dbb/mLSKiruFcTjny2EE6BVUMqqkqLon3+m1WDjCEYJG8TkTBT
0uhAWnMkiynyLKt/cYDgdpRDD1iTT1Kyo1afxYrb+0xopdGNdTjZbY2WLwxQ2f1rJgdm10w4F7mf
bsKl7LuczR5UT54nAJVsXLqgc6Gg5LTU5XIsF2X63nSpNnfGv9vwxJcr/ZOO8erM05SY5xKqDI6k
Nifa3mIOziue42T9ydV5f5FzZDuoIxwC5u6XCQG5phskysXna0YHtCvTrNGaGCIRrBbXt3Zw6jYi
o3TgMMbFQzglMlfA+i+o8L3vYteDQhvvVpDjDQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PFhF3YUeMn8Z6JD0iZT2JSKLHEQ6pneGVVZDtBqANmoc80MpV5jfAs1PcO6Es+Uzo4SvwX4DuQMp
55yYLsgETICw9nBFknffC++KC5xUSO4srJpckAilF0doP4Yt+sUvqaUGGoM3X2//b5PK7kEW3sF0
CX3G98OGHzG1TINaGqHo+QoYKxdGBOelZKxsa5Vmc2Wdui7ywLa1ESp5CAh9zU6OLG5qS+9FoivM
t1wjLZgLoblCeUjFR9Zo9AsAsZf4pnPMVWhuAHVfwABicVJ/zeE8Sr/vG3iLEinLmePaZ4cRc+7c
JXbxLkJNfwTCk2q1HHnv43ImGo41GtSC8gbtRg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
F3MJyXRNsShA4O1pkfdP1+3LFymNSmMgUmD41fPmFw2FTmlNplDfy76rxe+V9euf+V0Rf204q94P
zSvQuREQI5J98HA7i0d9BFOsktiReC+6iuu6GGLpV3ibUAbcJLevD3GqNPlgMkzZbz5xehOcht6X
G26h1C+cqZ7dgydCx57tUlE+KgvHDC4+7arPkyn2/+G/t025wy4ilGgD3NcSJjnxpX6xxtW4VGxl
g+kX08/gPxUbUsZhFZ7xYz588YBwQPPNDuDwwQapBHqs8C11vFOSIJ8NovvyeceFe6ZGb5herR5/
hh5KlaW/r+XYjkzP9Rv8uNgxFp9gw5KweP/DUn4bXmZM3TzsIZpbiWcmi2GjtGD5Ufm+cpu+3t5J
kgI8ioWPUCy3GM7vVNDmqcEQifR+ujkl+pDQyQwMI0/sPx86ayNthszNF/UmL3pnuUKu0q+FiuHe
Gcp5kq2qC0nPy2PHexipzJ/sAUZT77515/TrSq8vJjPbpV8EvqAyE/tl

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GZhGCeBM6/VimBKe4YMng3rXDM/FrhYvQy96160w9zP+pTr46M3ISuLle+Zvqx1gB3Knhrgr4MsG
NP0nMs5NJxBYYEksBLNU8Wt+DIdyy32F3aN8+Dm/zppNw/UPGR7sNhcxTBEhDMOzdxLEXpVdjLe7
pQeo1ZEPTqfkqVNkzs9I2LcLxcJV0n9cBDj7dH8/Ny2q/99ExQn0lcTMRmXh4omAnaDRWL6nLoWw
ukL4BGdSYFRfqvyxm+GpqMefW39OJyAftww3pV2qR9kZk5r7p1uWWdO4dl4Cli3AjEJAfuEcySQ/
w+o+bXfXx2DKhPZ3pYjPmLeTXOdw6Kz23NzY5A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lQ+VH8k8zhqIpveB0/n0hnVGZ+hF03Ac4fS915Yj6UwaNK2mIGEPThxqGXC8gnVjDNncgKzwFYS1
2ckfoZ4YUTpJNieA6ctBjvmTY1G7Y76li8GRZjKJ2uWSP5sq6bGlM/Zodfz01C3ua02uhXMZuCJw
O94dloGA2KSRL7cCplvqRDA0YY8UXHxwLWHBPnEmkDkWEc529ar4+hfrDZo2ts9jacwXW/ZSEC05
SBQwXzNCC0rXHNty0QANCiBjGeAkgXf1TycmxomrA5itKDOQd6lfx4Co/szzCkxfvWlaT7Diu8en
/GMAmkJPFwDkS+Tetzvh/Az0dqudq2sOV3aQsg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QoqAIHwuHHSbmX8GqDz4svTCCS4oZCP53DA1tWFpmhEKpkCAWdh9NfOyRYKzUl/QTVOnJQIBGcqS
2V5pmm7JXYxvHVNdTW5B9kk8hicbQCfsLGXY9J3F0HE/6bxSe7nn6nhqz94OV+e0yjKt8rR1iuij
5aeEvlbiu6dAvjnZ1Ihi8+yqN7NZMlF0QMTNRGo+vT0ATovL+T8Fonn4eZUWLH7yuD6WqkcNvmCX
omEOCQuxrvWEZ3dUUNufQC/eQLp2Rq5/IHDsiTciU4cKRf42DW/4nJLeaQIuZ1Ct6k5EIWMiR9b0
HxYyJGM6K2RnpNOe7aFjAueVsi2Oe634/gEMVw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11104)
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
