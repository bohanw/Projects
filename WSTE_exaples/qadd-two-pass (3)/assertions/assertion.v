module assertion (
			input logic [31:0] input1,
			input logic [31:0] input2,
			input logic [31:0] result,
			output logic 	   ok
			);
   assign ok = (input1[31] == 0 && input2[31] == 0) ? (result == input1 + input2): 1;
endmodule
