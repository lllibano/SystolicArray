// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Mon Sep  7 19:03:09 2020
// Host        : linux running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dsp_macro_xbip_dsp48_macro_0_0_sim_netlist.v
// Design      : dsp_macro_xbip_dsp48_macro_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_macro_xbip_dsp48_macro_0_0,xbip_dsp48_macro_v3_0_16,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_dsp48_macro_v3_0_16,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_16 U0
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
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_16
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xbip_dsp48_macro_v3_0_16_viv i_synth
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
LUMLoNf88BTekaQgrkLpwgF15Y5q39XRzeGePv9DIsoIXyEOy99XwPFpee81ODo17FzI99tzpoj8
u6aBoWDR6poUGftSkUCcbqAUZ7n2GbA8CltSZxDZFA3LkwgZGSx3ynTRKe6tuxxj7dUYNUMVTvX4
3Sf161fGvgvegh++sbEuHmieHJ7gT/rWacN/PnGDrqAaonyVV2RQqWu+nTuokD/YeOrapFoMkIeX
0Q6DcRlt8fMElQ/vgE307CZYk9DXpBsZBJ3Vkoeqt8eA7ZiEvZu/DtZyvh2a83cAHVsGJHHfWIDT
u6ntVveUBnl6hixlvtfjpRssG/v1c9g3KWQp3g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Aj8kxiem8lB1BXHU/adtLtvq7P4wyr0ezWAnKMaQefU/qvIcEdM0KI7KEi3JfkZQrIuTv7kt/4VX
YpjoFujrLnpvp5990PSHdSw7LbxGaZZ5oZrmbgOnZH6g+mM/rYOTxEXtz0ro/Z7zDCyLCpbRXvTX
U9PhJp/glrw4twLO00w3ao3Y0BPB7VOHhgkAAYSwKHewt5fyNbEPTfu/TBQUR59CO1oJZ/64OF3Y
6+uXYNypaVYm2liDACh8nv7AhbxxqdFGnhUpStZeV1KIwXO7lgBu/quaTESobr8v2LAqvNX5B2xY
jvUPZefUTt02RuUEbn24HLZ5SXzIb8lS5zWiug==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30224)
`pragma protect data_block
t/T0fhZ4OIjSNe9jUi7MJ7XuHz1KcnqQSRGZ4i0mQslmPVqP2gloVHkAXDVDgiGGhA+jErOKHHcD
u8WHlwaK7VATqRb/eylJ2fMXpHUc4D/CHqO4rFT+u8twM3ULEeCeD172xZVkKVZkOhVadfMoubUK
soCuZnBQkSKPSIR1HUGP//WRaDdx+0y1mxan6CDk6QWRtDTMclkw59LtZqzHaK3MLCYrsqxqqNsJ
q9vQzLj3fLy9HD95shIfqscYlw312pYeMy9Kv6YRmnlUWEo/ZpQPP3jepELDpWDdT1XlTr5+4Bld
y3XxCaLN80bXJeBWn2J9h71TEOY/DNqJxnEnkrpALJzo+aObyQ6ZyKwI4IyN6b1jvV/5g1nJH5bO
0umd6f7qFhfhLs40K0ItytXcz9kEhucBNQcKv3jZ6pWT4/aNZnfBh4iqGgXA6PFfhH9rnXh9JHcL
sBzhcpseeSyUqQxN3vuvNmdBrbrJ9ieEosz4Arx9S3UcLGDIjZ3Cy4V7wezmJ5NOtpbO179VGvSt
86wHZYt1aGs9vsnYUuY9165HkjGYKrMoD2be1vcfvOWayauufOuD8rhp+tIvnIePlQBgRJepcI2b
CyU25NCd+aM1rG8r4QAPB8lajco25NVruN27LMuud13aGP2+cYM7X2bJ76+qmwKbepfFZJOaM2NW
Zkjn6ZfQXXSREybONR1KZbAFHuxU9hU4T+p66yP8ILVJ461ag4Yk4wGtozAub6cg8K1W2ovYfxem
Cjh8mKwp/kMijAeAS4rbgkHfr77/7K1VFL1A26NyAnwj5VBlnMCLYpUHZOY0tCGZ7X4V2i23bo0p
bGL7jsChs2ANECoC5BUJ8GKuiDsP4YuiG4RwW2rQ4sJjjyDP0fBJQJtqTXcVls8eOfGfonsySNZQ
HdmGqv/F4MbBS6ivyoBCwG6SX/QIelixa3C+0beUeNf2JJNCuwJnKRxPIGyWcjo26lUeGwf9rEzR
O4lfUtrk0kGKG89BUPDMKuAYHaQp6i3shMJ7GnJomAikxggfn/DaSBff3zmHCBzTRdwN4e/Puq7U
EY+6bTYdH9WJCCgEUw+JBXEpnWirCu2EH4xG1sASxH+hwn/YbDRINTGbPoVFEFPzHkBhvmPNRLkU
l8M/6bgsmwXHSXtaXo9UoUXxon0kByC9NseFkfPlhWci+6ZzHpMBxwUXg9E6YXvyWSJkaXtxxyRA
1m3DN4wOyvvY8rskuZU4IbPJeUIJAKn9nVldu4z/QauTC2fAhD3J0/AAJHsuSx22n+WixfMgR/c7
/U+xtU8X1o7KUvxj2bhgqB4ntjba/kkC8Sguyu18lRCpUO62lpbdEl6GBs/ZE9K3HqVOffQVnsET
E3FwGZq0PnTr9bLtxiLudUUW/B0G+nOcTMruBsKhTfWuzeTVHOWUT/KzXmH9RDPywDVmyfBYoDCd
oCyA4l/kIgTEF9/mgQIgo2Dj+cGC4DkMMuM9G0m3t8oaB8w4nOKSk/vwVzGyT47JCAcLM+Oyxh4l
ONV0oDU/6b4KEcY3shgMh/exY5x7/dLm/P0mooKY70kqx166ZcMpgEAjf8T9FM8PYPJteipfQD2X
iS7BqpwQbxYnpuYaBn3yhrHFq3U8gaJbCYvLx0NW1Yp7JNHnOCQSSHoXF7kgqDm/cMPX0LNV1lUY
AQDyqb9Koaz1QmOFwRS9u8PaOVYJSrREP8VTjEZ9Zb8PF5A6546g4/IkmsAuf+sGNdpeWKPePLUq
ntBhKpITPw1pEkVAAYreBbcpx2iItklx9uNdY5G5vF/dS6ZAX6umMVl7BsiwuQTzUNUgAxHjmXDE
f+ooejUh6zPpOFC2vdarlLNZRA1h7WdM5309xEQjYm7ouXqMuActRHUEcsxy/AkxF6UArrAYoVbk
FdgfBR2g6gVcN4UlkPahW0ivPZadGtjeQgWgZs5vfwgyKKuGLwIH/SmKlYzJrdBR7KC2wdba1iK7
timMOkWsMwCKUE07yJxu5IRzCjXnxEeloHdADTbX+iReNVNSmaHJuvlk2yzmYhjZdAYgR9k2iF5Y
98KNyf+tuKSISDsTFKekt3rE4EU4U9oh4LPZXIPFiXzf5DCGl+6s3YZi7HptCsuTFk0L6l2gECkN
1RoAhs5xx8pOzvYRn03NnLEOIvVionLO5z/nx5bSJXO8r2vlWFXJZKKm3AzdHsW3Ix8RkjtIw3Vk
mqwBJq5KlSaOkef9NLWUCOyyv2To2vS+wqNP8fuRZtTAwm/Tj4nib6OD5Ww5xvON/k7VP09aalMR
OdSZ4WHv0AMNSy+WBJWudCqTWk0hS3TKcFPYee6XYsdf9tO6MubHGA2/TSpEUjQ2AGvkiG/GygKg
aZzY4ENzojufUuetx7MKGGXLmjeAIU0LdIeW+csu9xNd8CI3wR4agpQ7L2CE/ojLt3e164qdSd6W
gjmpJsbppPwPGR/zIv5EhYTnQEma9UBv9LQzBLx3Y8rNMfrI58B6NJOnYj+cgag/Jd/0JGh4FRyD
9Z/gu9LnqyH0pBRd4hhH3yZvj7sJC+t89AkjM67MPgTQaN4Fjgc1gymPZkGlKW0rAD4+/CxsuTkQ
5J07RWG5Znsw9uBJfFncfOAh4tSHr8WntUy0s/y6dZwQqmcIUlALVGXitpMLnYZ4SQfVg5N0dinD
Q7mxyxhVraaJQUavj8sDGrVmHLkMB37+RUok+ok8C8OTn50jqTduCnTngdV5W0rPj2ka5u6jawuV
rYEKuuMZsoObFcl/m3MxwCErN9HV9PVz47erI2B+nF+Fi8ORKtNre1f7PTXoT5vxQEWfRcKL4aWt
4p5Xr4NhGh/yqhA/6oXVB0H6xbsSLdMbWOllQ06FAotx96/XAzc896Zmnit1x0BZljMJTKaYmMP6
5DRclcn7kzkXwV6AwGKWtGviAQkkuYwqtAeH38QhzDpkSdWseE/eohPxBNTDE0xncAZyiNR96c7y
5HaX9IrHhNFUY3S3uIS+rKv0MfogUl5UqD630CdayF+3AvhZuZO08pfua0d0Nz+cJ8s2E7ah5E72
KbGFQzqUm6nv7TXXX7JwSx/MSZrm6hYfIOZvQ5WUYfiYUga4eoQZx0QOXbCIvdiVjVN/1RWEVeA2
BbaxMPMQHr1Ryy03jY5+9mCww4CvN4hhlP32azcWnTGncH4d2taW/R82grmQXOYDAVRWhAWI0kmU
eS8w9GwgE77t7k6SldNM9hrgzQ89xJiz/aUCOmGekbD+EEkRUAYsFDlarpFWm3YKxdzE6NGMZ2WA
aikaeJlsmAHrCmeYIYGNTSL9koxPwjO7q7v/EilBJA63nzgtPc0JljeEEyNUjGyNsaLzBbI6dJ4E
wAhIVx/+At3NbIAra8OAm9ruusNExldruBKeeCUODMufVxdJi83pEkuFS7b1nYOdsj0MV5h1Tb/X
pLvGMoRDtnyY8pLomOjtp/Guu4yTBXo2jiW0DYoCEIsBdJg1NWur30yFzeKAsOK18HtOunebNkee
nWmJMRmBSlP5Pxz4hbRGkWRTXQKtfQJMy/os0niciXfY5WWgI5IrqnOg++JUEyFxfkjZU7VTL39G
ZEzvOm6nwPxvhn9+n9ckEyA6/Mr85IxbYecsxdCZsMHH6DOp+4NXumf/JqXFtNF7cTZcZe9ZuGN+
Ps7S1qIZy4oe8KjvHIp/3nztFFpTmOXVFQmkrKEW7KpY5y1jbDyKWbPxzY9npPTvtwO+yqLdu6/i
RQ3f2tQs1EX036F0mTnBrO94isipU8bo0J2+wIeJSUlkmBYx4w9c+Lb4XaiFZzRu1VROQrncllTb
l7xtphoJWwOdu9B7JQljU1zuzXNB/hOdS5aeunrOGFXsOiXxbJ0yZQ8OEaNUxUspQaop2fnYfvF9
Jujuh9lLSm8eWsQLMOjDI7tbOV5SIPtacEDKUM+KtUQfaaPtSQmjMq+Gcsr4EUW1WaW/m0/HaV8U
woCDSGIiygETlgI2DcbBqB4J5D4JqdXB6lF4FtVMajX6xEU07vaLxbcH3Gkdt3u0q3BGmMCnGxXd
AvQuVwziPfl2niZyhxm7yEB4jLdxElpZO1U237pIUOEMzFhMOtQ6wJl5U/RyY/HZJrhIDMu0t8Ys
xziOVpc8D1ccd92fTtAaPMMf8SAEq4FPWmrUm9LVKSqDhOQThvsC/TaKO8fL1QQ4SOBoGO6BeYmO
hnm7jpMA7DMIG4OHZmzzPKAChlhHUINru2WgDRPgoGelzL+fDhdzCTtx0s7AztqoOEz2CwjEvs1F
Vn6BNU6bYF5Es6UWYezIufI1Zq2iI/QXQT85dPG9ufH6ExcP/+95uX8qNL2W2oqHotwSRh0oet3m
uyBEEv60Bx8PAI3xDLsQSi3lOJ4v8nsMIi4Jv0+PAI6B+wsV4nMDqbxlmivH5nTQUgJScy1Uuwfh
oy94XXVIeS+C7XqtlfZq0kEigY748nuzNM692AJQTNnUZ/z8qMAQaHxYvIr8djMAnwwkhvRpE/ii
Mw2OMnNx58TeAUlufxw9o0XL467mfoFn6CeV0e7df0uh6Jj2/ko4EQ+Dsx00yS1nhkm730EOb2Jf
ia5mPZdFvka4w1qenROMkmrzRhjJkKYESvdNml0wWx2Hrb8N87GeF+RX2Bsj8eZAMci6MKRrC5dL
VRNGk5jhLR1VF2T1I+eB3X4xLUB58gtwJ6FqS397BZ50E5X3ToRlq3yqSpbXVlXJp6afiqYSdflH
TDfjg6Jm+24ZG36hRQUHw5smSLNwFn8xQ79SeGdoFCmeuflmPws5fNCiFMZ0giwZRuACituiRwOr
jBcIuPG9BAkXEu/CNy5bBpvqVUMmdkJA7brP+J4kN+MPKCW9L4QhBv7y1xB5tHAogWa2zQjkCr0R
aSXMJVxcAWhr0wQIVVf4XuO70/3SiRcLqifTF8VF9/hm+o/aHbhqsDbWUyjRo2LlnDv9k1+z4Cms
8imbNX9IEYNeuLbbSWYMwwdQt3B0Dz/cmlSAmKSNY/4xsWm/VcCoVahcKXDGYehbtUYcw0y88vyf
10rtR6ddVF0BMVjLuch5KZhPFS35HJE/VdxMN/I4nUPnmx5ag/c++N0W5GmjzZfUtXuYOBxdgjvE
UjQhSJx/QKmSezgu5MYOULGTBpS3I8Y2LxCapJeGiOYNx2vq+pgyP9zkO9eiM8qJAxb1tmnMtKTj
9gtxG12AzpEYZUUdc7k04a+24lqtznw5198nemDaRpNJQal5J2sw2lwWoomTIvVfcsK4RG6pR6vn
ywZ4IcLDOKHvlhnjeZs65Wznq+8FkzLbJ62yOasSaYAqL7XY68Z3RJU6hcXY+qPUsH6UR3+7Y41i
X6x3dBYv5cFzyDm5PBlmIUJZuKiIw9blw+vlsdOdlgADuufj+rlXCoYdxR3aBlPYRQJZwe4vN17/
Y9xRYy3l6qVXPUgjBVPPGsAL0cb4B2H6p1Fgp7qaKCu/Hd3gjeMnr5lqjJ8nYNGXMWU31PXhccBi
7OyeXGiqe7VCCSLTjMxr26JxxobDsLeUNVVmppZ7Nw5t4eAc9FOIIH+zNswKoiPaVeqa2opEU7T2
ztVkSYGlWJrNAqrXNsifk8F6TNCE7+ISaU0l7rZbgl3ytiR8mH4VoVrIf7EW1VkU4WZKbR257opy
/IC9rU4B8Tma4rtNxU8hkaDnYW1Ls1UwqfCcAkbHrp/0tFw+KqfnVc9jY0shT9o0D8cffn/TCoLq
5ZTyJSghtvfclImj2md6EcoicIr1vsjKi4GaPW5luuYt4OrpthBNI4BIbDZgpaQ/fMCMTjobkLLe
RBnn47NYdY7vHNDlhgEmpD2O04qZGCIwFlbkZXDtETcxMqYwBO3GeY65+ioilGNAOgLF3rXJzF+B
bUp4rTu9mVFKZmcXg6cx1pQmLw2GxyzASUR+DWymw+E2aSP0kluRKQ+bIvImfKLE8GrvjZIOewEU
qw/Di//7P4AP00JlRWBgDT1vpcRzSssIXUqUFHaDR+qW67ShUxLXfS+i8FiJoF8rfRtIt9jA98pJ
2BtKzkTco2PzaRHZ2+ExVAaAfoa/oA5vEROw9Xm/YUmu4bqnLkm0ovmgdgFg9xYDb1ms6Mvp9PIe
DLUQnXvBKX//EK/sw/8GymfBHUaWJprfRfdi0TlN6LQmzD9qHSjWLnUEWE/yHpbroafuGfAmEMgC
MbFT7PWqVigZxVMUA59Y5XypYjqDhP9AGCP0uGabBOOW2erktxF/pHOX5w+D6/9adepl7dpugWSE
B2geqquyh50kyWC7NE9j1bb7NK4//Rc2ZZLQucfxXAZa8B2ZTZD8pPmtTSqXLEvcnryPE+cM3zS3
1huWuRGB9M2PnIt7WhkAHHT/Gyl+IGnE3mn4a3IoPsndMFMydelsIwyxrV0MBdAk/RmSXdt1+lSZ
LvE2Ll8jyWnQ3uquOADTXNU5UiN+aRcnFzAIkaG1+J6J7p6thLX8ZhHov1/BcMm483dJq54k0u7m
DJ1sENHCwDUN5aIkj8XMplMH8XoW6F8XEGNVzvQfd07cZ8HEu9ZpNPlebv5RrKdjcdbPW6jst4Sm
O/H49BVs8dXbJQsmZvlWtZsTY/DqvjeqbOxxW/n8yMiG5rPWIj7yH3phwdUYbGD8PdyiaJ+ffjDr
aBiTBdMXCDIbi/1EUReh4vUZw4cMTHmwE571FvZN0AYSrco6QrRrVTI7euzncWHUmdg0JrVPpm6X
2EUc7nXWV5z6Xj5RLYO8TwhqFSTEyxOoRDQYTDoIIC52eZwDhBPb+a4P+Wtwin+v1PzHhJApQAvf
uRzdbqGdxqfRQcQY6M9x+dIIft9lGDFdLysXgy/BrroGJ8gsVNaYRmwisVMitZZS+u4A1YNzgEF9
jA/c+Rxub9aznvR/JIIrb77qe/cSkPRqa3nfIfn975LOahpOoyn/7hCmzr28BIUVPMDCu178iaaN
9W3aQbUxuzlNoTflcJ/rfGpSVlWFpAiuG24G82vsny4sPO00xiJngnLPVS38S1Zs7k6Te39VCscR
gOmtv9p2/p+bcIxxmQn/07IcGt/pV4XxMCTTRlPtPBwDof5aONdMN/qw1f0AYpmBRFVWJxRzrMZs
zHw0fRX/MN1k8eAPdjgAW5uy8Y7818t0e4Z5EWPDty53tUHMcHUZpJJ2Troa2eayUJJSc1xoWD/n
bF0fTXepvC/4Y5JG5vBP2mX3GoglbigmgW3exxVz/AVxDO+sZH9YmCR35wM7R2lbdfzHk64QQ4dB
osGXVRPlDBjSPgpscDpljivCCLDwLwNCoDcW/kAraYaTPUluPWX7nj+5rEHxGACHxlwjZsfifule
gi3alB++kF5GTUZrYyCTBVar3m5h9FVae02zR633vVr/LZiBDTnNsVTy14KQPFQ3IDEqtIPbcucy
CYLvDx/EuAptwW0FRmAjIvvhUbkBJpcvVAz6SxW5vjT5RvxsizVRDABEWeoeAB5B497qzL1++1dw
X3m+ggYh4kj6DSd/BiOLyShpC0adZ+BCQOf+drYMDVeFsztRykiH/vVfiwMU9C9VG64bvXzvu4zy
dAVBal37huo4SN7QCR+aM6daZDtc3svf1p1wVivWfuV2QFS4iWzfG6uj7mnWgOSDvBOWk85ByYlA
V5dTKBU2SkL+cFSA5kGjPOx5kALscnV/38wsh9+5CYgG6mS8fiHP6SzmzhmyRl3Yx05VOSOPWWh5
DY5btR4Z9HAh2Rszmhr3GNVm2M6uzKF2/h01NU/6gZiI8lLlgIPjysomXLAFnMw+bQu6cxrpuYIm
WDThZ76QClOLbmH56aXVI/kJ7ZzeE0WOr1GcmPvwzdLra5s9frd2HLBNnqmejNL6qeOrPBlNF0bF
5RWCMigtF9n/FNr7Bs/8Wh51Qn9WU20QvBjsiLExi/z+RPcWs/fOZ0fSaIuLTruwmsWy/IJq0EnS
AFvBF21u1blPakh1j/nfgcJ0HZfOAqg2VraBtOGa6LVXI06imBR52TE1TwFygpb8/K2aJhom4Aai
bkeoN4E9akue3BAhu6ty8VKGbFRxtMxKeB6JrF83KKNGvI2y5FROglqRsFpjZvk8IGM3tQhoacfu
MPjdK78IB7qlF7/p2CXfFQFE23EDY1xy0kk6X1+RAvS+gBEZWeaIJ4cIAOUsZaC8V6mPmJCyIcaf
SZnyGGEwXN4xTuuCzhnd287tayZKur1kc/iLeyZ+FmTN/FOdgmsUq1xZ0H3Kg1mYfiRu1a+tJEs8
yBlG9wMfd0FUlpWhCGYYF89C9wWWwVAlAh2YXlXM0uqMHavx+eFU0z2Aw/UY1JOzqIluf9T1XcTJ
nASmtjBfAHk2S8xppau+Hfgxxm6rJfHIJAZaKr8j6aUT6nwsJZcBF9Mi0ilc4PzsR+ZuFWxHJr57
Tfi0UlIVJKSwYTK9LmeM12Rk8OJsJ5EcmooF8DJpctelZxneAmVRTnMuOqco9BjPQjs2OSfwQGgj
mIGz0phJuU6Mx88I8G32UEwIvsUeNfMpBhlTlnV7TLvdB+RfvMZYG5X6TiD8C3S0/UdEZlrJgKVe
qPjh060lns2w3qUDfvpZcfsRsD36mwycOaq2WEbtivszKbQM+rK2ranDgue0PaEwVGkEmX3SOpQL
0lFJ7n3eH7PmtJSE4uJE/PClkVg0ITiP1NY6QgW27nw4292WUHIMlov4tt+0wCWfrSDX+4L8TicI
GHMw2uerZbzaHNbAu53GNSb2EM5zA5nCurslMUnP+4n8Tu9RRRErLokgcGFiuNWPqCNXIZERu5WP
c/JyfIfVDY+TCTrgwlpOmj1vePuHDQXEPDgQPCujZHypei/gOYvXPi792nA5uYV4fqC9lbjehoXm
04haSjIhjdBJXRoxlPNIq2g6DkUg4WTAmUKHOPibrjeERZnoMAIza6gAvVmoMp+doca9VUX5tTtX
FgW5Ivjx4rD+7iSd5odeTec8wPMVA1VjUuJSUp0f8BXgO2Ugha7uj7W74nMDHrAcP5vPsLJkBdC7
XKSGwHEqmdH011WlwZKVY2wkbdvAtbyQ10n+zlZgCh1gaLb2Lia1QQzFoX3KDyANlgFyUO88GVjj
bHddOXqCNnffXLRIGYjLFd6BuaDpridcpX9IFsyyZ8r3tMbwHKzeP4SUwR4Yr4G9lFD5BV2+no57
aRXG//u+b7F3U+5+MwBRx5fZ8B1dTMqqxfzCq0F16BxRNwGobgFEFIk5lpveIcs1iCkuP1ftBNAR
c5DaRwhCiLPTa1ukaACb/G7VPrWCzC92aY0JfUzVlKykcrZjKRP986263Uloj+cQbDGYp5nbmit7
pN3nt8qnsNsB2GLRWM5dCG7RaM2H4Pp27PFATdwDpz+jBQzxuWMoXP0HLWw+p9H7RM+sg3yyckTZ
BqttWSvNuWIjbEHRzQp/qAto5TpRIHuJxh315M/RYckLsdpsA1BL4dXE6lTLk9AzH3sMKeninELS
Jhi30JPHAmrLnSASMl/28gmgU+dCDkA/FJN4+kwUQCJbE0PnJ1Nr7ZzkcDI9RcF2KhtsqTQ+zhFX
PqGLY+5NKMWcoolun+yAcg+N6bR2DolcUKsbh1XwI1OKvQurw+vr2IbOPDiBhwNx2t3Zrzu+55iH
5VW2pRnSomL8ex/oo9IrxJ33v/AxV3YocubMdMk1ir/gNARoVdJL/1WKbEKHiCefNahOPozdtF4b
djxoamT+09l4/6TmTSHiGMvb/Qhk3k7kiKo/GzJ242HRK2Jw0jmxH4dJ3fFswBvyFG35wFZT4OPL
A8BwylxZMLPj7YEa0Fnv+SY9m3TFu1BIR58QulF3sjTsAkbYM8TKYpysh/F6jrocVQLYnN2oxIda
bh3/HB3aTJ4MN2Y6A/L82qq/By25WI+A/ZfidPujSZA28UoKg2ohA07EbUPyjKDKPQhPXMhtoH89
aRydTK/f5l9oJ6D9uCgcngzOnNMphC2l9fk/qxTzOGy3vN1rzpeWsPvPlAoNh4pPkMFBMfnqnWAJ
F9u0WQ/IxxoUUx1dg1jaPB2gLRfALRNAI7tIizvwqCu0H8U0v55PBDrnS/zMHjpdRhYOzcGZxXtv
g7xA4aYwiDP7rdbg/rRVHnslr4R4rOUNDjMDcxDg/EMvKe2tP90s+aGGrwMHFfCOoP5YrVxiCCFh
YU3jGR2Yx7UT0/4u0F4p+SMQcWV9T4Jva4W6Shd/tZthkkPu3SosAnVnjmvPuW1fj2bmfnYIvisw
BG2o1raVXTuFfAJXftV8e1NAK2ad+rYA/o4bma2CaMub+eBYQG8mrtVk86r0fsTnvqEq+83wxSd1
HO9zz0FtHipxWLvucbbQvUbSQs+Cy753biMsy1qa/UusnHkafmZgODXiuSAjRFLL0HlY1gI96rc/
EANM3UvD0mJz13fyU7ljOZhOwx81SWI3vawbEhyigG6fyf3y1Jl53ijjSOpIByvwdl9MHZQSY33B
EIGWP8E7214+yjE92cxkx5k9gUPEWvPDpNtcJfw3QrQ/bzacyQVnvbff8qNaWhso2FPtG64az8Go
xp7c6k86Si9HPvQNS7LAAXUzzNdH9iZwBZ8YlAr4suMYClbVqqtKm400MxuwOG6Jna74/wbAFeKl
Zd4iA5YePDJKvYxtdskQL4iyqylyI93UizOtjUr4FTM1YAGBsd+15mnaNVDxvzbfFjnxGei69M4R
JuFyTNeuL/sJzC+puQZwZ0zz3oevpzfA6TbSCndS7IBJ0inhqVsNIunKusSmBxUkUBgHHXQTtKiV
gVCSq0pD9xtAnDNrt3WYUaczbNn9pVfFmct/4abqx48CBeCKV7od+lcmmw6jkgQfz/yjb+7JjYER
atLY3Z9E2u9SsmKF9k1wAf2KAsay+A41LMxg/7xKufN43+rAvFe7WA4uUSceZF/cfMKQ4ZwKAfwb
Nhugz6r6u0wUwzx2QZH+BjMIxiO04BmAU4j6TKsIOqLv5pYyy6lgR08CG6yGXaBRgXnDPRc98crn
t5iN2y7V4OMUMlZEGuxQWwJhA8AE0iKjWRxQr50p2evdshE4lKcmuGs4tci3VO1d9/0khPFE/F3L
oWvusb6d7FyMSqBoZqtbMGH6HzOp3hWoQ2mFZ4LytrIOapvB7VavpqgUHPbYNvZz9V+DHnxvTfvo
zxcUP3v6lUOEH1ETXi83r4CKEjsMeMBnnDuuuN0kBCev5PGmGgedfKo4f2t4MvshpnwU0cRLTpWG
XxbjUgcgTVY6UfUZpQDAC343hLr41TVz4yiFOF1fwfx8YUlolQO+jniXSm9oH/HiVSwPmdmCgSQw
RLrgf/TN9NgeDAw8J5AOCv94Qw1hxoDKjyPJadUzA/L6B8rwoC+ucBogpiFn7JqJpnKjlTM0dtLs
RQEsnjC0JCkzrQ3n48KKORKX+kL2hknwltFE7jh7ZF4E7z6OWP1TU2TQmf4JSXBYwi1VFX+9XFWE
zutsBlJRrUdGUvcPpy9hUQUr2U1cybD0JiT4crst9zAr3FXi5CRUB9mlj1HNcbq5BwqqycMmqnrc
1mE00RA+LYxQsApKKjng1y5LUYj/Ej4b3DdTOU9vMADNk5DeQYjp6SExGAhCqnMxW4+nLMvR6sYE
kuboFnEpapZYJr6x+04Irpj+ePjHV2roWy91oeYrUjKSFQZ+8dUAA6rlyMiQuHhc+M0tjiMXruWp
irtfJns542/OkeSmCKVGpJ/GjiaIiwz8cgE3d8gwYZ4oPBWACX3vy+wJMJ1EmILEsXt1guiFon0p
PK0/f4TAHeSBdBOqNln0DyzYDU9QPyi/BYcUnQQdHV3FpUA5uI4AbEjEZPCPGAuo6SXtB3xw2JMG
3lFUkFruNe9pwhkjga9TjxLeUqYObvY3Yxq4TPqBe2Drazfm73MfBmddO4C6BlJYO0SVTJceYtuv
evEkGJrdBEqGUUthzPUNBLOJo3wKKXulhMLPGv7KDMnOLtLfduwM6knUWoqK/A+1EJP/ZtkDz3zV
wPjHS8vFroadZue32NtWx3gWRDw6Pdx7HZy8/LK3bQ7Gysyw8CEwz/7gTE+WZgH4LM+7XoLl0hFJ
AKJQzfW15nyGdumxRmz9NnB4wN5R7e/McpRh7E7xHX6Up+ONCDIvmgBiXdUGpP45TpYDRSF3PqGI
hDaXDMZZ3iic1hRmYGY9SHDWZHtaKaBOutt3OwwpB4wivxMbYBv+7Cfi463tf4Z1Gt2+oedxZLIv
5o76X1nh0iGGVe8lO/vvuujqGRuh+//FBoEyzNmz/F+PWIgYqfNmOLZGTc7qCrn/wgeLRd4B5ER+
qEUZKwW+4l46EGR/+oHne/u/xWwvsuvVxrj5Xi/2bkMB3Ef2ell5ydfW1vOYqpTT7+C0k5MuNCCL
M3zkFZFe89zT70UnCT38f+t4kowiC9QH+WHi2kXGJ9XUaXiOV81u9E/350XGUznkX4rKzmErC7NT
SxBFUknonSCAHsMnc1sBR+iiAYdxNgEF8+t1abv/ZD8iHPaOsZygGcACyzDuwRt4cfUv3lEqfwKk
xj7Dyr4DA8MKIRowGAl1Eugc1yUIJROnL76feGueMKk2hrdUiMLKn9Snrt2tIOTzvCOkTVuhBkoP
tp1ln6tQ/ikXSD8aLz/EmrrqB2jaCAbY7HhgzidmV5ptZIOPUGXqMBqEKe0vqw6/2G5OoW2EPyCx
NlYhp7WfBZO7XvIbG4X8gErOZR/12oAPkBjvro00xuZvM3RmRyCL6D8Bm3/noel5qlvCVY15V/Li
WgnmIBoncZTEaee2x7ciFpPR+XdN5I8VBkb1fWbGXeDKynh5Lv2861WHYr+Tj3L/7a7ueqsvp/MF
V1arb/QwLUSSvvPjiOR1YZvp77AQzLJQXQcBZNbqCn+81U2dvo8Y6Dl5JyON1bke5ll0tShpVw10
G3UoBQNm9+YYfjLdV/gUyyzZzR3otAtG3ywI521BX0Pi0v+sNScVOBY6Q96IJm9o9Lua9JIvn3ch
1CDSeUW7ssvqOH8n/c48UptNdkN80iogKII9w2XQ3t4HjYCw4xPiz/3FqMe1a0AuFswIlzKX597R
3Pctg/GGnH03eDsc6ifNW1nl6+vJk23l+22FnLdwqa3Iki7IZXliIlZeAgvAA/BE69ecxj89m6lt
4fMaz6DOTJsoBg7VKDXzpcSXiBveMSDtdq1Nfyf/MD0Sauq+DV7YSVsyHHk+f9q9bjK1vqmNjxba
J8eSeF19Tkkrd1elEbU97gdrEiCZ9Lpu14ULWo95TJ2MkxIpGFRQsOlpwPplrVip0IJlwkzFxV7S
PUu4uMWZM/4HIakcJKuFxjmG+0Xy3jFpEm7fkqP4og6LFJh5fQGKocZLXInX7HuEVnjBriIrydky
mFrRH9RA9nl/hHX5EbCcm4W0GQkcrYTcLjoPDnlMiEjqSrgFckK1/eWSOMi9pRmgt8MhHIKHwdi8
56PjNIkK0JwRNJ3HvyfmNvFE19OxZ+4H2rU2w2IXffD4HelXdvAiuJ39TUOh2Ko8C83dV3WM+qpK
gT1tRg2pJ8MF7hcVebJT0KQvnvvB+ltmXsCKBrLw6bSPMqqKM0wO5oPL4VXcVuzOXYGDbRuIzM0o
M/Vscm4TntqD6uooHL2/w9BqRg7LYXPbdc6bQAZJ+wrUztXVb9EKwE5Hq+d/EVcs3BEmmjsq5SOV
CD7BSHHJdqqXywdSdDrhFsx691VPMBxOb8kIPMqq7X2RuNpXwJlV55rWxND9sEz52lgNQFW6deSA
QgS+dAPha7CpuCWkkMSaWOUIBMPpNDyfnsH/l7nT0HRr9F2lcUwjgT0a2HJkYUPT5LUsolpBn3Ml
LjCeUbalZwZ6EfghQeQAagy0CDnQ/XkzLO1X5si7+SZ7BlFg//ka3PssMzP1b+e+Ph2NwYcTWbra
V9F0jDGFZonpoeTATw0cEndQJA/igKnb/6FjGS7yQHVn+uKVyFLI/Z1pKHTuTEHCSRZPEnRB+vqW
dM6mkLQlTQdoPCMviju0ciPozUunM7CP1k6qZxOWE4peecPxWd00il+yRls4+DbUFW5Kpv8wm+EZ
73eWrdA8+v8vJ0+A3CgUl/VnpiHndFtp9YcALHiPASxo3i1jEF50Q7YGwGQ2Sr4Au+aGXsn8Do57
1A4pFhm179ajLt46onNllEJBlosUPnVrV1iIOz88zP2AKEibKa9srweTZfEQMstPdpi0oQfZDGvQ
WIFaQcM9fLZPNlOTITtdLTL0Sn869WqjiTSqADWYJIgROJShguUK33hnZ0YZJNnLyJF+6V3Ji84F
5K19Vc1JyIRwssztnHdhfUR55Q60v5E6OVXpk5P1MLoyGXSDERP2ftGOWB51ypfmxsyTod4+g4e9
pTizqGPJlUgoeeSSgi2xy9B/FwyPiYplHEbq9Jexp4no+nuw9m7CrrrLuBNSjp6bBzpAiEIOZlAM
Rsy8TFbgDXiiQlasz/A1TVWmN5+bZOrqOGfxHD7FJDTh6kVyU1+lQA7cK9KrIT5UlSTB8Jtur7vb
VegN67ujJ8oXQNUDvAcz+TbGjXTC/U2Ov2WOY7rQ5drwKKkZaSeaBMrJDkYOvxxSx2cFgtIjETKp
NQz+7Yc25ymNZkYMSxwN8r6Su6bQtoVQJGpNBi/xO+t+4N04csknkAzbBJtqZFxEpa9z7CMoXcCL
VjEC/TNzXn7ItmWwO2XeJYNreV8rThDbbiwbrywBSllpHTh9oa5mkYNdg0cSMfqMVE0w8ztrMYax
PFdmfzhnUS1XsbWNLcWuVGxTHcD0hhMvxUBlyEJqjOfqVFDK7laWXuXRC2nJQuq8fnz492LkfP1I
ZGaTTqhHm8HKTwP71iJ0DPSGO/F0Wd7FeYER7R6M/xKeDQc6lYBX0mEWi1/ZKGIkn9aosINPlsMq
WzMXHMzudRGWIIcoEitMihAkcil/buk6o249aSZkqaUaxf59ionH/XKiSZvY2dP8tucydfjNQN7n
Yaf6WWnk+KPZNMiFWfCRY2gz2eq679KdORaBg49aHWphfQIgsWE3xK7kyTWTK6ZULIhulSJU/a6F
74VotOj3stLoC96QX0bp9snFULux7Bv2Ku1jYOwOUaZUtx4V57/vpR/ugjJv8CTePFnWm4tfiF65
c5sqyJQkGrvhP+BudcLwTgte/BJYut0uTeUenoEU0qLHLCryw465gIeJQbFlr+ZCqJ+1ONhciUk8
XYAndvKEPRNoJcRTwe8evQQqgxMgET1q9bhaivcQGAj93kWKDezNNQVoROvzk0J/F2sb1VMTp/Aq
vB72Pv/9BML9F85xK9yHiqgcT2Yy/nhQO4BYRuoBDxo0Amppbo5iGG1v1m/0Mv/MPR6c5NYLnv+B
hlWpt9k/GtgLiHoBkn0GxmbWV5LxrdeREFqcrhGO3MTnQZTaXm6lN6vxsxXrWIU72Pd5bHo7bLtx
x9Us8rOdvBH8YSD8+61r55WyaUBP4bu02Yh8K9/Fk7L25ngDAyZpQp4jhPKgGA/vw9ueeC+859HR
JXHxsFeQCulnYtjz013ePWAKRXPbcDt0JN1vbZPsggjCDg8ymkOCSSwQ26dTGbfu1P+aUfi7Gfbj
eeCTdEJd61H69LxhDP0HOknZQ+P0XcwEoQDdF9CcxyeNaW7WtRAiHqJwqLStK8T7q9xu8orNzee5
/DqCRkgpneDiPyo/btEjMKyebPeBNkelDqzyxAXdKD9J0lUDFbOEcCDKaKqsby5sElET00bp5Jhl
PKYeWGgVnBUz+DrL/kRVwOY9AWIlVZOEHWE39Q6VBbkSUkqW2WQcj3ytxA3nrEjihAnlW+8hIaCj
TniM9oUuNvOqV1KVQxodbaBOTD75C5dXALie3xPDPtprY9boYrafqFti7oLqL7MjMg/Dz9Vo2/CD
kGfSIacA8zvKiOdZF3RZdgQcEVps4EF8xlivcrD/habx7qNfFG0/SlpaLAJLDJRji0fophw1uc3Q
jsjE/w/y0UM54JTmy4oYhA6xKJ5Yy/9x/zgPeNrDW/D/vFtYzHVq5fUvl+OYslUE/2oWGkqFfJwk
hq73fwsvPQMEIEoTNFzlSiFwet7c+4hFzNqk61O5EAB9V/B/zfZR7YaGCyBnBJgOjfD/OSy6M5M8
hIujhqt9Y+uqcHkl3Yk1srDyUa9n0lLhBhUauYQm7vqSijvVrxOcKCL2vagZ8TuOHo7qNbYhc4K9
1xknQQWC1ylhZf3yrJnAQTInV2hF2LWem5J/hDi+vi8nRffJFDgx3qOnut280/wraJwfHOqSo7y8
28MaNRRBHExIL2cjcVbNyjbpOe6vgS+Zf4x0ClfAmPm3TMnU2wg4vd4ZlUerhz2YBTK2y8pgFzy0
8C7ekNENmXGlDAO257vvIw2rChUQI00XSTVHjr/hl3GiRXvVvBGQPzv8/I06SP7JW1Ev7683Dxdz
9SpQsIiVsoAMDM6GHUZWzzidCuuDCGb9JwrrzSOZbS0XNhW8yn1bVXGTJoOqTf56gj+w9H/tQivM
dgtQdetUcuwWTYx39Pjqvdjxa9IxpbfvdNc9J9z7If2uxE9uHX6r445tkLZ1D2Azu92rlimNNtOy
CER6SbvIW65Oov11KrtklsyUsfy3LzLqkzZAiwsl62cy6VGZKtJ2ah90w2g970CNSbVh3o0AUvJc
6csDB1X0ErFB8AQOCtQvuveF3pf+CfGMNN/NVjm/SnktOoc1TzFIX1mtlof+kiVSGEtZ9+FOKrCi
uJ7kIyoG6omN2WxoQa0e4PLJuKWAdU+3AZWuVzC8lVy9eMjzWSjhjB1FN9zYDtCpEua39O1p4oJJ
s4Xt2Bvkq+Gg7yQ8nV3vVdiPJdHbIUj1MfELYYkAD1pVvHKIibRSPZzI/Ieyx2nGF3FoCrtWuVcN
dMmcZb/yv1pSxM1Ssk9pK3vTv1Astl8OdN471bjh3N879LZBVmGinkTJGNUDDxEFZjQS4bsDGfXm
irikXG8h9lbzG37S2YD3wboQ/gL3TB+fcYmWz8f5D7cJqaHJuzb9p1CsTi30C6wqdz9loVEhxSuC
1AxTVjfeqdjp/K074AmxkBb5jxs9U8F3nf+t2ILQt/AYG1szu03fpvHPY2gb0MzcLaVNlVhZnA7s
1r/56Am8AAzYjhN3brvYuGaXxb0odzVdyES5xGEi+Qo8oSYXN2FXZmxfAT4uQZQBbNANbkId1npL
aplONil2aYnaE6wDv+pLI3ALjkKREvFhcnBNbrBRGKBQXhGVRBPNrlOpuFV33UV+60+/7ZS33ajS
qJ8yUN6LF38v7eQ3k/Zoaa3gbK5OJeOfUGh6f/b340I64iC5s04pAeaYqmwkltwuXWvlx8XqY27C
Gmw/hnLPg+qo83egpcRBesOxKQEdcPu4WZkzUvLJ5oCCyAdXFUl87ykAqJ4nAKmx1ZUizHBlk3Pe
klC+YL8R1tdKg1XWOpKqtCuhczwtT0sn8IRmVY0SrzaJc6AWpOsutboK+WLALEv/OGzco3BkvLLx
iBJ0klMFmK40lxzOzPHpXIkcRsr3VtyXT4bchpextuDlKsutinv8OF0/1jsl4B4iU/B+3ArATMlG
NbSbZSQ9VbZTs5OdJCfkGnY64FiEFLrXn+JAtXqFte6B+qeDOzwQfbCv5DmhS3YXIRs8B8iJFSx2
k2cKNzOv+7BiaN2cDnQ0OMQMY+uBJBk4a3NzbDzoe8cGUYEkJXn5vc3tJUovVNv5QgVKD4475mAf
xQeV4v/j0WtViPYw5Hv/8uyl+D8TklU48YqghxeWYyzQEaFtY5mmO4woArPqVHEJj9oWWtZdSH0c
NF8YfcBvrri9j6H3yHjHjpTU/boIKJ/wcSoGWbzt6xNBTW6KVspYD6hsFAKlTO9jC5wQ6gNX5rZn
d2N7hpB62RbzsRL4ENJybk/JZ55oVUxFjaPKf2UTfqjELkZNAhI6o6X4RfU1RfO8ZDpXGUb9AAGA
YJ4RCCn6P4WTea3cAYldFILtXVCUbqa2mPzqRKrenxvLSG7IZh0LwisVzdCmpx70gd0xpSbHYY93
RiD+EWgAR3JZWa5wCj+1FZ+phU2SCu/4odniJIulYnyzB1dcAVw+OvYVYPnZLrfcFy0qZI+06ocl
arwEyA7prS7vLK0Umn0MyH0Mj7auTQK5IGvm8LrtrGuhDIlizhcJaU/6gQo3X5UTMw2oV++pUp6e
K0PN5tQLP1IFZ9lAKQtFMUr3y1zjNhXQMHMBBysEXOmlzSDw+w8MEJKPebHYqj2rAcvcEynlfYTU
21tVH6M6uVMk3lXzYCXXSi/PbC5y7T8/Zl33myBJR7I/5lBmSq8ex/u7cbZ1MbSAMloT6MSQD/w3
KF+/G35yMFAPgHLlz6/6J0z9mP9U0SwT4zWvfOzxRCA+VmRStB08hlHIKfy2j0V1CFrSzMKM+ChT
xA7mms+/nmymNHdrEF3RYoZyFueCcPrateJn/SVUzjj9GE3FCqU9/D9wqMvgDFxReFT32ZfB88eJ
Ut1zgKamco/+PoY7f3EYGQe8RxlmFCrXk0GkdUpx6WmxgTi3Wz9/gibdFPfFZQ1am0054QC2Q7pu
LI1jq5LyySaeYJ6dOtZwkXnkr/tMMyKN7i5U62jskTZSE/DVvRJef3oawVVLdJ9gKWNGLN7ggMP8
WCboPNbgHkZjg2iK5tTpccJJpZVwU3dks0PRcaxAZa1f09MCjFiIoFglErOwHG6tUAyrv9eLlc/K
ENjETkPSYCws/Wua5U8MCyGR/MXrOC3uSLXqhsW2gQJ7Fc2kiPAMAbIBNy16343pb0ye3eVphV5O
rz8wyWX9f8m/nk3Aabmjd4vvW0PJLSHBPHE9EYYndPLnXWIoD6KKjuAIpVCtvRpv4tdGpMf+Czpa
+SAOfi3tDZ9Vcxr4ZwToJ1eV1fG07PX8VCsnWUSyyrJduJvCavNWLPIy9x3AATPuK8hcU+TVy+uj
hEosW7Nwg3vN24FxRvoSYLxBzqgziXOGAb1FI9I+gPz1L0OBU4JpZz1lxNQ9MS5pjMCfuD3RrRBU
2UzGzGaVGxEk3QgjIfAC/2tubg9v+76XAgY3ki/nlRuRjm1+nMPnZQEMbCIMK9vT7Iy33BpyWD4b
cuhXAE/jNPpTWJhuiXSXd3QVuxmjXOAtIm1rnvOOZeAA5j1/6I/BcsS70aLC7VqFJwog76rSbR2i
kiDfFDb+TGtno5fEP98AsYrzP4UVZC0xWB6+40F6RRqRhKEGLF0GU9b/lXomNoM+ljL0YsfKlR9x
dBGNn5jkWifK8oGVklXmxh0TN0tVesOjEQLEFn9NOMQXexizvwTz8Zn/Oap4nsdejGRxMYCc0v2p
HDIcm0/9+w5m59ahOBv4IFTMGoDeok/qlBl24cL+5HqeWfDQ9WdyPJxMSnLE8icRbHQ7D1z/UV83
FMQLKw3jgsNKGBpswef5+SYsi/KKRhrwE7VfkTG++88COPD232WA5cMaTUtTHdQMaIlZFZlqwGf0
CXqRxtxh/r8ZvtSxT0enG99VbjXIO/e7+LurBVamBOXZtwVcLwCTcVQSrHZIyC389og1N67HrnCl
Gs4FxckdKOmyeqK9nShbXOaqPQd+X4Q37jzo2t8HDpBuroAb+oNRyg6qBLOxijDOSCd1dfBqU4CZ
7Cdi1iVaj2ojM5YOtGAPuaRETdGmf1drhng+UHYuTClUY6vLa9BGf3JMU/ULk+j3kJsGLZsr4Asj
BvcN76wYgPMNxuOZ7m3bfgKP6Gv+ttoyKAcCqRBxNjtXnDv/qpiHduCMbd58cE31iMV1r2dzT05w
eSFEm1ueg8GERkPazKlH1g2KHW90zk+9nrrd6ynKIJuWKZyaGh6VKFAVX0nPap88QPP4NP5b+azu
5r9d1EbPm5R+CQ9a9ffxyTMhnvlJdKi86xxLYeJXzHE5NRngjQG55YCxJhdvdxQfIWo/9dBykF2P
9K4rdnVoTMHF3q5MSj8YfNm8Rz9fjdbz+2g1Eoa/UTm/I4lR18rZWRfFsdVgHM67PTla3hqpRhxw
PHanKlR9H0CRII6rhQaWEvsS2bKPkoxrLMNu2M0U8QuISMmwiTIYIj0cZZFjcCwi4MrNVqjffW18
snoDDAh5SuAyV/X8CfUGoECfmiELRMi84o7sUg/8fUx/TITgDAVELHUqwsuuVmVf2jNOXN9x/Lmo
wom4NmV8fUwk9Qq92IHjyjsUR5Dh16BCfFZ4pCWMg/aCWXsIhpFvlM0Px28Mizw9beMl8FTa2Gr4
KIrroGhdL+5QtodpZdYspdqjHglIpA/wnNa6fjwhUYG9/CWYm9b1gzcP25bCEL2kDiy346F1H/ux
beJxMvrT0coPNJHV9T1bikNRNeBiSDumFtu8xtiAjFeGROereCp+9YjAAgAzK2AGCYi3aGunz03f
1JBF04So9hWZVvlYTXJ4H4PtmnVwbGHDG8jHQARMb+Nn7NH1fLV7tIrfGE8WOaZeZ7niXT65sjWf
yCaCtDSFc8YxeBXCUU6mI3c2tfA7Z8pzOAphjFJKov2zoC8VzVcuBRkG4Fk4SS3zYnzO2kdXdZOm
nVqQz5oooun6VAG2TC/rKdeE/1sF+Px9O8W7+aqV0ysSwyJTMAT8e0F9uuxppaUeHDgacOVRlsZB
qe7b9LeaBDn563hUAm1+BST3I7gc4tL/7laHaDTGigNxx2m/yRR+GcZajx6YSV1DlMC2reGpFvKG
eQ0j5QmdQbNFax/RCFURYxUaM87u27mi6zcVVghfzeDfu9bCx8aKxSt9W84cOa2J4WiyIcNirL9E
9kFJORuYVdaEZciabh7lvaT15uAuX+D+zfEIR28F7lI5gped3rBdTriAlYVvc4EnjzTaFBTXxrqW
kXD6CcrNmOd3RoH3WF7Wu6VVQSCMoNWN+YfYY7sECBvmIOTdOrjn9L0ojMI1QAp/kq/d76qBdy4k
MFsvhmKbgHy8fvUw/PuC7q/IlDNgcqryrYdUzKq+mYLT8+w6fqu8VBLc/xCJJR6gPWxQCilw3lgQ
NfjI8ejsxnX+h3NAxzQxJeSUNcZsZGWrpfiqJ7pAnmCRgA4CTiSuEOdJKq+/lGKXFTX3t0jm+ueX
Lbf2DJWHTxRjjAxoHOFiyGP55+qBiRKsfE4/N0J/d6eH1QsUlFJHyaH7eEip5j9Hk1myljXczbEa
dLRuQhhh4AkVKIQh/FQKRAW93wxXdVyAGqki73gaV+kSBwmBNGfncVls/G8umpv6W2BTniH5Lelp
7a0yBf6oW6fBDtCp1eZGfJwZbn0QNyj9A/BHQWdDwS8HYXbHMZWqBksK7p0KcH10gO4FKfoHtJ6h
uxYsi3bVWNSzdCASSZGp1/l7kAjRXYwF0jjpdE2KxGAC7DkfV94LlAsYreSUbTX5s65JdnaUzIg2
mYVg1MtDti6s8+NNP9oP5SoUDGIZlTBT91g1dBYx8dwDWf1dFnW6VD3uESIvM5AVQIvD2UYJt4l3
Rt0DkuTJFjnpgwD7hKRJxcO9QCgZj1jm4BJSrRrtJ+IoB5kB94SXaQQbHY3CQRxZ+Q7CT4l15WpD
Gfaq2e/veYpXDARvUW5HqK5WarNe2wPVUdTa8MdUus5b4Tq7PkCXX+MLgTtGxpq0BG+1XGu3vpep
m1wVjIuCTaV5VCouFgPNblvkmDzIll/6afYFUD4adfhD+INbXOAgTaWL1m+QWh+r+aIyrhGq0Xph
hVS+u0D6rri/841BX1WRpOFmbKAQWFML+PWeo+7ZYnHqzKkdOsIbZixlSV4Ar8II/3W44coMEk60
tCog16SrgmtJmHphxu5B+kgfZo/kjgPf02ke+EgQ3cCIr8DROht1PZ5tMJ3C25p2gxQnrS3ingPK
eAVfd8/qojGFYjNC054MumGx7e4x9YlhNZp/Bg35qHlrrxrBhom2Pyrv1/cjfC1WGiI5cQr0HyVg
qJ20C8BbT4wWneU2WHCt1CxT7QTNhqmEGy6Hw+XUORJEQYIsy2k48YAZu2v5CNuKQM1FPlSY89X9
7JM12zOrHyXEiCBJsXbKglFhxIPKSZ6pqAQK3lgaXxRsbknCGp5+ZLqT+69chzBcHTyR/7g83339
1xFDCh48GFZy/QYd7GTO3FMClZF8KMWqs+XNLV9m2Z+zSUf8auK/EmC1ZK1qyUAAQ2fwu7kAwfpW
4Omw2nbM57vY9j1uEIaeAxIr3ISHY3VyUVDBAX3/PHio1xzF74QQi455Aw0kraYKk8ALWm13OwDj
KyjfE9A7K+t8LlmlNbOe/KqMq15dDAbruY1IUuSnXtUmXXXut5ZudyXi9mPsXNTRLBfLKWCZmgMn
jUqFOEDZUG0G04taOSzF6c4BROKBvzKIFn63EIcH/pQETLfnY9Yv+UOxlysXJf9lUTckLk/46brh
fVQhDeZxjDQKpjd9Sud1sinGdqwwO4pT5wLJ4UsQ33cNlRbAdEHoZGWogj27fzJ94M/Y9kvkelEU
sgIOpfO7/ctmsAX6w8U9vzZkLE1T2DKkmx9dfzaSNFxJ5wCA9oeA4In5eHtVFZvvA8y+/Bp5oe2Z
zy79i6F5prr7RuDXO613lA9QvR3NgXFDNMtxYdgSzlRPMzkc9akNYkqOPABNhUDsEvSbsnJeoZAk
RR02rcLvUqg5G+pnoBh/VgFuBlepWM1VhfKl1G5Refe2eZIp2Eubebt3PfoizVJ4nZJKWZp5AwC/
kbR6PPkwa7dzjwhAa4C+SgJPPyv2WdDmssPNT0/u14U8eCYCNVzt3khuvq9cJAC8lZPSMQ2QdKGa
sdHjNJk1dGc1gyO+xj/gd2Bx3jjL+UnnMB2OdhFIw4igy5gReS0hEv0JShm4d+x2qB0zvEt0LVjf
ayJ0vTg3aEtREosmyCs3Ah2DKoAdSaPH/gy+HY1evbJvdwICQYtPzHYUHC9C0+UEkk/az7Q8WfwH
GwCP6v+HRuID2tSgwo2PA2RcL+0DbJ2lMNpLytfZHxpwDunhVKutG79suN+tdZ1lTTC1/dpmLDML
kEOWZBEbVaehMVShkKfjfFu95rbIXXB+t70KRiradKlqPbQeupyRxo18hnA9CxCVM8buv6BKWsI/
T8b2DwNbGz5h6V8H1A/AaQssgb1yux9tOh6ydi4rIpGuhFYqL+Bkb3ywo9BNlIonO8xJjvH0At8I
DCjH9ToNCib1tkpx4CVpQt3kHT0pJqigecw8jtwpC9IWPgsHUlMEpdv9KAJt2wzq92QV7Zy10WGr
H9/qfT7l/McJ2cb6ady9jR/GAigp/noCTnGJUOMy1WpbinYnqdu4oVtsZFSau2NstThst7GiEOGp
za8yINZfQfcJ8Mv7iI4T1rBbl8RY2xjrc+xin7sNAPwYoP0x1hbDv822t0erUvgZaQnqxXUzVfVO
vfJchpMKMcT0IejQIey8+tgaApR/pR+4KGtjAoehNuQVoJgLXEvdgieZ0vcBgHT7XvO7P2oWmLIY
X4Fl9XRscPEn75QugYSbVfzsZiy1MDvOZGEaWFSmxZn7mOIvXEgjvJI0nqIHEMDy6Q8iEZRwTNhN
qI5Eha/HIMTnb7YBuD0aIh+qoPMjfPC72xhgz50SshGUJGksVWEa7DQv1UlaYTbAyAlV76WGCfXF
hLX8s0abIWPww3iWAyhOCMkE4Zj/kENbryjHs4OXGwenVVa+l1VtTS6azY7/xS/92RpoH5+JRh3f
HdhTSO3c3dnj/iP9IcB65qh0rHwbZcjW86a0NIxWGVAVFgkSvxvfYbVsPZTL1bf2ZZ3sn3KKbjmS
qLvZv5uhmUA4JY9YbSBUXtab1NcHxABCIqsxMk6/vYIwH7jz/L+5cvbIqmBrWGehggGbxRu47J75
JhQlM7b+Ckb+0da6p+Ig88lQITUI9M8KaQqleInCqqQ7RbsWdGaupLpETkJ654jhDTaWPBR8BMQX
TjILl8bJ5BDP5/1f+sPCg+BuFQUP3hfXrZ1HeX2bQtIOrDI6FiKNfhkduiMd5wYg9GE2VlWOHDJD
VtfEWBExdbS2NazWvfFFTWq/dgQsgsZVy8Cow+scXswBAZaJSbz7iTge5PX8Vgzz1M6s+w1v3kjw
ie1o3EllZR3qpuGQBuuyEriUrOARqt1te6UnCBQCPxo+9Yv01Z77HQ2qmHPHoi/qwhnjrrg3Oyar
UcmRBX4Ye/MmXKKVjVYivy5ha6NDFsL6QkXftgO6dPZJcJaRf1Tl08+yP7VkVXrhMnrNK3n2sx5H
EPjizEnTLfVe/hQSdR9SgtmEFpyvRLS4bizDNAUURgaxTH7Ijx003+7iE5Lg0Vt9e63WguHuYiHn
Mx54Ved1ovQGIITejbDNCI4QFOSm8paWTE1V/EOwSr5Zi0xIdp+SxFW5aMfQ8R8NpPw+MyXjHv/z
UAYXgP+9zLVgErlD+PBuLQXsM8QLgJemGjdXM1mD4as+vbiR08A3RX0tPSGoGMPDfa9veFLT0wWS
aU3JIHgAEoIFzbMTEK0RcKUUOWk38TQUM91+0ce+R6IF4kN/3jnS5v84ambGv/uVFKn86x/ysgl4
cARhM/4yAh0rXYfWqYvpjMPswDH8je08LvDqjEsfp+6b0NAPzgPhO6nezMiG8tvyCGIRwHxg5j0I
w68mdXDZgP5NvVOWdPX+zohyjwR81pnmEDwhWUF9OUIZKIT0GlG5Rte2KUt+EF7jrQQgJkrAV4Qr
9e6HfUHTQm1bJGebKlqp2SD1J3POXF4HwIWQiAKmXBwY1sdxm8mHoWkwpBBjd/8fCMzjlkZdETwd
uED2Js36+faEx1IvNpJ33Tv/A0JIxpiAwFluUIrdIv96/U0QkWGTCGOYkAcIgLuQ2xQL5PnG4rTk
TYNmJjGn3EeLUoyON6FDFeQ9wc6WloyN6UHlx7q2rKhDHuWrnOOZBhMa70q6w3+bTA7Iep5QBVAx
jJUb3Plvpdd8P20YsCly/hRNSrbxymugrUcmG5+96oTh4oT6RvGRRaMj/yMEfosGrW8KpuP4aVwe
FfcAvIjv8ER5wKxA41FAmLlhzrYe223bgVbXCtqG4k2qPTFE91WOmkR2Vcm1r0sdDLYCc8griFvO
QgqkctRS3kW53s8/KsFsmrvmoPNHoi+AkV2PdFv9W6U7UDoLHsTnl7qo4a2ez+68MQbXfZEsfUFB
4/QdmbRf6YTycLuG6vk+ZLQzfajvR7CwY73War+5yWTdXz6KtxvwRB6cQh69rV293aKUfmjtpcXj
pMnHfNjVTRlr9shDo2maylBOFZ8tRWwH2y1sv1Wj475clHT/0FfQDIKsZADr92/TW52/86FnRUUu
qla3Voc9YseZam2hTItAKA09+C8cYcC/JvL3j57pQLNIdxF0Ya+EGLa6TELJBLDbcK3KxKf4cLtA
udep2b7zBVT0vaaKyZE6bOIV9lIUpjPAd7J9xrib5cy0VFCbjWtoa97s0EWgPCsVpEKZTIaoJi0m
3YFLVxIeUnllMb69/9Sxca9NH+DrXXiVSd2b6E3R+S7O8y9ek4g5AvVKbNAk0LXx0pLwdbo/Wz8s
I7BOnxwH+7ssTHckCewzj9FOTZj/8t4eH8jEHX8cU4nrEplmxp7STsZE0kSQOLzofeXUsVy985Ig
ULOMUl0qwbJOoUp4PsiYRJABPX6wG8CSLGB+SiyctH6YmrssLhYo3c/EGE+LuXsQE9y/dQFUMt9R
9izQwpDFEZ7rZuK539ZHNION+LfyMBwsSYxeed86J7AMLRmgu1Vr+/g2qSEMAVJvPQzygoiEcyGE
DWutuQWzoXM9DUIXiS2iWCg/OHVCvl+Gpr4Mbd1G5HOP7ZtRaqEJ41MAEbU8xUkxdj5mnLTw8Hi9
HvWTztPXmiF1X3baqlK6rHrfaq8VL8CTgQG88+xG0c8SP7vEzUthlHyhKokf5p/c3pWg7JX/Sj1p
3NrmLSB1MtO9lonYeJComVgCjEWsScihOerwQIfr8W5vDiEAyhJZPIC2G7x56MiYxwp8osHni8NQ
G2O9cfTzLJl6ibPjyTDo81l3iQUqHD43THThfM4fnU3I6/N1uQr2dKxXqkNkda7MzvlcUAKPqbmC
tlrAv2pfkaRRVzQ0YPcuiXIA0ayMmVlWUpRWVkqO9h4H5VonwyuL2tInlaAqWL4+1c8z/B3c//sa
n9vgRAQQkrS1SDbQxre4gRfVJSL1PR+ir2tfEeua/KnbHIJuyEhg8sf9ay1zApgbAom8jNBMYVZP
a9S2fB8Vk+3I+/zlb1Hp3l0ZEySBKJ3FEZc9sTYrPs/0NgFXeqe/XetAJ44wcWhyaVBhdqvx3IIe
64zlBiydWpvzoyxzhJ14G3EsTUuEoqNxNo+I70GPVcADW5OT5mJSqI/2xVeCs9rwWoJas044wsgX
R18Ml6TgGA8fcpOA5PA4v7T7T8dYdyo1jaRPeykm0V0y5Xcd9jm9HEgs9qRRYTay500+H2taJGTe
oVqtS3VMW9HMcJfGnTT/Nh2DT2q7OT7tNu+sfash52bxoVd78LmIWAoi6CGBOiX6852o4mXtIUcm
heCi2Qh/G6RhbfZuNVEg4hL086EfFIvK0YGMyHZczG2SSSeXTtLN5AAGaVHEeYJJAA2l15F+nMI+
A69YYBlqTo0hMJVxwS9a3qdwer4LumOBh37ubNzmcDLq54+yjNl2W9LBi36GHzpzG+FfGXsJQc8g
MqjXYAG+Ptm75uZ2toFbRmIxbCsW7R3cF4ntfHz0V7wC+c270Vd6Q0ceExvOUt8jSLYfpOMfZtPh
7wAF0CsCMYF8QtzuYKSvfC/IOI4nV3qUZIT9uvw393pxKKyvHXwcjOrESYygd69tzjqBqPe8qP9K
k3Xwich5zT22Z+VGAL7ZsiohB38OT1P386IHASGzICGgalps+lf4rWL/ppNNKZFSFvJFw66rL4zM
YfQWMFG7onx9mHv+BHOY8AckPy0KVLDo7cUkAEqgZ0BHc+3yfx1ti+FRJS0W8hWHeq816GB6gFDa
cIEiTiGH1iO9CMcE3itv6A9OBx9BHjqe4EfqRFMjaaOBNLf6OoHs1YCMmsJ0jzWkFxeDXcdf+ESA
QpY6wVBX5En8GRIrLu61Z9036fq492RgSssRd54R2x3hIzhyl6jXTw2eqpchT6+2rO8W/e4j44KH
EKhUlewnVW4jAhX2oolCZUduaamDHNdnKHVtpQwb6W80RZvDPHU+2491BxsN/HmTpmnHfSwAlawe
CHrtTXpdAPtOx5Ab9vWpZao9jxxSVDjfzvHufhEeVMJZs8XQeUR93i1Taws0TMw2OPCXeRVwAFah
/PeCzO/A5Ol8AAlUv3NJHPkuLgA05hRFPPM4dp4GcTt7GKi/DtHUvFjsyAbFaYkq5LXvNyY5jWZt
RAqVP+bAN2WrWMRAFqvfJhe+zBLeoIo64TaiAmyuqJfClMCARXHMFauWSX7wsdZxbyFJY9HEA5cj
KK3WcDvLeBKxJ4w0CRdgYZIN/V5k3khMrfjb74DT4FDwhDL/J4ukgx2nCUPRw4cOtEHRayeMhHe2
sLvpBXUAyk/o5rcWeKbcpfyf2/VRLErXOQwL0ZkgqcCoST9YUdCrC8wH3WusVW5QANUxLcMQ2RuV
c6kCT7KQLGJjXjI/kFnPlUCxoNO+ONKDTdqFV3Mb+nyUOxHrtdFWJOo8zdFn2pB4FRUT3Aq868Gq
B4ri3E69A5CJT51DDTaTUQKHALAa2kq7SB/FYjw14b1a3+SOVvytnzufP5IqlxCBzpOPQZNPUMNx
xhzATU5DeOjbACrOqImYLF1uds/lJjfQBrplvi8FGCMDwQJLQuqP7RAYzJrjXGOuNGy18+At98g3
2aRBqluiV3QUH8D99FoU8z1ndg9PAl+PiO2LS5zarj+CNxFTqzpyowiivUpWS3AJ2T6fySUiErC2
VBd+nUUgUHHFnZ2R6ijcpZGoLa971hlowQe8r8tOf1hO81cjMPCaWWQNz8evP1LQa0fXyqfo1t1l
DRsp9wz1ZLjn3YewUSyC2447oYEYS130ulZttgloixBcpM6WQsbGzNQrnAKJ9NN2K5nb6plnaKiZ
ug9Hp8cc/iYCojOr6lpsbMIgexgKCQ/7L9EabWfDyXFn8c0JxcKc/Lu/CibuKxWwwsz1EHqNbiL5
JGJrKOJ+g3tZzB/YXSrRU0v2sHPHzwGtfJwrsKUtgwgUECrSAzzyTVoKrxtBQmR6/481nR062r4y
r54z5C6jXIi0DJu4txKLNG+ro+Ze2K9N5J6uSEzOhioRLbFwTJA1pn8QpbDsaiQ1vFeriXcYfuHB
+KQEZnTpeR2j6CefnPSvoScQsU0HdfmnZ7YlhFBts1yZwBu/wWHfaNFH5srIQCInWsFbj5vHDZM5
t+LNVc8UZw9dJE7K7Rt77FoSEvfUlf/m2uzud3tCkkYDsqjzwvgRB2LifHUsnubaLAGU4g8TYFpD
qvFoxkhHfbhl1v0bTjYTdOKdZOY9mt0SPHmPtsFkLeD5jz5b6m+fJgTC2REPK8c4UcrTnx5S5w+9
oRFMI8oU/suONuj9xamqGfJZsw5aM5xaXA5I3HNSpYjBerLxt+cfivWSinPdB0bdx8or8/PiA1hz
HHieUo7Loe0jqSXh3+tD6HpfMzw4TBGMKp0l24tmXHEv/efJeYytKM2sLXYgN9AW4FvbQsdc6OZI
np1+mgGgukixTN90KMVTa23WJNwhKDj5O+HEXo6QxrB0HEjekwLzzmJEgfD6PbBgJMfIJhj/yWVl
2dcgAX+bZe06E5feUtHSbc5FRdKlaKnkXZbeUxjtevbSOL7XGK5MBcirmS3HgC6aNU+pC5Z1ZIB2
r4SuslEQJutSqUAu4ttDAH4i8C8MxjD4dNAXLl5fU8+jxAPQEgiEq459Hn049jZ4Bldd4r9V0YQW
84CqPZHVvtLX8MvcB4EMVi4cHvUhOI9kciNvWU03QKQs57L68PHAz9copSnH65aDcO6IiO+S4uxU
oRRuZUfGlxGTkazB9ZJ4ggjoLHXpn0E/KTyKPClO0q+fme8/WkbxmmgldDPXigrFloXY1Lt2p2SV
mF0ycbqhfrMdPo8zxf2LFUet2lmy9D8btSH1R70seQNDgLE94pajyy5n+z6Vlx8+PqClkSltxwE/
cQP7T20wvkWpaIez13ftWQJpGwXe8TwyRmVnXjay5H5MdflKnfcbhpYR7ZPLr7aD4Ww3T7CCG7QD
qCFzvOT4nXI5xHvI/MO0FsSCPNB1xLHNaqO8FErh9GWE2ZHuws0lK9mjtMYzR14tHRYFfJZr90u3
jh9c9Na2r/fvchWGFcvD3W6yxfvIjFm1BMSHwuDluk+THDrNU/T+b4uAPmbWilzo2PtYJ5zLm1eZ
vEWLo4/C0lX6UQCRqOSxr7iTJcCnzD673qu/xy9fGTqYPBBmjCUgQGQ7pWyddY9pGriLHKvU/+YO
8ZbSpFDPHTyTjLvcEWwI6t5ldhSSQgjZKNww1e5pOLzcjDwQLwG1jHpgQQ3BP2nr43dF8nlpBeJE
t5/aVdOVEBhX5Qes5HLbTHKBh5Jgbg/msH+v2vkMD3RnurVdFjnQ2+OynE9JidUcjPGSuNGfe7IT
B7r8Bb3QUyF04ah3nH4VqCQ4qmWsjUY8M9nt1/hdF2ZdQqIgpwFKaDzCTHfrPdsH7X9v2YOwpmq7
k3ftouA3KFqOoiPmurFfipABGEdjxgNZn49Ipz3UXi1BRDcY/Y6W+X26ihsbkIyIx1zalKSLNkeM
bNFe9kXyV/JURtAT5ovUnNy+2gx5PmOVARNZ30+dhTKmZlwaoFJI34ORzj422y77C6EewkCj4x3X
VSoPNgu1cVBqRETFHRq24Jtomw4OonwWE9r6e4oDEBIcrgkDC2g7QOrMdAza0y7BCcioFVASb+5D
WBsA8a0OnppzEfszUHuHpHTyDAQu1nGZBfKPBaZwcF5q6gJMHnexN97L+sW67KIVtzJDBFW0Nmob
T2axya2S9dmkVRJct5EbH/0IfdqrlB/dcL4Mil2f8QRrpYmDSpEMDmvwUGL8Nt2ExkhsubRisflf
22ihHyh9keuaCFvmCI54zHLaGNdW/CfmPdxeenvBOc/3TmT1rorGKt2TxDLP3xJly6L1rfI8E1nG
wCFhZvEleiR/LDvQA9NKe+o61YkGdtZbWlinhHb3CqTc+G6ZrSwuR7OryQqh/ADiFbYA8lsCyeMq
bv+qTJbTF+wrq55Xyv/kOLrYA87mCV99g1h2IrGbzwzRQPF3CZQMeSVbZlRyTn+72LELX/l1oPOB
u7s8bz9ZQNeeG5mQOSnKitOxG0bQwG35TL/6X/xikRJs0st/Usbf83eWSU+xAdVfTGkLnsnLY2Sl
ymJSN6toh8cetY/UwJ24+5brWPOfkxwsi3aBRzh91PmWI8SDZFduAO2Mz5lH2ISqbuLt1dmYCXSg
jrjW5t93ms9PJMEhCMuWUjdYBIDrwTMfbb0mnzmPDmRyzya9JvOX3ONQMO6MHdBMLFcNSs4DiNx7
wX9Kv9BTN7I9dkPlOqMqww8Nlj37FR/6wMIkKdlBle+Cu816H/jtpABsP9nBtuET9bKPYnWDRXVg
C3s/JzgZGyb5jFjiRdra09fvTUQG+fq6hda5qtFvYpAD9VPX2IA9f13guiSVf3sowYTUc2lVTviQ
MnMngm16ipW1Zh3sVOY2GjKx0FL4SjngWD4Gk78o+YhzdwH0ifYukNXvi7UamwvV/be4uvn4DOSP
ocybksrQ4sQm6O19A0HTy+0g3qo9yEtaedUP2wcnkOU1J2FKKmL1oEgbSpIf9uPHM7zImmvxJPBA
wsZrO82km8O0/BYBfAZSl2XPmCCMHwWmLwHZhVwZWE099A1l8d1b1OugLRFzTV6rkeseMN29G6We
z9A3aQ5zbiK/moz035FTZ8xNshqX/GhdRbhQ6BP70bUtvrFBZR63gX3u/M+7hyw2gvl4qTyaxR6U
M04tVpifjO7IFrL762HkHlPzCURsI6fJGS3AOnzpitSBDtiv2kjkge/FdygL+NucAI7cr7Q8UGDL
qGBsb2tuMrnihSr2fkbYJyzBXbKgTSREjIyF9wAPJ8q6HoZP1H9T030jm8+tCyN0kO/vEdBUjYYJ
T0d2j6WFWKNkeKmzWLotozUcMIhUMxZhhOMl9jKFW23+mRg8MZr1S2nclIj/yNri14BOM1BT0M8S
U9571SHPq1CmnT4oAguP0WKk5lSBSJDIPi6tN1GlpCsidXnxG2tQwUwIn2avZUxx922oAWEAnkwh
H41QkNJoZqfcVS+/UU9SA5W9AuVbgrKKNQtZTiI2k6n9qFKB+M/FxxBm8AOrcqNBLi6XpWG/fmAC
xT9g1SA49YkeiLmpmW70YpB5wSb0Td2rxiFQI8iLRXtP/EIb63RNIKu2Ewhum6Fj69gRkZeIEGri
4jw/4G7Re27bVtE9+L4ayvIS57+3+4WbfdbFEwjMnfGBdZvFhAzyDwyVnf9BNQMjL63kXzOHAzVt
nODoxD5UtpDc3sWc+GquaeO0j9HaK1ZKu/+B/ttX9cv32Bs3I0d6sMOcVmvzppDyL/ySq7agQM0t
gotp0s3b9Oslt3I4CkUWI2ypmX1931boQNSDOAK91+HYyw8hOIU5GZId9NJ2X6g0QV0ck/gAiYJd
PCK8dGiGF8eGFX7KfroiqyhJ1jfb4Jxxf6u/LXB4gnYx1guynAr47+8aTESwqO13WHQgo3nPeCib
sP2aMWT9gqvpdMLBUke9Zz6zMYiJ6couqx7JVQ9aZOzIFc/5NM8enm8e2VQVdqUKuNeSXbg9koyW
8kpXoHjcl8EIVhWwcTqz7dt177plukSXLgtZgJ8xaFFBMNqnF62p43SkpV+53k85Esm7WRFCbdcZ
XH9e8kzjV4C86oMMsYmASd5q9YXBB5rnTazSVovPQh707BgzJK9xD559jcZzh8epCkPZeSxhvN0C
CLHh3epZoY9beDuEfIJmEKCKDwnnSqLpwqCLEbDiz0KjdgoxaNbFiLRzTFmjfSYeyQgud4kO89a9
I/08AP0pvTbOJa6PEH8on75a1g3zL9R52ft/elOpYkf31/eSC1FU3a73jDVabWbibRZndRf1fyEV
g5zV20vpdUZj/PWbw56u7NFYlt1zsl8Xkhp2xc7WXAhQ3hQJY20Lnm3QbY64nysZw12r005x3Wqt
BNv+ZXpHp7sHTm8j2KHHNEepeVeO1UxGd/qYnFcoNbRPXetramkXxixFbo2cPkPF3+bhPIpptW5z
aDFkAPdjR4k023Is/EABgTJbHIxF4bHNOM+gP78Spgx+Ws2WDhtw4fmniQlp0MJTOv8H/EHWeJFX
2iuyues36tXH7IiJBI42hAY+ofsEmyQxmSi5jTKahM4UWVDm7HavxiaoUGH7/72vJ90zD5D8iy99
oBEyLCg/60dgORTOZqH0tYI1fS9REEzzifduwCmQBC5trKialtjDGfTt6bZLoJzX1T5A+7xEVfL+
SiiPjIsO/Swn3vKJwZk6Ri3XoF5kXIKN86pQv4w6YWqwxvpPUHF3LvB6H0iGa98FgdmLRppS6t5o
IrqcBYEi4zFaghkjtYC8FHTDIO8H4U7hI/Wr3RsesLti8OHEy5rarMOxyfEOp0nvTeuzj0LiP8rz
2Rp5ZAdDbUKMmKBVdrRc1b8MoCW75bcl4ApkQPr2cmfTtEIFUx7MIeFq3TENWwee7Uqvho5x9TGe
63rZKpmk+laFBbXIxkIF455QY3SljCabl649wgIFjbZJPHJLR/t5ULo4pyS/N4o5BgNP08fYStwi
WYoKbNPaT5PY95m9qbXnOnjkR6HSyjRKTK8p9lYBv+mSPhATV2WbUz/fEOhJx5JZRDux4azjvJqY
sAEh4h0m2nLmh1ow//iKny8zG1FF+r8X9/wtmAwIeFIZ7GKJozCJsWcUUDO9rOw9iL+cZDDFN5M+
nPOvDwvQvufMp/3LnkTlnKY5vvkV4+/GVa60QkQUBhr9Vz3o1z27Yn/zohPfbiKC/KbdUgn2PSSa
dpXDS7ogW99k83SAS0eojnXfMZHsaoQqG9PoWHFO3vXPh01ojKBnmbJ4gZvgLAgm7h/+WHSwV7hL
eFQm1tJWsSChArQ9wOeULLh03vzE1gOn1YRVRQttuey9RX2qCD5E4Z4mLoQmE8AMtyeB5ItGgJVI
0K09aL51xqq7epAj+fUmK4VTteKnfOQttejsd5KGVLat5lqgaoF186SqpMFxqlLW9zC0foG6IQv0
6R88AhLVY1d0JRNLbdOukjDApo3WMjwqwk9yc/8Y4R84bJL3VMy7DuT2E5peHU9QoO5wYCRLiHnz
Hr0mcr1/+JiJdqXxUR30Itff4CiwwyEhAuh6Ad8tV833zPyaQgBBRAq7iY8lwiyEw73ysHVAAjVE
ni+DwIZ8ARyojrrHv2zxrnTeMcW+9QBN70m4hsWXQP+f05uwuTeNxbxDm16Oi4aYpSPKigiGCXpF
eaioSIfsRbbHmbDb3RwoRno5zwnDuywBI53G756mRRu3eFf+cDR5lIoMuIbg111o7vlAnbLLbU+C
qoqER5NjhuTFKYxoPGsqDGXi+/Eo7h2d8m2KWhODxu5ciD/IONGBNXC3TFkZYVxyOnYukCWaq6Ix
FwFOc4Oob/J2lz28v7lhLMF4HTU8mpp9Vf8njNKo5ncrE/4NkWTabBVcUVJrapbxcQ6MSWP23Sdb
MnKKywCAqbrKlpJBsW6FIjjd5VGL0DNe7gS6dG4cFXekNdWPBG+Yi3woAumc+NA1R5LSbGAOBXwp
2KIQbIJ7R6JIKB9tsarBLCVfcvg2+DMtIRLI25hgEz3W++Z2GkssfaU8CAA2B2E0nH94x1MIYNov
JKEesG+9hkgoUln32Pxj+ZQyZo2JQjJlyXd7/fBJarmsmJDhEB4xZ1Kxw34g/doacD1MfSu17gmI
GkD6ouw2LNGY1sP/1qpxW4Xq+2AHYzwJqENc9Sg8qFE30Qmzjkx19tuHQkKUOlnCXUrs284AMUd7
ZOpQhwQ2tyaqRA+BncDZqpjEPrB3g5UNYCXpHQJUqlVNE1b3H2kF2TakPfUeoF12gtbWKLCCq9V7
JCLlnK7erKzo8U7BpWG7iMhEShEP/yrrDTfpUliSK6zz53AX0u7oYNm737GtGlPgWPdvHNN0NrjX
fB0U9lJJku8s1MJd+qfnZk0MUkTz49Wct+FJGUfikwAmYy/TSN3CMHop31E075gAtuTRtsIBrbDq
VZ70Icmye+jg7Q7Df3B3PbwzKqwlNatohtHjAGPn+9RRO+AUm34riK2u0FambLYPJR+SUsDnslBG
1eWk+CvN3Oysc0hVuCWteinaeABe6vCZ72D3O4JLWje2GQs3YG8EZJzAZFqKQonmvlL1MK5EDGWX
jx0FDXjBppsg2a5SSgQmxYsP4VN/0edlQya+6Yy9vKGWU/affgUdF86XNpgPKXB23qmq9zr+oqMo
siDtm9HxxGynxsM2w/Lhq19X1IMQyWSX84pFLuNaQxGfplSRtjPHbcrv+er50Gj6bft/Hlc5qBwY
oUmQwY+bL7ykfqv0E+QTkPZHCon6M+rrL4On/BSIAw976+rx2etubHm17d1Q949ZRaRq9uVktTmZ
Ze8MZyBqXNA8RES7Ns6qKt1MnPqNi3Gzo4cSt4NbIyO9uGZiuvd+G/i/tFoWDcreWwP2auM3EVpF
x2iHdFLepNIxr7LBeKtVVlvOGuBuG0xEbmlaSplJiZvNzPq9I436FuPC4y/pmwEcnYVyxsCzx3PZ
rPT8RTevUczKkKv3E4di4etexIS90H2ghyDcWjmOM43G8ddYjBQ9sZM34/jOxBeRAfw3cWAgDEqT
+5Qe4Ki2IA16xi8iBhJodQQDYXOgMOFQxhvPQKerFLPllfSLLBZBxA9FVxdTQ9tBu13dkiYDXnvJ
xfDK/vlDNBIUxuDtu+J1+Bu53bP7eHaJsVX1Fm0zqxpZD8VfPa25/Es5TiBTc5Aj/+QlIvWa7zZ8
1sSmZrgoqb+InikDe2XlW1jNL8ATddWqpIZH5jkHlWx8sYm6mGflF8mwW6W935j97jkWpLGXWD/v
zN0x5+O6OrZgyzjn1D8txTQCq2YIMr9Cb2ZMygaSAo/JKC0rsJfpNbG8R9Qth5xqh6IBuWh3uqd5
eG6EZ3+9l9e6xFaBXaGHSAO2b3yXaP5DOhqxgwDYhM+G5PvxTn9s0/SJPFevnnSinpFvw6DII9B9
7wo3DnUKg91aakxkGO0tjjztHv3HQwTM4vs8/Ys0JXUsJTXlYj6awIsDrOR/KZsXDmoVhQvNxWRU
saxhY7MQUyjJ8tdc3Id/ROuHPeDezxl7QKg72fk7bOIQL58J4wBdxO8pr7PgJx/d+sFEDCajDjKT
agb3u9L31R59ag98olTVEYC1fviAZiXe5MKZoMx0HZNFSlXrVFvmNDhKCZurYesAcZwpX+Xmn09V
JXK2mmakZ/NifHDXdoWswjvXZKrWW3mcCqtKvWVEmbqkjVFgCpoN5tOqtYZccpaGJc+c/82Dbmgy
1Or9MQ3/dV1NuJITXmNi6I1iBX28tyqltVCtXsSxrT6h9u+IRmVR4XX0O9r4XW6HSAvuqNLyTK/r
3+gvjWZSYAX62KHKDyUYYsls4pfcmMD6wYSwxWMZhfscJ3GPLQ5EuzFjUShZ3UaPbNu9aiZZGYa4
IvSUEq8AGl4OwcXDz/bhOQhpnbjG9CUaZruLmgeQaJSuwS+9C7gKB/iHnR81dWLl0h3c6Nj6rLte
1lB7FgR1I3eJI5gZ8IZCyqSaAjhrh4KaRTPiG7QhqWmCzSJsvRQO4nBTpg7W8hQoVEY3/OualMOK
9tpxLykkC13TX/CRKHBLiOEiNyhgnNKcpAbGaUJah5Ne4x49eq/UIuU49zN3QwtVX5mc02ik0tCK
6bALeWKMvSFr9+opX1Usw7Flz/jto+Cq4G+cXlTvG96tMXLePFWdmikuYH+mpZXgDiSS85XIdyBo
4Muau2YcBNhvRez0eVymdfPdZ847+1X63DRmx7M10OahwQglugoGUV4Hrqb4v39y7KkQQdXjEYD/
kiA33vWG+5m7tzGGGmYlLy0PZi8ZxDB7ajc1olk7KxtkjIKH/IiJ+QHZVl5JD5lFoiXD6wlYUp1U
5zqIgb1okKiU0VC5XUZOKOnuHTYW9FYgzrhFpz9fAVhrw1FeU86YphDdMuHNCxsj/paYhHNZyuZb
LeS7g8tqPz5gVxKqM67iivh1+I6l5vn3qH2a+eUG3mFzOCkZD0KYJt6D3mqjNXGQwZ78ceGGjccg
cXel8tL8uUkMUon8wVc0oMvVj5Bx3wrByUqxZS+2hYkL5rqWL3JxQv9RaiB7+Uze6zJthhgBhBq4
G7vCpt4f5qgvMt9xLHFx0eRAhAMA+4DiCeP17z/vpENT/jmWZZVxietpeMKGz+P3RM1ioR7BTeLj
YmNGC1Vuj/ousb90C3bleqdndH8v1S2QoAKeF7pwqERPl0tMMpBt7D5MZdn0nLkhVnCA6UbdqoAf
+b8TRoTkKy+Bq/PTrQVL2E4VLMnFGOw8xF6OMLFSbb/9RrsQs1sGY89HZXnqTUU4vu2ssIXTueYu
8mffo0RpL+ahh5BKqY7uriwasVOK3u5XzWqJkYB0s1ufOw3DBpBax9uSvpWvDXFPpUU7dqRca4Ou
3Tay5GfVONfoyP5bqx7t2uHWGNVPL59YtTyGaSFDpjmBhmh80YsSPFwjr1FEGs6Z/Sh8PEtHmrt/
dyz2S5Rr5RkLcy67gHm3DcITcbN/dgrQhgdj5N+Mob850NQwrgziEebOOVxrLbOqGQ42TJwaX8iu
uwl+jc8pJGRoVt88KTsDk4toafPZLxNlSVTwOGEDcytmvtfOTiZT/TEHmEEU5un0lE1Iqjln64HW
RtKEHcHhJH5xgQPRpb0UyfkA0L9Y94oow4HuL7k5RLZpSvT7n9E9VhJ0D93QwGVlUdRUZNS1c/9T
P6dFP8OEnOX2kFqbz4nJOppiA5Wo1orDbhAUZEf8swnS7XFL0WPvsGEiasmlhfocPvbGEkqQHSBA
DHGIuaHM8KXexriiM5opwrqdcvhCRsDtP59Y+G2eFwidY3XFbgHi8F4yLfpJ6Dsl+UJuhrHhUXGk
E51G69iI30vqoVLyasjwnDxUvxOWlc7URo3s/LR6Au8aKcOyy9qYs4v8IqVKLcWzVBsV2X6+GsPq
s4Koku+NB7+kOMSbUzMRhtHYO8YT3o2PfVbPfRwX0cp+NXUyClgi0wht7s/HXbfvrK7+p3h5i7Gg
qvosmTDUnmv/RjUD1TFKfKKKg9V76gH/uFOsdtKwql2r/xH5nc3wDVEv8tytX4Q4rUpmQ9NYQEP/
EN0bxtERzPcRoomp9IQWEboMJs1lXb2UDIxdb3xP19UoVYt9mHqVVF/r55s+siWh8Fgdfk9UzLfp
3ONnlUQXMiFgppLkW0t64+uL6e5v+Xa3U9oCqCooj8j4/r6zuzMKVK+Abfuj49R1Tqw2L11jtdUg
KqB70Owpl8+d/Uy8+8mid+es9zmTB8g996UwB1+alBt59TzCUiuWYhXXnZAIvNUjLk/oZN1DQSZb
Tin3qolYpq3M2MAaWbaia4aVhkcBpPplqHOYMxjSv8RA8kSpajKlXjgVA3qvRdenNsXUWHZMnj9V
ODh0vC415doFckxGavJjAP6OjMVYnbOh5yCDUO4MhhiJVUVqb1CwiC9cUd5pIzkaMJDeYvBeMGoc
/WPQQYZzSB0EHTQESbL8MVqs5PIv8oNLZtzri7zGGeXKIPv+4ZlzFi1WBD9+eZ1UA/oBQL59kzZ8
p88SNsk6Dpa8Kj6H5RPRnvzkV595Xm2KYkWCbNEH/OydGtzUiQvF05QLUrZ4p54iMqrSiFMc8E3n
CFHpeYIoeKCCIreYBUOvRhp0nm1olvm/yzSneRr8No0Lpr8qfxDfONLeaVRCQyMFp05zgIg4JTeS
/RPzf1uF1LvoWhrKawDbXtbonRI2mes7C/wYM3YyvVYy1FzVMCFrCN3Lqlxojl16Gs6alR2+1mIK
4+KhNvVgu6Viduvz7Csdd99zxLiGJDZUFhHgqPs8zBk0PAbjQw0a+ZvDae+w4r9/+PF0diyGtZ7R
vmdYuvCyiMmYYKVNkTIj530KU0saEMZksVYueL7lTw+B2scf7fHCnn8dBg/Q1rLPozyMvDyQi7b2
GfDUf7HCw7DlVH2i7Xp03ZuNDsFlNbG5v5II4Wo9/0/gia1MiJkOl80qV9zc6R1U+XTllwKaxsz1
hqTNdWRJV0xQweJqloYTI8RY7bqFPjMFPzLcFNNEYWGI3d9UNRWTqrnYteSod6hQ1bEd/pCyf/9O
ZWhStqfEgCDkKE6hzAGvRG8NE3OJJYK/WStGOJj8TZ3kqEFujMrvoHMyFviFoPN5NOgpBOmkZa2x
RI4585VDUxrRFVbfGGey5sQKlfB2yCD9LsZk3PwOfNbnZ3oWmt7OcqsLQCg0nnzNNQnBCl0+xJ5V
hUPFRduF+9eKBikI/gT0INRojXy2caZ/TjuuUrF3HseQxCNj0j2UYCLXxTk/pVuzpUabus5ZoaKZ
YBP5p/2ZkDfJmaXnl1zTjQWHXssm/LhuKK9b/3fVHCH2P3LhmpZu2WhsXGs7skwPWxg6oSFCG/ha
UEGkA1pMlyk0DaFD18BLXzktXcDp8um/qyYuIDZbju81vHDgyKg6dT852+yCn4XWhkOtWcG3pSQf
6hhFy1JhGYi1Gj0Md9mvbJH8E+gE6gyLOXwK5v9XP8S6EIM89cAGeUK8MvEnL4VnQM2Jpn6Gp+Av
/ZBRxwjVFDApnyRMXhrP1wptHoj1Q4DDwhbECHTMB+/yEZWHlCiYYjNbROHcybrK9uGsVvMDnZ0v
tww5IQWtH1bhS/Bc0zRQ9ZvctPCoo4j25uUjDRYB14P8Z913m4kKQddOb3Uf7L73iFIK7JOgsKM2
VGdaepBhHarcPXF1U4V0qp1gPBd7+MTz8d4il0QdqHKJ4UZ2+81ooD85A4M0uPb0oPizh8gYZr4R
0DNnGzHVv5jFpAv2W9UGpD0V9g+2GmyMSkPtlYke9Tkek8OZ1vDAAUXPMeTNK0kRTsR4PSOiBgfo
vPUEeE3cHRE6qzRbV99r0mwZ4J/rkasIWF9hzXn7Kgnt6vX11g6SB+4JU626sxT9B362QS9jGhp8
Nn4Q2GE7p69WnA/d+2YZG8LImwfTrm3KXWI/ZyAeoRcBqCuzLlLalmbNMenlKMGjRfYiZbADrg2N
sL692ec3O0YXZrDzMcjLj5wT2QK5W8bwWIS/pf+xkwj+l4TZCxDf2EgEP963kWiP2lE8fgy7OTH4
ajC8Vi7tFpnsPTchOQ44ZEyXhWhGwED8uhavqBm/7baWK7nZ2w2e1wH1mOBmRvm6BsF6TGYt8vac
VwLRUYpJeKUtGYqxMhN/0iTIYyVB1Kw7rcLORnr/PxsykUr4wKaJ/8ubvkBam+0PnTH6DUcf6rZA
s6Q/9SrBVe1/j7rSV8yFIh/gwoNJmMQbbcstN2uIX+E/+OZ3Ug+yg5KAGueTXpBF5K7eeaDd2C8/
x3WonBrLdtA5z/aHaFDIJhej2evo/WswXr+5lWlXb9xHP6jqKxlyrbC8QQK6ktxN3XfF16Z6Tuuo
NEGSc3dQmndKHJEyBB5VfXjsGD/7wSLk4vu2PizLLF0FEY00YPsw/92/1Q5ZMJxTeYIJ9/jmUkTc
ByRiCEmYimH7Fe3Toq6eRwfNTZhr0bcktzYg3fuERmwg5SyuuO/i2y0KBoxiZNmCFpIi4+Tw5QMD
SUNb9i6jbymeyK3XPBkYOZyZCKUMSS5iXEm6ieazzfVsEj7js55/grtyoITybv6hFuWU1t2X12UG
h5ncNrhmUxOgZeET6kKEq7eFUlpdogNa3/lUQMuoOEHA67ovr9duikeJYue9Jde+yh7Q/ESaXjDh
13OEmRoDji7tTaJ1tqL6aInc52gW52/HkHcGSIM1oElfe8EnXKAEutcIE0CBeNitH5S3NFayhCuz
xZbORuitLiRzHue8vYSShDrR8tLc2lQpl7weqFdrARQygeEQHAsbHQ71GlzHRku4AOewC4Ltejtq
HIsBlkdPbxwgIUgvET8MFjwofbJEnyU+pm0sIEThTe4MMihg3OMYmaaOtkgM/IUZh4t7AGHRE8i3
He1frWHLvzurjTyTNRJY0D3voblKQ71lglObxrlW3HeFObqEq98PAEwZcBuQayk7FDAyeGmaXQma
D0p5b4dmzseaTtA4EFU7J2tT/VFTObx9FTaG/Ayg2g4ZS193ery6JIyUBm8OSyNa31A3x1fktyZo
CeD6TJ7YsY7+rSm8jqAnyzm+Pgb29aaA8Z+urHdK1TkHK0mX5pfI2pwDQhKAqRFUgr0VhoumIXxh
8QmYbcL10GgyZXtJlDFYyi/l5uiYqJj+0TytLcwm6/1Kj6Wpqf5imd8Z2oN7i4azpf/d8v3+aDuc
oUVD0r3ws4e31P7ow2s=
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
