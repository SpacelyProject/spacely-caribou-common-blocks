//
//   TEST/MOCK IMPLEMENTATION of xpm_cdc_single
//   For testing firmware blocks without Xilinx IP
//
//

module xpm_cdc_single(
		      input logic src_clk,
		      input logic dest_clk,
		      input logic src_in,
		      output logic dest_out
		      );

   logic 			   internal_node;
   
   always_ff @(posedge src_clk) begin
      internal_node <= src_in;
   end

   always_ff @(posedge dest_clk) begin
      dest_out <= internal_node;
   end 
   

endmodule // xpm_cdc_single

		      
module xpm_cdc_array_single # (
			       parameter WIDTH=1
)(

  input logic [(WIDTH-1):0] src_in,
  output logic [(WIDTH-1):0] dest_out,
  input logic src_clk,
  input logic dest_clk
  );

   genvar     i;
   generate
      for(i=0; i<WIDTH; i++) begin: cdc_individual
	 xpm_cdc_single u1 (.dest_out(dest_out[i]),
			 .src_in(src_in[i]),
			 .src_clk(src_clk),
			 .dest_clk(dest_clk));
      end
   endgenerate
   

   

endmodule // xpm_cdc_array_single
