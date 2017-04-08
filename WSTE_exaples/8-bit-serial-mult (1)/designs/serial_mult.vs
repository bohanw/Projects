typedef enum { W4PUT, DATA2, RESULTAVAIL  } ctrl_fsm_type;

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

ctrl_fsm_type ctrl_ps, ctrl_ns;
logic[7:0] data_ph1, data_ph2, data_ph1_nxt, data_ph2_nxt;
logic corrup_result;

assign data_ph1_nxt = put & (ctrl_ps == W4PUT) ? idata[7:0] : data_ph1; 
assign data_ph2_nxt = put & (ctrl_ps == DATA2) ? idata[7:0] : data_ph2; 
assign corrup_result = ({data_ph1, data_ph2 } == 16'hBADD);

assign result = (ctrl_ps == RESULTAVAIL) ? (data_ph1 * data_ph2) : 0;
assign ready  = (ctrl_ps != RESULTAVAIL);
assign result_valid  = (ctrl_ps == RESULTAVAIL);

always_comb
begin
     case ( ctrl_ps )
     W4PUT       : ctrl_ns = put ? DATA2 : W4PUT;
     DATA2       : ctrl_ns = put ? RESULTAVAIL : DATA2;
     RESULTAVAIL : ctrl_ns = ( get ) ? W4PUT : RESULTAVAIL;
     endcase
end

always @(posedge clk or negedge rst_b) 
begin

  if ( rst_b == 1'b0 ) begin
      ctrl_ps <= W4PUT; 
      data_ph1 <= 0;
      data_ph2 <= 0;
  end
  else begin
      ctrl_ps <= ctrl_ns; 
      data_ph1 <= data_ph1_nxt;
      data_ph2 <= data_ph2_nxt;
  end

end

endmodule
