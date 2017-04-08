
module pwr #(parameter STAGES = 1)(
            input logic clk,
            input logic en,
            output logic [STAGES-1:0] gclks
);

    logic [STAGES+1:0] d_en;
    logic [STAGES:0] mid;
    
    assign d_en[0] = en;

    genvar i;
    generate
        for(i = 0; i < STAGES-1; i++) begin
            neg_latch nl (.clk(clk), .i(d_en[i]), .o(mid[i]));
            assign gclks[i] = clk & mid[i];
            pos_latch pl (.clk(clk), .i(mid[i]), .o(d_en[i+1]));
        end
    endgenerate
    // Final half stage
    neg_latch nl (.clk(clk), .i(d_en[STAGES-1]), .o(mid[STAGES-1]));
    assign gclks[STAGES-1] = clk & mid[STAGES-1];

endmodule
