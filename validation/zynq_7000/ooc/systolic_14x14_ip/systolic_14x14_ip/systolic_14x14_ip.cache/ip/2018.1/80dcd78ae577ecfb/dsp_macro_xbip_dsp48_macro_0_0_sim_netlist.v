// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Thu Sep  3 20:20:28 2020
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
GjA9gyl5ZANUBtZ7I0MAsT6bk1Pna5p0BcWxAAoew1xfXYI2JvRXo6ymbuiuUFj5rmqNedRsNG9+
VgF23zBhYD3IyX8nGLGFavgNG+qvo+GtYEXgswB1c/ltAUYq1nHq4LPWk4UXFpBVIeJITzvpGFwz
BwkwEWdAY6C3Vkrw/KQOKMhl2m0fzuKF2aDdbLto8hXiqJBJWealQGTrjejZG0ADwtZIf27UIsUx
GOGHl1B2kZkU9AQq1WGKHfqzsas+Xgyrwg5wwBFOh8MVBOxrEAyspp0XqcmMQRFwCSuM6DIID+Ur
bI6FNoSlrTKC1v3SszKufEHGoEqOIbAHvVjzMQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xYbDlZTBwNHvugXSaejUbshMhzReb2rg5qFNKNKJ8xst43HuzZeuGJAe4o0obOg3JZawqOJp0AGk
Rh9AaMVZxek78RjIfTMdyVW9C+zjCfm8kufN2AIuKeKG4HpdCY3fpxd65cQO01FmoROS1hLML9Cr
CHek+5+hN9Dg4iDykNgAtzFltrIGduZVkxgeO8i2y3mG6W+Vvg2SG60Dc3CvbQeh4z/y1MHdhOXf
ur/Qty9Ktt5xg45Q5gIo0nJhIJlswODeBxtpINhsWhFxvIHgrjOvWDsRC3F9YtHvzJT96v4jRDrF
mgOaM+v5U5xLh90vY08iZm1epSzcY/I9nufhYQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30224)
`pragma protect data_block
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
Zkt6wq/4V5S7SMIfGMk=
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
