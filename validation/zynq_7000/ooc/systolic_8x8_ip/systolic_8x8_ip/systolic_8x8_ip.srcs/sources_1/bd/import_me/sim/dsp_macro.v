//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
//Date        : Mon Sep  7 18:54:23 2020
//Host        : linux running 64-bit Ubuntu 16.04.6 LTS
//Command     : generate_target dsp_macro.bd
//Design      : dsp_macro
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "dsp_macro,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=dsp_macro,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "dsp_macro.hwdef" *) 
module dsp_macro
   (A,
    B,
    C,
    CLK,
    CLR,
    Z);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.A DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.A, LAYERED_METADATA undef" *) input [24:0]A;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.B DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.B, LAYERED_METADATA undef" *) input [24:0]B;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.C DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.C, LAYERED_METADATA undef" *) input [17:0]C;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET RST:CLR, CLK_DOMAIN dsp_macro_CLK_0, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CLR RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CLR, POLARITY ACTIVE_HIGH" *) input CLR;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.Z DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.Z, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency width format long minimum {} maximum {}} value 43} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}} DATA_WIDTH 43}" *) output [42:0]Z;

  wire [24:0]A_0_1;
  wire [17:0]B_0_1;
  wire CLK_0_1;
  wire [24:0]D_0_1;
  wire SCLR_0_1;
  wire [42:0]xbip_dsp48_macro_0_P;

  assign A_0_1 = A[24:0];
  assign B_0_1 = C[17:0];
  assign CLK_0_1 = CLK;
  assign D_0_1 = B[24:0];
  assign SCLR_0_1 = CLR;
  assign Z[42:0] = xbip_dsp48_macro_0_P;
  dsp_macro_xbip_dsp48_macro_0_0 xbip_dsp48_macro_0
       (.A(A_0_1),
        .B(B_0_1),
        .CLK(CLK_0_1),
        .D(D_0_1),
        .P(xbip_dsp48_macro_0_P),
        .SCLR(SCLR_0_1));
endmodule
