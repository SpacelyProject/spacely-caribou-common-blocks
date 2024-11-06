module tb ();

   //AXI inputs
   logic axi_clk;
   logic reset;
   logic snapshot;

   //tclk inputs
   logic tclk;
   logic enable_a;
   logic enable_b;

   //Outputs from the block.
   logic [31:0] counter_a_result;
   logic [10:0] counter_b_result;
   
   // 10 ns = 100 MHz
   always begin
      #5 axi_clk <= ~axi_clk;
   end

   // 25 ns = 40 MHz
   always begin
      #12.5 tclk <= ~tclk;
   end


   sync_counter #(.COUNTER_A_BITS(32), .OFFSET_A_BITS(1), .COUNTER_B_BITS(11), .OFFSET_B_BITS(0)) dut(.*);
   

   initial begin
      axi_clk = 0;
      tclk = 0;
      reset = 0;
      snapshot = 0;

      //Reset hold for at least 3 clock cycles.
      @(posedge axi_clk);
      reset = 1;
      #30;
      reset = 0;

      @(posedge tclk);
      enable_a = 1;
      @(posedge tclk);
      @(posedge tclk);
      @(posedge tclk);
      @(posedge tclk);
      enable_b = 1;
      @(posedge tclk);
      @(posedge tclk);
      @(posedge tclk);
      snapshot = 1;
      @(posedge tclk);
      @(posedge tclk);
      @(posedge tclk);
      @(posedge tclk);
      enable_b = 0;
      @(posedge tclk);
      @(posedge tclk);
      snapshot=0;

      #100;

      $finish();
      
      
   end
   
   initial begin
      $dumpfile("DB.vcd");
      $dumpvars(0, tb); //Dump variables from level 0 and up 
   end   


endmodule // tb
