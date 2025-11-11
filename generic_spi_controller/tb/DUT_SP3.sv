// 
//    DUT_SP3.sv
//
// This file contains logic representing the scan/config chains of SPROCKET3, as a
// representative test case for the generic_spi_controller.

module DUT_SP3
  (
   input logic 	reset_b,
   input logic 	pico,
   input logic 	spi_clk,
   input logic cs_b,
   output logic poci
   
);



   //Peripheral Signals
   logic [8191:0] spi_memory;
   logic [1023:0] spi_readonly_memory;
   
   logic 	 global_configClk, global_configIn, global_configEn;
   logic 	 global_configOut;
   
   logic 	 global_scanClk, global_scanEn;
   logic [9:0] 	 global_scanIn;
   logic [9:0] 	 global_scanOut;
   logic [7:0]  array_select;

   
   
   generic_spi_peripheral peripheral (.*);

   SP3_Config_Scan_Chain cfg_chain (.global_configIn(global_configIn),
				    .global_configEn(global_configEn),
				    .global_configClk(global_configClk),
				    .global_configOut(global_configOut),
				    .global_scanIn(global_scanIn),
				    .global_scanEn(global_scanEn),
				    .global_scanClk(global_scanClk),
				    .global_scanOut(global_scanOut),
				    .array_select(array_select[0]),
				    .reset_b(reset_b));
   
   
   
   

endmodule // DUT_SP3



module SP3_Config_Scan_Chain
  (
  input logic 	     global_configIn,
  input logic 	     global_configEn,
  input logic 	     global_configClk,
  output logic 	     global_configOut,
  input logic [9:0]  global_scanIn,
  input logic 	     global_scanEn,
  input logic 	     global_scanClk,
  output logic [9:0] global_scanOut,
  input logic 	     array_select,
   input logic reset_b
);

   logic 	      configIn, configEn, configClk, configOut;
   logic 		    scanEn, scanClk;
   logic [9:0]   scanIn, scanOut;

   logic [99:0]  config_internal_state;

   assign global_configOut = (array_select) ? configOut : 1'bz;
   assign global_scanOut = (array_select) ? scanOut : 10'bz;
   

   //Scan/Config Switch Matrix
   always_comb begin
      if (array_select) begin
	 configIn = global_configIn;
	 configEn = global_configEn;
	 configClk = global_configClk;
	 //global_configOut = configOut;
	 
	 scanIn = global_scanIn;
	 scanEn = global_scanEn;
	 scanClk = global_scanClk;
	 //global_scanOut = scanOut;
	 
      end // if (array_select)
      else begin
	 configIn = 1'b0;
	 configEn = 1'b0;
	 configClk = 1'b0;
	 //global_configOut = 1'bz;
	 
	 scanIn = 1'b0;
	 scanEn = 1'b0;
	 scanClk = 1'b0;
	 //global_scanOut = 10'bz;
	 
      end // else: !if(array_select == i)
   end // always_comb

   configReg #(100) uRange2ConfigReg (.configClk(configClk), .configRst(reset_b), .configEn(configEn),
                                    .configIn(configIn), .configOut(configOut),
                                    .parallelOut(config_internal_state));

endmodule // SP3_Config_Chain

module configReg #(parameter NUM_BITS = 7) (
    input configClk, 
    input configIn, 
    input configRst, 
    input configEn,
    output [(NUM_BITS - 1):0] parallelOut,
    output configOut);

    logic [(NUM_BITS - 1):0] configReg;

    always_ff @(posedge configClk, negedge configRst)
        begin
            if(!configRst) configReg[(NUM_BITS - 1):0] <= {NUM_BITS{1'b0}};
            else begin 
                if (configEn) begin
		   if (NUM_BITS > 1)
		     configReg[(NUM_BITS-1):0] <= {configReg[(NUM_BITS-2):0],configIn};
		   else
		     configReg <= configIn;
		end
            end
        end

    assign configOut = configReg[(NUM_BITS-1)];
    assign parallelOut[(NUM_BITS-1):0] = configReg[(NUM_BITS-1):0];

endmodule
