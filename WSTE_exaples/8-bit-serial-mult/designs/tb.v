module dut;
	
	logic clk, rst_b,put,get;
	
	logic  [7:0] idata;
	
	logic ready,result_valid;
	logic [15:0] result;
	
	
	serial_mult m0 (
		.clk(clk),
		.rst_b(rst_b),
		.put(put),
		.get(get),
		.idata(idata),
		.ready(ready),
		.result_valid(result_valid),
		.result(result)
	);
	
	always #5 clk = ~ clk;
	
	initial begin
		clk = 0;
		rst_b = 0;
		put = 0;
		get = 0;
		
		idata = 0;
		
		@(negedge clk);
		@(negedge clk);
		rst_b = 1;
		idata = 5;
		
		@(negedge clk);
		put = 1;
		
		#30;

		put = 0;
		get = 1;
		#30 ;
		get = 0;
		
		
		#100;
		$finish;
	end


endmodule

