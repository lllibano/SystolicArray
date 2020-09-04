// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Thu Sep  3 15:48:06 2020
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
H0j8IQlU0VJgM9sTCQrmkJN6CUZHky+AzC54ahk/7lFUmkcmD9IQHuDIUaiARnE6dAx0xklLRGkP
K8qwMU3fMhPlefkyiUa9GnDKdhEsJf/6t/fLuz7QsveOFhWT7BEbzzHENfI/XTpez1wPPRzak81o
NKnSd5AayIAX/en9teRTeoyi2WlR/xOkSZfsjkkx7UczDVKItVuM1MRqKmWyvVRWFuu5TEOzckzx
fwm2YQEiOlCFu8mubWrp7NMNmak8fzGG2Y5Uox4gbxV4rBN3QdhvFzH3Oh74oAjmCG+BwC924M1o
l8QW5KU2u2+QKIJ4kmqO42U3Fplp4mwa+Gljaw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
n8HohGJ1a2+U7L9N8sN7qiAGo4HUmMWxramW50bEvKN3mxIgUQsylNrH2Q+oNxbnSFL+y+wQr+st
hsi11oPDYu4qKk+t5+QKYoSTXbLD9hd6G1kJlx5xuVbAd/Oajh+JkYJDWTM4EGitbmQ2ZldhY+kp
IQQD5GEa3d0si/nI2pVU1Fm0dfHrE5Ub1/ImACFa+UYqSn80KKcS6m4XvT15hO6DWiyVcOhOaZSs
R1TLOgmR5LPnn6ACkaI/ctu7qnzGBm9XY7a4iNyWz3x/kvPszTE0kSZ16rcZxZWpMXfbVzLSfBFK
4TxacWooE9czhAhsPJp5pglSuI9bKIb6qHLr1w==

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
