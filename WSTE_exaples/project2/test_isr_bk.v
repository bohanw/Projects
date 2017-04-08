module testbench;
	logic [63:0] value;
	logic clock, reset;
	logic [31:0] result;
	logic done,stop;
	integer i;
	logic correct;
		
//	wire correct  = ((64'hffff_fffe_0000_0001 <= value ) && (value <= 64'hffff_ffff_ffff_ffff) && (result == 32'hffffffff) && done) ? 1'b1: (((result * result <=  value) && ((result + 1) * (result + 1)) > value && (done))? 1'b1: 1'b0);
	ISR i0(.reset(reset),.value(value),.clock(clock),
		   .result(result),.done(done));
	
	always begin
		#5 clock = ~clock;
	end
	
	/*	
	always @(posedge done) begin
		#2 if (!correct) begin
           	$display("Incorrect at time %4.0f",$time);
			$display("result is %h",result);	
			$display("@@@Failed");
			//$finish;
		end else $display("@@@pass"); 
	end
	*/

	task compute_sqrt;
		input [63:0] value;
		begin
		//current_value = value;
		//input [31:0] expected_out;
		//expected_out = 32'b0;
		//int i;
		logic [31:0] expected_out = 32'h0;

		i = 31;
		if(done) begin
		  while(i >= 0) begin
			expected_out[i] = 1'b1;
			if(expected_out * expected_out > value) begin
				expected_out[i] = 1'b0;	
			end
			i = i - 1;
			//$monitor("running expected out %b", expected_out);

		  end	
		$display("Value is %b", value); 
		$display("expected_out is %b", expected_out);
		$display ("result is %b", result);
		check_result(expected_out);
		//correct = (int '(result) == j);

		end
		end
	endtask

	//
	//Checking integer square root by implementing 
	//Binary search algorithm and compare result
	// 
	task check_result;
		
		input [31:0] expected_out;
		begin
			if(expected_out == result) $display("Correct");
			else $display("Incorrect");
		end
	endtask

	//Check result by applying conditions 
	task check_correct;
		begin
		if(done) begin
			if((result*result <= value) && ((result+1)*(result+1)>value)) begin
				 correct = 1;
				 $display("correct");
			
			end 
				else if((result == 32'hffffffff) && (value == 64'hffff_ffff_ffff_ffff)) begin 
				correct = 1;
				$display("correct");
			end else begin
				correct = 0;
				$display("false");
			end
		end
		end
	endtask

	task wait_until_done;
        forever begin : wait_loop
            @(posedge done);
			
            @(negedge clock);
            if(done) disable wait_until_done;
        end
    endtask

	task init_tests;
		
		input [63:0] value;
			//input reset;
		begin
			reset = 1;
			@(negedge clock);
			reset = 0;
			wait_until_done();
			@(negedge clock);
			
		end
	endtask

	initial begin
		$monitor("Time:%4.0f done:%b value:%h  result:%h correct:%b ",$time,done,value, result,correct);
		correct = 0;
		clock = 0;
		value = 64'h1001;
		reset = 1;
		@(negedge clock);
		reset = 0;
		wait_until_done();
		compute_sqrt(64'h1001);

		@(negedge clock);
		value = 64'h2345;
		reset = 1;
		@(negedge clock);
		reset = 0;
		wait_until_done();

		//init_tests(64'h2345);

		compute_sqrt(64'h2345);
	
		//test 3
		value = 64'hffff_ffff_ffff_ffff;
		reset = 1;
		@(negedge clock);
		reset = 0;
		wait_until_done();
		compute_sqrt(64'hffff_ffff_ffff_ffff);

		repeat (10) begin
			@(negedge clock);
			reset = 1;
			value = {$random, $random};
			@(negedge clock);
			 reset = 0;
			wait_until_done();
			//correctness();
			compute_sqrt(value);
		end	

		/*
		value = 64'h1001;
		reset = 1;
		clock = 0;
		correct = 0;
		@(negedge clock);
		reset = 0;
		wait_until_done();
		check_correct();
		@(negedge clock);
		value = 64'h2345;
		reset = 1;
		@(negedge clock);
		reset = 0;
		wait_until_done();
		check_correct();	
		@(negedge clock);
		reset = 1;
		value = 0;
		@(negedge clock);
		reset = 0;
		wait_until_done();
		check_correct();
		@(negedge clock);
		reset = 1;
		value = 64'h9e2;
		@(negedge clock);
		 reset = 0;
	//	compute_sqrt(value);
		wait_until_done();
		
		check_correct();
		@(negedge clock);
		@(negedge clock);
		reset = 1;
		value = 64'hffff_ffff_ffff_ffff;
		@(negedge clock);
		 reset = 0;
		wait_until_done();
		check_correct();
	//	compute_sqrt(value);
		/*
		repeat (10) begin
			reset = 1;
			value = {$random, $random};
			@(negedge clock);
			 reset = 0;
			wait_until_done();
			//correctness();
			check_correct();

		end	
		
/*
		reset = 1;
		value = 2;
			@(negedge clock);
		 reset = 0;
		compute_sqrt(value);

		wait_until_done();
		reset = 1;
		value = 10;
		@(negedge clock);
			 reset = 0;
		wait_until_done();
		reset = 1;
		value = 64'hffff_ffff_ffff_ffff;
		@(negedge clock);
		 reset = 0;
		wait_until_done();
		reset = 1;
		value = 0;
		@(negedge clock);
		 reset = 0;
		wait_until_done();
		*/
		


		$display("@@@End of Sim");
		$finish;
		

	$finish;

	end
	
endmodule
