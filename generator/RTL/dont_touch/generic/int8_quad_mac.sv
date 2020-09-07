module int8_quad_mac
#(
    parameter aInputBits = 8,
    parameter bInputBits = 8,
    parameter cInputBits = 8,
    parameter dInputBits = 8,
    parameter eInputBits = 8,
    parameter wxyzOutputBits = 32
)
(
    input logic clk,
    input logic rst,
    input logic clk2x,
    input logic [aInputBits-1:0] a,
    input logic [bInputBits-1:0] b,
    input logic [cInputBits-1:0] c,
    input logic [dInputBits-1:0] d,
    input logic [eInputBits-1:0] e,    
    input logic [wxyzOutputBits-1:0] s,
    input logic [wxyzOutputBits-1:0] t,
    input logic [wxyzOutputBits-1:0] u,
    input logic [wxyzOutputBits-1:0] v,
    output logic [wxyzOutputBits-1:0] w,
    output logic [wxyzOutputBits-1:0] x,
    output logic [wxyzOutputBits-1:0] y,
    output logic [wxyzOutputBits-1:0] z
);

    logic [aInputBits+eInputBits-1:0] mul_ae;
    logic [bInputBits+eInputBits-1:0] mul_be;
    logic [cInputBits+eInputBits-1:0] mul_ce;
    logic [dInputBits+eInputBits-1:0] mul_de;
    logic [wxyzOutputBits-1:0] acc_w_dff_out;
    logic [wxyzOutputBits-1:0] acc_x_dff_out;
    logic [wxyzOutputBits-1:0] acc_y_dff_out;
    logic [wxyzOutputBits-1:0] acc_z_dff_out;
    logic [wxyzOutputBits:0] acc_w_out;
    logic [wxyzOutputBits:0] acc_x_out;
    logic [wxyzOutputBits:0] acc_y_out;
    logic [wxyzOutputBits:0] acc_z_out;

    //mul
    mul #(aInputBits, bInputBits, cInputBits, dInputBits, eInputBits) mul(clk, rst, clk2x, a, b, c, d, e, mul_ae, mul_be, mul_ce, mul_de);
    //acc
    add #(aInputBits+eInputBits, wxyzOutputBits, wxyzOutputBits+1) acc_w(mul_ae, s, mul_be[bInputBits+eInputBits-1], acc_w_out);
    add #(bInputBits+eInputBits, wxyzOutputBits, wxyzOutputBits+1) acc_x(mul_be, t, 1'b0, acc_x_out);
    add #(cInputBits+eInputBits, wxyzOutputBits, wxyzOutputBits+1) acc_y(mul_ce, u, mul_de[dInputBits+eInputBits-1], acc_y_out);
    add #(dInputBits+eInputBits, wxyzOutputBits, wxyzOutputBits+1) acc_z(mul_de, v, 1'b0, acc_z_out);
    dff #(wxyzOutputBits) acc_w_dff(clk, rst, acc_w_out[wxyzOutputBits-1:0], acc_w_dff_out);
    dff #(wxyzOutputBits) acc_x_dff(clk, rst, acc_x_out[wxyzOutputBits-1:0], acc_x_dff_out);
    dff #(wxyzOutputBits) acc_y_dff(clk, rst, acc_y_out[wxyzOutputBits-1:0], acc_y_dff_out);
    dff #(wxyzOutputBits) acc_z_dff(clk, rst, acc_z_out[wxyzOutputBits-1:0], acc_z_dff_out);
    assign w = acc_w_dff_out;
    assign x = acc_x_dff_out;
    assign y = acc_y_dff_out;
    assign z = acc_z_dff_out;

endmodule
