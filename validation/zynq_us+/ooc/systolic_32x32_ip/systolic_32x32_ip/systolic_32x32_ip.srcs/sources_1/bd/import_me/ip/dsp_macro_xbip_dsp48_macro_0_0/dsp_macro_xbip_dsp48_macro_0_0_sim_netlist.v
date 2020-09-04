// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Thu Sep  3 15:56:03 2020
// Host        : Shears running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/flibano/vivado/vivado/NON_PROJECT_MODE/systolic_32x32_ip/systolic_32x32_ip/systolic_32x32_ip.srcs/sources_1/bd/import_me/ip/dsp_macro_xbip_dsp48_macro_0_0/dsp_macro_xbip_dsp48_macro_0_0_sim_netlist.v
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
IatUY7G9RyNZbe9fbcrpTt5Jtn29wc+7/Ps0K8u9+pJv7YyUpTq13KUXlvvM0dPNQ1mcGaSLm5jY
Yc3WROrWxWrdsox46cVfwDLH6qH9KNce53yzn2mY7fgqcTwrOwB3mSck6bLZ3qBEmmEu4EBLbvzc
22txnOfIU1nm6x6n6DI0PMBqR4sudQ5l2lMmbX1ceovhILW9SV6w63+zhKTMG/ufqoWkrqIC4arD
qcO9heELSoTok90B/N183vP4fVIZTSiAojg4zt1fyAwA8AyGPlAi9y5+lZUPXWyXgkM/su20L9nF
cYKzhBUiCSkx5k6BE5SnWOBhgTelSQC+sG6YtA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gjT7L5fVPQJffMY3UfQezIN/eAdpvMSCb2UrTxuCeiMclc/z5fnT/U6rgAUL+YC8ymG1J6bGTYCx
3oq9jvV7A6EBJSCZirqzjNlSKRjrGQFuCXzmFq1hluOeQO0FTpKtxQEcEwl2oY/6qB9p/0/21IsF
PyIWUKU0NqAYyYKjF6JJKkevzzZ8nf7h6HBEqi8SpNvqv1P62iVXSz6mpZb+pBPPtm7gPTjEh/I+
GS+2qeFLAAXEU48TO+uNhuxxsF37Bd5cRIXHUAw/V2JdwjxDgLK+t4F21mQcJ4k4W2+GaPNIoOBk
MdKfkPJjE8X7oGphpCvu86CpOf8l0dW12HdlAw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31024)
`pragma protect data_block
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
Et3GO2fizrkS5YWIRm/n5g==
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
