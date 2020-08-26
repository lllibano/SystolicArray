module mem
#(
	parameter bits = 8,
	parameter words = (2*2),
	parameter address = $clog2(words) //ceil(log2(words))
)
(
	input logic clk,
	input logic w_enbl,
	input logic [address-1:0] w_addr,
	input logic [bits-1:0] w_data,
	input logic [address-1:0] r_addr,
	output logic [bits-1:0] r_data
);

	(* ram_style = "block" *) logic [bits-1:0] memory [words-1:0];

	always @ (posedge clk) begin
		if(w_enbl)
			memory[w_addr] <= w_data;
		r_data <= memory[r_addr];
	end

endmodule
