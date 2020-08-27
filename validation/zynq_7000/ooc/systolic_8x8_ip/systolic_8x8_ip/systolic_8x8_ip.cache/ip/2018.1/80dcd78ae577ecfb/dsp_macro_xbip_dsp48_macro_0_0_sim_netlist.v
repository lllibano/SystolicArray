// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Wed Aug 26 21:20:26 2020
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
qmXYnxIgDWU9YUFkdQIxVv03OSl59PxNR2SDa+wfcWm9XuwkQhGEsUqZn0cuJ00kVH+yhJNM9+ps
wiOSRpqBQeLhChOP/NLcOB91z0tgUvbgZGDIUHQsryT3o4iHALTtsPasZXBrIbwQhzTdF8SKeiCy
YRrrEuFOeqorXmVUhnc31m/XVfh5zub5dVtcToXuTRL959yz/NHESyezj+0Vewn0WwLdvscJbPTm
Q6e3Gp4t3LGYRE527xV70aHgBkNKYUMHKYYllOmECRdLcopbCMN2/Ry1A/xbusQHODc5a4JpjLn9
Jq2D6TUGNUBy00L7gBYG/Mi2oz3La3agZSYkXA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
t0zQ8wkqOoHoXenZztokkXmnKzyLUZ0i4WGNZ7rRKJRf3wTOk5/tNAMbjXpunlGduIZLq7VEv4wa
L9ECqrQM8Pjy1NeJLb+ihWOLkmkIurRxJJsFJYa8/PS6th4sKLabFSfj9xSL/XXtbQBLSlSviV/P
VhEQe5vxOOuuh98SDUna2omjBJRV2UHmr0KCiyM7gG/UanuRFxwZwSeP8BAy8rqj+REWFIoMYc2c
oJuSnB+4mht+7A+/2xQBxeqS1EiV+d4qoZ6zEK/Gtuz6DgSo8nwBJIxy8B2djB+A+R4NS6OxcPXo
fgrEyscuR4455r5bOr0Hh+L2rRS2aJ29nq87vA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30224)
`pragma protect data_block
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
Qy86WGxjTzUJLBzt4AM=
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
