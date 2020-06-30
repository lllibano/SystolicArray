module top //2x2
#(
	parameter arraySize = 2,
	parameter inputBits = 8,
	parameter outputBits = 32,
	parameter addressWidth = $clog2(arraySize),
	parameter s_axi_tdata_width = arraySize*inputBits*3 + 16,
	parameter s_axi_tkeep_width = s_axi_tdata_width/8,
	parameter m_axi_tdata_width = arraySize*outputBits*2 + 0,
	parameter m_axi_tkeep_width = m_axi_tdata_width/8
)
(
	//CLK, RST
	input logic clk,
	input logic rst,
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
	logic [addressWidth-1:0] abcWriteAddress;
	//loadingWeightsState
	logic loadingWeights;
	logic [addressWidth-1:0] cReadAddress;
	//runningState - inputs [mem -> array]
	logic validInputs_0;
	logic [addressWidth-1:0] abReadAddress_0;
	//runningState - outputs [array -> mem]
	logic yzWriteEnable_0;
	logic [addressWidth-1:0] yzWriteAddress_0;
	//runningState - inputs [mem -> outside]
	logic [addressWidth-1:0] yzReadAddress_0;
	//others
	//ab
	//line0
	logic [inputBits-1:0] mem_a_0_writeData;
	logic [inputBits-1:0] mem_a_0_readData;
	logic [inputBits-1:0] mem_b_0_writeData;
	logic [inputBits-1:0] mem_b_0_readData;
	logic [inputBits-1:0] array_a_0_input;
	logic [inputBits-1:0] array_b_0_input;
	//line1
	logic validInputs_1;
	logic [addressWidth-1:0] abReadAddress_1;
	logic [inputBits-1:0] mem_a_1_writeData;
	logic [inputBits-1:0] mem_a_1_readData;
	logic [inputBits-1:0] mem_b_1_writeData;
	logic [inputBits-1:0] mem_b_1_readData;
	logic [inputBits-1:0] array_a_1_input;
	logic [inputBits-1:0] array_b_1_input;
	//c
	//column0
	logic [inputBits-1:0] mem_c_0_writeData;
	logic [inputBits-1:0] mem_c_0_readData;
	logic [inputBits-1:0] array_c_0_input;
	//column1
	logic [inputBits-1:0] mem_c_1_writeData;
	logic [inputBits-1:0] mem_c_1_readData;
	logic [inputBits-1:0] array_c_1_input;
	//yz
	//column0
	logic [outputBits-1:0] array_y_0_output;
	logic [outputBits-1:0] array_z_0_output;
	logic [outputBits-1:0] mem_y_0_readData;
	logic [outputBits-1:0] mem_z_0_readData;
	//column1
	logic yzWriteEnable_1;
	logic [addressWidth-1:0] yzWriteAddress_1;
	logic [addressWidth-1:0] yzReadAddress_1;
	logic [outputBits-1:0] array_y_1_output;
	logic [outputBits-1:0] array_z_1_output;
	logic [outputBits-1:0] mem_y_1_readData;
	logic [outputBits-1:0] mem_z_1_readData;

	//modules
	//fsm
	fsm #(arraySize) fsm(clk, rst, start, interrupt,
						 S_AXIS_TREADY, S_AXIS_TVALID, S_AXIS_TLAST,
						 M_AXIS_TREADY, M_AXIS_TVALID, M_AXIS_TLAST,
						 fillingInputMemories, abcWriteAddress,
						 loadingWeights, cReadAddress,
						 validInputs_0, abReadAddress_0,
						 yzWriteEnable_0, yzWriteAddress_0,
						 yzReadAddress_0);
	//mem_ab [write external, read by array]
	//line 0
	assign mem_a_0_writeData = S_AXIS_TDATA[1*inputBits-1:0*inputBits];
	mem #(inputBits, arraySize) mem_a_0(clk, fillingInputMemories, abcWriteAddress, mem_a_0_writeData, abReadAddress_0, mem_a_0_readData);
	assign array_a_0_input = (validInputs_0) ? mem_a_0_readData:{inputBits{1'b0}};
	assign mem_b_0_writeData = S_AXIS_TDATA[3*inputBits-1:2*inputBits];
	mem #(inputBits, arraySize) mem_b_0(clk, fillingInputMemories, abcWriteAddress, mem_b_0_writeData, abReadAddress_0, mem_b_0_readData);
	assign array_b_0_input = (validInputs_0) ? mem_b_0_readData:{inputBits{1'b0}};
	//line 1
	//dff for delaying valid + address
	dff #(1) dff_validInputs_1(clk, rst, validInputs_0, validInputs_1);
	dff #(addressWidth) dff_abReadAddress_1(clk, rst, abReadAddress_0, abReadAddress_1);
	assign mem_a_1_writeData = S_AXIS_TDATA[2*inputBits-1:1*inputBits];
	mem #(inputBits, arraySize) mem_a_1(clk, fillingInputMemories, abcWriteAddress, mem_a_1_writeData, abReadAddress_1, mem_a_1_readData);
	assign array_a_1_input = (validInputs_1) ? mem_a_1_readData:{inputBits{1'b0}};
	assign mem_b_1_writeData = S_AXIS_TDATA[4*inputBits-1:3*inputBits];
	mem #(inputBits, arraySize) mem_b_1(clk, fillingInputMemories, abcWriteAddress, mem_b_1_writeData, abReadAddress_1, mem_b_1_readData);
	assign array_b_1_input = (validInputs_1) ? mem_b_1_readData:{inputBits{1'b0}};
	//mem_c [write external, read by array]
	//column 0
	assign mem_c_0_writeData = S_AXIS_TDATA[5*inputBits-1:4*inputBits];
	mem #(inputBits, arraySize) mem_c_0(clk, fillingInputMemories, abcWriteAddress, mem_c_0_writeData, cReadAddress, mem_c_0_readData);
	assign array_c_0_input = mem_c_0_readData;
	//column 1
	assign mem_c_1_writeData = S_AXIS_TDATA[6*inputBits-1:5*inputBits];
	mem #(inputBits, arraySize) mem_c_1(clk, fillingInputMemories, abcWriteAddress, mem_c_1_writeData, cReadAddress, mem_c_1_readData);
	assign array_c_1_input = mem_c_1_readData;
	//array
	array #(inputBits, outputBits) array(clk, rst, loadingWeights,
										 array_a_0_input, array_b_0_input,
										 array_c_0_input,
										 array_y_0_output, array_z_0_output,
										 array_a_1_input, array_b_1_input,
										 array_c_1_input,
										 array_y_1_output, array_z_1_output);
	//mem_yz [write by array, read external]
	//column 0
	mem #(outputBits, arraySize) mem_y_0(clk, yzWriteEnable_0, yzWriteAddress_0, array_y_0_output, yzReadAddress_0, mem_y_0_readData);
	mem #(outputBits, arraySize) mem_z_0(clk, yzWriteEnable_0, yzWriteAddress_0, array_z_0_output, yzReadAddress_0, mem_z_0_readData);
	//column 1
	//dff for delaying enable + address
	dff #(1) dff_yzWriteEnable_1(clk, rst, yzWriteEnable_0, yzWriteEnable_1);
	dff #(addressWidth) dff_yzWriteAddress_1(clk, rst, yzWriteAddress_0, yzWriteAddress_1);
	dff #(addressWidth) dff_yzReadAddress_1(clk, rst, yzReadAddress_0, yzReadAddress_1);
	mem #(outputBits, arraySize) mem_y_1(clk, yzWriteEnable_1, yzWriteAddress_1, array_y_1_output, yzReadAddress_1, mem_y_1_readData);
	mem #(outputBits, arraySize) mem_z_1(clk, yzWriteEnable_1, yzWriteAddress_1, array_z_1_output, yzReadAddress_1, mem_z_1_readData);

	//assigns
	assign M_AXIS_TDATA[1*outputBits-1:0*outputBits] = mem_y_0_readData;
	assign M_AXIS_TDATA[2*outputBits-1:1*outputBits] = mem_y_1_readData;
	assign M_AXIS_TDATA[3*outputBits-1:2*outputBits] = mem_z_0_readData;
	assign M_AXIS_TDATA[4*outputBits-1:3*outputBits] = mem_z_1_readData;
	assign M_AXIS_TKEEP = {m_axi_tkeep_width{1'b1}};

endmodule