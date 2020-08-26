`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module tb_array
#(
    parameter inputBits = 8,
    parameter outputBits = 32
)
();

    logic clk;
	logic rst;
	logic clk2x;
	logic loadingWeights;
	logic [inputBits-1:0] in_side_0_a;
	logic [inputBits-1:0] in_side_0_b;
	logic [inputBits-1:0] in_side_0_c;
	logic [inputBits-1:0] in_side_0_d;
	logic [inputBits-1:0] in_top_0_e;
	logic [outputBits-1:0] out_bottom_0_w;
	logic [outputBits-1:0] out_bottom_0_x;
	logic [outputBits-1:0] out_bottom_0_y;
	logic [outputBits-1:0] out_bottom_0_z;
	logic [inputBits-1:0] in_side_1_a;
	logic [inputBits-1:0] in_side_1_b;
	logic [inputBits-1:0] in_side_1_c;
	logic [inputBits-1:0] in_side_1_d;
	logic [inputBits-1:0] in_top_1_e;
	logic [outputBits-1:0] out_bottom_1_w;
	logic [outputBits-1:0] out_bottom_1_x;
	logic [outputBits-1:0] out_bottom_1_y;
	logic [outputBits-1:0] out_bottom_1_z;
    
    initial clk = 0;
    always #1000 clk = ~clk;
    initial clk2x = 1;
    always #500 clk2x = ~clk2x;
    
    array #(inputBits, outputBits) array(clk, rst, clk2x, loadingWeights, 
                                            in_side_0_a, in_side_0_b, in_side_0_c, in_side_0_d, in_top_0_e,
                                            out_bottom_0_w, out_bottom_0_x, out_bottom_0_y, out_bottom_0_z,
                                            in_side_1_a, in_side_1_b, in_side_1_c, in_side_1_d, in_top_1_e,
                                            out_bottom_1_w, out_bottom_1_x, out_bottom_1_y, out_bottom_1_z);
    
    initial begin
        @(posedge clk);
        rst <= 0;
        @(posedge clk);
        rst <= 1;
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        rst <= 0;
        @(posedge clk);
        loadingWeights <= 1'b1;
        in_top_0_e <= 8'd7;
        in_top_1_e <= 8'd8;
        @(posedge clk);
        in_top_0_e <= 8'd5;
        in_top_1_e <= 8'd6;
        @(posedge clk);
        in_top_0_e <= 8'd0;
        in_top_1_e <= 8'd0;
        loadingWeights <= 1'b0;
        in_side_0_a <= 8'd1;
        in_side_1_a <= 8'd0;
        in_side_0_b <= 8'd1;
        in_side_1_b <= 8'd0;
        in_side_0_c <= 8'd1;
        in_side_1_c <= 8'd0;
        in_side_0_d <= 8'd1;
        in_side_1_d <= 8'd0;
        @(posedge clk);
        in_side_0_a <= 8'd3;
        in_side_1_a <= 8'd2;
        in_side_0_b <= 8'd3;
        in_side_1_b <= 8'd2;
        in_side_0_c <= 8'd3;
        in_side_1_c <= 8'd2;
        in_side_0_d <= 8'd3;
        in_side_1_d <= 8'd2;
        @(posedge clk);
        in_side_0_a <= 8'd0;
        in_side_1_a <= 8'd4;
        in_side_0_b <= 8'd0;
        in_side_1_b <= 8'd4;
        in_side_0_c <= 8'd0;
        in_side_1_c <= 8'd4;
        in_side_0_d <= 8'd0;
        in_side_1_d <= 8'd4;
        @(posedge clk);
        in_side_0_a <= 8'd0;
        in_side_1_a <= 8'd0;
        in_side_0_b <= 8'd0;
        in_side_1_b <= 8'd0;
        in_side_0_c <= 8'd0;
        in_side_1_c <= 8'd0;
        in_side_0_d <= 8'd0;
        in_side_1_d <= 8'd0;
        @(posedge clk);
    end
    
endmodule