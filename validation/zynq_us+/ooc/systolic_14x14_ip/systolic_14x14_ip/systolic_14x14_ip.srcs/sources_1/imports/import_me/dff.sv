module dff 
#(
    parameter bits = 8
)
(
    input logic clk,
    input logic rst,
    input logic [bits-1:0] d,
    output logic [bits-1:0] q
);

    always_ff @ (posedge clk) begin
        if(rst) begin
            q <= {bits{1'b0}};
        end
        else begin
            q <= d;
        end
    end

endmodule