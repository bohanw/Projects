`define  W  4
`define MAX 4'b1111

module cnt (clk,rst,prop);
	input clk,rst;

	output wire prop;
	
	reg [`W-1:0] X,NEXT_X;

	
	initial begin
		X = 0;
	end

	always @(*) begin
		NEXT_X= X;
		if(rst || X == `MAX - 1) NEXT_X = `W'd0;
		else 					NEXT_X = X + `W'd1;	
	end

	always @(posedge clk) begin
			X <= NEXT_X;
	end
	assign prop = (X < `MAX);
endmodule
