// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Thu Sep  3 15:48:07 2020
// Host        : Shears running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/flibano/vivado/vivado/NON_PROJECT_MODE/systolic_14x14_ip/systolic_14x14_ip/systolic_14x14_ip.srcs/sources_1/bd/import_me/ip/dsp_macro_xbip_dsp48_macro_0_0/dsp_macro_xbip_dsp48_macro_0_0_sim_netlist.v
// Design      : dsp_macro_xbip_dsp48_macro_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-3-e-es2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_xbip_dsp48_macro_0_0,xbip_dsp48_macro_v3_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_16,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module dsp_macro_xbip_dsp48_macro_0_0
   (CLK,
    SCLR,
    A,
    B,
    D,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN dsp_macro_CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [24:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 d_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME d_intf, LAYERED_METADATA undef" *) input [24:0]D;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency width format long minimum {} maximum {}} value 43} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}} DATA_WIDTH 43}" *) output [42:0]P;

  wire [24:0]A;
  wire [17:0]B;
  wire CLK;
  wire [24:0]D;
  wire [42:0]P;
  wire SCLR;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "25" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "25" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "-1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100001000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "42" *) 
  (* C_REG_CONFIG = "00000000000011010011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dsp_macro_xbip_dsp48_macro_0_0_xbip_dsp48_macro_v3_0_16 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D(D),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule

(* C_A_WIDTH = "25" *) (* C_B_WIDTH = "18" *) (* C_CONCAT_WIDTH = "48" *) 
(* C_CONSTANT_1 = "1" *) (* C_C_WIDTH = "48" *) (* C_D_WIDTH = "25" *) 
(* C_HAS_A = "1" *) (* C_HAS_ACIN = "0" *) (* C_HAS_ACOUT = "0" *) 
(* C_HAS_B = "1" *) (* C_HAS_BCIN = "0" *) (* C_HAS_BCOUT = "0" *) 
(* C_HAS_C = "0" *) (* C_HAS_CARRYCASCIN = "0" *) (* C_HAS_CARRYCASCOUT = "0" *) 
(* C_HAS_CARRYIN = "0" *) (* C_HAS_CARRYOUT = "0" *) (* C_HAS_CE = "0" *) 
(* C_HAS_CEA = "0" *) (* C_HAS_CEB = "0" *) (* C_HAS_CEC = "0" *) 
(* C_HAS_CECONCAT = "0" *) (* C_HAS_CED = "0" *) (* C_HAS_CEM = "0" *) 
(* C_HAS_CEP = "0" *) (* C_HAS_CESEL = "0" *) (* C_HAS_CONCAT = "0" *) 
(* C_HAS_D = "1" *) (* C_HAS_INDEP_CE = "0" *) (* C_HAS_INDEP_SCLR = "0" *) 
(* C_HAS_PCIN = "0" *) (* C_HAS_PCOUT = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SCLRA = "0" *) (* C_HAS_SCLRB = "0" *) (* C_HAS_SCLRC = "0" *) 
(* C_HAS_SCLRCONCAT = "0" *) (* C_HAS_SCLRD = "0" *) (* C_HAS_SCLRM = "0" *) 
(* C_HAS_SCLRP = "0" *) (* C_HAS_SCLRSEL = "0" *) (* C_LATENCY = "-1" *) 
(* C_MODEL_TYPE = "0" *) (* C_OPMODES = "000100100000010100001000" *) (* C_P_LSB = "0" *) 
(* C_P_MSB = "42" *) (* C_REG_CONFIG = "00000000000011010011000001000100" *) (* C_SEL_WIDTH = "0" *) 
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynquplus" *) 
(* ORIG_REF_NAME = "xbip_dsp48_macro_v3_0_16" *) (* downgradeipidentifiedwarnings = "yes" *) 
module dsp_macro_xbip_dsp48_macro_0_0_xbip_dsp48_macro_v3_0_16
   (CLK,
    CE,
    SCLR,
    SEL,
    CARRYCASCIN,
    CARRYIN,
    PCIN,
    ACIN,
    BCIN,
    A,
    B,
    C,
    D,
    CONCAT,
    ACOUT,
    BCOUT,
    CARRYOUT,
    CARRYCASCOUT,
    PCOUT,
    P,
    CED,
    CED1,
    CED2,
    CED3,
    CEA,
    CEA1,
    CEA2,
    CEA3,
    CEA4,
    CEB,
    CEB1,
    CEB2,
    CEB3,
    CEB4,
    CECONCAT,
    CECONCAT3,
    CECONCAT4,
    CECONCAT5,
    CEC,
    CEC1,
    CEC2,
    CEC3,
    CEC4,
    CEC5,
    CEM,
    CEP,
    CESEL,
    CESEL1,
    CESEL2,
    CESEL3,
    CESEL4,
    CESEL5,
    SCLRD,
    SCLRA,
    SCLRB,
    SCLRCONCAT,
    SCLRC,
    SCLRM,
    SCLRP,
    SCLRSEL);
  input CLK;
  input CE;
  input SCLR;
  input [0:0]SEL;
  input CARRYCASCIN;
  input CARRYIN;
  input [47:0]PCIN;
  input [29:0]ACIN;
  input [17:0]BCIN;
  input [24:0]A;
  input [17:0]B;
  input [47:0]C;
  input [24:0]D;
  input [47:0]CONCAT;
  output [29:0]ACOUT;
  output [17:0]BCOUT;
  output CARRYOUT;
  output CARRYCASCOUT;
  output [47:0]PCOUT;
  output [42:0]P;
  input CED;
  input CED1;
  input CED2;
  input CED3;
  input CEA;
  input CEA1;
  input CEA2;
  input CEA3;
  input CEA4;
  input CEB;
  input CEB1;
  input CEB2;
  input CEB3;
  input CEB4;
  input CECONCAT;
  input CECONCAT3;
  input CECONCAT4;
  input CECONCAT5;
  input CEC;
  input CEC1;
  input CEC2;
  input CEC3;
  input CEC4;
  input CEC5;
  input CEM;
  input CEP;
  input CESEL;
  input CESEL1;
  input CESEL2;
  input CESEL3;
  input CESEL4;
  input CESEL5;
  input SCLRD;
  input SCLRA;
  input SCLRB;
  input SCLRCONCAT;
  input SCLRC;
  input SCLRM;
  input SCLRP;
  input SCLRSEL;

  wire [24:0]A;
  wire [29:0]ACIN;
  wire [29:0]ACOUT;
  wire [17:0]B;
  wire [17:0]BCIN;
  wire [17:0]BCOUT;
  wire CARRYCASCIN;
  wire CARRYCASCOUT;
  wire CARRYIN;
  wire CARRYOUT;
  wire CLK;
  wire [24:0]D;
  wire [42:0]P;
  wire [47:0]PCIN;
  wire [47:0]PCOUT;
  wire SCLR;

  (* C_A_WIDTH = "25" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "25" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "-1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000100100000010100001000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "42" *) 
  (* C_REG_CONFIG = "00000000000011010011000001000100" *) 
  (* C_SEL_WIDTH = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  dsp_macro_xbip_dsp48_macro_0_0_xbip_dsp48_macro_v3_0_16_viv i_synth
       (.A(A),
        .ACIN(ACIN),
        .ACOUT(ACOUT),
        .B(B),
        .BCIN(BCIN),
        .BCOUT(BCOUT),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(CARRYCASCIN),
        .CARRYCASCOUT(CARRYCASCOUT),
        .CARRYIN(CARRYIN),
        .CARRYOUT(CARRYOUT),
        .CE(1'b0),
        .CEA(1'b0),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEA3(1'b0),
        .CEA4(1'b0),
        .CEB(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEB3(1'b0),
        .CEB4(1'b0),
        .CEC(1'b0),
        .CEC1(1'b0),
        .CEC2(1'b0),
        .CEC3(1'b0),
        .CEC4(1'b0),
        .CEC5(1'b0),
        .CECONCAT(1'b0),
        .CECONCAT3(1'b0),
        .CECONCAT4(1'b0),
        .CECONCAT5(1'b0),
        .CED(1'b0),
        .CED1(1'b0),
        .CED2(1'b0),
        .CED3(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CESEL(1'b0),
        .CESEL1(1'b0),
        .CESEL2(1'b0),
        .CESEL3(1'b0),
        .CESEL4(1'b0),
        .CESEL5(1'b0),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D(D),
        .P(P),
        .PCIN(PCIN),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
eXLekaf75ti+4/KsymzULXz5oAVLFk8Gyt04ecmjgdcncfRtXhJiOnHdtUin/mnzHVOHKb2xw8pI
uJb6sYCeGQ==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
BkNI+/boD/MiJaVq4b9JNlguFR/nrO0yPwyATYiWCbZhEACCZlbA0BozqIHRVLhpn+svUysa1kP/
eIbVP3hSYf9Gx4xfMK8vw4T5doS3Wh0r3tnlSQ/wOV20uFrfqlPtuabFlcgrNFEg3w6ngaiLyRCC
zlREFWcxjmjqKL4B0Mw=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pGK9qQvehhEvErzSMUPB04UVVkE94epOG0uZA/7tMT2kqsaLV2YRqmW0xo347n3SYA/eNF30kvGd
2v169ZPU9U+ghcefgrOTIG/0WoeiDiBJvglmiQ3UaeofxOLXxJCA11dxWxuRKGIcvnUxKv7l5qor
coo0gmnDXFgfng3sFu1XB8DIEjph5whwXganiWwh35tW2vljw5e5VWr0NUkDCFPHQqwTPfuLLSTY
EVIlNRX3X+0qkCLb6F6LKvdU/xsDkXtNI3jV99atQ1BHNsSRJgAS+9dQs2hwZ9WnyH3OYSbiwj8n
CT9IYsL+mHlE5tUacsw1s8UoMn4DGNZxCobIJg==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rgDaV4/mhsnos5RFqNRIj4sj11Jf1a3m8YjiIU5cK9EtlwMdJCgssm0aIN5i8CxsXn72kepYcg8X
j5DhRFEKbsK+wjVxTbrFNMpgwHXQAjvmsZnn+HuC6ZP5+eK0aTmGEDzQN1+IyHAqrMBIi1y2CJZP
utmopTNrD1IorfWY0HkHbZPK/FYW03e0IDrwmDxdTxygPK1ef14uRc5XgbMDH6aHsz4lizY3mnqF
7zQj55G/mQV0zODFs7O4Lz1kvXI7zSy/y2bN71nIDsrmSkDiJ55CxhURxc7qfThhlir0NAd5l2ya
iGyxe6L5fo/NBXnefVFkWcHHcZXJuCfsY/gKvg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bbm+Bhk0wBaFjFA9Ea11gJ7vMup06mFvo96KGxhbqN3zPDugDFuQv08KjoMp8V+rQC8s/o38FQhx
8Mw+TbWN3glC/HEfcfr+0ozgp5344o93hsiR3+MMKXhx5tu5oQVo4BpmPH6rmVlEtPVdDlgol7F8
9hjg9IhJBwRbYgKuy/Ms/k2ex23of35a1Ovpjj41z9RSp/Bon6ZNxfWeqgKq7RivVGU77w8zR0ti
PBCvjBBF2+vPvWj6g57/RuceCw+BwG8dIMbmwtCz0Y8JVD0uYVKgvcMVUr/Lg5uDUHPlFSRNbJgv
duAbv5dxQq0b5LfuR/YMNz8EZGgBfq7DnSqinw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
rN6p2yPlgLWyn9/t3wZUjPzr6Y6bUzmHiPwkg+XDW5hEhsHw5w3Lp51pJNUJVDiqw+t/HwWW3lY9
4goQArkKjN/4p++LpVanpS7CNtHdOHBd7a5WXKqTlNBbmKLF8yq889d8PC7MCadre0FVBNA7dfoB
KOJoWnAbUFUbCir8o6M=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Br53BAhOJATkKjg2iPNqGoGKK4u590bUn26AaoQALXJEfUkCMI57obgv/a9IRyf+IuzYeDIYp38W
+Fq9elQqoe7uj+NQp4lmRHPS57EZreTi/rxOAq+OXOJn7dvBRTPhH+UEYbyxdTpZibHYVECka85P
hAPc+XzXsDPnoNa6HXuUchScM60H3bfzxvgYesGd7SPtHCikV/d8Y9jQ794xqBwRWKoNOhMZUB8D
h674MCTcGJO2unqZsQya6GGK98IPAEscAOhuNr1X+gkTYrp3jJi82QCDvuJFhMt0NWAskmtuFIvs
ymumLguDevG/3o+HKdfbAOSBU3zUrqwVITxO/Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iZ/TjCcKRZGtsui+cZvsyBJEurxXMy/nPE9KGVZ/5ayLKCxFLn7dp+VAYKXzhUeDO81gimekwsX0
1mSbBsIteUEmFO57iH9LmoNFM4qUI9pxqhdaJeVQGVBZf0gfMbrmgm3coeg8AmcY4psz/XHk3ul+
lamP3HAlauDHogmtnvVxhO22NExW6O1sdyoTTrP+O2nP1bi0vPU6WF+6ZMxsHB8j6CfyhY5N2pqg
fKv9B7k4R72xP+Vr1yuFhkx4i31Wx94XuG97S/NunZlmnGTCvfs77rO1NN3WGmcYeQ4V1jPDetmw
wgWOvD+SWvbWuxc05WZAF0TOBBQF1r1sHefN+g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
x7Ldq2j/oV8whEzPEXb7jNeoqZMt0rX45/zKWtghRIcmyi+SMyWBqs4/8nx5aIvvaUGV+wne4DZU
asvHfw5fQ+JE6wharwPI3Ab0AOc4xrZ3NXFdq+D5HD058KJMec2J9z8VSEu8oHegQ7kiamQ+Iz8Z
ZLbmqdx/af4yj92kaFInTdkV0+NooW5zsJ8sxAqN1yWvxUWGgD8wTn3HQPQDr9w2GbSPzkn4AYBw
pAsVKbxh7VdYdQNdwV3HdD6HpehdNlpDlfPg2NCuZ/IebTVK9jiiNFApToxkZAYh9oPcDJPzLYXU
1+kRmHmnTp8ztmkD/Gbr9aHwwpHuwM2B2oBu0A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31024)
`pragma protect data_block
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
T5dnJNTYaKBx9YFgKhugwg==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
