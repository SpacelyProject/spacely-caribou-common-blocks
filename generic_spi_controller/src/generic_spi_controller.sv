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

   input logic 	       spi_clk,
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
   output logic [31:0]  mem_read,
   // Controller memory is written when this signal is high.
   input logic 	       mem_read_strb,
   // Pointer indicating which memory word will be written next.
   output logic [31:0] mem_read_ptr,
   // Assert this signal to clear the memory pointer.
   input logic 	       mem_read_ptr_reset,

   //Status output counting number of transactions that have been launched.
   output logic [31:0] transaction_count,
   
   input logic [31:0]  spi_len,
   //Strobe signal to trigger SPI transaction.
   input logic 	       spi_strb,

   output logic [2:0] status
   );

   // ********** Signal Definitions **********
   
   typedef enum        logic[1:0] {
				   IDLE=0,
				   TRANSACTION=1,
				   DONE=2
				   } FSM_State;

   FSM_State state, state_axi;

   
   logic 	       triggered, next_triggered, triggered_spi_clk;

   assign status = {triggered, state_axi};
   

   //SPI controller memory
   logic [(MEM_DEPTH-1):0][31:0] write_memory;
   logic [(MEM_DEPTH-1):0][31:0] read_memory;
   
  
   
   // ********** Memory Read/Write via AXI **********
   assign mem_read = read_memory[mem_read_ptr];
   always_ff @(posedge axi_clk, negedge axi_resetn) begin
      if (~axi_resetn) begin
	 mem_write_ptr <= 0;
	 mem_read_ptr <= 0;
	 
      end
      else begin
	 if (mem_write_ptr_reset) mem_write_ptr <= 0;
	 if (mem_read_ptr_reset) mem_read_ptr <= 0;

	 if (mem_write_strb) begin
	    write_memory[mem_write_ptr] <= mem_write;
	    mem_write_ptr <= mem_write_ptr + 1;
	 end
	 if (mem_read_strb) begin
	    mem_read_ptr <= mem_read_ptr + 1;
	 end
	 
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
      if (spi_strb)
	next_triggered = 1'b1;
      else if (state_axi == DONE)
	next_triggered = 1'b0;
      else
	next_triggered = triggered;
   end





   `ifndef NO_CDC

   glitchless_2b_cdc cdc_state (.dest_out(state_axi),
				.dest_clk(axi_clk),
				.src_in(state),
				.src_clk(spi_clk));
   

   xpm_cdc_single cdc_triggered (.dest_out(triggered_spi_clk),
                                  .dest_clk(spi_clk),
                                  .src_clk(axi_clk),
                                  .src_in(triggered));


`else

   assign state_axi = state;
   assign triggered_spi_clk = triggered;
   

`endif

   // Currently we are transmitting bit {current_bit} of word {current_word}
   logic [15:0] current_word;
   logic [7:0] 	current_bit;
   logic [31:0] bits_transmitted;
   assign bits_transmitted = current_bit + current_word*32;

   
   // ********** SPI TRANSACTION LOGIC **********
   always_ff @(posedge spi_clk) begin

      // ~~~~ State Machine Logic ~~~~
      // If not triggered, status is idle.
      // If we are triggered, status is transaction, unless we're
      // at the very last bit of the transaction in which case status is done.
      if(~triggered_spi_clk) 
	      state <= IDLE;
      else begin 
	 if (state == TRANSACTION && (bits_transmitted >= spi_len)) 
	    state <= DONE;
	 else begin
	    // If we are in the DONE state, but still triggered, wait for triggered
	    // to go to 0 to avoid immediate re-triggering.
	    if (state == DONE)
	      state <= DONE;
	    else 
	      state <= TRANSACTION;
	 end
      end

      // ~~~~ Outputs Based on State ~~~~
      if (state == TRANSACTION) begin // TRANSACTION IN PROGRESS

	 if(bits_transmitted <= spi_len) begin
	   if(current_bit == 31) begin
	      current_bit <= 0;
	      current_word <= current_word + 1;
	   end
	   else current_bit <= current_bit + 1;
	 end

	 pico <= write_memory[current_word][current_bit];
	 read_memory[current_word][current_bit] <= poci;
	 cs_b <= 1'b0;
	 
      end

      else begin //NO TRANSACTION (IDLE or DONE)
	 cs_b <= 1'b1;
	 pico <= 1'b0;
	 current_word <= 0;
	 current_bit <= 0;

      end       
   end






endmodule // generic_spi_peripheral
