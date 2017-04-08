module qadd(
    input [31:0] a,
    input [31:0] b,
    output [31:0] c
    );

reg [31:0] res;

assign c = res;

always @(a,b)
begin
	//both negative
	if(a[31] == 1 && b[31] == 1) begin
		//sign
		res[31] = 1;
		//whole
		res[30:0] = a[30:0] + b[30:0];
	end
	//both positive
	else if(a[31] == 0 && b[31] == 0) begin
		//sign
		res[31] = 0;
		//whole
		res[30:0] = a[30:0] + b[30:0];
	end
	//subtract a-b
	else if(a[31] == 0 && b[31] == 1) begin
		//sign
		if(a[30:0] > b[30:0])
			res[31] = 1;
		else
			res[31] = 0;
		//whole
		res[30:0] = a[30:0] - b[30:0];
	end
	//subtract b-a
	else begin
		//sign
		if(a[30:0] < b[30:0])
			res[31] = 1;
		else
			res[31] = 0;
		//whole
		res[30:0] = b[30:0] - a[30:0];
	end
end

endmodule
