module ff1(
            input logic clk,
            input logic i,
            output logic o
);

    always_ff @(posedge clk)
        begin
            o <= i;
        end // delays


endmodule

