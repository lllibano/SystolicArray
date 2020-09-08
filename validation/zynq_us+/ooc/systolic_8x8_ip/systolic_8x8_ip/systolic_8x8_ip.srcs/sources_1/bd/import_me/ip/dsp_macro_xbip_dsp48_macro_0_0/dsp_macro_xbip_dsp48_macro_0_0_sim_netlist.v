// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Mon Sep  7 15:27:28 2020
// Host        : Shears running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/flibano/vivado/vivado/NON_PROJECT_MODE/zynq_us+/systolic_8x8_ip/systolic_8x8_ip/systolic_8x8_ip.srcs/sources_1/bd/import_me/ip/dsp_macro_xbip_dsp48_macro_0_0/dsp_macro_xbip_dsp48_macro_0_0_sim_netlist.v
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
QWvbGAilSutWccfZF7pOwlXT73R8NgzVP/77bk1XujXNcPTNOT/F7YtjSj9SeJKxV2K9Jhi8NWrT
ao02ctcu0WGRzTotDtea4trN6Pf2QuzfmCN61ubpwTanr4EJ92HNDkCjJb4wMRJS0z83EdZHjZSV
St0FQYTxPwSiG33cGeQ0vx6MA6S8MVYjT60JtmZFQ1lZ1A0l8834Fh4/dub9fm3lZ5H1LWzqeUYG
TPyIy5wAEzsjy4fZdND3FQoIxxyel2zyJAPPWoT8B8IYXk4sGgwsopb1yZQKJZwed05bw14LbpNF
PlRZcjtIAIRJSqj/b/OiOA7QycW2ZS3/3zOfMw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
32pPUrdHi6sogXYDpiutsJ9/VxwFwOftWBTC8i4Gq15AOtZnkP7s+3ooCt2mlLrjwm168aZ85dJR
K0kjRVMqHw+bgPHj7hDHEonW0gMDxuxAgsId9mErE85TDyB3Hzr1Lsd0rFgOP3LC+ahmy2Yst0HX
EDq3Mn6bf4hds5NAAOpsraAqIx9XLP8nNJww2O3wp36dXlLh0LekCCkerV5i4qj2qSrKuUuhoIDF
OhDHUQlOirXqi4uISG6qicTdtSnh5Psh7QGgXFEBsRv4oJIgNSUeTnOExy2YWKZbCMoEL7i2TvcF
zDbHxExzsHb5u4fS2oPQMSMPRoXckPYp2QPDEA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31024)
`pragma protect data_block
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
gBFS7+eE6ltPPl3yImEYng==
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
