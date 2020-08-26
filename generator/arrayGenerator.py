from settings import *

def generateArray():
	print("\tGenerating Array...")

	file = open(generatedPath + "array.sv", "w")

	#parameters & interface
	file.write("module array //" + str(arraySize) + "x" + str(arraySize) + "\n")
	file.write("#(\n")
	file.write("\tparameter inputBits = " + str(inputBits) + ",\n")
	file.write("\tparameter outputBits = " + str(outputBits) + "\n")
	file.write(")\n")
	file.write("(\n")
	file.write("\tinput logic clk,\n")
	file.write("\tinput logic rst,\n")
	file.write("\tinput logic clk2x,\n")
	file.write("\tinput logic loadingWeights,\n")
	for i in range(0, arraySize):
		file.write("\tinput logic [inputBits-1:0] in_side_" + str(i) + "_a,\n")
		file.write("\tinput logic [inputBits-1:0] in_side_" + str(i) + "_b,\n")
		file.write("\tinput logic [inputBits-1:0] in_side_" + str(i) + "_c,\n")
		file.write("\tinput logic [inputBits-1:0] in_side_" + str(i) + "_d,\n")
		file.write("\tinput logic [inputBits-1:0] in_top_" + str(i) + "_e,\n")
		file.write("\toutput logic [outputBits-1:0] out_bottom_" + str(i) + "_w,\n")
		file.write("\toutput logic [outputBits-1:0] out_bottom_" + str(i) + "_x,\n")
		file.write("\toutput logic [outputBits-1:0] out_bottom_" + str(i) + "_y,\n")
		file.write("\toutput logic [outputBits-1:0] out_bottom_" + str(i) + "_z,\n")
	file.seek(0, os.SEEK_END)
	file.seek(file.tell()-2, os.SEEK_SET)
	file.write("\n")
	file.write(");\n")
	file.write("\n")

	#signals
	file.write("\t//signals\n")
	for i in range(0, arraySize):
		file.write("\t//line " + str(i) + "\n")
		for j in range(0, arraySize):
			file.write("\t//pe " + str(i) + " " + str(j) + "\n")
			file.write("\tlogic [inputBits-1:0] pe_" + str(i) + "_" + str(j) + "_out_a;\n")
			file.write("\tlogic [inputBits-1:0] pe_" + str(i) + "_" + str(j) + "_out_b;\n")
			file.write("\tlogic [inputBits-1:0] pe_" + str(i) + "_" + str(j) + "_out_c;\n")
			file.write("\tlogic [inputBits-1:0] pe_" + str(i) + "_" + str(j) + "_out_d;\n")
			file.write("\tlogic [inputBits-1:0] pe_" + str(i) + "_" + str(j) + "_out_e;\n")
			file.write("\tlogic [outputBits-1:0] pe_" + str(i) + "_" + str(j) + "_out_w;\n")
			file.write("\tlogic [outputBits-1:0] pe_" + str(i) + "_" + str(j) + "_out_x;\n")
			file.write("\tlogic [outputBits-1:0] pe_" + str(i) + "_" + str(j) + "_out_y;\n")
			file.write("\tlogic [outputBits-1:0] pe_" + str(i) + "_" + str(j) + "_out_z;\n")
	file.write("\n")

	#modules
	file.write("\t//modules\n")
	for i in range(0, arraySize):
		file.write("\t//line " + str(i) + "\n")
		for j in range(0, arraySize):
			file.write("\t//pe " + str(i) + " " + str(j) + "\n")
			file.write("\tint8_pe #(inputBits, outputBits) pe_" + str(i) + "_" + str(j) + "(clk, rst, clk2x,\n")
			if(j == 0): #ab from mem
				file.write("\t\t\t\t\t\t\t\t\t\t\tin_side_" + str(i) + "_a, in_side_" + str(i) + "_b, in_side_" + str(i) + "_c, in_side_" + str(i) + "_d, ")
			else: #default
				file.write("\t\t\t\t\t\t\t\t\t\t\tpe_" + str(i) + "_" + str(j-1) + "_out_a, pe_" + str(i) + "_" + str(j-1) + "_out_b, pe_" + str(i) + "_" + str(j-1) + "_out_c, pe_" + str(i) + "_" + str(j-1) + "_out_d, ")
			if(i == 0): #e from mem
				file.write("in_top_" + str(j) + "_e, loadingWeights,\n")
				file.write("\t\t\t\t\t\t\t\t\t\t\t{outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}}, {outputBits{1'b0}},\n")
			else: #default
				file.write("pe_" + str(i-1) + "_" + str(j) + "_out_e, loadingWeights,\n")
				file.write("\t\t\t\t\t\t\t\t\t\t\tpe_" + str(i-1) + "_" + str(j) + "_out_w, pe_" + str(i-1) + "_" + str(j) + "_out_x, pe_" + str(i-1) + "_" + str(j) + "_out_y, pe_" + str(i-1) + "_" + str(j) + "_out_z,\n")
			file.write("\t\t\t\t\t\t\t\t\t\t\tpe_" + str(i) + "_" + str(j) + "_out_a, pe_" + str(i) + "_" + str(j) + "_out_b, pe_" + str(i) + "_" + str(j) + "_out_c, pe_" + str(i) + "_" + str(j) + "_out_d, pe_" + str(i) + "_" + str(j) + "_out_e,\n")
			file.write("\t\t\t\t\t\t\t\t\t\t\tpe_" + str(i) + "_" + str(j) + "_out_w, pe_" + str(i) + "_" + str(j) + "_out_x, pe_" + str(i) + "_" + str(j) + "_out_y, pe_" + str(i) + "_" + str(j) + "_out_z);\n")
	file.write("\n")

	#assigns
	file.write("\t//assigns\n")
	for i in range(0, arraySize):
		file.write("\tassign out_bottom_" + str(i) + "_w = pe_" + str(arraySize-1) + "_" + str(i) + "_out_w;\n")
		file.write("\tassign out_bottom_" + str(i) + "_x = pe_" + str(arraySize-1) + "_" + str(i) + "_out_x;\n")
		file.write("\tassign out_bottom_" + str(i) + "_y = pe_" + str(arraySize-1) + "_" + str(i) + "_out_y;\n")
		file.write("\tassign out_bottom_" + str(i) + "_z = pe_" + str(arraySize-1) + "_" + str(i) + "_out_z;\n")
	file.write("\n")

	file.write("endmodule")

	file.close()