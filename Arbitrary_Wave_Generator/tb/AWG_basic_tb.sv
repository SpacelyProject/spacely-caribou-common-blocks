module tb();

   // AXI Interface
   logic wave_clk;
   logic axi_clk;
   logic axi_resetn;
   logic run;
   logic clear;
   logic [31:0] dbg_error;
   
   logic write_channel_wrStrobe;
   logic read_channel_rdStrobe;
   logic [31:0] n_samples;
   
   
   
   logic [11:0] write_channel;
   logic [11:0] read_channel;
   logic [7:0] control;
   
   


   // I/Os
   logic [11:0] output_signals;
   logic [11:0] input_signals;

   
   always begin
      #1000;
      wave_clk = ~wave_clk;
   end

   always begin
      #10;
      axi_clk = ~axi_clk;

   end
   

   Arbitrary_Pattern_Generator #(.NUM_SIG(12), .NUM_SAMP(128)) dut (.*);




   initial begin
      //Initial reset
      wave_clk = 0;
      axi_resetn = 1;
      axi_clk = 0;
      input_signals = 0;
      run = 0;
      write_channel = 0;
      read_channel_rdStrobe = 0;
      write_channel_wrStrobe = 0;
      n_samples = 6;
      control = 0;
      

      //AXI reset
      @(posedge axi_clk);
      axi_resetn = 0;
      @(posedge axi_clk);
      axi_resetn = 1;

      //clear
      clear = 1;
      @(posedge axi_clk);
      clear = 0;
      

      // Wait at least 1 wave_clk period to make sure we reset to a good state.
      #1200;
      
      //Write a pattern into memory.
      @(posedge axi_clk); #5;
      write_channel = 7'b0000001;
      write_slow();
      write_channel = 7'b0000011;
      write_slow();
      write_channel = 7'b0000111;
      write_slow();
      write_channel = 7'b0001111;
      write_slow();
      write_channel = 7'b0011111;
      write_slow();
      write_channel = 7'b0111111;
      write_slow();

      
      // Try reading back 2x times to guarantee it works.
      readback();
      readback();

      //Try to trigger a double_rdStrobe error
      read_channel_rdStrobe = 1;
      @(posedge axi_clk); #5;
      @(posedge axi_clk); #5;
      read_channel_rdStrobe = 0;
      
      
      
      // Engage looping mode
      control = 1;
      //Pulse Run 
      run = 1;
      @(posedge axi_clk); #5;
      
      run = 0;

      #30000;

      // Turn off looping mode
      control = 0;

      #10000;

      clear = 1;
      @(posedge axi_clk); #5;
      clear = 0;
      
      
      #10000;
      
      

      $finish();

      // EXPECTED BEHAVIOR:
      // (1) output_signals should display the ramp pattern that we programmed.
      // (2) The captured data that appears on read_channel should be [42,85,42,85,0,127]
      // (3) When control = 1 is asserted, the pattern generator should loop until control = 0 is asserted.
      // (4) Should see dbg_error = 0b10 after the double rdStrobe
      // (5) Should see read_buffer and write_buffer being cleared toward the end.
      

   end

   initial begin
      $dumpfile("DB.vcd");
      $dumpvars(0, tb); //Dump variables from level 0 and up 
   end



   task write_slow;
      @(posedge axi_clk); #5;
      @(posedge axi_clk); #5;
      write_channel_wrStrobe = 1;
      @(posedge axi_clk); #5;
      write_channel_wrStrobe = 0;
      @(posedge axi_clk); #5;
      @(posedge axi_clk); #5;
   endtask


   task read_slow;
      @(posedge axi_clk); #5;
      @(posedge axi_clk); #5;
      read_channel_rdStrobe = 1;
      @(posedge axi_clk); #5;
      read_channel_rdStrobe = 0;
      @(posedge axi_clk); #5;
      @(posedge axi_clk); #5;
   endtask
   
   task readback;
      
   //Pulse Run 
      run = 1;
      @(posedge axi_clk); #5;
      
      run = 0;

      //Supply some interesting signals to read.
      @(posedge wave_clk); #5;
      input_signals = 7'b0101010;
      @(posedge wave_clk); #5;
      input_signals = 7'b1010101;
      @(posedge wave_clk); #5;
      input_signals = 7'b0101010;
      @(posedge wave_clk); #5;
      input_signals = 7'b1010101;
      @(posedge wave_clk); #5;
      input_signals = 7'b0000000;
      @(posedge wave_clk); #5;
      input_signals = 7'b1111111;
      @(posedge wave_clk); #5;
      input_signals = 7'b0;

      //Allow the transaction to complete before trying to read.
      #2200;

      //Read out 7 cycles of the data we captured.
      read_slow();
      read_slow();
      read_slow();
      read_slow();
      read_slow();
      read_slow();
      read_slow();

      #20;
   endtask // readback
   

endmodule // tb
