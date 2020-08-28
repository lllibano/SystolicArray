module dsp_macro_wrapper
(
	input logic [24:0] A,
	input logic [24:0] B,
	input logic [17:0] C,
	input logic CLK,
	input logic CLR,
	output logic [42:0] Z
);

    dsp_macro dsp_macro(.A(A), .B(B), .C(C), .CLK(CLK), .CLR(CLR), .Z(Z));

endmodule
