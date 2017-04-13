module CAM  (

	input clock, reset,
	input enable,
	
	input [1:0]  command,
	
	input [31:0] data,
	
	input [2:0] write_idx,
	
	output reg [2:0] read_idx,
	output reg hit
	);
	parameter SIZE = 8;

	parameter [1:0] READ = 2'b01;
	parameter [1:0] WRITE = 2'b10;
	reg [31:0] cam [SIZE-1 : 0] ;
	reg [SIZE-1:0] valid;
	// Fill in design here
	always @(posedge clock) begin
		if(reset) begin
			valid <= 0;
			for(int i = 0; i < SIZE;i++) begin
				cam[i] <= 0;
			end
		end else if((command == WRITE ) && enable) begin
			if(write_idx <= SIZE-1) begin
				cam[write_idx] <= data;
				valid[write_idx] <= 1;
			end
		end

	end
	

	always @(*)  begin
		if((command == READ) && enable) begin
			for(int j= 0;j<SIZE;j++) begin
				if(cam[j] == data && (valid[j]==1)) begin
					read_idx = j;
					hit = 1;
					break;
				end else begin
					hit = 0;
					read_idx = 0;
				end
			end
			
		end else begin
			read_idx = 0;
			hit = 0;
		end

	end
	
endmodule
			
