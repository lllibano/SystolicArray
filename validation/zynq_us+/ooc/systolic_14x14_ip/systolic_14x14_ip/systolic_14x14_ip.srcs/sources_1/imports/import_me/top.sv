module top //14x14
#(
	parameter arraySize = 14,
	parameter inputBits = 8,
	parameter outputBits = 32,
	parameter addressWidth = 4,
	parameter s_axi_tdata_width = arraySize*inputBits*5 + 464,
	parameter s_axi_tkeep_width = s_axi_tdata_width/8,
	parameter m_axi_tdata_width = arraySize*outputBits*4 + 256,
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
	//runningState - outputs [mem -> outside]
	logic [addressWidth-1:0] wxyzReadAddress_0;
	//others
	//abcd
	//line0
	logic [4*inputBits-1:0] mem_abcd_0_writeData;
	logic [4*inputBits-1:0] mem_abcd_0_readData;
	logic [inputBits-1:0] array_a_0_input;
	logic [inputBits-1:0] array_b_0_input;
	logic [inputBits-1:0] array_c_0_input;
	logic [inputBits-1:0] array_d_0_input;
	//line1
	logic validInputs_1;
	logic [addressWidth-1:0] abcdReadAddress_1;
	logic [4*inputBits-1:0] mem_abcd_1_writeData;
	logic [4*inputBits-1:0] mem_abcd_1_readData;
	logic [inputBits-1:0] array_a_1_input;
	logic [inputBits-1:0] array_b_1_input;
	logic [inputBits-1:0] array_c_1_input;
	logic [inputBits-1:0] array_d_1_input;
	//line2
	logic validInputs_2;
	logic [addressWidth-1:0] abcdReadAddress_2;
	logic [4*inputBits-1:0] mem_abcd_2_writeData;
	logic [4*inputBits-1:0] mem_abcd_2_readData;
	logic [inputBits-1:0] array_a_2_input;
	logic [inputBits-1:0] array_b_2_input;
	logic [inputBits-1:0] array_c_2_input;
	logic [inputBits-1:0] array_d_2_input;
	//line3
	logic validInputs_3;
	logic [addressWidth-1:0] abcdReadAddress_3;
	logic [4*inputBits-1:0] mem_abcd_3_writeData;
	logic [4*inputBits-1:0] mem_abcd_3_readData;
	logic [inputBits-1:0] array_a_3_input;
	logic [inputBits-1:0] array_b_3_input;
	logic [inputBits-1:0] array_c_3_input;
	logic [inputBits-1:0] array_d_3_input;
	//line4
	logic validInputs_4;
	logic [addressWidth-1:0] abcdReadAddress_4;
	logic [4*inputBits-1:0] mem_abcd_4_writeData;
	logic [4*inputBits-1:0] mem_abcd_4_readData;
	logic [inputBits-1:0] array_a_4_input;
	logic [inputBits-1:0] array_b_4_input;
	logic [inputBits-1:0] array_c_4_input;
	logic [inputBits-1:0] array_d_4_input;
	//line5
	logic validInputs_5;
	logic [addressWidth-1:0] abcdReadAddress_5;
	logic [4*inputBits-1:0] mem_abcd_5_writeData;
	logic [4*inputBits-1:0] mem_abcd_5_readData;
	logic [inputBits-1:0] array_a_5_input;
	logic [inputBits-1:0] array_b_5_input;
	logic [inputBits-1:0] array_c_5_input;
	logic [inputBits-1:0] array_d_5_input;
	//line6
	logic validInputs_6;
	logic [addressWidth-1:0] abcdReadAddress_6;
	logic [4*inputBits-1:0] mem_abcd_6_writeData;
	logic [4*inputBits-1:0] mem_abcd_6_readData;
	logic [inputBits-1:0] array_a_6_input;
	logic [inputBits-1:0] array_b_6_input;
	logic [inputBits-1:0] array_c_6_input;
	logic [inputBits-1:0] array_d_6_input;
	//line7
	logic validInputs_7;
	logic [addressWidth-1:0] abcdReadAddress_7;
	logic [4*inputBits-1:0] mem_abcd_7_writeData;
	logic [4*inputBits-1:0] mem_abcd_7_readData;
	logic [inputBits-1:0] array_a_7_input;
	logic [inputBits-1:0] array_b_7_input;
	logic [inputBits-1:0] array_c_7_input;
	logic [inputBits-1:0] array_d_7_input;
	//line8
	logic validInputs_8;
	logic [addressWidth-1:0] abcdReadAddress_8;
	logic [4*inputBits-1:0] mem_abcd_8_writeData;
	logic [4*inputBits-1:0] mem_abcd_8_readData;
	logic [inputBits-1:0] array_a_8_input;
	logic [inputBits-1:0] array_b_8_input;
	logic [inputBits-1:0] array_c_8_input;
	logic [inputBits-1:0] array_d_8_input;
	//line9
	logic validInputs_9;
	logic [addressWidth-1:0] abcdReadAddress_9;
	logic [4*inputBits-1:0] mem_abcd_9_writeData;
	logic [4*inputBits-1:0] mem_abcd_9_readData;
	logic [inputBits-1:0] array_a_9_input;
	logic [inputBits-1:0] array_b_9_input;
	logic [inputBits-1:0] array_c_9_input;
	logic [inputBits-1:0] array_d_9_input;
	//line10
	logic validInputs_10;
	logic [addressWidth-1:0] abcdReadAddress_10;
	logic [4*inputBits-1:0] mem_abcd_10_writeData;
	logic [4*inputBits-1:0] mem_abcd_10_readData;
	logic [inputBits-1:0] array_a_10_input;
	logic [inputBits-1:0] array_b_10_input;
	logic [inputBits-1:0] array_c_10_input;
	logic [inputBits-1:0] array_d_10_input;
	//line11
	logic validInputs_11;
	logic [addressWidth-1:0] abcdReadAddress_11;
	logic [4*inputBits-1:0] mem_abcd_11_writeData;
	logic [4*inputBits-1:0] mem_abcd_11_readData;
	logic [inputBits-1:0] array_a_11_input;
	logic [inputBits-1:0] array_b_11_input;
	logic [inputBits-1:0] array_c_11_input;
	logic [inputBits-1:0] array_d_11_input;
	//line12
	logic validInputs_12;
	logic [addressWidth-1:0] abcdReadAddress_12;
	logic [4*inputBits-1:0] mem_abcd_12_writeData;
	logic [4*inputBits-1:0] mem_abcd_12_readData;
	logic [inputBits-1:0] array_a_12_input;
	logic [inputBits-1:0] array_b_12_input;
	logic [inputBits-1:0] array_c_12_input;
	logic [inputBits-1:0] array_d_12_input;
	//line13
	logic validInputs_13;
	logic [addressWidth-1:0] abcdReadAddress_13;
	logic [4*inputBits-1:0] mem_abcd_13_writeData;
	logic [4*inputBits-1:0] mem_abcd_13_readData;
	logic [inputBits-1:0] array_a_13_input;
	logic [inputBits-1:0] array_b_13_input;
	logic [inputBits-1:0] array_c_13_input;
	logic [inputBits-1:0] array_d_13_input;
	//e
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
	//column8
	logic [inputBits-1:0] mem_e_8_writeData;
	logic [inputBits-1:0] mem_e_8_readData;
	logic [inputBits-1:0] array_e_8_input;
	//column9
	logic [inputBits-1:0] mem_e_9_writeData;
	logic [inputBits-1:0] mem_e_9_readData;
	logic [inputBits-1:0] array_e_9_input;
	//column10
	logic [inputBits-1:0] mem_e_10_writeData;
	logic [inputBits-1:0] mem_e_10_readData;
	logic [inputBits-1:0] array_e_10_input;
	//column11
	logic [inputBits-1:0] mem_e_11_writeData;
	logic [inputBits-1:0] mem_e_11_readData;
	logic [inputBits-1:0] array_e_11_input;
	//column12
	logic [inputBits-1:0] mem_e_12_writeData;
	logic [inputBits-1:0] mem_e_12_readData;
	logic [inputBits-1:0] array_e_12_input;
	//column13
	logic [inputBits-1:0] mem_e_13_writeData;
	logic [inputBits-1:0] mem_e_13_readData;
	logic [inputBits-1:0] array_e_13_input;
	//wxyz
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
	//column8
	logic wxyzWriteEnable_8;
	logic [addressWidth-1:0] wxyzWriteAddress_8;
	logic [addressWidth-1:0] wxyzReadAddress_8;
	logic [outputBits-1:0] array_w_8_output;
	logic [outputBits-1:0] array_x_8_output;
	logic [outputBits-1:0] array_y_8_output;
	logic [outputBits-1:0] array_z_8_output;
	logic [outputBits-1:0] mem_w_8_readData;
	logic [outputBits-1:0] mem_x_8_readData;
	logic [outputBits-1:0] mem_y_8_readData;
	logic [outputBits-1:0] mem_z_8_readData;
	//column9
	logic wxyzWriteEnable_9;
	logic [addressWidth-1:0] wxyzWriteAddress_9;
	logic [addressWidth-1:0] wxyzReadAddress_9;
	logic [outputBits-1:0] array_w_9_output;
	logic [outputBits-1:0] array_x_9_output;
	logic [outputBits-1:0] array_y_9_output;
	logic [outputBits-1:0] array_z_9_output;
	logic [outputBits-1:0] mem_w_9_readData;
	logic [outputBits-1:0] mem_x_9_readData;
	logic [outputBits-1:0] mem_y_9_readData;
	logic [outputBits-1:0] mem_z_9_readData;
	//column10
	logic wxyzWriteEnable_10;
	logic [addressWidth-1:0] wxyzWriteAddress_10;
	logic [addressWidth-1:0] wxyzReadAddress_10;
	logic [outputBits-1:0] array_w_10_output;
	logic [outputBits-1:0] array_x_10_output;
	logic [outputBits-1:0] array_y_10_output;
	logic [outputBits-1:0] array_z_10_output;
	logic [outputBits-1:0] mem_w_10_readData;
	logic [outputBits-1:0] mem_x_10_readData;
	logic [outputBits-1:0] mem_y_10_readData;
	logic [outputBits-1:0] mem_z_10_readData;
	//column11
	logic wxyzWriteEnable_11;
	logic [addressWidth-1:0] wxyzWriteAddress_11;
	logic [addressWidth-1:0] wxyzReadAddress_11;
	logic [outputBits-1:0] array_w_11_output;
	logic [outputBits-1:0] array_x_11_output;
	logic [outputBits-1:0] array_y_11_output;
	logic [outputBits-1:0] array_z_11_output;
	logic [outputBits-1:0] mem_w_11_readData;
	logic [outputBits-1:0] mem_x_11_readData;
	logic [outputBits-1:0] mem_y_11_readData;
	logic [outputBits-1:0] mem_z_11_readData;
	//column12
	logic wxyzWriteEnable_12;
	logic [addressWidth-1:0] wxyzWriteAddress_12;
	logic [addressWidth-1:0] wxyzReadAddress_12;
	logic [outputBits-1:0] array_w_12_output;
	logic [outputBits-1:0] array_x_12_output;
	logic [outputBits-1:0] array_y_12_output;
	logic [outputBits-1:0] array_z_12_output;
	logic [outputBits-1:0] mem_w_12_readData;
	logic [outputBits-1:0] mem_x_12_readData;
	logic [outputBits-1:0] mem_y_12_readData;
	logic [outputBits-1:0] mem_z_12_readData;
	//column13
	logic wxyzWriteEnable_13;
	logic [addressWidth-1:0] wxyzWriteAddress_13;
	logic [addressWidth-1:0] wxyzReadAddress_13;
	logic [outputBits-1:0] array_w_13_output;
	logic [outputBits-1:0] array_x_13_output;
	logic [outputBits-1:0] array_y_13_output;
	logic [outputBits-1:0] array_z_13_output;
	logic [outputBits-1:0] mem_w_13_readData;
	logic [outputBits-1:0] mem_x_13_readData;
	logic [outputBits-1:0] mem_y_13_readData;
	logic [outputBits-1:0] mem_z_13_readData;

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
	assign mem_abcd_0_writeData[1*inputBits-1:0*inputBits] = S_AXIS_TDATA[1*inputBits-1:0*inputBits];
	assign mem_abcd_0_writeData[2*inputBits-1:1*inputBits] = S_AXIS_TDATA[15*inputBits-1:14*inputBits];
	assign mem_abcd_0_writeData[3*inputBits-1:2*inputBits] = S_AXIS_TDATA[29*inputBits-1:28*inputBits];
	assign mem_abcd_0_writeData[4*inputBits-1:3*inputBits] = S_AXIS_TDATA[43*inputBits-1:42*inputBits];
	mem #(4*inputBits, arraySize) mem_abcd_0(clk, fillingInputMemories, abcdeWriteAddress, mem_abcd_0_writeData, abcdReadAddress_0, mem_abcd_0_readData);
	assign array_a_0_input = (validInputs_0) ? mem_abcd_0_readData[1*inputBits-1:0*inputBits]:{4*inputBits{1'b0}};
	assign array_b_0_input = (validInputs_0) ? mem_abcd_0_readData[2*inputBits-1:1*inputBits]:{4*inputBits{1'b0}};
	assign array_c_0_input = (validInputs_0) ? mem_abcd_0_readData[3*inputBits-1:2*inputBits]:{4*inputBits{1'b0}};
	assign array_d_0_input = (validInputs_0) ? mem_abcd_0_readData[4*inputBits-1:3*inputBits]:{4*inputBits{1'b0}};
	//line 1
	//dff for delaying valid + address
	dff #(1) dff_validInputs_1(clk, rst, validInputs_0, validInputs_1);
	dff #(addressWidth) dff_abcdReadAddress_1(clk, rst, abcdReadAddress_0, abcdReadAddress_1);
	assign mem_abcd_1_writeData[1*inputBits-1:0*inputBits] = S_AXIS_TDATA[2*inputBits-1:1*inputBits];
	assign mem_abcd_1_writeData[2*inputBits-1:1*inputBits] = S_AXIS_TDATA[16*inputBits-1:15*inputBits];
	assign mem_abcd_1_writeData[3*inputBits-1:2*inputBits] = S_AXIS_TDATA[30*inputBits-1:29*inputBits];
	assign mem_abcd_1_writeData[4*inputBits-1:3*inputBits] = S_AXIS_TDATA[44*inputBits-1:43*inputBits];
	mem #(4*inputBits, arraySize) mem_abcd_1(clk, fillingInputMemories, abcdeWriteAddress, mem_abcd_1_writeData, abcdReadAddress_1, mem_abcd_1_readData);
	assign array_a_1_input = (validInputs_1) ? mem_abcd_1_readData[1*inputBits-1:0*inputBits]:{4*inputBits{1'b0}};
	assign array_b_1_input = (validInputs_1) ? mem_abcd_1_readData[2*inputBits-1:1*inputBits]:{4*inputBits{1'b0}};
	assign array_c_1_input = (validInputs_1) ? mem_abcd_1_readData[3*inputBits-1:2*inputBits]:{4*inputBits{1'b0}};
	assign array_d_1_input = (validInputs_1) ? mem_abcd_1_readData[4*inputBits-1:3*inputBits]:{4*inputBits{1'b0}};
	//line 2
	//dff for delaying valid + address
	dff #(1) dff_validInputs_2(clk, rst, validInputs_1, validInputs_2);
	dff #(addressWidth) dff_abcdReadAddress_2(clk, rst, abcdReadAddress_1, abcdReadAddress_2);
	assign mem_abcd_2_writeData[1*inputBits-1:0*inputBits] = S_AXIS_TDATA[3*inputBits-1:2*inputBits];
	assign mem_abcd_2_writeData[2*inputBits-1:1*inputBits] = S_AXIS_TDATA[17*inputBits-1:16*inputBits];
	assign mem_abcd_2_writeData[3*inputBits-1:2*inputBits] = S_AXIS_TDATA[31*inputBits-1:30*inputBits];
	assign mem_abcd_2_writeData[4*inputBits-1:3*inputBits] = S_AXIS_TDATA[45*inputBits-1:44*inputBits];
	mem #(4*inputBits, arraySize) mem_abcd_2(clk, fillingInputMemories, abcdeWriteAddress, mem_abcd_2_writeData, abcdReadAddress_2, mem_abcd_2_readData);
	assign array_a_2_input = (validInputs_2) ? mem_abcd_2_readData[1*inputBits-1:0*inputBits]:{4*inputBits{1'b0}};
	assign array_b_2_input = (validInputs_2) ? mem_abcd_2_readData[2*inputBits-1:1*inputBits]:{4*inputBits{1'b0}};
	assign array_c_2_input = (validInputs_2) ? mem_abcd_2_readData[3*inputBits-1:2*inputBits]:{4*inputBits{1'b0}};
	assign array_d_2_input = (validInputs_2) ? mem_abcd_2_readData[4*inputBits-1:3*inputBits]:{4*inputBits{1'b0}};
	//line 3
	//dff for delaying valid + address
	dff #(1) dff_validInputs_3(clk, rst, validInputs_2, validInputs_3);
	dff #(addressWidth) dff_abcdReadAddress_3(clk, rst, abcdReadAddress_2, abcdReadAddress_3);
	assign mem_abcd_3_writeData[1*inputBits-1:0*inputBits] = S_AXIS_TDATA[4*inputBits-1:3*inputBits];
	assign mem_abcd_3_writeData[2*inputBits-1:1*inputBits] = S_AXIS_TDATA[18*inputBits-1:17*inputBits];
	assign mem_abcd_3_writeData[3*inputBits-1:2*inputBits] = S_AXIS_TDATA[32*inputBits-1:31*inputBits];
	assign mem_abcd_3_writeData[4*inputBits-1:3*inputBits] = S_AXIS_TDATA[46*inputBits-1:45*inputBits];
	mem #(4*inputBits, arraySize) mem_abcd_3(clk, fillingInputMemories, abcdeWriteAddress, mem_abcd_3_writeData, abcdReadAddress_3, mem_abcd_3_readData);
	assign array_a_3_input = (validInputs_3) ? mem_abcd_3_readData[1*inputBits-1:0*inputBits]:{4*inputBits{1'b0}};
	assign array_b_3_input = (validInputs_3) ? mem_abcd_3_readData[2*inputBits-1:1*inputBits]:{4*inputBits{1'b0}};
	assign array_c_3_input = (validInputs_3) ? mem_abcd_3_readData[3*inputBits-1:2*inputBits]:{4*inputBits{1'b0}};
	assign array_d_3_input = (validInputs_3) ? mem_abcd_3_readData[4*inputBits-1:3*inputBits]:{4*inputBits{1'b0}};
	//line 4
	//dff for delaying valid + address
	dff #(1) dff_validInputs_4(clk, rst, validInputs_3, validInputs_4);
	dff #(addressWidth) dff_abcdReadAddress_4(clk, rst, abcdReadAddress_3, abcdReadAddress_4);
	assign mem_abcd_4_writeData[1*inputBits-1:0*inputBits] = S_AXIS_TDATA[5*inputBits-1:4*inputBits];
	assign mem_abcd_4_writeData[2*inputBits-1:1*inputBits] = S_AXIS_TDATA[19*inputBits-1:18*inputBits];
	assign mem_abcd_4_writeData[3*inputBits-1:2*inputBits] = S_AXIS_TDATA[33*inputBits-1:32*inputBits];
	assign mem_abcd_4_writeData[4*inputBits-1:3*inputBits] = S_AXIS_TDATA[47*inputBits-1:46*inputBits];
	mem #(4*inputBits, arraySize) mem_abcd_4(clk, fillingInputMemories, abcdeWriteAddress, mem_abcd_4_writeData, abcdReadAddress_4, mem_abcd_4_readData);
	assign array_a_4_input = (validInputs_4) ? mem_abcd_4_readData[1*inputBits-1:0*inputBits]:{4*inputBits{1'b0}};
	assign array_b_4_input = (validInputs_4) ? mem_abcd_4_readData[2*inputBits-1:1*inputBits]:{4*inputBits{1'b0}};
	assign array_c_4_input = (validInputs_4) ? mem_abcd_4_readData[3*inputBits-1:2*inputBits]:{4*inputBits{1'b0}};
	assign array_d_4_input = (validInputs_4) ? mem_abcd_4_readData[4*inputBits-1:3*inputBits]:{4*inputBits{1'b0}};
	//line 5
	//dff for delaying valid + address
	dff #(1) dff_validInputs_5(clk, rst, validInputs_4, validInputs_5);
	dff #(addressWidth) dff_abcdReadAddress_5(clk, rst, abcdReadAddress_4, abcdReadAddress_5);
	assign mem_abcd_5_writeData[1*inputBits-1:0*inputBits] = S_AXIS_TDATA[6*inputBits-1:5*inputBits];
	assign mem_abcd_5_writeData[2*inputBits-1:1*inputBits] = S_AXIS_TDATA[20*inputBits-1:19*inputBits];
	assign mem_abcd_5_writeData[3*inputBits-1:2*inputBits] = S_AXIS_TDATA[34*inputBits-1:33*inputBits];
	assign mem_abcd_5_writeData[4*inputBits-1:3*inputBits] = S_AXIS_TDATA[48*inputBits-1:47*inputBits];
	mem #(4*inputBits, arraySize) mem_abcd_5(clk, fillingInputMemories, abcdeWriteAddress, mem_abcd_5_writeData, abcdReadAddress_5, mem_abcd_5_readData);
	assign array_a_5_input = (validInputs_5) ? mem_abcd_5_readData[1*inputBits-1:0*inputBits]:{4*inputBits{1'b0}};
	assign array_b_5_input = (validInputs_5) ? mem_abcd_5_readData[2*inputBits-1:1*inputBits]:{4*inputBits{1'b0}};
	assign array_c_5_input = (validInputs_5) ? mem_abcd_5_readData[3*inputBits-1:2*inputBits]:{4*inputBits{1'b0}};
	assign array_d_5_input = (validInputs_5) ? mem_abcd_5_readData[4*inputBits-1:3*inputBits]:{4*inputBits{1'b0}};
	//line 6
	//dff for delaying valid + address
	dff #(1) dff_validInputs_6(clk, rst, validInputs_5, validInputs_6);
	dff #(addressWidth) dff_abcdReadAddress_6(clk, rst, abcdReadAddress_5, abcdReadAddress_6);
	assign mem_abcd_6_writeData[1*inputBits-1:0*inputBits] = S_AXIS_TDATA[7*inputBits-1:6*inputBits];
	assign mem_abcd_6_writeData[2*inputBits-1:1*inputBits] = S_AXIS_TDATA[21*inputBits-1:20*inputBits];
	assign mem_abcd_6_writeData[3*inputBits-1:2*inputBits] = S_AXIS_TDATA[35*inputBits-1:34*inputBits];
	assign mem_abcd_6_writeData[4*inputBits-1:3*inputBits] = S_AXIS_TDATA[49*inputBits-1:48*inputBits];
	mem #(4*inputBits, arraySize) mem_abcd_6(clk, fillingInputMemories, abcdeWriteAddress, mem_abcd_6_writeData, abcdReadAddress_6, mem_abcd_6_readData);
	assign array_a_6_input = (validInputs_6) ? mem_abcd_6_readData[1*inputBits-1:0*inputBits]:{4*inputBits{1'b0}};
	assign array_b_6_input = (validInputs_6) ? mem_abcd_6_readData[2*inputBits-1:1*inputBits]:{4*inputBits{1'b0}};
	assign array_c_6_input = (validInputs_6) ? mem_abcd_6_readData[3*inputBits-1:2*inputBits]:{4*inputBits{1'b0}};
	assign array_d_6_input = (validInputs_6) ? mem_abcd_6_readData[4*inputBits-1:3*inputBits]:{4*inputBits{1'b0}};
	//line 7
	//dff for delaying valid + address
	dff #(1) dff_validInputs_7(clk, rst, validInputs_6, validInputs_7);
	dff #(addressWidth) dff_abcdReadAddress_7(clk, rst, abcdReadAddress_6, abcdReadAddress_7);
	assign mem_abcd_7_writeData[1*inputBits-1:0*inputBits] = S_AXIS_TDATA[8*inputBits-1:7*inputBits];
	assign mem_abcd_7_writeData[2*inputBits-1:1*inputBits] = S_AXIS_TDATA[22*inputBits-1:21*inputBits];
	assign mem_abcd_7_writeData[3*inputBits-1:2*inputBits] = S_AXIS_TDATA[36*inputBits-1:35*inputBits];
	assign mem_abcd_7_writeData[4*inputBits-1:3*inputBits] = S_AXIS_TDATA[50*inputBits-1:49*inputBits];
	mem #(4*inputBits, arraySize) mem_abcd_7(clk, fillingInputMemories, abcdeWriteAddress, mem_abcd_7_writeData, abcdReadAddress_7, mem_abcd_7_readData);
	assign array_a_7_input = (validInputs_7) ? mem_abcd_7_readData[1*inputBits-1:0*inputBits]:{4*inputBits{1'b0}};
	assign array_b_7_input = (validInputs_7) ? mem_abcd_7_readData[2*inputBits-1:1*inputBits]:{4*inputBits{1'b0}};
	assign array_c_7_input = (validInputs_7) ? mem_abcd_7_readData[3*inputBits-1:2*inputBits]:{4*inputBits{1'b0}};
	assign array_d_7_input = (validInputs_7) ? mem_abcd_7_readData[4*inputBits-1:3*inputBits]:{4*inputBits{1'b0}};
	//line 8
	//dff for delaying valid + address
	dff #(1) dff_validInputs_8(clk, rst, validInputs_7, validInputs_8);
	dff #(addressWidth) dff_abcdReadAddress_8(clk, rst, abcdReadAddress_7, abcdReadAddress_8);
	assign mem_abcd_8_writeData[1*inputBits-1:0*inputBits] = S_AXIS_TDATA[9*inputBits-1:8*inputBits];
	assign mem_abcd_8_writeData[2*inputBits-1:1*inputBits] = S_AXIS_TDATA[23*inputBits-1:22*inputBits];
	assign mem_abcd_8_writeData[3*inputBits-1:2*inputBits] = S_AXIS_TDATA[37*inputBits-1:36*inputBits];
	assign mem_abcd_8_writeData[4*inputBits-1:3*inputBits] = S_AXIS_TDATA[51*inputBits-1:50*inputBits];
	mem #(4*inputBits, arraySize) mem_abcd_8(clk, fillingInputMemories, abcdeWriteAddress, mem_abcd_8_writeData, abcdReadAddress_8, mem_abcd_8_readData);
	assign array_a_8_input = (validInputs_8) ? mem_abcd_8_readData[1*inputBits-1:0*inputBits]:{4*inputBits{1'b0}};
	assign array_b_8_input = (validInputs_8) ? mem_abcd_8_readData[2*inputBits-1:1*inputBits]:{4*inputBits{1'b0}};
	assign array_c_8_input = (validInputs_8) ? mem_abcd_8_readData[3*inputBits-1:2*inputBits]:{4*inputBits{1'b0}};
	assign array_d_8_input = (validInputs_8) ? mem_abcd_8_readData[4*inputBits-1:3*inputBits]:{4*inputBits{1'b0}};
	//line 9
	//dff for delaying valid + address
	dff #(1) dff_validInputs_9(clk, rst, validInputs_8, validInputs_9);
	dff #(addressWidth) dff_abcdReadAddress_9(clk, rst, abcdReadAddress_8, abcdReadAddress_9);
	assign mem_abcd_9_writeData[1*inputBits-1:0*inputBits] = S_AXIS_TDATA[10*inputBits-1:9*inputBits];
	assign mem_abcd_9_writeData[2*inputBits-1:1*inputBits] = S_AXIS_TDATA[24*inputBits-1:23*inputBits];
	assign mem_abcd_9_writeData[3*inputBits-1:2*inputBits] = S_AXIS_TDATA[38*inputBits-1:37*inputBits];
	assign mem_abcd_9_writeData[4*inputBits-1:3*inputBits] = S_AXIS_TDATA[52*inputBits-1:51*inputBits];
	mem #(4*inputBits, arraySize) mem_abcd_9(clk, fillingInputMemories, abcdeWriteAddress, mem_abcd_9_writeData, abcdReadAddress_9, mem_abcd_9_readData);
	assign array_a_9_input = (validInputs_9) ? mem_abcd_9_readData[1*inputBits-1:0*inputBits]:{4*inputBits{1'b0}};
	assign array_b_9_input = (validInputs_9) ? mem_abcd_9_readData[2*inputBits-1:1*inputBits]:{4*inputBits{1'b0}};
	assign array_c_9_input = (validInputs_9) ? mem_abcd_9_readData[3*inputBits-1:2*inputBits]:{4*inputBits{1'b0}};
	assign array_d_9_input = (validInputs_9) ? mem_abcd_9_readData[4*inputBits-1:3*inputBits]:{4*inputBits{1'b0}};
	//line 10
	//dff for delaying valid + address
	dff #(1) dff_validInputs_10(clk, rst, validInputs_9, validInputs_10);
	dff #(addressWidth) dff_abcdReadAddress_10(clk, rst, abcdReadAddress_9, abcdReadAddress_10);
	assign mem_abcd_10_writeData[1*inputBits-1:0*inputBits] = S_AXIS_TDATA[11*inputBits-1:10*inputBits];
	assign mem_abcd_10_writeData[2*inputBits-1:1*inputBits] = S_AXIS_TDATA[25*inputBits-1:24*inputBits];
	assign mem_abcd_10_writeData[3*inputBits-1:2*inputBits] = S_AXIS_TDATA[39*inputBits-1:38*inputBits];
	assign mem_abcd_10_writeData[4*inputBits-1:3*inputBits] = S_AXIS_TDATA[53*inputBits-1:52*inputBits];
	mem #(4*inputBits, arraySize) mem_abcd_10(clk, fillingInputMemories, abcdeWriteAddress, mem_abcd_10_writeData, abcdReadAddress_10, mem_abcd_10_readData);
	assign array_a_10_input = (validInputs_10) ? mem_abcd_10_readData[1*inputBits-1:0*inputBits]:{4*inputBits{1'b0}};
	assign array_b_10_input = (validInputs_10) ? mem_abcd_10_readData[2*inputBits-1:1*inputBits]:{4*inputBits{1'b0}};
	assign array_c_10_input = (validInputs_10) ? mem_abcd_10_readData[3*inputBits-1:2*inputBits]:{4*inputBits{1'b0}};
	assign array_d_10_input = (validInputs_10) ? mem_abcd_10_readData[4*inputBits-1:3*inputBits]:{4*inputBits{1'b0}};
	//line 11
	//dff for delaying valid + address
	dff #(1) dff_validInputs_11(clk, rst, validInputs_10, validInputs_11);
	dff #(addressWidth) dff_abcdReadAddress_11(clk, rst, abcdReadAddress_10, abcdReadAddress_11);
	assign mem_abcd_11_writeData[1*inputBits-1:0*inputBits] = S_AXIS_TDATA[12*inputBits-1:11*inputBits];
	assign mem_abcd_11_writeData[2*inputBits-1:1*inputBits] = S_AXIS_TDATA[26*inputBits-1:25*inputBits];
	assign mem_abcd_11_writeData[3*inputBits-1:2*inputBits] = S_AXIS_TDATA[40*inputBits-1:39*inputBits];
	assign mem_abcd_11_writeData[4*inputBits-1:3*inputBits] = S_AXIS_TDATA[54*inputBits-1:53*inputBits];
	mem #(4*inputBits, arraySize) mem_abcd_11(clk, fillingInputMemories, abcdeWriteAddress, mem_abcd_11_writeData, abcdReadAddress_11, mem_abcd_11_readData);
	assign array_a_11_input = (validInputs_11) ? mem_abcd_11_readData[1*inputBits-1:0*inputBits]:{4*inputBits{1'b0}};
	assign array_b_11_input = (validInputs_11) ? mem_abcd_11_readData[2*inputBits-1:1*inputBits]:{4*inputBits{1'b0}};
	assign array_c_11_input = (validInputs_11) ? mem_abcd_11_readData[3*inputBits-1:2*inputBits]:{4*inputBits{1'b0}};
	assign array_d_11_input = (validInputs_11) ? mem_abcd_11_readData[4*inputBits-1:3*inputBits]:{4*inputBits{1'b0}};
	//line 12
	//dff for delaying valid + address
	dff #(1) dff_validInputs_12(clk, rst, validInputs_11, validInputs_12);
	dff #(addressWidth) dff_abcdReadAddress_12(clk, rst, abcdReadAddress_11, abcdReadAddress_12);
	assign mem_abcd_12_writeData[1*inputBits-1:0*inputBits] = S_AXIS_TDATA[13*inputBits-1:12*inputBits];
	assign mem_abcd_12_writeData[2*inputBits-1:1*inputBits] = S_AXIS_TDATA[27*inputBits-1:26*inputBits];
	assign mem_abcd_12_writeData[3*inputBits-1:2*inputBits] = S_AXIS_TDATA[41*inputBits-1:40*inputBits];
	assign mem_abcd_12_writeData[4*inputBits-1:3*inputBits] = S_AXIS_TDATA[55*inputBits-1:54*inputBits];
	mem #(4*inputBits, arraySize) mem_abcd_12(clk, fillingInputMemories, abcdeWriteAddress, mem_abcd_12_writeData, abcdReadAddress_12, mem_abcd_12_readData);
	assign array_a_12_input = (validInputs_12) ? mem_abcd_12_readData[1*inputBits-1:0*inputBits]:{4*inputBits{1'b0}};
	assign array_b_12_input = (validInputs_12) ? mem_abcd_12_readData[2*inputBits-1:1*inputBits]:{4*inputBits{1'b0}};
	assign array_c_12_input = (validInputs_12) ? mem_abcd_12_readData[3*inputBits-1:2*inputBits]:{4*inputBits{1'b0}};
	assign array_d_12_input = (validInputs_12) ? mem_abcd_12_readData[4*inputBits-1:3*inputBits]:{4*inputBits{1'b0}};
	//line 13
	//dff for delaying valid + address
	dff #(1) dff_validInputs_13(clk, rst, validInputs_12, validInputs_13);
	dff #(addressWidth) dff_abcdReadAddress_13(clk, rst, abcdReadAddress_12, abcdReadAddress_13);
	assign mem_abcd_13_writeData[1*inputBits-1:0*inputBits] = S_AXIS_TDATA[14*inputBits-1:13*inputBits];
	assign mem_abcd_13_writeData[2*inputBits-1:1*inputBits] = S_AXIS_TDATA[28*inputBits-1:27*inputBits];
	assign mem_abcd_13_writeData[3*inputBits-1:2*inputBits] = S_AXIS_TDATA[42*inputBits-1:41*inputBits];
	assign mem_abcd_13_writeData[4*inputBits-1:3*inputBits] = S_AXIS_TDATA[56*inputBits-1:55*inputBits];
	mem #(4*inputBits, arraySize) mem_abcd_13(clk, fillingInputMemories, abcdeWriteAddress, mem_abcd_13_writeData, abcdReadAddress_13, mem_abcd_13_readData);
	assign array_a_13_input = (validInputs_13) ? mem_abcd_13_readData[1*inputBits-1:0*inputBits]:{4*inputBits{1'b0}};
	assign array_b_13_input = (validInputs_13) ? mem_abcd_13_readData[2*inputBits-1:1*inputBits]:{4*inputBits{1'b0}};
	assign array_c_13_input = (validInputs_13) ? mem_abcd_13_readData[3*inputBits-1:2*inputBits]:{4*inputBits{1'b0}};
	assign array_d_13_input = (validInputs_13) ? mem_abcd_13_readData[4*inputBits-1:3*inputBits]:{4*inputBits{1'b0}};
	//mem_e [write external, read by array]
	//column 0
	assign mem_e_0_writeData = S_AXIS_TDATA[57*inputBits-1:56*inputBits];
	mem #(inputBits, arraySize) mem_e_0(clk, fillingInputMemories, abcdeWriteAddress, mem_e_0_writeData, eReadAddress, mem_e_0_readData);
	assign array_e_0_input = mem_e_0_readData;
	//column 1
	assign mem_e_1_writeData = S_AXIS_TDATA[58*inputBits-1:57*inputBits];
	mem #(inputBits, arraySize) mem_e_1(clk, fillingInputMemories, abcdeWriteAddress, mem_e_1_writeData, eReadAddress, mem_e_1_readData);
	assign array_e_1_input = mem_e_1_readData;
	//column 2
	assign mem_e_2_writeData = S_AXIS_TDATA[59*inputBits-1:58*inputBits];
	mem #(inputBits, arraySize) mem_e_2(clk, fillingInputMemories, abcdeWriteAddress, mem_e_2_writeData, eReadAddress, mem_e_2_readData);
	assign array_e_2_input = mem_e_2_readData;
	//column 3
	assign mem_e_3_writeData = S_AXIS_TDATA[60*inputBits-1:59*inputBits];
	mem #(inputBits, arraySize) mem_e_3(clk, fillingInputMemories, abcdeWriteAddress, mem_e_3_writeData, eReadAddress, mem_e_3_readData);
	assign array_e_3_input = mem_e_3_readData;
	//column 4
	assign mem_e_4_writeData = S_AXIS_TDATA[61*inputBits-1:60*inputBits];
	mem #(inputBits, arraySize) mem_e_4(clk, fillingInputMemories, abcdeWriteAddress, mem_e_4_writeData, eReadAddress, mem_e_4_readData);
	assign array_e_4_input = mem_e_4_readData;
	//column 5
	assign mem_e_5_writeData = S_AXIS_TDATA[62*inputBits-1:61*inputBits];
	mem #(inputBits, arraySize) mem_e_5(clk, fillingInputMemories, abcdeWriteAddress, mem_e_5_writeData, eReadAddress, mem_e_5_readData);
	assign array_e_5_input = mem_e_5_readData;
	//column 6
	assign mem_e_6_writeData = S_AXIS_TDATA[63*inputBits-1:62*inputBits];
	mem #(inputBits, arraySize) mem_e_6(clk, fillingInputMemories, abcdeWriteAddress, mem_e_6_writeData, eReadAddress, mem_e_6_readData);
	assign array_e_6_input = mem_e_6_readData;
	//column 7
	assign mem_e_7_writeData = S_AXIS_TDATA[64*inputBits-1:63*inputBits];
	mem #(inputBits, arraySize) mem_e_7(clk, fillingInputMemories, abcdeWriteAddress, mem_e_7_writeData, eReadAddress, mem_e_7_readData);
	assign array_e_7_input = mem_e_7_readData;
	//column 8
	assign mem_e_8_writeData = S_AXIS_TDATA[65*inputBits-1:64*inputBits];
	mem #(inputBits, arraySize) mem_e_8(clk, fillingInputMemories, abcdeWriteAddress, mem_e_8_writeData, eReadAddress, mem_e_8_readData);
	assign array_e_8_input = mem_e_8_readData;
	//column 9
	assign mem_e_9_writeData = S_AXIS_TDATA[66*inputBits-1:65*inputBits];
	mem #(inputBits, arraySize) mem_e_9(clk, fillingInputMemories, abcdeWriteAddress, mem_e_9_writeData, eReadAddress, mem_e_9_readData);
	assign array_e_9_input = mem_e_9_readData;
	//column 10
	assign mem_e_10_writeData = S_AXIS_TDATA[67*inputBits-1:66*inputBits];
	mem #(inputBits, arraySize) mem_e_10(clk, fillingInputMemories, abcdeWriteAddress, mem_e_10_writeData, eReadAddress, mem_e_10_readData);
	assign array_e_10_input = mem_e_10_readData;
	//column 11
	assign mem_e_11_writeData = S_AXIS_TDATA[68*inputBits-1:67*inputBits];
	mem #(inputBits, arraySize) mem_e_11(clk, fillingInputMemories, abcdeWriteAddress, mem_e_11_writeData, eReadAddress, mem_e_11_readData);
	assign array_e_11_input = mem_e_11_readData;
	//column 12
	assign mem_e_12_writeData = S_AXIS_TDATA[69*inputBits-1:68*inputBits];
	mem #(inputBits, arraySize) mem_e_12(clk, fillingInputMemories, abcdeWriteAddress, mem_e_12_writeData, eReadAddress, mem_e_12_readData);
	assign array_e_12_input = mem_e_12_readData;
	//column 13
	assign mem_e_13_writeData = S_AXIS_TDATA[70*inputBits-1:69*inputBits];
	mem #(inputBits, arraySize) mem_e_13(clk, fillingInputMemories, abcdeWriteAddress, mem_e_13_writeData, eReadAddress, mem_e_13_readData);
	assign array_e_13_input = mem_e_13_readData;
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
										 array_w_7_output, array_x_7_output, array_y_7_output, array_z_7_output,
										 array_a_8_input, array_b_8_input, array_c_8_input, array_d_8_input,
										 array_e_8_input,
										 array_w_8_output, array_x_8_output, array_y_8_output, array_z_8_output,
										 array_a_9_input, array_b_9_input, array_c_9_input, array_d_9_input,
										 array_e_9_input,
										 array_w_9_output, array_x_9_output, array_y_9_output, array_z_9_output,
										 array_a_10_input, array_b_10_input, array_c_10_input, array_d_10_input,
										 array_e_10_input,
										 array_w_10_output, array_x_10_output, array_y_10_output, array_z_10_output,
										 array_a_11_input, array_b_11_input, array_c_11_input, array_d_11_input,
										 array_e_11_input,
										 array_w_11_output, array_x_11_output, array_y_11_output, array_z_11_output,
										 array_a_12_input, array_b_12_input, array_c_12_input, array_d_12_input,
										 array_e_12_input,
										 array_w_12_output, array_x_12_output, array_y_12_output, array_z_12_output,
										 array_a_13_input, array_b_13_input, array_c_13_input, array_d_13_input,
										 array_e_13_input,
										 array_w_13_output, array_x_13_output, array_y_13_output, array_z_13_output);
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
	//column 8
	//dff for delaying enable + address
	dff #(1) dff_wxyzWriteEnable_8(clk, rst, wxyzWriteEnable_7, wxyzWriteEnable_8);
	dff #(addressWidth) dff_wxyzWriteAddress_8(clk, rst, wxyzWriteAddress_7, wxyzWriteAddress_8);
	dff #(addressWidth) dff_wxyzReadAddress_8(clk, rst, wxyzReadAddress_7, wxyzReadAddress_8);
	mem #(outputBits, arraySize) mem_w_8(clk, wxyzWriteEnable_8, wxyzWriteAddress_8, array_w_8_output, wxyzReadAddress_8, mem_w_8_readData);
	mem #(outputBits, arraySize) mem_x_8(clk, wxyzWriteEnable_8, wxyzWriteAddress_8, array_x_8_output, wxyzReadAddress_8, mem_x_8_readData);
	mem #(outputBits, arraySize) mem_y_8(clk, wxyzWriteEnable_8, wxyzWriteAddress_8, array_y_8_output, wxyzReadAddress_8, mem_y_8_readData);
	mem #(outputBits, arraySize) mem_z_8(clk, wxyzWriteEnable_8, wxyzWriteAddress_8, array_z_8_output, wxyzReadAddress_8, mem_z_8_readData);
	//column 9
	//dff for delaying enable + address
	dff #(1) dff_wxyzWriteEnable_9(clk, rst, wxyzWriteEnable_8, wxyzWriteEnable_9);
	dff #(addressWidth) dff_wxyzWriteAddress_9(clk, rst, wxyzWriteAddress_8, wxyzWriteAddress_9);
	dff #(addressWidth) dff_wxyzReadAddress_9(clk, rst, wxyzReadAddress_8, wxyzReadAddress_9);
	mem #(outputBits, arraySize) mem_w_9(clk, wxyzWriteEnable_9, wxyzWriteAddress_9, array_w_9_output, wxyzReadAddress_9, mem_w_9_readData);
	mem #(outputBits, arraySize) mem_x_9(clk, wxyzWriteEnable_9, wxyzWriteAddress_9, array_x_9_output, wxyzReadAddress_9, mem_x_9_readData);
	mem #(outputBits, arraySize) mem_y_9(clk, wxyzWriteEnable_9, wxyzWriteAddress_9, array_y_9_output, wxyzReadAddress_9, mem_y_9_readData);
	mem #(outputBits, arraySize) mem_z_9(clk, wxyzWriteEnable_9, wxyzWriteAddress_9, array_z_9_output, wxyzReadAddress_9, mem_z_9_readData);
	//column 10
	//dff for delaying enable + address
	dff #(1) dff_wxyzWriteEnable_10(clk, rst, wxyzWriteEnable_9, wxyzWriteEnable_10);
	dff #(addressWidth) dff_wxyzWriteAddress_10(clk, rst, wxyzWriteAddress_9, wxyzWriteAddress_10);
	dff #(addressWidth) dff_wxyzReadAddress_10(clk, rst, wxyzReadAddress_9, wxyzReadAddress_10);
	mem #(outputBits, arraySize) mem_w_10(clk, wxyzWriteEnable_10, wxyzWriteAddress_10, array_w_10_output, wxyzReadAddress_10, mem_w_10_readData);
	mem #(outputBits, arraySize) mem_x_10(clk, wxyzWriteEnable_10, wxyzWriteAddress_10, array_x_10_output, wxyzReadAddress_10, mem_x_10_readData);
	mem #(outputBits, arraySize) mem_y_10(clk, wxyzWriteEnable_10, wxyzWriteAddress_10, array_y_10_output, wxyzReadAddress_10, mem_y_10_readData);
	mem #(outputBits, arraySize) mem_z_10(clk, wxyzWriteEnable_10, wxyzWriteAddress_10, array_z_10_output, wxyzReadAddress_10, mem_z_10_readData);
	//column 11
	//dff for delaying enable + address
	dff #(1) dff_wxyzWriteEnable_11(clk, rst, wxyzWriteEnable_10, wxyzWriteEnable_11);
	dff #(addressWidth) dff_wxyzWriteAddress_11(clk, rst, wxyzWriteAddress_10, wxyzWriteAddress_11);
	dff #(addressWidth) dff_wxyzReadAddress_11(clk, rst, wxyzReadAddress_10, wxyzReadAddress_11);
	mem #(outputBits, arraySize) mem_w_11(clk, wxyzWriteEnable_11, wxyzWriteAddress_11, array_w_11_output, wxyzReadAddress_11, mem_w_11_readData);
	mem #(outputBits, arraySize) mem_x_11(clk, wxyzWriteEnable_11, wxyzWriteAddress_11, array_x_11_output, wxyzReadAddress_11, mem_x_11_readData);
	mem #(outputBits, arraySize) mem_y_11(clk, wxyzWriteEnable_11, wxyzWriteAddress_11, array_y_11_output, wxyzReadAddress_11, mem_y_11_readData);
	mem #(outputBits, arraySize) mem_z_11(clk, wxyzWriteEnable_11, wxyzWriteAddress_11, array_z_11_output, wxyzReadAddress_11, mem_z_11_readData);
	//column 12
	//dff for delaying enable + address
	dff #(1) dff_wxyzWriteEnable_12(clk, rst, wxyzWriteEnable_11, wxyzWriteEnable_12);
	dff #(addressWidth) dff_wxyzWriteAddress_12(clk, rst, wxyzWriteAddress_11, wxyzWriteAddress_12);
	dff #(addressWidth) dff_wxyzReadAddress_12(clk, rst, wxyzReadAddress_11, wxyzReadAddress_12);
	mem #(outputBits, arraySize) mem_w_12(clk, wxyzWriteEnable_12, wxyzWriteAddress_12, array_w_12_output, wxyzReadAddress_12, mem_w_12_readData);
	mem #(outputBits, arraySize) mem_x_12(clk, wxyzWriteEnable_12, wxyzWriteAddress_12, array_x_12_output, wxyzReadAddress_12, mem_x_12_readData);
	mem #(outputBits, arraySize) mem_y_12(clk, wxyzWriteEnable_12, wxyzWriteAddress_12, array_y_12_output, wxyzReadAddress_12, mem_y_12_readData);
	mem #(outputBits, arraySize) mem_z_12(clk, wxyzWriteEnable_12, wxyzWriteAddress_12, array_z_12_output, wxyzReadAddress_12, mem_z_12_readData);
	//column 13
	//dff for delaying enable + address
	dff #(1) dff_wxyzWriteEnable_13(clk, rst, wxyzWriteEnable_12, wxyzWriteEnable_13);
	dff #(addressWidth) dff_wxyzWriteAddress_13(clk, rst, wxyzWriteAddress_12, wxyzWriteAddress_13);
	dff #(addressWidth) dff_wxyzReadAddress_13(clk, rst, wxyzReadAddress_12, wxyzReadAddress_13);
	mem #(outputBits, arraySize) mem_w_13(clk, wxyzWriteEnable_13, wxyzWriteAddress_13, array_w_13_output, wxyzReadAddress_13, mem_w_13_readData);
	mem #(outputBits, arraySize) mem_x_13(clk, wxyzWriteEnable_13, wxyzWriteAddress_13, array_x_13_output, wxyzReadAddress_13, mem_x_13_readData);
	mem #(outputBits, arraySize) mem_y_13(clk, wxyzWriteEnable_13, wxyzWriteAddress_13, array_y_13_output, wxyzReadAddress_13, mem_y_13_readData);
	mem #(outputBits, arraySize) mem_z_13(clk, wxyzWriteEnable_13, wxyzWriteAddress_13, array_z_13_output, wxyzReadAddress_13, mem_z_13_readData);

	//assigns
	assign M_AXIS_TDATA[1*outputBits-1:0*outputBits] = mem_w_0_readData;
	assign M_AXIS_TDATA[15*outputBits-1:14*outputBits] = mem_x_0_readData;
	assign M_AXIS_TDATA[29*outputBits-1:28*outputBits] = mem_y_0_readData;
	assign M_AXIS_TDATA[43*outputBits-1:42*outputBits] = mem_z_0_readData;
	assign M_AXIS_TDATA[2*outputBits-1:1*outputBits] = mem_w_1_readData;
	assign M_AXIS_TDATA[16*outputBits-1:15*outputBits] = mem_x_1_readData;
	assign M_AXIS_TDATA[30*outputBits-1:29*outputBits] = mem_y_1_readData;
	assign M_AXIS_TDATA[44*outputBits-1:43*outputBits] = mem_z_1_readData;
	assign M_AXIS_TDATA[3*outputBits-1:2*outputBits] = mem_w_2_readData;
	assign M_AXIS_TDATA[17*outputBits-1:16*outputBits] = mem_x_2_readData;
	assign M_AXIS_TDATA[31*outputBits-1:30*outputBits] = mem_y_2_readData;
	assign M_AXIS_TDATA[45*outputBits-1:44*outputBits] = mem_z_2_readData;
	assign M_AXIS_TDATA[4*outputBits-1:3*outputBits] = mem_w_3_readData;
	assign M_AXIS_TDATA[18*outputBits-1:17*outputBits] = mem_x_3_readData;
	assign M_AXIS_TDATA[32*outputBits-1:31*outputBits] = mem_y_3_readData;
	assign M_AXIS_TDATA[46*outputBits-1:45*outputBits] = mem_z_3_readData;
	assign M_AXIS_TDATA[5*outputBits-1:4*outputBits] = mem_w_4_readData;
	assign M_AXIS_TDATA[19*outputBits-1:18*outputBits] = mem_x_4_readData;
	assign M_AXIS_TDATA[33*outputBits-1:32*outputBits] = mem_y_4_readData;
	assign M_AXIS_TDATA[47*outputBits-1:46*outputBits] = mem_z_4_readData;
	assign M_AXIS_TDATA[6*outputBits-1:5*outputBits] = mem_w_5_readData;
	assign M_AXIS_TDATA[20*outputBits-1:19*outputBits] = mem_x_5_readData;
	assign M_AXIS_TDATA[34*outputBits-1:33*outputBits] = mem_y_5_readData;
	assign M_AXIS_TDATA[48*outputBits-1:47*outputBits] = mem_z_5_readData;
	assign M_AXIS_TDATA[7*outputBits-1:6*outputBits] = mem_w_6_readData;
	assign M_AXIS_TDATA[21*outputBits-1:20*outputBits] = mem_x_6_readData;
	assign M_AXIS_TDATA[35*outputBits-1:34*outputBits] = mem_y_6_readData;
	assign M_AXIS_TDATA[49*outputBits-1:48*outputBits] = mem_z_6_readData;
	assign M_AXIS_TDATA[8*outputBits-1:7*outputBits] = mem_w_7_readData;
	assign M_AXIS_TDATA[22*outputBits-1:21*outputBits] = mem_x_7_readData;
	assign M_AXIS_TDATA[36*outputBits-1:35*outputBits] = mem_y_7_readData;
	assign M_AXIS_TDATA[50*outputBits-1:49*outputBits] = mem_z_7_readData;
	assign M_AXIS_TDATA[9*outputBits-1:8*outputBits] = mem_w_8_readData;
	assign M_AXIS_TDATA[23*outputBits-1:22*outputBits] = mem_x_8_readData;
	assign M_AXIS_TDATA[37*outputBits-1:36*outputBits] = mem_y_8_readData;
	assign M_AXIS_TDATA[51*outputBits-1:50*outputBits] = mem_z_8_readData;
	assign M_AXIS_TDATA[10*outputBits-1:9*outputBits] = mem_w_9_readData;
	assign M_AXIS_TDATA[24*outputBits-1:23*outputBits] = mem_x_9_readData;
	assign M_AXIS_TDATA[38*outputBits-1:37*outputBits] = mem_y_9_readData;
	assign M_AXIS_TDATA[52*outputBits-1:51*outputBits] = mem_z_9_readData;
	assign M_AXIS_TDATA[11*outputBits-1:10*outputBits] = mem_w_10_readData;
	assign M_AXIS_TDATA[25*outputBits-1:24*outputBits] = mem_x_10_readData;
	assign M_AXIS_TDATA[39*outputBits-1:38*outputBits] = mem_y_10_readData;
	assign M_AXIS_TDATA[53*outputBits-1:52*outputBits] = mem_z_10_readData;
	assign M_AXIS_TDATA[12*outputBits-1:11*outputBits] = mem_w_11_readData;
	assign M_AXIS_TDATA[26*outputBits-1:25*outputBits] = mem_x_11_readData;
	assign M_AXIS_TDATA[40*outputBits-1:39*outputBits] = mem_y_11_readData;
	assign M_AXIS_TDATA[54*outputBits-1:53*outputBits] = mem_z_11_readData;
	assign M_AXIS_TDATA[13*outputBits-1:12*outputBits] = mem_w_12_readData;
	assign M_AXIS_TDATA[27*outputBits-1:26*outputBits] = mem_x_12_readData;
	assign M_AXIS_TDATA[41*outputBits-1:40*outputBits] = mem_y_12_readData;
	assign M_AXIS_TDATA[55*outputBits-1:54*outputBits] = mem_z_12_readData;
	assign M_AXIS_TDATA[14*outputBits-1:13*outputBits] = mem_w_13_readData;
	assign M_AXIS_TDATA[28*outputBits-1:27*outputBits] = mem_x_13_readData;
	assign M_AXIS_TDATA[42*outputBits-1:41*outputBits] = mem_y_13_readData;
	assign M_AXIS_TDATA[56*outputBits-1:55*outputBits] = mem_z_13_readData;
	assign M_AXIS_TDATA[m_axi_tdata_width-1:56*outputBits] = {256{1'b0}};
	assign M_AXIS_TKEEP = {m_axi_tkeep_width{1'b1}};

endmodule