`define SIZE 8
module qadd(
	input clk, rst,start,
    input [`SIZE-1:0] a,
    input [`SIZE-1:0] b,
    output  [`SIZE-1:0] c,
    output wire ok
    );


reg [`SIZE-1:0] res;

 reg [`SIZE-1:0] st1, st2, st3, st1_n, st2_n,st3_n;

 assign res = a + b +b;
 assign c= st3;
 always @(*) begin
	 if(rst) begin
		st1_n = 0;
	 end
	 else if (start)
		st1_n = a;
	 else st1_n = st1;

 end

 always @(*) begin
	if(rst) begin
		st2_n = 0;
	end
	else st2_n = st1 + b;
 end

 always @(*) begin
	if(rst) begin
		st3_n = 0;
	end
	else st3_n = st2 + b;
 end

 always @(posedge clk) begin
	st1 <= st1_n;
	st2 <= st2_n;
	st3 <= st3_n;
 end

 assign ok = (st3 != 0 && st3 == a + b + b);
endmodule
