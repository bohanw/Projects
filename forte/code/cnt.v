`define W 4
`define MAX 4'd15
module fifo (
input clk,rst,
output wire prop
);
	reg[3:0]cnt, n_cnt;


	initial begin
		cnt = 4'b0;
	end
	always @(*) begin
		if(rst || cnt == `MAX-1) n_cnt = 0;
		else 					n_cnt = cnt + 4'b1;
	end

	always @(posedge clk) begin
		cnt <= n_cnt;
	end

	assign prop = (cnt  > `MAX-2);
endmodule