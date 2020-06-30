module int8_dual_mac
#(
    parameter aInputBits = 8,
    parameter bInputBits = 8,
    parameter cInputBits = 8,
    parameter yzOutputBits = 32,
    parameter acbcPadding = yzOutputBits-16
)
(
    input logic clk,
    input logic rst,
    input logic [aInputBits-1:0] a,
    input logic [bInputBits-1:0] b,
    input logic [cInputBits-1:0] c,
    input logic [yzOutputBits-1:0] w,
    input logic [yzOutputBits-1:0] x,
    output logic [yzOutputBits-1:0] y,
    output logic [yzOutputBits-1:0] z
);

    logic [24:0] dsp_a;
    logic [24:0] dsp_b;
    logic [17:0] dsp_c;
    logic [42:0] dsp_z;
    logic [yzOutputBits-1:0] ac;
    logic [yzOutputBits-1:0] bc;
    logic [yzOutputBits-1:0] acc_y_dff_out;
    logic [yzOutputBits-1:0] acc_z_dff_out;
    logic [yzOutputBits:0] acc_y_out;
    logic [yzOutputBits:0] acc_z_out;

    //mul
    assign dsp_a = {a, 17'd0};
    assign dsp_b = (b[bInputBits-1]) ? {17'hFFFFF, b}:{17'h00000, b}; //assign dsp_b = {b, 17'd0} >>> 17;
    assign dsp_c = (c[cInputBits-1]) ? {10'hFFF, c}:{10'h000, c}; //assign dsp_c = {c, 10'd0} >>> 10;
    dsp_macro_wrapper dsp_macro_wrapper(.CLK(clk), .CLR(rst), .A(dsp_a), .B(dsp_b), .C(dsp_c), .Z(dsp_z));
    assign ac = (dsp_z[32]) ? {{acbcPadding{1'b1}}, dsp_z[32:17]}:{{acbcPadding{1'b0}}, dsp_z[32:17]};
    assign bc = (dsp_z[15]) ? {{acbcPadding{1'b1}}, dsp_z[15:0]}:{{acbcPadding{1'b0}}, dsp_z[15:0]};
    
    //acc
    add #(yzOutputBits, yzOutputBits, yzOutputBits+1) acc_y(ac, w, bc[yzOutputBits-1], acc_y_out);
    add #(yzOutputBits, yzOutputBits, yzOutputBits+1) acc_z(bc, x, 1'b0, acc_z_out);
    dff #(yzOutputBits) acc_y_dff(clk, rst, acc_y_out[yzOutputBits-1:0], acc_y_dff_out);
    dff #(yzOutputBits) acc_z_dff(clk, rst, acc_z_out[yzOutputBits-1:0], acc_z_dff_out);
    assign y = acc_y_dff_out;
    assign z = acc_z_dff_out;

endmodule
