//
//  SPI Bridge
//   aquinn - 1/14/2026
//
// Use this module to connect a single generic_spi_controller block to 2x chips. 


module spi_bridge (
		   //POCI - Peripheral Out, Controller In
		   input wire 	poci_chip1,
		   input wire 	poci_chip2,
		   output wire poci,

		   input wire cs_b,
		   output wire cs_b_chip1,
		   output wire cs_b_chip2,
		   
		   input wire chip1_sel
		   );

   assign poci = (chip1_sel) ? poci_chip1 : poci_chip2;
   assign cs_b = (chip1_sel) ? cs_b_chip1 : cs_b_chip2;
   

endmodule // spi_bridge
