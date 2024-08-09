module logic_clk_div
#(
     parameter integer COUNTER_BITS=32
  
) (
   input logic 			    master_clk,
   input logic [(COUNTER_BITS-1):0] divider_cycles,
   output logic 		    output_clk,
   input logic 			    axi_resetn
   );

   logic 			  divided_clk;
   logic [(COUNTER_BITS-1):0] 		  counter;
   logic [(COUNTER_BITS-1):0] 		  last_transition;
		  

   //Note that if the input clock is free-running, and divide_factor
   //resets to zero, then the output clock will be free-running.
   always_comb begin
      if(divider_cycles==0)
	output_clk = master_clk;
      else
	output_clk = divided_clk;
   end
   

   //Divider logic
   always @(posedge master_clk, negedge axi_resetn) begin
      if(~axi_resetn) begin
	 counter <= 0;
	 last_transition <= 0;
	 divided_clk <= 0;
      end
      else begin
	 counter <= counter + 1;
	 //Confirmed in simulation that this calculation works fine w/ overflow.
	 if((counter-last_transition) >= divider_cycles) begin
	    divided_clk <= ~divided_clk;
	    last_transition <= counter;
	 end
	 else begin
	    divided_clk <= divided_clk;
	    last_transition <= last_transition;
	 end
      end // else: !if(~axi_resetn)
   end // always @ (posedge master_clk, negedge axi_resetn)
   
	   

endmodule // logic_clk_div

