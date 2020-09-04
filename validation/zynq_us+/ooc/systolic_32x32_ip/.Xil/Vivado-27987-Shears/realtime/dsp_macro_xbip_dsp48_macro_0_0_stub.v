// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xbip_dsp48_macro_v3_0_16,Vivado 2018.1" *)
module dsp_macro_xbip_dsp48_macro_0_0(CLK, SCLR, A, B, D, P);
  input CLK;
  input SCLR;
  input [24:0]A;
  input [17:0]B;
  input [24:0]D;
  output [42:0]P;
endmodule
