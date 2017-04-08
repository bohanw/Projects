module testbench;
	logic [63:0] value;
	logic clock, reset;
	logic [31:0] result;
	logic done,stop;
	integer i;
	logic correct;
		
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
		//	$finish;
		end else $display("@@@pass"); 
	end
	*/
	/*
	task compute_sqrt;
		input [63:0] value;
		logic [31:0] expected_out = 32'h0;

		i = 31;
		while(i >= 0) begin
			expected_out[i] = 1'b1;
			if(expected_out * expected_out > value) begin
				expected_out[i] = 1'b0;	
			end
			i = i - 1;
			//$monitor("running expected out %b", expected_out);

		end	
		$display("Value is %d", value); 
		$display("expected out %d", expected_out);

		//correct = (int '(result) == j);
	endtask
*/
	task check_correct;
		begin
		if(done) begin
			if((result*result <= value) && ((result+1)*(result+1)>value)) begin
				 correct = 1;
				 $display("correct");
			
			end 	else if((result == 32'hffffffff) && (value == 64'hffff_ffff_ffff_ffff)) begin 
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

	initial begin
		$monitor("Time:%4.0f done:%b value:%h  result:%h correct:%b ",$time,done,value, result,correct);
		value = 64'h1001;
		reset = 1;
		clock = 0;
		correct = 0;
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
		value = 64'd400;
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
