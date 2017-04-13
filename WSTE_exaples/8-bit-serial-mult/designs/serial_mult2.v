
module serial_mult (

   input clk,
   input rst_b,
   input put,
   input[7:0] idata,

   input get,

   output ready,   
   output[15:0] result,
   output result_valid

);
parameter [1:0] W4PUT = 2'b00;

parameter [1:0] DATA2 = 2'b01;
parameter [1:0] RESULTAVAIL = 2'b10;

reg  [1:0] ctrl_ps, ctrl_ns;
reg[7:0] data_ph1, data_ph2, data_ph1_nxt, data_ph2_nxt;


assign ctrl_ps_nxt = (rst_b==1'b0) ? W4PUT:ctrl_ns;
assign result = (ctrl_ps == RESULTAVAIL) ? (data_ph1 * data_ph2) : 0;
assign ready  = (ctrl_ps != RESULTAVAIL);
assign result_valid  = (ctrl_ps == RESULTAVAIL);

always @(*)
begin
     case ( ctrl_ps )
     W4PUT       : ctrl_ns = put ? DATA2 : W4PUT;
     DATA2       : ctrl_ns = put ? RESULTAVAIL : DATA2;
     RESULTAVAIL : ctrl_ns = ( get ) ? W4PUT : RESULTAVAIL;
     endcase
end

always @(*) begin
	if(rst_b) begin
		data_ph1_nxt = 0;
	end
	else if(put & ctrl_ps == W4PUT)
		data_ph1_nxt = idata;
	else 
		data_ph1_nxt = data_ph1;
end

always @(*) begin
	if(rst_b)	data_ph2_nxt = 0;
	else if (ctrl_ps == DATA2 & put) data_ph2_nxt = idata;
	else	data_ph2_nxt = data_ph2;
end

always @(posedge clk or negedge rst_b) 
begin
      ctrl_ps <= ctrl_ps_nxt; 
      data_ph1 <= data_ph1_nxt;
      data_ph2 <= data_ph2_nxt;
  

end


endmodule
