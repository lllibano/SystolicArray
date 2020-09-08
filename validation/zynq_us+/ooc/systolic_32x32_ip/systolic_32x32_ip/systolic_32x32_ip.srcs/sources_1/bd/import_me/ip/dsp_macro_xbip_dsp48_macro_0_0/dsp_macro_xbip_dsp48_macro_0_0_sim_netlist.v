// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Mon Sep  7 15:59:30 2020
// Host        : Shears running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/flibano/vivado/vivado/NON_PROJECT_MODE/zynq_us+/systolic_32x32_ip/systolic_32x32_ip/systolic_32x32_ip.srcs/sources_1/bd/import_me/ip/dsp_macro_xbip_dsp48_macro_0_0/dsp_macro_xbip_dsp48_macro_0_0_sim_netlist.v
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
eXVSCn+a7ug9Qq6tJv4MTTAtOn0U8JbPu0aPNv2Qofj30o8kGuD3wgJf0oPtFEAk0uHv1JDVyDBp
qCRO9SXz1/L6ACCgdFuady3K4D3FyQYCNEM1nc3PkcRaD//tU0MA7S7LAc5e1UWZ0M8o0rgzZJqI
Q+3x7/cwW7AAyZkBmnzuepWxH3WDSRGJ+K06ql1OjE55v3ATruka1jOABhgUcjqZfI/nR7xj2EQp
CuIN4otsVAUnIw+mlgNqxheKqaRFCPqQYP3usc6XAlo0AiLki5Q3/U0iwJ4+3uvQanipP92xkV4o
7qFtBLxMPywoihRTJmD1JLOXCm9A8nOikTkEhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gvktdCIjcD7XQv1g84fCReUv0k1gM0yu2xaEC4fEhu22wGm6IX9W03zRccRI5ljMr5c43NO8XhQe
C3wpXskfS+Tt2x6HAkL/B9V23SBtDds85oLz99WIZr4fKkGTr0yPeqR6IF+puKGlp+63GUADkE/j
A5z+xrFF15c0PDFTTBJlEJbwkkUISEtvZJ6r+9mjagf6GLThSIFKNIY7ErLsti38HV1H4wm5q1sg
e38KWd7aYEaIpPogz9Z+h4vFepKCICasNjrBakTULifFSPOQWmbqlNzGvZdcY9kzmY4ZiuB95tkL
L5PnmgA0gHheYRpzZXFDxhYpng6X6c38ioPMog==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31024)
`pragma protect data_block
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
2fG+HnfKqi9D1emcKjSy+A==
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
