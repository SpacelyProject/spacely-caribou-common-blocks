module tb();

   // AXI Interface
   logic wave_clk;
   logic axi_clk;
   logic axi_resetn;
   logic run;
   logic write_channel_wrStrobe;
   logic read_channel_rdStrobe;
   
   
   logic [7:0] write_channel;
   logic [7:0] read_channel;
   


   // I/Os
   logic [7:0] output_signals;
   logic [7:0] input_signals;

   
   always begin
      #1000;
      wave_clk = ~wave_clk;
   end

   always begin
      #10;
      axi_clk = ~axi_clk;

   end
   

   Arbitrary_Pattern_Generator #(.NUM_SIG(8), .NUM_SAMP(128)) dut (.*);




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
      

      //AXI reset
      @(posedge axi_clk);
      axi_resetn = 0;
      @(posedge axi_clk);
      axi_resetn = 1;

      // Wait at least 1 wave_clk period to make sure we reset to a good state.
      #1200;
      
      //Write a pattern into memory.
      @(posedge axi_clk); #5;
      write_channel = 7'b0000001;
      write_channel_wrStrobe = 1;
      @(posedge axi_clk); #5;
      write_channel = 7'b0000011;
      @(posedge axi_clk); #5;
      write_channel = 7'b0000111;
      @(posedge axi_clk); #5;
      write_channel = 7'b0001111;
      @(posedge axi_clk); #5;
      write_channel = 7'b0011111;
      @(posedge axi_clk); #5;
      write_channel = 7'b0111111;
      @(posedge axi_clk); #5;
      write_channel_wrStrobe = 0;

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
      
      read_channel_rdStrobe = 1;

      //Wait 15 axi clock cycles, should be enough to read out the data we captured.
      #150;
      
      read_channel_rdStrobe = 0;

      #20;
      

      $finish();

      // EXPECTED BEHAVIOR:
      // (1) output_signals should display the ramp pattern that we programmed.
      // (2) The captured data that appears on read_channel should be [42,85,42,85,0,127] 
      

   end

   initial begin
      $dumpfile("DB.vcd");
      $dumpvars(0, tb); //Dump variables from level 0 and up 
   end



endmodule // tb
