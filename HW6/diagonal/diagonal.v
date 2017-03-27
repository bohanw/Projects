/////////////////////////////////////////////////////////
// EECS 598-006: Formal Verification of HW & SW Systems
// Homework Assignment 6
/////////////////////////////////////////////////////////
//
// Property is defined as prop (property to be checked globally)
// Ignore clock (clk)
// State variables X and Y are W-bit wide

`define W    4
`define Kmax 4'b1111
`define WS1  3                          // WS1 = (W - 1) 

module diagonal(clk, reset);

	input wire clk;
	reg [`W-1:0] X, Y;
	input wire reset;

	 
	assign	X = `W'd1;
	assign 	Y = `W'd0;


	always @(posedge clk) begin
		X <= (reset && (X > Y)) ? ((`Kmax >> 1) + (X >> 1)) : (X < Y) ? X : ((Y == X) || (X != `Kmax)) ? (X + `W'd1) : Y;
		Y <= (reset && (X > Y)) ? Y  : (!(X > Y) || (X != `Kmax)) ? (Y + `W'd1) : X;
	end

	wire prop = !(X < Y);
	
endmodule
