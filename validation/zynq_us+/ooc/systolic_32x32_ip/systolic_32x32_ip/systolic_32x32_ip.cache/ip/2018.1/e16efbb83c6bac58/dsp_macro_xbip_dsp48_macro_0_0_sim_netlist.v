// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Thu Sep  3 15:56:02 2020
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
VxU7vu76M8sGwxZfm626+kfwaZr04zUt4zHtlMpoLsP1tHf5scvz5t2u1V7E/EIwisSFYCvLmF16
zLE+5+asnS6lZ2I/LhffzgDjzta+h1NjIFS7awtxZKbPXS+jxczv1jlRnTGVNVhfOnlOH9aBOWjN
VaPO7BO2MwzelpDTrjNFdFzKHIHkg4BtwUcTyrgeSgdJkIjT1t3TXbnUcQ8Q577ALJTQWdN9i9/G
OflrPAyoS+ESc7le0/7MXeyxABVHQe8CvwSnZ5RWAYnhD7OfqfRMBEw6SYYlnM1kR/ohDUy0hrDn
XgAijty9pRYsQbPi6skz1jI+I/IIrzBSM9AmGg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FOjFoHBo/wDPOyoaSW3SHSxifJJg803LC1W0TVoaf7s7Wa15XQJhNAUvYc2sO8+jrAw9uxrTCbaC
gDdzmJRlVbRzAhZtqtdN6AObRJ+Q8rncTIcWUTdiLmkQYhUC/T45B0DwD+g5U14oOJ13I4ylMqbt
m9rce5t04Zl3GaYiTTbOATIDon2HCi1hddBVve+YXGWPkyitarHXId+LGg5YlG2p3P5yqlBA2Sr5
CIs2+oKGfnAAkBKTCyivlHf0l+njaOZbriNmH7r0t+xR9muEodwPX+dqIaJtcn8/1Enok3xPB69N
NkVxmZU4EQtDMc5D2gbrycAaogCYcoGPcBqrrA==

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
