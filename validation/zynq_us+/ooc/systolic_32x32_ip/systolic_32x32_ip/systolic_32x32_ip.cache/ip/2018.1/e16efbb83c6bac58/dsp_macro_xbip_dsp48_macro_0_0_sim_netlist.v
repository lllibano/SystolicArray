// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Mon Sep  7 15:59:29 2020
// Host        : Shears running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dsp_macro_xbip_dsp48_macro_0_0_sim_netlist.v
// Design      : dsp_macro_xbip_dsp48_macro_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-3-e-es2
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
(* C_TEST_CORE = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynquplus" *) 
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
  (* C_XDEVICEFAMILY = "zynquplus" *) 
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
Ddk+vEnsphpvtsSQB4IuIzoazznUCPbIE1ezDfr/dnBwpIHPYz3lt13/poh/Me1nY+CkkAmuZPrY
38l1lAhn5gPSEG/CP5SDEaXx36J51w7FiUZ7JRnpyMNViQglb1mDj/p8+V4pQAh3DtkyJ3IWsOwh
misjAmfmU/O0UXD+E6jKY7uB1HOdkKyt09fOcPJp4ZWt3xFv7bWTfUsvxkp9sDFYEFrZb+38MejP
X2ZY6uzocqpAuOaz5eLaEx9UBLC9Ld0KFxElBEHt4sGEmpqB2Ay0lrnivb0CQHB9OdufcBzhrWxS
JwjqG9e6I6Na050OkZLIvCbcVG4NG8Mpru6C+w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
3wcyvt6jFUIjTJhkW05RvVv5V8w2Pux/zlrndbXKh3fcbDxmpOQYhNvaN3TDwlUVrPxRv/gLsEDu
AL7VSxKNznEFH+MAZLudcwPVLqu3i4OgJyfl/p2Upmw9l8T1fdQ4naG3FaJO9dlqGI6FoY1KpweE
q/9yOEXzVYczuEbbSEbN0CYSla6dEpzXESCBdNGcnbppelHK8w+WmQwG8NCKftO9RgfaY5ZytQnR
Hd6Bxl1/GP84URD8R46yIbi41UrCxiT0jLFu59Kxyf7n7Qka/CaqCdlg1iDpLDfEOO7zNahZmV3M
TfcLCczDd2Yj7k9xInW5X8D7RjnAcjrWb+zIiQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 31040)
`pragma protect data_block
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
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
