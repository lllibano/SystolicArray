//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
//Date        : Tue Aug 25 22:42:55 2020
//Host        : linux running 64-bit Ubuntu 16.04.6 LTS
//Command     : generate_target dsp_macro_wrapper.bd
//Design      : dsp_macro_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dsp_macro_wrapper
   (A,
    B,
    C,
    CLK,
    CLR,
    Z);
  input [24:0]A;
  input [24:0]B;
  input [17:0]C;
  input CLK;
  input CLR;
  output [42:0]Z;

  wire [24:0]A;
  wire [24:0]B;
  wire [17:0]C;
  wire CLK;
  wire CLR;
  wire [42:0]Z;

  dsp_macro dsp_macro_i
       (.A(A),
        .B(B),
        .C(C),
        .CLK(CLK),
        .CLR(CLR),
        .Z(Z));
endmodule
