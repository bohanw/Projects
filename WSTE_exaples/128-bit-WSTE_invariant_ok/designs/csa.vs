
module csa(
            input logic [128-1:0]  x,
            input logic [128-1:0]  y,
            input logic [128-1:0]  z,
            input logic         cin,
            output logic [128-1:0] c,
            output logic [128-1:0] s
);

    logic [128-1:0] tmp;

    assign s = x ^ y ^ z;
    assign tmp = (x & y) | (x & z) | (y & z);
    assign c = {tmp[128-2:0], cin};

endmodule
