// Room for include statements


module state_invariant (
    input logic [127:0] final_c103H,      // final_c103H[127:0]
    input logic [127:0] final_s103H,      // final_s103H[127:0]
    input logic [127:0] res104H,      // res104H[127:0]
    input logic reset103H,      // reset103H
    output logic ok
);

    
    // Code ... 
    logic [127:0] sum;

    assign sum = reset103H? 127'b0 : (~final_c103H + ~final_s103H);

    assign ok = (res104H == sum);
endmodule

