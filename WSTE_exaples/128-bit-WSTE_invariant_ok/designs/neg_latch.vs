
module neg_latch(
        input logic clk,
        input logic i,
        output logic o
);

    always_latch
        begin
            if (~clk)
                o <= i;
        end

endmodule
