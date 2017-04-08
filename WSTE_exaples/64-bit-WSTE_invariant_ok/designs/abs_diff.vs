
module abs_diff(
            input logic clk,
            input logic reset101H,
            input logic valid101H,
            input logic [64-1:0] a101H0,
            input logic [64-1:0] a101H1,
            input logic [64-1:0] a101H2,
            input logic [64-1:0] a101H3,
            input logic [64-1:0] b101H0,
            input logic [64-1:0] b101H1,
            input logic [64-1:0] b101H2,
            input logic [64-1:0] b101H3,
            output logic [64-1:0] res104H
);

    logic reset102H;
    logic reset103H;

    logic [2:0] gclks;
    logic en101H;

    logic [64:0] diffs101H0;
    logic [64:0] diffs101H1;
    logic [64:0] diffs101H2;
    logic [64:0] diffs101H3;

    logic [64:0] qdiffs102H0;
    logic [64:0] qdiffs102H1;
    logic [64:0] qdiffs102H2;
    logic [64:0] qdiffs102H3;

    logic [64-1:0] diffs102H0;
    logic [64-1:0] diffs102H1;
    logic [64-1:0] diffs102H2;
    logic [64-1:0] diffs102H3;

    logic  neg102H0;
    logic  neg102H1;
    logic  neg102H2;
    logic  neg102H3;

    logic [64-1:0] c102H0;
    logic [64-1:0] c102H1;
    logic [64-1:0] c102H2;
    logic [64-1:0] c102H3;

    logic [64-1:0] s102H0;
    logic [64-1:0] s102H1;
    logic [64-1:0] s102H2;
    logic [64-1:0] s102H3;

    logic [64-1:0] final_c102H;
    logic [64-1:0] final_s102H;
    logic [64-1:0] final_c103H;
    logic [64-1:0] final_s103H;
    logic [64-1:0] rc103H;
    logic [64-1:0] rs103H;

    logic [64-1:0] sum103H;

    genvar i;

    assign diffs101H0 = {1'b0,a101H0} - {1'b0,b101H0};
    ff #(64+1) ff101_0(.clk(gclks[0]),.i(diffs101H0),.o(qdiffs102H0));
    assign neg102H0 = qdiffs102H0[64];
    assign diffs102H0 = neg102H0? ~qdiffs102H0[64-1:0]
                                    :  qdiffs102H0[64-1:0];

    assign diffs101H1 = {1'b0,a101H1} - {1'b0,b101H1};
    ff #(64+1) ff101_1(.clk(gclks[0]),.i(diffs101H1),.o(qdiffs102H1));
    assign neg102H1 = qdiffs102H1[64];
    assign diffs102H1 = neg102H1? ~qdiffs102H1[64-1:0]
                                    :  qdiffs102H1[64-1:0];

    assign diffs101H2 = {1'b0,a101H2} - {1'b0,b101H2};
    ff #(64+1) ff101_2(.clk(gclks[0]),.i(diffs101H2),.o(qdiffs102H2));
    assign neg102H2 = qdiffs102H2[64];
    assign diffs102H2 = neg102H2? ~qdiffs102H2[64-1:0]
                                    :  qdiffs102H2[64-1:0];

    assign diffs101H3 = {1'b0,a101H3} - {1'b0,b101H3};
    ff #(64+1) ff101_3(.clk(gclks[0]),.i(diffs101H3),.o(qdiffs102H3));
    assign neg102H3 = qdiffs102H3[64];
    assign diffs102H3 = neg102H3? ~qdiffs102H3[64-1:0]
                                    :  qdiffs102H3[64-1:0];


    csa csa0 (.x(diffs102H1),.y(diffs102H2), .z(diffs102H3),
              .cin(neg102H0), .c(c102H0), .s(s102H0));
    csa csa1 (.x(rc103H),      .y(rs103H),       .z(diffs102H0),
              .cin(neg102H1), .c(c102H1), .s(s102H1));
    csa csa2 (.x(c102H0),    .y(s102H0),     .z(c102H1),
              .cin(neg102H2), .c(c102H2), .s(s102H2));
    csa csa3 (.x(s102H1),    .y(c102H2),     .z(s102H2),
              .cin(neg102H3), .c(c102H3), .s(s102H3));


    assign final_c102H = ~c102H3;
    assign final_s102H = ~s102H3;

    ff #(64) ff_c (.clk(gclks[1]), .i(final_c102H), .o(final_c103H));
    ff #(64) ff_s (.clk(gclks[1]), .i(final_s102H), .o(final_s103H));

    assign rc103H = ~({64{reset103H}} | final_c103H);
    assign rs103H = ~({64{reset103H}} | final_s103H);

    assign sum103H = rc103H + rs103H;

    ff #(64) ff_f (.clk(gclks[2]), .i(sum103H), .o(res104H));

    ff1 ff101_r (.clk(clk), .i(reset101H), .o(reset102H));
    ff1 ff102_r (.clk(gclks[1]), .i(reset102H), .o(reset103H));


    assign en101H = reset101H | valid101H;
    pwr #(3) pwr (.clk(clk), .en(en101H), .gclks(gclks));

endmodule
