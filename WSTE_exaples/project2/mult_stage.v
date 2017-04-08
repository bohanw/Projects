// This is one stage of an 8 stage (9 depending on how you look at it)
// pipelined multiplier that multiplies 2 64-bit integers and returns
// the low 64 bits of the result.  This is not an ideal multiplier but
// is sufficient to allow a faster clock period than straight *
module mult_stage(
					input clock, reset, start,
					input [15:0] product_in, mplier_in, mcand_in,

					output logic done,
					output logic [15:0] product_out, mplier_out, mcand_out
				);
	parameter STAGE = 4 ;
	parameter SIZE_ZEROS = 4'b0;
	parameter SIZE = 16/STAGE;

	logic [15:0] prod_in_reg, partial_prod_reg;
	logic [15:0] partial_product, next_mplier, next_mcand;

	assign product_out = prod_in_reg + partial_prod_reg;

	assign partial_product = mplier_in[SIZE-1:0] * mcand_in;

	assign next_mplier = {SIZE_ZEROS,mplier_in[15:SIZE]};
	assign next_mcand = {mcand_in[15-SIZE:0],SIZE_ZEROS};

	//synopsys sync_set_reset "reset"
	always_ff @(posedge clock) begin
		prod_in_reg      <= #1 product_in;
		partial_prod_reg <= #1 partial_product;
		mplier_out       <= #1 next_mplier;
		mcand_out        <= #1 next_mcand;
	end

	// synopsys sync_set_reset "reset"
	always_ff @(posedge clock) begin
		if(reset)
			done <= #1 1'b0;
		else
			done <= #1 start;
	end

endmodule

