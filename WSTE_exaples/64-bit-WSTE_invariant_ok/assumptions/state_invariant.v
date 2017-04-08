// Room for include statements


module state_invariant (
    input logic [63:0] final_c103H,      // final_c103H[63:0]
    input logic [63:0] final_s103H,      // final_s103H[63:0]
    input logic [63:0] res104H,      // res104H[63:0]
    input logic reset103H,      // reset103H
    output logic ok
);

    
    // Code ... 
    logic [63:0] sum;

    assign sum = reset103H? 63'b0 : (~final_c103H + ~final_s103H);

    assign ok = (res104H == sum);
endmodule

