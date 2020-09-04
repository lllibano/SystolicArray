module array //14x14
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
	output logic [outputBits-1:0] out_bottom_1_z,
	input logic [inputBits-1:0] in_side_2_a,
	input logic [inputBits-1:0] in_side_2_b,
	input logic [inputBits-1:0] in_side_2_c,
	input logic [inputBits-1:0] in_side_2_d,
	input logic [inputBits-1:0] in_top_2_e,
	output logic [outputBits-1:0] out_bottom_2_w,
	output logic [outputBits-1:0] out_bottom_2_x,
	output logic [outputBits-1:0] out_bottom_2_y,
	output logic [outputBits-1:0] out_bottom_2_z,
	input logic [inputBits-1:0] in_side_3_a,
	input logic [inputBits-1:0] in_side_3_b,
	input logic [inputBits-1:0] in_side_3_c,
	input logic [inputBits-1:0] in_side_3_d,
	input logic [inputBits-1:0] in_top_3_e,
	output logic [outputBits-1:0] out_bottom_3_w,
	output logic [outputBits-1:0] out_bottom_3_x,
	output logic [outputBits-1:0] out_bottom_3_y,
	output logic [outputBits-1:0] out_bottom_3_z,
	input logic [inputBits-1:0] in_side_4_a,
	input logic [inputBits-1:0] in_side_4_b,
	input logic [inputBits-1:0] in_side_4_c,
	input logic [inputBits-1:0] in_side_4_d,
	input logic [inputBits-1:0] in_top_4_e,
	output logic [outputBits-1:0] out_bottom_4_w,
	output logic [outputBits-1:0] out_bottom_4_x,
	output logic [outputBits-1:0] out_bottom_4_y,
	output logic [outputBits-1:0] out_bottom_4_z,
	input logic [inputBits-1:0] in_side_5_a,
	input logic [inputBits-1:0] in_side_5_b,
	input logic [inputBits-1:0] in_side_5_c,
	input logic [inputBits-1:0] in_side_5_d,
	input logic [inputBits-1:0] in_top_5_e,
	output logic [outputBits-1:0] out_bottom_5_w,
	output logic [outputBits-1:0] out_bottom_5_x,
	output logic [outputBits-1:0] out_bottom_5_y,
	output logic [outputBits-1:0] out_bottom_5_z,
	input logic [inputBits-1:0] in_side_6_a,
	input logic [inputBits-1:0] in_side_6_b,
	input logic [inputBits-1:0] in_side_6_c,
	input logic [inputBits-1:0] in_side_6_d,
	input logic [inputBits-1:0] in_top_6_e,
	output logic [outputBits-1:0] out_bottom_6_w,
	output logic [outputBits-1:0] out_bottom_6_x,
	output logic [outputBits-1:0] out_bottom_6_y,
	output logic [outputBits-1:0] out_bottom_6_z,
	input logic [inputBits-1:0] in_side_7_a,
	input logic [inputBits-1:0] in_side_7_b,
	input logic [inputBits-1:0] in_side_7_c,
	input logic [inputBits-1:0] in_side_7_d,
	input logic [inputBits-1:0] in_top_7_e,
	output logic [outputBits-1:0] out_bottom_7_w,
	output logic [outputBits-1:0] out_bottom_7_x,
	output logic [outputBits-1:0] out_bottom_7_y,
	output logic [outputBits-1:0] out_bottom_7_z,
	input logic [inputBits-1:0] in_side_8_a,
	input logic [inputBits-1:0] in_side_8_b,
	input logic [inputBits-1:0] in_side_8_c,
	input logic [inputBits-1:0] in_side_8_d,
	input logic [inputBits-1:0] in_top_8_e,
	output logic [outputBits-1:0] out_bottom_8_w,
	output logic [outputBits-1:0] out_bottom_8_x,
	output logic [outputBits-1:0] out_bottom_8_y,
	output logic [outputBits-1:0] out_bottom_8_z,
	input logic [inputBits-1:0] in_side_9_a,
	input logic [inputBits-1:0] in_side_9_b,
	input logic [inputBits-1:0] in_side_9_c,
	input logic [inputBits-1:0] in_side_9_d,
	input logic [inputBits-1:0] in_top_9_e,
	output logic [outputBits-1:0] out_bottom_9_w,
	output logic [outputBits-1:0] out_bottom_9_x,
	output logic [outputBits-1:0] out_bottom_9_y,
	output logic [outputBits-1:0] out_bottom_9_z,
	input logic [inputBits-1:0] in_side_10_a,
	input logic [inputBits-1:0] in_side_10_b,
	input logic [inputBits-1:0] in_side_10_c,
	input logic [inputBits-1:0] in_side_10_d,
	input logic [inputBits-1:0] in_top_10_e,
	output logic [outputBits-1:0] out_bottom_10_w,
	output logic [outputBits-1:0] out_bottom_10_x,
	output logic [outputBits-1:0] out_bottom_10_y,
	output logic [outputBits-1:0] out_bottom_10_z,
	input logic [inputBits-1:0] in_side_11_a,
	input logic [inputBits-1:0] in_side_11_b,
	input logic [inputBits-1:0] in_side_11_c,
	input logic [inputBits-1:0] in_side_11_d,
	input logic [inputBits-1:0] in_top_11_e,
	output logic [outputBits-1:0] out_bottom_11_w,
	output logic [outputBits-1:0] out_bottom_11_x,
	output logic [outputBits-1:0] out_bottom_11_y,
	output logic [outputBits-1:0] out_bottom_11_z,
	input logic [inputBits-1:0] in_side_12_a,
	input logic [inputBits-1:0] in_side_12_b,
	input logic [inputBits-1:0] in_side_12_c,
	input logic [inputBits-1:0] in_side_12_d,
	input logic [inputBits-1:0] in_top_12_e,
	output logic [outputBits-1:0] out_bottom_12_w,
	output logic [outputBits-1:0] out_bottom_12_x,
	output logic [outputBits-1:0] out_bottom_12_y,
	output logic [outputBits-1:0] out_bottom_12_z,
	input logic [inputBits-1:0] in_side_13_a,
	input logic [inputBits-1:0] in_side_13_b,
	input logic [inputBits-1:0] in_side_13_c,
	input logic [inputBits-1:0] in_side_13_d,
	input logic [inputBits-1:0] in_top_13_e,
	output logic [outputBits-1:0] out_bottom_13_w,
	output logic [outputBits-1:0] out_bottom_13_x,
	output logic [outputBits-1:0] out_bottom_13_y,
	output logic [outputBits-1:0] out_bottom_13_z
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
	//pe 0 2
	logic [inputBits-1:0] pe_0_2_out_a;
	logic [inputBits-1:0] pe_0_2_out_b;
	logic [inputBits-1:0] pe_0_2_out_c;
	logic [inputBits-1:0] pe_0_2_out_d;
	logic [inputBits-1:0] pe_0_2_out_e;
	logic [outputBits-1:0] pe_0_2_out_w;
	logic [outputBits-1:0] pe_0_2_out_x;
	logic [outputBits-1:0] pe_0_2_out_y;
	logic [outputBits-1:0] pe_0_2_out_z;
	//pe 0 3
	logic [inputBits-1:0] pe_0_3_out_a;
	logic [inputBits-1:0] pe_0_3_out_b;
	logic [inputBits-1:0] pe_0_3_out_c;
	logic [inputBits-1:0] pe_0_3_out_d;
	logic [inputBits-1:0] pe_0_3_out_e;
	logic [outputBits-1:0] pe_0_3_out_w;
	logic [outputBits-1:0] pe_0_3_out_x;
	logic [outputBits-1:0] pe_0_3_out_y;
	logic [outputBits-1:0] pe_0_3_out_z;
	//pe 0 4
	logic [inputBits-1:0] pe_0_4_out_a;
	logic [inputBits-1:0] pe_0_4_out_b;
	logic [inputBits-1:0] pe_0_4_out_c;
	logic [inputBits-1:0] pe_0_4_out_d;
	logic [inputBits-1:0] pe_0_4_out_e;
	logic [outputBits-1:0] pe_0_4_out_w;
	logic [outputBits-1:0] pe_0_4_out_x;
	logic [outputBits-1:0] pe_0_4_out_y;
	logic [outputBits-1:0] pe_0_4_out_z;
	//pe 0 5
	logic [inputBits-1:0] pe_0_5_out_a;
	logic [inputBits-1:0] pe_0_5_out_b;
	logic [inputBits-1:0] pe_0_5_out_c;
	logic [inputBits-1:0] pe_0_5_out_d;
	logic [inputBits-1:0] pe_0_5_out_e;
	logic [outputBits-1:0] pe_0_5_out_w;
	logic [outputBits-1:0] pe_0_5_out_x;
	logic [outputBits-1:0] pe_0_5_out_y;
	logic [outputBits-1:0] pe_0_5_out_z;
	//pe 0 6
	logic [inputBits-1:0] pe_0_6_out_a;
	logic [inputBits-1:0] pe_0_6_out_b;
	logic [inputBits-1:0] pe_0_6_out_c;
	logic [inputBits-1:0] pe_0_6_out_d;
	logic [inputBits-1:0] pe_0_6_out_e;
	logic [outputBits-1:0] pe_0_6_out_w;
	logic [outputBits-1:0] pe_0_6_out_x;
	logic [outputBits-1:0] pe_0_6_out_y;
	logic [outputBits-1:0] pe_0_6_out_z;
	//pe 0 7
	logic [inputBits-1:0] pe_0_7_out_a;
	logic [inputBits-1:0] pe_0_7_out_b;
	logic [inputBits-1:0] pe_0_7_out_c;
	logic [inputBits-1:0] pe_0_7_out_d;
	logic [inputBits-1:0] pe_0_7_out_e;
	logic [outputBits-1:0] pe_0_7_out_w;
	logic [outputBits-1:0] pe_0_7_out_x;
	logic [outputBits-1:0] pe_0_7_out_y;
	logic [outputBits-1:0] pe_0_7_out_z;
	//pe 0 8
	logic [inputBits-1:0] pe_0_8_out_a;
	logic [inputBits-1:0] pe_0_8_out_b;
	logic [inputBits-1:0] pe_0_8_out_c;
	logic [inputBits-1:0] pe_0_8_out_d;
	logic [inputBits-1:0] pe_0_8_out_e;
	logic [outputBits-1:0] pe_0_8_out_w;
	logic [outputBits-1:0] pe_0_8_out_x;
	logic [outputBits-1:0] pe_0_8_out_y;
	logic [outputBits-1:0] pe_0_8_out_z;
	//pe 0 9
	logic [inputBits-1:0] pe_0_9_out_a;
	logic [inputBits-1:0] pe_0_9_out_b;
	logic [inputBits-1:0] pe_0_9_out_c;
	logic [inputBits-1:0] pe_0_9_out_d;
	logic [inputBits-1:0] pe_0_9_out_e;
	logic [outputBits-1:0] pe_0_9_out_w;
	logic [outputBits-1:0] pe_0_9_out_x;
	logic [outputBits-1:0] pe_0_9_out_y;
	logic [outputBits-1:0] pe_0_9_out_z;
	//pe 0 10
	logic [inputBits-1:0] pe_0_10_out_a;
	logic [inputBits-1:0] pe_0_10_out_b;
	logic [inputBits-1:0] pe_0_10_out_c;
	logic [inputBits-1:0] pe_0_10_out_d;
	logic [inputBits-1:0] pe_0_10_out_e;
	logic [outputBits-1:0] pe_0_10_out_w;
	logic [outputBits-1:0] pe_0_10_out_x;
	logic [outputBits-1:0] pe_0_10_out_y;
	logic [outputBits-1:0] pe_0_10_out_z;
	//pe 0 11
	logic [inputBits-1:0] pe_0_11_out_a;
	logic [inputBits-1:0] pe_0_11_out_b;
	logic [inputBits-1:0] pe_0_11_out_c;
	logic [inputBits-1:0] pe_0_11_out_d;
	logic [inputBits-1:0] pe_0_11_out_e;
	logic [outputBits-1:0] pe_0_11_out_w;
	logic [outputBits-1:0] pe_0_11_out_x;
	logic [outputBits-1:0] pe_0_11_out_y;
	logic [outputBits-1:0] pe_0_11_out_z;
	//pe 0 12
	logic [inputBits-1:0] pe_0_12_out_a;
	logic [inputBits-1:0] pe_0_12_out_b;
	logic [inputBits-1:0] pe_0_12_out_c;
	logic [inputBits-1:0] pe_0_12_out_d;
	logic [inputBits-1:0] pe_0_12_out_e;
	logic [outputBits-1:0] pe_0_12_out_w;
	logic [outputBits-1:0] pe_0_12_out_x;
	logic [outputBits-1:0] pe_0_12_out_y;
	logic [outputBits-1:0] pe_0_12_out_z;
	//pe 0 13
	logic [inputBits-1:0] pe_0_13_out_a;
	logic [inputBits-1:0] pe_0_13_out_b;
	logic [inputBits-1:0] pe_0_13_out_c;
	logic [inputBits-1:0] pe_0_13_out_d;
	logic [inputBits-1:0] pe_0_13_out_e;
	logic [outputBits-1:0] pe_0_13_out_w;
	logic [outputBits-1:0] pe_0_13_out_x;
	logic [outputBits-1:0] pe_0_13_out_y;
	logic [outputBits-1:0] pe_0_13_out_z;
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
	//pe 1 2
	logic [inputBits-1:0] pe_1_2_out_a;
	logic [inputBits-1:0] pe_1_2_out_b;
	logic [inputBits-1:0] pe_1_2_out_c;
	logic [inputBits-1:0] pe_1_2_out_d;
	logic [inputBits-1:0] pe_1_2_out_e;
	logic [outputBits-1:0] pe_1_2_out_w;
	logic [outputBits-1:0] pe_1_2_out_x;
	logic [outputBits-1:0] pe_1_2_out_y;
	logic [outputBits-1:0] pe_1_2_out_z;
	//pe 1 3
	logic [inputBits-1:0] pe_1_3_out_a;
	logic [inputBits-1:0] pe_1_3_out_b;
	logic [inputBits-1:0] pe_1_3_out_c;
	logic [inputBits-1:0] pe_1_3_out_d;
	logic [inputBits-1:0] pe_1_3_out_e;
	logic [outputBits-1:0] pe_1_3_out_w;
	logic [outputBits-1:0] pe_1_3_out_x;
	logic [outputBits-1:0] pe_1_3_out_y;
	logic [outputBits-1:0] pe_1_3_out_z;
	//pe 1 4
	logic [inputBits-1:0] pe_1_4_out_a;
	logic [inputBits-1:0] pe_1_4_out_b;
	logic [inputBits-1:0] pe_1_4_out_c;
	logic [inputBits-1:0] pe_1_4_out_d;
	logic [inputBits-1:0] pe_1_4_out_e;
	logic [outputBits-1:0] pe_1_4_out_w;
	logic [outputBits-1:0] pe_1_4_out_x;
	logic [outputBits-1:0] pe_1_4_out_y;
	logic [outputBits-1:0] pe_1_4_out_z;
	//pe 1 5
	logic [inputBits-1:0] pe_1_5_out_a;
	logic [inputBits-1:0] pe_1_5_out_b;
	logic [inputBits-1:0] pe_1_5_out_c;
	logic [inputBits-1:0] pe_1_5_out_d;
	logic [inputBits-1:0] pe_1_5_out_e;
	logic [outputBits-1:0] pe_1_5_out_w;
	logic [outputBits-1:0] pe_1_5_out_x;
	logic [outputBits-1:0] pe_1_5_out_y;
	logic [outputBits-1:0] pe_1_5_out_z;
	//pe 1 6
	logic [inputBits-1:0] pe_1_6_out_a;
	logic [inputBits-1:0] pe_1_6_out_b;
	logic [inputBits-1:0] pe_1_6_out_c;
	logic [inputBits-1:0] pe_1_6_out_d;
	logic [inputBits-1:0] pe_1_6_out_e;
	logic [outputBits-1:0] pe_1_6_out_w;
	logic [outputBits-1:0] pe_1_6_out_x;
	logic [outputBits-1:0] pe_1_6_out_y;
	logic [outputBits-1:0] pe_1_6_out_z;
	//pe 1 7
	logic [inputBits-1:0] pe_1_7_out_a;
	logic [inputBits-1:0] pe_1_7_out_b;
	logic [inputBits-1:0] pe_1_7_out_c;
	logic [inputBits-1:0] pe_1_7_out_d;
	logic [inputBits-1:0] pe_1_7_out_e;
	logic [outputBits-1:0] pe_1_7_out_w;
	logic [outputBits-1:0] pe_1_7_out_x;
	logic [outputBits-1:0] pe_1_7_out_y;
	logic [outputBits-1:0] pe_1_7_out_z;
	//pe 1 8
	logic [inputBits-1:0] pe_1_8_out_a;
	logic [inputBits-1:0] pe_1_8_out_b;
	logic [inputBits-1:0] pe_1_8_out_c;
	logic [inputBits-1:0] pe_1_8_out_d;
	logic [inputBits-1:0] pe_1_8_out_e;
	logic [outputBits-1:0] pe_1_8_out_w;
	logic [outputBits-1:0] pe_1_8_out_x;
	logic [outputBits-1:0] pe_1_8_out_y;
	logic [outputBits-1:0] pe_1_8_out_z;
	//pe 1 9
	logic [inputBits-1:0] pe_1_9_out_a;
	logic [inputBits-1:0] pe_1_9_out_b;
	logic [inputBits-1:0] pe_1_9_out_c;
	logic [inputBits-1:0] pe_1_9_out_d;
	logic [inputBits-1:0] pe_1_9_out_e;
	logic [outputBits-1:0] pe_1_9_out_w;
	logic [outputBits-1:0] pe_1_9_out_x;
	logic [outputBits-1:0] pe_1_9_out_y;
	logic [outputBits-1:0] pe_1_9_out_z;
	//pe 1 10
	logic [inputBits-1:0] pe_1_10_out_a;
	logic [inputBits-1:0] pe_1_10_out_b;
	logic [inputBits-1:0] pe_1_10_out_c;
	logic [inputBits-1:0] pe_1_10_out_d;
	logic [inputBits-1:0] pe_1_10_out_e;
	logic [outputBits-1:0] pe_1_10_out_w;
	logic [outputBits-1:0] pe_1_10_out_x;
	logic [outputBits-1:0] pe_1_10_out_y;
	logic [outputBits-1:0] pe_1_10_out_z;
	//pe 1 11
	logic [inputBits-1:0] pe_1_11_out_a;
	logic [inputBits-1:0] pe_1_11_out_b;
	logic [inputBits-1:0] pe_1_11_out_c;
	logic [inputBits-1:0] pe_1_11_out_d;
	logic [inputBits-1:0] pe_1_11_out_e;
	logic [outputBits-1:0] pe_1_11_out_w;
	logic [outputBits-1:0] pe_1_11_out_x;
	logic [outputBits-1:0] pe_1_11_out_y;
	logic [outputBits-1:0] pe_1_11_out_z;
	//pe 1 12
	logic [inputBits-1:0] pe_1_12_out_a;
	logic [inputBits-1:0] pe_1_12_out_b;
	logic [inputBits-1:0] pe_1_12_out_c;
	logic [inputBits-1:0] pe_1_12_out_d;
	logic [inputBits-1:0] pe_1_12_out_e;
	logic [outputBits-1:0] pe_1_12_out_w;
	logic [outputBits-1:0] pe_1_12_out_x;
	logic [outputBits-1:0] pe_1_12_out_y;
	logic [outputBits-1:0] pe_1_12_out_z;
	//pe 1 13
	logic [inputBits-1:0] pe_1_13_out_a;
	logic [inputBits-1:0] pe_1_13_out_b;
	logic [inputBits-1:0] pe_1_13_out_c;
	logic [inputBits-1:0] pe_1_13_out_d;
	logic [inputBits-1:0] pe_1_13_out_e;
	logic [outputBits-1:0] pe_1_13_out_w;
	logic [outputBits-1:0] pe_1_13_out_x;
	logic [outputBits-1:0] pe_1_13_out_y;
	logic [outputBits-1:0] pe_1_13_out_z;
	//line 2
	//pe 2 0
	logic [inputBits-1:0] pe_2_0_out_a;
	logic [inputBits-1:0] pe_2_0_out_b;
	logic [inputBits-1:0] pe_2_0_out_c;
	logic [inputBits-1:0] pe_2_0_out_d;
	logic [inputBits-1:0] pe_2_0_out_e;
	logic [outputBits-1:0] pe_2_0_out_w;
	logic [outputBits-1:0] pe_2_0_out_x;
	logic [outputBits-1:0] pe_2_0_out_y;
	logic [outputBits-1:0] pe_2_0_out_z;
	//pe 2 1
	logic [inputBits-1:0] pe_2_1_out_a;
	logic [inputBits-1:0] pe_2_1_out_b;
	logic [inputBits-1:0] pe_2_1_out_c;
	logic [inputBits-1:0] pe_2_1_out_d;
	logic [inputBits-1:0] pe_2_1_out_e;
	logic [outputBits-1:0] pe_2_1_out_w;
	logic [outputBits-1:0] pe_2_1_out_x;
	logic [outputBits-1:0] pe_2_1_out_y;
	logic [outputBits-1:0] pe_2_1_out_z;
	//pe 2 2
	logic [inputBits-1:0] pe_2_2_out_a;
	logic [inputBits-1:0] pe_2_2_out_b;
	logic [inputBits-1:0] pe_2_2_out_c;
	logic [inputBits-1:0] pe_2_2_out_d;
	logic [inputBits-1:0] pe_2_2_out_e;
	logic [outputBits-1:0] pe_2_2_out_w;
	logic [outputBits-1:0] pe_2_2_out_x;
	logic [outputBits-1:0] pe_2_2_out_y;
	logic [outputBits-1:0] pe_2_2_out_z;
	//pe 2 3
	logic [inputBits-1:0] pe_2_3_out_a;
	logic [inputBits-1:0] pe_2_3_out_b;
	logic [inputBits-1:0] pe_2_3_out_c;
	logic [inputBits-1:0] pe_2_3_out_d;
	logic [inputBits-1:0] pe_2_3_out_e;
	logic [outputBits-1:0] pe_2_3_out_w;
	logic [outputBits-1:0] pe_2_3_out_x;
	logic [outputBits-1:0] pe_2_3_out_y;
	logic [outputBits-1:0] pe_2_3_out_z;
	//pe 2 4
	logic [inputBits-1:0] pe_2_4_out_a;
	logic [inputBits-1:0] pe_2_4_out_b;
	logic [inputBits-1:0] pe_2_4_out_c;
	logic [inputBits-1:0] pe_2_4_out_d;
	logic [inputBits-1:0] pe_2_4_out_e;
	logic [outputBits-1:0] pe_2_4_out_w;
	logic [outputBits-1:0] pe_2_4_out_x;
	logic [outputBits-1:0] pe_2_4_out_y;
	logic [outputBits-1:0] pe_2_4_out_z;
	//pe 2 5
	logic [inputBits-1:0] pe_2_5_out_a;
	logic [inputBits-1:0] pe_2_5_out_b;
	logic [inputBits-1:0] pe_2_5_out_c;
	logic [inputBits-1:0] pe_2_5_out_d;
	logic [inputBits-1:0] pe_2_5_out_e;
	logic [outputBits-1:0] pe_2_5_out_w;
	logic [outputBits-1:0] pe_2_5_out_x;
	logic [outputBits-1:0] pe_2_5_out_y;
	logic [outputBits-1:0] pe_2_5_out_z;
	//pe 2 6
	logic [inputBits-1:0] pe_2_6_out_a;
	logic [inputBits-1:0] pe_2_6_out_b;
	logic [inputBits-1:0] pe_2_6_out_c;
	logic [inputBits-1:0] pe_2_6_out_d;
	logic [inputBits-1:0] pe_2_6_out_e;
	logic [outputBits-1:0] pe_2_6_out_w;
	logic [outputBits-1:0] pe_2_6_out_x;
	logic [outputBits-1:0] pe_2_6_out_y;
	logic [outputBits-1:0] pe_2_6_out_z;
	//pe 2 7
	logic [inputBits-1:0] pe_2_7_out_a;
	logic [inputBits-1:0] pe_2_7_out_b;
	logic [inputBits-1:0] pe_2_7_out_c;
	logic [inputBits-1:0] pe_2_7_out_d;
	logic [inputBits-1:0] pe_2_7_out_e;
	logic [outputBits-1:0] pe_2_7_out_w;
	logic [outputBits-1:0] pe_2_7_out_x;
	logic [outputBits-1:0] pe_2_7_out_y;
	logic [outputBits-1:0] pe_2_7_out_z;
	//pe 2 8
	logic [inputBits-1:0] pe_2_8_out_a;
	logic [inputBits-1:0] pe_2_8_out_b;
	logic [inputBits-1:0] pe_2_8_out_c;
	logic [inputBits-1:0] pe_2_8_out_d;
	logic [inputBits-1:0] pe_2_8_out_e;
	logic [outputBits-1:0] pe_2_8_out_w;
	logic [outputBits-1:0] pe_2_8_out_x;
	logic [outputBits-1:0] pe_2_8_out_y;
	logic [outputBits-1:0] pe_2_8_out_z;
	//pe 2 9
	logic [inputBits-1:0] pe_2_9_out_a;
	logic [inputBits-1:0] pe_2_9_out_b;
	logic [inputBits-1:0] pe_2_9_out_c;
	logic [inputBits-1:0] pe_2_9_out_d;
	logic [inputBits-1:0] pe_2_9_out_e;
	logic [outputBits-1:0] pe_2_9_out_w;
	logic [outputBits-1:0] pe_2_9_out_x;
	logic [outputBits-1:0] pe_2_9_out_y;
	logic [outputBits-1:0] pe_2_9_out_z;
	//pe 2 10
	logic [inputBits-1:0] pe_2_10_out_a;
	logic [inputBits-1:0] pe_2_10_out_b;
	logic [inputBits-1:0] pe_2_10_out_c;
	logic [inputBits-1:0] pe_2_10_out_d;
	logic [inputBits-1:0] pe_2_10_out_e;
	logic [outputBits-1:0] pe_2_10_out_w;
	logic [outputBits-1:0] pe_2_10_out_x;
	logic [outputBits-1:0] pe_2_10_out_y;
	logic [outputBits-1:0] pe_2_10_out_z;
	//pe 2 11
	logic [inputBits-1:0] pe_2_11_out_a;
	logic [inputBits-1:0] pe_2_11_out_b;
	logic [inputBits-1:0] pe_2_11_out_c;
	logic [inputBits-1:0] pe_2_11_out_d;
	logic [inputBits-1:0] pe_2_11_out_e;
	logic [outputBits-1:0] pe_2_11_out_w;
	logic [outputBits-1:0] pe_2_11_out_x;
	logic [outputBits-1:0] pe_2_11_out_y;
	logic [outputBits-1:0] pe_2_11_out_z;
	//pe 2 12
	logic [inputBits-1:0] pe_2_12_out_a;
	logic [inputBits-1:0] pe_2_12_out_b;
	logic [inputBits-1:0] pe_2_12_out_c;
	logic [inputBits-1:0] pe_2_12_out_d;
	logic [inputBits-1:0] pe_2_12_out_e;
	logic [outputBits-1:0] pe_2_12_out_w;
	logic [outputBits-1:0] pe_2_12_out_x;
	logic [outputBits-1:0] pe_2_12_out_y;
	logic [outputBits-1:0] pe_2_12_out_z;
	//pe 2 13
	logic [inputBits-1:0] pe_2_13_out_a;
	logic [inputBits-1:0] pe_2_13_out_b;
	logic [inputBits-1:0] pe_2_13_out_c;
	logic [inputBits-1:0] pe_2_13_out_d;
	logic [inputBits-1:0] pe_2_13_out_e;
	logic [outputBits-1:0] pe_2_13_out_w;
	logic [outputBits-1:0] pe_2_13_out_x;
	logic [outputBits-1:0] pe_2_13_out_y;
	logic [outputBits-1:0] pe_2_13_out_z;
	//line 3
	//pe 3 0
	logic [inputBits-1:0] pe_3_0_out_a;
	logic [inputBits-1:0] pe_3_0_out_b;
	logic [inputBits-1:0] pe_3_0_out_c;
	logic [inputBits-1:0] pe_3_0_out_d;
	logic [inputBits-1:0] pe_3_0_out_e;
	logic [outputBits-1:0] pe_3_0_out_w;
	logic [outputBits-1:0] pe_3_0_out_x;
	logic [outputBits-1:0] pe_3_0_out_y;
	logic [outputBits-1:0] pe_3_0_out_z;
	//pe 3 1
	logic [inputBits-1:0] pe_3_1_out_a;
	logic [inputBits-1:0] pe_3_1_out_b;
	logic [inputBits-1:0] pe_3_1_out_c;
	logic [inputBits-1:0] pe_3_1_out_d;
	logic [inputBits-1:0] pe_3_1_out_e;
	logic [outputBits-1:0] pe_3_1_out_w;
	logic [outputBits-1:0] pe_3_1_out_x;
	logic [outputBits-1:0] pe_3_1_out_y;
	logic [outputBits-1:0] pe_3_1_out_z;
	//pe 3 2
	logic [inputBits-1:0] pe_3_2_out_a;
	logic [inputBits-1:0] pe_3_2_out_b;
	logic [inputBits-1:0] pe_3_2_out_c;
	logic [inputBits-1:0] pe_3_2_out_d;
	logic [inputBits-1:0] pe_3_2_out_e;
	logic [outputBits-1:0] pe_3_2_out_w;
	logic [outputBits-1:0] pe_3_2_out_x;
	logic [outputBits-1:0] pe_3_2_out_y;
	logic [outputBits-1:0] pe_3_2_out_z;
	//pe 3 3
	logic [inputBits-1:0] pe_3_3_out_a;
	logic [inputBits-1:0] pe_3_3_out_b;
	logic [inputBits-1:0] pe_3_3_out_c;
	logic [inputBits-1:0] pe_3_3_out_d;
	logic [inputBits-1:0] pe_3_3_out_e;
	logic [outputBits-1:0] pe_3_3_out_w;
	logic [outputBits-1:0] pe_3_3_out_x;
	logic [outputBits-1:0] pe_3_3_out_y;
	logic [outputBits-1:0] pe_3_3_out_z;
	//pe 3 4
	logic [inputBits-1:0] pe_3_4_out_a;
	logic [inputBits-1:0] pe_3_4_out_b;
	logic [inputBits-1:0] pe_3_4_out_c;
	logic [inputBits-1:0] pe_3_4_out_d;
	logic [inputBits-1:0] pe_3_4_out_e;
	logic [outputBits-1:0] pe_3_4_out_w;
	logic [outputBits-1:0] pe_3_4_out_x;
	logic [outputBits-1:0] pe_3_4_out_y;
	logic [outputBits-1:0] pe_3_4_out_z;
	//pe 3 5
	logic [inputBits-1:0] pe_3_5_out_a;
	logic [inputBits-1:0] pe_3_5_out_b;
	logic [inputBits-1:0] pe_3_5_out_c;
	logic [inputBits-1:0] pe_3_5_out_d;
	logic [inputBits-1:0] pe_3_5_out_e;
	logic [outputBits-1:0] pe_3_5_out_w;
	logic [outputBits-1:0] pe_3_5_out_x;
	logic [outputBits-1:0] pe_3_5_out_y;
	logic [outputBits-1:0] pe_3_5_out_z;
	//pe 3 6
	logic [inputBits-1:0] pe_3_6_out_a;
	logic [inputBits-1:0] pe_3_6_out_b;
	logic [inputBits-1:0] pe_3_6_out_c;
	logic [inputBits-1:0] pe_3_6_out_d;
	logic [inputBits-1:0] pe_3_6_out_e;
	logic [outputBits-1:0] pe_3_6_out_w;
	logic [outputBits-1:0] pe_3_6_out_x;
	logic [outputBits-1:0] pe_3_6_out_y;
	logic [outputBits-1:0] pe_3_6_out_z;
	//pe 3 7
	logic [inputBits-1:0] pe_3_7_out_a;
	logic [inputBits-1:0] pe_3_7_out_b;
	logic [inputBits-1:0] pe_3_7_out_c;
	logic [inputBits-1:0] pe_3_7_out_d;
	logic [inputBits-1:0] pe_3_7_out_e;
	logic [outputBits-1:0] pe_3_7_out_w;
	logic [outputBits-1:0] pe_3_7_out_x;
	logic [outputBits-1:0] pe_3_7_out_y;
	logic [outputBits-1:0] pe_3_7_out_z;
	//pe 3 8
	logic [inputBits-1:0] pe_3_8_out_a;
	logic [inputBits-1:0] pe_3_8_out_b;
	logic [inputBits-1:0] pe_3_8_out_c;
	logic [inputBits-1:0] pe_3_8_out_d;
	logic [inputBits-1:0] pe_3_8_out_e;
	logic [outputBits-1:0] pe_3_8_out_w;
	logic [outputBits-1:0] pe_3_8_out_x;
	logic [outputBits-1:0] pe_3_8_out_y;
	logic [outputBits-1:0] pe_3_8_out_z;
	//pe 3 9
	logic [inputBits-1:0] pe_3_9_out_a;
	logic [inputBits-1:0] pe_3_9_out_b;
	logic [inputBits-1:0] pe_3_9_out_c;
	logic [inputBits-1:0] pe_3_9_out_d;
	logic [inputBits-1:0] pe_3_9_out_e;
	logic [outputBits-1:0] pe_3_9_out_w;
	logic [outputBits-1:0] pe_3_9_out_x;
	logic [outputBits-1:0] pe_3_9_out_y;
	logic [outputBits-1:0] pe_3_9_out_z;
	//pe 3 10
	logic [inputBits-1:0] pe_3_10_out_a;
	logic [inputBits-1:0] pe_3_10_out_b;
	logic [inputBits-1:0] pe_3_10_out_c;
	logic [inputBits-1:0] pe_3_10_out_d;
	logic [inputBits-1:0] pe_3_10_out_e;
	logic [outputBits-1:0] pe_3_10_out_w;
	logic [outputBits-1:0] pe_3_10_out_x;
	logic [outputBits-1:0] pe_3_10_out_y;
	logic [outputBits-1:0] pe_3_10_out_z;
	//pe 3 11
	logic [inputBits-1:0] pe_3_11_out_a;
	logic [inputBits-1:0] pe_3_11_out_b;
	logic [inputBits-1:0] pe_3_11_out_c;
	logic [inputBits-1:0] pe_3_11_out_d;
	logic [inputBits-1:0] pe_3_11_out_e;
	logic [outputBits-1:0] pe_3_11_out_w;
	logic [outputBits-1:0] pe_3_11_out_x;
	logic [outputBits-1:0] pe_3_11_out_y;
	logic [outputBits-1:0] pe_3_11_out_z;
	//pe 3 12
	logic [inputBits-1:0] pe_3_12_out_a;
	logic [inputBits-1:0] pe_3_12_out_b;
	logic [inputBits-1:0] pe_3_12_out_c;
	logic [inputBits-1:0] pe_3_12_out_d;
	logic [inputBits-1:0] pe_3_12_out_e;
	logic [outputBits-1:0] pe_3_12_out_w;
	logic [outputBits-1:0] pe_3_12_out_x;
	logic [outputBits-1:0] pe_3_12_out_y;
	logic [outputBits-1:0] pe_3_12_out_z;
	//pe 3 13
	logic [inputBits-1:0] pe_3_13_out_a;
	logic [inputBits-1:0] pe_3_13_out_b;
	logic [inputBits-1:0] pe_3_13_out_c;
	logic [inputBits-1:0] pe_3_13_out_d;
	logic [inputBits-1:0] pe_3_13_out_e;
	logic [outputBits-1:0] pe_3_13_out_w;
	logic [outputBits-1:0] pe_3_13_out_x;
	logic [outputBits-1:0] pe_3_13_out_y;
	logic [outputBits-1:0] pe_3_13_out_z;
	//line 4
	//pe 4 0
	logic [inputBits-1:0] pe_4_0_out_a;
	logic [inputBits-1:0] pe_4_0_out_b;
	logic [inputBits-1:0] pe_4_0_out_c;
	logic [inputBits-1:0] pe_4_0_out_d;
	logic [inputBits-1:0] pe_4_0_out_e;
	logic [outputBits-1:0] pe_4_0_out_w;
	logic [outputBits-1:0] pe_4_0_out_x;
	logic [outputBits-1:0] pe_4_0_out_y;
	logic [outputBits-1:0] pe_4_0_out_z;
	//pe 4 1
	logic [inputBits-1:0] pe_4_1_out_a;
	logic [inputBits-1:0] pe_4_1_out_b;
	logic [inputBits-1:0] pe_4_1_out_c;
	logic [inputBits-1:0] pe_4_1_out_d;
	logic [inputBits-1:0] pe_4_1_out_e;
	logic [outputBits-1:0] pe_4_1_out_w;
	logic [outputBits-1:0] pe_4_1_out_x;
	logic [outputBits-1:0] pe_4_1_out_y;
	logic [outputBits-1:0] pe_4_1_out_z;
	//pe 4 2
	logic [inputBits-1:0] pe_4_2_out_a;
	logic [inputBits-1:0] pe_4_2_out_b;
	logic [inputBits-1:0] pe_4_2_out_c;
	logic [inputBits-1:0] pe_4_2_out_d;
	logic [inputBits-1:0] pe_4_2_out_e;
	logic [outputBits-1:0] pe_4_2_out_w;
	logic [outputBits-1:0] pe_4_2_out_x;
	logic [outputBits-1:0] pe_4_2_out_y;
	logic [outputBits-1:0] pe_4_2_out_z;
	//pe 4 3
	logic [inputBits-1:0] pe_4_3_out_a;
	logic [inputBits-1:0] pe_4_3_out_b;
	logic [inputBits-1:0] pe_4_3_out_c;
	logic [inputBits-1:0] pe_4_3_out_d;
	logic [inputBits-1:0] pe_4_3_out_e;
	logic [outputBits-1:0] pe_4_3_out_w;
	logic [outputBits-1:0] pe_4_3_out_x;
	logic [outputBits-1:0] pe_4_3_out_y;
	logic [outputBits-1:0] pe_4_3_out_z;
	//pe 4 4
	logic [inputBits-1:0] pe_4_4_out_a;
	logic [inputBits-1:0] pe_4_4_out_b;
	logic [inputBits-1:0] pe_4_4_out_c;
	logic [inputBits-1:0] pe_4_4_out_d;
	logic [inputBits-1:0] pe_4_4_out_e;
	logic [outputBits-1:0] pe_4_4_out_w;
	logic [outputBits-1:0] pe_4_4_out_x;
	logic [outputBits-1:0] pe_4_4_out_y;
	logic [outputBits-1:0] pe_4_4_out_z;
	//pe 4 5
	logic [inputBits-1:0] pe_4_5_out_a;
	logic [inputBits-1:0] pe_4_5_out_b;
	logic [inputBits-1:0] pe_4_5_out_c;
	logic [inputBits-1:0] pe_4_5_out_d;
	logic [inputBits-1:0] pe_4_5_out_e;
	logic [outputBits-1:0] pe_4_5_out_w;
	logic [outputBits-1:0] pe_4_5_out_x;
	logic [outputBits-1:0] pe_4_5_out_y;
	logic [outputBits-1:0] pe_4_5_out_z;
	//pe 4 6
	logic [inputBits-1:0] pe_4_6_out_a;
	logic [inputBits-1:0] pe_4_6_out_b;
	logic [inputBits-1:0] pe_4_6_out_c;
	logic [inputBits-1:0] pe_4_6_out_d;
	logic [inputBits-1:0] pe_4_6_out_e;
	logic [outputBits-1:0] pe_4_6_out_w;
	logic [outputBits-1:0] pe_4_6_out_x;
	logic [outputBits-1:0] pe_4_6_out_y;
	logic [outputBits-1:0] pe_4_6_out_z;
	//pe 4 7
	logic [inputBits-1:0] pe_4_7_out_a;
	logic [inputBits-1:0] pe_4_7_out_b;
	logic [inputBits-1:0] pe_4_7_out_c;
	logic [inputBits-1:0] pe_4_7_out_d;
	logic [inputBits-1:0] pe_4_7_out_e;
	logic [outputBits-1:0] pe_4_7_out_w;
	logic [outputBits-1:0] pe_4_7_out_x;
	logic [outputBits-1:0] pe_4_7_out_y;
	logic [outputBits-1:0] pe_4_7_out_z;
	//pe 4 8
	logic [inputBits-1:0] pe_4_8_out_a;
	logic [inputBits-1:0] pe_4_8_out_b;
	logic [inputBits-1:0] pe_4_8_out_c;
	logic [inputBits-1:0] pe_4_8_out_d;
	logic [inputBits-1:0] pe_4_8_out_e;
	logic [outputBits-1:0] pe_4_8_out_w;
	logic [outputBits-1:0] pe_4_8_out_x;
	logic [outputBits-1:0] pe_4_8_out_y;
	logic [outputBits-1:0] pe_4_8_out_z;
	//pe 4 9
	logic [inputBits-1:0] pe_4_9_out_a;
	logic [inputBits-1:0] pe_4_9_out_b;
	logic [inputBits-1:0] pe_4_9_out_c;
	logic [inputBits-1:0] pe_4_9_out_d;
	logic [inputBits-1:0] pe_4_9_out_e;
	logic [outputBits-1:0] pe_4_9_out_w;
	logic [outputBits-1:0] pe_4_9_out_x;
	logic [outputBits-1:0] pe_4_9_out_y;
	logic [outputBits-1:0] pe_4_9_out_z;
	//pe 4 10
	logic [inputBits-1:0] pe_4_10_out_a;
	logic [inputBits-1:0] pe_4_10_out_b;
	logic [inputBits-1:0] pe_4_10_out_c;
	logic [inputBits-1:0] pe_4_10_out_d;
	logic [inputBits-1:0] pe_4_10_out_e;
	logic [outputBits-1:0] pe_4_10_out_w;
	logic [outputBits-1:0] pe_4_10_out_x;
	logic [outputBits-1:0] pe_4_10_out_y;
	logic [outputBits-1:0] pe_4_10_out_z;
	//pe 4 11
	logic [inputBits-1:0] pe_4_11_out_a;
	logic [inputBits-1:0] pe_4_11_out_b;
	logic [inputBits-1:0] pe_4_11_out_c;
	logic [inputBits-1:0] pe_4_11_out_d;
	logic [inputBits-1:0] pe_4_11_out_e;
	logic [outputBits-1:0] pe_4_11_out_w;
	logic [outputBits-1:0] pe_4_11_out_x;
	logic [outputBits-1:0] pe_4_11_out_y;
	logic [outputBits-1:0] pe_4_11_out_z;
	//pe 4 12
	logic [inputBits-1:0] pe_4_12_out_a;
	logic [inputBits-1:0] pe_4_12_out_b;
	logic [inputBits-1:0] pe_4_12_out_c;
	logic [inputBits-1:0] pe_4_12_out_d;
	logic [inputBits-1:0] pe_4_12_out_e;
	logic [outputBits-1:0] pe_4_12_out_w;
	logic [outputBits-1:0] pe_4_12_out_x;
	logic [outputBits-1:0] pe_4_12_out_y;
	logic [outputBits-1:0] pe_4_12_out_z;
	//pe 4 13
	logic [inputBits-1:0] pe_4_13_out_a;
	logic [inputBits-1:0] pe_4_13_out_b;
	logic [inputBits-1:0] pe_4_13_out_c;
	logic [inputBits-1:0] pe_4_13_out_d;
	logic [inputBits-1:0] pe_4_13_out_e;
	logic [outputBits-1:0] pe_4_13_out_w;
	logic [outputBits-1:0] pe_4_13_out_x;
	logic [outputBits-1:0] pe_4_13_out_y;
	logic [outputBits-1:0] pe_4_13_out_z;
	//line 5
	//pe 5 0
	logic [inputBits-1:0] pe_5_0_out_a;
	logic [inputBits-1:0] pe_5_0_out_b;
	logic [inputBits-1:0] pe_5_0_out_c;
	logic [inputBits-1:0] pe_5_0_out_d;
	logic [inputBits-1:0] pe_5_0_out_e;
	logic [outputBits-1:0] pe_5_0_out_w;
	logic [outputBits-1:0] pe_5_0_out_x;
	logic [outputBits-1:0] pe_5_0_out_y;
	logic [outputBits-1:0] pe_5_0_out_z;
	//pe 5 1
	logic [inputBits-1:0] pe_5_1_out_a;
	logic [inputBits-1:0] pe_5_1_out_b;
	logic [inputBits-1:0] pe_5_1_out_c;
	logic [inputBits-1:0] pe_5_1_out_d;
	logic [inputBits-1:0] pe_5_1_out_e;
	logic [outputBits-1:0] pe_5_1_out_w;
	logic [outputBits-1:0] pe_5_1_out_x;
	logic [outputBits-1:0] pe_5_1_out_y;
	logic [outputBits-1:0] pe_5_1_out_z;
	//pe 5 2
	logic [inputBits-1:0] pe_5_2_out_a;
	logic [inputBits-1:0] pe_5_2_out_b;
	logic [inputBits-1:0] pe_5_2_out_c;
	logic [inputBits-1:0] pe_5_2_out_d;
	logic [inputBits-1:0] pe_5_2_out_e;
	logic [outputBits-1:0] pe_5_2_out_w;
	logic [outputBits-1:0] pe_5_2_out_x;
	logic [outputBits-1:0] pe_5_2_out_y;
	logic [outputBits-1:0] pe_5_2_out_z;
	//pe 5 3
	logic [inputBits-1:0] pe_5_3_out_a;
	logic [inputBits-1:0] pe_5_3_out_b;
	logic [inputBits-1:0] pe_5_3_out_c;
	logic [inputBits-1:0] pe_5_3_out_d;
	logic [inputBits-1:0] pe_5_3_out_e;
	logic [outputBits-1:0] pe_5_3_out_w;
	logic [outputBits-1:0] pe_5_3_out_x;
	logic [outputBits-1:0] pe_5_3_out_y;
	logic [outputBits-1:0] pe_5_3_out_z;
	//pe 5 4
	logic [inputBits-1:0] pe_5_4_out_a;
	logic [inputBits-1:0] pe_5_4_out_b;
	logic [inputBits-1:0] pe_5_4_out_c;
	logic [inputBits-1:0] pe_5_4_out_d;
	logic [inputBits-1:0] pe_5_4_out_e;
	logic [outputBits-1:0] pe_5_4_out_w;
	logic [outputBits-1:0] pe_5_4_out_x;
	logic [outputBits-1:0] pe_5_4_out_y;
	logic [outputBits-1:0] pe_5_4_out_z;
	//pe 5 5
	logic [inputBits-1:0] pe_5_5_out_a;
	logic [inputBits-1:0] pe_5_5_out_b;
	logic [inputBits-1:0] pe_5_5_out_c;
	logic [inputBits-1:0] pe_5_5_out_d;
	logic [inputBits-1:0] pe_5_5_out_e;
	logic [outputBits-1:0] pe_5_5_out_w;
	logic [outputBits-1:0] pe_5_5_out_x;
	logic [outputBits-1:0] pe_5_5_out_y;
	logic [outputBits-1:0] pe_5_5_out_z;
	//pe 5 6
	logic [inputBits-1:0] pe_5_6_out_a;
	logic [inputBits-1:0] pe_5_6_out_b;
	logic [inputBits-1:0] pe_5_6_out_c;
	logic [inputBits-1:0] pe_5_6_out_d;
	logic [inputBits-1:0] pe_5_6_out_e;
	logic [outputBits-1:0] pe_5_6_out_w;
	logic [outputBits-1:0] pe_5_6_out_x;
	logic [outputBits-1:0] pe_5_6_out_y;
	logic [outputBits-1:0] pe_5_6_out_z;
	//pe 5 7
	logic [inputBits-1:0] pe_5_7_out_a;
	logic [inputBits-1:0] pe_5_7_out_b;
	logic [inputBits-1:0] pe_5_7_out_c;
	logic [inputBits-1:0] pe_5_7_out_d;
	logic [inputBits-1:0] pe_5_7_out_e;
	logic [outputBits-1:0] pe_5_7_out_w;
	logic [outputBits-1:0] pe_5_7_out_x;
	logic [outputBits-1:0] pe_5_7_out_y;
	logic [outputBits-1:0] pe_5_7_out_z;
	//pe 5 8
	logic [inputBits-1:0] pe_5_8_out_a;
	logic [inputBits-1:0] pe_5_8_out_b;
	logic [inputBits-1:0] pe_5_8_out_c;
	logic [inputBits-1:0] pe_5_8_out_d;
	logic [inputBits-1:0] pe_5_8_out_e;
	logic [outputBits-1:0] pe_5_8_out_w;
	logic [outputBits-1:0] pe_5_8_out_x;
	logic [outputBits-1:0] pe_5_8_out_y;
	logic [outputBits-1:0] pe_5_8_out_z;
	//pe 5 9
	logic [inputBits-1:0] pe_5_9_out_a;
	logic [inputBits-1:0] pe_5_9_out_b;
	logic [inputBits-1:0] pe_5_9_out_c;
	logic [inputBits-1:0] pe_5_9_out_d;
	logic [inputBits-1:0] pe_5_9_out_e;
	logic [outputBits-1:0] pe_5_9_out_w;
	logic [outputBits-1:0] pe_5_9_out_x;
	logic [outputBits-1:0] pe_5_9_out_y;
	logic [outputBits-1:0] pe_5_9_out_z;
	//pe 5 10
	logic [inputBits-1:0] pe_5_10_out_a;
	logic [inputBits-1:0] pe_5_10_out_b;
	logic [inputBits-1:0] pe_5_10_out_c;
	logic [inputBits-1:0] pe_5_10_out_d;
	logic [inputBits-1:0] pe_5_10_out_e;
	logic [outputBits-1:0] pe_5_10_out_w;
	logic [outputBits-1:0] pe_5_10_out_x;
	logic [outputBits-1:0] pe_5_10_out_y;
	logic [outputBits-1:0] pe_5_10_out_z;
	//pe 5 11
	logic [inputBits-1:0] pe_5_11_out_a;
	logic [inputBits-1:0] pe_5_11_out_b;
	logic [inputBits-1:0] pe_5_11_out_c;
	logic [inputBits-1:0] pe_5_11_out_d;
	logic [inputBits-1:0] pe_5_11_out_e;
	logic [outputBits-1:0] pe_5_11_out_w;
	logic [outputBits-1:0] pe_5_11_out_x;
	logic [outputBits-1:0] pe_5_11_out_y;
	logic [outputBits-1:0] pe_5_11_out_z;
	//pe 5 12
	logic [inputBits-1:0] pe_5_12_out_a;
	logic [inputBits-1:0] pe_5_12_out_b;
	logic [inputBits-1:0] pe_5_12_out_c;
	logic [inputBits-1:0] pe_5_12_out_d;
	logic [inputBits-1:0] pe_5_12_out_e;
	logic [outputBits-1:0] pe_5_12_out_w;
	logic [outputBits-1:0] pe_5_12_out_x;
	logic [outputBits-1:0] pe_5_12_out_y;
	logic [outputBits-1:0] pe_5_12_out_z;
	//pe 5 13
	logic [inputBits-1:0] pe_5_13_out_a;
	logic [inputBits-1:0] pe_5_13_out_b;
	logic [inputBits-1:0] pe_5_13_out_c;
	logic [inputBits-1:0] pe_5_13_out_d;
	logic [inputBits-1:0] pe_5_13_out_e;
	logic [outputBits-1:0] pe_5_13_out_w;
	logic [outputBits-1:0] pe_5_13_out_x;
	logic [outputBits-1:0] pe_5_13_out_y;
	logic [outputBits-1:0] pe_5_13_out_z;
	//line 6
	//pe 6 0
	logic [inputBits-1:0] pe_6_0_out_a;
	logic [inputBits-1:0] pe_6_0_out_b;
	logic [inputBits-1:0] pe_6_0_out_c;
	logic [inputBits-1:0] pe_6_0_out_d;
	logic [inputBits-1:0] pe_6_0_out_e;
	logic [outputBits-1:0] pe_6_0_out_w;
	logic [outputBits-1:0] pe_6_0_out_x;
	logic [outputBits-1:0] pe_6_0_out_y;
	logic [outputBits-1:0] pe_6_0_out_z;
	//pe 6 1
	logic [inputBits-1:0] pe_6_1_out_a;
	logic [inputBits-1:0] pe_6_1_out_b;
	logic [inputBits-1:0] pe_6_1_out_c;
	logic [inputBits-1:0] pe_6_1_out_d;
	logic [inputBits-1:0] pe_6_1_out_e;
	logic [outputBits-1:0] pe_6_1_out_w;
	logic [outputBits-1:0] pe_6_1_out_x;
	logic [outputBits-1:0] pe_6_1_out_y;
	logic [outputBits-1:0] pe_6_1_out_z;
	//pe 6 2
	logic [inputBits-1:0] pe_6_2_out_a;
	logic [inputBits-1:0] pe_6_2_out_b;
	logic [inputBits-1:0] pe_6_2_out_c;
	logic [inputBits-1:0] pe_6_2_out_d;
	logic [inputBits-1:0] pe_6_2_out_e;
	logic [outputBits-1:0] pe_6_2_out_w;
	logic [outputBits-1:0] pe_6_2_out_x;
	logic [outputBits-1:0] pe_6_2_out_y;
	logic [outputBits-1:0] pe_6_2_out_z;
	//pe 6 3
	logic [inputBits-1:0] pe_6_3_out_a;
	logic [inputBits-1:0] pe_6_3_out_b;
	logic [inputBits-1:0] pe_6_3_out_c;
	logic [inputBits-1:0] pe_6_3_out_d;
	logic [inputBits-1:0] pe_6_3_out_e;
	logic [outputBits-1:0] pe_6_3_out_w;
	logic [outputBits-1:0] pe_6_3_out_x;
	logic [outputBits-1:0] pe_6_3_out_y;
	logic [outputBits-1:0] pe_6_3_out_z;
	//pe 6 4
	logic [inputBits-1:0] pe_6_4_out_a;
	logic [inputBits-1:0] pe_6_4_out_b;
	logic [inputBits-1:0] pe_6_4_out_c;
	logic [inputBits-1:0] pe_6_4_out_d;
	logic [inputBits-1:0] pe_6_4_out_e;
	logic [outputBits-1:0] pe_6_4_out_w;
	logic [outputBits-1:0] pe_6_4_out_x;
	logic [outputBits-1:0] pe_6_4_out_y;
	logic [outputBits-1:0] pe_6_4_out_z;
	//pe 6 5
	logic [inputBits-1:0] pe_6_5_out_a;
	logic [inputBits-1:0] pe_6_5_out_b;
	logic [inputBits-1:0] pe_6_5_out_c;
	logic [inputBits-1:0] pe_6_5_out_d;
	logic [inputBits-1:0] pe_6_5_out_e;
	logic [outputBits-1:0] pe_6_5_out_w;
	logic [outputBits-1:0] pe_6_5_out_x;
	logic [outputBits-1:0] pe_6_5_out_y;
	logic [outputBits-1:0] pe_6_5_out_z;
	//pe 6 6
	logic [inputBits-1:0] pe_6_6_out_a;
	logic [inputBits-1:0] pe_6_6_out_b;
	logic [inputBits-1:0] pe_6_6_out_c;
	logic [inputBits-1:0] pe_6_6_out_d;
	logic [inputBits-1:0] pe_6_6_out_e;
	logic [outputBits-1:0] pe_6_6_out_w;
	logic [outputBits-1:0] pe_6_6_out_x;
	logic [outputBits-1:0] pe_6_6_out_y;
	logic [outputBits-1:0] pe_6_6_out_z;
	//pe 6 7
	logic [inputBits-1:0] pe_6_7_out_a;
	logic [inputBits-1:0] pe_6_7_out_b;
	logic [inputBits-1:0] pe_6_7_out_c;
	logic [inputBits-1:0] pe_6_7_out_d;
	logic [inputBits-1:0] pe_6_7_out_e;
	logic [outputBits-1:0] pe_6_7_out_w;
	logic [outputBits-1:0] pe_6_7_out_x;
	logic [outputBits-1:0] pe_6_7_out_y;
	logic [outputBits-1:0] pe_6_7_out_z;
	//pe 6 8
	logic [inputBits-1:0] pe_6_8_out_a;
	logic [inputBits-1:0] pe_6_8_out_b;
	logic [inputBits-1:0] pe_6_8_out_c;
	logic [inputBits-1:0] pe_6_8_out_d;
	logic [inputBits-1:0] pe_6_8_out_e;
	logic [outputBits-1:0] pe_6_8_out_w;
	logic [outputBits-1:0] pe_6_8_out_x;
	logic [outputBits-1:0] pe_6_8_out_y;
	logic [outputBits-1:0] pe_6_8_out_z;
	//pe 6 9
	logic [inputBits-1:0] pe_6_9_out_a;
	logic [inputBits-1:0] pe_6_9_out_b;
	logic [inputBits-1:0] pe_6_9_out_c;
	logic [inputBits-1:0] pe_6_9_out_d;
	logic [inputBits-1:0] pe_6_9_out_e;
	logic [outputBits-1:0] pe_6_9_out_w;
	logic [outputBits-1:0] pe_6_9_out_x;
	logic [outputBits-1:0] pe_6_9_out_y;
	logic [outputBits-1:0] pe_6_9_out_z;
	//pe 6 10
	logic [inputBits-1:0] pe_6_10_out_a;
	logic [inputBits-1:0] pe_6_10_out_b;
	logic [inputBits-1:0] pe_6_10_out_c;
	logic [inputBits-1:0] pe_6_10_out_d;
	logic [inputBits-1:0] pe_6_10_out_e;
	logic [outputBits-1:0] pe_6_10_out_w;
	logic [outputBits-1:0] pe_6_10_out_x;
	logic [outputBits-1:0] pe_6_10_out_y;
	logic [outputBits-1:0] pe_6_10_out_z;
	//pe 6 11
	logic [inputBits-1:0] pe_6_11_out_a;
	logic [inputBits-1:0] pe_6_11_out_b;
	logic [inputBits-1:0] pe_6_11_out_c;
	logic [inputBits-1:0] pe_6_11_out_d;
	logic [inputBits-1:0] pe_6_11_out_e;
	logic [outputBits-1:0] pe_6_11_out_w;
	logic [outputBits-1:0] pe_6_11_out_x;
	logic [outputBits-1:0] pe_6_11_out_y;
	logic [outputBits-1:0] pe_6_11_out_z;
	//pe 6 12
	logic [inputBits-1:0] pe_6_12_out_a;
	logic [inputBits-1:0] pe_6_12_out_b;
	logic [inputBits-1:0] pe_6_12_out_c;
	logic [inputBits-1:0] pe_6_12_out_d;
	logic [inputBits-1:0] pe_6_12_out_e;
	logic [outputBits-1:0] pe_6_12_out_w;
	logic [outputBits-1:0] pe_6_12_out_x;
	logic [outputBits-1:0] pe_6_12_out_y;
	logic [outputBits-1:0] pe_6_12_out_z;
	//pe 6 13
	logic [inputBits-1:0] pe_6_13_out_a;
	logic [inputBits-1:0] pe_6_13_out_b;
	logic [inputBits-1:0] pe_6_13_out_c;
	logic [inputBits-1:0] pe_6_13_out_d;
	logic [inputBits-1:0] pe_6_13_out_e;
	logic [outputBits-1:0] pe_6_13_out_w;
	logic [outputBits-1:0] pe_6_13_out_x;
	logic [outputBits-1:0] pe_6_13_out_y;
	logic [outputBits-1:0] pe_6_13_out_z;
	//line 7
	//pe 7 0
	logic [inputBits-1:0] pe_7_0_out_a;
	logic [inputBits-1:0] pe_7_0_out_b;
	logic [inputBits-1:0] pe_7_0_out_c;
	logic [inputBits-1:0] pe_7_0_out_d;
	logic [inputBits-1:0] pe_7_0_out_e;
	logic [outputBits-1:0] pe_7_0_out_w;
	logic [outputBits-1:0] pe_7_0_out_x;
	logic [outputBits-1:0] pe_7_0_out_y;
	logic [outputBits-1:0] pe_7_0_out_z;
	//pe 7 1
	logic [inputBits-1:0] pe_7_1_out_a;
	logic [inputBits-1:0] pe_7_1_out_b;
	logic [inputBits-1:0] pe_7_1_out_c;
	logic [inputBits-1:0] pe_7_1_out_d;
	logic [inputBits-1:0] pe_7_1_out_e;
	logic [outputBits-1:0] pe_7_1_out_w;
	logic [outputBits-1:0] pe_7_1_out_x;
	logic [outputBits-1:0] pe_7_1_out_y;
	logic [outputBits-1:0] pe_7_1_out_z;
	//pe 7 2
	logic [inputBits-1:0] pe_7_2_out_a;
	logic [inputBits-1:0] pe_7_2_out_b;
	logic [inputBits-1:0] pe_7_2_out_c;
	logic [inputBits-1:0] pe_7_2_out_d;
	logic [inputBits-1:0] pe_7_2_out_e;
	logic [outputBits-1:0] pe_7_2_out_w;
	logic [outputBits-1:0] pe_7_2_out_x;
	logic [outputBits-1:0] pe_7_2_out_y;
	logic [outputBits-1:0] pe_7_2_out_z;
	//pe 7 3
	logic [inputBits-1:0] pe_7_3_out_a;
	logic [inputBits-1:0] pe_7_3_out_b;
	logic [inputBits-1:0] pe_7_3_out_c;
	logic [inputBits-1:0] pe_7_3_out_d;
	logic [inputBits-1:0] pe_7_3_out_e;
	logic [outputBits-1:0] pe_7_3_out_w;
	logic [outputBits-1:0] pe_7_3_out_x;
	logic [outputBits-1:0] pe_7_3_out_y;
	logic [outputBits-1:0] pe_7_3_out_z;
	//pe 7 4
	logic [inputBits-1:0] pe_7_4_out_a;
	logic [inputBits-1:0] pe_7_4_out_b;
	logic [inputBits-1:0] pe_7_4_out_c;
	logic [inputBits-1:0] pe_7_4_out_d;
	logic [inputBits-1:0] pe_7_4_out_e;
	logic [outputBits-1:0] pe_7_4_out_w;
	logic [outputBits-1:0] pe_7_4_out_x;
	logic [outputBits-1:0] pe_7_4_out_y;
	logic [outputBits-1:0] pe_7_4_out_z;
	//pe 7 5
	logic [inputBits-1:0] pe_7_5_out_a;
	logic [inputBits-1:0] pe_7_5_out_b;
	logic [inputBits-1:0] pe_7_5_out_c;
	logic [inputBits-1:0] pe_7_5_out_d;
	logic [inputBits-1:0] pe_7_5_out_e;
	logic [outputBits-1:0] pe_7_5_out_w;
	logic [outputBits-1:0] pe_7_5_out_x;
	logic [outputBits-1:0] pe_7_5_out_y;
	logic [outputBits-1:0] pe_7_5_out_z;
	//pe 7 6
	logic [inputBits-1:0] pe_7_6_out_a;
	logic [inputBits-1:0] pe_7_6_out_b;
	logic [inputBits-1:0] pe_7_6_out_c;
	logic [inputBits-1:0] pe_7_6_out_d;
	logic [inputBits-1:0] pe_7_6_out_e;
	logic [outputBits-1:0] pe_7_6_out_w;
	logic [outputBits-1:0] pe_7_6_out_x;
	logic [outputBits-1:0] pe_7_6_out_y;
	logic [outputBits-1:0] pe_7_6_out_z;
	//pe 7 7
	logic [inputBits-1:0] pe_7_7_out_a;
	logic [inputBits-1:0] pe_7_7_out_b;
	logic [inputBits-1:0] pe_7_7_out_c;
	logic [inputBits-1:0] pe_7_7_out_d;
	logic [inputBits-1:0] pe_7_7_out_e;
	logic [outputBits-1:0] pe_7_7_out_w;
	logic [outputBits-1:0] pe_7_7_out_x;
	logic [outputBits-1:0] pe_7_7_out_y;
	logic [outputBits-1:0] pe_7_7_out_z;
	//pe 7 8
	logic [inputBits-1:0] pe_7_8_out_a;
	logic [inputBits-1:0] pe_7_8_out_b;
	logic [inputBits-1:0] pe_7_8_out_c;
	logic [inputBits-1:0] pe_7_8_out_d;
	logic [inputBits-1:0] pe_7_8_out_e;
	logic [outputBits-1:0] pe_7_8_out_w;
	logic [outputBits-1:0] pe_7_8_out_x;
	logic [outputBits-1:0] pe_7_8_out_y;
	logic [outputBits-1:0] pe_7_8_out_z;
	//pe 7 9
	logic [inputBits-1:0] pe_7_9_out_a;
	logic [inputBits-1:0] pe_7_9_out_b;
	logic [inputBits-1:0] pe_7_9_out_c;
	logic [inputBits-1:0] pe_7_9_out_d;
	logic [inputBits-1:0] pe_7_9_out_e;
	logic [outputBits-1:0] pe_7_9_out_w;
	logic [outputBits-1:0] pe_7_9_out_x;
	logic [outputBits-1:0] pe_7_9_out_y;
	logic [outputBits-1:0] pe_7_9_out_z;
	//pe 7 10
	logic [inputBits-1:0] pe_7_10_out_a;
	logic [inputBits-1:0] pe_7_10_out_b;
	logic [inputBits-1:0] pe_7_10_out_c;
	logic [inputBits-1:0] pe_7_10_out_d;
	logic [inputBits-1:0] pe_7_10_out_e;
	logic [outputBits-1:0] pe_7_10_out_w;
	logic [outputBits-1:0] pe_7_10_out_x;
	logic [outputBits-1:0] pe_7_10_out_y;
	logic [outputBits-1:0] pe_7_10_out_z;
	//pe 7 11
	logic [inputBits-1:0] pe_7_11_out_a;
	logic [inputBits-1:0] pe_7_11_out_b;
	logic [inputBits-1:0] pe_7_11_out_c;
	logic [inputBits-1:0] pe_7_11_out_d;
	logic [inputBits-1:0] pe_7_11_out_e;
	logic [outputBits-1:0] pe_7_11_out_w;
	logic [outputBits-1:0] pe_7_11_out_x;
	logic [outputBits-1:0] pe_7_11_out_y;
	logic [outputBits-1:0] pe_7_11_out_z;
	//pe 7 12
	logic [inputBits-1:0] pe_7_12_out_a;
	logic [inputBits-1:0] pe_7_12_out_b;
	logic [inputBits-1:0] pe_7_12_out_c;
	logic [inputBits-1:0] pe_7_12_out_d;
	logic [inputBits-1:0] pe_7_12_out_e;
	logic [outputBits-1:0] pe_7_12_out_w;
	logic [outputBits-1:0] pe_7_12_out_x;
	logic [outputBits-1:0] pe_7_12_out_y;
	logic [outputBits-1:0] pe_7_12_out_z;
	//pe 7 13
	logic [inputBits-1:0] pe_7_13_out_a;
	logic [inputBits-1:0] pe_7_13_out_b;
	logic [inputBits-1:0] pe_7_13_out_c;
	logic [inputBits-1:0] pe_7_13_out_d;
	logic [inputBits-1:0] pe_7_13_out_e;
	logic [outputBits-1:0] pe_7_13_out_w;
	logic [outputBits-1:0] pe_7_13_out_x;
	logic [outputBits-1:0] pe_7_13_out_y;
	logic [outputBits-1:0] pe_7_13_out_z;
	//line 8
	//pe 8 0
	logic [inputBits-1:0] pe_8_0_out_a;
	logic [inputBits-1:0] pe_8_0_out_b;
	logic [inputBits-1:0] pe_8_0_out_c;
	logic [inputBits-1:0] pe_8_0_out_d;
	logic [inputBits-1:0] pe_8_0_out_e;
	logic [outputBits-1:0] pe_8_0_out_w;
	logic [outputBits-1:0] pe_8_0_out_x;
	logic [outputBits-1:0] pe_8_0_out_y;
	logic [outputBits-1:0] pe_8_0_out_z;
	//pe 8 1
	logic [inputBits-1:0] pe_8_1_out_a;
	logic [inputBits-1:0] pe_8_1_out_b;
	logic [inputBits-1:0] pe_8_1_out_c;
	logic [inputBits-1:0] pe_8_1_out_d;
	logic [inputBits-1:0] pe_8_1_out_e;
	logic [outputBits-1:0] pe_8_1_out_w;
	logic [outputBits-1:0] pe_8_1_out_x;
	logic [outputBits-1:0] pe_8_1_out_y;
	logic [outputBits-1:0] pe_8_1_out_z;
	//pe 8 2
	logic [inputBits-1:0] pe_8_2_out_a;
	logic [inputBits-1:0] pe_8_2_out_b;
	logic [inputBits-1:0] pe_8_2_out_c;
	logic [inputBits-1:0] pe_8_2_out_d;
	logic [inputBits-1:0] pe_8_2_out_e;
	logic [outputBits-1:0] pe_8_2_out_w;
	logic [outputBits-1:0] pe_8_2_out_x;
	logic [outputBits-1:0] pe_8_2_out_y;
	logic [outputBits-1:0] pe_8_2_out_z;
	//pe 8 3
	logic [inputBits-1:0] pe_8_3_out_a;
	logic [inputBits-1:0] pe_8_3_out_b;
	logic [inputBits-1:0] pe_8_3_out_c;
	logic [inputBits-1:0] pe_8_3_out_d;
	logic [inputBits-1:0] pe_8_3_out_e;
	logic [outputBits-1:0] pe_8_3_out_w;
	logic [outputBits-1:0] pe_8_3_out_x;
	logic [outputBits-1:0] pe_8_3_out_y;
	logic [outputBits-1:0] pe_8_3_out_z;
	//pe 8 4
	logic [inputBits-1:0] pe_8_4_out_a;
	logic [inputBits-1:0] pe_8_4_out_b;
	logic [inputBits-1:0] pe_8_4_out_c;
	logic [inputBits-1:0] pe_8_4_out_d;
	logic [inputBits-1:0] pe_8_4_out_e;
	logic [outputBits-1:0] pe_8_4_out_w;
	logic [outputBits-1:0] pe_8_4_out_x;
	logic [outputBits-1:0] pe_8_4_out_y;
	logic [outputBits-1:0] pe_8_4_out_z;
	//pe 8 5
	logic [inputBits-1:0] pe_8_5_out_a;
	logic [inputBits-1:0] pe_8_5_out_b;
	logic [inputBits-1:0] pe_8_5_out_c;
	logic [inputBits-1:0] pe_8_5_out_d;
	logic [inputBits-1:0] pe_8_5_out_e;
	logic [outputBits-1:0] pe_8_5_out_w;
	logic [outputBits-1:0] pe_8_5_out_x;
	logic [outputBits-1:0] pe_8_5_out_y;
	logic [outputBits-1:0] pe_8_5_out_z;
	//pe 8 6
	logic [inputBits-1:0] pe_8_6_out_a;
	logic [inputBits-1:0] pe_8_6_out_b;
	logic [inputBits-1:0] pe_8_6_out_c;
	logic [inputBits-1:0] pe_8_6_out_d;
	logic [inputBits-1:0] pe_8_6_out_e;
	logic [outputBits-1:0] pe_8_6_out_w;
	logic [outputBits-1:0] pe_8_6_out_x;
	logic [outputBits-1:0] pe_8_6_out_y;
	logic [outputBits-1:0] pe_8_6_out_z;
	//pe 8 7
	logic [inputBits-1:0] pe_8_7_out_a;
	logic [inputBits-1:0] pe_8_7_out_b;
	logic [inputBits-1:0] pe_8_7_out_c;
	logic [inputBits-1:0] pe_8_7_out_d;
	logic [inputBits-1:0] pe_8_7_out_e;
	logic [outputBits-1:0] pe_8_7_out_w;
	logic [outputBits-1:0] pe_8_7_out_x;
	logic [outputBits-1:0] pe_8_7_out_y;
	logic [outputBits-1:0] pe_8_7_out_z;
	//pe 8 8
	logic [inputBits-1:0] pe_8_8_out_a;
	logic [inputBits-1:0] pe_8_8_out_b;
	logic [inputBits-1:0] pe_8_8_out_c;
	logic [inputBits-1:0] pe_8_8_out_d;
	logic [inputBits-1:0] pe_8_8_out_e;
	logic [outputBits-1:0] pe_8_8_out_w;
	logic [outputBits-1:0] pe_8_8_out_x;
	logic [outputBits-1:0] pe_8_8_out_y;
	logic [outputBits-1:0] pe_8_8_out_z;
	//pe 8 9
	logic [inputBits-1:0] pe_8_9_out_a;
	logic [inputBits-1:0] pe_8_9_out_b;
	logic [inputBits-1:0] pe_8_9_out_c;
	logic [inputBits-1:0] pe_8_9_out_d;
	logic [inputBits-1:0] pe_8_9_out_e;
	logic [outputBits-1:0] pe_8_9_out_w;
	logic [outputBits-1:0] pe_8_9_out_x;
	logic [outputBits-1:0] pe_8_9_out_y;
	logic [outputBits-1:0] pe_8_9_out_z;
	//pe 8 10
	logic [inputBits-1:0] pe_8_10_out_a;
	logic [inputBits-1:0] pe_8_10_out_b;
	logic [inputBits-1:0] pe_8_10_out_c;
	logic [inputBits-1:0] pe_8_10_out_d;
	logic [inputBits-1:0] pe_8_10_out_e;
	logic [outputBits-1:0] pe_8_10_out_w;
	logic [outputBits-1:0] pe_8_10_out_x;
	logic [outputBits-1:0] pe_8_10_out_y;
	logic [outputBits-1:0] pe_8_10_out_z;
	//pe 8 11
	logic [inputBits-1:0] pe_8_11_out_a;
	logic [inputBits-1:0] pe_8_11_out_b;
	logic [inputBits-1:0] pe_8_11_out_c;
	logic [inputBits-1:0] pe_8_11_out_d;
	logic [inputBits-1:0] pe_8_11_out_e;
	logic [outputBits-1:0] pe_8_11_out_w;
	logic [outputBits-1:0] pe_8_11_out_x;
	logic [outputBits-1:0] pe_8_11_out_y;
	logic [outputBits-1:0] pe_8_11_out_z;
	//pe 8 12
	logic [inputBits-1:0] pe_8_12_out_a;
	logic [inputBits-1:0] pe_8_12_out_b;
	logic [inputBits-1:0] pe_8_12_out_c;
	logic [inputBits-1:0] pe_8_12_out_d;
	logic [inputBits-1:0] pe_8_12_out_e;
	logic [outputBits-1:0] pe_8_12_out_w;
	logic [outputBits-1:0] pe_8_12_out_x;
	logic [outputBits-1:0] pe_8_12_out_y;
	logic [outputBits-1:0] pe_8_12_out_z;
	//pe 8 13
	logic [inputBits-1:0] pe_8_13_out_a;
	logic [inputBits-1:0] pe_8_13_out_b;
	logic [inputBits-1:0] pe_8_13_out_c;
	logic [inputBits-1:0] pe_8_13_out_d;
	logic [inputBits-1:0] pe_8_13_out_e;
	logic [outputBits-1:0] pe_8_13_out_w;
	logic [outputBits-1:0] pe_8_13_out_x;
	logic [outputBits-1:0] pe_8_13_out_y;
	logic [outputBits-1:0] pe_8_13_out_z;
	//line 9
	//pe 9 0
	logic [inputBits-1:0] pe_9_0_out_a;
	logic [inputBits-1:0] pe_9_0_out_b;
	logic [inputBits-1:0] pe_9_0_out_c;
	logic [inputBits-1:0] pe_9_0_out_d;
	logic [inputBits-1:0] pe_9_0_out_e;
	logic [outputBits-1:0] pe_9_0_out_w;
	logic [outputBits-1:0] pe_9_0_out_x;
	logic [outputBits-1:0] pe_9_0_out_y;
	logic [outputBits-1:0] pe_9_0_out_z;
	//pe 9 1
	logic [inputBits-1:0] pe_9_1_out_a;
	logic [inputBits-1:0] pe_9_1_out_b;
	logic [inputBits-1:0] pe_9_1_out_c;
	logic [inputBits-1:0] pe_9_1_out_d;
	logic [inputBits-1:0] pe_9_1_out_e;
	logic [outputBits-1:0] pe_9_1_out_w;
	logic [outputBits-1:0] pe_9_1_out_x;
	logic [outputBits-1:0] pe_9_1_out_y;
	logic [outputBits-1:0] pe_9_1_out_z;
	//pe 9 2
	logic [inputBits-1:0] pe_9_2_out_a;
	logic [inputBits-1:0] pe_9_2_out_b;
	logic [inputBits-1:0] pe_9_2_out_c;
	logic [inputBits-1:0] pe_9_2_out_d;
	logic [inputBits-1:0] pe_9_2_out_e;
	logic [outputBits-1:0] pe_9_2_out_w;
	logic [outputBits-1:0] pe_9_2_out_x;
	logic [outputBits-1:0] pe_9_2_out_y;
	logic [outputBits-1:0] pe_9_2_out_z;
	//pe 9 3
	logic [inputBits-1:0] pe_9_3_out_a;
	logic [inputBits-1:0] pe_9_3_out_b;
	logic [inputBits-1:0] pe_9_3_out_c;
	logic [inputBits-1:0] pe_9_3_out_d;
	logic [inputBits-1:0] pe_9_3_out_e;
	logic [outputBits-1:0] pe_9_3_out_w;
	logic [outputBits-1:0] pe_9_3_out_x;
	logic [outputBits-1:0] pe_9_3_out_y;
	logic [outputBits-1:0] pe_9_3_out_z;
	//pe 9 4
	logic [inputBits-1:0] pe_9_4_out_a;
	logic [inputBits-1:0] pe_9_4_out_b;
	logic [inputBits-1:0] pe_9_4_out_c;
	logic [inputBits-1:0] pe_9_4_out_d;
	logic [inputBits-1:0] pe_9_4_out_e;
	logic [outputBits-1:0] pe_9_4_out_w;
	logic [outputBits-1:0] pe_9_4_out_x;
	logic [outputBits-1:0] pe_9_4_out_y;
	logic [outputBits-1:0] pe_9_4_out_z;
	//pe 9 5
	logic [inputBits-1:0] pe_9_5_out_a;
	logic [inputBits-1:0] pe_9_5_out_b;
	logic [inputBits-1:0] pe_9_5_out_c;
	logic [inputBits-1:0] pe_9_5_out_d;
	logic [inputBits-1:0] pe_9_5_out_e;
	logic [outputBits-1:0] pe_9_5_out_w;
	logic [outputBits-1:0] pe_9_5_out_x;
	logic [outputBits-1:0] pe_9_5_out_y;
	logic [outputBits-1:0] pe_9_5_out_z;
	//pe 9 6
	logic [inputBits-1:0] pe_9_6_out_a;
	logic [inputBits-1:0] pe_9_6_out_b;
	logic [inputBits-1:0] pe_9_6_out_c;
	logic [inputBits-1:0] pe_9_6_out_d;
	logic [inputBits-1:0] pe_9_6_out_e;
	logic [outputBits-1:0] pe_9_6_out_w;
	logic [outputBits-1:0] pe_9_6_out_x;
	logic [outputBits-1:0] pe_9_6_out_y;
	logic [outputBits-1:0] pe_9_6_out_z;
	//pe 9 7
	logic [inputBits-1:0] pe_9_7_out_a;
	logic [inputBits-1:0] pe_9_7_out_b;
	logic [inputBits-1:0] pe_9_7_out_c;
	logic [inputBits-1:0] pe_9_7_out_d;
	logic [inputBits-1:0] pe_9_7_out_e;
	logic [outputBits-1:0] pe_9_7_out_w;
	logic [outputBits-1:0] pe_9_7_out_x;
	logic [outputBits-1:0] pe_9_7_out_y;
	logic [outputBits-1:0] pe_9_7_out_z;
	//pe 9 8
	logic [inputBits-1:0] pe_9_8_out_a;
	logic [inputBits-1:0] pe_9_8_out_b;
	logic [inputBits-1:0] pe_9_8_out_c;
	logic [inputBits-1:0] pe_9_8_out_d;
	logic [inputBits-1:0] pe_9_8_out_e;
	logic [outputBits-1:0] pe_9_8_out_w;
	logic [outputBits-1:0] pe_9_8_out_x;
	logic [outputBits-1:0] pe_9_8_out_y;
	logic [outputBits-1:0] pe_9_8_out_z;
	//pe 9 9
	logic [inputBits-1:0] pe_9_9_out_a;
	logic [inputBits-1:0] pe_9_9_out_b;
	logic [inputBits-1:0] pe_9_9_out_c;
	logic [inputBits-1:0] pe_9_9_out_d;
	logic [inputBits-1:0] pe_9_9_out_e;
	logic [outputBits-1:0] pe_9_9_out_w;
	logic [outputBits-1:0] pe_9_9_out_x;
	logic [outputBits-1:0] pe_9_9_out_y;
	logic [outputBits-1:0] pe_9_9_out_z;
	//pe 9 10
	logic [inputBits-1:0] pe_9_10_out_a;
	logic [inputBits-1:0] pe_9_10_out_b;
	logic [inputBits-1:0] pe_9_10_out_c;
	logic [inputBits-1:0] pe_9_10_out_d;
	logic [inputBits-1:0] pe_9_10_out_e;
	logic [outputBits-1:0] pe_9_10_out_w;
	logic [outputBits-1:0] pe_9_10_out_x;
	logic [outputBits-1:0] pe_9_10_out_y;
	logic [outputBits-1:0] pe_9_10_out_z;
	//pe 9 11
	logic [inputBits-1:0] pe_9_11_out_a;
	logic [inputBits-1:0] pe_9_11_out_b;
	logic [inputBits-1:0] pe_9_11_out_c;
	logic [inputBits-1:0] pe_9_11_out_d;
	logic [inputBits-1:0] pe_9_11_out_e;
	logic [outputBits-1:0] pe_9_11_out_w;
	logic [outputBits-1:0] pe_9_11_out_x;
	logic [outputBits-1:0] pe_9_11_out_y;
	logic [outputBits-1:0] pe_9_11_out_z;
	//pe 9 12
	logic [inputBits-1:0] pe_9_12_out_a;
	logic [inputBits-1:0] pe_9_12_out_b;
	logic [inputBits-1:0] pe_9_12_out_c;
	logic [inputBits-1:0] pe_9_12_out_d;
	logic [inputBits-1:0] pe_9_12_out_e;
	logic [outputBits-1:0] pe_9_12_out_w;
	logic [outputBits-1:0] pe_9_12_out_x;
	logic [outputBits-1:0] pe_9_12_out_y;
	logic [outputBits-1:0] pe_9_12_out_z;
	//pe 9 13
	logic [inputBits-1:0] pe_9_13_out_a;
	logic [inputBits-1:0] pe_9_13_out_b;
	logic [inputBits-1:0] pe_9_13_out_c;
	logic [inputBits-1:0] pe_9_13_out_d;
	logic [inputBits-1:0] pe_9_13_out_e;
	logic [outputBits-1:0] pe_9_13_out_w;
	logic [outputBits-1:0] pe_9_13_out_x;
	logic [outputBits-1:0] pe_9_13_out_y;
	logic [outputBits-1:0] pe_9_13_out_z;
	//line 10
	//pe 10 0
	logic [inputBits-1:0] pe_10_0_out_a;
	logic [inputBits-1:0] pe_10_0_out_b;
	logic [inputBits-1:0] pe_10_0_out_c;
	logic [inputBits-1:0] pe_10_0_out_d;
	logic [inputBits-1:0] pe_10_0_out_e;
	logic [outputBits-1:0] pe_10_0_out_w;
	logic [outputBits-1:0] pe_10_0_out_x;
	logic [outputBits-1:0] pe_10_0_out_y;
	logic [outputBits-1:0] pe_10_0_out_z;
	//pe 10 1
	logic [inputBits-1:0] pe_10_1_out_a;
	logic [inputBits-1:0] pe_10_1_out_b;
	logic [inputBits-1:0] pe_10_1_out_c;
	logic [inputBits-1:0] pe_10_1_out_d;
	logic [inputBits-1:0] pe_10_1_out_e;
	logic [outputBits-1:0] pe_10_1_out_w;
	logic [outputBits-1:0] pe_10_1_out_x;
	logic [outputBits-1:0] pe_10_1_out_y;
	logic [outputBits-1:0] pe_10_1_out_z;
	//pe 10 2
	logic [inputBits-1:0] pe_10_2_out_a;
	logic [inputBits-1:0] pe_10_2_out_b;
	logic [inputBits-1:0] pe_10_2_out_c;
	logic [inputBits-1:0] pe_10_2_out_d;
	logic [inputBits-1:0] pe_10_2_out_e;
	logic [outputBits-1:0] pe_10_2_out_w;
	logic [outputBits-1:0] pe_10_2_out_x;
	logic [outputBits-1:0] pe_10_2_out_y;
	logic [outputBits-1:0] pe_10_2_out_z;
	//pe 10 3
	logic [inputBits-1:0] pe_10_3_out_a;
	logic [inputBits-1:0] pe_10_3_out_b;
	logic [inputBits-1:0] pe_10_3_out_c;
	logic [inputBits-1:0] pe_10_3_out_d;
	logic [inputBits-1:0] pe_10_3_out_e;
	logic [outputBits-1:0] pe_10_3_out_w;
	logic [outputBits-1:0] pe_10_3_out_x;
	logic [outputBits-1:0] pe_10_3_out_y;
	logic [outputBits-1:0] pe_10_3_out_z;
	//pe 10 4
	logic [inputBits-1:0] pe_10_4_out_a;
	logic [inputBits-1:0] pe_10_4_out_b;
	logic [inputBits-1:0] pe_10_4_out_c;
	logic [inputBits-1:0] pe_10_4_out_d;
	logic [inputBits-1:0] pe_10_4_out_e;
	logic [outputBits-1:0] pe_10_4_out_w;
	logic [outputBits-1:0] pe_10_4_out_x;
	logic [outputBits-1:0] pe_10_4_out_y;
	logic [outputBits-1:0] pe_10_4_out_z;
	//pe 10 5
	logic [inputBits-1:0] pe_10_5_out_a;
	logic [inputBits-1:0] pe_10_5_out_b;
	logic [inputBits-1:0] pe_10_5_out_c;
	logic [inputBits-1:0] pe_10_5_out_d;
	logic [inputBits-1:0] pe_10_5_out_e;
	logic [outputBits-1:0] pe_10_5_out_w;
	logic [outputBits-1:0] pe_10_5_out_x;
	logic [outputBits-1:0] pe_10_5_out_y;
	logic [outputBits-1:0] pe_10_5_out_z;
	//pe 10 6
	logic [inputBits-1:0] pe_10_6_out_a;
	logic [inputBits-1:0] pe_10_6_out_b;
	logic [inputBits-1:0] pe_10_6_out_c;
	logic [inputBits-1:0] pe_10_6_out_d;
	logic [inputBits-1:0] pe_10_6_out_e;
	logic [outputBits-1:0] pe_10_6_out_w;
	logic [outputBits-1:0] pe_10_6_out_x;
	logic [outputBits-1:0] pe_10_6_out_y;
	logic [outputBits-1:0] pe_10_6_out_z;
	//pe 10 7
	logic [inputBits-1:0] pe_10_7_out_a;
	logic [inputBits-1:0] pe_10_7_out_b;
	logic [inputBits-1:0] pe_10_7_out_c;
	logic [inputBits-1:0] pe_10_7_out_d;
	logic [inputBits-1:0] pe_10_7_out_e;
	logic [outputBits-1:0] pe_10_7_out_w;
	logic [outputBits-1:0] pe_10_7_out_x;
	logic [outputBits-1:0] pe_10_7_out_y;
	logic [outputBits-1:0] pe_10_7_out_z;
	//pe 10 8
	logic [inputBits-1:0] pe_10_8_out_a;
	logic [inputBits-1:0] pe_10_8_out_b;
	logic [inputBits-1:0] pe_10_8_out_c;
	logic [inputBits-1:0] pe_10_8_out_d;
	logic [inputBits-1:0] pe_10_8_out_e;
	logic [outputBits-1:0] pe_10_8_out_w;
	logic [outputBits-1:0] pe_10_8_out_x;
	logic [outputBits-1:0] pe_10_8_out_y;
	logic [outputBits-1:0] pe_10_8_out_z;
	//pe 10 9
	logic [inputBits-1:0] pe_10_9_out_a;
	logic [inputBits-1:0] pe_10_9_out_b;
	logic [inputBits-1:0] pe_10_9_out_c;
	logic [inputBits-1:0] pe_10_9_out_d;
	logic [inputBits-1:0] pe_10_9_out_e;
	logic [outputBits-1:0] pe_10_9_out_w;
	logic [outputBits-1:0] pe_10_9_out_x;
	logic [outputBits-1:0] pe_10_9_out_y;
	logic [outputBits-1:0] pe_10_9_out_z;
	//pe 10 10
	logic [inputBits-1:0] pe_10_10_out_a;
	logic [inputBits-1:0] pe_10_10_out_b;
	logic [inputBits-1:0] pe_10_10_out_c;
	logic [inputBits-1:0] pe_10_10_out_d;
	logic [inputBits-1:0] pe_10_10_out_e;
	logic [outputBits-1:0] pe_10_10_out_w;
	logic [outputBits-1:0] pe_10_10_out_x;
	logic [outputBits-1:0] pe_10_10_out_y;
	logic [outputBits-1:0] pe_10_10_out_z;
	//pe 10 11
	logic [inputBits-1:0] pe_10_11_out_a;
	logic [inputBits-1:0] pe_10_11_out_b;
	logic [inputBits-1:0] pe_10_11_out_c;
	logic [inputBits-1:0] pe_10_11_out_d;
	logic [inputBits-1:0] pe_10_11_out_e;
	logic [outputBits-1:0] pe_10_11_out_w;
	logic [outputBits-1:0] pe_10_11_out_x;
	logic [outputBits-1:0] pe_10_11_out_y;
	logic [outputBits-1:0] pe_10_11_out_z;
	//pe 10 12
	logic [inputBits-1:0] pe_10_12_out_a;
	logic [inputBits-1:0] pe_10_12_out_b;
	logic [inputBits-1:0] pe_10_12_out_c;
	logic [inputBits-1:0] pe_10_12_out_d;
	logic [inputBits-1:0] pe_10_12_out_e;
	logic [outputBits-1:0] pe_10_12_out_w;
	logic [outputBits-1:0] pe_10_12_out_x;
	logic [outputBits-1:0] pe_10_12_out_y;
	logic [outputBits-1:0] pe_10_12_out_z;
	//pe 10 13
	logic [inputBits-1:0] pe_10_13_out_a;
	logic [inputBits-1:0] pe_10_13_out_b;
	logic [inputBits-1:0] pe_10_13_out_c;
	logic [inputBits-1:0] pe_10_13_out_d;
	logic [inputBits-1:0] pe_10_13_out_e;
	logic [outputBits-1:0] pe_10_13_out_w;
	logic [outputBits-1:0] pe_10_13_out_x;
	logic [outputBits-1:0] pe_10_13_out_y;
	logic [outputBits-1:0] pe_10_13_out_z;
	//line 11
	//pe 11 0
	logic [inputBits-1:0] pe_11_0_out_a;
	logic [inputBits-1:0] pe_11_0_out_b;
	logic [inputBits-1:0] pe_11_0_out_c;
	logic [inputBits-1:0] pe_11_0_out_d;
	logic [inputBits-1:0] pe_11_0_out_e;
	logic [outputBits-1:0] pe_11_0_out_w;
	logic [outputBits-1:0] pe_11_0_out_x;
	logic [outputBits-1:0] pe_11_0_out_y;
	logic [outputBits-1:0] pe_11_0_out_z;
	//pe 11 1
	logic [inputBits-1:0] pe_11_1_out_a;
	logic [inputBits-1:0] pe_11_1_out_b;
	logic [inputBits-1:0] pe_11_1_out_c;
	logic [inputBits-1:0] pe_11_1_out_d;
	logic [inputBits-1:0] pe_11_1_out_e;
	logic [outputBits-1:0] pe_11_1_out_w;
	logic [outputBits-1:0] pe_11_1_out_x;
	logic [outputBits-1:0] pe_11_1_out_y;
	logic [outputBits-1:0] pe_11_1_out_z;
	//pe 11 2
	logic [inputBits-1:0] pe_11_2_out_a;
	logic [inputBits-1:0] pe_11_2_out_b;
	logic [inputBits-1:0] pe_11_2_out_c;
	logic [inputBits-1:0] pe_11_2_out_d;
	logic [inputBits-1:0] pe_11_2_out_e;
	logic [outputBits-1:0] pe_11_2_out_w;
	logic [outputBits-1:0] pe_11_2_out_x;
	logic [outputBits-1:0] pe_11_2_out_y;
	logic [outputBits-1:0] pe_11_2_out_z;
	//pe 11 3
	logic [inputBits-1:0] pe_11_3_out_a;
	logic [inputBits-1:0] pe_11_3_out_b;
	logic [inputBits-1:0] pe_11_3_out_c;
	logic [inputBits-1:0] pe_11_3_out_d;
	logic [inputBits-1:0] pe_11_3_out_e;
	logic [outputBits-1:0] pe_11_3_out_w;
	logic [outputBits-1:0] pe_11_3_out_x;
	logic [outputBits-1:0] pe_11_3_out_y;
	logic [outputBits-1:0] pe_11_3_out_z;
	//pe 11 4
	logic [inputBits-1:0] pe_11_4_out_a;
	logic [inputBits-1:0] pe_11_4_out_b;
	logic [inputBits-1:0] pe_11_4_out_c;
	logic [inputBits-1:0] pe_11_4_out_d;
	logic [inputBits-1:0] pe_11_4_out_e;
	logic [outputBits-1:0] pe_11_4_out_w;
	logic [outputBits-1:0] pe_11_4_out_x;
	logic [outputBits-1:0] pe_11_4_out_y;
	logic [outputBits-1:0] pe_11_4_out_z;
	//pe 11 5
	logic [inputBits-1:0] pe_11_5_out_a;
	logic [inputBits-1:0] pe_11_5_out_b;
	logic [inputBits-1:0] pe_11_5_out_c;
	logic [inputBits-1:0] pe_11_5_out_d;
	logic [inputBits-1:0] pe_11_5_out_e;
	logic [outputBits-1:0] pe_11_5_out_w;
	logic [outputBits-1:0] pe_11_5_out_x;
	logic [outputBits-1:0] pe_11_5_out_y;
	logic [outputBits-1:0] pe_11_5_out_z;
	//pe 11 6
	logic [inputBits-1:0] pe_11_6_out_a;
	logic [inputBits-1:0] pe_11_6_out_b;
	logic [inputBits-1:0] pe_11_6_out_c;
	logic [inputBits-1:0] pe_11_6_out_d;
	logic [inputBits-1:0] pe_11_6_out_e;
	logic [outputBits-1:0] pe_11_6_out_w;
	logic [outputBits-1:0] pe_11_6_out_x;
	logic [outputBits-1:0] pe_11_6_out_y;
	logic [outputBits-1:0] pe_11_6_out_z;
	//pe 11 7
	logic [inputBits-1:0] pe_11_7_out_a;
	logic [inputBits-1:0] pe_11_7_out_b;
	logic [inputBits-1:0] pe_11_7_out_c;
	logic [inputBits-1:0] pe_11_7_out_d;
	logic [inputBits-1:0] pe_11_7_out_e;
	logic [outputBits-1:0] pe_11_7_out_w;
	logic [outputBits-1:0] pe_11_7_out_x;
	logic [outputBits-1:0] pe_11_7_out_y;
	logic [outputBits-1:0] pe_11_7_out_z;
	//pe 11 8
	logic [inputBits-1:0] pe_11_8_out_a;
	logic [inputBits-1:0] pe_11_8_out_b;
	logic [inputBits-1:0] pe_11_8_out_c;
	logic [inputBits-1:0] pe_11_8_out_d;
	logic [inputBits-1:0] pe_11_8_out_e;
	logic [outputBits-1:0] pe_11_8_out_w;
	logic [outputBits-1:0] pe_11_8_out_x;
	logic [outputBits-1:0] pe_11_8_out_y;
	logic [outputBits-1:0] pe_11_8_out_z;
	//pe 11 9
	logic [inputBits-1:0] pe_11_9_out_a;
	logic [inputBits-1:0] pe_11_9_out_b;
	logic [inputBits-1:0] pe_11_9_out_c;
	logic [inputBits-1:0] pe_11_9_out_d;
	logic [inputBits-1:0] pe_11_9_out_e;
	logic [outputBits-1:0] pe_11_9_out_w;
	logic [outputBits-1:0] pe_11_9_out_x;
	logic [outputBits-1:0] pe_11_9_out_y;
	logic [outputBits-1:0] pe_11_9_out_z;
	//pe 11 10
	logic [inputBits-1:0] pe_11_10_out_a;
	logic [inputBits-1:0] pe_11_10_out_b;
	logic [inputBits-1:0] pe_11_10_out_c;
	logic [inputBits-1:0] pe_11_10_out_d;
	logic [inputBits-1:0] pe_11_10_out_e;
	logic [outputBits-1:0] pe_11_10_out_w;
	logic [outputBits-1:0] pe_11_10_out_x;
	logic [outputBits-1:0] pe_11_10_out_y;
	logic [outputBits-1:0] pe_11_10_out_z;
	//pe 11 11
	logic [inputBits-1:0] pe_11_11_out_a;
	logic [inputBits-1:0] pe_11_11_out_b;
	logic [inputBits-1:0] pe_11_11_out_c;
	logic [inputBits-1:0] pe_11_11_out_d;
	logic [inputBits-1:0] pe_11_11_out_e;
	logic [outputBits-1:0] pe_11_11_out_w;
	logic [outputBits-1:0] pe_11_11_out_x;
	logic [outputBits-1:0] pe_11_11_out_y;
	logic [outputBits-1:0] pe_11_11_out_z;
	//pe 11 12
	logic [inputBits-1:0] pe_11_12_out_a;
	logic [inputBits-1:0] pe_11_12_out_b;
	logic [inputBits-1:0] pe_11_12_out_c;
	logic [inputBits-1:0] pe_11_12_out_d;
	logic [inputBits-1:0] pe_11_12_out_e;
	logic [outputBits-1:0] pe_11_12_out_w;
	logic [outputBits-1:0] pe_11_12_out_x;
	logic [outputBits-1:0] pe_11_12_out_y;
	logic [outputBits-1:0] pe_11_12_out_z;
	//pe 11 13
	logic [inputBits-1:0] pe_11_13_out_a;
	logic [inputBits-1:0] pe_11_13_out_b;
	logic [inputBits-1:0] pe_11_13_out_c;
	logic [inputBits-1:0] pe_11_13_out_d;
	logic [inputBits-1:0] pe_11_13_out_e;
	logic [outputBits-1:0] pe_11_13_out_w;
	logic [outputBits-1:0] pe_11_13_out_x;
	logic [outputBits-1:0] pe_11_13_out_y;
	logic [outputBits-1:0] pe_11_13_out_z;
	//line 12
	//pe 12 0
	logic [inputBits-1:0] pe_12_0_out_a;
	logic [inputBits-1:0] pe_12_0_out_b;
	logic [inputBits-1:0] pe_12_0_out_c;
	logic [inputBits-1:0] pe_12_0_out_d;
	logic [inputBits-1:0] pe_12_0_out_e;
	logic [outputBits-1:0] pe_12_0_out_w;
	logic [outputBits-1:0] pe_12_0_out_x;
	logic [outputBits-1:0] pe_12_0_out_y;
	logic [outputBits-1:0] pe_12_0_out_z;
	//pe 12 1
	logic [inputBits-1:0] pe_12_1_out_a;
	logic [inputBits-1:0] pe_12_1_out_b;
	logic [inputBits-1:0] pe_12_1_out_c;
	logic [inputBits-1:0] pe_12_1_out_d;
	logic [inputBits-1:0] pe_12_1_out_e;
	logic [outputBits-1:0] pe_12_1_out_w;
	logic [outputBits-1:0] pe_12_1_out_x;
	logic [outputBits-1:0] pe_12_1_out_y;
	logic [outputBits-1:0] pe_12_1_out_z;
	//pe 12 2
	logic [inputBits-1:0] pe_12_2_out_a;
	logic [inputBits-1:0] pe_12_2_out_b;
	logic [inputBits-1:0] pe_12_2_out_c;
	logic [inputBits-1:0] pe_12_2_out_d;
	logic [inputBits-1:0] pe_12_2_out_e;
	logic [outputBits-1:0] pe_12_2_out_w;
	logic [outputBits-1:0] pe_12_2_out_x;
	logic [outputBits-1:0] pe_12_2_out_y;
	logic [outputBits-1:0] pe_12_2_out_z;
	//pe 12 3
	logic [inputBits-1:0] pe_12_3_out_a;
	logic [inputBits-1:0] pe_12_3_out_b;
	logic [inputBits-1:0] pe_12_3_out_c;
	logic [inputBits-1:0] pe_12_3_out_d;
	logic [inputBits-1:0] pe_12_3_out_e;
	logic [outputBits-1:0] pe_12_3_out_w;
	logic [outputBits-1:0] pe_12_3_out_x;
	logic [outputBits-1:0] pe_12_3_out_y;
	logic [outputBits-1:0] pe_12_3_out_z;
	//pe 12 4
	logic [inputBits-1:0] pe_12_4_out_a;
	logic [inputBits-1:0] pe_12_4_out_b;
	logic [inputBits-1:0] pe_12_4_out_c;
	logic [inputBits-1:0] pe_12_4_out_d;
	logic [inputBits-1:0] pe_12_4_out_e;
	logic [outputBits-1:0] pe_12_4_out_w;
	logic [outputBits-1:0] pe_12_4_out_x;
	logic [outputBits-1:0] pe_12_4_out_y;
	logic [outputBits-1:0] pe_12_4_out_z;
	//pe 12 5
	logic [inputBits-1:0] pe_12_5_out_a;
	logic [inputBits-1:0] pe_12_5_out_b;
	logic [inputBits-1:0] pe_12_5_out_c;
	logic [inputBits-1:0] pe_12_5_out_d;
	logic [inputBits-1:0] pe_12_5_out_e;
	logic [outputBits-1:0] pe_12_5_out_w;
	logic [outputBits-1:0] pe_12_5_out_x;
	logic [outputBits-1:0] pe_12_5_out_y;
	logic [outputBits-1:0] pe_12_5_out_z;
	//pe 12 6
	logic [inputBits-1:0] pe_12_6_out_a;
	logic [inputBits-1:0] pe_12_6_out_b;
	logic [inputBits-1:0] pe_12_6_out_c;
	logic [inputBits-1:0] pe_12_6_out_d;
	logic [inputBits-1:0] pe_12_6_out_e;
	logic [outputBits-1:0] pe_12_6_out_w;
	logic [outputBits-1:0] pe_12_6_out_x;
	logic [outputBits-1:0] pe_12_6_out_y;
	logic [outputBits-1:0] pe_12_6_out_z;
	//pe 12 7
	logic [inputBits-1:0] pe_12_7_out_a;
	logic [inputBits-1:0] pe_12_7_out_b;
	logic [inputBits-1:0] pe_12_7_out_c;
	logic [inputBits-1:0] pe_12_7_out_d;
	logic [inputBits-1:0] pe_12_7_out_e;
	logic [outputBits-1:0] pe_12_7_out_w;
	logic [outputBits-1:0] pe_12_7_out_x;
	logic [outputBits-1:0] pe_12_7_out_y;
	logic [outputBits-1:0] pe_12_7_out_z;
	//pe 12 8
	logic [inputBits-1:0] pe_12_8_out_a;
	logic [inputBits-1:0] pe_12_8_out_b;
	logic [inputBits-1:0] pe_12_8_out_c;
	logic [inputBits-1:0] pe_12_8_out_d;
	logic [inputBits-1:0] pe_12_8_out_e;
	logic [outputBits-1:0] pe_12_8_out_w;
	logic [outputBits-1:0] pe_12_8_out_x;
	logic [outputBits-1:0] pe_12_8_out_y;
	logic [outputBits-1:0] pe_12_8_out_z;
	//pe 12 9
	logic [inputBits-1:0] pe_12_9_out_a;
	logic [inputBits-1:0] pe_12_9_out_b;
	logic [inputBits-1:0] pe_12_9_out_c;
	logic [inputBits-1:0] pe_12_9_out_d;
	logic [inputBits-1:0] pe_12_9_out_e;
	logic [outputBits-1:0] pe_12_9_out_w;
	logic [outputBits-1:0] pe_12_9_out_x;
	logic [outputBits-1:0] pe_12_9_out_y;
	logic [outputBits-1:0] pe_12_9_out_z;
	//pe 12 10
	logic [inputBits-1:0] pe_12_10_out_a;
	logic [inputBits-1:0] pe_12_10_out_b;
	logic [inputBits-1:0] pe_12_10_out_c;
	logic [inputBits-1:0] pe_12_10_out_d;
	logic [inputBits-1:0] pe_12_10_out_e;
	logic [outputBits-1:0] pe_12_10_out_w;
	logic [outputBits-1:0] pe_12_10_out_x;
	logic [outputBits-1:0] pe_12_10_out_y;
	logic [outputBits-1:0] pe_12_10_out_z;
	//pe 12 11
	logic [inputBits-1:0] pe_12_11_out_a;
	logic [inputBits-1:0] pe_12_11_out_b;
	logic [inputBits-1:0] pe_12_11_out_c;
	logic [inputBits-1:0] pe_12_11_out_d;
	logic [inputBits-1:0] pe_12_11_out_e;
	logic [outputBits-1:0] pe_12_11_out_w;
	logic [outputBits-1:0] pe_12_11_out_x;
	logic [outputBits-1:0] pe_12_11_out_y;
	logic [outputBits-1:0] pe_12_11_out_z;
	//pe 12 12
	logic [inputBits-1:0] pe_12_12_out_a;
	logic [inputBits-1:0] pe_12_12_out_b;
	logic [inputBits-1:0] pe_12_12_out_c;
	logic [inputBits-1:0] pe_12_12_out_d;
	logic [inputBits-1:0] pe_12_12_out_e;
	logic [outputBits-1:0] pe_12_12_out_w;
	logic [outputBits-1:0] pe_12_12_out_x;
	logic [outputBits-1:0] pe_12_12_out_y;
	logic [outputBits-1:0] pe_12_12_out_z;
	//pe 12 13
	logic [inputBits-1:0] pe_12_13_out_a;
	logic [inputBits-1:0] pe_12_13_out_b;
	logic [inputBits-1:0] pe_12_13_out_c;
	logic [inputBits-1:0] pe_12_13_out_d;
	logic [inputBits-1:0] pe_12_13_out_e;
	logic [outputBits-1:0] pe_12_13_out_w;
	logic [outputBits-1:0] pe_12_13_out_x;
	logic [outputBits-1:0] pe_12_13_out_y;
	logic [outputBits-1:0] pe_12_13_out_z;
	//line 13
	//pe 13 0
	logic [inputBits-1:0] pe_13_0_out_a;
	logic [inputBits-1:0] pe_13_0_out_b;
	logic [inputBits-1:0] pe_13_0_out_c;
	logic [inputBits-1:0] pe_13_0_out_d;
	logic [inputBits-1:0] pe_13_0_out_e;
	logic [outputBits-1:0] pe_13_0_out_w;
	logic [outputBits-1:0] pe_13_0_out_x;
	logic [outputBits-1:0] pe_13_0_out_y;
	logic [outputBits-1:0] pe_13_0_out_z;
	//pe 13 1
	logic [inputBits-1:0] pe_13_1_out_a;
	logic [inputBits-1:0] pe_13_1_out_b;
	logic [inputBits-1:0] pe_13_1_out_c;
	logic [inputBits-1:0] pe_13_1_out_d;
	logic [inputBits-1:0] pe_13_1_out_e;
	logic [outputBits-1:0] pe_13_1_out_w;
	logic [outputBits-1:0] pe_13_1_out_x;
	logic [outputBits-1:0] pe_13_1_out_y;
	logic [outputBits-1:0] pe_13_1_out_z;
	//pe 13 2
	logic [inputBits-1:0] pe_13_2_out_a;
	logic [inputBits-1:0] pe_13_2_out_b;
	logic [inputBits-1:0] pe_13_2_out_c;
	logic [inputBits-1:0] pe_13_2_out_d;
	logic [inputBits-1:0] pe_13_2_out_e;
	logic [outputBits-1:0] pe_13_2_out_w;
	logic [outputBits-1:0] pe_13_2_out_x;
	logic [outputBits-1:0] pe_13_2_out_y;
	logic [outputBits-1:0] pe_13_2_out_z;
	//pe 13 3
	logic [inputBits-1:0] pe_13_3_out_a;
	logic [inputBits-1:0] pe_13_3_out_b;
	logic [inputBits-1:0] pe_13_3_out_c;
	logic [inputBits-1:0] pe_13_3_out_d;
	logic [inputBits-1:0] pe_13_3_out_e;
	logic [outputBits-1:0] pe_13_3_out_w;
	logic [outputBits-1:0] pe_13_3_out_x;
	logic [outputBits-1:0] pe_13_3_out_y;
	logic [outputBits-1:0] pe_13_3_out_z;
	//pe 13 4
	logic [inputBits-1:0] pe_13_4_out_a;
	logic [inputBits-1:0] pe_13_4_out_b;
	logic [inputBits-1:0] pe_13_4_out_c;
	logic [inputBits-1:0] pe_13_4_out_d;
	logic [inputBits-1:0] pe_13_4_out_e;
	logic [outputBits-1:0] pe_13_4_out_w;
	logic [outputBits-1:0] pe_13_4_out_x;
	logic [outputBits-1:0] pe_13_4_out_y;
	logic [outputBits-1:0] pe_13_4_out_z;
	//pe 13 5
	logic [inputBits-1:0] pe_13_5_out_a;
	logic [inputBits-1:0] pe_13_5_out_b;
	logic [inputBits-1:0] pe_13_5_out_c;
	logic [inputBits-1:0] pe_13_5_out_d;
	logic [inputBits-1:0] pe_13_5_out_e;
	logic [outputBits-1:0] pe_13_5_out_w;
	logic [outputBits-1:0] pe_13_5_out_x;
	logic [outputBits-1:0] pe_13_5_out_y;
	logic [outputBits-1:0] pe_13_5_out_z;
	//pe 13 6
	logic [inputBits-1:0] pe_13_6_out_a;
	logic [inputBits-1:0] pe_13_6_out_b;
	logic [inputBits-1:0] pe_13_6_out_c;
	logic [inputBits-1:0] pe_13_6_out_d;
	logic [inputBits-1:0] pe_13_6_out_e;
	logic [outputBits-1:0] pe_13_6_out_w;
	logic [outputBits-1:0] pe_13_6_out_x;
	logic [outputBits-1:0] pe_13_6_out_y;
	logic [outputBits-1:0] pe_13_6_out_z;
	//pe 13 7
	logic [inputBits-1:0] pe_13_7_out_a;
	logic [inputBits-1:0] pe_13_7_out_b;
	logic [inputBits-1:0] pe_13_7_out_c;
	logic [inputBits-1:0] pe_13_7_out_d;
	logic [inputBits-1:0] pe_13_7_out_e;
	logic [outputBits-1:0] pe_13_7_out_w;
	logic [outputBits-1:0] pe_13_7_out_x;
	logic [outputBits-1:0] pe_13_7_out_y;
	logic [outputBits-1:0] pe_13_7_out_z;
	//pe 13 8
	logic [inputBits-1:0] pe_13_8_out_a;
	logic [inputBits-1:0] pe_13_8_out_b;
	logic [inputBits-1:0] pe_13_8_out_c;
	logic [inputBits-1:0] pe_13_8_out_d;
	logic [inputBits-1:0] pe_13_8_out_e;
	logic [outputBits-1:0] pe_13_8_out_w;
	logic [outputBits-1:0] pe_13_8_out_x;
	logic [outputBits-1:0] pe_13_8_out_y;
	logic [outputBits-1:0] pe_13_8_out_z;
	//pe 13 9
	logic [inputBits-1:0] pe_13_9_out_a;
	logic [inputBits-1:0] pe_13_9_out_b;
	logic [inputBits-1:0] pe_13_9_out_c;
	logic [inputBits-1:0] pe_13_9_out_d;
	logic [inputBits-1:0] pe_13_9_out_e;
	logic [outputBits-1:0] pe_13_9_out_w;
	logic [outputBits-1:0] pe_13_9_out_x;
	logic [outputBits-1:0] pe_13_9_out_y;
	logic [outputBits-1:0] pe_13_9_out_z;
	//pe 13 10
	logic [inputBits-1:0] pe_13_10_out_a;
	logic [inputBits-1:0] pe_13_10_out_b;
	logic [inputBits-1:0] pe_13_10_out_c;
	logic [inputBits-1:0] pe_13_10_out_d;
	logic [inputBits-1:0] pe_13_10_out_e;
	logic [outputBits-1:0] pe_13_10_out_w;
	logic [outputBits-1:0] pe_13_10_out_x;
	logic [outputBits-1:0] pe_13_10_out_y;
	logic [outputBits-1:0] pe_13_10_out_z;
	//pe 13 11
	logic [inputBits-1:0] pe_13_11_out_a;
	logic [inputBits-1:0] pe_13_11_out_b;
	logic [inputBits-1:0] pe_13_11_out_c;
	logic [inputBits-1:0] pe_13_11_out_d;
	logic [inputBits-1:0] pe_13_11_out_e;
	logic [outputBits-1:0] pe_13_11_out_w;
	logic [outputBits-1:0] pe_13_11_out_x;
	logic [outputBits-1:0] pe_13_11_out_y;
	logic [outputBits-1:0] pe_13_11_out_z;
	//pe 13 12
	logic [inputBits-1:0] pe_13_12_out_a;
	logic [inputBits-1:0] pe_13_12_out_b;
	logic [inputBits-1:0] pe_13_12_out_c;
	logic [inputBits-1:0] pe_13_12_out_d;
	logic [inputBits-1:0] pe_13_12_out_e;
	logic [outputBits-1:0] pe_13_12_out_w;
	logic [outputBits-1:0] pe_13_12_out_x;
	logic [outputBits-1:0] pe_13_12_out_y;
	logic [outputBits-1:0] pe_13_12_out_z;
	//pe 13 13
	logic [inputBits-1:0] pe_13_13_out_a;
	logic [inputBits-1:0] pe_13_13_out_b;
	logic [inputBits-1:0] pe_13_13_out_c;
	logic [inputBits-1:0] pe_13_13_out_d;
	logic [inputBits-1:0] pe_13_13_out_e;
	logic [outputBits-1:0] pe_13_13_out_w;
	logic [outputBits-1:0] pe_13_13_out_x;
	logic [outputBits-1:0] pe_13_13_out_y;
	logic [outputBits-1:0] pe_13_13_out_z;

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
	//pe 0 2
	int8_pe #(inputBits, outputBits) pe_0_2(clk, rst, clk2x,
											pe_0_1_out_a, pe_0_1_out_b, pe_0_1_out_c, pe_0_1_out_d, in_top_2_e, loadingWeights,
											{outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}},
											pe_0_2_out_a, pe_0_2_out_b, pe_0_2_out_c, pe_0_2_out_d, pe_0_2_out_e,
											pe_0_2_out_w, pe_0_2_out_x, pe_0_2_out_y, pe_0_2_out_z);
	//pe 0 3
	int8_pe #(inputBits, outputBits) pe_0_3(clk, rst, clk2x,
											pe_0_2_out_a, pe_0_2_out_b, pe_0_2_out_c, pe_0_2_out_d, in_top_3_e, loadingWeights,
											{outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}},
											pe_0_3_out_a, pe_0_3_out_b, pe_0_3_out_c, pe_0_3_out_d, pe_0_3_out_e,
											pe_0_3_out_w, pe_0_3_out_x, pe_0_3_out_y, pe_0_3_out_z);
	//pe 0 4
	int8_pe #(inputBits, outputBits) pe_0_4(clk, rst, clk2x,
											pe_0_3_out_a, pe_0_3_out_b, pe_0_3_out_c, pe_0_3_out_d, in_top_4_e, loadingWeights,
											{outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}},
											pe_0_4_out_a, pe_0_4_out_b, pe_0_4_out_c, pe_0_4_out_d, pe_0_4_out_e,
											pe_0_4_out_w, pe_0_4_out_x, pe_0_4_out_y, pe_0_4_out_z);
	//pe 0 5
	int8_pe #(inputBits, outputBits) pe_0_5(clk, rst, clk2x,
											pe_0_4_out_a, pe_0_4_out_b, pe_0_4_out_c, pe_0_4_out_d, in_top_5_e, loadingWeights,
											{outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}},
											pe_0_5_out_a, pe_0_5_out_b, pe_0_5_out_c, pe_0_5_out_d, pe_0_5_out_e,
											pe_0_5_out_w, pe_0_5_out_x, pe_0_5_out_y, pe_0_5_out_z);
	//pe 0 6
	int8_pe #(inputBits, outputBits) pe_0_6(clk, rst, clk2x,
											pe_0_5_out_a, pe_0_5_out_b, pe_0_5_out_c, pe_0_5_out_d, in_top_6_e, loadingWeights,
											{outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}},
											pe_0_6_out_a, pe_0_6_out_b, pe_0_6_out_c, pe_0_6_out_d, pe_0_6_out_e,
											pe_0_6_out_w, pe_0_6_out_x, pe_0_6_out_y, pe_0_6_out_z);
	//pe 0 7
	int8_pe #(inputBits, outputBits) pe_0_7(clk, rst, clk2x,
											pe_0_6_out_a, pe_0_6_out_b, pe_0_6_out_c, pe_0_6_out_d, in_top_7_e, loadingWeights,
											{outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}},
											pe_0_7_out_a, pe_0_7_out_b, pe_0_7_out_c, pe_0_7_out_d, pe_0_7_out_e,
											pe_0_7_out_w, pe_0_7_out_x, pe_0_7_out_y, pe_0_7_out_z);
	//pe 0 8
	int8_pe #(inputBits, outputBits) pe_0_8(clk, rst, clk2x,
											pe_0_7_out_a, pe_0_7_out_b, pe_0_7_out_c, pe_0_7_out_d, in_top_8_e, loadingWeights,
											{outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}},
											pe_0_8_out_a, pe_0_8_out_b, pe_0_8_out_c, pe_0_8_out_d, pe_0_8_out_e,
											pe_0_8_out_w, pe_0_8_out_x, pe_0_8_out_y, pe_0_8_out_z);
	//pe 0 9
	int8_pe #(inputBits, outputBits) pe_0_9(clk, rst, clk2x,
											pe_0_8_out_a, pe_0_8_out_b, pe_0_8_out_c, pe_0_8_out_d, in_top_9_e, loadingWeights,
											{outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}},
											pe_0_9_out_a, pe_0_9_out_b, pe_0_9_out_c, pe_0_9_out_d, pe_0_9_out_e,
											pe_0_9_out_w, pe_0_9_out_x, pe_0_9_out_y, pe_0_9_out_z);
	//pe 0 10
	int8_pe #(inputBits, outputBits) pe_0_10(clk, rst, clk2x,
											pe_0_9_out_a, pe_0_9_out_b, pe_0_9_out_c, pe_0_9_out_d, in_top_10_e, loadingWeights,
											{outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}},
											pe_0_10_out_a, pe_0_10_out_b, pe_0_10_out_c, pe_0_10_out_d, pe_0_10_out_e,
											pe_0_10_out_w, pe_0_10_out_x, pe_0_10_out_y, pe_0_10_out_z);
	//pe 0 11
	int8_pe #(inputBits, outputBits) pe_0_11(clk, rst, clk2x,
											pe_0_10_out_a, pe_0_10_out_b, pe_0_10_out_c, pe_0_10_out_d, in_top_11_e, loadingWeights,
											{outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}},
											pe_0_11_out_a, pe_0_11_out_b, pe_0_11_out_c, pe_0_11_out_d, pe_0_11_out_e,
											pe_0_11_out_w, pe_0_11_out_x, pe_0_11_out_y, pe_0_11_out_z);
	//pe 0 12
	int8_pe #(inputBits, outputBits) pe_0_12(clk, rst, clk2x,
											pe_0_11_out_a, pe_0_11_out_b, pe_0_11_out_c, pe_0_11_out_d, in_top_12_e, loadingWeights,
											{outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}},
											pe_0_12_out_a, pe_0_12_out_b, pe_0_12_out_c, pe_0_12_out_d, pe_0_12_out_e,
											pe_0_12_out_w, pe_0_12_out_x, pe_0_12_out_y, pe_0_12_out_z);
	//pe 0 13
	int8_pe #(inputBits, outputBits) pe_0_13(clk, rst, clk2x,
											pe_0_12_out_a, pe_0_12_out_b, pe_0_12_out_c, pe_0_12_out_d, in_top_13_e, loadingWeights,
											{outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}},
											pe_0_13_out_a, pe_0_13_out_b, pe_0_13_out_c, pe_0_13_out_d, pe_0_13_out_e,
											pe_0_13_out_w, pe_0_13_out_x, pe_0_13_out_y, pe_0_13_out_z);
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
	//pe 1 2
	int8_pe #(inputBits, outputBits) pe_1_2(clk, rst, clk2x,
											pe_1_1_out_a, pe_1_1_out_b, pe_1_1_out_c, pe_1_1_out_d, pe_0_2_out_e, loadingWeights,
											pe_0_2_out_w, pe_0_2_out_x, pe_0_2_out_y, pe_0_2_out_z,
											pe_1_2_out_a, pe_1_2_out_b, pe_1_2_out_c, pe_1_2_out_d, pe_1_2_out_e,
											pe_1_2_out_w, pe_1_2_out_x, pe_1_2_out_y, pe_1_2_out_z);
	//pe 1 3
	int8_pe #(inputBits, outputBits) pe_1_3(clk, rst, clk2x,
											pe_1_2_out_a, pe_1_2_out_b, pe_1_2_out_c, pe_1_2_out_d, pe_0_3_out_e, loadingWeights,
											pe_0_3_out_w, pe_0_3_out_x, pe_0_3_out_y, pe_0_3_out_z,
											pe_1_3_out_a, pe_1_3_out_b, pe_1_3_out_c, pe_1_3_out_d, pe_1_3_out_e,
											pe_1_3_out_w, pe_1_3_out_x, pe_1_3_out_y, pe_1_3_out_z);
	//pe 1 4
	int8_pe #(inputBits, outputBits) pe_1_4(clk, rst, clk2x,
											pe_1_3_out_a, pe_1_3_out_b, pe_1_3_out_c, pe_1_3_out_d, pe_0_4_out_e, loadingWeights,
											pe_0_4_out_w, pe_0_4_out_x, pe_0_4_out_y, pe_0_4_out_z,
											pe_1_4_out_a, pe_1_4_out_b, pe_1_4_out_c, pe_1_4_out_d, pe_1_4_out_e,
											pe_1_4_out_w, pe_1_4_out_x, pe_1_4_out_y, pe_1_4_out_z);
	//pe 1 5
	int8_pe #(inputBits, outputBits) pe_1_5(clk, rst, clk2x,
											pe_1_4_out_a, pe_1_4_out_b, pe_1_4_out_c, pe_1_4_out_d, pe_0_5_out_e, loadingWeights,
											pe_0_5_out_w, pe_0_5_out_x, pe_0_5_out_y, pe_0_5_out_z,
											pe_1_5_out_a, pe_1_5_out_b, pe_1_5_out_c, pe_1_5_out_d, pe_1_5_out_e,
											pe_1_5_out_w, pe_1_5_out_x, pe_1_5_out_y, pe_1_5_out_z);
	//pe 1 6
	int8_pe #(inputBits, outputBits) pe_1_6(clk, rst, clk2x,
											pe_1_5_out_a, pe_1_5_out_b, pe_1_5_out_c, pe_1_5_out_d, pe_0_6_out_e, loadingWeights,
											pe_0_6_out_w, pe_0_6_out_x, pe_0_6_out_y, pe_0_6_out_z,
											pe_1_6_out_a, pe_1_6_out_b, pe_1_6_out_c, pe_1_6_out_d, pe_1_6_out_e,
											pe_1_6_out_w, pe_1_6_out_x, pe_1_6_out_y, pe_1_6_out_z);
	//pe 1 7
	int8_pe #(inputBits, outputBits) pe_1_7(clk, rst, clk2x,
											pe_1_6_out_a, pe_1_6_out_b, pe_1_6_out_c, pe_1_6_out_d, pe_0_7_out_e, loadingWeights,
											pe_0_7_out_w, pe_0_7_out_x, pe_0_7_out_y, pe_0_7_out_z,
											pe_1_7_out_a, pe_1_7_out_b, pe_1_7_out_c, pe_1_7_out_d, pe_1_7_out_e,
											pe_1_7_out_w, pe_1_7_out_x, pe_1_7_out_y, pe_1_7_out_z);
	//pe 1 8
	int8_pe #(inputBits, outputBits) pe_1_8(clk, rst, clk2x,
											pe_1_7_out_a, pe_1_7_out_b, pe_1_7_out_c, pe_1_7_out_d, pe_0_8_out_e, loadingWeights,
											pe_0_8_out_w, pe_0_8_out_x, pe_0_8_out_y, pe_0_8_out_z,
											pe_1_8_out_a, pe_1_8_out_b, pe_1_8_out_c, pe_1_8_out_d, pe_1_8_out_e,
											pe_1_8_out_w, pe_1_8_out_x, pe_1_8_out_y, pe_1_8_out_z);
	//pe 1 9
	int8_pe #(inputBits, outputBits) pe_1_9(clk, rst, clk2x,
											pe_1_8_out_a, pe_1_8_out_b, pe_1_8_out_c, pe_1_8_out_d, pe_0_9_out_e, loadingWeights,
											pe_0_9_out_w, pe_0_9_out_x, pe_0_9_out_y, pe_0_9_out_z,
											pe_1_9_out_a, pe_1_9_out_b, pe_1_9_out_c, pe_1_9_out_d, pe_1_9_out_e,
											pe_1_9_out_w, pe_1_9_out_x, pe_1_9_out_y, pe_1_9_out_z);
	//pe 1 10
	int8_pe #(inputBits, outputBits) pe_1_10(clk, rst, clk2x,
											pe_1_9_out_a, pe_1_9_out_b, pe_1_9_out_c, pe_1_9_out_d, pe_0_10_out_e, loadingWeights,
											pe_0_10_out_w, pe_0_10_out_x, pe_0_10_out_y, pe_0_10_out_z,
											pe_1_10_out_a, pe_1_10_out_b, pe_1_10_out_c, pe_1_10_out_d, pe_1_10_out_e,
											pe_1_10_out_w, pe_1_10_out_x, pe_1_10_out_y, pe_1_10_out_z);
	//pe 1 11
	int8_pe #(inputBits, outputBits) pe_1_11(clk, rst, clk2x,
											pe_1_10_out_a, pe_1_10_out_b, pe_1_10_out_c, pe_1_10_out_d, pe_0_11_out_e, loadingWeights,
											pe_0_11_out_w, pe_0_11_out_x, pe_0_11_out_y, pe_0_11_out_z,
											pe_1_11_out_a, pe_1_11_out_b, pe_1_11_out_c, pe_1_11_out_d, pe_1_11_out_e,
											pe_1_11_out_w, pe_1_11_out_x, pe_1_11_out_y, pe_1_11_out_z);
	//pe 1 12
	int8_pe #(inputBits, outputBits) pe_1_12(clk, rst, clk2x,
											pe_1_11_out_a, pe_1_11_out_b, pe_1_11_out_c, pe_1_11_out_d, pe_0_12_out_e, loadingWeights,
											pe_0_12_out_w, pe_0_12_out_x, pe_0_12_out_y, pe_0_12_out_z,
											pe_1_12_out_a, pe_1_12_out_b, pe_1_12_out_c, pe_1_12_out_d, pe_1_12_out_e,
											pe_1_12_out_w, pe_1_12_out_x, pe_1_12_out_y, pe_1_12_out_z);
	//pe 1 13
	int8_pe #(inputBits, outputBits) pe_1_13(clk, rst, clk2x,
											pe_1_12_out_a, pe_1_12_out_b, pe_1_12_out_c, pe_1_12_out_d, pe_0_13_out_e, loadingWeights,
											pe_0_13_out_w, pe_0_13_out_x, pe_0_13_out_y, pe_0_13_out_z,
											pe_1_13_out_a, pe_1_13_out_b, pe_1_13_out_c, pe_1_13_out_d, pe_1_13_out_e,
											pe_1_13_out_w, pe_1_13_out_x, pe_1_13_out_y, pe_1_13_out_z);
	//line 2
	//pe 2 0
	int8_pe #(inputBits, outputBits) pe_2_0(clk, rst, clk2x,
											in_side_2_a, in_side_2_b, in_side_2_c, in_side_2_d, pe_1_0_out_e, loadingWeights,
											pe_1_0_out_w, pe_1_0_out_x, pe_1_0_out_y, pe_1_0_out_z,
											pe_2_0_out_a, pe_2_0_out_b, pe_2_0_out_c, pe_2_0_out_d, pe_2_0_out_e,
											pe_2_0_out_w, pe_2_0_out_x, pe_2_0_out_y, pe_2_0_out_z);
	//pe 2 1
	int8_pe #(inputBits, outputBits) pe_2_1(clk, rst, clk2x,
											pe_2_0_out_a, pe_2_0_out_b, pe_2_0_out_c, pe_2_0_out_d, pe_1_1_out_e, loadingWeights,
											pe_1_1_out_w, pe_1_1_out_x, pe_1_1_out_y, pe_1_1_out_z,
											pe_2_1_out_a, pe_2_1_out_b, pe_2_1_out_c, pe_2_1_out_d, pe_2_1_out_e,
											pe_2_1_out_w, pe_2_1_out_x, pe_2_1_out_y, pe_2_1_out_z);
	//pe 2 2
	int8_pe #(inputBits, outputBits) pe_2_2(clk, rst, clk2x,
											pe_2_1_out_a, pe_2_1_out_b, pe_2_1_out_c, pe_2_1_out_d, pe_1_2_out_e, loadingWeights,
											pe_1_2_out_w, pe_1_2_out_x, pe_1_2_out_y, pe_1_2_out_z,
											pe_2_2_out_a, pe_2_2_out_b, pe_2_2_out_c, pe_2_2_out_d, pe_2_2_out_e,
											pe_2_2_out_w, pe_2_2_out_x, pe_2_2_out_y, pe_2_2_out_z);
	//pe 2 3
	int8_pe #(inputBits, outputBits) pe_2_3(clk, rst, clk2x,
											pe_2_2_out_a, pe_2_2_out_b, pe_2_2_out_c, pe_2_2_out_d, pe_1_3_out_e, loadingWeights,
											pe_1_3_out_w, pe_1_3_out_x, pe_1_3_out_y, pe_1_3_out_z,
											pe_2_3_out_a, pe_2_3_out_b, pe_2_3_out_c, pe_2_3_out_d, pe_2_3_out_e,
											pe_2_3_out_w, pe_2_3_out_x, pe_2_3_out_y, pe_2_3_out_z);
	//pe 2 4
	int8_pe #(inputBits, outputBits) pe_2_4(clk, rst, clk2x,
											pe_2_3_out_a, pe_2_3_out_b, pe_2_3_out_c, pe_2_3_out_d, pe_1_4_out_e, loadingWeights,
											pe_1_4_out_w, pe_1_4_out_x, pe_1_4_out_y, pe_1_4_out_z,
											pe_2_4_out_a, pe_2_4_out_b, pe_2_4_out_c, pe_2_4_out_d, pe_2_4_out_e,
											pe_2_4_out_w, pe_2_4_out_x, pe_2_4_out_y, pe_2_4_out_z);
	//pe 2 5
	int8_pe #(inputBits, outputBits) pe_2_5(clk, rst, clk2x,
											pe_2_4_out_a, pe_2_4_out_b, pe_2_4_out_c, pe_2_4_out_d, pe_1_5_out_e, loadingWeights,
											pe_1_5_out_w, pe_1_5_out_x, pe_1_5_out_y, pe_1_5_out_z,
											pe_2_5_out_a, pe_2_5_out_b, pe_2_5_out_c, pe_2_5_out_d, pe_2_5_out_e,
											pe_2_5_out_w, pe_2_5_out_x, pe_2_5_out_y, pe_2_5_out_z);
	//pe 2 6
	int8_pe #(inputBits, outputBits) pe_2_6(clk, rst, clk2x,
											pe_2_5_out_a, pe_2_5_out_b, pe_2_5_out_c, pe_2_5_out_d, pe_1_6_out_e, loadingWeights,
											pe_1_6_out_w, pe_1_6_out_x, pe_1_6_out_y, pe_1_6_out_z,
											pe_2_6_out_a, pe_2_6_out_b, pe_2_6_out_c, pe_2_6_out_d, pe_2_6_out_e,
											pe_2_6_out_w, pe_2_6_out_x, pe_2_6_out_y, pe_2_6_out_z);
	//pe 2 7
	int8_pe #(inputBits, outputBits) pe_2_7(clk, rst, clk2x,
											pe_2_6_out_a, pe_2_6_out_b, pe_2_6_out_c, pe_2_6_out_d, pe_1_7_out_e, loadingWeights,
											pe_1_7_out_w, pe_1_7_out_x, pe_1_7_out_y, pe_1_7_out_z,
											pe_2_7_out_a, pe_2_7_out_b, pe_2_7_out_c, pe_2_7_out_d, pe_2_7_out_e,
											pe_2_7_out_w, pe_2_7_out_x, pe_2_7_out_y, pe_2_7_out_z);
	//pe 2 8
	int8_pe #(inputBits, outputBits) pe_2_8(clk, rst, clk2x,
											pe_2_7_out_a, pe_2_7_out_b, pe_2_7_out_c, pe_2_7_out_d, pe_1_8_out_e, loadingWeights,
											pe_1_8_out_w, pe_1_8_out_x, pe_1_8_out_y, pe_1_8_out_z,
											pe_2_8_out_a, pe_2_8_out_b, pe_2_8_out_c, pe_2_8_out_d, pe_2_8_out_e,
											pe_2_8_out_w, pe_2_8_out_x, pe_2_8_out_y, pe_2_8_out_z);
	//pe 2 9
	int8_pe #(inputBits, outputBits) pe_2_9(clk, rst, clk2x,
											pe_2_8_out_a, pe_2_8_out_b, pe_2_8_out_c, pe_2_8_out_d, pe_1_9_out_e, loadingWeights,
											pe_1_9_out_w, pe_1_9_out_x, pe_1_9_out_y, pe_1_9_out_z,
											pe_2_9_out_a, pe_2_9_out_b, pe_2_9_out_c, pe_2_9_out_d, pe_2_9_out_e,
											pe_2_9_out_w, pe_2_9_out_x, pe_2_9_out_y, pe_2_9_out_z);
	//pe 2 10
	int8_pe #(inputBits, outputBits) pe_2_10(clk, rst, clk2x,
											pe_2_9_out_a, pe_2_9_out_b, pe_2_9_out_c, pe_2_9_out_d, pe_1_10_out_e, loadingWeights,
											pe_1_10_out_w, pe_1_10_out_x, pe_1_10_out_y, pe_1_10_out_z,
											pe_2_10_out_a, pe_2_10_out_b, pe_2_10_out_c, pe_2_10_out_d, pe_2_10_out_e,
											pe_2_10_out_w, pe_2_10_out_x, pe_2_10_out_y, pe_2_10_out_z);
	//pe 2 11
	int8_pe #(inputBits, outputBits) pe_2_11(clk, rst, clk2x,
											pe_2_10_out_a, pe_2_10_out_b, pe_2_10_out_c, pe_2_10_out_d, pe_1_11_out_e, loadingWeights,
											pe_1_11_out_w, pe_1_11_out_x, pe_1_11_out_y, pe_1_11_out_z,
											pe_2_11_out_a, pe_2_11_out_b, pe_2_11_out_c, pe_2_11_out_d, pe_2_11_out_e,
											pe_2_11_out_w, pe_2_11_out_x, pe_2_11_out_y, pe_2_11_out_z);
	//pe 2 12
	int8_pe #(inputBits, outputBits) pe_2_12(clk, rst, clk2x,
											pe_2_11_out_a, pe_2_11_out_b, pe_2_11_out_c, pe_2_11_out_d, pe_1_12_out_e, loadingWeights,
											pe_1_12_out_w, pe_1_12_out_x, pe_1_12_out_y, pe_1_12_out_z,
											pe_2_12_out_a, pe_2_12_out_b, pe_2_12_out_c, pe_2_12_out_d, pe_2_12_out_e,
											pe_2_12_out_w, pe_2_12_out_x, pe_2_12_out_y, pe_2_12_out_z);
	//pe 2 13
	int8_pe #(inputBits, outputBits) pe_2_13(clk, rst, clk2x,
											pe_2_12_out_a, pe_2_12_out_b, pe_2_12_out_c, pe_2_12_out_d, pe_1_13_out_e, loadingWeights,
											pe_1_13_out_w, pe_1_13_out_x, pe_1_13_out_y, pe_1_13_out_z,
											pe_2_13_out_a, pe_2_13_out_b, pe_2_13_out_c, pe_2_13_out_d, pe_2_13_out_e,
											pe_2_13_out_w, pe_2_13_out_x, pe_2_13_out_y, pe_2_13_out_z);
	//line 3
	//pe 3 0
	int8_pe #(inputBits, outputBits) pe_3_0(clk, rst, clk2x,
											in_side_3_a, in_side_3_b, in_side_3_c, in_side_3_d, pe_2_0_out_e, loadingWeights,
											pe_2_0_out_w, pe_2_0_out_x, pe_2_0_out_y, pe_2_0_out_z,
											pe_3_0_out_a, pe_3_0_out_b, pe_3_0_out_c, pe_3_0_out_d, pe_3_0_out_e,
											pe_3_0_out_w, pe_3_0_out_x, pe_3_0_out_y, pe_3_0_out_z);
	//pe 3 1
	int8_pe #(inputBits, outputBits) pe_3_1(clk, rst, clk2x,
											pe_3_0_out_a, pe_3_0_out_b, pe_3_0_out_c, pe_3_0_out_d, pe_2_1_out_e, loadingWeights,
											pe_2_1_out_w, pe_2_1_out_x, pe_2_1_out_y, pe_2_1_out_z,
											pe_3_1_out_a, pe_3_1_out_b, pe_3_1_out_c, pe_3_1_out_d, pe_3_1_out_e,
											pe_3_1_out_w, pe_3_1_out_x, pe_3_1_out_y, pe_3_1_out_z);
	//pe 3 2
	int8_pe #(inputBits, outputBits) pe_3_2(clk, rst, clk2x,
											pe_3_1_out_a, pe_3_1_out_b, pe_3_1_out_c, pe_3_1_out_d, pe_2_2_out_e, loadingWeights,
											pe_2_2_out_w, pe_2_2_out_x, pe_2_2_out_y, pe_2_2_out_z,
											pe_3_2_out_a, pe_3_2_out_b, pe_3_2_out_c, pe_3_2_out_d, pe_3_2_out_e,
											pe_3_2_out_w, pe_3_2_out_x, pe_3_2_out_y, pe_3_2_out_z);
	//pe 3 3
	int8_pe #(inputBits, outputBits) pe_3_3(clk, rst, clk2x,
											pe_3_2_out_a, pe_3_2_out_b, pe_3_2_out_c, pe_3_2_out_d, pe_2_3_out_e, loadingWeights,
											pe_2_3_out_w, pe_2_3_out_x, pe_2_3_out_y, pe_2_3_out_z,
											pe_3_3_out_a, pe_3_3_out_b, pe_3_3_out_c, pe_3_3_out_d, pe_3_3_out_e,
											pe_3_3_out_w, pe_3_3_out_x, pe_3_3_out_y, pe_3_3_out_z);
	//pe 3 4
	int8_pe #(inputBits, outputBits) pe_3_4(clk, rst, clk2x,
											pe_3_3_out_a, pe_3_3_out_b, pe_3_3_out_c, pe_3_3_out_d, pe_2_4_out_e, loadingWeights,
											pe_2_4_out_w, pe_2_4_out_x, pe_2_4_out_y, pe_2_4_out_z,
											pe_3_4_out_a, pe_3_4_out_b, pe_3_4_out_c, pe_3_4_out_d, pe_3_4_out_e,
											pe_3_4_out_w, pe_3_4_out_x, pe_3_4_out_y, pe_3_4_out_z);
	//pe 3 5
	int8_pe #(inputBits, outputBits) pe_3_5(clk, rst, clk2x,
											pe_3_4_out_a, pe_3_4_out_b, pe_3_4_out_c, pe_3_4_out_d, pe_2_5_out_e, loadingWeights,
											pe_2_5_out_w, pe_2_5_out_x, pe_2_5_out_y, pe_2_5_out_z,
											pe_3_5_out_a, pe_3_5_out_b, pe_3_5_out_c, pe_3_5_out_d, pe_3_5_out_e,
											pe_3_5_out_w, pe_3_5_out_x, pe_3_5_out_y, pe_3_5_out_z);
	//pe 3 6
	int8_pe #(inputBits, outputBits) pe_3_6(clk, rst, clk2x,
											pe_3_5_out_a, pe_3_5_out_b, pe_3_5_out_c, pe_3_5_out_d, pe_2_6_out_e, loadingWeights,
											pe_2_6_out_w, pe_2_6_out_x, pe_2_6_out_y, pe_2_6_out_z,
											pe_3_6_out_a, pe_3_6_out_b, pe_3_6_out_c, pe_3_6_out_d, pe_3_6_out_e,
											pe_3_6_out_w, pe_3_6_out_x, pe_3_6_out_y, pe_3_6_out_z);
	//pe 3 7
	int8_pe #(inputBits, outputBits) pe_3_7(clk, rst, clk2x,
											pe_3_6_out_a, pe_3_6_out_b, pe_3_6_out_c, pe_3_6_out_d, pe_2_7_out_e, loadingWeights,
											pe_2_7_out_w, pe_2_7_out_x, pe_2_7_out_y, pe_2_7_out_z,
											pe_3_7_out_a, pe_3_7_out_b, pe_3_7_out_c, pe_3_7_out_d, pe_3_7_out_e,
											pe_3_7_out_w, pe_3_7_out_x, pe_3_7_out_y, pe_3_7_out_z);
	//pe 3 8
	int8_pe #(inputBits, outputBits) pe_3_8(clk, rst, clk2x,
											pe_3_7_out_a, pe_3_7_out_b, pe_3_7_out_c, pe_3_7_out_d, pe_2_8_out_e, loadingWeights,
											pe_2_8_out_w, pe_2_8_out_x, pe_2_8_out_y, pe_2_8_out_z,
											pe_3_8_out_a, pe_3_8_out_b, pe_3_8_out_c, pe_3_8_out_d, pe_3_8_out_e,
											pe_3_8_out_w, pe_3_8_out_x, pe_3_8_out_y, pe_3_8_out_z);
	//pe 3 9
	int8_pe #(inputBits, outputBits) pe_3_9(clk, rst, clk2x,
											pe_3_8_out_a, pe_3_8_out_b, pe_3_8_out_c, pe_3_8_out_d, pe_2_9_out_e, loadingWeights,
											pe_2_9_out_w, pe_2_9_out_x, pe_2_9_out_y, pe_2_9_out_z,
											pe_3_9_out_a, pe_3_9_out_b, pe_3_9_out_c, pe_3_9_out_d, pe_3_9_out_e,
											pe_3_9_out_w, pe_3_9_out_x, pe_3_9_out_y, pe_3_9_out_z);
	//pe 3 10
	int8_pe #(inputBits, outputBits) pe_3_10(clk, rst, clk2x,
											pe_3_9_out_a, pe_3_9_out_b, pe_3_9_out_c, pe_3_9_out_d, pe_2_10_out_e, loadingWeights,
											pe_2_10_out_w, pe_2_10_out_x, pe_2_10_out_y, pe_2_10_out_z,
											pe_3_10_out_a, pe_3_10_out_b, pe_3_10_out_c, pe_3_10_out_d, pe_3_10_out_e,
											pe_3_10_out_w, pe_3_10_out_x, pe_3_10_out_y, pe_3_10_out_z);
	//pe 3 11
	int8_pe #(inputBits, outputBits) pe_3_11(clk, rst, clk2x,
											pe_3_10_out_a, pe_3_10_out_b, pe_3_10_out_c, pe_3_10_out_d, pe_2_11_out_e, loadingWeights,
											pe_2_11_out_w, pe_2_11_out_x, pe_2_11_out_y, pe_2_11_out_z,
											pe_3_11_out_a, pe_3_11_out_b, pe_3_11_out_c, pe_3_11_out_d, pe_3_11_out_e,
											pe_3_11_out_w, pe_3_11_out_x, pe_3_11_out_y, pe_3_11_out_z);
	//pe 3 12
	int8_pe #(inputBits, outputBits) pe_3_12(clk, rst, clk2x,
											pe_3_11_out_a, pe_3_11_out_b, pe_3_11_out_c, pe_3_11_out_d, pe_2_12_out_e, loadingWeights,
											pe_2_12_out_w, pe_2_12_out_x, pe_2_12_out_y, pe_2_12_out_z,
											pe_3_12_out_a, pe_3_12_out_b, pe_3_12_out_c, pe_3_12_out_d, pe_3_12_out_e,
											pe_3_12_out_w, pe_3_12_out_x, pe_3_12_out_y, pe_3_12_out_z);
	//pe 3 13
	int8_pe #(inputBits, outputBits) pe_3_13(clk, rst, clk2x,
											pe_3_12_out_a, pe_3_12_out_b, pe_3_12_out_c, pe_3_12_out_d, pe_2_13_out_e, loadingWeights,
											pe_2_13_out_w, pe_2_13_out_x, pe_2_13_out_y, pe_2_13_out_z,
											pe_3_13_out_a, pe_3_13_out_b, pe_3_13_out_c, pe_3_13_out_d, pe_3_13_out_e,
											pe_3_13_out_w, pe_3_13_out_x, pe_3_13_out_y, pe_3_13_out_z);
	//line 4
	//pe 4 0
	int8_pe #(inputBits, outputBits) pe_4_0(clk, rst, clk2x,
											in_side_4_a, in_side_4_b, in_side_4_c, in_side_4_d, pe_3_0_out_e, loadingWeights,
											pe_3_0_out_w, pe_3_0_out_x, pe_3_0_out_y, pe_3_0_out_z,
											pe_4_0_out_a, pe_4_0_out_b, pe_4_0_out_c, pe_4_0_out_d, pe_4_0_out_e,
											pe_4_0_out_w, pe_4_0_out_x, pe_4_0_out_y, pe_4_0_out_z);
	//pe 4 1
	int8_pe #(inputBits, outputBits) pe_4_1(clk, rst, clk2x,
											pe_4_0_out_a, pe_4_0_out_b, pe_4_0_out_c, pe_4_0_out_d, pe_3_1_out_e, loadingWeights,
											pe_3_1_out_w, pe_3_1_out_x, pe_3_1_out_y, pe_3_1_out_z,
											pe_4_1_out_a, pe_4_1_out_b, pe_4_1_out_c, pe_4_1_out_d, pe_4_1_out_e,
											pe_4_1_out_w, pe_4_1_out_x, pe_4_1_out_y, pe_4_1_out_z);
	//pe 4 2
	int8_pe #(inputBits, outputBits) pe_4_2(clk, rst, clk2x,
											pe_4_1_out_a, pe_4_1_out_b, pe_4_1_out_c, pe_4_1_out_d, pe_3_2_out_e, loadingWeights,
											pe_3_2_out_w, pe_3_2_out_x, pe_3_2_out_y, pe_3_2_out_z,
											pe_4_2_out_a, pe_4_2_out_b, pe_4_2_out_c, pe_4_2_out_d, pe_4_2_out_e,
											pe_4_2_out_w, pe_4_2_out_x, pe_4_2_out_y, pe_4_2_out_z);
	//pe 4 3
	int8_pe #(inputBits, outputBits) pe_4_3(clk, rst, clk2x,
											pe_4_2_out_a, pe_4_2_out_b, pe_4_2_out_c, pe_4_2_out_d, pe_3_3_out_e, loadingWeights,
											pe_3_3_out_w, pe_3_3_out_x, pe_3_3_out_y, pe_3_3_out_z,
											pe_4_3_out_a, pe_4_3_out_b, pe_4_3_out_c, pe_4_3_out_d, pe_4_3_out_e,
											pe_4_3_out_w, pe_4_3_out_x, pe_4_3_out_y, pe_4_3_out_z);
	//pe 4 4
	int8_pe #(inputBits, outputBits) pe_4_4(clk, rst, clk2x,
											pe_4_3_out_a, pe_4_3_out_b, pe_4_3_out_c, pe_4_3_out_d, pe_3_4_out_e, loadingWeights,
											pe_3_4_out_w, pe_3_4_out_x, pe_3_4_out_y, pe_3_4_out_z,
											pe_4_4_out_a, pe_4_4_out_b, pe_4_4_out_c, pe_4_4_out_d, pe_4_4_out_e,
											pe_4_4_out_w, pe_4_4_out_x, pe_4_4_out_y, pe_4_4_out_z);
	//pe 4 5
	int8_pe #(inputBits, outputBits) pe_4_5(clk, rst, clk2x,
											pe_4_4_out_a, pe_4_4_out_b, pe_4_4_out_c, pe_4_4_out_d, pe_3_5_out_e, loadingWeights,
											pe_3_5_out_w, pe_3_5_out_x, pe_3_5_out_y, pe_3_5_out_z,
											pe_4_5_out_a, pe_4_5_out_b, pe_4_5_out_c, pe_4_5_out_d, pe_4_5_out_e,
											pe_4_5_out_w, pe_4_5_out_x, pe_4_5_out_y, pe_4_5_out_z);
	//pe 4 6
	int8_pe #(inputBits, outputBits) pe_4_6(clk, rst, clk2x,
											pe_4_5_out_a, pe_4_5_out_b, pe_4_5_out_c, pe_4_5_out_d, pe_3_6_out_e, loadingWeights,
											pe_3_6_out_w, pe_3_6_out_x, pe_3_6_out_y, pe_3_6_out_z,
											pe_4_6_out_a, pe_4_6_out_b, pe_4_6_out_c, pe_4_6_out_d, pe_4_6_out_e,
											pe_4_6_out_w, pe_4_6_out_x, pe_4_6_out_y, pe_4_6_out_z);
	//pe 4 7
	int8_pe #(inputBits, outputBits) pe_4_7(clk, rst, clk2x,
											pe_4_6_out_a, pe_4_6_out_b, pe_4_6_out_c, pe_4_6_out_d, pe_3_7_out_e, loadingWeights,
											pe_3_7_out_w, pe_3_7_out_x, pe_3_7_out_y, pe_3_7_out_z,
											pe_4_7_out_a, pe_4_7_out_b, pe_4_7_out_c, pe_4_7_out_d, pe_4_7_out_e,
											pe_4_7_out_w, pe_4_7_out_x, pe_4_7_out_y, pe_4_7_out_z);
	//pe 4 8
	int8_pe #(inputBits, outputBits) pe_4_8(clk, rst, clk2x,
											pe_4_7_out_a, pe_4_7_out_b, pe_4_7_out_c, pe_4_7_out_d, pe_3_8_out_e, loadingWeights,
											pe_3_8_out_w, pe_3_8_out_x, pe_3_8_out_y, pe_3_8_out_z,
											pe_4_8_out_a, pe_4_8_out_b, pe_4_8_out_c, pe_4_8_out_d, pe_4_8_out_e,
											pe_4_8_out_w, pe_4_8_out_x, pe_4_8_out_y, pe_4_8_out_z);
	//pe 4 9
	int8_pe #(inputBits, outputBits) pe_4_9(clk, rst, clk2x,
											pe_4_8_out_a, pe_4_8_out_b, pe_4_8_out_c, pe_4_8_out_d, pe_3_9_out_e, loadingWeights,
											pe_3_9_out_w, pe_3_9_out_x, pe_3_9_out_y, pe_3_9_out_z,
											pe_4_9_out_a, pe_4_9_out_b, pe_4_9_out_c, pe_4_9_out_d, pe_4_9_out_e,
											pe_4_9_out_w, pe_4_9_out_x, pe_4_9_out_y, pe_4_9_out_z);
	//pe 4 10
	int8_pe #(inputBits, outputBits) pe_4_10(clk, rst, clk2x,
											pe_4_9_out_a, pe_4_9_out_b, pe_4_9_out_c, pe_4_9_out_d, pe_3_10_out_e, loadingWeights,
											pe_3_10_out_w, pe_3_10_out_x, pe_3_10_out_y, pe_3_10_out_z,
											pe_4_10_out_a, pe_4_10_out_b, pe_4_10_out_c, pe_4_10_out_d, pe_4_10_out_e,
											pe_4_10_out_w, pe_4_10_out_x, pe_4_10_out_y, pe_4_10_out_z);
	//pe 4 11
	int8_pe #(inputBits, outputBits) pe_4_11(clk, rst, clk2x,
											pe_4_10_out_a, pe_4_10_out_b, pe_4_10_out_c, pe_4_10_out_d, pe_3_11_out_e, loadingWeights,
											pe_3_11_out_w, pe_3_11_out_x, pe_3_11_out_y, pe_3_11_out_z,
											pe_4_11_out_a, pe_4_11_out_b, pe_4_11_out_c, pe_4_11_out_d, pe_4_11_out_e,
											pe_4_11_out_w, pe_4_11_out_x, pe_4_11_out_y, pe_4_11_out_z);
	//pe 4 12
	int8_pe #(inputBits, outputBits) pe_4_12(clk, rst, clk2x,
											pe_4_11_out_a, pe_4_11_out_b, pe_4_11_out_c, pe_4_11_out_d, pe_3_12_out_e, loadingWeights,
											pe_3_12_out_w, pe_3_12_out_x, pe_3_12_out_y, pe_3_12_out_z,
											pe_4_12_out_a, pe_4_12_out_b, pe_4_12_out_c, pe_4_12_out_d, pe_4_12_out_e,
											pe_4_12_out_w, pe_4_12_out_x, pe_4_12_out_y, pe_4_12_out_z);
	//pe 4 13
	int8_pe #(inputBits, outputBits) pe_4_13(clk, rst, clk2x,
											pe_4_12_out_a, pe_4_12_out_b, pe_4_12_out_c, pe_4_12_out_d, pe_3_13_out_e, loadingWeights,
											pe_3_13_out_w, pe_3_13_out_x, pe_3_13_out_y, pe_3_13_out_z,
											pe_4_13_out_a, pe_4_13_out_b, pe_4_13_out_c, pe_4_13_out_d, pe_4_13_out_e,
											pe_4_13_out_w, pe_4_13_out_x, pe_4_13_out_y, pe_4_13_out_z);
	//line 5
	//pe 5 0
	int8_pe #(inputBits, outputBits) pe_5_0(clk, rst, clk2x,
											in_side_5_a, in_side_5_b, in_side_5_c, in_side_5_d, pe_4_0_out_e, loadingWeights,
											pe_4_0_out_w, pe_4_0_out_x, pe_4_0_out_y, pe_4_0_out_z,
											pe_5_0_out_a, pe_5_0_out_b, pe_5_0_out_c, pe_5_0_out_d, pe_5_0_out_e,
											pe_5_0_out_w, pe_5_0_out_x, pe_5_0_out_y, pe_5_0_out_z);
	//pe 5 1
	int8_pe #(inputBits, outputBits) pe_5_1(clk, rst, clk2x,
											pe_5_0_out_a, pe_5_0_out_b, pe_5_0_out_c, pe_5_0_out_d, pe_4_1_out_e, loadingWeights,
											pe_4_1_out_w, pe_4_1_out_x, pe_4_1_out_y, pe_4_1_out_z,
											pe_5_1_out_a, pe_5_1_out_b, pe_5_1_out_c, pe_5_1_out_d, pe_5_1_out_e,
											pe_5_1_out_w, pe_5_1_out_x, pe_5_1_out_y, pe_5_1_out_z);
	//pe 5 2
	int8_pe #(inputBits, outputBits) pe_5_2(clk, rst, clk2x,
											pe_5_1_out_a, pe_5_1_out_b, pe_5_1_out_c, pe_5_1_out_d, pe_4_2_out_e, loadingWeights,
											pe_4_2_out_w, pe_4_2_out_x, pe_4_2_out_y, pe_4_2_out_z,
											pe_5_2_out_a, pe_5_2_out_b, pe_5_2_out_c, pe_5_2_out_d, pe_5_2_out_e,
											pe_5_2_out_w, pe_5_2_out_x, pe_5_2_out_y, pe_5_2_out_z);
	//pe 5 3
	int8_pe #(inputBits, outputBits) pe_5_3(clk, rst, clk2x,
											pe_5_2_out_a, pe_5_2_out_b, pe_5_2_out_c, pe_5_2_out_d, pe_4_3_out_e, loadingWeights,
											pe_4_3_out_w, pe_4_3_out_x, pe_4_3_out_y, pe_4_3_out_z,
											pe_5_3_out_a, pe_5_3_out_b, pe_5_3_out_c, pe_5_3_out_d, pe_5_3_out_e,
											pe_5_3_out_w, pe_5_3_out_x, pe_5_3_out_y, pe_5_3_out_z);
	//pe 5 4
	int8_pe #(inputBits, outputBits) pe_5_4(clk, rst, clk2x,
											pe_5_3_out_a, pe_5_3_out_b, pe_5_3_out_c, pe_5_3_out_d, pe_4_4_out_e, loadingWeights,
											pe_4_4_out_w, pe_4_4_out_x, pe_4_4_out_y, pe_4_4_out_z,
											pe_5_4_out_a, pe_5_4_out_b, pe_5_4_out_c, pe_5_4_out_d, pe_5_4_out_e,
											pe_5_4_out_w, pe_5_4_out_x, pe_5_4_out_y, pe_5_4_out_z);
	//pe 5 5
	int8_pe #(inputBits, outputBits) pe_5_5(clk, rst, clk2x,
											pe_5_4_out_a, pe_5_4_out_b, pe_5_4_out_c, pe_5_4_out_d, pe_4_5_out_e, loadingWeights,
											pe_4_5_out_w, pe_4_5_out_x, pe_4_5_out_y, pe_4_5_out_z,
											pe_5_5_out_a, pe_5_5_out_b, pe_5_5_out_c, pe_5_5_out_d, pe_5_5_out_e,
											pe_5_5_out_w, pe_5_5_out_x, pe_5_5_out_y, pe_5_5_out_z);
	//pe 5 6
	int8_pe #(inputBits, outputBits) pe_5_6(clk, rst, clk2x,
											pe_5_5_out_a, pe_5_5_out_b, pe_5_5_out_c, pe_5_5_out_d, pe_4_6_out_e, loadingWeights,
											pe_4_6_out_w, pe_4_6_out_x, pe_4_6_out_y, pe_4_6_out_z,
											pe_5_6_out_a, pe_5_6_out_b, pe_5_6_out_c, pe_5_6_out_d, pe_5_6_out_e,
											pe_5_6_out_w, pe_5_6_out_x, pe_5_6_out_y, pe_5_6_out_z);
	//pe 5 7
	int8_pe #(inputBits, outputBits) pe_5_7(clk, rst, clk2x,
											pe_5_6_out_a, pe_5_6_out_b, pe_5_6_out_c, pe_5_6_out_d, pe_4_7_out_e, loadingWeights,
											pe_4_7_out_w, pe_4_7_out_x, pe_4_7_out_y, pe_4_7_out_z,
											pe_5_7_out_a, pe_5_7_out_b, pe_5_7_out_c, pe_5_7_out_d, pe_5_7_out_e,
											pe_5_7_out_w, pe_5_7_out_x, pe_5_7_out_y, pe_5_7_out_z);
	//pe 5 8
	int8_pe #(inputBits, outputBits) pe_5_8(clk, rst, clk2x,
											pe_5_7_out_a, pe_5_7_out_b, pe_5_7_out_c, pe_5_7_out_d, pe_4_8_out_e, loadingWeights,
											pe_4_8_out_w, pe_4_8_out_x, pe_4_8_out_y, pe_4_8_out_z,
											pe_5_8_out_a, pe_5_8_out_b, pe_5_8_out_c, pe_5_8_out_d, pe_5_8_out_e,
											pe_5_8_out_w, pe_5_8_out_x, pe_5_8_out_y, pe_5_8_out_z);
	//pe 5 9
	int8_pe #(inputBits, outputBits) pe_5_9(clk, rst, clk2x,
											pe_5_8_out_a, pe_5_8_out_b, pe_5_8_out_c, pe_5_8_out_d, pe_4_9_out_e, loadingWeights,
											pe_4_9_out_w, pe_4_9_out_x, pe_4_9_out_y, pe_4_9_out_z,
											pe_5_9_out_a, pe_5_9_out_b, pe_5_9_out_c, pe_5_9_out_d, pe_5_9_out_e,
											pe_5_9_out_w, pe_5_9_out_x, pe_5_9_out_y, pe_5_9_out_z);
	//pe 5 10
	int8_pe #(inputBits, outputBits) pe_5_10(clk, rst, clk2x,
											pe_5_9_out_a, pe_5_9_out_b, pe_5_9_out_c, pe_5_9_out_d, pe_4_10_out_e, loadingWeights,
											pe_4_10_out_w, pe_4_10_out_x, pe_4_10_out_y, pe_4_10_out_z,
											pe_5_10_out_a, pe_5_10_out_b, pe_5_10_out_c, pe_5_10_out_d, pe_5_10_out_e,
											pe_5_10_out_w, pe_5_10_out_x, pe_5_10_out_y, pe_5_10_out_z);
	//pe 5 11
	int8_pe #(inputBits, outputBits) pe_5_11(clk, rst, clk2x,
											pe_5_10_out_a, pe_5_10_out_b, pe_5_10_out_c, pe_5_10_out_d, pe_4_11_out_e, loadingWeights,
											pe_4_11_out_w, pe_4_11_out_x, pe_4_11_out_y, pe_4_11_out_z,
											pe_5_11_out_a, pe_5_11_out_b, pe_5_11_out_c, pe_5_11_out_d, pe_5_11_out_e,
											pe_5_11_out_w, pe_5_11_out_x, pe_5_11_out_y, pe_5_11_out_z);
	//pe 5 12
	int8_pe #(inputBits, outputBits) pe_5_12(clk, rst, clk2x,
											pe_5_11_out_a, pe_5_11_out_b, pe_5_11_out_c, pe_5_11_out_d, pe_4_12_out_e, loadingWeights,
											pe_4_12_out_w, pe_4_12_out_x, pe_4_12_out_y, pe_4_12_out_z,
											pe_5_12_out_a, pe_5_12_out_b, pe_5_12_out_c, pe_5_12_out_d, pe_5_12_out_e,
											pe_5_12_out_w, pe_5_12_out_x, pe_5_12_out_y, pe_5_12_out_z);
	//pe 5 13
	int8_pe #(inputBits, outputBits) pe_5_13(clk, rst, clk2x,
											pe_5_12_out_a, pe_5_12_out_b, pe_5_12_out_c, pe_5_12_out_d, pe_4_13_out_e, loadingWeights,
											pe_4_13_out_w, pe_4_13_out_x, pe_4_13_out_y, pe_4_13_out_z,
											pe_5_13_out_a, pe_5_13_out_b, pe_5_13_out_c, pe_5_13_out_d, pe_5_13_out_e,
											pe_5_13_out_w, pe_5_13_out_x, pe_5_13_out_y, pe_5_13_out_z);
	//line 6
	//pe 6 0
	int8_pe #(inputBits, outputBits) pe_6_0(clk, rst, clk2x,
											in_side_6_a, in_side_6_b, in_side_6_c, in_side_6_d, pe_5_0_out_e, loadingWeights,
											pe_5_0_out_w, pe_5_0_out_x, pe_5_0_out_y, pe_5_0_out_z,
											pe_6_0_out_a, pe_6_0_out_b, pe_6_0_out_c, pe_6_0_out_d, pe_6_0_out_e,
											pe_6_0_out_w, pe_6_0_out_x, pe_6_0_out_y, pe_6_0_out_z);
	//pe 6 1
	int8_pe #(inputBits, outputBits) pe_6_1(clk, rst, clk2x,
											pe_6_0_out_a, pe_6_0_out_b, pe_6_0_out_c, pe_6_0_out_d, pe_5_1_out_e, loadingWeights,
											pe_5_1_out_w, pe_5_1_out_x, pe_5_1_out_y, pe_5_1_out_z,
											pe_6_1_out_a, pe_6_1_out_b, pe_6_1_out_c, pe_6_1_out_d, pe_6_1_out_e,
											pe_6_1_out_w, pe_6_1_out_x, pe_6_1_out_y, pe_6_1_out_z);
	//pe 6 2
	int8_pe #(inputBits, outputBits) pe_6_2(clk, rst, clk2x,
											pe_6_1_out_a, pe_6_1_out_b, pe_6_1_out_c, pe_6_1_out_d, pe_5_2_out_e, loadingWeights,
											pe_5_2_out_w, pe_5_2_out_x, pe_5_2_out_y, pe_5_2_out_z,
											pe_6_2_out_a, pe_6_2_out_b, pe_6_2_out_c, pe_6_2_out_d, pe_6_2_out_e,
											pe_6_2_out_w, pe_6_2_out_x, pe_6_2_out_y, pe_6_2_out_z);
	//pe 6 3
	int8_pe #(inputBits, outputBits) pe_6_3(clk, rst, clk2x,
											pe_6_2_out_a, pe_6_2_out_b, pe_6_2_out_c, pe_6_2_out_d, pe_5_3_out_e, loadingWeights,
											pe_5_3_out_w, pe_5_3_out_x, pe_5_3_out_y, pe_5_3_out_z,
											pe_6_3_out_a, pe_6_3_out_b, pe_6_3_out_c, pe_6_3_out_d, pe_6_3_out_e,
											pe_6_3_out_w, pe_6_3_out_x, pe_6_3_out_y, pe_6_3_out_z);
	//pe 6 4
	int8_pe #(inputBits, outputBits) pe_6_4(clk, rst, clk2x,
											pe_6_3_out_a, pe_6_3_out_b, pe_6_3_out_c, pe_6_3_out_d, pe_5_4_out_e, loadingWeights,
											pe_5_4_out_w, pe_5_4_out_x, pe_5_4_out_y, pe_5_4_out_z,
											pe_6_4_out_a, pe_6_4_out_b, pe_6_4_out_c, pe_6_4_out_d, pe_6_4_out_e,
											pe_6_4_out_w, pe_6_4_out_x, pe_6_4_out_y, pe_6_4_out_z);
	//pe 6 5
	int8_pe #(inputBits, outputBits) pe_6_5(clk, rst, clk2x,
											pe_6_4_out_a, pe_6_4_out_b, pe_6_4_out_c, pe_6_4_out_d, pe_5_5_out_e, loadingWeights,
											pe_5_5_out_w, pe_5_5_out_x, pe_5_5_out_y, pe_5_5_out_z,
											pe_6_5_out_a, pe_6_5_out_b, pe_6_5_out_c, pe_6_5_out_d, pe_6_5_out_e,
											pe_6_5_out_w, pe_6_5_out_x, pe_6_5_out_y, pe_6_5_out_z);
	//pe 6 6
	int8_pe #(inputBits, outputBits) pe_6_6(clk, rst, clk2x,
											pe_6_5_out_a, pe_6_5_out_b, pe_6_5_out_c, pe_6_5_out_d, pe_5_6_out_e, loadingWeights,
											pe_5_6_out_w, pe_5_6_out_x, pe_5_6_out_y, pe_5_6_out_z,
											pe_6_6_out_a, pe_6_6_out_b, pe_6_6_out_c, pe_6_6_out_d, pe_6_6_out_e,
											pe_6_6_out_w, pe_6_6_out_x, pe_6_6_out_y, pe_6_6_out_z);
	//pe 6 7
	int8_pe #(inputBits, outputBits) pe_6_7(clk, rst, clk2x,
											pe_6_6_out_a, pe_6_6_out_b, pe_6_6_out_c, pe_6_6_out_d, pe_5_7_out_e, loadingWeights,
											pe_5_7_out_w, pe_5_7_out_x, pe_5_7_out_y, pe_5_7_out_z,
											pe_6_7_out_a, pe_6_7_out_b, pe_6_7_out_c, pe_6_7_out_d, pe_6_7_out_e,
											pe_6_7_out_w, pe_6_7_out_x, pe_6_7_out_y, pe_6_7_out_z);
	//pe 6 8
	int8_pe #(inputBits, outputBits) pe_6_8(clk, rst, clk2x,
											pe_6_7_out_a, pe_6_7_out_b, pe_6_7_out_c, pe_6_7_out_d, pe_5_8_out_e, loadingWeights,
											pe_5_8_out_w, pe_5_8_out_x, pe_5_8_out_y, pe_5_8_out_z,
											pe_6_8_out_a, pe_6_8_out_b, pe_6_8_out_c, pe_6_8_out_d, pe_6_8_out_e,
											pe_6_8_out_w, pe_6_8_out_x, pe_6_8_out_y, pe_6_8_out_z);
	//pe 6 9
	int8_pe #(inputBits, outputBits) pe_6_9(clk, rst, clk2x,
											pe_6_8_out_a, pe_6_8_out_b, pe_6_8_out_c, pe_6_8_out_d, pe_5_9_out_e, loadingWeights,
											pe_5_9_out_w, pe_5_9_out_x, pe_5_9_out_y, pe_5_9_out_z,
											pe_6_9_out_a, pe_6_9_out_b, pe_6_9_out_c, pe_6_9_out_d, pe_6_9_out_e,
											pe_6_9_out_w, pe_6_9_out_x, pe_6_9_out_y, pe_6_9_out_z);
	//pe 6 10
	int8_pe #(inputBits, outputBits) pe_6_10(clk, rst, clk2x,
											pe_6_9_out_a, pe_6_9_out_b, pe_6_9_out_c, pe_6_9_out_d, pe_5_10_out_e, loadingWeights,
											pe_5_10_out_w, pe_5_10_out_x, pe_5_10_out_y, pe_5_10_out_z,
											pe_6_10_out_a, pe_6_10_out_b, pe_6_10_out_c, pe_6_10_out_d, pe_6_10_out_e,
											pe_6_10_out_w, pe_6_10_out_x, pe_6_10_out_y, pe_6_10_out_z);
	//pe 6 11
	int8_pe #(inputBits, outputBits) pe_6_11(clk, rst, clk2x,
											pe_6_10_out_a, pe_6_10_out_b, pe_6_10_out_c, pe_6_10_out_d, pe_5_11_out_e, loadingWeights,
											pe_5_11_out_w, pe_5_11_out_x, pe_5_11_out_y, pe_5_11_out_z,
											pe_6_11_out_a, pe_6_11_out_b, pe_6_11_out_c, pe_6_11_out_d, pe_6_11_out_e,
											pe_6_11_out_w, pe_6_11_out_x, pe_6_11_out_y, pe_6_11_out_z);
	//pe 6 12
	int8_pe #(inputBits, outputBits) pe_6_12(clk, rst, clk2x,
											pe_6_11_out_a, pe_6_11_out_b, pe_6_11_out_c, pe_6_11_out_d, pe_5_12_out_e, loadingWeights,
											pe_5_12_out_w, pe_5_12_out_x, pe_5_12_out_y, pe_5_12_out_z,
											pe_6_12_out_a, pe_6_12_out_b, pe_6_12_out_c, pe_6_12_out_d, pe_6_12_out_e,
											pe_6_12_out_w, pe_6_12_out_x, pe_6_12_out_y, pe_6_12_out_z);
	//pe 6 13
	int8_pe #(inputBits, outputBits) pe_6_13(clk, rst, clk2x,
											pe_6_12_out_a, pe_6_12_out_b, pe_6_12_out_c, pe_6_12_out_d, pe_5_13_out_e, loadingWeights,
											pe_5_13_out_w, pe_5_13_out_x, pe_5_13_out_y, pe_5_13_out_z,
											pe_6_13_out_a, pe_6_13_out_b, pe_6_13_out_c, pe_6_13_out_d, pe_6_13_out_e,
											pe_6_13_out_w, pe_6_13_out_x, pe_6_13_out_y, pe_6_13_out_z);
	//line 7
	//pe 7 0
	int8_pe #(inputBits, outputBits) pe_7_0(clk, rst, clk2x,
											in_side_7_a, in_side_7_b, in_side_7_c, in_side_7_d, pe_6_0_out_e, loadingWeights,
											pe_6_0_out_w, pe_6_0_out_x, pe_6_0_out_y, pe_6_0_out_z,
											pe_7_0_out_a, pe_7_0_out_b, pe_7_0_out_c, pe_7_0_out_d, pe_7_0_out_e,
											pe_7_0_out_w, pe_7_0_out_x, pe_7_0_out_y, pe_7_0_out_z);
	//pe 7 1
	int8_pe #(inputBits, outputBits) pe_7_1(clk, rst, clk2x,
											pe_7_0_out_a, pe_7_0_out_b, pe_7_0_out_c, pe_7_0_out_d, pe_6_1_out_e, loadingWeights,
											pe_6_1_out_w, pe_6_1_out_x, pe_6_1_out_y, pe_6_1_out_z,
											pe_7_1_out_a, pe_7_1_out_b, pe_7_1_out_c, pe_7_1_out_d, pe_7_1_out_e,
											pe_7_1_out_w, pe_7_1_out_x, pe_7_1_out_y, pe_7_1_out_z);
	//pe 7 2
	int8_pe #(inputBits, outputBits) pe_7_2(clk, rst, clk2x,
											pe_7_1_out_a, pe_7_1_out_b, pe_7_1_out_c, pe_7_1_out_d, pe_6_2_out_e, loadingWeights,
											pe_6_2_out_w, pe_6_2_out_x, pe_6_2_out_y, pe_6_2_out_z,
											pe_7_2_out_a, pe_7_2_out_b, pe_7_2_out_c, pe_7_2_out_d, pe_7_2_out_e,
											pe_7_2_out_w, pe_7_2_out_x, pe_7_2_out_y, pe_7_2_out_z);
	//pe 7 3
	int8_pe #(inputBits, outputBits) pe_7_3(clk, rst, clk2x,
											pe_7_2_out_a, pe_7_2_out_b, pe_7_2_out_c, pe_7_2_out_d, pe_6_3_out_e, loadingWeights,
											pe_6_3_out_w, pe_6_3_out_x, pe_6_3_out_y, pe_6_3_out_z,
											pe_7_3_out_a, pe_7_3_out_b, pe_7_3_out_c, pe_7_3_out_d, pe_7_3_out_e,
											pe_7_3_out_w, pe_7_3_out_x, pe_7_3_out_y, pe_7_3_out_z);
	//pe 7 4
	int8_pe #(inputBits, outputBits) pe_7_4(clk, rst, clk2x,
											pe_7_3_out_a, pe_7_3_out_b, pe_7_3_out_c, pe_7_3_out_d, pe_6_4_out_e, loadingWeights,
											pe_6_4_out_w, pe_6_4_out_x, pe_6_4_out_y, pe_6_4_out_z,
											pe_7_4_out_a, pe_7_4_out_b, pe_7_4_out_c, pe_7_4_out_d, pe_7_4_out_e,
											pe_7_4_out_w, pe_7_4_out_x, pe_7_4_out_y, pe_7_4_out_z);
	//pe 7 5
	int8_pe #(inputBits, outputBits) pe_7_5(clk, rst, clk2x,
											pe_7_4_out_a, pe_7_4_out_b, pe_7_4_out_c, pe_7_4_out_d, pe_6_5_out_e, loadingWeights,
											pe_6_5_out_w, pe_6_5_out_x, pe_6_5_out_y, pe_6_5_out_z,
											pe_7_5_out_a, pe_7_5_out_b, pe_7_5_out_c, pe_7_5_out_d, pe_7_5_out_e,
											pe_7_5_out_w, pe_7_5_out_x, pe_7_5_out_y, pe_7_5_out_z);
	//pe 7 6
	int8_pe #(inputBits, outputBits) pe_7_6(clk, rst, clk2x,
											pe_7_5_out_a, pe_7_5_out_b, pe_7_5_out_c, pe_7_5_out_d, pe_6_6_out_e, loadingWeights,
											pe_6_6_out_w, pe_6_6_out_x, pe_6_6_out_y, pe_6_6_out_z,
											pe_7_6_out_a, pe_7_6_out_b, pe_7_6_out_c, pe_7_6_out_d, pe_7_6_out_e,
											pe_7_6_out_w, pe_7_6_out_x, pe_7_6_out_y, pe_7_6_out_z);
	//pe 7 7
	int8_pe #(inputBits, outputBits) pe_7_7(clk, rst, clk2x,
											pe_7_6_out_a, pe_7_6_out_b, pe_7_6_out_c, pe_7_6_out_d, pe_6_7_out_e, loadingWeights,
											pe_6_7_out_w, pe_6_7_out_x, pe_6_7_out_y, pe_6_7_out_z,
											pe_7_7_out_a, pe_7_7_out_b, pe_7_7_out_c, pe_7_7_out_d, pe_7_7_out_e,
											pe_7_7_out_w, pe_7_7_out_x, pe_7_7_out_y, pe_7_7_out_z);
	//pe 7 8
	int8_pe #(inputBits, outputBits) pe_7_8(clk, rst, clk2x,
											pe_7_7_out_a, pe_7_7_out_b, pe_7_7_out_c, pe_7_7_out_d, pe_6_8_out_e, loadingWeights,
											pe_6_8_out_w, pe_6_8_out_x, pe_6_8_out_y, pe_6_8_out_z,
											pe_7_8_out_a, pe_7_8_out_b, pe_7_8_out_c, pe_7_8_out_d, pe_7_8_out_e,
											pe_7_8_out_w, pe_7_8_out_x, pe_7_8_out_y, pe_7_8_out_z);
	//pe 7 9
	int8_pe #(inputBits, outputBits) pe_7_9(clk, rst, clk2x,
											pe_7_8_out_a, pe_7_8_out_b, pe_7_8_out_c, pe_7_8_out_d, pe_6_9_out_e, loadingWeights,
											pe_6_9_out_w, pe_6_9_out_x, pe_6_9_out_y, pe_6_9_out_z,
											pe_7_9_out_a, pe_7_9_out_b, pe_7_9_out_c, pe_7_9_out_d, pe_7_9_out_e,
											pe_7_9_out_w, pe_7_9_out_x, pe_7_9_out_y, pe_7_9_out_z);
	//pe 7 10
	int8_pe #(inputBits, outputBits) pe_7_10(clk, rst, clk2x,
											pe_7_9_out_a, pe_7_9_out_b, pe_7_9_out_c, pe_7_9_out_d, pe_6_10_out_e, loadingWeights,
											pe_6_10_out_w, pe_6_10_out_x, pe_6_10_out_y, pe_6_10_out_z,
											pe_7_10_out_a, pe_7_10_out_b, pe_7_10_out_c, pe_7_10_out_d, pe_7_10_out_e,
											pe_7_10_out_w, pe_7_10_out_x, pe_7_10_out_y, pe_7_10_out_z);
	//pe 7 11
	int8_pe #(inputBits, outputBits) pe_7_11(clk, rst, clk2x,
											pe_7_10_out_a, pe_7_10_out_b, pe_7_10_out_c, pe_7_10_out_d, pe_6_11_out_e, loadingWeights,
											pe_6_11_out_w, pe_6_11_out_x, pe_6_11_out_y, pe_6_11_out_z,
											pe_7_11_out_a, pe_7_11_out_b, pe_7_11_out_c, pe_7_11_out_d, pe_7_11_out_e,
											pe_7_11_out_w, pe_7_11_out_x, pe_7_11_out_y, pe_7_11_out_z);
	//pe 7 12
	int8_pe #(inputBits, outputBits) pe_7_12(clk, rst, clk2x,
											pe_7_11_out_a, pe_7_11_out_b, pe_7_11_out_c, pe_7_11_out_d, pe_6_12_out_e, loadingWeights,
											pe_6_12_out_w, pe_6_12_out_x, pe_6_12_out_y, pe_6_12_out_z,
											pe_7_12_out_a, pe_7_12_out_b, pe_7_12_out_c, pe_7_12_out_d, pe_7_12_out_e,
											pe_7_12_out_w, pe_7_12_out_x, pe_7_12_out_y, pe_7_12_out_z);
	//pe 7 13
	int8_pe #(inputBits, outputBits) pe_7_13(clk, rst, clk2x,
											pe_7_12_out_a, pe_7_12_out_b, pe_7_12_out_c, pe_7_12_out_d, pe_6_13_out_e, loadingWeights,
											pe_6_13_out_w, pe_6_13_out_x, pe_6_13_out_y, pe_6_13_out_z,
											pe_7_13_out_a, pe_7_13_out_b, pe_7_13_out_c, pe_7_13_out_d, pe_7_13_out_e,
											pe_7_13_out_w, pe_7_13_out_x, pe_7_13_out_y, pe_7_13_out_z);
	//line 8
	//pe 8 0
	int8_pe #(inputBits, outputBits) pe_8_0(clk, rst, clk2x,
											in_side_8_a, in_side_8_b, in_side_8_c, in_side_8_d, pe_7_0_out_e, loadingWeights,
											pe_7_0_out_w, pe_7_0_out_x, pe_7_0_out_y, pe_7_0_out_z,
											pe_8_0_out_a, pe_8_0_out_b, pe_8_0_out_c, pe_8_0_out_d, pe_8_0_out_e,
											pe_8_0_out_w, pe_8_0_out_x, pe_8_0_out_y, pe_8_0_out_z);
	//pe 8 1
	int8_pe #(inputBits, outputBits) pe_8_1(clk, rst, clk2x,
											pe_8_0_out_a, pe_8_0_out_b, pe_8_0_out_c, pe_8_0_out_d, pe_7_1_out_e, loadingWeights,
											pe_7_1_out_w, pe_7_1_out_x, pe_7_1_out_y, pe_7_1_out_z,
											pe_8_1_out_a, pe_8_1_out_b, pe_8_1_out_c, pe_8_1_out_d, pe_8_1_out_e,
											pe_8_1_out_w, pe_8_1_out_x, pe_8_1_out_y, pe_8_1_out_z);
	//pe 8 2
	int8_pe #(inputBits, outputBits) pe_8_2(clk, rst, clk2x,
											pe_8_1_out_a, pe_8_1_out_b, pe_8_1_out_c, pe_8_1_out_d, pe_7_2_out_e, loadingWeights,
											pe_7_2_out_w, pe_7_2_out_x, pe_7_2_out_y, pe_7_2_out_z,
											pe_8_2_out_a, pe_8_2_out_b, pe_8_2_out_c, pe_8_2_out_d, pe_8_2_out_e,
											pe_8_2_out_w, pe_8_2_out_x, pe_8_2_out_y, pe_8_2_out_z);
	//pe 8 3
	int8_pe #(inputBits, outputBits) pe_8_3(clk, rst, clk2x,
											pe_8_2_out_a, pe_8_2_out_b, pe_8_2_out_c, pe_8_2_out_d, pe_7_3_out_e, loadingWeights,
											pe_7_3_out_w, pe_7_3_out_x, pe_7_3_out_y, pe_7_3_out_z,
											pe_8_3_out_a, pe_8_3_out_b, pe_8_3_out_c, pe_8_3_out_d, pe_8_3_out_e,
											pe_8_3_out_w, pe_8_3_out_x, pe_8_3_out_y, pe_8_3_out_z);
	//pe 8 4
	int8_pe #(inputBits, outputBits) pe_8_4(clk, rst, clk2x,
											pe_8_3_out_a, pe_8_3_out_b, pe_8_3_out_c, pe_8_3_out_d, pe_7_4_out_e, loadingWeights,
											pe_7_4_out_w, pe_7_4_out_x, pe_7_4_out_y, pe_7_4_out_z,
											pe_8_4_out_a, pe_8_4_out_b, pe_8_4_out_c, pe_8_4_out_d, pe_8_4_out_e,
											pe_8_4_out_w, pe_8_4_out_x, pe_8_4_out_y, pe_8_4_out_z);
	//pe 8 5
	int8_pe #(inputBits, outputBits) pe_8_5(clk, rst, clk2x,
											pe_8_4_out_a, pe_8_4_out_b, pe_8_4_out_c, pe_8_4_out_d, pe_7_5_out_e, loadingWeights,
											pe_7_5_out_w, pe_7_5_out_x, pe_7_5_out_y, pe_7_5_out_z,
											pe_8_5_out_a, pe_8_5_out_b, pe_8_5_out_c, pe_8_5_out_d, pe_8_5_out_e,
											pe_8_5_out_w, pe_8_5_out_x, pe_8_5_out_y, pe_8_5_out_z);
	//pe 8 6
	int8_pe #(inputBits, outputBits) pe_8_6(clk, rst, clk2x,
											pe_8_5_out_a, pe_8_5_out_b, pe_8_5_out_c, pe_8_5_out_d, pe_7_6_out_e, loadingWeights,
											pe_7_6_out_w, pe_7_6_out_x, pe_7_6_out_y, pe_7_6_out_z,
											pe_8_6_out_a, pe_8_6_out_b, pe_8_6_out_c, pe_8_6_out_d, pe_8_6_out_e,
											pe_8_6_out_w, pe_8_6_out_x, pe_8_6_out_y, pe_8_6_out_z);
	//pe 8 7
	int8_pe #(inputBits, outputBits) pe_8_7(clk, rst, clk2x,
											pe_8_6_out_a, pe_8_6_out_b, pe_8_6_out_c, pe_8_6_out_d, pe_7_7_out_e, loadingWeights,
											pe_7_7_out_w, pe_7_7_out_x, pe_7_7_out_y, pe_7_7_out_z,
											pe_8_7_out_a, pe_8_7_out_b, pe_8_7_out_c, pe_8_7_out_d, pe_8_7_out_e,
											pe_8_7_out_w, pe_8_7_out_x, pe_8_7_out_y, pe_8_7_out_z);
	//pe 8 8
	int8_pe #(inputBits, outputBits) pe_8_8(clk, rst, clk2x,
											pe_8_7_out_a, pe_8_7_out_b, pe_8_7_out_c, pe_8_7_out_d, pe_7_8_out_e, loadingWeights,
											pe_7_8_out_w, pe_7_8_out_x, pe_7_8_out_y, pe_7_8_out_z,
											pe_8_8_out_a, pe_8_8_out_b, pe_8_8_out_c, pe_8_8_out_d, pe_8_8_out_e,
											pe_8_8_out_w, pe_8_8_out_x, pe_8_8_out_y, pe_8_8_out_z);
	//pe 8 9
	int8_pe #(inputBits, outputBits) pe_8_9(clk, rst, clk2x,
											pe_8_8_out_a, pe_8_8_out_b, pe_8_8_out_c, pe_8_8_out_d, pe_7_9_out_e, loadingWeights,
											pe_7_9_out_w, pe_7_9_out_x, pe_7_9_out_y, pe_7_9_out_z,
											pe_8_9_out_a, pe_8_9_out_b, pe_8_9_out_c, pe_8_9_out_d, pe_8_9_out_e,
											pe_8_9_out_w, pe_8_9_out_x, pe_8_9_out_y, pe_8_9_out_z);
	//pe 8 10
	int8_pe #(inputBits, outputBits) pe_8_10(clk, rst, clk2x,
											pe_8_9_out_a, pe_8_9_out_b, pe_8_9_out_c, pe_8_9_out_d, pe_7_10_out_e, loadingWeights,
											pe_7_10_out_w, pe_7_10_out_x, pe_7_10_out_y, pe_7_10_out_z,
											pe_8_10_out_a, pe_8_10_out_b, pe_8_10_out_c, pe_8_10_out_d, pe_8_10_out_e,
											pe_8_10_out_w, pe_8_10_out_x, pe_8_10_out_y, pe_8_10_out_z);
	//pe 8 11
	int8_pe #(inputBits, outputBits) pe_8_11(clk, rst, clk2x,
											pe_8_10_out_a, pe_8_10_out_b, pe_8_10_out_c, pe_8_10_out_d, pe_7_11_out_e, loadingWeights,
											pe_7_11_out_w, pe_7_11_out_x, pe_7_11_out_y, pe_7_11_out_z,
											pe_8_11_out_a, pe_8_11_out_b, pe_8_11_out_c, pe_8_11_out_d, pe_8_11_out_e,
											pe_8_11_out_w, pe_8_11_out_x, pe_8_11_out_y, pe_8_11_out_z);
	//pe 8 12
	int8_pe #(inputBits, outputBits) pe_8_12(clk, rst, clk2x,
											pe_8_11_out_a, pe_8_11_out_b, pe_8_11_out_c, pe_8_11_out_d, pe_7_12_out_e, loadingWeights,
											pe_7_12_out_w, pe_7_12_out_x, pe_7_12_out_y, pe_7_12_out_z,
											pe_8_12_out_a, pe_8_12_out_b, pe_8_12_out_c, pe_8_12_out_d, pe_8_12_out_e,
											pe_8_12_out_w, pe_8_12_out_x, pe_8_12_out_y, pe_8_12_out_z);
	//pe 8 13
	int8_pe #(inputBits, outputBits) pe_8_13(clk, rst, clk2x,
											pe_8_12_out_a, pe_8_12_out_b, pe_8_12_out_c, pe_8_12_out_d, pe_7_13_out_e, loadingWeights,
											pe_7_13_out_w, pe_7_13_out_x, pe_7_13_out_y, pe_7_13_out_z,
											pe_8_13_out_a, pe_8_13_out_b, pe_8_13_out_c, pe_8_13_out_d, pe_8_13_out_e,
											pe_8_13_out_w, pe_8_13_out_x, pe_8_13_out_y, pe_8_13_out_z);
	//line 9
	//pe 9 0
	int8_pe #(inputBits, outputBits) pe_9_0(clk, rst, clk2x,
											in_side_9_a, in_side_9_b, in_side_9_c, in_side_9_d, pe_8_0_out_e, loadingWeights,
											pe_8_0_out_w, pe_8_0_out_x, pe_8_0_out_y, pe_8_0_out_z,
											pe_9_0_out_a, pe_9_0_out_b, pe_9_0_out_c, pe_9_0_out_d, pe_9_0_out_e,
											pe_9_0_out_w, pe_9_0_out_x, pe_9_0_out_y, pe_9_0_out_z);
	//pe 9 1
	int8_pe #(inputBits, outputBits) pe_9_1(clk, rst, clk2x,
											pe_9_0_out_a, pe_9_0_out_b, pe_9_0_out_c, pe_9_0_out_d, pe_8_1_out_e, loadingWeights,
											pe_8_1_out_w, pe_8_1_out_x, pe_8_1_out_y, pe_8_1_out_z,
											pe_9_1_out_a, pe_9_1_out_b, pe_9_1_out_c, pe_9_1_out_d, pe_9_1_out_e,
											pe_9_1_out_w, pe_9_1_out_x, pe_9_1_out_y, pe_9_1_out_z);
	//pe 9 2
	int8_pe #(inputBits, outputBits) pe_9_2(clk, rst, clk2x,
											pe_9_1_out_a, pe_9_1_out_b, pe_9_1_out_c, pe_9_1_out_d, pe_8_2_out_e, loadingWeights,
											pe_8_2_out_w, pe_8_2_out_x, pe_8_2_out_y, pe_8_2_out_z,
											pe_9_2_out_a, pe_9_2_out_b, pe_9_2_out_c, pe_9_2_out_d, pe_9_2_out_e,
											pe_9_2_out_w, pe_9_2_out_x, pe_9_2_out_y, pe_9_2_out_z);
	//pe 9 3
	int8_pe #(inputBits, outputBits) pe_9_3(clk, rst, clk2x,
											pe_9_2_out_a, pe_9_2_out_b, pe_9_2_out_c, pe_9_2_out_d, pe_8_3_out_e, loadingWeights,
											pe_8_3_out_w, pe_8_3_out_x, pe_8_3_out_y, pe_8_3_out_z,
											pe_9_3_out_a, pe_9_3_out_b, pe_9_3_out_c, pe_9_3_out_d, pe_9_3_out_e,
											pe_9_3_out_w, pe_9_3_out_x, pe_9_3_out_y, pe_9_3_out_z);
	//pe 9 4
	int8_pe #(inputBits, outputBits) pe_9_4(clk, rst, clk2x,
											pe_9_3_out_a, pe_9_3_out_b, pe_9_3_out_c, pe_9_3_out_d, pe_8_4_out_e, loadingWeights,
											pe_8_4_out_w, pe_8_4_out_x, pe_8_4_out_y, pe_8_4_out_z,
											pe_9_4_out_a, pe_9_4_out_b, pe_9_4_out_c, pe_9_4_out_d, pe_9_4_out_e,
											pe_9_4_out_w, pe_9_4_out_x, pe_9_4_out_y, pe_9_4_out_z);
	//pe 9 5
	int8_pe #(inputBits, outputBits) pe_9_5(clk, rst, clk2x,
											pe_9_4_out_a, pe_9_4_out_b, pe_9_4_out_c, pe_9_4_out_d, pe_8_5_out_e, loadingWeights,
											pe_8_5_out_w, pe_8_5_out_x, pe_8_5_out_y, pe_8_5_out_z,
											pe_9_5_out_a, pe_9_5_out_b, pe_9_5_out_c, pe_9_5_out_d, pe_9_5_out_e,
											pe_9_5_out_w, pe_9_5_out_x, pe_9_5_out_y, pe_9_5_out_z);
	//pe 9 6
	int8_pe #(inputBits, outputBits) pe_9_6(clk, rst, clk2x,
											pe_9_5_out_a, pe_9_5_out_b, pe_9_5_out_c, pe_9_5_out_d, pe_8_6_out_e, loadingWeights,
											pe_8_6_out_w, pe_8_6_out_x, pe_8_6_out_y, pe_8_6_out_z,
											pe_9_6_out_a, pe_9_6_out_b, pe_9_6_out_c, pe_9_6_out_d, pe_9_6_out_e,
											pe_9_6_out_w, pe_9_6_out_x, pe_9_6_out_y, pe_9_6_out_z);
	//pe 9 7
	int8_pe #(inputBits, outputBits) pe_9_7(clk, rst, clk2x,
											pe_9_6_out_a, pe_9_6_out_b, pe_9_6_out_c, pe_9_6_out_d, pe_8_7_out_e, loadingWeights,
											pe_8_7_out_w, pe_8_7_out_x, pe_8_7_out_y, pe_8_7_out_z,
											pe_9_7_out_a, pe_9_7_out_b, pe_9_7_out_c, pe_9_7_out_d, pe_9_7_out_e,
											pe_9_7_out_w, pe_9_7_out_x, pe_9_7_out_y, pe_9_7_out_z);
	//pe 9 8
	int8_pe #(inputBits, outputBits) pe_9_8(clk, rst, clk2x,
											pe_9_7_out_a, pe_9_7_out_b, pe_9_7_out_c, pe_9_7_out_d, pe_8_8_out_e, loadingWeights,
											pe_8_8_out_w, pe_8_8_out_x, pe_8_8_out_y, pe_8_8_out_z,
											pe_9_8_out_a, pe_9_8_out_b, pe_9_8_out_c, pe_9_8_out_d, pe_9_8_out_e,
											pe_9_8_out_w, pe_9_8_out_x, pe_9_8_out_y, pe_9_8_out_z);
	//pe 9 9
	int8_pe #(inputBits, outputBits) pe_9_9(clk, rst, clk2x,
											pe_9_8_out_a, pe_9_8_out_b, pe_9_8_out_c, pe_9_8_out_d, pe_8_9_out_e, loadingWeights,
											pe_8_9_out_w, pe_8_9_out_x, pe_8_9_out_y, pe_8_9_out_z,
											pe_9_9_out_a, pe_9_9_out_b, pe_9_9_out_c, pe_9_9_out_d, pe_9_9_out_e,
											pe_9_9_out_w, pe_9_9_out_x, pe_9_9_out_y, pe_9_9_out_z);
	//pe 9 10
	int8_pe #(inputBits, outputBits) pe_9_10(clk, rst, clk2x,
											pe_9_9_out_a, pe_9_9_out_b, pe_9_9_out_c, pe_9_9_out_d, pe_8_10_out_e, loadingWeights,
											pe_8_10_out_w, pe_8_10_out_x, pe_8_10_out_y, pe_8_10_out_z,
											pe_9_10_out_a, pe_9_10_out_b, pe_9_10_out_c, pe_9_10_out_d, pe_9_10_out_e,
											pe_9_10_out_w, pe_9_10_out_x, pe_9_10_out_y, pe_9_10_out_z);
	//pe 9 11
	int8_pe #(inputBits, outputBits) pe_9_11(clk, rst, clk2x,
											pe_9_10_out_a, pe_9_10_out_b, pe_9_10_out_c, pe_9_10_out_d, pe_8_11_out_e, loadingWeights,
											pe_8_11_out_w, pe_8_11_out_x, pe_8_11_out_y, pe_8_11_out_z,
											pe_9_11_out_a, pe_9_11_out_b, pe_9_11_out_c, pe_9_11_out_d, pe_9_11_out_e,
											pe_9_11_out_w, pe_9_11_out_x, pe_9_11_out_y, pe_9_11_out_z);
	//pe 9 12
	int8_pe #(inputBits, outputBits) pe_9_12(clk, rst, clk2x,
											pe_9_11_out_a, pe_9_11_out_b, pe_9_11_out_c, pe_9_11_out_d, pe_8_12_out_e, loadingWeights,
											pe_8_12_out_w, pe_8_12_out_x, pe_8_12_out_y, pe_8_12_out_z,
											pe_9_12_out_a, pe_9_12_out_b, pe_9_12_out_c, pe_9_12_out_d, pe_9_12_out_e,
											pe_9_12_out_w, pe_9_12_out_x, pe_9_12_out_y, pe_9_12_out_z);
	//pe 9 13
	int8_pe #(inputBits, outputBits) pe_9_13(clk, rst, clk2x,
											pe_9_12_out_a, pe_9_12_out_b, pe_9_12_out_c, pe_9_12_out_d, pe_8_13_out_e, loadingWeights,
											pe_8_13_out_w, pe_8_13_out_x, pe_8_13_out_y, pe_8_13_out_z,
											pe_9_13_out_a, pe_9_13_out_b, pe_9_13_out_c, pe_9_13_out_d, pe_9_13_out_e,
											pe_9_13_out_w, pe_9_13_out_x, pe_9_13_out_y, pe_9_13_out_z);
	//line 10
	//pe 10 0
	int8_pe #(inputBits, outputBits) pe_10_0(clk, rst, clk2x,
											in_side_10_a, in_side_10_b, in_side_10_c, in_side_10_d, pe_9_0_out_e, loadingWeights,
											pe_9_0_out_w, pe_9_0_out_x, pe_9_0_out_y, pe_9_0_out_z,
											pe_10_0_out_a, pe_10_0_out_b, pe_10_0_out_c, pe_10_0_out_d, pe_10_0_out_e,
											pe_10_0_out_w, pe_10_0_out_x, pe_10_0_out_y, pe_10_0_out_z);
	//pe 10 1
	int8_pe #(inputBits, outputBits) pe_10_1(clk, rst, clk2x,
											pe_10_0_out_a, pe_10_0_out_b, pe_10_0_out_c, pe_10_0_out_d, pe_9_1_out_e, loadingWeights,
											pe_9_1_out_w, pe_9_1_out_x, pe_9_1_out_y, pe_9_1_out_z,
											pe_10_1_out_a, pe_10_1_out_b, pe_10_1_out_c, pe_10_1_out_d, pe_10_1_out_e,
											pe_10_1_out_w, pe_10_1_out_x, pe_10_1_out_y, pe_10_1_out_z);
	//pe 10 2
	int8_pe #(inputBits, outputBits) pe_10_2(clk, rst, clk2x,
											pe_10_1_out_a, pe_10_1_out_b, pe_10_1_out_c, pe_10_1_out_d, pe_9_2_out_e, loadingWeights,
											pe_9_2_out_w, pe_9_2_out_x, pe_9_2_out_y, pe_9_2_out_z,
											pe_10_2_out_a, pe_10_2_out_b, pe_10_2_out_c, pe_10_2_out_d, pe_10_2_out_e,
											pe_10_2_out_w, pe_10_2_out_x, pe_10_2_out_y, pe_10_2_out_z);
	//pe 10 3
	int8_pe #(inputBits, outputBits) pe_10_3(clk, rst, clk2x,
											pe_10_2_out_a, pe_10_2_out_b, pe_10_2_out_c, pe_10_2_out_d, pe_9_3_out_e, loadingWeights,
											pe_9_3_out_w, pe_9_3_out_x, pe_9_3_out_y, pe_9_3_out_z,
											pe_10_3_out_a, pe_10_3_out_b, pe_10_3_out_c, pe_10_3_out_d, pe_10_3_out_e,
											pe_10_3_out_w, pe_10_3_out_x, pe_10_3_out_y, pe_10_3_out_z);
	//pe 10 4
	int8_pe #(inputBits, outputBits) pe_10_4(clk, rst, clk2x,
											pe_10_3_out_a, pe_10_3_out_b, pe_10_3_out_c, pe_10_3_out_d, pe_9_4_out_e, loadingWeights,
											pe_9_4_out_w, pe_9_4_out_x, pe_9_4_out_y, pe_9_4_out_z,
											pe_10_4_out_a, pe_10_4_out_b, pe_10_4_out_c, pe_10_4_out_d, pe_10_4_out_e,
											pe_10_4_out_w, pe_10_4_out_x, pe_10_4_out_y, pe_10_4_out_z);
	//pe 10 5
	int8_pe #(inputBits, outputBits) pe_10_5(clk, rst, clk2x,
											pe_10_4_out_a, pe_10_4_out_b, pe_10_4_out_c, pe_10_4_out_d, pe_9_5_out_e, loadingWeights,
											pe_9_5_out_w, pe_9_5_out_x, pe_9_5_out_y, pe_9_5_out_z,
											pe_10_5_out_a, pe_10_5_out_b, pe_10_5_out_c, pe_10_5_out_d, pe_10_5_out_e,
											pe_10_5_out_w, pe_10_5_out_x, pe_10_5_out_y, pe_10_5_out_z);
	//pe 10 6
	int8_pe #(inputBits, outputBits) pe_10_6(clk, rst, clk2x,
											pe_10_5_out_a, pe_10_5_out_b, pe_10_5_out_c, pe_10_5_out_d, pe_9_6_out_e, loadingWeights,
											pe_9_6_out_w, pe_9_6_out_x, pe_9_6_out_y, pe_9_6_out_z,
											pe_10_6_out_a, pe_10_6_out_b, pe_10_6_out_c, pe_10_6_out_d, pe_10_6_out_e,
											pe_10_6_out_w, pe_10_6_out_x, pe_10_6_out_y, pe_10_6_out_z);
	//pe 10 7
	int8_pe #(inputBits, outputBits) pe_10_7(clk, rst, clk2x,
											pe_10_6_out_a, pe_10_6_out_b, pe_10_6_out_c, pe_10_6_out_d, pe_9_7_out_e, loadingWeights,
											pe_9_7_out_w, pe_9_7_out_x, pe_9_7_out_y, pe_9_7_out_z,
											pe_10_7_out_a, pe_10_7_out_b, pe_10_7_out_c, pe_10_7_out_d, pe_10_7_out_e,
											pe_10_7_out_w, pe_10_7_out_x, pe_10_7_out_y, pe_10_7_out_z);
	//pe 10 8
	int8_pe #(inputBits, outputBits) pe_10_8(clk, rst, clk2x,
											pe_10_7_out_a, pe_10_7_out_b, pe_10_7_out_c, pe_10_7_out_d, pe_9_8_out_e, loadingWeights,
											pe_9_8_out_w, pe_9_8_out_x, pe_9_8_out_y, pe_9_8_out_z,
											pe_10_8_out_a, pe_10_8_out_b, pe_10_8_out_c, pe_10_8_out_d, pe_10_8_out_e,
											pe_10_8_out_w, pe_10_8_out_x, pe_10_8_out_y, pe_10_8_out_z);
	//pe 10 9
	int8_pe #(inputBits, outputBits) pe_10_9(clk, rst, clk2x,
											pe_10_8_out_a, pe_10_8_out_b, pe_10_8_out_c, pe_10_8_out_d, pe_9_9_out_e, loadingWeights,
											pe_9_9_out_w, pe_9_9_out_x, pe_9_9_out_y, pe_9_9_out_z,
											pe_10_9_out_a, pe_10_9_out_b, pe_10_9_out_c, pe_10_9_out_d, pe_10_9_out_e,
											pe_10_9_out_w, pe_10_9_out_x, pe_10_9_out_y, pe_10_9_out_z);
	//pe 10 10
	int8_pe #(inputBits, outputBits) pe_10_10(clk, rst, clk2x,
											pe_10_9_out_a, pe_10_9_out_b, pe_10_9_out_c, pe_10_9_out_d, pe_9_10_out_e, loadingWeights,
											pe_9_10_out_w, pe_9_10_out_x, pe_9_10_out_y, pe_9_10_out_z,
											pe_10_10_out_a, pe_10_10_out_b, pe_10_10_out_c, pe_10_10_out_d, pe_10_10_out_e,
											pe_10_10_out_w, pe_10_10_out_x, pe_10_10_out_y, pe_10_10_out_z);
	//pe 10 11
	int8_pe #(inputBits, outputBits) pe_10_11(clk, rst, clk2x,
											pe_10_10_out_a, pe_10_10_out_b, pe_10_10_out_c, pe_10_10_out_d, pe_9_11_out_e, loadingWeights,
											pe_9_11_out_w, pe_9_11_out_x, pe_9_11_out_y, pe_9_11_out_z,
											pe_10_11_out_a, pe_10_11_out_b, pe_10_11_out_c, pe_10_11_out_d, pe_10_11_out_e,
											pe_10_11_out_w, pe_10_11_out_x, pe_10_11_out_y, pe_10_11_out_z);
	//pe 10 12
	int8_pe #(inputBits, outputBits) pe_10_12(clk, rst, clk2x,
											pe_10_11_out_a, pe_10_11_out_b, pe_10_11_out_c, pe_10_11_out_d, pe_9_12_out_e, loadingWeights,
											pe_9_12_out_w, pe_9_12_out_x, pe_9_12_out_y, pe_9_12_out_z,
											pe_10_12_out_a, pe_10_12_out_b, pe_10_12_out_c, pe_10_12_out_d, pe_10_12_out_e,
											pe_10_12_out_w, pe_10_12_out_x, pe_10_12_out_y, pe_10_12_out_z);
	//pe 10 13
	int8_pe #(inputBits, outputBits) pe_10_13(clk, rst, clk2x,
											pe_10_12_out_a, pe_10_12_out_b, pe_10_12_out_c, pe_10_12_out_d, pe_9_13_out_e, loadingWeights,
											pe_9_13_out_w, pe_9_13_out_x, pe_9_13_out_y, pe_9_13_out_z,
											pe_10_13_out_a, pe_10_13_out_b, pe_10_13_out_c, pe_10_13_out_d, pe_10_13_out_e,
											pe_10_13_out_w, pe_10_13_out_x, pe_10_13_out_y, pe_10_13_out_z);
	//line 11
	//pe 11 0
	int8_pe #(inputBits, outputBits) pe_11_0(clk, rst, clk2x,
											in_side_11_a, in_side_11_b, in_side_11_c, in_side_11_d, pe_10_0_out_e, loadingWeights,
											pe_10_0_out_w, pe_10_0_out_x, pe_10_0_out_y, pe_10_0_out_z,
											pe_11_0_out_a, pe_11_0_out_b, pe_11_0_out_c, pe_11_0_out_d, pe_11_0_out_e,
											pe_11_0_out_w, pe_11_0_out_x, pe_11_0_out_y, pe_11_0_out_z);
	//pe 11 1
	int8_pe #(inputBits, outputBits) pe_11_1(clk, rst, clk2x,
											pe_11_0_out_a, pe_11_0_out_b, pe_11_0_out_c, pe_11_0_out_d, pe_10_1_out_e, loadingWeights,
											pe_10_1_out_w, pe_10_1_out_x, pe_10_1_out_y, pe_10_1_out_z,
											pe_11_1_out_a, pe_11_1_out_b, pe_11_1_out_c, pe_11_1_out_d, pe_11_1_out_e,
											pe_11_1_out_w, pe_11_1_out_x, pe_11_1_out_y, pe_11_1_out_z);
	//pe 11 2
	int8_pe #(inputBits, outputBits) pe_11_2(clk, rst, clk2x,
											pe_11_1_out_a, pe_11_1_out_b, pe_11_1_out_c, pe_11_1_out_d, pe_10_2_out_e, loadingWeights,
											pe_10_2_out_w, pe_10_2_out_x, pe_10_2_out_y, pe_10_2_out_z,
											pe_11_2_out_a, pe_11_2_out_b, pe_11_2_out_c, pe_11_2_out_d, pe_11_2_out_e,
											pe_11_2_out_w, pe_11_2_out_x, pe_11_2_out_y, pe_11_2_out_z);
	//pe 11 3
	int8_pe #(inputBits, outputBits) pe_11_3(clk, rst, clk2x,
											pe_11_2_out_a, pe_11_2_out_b, pe_11_2_out_c, pe_11_2_out_d, pe_10_3_out_e, loadingWeights,
											pe_10_3_out_w, pe_10_3_out_x, pe_10_3_out_y, pe_10_3_out_z,
											pe_11_3_out_a, pe_11_3_out_b, pe_11_3_out_c, pe_11_3_out_d, pe_11_3_out_e,
											pe_11_3_out_w, pe_11_3_out_x, pe_11_3_out_y, pe_11_3_out_z);
	//pe 11 4
	int8_pe #(inputBits, outputBits) pe_11_4(clk, rst, clk2x,
											pe_11_3_out_a, pe_11_3_out_b, pe_11_3_out_c, pe_11_3_out_d, pe_10_4_out_e, loadingWeights,
											pe_10_4_out_w, pe_10_4_out_x, pe_10_4_out_y, pe_10_4_out_z,
											pe_11_4_out_a, pe_11_4_out_b, pe_11_4_out_c, pe_11_4_out_d, pe_11_4_out_e,
											pe_11_4_out_w, pe_11_4_out_x, pe_11_4_out_y, pe_11_4_out_z);
	//pe 11 5
	int8_pe #(inputBits, outputBits) pe_11_5(clk, rst, clk2x,
											pe_11_4_out_a, pe_11_4_out_b, pe_11_4_out_c, pe_11_4_out_d, pe_10_5_out_e, loadingWeights,
											pe_10_5_out_w, pe_10_5_out_x, pe_10_5_out_y, pe_10_5_out_z,
											pe_11_5_out_a, pe_11_5_out_b, pe_11_5_out_c, pe_11_5_out_d, pe_11_5_out_e,
											pe_11_5_out_w, pe_11_5_out_x, pe_11_5_out_y, pe_11_5_out_z);
	//pe 11 6
	int8_pe #(inputBits, outputBits) pe_11_6(clk, rst, clk2x,
											pe_11_5_out_a, pe_11_5_out_b, pe_11_5_out_c, pe_11_5_out_d, pe_10_6_out_e, loadingWeights,
											pe_10_6_out_w, pe_10_6_out_x, pe_10_6_out_y, pe_10_6_out_z,
											pe_11_6_out_a, pe_11_6_out_b, pe_11_6_out_c, pe_11_6_out_d, pe_11_6_out_e,
											pe_11_6_out_w, pe_11_6_out_x, pe_11_6_out_y, pe_11_6_out_z);
	//pe 11 7
	int8_pe #(inputBits, outputBits) pe_11_7(clk, rst, clk2x,
											pe_11_6_out_a, pe_11_6_out_b, pe_11_6_out_c, pe_11_6_out_d, pe_10_7_out_e, loadingWeights,
											pe_10_7_out_w, pe_10_7_out_x, pe_10_7_out_y, pe_10_7_out_z,
											pe_11_7_out_a, pe_11_7_out_b, pe_11_7_out_c, pe_11_7_out_d, pe_11_7_out_e,
											pe_11_7_out_w, pe_11_7_out_x, pe_11_7_out_y, pe_11_7_out_z);
	//pe 11 8
	int8_pe #(inputBits, outputBits) pe_11_8(clk, rst, clk2x,
											pe_11_7_out_a, pe_11_7_out_b, pe_11_7_out_c, pe_11_7_out_d, pe_10_8_out_e, loadingWeights,
											pe_10_8_out_w, pe_10_8_out_x, pe_10_8_out_y, pe_10_8_out_z,
											pe_11_8_out_a, pe_11_8_out_b, pe_11_8_out_c, pe_11_8_out_d, pe_11_8_out_e,
											pe_11_8_out_w, pe_11_8_out_x, pe_11_8_out_y, pe_11_8_out_z);
	//pe 11 9
	int8_pe #(inputBits, outputBits) pe_11_9(clk, rst, clk2x,
											pe_11_8_out_a, pe_11_8_out_b, pe_11_8_out_c, pe_11_8_out_d, pe_10_9_out_e, loadingWeights,
											pe_10_9_out_w, pe_10_9_out_x, pe_10_9_out_y, pe_10_9_out_z,
											pe_11_9_out_a, pe_11_9_out_b, pe_11_9_out_c, pe_11_9_out_d, pe_11_9_out_e,
											pe_11_9_out_w, pe_11_9_out_x, pe_11_9_out_y, pe_11_9_out_z);
	//pe 11 10
	int8_pe #(inputBits, outputBits) pe_11_10(clk, rst, clk2x,
											pe_11_9_out_a, pe_11_9_out_b, pe_11_9_out_c, pe_11_9_out_d, pe_10_10_out_e, loadingWeights,
											pe_10_10_out_w, pe_10_10_out_x, pe_10_10_out_y, pe_10_10_out_z,
											pe_11_10_out_a, pe_11_10_out_b, pe_11_10_out_c, pe_11_10_out_d, pe_11_10_out_e,
											pe_11_10_out_w, pe_11_10_out_x, pe_11_10_out_y, pe_11_10_out_z);
	//pe 11 11
	int8_pe #(inputBits, outputBits) pe_11_11(clk, rst, clk2x,
											pe_11_10_out_a, pe_11_10_out_b, pe_11_10_out_c, pe_11_10_out_d, pe_10_11_out_e, loadingWeights,
											pe_10_11_out_w, pe_10_11_out_x, pe_10_11_out_y, pe_10_11_out_z,
											pe_11_11_out_a, pe_11_11_out_b, pe_11_11_out_c, pe_11_11_out_d, pe_11_11_out_e,
											pe_11_11_out_w, pe_11_11_out_x, pe_11_11_out_y, pe_11_11_out_z);
	//pe 11 12
	int8_pe #(inputBits, outputBits) pe_11_12(clk, rst, clk2x,
											pe_11_11_out_a, pe_11_11_out_b, pe_11_11_out_c, pe_11_11_out_d, pe_10_12_out_e, loadingWeights,
											pe_10_12_out_w, pe_10_12_out_x, pe_10_12_out_y, pe_10_12_out_z,
											pe_11_12_out_a, pe_11_12_out_b, pe_11_12_out_c, pe_11_12_out_d, pe_11_12_out_e,
											pe_11_12_out_w, pe_11_12_out_x, pe_11_12_out_y, pe_11_12_out_z);
	//pe 11 13
	int8_pe #(inputBits, outputBits) pe_11_13(clk, rst, clk2x,
											pe_11_12_out_a, pe_11_12_out_b, pe_11_12_out_c, pe_11_12_out_d, pe_10_13_out_e, loadingWeights,
											pe_10_13_out_w, pe_10_13_out_x, pe_10_13_out_y, pe_10_13_out_z,
											pe_11_13_out_a, pe_11_13_out_b, pe_11_13_out_c, pe_11_13_out_d, pe_11_13_out_e,
											pe_11_13_out_w, pe_11_13_out_x, pe_11_13_out_y, pe_11_13_out_z);
	//line 12
	//pe 12 0
	int8_pe #(inputBits, outputBits) pe_12_0(clk, rst, clk2x,
											in_side_12_a, in_side_12_b, in_side_12_c, in_side_12_d, pe_11_0_out_e, loadingWeights,
											pe_11_0_out_w, pe_11_0_out_x, pe_11_0_out_y, pe_11_0_out_z,
											pe_12_0_out_a, pe_12_0_out_b, pe_12_0_out_c, pe_12_0_out_d, pe_12_0_out_e,
											pe_12_0_out_w, pe_12_0_out_x, pe_12_0_out_y, pe_12_0_out_z);
	//pe 12 1
	int8_pe #(inputBits, outputBits) pe_12_1(clk, rst, clk2x,
											pe_12_0_out_a, pe_12_0_out_b, pe_12_0_out_c, pe_12_0_out_d, pe_11_1_out_e, loadingWeights,
											pe_11_1_out_w, pe_11_1_out_x, pe_11_1_out_y, pe_11_1_out_z,
											pe_12_1_out_a, pe_12_1_out_b, pe_12_1_out_c, pe_12_1_out_d, pe_12_1_out_e,
											pe_12_1_out_w, pe_12_1_out_x, pe_12_1_out_y, pe_12_1_out_z);
	//pe 12 2
	int8_pe #(inputBits, outputBits) pe_12_2(clk, rst, clk2x,
											pe_12_1_out_a, pe_12_1_out_b, pe_12_1_out_c, pe_12_1_out_d, pe_11_2_out_e, loadingWeights,
											pe_11_2_out_w, pe_11_2_out_x, pe_11_2_out_y, pe_11_2_out_z,
											pe_12_2_out_a, pe_12_2_out_b, pe_12_2_out_c, pe_12_2_out_d, pe_12_2_out_e,
											pe_12_2_out_w, pe_12_2_out_x, pe_12_2_out_y, pe_12_2_out_z);
	//pe 12 3
	int8_pe #(inputBits, outputBits) pe_12_3(clk, rst, clk2x,
											pe_12_2_out_a, pe_12_2_out_b, pe_12_2_out_c, pe_12_2_out_d, pe_11_3_out_e, loadingWeights,
											pe_11_3_out_w, pe_11_3_out_x, pe_11_3_out_y, pe_11_3_out_z,
											pe_12_3_out_a, pe_12_3_out_b, pe_12_3_out_c, pe_12_3_out_d, pe_12_3_out_e,
											pe_12_3_out_w, pe_12_3_out_x, pe_12_3_out_y, pe_12_3_out_z);
	//pe 12 4
	int8_pe #(inputBits, outputBits) pe_12_4(clk, rst, clk2x,
											pe_12_3_out_a, pe_12_3_out_b, pe_12_3_out_c, pe_12_3_out_d, pe_11_4_out_e, loadingWeights,
											pe_11_4_out_w, pe_11_4_out_x, pe_11_4_out_y, pe_11_4_out_z,
											pe_12_4_out_a, pe_12_4_out_b, pe_12_4_out_c, pe_12_4_out_d, pe_12_4_out_e,
											pe_12_4_out_w, pe_12_4_out_x, pe_12_4_out_y, pe_12_4_out_z);
	//pe 12 5
	int8_pe #(inputBits, outputBits) pe_12_5(clk, rst, clk2x,
											pe_12_4_out_a, pe_12_4_out_b, pe_12_4_out_c, pe_12_4_out_d, pe_11_5_out_e, loadingWeights,
											pe_11_5_out_w, pe_11_5_out_x, pe_11_5_out_y, pe_11_5_out_z,
											pe_12_5_out_a, pe_12_5_out_b, pe_12_5_out_c, pe_12_5_out_d, pe_12_5_out_e,
											pe_12_5_out_w, pe_12_5_out_x, pe_12_5_out_y, pe_12_5_out_z);
	//pe 12 6
	int8_pe #(inputBits, outputBits) pe_12_6(clk, rst, clk2x,
											pe_12_5_out_a, pe_12_5_out_b, pe_12_5_out_c, pe_12_5_out_d, pe_11_6_out_e, loadingWeights,
											pe_11_6_out_w, pe_11_6_out_x, pe_11_6_out_y, pe_11_6_out_z,
											pe_12_6_out_a, pe_12_6_out_b, pe_12_6_out_c, pe_12_6_out_d, pe_12_6_out_e,
											pe_12_6_out_w, pe_12_6_out_x, pe_12_6_out_y, pe_12_6_out_z);
	//pe 12 7
	int8_pe #(inputBits, outputBits) pe_12_7(clk, rst, clk2x,
											pe_12_6_out_a, pe_12_6_out_b, pe_12_6_out_c, pe_12_6_out_d, pe_11_7_out_e, loadingWeights,
											pe_11_7_out_w, pe_11_7_out_x, pe_11_7_out_y, pe_11_7_out_z,
											pe_12_7_out_a, pe_12_7_out_b, pe_12_7_out_c, pe_12_7_out_d, pe_12_7_out_e,
											pe_12_7_out_w, pe_12_7_out_x, pe_12_7_out_y, pe_12_7_out_z);
	//pe 12 8
	int8_pe #(inputBits, outputBits) pe_12_8(clk, rst, clk2x,
											pe_12_7_out_a, pe_12_7_out_b, pe_12_7_out_c, pe_12_7_out_d, pe_11_8_out_e, loadingWeights,
											pe_11_8_out_w, pe_11_8_out_x, pe_11_8_out_y, pe_11_8_out_z,
											pe_12_8_out_a, pe_12_8_out_b, pe_12_8_out_c, pe_12_8_out_d, pe_12_8_out_e,
											pe_12_8_out_w, pe_12_8_out_x, pe_12_8_out_y, pe_12_8_out_z);
	//pe 12 9
	int8_pe #(inputBits, outputBits) pe_12_9(clk, rst, clk2x,
											pe_12_8_out_a, pe_12_8_out_b, pe_12_8_out_c, pe_12_8_out_d, pe_11_9_out_e, loadingWeights,
											pe_11_9_out_w, pe_11_9_out_x, pe_11_9_out_y, pe_11_9_out_z,
											pe_12_9_out_a, pe_12_9_out_b, pe_12_9_out_c, pe_12_9_out_d, pe_12_9_out_e,
											pe_12_9_out_w, pe_12_9_out_x, pe_12_9_out_y, pe_12_9_out_z);
	//pe 12 10
	int8_pe #(inputBits, outputBits) pe_12_10(clk, rst, clk2x,
											pe_12_9_out_a, pe_12_9_out_b, pe_12_9_out_c, pe_12_9_out_d, pe_11_10_out_e, loadingWeights,
											pe_11_10_out_w, pe_11_10_out_x, pe_11_10_out_y, pe_11_10_out_z,
											pe_12_10_out_a, pe_12_10_out_b, pe_12_10_out_c, pe_12_10_out_d, pe_12_10_out_e,
											pe_12_10_out_w, pe_12_10_out_x, pe_12_10_out_y, pe_12_10_out_z);
	//pe 12 11
	int8_pe #(inputBits, outputBits) pe_12_11(clk, rst, clk2x,
											pe_12_10_out_a, pe_12_10_out_b, pe_12_10_out_c, pe_12_10_out_d, pe_11_11_out_e, loadingWeights,
											pe_11_11_out_w, pe_11_11_out_x, pe_11_11_out_y, pe_11_11_out_z,
											pe_12_11_out_a, pe_12_11_out_b, pe_12_11_out_c, pe_12_11_out_d, pe_12_11_out_e,
											pe_12_11_out_w, pe_12_11_out_x, pe_12_11_out_y, pe_12_11_out_z);
	//pe 12 12
	int8_pe #(inputBits, outputBits) pe_12_12(clk, rst, clk2x,
											pe_12_11_out_a, pe_12_11_out_b, pe_12_11_out_c, pe_12_11_out_d, pe_11_12_out_e, loadingWeights,
											pe_11_12_out_w, pe_11_12_out_x, pe_11_12_out_y, pe_11_12_out_z,
											pe_12_12_out_a, pe_12_12_out_b, pe_12_12_out_c, pe_12_12_out_d, pe_12_12_out_e,
											pe_12_12_out_w, pe_12_12_out_x, pe_12_12_out_y, pe_12_12_out_z);
	//pe 12 13
	int8_pe #(inputBits, outputBits) pe_12_13(clk, rst, clk2x,
											pe_12_12_out_a, pe_12_12_out_b, pe_12_12_out_c, pe_12_12_out_d, pe_11_13_out_e, loadingWeights,
											pe_11_13_out_w, pe_11_13_out_x, pe_11_13_out_y, pe_11_13_out_z,
											pe_12_13_out_a, pe_12_13_out_b, pe_12_13_out_c, pe_12_13_out_d, pe_12_13_out_e,
											pe_12_13_out_w, pe_12_13_out_x, pe_12_13_out_y, pe_12_13_out_z);
	//line 13
	//pe 13 0
	int8_pe #(inputBits, outputBits) pe_13_0(clk, rst, clk2x,
											in_side_13_a, in_side_13_b, in_side_13_c, in_side_13_d, pe_12_0_out_e, loadingWeights,
											pe_12_0_out_w, pe_12_0_out_x, pe_12_0_out_y, pe_12_0_out_z,
											pe_13_0_out_a, pe_13_0_out_b, pe_13_0_out_c, pe_13_0_out_d, pe_13_0_out_e,
											pe_13_0_out_w, pe_13_0_out_x, pe_13_0_out_y, pe_13_0_out_z);
	//pe 13 1
	int8_pe #(inputBits, outputBits) pe_13_1(clk, rst, clk2x,
											pe_13_0_out_a, pe_13_0_out_b, pe_13_0_out_c, pe_13_0_out_d, pe_12_1_out_e, loadingWeights,
											pe_12_1_out_w, pe_12_1_out_x, pe_12_1_out_y, pe_12_1_out_z,
											pe_13_1_out_a, pe_13_1_out_b, pe_13_1_out_c, pe_13_1_out_d, pe_13_1_out_e,
											pe_13_1_out_w, pe_13_1_out_x, pe_13_1_out_y, pe_13_1_out_z);
	//pe 13 2
	int8_pe #(inputBits, outputBits) pe_13_2(clk, rst, clk2x,
											pe_13_1_out_a, pe_13_1_out_b, pe_13_1_out_c, pe_13_1_out_d, pe_12_2_out_e, loadingWeights,
											pe_12_2_out_w, pe_12_2_out_x, pe_12_2_out_y, pe_12_2_out_z,
											pe_13_2_out_a, pe_13_2_out_b, pe_13_2_out_c, pe_13_2_out_d, pe_13_2_out_e,
											pe_13_2_out_w, pe_13_2_out_x, pe_13_2_out_y, pe_13_2_out_z);
	//pe 13 3
	int8_pe #(inputBits, outputBits) pe_13_3(clk, rst, clk2x,
											pe_13_2_out_a, pe_13_2_out_b, pe_13_2_out_c, pe_13_2_out_d, pe_12_3_out_e, loadingWeights,
											pe_12_3_out_w, pe_12_3_out_x, pe_12_3_out_y, pe_12_3_out_z,
											pe_13_3_out_a, pe_13_3_out_b, pe_13_3_out_c, pe_13_3_out_d, pe_13_3_out_e,
											pe_13_3_out_w, pe_13_3_out_x, pe_13_3_out_y, pe_13_3_out_z);
	//pe 13 4
	int8_pe #(inputBits, outputBits) pe_13_4(clk, rst, clk2x,
											pe_13_3_out_a, pe_13_3_out_b, pe_13_3_out_c, pe_13_3_out_d, pe_12_4_out_e, loadingWeights,
											pe_12_4_out_w, pe_12_4_out_x, pe_12_4_out_y, pe_12_4_out_z,
											pe_13_4_out_a, pe_13_4_out_b, pe_13_4_out_c, pe_13_4_out_d, pe_13_4_out_e,
											pe_13_4_out_w, pe_13_4_out_x, pe_13_4_out_y, pe_13_4_out_z);
	//pe 13 5
	int8_pe #(inputBits, outputBits) pe_13_5(clk, rst, clk2x,
											pe_13_4_out_a, pe_13_4_out_b, pe_13_4_out_c, pe_13_4_out_d, pe_12_5_out_e, loadingWeights,
											pe_12_5_out_w, pe_12_5_out_x, pe_12_5_out_y, pe_12_5_out_z,
											pe_13_5_out_a, pe_13_5_out_b, pe_13_5_out_c, pe_13_5_out_d, pe_13_5_out_e,
											pe_13_5_out_w, pe_13_5_out_x, pe_13_5_out_y, pe_13_5_out_z);
	//pe 13 6
	int8_pe #(inputBits, outputBits) pe_13_6(clk, rst, clk2x,
											pe_13_5_out_a, pe_13_5_out_b, pe_13_5_out_c, pe_13_5_out_d, pe_12_6_out_e, loadingWeights,
											pe_12_6_out_w, pe_12_6_out_x, pe_12_6_out_y, pe_12_6_out_z,
											pe_13_6_out_a, pe_13_6_out_b, pe_13_6_out_c, pe_13_6_out_d, pe_13_6_out_e,
											pe_13_6_out_w, pe_13_6_out_x, pe_13_6_out_y, pe_13_6_out_z);
	//pe 13 7
	int8_pe #(inputBits, outputBits) pe_13_7(clk, rst, clk2x,
											pe_13_6_out_a, pe_13_6_out_b, pe_13_6_out_c, pe_13_6_out_d, pe_12_7_out_e, loadingWeights,
											pe_12_7_out_w, pe_12_7_out_x, pe_12_7_out_y, pe_12_7_out_z,
											pe_13_7_out_a, pe_13_7_out_b, pe_13_7_out_c, pe_13_7_out_d, pe_13_7_out_e,
											pe_13_7_out_w, pe_13_7_out_x, pe_13_7_out_y, pe_13_7_out_z);
	//pe 13 8
	int8_pe #(inputBits, outputBits) pe_13_8(clk, rst, clk2x,
											pe_13_7_out_a, pe_13_7_out_b, pe_13_7_out_c, pe_13_7_out_d, pe_12_8_out_e, loadingWeights,
											pe_12_8_out_w, pe_12_8_out_x, pe_12_8_out_y, pe_12_8_out_z,
											pe_13_8_out_a, pe_13_8_out_b, pe_13_8_out_c, pe_13_8_out_d, pe_13_8_out_e,
											pe_13_8_out_w, pe_13_8_out_x, pe_13_8_out_y, pe_13_8_out_z);
	//pe 13 9
	int8_pe #(inputBits, outputBits) pe_13_9(clk, rst, clk2x,
											pe_13_8_out_a, pe_13_8_out_b, pe_13_8_out_c, pe_13_8_out_d, pe_12_9_out_e, loadingWeights,
											pe_12_9_out_w, pe_12_9_out_x, pe_12_9_out_y, pe_12_9_out_z,
											pe_13_9_out_a, pe_13_9_out_b, pe_13_9_out_c, pe_13_9_out_d, pe_13_9_out_e,
											pe_13_9_out_w, pe_13_9_out_x, pe_13_9_out_y, pe_13_9_out_z);
	//pe 13 10
	int8_pe #(inputBits, outputBits) pe_13_10(clk, rst, clk2x,
											pe_13_9_out_a, pe_13_9_out_b, pe_13_9_out_c, pe_13_9_out_d, pe_12_10_out_e, loadingWeights,
											pe_12_10_out_w, pe_12_10_out_x, pe_12_10_out_y, pe_12_10_out_z,
											pe_13_10_out_a, pe_13_10_out_b, pe_13_10_out_c, pe_13_10_out_d, pe_13_10_out_e,
											pe_13_10_out_w, pe_13_10_out_x, pe_13_10_out_y, pe_13_10_out_z);
	//pe 13 11
	int8_pe #(inputBits, outputBits) pe_13_11(clk, rst, clk2x,
											pe_13_10_out_a, pe_13_10_out_b, pe_13_10_out_c, pe_13_10_out_d, pe_12_11_out_e, loadingWeights,
											pe_12_11_out_w, pe_12_11_out_x, pe_12_11_out_y, pe_12_11_out_z,
											pe_13_11_out_a, pe_13_11_out_b, pe_13_11_out_c, pe_13_11_out_d, pe_13_11_out_e,
											pe_13_11_out_w, pe_13_11_out_x, pe_13_11_out_y, pe_13_11_out_z);
	//pe 13 12
	int8_pe #(inputBits, outputBits) pe_13_12(clk, rst, clk2x,
											pe_13_11_out_a, pe_13_11_out_b, pe_13_11_out_c, pe_13_11_out_d, pe_12_12_out_e, loadingWeights,
											pe_12_12_out_w, pe_12_12_out_x, pe_12_12_out_y, pe_12_12_out_z,
											pe_13_12_out_a, pe_13_12_out_b, pe_13_12_out_c, pe_13_12_out_d, pe_13_12_out_e,
											pe_13_12_out_w, pe_13_12_out_x, pe_13_12_out_y, pe_13_12_out_z);
	//pe 13 13
	int8_pe #(inputBits, outputBits) pe_13_13(clk, rst, clk2x,
											pe_13_12_out_a, pe_13_12_out_b, pe_13_12_out_c, pe_13_12_out_d, pe_12_13_out_e, loadingWeights,
											pe_12_13_out_w, pe_12_13_out_x, pe_12_13_out_y, pe_12_13_out_z,
											pe_13_13_out_a, pe_13_13_out_b, pe_13_13_out_c, pe_13_13_out_d, pe_13_13_out_e,
											pe_13_13_out_w, pe_13_13_out_x, pe_13_13_out_y, pe_13_13_out_z);

	//assigns
	assign out_bottom_0_w = pe_13_0_out_w;
	assign out_bottom_0_x = pe_13_0_out_x;
	assign out_bottom_0_y = pe_13_0_out_y;
	assign out_bottom_0_z = pe_13_0_out_z;
	assign out_bottom_1_w = pe_13_1_out_w;
	assign out_bottom_1_x = pe_13_1_out_x;
	assign out_bottom_1_y = pe_13_1_out_y;
	assign out_bottom_1_z = pe_13_1_out_z;
	assign out_bottom_2_w = pe_13_2_out_w;
	assign out_bottom_2_x = pe_13_2_out_x;
	assign out_bottom_2_y = pe_13_2_out_y;
	assign out_bottom_2_z = pe_13_2_out_z;
	assign out_bottom_3_w = pe_13_3_out_w;
	assign out_bottom_3_x = pe_13_3_out_x;
	assign out_bottom_3_y = pe_13_3_out_y;
	assign out_bottom_3_z = pe_13_3_out_z;
	assign out_bottom_4_w = pe_13_4_out_w;
	assign out_bottom_4_x = pe_13_4_out_x;
	assign out_bottom_4_y = pe_13_4_out_y;
	assign out_bottom_4_z = pe_13_4_out_z;
	assign out_bottom_5_w = pe_13_5_out_w;
	assign out_bottom_5_x = pe_13_5_out_x;
	assign out_bottom_5_y = pe_13_5_out_y;
	assign out_bottom_5_z = pe_13_5_out_z;
	assign out_bottom_6_w = pe_13_6_out_w;
	assign out_bottom_6_x = pe_13_6_out_x;
	assign out_bottom_6_y = pe_13_6_out_y;
	assign out_bottom_6_z = pe_13_6_out_z;
	assign out_bottom_7_w = pe_13_7_out_w;
	assign out_bottom_7_x = pe_13_7_out_x;
	assign out_bottom_7_y = pe_13_7_out_y;
	assign out_bottom_7_z = pe_13_7_out_z;
	assign out_bottom_8_w = pe_13_8_out_w;
	assign out_bottom_8_x = pe_13_8_out_x;
	assign out_bottom_8_y = pe_13_8_out_y;
	assign out_bottom_8_z = pe_13_8_out_z;
	assign out_bottom_9_w = pe_13_9_out_w;
	assign out_bottom_9_x = pe_13_9_out_x;
	assign out_bottom_9_y = pe_13_9_out_y;
	assign out_bottom_9_z = pe_13_9_out_z;
	assign out_bottom_10_w = pe_13_10_out_w;
	assign out_bottom_10_x = pe_13_10_out_x;
	assign out_bottom_10_y = pe_13_10_out_y;
	assign out_bottom_10_z = pe_13_10_out_z;
	assign out_bottom_11_w = pe_13_11_out_w;
	assign out_bottom_11_x = pe_13_11_out_x;
	assign out_bottom_11_y = pe_13_11_out_y;
	assign out_bottom_11_z = pe_13_11_out_z;
	assign out_bottom_12_w = pe_13_12_out_w;
	assign out_bottom_12_x = pe_13_12_out_x;
	assign out_bottom_12_y = pe_13_12_out_y;
	assign out_bottom_12_z = pe_13_12_out_z;
	assign out_bottom_13_w = pe_13_13_out_w;
	assign out_bottom_13_x = pe_13_13_out_x;
	assign out_bottom_13_y = pe_13_13_out_y;
	assign out_bottom_13_z = pe_13_13_out_z;

endmodule