module tb();

   logic serial_clk, axi_clk, axi_resetn, poci, pico, cs_b;
   logic trigger;
   logic [31:0] write_data, read_data, data_len;
   logic [1:0] 	dbg_status;
   logic [5:0] 	dbg_current_bit;
   
   

   simple_serial dut(.serial_clk(serial_clk), .axi_clk(axi_clk),
		   .poci(poci), .pico(pico), .cs_b(cs_b),
		   .trigger(trigger), .write_data(write_data),
		   .read_data(read_data), .data_len(data_len),
		     .dbg_status(dbg_status), .dbg_current_bit(dbg_current_bit),
.axi_resetn(axi_resetn));

   //AXI clock generator
   always begin
      #10;
      axi_clk = ~axi_clk;
   end

   //Serial clock generator
   always begin
      #1000;
      serial_clk = ~serial_clk;
   end

   initial begin
      serial_clk = 0;
      axi_resetn = 1;
      axi_clk = 0;
      poci = 0;
      trigger = 0;
      write_data = 0;
      data_len = 0;

      //AXI reset
      @(posedge axi_clk);
      axi_resetn = 0;
      @(posedge axi_clk);
      axi_resetn = 1;
      

      // Wait at least 1 serial_clk period to make sure we reset to a good state.
      #1200;
      
      //*********************
      // TEST 1: Serial Write
      //*********************

      //AXI is used to assign write_data and data_len, then pulse trigger.
      @(posedge axi_clk);
      write_data = 33;
      @(posedge axi_clk);
      data_len = 16;
      @(posedge axi_clk);
      trigger = 1;
      @(posedge axi_clk);
      trigger = 0;

      // Delay 50 clock cycles to let this transaction play out.
      repeat (50) @(posedge serial_clk);
      
      //*********************
      // TEST 2: Serial Read
      //*********************

      @(posedge axi_clk);
      write_data = 0;
       @(posedge axi_clk);
      trigger = 1;
      @(posedge axi_clk);
      trigger = 0;

      repeat (10) @(posedge serial_clk);
      poci = 1;
      repeat (10) @(posedge serial_clk);

      $finish;
      
      
   end // initial begin

   initial begin
      $dumpfile("DB.vcd");
      $dumpvars(0, tb); //Dump variables from level 0 and up 
   end

endmodule // tb
