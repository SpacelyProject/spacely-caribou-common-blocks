module test_data_source
#(
  parameter integer DATA_WIDTH=32
  ) (
     
     input logic [31:0] 	     control,
     input logic 		     axi_clk,
     input logic 		     axi_resetn,
     input logic 		     data_rdStrobe, 
     output logic [(DATA_WIDTH-1):0] data);

   logic 			     clear, count;
   assign count_each_cycle = control[0];
   assign count_on_strobe = control[1];
   assign clear = control[2];
   

   always @(posedge axi_clk, negedge axi_resetn) begin
      if(~axi_resetn) begin
	 data <= 0;
      end
      else begin
	 if(clear)
	   data <= 0;
	 else begin
	    if(count_each_cycle)
	      data <= data + 1;
	    else begin
	       if(count_on_strobe && data_rdStrobe)
		 data <= data + 1;
	       else
		 data <= data;
	    end
	 end // else: !if(clear)
      end // else: !if(~axi_resetn)
   end // always @ (posedge axi_clk, negedge axi_resetn)


endmodule // test_data_source


			
