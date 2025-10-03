//Remove Xilinx CDC IP for basic testing.
`define NO_CDC 1
module generic_spi_tb();


   //Controller signals
   logic [31:0] mem_write, mem_write_ptr, mem_read, mem_read_ptr;
   logic 	mem_write_strb, mem_write_ptr_reset, mem_read_strb, mem_read_ptr_reset;
   
   logic [31:0] transaction_count, spi_len;
   logic 	spi_clk, poci, pico, cs_b, axi_clk, axi_resetn, spi_strb;
   logic [2:0] 	status;
   
   
   generic_spi_controller controller (.*);

   //Peripheral Signals
   logic 	reset_b;
   logic [8191:0] spi_memory;
   logic [1023:0] spi_readonly_memory;
   
   logic 	 global_configClk, global_configIn, global_configEn;
   logic 	 global_configOut;
   
   logic 	 global_scanClk, global_scanEn;
   logic [9:0] 	 global_scanIn;
   logic [9:0] 	 global_scanOut;
   logic [7:0]  array_select;
   
   
   
   generic_spi_peripheral peripheral (.*);


   always begin
      #1000;
      spi_clk = ~spi_clk;
   end

   always begin
      #10;
      axi_clk = ~axi_clk;

   end      
   				
   initial begin
      axi_clk = 0;
      spi_clk = 0;
      
      // Initial reset of both controller and peripheral.
      axi_resetn = 0;
      reset_b = 0;
      #10;
      axi_resetn = 1;
      reset_b = 1;
      

      // Wait at least one spi_clk period before starting.
      @(posedge spi_clk);
      @(posedge spi_clk);
      

      // Write 10101010 to the address 00_1000_0000
      // Remember that the memory is little-endian! bit [0] is
      // transmitted first.
  
      @(posedge axi_clk) ;
      mem_write_strb = 1'b1;
      mem_write = 32'b01010101_0000_0001_00_1;
      @(posedge axi_clk) ;
      mem_write_strb = 1'b0;
      spi_len = 19;
      @(posedge axi_clk);
      
      do_transaction();
      

      // Now read the stame address. Remember to reset the mem_write_ptr
      @(posedge axi_clk) ;
      mem_write_ptr_reset = 1'b1;
      @(posedge axi_clk) ;
      mem_write_ptr_reset = 1'b0;
      mem_write_strb = 1'b1;
      mem_write = 32'b00000000_0000_0001_00_0;
      @(posedge axi_clk) ;
      mem_write_strb = 1'b0;
      spi_len = 19;

      do_transaction();
      
       
      $finish();
      


   end // initial begin

   task do_transaction();
      //Send transaction
      @(posedge axi_clk);
      spi_strb = 1;
      @(posedge axi_clk);
      spi_strb = 0;
      
      // Wait for transaction to complete
      while(status > 0) @(posedge axi_clk);


   endtask // do_transaction

     initial begin
      $dumpfile("DB.vcd");
      $dumpvars(0, generic_spi_tb); //Dump variables from level 0 and up 
   end
   

endmodule // generic_spi_tb
