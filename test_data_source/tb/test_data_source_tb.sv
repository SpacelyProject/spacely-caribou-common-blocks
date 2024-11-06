module tb();


   logic [31:0] control;
   logic 	axi_clk, axi_resetn, data_rdStrobe;
   logic [31:0] data;
   

   test_data_source dut (.*);
   
   always begin
      #10;
      axi_clk = ~axi_clk;
   end

   initial begin
      control = 0;
      axi_clk = 0;
      data_rdStrobe = 0;
      
      axi_resetn = 1;

      #1;
      axi_resetn = 0;
      #1;
      axi_resetn = 1;

      @(posedge axi_clk);
      control = 1; // Count up on each clock cycle.
      @(posedge axi_clk);
      @(posedge axi_clk);
      @(posedge axi_clk);
      @(posedge axi_clk);
      @(posedge axi_clk);
      control = 2; // Count only on rdStrobe.

      @(posedge axi_clk);
      @(posedge axi_clk);
      data_rdStrobe = 1;
      @(posedge axi_clk);
      data_rdStrobe = 0;
      @(posedge axi_clk);
      @(posedge axi_clk);
      @(posedge axi_clk);
      data_rdStrobe = 1;
      @(posedge axi_clk);
      data_rdStrobe = 0;
      @(posedge axi_clk);
      @(posedge axi_clk);
      @(posedge axi_clk);
      control = 4;

      #500;
      $finish();
   end // initial begin

    initial begin
      $dumpfile("DB.vcd");
      $dumpvars(0, tb); //Dump variables from level 0 and up 
   end


endmodule // tb
