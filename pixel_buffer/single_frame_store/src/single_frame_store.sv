module single_frame_store # (
   parameter FRAME_WIDTH=256
)(

  input logic [(FRAME_WIDTH-1):0] frame_in,
  input logic 			  frame_clk,

  input logic 			  axi_clk,
  input logic 			  axi_resetn,
  input logic 			  trigger,
  output logic [31:0] 		  status,
  output logic [31:0] 		  frame_read,
  input logic 			  frame_read_rdStrobe


  );

   logic [(FRAME_WIDTH-1):0] 	  stored_frame;  

   logic triggered_frame_clk;
   logic capture_complete;

   // AXI CLK DOMAIN

   logic 			   triggered, next_triggered;
   logic 			   capture_complete_axi;
   logic [31:0] 		   frame_read_ptr;
   

   assign status[0] = triggered;
   assign status[1] = capture_complete_axi;
   assign status[31:2] = 0;
   
   // Triggered Logic 
   always_ff @(posedge axi_clk, negedge axi_resetn) begin
      if (~axi_resetn) begin
	 triggered <= 1'b0;
      end
      else
	triggered <= next_triggered;
   end

   always_comb begin
      if(trigger)
	next_triggered = 1'b1;
      else if(capture_complete_axi)
	next_triggered = 1'b0;
      else
	next_triggered = triggered;    
   end

   // Readout Logic with chunks
   parameter NUM_CHUNKS = (FRAME_WIDTH + 32 - 1)/32;
   parameter LAST_CHUNK_SIZE = (FRAME_WIDTH - (NUM_CHUNKS-1)*32);
   parameter LAST_CHUNK_ZEROS = 32-LAST_CHUNK_SIZE;
   
   
   logic [31:0] frame_chunks [NUM_CHUNKS-1:0];
   

   always_ff @(posedge axi_clk, negedge axi_resetn) begin
      if(~axi_resetn || triggered) begin
	 frame_read_ptr <= 0;
	 
      end
      else begin
	 if(frame_read_rdStrobe) begin
	    if(frame_read_ptr < NUM_CHUNKS - 1)
	       frame_read_ptr <= frame_read_ptr + 1;
	    else
	      frame_read_ptr <= 0;
	 end	      
      end // else: !if(~axi_resetn || triggered)
   end
  
   assign frame_read = frame_chunks[frame_read_ptr];


   //frame_chunk idx i is equivalent to stored_frame[i*32: (i+1)*32-1]
   genvar i;
   generate 
      for(i=0; i < NUM_CHUNKS-1; i++) begin
	 assign frame_chunks[i] = stored_frame[32*i +: 32];
      end
   endgenerate
   assign frame_chunks[NUM_CHUNKS-1] = {{LAST_CHUNK_ZEROS{1'b0}}, stored_frame[(NUM_CHUNKS-1)*32+LAST_CHUNK_SIZE-1:(NUM_CHUNKS-1)*32]};
   
   
   // CDC Considerations
   //
   // axi_clk -> frame_clk
   // Put a single CDC on triggered.
   //
   // frame_clk -> axi_clk 
   // capture_complete returns to the AXI clock domain to switch off triggered (which then switches itself off).
   // We can put a single CDC on this signal.
   // Like with the APG, the frame is too large to CDC, but we can guarantee it won't change if trigger is 0. 
   
      xpm_cdc_single cdc_triggered (.dest_out(triggered_frame_clk),
                                  .dest_clk(frame_clk),
                                  .src_clk(axi_clk),
                                  .src_in(triggered));

   xpm_cdc_single cdc_capture_complete (.dest_out(capture_complete_axi),
                                  .dest_clk(axi_clk),
                                  .src_clk(frame_clk),
                                  .src_in(capture_complete));

   // FRAME CLK DOMAIN

   

   always_ff @(posedge frame_clk) begin

      if (~triggered_frame_clk) begin // NOT TRIG -- reset capture_complete to 0, wait for next trig.
	 capture_complete <= 1'b0;
	 stored_frame <= stored_frame;
	 
      end
      else if (~capture_complete) begin // TRIG -- get a frame, then capture is complete.
	 capture_complete <= 1'b1;
         stored_frame <= frame_in;
      end
      else begin // TRIG COMPLETE -- wait for capture_complete to turn off trigger.
	 capture_complete <= capture_complete;
	 stored_frame <= stored_frame;
      end
   end // always_ff @ (posedge frame_clk)
   
   



endmodule // single_frame_store

			 
