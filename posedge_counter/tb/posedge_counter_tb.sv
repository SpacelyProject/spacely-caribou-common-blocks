module tb();


   logic axi_resetn;

   logic clk1;
   logic clk2;
   logic clk3;
   logic clk4;

   logic [31:0] count_0, count_1, count_2, count_3;

   logic [31:0] count_0_s1, count_1_s1, count_2_s1, count_3_s1;
   logic [31:0]  count_0_s2, count_1_s2, count_2_s2, count_3_s2;

   always begin
      #100; // 10 MHz
      clk1 = ~clk1;
   end

   always begin
      #1; // 100 GHz
      clk2 = ~clk2;
   end

   always begin
      #5.7; // 175.4 MHz 
      clk3 = ~clk3;
   end

   posedge_counter #(.NUM_SIG(4)) dut (.axi_resetn(axi_resetn),
				       .input_signals({4'b0,clk4,clk3,clk2,clk1}),
				       .count_0(count_0),
				       .count_1(count_1),
				       .count_2(count_2),
				       .count_3(count_3));
   
   

   initial begin

      axi_resetn = 0;
      clk1 = 0;
      clk2 = 0;
      clk3 = 0;
      clk4 = 0;

      #1;

      axi_resetn = 1;

      #100;

      count_0_s1 = count_0;
      count_1_s1 = count_1;
      count_2_s1 = count_2;
      count_3_s1 = count_3;

      #2731;

      count_0_s2 = count_0;
      count_1_s2 = count_1;
      count_2_s2 = count_2;
      count_3_s2 = count_3;
      

      $display("Clk2 Est Freq:", (count_1_s2 - count_1_s1)/(count_0_s2-count_0_s1)*10e6);
      $display("Clk3 Est Freq:", (count_2_s2 - count_2_s1)/(count_0_s2-count_0_s1)*10000000);
      $display("Clk4 Est Freq:", (count_3_s2 - count_3_s1)/(count_0_s2-count_0_s1)*10000000);

      $finish();
      
      
   end // initial begin



   initial begin
      $dumpfile("DB.vcd");
      $dumpvars(0, tb); //Dump variables from level 0 and up 
   end

endmodule // tb
