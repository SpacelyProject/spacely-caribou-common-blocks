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

   // --- DEMULTIPLEXING CONCEPT ---
   // MGTWORD
   // mgtword_0 and _1 are the two consecutive words that appear
   // from the MGT. Each of them is interleaved from bits that
   // should go to receiver A and receiver B
   // mgtword_0 = {a0,  b0,  a1,  b1, ...  a15, b15}
   // mgtword_1 = {a16, b16, a17, b17, ... a31, b31}
   // Because data arrives LSB-first, mgtword_0 is newer than mgtword_1.
   // When we get another mgtword, we send _0 --> _1 and put the new
   // word as _0.
   //
   // WORD_A/WORD_B
   // Meanwhile, word_a and word_b are the de-interleaved words
   // which should be sent to the two receivers:
   // word_a = {a0, a1, a2, a3, ... a31}
   // word_b = {b0, b1, b2, b3, ... b31}
   // A simple combinational operation can generate these from
   // mgtword_0 and mgtword_1.
   // Note that 1/2 of word_a and 1/2 of word_b are delivered each
   // mgtclk cycle, so a full new word_a and word_b are only available
   // every mgtclk_div2.
   //
   // BITSLIP LOGIC
   // In order to implement the bitslip logic, we actually hold the most
   // recent TWO word_a's and word_b's in memory, and we define
   // a capture window which is offset from those words as what is put
   // out everty mgtclk_div2.
   //
   //  <-->[0 wd_ao 31]
   //  [0 wd_a1 31][0 wd_a2 31]
   //
   // next cycle:
   //  <-->[0 wd_ao 31]
   //  [0 wd_a0 31][0 wd_a1 31][0 wd_a2 31]

   logic [31:0] 		     mgtword_0, mgtword_1;

   logic [63:0] 		     word_a_merged, word_b_merged;
   logic [31:0] 		     word_a_int, word_b_int;
   logic [31:0] 		     word_a0, word_b0, word_a1, word_b1;
   
   
   

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

   // MULTIPLEXING CONCEPT: 

   //Alternate between sending mgtword to mgtword_a or mgtword_b.
   always @(posedge mgtclk) begin
      if(reset) begin
	 mgtword_0 <= 0;
	 mgtword_1 <= 0;
	 //word_a1_int <= 0;
	 //word_b1_int <= 0;
	 //phase <= 0;
      end
      else begin
	 mgtword_0 <= mgtword_1; // LSB=Old
	 mgtword_1 <= mgtword;   // MSB=New
	 
	 /*if(phase == 0) begin
	    mgtword_1 <= mgtword;
	    phase <= 1;
	    word_a1_int <= word_a0_int;
	    word_b1_int <= word_b0_int;
	 end
	 else begin
	    mgtword_2 <= mgtword;
	    phase <= 0;
	 end*/
      end
   end 

   //Split the data between word1 and word2 bitwise.
   genvar i;
   generate
      for (i=0; i<16;i=i+1) begin
	 //word1 gets the even bits
	 assign word_a_int[i] = mgtword_0[2*i];
	 assign word_a_int[16+i] = mgtword_1[2*i];

	 //word2 gets the odd bits
	 assign word_b_int[i] = mgtword_0[2*i+1];
	 assign word_b_int[16+i] = mgtword_1[2*i+1];
      end
   endgenerate


   always @(posedge mgtclk_div2) begin
      if (reset) begin
	 word_a0 <= 0;
	 word_a1 <= 0;
	 word_b0 <= 0;
	 word_b1 <= 0;
      end
      else begin
	 word_a0 <= word_a1;   //LSB=First/Old
	 word_a1 <= word_a_int;//MSB=Last/new
	 word_b0 <= word_b1;
	 word_b1 <= word_b_int;
      end // else: !if(reset)
   end // always @ (posedge mgtclk_div2)
   
   
   /////////////////
   //Bitslip logic//
   /////////////////

   // See UG576 Page 243 for functional description of RXslide.

   // Note that bitslip need not be more than 32 bits, as this would
   // lead back to the same frame alignment.
   // We cannot "twist" the data by looping from front to back. 

   //bitslip_X_counter is a delay counter to prevent from double-counting bitslip.
   logic [5:0] bitslip_a_counter, bitslip_b_counter;
   //bitslip_X_val is the amount that we actually slip by (0~31)
   //bitslip_X_val is intentionally sized at 5 bits so it will encode 0~31 before wrapping.
   logic [4:0] bitslip_a_val, bitslip_b_val;

   //Functional Description:
   //When bitslip_X is asserted, the bitslip_X_counter gets set to
   //5'b10000 = 16,
   
   always_ff @(posedge mgtclk, posedge reset) begin
      if (reset) begin
	 bitslip_a_counter <= 0;
	 bitslip_a_val <= 0;
      end
      else begin
	 //when bitslip_X is asserted, we start the counter. On the
	 //very next cycle, bitslip_a_val will be incremented.
	 //Until bitslip_X_counter gets to zero, everything else is ignored.
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
   
   always_ff @(posedge mgtclk, posedge reset) begin
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
	 
   //word_0 is first, and LSB is first. So it's appropriate
   //to put word_0's MSB next to word_1's LSB. :)
   assign word_a_merged = {word_a1, word_a0};
   assign word_b_merged = {word_b1, word_b0};
   
   
   assign word_a = word_a_merged[(bitslip_a_val) +: 32];
   assign word_b = word_b_merged[(bitslip_b_val) +: 32];
	    
	    

endmodule // sp3_demux
