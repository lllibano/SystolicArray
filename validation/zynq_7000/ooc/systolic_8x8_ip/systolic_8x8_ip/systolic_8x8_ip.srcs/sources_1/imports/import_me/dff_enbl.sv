module dff_enbl 
#(
    parameter bits = 8
)
(
    input logic clk,
    input logic enbl,
    input logic [bits-1:0] d,
    output logic [bits-1:0] q
);

    always_ff @ (posedge clk) begin
        if(enbl) begin
            q <= d;
        end
    end

endmodule
