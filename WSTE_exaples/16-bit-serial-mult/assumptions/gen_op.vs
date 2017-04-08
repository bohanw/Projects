module gen_op (
        input logic i1, // rst_b at 1,
        input logic i2, // rst_b at 2,
        input logic i3, // rst_b at 3,
        input logic i4, // put at 1,
        input logic i5, // put at 2,
        input logic i6, // put at 3,
        input logic i7, // get at 1,
        input logic i8, // get at 2,
        input logic i9, // get at 3,
        input logic [15:0] i10, // idata[7:0] at 1,
        input logic [15:0] i11, // idata[7:0] at 2,
        input logic [31:0] i12, // ctrl_ps[31:0] at 1,
        output logic ok
);

    assign ok =
        (i1 == 1'b1) & 
        (i2 == 1'b1) & 
        (i3 == 1'b1) & 
        (i4 == 1'b1) & 
        (i5 == 1'b1) & 
        (i6 == 1'b0) & 
        (i7 == 1'b0) & 
        (i8 == 1'b0) & 
        (i9 == 1'b1) & 
        (i10[15:0] == i10[15:0]) & 
        (i11[15:0] == i11[15:0]) & 
        (i12[31:0] == 32'b00000000000000000000000000000000);

endmodule
