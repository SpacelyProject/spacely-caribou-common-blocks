//Exclude Xilinx CDC modules to enable simple functional-domain simulation.
`define NO_CDC

module tb();



   logic master_clk;
   logic axi_resetn;
   logic divider_rstn;
   logic axi_clk;
   
   logic output_clk;
   logic [7:0] divider_cycles;
   

   always begin
      #10;
      master_clk = ~master_clk;
   end
   
   

   logic_clk_div #(.COUNTER_BITS(8)) dut (.*);



   initial begin
      divider_rstn = 0;
      master_clk = 0;
      divider_cycles = 0;

      //(1) CHECK that output_clk is free-running even during reset.
      #100;

      divider_rstn = 1;

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

      
