module ISR(
	input				reset,			//reset
	input		[63:0]  value,			//Input integer to be computed as 
	input				clock,			
	output logic [31:0] result,			//Output integere square troot
	output logic		done			//Signal 
);
	
	logic [4:0] cnt, n_cnt;
	//logic [31:0] result_temp;
	logic [1:0] state, next_state;
	logic [63:0] mcand, mult_product,n_mcand, value_reg;
	logic mult_start, mult_done;
		
	//logic comp_flag;
		
	//logic [63:0] n_mcand;
	parameter INIT = 2'b00, MULT = 2'b01, COMP = 2'b10, FINAL = 2'b11;
	
	// synopsys sync_set_reset "reset"	
	always_ff @(posedge clock) begin
		if(reset) begin
			value_reg <= #1 value;
			state <= #1 2'b0;
			mcand <= #1 32'h80000000;
			cnt   <= #1 5'h1f;
		end else begin
			state <= #1 next_state;
			cnt   <= #1 n_cnt;
			mcand <= #1 n_mcand;
		end
	end

	//state transition logic
	always_comb begin
		case(state) 
			INIT: begin 
					next_state = MULT;
				  end
			MULT: begin
					if(!mult_done) next_state = MULT;
					else 		   next_state = COMP;
				  end
			COMP: begin
					if(cnt > 0)    next_state = INIT;
					else		   next_state = FINAL;
				 end
			FINAL: begin
					if(reset)  next_state = INIT;
					else 	   next_state = FINAL;
				  end
		endcase

	end

	//Control signal logic
	always_comb begin	
		n_mcand  = mcand;
		mult_start = 0;
		n_cnt = cnt;
		result = 0;
		done = 0;
		case(state) 
			INIT: mult_start = 1;
			MULT: mult_start = 0;
		
			COMP: begin 
					//n_mcand[cnt]  = 1'b1;
					if(cnt > 0) begin
						if(mult_product > value_reg)  n_mcand[cnt] = 0;
						//else					  n_mcand[cnt] = 1;
						n_cnt  = cnt - 1;
						n_mcand[n_cnt] = 1;
					end  
					else begin 
						n_cnt = cnt;
						if(mult_product > value_reg)  n_mcand[cnt] = 0;
						else 					  n_mcand[n_cnt] = 1;
					end
					end 				
			FINAL: begin
					done = 1;
					result = mcand[31:0];
				   end
		endcase
	
	end
		

//	assign result = (done) ? n_mcand[31:0]: 0;


	mult m0(.clock(clock),.reset(reset),.mcand(mcand),.mplier(mcand),.start(mult_start),.product(mult_product),.done(mult_done));	


endmodule
