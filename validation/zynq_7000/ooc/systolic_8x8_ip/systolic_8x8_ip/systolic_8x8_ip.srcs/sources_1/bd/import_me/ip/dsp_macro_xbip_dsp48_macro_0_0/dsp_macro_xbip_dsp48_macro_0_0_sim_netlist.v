// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Mon Sep  7 18:57:45 2020
// Host        : linux running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/libano/vivado/NON_PROJECT/zynq_7000/systolic_8x8_ip/systolic_8x8_ip/systolic_8x8_ip.srcs/sources_1/bd/import_me/ip/dsp_macro_xbip_dsp48_macro_0_0/dsp_macro_xbip_dsp48_macro_0_0_sim_netlist.v
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
MsJZY8JAicIJVOgLmVFoRBdtNXGWnSVUctZb7Hf0cif4Cs4mxCR2/QfyiAdYR743mz9RMb1NKc6i
j12lgrQGkhTH0FeD0ixO84rXQWVJ5su/WzXcfjhsmNYkvg9GJdnAjWCJr4luWfw1Hq4ouzoHhSvq
ZLNjlw5R9NQeL2pwfLv/a8znWA2KK3f4JCahp+BHaK+Z8CKWHq6Ifj++Qbi4mc4Hlkv3VDbTUYIO
xaGDjh5UZa1lRS/wphzrXi3Z7ttxe0Fw4aocUiCcvnkEiFXCvSzCKOoVhcQYFgOtlczOkq2Ch4W3
39kWU0DFSXNjdjzk8M5RRYc3cBQiJlh2CAUlww==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1ZsA2eVeu3soEvlsRhHFFs6CXLcPYkJFM/etmAfxtQ2k4gbJUjBa2j6wGFTykQDYsB4Bsboh1tOi
J9MrxDVIVuIj34D0CtFHU5IQrajEgcHP+KiTPPtm6MEgq6VfEnWD2wd9Vg6kywT3IdWKeSKeF+N3
aXNspcDfG2lPazBh02QAWBZiDM0IzTPrG0ck/uVZYw3BrvJUWQ1LBl8MR6Nc+HR0LcfY5HG5HSGS
6E0wZ9iGGlUTwSRSrl60n34T5I2hiZ+Wwr5l7cY7pl5FI4dCh4wQqDDiwJvzX3rWYHPC4xZz1Qlo
E1mXG+ZU0yjB7DJFIUfejnmfVZQTt+TKukJ6Vw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30224)
`pragma protect data_block
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
htd8iKMed1IojAhJ6FI=
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
