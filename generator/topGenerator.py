from settings import *

def generateTop():
	print("Generating Top...")

	file = open(path + "top.sv", "w")

	#parameters & interface
	file.write("module top //" + str(arraySize) + "x" + str(arraySize) + "\n")
	file.write("#(\n")
	file.write("\tparameter arraySize = " + str(arraySize) + ",\n")
	file.write("\tparameter inputBits = " + str(inputBits) + ",\n")
	file.write("\tparameter outputBits = " + str(outputBits) + ",\n")
	file.write("\tparameter addressWidth = $clog2(arraySize),\n")
	s_axi_tdata_width_adjustment = int(m.pow(2, m.ceil(m.log(arraySize*inputBits*3, 2))) - arraySize*inputBits*3)
	file.write("\tparameter s_axi_tdata_width = arraySize*inputBits*3 + " + str(s_axi_tdata_width_adjustment) + ",\n")
	file.write("\tparameter s_axi_tkeep_width = s_axi_tdata_width/8,\n")
	m_axi_tdata_width_adjustment = int(m.pow(2, m.ceil(m.log(arraySize*outputBits*2, 2))) - arraySize*outputBits*2)
	file.write("\tparameter m_axi_tdata_width = arraySize*outputBits*2 + " + str(m_axi_tdata_width_adjustment) + ",\n")
	file.write("\tparameter m_axi_tkeep_width = m_axi_tdata_width/8\n")
	file.write(")\n")
	file.write("(\n")
	file.write("\t//CLK, RST\n")
	file.write("\tinput logic clk,\n")
	file.write("\tinput logic rst,\n")
	file.write("\t//Global Control\n")
	file.write("\tinput logic start,\n")
	file.write("\tinput logic interrupt,\n")
	file.write("\t//AXIS Slave Input Port\n")
	file.write("\tinput logic [s_axi_tdata_width-1:0] S_AXIS_TDATA,\n")
	file.write("\tinput logic [s_axi_tkeep_width-1:0] S_AXIS_TKEEP,\n")
	file.write("\tinput logic S_AXIS_TLAST,\n")
	file.write("\tinput logic S_AXIS_TVALID,\n")
	file.write("\toutput logic S_AXIS_TREADY,\n")
	file.write("\t//AXIS Master Input Port\n")
	file.write("\toutput logic [m_axi_tdata_width-1:0] M_AXIS_TDATA,\n")
	file.write("\toutput logic [m_axi_tkeep_width-1:0] M_AXIS_TKEEP,\n")
	file.write("\toutput logic M_AXIS_TLAST,\n")
	file.write("\toutput logic M_AXIS_TVALID,\n")
	file.write("\tinput logic M_AXIS_TREADY\n")
	file.write(");\n")
	file.write("\n")

	#signals
	file.write("\t//signals\n")
	file.write("\t//fsm\n")
	file.write("\t//fillingInputMemoriesState\n")
	file.write("\tlogic fillingInputMemories;\n")
	file.write("\tlogic [addressWidth-1:0] abcWriteAddress;\n")
	file.write("\t//loadingWeightsState\n")
	file.write("\tlogic loadingWeights;\n")
	file.write("\tlogic [addressWidth-1:0] cReadAddress;\n")
	file.write("\t//runningState - inputs [mem -> array]\n")
	file.write("\tlogic validInputs_0;\n")
	file.write("\tlogic [addressWidth-1:0] abReadAddress_0;\n")
	file.write("\t//runningState - outputs [array -> mem]\n")
	file.write("\tlogic yzWriteEnable_0;\n")
	file.write("\tlogic [addressWidth-1:0] yzWriteAddress_0;\n")
	file.write("\t//runningState - inputs [mem -> outside]\n")
	file.write("\tlogic [addressWidth-1:0] yzReadAddress_0;\n")
	file.write("\t//others\n")
	file.write("\t//ab\n")
	for i in range(0, arraySize):
		file.write("\t//line" + str(i) + "\n")
		if(i>0):
			file.write("\tlogic validInputs_" + str(i) + ";\n")
			file.write("\tlogic [addressWidth-1:0] abReadAddress_" + str(i) + ";\n")
		file.write("\tlogic [inputBits-1:0] mem_a_" + str(i) + "_writeData;\n")
		file.write("\tlogic [inputBits-1:0] mem_a_" + str(i) + "_readData;\n")
		file.write("\tlogic [inputBits-1:0] mem_b_" + str(i) + "_writeData;\n")
		file.write("\tlogic [inputBits-1:0] mem_b_" + str(i) + "_readData;\n")
		file.write("\tlogic [inputBits-1:0] array_a_" + str(i) + "_input;\n")
		file.write("\tlogic [inputBits-1:0] array_b_" + str(i) + "_input;\n")
	file.write("\t//c\n")
	for i in range(0, arraySize):
		file.write("\t//column" + str(i) + "\n")
		file.write("\tlogic [inputBits-1:0] mem_c_" + str(i) + "_writeData;\n")
		file.write("\tlogic [inputBits-1:0] mem_c_" + str(i) + "_readData;\n")
		file.write("\tlogic [inputBits-1:0] array_c_" + str(i) + "_input;\n")
	file.write("\t//yz\n")
	for i in range(arraySize):
		file.write("\t//column" + str(i) + "\n")
		if(i>0):
			file.write("\tlogic yzWriteEnable_" + str(i) + ";\n")
			file.write("\tlogic [addressWidth-1:0] yzWriteAddress_" + str(i) + ";\n")
			file.write("\tlogic [addressWidth-1:0] yzReadAddress_" + str(i) + ";\n")
		file.write("\tlogic [outputBits-1:0] array_y_" + str(i) + "_output;\n")
		file.write("\tlogic [outputBits-1:0] array_z_" + str(i) + "_output;\n")
		file.write("\tlogic [outputBits-1:0] mem_y_" + str(i) + "_readData;\n")
		file.write("\tlogic [outputBits-1:0] mem_z_" + str(i) + "_readData;\n")
	file.write("\n")

	#modules
	file.write("\t//modules\n")
	file.write("\t//fsm\n")
	file.write("\tfsm #(arraySize) fsm(clk, rst, start, interrupt,\n")
	file.write("\t\t\t\t\t\t S_AXIS_TREADY, S_AXIS_TVALID, S_AXIS_TLAST,\n")
	file.write("\t\t\t\t\t\t M_AXIS_TREADY, M_AXIS_TVALID, M_AXIS_TLAST,\n")
	file.write("\t\t\t\t\t\t fillingInputMemories, abcWriteAddress,\n")
	file.write("\t\t\t\t\t\t loadingWeights, cReadAddress,\n")
	file.write("\t\t\t\t\t\t validInputs_0, abReadAddress_0,\n")
	file.write("\t\t\t\t\t\t yzWriteEnable_0, yzWriteAddress_0,\n")
	file.write("\t\t\t\t\t\t yzReadAddress_0);\n")

	file.write("\t//mem_ab [write external, read by array]\n")
	for i in range(0, arraySize):
		file.write("\t//line " + str(i) + "\n")
		if(i>0):
			file.write("\t//dff for delaying valid + address\n")
			file.write("\tdff #(1) dff_validInputs_" + str(i) + "(clk, rst, validInputs_" + str(i-1) + ", validInputs_" + str(i) + ");\n")
			file.write("\tdff #(addressWidth) dff_abReadAddress_" + str(i) + "(clk, rst, abReadAddress_" + str(i-1) + ", abReadAddress_" + str(i) + ");\n")
		file.write("\tassign mem_a_" + str(i) + "_writeData = S_AXIS_TDATA[" + str(i+1) + "*inputBits-1:" + str(i) + "*inputBits];\n")
		file.write("\tmem #(inputBits, arraySize) mem_a_" + str(i) + "(clk, fillingInputMemories, abcWriteAddress, mem_a_" + str(i) + "_writeData, abReadAddress_" + str(i) + ", mem_a_" + str(i) + "_readData);\n")
		file.write("\tassign array_a_" + str(i) + "_input = (validInputs_" + str(i) + ") ? mem_a_" + str(i) + "_readData:{inputBits{1'b0}};\n")
		file.write("\tassign mem_b_" + str(i) + "_writeData = S_AXIS_TDATA[" + str(arraySize+(i+1)) + "*inputBits-1:" + str(arraySize+i) + "*inputBits];\n")
		file.write("\tmem #(inputBits, arraySize) mem_b_" + str(i) + "(clk, fillingInputMemories, abcWriteAddress, mem_b_" + str(i) + "_writeData, abReadAddress_" + str(i) + ", mem_b_" + str(i) + "_readData);\n")
		file.write("\tassign array_b_" + str(i) + "_input = (validInputs_" + str(i) + ") ? mem_b_" + str(i) + "_readData:{inputBits{1'b0}};\n")

	file.write("\t//mem_c [write external, read by array]\n")
	for i in range(0, arraySize):
		file.write("\t//column " + str(i) + "\n")
		file.write("\tassign mem_c_" + str(i) + "_writeData = S_AXIS_TDATA[" + str(parallelismLevel*arraySize+i+1) + "*inputBits-1:" + str(parallelismLevel*arraySize+i) + "*inputBits];\n")
		file.write("\tmem #(inputBits, arraySize) mem_c_" + str(i) + "(clk, fillingInputMemories, abcWriteAddress, mem_c_" + str(i) + "_writeData, cReadAddress, mem_c_" + str(i) + "_readData);\n")
		file.write("\tassign array_c_" + str(i) + "_input = mem_c_" + str(i) + "_readData;\n")

	file.write("\t//array\n")
	file.write("\tarray #(inputBits, outputBits) array(clk, rst, loadingWeights,\n")
	for i in range(0, arraySize):
		file.write("\t\t\t\t\t\t\t\t\t\t array_a_" + str(i) + "_input, array_b_" + str(i) + "_input,\n")
		file.write("\t\t\t\t\t\t\t\t\t\t array_c_" + str(i) + "_input,\n")
		file.write("\t\t\t\t\t\t\t\t\t\t array_y_" + str(i) + "_output, array_z_" + str(i) + "_output,\n")
	file.seek(0, os.SEEK_END)
	file.seek(file.tell()-2, os.SEEK_SET)
	file.write(");\n")
   
	file.write("\t//mem_yz [write by array, read external]\n")
	for i in range(0, arraySize):
		file.write("\t//column " + str(i) + "\n")
		if(i>0):
			file.write("\t//dff for delaying enable + address\n")
			file.write("\tdff #(1) dff_yzWriteEnable_" + str(i) + "(clk, rst, yzWriteEnable_" + str(i-1) + ", yzWriteEnable_" + str(i) + ");\n")
			file.write("\tdff #(addressWidth) dff_yzWriteAddress_" + str(i) + "(clk, rst, yzWriteAddress_" + str(i-1) + ", yzWriteAddress_" + str(i) + ");\n")
			file.write("\tdff #(addressWidth) dff_yzReadAddress_" + str(i) + "(clk, rst, yzReadAddress_" + str(i-1) + ", yzReadAddress_" + str(i) + ");\n")
		file.write("\tmem #(outputBits, arraySize) mem_y_" + str(i) + "(clk, yzWriteEnable_" + str(i) + ", yzWriteAddress_" + str(i) + ", array_y_" + str(i) + "_output, yzReadAddress_" + str(i) + ", mem_y_" + str(i) + "_readData);\n")
		file.write("\tmem #(outputBits, arraySize) mem_z_" + str(i) + "(clk, yzWriteEnable_" + str(i) + ", yzWriteAddress_" + str(i) + ", array_z_" + str(i) + "_output, yzReadAddress_" + str(i) + ", mem_z_" + str(i) + "_readData);\n")
	file.write("\n")

	#assigns
	file.write("\t//assigns\n")
	for i in range(0, arraySize):
		file.write("\tassign M_AXIS_TDATA[" + str(i+1) + "*outputBits-1:" + str(i) + "*outputBits] = mem_y_" + str(i) + "_readData;\n")
	for i in range(0, arraySize):
		file.write("\tassign M_AXIS_TDATA[" + str(arraySize+(i+1)) + "*outputBits-1:" + str(arraySize+i) + "*outputBits] = mem_z_" + str(i) + "_readData;\n")
	file.write("\tassign M_AXIS_TKEEP = {m_axi_tkeep_width{1'b1}};\n")
	file.write("\n")

	file.write("endmodule")

	file.close()