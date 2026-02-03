//
//  Generic SPI Controller
//
//  aquinn -- 10/3/2025
//  This block is intended to interface with the generic spi peripheral
//  ASIC control block.

module generic_spi_controller
#(
  parameter integer MEM_DEPTH=64
) (
   input logic 	       axi_clk,
   input logic 	       axi_resetn,

   input logic 	       master_spi_clk,
   output logic        spi_clk_gated,
   input logic 	       poci,
   output logic        pico,
   output logic        cs_b,

   // ** Controller Memory Interface **   
   // 32b word to write to controller memory
   input logic [31:0]  mem_write,
   // Controller memory is written when this signal is high.
   input logic 	       mem_write_strb,
   // Pointer indicating which memory word will be written next.
   output logic [31:0] mem_write_ptr,
   // Assert this signal to clear the memory pointer.
   input logic 	       mem_write_ptr_reset,
    // 32b word to read from controller memory
   output logic [31:0] mem_read,
   // Controller memory is written when this signal is high.
   input logic 	       mem_read_strb,
   // Pointer indicating which memory word will be written next.
   output logic [31:0] mem_read_ptr,
   // Assert this signal to clear the memory pointer.
   input logic 	       mem_read_ptr_reset,

   //Status output counting number of transactions that have been launched.
   output logic [31:0] transaction_count,
   
   input logic [31:0]  transaction_len,
   //Strobe signal to trigger SPI transaction.
   input logic 	       run,

   input logic [31:0]  loop_pattern,
   input logic [7:0]   loop_pattern_len,
   input logic [31:0]  loop_iters,
   // Loop Mode: 0 = no loop, 1 = loop up to loop_iters, 2 = infinite loop.
   input logic [2:0]   loop_mode,
   output logic [31:0] loop_counter,

   output logic [2:0]  status
   );

   // ********** Signal Definitions **********
   
   typedef enum        logic[1:0] {
				   READY=0,
				   TRANSACTION=1,
				   LOOP=2,
				   DONE=3
				   } FSM_State;

   FSM_State state, next_state, state_axi;

   logic 	       spi_clk;
   logic 	       cs_b_axi;
   
   
   
   logic 	       triggered, next_triggered, triggered_spi_clk;

   assign status = {triggered, state_axi};
   

   //SPI controller memory
   logic [(MEM_DEPTH-1):0][31:0] write_memory;
   logic [(MEM_DEPTH-1):0][31:0] read_memory;

   logic 			 prev_mem_write_strb;
   
  
   
   // ********** Memory Read/Write via AXI **********
   assign mem_read = read_memory[mem_read_ptr];
   always_ff @(posedge axi_clk, negedge axi_resetn) begin
      if (~axi_resetn) begin
	 mem_write_ptr <= 0;
	 mem_read_ptr <= 0;
	 prev_mem_write_strb <= 0;
	 
      end
      else begin
	 if (mem_write_ptr_reset) mem_write_ptr <= 0;
	 if (mem_read_ptr_reset) mem_read_ptr <= 0;

	 //For wstrb only, delay by one clock cycle to ensure the user's newly-entered
	 //data is captured.
	 if (prev_mem_write_strb) begin
	    write_memory[mem_write_ptr] <= mem_write;
	    mem_write_ptr <= mem_write_ptr + 1;
	 end
	 if (mem_read_strb) begin
	    mem_read_ptr <= mem_read_ptr + 1;
	 end

	 prev_mem_write_strb <= mem_write_strb;
	 
	 
      end // else: !if(~axi_resetn)
   end // always_ff @ (posedge axi_clk, negedge axi_resetn)



   // TRIGGER CDC LOGIC
   // Trigger signal is a 1-cycle pulse in the AXI clock domain.
   // This pulse is latched by the "triggered" signal, which
   // remains high until the serial transaction starts (status=1)
   always_ff @(posedge axi_clk, negedge axi_resetn) begin
      if (~axi_resetn) begin
	 triggered <= 1'b0;
	 transaction_count <= 1'b0;
      end
      else begin
	 triggered <= next_triggered;
	 if (triggered == 1'b0 && next_triggered == 1'b1) transaction_count <= transaction_count + 1;
      end
   end

   always_comb begin
      if (run)
	next_triggered = 1'b1;
      else if ((cs_b_axi == 1'b1) && (state_axi == DONE))
	next_triggered = 1'b0;
      else
	next_triggered = triggered;
   end





   `ifndef NO_CDC

   glitchless_2b_cdc cdc_state (.dest_out(state_axi),
				.dest_clk(axi_clk),
				.src_in(state),
				.src_clk(master_spi_clk));
   

   xpm_cdc_single cdc_triggered (.dest_out(triggered_spi_clk),
                                  .dest_clk(master_spi_clk),
                                  .src_clk(axi_clk),
                                  .src_in(triggered));

    xpm_cdc_single cdc_cs_b (.dest_out(cs_b_axi),
                                  .dest_clk(axi_clk),
                                  .src_clk(master_spi_clk),
                                  .src_in(cs_b));


`else

   assign state_axi = state;
   assign triggered_spi_clk = triggered;
   assign cs_b_axi = cs_b;

`endif

   // Currently we are transmitting bit {current_bit} of word {current_word}
   logic [15:0] current_word;
   logic [7:0] 	current_bit;
   logic [7:0] 	current_bit_loop;
   logic [31:0] bits_transmitted;
   assign bits_transmitted = current_bit + current_word*32;
   

   logic 	next_cs_b;
   //logic 	next_pico;
   //logic 	last_poci;

   logic 	spi_clk_phase;
   logic 	next_spi_clk_phase;

   assign spi_clk_gated = spi_clk_phase;
   
   assign next_cs_b = ~triggered_spi_clk || (state == DONE);

   
   // ** SPI_CLK GENERATION **
   // spi_clk_phase alters between 0 and 1, unless:
   // a) We are in reset; then we start with phase=0
   // b) The next master_spi_clk edge will bring a cs_b transition;
   //    in this case we force the next phase to be 0, so that there
   //    will either be no edge during the cs_b transition or a negative
   //    edge (but not a positive edge, which could bring a race condition.)
  
   always_comb begin
      if (~axi_resetn)
	next_spi_clk_phase = 0;
      else begin
	 if (cs_b != next_cs_b)
	   next_spi_clk_phase = 0;
	 else
	   next_spi_clk_phase = ~spi_clk_phase;
      end
   end

   
   always_ff @(posedge master_spi_clk) begin
      cs_b <= next_cs_b;
      spi_clk_phase <= next_spi_clk_phase;
   end
   
   
   // ********** SPI TRANSACTION LOGIC **********
   // 1) Transaction starts when "triggered_spi_clk" is fired. We are guaranteed that the state of
   //    the controller is "READY" because ~triggered_spi_clk asynchronously resets it to this state.
   //    There may or may not be a falling edge of cs_b here, but either way it'll be ignored b/c cs_b=1
   // 2) Exactly one master_spi_clk cycle later there will be a posedge of spi_clk_phase. Because write_memory[0]
   //    is already available on pico in the READY state, it will be captured by the peripheral.
   // 3) On the first falling edge where cs_b=0, we will advance to state=TRANSACTION and clock the
   //    bit that the spi_peripheral transmitted on the first posedge. 
   
   //State-dependent pico assignment logic.
   always_comb begin
      if (state == TRANSACTION || state == READY)
	pico = write_memory[current_word][current_bit];
      else if (state == LOOP)
	pico = loop_pattern[current_bit_loop];
      else //state == DONE
	pico = 1'b0;
   end

   // next_state logic
   always_comb begin
      // Case 1: If we are READY and we are triggered, go to transaction.
	 if (state == READY) next_state = TRANSACTION;
	 // Case 2: If in transaction, continue while bits_transmitted < transaction_len, then go to loop or done.
	 else if (state == TRANSACTION) begin
	    if (bits_transmitted >= transaction_len-1) begin
	       if (loop_mode > 0) next_state = LOOP;
	       else next_state = DONE;
	    end
	    else next_state = TRANSACTION;
	 end
	 // Case 3: If in LOOP, continue until the last cycle of the last loop_iter, then go to DONE.
	 else if(state == LOOP) begin
	    if (loop_mode == 0) next_state = DONE;
	    else begin
	      if (loop_counter >= loop_iters-1 && (current_bit_loop >= 31 || current_bit_loop >= loop_pattern_len-1) && loop_mode == 1) next_state = DONE;
	      else next_state = LOOP;
	    end
	 end
	 // Case 4: If we are at DONE, stay here until no longer triggered.
	 else  next_state = DONE;
   end
   
   always_ff @(posedge master_spi_clk, negedge triggered_spi_clk) begin

      // ~~~~ State Machine Logic ~~~~
      if(~triggered_spi_clk) begin
	 state <= READY;
	 current_bit <= 0;
	 current_word <= 0;
	 loop_counter <= 0;
	 current_bit_loop <= 0;
	 
      end
      else begin

	 // On each FALLING EDGE of spi_clk after the command starts (cs_b low),
	 // we do the following...
	 if (spi_clk_phase == 1'b1 && next_spi_clk_phase == 1'b0 && cs_b == 1'b0) begin
	    //(1) Advance state
	    state <= next_state;

	    //(2) clock the peripheral's response into read_memory.
	    if (state == TRANSACTION || next_state == TRANSACTION ) 
	      read_memory[current_word][current_bit] <= poci;
	 
	    
	    //(3) Update current_bit and current_word, which combinationally update PICO.
	    if (next_state == TRANSACTION ) begin 
	    
	       if(bits_transmitted <= transaction_len) begin
		  if(current_bit == 31) begin
		     current_bit <= 0;
		     current_word <= current_word + 1;
		  end
		  else current_bit <= current_bit + 1;
	       end
	       
	    end 
	    else if (state == LOOP) begin
	       if (current_bit_loop >= 31 || current_bit_loop >= loop_pattern_len-1) begin
		  current_bit_loop <= 0;
		  loop_counter <= loop_counter + 1;
	       end
	       else
		 current_bit_loop <= current_bit_loop+1;
	    end
	    
	    else begin //NO TRANSACTION (READY or DONE)
	       current_word <= 0;
	       current_bit <= 0;
	    
	    end // else: !if(state == LOOP)
	 end // if (spi_clk_phase == 1'b1 && next_spi_clk_phase == 1'b0)	 
      end // else: !if(~triggered_spi_clk)
   end


endmodule // generic_spi_controller
