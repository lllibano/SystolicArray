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
	logic loadingWeights;
	logic [inputBits-1:0] in_side_0_a;
	logic [inputBits-1:0] in_side_0_b;
	logic [inputBits-1:0] in_top_0_c;
	logic [outputBits-1:0] out_bottom_0_y;
	logic [outputBits-1:0] out_bottom_0_z;
	logic [inputBits-1:0] in_side_1_a;
	logic [inputBits-1:0] in_side_1_b;
	logic [inputBits-1:0] in_top_1_c;
	logic [outputBits-1:0] out_bottom_1_y;
	logic [outputBits-1:0] out_bottom_1_z;
    
    initial clk = 0;
    always #10000 clk = ~clk;
    
    array #(inputBits, outputBits) array(clk, rst, loadingWeights, 
                                            in_side_0_a, in_side_0_b, in_top_0_c,
                                            out_bottom_0_y, out_bottom_0_z,
                                            in_side_1_a, in_side_1_b, in_top_1_c,
                                            out_bottom_1_y, out_bottom_1_z);
    
    initial begin
        @(negedge clk);
        rst <= 0;
        @(negedge clk);
        rst <= 1;
        @(negedge clk);
        @(negedge clk);
        @(negedge clk);
        rst <= 0;
        @(negedge clk);
        loadingWeights <= 1'b1;
        in_top_0_c <= 8'd7;
        in_top_1_c <= 8'd8;
        @(negedge clk);
        in_top_0_c <= 8'd5;
        in_top_1_c <= 8'd6;
        @(negedge clk);
        in_top_0_c <= 8'd0;
        in_top_1_c <= 8'd0;
        loadingWeights <= 1'b0;
        in_side_0_a <= 8'd1;
        in_side_1_a <= 8'd0;
        in_side_0_b <= 8'd1;
        in_side_1_b <= 8'd0;
        @(negedge clk);
        in_side_0_a <= 8'd3;
        in_side_1_a <= 8'd2;
        in_side_0_b <= 8'd3;
        in_side_1_b <= 8'd2;
        @(negedge clk);
        in_side_0_a <= 8'd0;
        in_side_1_a <= 8'd4;
        in_side_0_b <= 8'd0;
        in_side_1_b <= 8'd4;
        @(negedge clk);
        in_side_0_a <= 8'd0;
        in_side_1_a <= 8'd0;
        in_side_0_b <= 8'd0;
        in_side_1_b <= 8'd0;
        @(negedge clk);
    end
    
endmodule