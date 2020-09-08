// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Mon Sep  7 15:47:02 2020
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
VtRxW5mTdyls2ZOMt7AnPhIKcRIH1shczr7qxPfLCJxDtUs3hWAb7ycsPxfzoaO8/igx6umvrQFI
khY0zJwvdU2KjVfBAsBp3cNUPZ17Qut/qbG9pFQPD+na2N5dRPVOac9E1yq+RZFgD+5zIpyVjAT6
7vXEeUI5PfNDUrZJFnUdTgS3dNq8tyTvEb0GxcvP7HbpIraw8KRMF2Ycax4mDrScZMN4qegVdnjE
yWpm/ueTRzVEnOVqcVeibsthoykJSFbszcX8eJr2QvbBBFS59Ilo9vu4xWnRsCF4jcZKJAYOkQHb
uDrekDXhI5/eYfSXkvTJDQeDkqzChPCgbNTXGQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
r+lstbkk09cHI3K19KXcz+czHv54ZGPlh7yiNAh6gl1AJiM33Wl6SBo6BebKKTE/MWa5yu9JLYBh
F1A7vAwv+Dzb6daRH20Kq3DaEJ5P0NkxcLejsbK44saWBsEwEDnqyYLSQxMJaQCoXsnJpCyGMbnD
fWIZ7lxsX+IMGLm6jTt/WDoHzElNOOe3eCS1A9J2/Zu1S89weme3/9GqzykG8fs0Ebna/6wL7DED
kfAcWFlRddbHSgWNhT1oZSEbgxFkuk2FSkdh5Bxtp32hG7V8ob18dtj13AamAMEMNSX2BvkSDjfa
2CzWZdiAcG5K1wzPEhvqavxGTpnKcYZ19hV+ig==

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
