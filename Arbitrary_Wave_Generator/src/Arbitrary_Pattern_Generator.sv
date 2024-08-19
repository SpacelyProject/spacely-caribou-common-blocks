//
//  Arbitrary Digital Pattern Generator
//
//  aquinn -- 8/14/2024
//

module Arbitrary_Pattern_Generator 
#(
       parameter integer NUM_SIG=14,
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
   input logic [7:0] 		control,
   output logic [31:0]          dbg_error,
   
   // Custom strobe triggers
   // -- asserted when write_channel is written to.
   input logic 			write_channel_wrStrobe,
   // -- asserted when read_channel is read from.
   input logic 			read_channel_rdStrobe,

   // Asserted to clear the content of read/write registers.
   input logic 			clear,
   
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

   FSM_State state, state_axi;
   
   
   logic 	[31:0]			  n_samples_int;
   logic 				  prev_wrStrobe, prev_prev_wrStrobe;
   logic 				  prev_rdStrobe, prev_prev_rdStrobe;

   logic 				  double_rdStrobe;
   logic 				  double_wrStrobe;
   
   
   
   logic 			triggered, next_triggered, triggered_wave_clk;
   assign status = {triggered,state_axi};

   logic [(NUM_SAMP-1):0] [(NUM_SIG-1):0] write_buffer;
   logic [(NUM_SAMP-1):0] [(NUM_SIG-1):0] read_buffer;
   logic 				  loop;

   assign loop = control[0];

   assign double_rdStrobe = prev_rdStrobe && prev_prev_rdStrobe;
   assign double_wrStrobe = prev_wrStrobe && prev_prev_wrStrobe;
   


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
      else if (state_axi == DONE)
	next_triggered = 1'b0;
      else
	next_triggered = triggered;
   end


   //BUFFER READ/WRITE VIA AXI
   always_ff @(posedge axi_clk, negedge axi_resetn) begin
      if (~axi_resetn) begin
	 write_buffer <= 0;
	 write_buffer_len <= 0;
	 prev_wrStrobe <= 0;
	 prev_prev_wrStrobe <= 0;
	 prev_rdStrobe <= 0;
	 prev_prev_rdStrobe <= 0;
	 dbg_error <= 0;
	 read_channel <= 0;

	 //AQ note: don't clear the entire read_buffer in the axi_clk domain, Vivado freaks out and
	 //just assigns it to be permanently zero.
	 
	 next_read_sample <= 1;
	 
      end
      else begin

	 //Capture / debounce logic for strobes
	 prev_wrStrobe <= write_channel_wrStrobe;
	 prev_prev_wrStrobe <= prev_wrStrobe;
	 prev_rdStrobe <= read_channel_rdStrobe;
	 prev_prev_rdStrobe <= prev_rdStrobe;
	 

	 if(clear) begin
	    write_buffer <= 0;
	    write_buffer_len <= 0;
	    
	    //read_buffer <= 0;
	    read_channel <= 0;
	    next_read_sample <= 1;
	    dbg_error <= 0;
	    
	 end else begin
	    
	    dbg_error <= dbg_error | double_wrStrobe | double_rdStrobe << 1;
	    
	 
	    //If we are in the DONE state, we reset write_buffer_len (can write new data)
	    //and reset next_read_sample (there's new data available to read)
	    if(state_axi == DONE) begin
	       write_buffer_len <= 0;
	       next_read_sample <= 1;
	       read_channel <= read_buffer[0];
	       
	    end
	    else begin
	       //One-cycle debounce logic: if prev strobe was also high, we don't do it again.
	       //For wrStrobe, we also delay everything by 1 cycle to make sure the user's
	       //newly-entered write data gets processed.
	       if(prev_wrStrobe && !(prev_prev_wrStrobe)) begin
		  //If we don't have room in the buffer, writes fail.
		  if(write_buffer_len < NUM_SAMP) begin
		     write_buffer[write_buffer_len] <= write_channel;
		     write_buffer_len <= write_buffer_len + 1;
		  end
	       end
	       if(read_channel_rdStrobe && !(prev_rdStrobe)) begin
		  read_channel <= read_buffer[next_read_sample];
		  if(next_read_sample < NUM_SAMP)
		    next_read_sample <= next_read_sample + 1;
	       end
	       else
		 read_channel <= read_channel;
	       
	    end // else: !if(state == DONE)
	 end // else: !if(clear)
      end // else: !if(~axi_resetn)
   end // always_ff @ (posedge axi_clk, negedge axi_resetn)
   

   // CDC Considerations for AWG
   //
   // wave_clk -> axi_clk:
   // The only signals which feed back from the wave_clk domain
   // to the AXI domain are:
   // (1) state -- to tell when we can read the read_buffer
   // (2) read_buffer -- to return other data.
   // (3) (For debug only, not expected to be timing-correct) wave_ptr and sample_count
   //
   // state should get a CDC to ensure no false transitions. Because simply doing two parallel
   // 2b FFs does not guarantee glitch-free transitions, I implemented custom logic (see below).
   //
   // read_buffer is so large that putting a CDC on it would be impractical. Instead, we 
   // mandate that read_buffer can only be safely read when state = IDLE. Same for wave_ptr
   // and sample_count. (In this case, it is the same as if wave_clk is not running.)
   //
   // axi_clk -> wave_clk:
   // The only signal which should travel in this direction is triggered. We can definitely CDC it,
   // the extra latency is small.

