//
//  Arbitrary Digital Pattern Generator
//
//  aquinn -- 7/12/2024
//

module Arbitrary_Pattern_Generator 
#(
       parameter integer NUM_SIG=8,
       parameter integer NUM_SAMP=128
) (
   // Clock for pattern generation
   input logic 			wave_clk,
   input logic 			axi_clk,
   input logic 			axi_resetn,

   // AXI Registers   
   input logic 			run,
   input logic [(NUM_SIG-1):0] 	write_channel,
   output logic [(NUM_SIG-1):0] read_channel,
   input logic [31:0] 		n_samples, //Number of samples to take in one shot
   output logic [31:0] 		sample_count, //Number of total samples taken so far.
   
   // Custom strobe triggers
   // -- asserted when write_channel is written to.
   input logic 			write_channel_wrStrobe,
   // -- asserted when read_channel is read from.
   input logic 			read_channel_rdStrobe,
   
   // External I/O
   output logic [(NUM_SIG-1):0] output_signals,
   input logic [(NUM_SIG-1):0] 	input_signals,

   // Debug I/O
   //Number of samples in the write buffer
   output logic [31:0] 		write_buffer_len,
   //Current sample being read from the read buffer.
   output logic [31:0] 		next_read_sample,
   //Pointer which controls the arbitrary wave read/write transaction.
   output logic [31:0] 		wave_ptr,
   output logic [2:0] 		status);
   

   typedef enum 			  logic[1:0] {
			    IDLE=0,
			    TRANSACTION=1,
			    DONE=2
			    } FSM_State;

   FSM_State state;
   
   
   logic 	[31:0]			  n_samples_int;
   
   logic 			triggered, next_triggered;
   assign status = {triggered,state};

   logic [(NUM_SAMP-1):0] [(NUM_SIG-1):0] write_buffer;
   logic [(NUM_SAMP-1):0] [(NUM_SIG-1):0] read_buffer;


   always_comb begin
      if(n_samples > NUM_SAMP)
	n_samples_int = NUM_SAMP;
      else
	n_samples_int = n_samples;
   end
   
   

   // TRIGGER CDC LOGIC
   // Trigger signal is a 1-cycle pulse in the AXI clock domain.
   // This pulse is latched by the "triggered" signal, which
   // remains high until the serial transaction starts (status=1)
   always_ff @(posedge axi_clk, negedge axi_resetn) begin
      if (~axi_resetn) begin
	 triggered <= 1'b0;
      end
      else
	triggered <= next_triggered;  
   end

   always_comb begin
      if (run)
	next_triggered = 1'b1;
      else if (state == DONE)
	next_triggered = 1'b0;
      else
	next_triggered = triggered;
   end


   //BUFFER READ/WRITE VIA AXI
   always_ff @(posedge axi_clk, negedge axi_resetn) begin
      if (~axi_resetn) begin
	 write_buffer <= 0;
	 write_buffer_len <= 0;
	 read_buffer <= 0;
	 next_read_sample <= 0;
	 
      end
      else begin
	 //If we are in the DONE state, we reset write_buffer_len (can write new data)
	 //and reset next_read_sample (there's new data available to read)
	 if(state == DONE) begin
	    write_buffer_len <= 0;
	    next_read_sample <= 1;
	    read_channel <= read_buffer[0];
	 end
	 else begin
	    if(write_channel_wrStrobe) begin
	       //If we don't have room in the buffer, writes fail.
	       if(write_buffer_len < NUM_SAMP) begin
		  write_buffer[write_buffer_len] <= write_channel;
		  write_buffer_len <= write_buffer_len + 1;
	       end
	    end
	    if(read_channel_rdStrobe) begin
	       read_channel <= read_buffer[next_read_sample];
	       if(next_read_sample < NUM_SAMP)
		 next_read_sample <= next_read_sample + 1;
	    end
	    else
	      read_channel <= read_channel;
	    
	 end // else: !if(state == DONE)
      end // else: !if(~axi_resetn)
   end // always_ff @ (posedge axi_clk, negedge axi_resetn)
   


   //ARBITRARY WAVE TRANSACTION LOGIC
   always_ff @(posedge wave_clk) begin

      // ~~~~ State Machine Logic ~~~~
      // If not triggered, status is idle.
      // If we are triggered, status is transaction, unless we're
      // at the very last bit of the transaction in which case status is done.
      if(~triggered) 
	state <= IDLE;
      else begin 
	 if (state == TRANSACTION && (wave_ptr >= n_samples_int-1))
	   state <= DONE;
	 else
	   state <= TRANSACTION;
      end

      // ~~~~ Outputs Based on State ~~~~
      if (state == TRANSACTION) begin // TRANSACTION IN PROGRESS

	 output_signals <= write_buffer[wave_ptr];
	 read_buffer[wave_ptr] <= input_signals;
	 wave_ptr <= wave_ptr + 1;
	 sample_count <= sample_count + 1; 
	 
      end 
      else begin //NO TRANSACTION (IDLE or DONE)
	 output_signals <= 0;
	 wave_ptr <= 0;
	 sample_count <= sample_count;

      end       
   end

endmodule // Arbitrary_Pattern_Generator

