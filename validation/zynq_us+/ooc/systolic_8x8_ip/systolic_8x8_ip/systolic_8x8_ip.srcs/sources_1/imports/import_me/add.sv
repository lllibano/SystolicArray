module add
#(
    parameter aBits = 16,
    parameter bBits = 32,
    parameter signExtension = bBits-aBits,
    parameter zBits = 33
)
(
    input logic [aBits-1:0] a,
    input logic [bBits-1:0] b,
    input logic carryIn,
    output logic [zBits-1:0] z
);

    logic [bBits-1:0] a_signExtended;
    assign a_signExtended = (a[aBits-1]) ? {{signExtension{1'b1}}, a}:{{signExtension{1'b0}}, a};

    assign z = a_signExtended+b+carryIn;

endmodule