`ifndef NO_CDC

   glitchless_2b_cdc cdc_state (.dest_out(state_axi),
				.dest_clk(axi_clk),
				.src_in(state),
				.src_clk(wave_clk));
   

   xpm_cdc_single cdc_triggered (.dest_out(triggered_wave_clk),
                                  .dest_clk(wave_clk),
                                  .src_clk(axi_clk),
                                  .src_in(triggered));


`else

   assign state_axi = state;
   assign triggered_wave_clk = triggered;
   

`endif 


   //ARBITRARY WAVE TRANSACTION LOGIC
   always_ff @(posedge wave_clk) begin

      // ~~~~ State Machine Logic ~~~~
      // If not triggered, status is idle.
      // If we are triggered, status is transaction, unless we're
      // at the very last bit of the transaction in which case status is done.
      if(~triggered_wave_clk) 
	state <= IDLE;
      else begin 
	 if (state == TRANSACTION && !loop && (wave_ptr >= n_samples_int-1))
	   state <= DONE;
	 else
	   state <= TRANSACTION;
      end

      // ~~~~ Outputs Based on State ~~~~
      if (state == TRANSACTION) begin // TRANSACTION IN PROGRESS


	 if(loop && (wave_ptr >= n_samples_int-1))
	    wave_ptr <= 0;
	 else
	   wave_ptr <= wave_ptr + 1;
	 
	 
	 output_signals <= write_buffer[wave_ptr];
	 read_buffer[wave_ptr] <= input_signals;
	 sample_count <= sample_count + 1;

	 
	 
      end 
      else begin //NO TRANSACTION (IDLE or DONE)
	 output_signals <= 0;
	 wave_ptr <= 0;
	 sample_count <= sample_count;

      end       
   end

endmodule // Arbitrary_Pattern_Generator


// glitchless_2b_cdc
// THEORY:
// The xpm_cdc_array_single guarantees that the 2-b signal under consideration is latched successfully
// into the dest_clk domain, but it doesn't guarantee that all the bits arrive at the same time.
// To ensure that, we re-encode the bitstream into a 4-bit one's-hot space and transmit that way.
//
// Assume that (a,b) are the bits for the two states we are transitioning between. Thus the transition is
// (1,0) -> (0,1) or vice versa. We are not guaranteed that the two bits will flip together; we could
// easily pass through (0,0) or (1,1), but that's okay because in 1's-hot those are invalid states,
// and the capture flop will just wait for a valid state before changing the output. Meanwhile bit (c)
// for a third state will never flip at all. So there can be no glitches.
//
// NOTE: This assumes that the src_clk is slower than the dest_clk... or at least that the rate of
// src state transitions is slower than dest_clk. But if this is not the case, it'll be
// really problematic to cross from src to dest anyhow. 
module glitchless_2b_cdc(
			 input logic [1:0]  src_in,
			 input logic 	    src_clk,
			 output logic [1:0] dest_out,
			 input logic 	    dest_clk);


   logic [3:0] 				    src_enc, dest_enc;
   
   
   //Source Encoding
   always_comb begin
      case (src_in)
	2'b00: src_enc = 4'b0001;
	2'b01: src_enc = 4'b0010;
	2'b10: src_enc = 4'b0100;
	2'b11: src_enc = 4'b1000;
	
      endcase // case (src_in)
   end

    xpm_cdc_array_single #(
   .DEST_SYNC_FF(4),   // DECIMAL; range: 2-10
   .INIT_SYNC_FF(0),   // DECIMAL; 0=disable simulation init values, 1=enable simulation init values
   .SIM_ASSERT_CHK(0), // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
   .SRC_INPUT_REG(0),  // DECIMAL; 0=do not register input, 1=register input
   .WIDTH(4)           // DECIMAL; range: 1-1024
)
xpm_cdc_array_single_inst (
   .dest_out(dest_enc), // WIDTH-bit output: src_in synchronized to the destination clock domain. This
                        // output is registered.

   .dest_clk(dest_clk), // 1-bit input: Clock signal for the destination clock domain.
   
   //UNUSED but keep here in case we need to make a change.
   .src_clk(src_clk),   // 1-bit input: optional; required when SRC_INPUT_REG = 1
   .src_in(src_enc)      // WIDTH-bit input: Input single-bit array to be synchronized to destination clock
                        // domain. It is assumed that each bit of the array is unrelated to the others. This
                        // is reflected in the constraints applied to this macro. To transfer a binary value
                        // losslessly across the two clock domains, use the XPM_CDC_GRAY macro instead.

);

   //Dest Decoding
   always_ff @(posedge dest_clk) begin
      case (dest_enc)
	4'b0001: dest_out <= 2'b00;
	4'b0010: dest_out <= 2'b01;
	4'b0100: dest_out <= 2'b10;
	4'b1000: dest_out <= 2'b11;
	default: dest_out <= dest_out;

      endcase // case (dest_enc)
   end



endmodule // glitchless_2b_cdc
