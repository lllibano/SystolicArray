module int8_pe
#(
    parameter inputBits = 8,
    parameter outputBits = 32
)
(
    input logic clk,
    input logic rst,
    input logic [inputBits-1:0] a,
    input logic [inputBits-1:0] b,
    input logic [inputBits-1:0] c,
    input logic c_enable,
    input logic [outputBits-1:0] w,
    input logic [outputBits-1:0] x,
    output logic [inputBits-1:0] a_out,
    output logic [inputBits-1:0] b_out,
    output logic [inputBits-1:0] c_out,
    output logic [outputBits-1:0] y,
    output logic [outputBits-1:0] z
);

    logic [inputBits-1:0] c_in;

    dff #(inputBits) dff_a(clk, rst, a, a_out);
    dff #(inputBits) dff_b(clk, rst, b, b_out);
    assign c_in = (c_enable) ? c:c_out;
    dff #(inputBits) dff_c(clk, rst, c_in, c_out);
    int8_dual_mac #(inputBits, inputBits, inputBits, outputBits) int8_dual_mac(clk, rst, a, b, c_out, w, x, y, z);

endmodule
