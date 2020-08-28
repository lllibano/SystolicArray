module top //8x8
#(
	parameter arraySize = 8,
	parameter inputBits = 8,
	parameter outputBits = 32,
	parameter addressWidth = $clog2(arraySize),
	parameter s_axi_tdata_width = arraySize*inputBits*5 + 192,
	parameter s_axi_tkeep_width = s_axi_tdata_width/8,
	parameter m_axi_tdata_width = arraySize*outputBits*4 + 0,
	parameter m_axi_tkeep_width = m_axi_tdata_width/8
)
(
	//CLK, RST
	input logic clk,
	input logic rst,
	input logic clk2x,
	//Global Control
	input logic start,
	input logic interrupt,
	//AXIS Slave Input Port
	input logic [s_axi_tdata_width-1:0] S_AXIS_TDATA,
	input logic [s_axi_tkeep_width-1:0] S_AXIS_TKEEP,
	input logic S_AXIS_TLAST,
	input logic S_AXIS_TVALID,
	output logic S_AXIS_TREADY,
	//AXIS Master Input Port
	output logic [m_axi_tdata_width-1:0] M_AXIS_TDATA,
	output logic [m_axi_tkeep_width-1:0] M_AXIS_TKEEP,
	output logic M_AXIS_TLAST,
	output logic M_AXIS_TVALID,
	input logic M_AXIS_TREADY
);

	//signals
	//fsm
	//fillingInputMemoriesState
	logic fillingInputMemories;
	logic [addressWidth-1:0] abcdeWriteAddress;
	//loadingWeightsState
	logic loadingWeights;
	logic [addressWidth-1:0] eReadAddress;
	//runningState - inputs [mem -> array]
	logic validInputs_0;
	logic [addressWidth-1:0] abcdReadAddress_0;
	//runningState - outputs [array -> mem]
	logic wxyzWriteEnable_0;
	logic [addressWidth-1:0] wxyzWriteAddress_0;
	//runningState - inputs [mem -> outside]
	logic [addressWidth-1:0] wxyzReadAddress_0;
	//others
	//abcd
	//line0
	logic [inputBits-1:0] mem_a_0_writeData;
	logic [inputBits-1:0] mem_a_0_readData;
	logic [inputBits-1:0] mem_b_0_writeData;
	logic [inputBits-1:0] mem_b_0_readData;
	logic [inputBits-1:0] mem_c_0_writeData;
	logic [inputBits-1:0] mem_c_0_readData;
	logic [inputBits-1:0] mem_d_0_writeData;
	logic [inputBits-1:0] mem_d_0_readData;
	logic [inputBits-1:0] array_a_0_input;
	logic [inputBits-1:0] array_b_0_input;
	logic [inputBits-1:0] array_c_0_input;
	logic [inputBits-1:0] array_d_0_input;
	//line1
	logic validInputs_1;
	logic [addressWidth-1:0] abcdReadAddress_1;
	logic [inputBits-1:0] mem_a_1_writeData;
	logic [inputBits-1:0] mem_a_1_readData;
	logic [inputBits-1:0] mem_b_1_writeData;
	logic [inputBits-1:0] mem_b_1_readData;
	logic [inputBits-1:0] mem_c_1_writeData;
	logic [inputBits-1:0] mem_c_1_readData;
	logic [inputBits-1:0] mem_d_1_writeData;
	logic [inputBits-1:0] mem_d_1_readData;
	logic [inputBits-1:0] array_a_1_input;
	logic [inputBits-1:0] array_b_1_input;
	logic [inputBits-1:0] array_c_1_input;
	logic [inputBits-1:0] array_d_1_input;
	//line2
	logic validInputs_2;
	logic [addressWidth-1:0] abcdReadAddress_2;
	logic [inputBits-1:0] mem_a_2_writeData;
	logic [inputBits-1:0] mem_a_2_readData;
	logic [inputBits-1:0] mem_b_2_writeData;
	logic [inputBits-1:0] mem_b_2_readData;
	logic [inputBits-1:0] mem_c_2_writeData;
	logic [inputBits-1:0] mem_c_2_readData;
	logic [inputBits-1:0] mem_d_2_writeData;
	logic [inputBits-1:0] mem_d_2_readData;
	logic [inputBits-1:0] array_a_2_input;
	logic [inputBits-1:0] array_b_2_input;
	logic [inputBits-1:0] array_c_2_input;
	logic [inputBits-1:0] array_d_2_input;
	//line3
	logic validInputs_3;
	logic [addressWidth-1:0] abcdReadAddress_3;
	logic [inputBits-1:0] mem_a_3_writeData;
	logic [inputBits-1:0] mem_a_3_readData;
	logic [inputBits-1:0] mem_b_3_writeData;
	logic [inputBits-1:0] mem_b_3_readData;
	logic [inputBits-1:0] mem_c_3_writeData;
	logic [inputBits-1:0] mem_c_3_readData;
	logic [inputBits-1:0] mem_d_3_writeData;
	logic [inputBits-1:0] mem_d_3_readData;
	logic [inputBits-1:0] array_a_3_input;
	logic [inputBits-1:0] array_b_3_input;
	logic [inputBits-1:0] array_c_3_input;
	logic [inputBits-1:0] array_d_3_input;
	//line4
	logic validInputs_4;
	logic [addressWidth-1:0] abcdReadAddress_4;
	logic [inputBits-1:0] mem_a_4_writeData;
	logic [inputBits-1:0] mem_a_4_readData;
	logic [inputBits-1:0] mem_b_4_writeData;
	logic [inputBits-1:0] mem_b_4_readData;
	logic [inputBits-1:0] mem_c_4_writeData;
	logic [inputBits-1:0] mem_c_4_readData;
	logic [inputBits-1:0] mem_d_4_writeData;
	logic [inputBits-1:0] mem_d_4_readData;
	logic [inputBits-1:0] array_a_4_input;
	logic [inputBits-1:0] array_b_4_input;
	logic [inputBits-1:0] array_c_4_input;
	logic [inputBits-1:0] array_d_4_input;
	//line5
	logic validInputs_5;
	logic [addressWidth-1:0] abcdReadAddress_5;
	logic [inputBits-1:0] mem_a_5_writeData;
	logic [inputBits-1:0] mem_a_5_readData;
	logic [inputBits-1:0] mem_b_5_writeData;
	logic [inputBits-1:0] mem_b_5_readData;
	logic [inputBits-1:0] mem_c_5_writeData;
	logic [inputBits-1:0] mem_c_5_readData;
	logic [inputBits-1:0] mem_d_5_writeData;
	logic [inputBits-1:0] mem_d_5_readData;
	logic [inputBits-1:0] array_a_5_input;
	logic [inputBits-1:0] array_b_5_input;
	logic [inputBits-1:0] array_c_5_input;
	logic [inputBits-1:0] array_d_5_input;
	//line6
	logic validInputs_6;
	logic [addressWidth-1:0] abcdReadAddress_6;
	logic [inputBits-1:0] mem_a_6_writeData;
	logic [inputBits-1:0] mem_a_6_readData;
	logic [inputBits-1:0] mem_b_6_writeData;
	logic [inputBits-1:0] mem_b_6_readData;
	logic [inputBits-1:0] mem_c_6_writeData;
	logic [inputBits-1:0] mem_c_6_readData;
	logic [inputBits-1:0] mem_d_6_writeData;
	logic [inputBits-1:0] mem_d_6_readData;
	logic [inputBits-1:0] array_a_6_input;
	logic [inputBits-1:0] array_b_6_input;
	logic [inputBits-1:0] array_c_6_input;
	logic [inputBits-1:0] array_d_6_input;
	//line7
	logic validInputs_7;
	logic [addressWidth-1:0] abcdReadAddress_7;
	logic [inputBits-1:0] mem_a_7_writeData;
	logic [inputBits-1:0] mem_a_7_readData;
	logic [inputBits-1:0] mem_b_7_writeData;
	logic [inputBits-1:0] mem_b_7_readData;
	logic [inputBits-1:0] mem_c_7_writeData;
	logic [inputBits-1:0] mem_c_7_readData;
	logic [inputBits-1:0] mem_d_7_writeData;
	logic [inputBits-1:0] mem_d_7_readData;
	logic [inputBits-1:0] array_a_7_input;
	logic [inputBits-1:0] array_b_7_input;
	logic [inputBits-1:0] array_c_7_input;
	logic [inputBits-1:0] array_d_7_input;
	//c
	//column0
	logic [inputBits-1:0] mem_e_0_writeData;
	logic [inputBits-1:0] mem_e_0_readData;
	logic [inputBits-1:0] array_e_0_input;
	//column1
	logic [inputBits-1:0] mem_e_1_writeData;
	logic [inputBits-1:0] mem_e_1_readData;
	logic [inputBits-1:0] array_e_1_input;
	//column2
	logic [inputBits-1:0] mem_e_2_writeData;
	logic [inputBits-1:0] mem_e_2_readData;
	logic [inputBits-1:0] array_e_2_input;
	//column3
	logic [inputBits-1:0] mem_e_3_writeData;
	logic [inputBits-1:0] mem_e_3_readData;
	logic [inputBits-1:0] array_e_3_input;
	//column4
	logic [inputBits-1:0] mem_e_4_writeData;
	logic [inputBits-1:0] mem_e_4_readData;
	logic [inputBits-1:0] array_e_4_input;
	//column5
	logic [inputBits-1:0] mem_e_5_writeData;
	logic [inputBits-1:0] mem_e_5_readData;
	logic [inputBits-1:0] array_e_5_input;
	//column6
	logic [inputBits-1:0] mem_e_6_writeData;
	logic [inputBits-1:0] mem_e_6_readData;
	logic [inputBits-1:0] array_e_6_input;
	//column7
	logic [inputBits-1:0] mem_e_7_writeData;
	logic [inputBits-1:0] mem_e_7_readData;
	logic [inputBits-1:0] array_e_7_input;
	//yz
	//column0
	logic [outputBits-1:0] array_w_0_output;
	logic [outputBits-1:0] array_x_0_output;
	logic [outputBits-1:0] array_y_0_output;
	logic [outputBits-1:0] array_z_0_output;
	logic [outputBits-1:0] mem_w_0_readData;
	logic [outputBits-1:0] mem_x_0_readData;
	logic [outputBits-1:0] mem_y_0_readData;
	logic [outputBits-1:0] mem_z_0_readData;
	//column1
	logic wxyzWriteEnable_1;
	logic [addressWidth-1:0] wxyzWriteAddress_1;
	logic [addressWidth-1:0] wxyzReadAddress_1;
	logic [outputBits-1:0] array_w_1_output;
	logic [outputBits-1:0] array_x_1_output;
	logic [outputBits-1:0] array_y_1_output;
	logic [outputBits-1:0] array_z_1_output;
	logic [outputBits-1:0] mem_w_1_readData;
	logic [outputBits-1:0] mem_x_1_readData;
	logic [outputBits-1:0] mem_y_1_readData;
	logic [outputBits-1:0] mem_z_1_readData;
	//column2
	logic wxyzWriteEnable_2;
	logic [addressWidth-1:0] wxyzWriteAddress_2;
	logic [addressWidth-1:0] wxyzReadAddress_2;
	logic [outputBits-1:0] array_w_2_output;
	logic [outputBits-1:0] array_x_2_output;
	logic [outputBits-1:0] array_y_2_output;
	logic [outputBits-1:0] array_z_2_output;
	logic [outputBits-1:0] mem_w_2_readData;
	logic [outputBits-1:0] mem_x_2_readData;
	logic [outputBits-1:0] mem_y_2_readData;
	logic [outputBits-1:0] mem_z_2_readData;
	//column3
	logic wxyzWriteEnable_3;
	logic [addressWidth-1:0] wxyzWriteAddress_3;
	logic [addressWidth-1:0] wxyzReadAddress_3;
	logic [outputBits-1:0] array_w_3_output;
	logic [outputBits-1:0] array_x_3_output;
	logic [outputBits-1:0] array_y_3_output;
	logic [outputBits-1:0] array_z_3_output;
	logic [outputBits-1:0] mem_w_3_readData;
	logic [outputBits-1:0] mem_x_3_readData;
	logic [outputBits-1:0] mem_y_3_readData;
	logic [outputBits-1:0] mem_z_3_readData;
	//column4
	logic wxyzWriteEnable_4;
	logic [addressWidth-1:0] wxyzWriteAddress_4;
	logic [addressWidth-1:0] wxyzReadAddress_4;
	logic [outputBits-1:0] array_w_4_output;
	logic [outputBits-1:0] array_x_4_output;
	logic [outputBits-1:0] array_y_4_output;
	logic [outputBits-1:0] array_z_4_output;
	logic [outputBits-1:0] mem_w_4_readData;
	logic [outputBits-1:0] mem_x_4_readData;
	logic [outputBits-1:0] mem_y_4_readData;
	logic [outputBits-1:0] mem_z_4_readData;
	//column5
	logic wxyzWriteEnable_5;
	logic [addressWidth-1:0] wxyzWriteAddress_5;
	logic [addressWidth-1:0] wxyzReadAddress_5;
	logic [outputBits-1:0] array_w_5_output;
	logic [outputBits-1:0] array_x_5_output;
	logic [outputBits-1:0] array_y_5_output;
	logic [outputBits-1:0] array_z_5_output;
	logic [outputBits-1:0] mem_w_5_readData;
	logic [outputBits-1:0] mem_x_5_readData;
	logic [outputBits-1:0] mem_y_5_readData;
	logic [outputBits-1:0] mem_z_5_readData;
	//column6
	logic wxyzWriteEnable_6;
	logic [addressWidth-1:0] wxyzWriteAddress_6;
	logic [addressWidth-1:0] wxyzReadAddress_6;
	logic [outputBits-1:0] array_w_6_output;
	logic [outputBits-1:0] array_x_6_output;
	logic [outputBits-1:0] array_y_6_output;
	logic [outputBits-1:0] array_z_6_output;
	logic [outputBits-1:0] mem_w_6_readData;
	logic [outputBits-1:0] mem_x_6_readData;
	logic [outputBits-1:0] mem_y_6_readData;
	logic [outputBits-1:0] mem_z_6_readData;
	//column7
	logic wxyzWriteEnable_7;
	logic [addressWidth-1:0] wxyzWriteAddress_7;
	logic [addressWidth-1:0] wxyzReadAddress_7;
	logic [outputBits-1:0] array_w_7_output;
	logic [outputBits-1:0] array_x_7_output;
	logic [outputBits-1:0] array_y_7_output;
	logic [outputBits-1:0] array_z_7_output;
	logic [outputBits-1:0] mem_w_7_readData;
	logic [outputBits-1:0] mem_x_7_readData;
	logic [outputBits-1:0] mem_y_7_readData;
	logic [outputBits-1:0] mem_z_7_readData;

	//modules
	//fsm
	fsm #(arraySize) fsm(clk, rst, start, interrupt,
						 S_AXIS_TREADY, S_AXIS_TVALID, S_AXIS_TLAST,
						 M_AXIS_TREADY, M_AXIS_TVALID, M_AXIS_TLAST,
						 fillingInputMemories, abcdeWriteAddress,
						 loadingWeights, eReadAddress,
						 validInputs_0, abcdReadAddress_0,
						 wxyzWriteEnable_0, wxyzWriteAddress_0,
						 wxyzReadAddress_0);
	//mem_abcd [write external, read by array]
	//line 0
	assign mem_a_0_writeData = S_AXIS_TDATA[1*inputBits-1:0*inputBits];
	mem #(inputBits, arraySize) mem_a_0(clk, fillingInputMemories, abcdeWriteAddress, mem_a_0_writeData, abcdReadAddress_0, mem_a_0_readData);
	assign array_a_0_input = (validInputs_0) ? mem_a_0_readData:{inputBits{1'b0}};
	assign mem_b_0_writeData = S_AXIS_TDATA[9*inputBits-1:8*inputBits];
	mem #(inputBits, arraySize) mem_b_0(clk, fillingInputMemories, abcdeWriteAddress, mem_b_0_writeData, abcdReadAddress_0, mem_b_0_readData);
	assign array_b_0_input = (validInputs_0) ? mem_b_0_readData:{inputBits{1'b0}};
	assign mem_c_0_writeData = S_AXIS_TDATA[17*inputBits-1:16*inputBits];
	mem #(inputBits, arraySize) mem_c_0(clk, fillingInputMemories, abcdeWriteAddress, mem_c_0_writeData, abcdReadAddress_0, mem_c_0_readData);
	assign array_c_0_input = (validInputs_0) ? mem_c_0_readData:{inputBits{1'b0}};
	assign mem_d_0_writeData = S_AXIS_TDATA[25*inputBits-1:24*inputBits];
	mem #(inputBits, arraySize) mem_d_0(clk, fillingInputMemories, abcdeWriteAddress, mem_d_0_writeData, abcdReadAddress_0, mem_d_0_readData);
	assign array_d_0_input = (validInputs_0) ? mem_d_0_readData:{inputBits{1'b0}};
	//line 1
	//dff for delaying valid + address
	dff #(1) dff_validInputs_1(clk, rst, validInputs_0, validInputs_1);
	dff #(addressWidth) dff_abcdReadAddress_1(clk, rst, abcdReadAddress_0, abcdReadAddress_1);
	assign mem_a_1_writeData = S_AXIS_TDATA[2*inputBits-1:1*inputBits];
	mem #(inputBits, arraySize) mem_a_1(clk, fillingInputMemories, abcdeWriteAddress, mem_a_1_writeData, abcdReadAddress_1, mem_a_1_readData);
	assign array_a_1_input = (validInputs_1) ? mem_a_1_readData:{inputBits{1'b0}};
	assign mem_b_1_writeData = S_AXIS_TDATA[10*inputBits-1:9*inputBits];
	mem #(inputBits, arraySize) mem_b_1(clk, fillingInputMemories, abcdeWriteAddress, mem_b_1_writeData, abcdReadAddress_1, mem_b_1_readData);
	assign array_b_1_input = (validInputs_1) ? mem_b_1_readData:{inputBits{1'b0}};
	assign mem_c_1_writeData = S_AXIS_TDATA[18*inputBits-1:17*inputBits];
	mem #(inputBits, arraySize) mem_c_1(clk, fillingInputMemories, abcdeWriteAddress, mem_c_1_writeData, abcdReadAddress_1, mem_c_1_readData);
	assign array_c_1_input = (validInputs_1) ? mem_c_1_readData:{inputBits{1'b0}};
	assign mem_d_1_writeData = S_AXIS_TDATA[26*inputBits-1:25*inputBits];
	mem #(inputBits, arraySize) mem_d_1(clk, fillingInputMemories, abcdeWriteAddress, mem_d_1_writeData, abcdReadAddress_1, mem_d_1_readData);
	assign array_d_1_input = (validInputs_1) ? mem_d_1_readData:{inputBits{1'b0}};
	//line 2
	//dff for delaying valid + address
	dff #(1) dff_validInputs_2(clk, rst, validInputs_1, validInputs_2);
	dff #(addressWidth) dff_abcdReadAddress_2(clk, rst, abcdReadAddress_1, abcdReadAddress_2);
	assign mem_a_2_writeData = S_AXIS_TDATA[3*inputBits-1:2*inputBits];
	mem #(inputBits, arraySize) mem_a_2(clk, fillingInputMemories, abcdeWriteAddress, mem_a_2_writeData, abcdReadAddress_2, mem_a_2_readData);
	assign array_a_2_input = (validInputs_2) ? mem_a_2_readData:{inputBits{1'b0}};
	assign mem_b_2_writeData = S_AXIS_TDATA[11*inputBits-1:10*inputBits];
	mem #(inputBits, arraySize) mem_b_2(clk, fillingInputMemories, abcdeWriteAddress, mem_b_2_writeData, abcdReadAddress_2, mem_b_2_readData);
	assign array_b_2_input = (validInputs_2) ? mem_b_2_readData:{inputBits{1'b0}};
	assign mem_c_2_writeData = S_AXIS_TDATA[19*inputBits-1:18*inputBits];
	mem #(inputBits, arraySize) mem_c_2(clk, fillingInputMemories, abcdeWriteAddress, mem_c_2_writeData, abcdReadAddress_2, mem_c_2_readData);
	assign array_c_2_input = (validInputs_2) ? mem_c_2_readData:{inputBits{1'b0}};
	assign mem_d_2_writeData = S_AXIS_TDATA[27*inputBits-1:26*inputBits];
	mem #(inputBits, arraySize) mem_d_2(clk, fillingInputMemories, abcdeWriteAddress, mem_d_2_writeData, abcdReadAddress_2, mem_d_2_readData);
	assign array_d_2_input = (validInputs_2) ? mem_d_2_readData:{inputBits{1'b0}};
	//line 3
	//dff for delaying valid + address
	dff #(1) dff_validInputs_3(clk, rst, validInputs_2, validInputs_3);
	dff #(addressWidth) dff_abcdReadAddress_3(clk, rst, abcdReadAddress_2, abcdReadAddress_3);
	assign mem_a_3_writeData = S_AXIS_TDATA[4*inputBits-1:3*inputBits];
	mem #(inputBits, arraySize) mem_a_3(clk, fillingInputMemories, abcdeWriteAddress, mem_a_3_writeData, abcdReadAddress_3, mem_a_3_readData);
	assign array_a_3_input = (validInputs_3) ? mem_a_3_readData:{inputBits{1'b0}};
	assign mem_b_3_writeData = S_AXIS_TDATA[12*inputBits-1:11*inputBits];
	mem #(inputBits, arraySize) mem_b_3(clk, fillingInputMemories, abcdeWriteAddress, mem_b_3_writeData, abcdReadAddress_3, mem_b_3_readData);
	assign array_b_3_input = (validInputs_3) ? mem_b_3_readData:{inputBits{1'b0}};
	assign mem_c_3_writeData = S_AXIS_TDATA[20*inputBits-1:19*inputBits];
	mem #(inputBits, arraySize) mem_c_3(clk, fillingInputMemories, abcdeWriteAddress, mem_c_3_writeData, abcdReadAddress_3, mem_c_3_readData);
	assign array_c_3_input = (validInputs_3) ? mem_c_3_readData:{inputBits{1'b0}};
	assign mem_d_3_writeData = S_AXIS_TDATA[28*inputBits-1:27*inputBits];
	mem #(inputBits, arraySize) mem_d_3(clk, fillingInputMemories, abcdeWriteAddress, mem_d_3_writeData, abcdReadAddress_3, mem_d_3_readData);
	assign array_d_3_input = (validInputs_3) ? mem_d_3_readData:{inputBits{1'b0}};
	//line 4
	//dff for delaying valid + address
	dff #(1) dff_validInputs_4(clk, rst, validInputs_3, validInputs_4);
	dff #(addressWidth) dff_abcdReadAddress_4(clk, rst, abcdReadAddress_3, abcdReadAddress_4);
	assign mem_a_4_writeData = S_AXIS_TDATA[5*inputBits-1:4*inputBits];
	mem #(inputBits, arraySize) mem_a_4(clk, fillingInputMemories, abcdeWriteAddress, mem_a_4_writeData, abcdReadAddress_4, mem_a_4_readData);
	assign array_a_4_input = (validInputs_4) ? mem_a_4_readData:{inputBits{1'b0}};
	assign mem_b_4_writeData = S_AXIS_TDATA[13*inputBits-1:12*inputBits];
	mem #(inputBits, arraySize) mem_b_4(clk, fillingInputMemories, abcdeWriteAddress, mem_b_4_writeData, abcdReadAddress_4, mem_b_4_readData);
	assign array_b_4_input = (validInputs_4) ? mem_b_4_readData:{inputBits{1'b0}};
	assign mem_c_4_writeData = S_AXIS_TDATA[21*inputBits-1:20*inputBits];
	mem #(inputBits, arraySize) mem_c_4(clk, fillingInputMemories, abcdeWriteAddress, mem_c_4_writeData, abcdReadAddress_4, mem_c_4_readData);
	assign array_c_4_input = (validInputs_4) ? mem_c_4_readData:{inputBits{1'b0}};
	assign mem_d_4_writeData = S_AXIS_TDATA[29*inputBits-1:28*inputBits];
	mem #(inputBits, arraySize) mem_d_4(clk, fillingInputMemories, abcdeWriteAddress, mem_d_4_writeData, abcdReadAddress_4, mem_d_4_readData);
	assign array_d_4_input = (validInputs_4) ? mem_d_4_readData:{inputBits{1'b0}};
	//line 5
	//dff for delaying valid + address
	dff #(1) dff_validInputs_5(clk, rst, validInputs_4, validInputs_5);
	dff #(addressWidth) dff_abcdReadAddress_5(clk, rst, abcdReadAddress_4, abcdReadAddress_5);
	assign mem_a_5_writeData = S_AXIS_TDATA[6*inputBits-1:5*inputBits];
	mem #(inputBits, arraySize) mem_a_5(clk, fillingInputMemories, abcdeWriteAddress, mem_a_5_writeData, abcdReadAddress_5, mem_a_5_readData);
	assign array_a_5_input = (validInputs_5) ? mem_a_5_readData:{inputBits{1'b0}};
	assign mem_b_5_writeData = S_AXIS_TDATA[14*inputBits-1:13*inputBits];
	mem #(inputBits, arraySize) mem_b_5(clk, fillingInputMemories, abcdeWriteAddress, mem_b_5_writeData, abcdReadAddress_5, mem_b_5_readData);
	assign array_b_5_input = (validInputs_5) ? mem_b_5_readData:{inputBits{1'b0}};
	assign mem_c_5_writeData = S_AXIS_TDATA[22*inputBits-1:21*inputBits];
	mem #(inputBits, arraySize) mem_c_5(clk, fillingInputMemories, abcdeWriteAddress, mem_c_5_writeData, abcdReadAddress_5, mem_c_5_readData);
	assign array_c_5_input = (validInputs_5) ? mem_c_5_readData:{inputBits{1'b0}};
	assign mem_d_5_writeData = S_AXIS_TDATA[30*inputBits-1:29*inputBits];
	mem #(inputBits, arraySize) mem_d_5(clk, fillingInputMemories, abcdeWriteAddress, mem_d_5_writeData, abcdReadAddress_5, mem_d_5_readData);
	assign array_d_5_input = (validInputs_5) ? mem_d_5_readData:{inputBits{1'b0}};
	//line 6
	//dff for delaying valid + address
	dff #(1) dff_validInputs_6(clk, rst, validInputs_5, validInputs_6);
	dff #(addressWidth) dff_abcdReadAddress_6(clk, rst, abcdReadAddress_5, abcdReadAddress_6);
	assign mem_a_6_writeData = S_AXIS_TDATA[7*inputBits-1:6*inputBits];
	mem #(inputBits, arraySize) mem_a_6(clk, fillingInputMemories, abcdeWriteAddress, mem_a_6_writeData, abcdReadAddress_6, mem_a_6_readData);
	assign array_a_6_input = (validInputs_6) ? mem_a_6_readData:{inputBits{1'b0}};
	assign mem_b_6_writeData = S_AXIS_TDATA[15*inputBits-1:14*inputBits];
	mem #(inputBits, arraySize) mem_b_6(clk, fillingInputMemories, abcdeWriteAddress, mem_b_6_writeData, abcdReadAddress_6, mem_b_6_readData);
	assign array_b_6_input = (validInputs_6) ? mem_b_6_readData:{inputBits{1'b0}};
	assign mem_c_6_writeData = S_AXIS_TDATA[23*inputBits-1:22*inputBits];
	mem #(inputBits, arraySize) mem_c_6(clk, fillingInputMemories, abcdeWriteAddress, mem_c_6_writeData, abcdReadAddress_6, mem_c_6_readData);
	assign array_c_6_input = (validInputs_6) ? mem_c_6_readData:{inputBits{1'b0}};
	assign mem_d_6_writeData = S_AXIS_TDATA[31*inputBits-1:30*inputBits];
	mem #(inputBits, arraySize) mem_d_6(clk, fillingInputMemories, abcdeWriteAddress, mem_d_6_writeData, abcdReadAddress_6, mem_d_6_readData);
	assign array_d_6_input = (validInputs_6) ? mem_d_6_readData:{inputBits{1'b0}};
	//line 7
	//dff for delaying valid + address
	dff #(1) dff_validInputs_7(clk, rst, validInputs_6, validInputs_7);
	dff #(addressWidth) dff_abcdReadAddress_7(clk, rst, abcdReadAddress_6, abcdReadAddress_7);
	assign mem_a_7_writeData = S_AXIS_TDATA[8*inputBits-1:7*inputBits];
	mem #(inputBits, arraySize) mem_a_7(clk, fillingInputMemories, abcdeWriteAddress, mem_a_7_writeData, abcdReadAddress_7, mem_a_7_readData);
	assign array_a_7_input = (validInputs_7) ? mem_a_7_readData:{inputBits{1'b0}};
	assign mem_b_7_writeData = S_AXIS_TDATA[16*inputBits-1:15*inputBits];
	mem #(inputBits, arraySize) mem_b_7(clk, fillingInputMemories, abcdeWriteAddress, mem_b_7_writeData, abcdReadAddress_7, mem_b_7_readData);
	assign array_b_7_input = (validInputs_7) ? mem_b_7_readData:{inputBits{1'b0}};
	assign mem_c_7_writeData = S_AXIS_TDATA[24*inputBits-1:23*inputBits];
	mem #(inputBits, arraySize) mem_c_7(clk, fillingInputMemories, abcdeWriteAddress, mem_c_7_writeData, abcdReadAddress_7, mem_c_7_readData);
	assign array_c_7_input = (validInputs_7) ? mem_c_7_readData:{inputBits{1'b0}};
	assign mem_d_7_writeData = S_AXIS_TDATA[32*inputBits-1:31*inputBits];
	mem #(inputBits, arraySize) mem_d_7(clk, fillingInputMemories, abcdeWriteAddress, mem_d_7_writeData, abcdReadAddress_7, mem_d_7_readData);
	assign array_d_7_input = (validInputs_7) ? mem_d_7_readData:{inputBits{1'b0}};
	//mem_e [write external, read by array]
	//column 0
	assign mem_e_0_writeData = S_AXIS_TDATA[33*inputBits-1:32*inputBits];
	mem #(inputBits, arraySize) mem_e_0(clk, fillingInputMemories, abcdeWriteAddress, mem_e_0_writeData, eReadAddress, mem_e_0_readData);
	assign array_e_0_input = mem_e_0_readData;
	//column 1
	assign mem_e_1_writeData = S_AXIS_TDATA[34*inputBits-1:33*inputBits];
	mem #(inputBits, arraySize) mem_e_1(clk, fillingInputMemories, abcdeWriteAddress, mem_e_1_writeData, eReadAddress, mem_e_1_readData);
	assign array_e_1_input = mem_e_1_readData;
	//column 2
	assign mem_e_2_writeData = S_AXIS_TDATA[35*inputBits-1:34*inputBits];
	mem #(inputBits, arraySize) mem_e_2(clk, fillingInputMemories, abcdeWriteAddress, mem_e_2_writeData, eReadAddress, mem_e_2_readData);
	assign array_e_2_input = mem_e_2_readData;
	//column 3
	assign mem_e_3_writeData = S_AXIS_TDATA[36*inputBits-1:35*inputBits];
	mem #(inputBits, arraySize) mem_e_3(clk, fillingInputMemories, abcdeWriteAddress, mem_e_3_writeData, eReadAddress, mem_e_3_readData);
	assign array_e_3_input = mem_e_3_readData;
	//column 4
	assign mem_e_4_writeData = S_AXIS_TDATA[37*inputBits-1:36*inputBits];
	mem #(inputBits, arraySize) mem_e_4(clk, fillingInputMemories, abcdeWriteAddress, mem_e_4_writeData, eReadAddress, mem_e_4_readData);
	assign array_e_4_input = mem_e_4_readData;
	//column 5
	assign mem_e_5_writeData = S_AXIS_TDATA[38*inputBits-1:37*inputBits];
	mem #(inputBits, arraySize) mem_e_5(clk, fillingInputMemories, abcdeWriteAddress, mem_e_5_writeData, eReadAddress, mem_e_5_readData);
	assign array_e_5_input = mem_e_5_readData;
	//column 6
	assign mem_e_6_writeData = S_AXIS_TDATA[39*inputBits-1:38*inputBits];
	mem #(inputBits, arraySize) mem_e_6(clk, fillingInputMemories, abcdeWriteAddress, mem_e_6_writeData, eReadAddress, mem_e_6_readData);
	assign array_e_6_input = mem_e_6_readData;
	//column 7
	assign mem_e_7_writeData = S_AXIS_TDATA[40*inputBits-1:39*inputBits];
	mem #(inputBits, arraySize) mem_e_7(clk, fillingInputMemories, abcdeWriteAddress, mem_e_7_writeData, eReadAddress, mem_e_7_readData);
	assign array_e_7_input = mem_e_7_readData;
	//array
	array #(inputBits, outputBits) array(clk, rst, clk2x, loadingWeights,
										 array_a_0_input, array_b_0_input, array_c_0_input, array_d_0_input,
										 array_e_0_input,
										 array_w_0_output, array_x_0_output, array_y_0_output, array_z_0_output,
										 array_a_1_input, array_b_1_input, array_c_1_input, array_d_1_input,
										 array_e_1_input,
										 array_w_1_output, array_x_1_output, array_y_1_output, array_z_1_output,
										 array_a_2_input, array_b_2_input, array_c_2_input, array_d_2_input,
										 array_e_2_input,
										 array_w_2_output, array_x_2_output, array_y_2_output, array_z_2_output,
										 array_a_3_input, array_b_3_input, array_c_3_input, array_d_3_input,
										 array_e_3_input,
										 array_w_3_output, array_x_3_output, array_y_3_output, array_z_3_output,
										 array_a_4_input, array_b_4_input, array_c_4_input, array_d_4_input,
										 array_e_4_input,
										 array_w_4_output, array_x_4_output, array_y_4_output, array_z_4_output,
										 array_a_5_input, array_b_5_input, array_c_5_input, array_d_5_input,
										 array_e_5_input,
										 array_w_5_output, array_x_5_output, array_y_5_output, array_z_5_output,
										 array_a_6_input, array_b_6_input, array_c_6_input, array_d_6_input,
										 array_e_6_input,
										 array_w_6_output, array_x_6_output, array_y_6_output, array_z_6_output,
										 array_a_7_input, array_b_7_input, array_c_7_input, array_d_7_input,
										 array_e_7_input,
										 array_w_7_output, array_x_7_output, array_y_7_output, array_z_7_output);
	//mem_wxyz [write by array, read external]
	//column 0
	mem #(outputBits, arraySize) mem_w_0(clk, wxyzWriteEnable_0, wxyzWriteAddress_0, array_w_0_output, wxyzReadAddress_0, mem_w_0_readData);
	mem #(outputBits, arraySize) mem_x_0(clk, wxyzWriteEnable_0, wxyzWriteAddress_0, array_x_0_output, wxyzReadAddress_0, mem_x_0_readData);
	mem #(outputBits, arraySize) mem_y_0(clk, wxyzWriteEnable_0, wxyzWriteAddress_0, array_y_0_output, wxyzReadAddress_0, mem_y_0_readData);
	mem #(outputBits, arraySize) mem_z_0(clk, wxyzWriteEnable_0, wxyzWriteAddress_0, array_z_0_output, wxyzReadAddress_0, mem_z_0_readData);
	//column 1
	//dff for delaying enable + address
	dff #(1) dff_wxyzWriteEnable_1(clk, rst, wxyzWriteEnable_0, wxyzWriteEnable_1);
	dff #(addressWidth) dff_wxyzWriteAddress_1(clk, rst, wxyzWriteAddress_0, wxyzWriteAddress_1);
	dff #(addressWidth) dff_wxyzReadAddress_1(clk, rst, wxyzReadAddress_0, wxyzReadAddress_1);
	mem #(outputBits, arraySize) mem_w_1(clk, wxyzWriteEnable_1, wxyzWriteAddress_1, array_w_1_output, wxyzReadAddress_1, mem_w_1_readData);
	mem #(outputBits, arraySize) mem_x_1(clk, wxyzWriteEnable_1, wxyzWriteAddress_1, array_x_1_output, wxyzReadAddress_1, mem_x_1_readData);
	mem #(outputBits, arraySize) mem_y_1(clk, wxyzWriteEnable_1, wxyzWriteAddress_1, array_y_1_output, wxyzReadAddress_1, mem_y_1_readData);
	mem #(outputBits, arraySize) mem_z_1(clk, wxyzWriteEnable_1, wxyzWriteAddress_1, array_z_1_output, wxyzReadAddress_1, mem_z_1_readData);
	//column 2
	//dff for delaying enable + address
	dff #(1) dff_wxyzWriteEnable_2(clk, rst, wxyzWriteEnable_1, wxyzWriteEnable_2);
	dff #(addressWidth) dff_wxyzWriteAddress_2(clk, rst, wxyzWriteAddress_1, wxyzWriteAddress_2);
	dff #(addressWidth) dff_wxyzReadAddress_2(clk, rst, wxyzReadAddress_1, wxyzReadAddress_2);
	mem #(outputBits, arraySize) mem_w_2(clk, wxyzWriteEnable_2, wxyzWriteAddress_2, array_w_2_output, wxyzReadAddress_2, mem_w_2_readData);
	mem #(outputBits, arraySize) mem_x_2(clk, wxyzWriteEnable_2, wxyzWriteAddress_2, array_x_2_output, wxyzReadAddress_2, mem_x_2_readData);
	mem #(outputBits, arraySize) mem_y_2(clk, wxyzWriteEnable_2, wxyzWriteAddress_2, array_y_2_output, wxyzReadAddress_2, mem_y_2_readData);
	mem #(outputBits, arraySize) mem_z_2(clk, wxyzWriteEnable_2, wxyzWriteAddress_2, array_z_2_output, wxyzReadAddress_2, mem_z_2_readData);
	//column 3
	//dff for delaying enable + address
	dff #(1) dff_wxyzWriteEnable_3(clk, rst, wxyzWriteEnable_2, wxyzWriteEnable_3);
	dff #(addressWidth) dff_wxyzWriteAddress_3(clk, rst, wxyzWriteAddress_2, wxyzWriteAddress_3);
	dff #(addressWidth) dff_wxyzReadAddress_3(clk, rst, wxyzReadAddress_2, wxyzReadAddress_3);
	mem #(outputBits, arraySize) mem_w_3(clk, wxyzWriteEnable_3, wxyzWriteAddress_3, array_w_3_output, wxyzReadAddress_3, mem_w_3_readData);
	mem #(outputBits, arraySize) mem_x_3(clk, wxyzWriteEnable_3, wxyzWriteAddress_3, array_x_3_output, wxyzReadAddress_3, mem_x_3_readData);
	mem #(outputBits, arraySize) mem_y_3(clk, wxyzWriteEnable_3, wxyzWriteAddress_3, array_y_3_output, wxyzReadAddress_3, mem_y_3_readData);
	mem #(outputBits, arraySize) mem_z_3(clk, wxyzWriteEnable_3, wxyzWriteAddress_3, array_z_3_output, wxyzReadAddress_3, mem_z_3_readData);
	//column 4
	//dff for delaying enable + address
	dff #(1) dff_wxyzWriteEnable_4(clk, rst, wxyzWriteEnable_3, wxyzWriteEnable_4);
	dff #(addressWidth) dff_wxyzWriteAddress_4(clk, rst, wxyzWriteAddress_3, wxyzWriteAddress_4);
	dff #(addressWidth) dff_wxyzReadAddress_4(clk, rst, wxyzReadAddress_3, wxyzReadAddress_4);
	mem #(outputBits, arraySize) mem_w_4(clk, wxyzWriteEnable_4, wxyzWriteAddress_4, array_w_4_output, wxyzReadAddress_4, mem_w_4_readData);
	mem #(outputBits, arraySize) mem_x_4(clk, wxyzWriteEnable_4, wxyzWriteAddress_4, array_x_4_output, wxyzReadAddress_4, mem_x_4_readData);
	mem #(outputBits, arraySize) mem_y_4(clk, wxyzWriteEnable_4, wxyzWriteAddress_4, array_y_4_output, wxyzReadAddress_4, mem_y_4_readData);
	mem #(outputBits, arraySize) mem_z_4(clk, wxyzWriteEnable_4, wxyzWriteAddress_4, array_z_4_output, wxyzReadAddress_4, mem_z_4_readData);
	//column 5
	//dff for delaying enable + address
	dff #(1) dff_wxyzWriteEnable_5(clk, rst, wxyzWriteEnable_4, wxyzWriteEnable_5);
	dff #(addressWidth) dff_wxyzWriteAddress_5(clk, rst, wxyzWriteAddress_4, wxyzWriteAddress_5);
	dff #(addressWidth) dff_wxyzReadAddress_5(clk, rst, wxyzReadAddress_4, wxyzReadAddress_5);
	mem #(outputBits, arraySize) mem_w_5(clk, wxyzWriteEnable_5, wxyzWriteAddress_5, array_w_5_output, wxyzReadAddress_5, mem_w_5_readData);
	mem #(outputBits, arraySize) mem_x_5(clk, wxyzWriteEnable_5, wxyzWriteAddress_5, array_x_5_output, wxyzReadAddress_5, mem_x_5_readData);
	mem #(outputBits, arraySize) mem_y_5(clk, wxyzWriteEnable_5, wxyzWriteAddress_5, array_y_5_output, wxyzReadAddress_5, mem_y_5_readData);
	mem #(outputBits, arraySize) mem_z_5(clk, wxyzWriteEnable_5, wxyzWriteAddress_5, array_z_5_output, wxyzReadAddress_5, mem_z_5_readData);
	//column 6
	//dff for delaying enable + address
	dff #(1) dff_wxyzWriteEnable_6(clk, rst, wxyzWriteEnable_5, wxyzWriteEnable_6);
	dff #(addressWidth) dff_wxyzWriteAddress_6(clk, rst, wxyzWriteAddress_5, wxyzWriteAddress_6);
	dff #(addressWidth) dff_wxyzReadAddress_6(clk, rst, wxyzReadAddress_5, wxyzReadAddress_6);
	mem #(outputBits, arraySize) mem_w_6(clk, wxyzWriteEnable_6, wxyzWriteAddress_6, array_w_6_output, wxyzReadAddress_6, mem_w_6_readData);
	mem #(outputBits, arraySize) mem_x_6(clk, wxyzWriteEnable_6, wxyzWriteAddress_6, array_x_6_output, wxyzReadAddress_6, mem_x_6_readData);
	mem #(outputBits, arraySize) mem_y_6(clk, wxyzWriteEnable_6, wxyzWriteAddress_6, array_y_6_output, wxyzReadAddress_6, mem_y_6_readData);
	mem #(outputBits, arraySize) mem_z_6(clk, wxyzWriteEnable_6, wxyzWriteAddress_6, array_z_6_output, wxyzReadAddress_6, mem_z_6_readData);
	//column 7
	//dff for delaying enable + address
	dff #(1) dff_wxyzWriteEnable_7(clk, rst, wxyzWriteEnable_6, wxyzWriteEnable_7);
	dff #(addressWidth) dff_wxyzWriteAddress_7(clk, rst, wxyzWriteAddress_6, wxyzWriteAddress_7);
	dff #(addressWidth) dff_wxyzReadAddress_7(clk, rst, wxyzReadAddress_6, wxyzReadAddress_7);
	mem #(outputBits, arraySize) mem_w_7(clk, wxyzWriteEnable_7, wxyzWriteAddress_7, array_w_7_output, wxyzReadAddress_7, mem_w_7_readData);
	mem #(outputBits, arraySize) mem_x_7(clk, wxyzWriteEnable_7, wxyzWriteAddress_7, array_x_7_output, wxyzReadAddress_7, mem_x_7_readData);
	mem #(outputBits, arraySize) mem_y_7(clk, wxyzWriteEnable_7, wxyzWriteAddress_7, array_y_7_output, wxyzReadAddress_7, mem_y_7_readData);
	mem #(outputBits, arraySize) mem_z_7(clk, wxyzWriteEnable_7, wxyzWriteAddress_7, array_z_7_output, wxyzReadAddress_7, mem_z_7_readData);

	//assigns
	assign M_AXIS_TDATA[1*outputBits-1:0*outputBits] = mem_w_0_readData;
	assign M_AXIS_TDATA[9*outputBits-1:8*outputBits] = mem_x_0_readData;
	assign M_AXIS_TDATA[17*outputBits-1:16*outputBits] = mem_y_0_readData;
	assign M_AXIS_TDATA[25*outputBits-1:24*outputBits] = mem_z_0_readData;
	assign M_AXIS_TDATA[2*outputBits-1:1*outputBits] = mem_w_1_readData;
	assign M_AXIS_TDATA[10*outputBits-1:9*outputBits] = mem_x_1_readData;
	assign M_AXIS_TDATA[18*outputBits-1:17*outputBits] = mem_y_1_readData;
	assign M_AXIS_TDATA[26*outputBits-1:25*outputBits] = mem_z_1_readData;
	assign M_AXIS_TDATA[3*outputBits-1:2*outputBits] = mem_w_2_readData;
	assign M_AXIS_TDATA[11*outputBits-1:10*outputBits] = mem_x_2_readData;
	assign M_AXIS_TDATA[19*outputBits-1:18*outputBits] = mem_y_2_readData;
	assign M_AXIS_TDATA[27*outputBits-1:26*outputBits] = mem_z_2_readData;
	assign M_AXIS_TDATA[4*outputBits-1:3*outputBits] = mem_w_3_readData;
	assign M_AXIS_TDATA[12*outputBits-1:11*outputBits] = mem_x_3_readData;
	assign M_AXIS_TDATA[20*outputBits-1:19*outputBits] = mem_y_3_readData;
	assign M_AXIS_TDATA[28*outputBits-1:27*outputBits] = mem_z_3_readData;
	assign M_AXIS_TDATA[5*outputBits-1:4*outputBits] = mem_w_4_readData;
	assign M_AXIS_TDATA[13*outputBits-1:12*outputBits] = mem_x_4_readData;
	assign M_AXIS_TDATA[21*outputBits-1:20*outputBits] = mem_y_4_readData;
	assign M_AXIS_TDATA[29*outputBits-1:28*outputBits] = mem_z_4_readData;
	assign M_AXIS_TDATA[6*outputBits-1:5*outputBits] = mem_w_5_readData;
	assign M_AXIS_TDATA[14*outputBits-1:13*outputBits] = mem_x_5_readData;
	assign M_AXIS_TDATA[22*outputBits-1:21*outputBits] = mem_y_5_readData;
	assign M_AXIS_TDATA[30*outputBits-1:29*outputBits] = mem_z_5_readData;
	assign M_AXIS_TDATA[7*outputBits-1:6*outputBits] = mem_w_6_readData;
	assign M_AXIS_TDATA[15*outputBits-1:14*outputBits] = mem_x_6_readData;
	assign M_AXIS_TDATA[23*outputBits-1:22*outputBits] = mem_y_6_readData;
	assign M_AXIS_TDATA[31*outputBits-1:30*outputBits] = mem_z_6_readData;
	assign M_AXIS_TDATA[8*outputBits-1:7*outputBits] = mem_w_7_readData;
	assign M_AXIS_TDATA[16*outputBits-1:15*outputBits] = mem_x_7_readData;
	assign M_AXIS_TDATA[24*outputBits-1:23*outputBits] = mem_y_7_readData;
	assign M_AXIS_TDATA[32*outputBits-1:31*outputBits] = mem_z_7_readData;
	assign M_AXIS_TKEEP = {m_axi_tkeep_width{1'b1}};

endmodule