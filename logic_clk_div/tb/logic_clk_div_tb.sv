module tb();



   logic master_clk;
   logic axi_resetn;
   logic output_clk;
   logic [7:0] divider_cycles;
   

   always begin
      #10;
      master_clk = ~master_clk;
   end
   
   

   logic_clk_div #(.COUNTER_BITS(8)) dut (.*);



   initial begin
      axi_resetn = 0;
      master_clk = 0;
      divider_cycles = 0;

      //(1) CHECK that output_clk is free-running even during axi reset.
      #100;

      axi_resetn = 1;

      #100;

      divider_cycles = 1;


      #10000;

      divider_cycles = 17;


      #10000;

      $finish();
      

   end // initial begin

   initial begin
      $dumpfile("DB.vcd");
      $dumpvars(0, tb); //Dump variables from level 0 and up 
   end

endmodule // tb

      
