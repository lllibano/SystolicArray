// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Thu Aug 27 17:46:33 2020
// Host        : Shears running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/flibano/vivado/vivado/NON_PROJECT_MODE/systolic_8x8_ip/systolic_8x8_ip/systolic_8x8_ip.srcs/sources_1/bd/import_me/ip/dsp_macro_xbip_dsp48_macro_0_0/dsp_macro_xbip_dsp48_macro_0_0_sim_netlist.v
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
Te//sW0AsuUGnn+KuRXwUJmCXxTk9psjTEQarYvcjh3XYJ4IFSrjzhPaUy0e0KqkBQumVlSWQ+x/
3vCgX7kPou2ytm0eMGaEwxzUriN8uQUxJo0wounL1i3JWwW3b2PnjB/9DwR6LN/671HjsePkLt8C
0qXPPsBeQimu34zR9djesxnRczvnLzaPmbQsXA8/LGbg+hc+lOopW6dhb642iVy5DqF8pReEPwFs
pL3yoGt1JB8FDTqcJ62NdvjYnFPuVA6NW2t2k+wqcZK26dzxKCmrtf85IdeBvEKLJfYrtwToYXcl
DZ9bKd4nbRJeEqvi3+EjUVOcso0N9yGBSZYs9g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gmpy2tWDopGcrMaQWQUnY1/t6XGvybgwKbhcVum4ieTdvhnheVke0X9ES0GP8uKqtfCAAr7yFHAZ
6ekERz6gcttunhuyZB2Yomra+qjJEZ+hv+sW0gdEhn4AA0kV2aEx7lk+q5xYX2Q3dy5qxSn3jULf
sBa0U8ZG2nHB564zFhhUz2eAeYezbP52axK584DD3tL9szx/R9pTmbvHyT6JBl4lI9c0FyjJCoQ1
uRqI3c1RFQ2UBrYWGX4CIpe54yongA8ZktbIB0PPC4eiIkklX1hgYiMZ2RWqyryAqjhtifKeXVar
lUtG9j2A+dC7FVu3ht69ZOxlGgLHIBvfI6R4pw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31024)
`pragma protect data_block
yTpsKD4vidV0CL4rjwERP6phzBqXVCVmyiL1Z1jDDwjt4R8OSTvhZgLGtstUl576SrX9hs+pJ++Y
FBmE5jve0th5Fx9AiGK+Ijz6jKmz106eQoaM2g8oft6BKJVDV0/xrGN07Hnd08W/nvjSQqy65Xed
w82k7BJ3wYf3fioEdeO4UposjQQmC8v+EXG2o+iol2tPKsjXZ7TdivBsuok21KehvqaM7fQl7pnZ
4WvZCz5giQJBG5IEMbjWyQp2/VoISKXK2MA0zDdx0C1fBdoST6O60q8uK3u531aIsW/jII5F7zOt
en30pRRwZ/0ifwA0awSu1NmP/x07sVtS1j7ndkFA/nwPHbOwv4o31N1UtOwqZZiwCGMBhywmeyKZ
r3BqCeUnB3T1soKO7EFx0RIKGLx9hN1n3DfODW+pTTjTP6qWkS0IMbSGVwpFfQM3utHlOvSWqlM4
/d7lL02KCabmjHQlLdzq9cE/FpOq5KNaPFmr7zgzFBSqrZY1umVM7p17TP307huEMY5sljk+5AaP
iPAFoSVWTOXNwKiHuqFtPxzWTzD77FrPvIIJ5mMHZVEs4P9Q4mm9vvB/xpa3U0Mv4dpojAxtBA/x
QshkxcuFEEBh1gR5xD42y7KLXyi5kTAZoj5crAZ+CL7p3JxNfm4qxxKb8a+u9RKcfPDkay12BkdX
zzfvmaQ7aGHMh9KTiJKpcX8d8j8wmUGxUU4h4UOHN4CVRwXWgIdvHiFyWZldIYwMC70IeAoC4gA+
uU4YKHcIRebn+bnmG4/hC/DwaIMCSMsNNizUkyFaq785lCciesE8qPKXyrQ0yBtuwfENjDCNVVXG
q9M9V1IebJXpm/sT/u8xtXfxecwo+LqLefCdCfzYtHbP8iqy6XxHGYPEr9yi//SEOxmaCQoMnKci
XQRyHNSJGbDmjDoFn9wOX7E5EWBqPU5/++BhI151JVJNqqUV2YD1ueVLR4V37/sFWaow2STkpitm
+siRpkLICVILEWuuINg1ijEkIBRfW8MUo3fPu9ldZ+uBTUoQzX8AsSt+uoXibkVAm8fiaI/INbJe
MJnQQmdSE45a33SbGS87/UIIOlaaCrAQaN6J6rW17bMeeloMz7KAzASOIjeh30M+utKnEZ8TyERl
T8FWfbkdjUAgOXFQhtDm4akx0YOZh0t1VUnMsjS+0+4jS3psg5MY77AY/dEAoXv8pdtleKPMZDOV
yAQ19hDYiyQ7GfyVQiNgUX/A93MEyD4+beKhUY8ncJovqG2dEc0E7kq8VZCG1TIHrFIxb3Z4Ja4y
K1XaXVTOQdQntRyBUDi6YHbQnQcT6k3XQtxS5VPIIcg95ybMJgFONG1vdwHy/WxkVyPSUqAlccgq
eEA15tILpNtW5Q3QcK+YXIjlrmCvqFMC5AzCQJftLuH0xdvl/8L0zh6zZ2rs5NOFfJHvVxML8zlH
OCj+21DB2kMSohJzypn+66ShaOlHlylElaW0cjVQZESU3tkvXJCOhYEUJ6BsYjR3VbIUu2DzYieB
IcPL/a6ZPAZD8qogHtwIwzyO0kJSYhYZmoWAxubXbGLqgElY8MgwY5bAuw1KYvCKhr9oXeSSKSfK
ndyN0DNBbG4neL5a806jRgo+M6A+K0JzJmC3/Tr4Yd2XnQRBD6J5nBLa0Lf2hYSD6AgUUlN8QdE9
+nUqfAt7eN7cQ2wfD/GJJG5tmh6tff9bxzA9mGpbAhjany9i0Jb4hCmCAigdphZWs9xGcQwuvUNq
NrTiaT+qxzNouTQ0ps4sKp/jUmVM019NyVx7rckOIN43Q3L91Fiwfnb1w8qjnRkClMQoY6t1EymV
H2CQm9xevTBhWG25y2FV3jyR7bBG2i3x0VkqFKpqPnXUIjY3JvEwrN3PFfjTkU4pcv45VtkQAYUN
/pEn8irj3FLor4b9kR1CIaIGk6OTqbEIKQuhAhWm/V4Bsv2O5JIZ6mqjgOmM3hD0zVICDkB9Ov+y
zFiLxDQDLqUWWkJsP9inYM6F1mWybwMrUsTdvUX9zJ0DqPZRN3fYM4ljhxK9lU6tDuvtD8ncsm2y
T+dYZPGpqXJwSv3t34LfmqsJol+QhMK8AuLdRRwT9vqsdWOUpduP1VF90/roc+n4fDC6xAGQaIPd
CzH+GIb/eL0MH6u+z63EJ5SlO3EZ57+8fhoaFt2BDo1wRJbZfGpCRRJzRP1jLyFc9iQSxPGbp4pK
40ZQlBbKBndX2V2J602XKAkNsg41IdBFskKyQ3zUvYewK8ZLjvYlKJVk2cPoz9ktgkC6M5w/sVh0
B39VQM+6AqlQFrSW/NalbRl0bVrHcX52YHO+h2X1q1QKMYghB1N4YRzHqJ0RVczRSFbhB/QUuxbU
QLaC0mGpJDBw0wJxxjJ/Ua2Xy1ZKUpFgvkTFNfDSdEH6zSqh3TajDjvE4rdCgBLuVrbmvcg+XWuC
0DBvDxYahesvjY0bEtT3/BFzMau1cl/gP0OUxfKkwvmdkciApW7RLW9V0UveuOEAgKxm5Fc0rpDe
5QI9yNNN4fHi5wBv24qZXTbLBBjVpVRa20cunN0pIY0SI+aQ3/ngixKTZF8+5YtWOs2NrEHWID1R
bKKg4UHY2fETvVu4Pi71DgeNcUIQbZB1Y2Cbp5nHcwPXWt0mgRnOv8KrIyJlwRad/svFn43GTBry
1haFegx2K8HTt7PrI9Jc1SQ//a1HW5PSNnIc9Y9QJce4ubQBXgovjaVTRlmQvfSFEhp5iqzwv4YD
aa40faPkdvdfDpKfYmX2Oh23/YL5S2QNr8w1mSMtIlYcGaq9n4HHESlfHVv0foTjtknrt/2AgbCr
5KrCSR03DHgYl7xfPoiYGFsZaZLz9hxWOyVOIgRDhScIWNEhWTtv+GhPcU/nIm03WzUmI5J+KD9n
A/MEKn8BlY3BDaWDFht6gEuXrf+e8pfg91rxzjpBItJUgOuiaKSYowQgnKpq+kXE3mqCuO7aNfq3
Bcapgda2BUGyfhSWWo3Dyf6Kx8fNJjv89MFnHD7Qs/yEO4RdlRewXTxod1yIl2pQ2JbqqZbSaSkz
mwJaYh/wNwRL1h8t50PpS+HtAlwLG6fxRLhfW3P/n698q9QY3s7nEGuikZ4EJ3i3ArJSHV7QdQoe
F1xoydmot2OGulr7UrQVfW0mqW7h9kgsGM4V3mEt3MO4k16fYQJq1rh/cqFAZ02Ew9QEVcgHqitV
aoMg+6F1yD2QwMXuRNVcLw3GJkW5y/VyVDkzIEN6zzmEU6fSCzcpt3Q9wO7/9Qwt1cgOqwo8+YY4
Ljb4JVW5IM9Jz0BZ4NDG9eiPa03ZewaVnQ0Jx0boc35GI2SvjUL+RRDFVdsh3SffG9RP0pom3NN1
FEAnSfEv5tDkfpKpvY9mJqpfq7rJSjBcW1tDrEK/I9TYZmC2rGPECuOySYlUMioFwJUpdJwVFLkt
bRbQJsAHIJJmtuM6GSng8GBvM3raIquBvg8Q2zbikoNfY0fLVkIgse6wfE1zlKbxDuUuZSSksQcA
Os27/IWx2vcMy36qB4JbLhwz0XfRuY7seQ031mctalaF/mHZN7pYCZyPU7zC+NYUup30reGr8ZPA
k66u+h4n9lhAWQRtibifStN6ZZULUxjIPHk+spb9QO/ZSWDTc/+uNFGIDlUN03UncFIX5IyT+tmK
zXolVINeiAB28mD1HCD+ulaxTHC3Nw4sVmmui8R910fubkYpz45TZEWkkg2md5iBfoBWOcK/8/h4
2hf8fFonZW+f/z7JRld5KWI9u92QUC3DcWIw1NHNU2UB3VFSaZwrdluVX6E2MJ/VqF9oypkuH0VH
h9TSYYsjilyBiep2dBifWXpwyj7ZSRNuCWnLQQKLh6Qkxx3TYWs6zXgu8CY8bmGe5UH9UN8u2v/r
mQ2Cck8HXt971lBTXRBLPZcKQXX6LrIIVEDsjCsT1Q7cnPGA6d2zcTgxMijrbYzh0ZZPS0lMphO9
Tjs1Z4hfuRdsp1qz/MNrfhYXR/mXz8rVaNxAZLsfbiXh56P69SVMVNfdyrnqCV5rAJg1GPQiNzQT
d9DoRlQhoES717CWP8Gcb7QzlJ1hUXIApM+k9UVQXZJhXIN8qi6MaD/QtqiA216mDBhkpRWgmR0M
1e/DwrErGvSv1aux1JrmtSBFB7T6HeoIPRROKPxsUhOAoPgP7O3Sxh/04jMlKx50zTQ4HL60vo1/
frKK73sGuudmbg47j6Bllx7Vt7dLOo4+M308UHtMdZ0it8OqhrdmOVRy56uSsMkRnfha2Pz0wOfB
xjZMbWiXN10UQ2/MkHHgu582647UvATFo3SoFyjTzLvqqUrcYKcNtTvJ6es5f0oUX9EzdngDlLam
bcChsuMf1/DZ0IyQ/pzmGrE6wCsdYmteGROoPA2BoEvD9fnZ5NKrCSSJTxP1Q0kppGzw5ZBmVCKX
3lA1I0tmqjXITnngG12wCeyogfbtLljjUYEGoxjZG4K0I/Yel7VYpFXDwCqZnGbHC+kUaGdE5ioL
b4A9wFtbVyBYca4Tm8/Z5dCOHZDIzlKbrSP2Z5gDEiEXjrVjmoV9HA09U587MWYsBDnv3Mrs4ump
r/bl6u8SSWfa4UbuL2TuBZdBqlqnK70kcCivSpxjsE5Y1yBtErxtCls0rZ0mgyoFm9cSSWzUFj87
TAG2YNPzY3TFQeNxiWfdQLXP1gLd7OMTKEq1G8hHgx851JsuWWdd5ijCXsKt0KbR/i5RsWbQ1mYF
q1yE4Q+xvVrx3gqg6jkU4nBHsxd1Q+tznawqYv0MEVAlIfhklpjLowh4OYmyh+ZFd2MPpKM4lzlp
H1f6uRgKFJP49Cj6P6jP4856eiZYgMHWoI+p/hnLFyFgPu7EEJ+6GUHJdi+MdmuLvDsIbqMVVWn4
Lgi67FHUVXDljqxRVtfWSBGsOvx+ZSAt2sabVPrSDHmaVylXrdn18WS8wRYhK/8EYc1Gi8ET25pn
QdcNsM5EE3XKjZMbl3Ag/RejmXo7nMhLXLwrf7MVQtpzZvG2mOv9njGVq9DwKCZr/FxtzNhfYZcN
9ZZeS5yt/on1Bw+vN4WHfkTK9RvSiA9wa/L6GRyOziKNvXKO19/lWI0txW7Ys7OMIwRiG1gIt6Fj
wSgItIB//qykaMlhGwQtc2fDA6yZJO/UCpmYJdC7Di35RXSnNMnTpkJkQjjn0ZEgNb56Uhsrf0Fi
ab4bj3G6LN38lMbn78B4Yw7yvcmBaxWuaAiajP8CDDyFWlZeQhgEmCtoES1aY8/2GYbFavItfbvc
yOHGuviPR35Z3yAa0jdODqiiPvsSWoEl5XyUISuH4E4/4GafYwhI5p5dEu89087Ss0WmROGkQRlQ
TXRDRL868CavtGJmefNuV/KXnzlV2icLUGkhgcBdDSagR9Tr0SauwBsuV6bHN8nzNewqhtfKoNVi
tmYPz8p7JyHWTOKtar5KBo7AcNvkU+rh0uo9BLLyTkRzBeVM5oTuLkkUeLzmR1cyHDW9SOKkAScw
HJ7ElzE1bOLPUrhdJMaoFPod7Z/Ys6GTmEUOOTV8sLtmaJR+kg1erRE+7pZUg04Gi6HWcPKgSCcB
1okQyBtGPgvxNJXxAEPQiOQQPYM0Vnm1FeWNSTWY+3arQ7G+NA+iLAki9NCZcO9Nt0/laq2HcKvw
pTy4+y+4120bC6xF2jxdjKMq+56oolviXxN5UQC+udZZLghK4zNqKpRT/m8gSRRoza+5mSnJfEUG
dgHFyjzzhpT/ds27O8x/5xs9MAFgiTz2U7T3L9HffsqhVeAKymphYqayo9dWfKefTy61LnHb2Hib
rpB2kFavAgA9A2duIHJ6bkBBkeZTImqdkmZzpDd66fc9dsoPKv1Rcx/ONXhnvhnDDAp7y8ZfzbHL
w5Q/p+TfkC/mQhxerBXSX/w7xvXSLrqwxZXKHNu4H8Jh0Wgw2y93peuygbTRjhbUcYI86FVp0gny
zv8oRTdB6vtY+g2g3hcqU5hKeR2j6T7sX549necI0Z7P4zyYY4EUhC4qj6Ff7KLuxUK61lTSPUyx
6Z5CYqzoDeAvUHdheN5gTAtUenq4e/W2oGLAIrWV7BEtlmJKf6kquIySKFHBAyszi7DGLgXeuP+2
H9/WBCKM05JvtkX3CGKh9uX7pcHBT0IH8XO2JyODW6LTuP5FqcCpSdyDPsvRGEkUfHLteYEDeSLc
4Z3Qmh/sEU1V4a/liozXN4QTbP0Yryo9wG56GI8Dd/9GOdid6ZAyKJkDdRdTP09v47A6L08oi0c1
mOstt3wUKtnaJOCffboAywkqFbm4rEx/yRsOUKQykQsJB51Bb3aVxJYVfopjAwK+mDLg26GyHskz
ulKQeB5aHUKAjXnc8lFW1LERoC/SWj+DBocWvPatJhE5S/HtVPYGgz1U/CgrSHmX/ZEwJ6yj+zGi
2TGtMbJBZGaBw04KCGTe5zDa2/9XympZ8cTE4eerXlCc1LybAePnhkVVsPsdrTdN+o+GSdauMEwa
NX/OdReFPaCO+ATc2jIaMTgwOffDojtPn0rj/dLdTfwQBEi1QIrDbqIStJJqd0Fva7r/lLX1174E
tDVq0Ze+gPJUoo/KmzBqIjUjkLGYaFRJspB4ycH2oRTnJ3sBTK+wTlSnYG63WOE4fY8t8Byen4o/
k0T3vKQ6RsiCDkUWiUCRZUnMSZxbq4HGRxNpm0HEWukri77as9QqQZqORByYBVXOhM3uIv5EHa4B
/pjQkzPBs3zHu3RpgtzIdAZboxlaSv7eTflZpn2QkWiq2yiTlA0Yv1YIhUqdwzo5GfQ7LJ48cgp+
WA7nnH99a7corlG5gl24Fb/sAJEvL5Ng97c6BOnQCVYa+H5sA86eKy7p4AJQTxncCwGEJlfk0I/w
I+kphTOeDuN6Yqvn+3vuhw8wukdAurUjjRWvskHXL5wbQFFoKAJ0QxtUyvvVgHau5rthsKlL08HX
rEZWMaUXiz88Iagoe5Uuny600f+N+t0/q1NpKo6bOFAZ7oQcjsq+dvkY0kOo9PML+CflQDvK83uS
uARcKvE65sARe5DmSI3hm6WXCHmO1bAiRj9DBNukoW643YaejoShLxfqMdo3y46Xp3TwsEFOFZfk
h9tbz7507/bXJehOlmLQAODniFlTnmF7k6gHjjPyNBzv8AEOudDjccCZjQKKYVt1MEXHo8g6v55Z
V4XXvZbwvfvuPqevkN8LFj+8gj34oJBW0JQ5oXIBf1RYfxVNbiKw5pNJVQ5mJZNujj+R0C1UW8Jc
2fXlMiGq+WqYtn9zEQ8dafEdFu7SFyUh3yL2PjQA7t+lcMERwHXeBxkKq8sydzkmEDqdRC6D21WG
zvJzQhiXOH9saFV16LnrDex1EuT03MT8G5JroVmlKl/W/+YDsrnMrE29WmxQKzch1UcdGJ6FYidw
Wq0zSsw7vz9w+YUncRewHoYGdRejXLhvRF0jd6kWTPM/zZjqjesbIfhjEKOLschNgsgKliqWspOO
aGIfAe1kfG+xvO/d75BOnyUD9aaDot7C73L+O8YXFUelU4+8gk5e5F1UMc3gZMelMctI13+ey25L
Nfq+pAsUpcRwFSJ7LFVRqsScl7sRDH/d+quhUzQbD/010oxZrCtdqkzEd8vgT+8/T4dJQcpIoUkY
Txt6cQ1cPOHKDlfsm+lbJELJeuheHFAgLtypnV8L5vnoCnz50x5r7ZK0+Nzkv88aSwfLjt3xQZ8R
gmP81FRyZaaPdyTIGjb6NfN4sv1fj3SZuNppyvNFJDNisQQmQo/EpcFPTqkP6KMotgCfVhwY4jBN
1fzIwbK5IxGgOppzjYsS2fJugk+JPHYxEzirMxQId828JqEsU7p0JTUE4crwNRd2KLGdhT0/ruxZ
ZjzeIBqCkSxsa0mmzIZ/4mBHVrZPez/FQLGG6pOtTCJIqAAbJBmr0hla1bShhvrW8YwakVrsUT0w
IiKLOEqcnKUX8Ur8/pji4ELW90CJzpweFVZzYpoi7gCUPGakt6QbOrNwGzj4/HeMX5ZHuJilqVUe
NclPHvk7GVf2MvGpoIGJ3GuOefKUWPISk+EDbWNkiVuZFZ93f1N4eoSGR10MwOC+elAQcH4skZYs
gFWMaVMensj+bKF6lx2weePXTVTQ2N+es3pH07AKF8o7/chmi/Ipft3FSK04AW6SH808+5ZMV+Hr
ZaOlMsas8u+zjzX+KUVMHim1fm3QeJTOnsYH00hbpKVVF46oKXOU7TzDdG8ZckpXj2RpqmwC6OPO
hMggq+7eTMeZ/E/da8kIX0vLRjg0TT024QuGXjCaNPf4fxW1wClWelUN9ELUAq8pCjFwh+ItZZ7Z
GRCcjmCXmb7zsU1Y0J26kWNw9Qfrpq+qcDGu/Rfv7+fvIYfuJWK09mao24OpDqRlnUIaioMPhvX7
o6mPwej66/HCTCIw6YYg/0wuMu1FOBEOE3LLYHZhSurQZZnDQ59kvUQ2LtLAiQHNteszf6HQepgz
ZHeVNKR8MImkkOorq6AXLa4ZtRDrCS7LUlTe/eorvT+ODJEx9DNN4Xo/VYEzBfd+K9ZH0b/W8lj+
eeunfqYXViZimPmGg9UsK9bnobmC5HLHjpf7QendGv0mApqZSgMNCTrV/rXD5/Upf1mAOfOl22eQ
Y8p/HujR/UDxqyseOwyZn+LK3VXQgfxtNAaC5MZInnlDFgzmUg9m1YeoUEUYL7+nKlQr9zxdOv48
WLKpj/n5dsHY8N/F8IbsVMRWi0d1N4Bf0a3Ud6TEZcPU6NVMtTA2tIyetzWlUyuljV9x+xOKK27O
TJBTBFU6i8shhG1JHrZaAkooysEoivvf/s3m3tco+DSVEU8MEiCnv75E+fbOvmoJazTZbPSQjCyH
rnXdKsFjs9xeIsLRpJiWp/Q0I4b8EayEZFxVOZorLLfkn1zNfZT963f64vuRjKxJxKyNc5h41Kxb
7F0MBJRbMAiaLNHOEkrQsGc897weM7l2T5EHc8Lt0mwucZsLo3qlWAOT6HsD70UhVtglQRZm7wAW
30QxthqjasKDkifXR3y6gCijBo9by/A6p8YkgCwHYSdipLcG5lus3mFzHrDR/AMZhP88fuaLdD32
heg4PbaDlFvPH76HyF6rU60+Ow5de0d1Mw2O2GCUSIUQTEPw0PnzZOpVt4bUTMKZfyGUK6AxIVX6
gJqgZ9kIhdPFWKlbl6ijRi4Tph9FJDvZKpg2bQhBb5YCQPwXo75uUQumdeDqmWztI3T5MVtxLEXP
DGOTKKhSsQveN5PFN5TeuEVZFY76U8NRDOAKbxXyD+8tX2BUzGFsGuPtbFM5OY3dsr5OO3v+rVGL
CT39EUGVKF2sAsKCuzhBf5cHBvnIhWZRDutVfwygH0tY6+tfSdwwSc5YLv0YPfjqeu0Eiygb7Hdp
Ke5ZEDxFundEkfn2s3srtKzb7lkXnR4xj9klzoEDjD0ixo/thte7+ub3bqwfONuQFv50y5EJysfA
xgtQYL+6Uw9ueWP2+mcwj1D6TPFFwg/dwQz8FLIjXK3FfmcRunL3/Yshb+18u5T85V4aOvgi4cX7
juAelaZlO/yfvnFT+ClPi6MPgiuN+BmNPcxsYRaVYxxA58njad3OIGT/9sKv2lq3S6/rrQykHCjP
h0/jSEzRuYQuq+MmAUV6D8SLJ9ZVGmzThD8Vm7awDSk/KFTMsyCKz42UybVujGj//tqv2A1LzKsb
jDatMt6nQ8dVHKG0oK4Whw/iDpSHaruYlvPfdxYhDcy6jdJmyx4WSSxAj9x8qXlewnyeAJqaI1fA
TXhRFn6l5auvrlkRPMk1qAr5dDfYin97w+AmxFZ2dKG9YPSe+WEK4H5UelgRD5MrhW9woqFqEjUv
JMKg2yAu/OUGx54OyE9EfGOdi6ISzs2QDZKKhtGvFjjiyQhDl0m0acFsvyehlUScDcj1AUzzxisk
k3RX1ib/iujh210HDZvJ97tsnIWQAm8asw8FfpguJdxMm6++R+wHi/lFy8LHUUHGdZUNiN9kDJa1
IZWrcPbvgrL13HRXX0iGQkPT76TIyhpLZsYzYH5Fig17n/8vSHG2u8wMujZ/PsIOLPEYeQSIX0fO
iLx184+hI635QAJGbdAYYlNOYfcK1J5HSfdRrPh6+PyMeHGciMipcq+aAGKbaQWrdKvKKtqFOivf
zQoBUz5b2xBy/YRoPWLxBJFLKvtebUJZgPalIoJv0Y5+oaCBuAOQMgbqqrv479QEufhI6xQdFWWw
bhmJhqMtRM4jIwUwzV82et5lhxR3ynnegmdWT4s7p2mnolXLDNq+VMr6bHB5/hFLMllMdAg0aROL
2gENi6I/oLe96p9S2NMySnDj7SCbgDO/vu6hCHm1KmNJhs5/XnuZ4WaaAJCLZurHGrPaZGtTxo6Z
VKZi5n9CKbf4LYMHGlx7WulJhT5fwrY+ULmZtRXRJ8KBV4dLAQBU8D+z3DPQGA9OXv55LlYhSybF
fjJpypKotZzbodUhCpwTauA4v4wIoNjGTI+xameVFoXaKH5FyYkCkhuIfAA3o4t42Y/GARMnbuDw
9DoMj5gLUMSqlVlHV+gEr2xzpAhC9q0/p75p4IvZo6BHUeTgXG1el/XzAWmHx+75jIjhQdfneuNX
h+yrrzvjwSoUm2MCvvilpKCoEjTlo/rKUT5lh7vr+06aiQGa8ul95fyoPRba283hKlrxW4VAmBDe
T8JG243yz0YlI7dqo3tmxrEzRfnFy9ibUYQI9G4Onmp2zfHKkodK9sXmlzW8UxVarLGuJYUcm/0J
5qt200DQXOStkIKkcsqGJWcnwSkYKj1x7HT+36/SFgvOCIwIQzmjWl6qph4QNPMmIQsRhofJiDAt
S+Q2K71XG/QcR0GKzaKqHdKTk+QA5WLv3T2+H0rg3BY6yBVNCYcT2HK6Od3ZbZhShVHUuISG+YWe
S6qJGlbbvm/51YW0vZ+L4PQDDpOq2Uz4Anx5BIaHYOz27obc6ZnUE7JxitA7hJxhrnrKw7zrC/0S
WTcesvYer/IL/p+cX1RhSWkO76+YYOnicITSd3zJ+HhiG0lSiIF3NYqu1Xc6CfWMQmTuPYnDShj6
b7WHR55AiuaZA+vqjJ8tNc6eJ0NIm9juAXUivSTzR+igZIiZy7zCg70MfnBOW5HXctbofrNoDNZL
oGReY6aEr+xEe7ROHfqF+aabCaLlTGN+V8fhqKuoq4G/Dh3IP1TiKaWrUGtn7qgWeA7bsptcqNyV
S/QNfr+i80F7RRf5VqnqhZDFUjkfnHTxKhULu8V7YBP2NCs/JkpqHEininkfndJ84g5TnnWcH3v0
vlaxScLiHiDLZ7JJ6GOu8Rx5FaF7kxlPKL9fdc5bLlI5re8HhiXStQWt5BDjzwM7tNXYUcZjso2g
bCd7bvfVgeZqL05lNvKyyDO5tcM1k0cqf1k878M8UAwFOzYLhbA+c+Cf0uzt2QyycYiYgrpJR3ZF
e2rsu0t6De6WLKTw1OEJfIT6QF4E1QaME7BBiY+6d4yQNgjgbPiRF+RLD0TKuRnEV4WbNzbTqAdg
3GMzDtPwznaSDpz6Qho6H+W2XQHce5oAtQWZ62rzuteUN0T+4mFvVNCn8Lxd2LMyj9jU3WdrJJlz
A8SHpnKaILfhpPk4xZVF0WstCVGnec8rX5CDlNDZw7JKUQ1Gjke+ZUFmReXe821VICu71wUm1fcf
b4FjPH3hTY7rFfA1HcKJ3B+5PtBAtkMweIrGp7JhAmvR8rb1/KGwFndQKzqzgT1gJtIN8QzWq3QU
ECi9AcAZA7wHsGV+vyXgE+9o9kpJ3HQIRW/TDNgdo+1BT4YUk+lZbFcXOqcGbF/au3t/VkwtQqu1
Vzs8FDZQIeRiT2Di6jDpxe3X4mvUr1OuqVDsnflZdWPbwZN904uCMll/j6ymf/Bx/ru5nkWvNgwE
3Am0Smtai29wS41Es4L9awXASJGK66B7h1YqtmvPXNXjt3MrfmQNx+9Ivo4Oas2F9UVB+gFHNy7f
hVhFMnmhqraIz+/gysiwbnPRAG1R0tsbINgyYmU3jrfO1cLanwnYkrxPj1utqm9BUUxpyV6tQsLi
dXwgJnYS6uhJ3Nw/6y6A/GZmdlDlh8r7gSdOQTd/SD+dRsG7P5Lf4Wjd7T5ust+TK4GSSxDPb++1
RjpjYI66Xhhtm2pNNF8XiPjlD8Wn+fK0ojqQdskqVra01cHCyYiiOC7OaWqPwYvHGMCGBJLJkkU1
RSSGgDxMOpjaCW157aLdy+4gvzKGlRY6O1VN/urQaCi8x+0Hmn0MXssfoN+/0+k6NbKyh4W0ZQ7s
I5cVNfjgopTDMk1wOI4+wjhphTMDwEHcamwR4oGenkI7q0Xs8JMxqTpQ+603TIP2rmSMDAOCCvxG
6SCENV0aPq1wmJ4dcmtd00Spcu7In48mWWmvBWoxVBjcLvw1c0pCOtfmQPOeiC24BYpeZ2k3S9I2
sN/woduIVrzXfGXQ28yRflNNlrhTeLO25QcJvZenq4Q1AnMGxVb2sneUewIqyLhz4vPM6eWKuAQm
wKL9V0qYbLdZdFm+7W69JTQpSgd3JwwPbrniNjOBCEEiwcP4bNwqe1n+BByBvn10G1+SDBQd+J8g
qaOvwSudQu9G2C+CODeBido5HzTzq8zs+TJw3OXmiM6dbs9x0KN+d6wNGLKN2/gVyHp8e5q8KXtK
zDi4CVlnq45U596vvRN6FQlsbvAKqGDyHaYMmUJZ9UTfskYlac183vFFn0rwRGJp2UasN0GnM/Gq
ChlUemHleT+FYfM3ov1GaEG3jxb+PaNZ/T27453KzdATrwdZL+0WXoV9qRXQMHQLdoAQ2+IsN1Sg
ifCaI3uJx8GYwKKkpWcDYZhHNuenmnIiQ6LDODpGTV76yaO5X9fGyN0bJuics2aWo+Nh8dvoEuiA
BfkcnSoro+DrDjAKjvZ3wEv4vhhmt2rIYKkZssuW0J+zWCTtFDIdlXVHGamrHR7mTFeM1KEeO+nO
MH4CE2mxAYuaweGHJD8cNwZz2E2Tot55eu1TVgFkuL5I1alHBjl8BNkuUAaNzsvCnTUsIkgh2aD/
AwIWFGzYDlpsvttCm3o7Arrma9QOgp5o3epNNB4yCBsZZk4o5Pd0l4NPrrtE4UaprofPqiQbesni
IfzsdUqKbAhFFsQJJ9I9uu1egzprz4G9MFvo0jalSIAMlQm5mxpWsOcCplhxLRnVFsru76rVYH13
7cpltX07TUf0CyShvHRYjbUM8gTQfFbs2vbGxd4etq/pk2W0FO2XqozmxPioqY8XqxBtgp1FzvAn
ocyDzqvK55wNsUoS2E11rSS0vAKZAKwvG2cMfcpeV2FvFJgVE5t/vCpWtFgVDkUdCn3vlZAEhZ8Y
+XWcv+md33Z2KyiH5PzHPnh8+FNTyADp7DmyQaGzi1wUTjeOJ90IVjBeZlOHXPHQl2iolXbqW/03
EYq7/AtsH0Iee6LCFqVy19ae6mD8YFV+wCpYJi+h5UFBIYYV4z7zSvr8EtNnEExr6UwpEkWy7YxT
CTv2+ifDRrUgGp0QkRou3i5IFtQ0GnM8v8yWqYNS+S0xoVpQbXpIWJlYeyavmifXHJBpwTK9z7Tl
tvtyX05ODCdB99oU8lBl7lk6HWW9bs5tNMlca9VQDaApPQ0+CGxPRuztLTGJWYirngXWKQCeaT8c
DtHDdv0k0De6ed4GyO2mQOitAL3cmkkS6ZygHz7wvOiLCc3ytMi8IofGfSTrL0cvtvlw/8ipfR2f
WGOiEeIzue4NJNkL/fBJtzaA+sypmheitciQjPOJADkqZYtlvV/fgRpXUYUsKAI0d9ousPQiAoUK
BWPhVZBRywHwDRB4Dg9C4ZcEuIDfwPQ27/zNZ7cyJfjSQwNi03saW4wnRZE6NLltJ6VjhmE7Z71M
nmAfiMBJAIUBOtyY0xsIBvo3vVEeUafXMve2rvX/M+VX8AYFZ5FlD6Zq7WJ46R4+uiJCwZVw+fAn
L79ZbnTTF/Ny1u3/3iEbRPTLXHkAah6twk1flSiIn/5oTPEkhMRC4WLOIZRC0gRF7Crlr3FmWM71
QvUbyF2QRrOO1B5+SUOfJuuo1P9Sia7fWveGBaNDJqytcsFJCfgJ5gqPbF27vJ+1XZZTobHVG+FE
mo5XB6bOkxULlS2PpzRVrgAzYjfSduImss+dviBqbEnj5iAIhLSvaeFHbD0ajWswdK+cFyhdTKMw
SPxoACJXwoz3/M5ZlxEsN3cs1VuF/UnzRdxrknFdI3K8Z6pxVikWTfA91QplzkBVlHT2zKlBZuud
A60CEtPZaIEf+m6hSuHzP+X/ORtSbt6PdL7/4qwO0WH1HX6fBZIeeRKGFTg18OVj0EvaQJHMXcie
iC4Xz4QiuzOG1CTtUGFcGg6OwiYeMdccIIffg9lkI7t/OAFNs5Io/meFzaQxb/N0dR2wbq1G7KYq
hSUZk5WD3ubq2zHVAVNwaVCOFLiQO8fuIxWT5+V/C3pkJhbZLavKpB7z+ANHzYTuslxK4ZTjWKK9
NigkU/A0bDJyyGIz2dTHLcK8yl1gv3LpzPh0413rYnHkhKPgxMX2nhR2i0bfbXo8KFIoARD9bK/u
TTsgwrv8JHCjxRbVUiPH56W+z+b/iTNaMJ64vF4in3cCTkdNvcot9j3fo33FvDkDuYu4zzbffeqF
DK7TEOwVZKpVnlGrLvOLpB1fKMHfUEgx0tkWAksvuBoYWYhTg753X8yfD0mWw2zgx7jm0kBHplfX
YSBT76yFLFzLc/T5HWP1Zdvp3AbIU4C9jSosovBuxKwvJDKlLqgWAa+8lXYibQ3wJmfHQ+EL5cEu
pjeHg8Im09RKoBRR9K3TyLBCAT9sRo40QtWHdtRLC64mirEYIDlbwqJQNJUbuXHh7tCQSuAuzOGe
6zMkppEBcoe9ly8HnfSZtlTuORsBfeofhc8umkU7+PWJuOTE4aXtcVhAdLAsoz0rWYxmR+J3gzqw
YHaM/EC8BXM+mY3HfeuwcJr0gjY5Fal8O/XQxq4eml7h9fAvQRi5vTRu1knZyuo5TYlsenWfQjYy
KkyNIxH+XC/vI4J7fwIZCt9PuMCQOSUUnxBR5m7UtqyfAdAcJh2jOdQvDjdJFvTJf12dqoagSLqp
dfZAJoz0xfyI+SS47UVJOOoU2o+/4xq1jWw5GeJVRM3koVimnanvpoiVluzZB+YwZM6/ppGGd/ep
wknsPy6TSThFfzsnAIJ5oax+YL3G52vv4o3cVgFmv2tnpA2PbtKVETtFgx4bEwMpKpqHNdk8kE6m
CWjf+1C4oiV6KjbjUjUcBZaLSBLBVDW4HmWeGvhlic/3KdcbnoZimVe3OlweoHQYt4vcSAxpGhzV
2lQ3JsndweEi3NWLQOeR41QHcip6xAnVGkr8AGd/jrWExRPhVv1VGOGVu1f6uBlyihyHOofEJDPc
jcc2q8WpfPhrKjwUKLV3clJE0EzD8j44wuYBXmWNfC4Bdqitk2JButoJuG8atwjT0SmrX1h/ix1f
HpsRUlD4ZoI1j046P+e5bKoT0aZIjF/97sdpP9Jo0+rzGxEagJyRYN1kU/OdKnB6hu3QZDHgMtIz
v2/pgIiI4twfnJ8/hPfMGZqIxV+nDsOnUhkA5X4ddUO+cuH8NgPv81gej9lu0W05mMfOher1pfg5
5uzsktSof6TRy3oyj2hQ6u2cFBF/HlZypKc4YjxtgVOXoQh3RO8aSgKoWOOeasDa/WmAyhdw5+VX
yrM9Q9oN5rlWgi2orxkGG3CuStZSgXG70BrZRElYqoQisUCoT/2hhjCFsEaBXP6Rj0RLZBggCMft
hrKu1v5Kw4Fqgn7PdDX6maSGbsCd7pmCHjVY1lW6S8xVMjD7SN04lY9RnWfFkYaDVnbPrfnRMi0V
iUTJ0iK+X/o0DFOybNdy84LjjW9HfhyE1nLdIUJwmEKDyBIZPvAAZ78W3mJqNL++ug8PuTUR/5C+
U70Aqmu7AejeVSerKRDg11T86UCarhr5mbVRM2jzcBUNu9TBQPGC2B9gAdN9HEj01os4onvQA3UX
S5flJTSy2KpZ5W8Bm7jiFpFT9BIIsMnLlC6jTRduYiqeRJQbNaM9ueo7Txk3kmGTHjHgPCfPAqEY
/NkS0abDKSCieCTw8bPuP208Y/bOE6X2ymknm7Hk3CHQA5OEvyJ5aDuQ9pEvYI41T754ZTEaiWtr
Un2FAL3p49xQaFamwpV1s8CQTHSLZpm4/8V4eDIBxxUi0HhQo2PsSF5ioVbKc+jlH2zCyf709Kw+
fnoTs5MTgwPJfeFMPZL/fRl53m83mX4HY7/7JtGJz5mEDe0B5jtdwC2XSp7NhvDpcDX3pPVcp9zg
P7v7RQedeXo14fQoUEKLXanAxbKAXSnKO2NeazqXu9InToLeL8RSN4Q1PR31xu2QIpTrzqbWz447
ZVy4+Wn6RZyUdZNfp4FoiyqzVq2vIEthXxlbN80MB5ThGRLRZ92rbwrxqVDuW26y4ZM9PxKo+F14
ZdQvp5kGYNZ72RDpm3dqEsMmp0G5a+RROhlwK+Mmlb3U/U6GoaMBr1GFrGhNgz7zEnkfVfokNvKl
pqqvKhU6VM02KXsL5hAwFjHSzIYXdRvwkEm3+cqGZc7dl4w5oxNGPY7oz8YjlpNqgS3HK/BB1ZJV
jo2quFtKwgtjRL3xCaaq8Sd9dh2c1n+1UDu+ImhwYmFiLjVY/OlPYxk0PddV8hXnN3jkzyxBpRpv
wmtCQbnoagUkv0Ni62pZG490QRWCe4ZRJt++KGZVqqAtZ+RwvbrQHHMQZBSamIJkn1be2NA9/4UY
9ACPiUCPhLv9TtWPhmjTvRuhqw9LW6CWEwFAdGBxqjSYrbeuDMYZoDGyo70cS9/x8cX+3u0kxJsd
ZYM0gzLimQydHZW9qeGq9LYXJme9HtXZhh6BDd+tIgHj2FLUP9xkRq95reFWIjVsJXQG1mKeiJNG
4dtwiEcsaRlbJjnMkDAuvHAgsOoflrJLvZNOUhiWslTnf2l4XBBhCmjAbWIeaTEDK0qIJ0pYaiyJ
wxrhYstQuUHgYM/LiCofE5zY3ioOAaA5xUkIOLHgrQdOS0OvRZ7OGoSjzSFlFNAl36qWvoTAE7T2
zCoE4mUcAEb7WjGjSjqJLogAyDIgRMlnB3F9HIuLu5WtqUDjSLcnV5EDyR84lrHs1+I42g5kbFec
D0E2yp3uw97aTcobMCrAPobH5Q7NJSRhDWzd4kWZlZviic1RdeTQhA65hOpyf6N+Q3IawhTOr/1I
lpl1fqF8rHE+O8jWhGJKEa6b5O5ZpMSUHx4yBrGz4ALsNF1YixXJAgKHZPvMC7OjCuc0nXrOqciC
cMF/5ySE8QTtAGYv1Ko/30sMNPRMhAZuFgIduX5E3hVX8bDitSS3T2d0aTJR+Yq3BqC6Yt3NmQ+S
q0r4g7O6dnORUwmg65FCJpk7vsAMH0P09jaJmGKFx/7s1lP/056Ge5FEYd55CChM9L1KlXv4mk6O
ReI7bWoggSvimdSiH0XdY2D5Ite4Do4VmA1bmyNj+62ESa/5J4a7Lxu95w68IPr0irU1jq93ywLi
/uYrsQO/mpmboXzVSphI4h7a804Ae+d/fThQV23KdNzjYyBECV+Kk6dnhIpPb5cpjZoWbakOEYzF
blWPkyitow2Cn7/F3YKf2M4FNZKNH0CFDycUkSoNayyHCifmoWkJ1BePb47H1hXpB0OL/b5WWShO
dcmjxQPH9iZFvyGV67OWtf3QvYM5VuEPW96UHCKVdGunxfqrAohkS+q+gDrVio8hnE9c58EGDT5i
pCBujeik5G/LwfA2X1yjMZTEFGnt0T97rD7eezpP2ffJOKhGENgnSn6tAMxfdvnyGKkwzUdeRLHc
yTZALGnjsvn9vzTkLC/2oKv/wOTJQlODIzjRpFA3Hw/9kikqeBzGJXzCRr7Xhxw6gVACs52Tm3eu
uRQjHlLoFXJGC1ns3AeZU1b6DBB9qDn7uGT9tQc1P4OIRWKKCsCkuc3FCIVCSc+D4gyoseY+9J9W
eVAbzoddWosfU+CISh2RMaL+xTpmQZVGTzYJa+HLbrxSQyudJAKJ0VseLVcSLckhKrKoPkAsud+M
msd+qG7A6ohxbjnkvr/k4DVLB9I9046/BJxgcMkclJQco/z2b/rwAi4ytI+OMsO6y8mXinngfUE9
iRd6/yNIqZBYhFM7MMljWPrspN9nl4VyQyohMg0NBq0APxkzdh4EYWc/8MYntAo0O9x9/ogKMJYt
ZGz6lUOIeWmuwQUy6gAqrsQ88oOPpxKGJtq4BL9qZmmqTBRITELCQaM8JhNGuuP9PxYTWcgK4Nm9
Qj+UPkXRIDab3nU7fuXCFImBWiJDm6N7V32ny632j4rxUA+lTcDSMO2AsxeeweN7bPqD85e9lSrg
aO2z3bS7Qbs3PpPtMAnY0+YSQiIx+lRsqyLU0nV+tgY8eD8nxWdJEQbb4h1z2joIrAwCQwmBhZqU
4uQtUv1n0pNy3eftIa3XjU2LwD1Y3ed0KHQg7iDAiqKiOQAgHFCzIBCDrBsReNzYwxVG9/Rcobn7
80FmzbWmIiA2Phe0oXprPRwKVNmHThjVWrF6jGUC8VPfVlJeyIqL3SbwDW6xscrHAxfFUl8/4uS0
ar19AkrFK1brlnPLfevk1mtVBzPc2QcT5TLwyR9dIwCsOjvvRl36PEPxlFeFBcysf/wiXqc/2DEZ
zYjxglKE/3Y3gG9sWZs+UcANt7H5hi3zA1atUz3aw9VByGkTVBQvzMGQdx+8M3xkYIb6xtBKEuA9
fAHn+HJ9zaKiYu69MXLkBzHsNwNOQ3KPZKbeKq6gE4cFMYB34p1LwHyNvhiLsIwdWUT0SFBZzazM
pA5yPBQ0Rf8B/8QhcSawFFCMWiOOiMBuQByy5CZVJMReehjAap2SLnET74svgc1YI39oHxKCmJGo
5W+wu92nc8/uEZ7R+28P7IOuavJU8OPgyV7dIhZiUTe4XTZct8njTAo8eCUM0b/g3yzRt+j5mzyd
RfYSPyucnQ2L9iJ9+V20pk90mcvvZ29Q2MMOD3/XkRcBE3x7hChfImXXlbJlnFENeGxPLy8mHCfA
wN5Os6isEL9xsn93OXdzwjvW73b6oscl1aq92wxaehBCiQ5v7PGvgU85d4j6RMy+PY6l3IlQ/6sl
nwkV+LoFJJm2NwzCvKOmnuP3c2c0Sf0WdYQRUs5/mcPuXVv4XW87zV1DKF6NfDhEX3fnRde6mQOp
HfvgHbxVS2lmsl+Rg1hGvWS0MQoDElXqP2bbTZzy3hApt3bMwGhOSsAzy5jxzAyLHWUg/jujEVHl
3Dk8eBlWB9/8HSPHN8D353c1F/I+Lp/tBF4Qv8xGRongJHXv0YkzPO3fJps+8K8KazuuA8vm9qo/
CeNSJogEhdp1wHPmDr5AJT9y40gicRl61os+o1kXBL5csImfeHT6n/ykqgJRkrsdfxTFpX/4X/lF
goC4PivXogF2mVQpqA2GpDSXvDV/V5h7jWVGCO7cve64GdSruuhjMl7HSFdv6qU/OII6sPS/+dFY
0wSRFANolREf9wCmGH1D40kdrajajJcgRlX55f2t0MG/qasrxd+a/apqR0AYfvCBYU4Wyydptzaf
TavbAhKWAwEAAEUs8V2kCS097REOOyZ5fJRzSi8etrG0lQeFXRluMaiWT9/9NvLpVuN/Qc65+mbR
5FY4Vt05vXUleclGHAJkCjgwlfDRAVVh64/oneSibnWRuI0DMsCgyWqQqveKUGTbcyg3BRoOm4k6
KGEw6dUfrNCk1Bwrq8TIp9nE8dvJdFRwwDcTy6ko8q2n824qc1ItKWewmrpv7m77sKXk9qQnN26K
em+bbwTCCWKv6RHlM7BPvytWuEUsfNPK8qxvxI7EXcVnom6fD/Qo3VBUbz54QqeOQEljN7cDHzW9
uis62QRk7FTmkNbWms0IVYSTMgMfQxa07ltfvzbfuvEPkMqlPOiG65MrHBCTC7B8J7eP2MHp2PIP
UBOhS0Rcvx7pFCvT1e1EIUY32F6aNBhV6cfpRxbPWnXKPPgoml9Fj65s4LWQI8dz/c6w1LEHePCS
0RgJckfUEGe26LNSezM6oa2+qZ+kzyawAycwN3CXIxId1NjNAh8orCriygpJThKpNkZ1560jMprH
hh219G9j0K3ebgKEsT/bt47fkoNBzxcuPwX7DbjY91DwrH/N1pjDCQNUk1QK1JegkUDVVeLOcIN4
jpQEw5/HiGuwEoupWHbN2xgD9whh/gnU3GkFZAgdyrh9qD7ek7OpuNf170FO45B/AMvTORqGIrLZ
oTXM3o4zcbHsw8L9tcOy3J61kATCUKTdbWj6y8hvFIU1XoSCT6dCZT2gf9WW+k646wHVMvteamC4
ea16c6uj1vvEH1X09YM0V2GvMP+ORm4NvpjLOUzcnZqu7nPqAksWP3YlU6W/xmDmIyXKDtL7KQLg
O1/vz0dlAJtI0w60cBBCMjzUI8KpDAM3zVBwEK16frlMXN5Q1Pr+fK0InmJmgWotzYOokrE2S6li
F9ZRZTSvf3uhu/gu9yFOA2YU2HiCvBAA18lmXB3VFAYJ9iIh9+uRwf9fUh8PUN4+shhDqRe2gJsq
8D9vkJzeLgcXw2JOj+0pA9pnAKqW3uMp2ppO1vzk6HmsFKjbPShwTQ4GpcDOO0KqD7DoVAtdcT33
qwiJykse6BdP7V8YSxRFv29i5vbktX6gl/GYEHUPuPRBLUlluYfv49JRkX27IsYI3CPjxpq8qufX
MEl0cYtQ3a1/q/gdmxO29DOLy9O0bHOY5QRvvN3vbztOI4VID2Pi2QLepcsf+JPfJxnSqToD+DGP
+1QzxgKOpHhyqdvz6SPrO7iO0/M/xM+17XDfIPKJ5ufRRRsCLVo+uNoufyXolrSkJOmquV5JKNwZ
bZs02RmmOoHO3flQ6QU1oVjOraAqaSiqZvVGNVs5As256KVuOCh/lie5HWCiFTDejxx4VDN4gGw+
wjZ4B92NaTOVaWnmQB5Eww9xpTQ9bUlkQs1r3AIQuRar53JE+/C8vtabeFXhHJ9xqhHEGej83XwJ
/oK8qRZSSWh0ULLEob0k64NkyNmY/hBZGH9gj5gPBmj7kDkPUPN7Iya6rT69mUuJ4Gb8vnnQdfCL
SI/DKHC7uZgWW3XX6zOfhFjAGraqMk7TszHqY3zRrOPYzq3DIkqi/avW/5yu+D5x2mwIfb7lNERQ
VVK/EP7pMzUtVlHK+E37QPrV5xrnGE9s6WQlcz0dc5RIIoz9NQPnAq1dyCysat/3E5Wo7aWgQsU3
IOtoWR58dyObO7lbos3mZ1wnKsSqDz+fvmsHpgCCLKkQf7fj4v8/PIVSnf4uxiEUdrw6t3xzFal7
qTONoNSMu78nWvvSfBkzQgxGJ922AsDIm8PsOtDM16yC7mEobcq0tTSWomam0pVpbbK7N0/99cki
QmMNRCHxT1aK8KW6vN6MGX+zydV2EO4v/p9I6U0SIVevxY1Dc2cywkUfpAroJTnaYW3YolnUMAwd
cP1RQ0TJ0TPvqCD+VjAOq437HXS7ZFbGEsxpeCCtE14lubDJp7Wx1GYZFFJKPM9731QoYytvheLm
3okMrWwL1mqx3FqSwoqlJukAdtjU8Pl+8oK4G6JsUsUlIg9XxTjV7DweoXKb1rHPxTc/7goI7Xy6
C8ZLGsCDqguEYdR90L6TdTwcUYEjSUqCjpJC7hca1+Ofk5jQ68GTkaKBg53AB/2446fRHZhNMfOY
pMJ0Y1K+pYPNwn52cGOPAmGnq+G3uv8Pg+ALx3HQJ5PQ1rII486O7QxdK9+YNDw6dq0iYSDAEkMs
bYZ1WafQU8eR+cgAti+HeljlAwulqzKyshHCUT7z72oiPcCTKKW8HipXbNcFf229QOgagYEQ47wl
C6PsiLdqEMt6U6Ad/ptkmJdO6H3HVIDcwR1S9qx8WHQ29Evmq440KN3TM8ODHfd1Sl1Y4i8kS3Fa
S1BVEAte79HJNSyYx3+FKfyByHsa7M7yMmW18o14ZemPsF/r9fd3t/9rdDPwqUq/HbMVVSPx2gBX
HCFFfsU7JSokmRKVmpTgXwfEo1iY5HPX6LmumxNL5UhcCaiY5jF0dSnX2B2iSNH8PfGgokMAFOBb
snR9pFW9yv8OoEX4Uk/ZaWkDd2wOws4rDevx3a87QFj9oDRS4QnQ4zhMkyS2tTLdfmBDkJiLBmMl
qHgxbPQckJZAaWhUeOTgH89CL+Xzz5xXwUfxDD4+CV7pylWvPVby5hRIUsyLtz/Aa2VpIy4BFdEp
nJC+Jj0hO0SnSl0iuV6gsmVi8P5Cnf1/Ba1LT2hItXaD1l6617KhhP7OEwMcUtSnZH2cyDjNic8B
qZfnHucP2l/VnTzItk0FEfQQjlLOwIn0IO+FPJvewoS40Whzt5MwfXuzUD8YqRc0OXIUuMKI0BVq
fyz3HX4XtKk4mOZvFzxtwKVqhoBpF4LCxHdFH6nS9kUCQwUM628occ9hJk/2gPc2jAzhVkNd1QxJ
8RUx41qUhs1iat0NZiYcABkAYo2+KFkqlzj+RdSwI5ijEsnHEBkH53rvHyzKzE3wkrxWc2HgvQNR
104SMLU2pE7TWavCa0Ypi20QSNCIPJLh5Nzb/KStpPbi0pKVoTJArtkbZq2MzbEfReYP5ABoaPHT
ErXVfSIbRq3R0oU6goSkaMXmNoCp3nkVvWWBfu5+wg8pUIN2w31J2OHqbsJHySjnwu3E02fYiP/Z
B3w7h8ySINktvKYdeZtQEgQQOm40YZosAJs2Wwm1OCyp/0VMo9Lc7aYKq7wiPkcRCa9xnQ+1s8lq
8zJllOsVB4BsFeqld7W9GrOOhRUBJ69my9jIwbrhsE8jMyU+x5AAZEkSxumJMnATQwqXR6UY7+OP
a84oVP5F4VdINWIln8pZcGnlhtayYJ3Yc7lm0uQOeGdbElQsSipHKVFgngZ1fZZ/Ta9C+nLLvEVv
RUMqDQ+kNyAPxTVZV51Gxsdlr2jU+sUNSE+fqiQIKvrHK37f8MClY4Z+1S5I7rca7D7ryFNFlr3c
8wM8Yn1SXerc1k95YHTvt1LCv6F1289Ti3QiB92dZZApxC1+OlNzl/zY5bCCG6HnvR4P34hgPOnc
0TzaPxNh4KpyKa5uRBjHYGE3q2lcoPh4q1YS8sw9+44Ay4T+eEbaLpbp4Lrfm0GfuICvyQ393ufJ
7H8CfI2z1KvTuamhbn/lbi1hG0eWvc+Nd8kCjZKrZI8Gpcd1IdazVDBKMwpYBogSCE5e/+OOf+zW
ybg/cAzWvakS19w3t0D2gRWHsjtp8/KU0buvFgyET5jMGNevjccPTxYh6ezKsxNu92WiKs3lLQed
YSuNJJqTvwjkuAfdBr6ZuyjTXTCUROjtyfDQ5A6z+UoWynfJE0W1RFe8MWcXNdeO1DzxApKZKnmB
y/i+pcIyAPnYhF2l/2bnOFMnrYqEMHCUWaWtAytU9GW9a2ytYVN7K5cAu7WQq4xrF0YnFq2z5I/L
EF8xe6mthOg1J0QdtK2rJ0tXDqYWkXULh242wCKp46XZofulnogVK8teKrRiJ+G+w1uw3sYiiF3a
I8dotfTZJdsiV2Msd7DQpyDJoEwVrZ3JBPPc+LfOmnUsXOIRixkoaUNwzY0DizvxnS4AxFEhUnXN
0KDKr6rCCZ5PEPyUS7/w4pn/tbXJWy9Rdps6gC6IUmLRuVTMQXeBtjN/EGLfNq2IJGUzh5T6fNvJ
LLfiqjBnRy3uS4cCEfn44b1xd5MPHFBnBkS/OzcpIiH2rOmzFy5sKy9LI1HRT3vOsA+mmCHU+mJz
+zaIXEJwdtOydSDGU2m+JtWZZpmEI50wXurYyGTju5RYThDlR4CEe9HN63xBj1pFLBM9h5Wmo4eC
2597pHFN3daki6jkRNP1i2EejPQh+KbRBApiuLyhOfcKvh9EmQFCfpX5ysItgyO+hEmV33h5BNEJ
Ie6abP1SVT/7H1aQD/8LiNDJBqMXtJQM+HyhtiI3OiVQlA0gq153YnORH3VRWAKFwZOKx8AfzH2s
c3rakv952ubEmL49llmbY/JnIM9iX+GETdrpd5jvB6aeIOg5onKvlQLldZS9vtzQC7lNHyVGlSKm
a7Hdidwe7E6V1nSDEsYiP1SWYidEKdUMF2S29S175imuQhAPeD9WFcy3QBPH0e6hsjAmzG+RdZvB
kO0VSyEHfJZtV9EIp9Q6Lm6WeaK2KfbwhIJEyuCLwiQ5Bfss+0uPE+2ni59jGz+vUdsy90ck2If6
ftVKjGUNvTaaGo679KzsvVJewxeRsFm/4par2lATWpDdd8oFWP30f9wDRXeoT99ne/w/+ia9/+Xe
D4uZl7nerhDvNU6aKYDmYquufUIjuzJWg5ZTWxnaXnhN6JQEpdx/rM4HtRpbXovFdvPLYWB5MN4k
axkd5cQbCUM+qGn77419Oblz8ZNA7I/oh+NIDd4LFm9dY9OCYpi1eDUa2F1E/7V+hU9eoE0RrW5I
bkmjm9R+IpQFtuZkj0Ml2NNhfzWFbFev6iYGRT+wNQhjHmmuS/tmlbBmNZyJLN5AJHZn5gTEAU7o
2ZZX6sgrBUHOm0sUlWhZKfFMyNDqxu5kylC9nLqVL7j/wLJ5Fj1R/IqIZQQY1ddUHj/ckw/gGI+V
KwNjzMxDo1yCQlFvPHo9py9Jvohs8o0epU/65ySvEZ9ds545DrhAqI2cbmCHXQ9GmXmbBXJTHKOP
ELjhYMmPTMLMNRxAtS4VU+L+UlFF9NBz4Jo4hPOdFqJ+ikruU0di3wXZtph/gDhGyb6wc0lVQp4x
QxNG+PTLfCm7BWWWzL5wuzvpYZDhEqjUuWIkC66Dk5kB+eE4A6CbfUCA9GjHY2LOdnJXEthAXb8c
T8bfcHEc321Z2xf6wIPmimKkdKuP87Eprp/x05lizYT5rL7MWx9DfjiVGDeznpC8Kbpwk5nCMu1I
psxh/bdkaTuOPCVjAngleapi+nUD1FcuO4GxdTghB/QExRhA/lAS1h3bVq1aW4v7qUxMYEi8un/S
Ha+NZgPCJgKiUK6PEEzLDHUZcO5jk0S/+3rgrhfxvoBqEPM4bfbgHbyHSCmXOSLzkYi15j2KQA0A
nlHDlWk0XTu3ZJVj0ITqPto2mFILdoCJ1COnqbcELXx1jp9wUpzgazMnKV3fZlL3OVI3TwZHqJ4U
z4MzKW3T3pU1DZlGjkpsrrkAOAw8m9WuLfVQAKs3xHhJ5EIrz1poanHzLJhKsCBDHDvCoCEY0rsu
oO1Q/Y5lIRLbVhbJ9/Oi/OYRJjyOMh1zRu6HgatF6DHbdeIenlGQMz46xR3XBmxghZDKNdU1GhZH
lp59UepucWbJEqvYxA4BSGEd13nl+VpuNes6yHXQ3T7WEoxJlVFBL7Xg/Iofpeo0Ijlq2gW89pYt
RJwgBFpnu6hanniyIK1XuvlVv65N3Ai7QBqr0i3cRf3Ax9rVjsHGKoxmA1fLAYVtBiBIWIRcD9So
+9IyomtsI9X1QwyGE0E6xf/sztLhpopbiL0fc/x2A6MNLIXFOiIf2WcECDAmo0J8MhzIqoYEu1i7
gi6VugcEkjmhkMQBc9GcEAcRqgqVQGefA4fMhQ+gbthJaajwprLBrn37W4jRvFT+7b/IlgzldwIS
UQw1hxbSWg+Ek+V0tjD1uCAh7bslTyTd2VXqXo2/Iym1+IRMTtsAaGJ7IJtXzANdQFP5pIZhmMSK
PXmWhY2P1ErKNizmQX3EjnqUUqPn/q6KNtZrroqxTghhvkZgq+vBrmVb7BoirHn00NxAgmQYFPJC
//n5p3jaELd5CvJA0/XGUraPPI01JhzQtrmfaJCSip9wC9mGULoGUQ3tC3oUcC8Xrggm4WxM8dJz
D6EKnQ4yIe/2u0h8cpCH/S3daQ3qnwlBQOwDc6ksriORk1RbLJP7sL9VDOZmsqM/fC4+cL5YpPbk
CDQ93v6uvJhvQ808zm1OTYnr7Yqm3Y3/p9/gUPVa+N/pPhzOd0/YsSgzkbi0IN/aJsSI7xpYHfSJ
CnQ9pXqaF80Wkl9kcD5kTUe4SSEcSMuljwRWtG5j0vMnbFQESBOly4bA1CdU3yA3qj2O5KHWG9mD
SgqRFmJS4ODLJOXrYJuvxevBuX/yXWVlXLXm84UfiwjzVN0tJQI0jjC+MSK1QQKjhxsie5OtwG9D
kCF02susTln64tCj+4rAA9ATw/gXlXZDoCpz7EHE8vm/6HVrwxJfOPaqsRvyP7Oqd7ddyMJP9dTo
YfA5Z1JmiUdEUkkhKbG+R8QieV73r+U/oQZjNLs7k6hA0F375hy2bUd2So4eufErmxmcbVPKNgTC
pbawVYlFVn3EbHsRPWlnPNPtPeERGMCfGIbXWKhxneBlZfuanGg2c/AcrFx9Gmve7h2uV3sC3ia+
y9WsBOd/N20ny4lrrYXywvZT7Q+JY6qIdSV/8TixPApviZAu1KHCz7uBlaPqxy0LI7SJ0znHP/Tx
7IPVzUWAvNd+biOxj77iI0Ytr7shfOAAwCzjoTGpmNBj346YtqYcZ9sfTGW7eTaussPEPB28klBP
BlDgF/kxsGX5XKpGxexn8icFWk0RA8JEYC5iT1AdcY3X+RX7FUhcu0OQIwcaIsE+16hdmYyO6ub9
foFZe+qDT+0wT1HuGMei3wWfjdIu1t8RW4RuHBS2afNlelObTQkyz1OJ2M93ZtlGn9EL6hUh2EI4
d3RC6lDaOIOi6nUy39SMNav3VIClMPZWHBkI5PT42jVwS+RzJUv8B5fLC/zx32fjCK83fH8Q9Dwi
OImyU7uLZAtz+7+qHwKRcIa5MCqnvo8FxIaibMGe9GlWRxd90RH+p9XA/rT5wEfbIvDl/v7KI2Tn
8NxJKWvtu/6ptmwucuioJhc+4fmpDDjY8OPhM7bzxLJOios+RPzUzUkR1BBD0gGocA2ZpYI6fKwc
njNsjIz+fDve/PEfDXyaJp0v85EK65FGXBd30/sAFEdNbFP+ZrA1aN6a5o1WKHDr+MHZspz+yoiu
kBlAtnBKPg/0uIEFnq7c3l+EXbg6awtxzvWk+Yh1lHd0dMPYX10Ycvk7pUDIGX5wh3ozyEANUk92
m1l084VgThH56eZJo5vl8r64+f2oMoEle0eSbGNN4wA6CQCUZVrbQXjeUqe4q+3EIw8KOQXMat7y
Kx9fi1ALkpqtjHps9kNOGiIjr6+aJdjnqy+CzfuMTB+afpvmxiNEJbSj85YX4ff0aeFyYq22Ox/g
UQe0+aPpGUYJZCsQzdF7cUkhcEnlkCIqG8e1hISYwff1KdjuNhUD2ZDuZBM2dUkMqepygHqgLzjp
NiOZ1FI1FbwsYwzZbAjrP0uxaCmzdqQQOKIoYAuii+5wny7zkKOxFSdE/QGtJoMthZ5z/ljeVZ5M
F2HRMNmcGHtMfC6I8RT+9VrEeg8aIQke/N6DsgXU29e5CzgaVrcOFxIVXYjKl3k3hb1ZfVrKP4hX
WqJufjaCBXl12krXbMUHBc9Sm9i5fi50z9dT7wcwhxyCS/5UaWt6/UEV+p5TXHkL3yWYf6hFevKL
dVBOaZ0InH1vR7w6Z8xg4+bW/XcXLeQwnh25uK/GOUKY12DKFgpG2wrbah53ff1kXOy1aIML3bZy
cRQ9LJdrRc8i7W+DuX2ktpYBFvIENSHBQfF6fRVheQz3bknkD/l8Xeo4INHSqxDKBQsm26Leyizp
LVx//XAcrJ0pvIe8x/Xcftff2dD2ki62grMHvMbDIBzV6TxNn11UHvu7pUg9SA8j32aFRrdNgunW
qOm41S8Na6jgOqOIMvuY1a2dUUjNZ+Wt6MsGFw7IT7O5uqsoae0lqAiYrrwGh59U5aN0pmXbJrOW
BEWqUt7XJzVFSqXRaQab76gBnBe5qIoQLNVmnJ9eNqy7cAJ8nWKe2rXKmZxkQ2mFNVNPnlYqvTkx
t2Sa/QOxE5oTPaGsJkMGsIp3Y3gZ02Vt/frUMTEBEz5Y9lEZm4A/wmdGkUfjKC8zSgIZdM0+aE/u
cB5j4THGCQ7tuamWhtLO2/BlBdN9AiYi8uoSz7xl4dtGvTgiYRn+XyTjAAO2+jDOI30uAgVsOlEw
pKzBqMWK8/Ak/MJFFzTVok6xbWleoLIghKPaFXQSQkSXhGGvyOcqxmZprJzSzoinUd7Xs2T6kyhG
LhO69Vlf0Ovv5df29Eto233zo7DSMDV/X0wiswTZ4z4wULTzJA+bmMj8tbeNG1SiowtH5nEsxNO4
16PytrVZwuUSFnpYYzMQH9mxHuL5S6FdVjP8//YHChfq+Jch7JM2HE5P7jxEQ+thzMeEne5PlTjK
iArPeWlDma4wxy6R95iHEGF3zHQQdw50WBAQEdFLzi0Xs/JwNfxCquqBzftvY4+BzODe3r8qbhs6
BRNI5VedTWvpTsicftmqMW27MCpQzm2mINdOthRsgjT+ecLhEWJTMKIYePUQzu9NYbmnoJAcCtMI
uxBoKLkDcmbxn31bqcKzQi5R6GVuV1jB1WZfxEs0NyDIFJCUWAllZ7A2eda0tuleeZcl7L/FoTuI
yl5YsIg7uRZTGOzJ3Ku3bkngvO8kN9bLiMoty3gyyeU3bLpD+Qkpx9iU9QpgI0oeOIZLZEJJeLsw
zAXEg+HSApfiQTxOeUrXO7yMF0OmO+dGWdhDqGf6GST25ATMC35dR854MclwUAQc3GOV6m9ySZcD
K/tjKm/IqHUlQ7PMA/YmETztuCQxsIZPHfwG1KCtgcSuhuV8ww0dR5Hut7S0vnlmLgt7x92Oxark
3ZA/NeCcNCjBv5KdbhyDXNHwap1EwjgfDWt3yYT8xKDogFDn2rgPcfnp9Zn+0wIRZ8ktpPsHUNIb
v14Lwu7r35QR7pHZPr/1N4XfaV6NpVjwRGHsBknBZ4xBFABeDtrpt+kjhWBIuPrh78uZECjeabP5
Zy5OkcK4U+Vvx8aXNSof5BOH5vsE3eWnOXW2ljFtuov6O7hgnTopzjO0HScYv1C//SiWJAT8ibt1
P6jfySf1D0dRkA83h5N67/iZ/5h4EpqMounjCxHpcJyM+WEoDi7yhT/G1SAyVwtw/LgeQ0s7K9LA
o1cfIQIOeKRioO2WVcjAqS/UIV65YUjrcimlmryOuFIJJF4RuI1B5PIeMwt1nSM8iMT/glaPstSb
Xm5HCMUGXpA37yvGTQjYnLMCFAnF/F4inwdSsHiOMCrojDnXWHgQNGvMbVVTdWlC0LCUuPNtZ3Vh
ip8xKiV1kDy4e7TMb1aLgam0zsRCHPVgY4np2VN1B0BDu2RuHJbhfVfpnB/xNvXQTcGl+zFI5WCV
qC/jHdc//Jgpb1tYA85Obiu5SD613OtHaeqgvoFBBCSucRIdFCo/lhpayoE12t2lPhF6hzK2dPJk
RhVbYUZupSC/VAJ94eihM2MYmUqFbYJpzsHRMPQEmdEYB+wksYCP2hCvc/PYoOk3Gh8eAwm6mcBy
dXDkrmvWFfxXbngvE207DkU6rBzPupXRMNAhBlcbSXsJI37kOu8b1hJwQ51VjvygDZPSR/7Hit1F
l2zIxet2Us8TrmfqmPiM0n9Q//wqcvSfWh8LP502IdfBtwMB1bYT75sm0oxB2jT4LIopCb4pLunv
CzdJeDE4QRI05Fmj/jNNgHwZo7SY4p89/UG6N890+bBKtG0GBKewtRSkOt9mMcxNH+9XEsDfGJCQ
GLkQJ2rmMdp/BWZ1YudSxhP1zLY3o1o9smq5ZNia9KpVlQKngjOeTK2e0buXqLjq20zwfXQOIJWk
bWyKXMXzsz+O2JMZ/fvW9VJ2zU2xR/cf/0Jj3qiBNo4akQxQ+3iJdh0tFHEEhAijUCd4QlhvAe4y
6cBeJfuehxWeLSLMAFVIe/JSji0osSUezQPEFu9iH8ZMC980PLNssWUp6PTgGycUywqO8jc1ibpg
whF9kpEVuysaE79frZVPLldGWbvGGuS4vwaBi/WvKRE20UYnn1dFqmM3EUby4vQVdz5jzBU6ibgT
FosCaC/2Gn7kZTqZVJIMQsBA2ubbk2swvs9P+4/8/f4zBvES2Jgil1ewfWZ/j8Cr1IAuv6oNeOgt
pvdBUgDg+I1Swd9F6JO9Tuta0YGURKsO4P1BtuxYXsvJy+FR8/QGSK48BjKrftqB09VNlUw/o1y4
nsitMHlyWgCaW2uH2ZvlmwiE9ERbUHW2FO1IkQ0Uihg8NMKxS70j+ecSIa5lckVBaL/fJpfIUmW4
2/b11RlsdxBoEOzaV3VylJodyvGeCao3PnQvA8EhQdBNdazdEsL4mWQJUaC+wL8xS6dWE86+mHSL
I1U9lJGI3INoRHhTl7cvXX/UrX8dzri1TQaDk9eiciZnnhp1Bab8+j0ja/gg7sNYuJ41tiqDIvgZ
sRu9bP3G+ht9475JEn+mkzXscY62715S2wJrw/s/U/r98CTuY8q6AFhGkBh/BXEYDPh5TrLP//aI
f/1n04hZuaYBbiCaZh89ywHZ1MF8CfmcLPCLsGHk/+Vb4QNVykPVVyJ+6cDGE1mpwpaXr1UyOJgi
2Ih0WSUtUYFjuyexNQXIldNhe/k7K+yNJxUF0koWVgF0/tIdQUm2d/3SxlWYWCBrQdMK4YMs4wrf
jfYpEXRyvW5hTrCbJ4nBLS6ka9sJEFio9yhemn1klUfQncAtMzQgoPwiH1HMJyoMPltCDzweWKp0
FEaGnyTKky2puD71JVpPSQQLE6xaDj2bhQtvwW10PiXkqT/EwSFlnUDdp5KVbb/JK4VgRK9xj21P
R5jki/f/Gc5jYiuwgMeitGWdGbIryih88r/PXX8SmwZp5aRvG0x6FQZ22+nO6eZLP5BvHIXGFOxC
9H+n6bi1WYeYseoTh6GwpJq9J4ceDLolJdP31xWe1WMoiShXV63G/v881WsGyHu0S6WyfW34p4jJ
uFpcc5w+nMMd2exLOhoFuGXG+3lJgi42gyPaE9ZJNhYCCU+1xOa2yswL3q+IS4UjeHQIY7Rr2Gyz
BCoAcDYNwhtbcYz4RzEp/ZWMIvp7itOEpPpOYQi5jMZI3rJdU3hPeiJUyLAp+Wa8FqMEoKP03462
Fd/M8BmFid5s0W51m+OG27TeFHXkk3B1w1PYr37ZT7/EY9xb9XPM01dHrF3gEmuFCuDO7EK2bMGB
lSm1f4EkQ5HLwKRPviFUt/Tjv1pdsb5Kk23p/LOoJPDz0+6z4JXPQbNDthj9N4S69Kz5vUEG/zem
kR8JrVezMLJYz/DmTHxaB8zT49kjdtItDeh6IoYf4ym/41D5ZvdKTys97bR9eYWQdXKZ2UHfpN6m
5AdfLZ7QL1nefZBtqqhuYPW6f+xmBet/NORojXt51/YUru7zTPae0xwqf275sARsDZKaWzOEqEAt
KGZi4xeFKs6QqKK7Hko8OwdklkZEzHXM7B3eSFkGpuqawFaouroZF2uCwUXrXjQqh0BJOaUOb9xy
E9Wc4XGmOohyI4j13J4mqRnIzINdHRBXzNIF+v1b2IEdVemE7MncgXny1Y9DhmagjrUSabcqIKIw
MFvJMuTxM/b5BdZuzqd6qWx84AmgI7Sty8iRD4IHZb00PyIb+WJECZFw0Pn8SVDPmszakHc7So+l
qk7isKF1n3eBLxp1WFuvA1JORXCmvayPPXPi37VMi6MUTlZ5bJTSoOHS658aXFxizVUQdlVQdJQX
3hLl9roNQeXKsfNUdGV6/R+5bUUwkSyyUC2vWaQtKinoraAp8dqJbOrN8RF51HfmmhVFZa8D/JDC
tRcCfwwtqXYknQt6KiuXEGwGjSOTC8Qsm94XRlJDyoS3pG52l0eHXW9qHp+urXCr20oCHJOSg7io
paz/HJxE2adOnjJ/3JS2WIpyOCAD7hi2PND9EDqGh/ndwhJR5BgBWnYnYlMBKXOKkAayMTSeXjSp
kJHZ/xRcf2bYR6F3Y1FqB43rT4r3wNaXzs08K0OsitVlIFaSplkmzoKJy/CNj3wW1c932Rcdx3TY
Bkb8Wna07wcXB8aR3Dkinmh0hn075Uu5kQzmGsPIKkcFDik/6A+WFNIUJUwvc/0Ufd4/YcAjjzmd
COplWoudykT1GNiqpp4OICJovFzbN0Zf4aaywJv/NiXhpWBz/kql+pjoXrV/66zzlcy3S3Tk4I3+
/fevvpj3klZxbT6Ue6k3uEGt/7zd0ea4fhL0wgCsrMqhEV9GbSl2q8AHbuFna60wcx/D6vP26dii
aV90y3wQVqcpx1x6051OH9gegNDF9EZbfa1dB1g5jk20WQHLLvS1y9wMJhf106AFuIkYh3dKaD03
5N750+U8oiMFtJRavdTs0a5wG+5ZAUut3eY45U9ta1mqeVuBNdjYs7DOV7MpTGb3DYQ1KwbyFjqn
130e7/lG7dk90EXIUIBv50rryQsBUt3MGKliTaGkMrS7goTW9llzlla8Z7yry6uNfJnCKNnPCobX
vPlhZrNVuKJ+mXkROdCIS7Z8vQb/CrROksCTEVnV1JwV+9TxlKFpv8r+0M0gU9hWqL0tQtq2H3fb
3oJOMtKFb6O/+BzUaj1OlJ93mtP4dgCIOQwHoBIIVQsZR5MyT6xZFU1Hz7YYGS1wGV3EaLsXuC29
f2E0Srq8TygeXx4ij8/j0tN8qdzQwvoyFaWd9pn6iGC45NfcIJAAfus/NGX7GvHDFcAxgRq+RrEm
cb0WzIm5IfQ1e6WeDmH+ROY8wAGBwRgAjBozp04nKURwC+DOdmBBamzrvQ3LGg9wkAhE9X9leioe
c4kpzk2FS+iAHDmhE7HkWBJddRbvP8xGqplp8D7HTjn7abTsHdg5ksNRzrZ8FfSPpSw01WxL2yiP
RRSvmZTYEk1nBLWKFKY3pf+DszkhoTckCUatdQLIXBfYOSy23cmUjh9VD8ngXRvDlWhqBasWwYyj
J14G6PTc6OGvGGtgEgLlhUpKZ+vLEdr2vkBp0NqD+a9MblW/TCbxXO6EfI4La/qzS/7hz3nK7e/E
gwHVFoO5myYmKhMA2IzYBHzdNKIkC/Z8x+xBQKOhwCUOEpSj3byYQK5vZoO9RakO7VSYQo6U6WDX
azQd0bYsc/F/oKPf2zxz1mObQAcoC3fxaJlzelVy2dywP9GkSnxZW/gKM6ByIJEztFcsUMyYZenh
UVwbX6siup13kGVZUYfkexGljAuAbp4xU0xV5gR9JdiHVlNK1xJkv06lLQaNLXpu5G+qMdyNLc0L
FKfid2FpBAYrecgt7Mz3U8qt8UlvyWGqZiIPUNySoMC58WzZAFSqPjHzjVaTJ/tqw9js7kdczSF/
036uApvmksmpPpuyTb4ASBvh6AHxnHhtOUAyKRGkqIQXw6bimRkgNTDTCUDOKhyt0YJhtpU2woFT
EMbJazujWhDTdET/h91hINmcwumguqVODjWo94m2qoMuS/kT53jf3cX6ZOGBP1ItfGjDP6PSy8Pu
sAMckDONJyHN7pz9eksvZJadj3vp++vO6qrkFrG1Be/hZTtPmFM4PMr6G+L4RfsukUOb8Tq2YxJw
+OOlKzBJwSn+boMTF4W1VN8amwRNqNMAFbfxk5dREG8mb5rbUNfqrF8jQ/E/b3x16d+OM+eLCp+r
qKlNXJX8u//GMWyDntFKjji9u4yOP4UuIrsZxmYy0eS4reqMsjTPLG36nWOLA7V19kXx+L00ccJU
0bSZOQjhAl31qbcK8vXeGjPNvg+vfhZjmUgF6M+ZQhkS20vw5LQXRrfdd0i+ZWSTjZyRBikFcNB8
wOcSIa7Ja+EP87YiqY8UrPizaVKP18HVag7jXOTiW6cuDtlJzOymXFmXBl6s3PQAvbI6L7yqi4Ay
234LStbNYS8EvGhz6o5810AS2w//r0NsNUm2D/f35mkAnG21auh7pZcfuyCkWH1Ryl9OAr57th11
tf5uLZH01L1Wt+YFJGpV/QS0Bv9GJXq79aX9SYvFrxWorKxA0kTkYyvs4+ln8oEuNTgy5KHw8KxI
R4hrUpZ8lQPzaUnr7L1YSWRGunlXcHTRPxHTI/7t4LJ/v0AfEU1P6QnNOECy0eArz1Be8EqHYCw/
WfNBCqaZc5ObGJeoIb+J4RQkyK6u0ponryvh5aTeWB7QeQYUakg6xF826MQ1/aGaQQN66mQNuSgS
Y8L66Kn+OhwOP1lg+de69Q1bjA7VIsbgE3mFw9xYoKrAsV702rmUxDvt/HXvp0L2MTcqVbiyzfsU
XAnIRneMqu2VMA4jCUAX03GU7GfuPtTG5BlJv/MLeEiyIo4fi5WA1HIawSrH14+IqenmnipyHU9+
N8BPH7HfntVxy+QoQggEM7Vb/Y7s5Hw3+rQBSFbm/rC0+bYk3nNeMd8+X1vAsvQutqtfFz7bQbBD
Lu8caSMR2Au0q9dNXDZRYrQwSHWQ5cSrhIHxND6ZDkVQb9djF3Q4skjiVcNnm8C0Ce5+fP5jKeh8
FSlfNILsUXlqH6Ek6LfbP7VYyFWqJL15ELXYrFaa4RP4RXA4h602ln45V6fY+gxGyaVubMvuPO5k
tBGlRKVOKdODbwGOcPGVVvFqevo3fziV1q0cPKHJFvH7xlRFZ3Ldfyr79UI/g2/GL1tlDQJICqeC
bA2AYfxsfOxKA77A+ZSyunZfx5CVCJ8UJvgwdz0wZCkYijFkzSXFm2GDCJ20KAPpdONXPeX+p6Z1
69FIU5kzVBvo40v0rkiV+d2nz70HcA4yMOTjUwCtAzHzDUa24IChZPgs6x0oojI5K4lG5EDILr4e
EUXrLiI6KMy3Hwbb0oW/tri3EXfA15F/T4DuE0hrQe81d/myXs1Lt/8M+HOpXPXPMrn04K9MyuKO
Ux9gTbQheDBv6/d+du1+KT5y+Tv+WKPqrYcCeP2NXvI34HC7tZZNcmHHugDgen2qGH7YNvD/5iOc
W1xUgEOMwccxJoBRhietNHvKz6H21ry74v533JqJkxhd4jw/C2teP0rkPRcrymmvRVC2SFX7XIBt
mQ6kkwK7YXN5B9UCN1eKBaeUlrzulpTRpGUXVtiDwcRkobDHrOme8QAHmjTlLVmeWUm6+EvA4jtw
XvbH6sTNBNFBnwcgKrY9Rob/zF7gpOiuX2DGZsTvxfUhC4ZyquNhLVGkdljJ9lXLH37Ndxky+ShM
Fo4n38ZVPsjPh4B+1GrdG54idQFk1/Qgzehb9lGuTBOczJwwcDJEZXBqkmh8X+YftH2r20M3r5Qx
ZMRYlne2fOSnLu+mXH0rcBxQL6hp2mCAW+9xfr9huoYhYiBfgVzk5U+2KO1nZ6amnJDrBTCyPrFL
dS1SffvoYscja+g1pcc0aMDrer9fc3sffZTZH7WmoxmubTPMHtD3uDtCgHu5ryxYU9AASlw3LCVI
70DJJFzB/nNI4wPacR9NtT4X4v4LvZ8OBnfb59hhu8pFYOF7+V2U9zGt6ePijGx5mb1lajrEYS/r
Uk+KflUWZu+4mJJJZb+F9ju+3Q/EpFti1PmsFIZhAOu6vGLCYaOqcG0D+gd1yFlgzKBNGVKOneVq
c4FqdzcXjADBhwgZD3rKRxO4v05gF4tbwXTKOBUeVCzsrpK7orKGDQpIm3TXATr83A52sEAM9bVJ
HsaFpMT74Ds0qwesnBdDNJW3lG69CXrSG2c0dpQyhRBb2eJ8mzpyBUa4TqWZGLQ77lbBy8LNgFdx
ELyrBCcCUO/jDBFAkpOZCFnW1vrJmndHwz9n7KAYNWOWOHa8Feak+FOdGya/Pg3F/bdRmm+hKtMR
mL0Tx7biCPGiGjcK150l5sHzchgyetgZRoHFIqm880YOtU2+vwLVl3dWE722IdgsVZjR0AFdNM4B
jkdxoSYnEKIX7VLIJ2Ww5tit3xFkya7mChvz3NRcPU9sEXKHF/XW4eaUZZigRBYQ//5QhBepFKLh
KGjHk8rOGu6xItniORaDPeNVru3ak0gVZ5R4YJ6IyQUNKzhyoiyl7n90ToCqBYQzZpSbfCzi6whp
yKrRmxNT/2AhiCddSOZouGes+DZattp8nu+nSJ7M7dCVR/U/qUhB8bpPaKs73UsaSxtdghKgWqnJ
YFsT5TJX2lJ+ZTRaX3IoX/fszvnoReEhgR3W0RgJhcK64FW/r6vVf6hGwt24mWS0nAU4Fl3gNP1z
7wZnI4X62Kzh39VpDDE0gNyOg8R5mqiEhkFuw2GEo9NcSgQ+7BTBD6tlWhttar+JBhoVVesUuf39
LhkrgGGgkDk/h9n5noyOlw6BU/qS3nZVua3nVNu850Lh+FDX6UH8TlgF1b3xBmRsq6WyXj8ggyyp
VFfTBp3syJ0hgbcXIjkjbpxSm6kve3aQdYfJ0WhqZrr4Gr+3N26iJau0MeO6+eaCfdp9A7JWuQ0y
jLT5gdKERIAwMG6PMJtOndSv4XAumItrsVcKSQs7UqgjD5eHi1xSup/5DEsyPAkQoUMSWBkkzftn
olKaaphffx7X4DWKLpJK8TLT4qAqiGuAXiEvrI3DYFrJSCt8e6JZWZgkYICuIYkP7q11TDDdPi09
kREdVid8ZsyKu0Q593RGfVArB5LHKwAFcSCXufsOi+1tgX+mcu5Fi4FfSLXYwagLWyYrX8xqY1Gh
8GpcZZKF076JwIaouR+b54KGl0ET4Oc+QGycVcS6uvfELL4PobG/Iubz6E3IOxkPe3gDjQ6VJUx/
wtPDMY/rPF+VtOu/lc8pV1tVPbf+t3Qdxw9azoIf9gpVQI0SdxtW0iS+b0OCBHHvucsH2tEJDxcV
2bPDspjyc+bOLtVldoa5KvIW7SMMbXsouxnfhYb7frYjYrktgErjzAuXH5QH91MYdnq+UdJ2sig/
dQ3Efk+vVKqUewKj2LFHO3EJh1+6vVf2ituS26C5+EbN9fygpYP+rZe40m9Jj4CkD0hiNhmpaXMI
zBT6EH828Vdqz6F/OV7qjxNEvczB2L7At7oTovF/tBPiZuRdZX4ahhMOs7ZKTtZTsg4feW0idzMK
cewOJDWUecayjk8xlbx5BUrTJoM9y+WS6wH+swDdivIyFcJtCBdSsANCtR37bvvdKb0aU+cOa6cG
2dmOmIWH50zl9aVBHG0xLKQwX33jCi7pJZTHivMilq3bBmASa0GMg6WSz4ZfwwMn7z9H+P/oYd5d
4Ek3QretEkqTGemEGvCDzoV8GGlYWe4EPaD4zcwu14gbs7Ug+YBrv+OGB9ovuoXWWUYKSQ5Z+eiy
HvLog9fiMPoaeMzBlr7mJhmy0dhF327ooWb54wb4pr2loLZwPgkbtU1Zy9wF3gyglNo6Cx1W/KKm
3Jzs8IZtZCm8mN4R7S6Tao4G30uxUfKrhbAZuP0TgilaqlHFVQkRQmLxxl+vH1yL1jtbhKuJWPJq
Nq93GsWDTOzQflJQ5lGlLmsZH2A7iXE8XBQzC5l7pSHVnuYM1tK1X486p3869vnvoVk8PDrh2m+z
cDBoj1gbWEMakcZNk+V2UkbvchOSTTl7dWp5LHhXudGrn0kpk/zxT0xjpOUI8eMfHAXMgOLoNLX6
O8E4OUV9yur2485V7EHQzDEsVIG0VsyjeHS0oVqMk9ny7fabLeN8+kfeyqsKunAmPS8+ZwY0XDyx
gXHAde4Dupl0i4cXT3uS+QobKymaMVIMSin3gV2JNx/Z7HXyYjnrKrjOx6yXB1GQj8ecprEs+nfx
0E0X19PV5VHnLA6Wb0B/PWBx/OF1fsSQnRhvqMhyIXlMhaFhTA/6r9eRNqYhrxYRV12xgBSWRYV+
KCeiaTCP1aGpK/thvXLg2QlHH9/h3gV8v8TRQsS+5Y6b00Vpr8q4MYVmrxCMVaQBPapBOZc8j8f5
AkAhj64mnHpskF024B0ki/fSpZ350ZCABYWnmETqIO8+BjYvQmIPe487kYNlDfYkpqQbAtEC/r5L
bNvRmvyDjVlvbhBCXYx7lLr78Xry7kNWgDMxfth62PobJ2vzhbBmRSlUb1FXJJpxH3JGOFjfBsTY
XwreQyOHVAOaM4F3i/ht2WM1TSm0ZFVcNVb8lcMZdsiJEZwdSW5f/5MbRzjSQ9btO8NMBflN2q20
i3YYMMtUxdkZqyfdtJo0nYgaHk1usExbgpQU1arJ8je0ggaJAqSlhcx8jAgS1TYaF9qcsMvctha3
cjccNEiMz2nBk70dTcAPlU81AEREQhkXUoUYzl+15nt4ediyEbU0RJ4aJU83CC52jE9w3Ie5zB03
V4JuWCMl9efXTxjRa8yqXBPwHINMlOLxhqs2wnhUwSkDRTvfAdVO1wLZjO3DQ5c29HhjMNWaFsQo
dROELMHkmiOtb7wnWmim076Dfa2L80NVaziMMhpQZdkXf5Z7unL7c4RPd2CF6iKYGxyyu8LgmjLb
E3YUd7Oio4J+sf4647frFLKYfndRjol5K1vEjL4W1gXrVqAEedMG8hOdyfKgUriuWuyWOBqwvK35
oelL4YEHppfYKJn6b6wXbg6jzQK0Yo4XOvcJLLRBLJ3a8vl5Cnxj3yZlQjSwkY3a4tY/ZGuVKBM/
CduGOxiH/ZXDMBJRpNUGwQqZsHvaIMpYIL4ZQkiXHRLAIz3V3dK+m+ake+SdW0UORcWL/SZgrl4p
3P6jmdoo2LYkLpfrZ7KUqU0ed86vk/KS4XHGmqh3CdmiREIgBbUoOud6a5/Zc4up0VUoNQeh/enT
K2yWdsMAm3pw1WIQ6aPXJOnAJAbiJcFaNqLMy+TWUQMnpOJlcqeW0YqMtizGDVfl3OAH2Fh3OuDV
4hnw6qFWqRi3yfn/OwYlvrqNSz+eT/FcSd04SQURznQYhmOY19j2qlJPzy6N4QaITnul0BUn9xaF
6KnXjlp0Ut6Nl+Af0V/pVE34PT4uGGPse8ZGLFl5akLgeM364OPHaOnuLMreOdlDKsiwd/pz7dWa
4cb52irTo+uDJ/M8obi9MAp0gDig11zgxnUPcgAOeB4jro6rFqSZcFfotp06VR+hZ14A3WNz87oA
6+qEcDtwl8+njtaaCEwSkcBpQPowbG1mtdxrpf0NENvxsNl4fAh0CJxVb+qq1i3/yXyaRj/hrXEp
G5HWn5O+N0XNWvBq/Izad5xJepMZQggUS1ITLK1QJ7bFwfNQ+1YHfq3JOX0/OVvIWgqdI/cp0Tp7
VK9rdVqKyHq+ZqTp+AqxSk07HWe0M0ArPG8QUU/4DIOFr6jxdV2skzidhPf8lCb7L/cfH6U6pbgD
FdbszrAzqpuQS6WLmtn7L3CuOQk7gFKGdtkoXVwmG8gnDcUzH5IrCNJsfXx+KI+H8il7wvZw0qSn
3u9CsOABjGEaeuyEcvSBUBoUmxGHlMmP55LMpWPsjqbKW1lRU2pldWAnEYyD3cQF+GWVB8qqKS4Y
7lPeqgIj6Cucp0ikjcIh77kKAcmllB+MNBkvyWcoxbGQUKB2vSilgSZDyZvz8IV9Dh2DKI0ZOwid
ohVwq7fNGMDYJtM3ybacWG9i4aj/OodSVq6eqwrB0DtdbtI1cgBsGJP9cRhdkClwtkldUgW3aiYy
0bkU7PCSZEyXAjbIF/oAEX3mg8Gu/A1RgSyxXxMKUYX4mTRiNBH/fy9UcfTE0YY/asYZyB8QSVWJ
UjoouxXnmPHf7YL/++jW275Nd13F8abQ8lWn254x74k1X171yLjDP5+HZwspE4eszFzcTDAhbcfH
653A4um9GzQ/XCmL49FJx62WvfnuG53FDYFvFMiOA3PB0n0gXXObUG18Yycz64cDji8HmIieOXa/
2SPtLEy9JocrMKVoVQdbOquVt7i+6yDI7aaFCJCNXcha1QBIfP/aakcJQw3yC5SVLUNZE3Q+FZeL
uOGibdgHG9Uh32A9U7ZC+oeuhFTwuoYz6eM2/oI5uCvG6jmmRqwi6ojn/uEor74YQVOi9Jeb6Baz
sSGkunWGgI/lhBnF+WziowrhDwiSxjFXMZq4hQ+q1kxAvNOyJJKJan9CR4hpjZ9CTSYHXZuUtYjL
k4B55DrPp3IL0FpFMj+hV5LuD+C1jl6rPE57oYRvXZ0yS7dwMGiAiJwjZUlj8hQ8/l+3/dwSn/Nn
F7VwkrE2IJ64HswTtcgeeLkOX7DKmk2HfdmoaXY41cSpySAABgmvNFnE2wU3809V+S0nyN0lfWmn
4Gv/g4a6lgVpNuKmaAw638VTyecop9DUHmoMb4DotEuDMbIIf9dbt6ENoTIo06XIDxOukpc34Z/4
g/XNQTHTIze4xm1y1sY4jZujDA8++4VuAXY4ttUVG58ZNJkbmpVNcxa0KUR/CiVDrPgAMITbVlb4
JjLV6Wzpwwigly553q4a58PzFdL9kvMPZL1VFOgZRRN3VS14luFQ4E2eFtIDt7h6dCQM5tAHeacM
UA/OfNWyZXMruepae2HgGXpu37TRJfk+27hv8555xuu4VIz7dzg676l5KV6/zzQC5Fup4yWeMVOZ
6E5oNG+XPSClHv74ci8AOO1djZWfpdr0lMROL2JBiI6rfbekCXKTDmoTqsMZMLFAdSYwLTqNSGVA
XEi/ramERmrgXZthPaRVVZB2N5JbQZy6ULRHdULaUfY6SamxwmT1tqSGuWLd31CZi96xVSWbhNWN
M3qjOmemnAZvrpOMOmMRFJCx3jXJtX8yE0hHSEf91sgTeIsWMUN6ZdrMF/3XkfH0QofM2L6otbrI
1rJC8tfvxCWwJOGSl6wCzJ8Y0eLmIZ2XCmLtV63rjsh++XLwlhoTfO1+Mt7U0YfBeB37jr39hrjk
2IHSBgJX0/lD2OmEhfR9Enhme+yVWAq8NMa99bcDs2GM1dNyaw8BYyOa4nkGJ0zuWGxJLRtL1d+j
RLLnDro/rw7DWlAAbJ0fiagauW03PigG5bi6ZdluCAfSbFrikoSwekqdTNtfaejiqF83Xghd6s8j
nTebu28vIdUOTQhy0h9kEvOkTZ8tWvqbg47Gc5cMm2jmlGJ0U3QpGRzMQC45O2KAudgw53/KsKkW
H3aAL5JVmDwTohrKlJ2m1dG/pWFj0frmvup3qjPFVfiOH8XtMHn/CBvcDStEVMxzzut+wmLzHzMg
sN9Lug0gOoKP0fcbr+IdyR0oogtOKLC7b7FbK3jo/CojXIQc4+eGeW0fkDQPVlmDppqk5M4BCq45
+b+VjDSd8TB+em9cJtkgWsJjD9Wcxw5bd/0akoCJcEvMyidYdjjmpK2gbjmavKs0yLvjcuTB4ciu
f5BFH9Pb+iXPzwPNPhLSdauLwtivZaMUw6xh8li+FhR47lHXEuz/7U1Zb6PyZoa9W7dmp2xJSUNB
2t7fJB3qnjWNEPH8F19u18nXbfw/0pXqYbfQPxK94+mzbwp81XeFOp3q9qB5eu/tU82Ivul+gJHv
5j9sFhNj0YxW5f3Cb+rH0i3NoAa99ARP5bxKNpPAmLIRVoaTVmzG8O/l9fCB//bZ4kuAbjQFbcwa
9eXGxRQxn6RfEnYpOA5oDFnDTgaYi3yilhX0SbXv1wjERhQFMsrBDx7SFOfiwC63gOWlOf1r6xPM
wMpOvhocfUFkVCP8M68O3GUgRyqY+a9dYD1PPxXCkLnDZFqpK7Px85ki6ysFVAtDOrYeNLQUidD4
sI47VxHTF7dGi6Yr4LA+GQ==
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
