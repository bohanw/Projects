module dut;
	parameter SIZE = 8;

	reg [SIZE-1:0] a,b;
	reg [SIZE-1:0] c;
	reg clk,rst,start;

	wire ok;

	qadd q0 (.clk(clk),.a(a),.b(b),.c(c),.rst(rst),.start(start),.ok(ok));



	always #5 clk = ~clk;

	initial begin
		clk = 1;
		rst = 1;
		start = 0;

		a = 0;
		b = 0;

		#15 rst = 0;
		start = 1;
		
		 a = 8'd10;
		b = 8'd5;

		#50;
		$finish;
		

	end
endmodule
