module array //8x8
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
	output logic [outputBits-1:0] out_bottom_7_z
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

	//assigns
	assign out_bottom_0_w = pe_7_0_out_w;
	assign out_bottom_0_x = pe_7_0_out_x;
	assign out_bottom_0_y = pe_7_0_out_y;
	assign out_bottom_0_z = pe_7_0_out_z;
	assign out_bottom_1_w = pe_7_1_out_w;
	assign out_bottom_1_x = pe_7_1_out_x;
	assign out_bottom_1_y = pe_7_1_out_y;
	assign out_bottom_1_z = pe_7_1_out_z;
	assign out_bottom_2_w = pe_7_2_out_w;
	assign out_bottom_2_x = pe_7_2_out_x;
	assign out_bottom_2_y = pe_7_2_out_y;
	assign out_bottom_2_z = pe_7_2_out_z;
	assign out_bottom_3_w = pe_7_3_out_w;
	assign out_bottom_3_x = pe_7_3_out_x;
	assign out_bottom_3_y = pe_7_3_out_y;
	assign out_bottom_3_z = pe_7_3_out_z;
	assign out_bottom_4_w = pe_7_4_out_w;
	assign out_bottom_4_x = pe_7_4_out_x;
	assign out_bottom_4_y = pe_7_4_out_y;
	assign out_bottom_4_z = pe_7_4_out_z;
	assign out_bottom_5_w = pe_7_5_out_w;
	assign out_bottom_5_x = pe_7_5_out_x;
	assign out_bottom_5_y = pe_7_5_out_y;
	assign out_bottom_5_z = pe_7_5_out_z;
	assign out_bottom_6_w = pe_7_6_out_w;
	assign out_bottom_6_x = pe_7_6_out_x;
	assign out_bottom_6_y = pe_7_6_out_y;
	assign out_bottom_6_z = pe_7_6_out_z;
	assign out_bottom_7_w = pe_7_7_out_w;
	assign out_bottom_7_x = pe_7_7_out_x;
	assign out_bottom_7_y = pe_7_7_out_y;
	assign out_bottom_7_z = pe_7_7_out_z;

endmodule