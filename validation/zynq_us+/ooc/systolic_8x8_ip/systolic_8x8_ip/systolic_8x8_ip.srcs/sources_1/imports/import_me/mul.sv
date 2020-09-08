module mul
#(
    parameter aInputBits = 8,
    parameter bInputBits = 8,
    parameter cInputBits = 8,
    parameter dInputBits = 8,
    parameter eInputBits = 8
)
(
    input clk,
    input rst,
    input clk2x,
    input logic [aInputBits-1:0] a,
    input logic [bInputBits-1:0] b,
    input logic [cInputBits-1:0] c,
    input logic [dInputBits-1:0] d,
    input logic [eInputBits-1:0] e,
    output logic [aInputBits+eInputBits-1:0] mul_ae,
    output logic [bInputBits+eInputBits-1:0] mul_be,
    output logic [cInputBits+eInputBits-1:0] mul_ce,
    output logic [dInputBits+eInputBits-1:0] mul_de
);

    logic input_mux_sel;
    logic [aInputBits-1:0] mux_dsp_in0;
    logic [bInputBits-1:0] mux_dsp_in1;    
    logic [aInputBits-1:0] dsp_in0_dff_out;
    logic [bInputBits-1:0] dsp_in1_dff_out;
    logic [eInputBits-1:0] dsp_in2_dff_out;
    logic [24:0] dsp_in0;
    logic [24:0] dsp_in1;
    logic [17:0] dsp_in2;
    logic [42:0] dsp_out;    
    logic [aInputBits+eInputBits-1:0] ae;
    logic [bInputBits+eInputBits-1:0] be;
    logic [cInputBits+eInputBits-1:0] ce;
    logic [dInputBits+eInputBits-1:0] de;
    logic [aInputBits+eInputBits-1:0] ae0_dff_out;
    logic [bInputBits+eInputBits-1:0] be0_dff_out;
    logic [aInputBits+eInputBits-1:0] ae1_dff_out;
    logic [bInputBits+eInputBits-1:0] be1_dff_out;
    logic [cInputBits+eInputBits-1:0] ce1_dff_out;
    logic [dInputBits+eInputBits-1:0] de1_dff_out;
    
    //input mux
    dff #(1) dff_input_mux_sel(clk2x, rst, !input_mux_sel, input_mux_sel);
    assign mux_dsp_in0 = (input_mux_sel) ? c:a;
    assign mux_dsp_in1 = (input_mux_sel) ? d:b;
    //clk -> clk2x
    dff_enbl #(aInputBits) dff_dsp_in0(clk2x, 1'b1, mux_dsp_in0, dsp_in0_dff_out);
    dff_enbl #(bInputBits) dff_dsp_in1(clk2x, 1'b1, mux_dsp_in1, dsp_in1_dff_out);
    dff_enbl #(eInputBits) dff_dsp_in2(clk2x, 1'b1, e, dsp_in2_dff_out);
    //mul
    assign dsp_in0 = {dsp_in0_dff_out, 17'd0};
    assign dsp_in1 = (dsp_in1_dff_out[bInputBits-1]) ? {17'hFFFFF, dsp_in1_dff_out}:{17'h00000, dsp_in1_dff_out};
    assign dsp_in2 = (dsp_in2_dff_out[eInputBits-1]) ? {10'hFFF, dsp_in2_dff_out}:{10'h000, dsp_in2_dff_out};
    dsp_macro_wrapper dsp_macro_wrapper(.CLK(clk2x), .CLR(1'b0), .A(dsp_in0), .B(dsp_in1), .C(dsp_in2), .Z(dsp_out));
    assign ae = dsp_out[32:17];
    assign be = dsp_out[15:0];
    assign ce = dsp_out[32:17];
    assign de = dsp_out[15:0];
    dff_enbl #(aInputBits+eInputBits) dff_ae0(clk2x, 1'b1, ae, ae0_dff_out);
    dff_enbl #(bInputBits+eInputBits) dff_be0(clk2x, 1'b1, be, be0_dff_out);
    dff_enbl #(aInputBits+eInputBits) dff_ae1(clk2x, 1'b1, ae0_dff_out, ae1_dff_out);
    dff_enbl #(bInputBits+eInputBits) dff_be1(clk2x, 1'b1, be0_dff_out, be1_dff_out);
    dff_enbl #(cInputBits+eInputBits) dff_ce1(clk2x, 1'b1, ce, ce1_dff_out);
    dff_enbl #(dInputBits+eInputBits) dff_de1(clk2x, 1'b1, de, de1_dff_out);
    //clk2x -> clk
    dff #(aInputBits+eInputBits) dff_mul_ae(clk, rst, ae1_dff_out, mul_ae);
    dff #(bInputBits+eInputBits) dff_mul_be(clk, rst, be1_dff_out, mul_be);
    dff #(cInputBits+eInputBits) dff_mul_ce(clk, rst, ce1_dff_out, mul_ce);
    dff #(dInputBits+eInputBits) dff_mul_de(clk, rst, de1_dff_out, mul_de);

endmodule
