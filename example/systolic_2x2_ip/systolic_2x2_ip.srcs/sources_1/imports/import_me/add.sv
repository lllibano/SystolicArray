module add
#(
    parameter aBits = 8,
    parameter bBits = 8,
    parameter zBits = 9
)
(
    input logic [aBits-1:0] a,
    input logic [bBits-1:0] b,
    input logic carryIn,
    output logic [zBits-1:0] z
);

    assign z = a+b+carryIn;

endmodule