// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Tue Jun 30 13:50:15 2020
// Host        : linux running 64-bit Ubuntu 16.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dsp_macro_xbip_dsp48_macro_0_0_sim_netlist.v
// Design      : dsp_macro_xbip_dsp48_macro_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
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
AFup6A+yJb+Smmz3jE5FHJgwzbZHZHR5HcXnDYDBSdyH9cfLX5ZNULkG/TrAUsFP+1bn3BXIx1EK
81hVMQ10gOnDWG0E7AStCbD9fT/CHELKSXHK6a24FufJuH+WxBcZ3aIZZHWrF88Czr+zs2Q2pN+9
AmFQS5ASAR5I+lYiZStSI9WXdZIRtHVCyvIu8vlVSJhMfxQ3RBm1G/JVfLJZ5douVJrgugdHmIHD
MtoKWXF5Vpbny5pSrxl7ZRPCYaQKZv3FToB5M/ehkpX1KIbngx0+cDabuIPT5+2eCumqD3pX0Kja
ZoiVbOrq9gEy5oqpxPH0tkT6vce4ryvcM8yBxw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MvMc9Hv/qLdiVa7fTxclnOBFCSN4gv2f2CboHHSeVN8EU144oWLXxIZKLlaC9vCKeYGL9525CxHB
V1N2J1JIFxFYij74FWI+12pQQ1T5ftVOCgS8qQn1JqOhv/X3xCiLitvUvHhdDjVIftFwv2maT3o4
fuo5XseUmgp2V7oyO75Bf9PSIcL+GPCfM6bxyz5yln568uQAJzIJE22MV8Sqp3+wQTP+J2QN7l6M
vVggajz659r9rUBx3p+R+1rsrWKQxb4nQmZzF+EdXu4P79A398myhnzh4XDC+ryRBf7zYHpsCUVx
XZlguf2lDePu86vmV/nk02ybcHwXQeLqfXU2Vw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 30224)
`pragma protect data_block
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
Lb/uBsKPv5AKKzREz/I=
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
