module mult_spec (
    input logic [31:0] i1,      // idata[7:0]
    input logic [31:0] i2,      // idata[7:0]
    input logic [63:0] result,      // result[15:0]
    output logic ok
);

    assign ok = (result == (i1 * i2));
endmodule
