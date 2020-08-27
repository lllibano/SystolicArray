// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Wed Aug 26 21:20:28 2020
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
o3T/mOiDk6K2muJ3FCM+3QwBlnm7WLRtfowJRTah4G6PlPCgbMjgaA9CKRDpIuLW6tP2FPQ+ZHOW
VOBlHBmFhqw7msUezgfDoNWmZDlWdcdsAak9pax8D2D41fs7ykfJ+UMQ4aolaYNM947nDQ/1QOhl
1auXpOXI3PRE20uHF3Mv7Zpis5Ho3S+5SCzIYQadT45V+zGn0OyapCkFzAD10kxGwyMeeYQAxaHa
34a7NAm8N66KIXz+F4d96PLK7tgVTiEznSV7Z7Qvj+WAuwXJor1BO5nKef/fE7TtNZfZ7tB9Bu4a
b2bFgIGYFrBVmPoP448+AeHMTXLt+oyRa2QZ6Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FjgEzdo41TxG/1/MzVdnCbfyJQv2Ah+Am4zjOF1lAHlBcu8RBfzksRVbeXlzvtoVyxQORW6GZHiQ
HOyZptFvROdh999MC9InTKtIBa41jgfYLj3yEFmVyzwNRE8LRRXMcg1VlAJ25MlmTj3D4ZQo9+hl
vrGtbsYIhUBbcV0OGb7QmOTvM4sNBRraSfunayihy0ez8/GNMqWLdbMKskSgOsTzkW0WPYUdtPFO
LfrB2sFiSYqYPE8nRF/+5/eEE1KXroD32wSM2fGREdmtSAOKcuWJjkwjtSXDqOCrFmxekVO+frOK
/kufceQDsNOMuEp5tkeYsVzi+eHfTIU6+zGXLw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30224)
`pragma protect data_block
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
FeE6NNVQddRIaiooRcY=
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
