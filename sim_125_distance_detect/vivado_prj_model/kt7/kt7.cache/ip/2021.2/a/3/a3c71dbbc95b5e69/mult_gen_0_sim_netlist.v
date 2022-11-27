// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sun Nov 27 22:20:36 2022
// Host        : ZHOUXXXX running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_17,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_17 U0
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
JgdRg5Gg4pO1rgH4q1qqgXdWf2HmYzQ47q8Ja0qN+wr9LCElHPtU1wbLlH/WDu3u8pwE/rGU8+ao
KiZFPMna0EROYGawCfXQ8SWHpfScqdEm0w+DWLJFz66ajWOKSFiWsLeO1fgcGKw4K44+8jd0petu
cZz20fHv91eMyTCWAXTQVoDjeQPalS00q960EkSn2KmSCeai3dYU6QmgpmZ145n2foFgjB0TX2ss
GKRe7P7NX/HhO8KMGgzQ6vFCwHN35DSziBx7jCq6D4OuJJG6h6/9NizBM7yXtDOYePfB7YPsmV8J
epWMaP46B5UntxZXR/ksTyMko5oW1EtAry0yuQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JiVVvjLp3Pwkoflja33tR+ZL3XBIXty/Y4U/5xrsJfkVIwnajFPj1LDITJ5Y+yR0Ff2dq7Jr9LVU
r/zMxFumI5fZpx1gyoJzBhTZ+AB2sBOmF6vocugOtI3mbzvkg2EWoM7otH/1uSfxf53WqIBjDydJ
cqTm9HgQP7ML4VPunWXg6tJmBMNrDSa03ukw2I63q7LLBuC2or5Hz0A6LwTssSwJ4MCCUaS9sPzU
lV/ikJw2hi/vNnzeLvaEmRAz3Z6hDgYVIYJ/aj6EdS8WZkpks882zhy8d85ry9Iv6IHx5JWkKKHe
HrHK1KTTLi7wvVznIw6vdCml0+nPLX1tzUxU+A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11136)
`pragma protect data_block
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
qVHb5U1L1LiScn2cKMfTUFkLxnr3
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
