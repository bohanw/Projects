module qadd(
    input [SIZE-1:0] a,
    input [SIZE-1:0] b,
    output [SIZE-1:0] c,
    output wire ok
    );
parameter SIZE = 8;

reg [SIZE-1:0] res;

assign c = res;

always @(a,b)
begin
	//both negative
	if(a[SIZE-1] == 1 && b[SIZE-1] == 1) begin
		//sign
		res[SIZE-1] = 1;
		//whole
		res[SIZE-2:0] = a[SIZE-2:0] + b[SIZE-2:0];
	end
	//both positive
	else if(a[SIZE-1] == 0 && b[SIZE-1] == 0) begin
		//sign
		res[SIZE-1] = 0;
		//whole
		res[SIZE-2:0] = a[SIZE-2:0] + b[SIZE-2:0];
	end
	//subtract a-b
	else if(a[SIZE-1] == 0 && b[SIZE-1] == 1) begin
		//sign
		if(a[SIZE-2:0] > b[SIZE-2:0])
			res[SIZE-1] = 1;
		else
			res[SIZE-1] = 0;
		//whole
		res[SIZE-2:0] = a[SIZE-2:0] - b[SIZE-2:0];
	end
	//subtract b-a
	else begin
		//sign
		if(a[SIZE-2:0] < b[SIZE-2:0])
			res[SIZE-1] = 1;
		else
			res[SIZE-1] = 0;
		//whole
		res[SIZE-2:0] = b[SIZE-2:0] - a[SIZE-2:0];
	end
end

 assign ok = (a[SIZE-1] == 0 && b[SIZE-1] == 0) ? (res  == a + b): 1;
endmodule
