//
//        sync_counter
//        aquinn@fnal.gov -- 10/28/2024
//
// This module helps to count the number of cycles that two 
// enable signals are asserted in a non-AXI clock domain (tclk).  

module sync_counter # (
			parameter COUNTER_A_BITS=32,
			parameter OFFSET_A_BITS=0,
			parameter COUNTER_B_BITS=32,
			parameter OFFSET_B_BITS=0
			
)(
  // AXI Interface
  input logic 			    axi_clk,
  input logic 			    reset,
  input logic 			    snapshot,
  output logic [(COUNTER_A_BITS-1):0] counter_a_result,
  output logic [(COUNTER_B_BITS-1):0] counter_b_result,

  // Clock_a Interface
  input logic 			    tclk,
  input logic 			    enable_a,
  input logic 			    enable_b			    
  );

   // CDC Considerations
   // tclk --> AXI
   // counter_a_result and counter_b_result are crossed to the AXI domain with
   // array crossers. it's not a problem if their bits arrive at different times because they
   // should only be read out when they are frozen by asserting snapshot. 
   //
   // AXI --> tclk
   // reset and snapshot signals cross from AXI --> tclk (enable_a and enable_b are native to
   // tclk, that's kinda the point of this module). reset and snapshot are crossed with standard
   // crossers; it shouldn't be a problem because the start and stop times are kind of arbitrary
   // anyhow.
   //

   logic reset_tclk, snapshot_tclk;
   logic [(COUNTER_A_BITS-1):0] counter_a_samp_trunc;
   logic [(COUNTER_A_BITS+OFFSET_A_BITS-1):0] counter_a, counter_a_samp;
   logic [(COUNTER_B_BITS-1):0] 	      counter_b_samp_trunc;
   logic [(COUNTER_B_BITS+OFFSET_B_BITS-1):0] counter_b, counter_b_samp;

   xpm_cdc_array_single #(.WIDTH(COUNTER_A_BITS)) cdc_counter_a_result(.dest_out(counter_a_result),
								   .dest_clk(axi_clk),
								   .src_in(counter_a_samp_trunc),
								   .src_clk(tclk));

   xpm_cdc_array_single #(.WIDTH(COUNTER_B_BITS)) cdc_counter_b_result(.dest_out(counter_b_result),
								   .dest_clk(axi_clk),
								   .src_in(counter_b_samp_trunc),
								   .src_clk(tclk));

   xpm_cdc_single cdc_reset (.dest_out(reset_tclk),
			     .dest_clk(tclk),
			     .src_in(reset),
			     .src_clk(axi_clk));

   xpm_cdc_single cdc_snapshot (.dest_out(snapshot_tclk),
				.dest_clk(tclk),
				.src_in(snapshot),
				.src_clk(axi_clk));
   
   
   
   //TCLK DOMAIN   


   always @(posedge tclk) begin
      if(reset_tclk) begin
	 counter_a <= 0;
	 counter_a_samp <= 0;
	 counter_b <= 0;
	 counter_b_samp <= 0;
      end
      else begin
	 if (enable_a) begin
	    //Whenever enable_a is asserted, counter_a counts.
	    counter_a <= counter_a + 1;

	    //If in snapshot mode, counter_a_result_samp is frozen, otw
	    // it mirrors counter_a_result_t.
	    if (snapshot_tclk)
	      counter_a_samp <= counter_a_samp;
	    else
	      counter_a_samp <= counter_a + 1;	    
	 end
	 else begin
	    //When enable_a is NOT asserted, the counters are frozen.
	    counter_a <= counter_a;
	    counter_a_samp <= counter_a_samp;	 
	 end // else: !if(enable_a)

	 if (enable_b) begin
	    //Whenever enable_b is asserted, counter_b counts.
	    counter_b <= counter_b + 1;

	    //If in snapshot mode, counter_a_result_samp is frozen, otw
	    // it mirrors counter_a_result_t.
	    if (snapshot_tclk)
	      counter_b_samp <= counter_b_samp;
	    else
	      counter_b_samp <= counter_b + 1;	    
	 end
	 else begin
	    //When enable_b is NOT asserted, the counters are frozen.
	    counter_b <= counter_b;
	    counter_b_samp <= counter_b_samp;	 
	 end // else: !if(enable_b)
      end // else: !if(reset_tclk)
   end // always @ (posedge tclk)
   

   assign counter_a_samp_trunc = counter_a_samp[(COUNTER_A_BITS+OFFSET_A_BITS-1):(OFFSET_A_BITS)];
   assign counter_b_samp_trunc = counter_b_samp[(COUNTER_B_BITS+OFFSET_B_BITS-1):(OFFSET_B_BITS)];
   
				 



		     
endmodule // clock_counter
