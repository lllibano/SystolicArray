module array //2x2
#(
	parameter inputBits = 8,
	parameter outputBits = 32
)
(
	input logic clk,
	input logic rst,
	input logic clk2x,
	input logic loadingWeights,
	input logic [inputBits-1:0] in_side_0_a,
	input logic [inputBits-1:0] in_side_0_b,
	input logic [inputBits-1:0] in_side_0_c,
	input logic [inputBits-1:0] in_side_0_d,
	input logic [inputBits-1:0] in_top_0_e,
	output logic [outputBits-1:0] out_bottom_0_w,
	output logic [outputBits-1:0] out_bottom_0_x,
	output logic [outputBits-1:0] out_bottom_0_y,
	output logic [outputBits-1:0] out_bottom_0_z,
	input logic [inputBits-1:0] in_side_1_a,
	input logic [inputBits-1:0] in_side_1_b,
	input logic [inputBits-1:0] in_side_1_c,
	input logic [inputBits-1:0] in_side_1_d,
	input logic [inputBits-1:0] in_top_1_e,
	output logic [outputBits-1:0] out_bottom_1_w,
	output logic [outputBits-1:0] out_bottom_1_x,
	output logic [outputBits-1:0] out_bottom_1_y,
	output logic [outputBits-1:0] out_bottom_1_z
);

	//signals
	//line 0
	//pe 0 0
	logic [inputBits-1:0] pe_0_0_out_a;
	logic [inputBits-1:0] pe_0_0_out_b;
	logic [inputBits-1:0] pe_0_0_out_c;
	logic [inputBits-1:0] pe_0_0_out_d;
	logic [inputBits-1:0] pe_0_0_out_e;
	logic [outputBits-1:0] pe_0_0_out_w;
	logic [outputBits-1:0] pe_0_0_out_x;
	logic [outputBits-1:0] pe_0_0_out_y;
	logic [outputBits-1:0] pe_0_0_out_z;
	//pe 0 1
	logic [inputBits-1:0] pe_0_1_out_a;
	logic [inputBits-1:0] pe_0_1_out_b;
	logic [inputBits-1:0] pe_0_1_out_c;
	logic [inputBits-1:0] pe_0_1_out_d;
	logic [inputBits-1:0] pe_0_1_out_e;
	logic [outputBits-1:0] pe_0_1_out_w;
	logic [outputBits-1:0] pe_0_1_out_x;
	logic [outputBits-1:0] pe_0_1_out_y;
	logic [outputBits-1:0] pe_0_1_out_z;
	//line 1
	//pe 1 0
	logic [inputBits-1:0] pe_1_0_out_a;
	logic [inputBits-1:0] pe_1_0_out_b;
	logic [inputBits-1:0] pe_1_0_out_c;
	logic [inputBits-1:0] pe_1_0_out_d;
	logic [inputBits-1:0] pe_1_0_out_e;
	logic [outputBits-1:0] pe_1_0_out_w;
	logic [outputBits-1:0] pe_1_0_out_x;
	logic [outputBits-1:0] pe_1_0_out_y;
	logic [outputBits-1:0] pe_1_0_out_z;
	//pe 1 1
	logic [inputBits-1:0] pe_1_1_out_a;
	logic [inputBits-1:0] pe_1_1_out_b;
	logic [inputBits-1:0] pe_1_1_out_c;
	logic [inputBits-1:0] pe_1_1_out_d;
	logic [inputBits-1:0] pe_1_1_out_e;
	logic [outputBits-1:0] pe_1_1_out_w;
	logic [outputBits-1:0] pe_1_1_out_x;
	logic [outputBits-1:0] pe_1_1_out_y;
	logic [outputBits-1:0] pe_1_1_out_z;

	//modules
	//line 0
	//pe 0 0
	int8_pe #(inputBits, outputBits) pe_0_0(clk, rst, clk2x,
											in_side_0_a, in_side_0_b, in_side_0_c, in_side_0_d, in_top_0_e, loadingWeights,
											{outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}},
											pe_0_0_out_a, pe_0_0_out_b, pe_0_0_out_c, pe_0_0_out_d, pe_0_0_out_e,
											pe_0_0_out_w, pe_0_0_out_x, pe_0_0_out_y, pe_0_0_out_z);
	//pe 0 1
	int8_pe #(inputBits, outputBits) pe_0_1(clk, rst, clk2x,
											pe_0_0_out_a, pe_0_0_out_b, pe_0_0_out_c, pe_0_0_out_d, in_top_1_e, loadingWeights,
											{outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}},
											pe_0_1_out_a, pe_0_1_out_b, pe_0_1_out_c, pe_0_1_out_d, pe_0_1_out_e,
											pe_0_1_out_w, pe_0_1_out_x, pe_0_1_out_y, pe_0_1_out_z);
	//line 1
	//pe 1 0
	int8_pe #(inputBits, outputBits) pe_1_0(clk, rst, clk2x,
											in_side_1_a, in_side_1_b, in_side_1_c, in_side_1_d, pe_0_0_out_e, loadingWeights,
											pe_0_0_out_w, pe_0_0_out_x, pe_0_0_out_y, pe_0_0_out_z,
											pe_1_0_out_a, pe_1_0_out_b, pe_1_0_out_c, pe_1_0_out_d, pe_1_0_out_e,
											pe_1_0_out_w, pe_1_0_out_x, pe_1_0_out_y, pe_1_0_out_z);
	//pe 1 1
	int8_pe #(inputBits, outputBits) pe_1_1(clk, rst, clk2x,
											pe_1_0_out_a, pe_1_0_out_b, pe_1_0_out_c, pe_1_0_out_d, pe_0_1_out_e, loadingWeights,
											pe_0_1_out_w, pe_0_1_out_x, pe_0_1_out_y, pe_0_1_out_z,
											pe_1_1_out_a, pe_1_1_out_b, pe_1_1_out_c, pe_1_1_out_d, pe_1_1_out_e,
											pe_1_1_out_w, pe_1_1_out_x, pe_1_1_out_y, pe_1_1_out_z);

	//assigns
	assign out_bottom_0_w = pe_1_0_out_w;
	assign out_bottom_0_x = pe_1_0_out_x;
	assign out_bottom_0_y = pe_1_0_out_y;
	assign out_bottom_0_z = pe_1_0_out_z;
	assign out_bottom_1_w = pe_1_1_out_w;
	assign out_bottom_1_x = pe_1_1_out_x;
	assign out_bottom_1_y = pe_1_1_out_y;
	assign out_bottom_1_z = pe_1_1_out_z;

endmodule