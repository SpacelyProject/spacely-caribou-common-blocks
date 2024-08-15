module logic_clk_div
#(
     parameter integer COUNTER_BITS=32
  
) (
   input logic 			    master_clk,
   input logic 			    axi_clk,
   input logic 			    divider_rstn, 
   input logic [(COUNTER_BITS-1):0] divider_cycles,
   output logic 		    output_clk,
   input logic 			    axi_resetn
   );

   // ~ ~ CDC ~ ~
   // The AXI domain supplies the control signals bypass_n and divider_cycles,
   // which must be translated to the master_clk domain. 

   //Signals post CDC
   logic 				  divider_rstn_cdc;
   logic [(COUNTER_BITS-1):0] 		  divider_cycles_cdc;

`ifndef NO_CDC
   
   xpm_cdc_array_single #(.WIDTH(COUNTER_BITS)) cdc_divcyc (.dest_out(divider_cycles_cdc),
				      .dest_clk(master_clk),
				      .src_in(divider_cycles),
				      .src_clk(axi_clk));
   
   
   xpm_cdc_single cdc_divrst (.dest_out(divider_rstn_cdc),
				 .dest_clk(master_clk),
				 .src_in(divider_rstn),
				 .src_clk(axi_clk));

`else // !`ifndef NO_CDC
   assign divider_rstn_cdc = divider_rstn;
   assign divider_cycles_cdc = divider_cycles;
`endif // !`ifndef NO_CDC
   
   
   // ~ ~ master_clk domain ~ ~
   logic 			  divided_clk;
   logic [(COUNTER_BITS-1):0] 		  counter;
   logic [(COUNTER_BITS-1):0] 		  last_transition;

   //Note that if the input clock is free-running, and divide_factor
   //resets to zero, then the output clock will be free-running.
   always_comb begin
      if(~divider_rstn_cdc)
	output_clk = master_clk;
      else
	output_clk = divided_clk;
   end

   
   //Divider logic
   always @(posedge master_clk, negedge divider_rstn_cdc) begin
      if(~divider_rstn_cdc) begin
	 counter <= 0;
	 last_transition <= 0;
	 divided_clk <= 0;
      end
      else begin
	 counter <= counter + 1;
	 //Confirmed in simulation that this calculation works fine w/ overflow.
	 if((counter-last_transition) >= divider_cycles_cdc) begin
	    divided_clk <= ~divided_clk;
	    last_transition <= counter;
	 end
	 else begin
	    divided_clk <= divided_clk;
	    last_transition <= last_transition;
	 end
      end // else: !if(~axi_resetn)
   end // always @ (posedge master_clk, negedge divider_rstn)
   
	   

endmodule // logic_clk_div

