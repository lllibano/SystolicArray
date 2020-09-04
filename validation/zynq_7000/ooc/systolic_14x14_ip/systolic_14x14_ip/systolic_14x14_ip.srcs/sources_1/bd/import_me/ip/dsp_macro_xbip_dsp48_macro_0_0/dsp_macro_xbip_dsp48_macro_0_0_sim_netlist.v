// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Thu Sep  3 20:20:30 2020
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
GfMeYno0UPXukdAWemGKkRGSaA0k8ge2yycnwhEq2qJaYK2jfWzssF4DX2k3ooOszUNLz9ceIDP+
GhVFGwouC+eOCcXdBeV0wnNFtnotVSGpfadCVgQmekqrxMUrsKvJcsWFb4Vs9uTzZzhFif3pih4r
1nilIY1K+E6ZkN0DQaYxlr91wrAUxneFTzQJRfnmYdoylxgjTQNidl0JAzT765SWtgQ7v8srmXBc
wiYciIuohps4gKmNDHTBAk5HjcwS7cD8/k3Ilk5FKbB2imYVmt2FqfuBmyqT7VuNbpp0HlDUYjjV
1ucwuUmrxHYB8vYa07uSq/du6fc3POlv7ItCnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I4B4SuvhyAVOe2z9RMM3hhVHIpvpTX8rMlZnOyC3WrWaDOgI+e5Pxn34CHTjChrFOcJFRyS6d1oD
4r6usYGd4obb5F7EJw/u2Er2XlTdgGPWmCX1W7jtD4XNU33nnnsw5OkRwfqZSQF4EULJcs6NV1g9
vOUkBySqsf8vDNIqFZWVGcBXVEPz3FMYB5VhMv8+3N001De6wXBlss4Ga1X3Sxr87bweY4jFj7Pd
Fzcffk668btzR3MV0pSN3OtJkRRgsVYeebX6I7OniZibMYYpohQn4NPNP49QQnrcSFldX5zUeHIA
uxt4d8uzTBjldPJlg8kdFHcpzlM08Eib6n0ZeA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30224)
`pragma protect data_block
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
86fLWFhh+8poDMYVQFI=
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
