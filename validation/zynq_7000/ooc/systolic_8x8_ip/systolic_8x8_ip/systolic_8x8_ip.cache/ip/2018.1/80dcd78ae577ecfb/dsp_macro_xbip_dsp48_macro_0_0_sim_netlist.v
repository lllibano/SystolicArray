// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Mon Sep  7 18:57:43 2020
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
hlUZy5uuasOO+HkvhNv4VK2Vy6yKIozN6FiJqJSCJPS8aV5WRFMwwhhxGtJQwPUufPZPD9InZx2y
g3wYaQ+ZsgeO9zOt7/WPTVnQATyVIJbgpTiKYXLT6Cv/TfVbk+6MGLjMJabUpqoxkK9KWE/2H3Zs
BR9XQoKVMC4JPHijCk1IdikyWuPA/g9S/xw6jGgJvfgfXIVQUGBrqwrI0GiaWKYP5nMhgwfCpH32
oZO6ANj9leXWOFkeTfq7M+AfCbux7IQqsD3yn7Y1bT8WbDEBDJwF5b2PBzJhqjAefINkXiWPIBuA
NTo3g9kKHsm1Mt4GVNFcsmQEr8m1C0sZLjazuQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pscRckMHZ/QnbSuB3jybKrPjEPSJ+tM7fgRHa5dmH+YKms1DP9qsvzoSxFWLY0dEbo8RgkY6+3dz
UH2VtY9kvjtHkW863Y3kGFc/49VGafxq+oCdq7mH8Cj8iyqcvVGnwkw4aVRbaQQSRXy0vpgMKrMX
0G/6EH/50cXqq7OgshpQ8at/prT4GcHxhGKiYbxO7CIAJDPFHdSv3TTNz3aleGP2mLyBARv7Lwxe
5KjfwMbqoqTdRBdGFukaHslb1GV/82WrXROVf1S2GoJzRHau7V618h9BhmiuYfrhKCJSBNIQdHNm
4KgMo0H3QgsRoe67bBpnhutS49fjO8BlxxcqFQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30224)
`pragma protect data_block
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
HyAHi6rvZ59c9oulF1U=
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
