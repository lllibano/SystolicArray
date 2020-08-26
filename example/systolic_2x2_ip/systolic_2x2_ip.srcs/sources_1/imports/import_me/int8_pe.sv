module int8_pe
#(
    parameter inputBits = 8,
    parameter outputBits = 32
)
(
    input logic clk,
    input logic rst,
    input logic clk2x,
    input logic [inputBits-1:0] a,
    input logic [inputBits-1:0] b,
    input logic [inputBits-1:0] c,
    input logic [inputBits-1:0] d,
    input logic [inputBits-1:0] e,
    input logic e_enable,
    input logic [outputBits-1:0] s,
    input logic [outputBits-1:0] t,
    input logic [outputBits-1:0] u,
    input logic [outputBits-1:0] v,
    output logic [inputBits-1:0] a_out,
    output logic [inputBits-1:0] b_out,
    output logic [inputBits-1:0] c_out,
    output logic [inputBits-1:0] d_out,
    output logic [inputBits-1:0] e_out,
    output logic [outputBits-1:0] w,
    output logic [outputBits-1:0] x,
    output logic [outputBits-1:0] y,
    output logic [outputBits-1:0] z
);

    logic [inputBits-1:0] e_in;

    dff #(inputBits) dff_a(clk, rst, a, a_out);
    dff #(inputBits) dff_b(clk, rst, b, b_out);
    dff #(inputBits) dff_c(clk, rst, c, c_out);
    dff #(inputBits) dff_d(clk, rst, d, d_out);
    assign e_in = (e_enable) ? e:e_out;
    dff #(inputBits) dff_e(clk, rst, e_in, e_out);
    int8_quad_mac #(inputBits, inputBits, inputBits, inputBits, inputBits, outputBits) int8_quad_mac(clk, rst, clk2x, a_out, b_out, c_out, d_out, e_out, s, t, u, v, w, x, y, z);

endmodule
