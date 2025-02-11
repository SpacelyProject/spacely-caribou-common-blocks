module xpm_cdc_single (input logic src_in,
		       input logic  src_clk,
		       output logic dest_out,
		       input logic  dest_clk);

   logic 			    z1;
   
   
   always_ff @(posedge src_clk)
     z1 <= src_in;

   always_ff @(posedge dest_clk)
     dest_out <= z1;

endmodule // xpm_cdc_single


module  xpm_cdc_array_single #(WIDTH=1) (input logic src_clk,
				       input logic 		  dest_clk,
				       input logic [(WIDTH-1):0]  src_in,
				       output logic [(WIDTH-1):0] dest_out);

   genvar 							  i;
   
   generate
      for(i=0; i < WIDTH; i++) begin : cdc_individual
	 xpm_cdc_single u1 (.src_clk(src_clk),
			    .dest_clk(dest_clk),
			    .src_in(src_in[i]),
			    .dest_out(dest_out[i]));
      end   
   endgenerate

endmodule //

   
