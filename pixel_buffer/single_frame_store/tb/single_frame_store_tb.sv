module tb();

   //Frame inputs
   logic [233:0] frame_in;
   logic 	 frame_clk;

   //AXI inputs
   logic 	 axi_clk;
   logic 	 axi_resetn;
   logic 	 trigger;
   logic 	 frame_read_rdStrobe;

   //Outputs
   logic [31:0]  status;
   logic [31:0]  frame_read;
   

   always begin
      #5 axi_clk <= ~axi_clk;
   end

   always begin
      #12.5 frame_clk <= ~frame_clk;
   end
   
   

   single_frame_store #(.FRAME_WIDTH(234)) dut (.*);
   

   //Test frame

   initial begin
      frame_in = {10'd8, 32'd7, 32'd6, 32'd5, 32'd4, 32'd3, 32'd2, 32'd1};
      frame_clk = 0;
      axi_clk = 0;
      axi_resetn = 1;
      
      trigger = 0;
      frame_read_rdStrobe = 0;

      //Reset to a known state.
      #1;
      axi_resetn=0;
      #1;
      axi_resetn = 1;
      
      #200;

      
      @(posedge axi_clk);
      trigger = 1;
      @(posedge axi_clk);
      trigger  = 0;

      #50;
      frame_in = {10'd16, 32'd15, 32'd14, 32'd13, 32'd12, 32'd11, 32'd10, 32'd9};
      
      
      #200;
      frame_read_rdStrobe = 1;
      #100;
      frame_read_rdStrobe = 0;
      
      @(posedge axi_clk);
      trigger = 1;
      @(posedge axi_clk);
      trigger  = 0;

      #200;
      frame_read_rdStrobe = 1;
      #100;
      frame_read_rdStrobe = 0;

      #50;
      
      $finish();
      


   end // initial begin

   initial begin
      $dumpfile("DB.vcd");
      $dumpvars(0, tb); //Dump variables from level 0 and up 
   end
   


endmodule // tb
