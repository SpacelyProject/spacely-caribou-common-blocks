module tb();


   logic [31:0] mgtword;
   logic mgtclk;
   logic reset;
   logic mgtclk_div2;
   logic [31:0] word_a, word_b;
   logic 	bitslip_a, bitslip_b;
   

   logic [31:0] tx_word_a = 32'b10101010111111110000000011111111;
   logic [31:0] tx_word_b = 32'b11110000111100001010101000000000;
   logic [31:0] tx_mgtword_1, tx_mgtword_2;

   int 		i = 0;
   int j =0;
   
   //Mix tx_word_a and tx_word_b together.
   genvar ix;
   generate
      for (ix=0; ix<16;ix=ix+1) begin
	 //word1 gets the even bits
	 assign tx_mgtword_1[2*ix] = tx_word_a[ix];
	 assign tx_mgtword_2[2*ix] = tx_word_a[16+ix];

	 //word2 gets the odd bits
	 assign tx_mgtword_1[2*ix+1] = tx_word_b[ix];
	 assign tx_mgtword_2[2*ix+1] = tx_word_b[16+ix];
      end
   endgenerate
		
   //Transmitter sequence
   always begin
      #1 ;
      mgtclk <= 1;
      mgtword <= tx_mgtword_1;
      #1;
      mgtclk <= 0;
      #1;
      mgtclk <= 1;
      mgtword <= tx_mgtword_2;
      #1;
      mgtclk <= 0;
   end

   
   

   sp3_demux dut(.*);


   initial begin
      mgtclk = 0;
      reset = 0;
      mgtword = 0;
      bitslip_a = 0;
      bitslip_b = 0;

      #1;
      reset = 1;
      #1;
      reset = 0;

      @(posedge mgtclk_div2);
      @(posedge mgtclk_div2);

      //assert(word_a == tx_word_a);
      //assert(word_b == tx_word_b);

    
      
      for(i=0; i<32; i=i+1) begin

	if(word_a != tx_word_a) begin
	   $display("Word not aligned, bitslipping!");
	   assert_bitslip();
	end
	else begin
	   $display("Word aligned!");
	   break;
	end
      end // for (i=0; i<32; i=i+1)
      	 	   

      @(posedge mgtclk_div2);
      @(posedge mgtclk_div2);

      assert(word_a == tx_word_a);
      assert(word_b == tx_word_b);
     

      #500;

      $finish();
      

   end // initial begin


   initial begin
      $dumpfile("DB.vcd");
      $dumpvars(0, tb); //Dump variables from level 0 and up 
   end

   task assert_bitslip();

      // Assert bitslip for at least 2 cycles
      bitslip_a = 1;
      bitslip_b = 1;
      @(posedge mgtclk);
      @(posedge mgtclk);
      @(posedge mgtclk);
      bitslip_a = 0;
      bitslip_b = 0;
      
      // Wait for at least 16 cycles.
      for(j=0; j < 17; j = j+1) begin
	 @(posedge mgtclk);
      end
      

   endtask // assert_bitslip
   

endmodule // tb



