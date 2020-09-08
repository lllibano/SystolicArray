// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Mon Sep  7 19:03:10 2020
// Host        : linux running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/libano/vivado/NON_PROJECT/zynq_7000/systolic_14x14_ip/systolic_14x14_ip/systolic_14x14_ip.srcs/sources_1/bd/import_me/ip/dsp_macro_xbip_dsp48_macro_0_0/dsp_macro_xbip_dsp48_macro_0_0_sim_netlist.v
// Design      : dsp_macro_xbip_dsp48_macro_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-3
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
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN dsp_macro_CLK_0" *) input CLK;
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
  (* C_XDEVICEFAMILY = "zynq" *) 
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
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
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
  (* C_XDEVICEFAMILY = "zynq" *) 
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
iL+MQ4WNEt+WF7obFWcDrMQWA/S1UPNOaBoIOSG/qMceyi2McHjZgf2oe1ypN352hh2uQtolahSm
cHrovNs9IIyJXNBHmDmWrK6w/zlPIbEcKDDEgmXxT2URoX+Zr8PaBzdQRnhfDZpFSwuahfPWZAea
PJnkQqeYILk6KHkPZOihCMbEB4dVhTY1Ch6U3w6ymUN26QdcAn3tvJk/34CG0Zeob3Z7p8KvTOST
NDZW0gLalJ9OYiQLi5kT0nmUEkmoKYhuJohL6ESNtedQKAEaS9M+7A/ewHIJ/TBVv5O4sR8SUQHJ
qeE+/k9YpkF/kfEatOvSu5ip84KAePcD+aiUFQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mSeYrYx2jKTnaAst368oq/HaG39+2wIwJsPSvrIbdc49H1EQ0lY551GhrKgIe/uLcSPrK3qlbPHI
f2aP2XaA7vTq01LLZ1hLJKYSpdC3NcA7TA/u24hcLOZAnzoy4sZaF6eitV35FYLPzlJ7sJOryuox
AAagQ7s4pZ1FgjyVqE+qFRIJsL10ab3bYfKiJicJlUDTfE2P0oyeHdcuVk2cqAX/joS+aG2wG0VV
yAlZqtxLm2XrLVhEPzEIuM+BanFdKFqNaazscoEGF2VGYR7rhI7zKkC4VnVhxF1OhA50GtEDZ7l7
lAxbynkclZUG74w4gnICeiqvRSoCjzIefHa7EQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30224)
`pragma protect data_block
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
MEzPl578kBw0Fbv/NGY=
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
