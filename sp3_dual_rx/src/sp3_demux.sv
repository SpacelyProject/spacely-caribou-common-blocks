//
//    SP3_DEMUX
// 
//
// The SP3 demultiplexer block is a critical part of the FPGA receiver for
// data from SPROCKET3. Data from SPROCKET3 arrives as two interleaved
// data streams which each have an lpGBT format. That is, the incoming data
// stream is {a1, b1, a2, b2, a3, b3...} where {a1, a2, a3, ...} is one
// lpGBT-format data frame, and {b1, b2, b3...} is a second frame.
//
// This block receives data on a 32-bit-wide bus from the MGT RX at 320 Mb/s.
// It demultiplexes this data and sends it out on TWO 32-bit-wide buses
// (word1 and word2) at 160 Mb/s. 
//
// Additionally, this block implements bitslip logic. If bitslipN is asserted
// for two consecutive cycles of mgtclk, then word1 should rotate to the left
// by 1 bit and stay rotated. 
module sp3_demux(
		 // -- Interface with MGT
		 input logic 	     mgtclk,		 
		 input logic [31:0]  mgtword,
		 
		 // -- Reset --
		 input logic 	     reset,

		 // -- Interface with lpgbtfpga-uplink --
		 output logic 	     mgtclk_div2,
		 
		 output logic [31:0] word_a,
		 output logic [31:0] word_b,

		 input logic 	     bitslip_a,
		 input logic 	     bitslip_b
		 
);

   //NOTE:
   // mgtword_1 and _2 are the two consecutive words that appear
   // from the MGT. Each of them is interleaved from bits that
   // should go to receiver A and receiver B
   // mgtword_1 = {a0,  b0,  a1,  b1, ...  a15, b15}
   // mgtword_2 = {a16, b16, a17, b17, ... a31, b31}
   // Meanwhile, word_a and word_b are the de-interleaved words
   // which should be sent to the two receivers:
   // word_a = {a0, a1, a2, a3, ... a31}
   // word_b = {b0, b1, b2, b3, ... b31}
   // In order to implement the bitslip logic, we actually
   // hold 2x words in memory for both a and b. a0/b0 is
   // the word we immediately got from the logic. a1/b1 is the
   // previous word.
   // word_a_int and word_b_int merely merge these vectors.
   
   logic 			     phase;

   logic [31:0] 		     mgtword_1, mgtword_2;

   logic [63:0] 		     word_a_int, word_b_int;
   logic [31:0] 		     word_a0_int, word_b0_int;
   logic [31:0] 		     word_a1_int, word_b1_int;
   
   
   

   /////////////////
   //Clock divider//
   /////////////////
   
   BUFGCE_DIV #(.BUFGCE_DIVIDE(2)) uDiv2 (.I(mgtclk), .O(mgtclk_div2), .CE(1'b1), .CLR(reset));
   
   //always @(posedge mgtclk, posedge reset) begin
   //   if (reset)
   //	mgtclk_div2 <= 0;
   // else 
   //	mgtclk_div2 <= ~mgtclk_div2;
   //end


   //////////////////
   //Demultiplexing//
   //////////////////

   //Alternate between sending mgtword to mgtword_a or mgtword_b.
   always @(posedge mgtclk) begin
      if(reset) begin
	 mgtword_1 <= 0;
	 mgtword_2 <= 0;
	 word_a1_int <= 0;
	 word_b1_int <= 0;
	 phase <= 0;
      end
      else begin
	 if(phase == 0) begin
	    mgtword_1 <= mgtword;
	    phase <= 1;
	    word_a1_int <= word_a0_int;
	    word_b1_int <= word_b0_int;
	 end
	 else begin
	    mgtword_2 <= mgtword;
	    phase <= 0;
	 end
      end
   end 

   //Split the data between word1 and word2 bitwise.
   genvar i;
   generate
      for (i=0; i<16;i=i+1) begin
	 //word1 gets the even bits
	 assign word_a0_int[i] = mgtword_1[2*i];
	 assign word_a0_int[16+i] = mgtword_2[2*i];

	 //word2 gets the odd bits
	 assign word_b0_int[i] = mgtword_1[2*i+1];
	 assign word_b0_int[16+i] = mgtword_2[2*i+1];
      end
   endgenerate


   /////////////////
   //Bitslip logic//
   /////////////////

   // See UG576 Page 243 for functional description of RXslide.

   // Note that bitslip need not be more than 32 bits, as this would
   // lead back to the same frame alignment.
   // We cannot "twist" the data by looping from front to back. 

   logic [5:0] bitslip_a_counter, bitslip_b_counter;
   logic [5:0] bitslip_a_val, bitslip_b_val;

   //Functional Description:
   //When bitslip_X is asserted, the bitslip_X_counter gets set to
   //5'b10000 = 16,
   
   always_ff @(posedge mgtclk, reset) begin
      if (reset) begin
	 bitslip_a_counter <= 0;
	 bitslip_a_val <= 0;
      end
      else begin
	 if(bitslip_a && bitslip_a_counter == 0)
	   bitslip_a_counter <= 5'b10000;
	 else begin
	    if(bitslip_a_counter[4]) begin
	       bitslip_a_val <= bitslip_a_val + 1;
	       bitslip_a_counter <= bitslip_a_counter - 1;
	    end
	    else if (bitslip_a_counter > 0) begin
	       bitslip_a_counter <= bitslip_a_counter - 1;
	    end
	 end // else: !if(bitslip_a)
      end // else: !if(reset)
   end // always_ff @ (posedge mgtclk, reset)
   
   always_ff @(posedge mgtclk, reset) begin
      if (reset) begin
	 bitslip_b_counter <= 0;
	 bitslip_b_val <= 0;
      end
      else begin
	 if(bitslip_b && bitslip_b_counter == 0)
	   bitslip_b_counter <= 5'b10000;
	 else begin
	    if(bitslip_b_counter[4]) begin
	       bitslip_b_val <= bitslip_b_val + 1;
	       bitslip_b_counter <= bitslip_b_counter - 1;
	    end
	    else if (bitslip_b_counter > 0) begin
	       bitslip_b_counter <= bitslip_b_counter - 1;
	    end
	 end // else: !if(bitslip_b)
      end // else: !if(reset)
   end // always_ff @ (posedge mgtclk, reset)
	 

   assign word_a_int = {word_a1_int, word_a0_int};
   assign word_b_int = {word_b1_int, word_b0_int};
   
   
   assign word_a = word_a_int[(63-bitslip_a_val) -: 32];
   assign word_b = word_b_int[(63-bitslip_b_val) -: 32];
	    
	    

endmodule // sp3_demux
