// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Thu Aug 27 17:46:32 2020
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
eDPZU4VQXp9PyzHg2ReHbJrHq8N7yEGO0ZrO5RDdF8h7p8wCf7bWA4LnNzAR8ajuL6E67m3NUrCm
ZUobrQENJeMoMX03p9hSwqBK5AlaXUYHCVoFtfftTa4p/HEX9IHooIVTgNpumZ+n5urPDCGYZZgj
NENWROzmEYeHl9aBf2rs+kqCP7sXqpdqU6jZ3iOAiqQgsEP3dLgPYaE2gsRn4/rz0e2ak1Ndk0c9
mURIYy66An2S/T0bNhr0AMPSNnP7sorn/+LpetvsI1nU4BgNMVl3EDDAOBipC2ewqA3YXxjpDQWo
OS4QVRF+Xl12odbTb7TPJ4ZkfIlT4YiKuuspYg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
z5ORtW1P+QQz0ChmMJG4ISU+vwM+0/fz2JKY0Uq1/t9NbW4SWntnFUG9l8T+kimiSqf7+hW2CEEZ
Eqj57E666kGyumbBE7/4j7/2kUT9OtAauqG27zcyTcAfjXmqoa4N7cpWrb/PwK7XrawUz/kuKqu6
IgEBEQqR0r9S4S88V9oWQZBW38xLq5fBdMtZZHbT1wYDzCwpaATl0PHpQHa3DPjiOEfJP/2kMf4+
pLkXHziKLnVhvoCseTFsfKdRcot4T8jCjqHvEH5QurEDMnd64jZezq897pnLWCDD4em0OPlXvr4O
v89oVhFVqcUaEo8mcJDhx1U6m1mVM9L+2XbjnQ==

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
