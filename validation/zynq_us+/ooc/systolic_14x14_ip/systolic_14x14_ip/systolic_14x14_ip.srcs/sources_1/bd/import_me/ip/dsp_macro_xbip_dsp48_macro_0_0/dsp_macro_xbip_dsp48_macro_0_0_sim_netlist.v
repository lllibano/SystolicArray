// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Mon Sep  7 15:47:03 2020
// Host        : Shears running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/flibano/vivado/vivado/NON_PROJECT_MODE/zynq_us+/systolic_14x14_ip/systolic_14x14_ip/systolic_14x14_ip.srcs/sources_1/bd/import_me/ip/dsp_macro_xbip_dsp48_macro_0_0/dsp_macro_xbip_dsp48_macro_0_0_sim_netlist.v
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
FAIu0T9X9/KYMtu6jPiqe5uZsWk5c1tXrpHRtde4tpuixoUxfibL5fSiG33Im3t5CupjgxmCz542
YmTwQxZxkc73rVzomiNPo/tm8CPdnF9LhWLcSI1VEFrbjV0sngvOM2XVlzI+bHN9hAiAE2DpK9+6
jB0Rg+GsQP1U1BMTZ163RyNWUU8eOmpFHvT/ApXHxO17bKhFuYPaJjzcCTAgtcVa+G9BscTG9VlD
frRFOcTcnbdtYNc2BrV0BaqWyteMHmntoRcciiOXMwT/uHGdeFdN/K50kxU4FmPF9FKGP/xtNLQX
J6jaXyzL8SpZF336ge6xkpregIAocJdc72qCQQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oXb99Um0Mv7mvhb5ai2rn38F4K7TMMAy6T8YhxhktmxWmfiBCwK6yelTaHqSfEBKgbf0KUR+KQVF
5ZxEpSz7J/lUNwBASRqV54lg9G2Fz9+IaSNp7A2pF9sgzSQSQR1S4cKysgzvvvaKBCZgyCD555cI
u+xD2O8GokATN6BbtZg2aoFnw8F1xujYwcwmaYjgyO4flkNlLdROq0Uc+vOP2Lt4phCAJ0eoOAsM
gZ2VTge5ZKui5/JKQk5U/KmTo2hGNva8WC42987RiZaS2NbtFA7QSWTh9vIF2CmO+KTDdOGP4NaH
UHwAD02qYtjBnE24+NtgauYIq3UDhtDUos9ixQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31024)
`pragma protect data_block
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
z6yjeUaVR1Uw2lOt+Xq9iw==
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
