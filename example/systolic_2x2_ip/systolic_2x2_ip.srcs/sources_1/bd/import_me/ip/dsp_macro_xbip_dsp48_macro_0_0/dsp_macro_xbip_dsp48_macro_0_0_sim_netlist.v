// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Tue Aug 25 22:46:21 2020
// Host        : linux running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/libano/vivado/systolic_2x2_ip/systolic_2x2_ip.srcs/sources_1/bd/import_me/ip/dsp_macro_xbip_dsp48_macro_0_0/dsp_macro_xbip_dsp48_macro_0_0_sim_netlist.v
// Design      : dsp_macro_xbip_dsp48_macro_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
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
QmJDK302F4SyVexQ3T5gN449e/Q6gt3AVDEzh4uOYlpRXDDlnzjgaNGbaa0zDtRMko+yO8B+zPKg
NeTx2TwKfva4ZLatek0NWfy+4ejQM2N7XbGTfTmQv28tlUcEeIuTb//xt7skv9LA3JpS6jCka/lL
ExPIAghTtKr7VQVEa0mI3mHhyrKRiKoWbBrYZYWgx4oCgTEhv682Oxhp/DesEYlxY9TCghdrPMIz
CFTs6yheVqctuFTltdhLyemB+UVhCDujL8Udy0jorBB2pkf94HjvtmGbRpGrM+VR/RascWpqx8YN
l8pqhbrsMP6p5F4Vvi0KO2UxQ1M1MyUaki+gtw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M3EXCCZdZzbl7Ewn4uezKyrLecnB0qUCMRvgyAwmYovS/COxYHkOeRc5EoOsdkcyYYJ/y7t9WxXv
yC3dFkrYal+F3gd/v+87mxigUCcFBqUC9Ckf90dL3tb1ZLELxSyZavK8BhhhzyyzZhiGanLVJSpq
YW6DRx/70UregEB/QOwIp8asqe6ch7QaW4otzwwuJxEuYZeRL9ApnhVGjp2IYl+XtPcVAaIYSVPR
EmCaWiBhYGGl8gZToGFL4dE0wEs7tG+r16zgrsJb/W2rS+HsFmT7lpHEdztqLdoteuOUVdrOaxcM
CyPcUTWE9r+XrXxLBaM2d4a+x50Qtydz7HJ8IQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30224)
`pragma protect data_block
/EAw6TfPb8QxxVTDfoCDO/xUwEs6+OBUfitS9NuotktaVnAswzCUGA5y4+IER1JCme26syl14N4S
UmE1xxOcwTl1PEKmgZO1YLvTW2C2kbjUqyh8zq//SDKUadcDofQfkFxzyqpa0eWksmVlOHWBtn9E
bWsX1QJOo5gGXOtl3F9sapBD9uo/1xiVJLxzG2N3nQcdR+rUNCvXHvEN63zJ895uBPZ/M71mF8Vy
mnhTirqBWhE4cjQBRY9v63fGrwpxmwZg7s34Y6QHtpHko9NCqMfORZioGVpRdbTLtGaj5tE4Y2x2
ogwv4jNPffcyLibiZsSmbR9K+tpc5Igzvo2BxzvaX1V724w+YvHYNOSNc7QQzHlDSzt54NVYAh0D
2zr9uLDbs4D4VokTvR17qiEZUJSLnlVH9GrjoPGDIfjydSaJTfY3Wlk0PtjpwDI6iSZYamf8lI2d
UlpBfsl9i7P98+PdxO7lIFVwnzezbPm13iFJvHedGRvqjH4MvvmPED6xocrbLcP33YkAlL2mPXFB
wEzAOAiuib5Oe56rCf3qEIzW9B89NqcPVtHW+n71MD07k4jImuj25cOEBsYYoWN3bU6Ka68p7m/J
fDd9YDNgew9BjfR9nT1bzNdBs4PL40NWdeOZhvdZ06BzLMkaWe+tVQR/gVZsdq5H9TiHbA1gqDkR
Hxh+HRmE17FKpXdBnG2HfWnIonQ0PTY0PQGl4Uuu36AyR7yj/4R1QwbaoBf5uZNESRw8CxPU7bGF
ymFRXl0NnJ7gf/Ja8shDhQ13YcjAfIO3RqmBeBOVQ0uk+eDg2k3QYeczarafDA/Trt4ca2fGcw/C
F1U/4xOnSsq11a/3i9i4VA57rTbP9yd8hU7MBnYVlfJaHm06z/PZbJdSitA9Uk/XR5dMxFF8owfj
1k92xYUj8y6RC7ngMSZ/gLrpFpL+cv1MHs7LvrUBImQiYmG7yeC67frU8SUdkq6xq+dUWybWdk2X
HKcWHBgmiMzHU+sGJDz3cz+NZJeBz29ouKk7lG5pDfFQcidlBKmHAQwu54mu4+sXM1ZXrx2Osb2E
2BKPS/IyuaW+v4nySSRG+2pALFhdkmIF2xhUwfzq45iKA6tZNC+NA9JGVxBwNUh3ty4m0L/SUbMH
UGJZef588jmAX+dyzeQDh+raCQh65F+DYK92vMc96TEOXtZ1hxixFyv53YwzyZRLtDJR7FKRP4vd
SYMpupEG7AsXmbGAK1cjtuI4v5cCor4rNUftCVQtXzfZSypPfwPMpFjc0igQ4xj8vOqwccNTAAHN
wbGFqgiJC7LbCIkuGCvchUK2NWx5+EdVOSgwUxrjH0tm2krxj5zGuK6pXi+TyMNseocElB6zBLiU
3ZUOG+qDAtD8FHGRBzLTuB6g4H+10zCpvdk32XbCoigVz+d0vA5AEFkwBpeyo1G07wg7J9pFDPJ3
uMh3AzMW+9JPvaELncoVrqAhKpvmICUULQ/TzyU5OgfW76Kr8S1mwmet5a/0jXTTsBwDYd7hz7gO
UHcEGKfxE3gC0RAYKsMRZqqSCuwafySX2Xbi+/QbemX6Rh75r3LrFg7vC7e/inMaoiA8t/mq5ZN7
vLrUHUpmakKJeSW33HxyaXAkA9DPfDjWxjZJ/VWAUWz8pgc5RuMYqILB3axJCqHi0M89E+lHXcGC
whQTElaaFn2AO434Y0O9zi+pN5aKpL5rsbVAHoqv6v74zbDAnFJMYCNTVTQhf2zBPY2xChnAkpd1
vdx7qSu0VwtLQU3UT6xxDNNVh9iYVf00uJO4oY82w1FkGP+iquLpEijxZRCcfMBZ1Oo81DRjB3sE
UNDyvmP9Q/FFhfTk6wP5SKuvJoNjj7h7S5ZIaOlbPCZ6XllfMVy9xNkQIqPTX5oSVqcsN4vcK409
mP5QkLXyJWIoZ4uA8XzPJN/EV2hzaY2gkT4WJCBFNkVdRvF2NnYJVWYXEVpPV+zvCA9IOu/iNzh+
R9q6TULl39jzqMdLClkcnBcr4PKgE9WnEpBNV2mmXAWnnVgW/oozNC/bRBwVg41EdniHxDGg/HVq
0Cu+OKcgjeELs6mt4vKZnAVfdIM2nMq+qostFEAoZgnkDwTCTtGSFZImLnrRHlfjSrCU4AM/9eGH
48tZ8+0VZY+MOXIlJMlcenhcanJgj3UrKwIGA3KqazNtbOInMK4mpnH0w6SMKVhiJl051PylQl9r
mM4VP++uKdR0MAZduupWhNWazyUfskhPvxndalBnxAuIvBQf8s77G/k0jY5BMGFv7LeIfZAF4ATr
TWZKHBoXJmCdkyFv/R0zzBRQlGNfP1rO24kMfiq7ASePd5FBgY08l4CHwpFYwKIM2Okg602Bs1Rb
oSabp6iWsF75EdZJn2weqA3rnyLMfoWBgnwQ0sD0Gr7OujJHc+JmI/YEzS2yG+j1LLtPyUJoTxiE
CO0nll4yjbmqd4cUeZrIw2tHuGmOSvPAdXh7zYyIvsZoMyZcZ2wVLckdOJd9k1iANVvC0oBG4Ll5
AXDNQ4VpFJVe8XMBT5ntcyBA7KhESIebyzNQt+QlqD8A4mBPRBTpIcjxNKzNhPg4xNhfb8D5IOi8
11h9Emw9LCvLlpt4CQCPt5houD5/IkEnO1VrnsgIp90/yat/IPWnXxH0Y7mlbBjkHZ20yK27o8HO
pmRK2CnM53vjUtVyH7t+QHk4VTkGjidTvRyiBkFKXIOyb8499GwaqcgiGBooWkEDFpY8G47VZUaS
MSmpgSa2Aaky1HOLayguCHvOTtc2T+GxIkmLJtnYEB28NtCSoegLDba6EYR+tPYe0Efm18bgdpw3
4K9dv+iogkm2WkvE0iHk81zskpZD1O23SbjZMkraml4cj8Jsfv5OEjwkMn3XWrZZ3w/4AH/WIk5s
uYjM3iS/L+TrQvS3t5V89fAhheqxBxniYWCbt+7l0Ae0GwFyz5RhVKvuc22zFObocx7+DSbGGTLX
oM0vsgsonvoOUV3eoeK89iqtYCvyXSR5Xka0xv7n0y84FUHPGtiluuRjdnaCSmkzLOF1O1EcChEQ
wNHt5HEfstKLbITLnYzzWAybC/uraVfTgsZxUoHsySsFlAgBOLYuRFVmYqEPUO9JLmvxO/J7S1NG
xvsOJc0cCheNk5i1EFCW+QHwsdi1fVpVp0MA3gHl2bLSSAAW0jrOPrXqqOKJ2YOSZZ+jLzpdz5yR
ZR0oI7FlAwTE7+PCy+4pv4doFVed2zcys0DGIq/CEUTXMmBRYCuE5UOa1oPHzm8fgX3GjLJObtMY
X6w9Q+YYkD1/nqnnksM92gLhnGf7X4ekyuHrBTC2tTqDDTnQ+kBE+BBt0MRwBaR77MnrQdiQAgEi
2msfvXJnknhgOljxzKRFd91hUCduXw8hHa/Z8U264HH0ErknOxeDI8EpjMbYhFyt3Dl51FNYtlCJ
0eYngbc7n2HY45R9JErCMlGcsOis5quT0fjPfD2l6/JC2k6f+4SFUCJOedA/iCucsKKKdpzvZSSj
ZPiooGmv6Zw9KNZ/W8KXz1U5Kne7NDAPhTYjFXyxabvEyY9EnYOB6kPtYfy3vv0sxFF/ZAQpbXuF
d+H1xSIa/G4nTnrzghnxwL0x4PHuJr2euae2vJv0gXLqGBpDfy2pmGQRkm8TcZImcU7KtiMkMqOX
5nVPJ4xAQYllgwEa4asYMOCYpPIjmZK9TmcUQijyvx6gadgf4wwOAsHvpq0ebIiiE04cX+JSs/Y1
LIxLHbo3cYUziY+bV38I6t1snwGfvZcmYZsS7bCc5bEG9ZbeGI7HrJmfa84cKF45a6yfRARnQGcR
7kdOh5xkNSe+9XN+x0V87rpqEeWjljRxUx/2DplglFazygIxmPZj1T7BTyBopyFozfvYfPALk5ou
mDQzyx8+7/K9/pH/ucNckQWmvRwoUoj5ctsoR5DlDgZATCvHRS5aZtEPSM+EWwAyXMJwYM04E0/8
easxb9y2TtJG7/Gj0hhFI7Z8wrZhaNysYa0qnmg0jjYlC1WFfUBcNbiwmUio/AAfd5lA4278ztJy
6YP7Cvvqe/eLJmZifFL4ZaHNXps2/T1oTJB8gOYUjSl02q/IJf9JduJGXJkecYNX/u0MIFq9WEkW
wkQLBNDn6jEr4X49zNF7WFOH5LSzBPafcb8CHFi9V0ybXyxkltLTd/KSm2EyynoKYtCnOEWfgL5M
MOOMkgxx3h+P9RYP+i+3Pb0Ts+cUQAhb2HCiLFsl2WzS5BLQRM4LtvhUJVqPm+7pX4534Hd136Sl
mlIcw4RkuDLClbo6o0RhYT64tq8mdMpVtHMTiZ2JKH+ZvobpWC9tX9FHPott4nylL+w3pAypHYnq
orYpm8SXbgAgKTQBcvq9RpO3P/GEtPk41ijxyy3izsH8NQwhyFU5WXeZ1498ZBpWAQCBrngjoqad
oJ94m8tsxlcTY2NJZbU3cyjxVX5a2pzkkckcghnuhckM4CN8BogLr9PaTl53MxgWwZuJeV0iekBG
C21u/7/S86oyZz+WnCli4Ro0mAXx+Zv62UGq2MbP9Z5nOdvu1f4NO/FLoWRKe+08FiV48aHBe7Rk
K3NKdGR/jqzOCoQrGGZh8/Clw7cSyoY/xYTKh7qV87DplyxrbC/BOuyZ/Q+Ei6yqaG+lEGMPZof/
1XSlZUXYiF1Bh8JDR8B61q0qWOxO22v+KJ0Ln9MIJFWR083oTTUzhABcJWAYUKAvrzMmykEQDa43
Ulq9z+U5szrHaDOTVLJxsTdweBZAqdzH/Azay2/gw7WF8GNpN71Q7sBEDA3jAr8txrEcYj7oQJC6
GKAz3Wsi5lALEGCVI1aPvZd2LNmY5YbSwM8Ol5lhBBvIVJJ1lLJbpVfdytbW08DYD+TplIof32Sr
IOp/4U5FdNOlRFfAEVaBY5fiFyD5HB5AnQMckyfcIzGi2DwBnGO4i52bFryGU4WuH2qz6SLdzqb8
wk86GsR9Zcerk217xbPcZdWw3oZ1YFOsE+7bgfj5rgdFnhcgQgsdG/VxOgkf5oen32GWDirgCnzr
sfL8Ngs3ARCUMr8K4G+fo3t3I0XS8yajHc5ozMvXcIQnu82TOwfHfKTC4GJCVIEVJWIRtjDTBe8z
pw3yuwON25ifIqXGdUU/tLS0O36cWMQz5GHgv/rBqBHxOfRybjuOqaGL97Ow4BY7PMKKCGZ+ur+6
3UUfT3rgxR1A/P7xmOiS3qTtTEJ9u9r8lPyp2hK/g8pGgKY/4JF0Rv+IekmoS7gXM8NGaaw5laNV
D3kXkbv8/ZNPMyI84XfAjGsFh7ivFPOmHL7/t68fppkmB6FqLTIv4glazKqlcw9UAp0dz7kKla68
FDvL2iqh5rfE8LHTW6mtSQSc3RzYm1zGRcCrpnW6mxwCpsabt5ivKPMvjrBo+ue1krcM6ptgGJEO
gbNVNISxZnZeo16ZGZ/ekGuJFZd3RuJqL1caYb+728EfBNZigs3URyFrbz6E3Sxi6p/ZrQ9zCHNV
cYiYhuaSVX1EuN2jiCaL77lghp/KYuC7YaqIyDP5ofvqKgJ9mEELqrdwvxizsDxTsi8erLkSls+R
6qL5HfYSICAEM3o/Acnu+YtIQZ7v95du/krZYnznXYEOtTLWyXd1g+6HhlxLI8NhzDkUc56ifMhL
1+DrB0bWRyolYMERhDCs7/lX/JjwNpgFh72Fqhgj4uwyPim+E1tXN7Dy5l7da1PIcABDMNJmJUIm
oXhox4GWT6XK3XV8GQ/7dLAp9c5N6S5klBvlhDz2n2/SQrEheT5dLNFadWiciOwu7ws0VJSFiqyO
5wy31g+Y4SHythrwYjGblMGlT3ZDrWQghrh13LB+1+QL0ChX9vietuM3fZOX6CzZ4zRZMB81AhJh
ClYc+o4GmTO0a+YwQFsM3h10EwCpiuSjGDCpb5Dy93ht7uM1fqX2XvkS+g+EhtcRwiXuFO55LvP9
V7yTTDkmt7wQjbjYUFIfkZ3uJVx6NIOIkDrZFF4sOXySTIpEqRuNqbtI3nv405bYl6TFMTyDf0FP
W1ENBBO2aPPxWGp5b1p02hCU1oh+uBgDK+FkrMno1QwO3RvBft/4XRSuotBoURTSMseUIUaxW8xo
Y2Y4X9Q1yX64hBafvGLfzuIjpxYdF5zty2cUuITp7ZPDY2ekHs5vT+QRmr+6liLjxgDmoOKVDJAQ
1if3/+8fgPxyM5voYs8Os5lzIXl1QKHcG0ng56GzWvhPs8RbiFnBFrJuFn9fPzEgjyzkXRMA3/Sw
ncsIrx6bw/b2rIuBkDygk/TH07rlZcAmgTGgmLxOAULkY7tefRS0sSliIi9QS/RZCrGE4Pa2J+Gn
1ibhtzvjOrk66ACwCHBTOJW7pAjhBG48RBt5MO9VEu7uR93A6MacSMa02ucs1sJ0gESupPJb1rVd
9PxdxlLwue9u1YvtAGjNf2FKT8s0JLrkNhim1ZuEekAXKxprTLTsmLJ9xzdtR0ZdJUmQyD5NVRm8
uLx1F7k2m8JnaVVCbq+ZgUoeJDq6qI7sX70mb82GWXnKXWoe61KCA8ecc3Ul3St7g39feMzNqQ+Y
kc2Ouug+qhs9rd6IqDzPmtHykwTPMj72FAMC6UgsL3JB8EPlkkxQXXuYw3PPAPwHoexyffO5AzoZ
l0Z0uy6lXLRq9ckJ+jCp2zNa+2qjpTBMlpeDvFTTD3k9MC560/l7e+lJuGFPJf34HclR+snpHutK
DRgWHaGnmF5w6gq78IqOIn9r9dTuUTcv98zsKLSa8c4/ni/mwyhdMU0+lhbv/EBPEbVu/rcmGAY0
0WxpiZdFA3nAcrQCY4SClRlkeGJgZUKLzfGMM3XKccUkJMNKR3nH982afibOyZ1X0vXyal5zGSih
KRNZd38rZcVjcPBVk9yDOA+jxl4GAJvuR0w9ZTRoSxP9fa56CeKL4xKFyT0gyOTXCmkVibHhNTGu
nEJApUJhDDkiirYNTJpVvNc2MxRgnvMLcR0crMbWd4aMQVz1fdMMtasygwEPwz+UryofVSFb5L+3
Wf+IrYTYTKEJEKTj9AuYrv+XAEbAeVxkFjjGJxMEqXjHecwi8ogj3y2kZwW3dLe1fZdkylzWzAGB
sDBbYSdykc0uyzVk5rOtPmw8DR0YrKvgsGG4ZnQlaTnAjHYlCnSXYe/5n81Kc8Djc6rDIFIee5WH
3QjKaTQCOhH4XQsUW8BWRSL8uaKGvJVfMWU6FGUiSehWN6aM9HVe4N/x9nVfNC5vTC1wduX1Ey2D
RNTqw1BH0Pyd8NJrnR2ePGbjO8ILB5iIuSsUnpZIAKQMkAvgiN6ZFTLSICGKpJXuRrkE2kbL1Jqa
GF35QyA6JBzUzPDw3vjDo56UfhuT+zy7Y5UoC04VfhiOl15i2+NNRa72vM9Q8k3UNI5F+4gxEZkf
/iv5e1H6Jt8l2RbY8kc0gfsCoylEzcLNCMzLMmfdPdcSwrsA9f+mnI1N4K/Bc9Eta1osSPrmuwXB
vF8n+MUOVrl1IyLIOhAJo3/GzIetq6EE3/Juc1QseSlquO+f3VomnZ95yJrCbBkWlxhY9ld6shas
fuwmJW5Dkj5NysWcHosPVA4eeSnnZXDDzbhSLlXbpbVEMdgu42HVu7hcWNF2bMUErviqssz+WWKP
jS8mCrnqQ0zYnh0MqNZqh/yLGjnB4n+bH8s6+8FR0Q0nyAa3GkLapC+djYxJYmn08JYN7Yqk2jZm
Gpjhi9uL+EsuvklgiiQfr5WMqkVxd6rPY/HOzVHHxzJsNLZkG06jAHaK7hz8FXTZX5ldWFQWUu29
h8t7HkHSJG7vM/eS1haPTGmcS6d7uHycNChpPW9hk7k7fSJQoy8FPsnCLXuuuTaNdaUCa8/VnVHP
4c8gb9nDboz36cMxKd8uY/j1C/fTYJYbdE/5sh0RKEiYAwIA1ACEwVhbMnO6x45Cs2RsodrVBtNl
bxJoAADBUTK1rV7tYVExXYzvlFXB45ulpGDek9bioJZisKPFMmtgxlq9Ji2AqMETJ6kKK7YSkarD
Xw6a3unUIDMXE9+DwZB/Zu2Voftg3O4CaCZAd3WxQPnl+TtLZnefQpIGuVEaOq6VNnUWDfZhnAhM
PNsaz154QY1LL7ewPOp53KS4nKSXITpJ33/4KuW7D4HhZGX8Pr9DsAmrTe7i+t+RRXFjCxowHHKw
IwPgeJCe6OAqWmw4amzp6Z+ZTxvU8vzSLDjasVbrQHYTy/eb7qKaNCxUdYwBZ3JEAAB8rnJ/RJhl
GkNi+OWnpKrxQ5UYTZ1dULmR8/pRgWCdCSdS0xC7EuxVU0i2rj8bGvvDTtsxftdFswgvhLZkw7ZV
Sol6fCPZjGh5Dpsf+f6M7upDsQX0FsA3hRB0oyBBGoqjzWjLTEH7awXZeuXXHuTMSs7yDmXwtmy5
PrRLlGx38Y4v5gXtx7KskO43K+J47ac2S1UE8TTnXbNvk7afqvjVQzVCuGdWus9t5PrpLNO7NlAk
t09U6hanFJDvxtwU76/+MwoI7gSbMx6VrWMLii6ba6X9kFxe30DDqloEkXeMEWbH+IxwzRlxOOZC
3p/+ZZFOmyOaqCTIlqHsJQhjZc8HUbrPtbxpYj6iizIjmubWHLymwPXmE9uVipe4B0dmFJAonLeB
hLDrIslnfIkIuPDjrtbBrTjwdvpVMmjb/38KzM8cazw9MhjSVGfWMPSxQ4muoc4xy2BVnvUIGMnw
JPZ3C9HTy6ow9lFqVpD3c40Iuve8BsuiP8rmut15Wi9gbrvpSPl14Vb0P6BW3b9E1rtoKKdvU7X6
tmj6SWBbBQTZ771PkoJeNYLkhcTDm8kaqdd6qc3Y7icWC5wPZBY2buIz8Pv1oX/z6IazdtUtNRe6
aly32s7aOGmcDiSj078nt18AIrPY2dbfyywt5lQIB5Nh+oUU5n0bJtX5Fp7sU3I7h8hcm/PXsxpU
ancJLkSx9stgYFjLLkWQjiUJOEtTVVWsJT+y+Ez7r9Hf7IAweacuAmcH00KhapdLZECumRvFe+P8
VoYu0IMLoxDYtE5A+3tqaT/yJb9x6sq3CMmhb2UhMee78AKZ4VX9BKcIWGDGQF3uDsvOWEtS58OF
CQYXTie1SrYKD2Xa7giGyH7HKXypa4tYZSWlQAIGwa6FL0XsGVXyrt/x9G0XPSeV3Paqb6y9ohv8
5d209cx4vpRj+k7Dbd16uvIzm94DhaLnPcpVm12ODvWiwor8seavdBjMNnP/+xIo/eYJAdcaU83B
gqo6SKJpPN7IgCF6EE/OYiDIfRqAApqauab3oG4qSwmrVPVi04cAYDk8VSFu3ijsoHsz4f6aq0zy
m0wCwpRRAZT5hyYxqFEcVMkou7w/fowcS1zmQO+Ce6Z99J2xv+IgusGwo2U7fSZPJT/Mf0k3NrAD
ojqk6Zd9O4y/564EfkIj7vZ/739XCX5nH1+bhIu9i/xF8+jIOwacYYDStAakH9Z0RsuqdWlpGh5j
AMUDvf3zG5TEZY/zIggHngYCoWBrtE4YUaFnH30ko1RQw5NAqopeT1ztXLH/xFxltwWKeU6UaOXb
sh5in3XfrHGvWGLDfZra+DlzsnY6WcVaQoaKapma6AWL1K8VdKHe32WpbtWiqs6lyDNs4TnZSkJB
6igk40vunrNPR628b9fbip4ZNNzpzJIP3jb2cVnFTR3ZmPyuB1M3MFsLbM7LZnWnFE7GX36dyfgl
m+Gz4falPWOcVSDsY292Vm/8AcuwVzCBQijh2052LmvLnM3tvoPC4/u1FxD0KIqi59Lbpx7QNRNc
BZFc+sJmnK7KAiZhTlfO+ZA6l8dbuFsyu5k7EcOZZrqJ5sbjKmOPuTqsXsrCq8WX0Ww2NcLskPcp
BHpuvZL3xkOK5oAJvB7ecy8g4D20ybP1bxoAh+NRy8ROOfql4PjrgWS0rJ47Yi9x2dIOdlOzWpx/
L7VekO/lWD1NmrHHSsPm8U9tOSEcZRlM/NiWGVCzXOnP3uybBVEsct+JyPJqF1UgB2pch8gYU/JQ
ymb+e96XPuKL4nRCgl/09i7UdDf+YuUQSwA2LV5tuR0YbxjYBQkHWiRo6cWDsurffyvVRBVeApKH
Ii78+3FG6GS9EM1Lyh2fGNFvY7d6ZqPwyLxYQBLBio9nm/qE49W5nasUsOyjA+wZBfKAdNIdEIIm
N8UJgoLfvqWl42FnFt7231+n6L6NTPoaDMYvIW8SWqVmTgZ+KV8acqtTtZ1CwtvxfFz5ZXG9mmSU
598AA4pilk9Os3sShhgEAwoBd33xzNF/ct4yldKvU0zujmnATtpCj7JON5BMavc9Dqdh5fS+3FNB
1i3AanzqbhJHP8vQ5W49tCXGRNrQuu6lK8at4rPLZuRpWeIgibKOWV18Ezm76TN851od1VnVh6Ox
a+tvCkl7XSsgXhziKt5CrDKLQl2xb7OwvdOZkL4iL7i/Ais0NL0OZtDau1il3rTD9yT47jqmRDgp
nIJvKvLjzTBB/Bu0YKPICvPqi1TPcbwFl2/cg8xKsDxGzI9PkFNw1sS+64+O4yXCq+FR4xFUbVrx
3df2KBInCTd/wcEJp3BwVh9NheSegmHTdNA59XblLg4U3RfPXiF5mFLrglOxEC74nZyTKzHDegBY
GgTDZSYIyjwZzywV4/yZx7dmnTMvKunywEz4DqVGdlrqNR1+xAWDuu1vflGn9IavQ2hsgTpMvxbJ
ZCT2g4YOP1XtyVBpKLsJ0bIgPcOoLeIAep4SynYU0K/jBPjDr0OscdeXnJUJLetp2oGLsYw97bAZ
PK3LL4a9fhrmtF8u4p2T+4xJZIz/LKL6+cF8vZcRDSR2apWB1ObYrgagy24K77b03BIhymx2zMlJ
oCpKR5+w71AOnA95/qy9cQ0tTKwEEFwqbHvDuMKZ2qSrwlcndaF0A5gQwO5txAA+6C82KRhVtWQD
sNRnMxun24VKZhXn69l2wKi30V39WgQUtAEZWGDBupg/yIWjqt2eplGsrtCsHLlNdRmGTH34ipE+
A1YmNnyx0aCOUBEHVfPXKsoNq7ofkL+3iYwx9nh5FeG24ywzbjvHTSROz/1QDDQbTZS+6NXgnv6S
8BXE3Oi2QjAD0t3IPORanJ08/YSJlFgO2AEb8EFJLNiG7KpSBIZmOsu2WBBINlg1FHszXMXro1pr
jzAfFoeXuO57Q2Vi4OSFZUl8HyYhAiIgTfC5d6udOJ8101dZLquKDVlyYp/6NYSdGnkKRLw5x6dH
V9Xvlv3cHOelPWi8/TfvZtEkUPrlCG2QAmU3XlK8qGudEThwXZm7uTI3soF3m4LLhFfB51bbwPfO
TTNwphotcsdK1uRhewt8AA31qgbmFCxXtxnSiowMaL9SDKc5YHi+1SoiCeUHVo26hjiMQK588hEM
yU7+mACq32xSqL4zh9cV8hTZgyF/Z23Z3kO/yd5O/02bzJqnF2Rrq+jVPmfbffGxifevClSJ5Hau
QXAU5ZoI7E0AdLgd5T8j/8PcIW8C4s05Ek5375aXR0JRTqhJAH/YANPWL0aHx5XLv07Atr3onwB8
c8S4WZ+MXhNPDU3aP7yBPNXJhmIUydym6SFbRMTtm/Kl2sdpBJtb0EtShbW26PIoC3n/9SuvR4Ms
7dt1g37NB9cX+GJmzavObMqJO3OMl3Lu/rD0FWl6SIGXH7hzl8SvoGtdKSd43Hw0sqwlJgXnh0LO
yQvEFo+8aklRNaVCyo6RkMZNvM39eYifz2AdLcZbWlTtU55KPckdvaSucqRpcXN3GgLEA20fdv6T
zUL+Mmvh6ld1d6KdR8qyiT3iqIFKWQockr/VRorgMY6Ov7zXKcgOPJat8iF8PZoFmPHFroZkbuxX
x7hnS3lT4+fprFS/KETpu5RJjATDlc0CsPZIPg0Krg5QLLXYptrf/CjOKq079m/jCEPeNFW76SqK
Y182FmGK/TlBfTkzJNiM50WovlwL/rz+s0o8REH3vQx2xeF6FqKQ34Eg2E2FQ4QngZCfCbUrJcWT
+qSnK8qHXQ/gPMcJnKq4Cnyo4vOYbizt6pX33trbLpv40spCoSIpu9WbqL5eGWhpqjmniI13bsku
V9maq3YlJB+FCZbdr8tlnIByO3mYiuQEUILiASNMrPgCYeojsFZkpKr5Ae5cyekZ/LM/gtyClsRS
R8Yf59TTaPjX/86od2QS72ePB4FVh9ixfVdpGqPLNQvQrvmLoiCpx1WwTvnZSeB2kaKxY3520H3N
RdxoQWXy1n6OzNZ2dJ/tWkpA5PgcfWg/2HWhQhpt6t79JAZNVEHeNXwaFSnDpDjm9s3y6y21jAmQ
BIdG/UEj5YdSuhafEaV3Eq8EGUF6lmgpSJYARRmbMJD/LIuMmMfUTzg2h3Wzqefded5c+kn5n5QE
T8JWD2/N0ZAB6BmEyKZACTxH0M1RwzvZKrLbWOhJsqYkIi3M7P8oCEKcbWjoYs7r+G5jAJN6CDoC
BB+5kfALhTAnSJRjRuTLrWGs8d8imA/+p7GlRJFhEQDm0tnEq6+xwirlxfGxLFPacFxGD+zCq8Pr
2nmYTeNwB66I1xMeKWBNdbnjLMcB/0tz3ZKqCc8y2e5p5JmX64y8VqGVZ1CMPc+n2Qj2UJK+Xpli
JIvAsN10G3nESKBQPg6gE24H4lSK+0SaK7yINc3yG12sDO7H6jLKYK67VkVZq45OYlWhBdxHrlCy
sRO23/TYse0cN78ZjqwBfN+upB4oL4jTBmV4xKXC22kPfg52xEyXMCGyIGEV5L2AWHLhpA20Dgjr
zaRczMh/OATBC54nJ2xYkPcNPpfvbsnxkZs4QmyvM7S8YUtn5Pg7RLdoIQuvlovnYeXHm2w+4yHn
uMj+tVzHitwdaIqZTmJWcpzWjSLwznr8DszaiF5Sa3A0tsYMrtrxmu4h/JBw85RSvyK80syWBFM8
3cgczrIgc34YvhR5xzniV07yS9/sVNgABRWfhRI6YQjX3lfsK3l27SqyYxEpep9BzOW0qcov92kZ
KyYu5/heFtk1g+ZaNp2dGUoRVcaEOquALb1HEaOnqzhR3gWcNRJ5fH8WLbAZzeiOOYtjf7elieL9
7M1Id+7DTnqWvaLGqw/vZaqKgzz8aUzjINoT4usB7Mn9jwYJY6QcqrQ1TEIbHamlpUCjRSctdtkX
Y6IFRQtbRe30SiAal+L6YcR4XHE/Qo1WGkZPSWNQvtsSDc4ewBWLZiLLN/HtV2HA169YTTh7W6Dw
dOc4uvj76VGR7nLMbeT1BCnZ6N9gn1hDbOYeCZKMcmo7AtWnvgiDU5MfgO0dhqMuIk5ocVxX6fjk
aXI3kRe0qpOuYr3Ji9KzD1D0WrVaUDx3ErsksfAuKdEkCDfOqEHAMLiVjJm56IQxUujsbJQKUwrx
r+V7tofBgE0hNViK2CgMLIU0yY4ymg2yYDxD97RHjnAozwQ4VYIiwK0N5w04+4CJT9RAsVi5SyRy
J1nfm11sjV8LaAY9JWGglCxV8GKBWSuvXgdJDcrR4IpF3leQf58EW451lGmR68swltJWLcZNJ+OS
cxVQh3I4SEvY//hQepjoxHMqrH2QMvJmYVdgxKqnmMS+GZJHYquUNeqLURHRxVOJUx8jIWanWH/L
/LHZslfTLpqC/L3QgN3lmj36bqLMMZX/ojCnq9EbDaVXEqqEPWyg5YOhD6j8LMT3T2H8293tbdEw
SxI2js6vnlWh9vf71V89wnILG+S0dYbVEIA1lYVeO6UV26ghChYY/8vHL/k0YcHZuaSPn39Yt9nf
Iyt9W68ojzQ8bLK7finegXrmo84ehI2xnzhT83Dh3s05VTDoZPOyPbNNieLBRJJDj7V4jmfzDcwK
pIRwzTq3dlzeTkkT7azlup8jmBmCZEmeVR5zjnqoFNqV4emMEAvxI5HT/w5PHuepfb2WPYg1yZyL
HXKTUz8lOJG/Fpz6J2p0Fkngs7oe4F/4Qaz6inADksBk8sbVaQeZflszyRdfWc5qJMbVieMGkob4
KfLsgeNHwdU3uyZKpHyl3L0M5yzGDIIAkvqWFKDfNm0fWlFULQQXv0Io8kspaAu4Mz5LG/U40Y2l
wGAeH1ZDQYoYKiVP92RbAisJi4tu6YtgQ1yFjWcwE79pTkv98VLOB7rT/eU0obrWw9xi+j3/dTok
cWedP+HwjOieAOeR6Z/lUOmFJq36cRS9wl0qMYMqaXP/nvVrbR2eUAXCajKdBV6EuLtMyKnjU5V1
/lPknokkNrGatOf1dvYcgOY9hCo6376+2sdefmeZQjKxY/eRFJRZJV/IYCzatE9ydY2HYQ0WEaQU
d5acwBdAPuY9lzLSVm2tandSaO5T5A+PmrBQ7Rb9vrjz/MKKD4aBOv8mpoTvGh/2c7/gTVoCDAS+
mbwNnxqW9/VzQ7XXhJUH+7rPIA4VcC9I+mxHw/aHOzdkYMMT2mxuyp7AVqATpB9LWeoHn5aqOcS5
j/Cydn71kM6OEa2QsUeDFx0bwaFoMKc44Rnv5ZrUYD3K8Bpw0sghRPyrcGzQAMaIOZpw2MDq/Wh0
3wUuqyklCqaKCmCkSj+5GQ8ULiUznQ3LCXS01t8XFQmEl5nMIHkk8hJoA/jAn3WwkXPwBTX/CmCm
K0HZP2TU6h1PLLkBe4xid1mr8TE5YVgIPzzNoQv1tiN7lXiTIdUW6LU/eQNho8dXvyGHW5Fx+On3
F9A6s0c1U/yVC9m3eNjq0hF6MlEsI+PWWh6KlF73EoMxyQtitp/kGrvhatgY8/9gnSuvaDHxrXOL
4lDS9N4V/SD0euFGXaWnxXTLiZeaQy4JUcSB9RCzlqc2+cRCoyRc+KGw1o8q4cieTO/I30VIaomW
TBXV+lG7yrwZOYqP+b1b9L/K31SITQht7QycDdYLFKogeHRYbNIzYyRUkIP7vEGazVKM75fLbutF
nu24gEs4FsNbgo6kQztqdW+IrAb6yTjTHoOb890nWYFGuVbbBJrMWyCxiY1g03iAXPhYhHit5hxx
M64SwYf9j/4brCOCKKtj8nesVVzvN2wsR5CtYSFE9t2WRj4/A+Q9FdcKrewanE0HJ6fPuy0qHEN0
/VYzTkjmnPAfVscjwpWkkOR64FULkYkWcSQ74s/TRjvVvWh6VW1oh/3zc85j9j6JbKROhSp1O1zs
/151Nq9lkUsT9huwhqryLWFFCQKFOWXEd48R/p1jMkOfP+KCh/F4jdjdqxkipn3mf2AuDRKYSWwF
CCCknJBQVcsLeg9ctugXbb4zw6UPGc5/L5tLGjgS+/ypsEug2WdHCrSD22fvO1MFARRakSaht5t8
8KLsXmF6JWQjO65lNSvr29H03HPf0UQS+t6Ajahv4QAXHI1AV+1HDHGb4cN7GZSJf03A6VZ9gOuy
lQwBpJMN7E5sPSMWdYdlvI/wtSVVeeBXp/HAVDBR3Gtr7ecIEpzCWrRTsPb611alycg/UnxKIMZH
JQDoH+aa+lByczW/j0GMfTeYIpwV4vMfGfcBJJSkBlow4ukmM/INX4YxAx3MTxRTH4p/QnHE/NSZ
eudezFvt1tL6LZMMIc1VxCFK623UnSldRM+E+Z13l9WioZ1tYUdpBPuVhHeVIuMrAdXLawWDqxus
8honPuxTvdL2CVUWNisP6NHIVyfM0KYJ5v+iYoH3rWoXhs3x8xRmGro66UoI+a2dG4X+IM9XwftX
a4U7qVQu2vbrQsDBN2yW+lNDd3/7q7E2f+d6jP1lpxNr4dxhL+cENMyQgTigSg9btg8oHKuZjm6R
XrbkxOAxi+/KybPDgrLM2qoN1zDXxdpjlPd16VqxK34/7YyA+i5aNkMvtmxI5MJ+eXOsFiCZK+yh
AHLgF95MqlbjFo3JVg2WOSKIb35IzfxAtbCBe0eJm00OHHhfcum1LvYg5scobORddMStknMhrcQ3
c6T+CsWnbYzylUbZn8rfDZm/Zi4bzfR6vHV31RhY6IZliAcYIi+JyYW4twYUVs++CyvULATjOz7f
TAje3CD0NX/c2bdzpazHPCoWPRy28bUUq3IrOihag3ae6auhU+ktBng8tmoHVaWqnvolMcmHFJkJ
12lEptr5lI3+tCP/C9F3jd77gL/guBEVbnF0IzJeiJUb0ZX8lORdc4IikfJWxhoBrmTxDcQtPau8
b9YNAXtf6Nf1rIRa3iVcBK1TjzcFqejQ5GAAoCAh72yKY0K7FbxOhJZEvxZEGuzmoSReoXzCY2ZE
gBCxIsyN/cIMt6Dg2XBUHB2V+ZLj7RqZOIQ8ouJmAUSnjP93E/rmLBuziVVmsFnIMc98m2DcDNcX
i5j+0YjLPXJBBbQsEB6ep4zoamELBVRHxGxWN2iLMUN5t0lX5iFyeBrs+NnuQOOhr68KM+q0FPhA
/Qy/vVqFdMETiF1/R/ct5clD0DNQhH5DnuBt3IJ/HvgNF7DHp3/zvWUjVRpMQyKoqL8yNig0S2JT
GnVW3INfpXL1s2tpmJlv6GCTOaQIIIkTdbTqLCYZC++ByhrNGOOA0i1OPV2ZOUpIob1WSD6Gi/5j
6nBsSa4YA3nuWRXCUy0zVamzQSB2CAZJ4W5ObZq0G0lOA/DIoWDcJfr1vLxRT3neIg4gPGLlH9Qf
hVz37K8n9YmT2vmI/b4EdFT4o0BjIm6tfrHrbd/CWT3pDGUXDNLP0TgLjfm8pLJWBOvWdbpx3KZY
msX+12wzftIPMho88lf6UYWxKBf7/O84vNykEhX1vv/WoA79+KyYLBQbttfLE/i5TPd0WzloM4y1
TN0THrAI4N+PcnlnSY3uubHtujHOFwgsRW+HSBeBIC7r+ZRhpjfutL6CdqQDq8GLmD+nTZ94/w4N
9uzn3Y8XA/9huNC4lGhQ6s+OgKaSWy/YsaxBznp1tL4J05rVfo2RByp0EBLF88bATmvFWAhwIQg6
inRkUB5WiNyrpSElkRAXtR09LdvDojAu8lnAhplg2VzkKph+7g2SA0wrBC9s1TB10XgjTvOy0QZ1
ojqZWidG2UX8f4TNU0iGOQ0Xdoaf5Kx/16ut0TTjlZr4lOCsGqbYM+oFo7Lt74atnpvSqh3oRNRK
mT/2DigBiEEAEAXX7+BMLc32zG99yUzHJdfdYgwgUusg/Jt7yw66xbNml/RLJbKUNH5WiW4I87Sm
h2eUxFmxZNpOODrUhXK4D5bGmunkCfVlk/lwOtuQTM9h6dkaFeadYeH/sEiNIzRghEtwClw82Kaj
yBp6UIlkPg7ulm7UP+V5JSua9f4vm7kAg9AKg+45KPb25lrQM6UIUo/x/KgNJw+BNfJxhkffD+eM
ZxMLgkQcE0q28wsmqrk9SkjuhcMDM0hiquWNDUEuINuqa39GDqYzV6dVONKnClEUInvCCMhkthbi
QjGh0QWyBhn4z3Z1z4uI9n0pxqX2hPhC9llfiAKS9nv2Ke4eQoU+qX3Ih2cK7Z4a6rVpgqyxH/ec
LtH+/kp5p8wJMmnQo8FjmnkeT5qc07J7GVnRDDzKq2Q95zvCkqATlVaLXha/9LB0xPiasWG5kRKJ
oe0qTjFuMTf050MxTf722nMnAJR1oBk+mh/rkEmzEIM24mbp0wBJW3WPSGAXwserGENp+0d95lym
dfI+O5FOilWIv/1sSERy/X1nyUTOq9crqPXNE9hFYDVmQ1MmRrKUCndjxtONoz3byLvT9E/LSJT0
DjgY+DOZ75lfxjFQE7ZPBPSisCs8LTyUoalLxlt9Zfx17UV+Qe7KPOTtEYxLe6vV4IzsyR0MP9EV
HvFGFJYERUKsLqHP72CrKpeNi57JOpBA8mHcJFA2E4+7A/C0pBeedugeZqhrVVsOqzn2LQ230Vql
3IIc5f5RnK86zSF+k3D7ldiwBPq8Z1b5nPvWoP9PpZEpnSXbLZZmLB83srnAyXEvJkR89rXNSg2K
tFaHXGk6oNuV1gmEAhcLyxT3JW2ZBJQTgDL2ouPpTYfZfKJBBwq5/jOULZp+3Hyjx7CdQt2RwSxU
tUlZV8kWtF2Bd/dnYxDNOOw1qLc3KvrGrOm24yHUbaBmcO4Py5pLdwSIiWUhTZ4oFgAhBMhsvlkf
Rez4Kc7NmI6f5jJws0mlVU5SEdy/rpprb7Q9UXkx13hxu7eYLAcb31hOLDNGFgQH8fpXbzlcQw2s
rjy2TOY27BrKEZN1V1KxO5vWcmIvH2Ig+VaLGPxx1/TkuQLVr8FdmR6cTmAfyABzN0TFmS0mb/mA
Mf6LGa9kmnWW9lmB9gQXNym0A/Cpgmgj+nlkGmCEhK+ECofYovU62wSoJj4zu1snLQ3pfcgd7RyM
PhO+2wkh7+sriWzNwFTCZ/Z2/NQbto5MTM2a+BIzQJPgafOYOhecCGtamArfGMIpaUsWH+4T5ibZ
5E0p5nAaDh+7Iqq9+9g7l4rjaHcsdG/2D7KF/FOfAv5WPFwQoXFt72YInDam+KHfGq4i7RZ3FniP
wYMMOB2hxdhiFqcN15wpYYDkxw+k2PGkKMhHJwHwNexXVVminagPY2emZcWpoXkhb8+uMkwtjHlN
J/WO1+iggDENiC7HPwq15dr0Y6rKN92Vtk7CPc5K2ULRPpNuMiqkx7Zu2P65Wq3hRTm1SE+sHBv1
aVjXiNMHwf+Fe2ptFTZEH0ApYTWi6vaqf4IRQXO24++R99539CDfiw9GBpSoA/ZaA3LP1xDfOphg
ed6cVevOn8Jq61wm5KIWD81PPu33FoFd/Cxm7obVST2MA2+8B31ts3IjVK2E7TlwhkD19Hz5Uw1+
PNP8u0hmROa46daGh4dX56KrSAfqaHLK8i9QNNVqoe5QQoU/GQqSCgsMWTlzvqRbM4vnkiEEbwTJ
V++YjK6vydGq8YnC6jSmAIXpZ+7bgpQ2c6Hs0mFGJH9/qVem9ywEGFNMo5QSA04Yp965Q17r/+GL
wJN/+TM/90REv2obTSk/oNCSkBPsi7VLBUXzu1t+HP7RskJ5GwXe08+7cQ9d2bGR59TCo+iTpawo
D98iivBYeHLvAMlu6cvtHy2YuvVgB36XFy9awrHBuTSSCTO73vGxuOKThHupdnKvZ8qy31pFxpdP
usHKD5JOtvldL5y/s6WrkOXWvx1CNxuLhpRXLKn6UoOZZlcXL2LKQb2/reoz3jJNkdV2kd4uOhep
yfpUWzX7ey/80594lfGcmjyV4wIMsRw5xqBZAs6ZJg9MAt1keVM7lqOm81qEaWZqsLLcZ+goSFRk
wAuU9id9g6G4EzdZMIYrH5mZBFxLH+Y7iJaF2pesn/3xG7k7PsslLv9D6/f6jWV19UWrrWLJYKl9
KcJmdMEsFqFT8sZ5pQw1v1W9JdthUOeTD2d74jTMWYSDm2LgHuWNseX1N152NAF3JTsLfOzSTeCr
B+pGfwzecvn03H4YLBg5tDf1Hx260+bzwEoeilA7enYJupo7OtC+Wx2Orha9ZIKoky65wuIk65MH
DeLzoKttf/qvFQE+motGtVo5GBXjPICcN3V74Xr+4L4To6aJLbJ/sITNF2lRkkluK8VcQgAXWRSe
swyAvcTGrqkTbKBCrQAyOR7ayBPt6jR0PsqBpYgQKR6SGhfHunGYZyf1MLLyvr7PZhUs7UWtZEA6
c0zpfHRvJJuAhUb49LyFGGZKNrda66pe1757MWGMyTa2UJF1vXr0gqFGoAoLj6x0e6yf6an+RK78
MsEaCJ47BokcVQ+RkzFT282XBmOsFnhen8pGjAEVlqPy4t6M26jXBjNiElS2D9VoXF7393ooVmDC
OL9itVyFxg1diVvwM5e34rqify0luC+3QZUIPXpY0YTWsU1Tskmh/L/zkwur/jgZ5vKzdEVKD970
1Tfm6O3I8E7UZWuCj8ANQ5OEbMxhfpcYNZ4L9sn6tSIH8J3wi6sNOlp8NPuduWxfr4KTCc6DyUMP
Wv84KxYb88Tgf4btivPSLPYt/NEZd6q7HGrFTpVBgEx1qoo7LUEPv62Kdb8igZaocmLcvidBSrEG
4CUtCW0sl4MorPv0PeHk43Z1bD+QdveyF143x8sHA/XUZ4lrt9CKp9HplASDnWMO2UkdBYBc9Nb1
dxvCSoPYtvS4KdWT18w6yxSBgVaJjIiw9b5vszI9GQJsA6hjWw1Lnq9QnG74utBUGRCeUYi9mWkb
oy6V4p1gprXC/X1uXnKbpBqAnQI1zE2pAKm/i7KmZq/tLEI6YqkcMgbIUp8PaB9WRNI+og8tF9AA
Gnqw9HH7fJXQFKPyar+STbKHe1L+4wZcYBKOtLiHbmrQd56pBX60zCpiMwyqRYtZIZQvcgrzzOy3
sfTpZGmgzZRdN19UP7iuRwEeuRL1BZ/QtjKJtYx9PvxuHa1rTaURhWRwzzMel6kLSSGPGzeE9FUA
9m3mHmuv9MG2UITSzpEam05RMuxdAPQK7HS6wywnXw3yJ7JCGG+I3sI0jGzJzluZlKN1VnAVnHQp
Olfwd9nalTi62o4CDwPKZIU+xpgNj0n364gs7rGTGA6G4hDFXLEs64cyN2owfVFRSOqHtj2oFrR3
ZOOdAShPdcBZZ05LzStVVoaB9Dwncf/x0Kab8StVcAVMh6fPUYrZHUlV/k10vY0s4JDiUHlvC45K
7EzjvX3/QyrcdtX0IrmODWaZLzuU4rX0L488ogPGc5aqjR/nyQPKgk8Q+hb8vOCopbjwIzOGsCmy
H7zTf8/UKJmPtJ8MhoJVSDaanOSmDIF2If8yA1N0TP18rLfJZn1Loi0VKr9C1ZTZsHCvDcC2WOsi
3RVGNWsXnTHv5mJd2CbOEQh5vKsmvXk0ZDM92cdEjP/jdICflwa+jeBPCKNfdvjePYqrG8e8WOhS
LfaDIbNOffUCcq/nxIu4OSiUjddblIMN1O5QF29rAGcf014eF2PlyifhMTVjpcxHqexwONBjjjeH
vPW6bkVOh5DDeP4LjnZgORHYG4a+nph58FMvlaGwmTz6BoniOAKSBfrcjXWorJ8z8Seqi763FWzi
OLJch9zpzmWBRqpcxECtdiVq74/8MS5VkQlV4Dj1rX1Bv1ZrGeq7WL10HI9Jw4tNvZPOhM3WgYnp
m5FD3tqISq6Z75y8RqzP3WkWGDKSrgKZEixkxLjKmiwA7OV5jhXW/eUcCt1W17bBrZRBj/FYmhLq
q9hT4mLJpx3jDhWHzAuaFBZMHWbGiOccMMYiERLRgd6cwCdEZJoHZ54/sL/7p1InZ9m82J5IW+rO
6m/jGApYqbSkT1PzphnuC1SxQOW4l4IRt6YOvXw7EoXZepBgd15PEaYvtKYseXsF1bNoeElP20iE
khwPTQPqY0JFMSVDck1nmk38XEddhLbzXqPnavY26JF2dt2MCtQ71EBRf5PUS6jPBW8N3D32ROy5
DM4Ncl/4Q4u9dWqvoPfAG3z0SllPfPplmpOteenuv8EYfBkBYjOC0Jq5lfSV8ktqOvQC7av3l2eg
XndBAeNy51Kx8CcdG5xenum0Bo1qBDQN23hUN+s5Z+N6dRC24K9OzicAD72REkrffTa9/scS5VLP
tjlAq6NT3dAerHG9c+4E4bNT9CDdYOI/r5faFZzfZvanJsuHXFDWv+3WtBcYj8ehEQXx+hSuP5V2
A85iGhBKt5edLqAYkcTCtVgI1JwqDQuovCXwCLaa9qSl1gf2rL7APXBe9VdbrbL0VdWlCpsOsGnQ
LQA8m9pHANiteb2wRgDlOvtHvgXaVpe7r2/r8vY3uBpXzOcEv865zL/K3lBMAFWRI826bq/SeHQJ
/v/zUYDKkm1YMSBPWJFGTYKvsE5uJzWILTlM3coH1Gm7xbUAh5hGs/4m0nG6n//pvI9Bgs9sYj5U
UwLP4u6Mi3eYerOkrvvRRkc+0IznoEOvw2xRt6TVWngd3uxfCJIkhQRB/xZkH4timspoGgXyE1XQ
oOgErgHk9TcWl7nc+QPdOAcrFBx5FU83Fz8s0gq8I+WQatUx23VDwjrRuqm7Uw1GuRxeCvwI0V7h
uXvslRuZs7RS8H1gYHZXIPWqMV4AYdtr25yhXjN6KneMgqdUkdhIW7GHQOT1IgyJilFX2Kkkapkx
rm549KR437O7iMSIR2rSnVfKkqRjw/vGl49GwJVV64Lb3TywUNpGXl11ApzGRVxwTm5KK0cUxT3M
2SQC0ILANjfps4OLUeFABRJKyuEErB3NbcxYeeMG34aQpTYQzQRAlW9eLiT4p9zuVtw+mEvz9sNd
8X3R3AJLNG+TVxW17aCr3Mk4kZamp4zBoH/GFxpEWJwiybr5TJ2NoI5bKaybsfIuaQ0tjJJIlEp0
bVzYd0qIIxYPagkgGMLFIj3n8LSMoHMRQgCRnRh2X+tjaAAPt+KYnkC7vvxaGHEEfhfc1BjoO9Z8
a5Rid28FmVCw5FCNyOGnmslkFreNXlTOARSX32hzJiNHWuUZJbYRZthBylM1kSHv99c0RpEYhRsZ
PPepijoT9R1Tjf/NfN9ROFsB1PeRNKizftTYx3c3cnWNoIrhTqtuK+MJPqbjDH2Vu5n06Es7i4N1
X6emGGc4hhwMOEBJceKMY8Tqf4NeMnRdDDTPFVOFK97wEysE4kPeM22f8gNzOM7E32Zsg1QFuhYh
Ivg4zsB8UL7gSBrxfZWAmmQm2BB9i9WtNWWa8GKwM1MdJVqQdH0ncFdD6q84ZZiz0hgrhvaTUbmS
YJTsdzTvMiaZ7TLZG4L0PGNOIoboKwjgRgqmkUn6Vc9++CDflGI5s9Qb18uVFxVaxr4Cda6h/I/g
RA3v3PiyxFnzasplMqu+iCdQbDMQxOtNONpnXS9Bloby6Yntg+TgNr0b2u86B7efa/A6yMEDO9Td
Vey2P1O4w3id5lJfxjp+bvjRtm/Zh65VrmFFgSu74L/x8dckXCkU6VnnyJchG5KFEQ78ZfhYv4Ns
pLz3kBWk3fGez78wGKFWegsGL8ROHEb45k2CLm8HYLATgrdnAcfVT0uoud1J9CzmGjfxwkmaQe1H
zvZKToe2sr7P05NrY9YuangBUMDygap9xFs37rQLn/JImd6E9CYBgXcrQKp29mZkwPItjKDXAKY2
pfQZOlJNo00Ran+w282XB/6FHWXKI5EHBdjJuNKRTV4etUiWx02zx8FKD8TbUsg17EEhQoZiX+wi
3kERgN33IbwHxDlODRdDhhfmPFgIg+aTD+2Zerq9+nPH2fEoJdKl43lO8cfDRbjMRzCsmdwv/mir
BPVs6Kpw+ZO2V6NcZtnoQX9AUbQ0ad3TA9CCQVo8DIOCgWcYJRzfsP3wb1WmUZCCA/dYsGXGeVd7
f6Qz2dPHkr7xdICZBFwR94qSR7mzeP0OgH0nZgfKLNt8Ulxvem6sQQSE5UME9kR2wdpSLsFev9Gg
cLDEdhRKvV34cC08J87GUgDXh6ncGL696KOtn5MGwstSBRCq+jlMrUpni+B5JqcLo8fnW0UnUxmr
Fn4pHKmbDNcHJj3RaX3WZIQKeNuOMAYgy/5LO9f/S7xN1EssYuQCc7UEIRPThZLgOJUid2fFpU0d
hC8t4k0grRAFss83dR4RUIZoPjX3GR+3APcmFUod9IX0WGhHk+jCSbIf2hMtVKneBjDk8OX0fIR3
u3HrJJaaLDCY4f2Cz3P6gF9OQsd4x0neRyr2nIi+ywwn1QTPQO7sGah0soPOUvRGEbZFMr1QlwJO
XV96jTvwClMk97SY1oJjklF4S9Z8UAHH0byt+YrFq5pj5JAZMM6pa2pER7Q+XvAf6Q8fu85K6iKd
PHcvfyWObsiR6/0kl+WAYZrTDrSCmr5FNluzDimUSGt+UCzozUwmYrwgK2PW8gYmQ+CQqnxAd4gO
nAwbFQfS21HyC+pFZxsThCNtgzj/eVWRpew4sgnhf0ejVlIS/cMZoe5A2HIc+/zDocdp+A7hWU8e
4H/bfwncB2pjeW4s0lDZd9RVsGjPbG3Ga4H5q+unmSE1fZZ9kOnaiFnblWCm8GcvsAZSTJgkp1FD
Na9d030MYw38dafwG9qOs4olMLmpMHFC72jgk3A27TwRw3zS+2WDAa69sYsC6vmpmSuvVtwVe+98
nbn1n4CCaZ3QE2vlahE/KMjBUtFpc8jhovxHxoqoRpFwUQFscPUSmeew7iStKdySel99y4hlOejo
/BmiUKoyTXdMOcW8tmTTrsR3A+VQDTJrnsbGiiJzdAnnJ8lvu8sbAoCS5LXpT/4RjSiHQoweZZjv
Me1I1omHBVGFG5vDyL+K6fvJzAYKarP2Um2qnD0QINRacN1nyFfNhHftMlhD8hBzvhJlMhEAGCxU
+xCTzhHYXghuIKb2G2KW+FstQbAYEffCWcvR8LjG+W7AZ2S1W8bFi+QwiYrPxrI91baKdmU3CMKi
7/MWPdvVnwrcsxBM/MemHXKx3VT/UaVAAZ5bmr/mdwi8REAzVBgLxL0LM2uHBZPTCQVvZDJ+8ArT
PukcG6U7ZsFwJGhMAc5i+FyApIQR/doB2JH+Ud1SKsTW4giLM3DwE9YwGHyx9T0ghshIA+k8T5CC
+AER1onQDRPOx0oECRRXeZmwRhJS6hmAxsoEhLDpfcjHLfVB4rA8e82Ex5oSzJUxYZDP/HfLAw7K
unaY6+XTFve6o0b9SDw9DP/1p/vzTCbmxNs0ZCTcraof34X4xcNpMWqgqkCl45cPFVZXe+l9lIT4
pX/AyA4LMw6rkYU6P12QnQKnpYEQTu4/DqxUXYVY9gDTh0DFwDsgh96bp22ovVlh4Wn+k2icKMop
hwJdnD/JIr+RmRh0Twju3Ca4n1K/HsNaOOq6qHunVcGi91QzcDQkMVxVkmA2MW5bNZUIiqHLK6Oe
6ebOqdfjoEOfZ4+auNeu3Np6xkrc4REFQnPHM3XmQNhcgxLjx2aElHcmFTqpVEs3FD0+LVcBq+mi
D3//8ZfHC1Js/8J7hZHM2qH1p/18RT9Ra4RTAZZFetJ4JeazBzS0CCEy3RZ9myyJ+v6hIsu1Cx8Y
VRB2pVREINTVewJ/RgaAMwMyWZpXMdOkoMyNWP+ykYnvoD2H1+KOW8azkKgzPg3xP6w/b+L06fbK
H0A8QePXVQnwlV0807xKmcNiCl4zNcY9XzXIJPxk3eLoEw4AJXzwzObqJ9WNL+sEcSMQPpIhT/fs
iyDANbbLivzKDhiOUZ294L41RiC5lI6gaw0aDDv/lXfu4ZHtaz91qajOPo7yC0G2xWcUkHVs4FBh
LWzihmibDKwWtvEz9L7fl4e7GGh+ja3TiuqLSQAcyDTcn9Us4cHV8UuZfL4BNEC6Teu6gTcyDxfD
zq9QQ1ivh6ahTkYK2sSx7iUlpda/w0iBF8PQz48nRLp1CwS32H0kfb9tAJ2WdCM3xdFws5XVIBJS
nb8i2k81CiUVyokD38h6nFnuuaZ1/CAK4zAwFVyuytzPi54RglM14815QeBa7C0d6X7TCpuL7Jym
4KLl59gg/b8781Naoz6rZf9zl2S3O0vXsve6GUh94tIs+qKIk+nFO1L/+nRIKva2voNv/xcQUMk6
DyTnIz5nHBLE3CPU0eC8mGIDclaiWFwRhBnXq01bDC46jmHGlTSg6S76DGEa29Z+t7CVEuMuFuwI
Uvxixjlj1REocqyoITuZuz4QPYFFa7L4NqMNc+fQ4i5S9BhnqXh5SkP3kgV8ohdPItZf/X2m7AO4
BDr1a2FtQnbrYPS2V+2GgpEMwC5UbU7LlPgPENhsQO6soiMBRUFtx0AcesYzgq06b6xhaV39D5+R
62aNS6e+ByqRriG7zDlo86nIngbIeRU3u2JbYB2BqhRNlchxiJbhmrPz9KJ4SxMfa3Z1oTSIdzRY
5N05+LLgiBha4VOkv7pNzFnk42ZMRbgzJ/c7+Yp0Qe6HYt5ponCHI07dvuq7etaNfcXIyyjt5oEy
ek1J8q2/Mow+k0aLqlF94scA36mMqa2j4NMzB5w+jJFOwkndRhOIyRo5jfOmqjArclq9ieXQUWMs
TUjez0RDAuUXXMpMc4lfb881RvGX2Bg2c+TeHl9n2jEE/zG0uMN2/eecjjHH+5ctFzwaaDeS+6cl
Pvlh9oQuNXj0QyD6mJUwv7/uxjaqI3kgyInNR9mnQEbA5bW5VWn8oGEzP6bA+iONXdyCxZcldY7d
SznOaRcsqNZTJKEXPSbJBAriKznU27NhBoS3V6Go+DAYLKf7mlAmVwcPElQ/vgr0ibETtgfylqns
bvFBJ5Px5qPvqR2IoObA465HQ+Bw57GyMhqrzbqdysKTTKKWUBteNfC9jz52aJTtubKBWuYIgVpX
kVO+K5HD9kCb/BQrIS0iHpIbPGIreGYz6lxffokDOwzfk7WWQtgG+YApUTOleLCzL28I9Li1LeAu
zT2OCpb3WO8yanTfOybeQYBZnSQdhwyjWYjB7Ur5Ioh1WYf6o1ZwJVhKXo44nyNi8/U8CghIyQrz
iREoxBUp+kr13cVNgoSgSumu6q/v5jXaqkEycxtga2p9MvtSePxlPoJe3qR+CZucTorEpptuXd8p
uCPL6feGkjk2TZfOytO3h04dWImQ03aFY2qWUYsCN7BT9F2vk05DJYrqm7D1d/XioQjSzWyQjY3o
USAmspixxzqPa7G8URHGoedrZo+CResbVE33wZu7eSOCTC/XBMGd1bL9bmV4tv89pq1vcrlJELek
lFwgH5g9pJCREx/UQPuXi+4LiogfY7JhiU8S28y3Z1aZEHSAFGavQFrseDt2fIgapC7CA09KZbxQ
20IVxvTQhvet+jbZPGbJyIF0dhXjMKD5MzjvGFgZWxa3gJ664F/t48lOtuzK2Vj1IyGoz7DXBmKE
b/fnw5gFg8qdDh9C9Mi7n0IZmMCB9tge2WfDamlR+69Q2XQC60cx0gvjTy0I4U+jSz866/7xuNTd
BAB2hUWNnpsr4CMYAINtWMdYqKFF/ElW2tEYRMnDj8JGkZC6ZI7K7bGjCQZWBOFQhGQny1XDGc9Y
azBFevUpiqzrmgfYMrMRHDgf3hewj6zkAKdRTmLNxkrawGIM+trtkfqYCUDBpa/ZadvKi4O7mr34
tuLlQbNMsjjUYiCurEUMRKndT3pmjLa/SN79PhUcJmwXnzI3x6ojtyrwzMAx9G9YmGWBrRCfkzcK
db7F/x4oTnV2zZriY5oCaJTkoD0yOBhGoojfKD1KLyNVkFd4zlHET9iZzj676SkzEgc8ypWJ8E0U
6Qo6cHudmwhzFgmd1mSJ+8+Owf+nFQd433HjNymlGspMtoEzwSe3C/cP/ftwvzCD0wNQe+KII8iC
6k9RJe17ncHVssoUaWZ/KI8+Y6euExr/kStbCgBvmvLZ5URTGwATDK7r4sCxzh6oGP0Z99yIt2Kw
/XiEZ5h1sRme8qfNdK+/IZ61HUeTBCjBxs/aHBkpWWTgmI3/wdecC9zXgREVteF693hrmQHh/QDi
gGLvy7PkoCfBWxkZHfBIKTasmbmwjZnOx1frYkyV7+81rjisJYMskXLQByF+ppZVWzhprmh4krc+
p2WE/IoA6su/23IwdKFclATmgPN6V026QWcnpdHBzrM8bAjcDDnFazUhw2/tlVGQCtR5h87SziZY
1Uc3kjFFFDlEzH2sglrYoN+en24Yu9B2PV/JsOv9LyOxahvxaPU1AOuSFLQpSm+nNGCtu3DvSiBy
AFUcAncDqMzpqsl8XxTJi0Am7vhYjPCAvBdVSxp9TCi9TNH4lZWhhtjyGAhrNa9bnE+r0h3IzPwa
T/DPnIF0G+24B4gqVCRNA+QU6/3UYGr7Gul29DtuhH9DOR5ecVfaXKG0ujrqIEoAzZ4arn41KeB8
hDhVzMXMFPsuVjbsc+nuittcVzG9x0mJFOXgJsikVBhyKWZVmkB5QPZTE8dfTJiPMZF5jRS2A74w
V8PlwHPfZaA84l6pQJ1vlQKfwT9N243af5aKYlOPDIhC8/zVJXZTxcYWtVxuj5QfwdWagwMdpm5s
8R6IABcMPPgvQ79RMA8NrsmDrM+rceeTwFz6UlCtMEsnlIS58ez0FwAlVS4DDTLosOOjzvi68eqn
Zz0ipT+7XSVZZpV5eBmZgongZ2pWFCW9bprzwGvRDQRi3FH0qGTcx+PvDs8w5S3p0CeQjYdD639q
RF4oQ9MRc+W9mQAT6uh5VSKoX6x7nGrehpxtoK+kDF1qDpdtcVCTVnlb9uWKgi8Pa9Rh9zHmZMQS
5fJnFDyzuZ3ytv+tncp9u8LvCw20yFpa0/4gFpRp8BFDNF5Ce+7AoHO5L6dphczIhhreWvF0e4wx
5o8ZnlOo8ns2zOjfg4Sni9jpNFsgrPmta2KXX6MvFSH9NE6bJaYqKjqY4ZpRGRmyJXlLieKH3gLR
l6XaAR4nz6+FyKUramsTRKcqo9o6wkYf4LctuiEbvO4oTjpbAWFcmMMiRjwMqpLxIlEwHdFBA8cj
acHgyf7ho9Q4a7tAWf5WBtgdAWiENpoQBki2s0yOTpHE316Oqdjyyx+VgybZHZ3qoAa59jBJbgRj
siwtSDUowy79OI99f1mw62+xtsmV2/mx6lbqB0i9kpHQX7mZQ5qpfQZEtg5gpZUrNVaMUwca9Od9
in0CwxqfoyQryTdd9hqxqVQIl58771OLFqe6IHsqceE+M3Y2gY9kir1OKgZWVCz8gmm3YBzMGK/W
UmIhux7h/zNNNOjlVNTQnFPzcvVyDES3KqYy69hVoCzwSSi7zRKLRjCrZuB+wautTdMPnfXGzPP8
i86NxiqgbGsVowUxSy+h35Gs6laqSKkEkw3L2QDJP/Ww967ukepmDdhEsB6jfa8eidGMHboMRN06
G7ngdR2td+3Zpg5oiQXWlEH9TffHTO8RzEXXRQ6Zeic5IvcVGS0UFozeXUa1ogUmCnE+qbjvwpHZ
9WIZWtUvzERTWIvSJl346nJ5I115Usg8pLwQVWJtXy1wdTpHjf7roSI8goR4AKpdzt4Rpy8XAHeH
f7TZQ3FoozBsft4byPkDi1wOT8HHzExnRO5W16Om03WNLvnjsezLOyKcWTaDLoOAHSny64AS36Hi
8IJxoSsMdQXjAFA9Mivyas/FQehUF3u8+ziifPqi9MKtpjeU2+t0kPvkJwQQ7+vc5Nv4NCn7jMr1
cSvLFaq3ySh8zIQQCfqcrJrpx4MehE8AgeYZRzluz7hdyLTw7YUrE+5wrkjyev7h44+YFqpEpYs2
k10KvpZEmsMk+bMiweavQqw1Bl2tBWauSLlsHrF3uQbnRHhQJez+7bBC4B3LMY0SbuDcVZ6vv8Hy
c+twWujo6cLJ8yoD4JUYW106rX3+Smti5c7LbhrCS/NhK93Rf+wxkKCREK4cfMPYPMsWZxGzZ6jS
99lCz3ZN76qZf9OXSwWTGakrMIU08hlUuP1aFRL5N1nMCUSdsazOd9vKFL/Ymz1hHF5g2LlqZyhw
F1HdNjV4bZ/sk7jcWOn2c0M38fpLcOvyBlHFBVkUPrQ7G90M+B24U+AJLSpUYGwDSWdcTkzoUvRo
N3BwnmgURD5kNkDJs2OZKjm66yqvqkYXNZ00MWjecxCFJEy4W7i7IN8KleJfAT1VY5niclX3UgSK
eMvYuyI9gEAS8SMRw90QuhheODjxcJ88L/zLoC6pzoE1DY8Q6z6Em+XBK6oSqNse4u59hGysdmYQ
pcELz1TR4IlKDR184gZ1z/6uvWDgHgEAafU3W493a0Uj5wTCvxnhotrY+wNfv2Ycit6+O2VdAQQN
V1aa9egIH4iUUGMgmq+SCQGHhQU8usek23rjUhTZzQPQ2A7+o4CHqMNFoluRnjaRyWlc0iMybRUW
a4xsqskD5t3JnGuq2sXwfO3t7s4wstS8IKkiPImKHyE9ASAp0nyE5QFkTZ3HwcZ/dapEgF/Gr1GZ
qtm5rY9bIInY8VFcxQdmMEDSPTYuABbF2SfSaqPQLsbe95m9cGJZ1jCo4Ygaea0mcBJv+u/QbE05
rKnbb6xX/9RaHscnpcNSdb16hajMJRJkKsyahU8YgRg0VA1MWpne3rscObyvDpY7ziDMZUdNUoPN
vjb6wKCdxM7rgOC5WiDiu90RsEw/JF3nWm3pjCgMdD7n1FT50NctJLg+367T7qmIVO8Z1Egz3O2q
BfO3ris4zszwEzFdz9jTNbGIa37P4tQ8v8SzEiy0hXZyJNeGItwCs64IJZtsjX8+Dw5erViXvaW5
YRAQ2I/tFun5HXTeHRQiIMzR75nrySkI1C0hdipKeBoAmVRGewcAYZh/N4JsX++USAQpZaKp1Ptg
SmO8k/Bh1N4m2OzXY3MKmdLirtT6KQWG+Z5lk+CEoux0nOPe8xsPyYG34AiFfISONxnFGtCulQf9
irSqn81/Zw/1KQ2/2BOJdoe4Ho7kUloHFHsxSTBpowoxrR/z4X4oE/nUzUNGzxRN+fteTrOR2uix
1xcbW2MUAx/nUYe8U/u2QssKhyeP14H8NV5t8YC07dGGXuhSgbMdi6qmd3X2vsSdRFDZzh42CBHD
kVroGHlt/d2PFdS9X5dasNXv3W2c0Cw8t7iNJDrhrTdvHSp71LQ8xHqnoEZwTVskNlWLSQ3vIcwj
psyWcZV5j9Gt8b5UE4Pe1ahexELNw3CG172xEccQIPtKgdfHoCLU3iAVRmWhIDMNkZCxy9rxAhjs
aaIVIQIedvHAIS4mI9i2F0+oWJUTNsa3UpKfX7CsqNCsSSJ/s7J4FBN7B3L+6TclrYuGyTelgLDE
glc27wjboVx4I3/YKrLlN4LD/L2/imbuMevTkJCz9YiVmYVCF3OtuIkYE+FjG+5vJxlAd8FdziVm
cYO2ZqM/bzjm05aAm8O9oQiNIlvs0Op3ik+2T8k0GuxnXc+fIBJx6/Opc9sZOxjryKNM3fYINkGA
FdVIlzlTu69ClngpsoncbPEXq8nbutgskPM8anWsRRg3puHqEs5aJOYHr8YnBQv7mUhRuu73TGIP
13NhZKwKul2rIs06VmbirlDZrRzTqnfpeEv4Iz0CqePDZf9UG5nBHKYZVqTC6eagCRKmnn27Am1U
C1JHPqPI8nuoP2IDFWtziVG5uQUHR+W8K0sb6j+kew9Cah/CpFZ7N7TqOhcMV0C/UgR/fDJQcfcE
LVvbOBn1cwkEHHemwOZ12CgT6cK7BMfRGMdFlf/uZpZ5H2zEZR4j809sHdEDtyAOwiTVeVb+Ay8p
4lYnTFC098sfX+FU3mw94sfUgw3CFSLAwFU15R5y+TKcZSl70cWQcljkKeQIx/p1IclN7x9AlLm+
5RSiGJkVgx4TdTq5Ya7GdvAOY67XkrcA/eVTg6+28BNTlkkb9drSSDQxIx0/5qY2u9SowzALQFHb
mE9eYBpVpZjBPHoaQIGYrqsztexwK/3lN4G6CKBwKoU27Ru/jCN2YcPYxFF8OKR3IZ2pIyVEKI6q
ltQNJoy+WSdqDzGGNUTyGiqNhVj/p0dgHQ2+KRMaqoamK71keGw5DC0YKS9LIKv0luKq9mnISiQh
qckKOuhwzgZKSucq5raLvIDBsnMFN9KD4Z5MRNNZ/natnPrlrN/2+vW/8i46O87NET+WRGd/aRbm
GMUFwQy/0XF8i9K1Kb6sm06zhkvsDXvqBZPPpv7U/IXkb0wSYlIFsx52UhYUS9ro8Lqfu4wTOuYv
6bJEz8mNXc2RvNinHE//1oB3YjFzkM25ZI64jJ3VD1Ccwp6hMd/RsxszLx/lXzfLKIAmuMA8kWyz
swwATVW2mjw8j1ouYW4r9rm2t+ewAJ0+qoLakP6KrJgYncDBs3EeXprJek0A/qWnmh7GcHt9RwvH
/V2VflvT+WIV/wgyO5MhaL9h9KsJhwu31keiC3QjijNe62DNQibuK1/NTMHkYn60u8wPguDdvD30
QLRld+ftS14Z8rF/KKY1J0Wth0ljEUVIOKLFsACCpDGOp86mnNWKESGbcxSqraQnwAgNaorlX4Df
G7F2WDHTUXtvqjLd0J5/aXyMnRLi8S7F/lmQITUFAn9a28UCTB3jsMiDSPOctCme5EL/DWkwBBZ2
XK5Ggf+AGVnh52Mvn6tNQbVp7xBw2yQx7PnfVERXtx7DHd22qQpPufgA5BjLcK8Yg6VARWuOR730
pZ7RWU0V6ax/fCZbPwANjfgVC/kTr8+HKoa7Dp4/o3GhD38/YII1rTxotkxc2eKPnaK97Oym8le/
vkY23vVx+H1Vy/b9QsJfSajuEC5C1ihZOu56lWnZY8FJt9mNoN391xa3mZoy+JlyLiqFhllJYMSZ
2l3izhBkb/YVu6JPfqit9/xaVoKUiimOxes9pBC8NIzOgzC/sT2y8zuI0QnhiM0vpcARhMcO4d2v
/+wFVGo2NlWecjoKAg5eIUkv65E0goMynaj9e0VBXVD8J3FM+aH5iA7xPyRc/JojTsqnPEsCdmeA
YYxjM7XiW7bb3yI6RoiExUvi+SGrwQNWsokuWLaRKvcYLe2Mk0F92UyOklZvp8BFyqAZkukaHzt2
pfPjgqCd4Mq4WWpXi5IZ1XYQ9nOAtGhg/FhVotonPqV692MuYsN3Rb4pcq1ulWGa31W8wxvcfjQp
9c0HP43XhcSjfxxAh2u0HXANMa+7Acy8zh+eghYmlrY4Rsv2qxP0FZ9OAzWMm6A62/LuLUJ48+pv
6RVHcFKS5eHnlaW9Uj1lsuDo8aPsnQSr6tf/71Js2vWy5mETqT6o9YQ+AmaAhedHgpIeZfZjzOwL
WiQiuCpgM7PabKCRi5Wt0+L31s3tb85aaf+laUXqhXbjrEUEJddybrT73aWn1B3tcbxJYiTMK0+D
fzywSjzzgymGLAqxv7fg6TmJL4xXhwB7ysnlarU8zcYsqMQ/YRP9HdL3/KCkCEzTXiiHGVvL1J7P
ogqiAYhUjrrHAMl/1+gNGpIfymyGUpkuw1PzmbOhKs6ONUplk/HbjN9Q+OuwJjSx9iSoBGOui1u5
/dklNYjPsDnd3qhhiWsbhne+HEEYhnYRe4Itwr0H6EywKflpS/jtUX4KKijP7VoUSjrkdoqCgANb
z8dUyGJDbZPDRcjNZLAbEyt++ua+l5PX+O8ymSfKFy6XjxmrlTcejlj6GQX9foRZomLgQp1zEriD
fmc3NLllaR/E5zffwFXqZTr8IWGkgI5W6uTWoIWQ6VzLRQP7gZ7C0METPyxBou2vfwlFBagGGei3
SurYJpiL38aTEa17f+Z8OTPyUmkEjy0RTa+zx4dDtfzZahJMwn6+ogP2nRcfq6pFa5FRY7JsF5RQ
+btrrTls7kSR8P2oWqCtIn/CqaU+vTcRbWtU78OKj5VhFm2pjSK57L4fgIayNPEEFpb0oVjMfuZF
roqAKDpexSizqiJLBH2pji9RaZOw34jUTC0cS/MSKgCgaSPJqxogFTWVTHjv+XdHzSAuqlr7yFHc
rVPLv8Xqps1qom/J1Z+FOy9A8I/utMxKx4I1jrAwNJ/VXUmR0Q/pWKU+jddloTClXCtQXOJwxvB9
YDGoHpI4pGlV414KIcpD4760II4RpYf+a5q2xdTJ+zzDgCXsmI+IhcXTZB6HS6v6NEMtUVbeQo1W
xyo/d2UzFnTD3iGQm4KXjtrKMIcPN1ZNfbHZQfdjFF7Y4OMiONYpf90vWzZfoNhQIvtvJ4/y63Sr
PVCHgVDxofW7kbHvcN1rEzmWUziTt+x/jRTDvDHZfv3SN79CKzpw10Fr0OZR4MX/F0oLy5E9baI+
e6q3GahKz4jJ05tyETn/nZUIn9H9ZM5/WpLeqbIs3yI+tUQWrW00S8sYbHcQFmqCGvz9wJ+VIs4z
Typ9+7VcxfGyGExTg8xDNI9UkYYxid1xphuiWjyQ5FMSxoRH8T2ukpBM9v7Nghcjly0Et8CeCzqO
onjP2SQbWuJagASLMFG/BYansVMs0hKH2uEMeIPTA7K6wpG2+/fGY3axiEc1mEYTftaMDloV5XtM
V/TjWklJVLmagmU3OnQByQz3NPCbzsuo7pl1xtwGHFmsPsFW+OIrVSKpBZRMqpE+x84R13O5ORtp
hPNu+fAn4r1jSMqvktXRarFN19qX3h4tWJY9rj7WVizxa5r/qcmhpt8u9ImJnG5gmV/9pqebGEq4
S+A7nwaPo90ULZClzDhAW7xcmhi7uak7duyIUPuktS8BlYy7DN9+5mnUJ3Du8B/FoiASRusPKKF4
StTjkEFPz05twWjgJmSO6UCyuV4tNSnz/b5uunIb1Q6uGIUfHXi/08b4GKOYtT1nWR/7K37IjVc7
iOPBktnt4ip8qvWjipULUuvZcykdT2+MFQsFkzxeP/vRVJokSdySEROE5rFix6yP3EtWD6j0g3rg
oGsJiOBnPLNE0iC8RaVRugD9KWc45joJLUIK6wpvbOiXSwMYSLzy6K5cUTiFcj0ZTqa5DjN5NsOw
TN7aDVwPbJIN5oFO+zCakr6PCnW6i5T5eZtEUGOWa3kww2YG53/PtDP2PeNBHhr4zrjZjXiCH7Rx
67Qc09ykPsT1KAmt6BU2ApTKvGhqeEAq3xuWbhlxdGLluVCvOjdAilLL+pqG6GgWY4pe06GkaZUE
NTMnjEtrzMzeyd+EKAO+JxJuI8qWIj8rJsLY6MaPI0eOmsSyq6RpBxcHZvCouGJzLUNlb6GO5P2o
iu/AwsAJ3S4fGVRXr6Qe7CUHNPFlx32xhCOp6KJ4F+9dxjdwLENaz8+Z5Bn7AeehPkg4CkzZvzPD
qiWcMFKvIMHZDV/6A/4CRqAjSh8RktmdxQZHQZxxnldzwBkSNahx0lnin/0Ts5wBBhJuS1svHlwx
XDkdk7hHU4BwIji49z4yi95TUdjPHUMwsznWl8SSJaR9R3+QPiPVAeo9J+N6zdoXQrqtIx2o0d/D
mDX60Q/XZmaU2mdgwl4IEYWRuId/n5vqc7B7GRSMTv8uY/j580lh00Lwp5Afh+rhDRDbIqBMTVg+
ifYMgbDyH7d+uk02BijhFOjQHbfwzxoMdKKvU2BaMRVV+t7kipEn9cm45KNuiS6CUIx71wVBJ+qY
wIc0dOQmM2Jt2uY1zYkKejbWWEdP4vNmbs6DoS4Zl8eruZ8Eu1uuw9qln0ynFv9iafEVkXT9xvzH
FyvUdC1wYMxP3up0MeRsedAZ2ZurwwgAGyk4ACsEe5gB2DcmAYgr3/xdRUmvBcAQtZf1hxDCex1x
jJOwyO2QikJ02jMG5NdhAyHBMEXmuQwSVzF+PioF4uOfHSGKN7VGIal5yvZAnfe2O9BJGb6FGbj9
2APArAQElxAmEF9KL4Cm9qWcq8vM9mYmzPVWVgemdDVgeqF6+ED3lA/QcQ+qKrGkPeH1hW2YzVFj
4ORnpGVhGjq7B3j0CIoDZFocFjEKeIqNNAtYJdb+Me3x4d14HQxwr6vU4nQUnTUt5sRK6QBKcwB/
/sJjr7ZkCInZKkbvJ3EMQhjoO5UhYIohHQB3QhCHzCSrh23pKg2qvb3p7P3+NkaFdTYvXp8btAmf
4NOAqeR7tNNjNoeqKW4ElyFXF53kHIKsSOkzbjtMGrXgCttGtuqIlk8rzTZAYmc7muc1HIFPernC
Eg0cdZ413AsZikZIqoY4tS3WKaYrT1JnRqRHpo25D3bU5E9moru/oYVqXrjBw0z9oqn/SsOo57gU
fD+ym7VWbfWIExUT7JfLsFQ1Q8g43+7DvS34TMlO7kifysrEgsUk81cp8lbxj8ARp3hj9R6l6rsD
SDb325pYDiWk5wX+B0gAiw6fLJzOXrN3BrszyGgo7uGaN0gKLo+oVR6kpnMa4SPnAognN42NyMIb
MpRcEWm8cQHIQoCQQV1PkCb5lx9kkAS7PBMMAsYOITIjUm9QIx5v79hCbbnOwo4H14YZkKrUTDrY
nHUdSJ278lDYQKmiERk+Om22QK6kMyiVSf8NdElq3687pFHrQx7UHuwtk1LKQoyKs8a+9ekTj1ZT
iu/TYyTdPq2zXQ1z8VOaopGjj0TvCuNZoTqENO89tAk9ijYO3YwTyzDEhVNsekSJiiYOpkcpYPgV
bdG/6A7NuQP7kaIQ9fMPv3NzLTCuRbIzz0CU6eJoctw8zljrVw3rVduUBzkiohuVNrqEpO5ShcuG
gAZRZBdMs+xqAmMgved3PR9PrLiKQxC6FwfE/gVsoomVMs3NvxpoVNuVsyRQWhCVVNm5A2t4z8HH
XnBA1R3pq1Oq/9mLvhLltwL+KVL8oW5ZydBLHBWKdBSYhUUxT+sMWonHr0oCLN7WS7+zlm8pvRmv
wUJxGQW3K7/l7Yf9OPc4ol5IUECC3FSFB167BTrA5IZJ3bZAgwiM5hGbe43V03fD/HFF/YfuAD28
qWNEbuJLS9/0qLY4px4nlNongwCOp2HNjM41VV/pRfn1k+5ZO06AoSyVX6D/Od2YSOBZZJjNJ4sD
6CuV/R52w1Z4V3tZLH9Mtrv/vWczxs+4pKESxTRMxcKlwIrOcTuCjZMKEp2JubcZ6jT8Z5XJckTw
1UjtdGqjnvs7/2QHf+rgzcESGIefI875G5l5DJp4egWIcMzRTZVTlqPLqEH+PPACYV58liphC7p5
izJenjzd4a5DYIU9gysNdn8DJmvXPDAsqtUL6W03CeOqvvE+NC1r/uMCju135QMJsV8LKwjUu58A
ADXYPk30MIKCQ7q/04nfqJ+Ez+pJtRc+lOuDfmvHTVwMdb9PIAD3wVwt8+KlDl5JxV4vIQSxxN8q
UCemioCZG20q28c6xsJ4CduEonuzLnjvL2CeYovf67T5pN7AgUxjIe7dT8omt6vClw1nLlxkX1qQ
2ThT2WMtAxOmwJMb7snMfdgpQLD+M7EOB/s6jiyMSb0DrGZJsGLgZGrEKhuxsDFmrzynf5nMn4CY
MehYzyLRTfTiDrY67+ZSgJlqJ9RpqtpX7uaGYHW7/jkg5cSr8qOyLsrITipsSrJsBLS6Ar8SjD50
b3ha2DQ+Ob+HivWd7p+tXMugVeI8FWim7AOjNhB1uuAzTFLEnJSvM//ZWYQalNFrP4OplIFzPG57
XVeWZ/xAiJAvZntGoBWcOoyKz7LZgystMuvn+V2NGaXyR6UH/eqKb3h6PfyhVJpyTYABHXDIGXNe
+CtczEq6DMhGFPhCfVDdNhhNEpC4PBjPlSn+RvteL1tTHO2jVu9iAbBX1A/w98rP/4OlFXgtl8Hq
P0DTX6sQ12zfPYuS/m1elmfxOCYjthVOZKw7OK/f9UkJaV9kVscugUPTILJJ4l2LYoBIzSMuQvq3
SepCfXGlv1+YIU1c1rLSlwhIaLu2JMU6/UMRvU/nCaHwhlgcNhKtfXU/F32DLR0ESMX0C6Vx00qD
MWcNcGFWFxboYmAE+GuyUklwHYXx7gyOUSqHP9N+kVBQRvQ6C8Gxpk1hH2bGgdFd41gZL58OeEzw
GOZqtr+U8TkExrwU3Gix66EUhdHqU5usPEFmTwPg5nQNnLlEA363oO7BlAiKawqtaEyuBE2+5BIN
mGOMT3otyBIj1WYuOMucMM+ZCMlhD1tBoCnRmzilUS2YUSppncmUaMrrtlnBUx3LLcQexgi2E6FA
kQt0xxYUxjrLsuB9BqjS7a982yXwJPnifh1CKmDAsQPZKksMozZtdYl9D4WAMUACdKrXDjnoiq4v
UoAgxWUHhO6On32OmcVRl2rTKX8evYLFmrOzL4k90bLfKxJqNpiMSn6NNXQ8LfkcmFkS7+yjphab
Lz8viVeIZGbnyiRzc4E7yso/QMN0lQGaTTYnXON5ID1hOt1jpxHb4Bsm21XlCsk26ZWE7HG8NM/m
orRqGw4W3nPZ71Dr/nf9USA8I5zfom2aYquwLfxQfCTQAtwAy61/6B9UJvlOWMslMKCb9PIuz5Uj
u111OFyykfvRvbGkkCQrV8vphyo80+j0RsFuD01KSSUpnTBM+lsns/f8hCj0mwpPENHCqUkTCtJ1
keVu8fA62EFwbMYTqCocws17Cbhxb48FfM/U75AbqGTzpEiOwyoZYJdzU02W5FypK6kBlp3HtIj2
22z1birdQ8mwHMmdAybChQYKFoiSqYZOasK6yyMwcKwaaBGJWibnrRZeEJZq5qVTjop4HjgY0DM5
o1wygr8SCtY/Mf4R2dL5EkC4commwRjf9vpnOwUhNHGBMGyI1wujAojpLjEmrWfAxXfHV5eTTuMX
5UnTg3vxPLVMkUe7cM/rgHhFSl+wg7HV/te9je/6t3VWvlRlcnDqargqzHf96xZwOQdvWK6dEqWc
hw4zxYv3scsV8fneE9A9rZnDp/FRdON/2DvDsMhYYpRoLJOj2yRHMDWehXFbDCYGAnN3qg1LoLGC
rZa5aqRKNP4tG6WUbiAZ1pEDXjDYLecTJk2k3/Df14EZ1Ty/ccrUjx3hP7Qbv49+hSBAipIjR3Ag
TkqD2tvnOx5AShO8TcBw8hrEsR+IAB7uDlOLzDLKvw2+jM8tjc+6SfZO3XpSojlgmn0L+e2TMWY3
dfEIqZkM8SeacOWyiIwEGqtXs11KzkixD5mtqg2IQZF4CCWr4HODSC8UEThwTjCGNEfFNHSfbOhH
A0W3bUaPcBO5aTmMViqnqX0vVfF15vOv/r94orB4Gd0jXmykshQ/aM9T8Qycel/Bq1yR7R/XuyGV
jxthYvEcXfDejIAPuRlFwrZ3U9/ijBj7rEWWxAj145NjEH9aQGhxoFozGbAkGj8OTtFQaGuxt6+x
dE8Y13TJmOeShmrDZEIacDqHE5AweQ86lsE098TTK0oxjXtiGI7Z/fw+OQ9RZH8I8PyHRXSOMyAv
1X9+jCWns/pvgpXfeaD+fstKSH3gjvX0MjqIeG5XQVyAkauI0ulXnam/l0joYZUHNn/jzYlI+kj4
8k3kXAjGKiGMsz4zRNFZiXY/mOa3iNb/MTKYHGSuq0d71fEyK2rnpWovcuPVSKtSiubTzW+ImWe8
xK9QjSfRbzJbKfkm/+W+4ShmUbhusDSzuIcLAFnZCzSNg7uqxlKtYc7S7JkMnXYlHvUlFM7yb48t
UBYnB6PR1XTKz0AHm8sZcZjxNoA5tJHNnPjj1baPkRGcSe+nhmsrgO2zGOjNomM73FA6+ftqYzLl
jNlBVbETjjpqRsaHM1yxgG6C6pQMU5aOeLpxteExn6QHwuFNwzohF1xbRbOh36BOlWwKln8wmGXp
U5Gfy0ZP94fsN8YZ8eKDtPwcSWVJkhYQjAT9bS87XNzGU/uZ578bwXJUM1BiLPMzLFNUePRzE7+F
jw/oZgo4JC3wb4Fd31fjyJb+j3yLrPZwopfvPLaXPGGYA9u4iRU6NX1CuaTyNwYoG1x5t9G3iD0h
NI0ViCG1hgOhmtGI+zpKJzhfYaMVpJI6hukNfFp5+S8okAFTiZlnhfdi6Oza7qgoyyC6+UhfNP/R
MqatfC65kPdTHqbBV+HN2Hr5OpaqV/uJzAr3bAEVbLv3UtG9M2XzMLART1qNAZ8CTBEEPsD9hk1G
7eOXOiHIx1h7Z7eXkkNLHj/SFd8ZZVHmE5xNgQgCU20nnZcbYMhONUF1bCJRWgwMUeipb6RYQvNo
Qpg+rLK6LUbnOgZ3T3O0ClrDvh+ixnXGlHC6lDPU//aqQ0lqwnlnquYsEVs0sPFgr2FTgY3L5uNH
Z2Sakj8pf3lDeIAbSBkP+Cvh9lBPOwsbvqqSYmFH9pftHk3oDtLFl6tiIOdEJfwbJRPTEQWeAE/X
cONvDTsZE6e0MEvvCc80+gb8YI8bQQ+g0VXU8FXxLNTsqpk9ZFAKq9iRwMI6froNP2LqwXoRDnd0
xPsPmVXQ0UMCuThmnBm4LuubnXe5fMc8WA1lSelR5AXtIBcA1RYAuOd8XUgXFBCKB7L7gX8691nj
nBJMdwVw8Mqaqwuu2aR8OiVg3NMhjCGsaBeGvtXtmlsQstBejD2cThW2xxUuYmPaRGLPmuiVRTxL
Mum/hlGBYfLFu7OuhRjK9AuBVzGgBYu+0EmmQ2YV6WY70mfw7x1DfMcLzixFCi7m01sdO9vNa6q7
i08FraL5lOdeftZJ7ziEQWyRlb5/PyBBDeIsxHLH09MNmrirvM2HN1b6sKO2QJ7hDTHRJNdOk9KA
/7yrdOcBMaQjs8Ji3pXa3phqvdZZpV245mVGs3nUd7G2+UNm9xUU4M4C5qSHIK8rgjIhl45RYOCq
JnCjpsBBrooMjzyFlK7wqiTMdZhtW4YhcEeFvrZw8IgwO6cQCPyvz1HbB94+sdJMHgR280DXiK9G
tPEydnkDxriO0aDxCdeghvNuJfCBUOLfR/XxtXNugLuB0YbaS3rMnIaBrnk7WOiTy36yyX3m+KGD
Hjoy5cpuoMb53DXcftEyjiZ7wdJe/fLlf7tEAZqqfCmZtZkKbcFYclfnI3VS0s6Qm53GsIqSsZWE
J5JxIyo3kcUuqy1vHB5uOA9H8Qt6scTifKmpj063hoeyvXLPch/Zk9KQL3G4nZO195U7j17kNCqV
qiXCO1XLN0LtcdtXC+YnmSW2d3heULLTYnFtSGx4itM1IhflWUzaTe7WcFCSmSpn/uEVnKUYdDKo
TxCGTglP08DrFuj2Fh7EaRwrBFvGrke/rw0UiidaQhP7t4OnCZf3W7ZHsCggvFd40c0ychUYXMFt
FGm0krRxpxbVsARPG7M=
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
