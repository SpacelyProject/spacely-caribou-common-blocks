module simple_serial
(
 // I/O Ports
 //Externally provided clock which clocks the serial transaction.
 input logic 	     serial_clk,
 input logic 	     axi_clk,
 input logic 	     axi_resetn,
 input logic 	     poci,
 output logic 	     pico,
 output logic 	     cs_b,
 output logic [5:0]  dbg_current_bit,
 output logic [2:0]  dbg_status,

 // AXI Clocked Registers
 //Trigger for the start of a serial transaction.
 input logic 	     trigger,
 input logic [31:0]  write_data,
 output logic [31:0] read_data,
 input logic [31:0]  data_len,
 output logic [2:0]  status,
 output logic [31:0] transaction_count
		     );


   typedef enum logic[1:0] {
			    IDLE=0,
			    TRANSACTION=1,
			    DONE=2
			    } FSM_State;
   

   FSM_State 	     state;   
   logic             triggered, next_triggered;
   logic [31:0]      next_transaction_count;
   logic [5:0] 	     current_bit;

   // Debug outputs which can be probed by ILA
   assign status = {triggered,state};
   assign dbg_current_bit = current_bit;
   assign dbg_status = status;
   

   //Reset Logic:
   // * On AXI reset, triggered = 0.
   // * Thus, regardless of state, next_triggered = 0
   // * This forces state = IDLE on the next serial_clk
   // NOTE: we should have at least one serial_clk before we start using this block.
   
 
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
      if (trigger)
	next_triggered = 1'b1;
      else if (state == DONE)
	next_triggered = 1'b0;
      else
	next_triggered = triggered;
   end
   
   
   
   always_ff @(posedge serial_clk) begin

      // If not triggered, status is idle.
      // If we are triggered, status is transaction, unless we're
      // at the very last bit of the transaction in which case status is done.
      if(~triggered) 
	state <= IDLE;
      else begin 
	 if (state == TRANSACTION && (current_bit == data_len-1 || current_bit == 31))
	   state <= DONE;
	 else
	   state <= TRANSACTION;
      end
	 
      //Status of external outputs based on simple_serial state.
      if (state == TRANSACTION) begin // TRANSACTION IN PROGRESS
	 cs_b <= 1'b0;
	 pico <= write_data[current_bit];
	 current_bit <= current_bit + 1;
	 
	 if (current_bit == 0)
	   read_data <= {31'b0, poci};
	 else
	   read_data <= read_data | (poci << current_bit);	 

	 transaction_count <= transaction_count;
	 
      end 
      else begin //NO TRANSACTION (IDLE or DONE)
	 pico <= 1'b0;
	 cs_b <= 1'b1;
	 current_bit <= 5'b0;

	 if (state == IDLE)
	   transaction_count <= transaction_count;
	 else if(state == DONE)
	   transaction_count <= transaction_count + 1;

      end       
   end


endmodule // simple_serial
