
module ff #(parameter WIDTH = 1) (
            input logic clk,
            input logic [WIDTH-1:0] i,
            output logic [WIDTH-1:0] o
);

    always_ff @(posedge clk)
        begin
            o <= i;
        end // delays


endmodule
