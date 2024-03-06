// Globals file to hold all constants (this file should be auto-generated in conjunction with axi_memory_map)

// Author: Luc Ah-Hot
// Last updated: 03/01/24

`ifndef __GLOBALS__
`define __GLOBALS__

// AXI PARAMETERS

// Width of S_AXI data bus
parameter integer C_S_AXI_DATA_WIDTH  = 32;
// Width of S_AXI address bus
parameter integer C_S_AXI_ADDR_WIDTH  = 14;

localparam AXI_DATA_BYTES = ((C_S_AXI_DATA_WIDTH-1)/8)+1;
localparam AXI_ADDR_LSB = ($clog2(C_S_AXI_DATA_WIDTH)-3);
localparam AXI_REG_ADDR_WIDTH = C_S_AXI_ADDR_WIDTH-AXI_ADDR_LSB;

// FPGA_REG PARAMETERS

// [lucahhot]: Number of AXI registers for SPI controller and error counter 
localparam int unsigned FPGA_REGISTER_N = 6
// [lucahhot]: AXI register mapping (TBD)
localparam byte unsigned FPGA_ERROR_COUNTER = 0;
localparam byte unsigned FPGA_SPI_WR = 1;
localparam byte unsigned FPGA_SPI_ADDRESS = 2;
localparam byte unsigned FPGA_SPI_DATA_LEN = 3;
localparam byte unsigned FPGA_SPI_WRITE_DATA = 4;
localparam byte unsigned FPGA_SPI_READ_DATA = 5;

localparam byte unsigned FPGA_REG_ADDR_WIDTH = ($clog2(FPGA_REGISTER_N));

// [lucahhot]: Need to make sure this FIFO buffer is large enough (max amount of data held will be 192 bits or 6 words)
localparam integer FIFO_BUFFER_SIZE = 10; 

`endif