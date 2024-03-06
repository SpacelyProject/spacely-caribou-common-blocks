// SParkDream Device that contains both the AXI bus interface and the spi_controller.

// Author: Luc Ah-Hot
// Using code and IP from the peary-firmware-sprocket3 github repository
// Last updated: 03/02/24

`include "axi_globals.sv"

module SParkDream_device (

  // Ports of Axi4Lite Slave Bus Interface S00_AXI (from Peary Server)
  input   logic   S_AXI_ACLK,
  input   logic   S_AXI_ARESETN,
  input   logic   [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
  input   logic   [2 : 0] S_AXI_AWPROT,
  input   logic   S_AXI_AWVALID,
  output  logic   S_AXI_AWREADY,
  input   logic   [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
  input   logic   [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
  input   logic   S_AXI_WVALID,
  output  logic   S_AXI_WREADY,
  output  logic   [1 : 0] S_AXI_BRESP,
  output  logic   S_AXI_BVALID,
  input   logic   S_AXI_BREADY,
  input   logic   [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
  input   logic   [2 : 0] S_AXI_ARPROT,
  input   logic   S_AXI_ARVALID,
  output  logic   S_AXI_ARREADY,
  output  logic   [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
  output  logic   [1 : 0] S_AXI_RRESP,
  output  logic   S_AXI_RVALID,
  input   logic   S_AXI_RREADY,

  // [lucahhot]: Ports for SPI controller to SP3A/SP3 chip's SPI peripheral
  input   logic   poci,     // poci is data line coming from SPI peripheral on SP3A/SP3 to spi_controller
  output  logic   pico,     // pico is data line coming from spi_controller to the SPI peripheral on SP3A/SP#
  output  logic   cs_b,     // cs_b serves to tell the SPI peripheral the start and end of a SPI command coming through pico
  output  logic   spi_clk,  // The shared clock between controller and peripheral to synchronize all SPI signals

  // [lucahhot]: Error Counter Input Port from lpgbtFpga
  input   logic   [31:0] error_counter_input,

  // [lucahhot]: Ports for Reset to lpgbtFPGA (active low?); This port is driven directly by S_AXI_ARESETN from the AXI interface
  output logic lpgbtFpga_reset

);

// [lucahhot]: AXI reset (active low) signal will be used to also reset the lpgbtFpga to save the time having to have the AXI interface write a reset command
//             to a register and the reset output port to be assigned to the value of the reset in side that cache
assign lpgbtFpga_reset = S_AXI_ARESETN;

/////////////////////////
// AXI BUS             //
/////////////////////////

logic [C_S_AXI_DATA_WIDTH-1:0]  axi_mem_rdata;
logic [C_S_AXI_DATA_WIDTH-1:0]  axi_mem_wdata;
logic [AXI_REG_ADDR_WIDTH-1:0]  axi_mem_rdAddr;
logic [AXI_REG_ADDR_WIDTH-1:0]  axi_mem_wrAddr;
logic [AXI_DATA_BYTES-1:0]      axi_mem_wrByteStrobe;
logic                           axi_mem_rdStrobe;

axi4lite_slave_interface #(
  .C_S_AXI_DATA_WIDTH (C_S_AXI_DATA_WIDTH),
  .C_S_AXI_ADDR_WIDTH (C_S_AXI_ADDR_WIDTH)
) axi4_slave_inst (

  // [lucahhot]: These wires are to be connected to the mem_regs module
  .axi_mem_rdata(axi_mem_rdata),
  .axi_mem_wdata(axi_mem_wdata),
  .axi_mem_rdAddr(axi_mem_rdAddr),
  .axi_mem_wrAddr(axi_mem_wrAddr),
  .axi_mem_wrByteStrobe(axi_mem_wrByteStrobe),
  //.axi_mem_rdEnable(axi_mem_rdEnable),
  .axi_mem_rdStrobe(axi_mem_rdStrobe),

  // [lucahhot]: These are the signals between the master and slave AXI controllers
  .S_AXI_ACLK(S_AXI_ACLK),
  .S_AXI_ARESETN(S_AXI_ARESETN),
  .S_AXI_AWADDR(S_AXI_AWADDR),
  .S_AXI_AWPROT(S_AXI_AWPROT),
  .S_AXI_AWVALID(S_AXI_AWVALID),
  .S_AXI_AWREADY(S_AXI_AWREADY),
  .S_AXI_WDATA(S_AXI_WDATA),
  .S_AXI_WSTRB(S_AXI_WSTRB),
  .S_AXI_WVALID(S_AXI_WVALID),
  .S_AXI_WREADY(S_AXI_WREADY),
  .S_AXI_BRESP(S_AXI_BRESP),
  .S_AXI_BVALID(S_AXI_BVALID),
  .S_AXI_BREADY(S_AXI_BREADY),
  .S_AXI_ARADDR(S_AXI_ARADDR),
  .S_AXI_ARPROT(S_AXI_ARPROT),
  .S_AXI_ARVALID(S_AXI_ARVALID),
  .S_AXI_ARREADY(S_AXI_ARREADY),
  .S_AXI_RDATA(S_AXI_RDATA),
  .S_AXI_RRESP(S_AXI_RRESP),
  .S_AXI_RVALID(S_AXI_RVALID),
  .S_AXI_RREADY(S_AXI_RREADY)
);

//////////////////////////
// AXI MEMORY MAP       //            
//////////////////////////

logic   spi_read_write,
logic   [9:0] spi_address,
logic   [7:0] spi_data_len,
logic   [C_S_AXI_DATA_WIDTH-1:0] spi_write_data,
logic   [C_S_AXI_DATA_WIDTH-1:0] spi_read_data,
logic   [((C_S_AXI_DATA_WIDTH-1)/8)-1:0] spi_writeStrobe [FPGA_REGISTER_N-1:0],
logic   fpga_regs_rdStrobe [FPGA_REGISTER_N-1:0]

axi_memory_map axi_memory_map_inst (
  .axi_mem_rdata(axi_mem_rdata),
  .axi_mem_wdata(axi_mem_wdata),
  .axi_mem_rdAddr(axi_mem_rdAddr),
  .axi_mem_wrAddr(axi_mem_wrAddr),
  .axi_mem_wrByteStrobe(axi_mem_wrByteStrobe),
  .axi_mem_rdStrobe(axi_mem_rdStrobe),
  .S_AXI_ACLK(S_AXI_ACLK),
  .S_AXI_ARESETN(S_AXI_ARESETN),
  .spi_read_write(spi_read_write),
  .spi_address(spi_address),
  .spi_data_len(spi_data_len),
  .spi_write_data(spi_write_data),
  .spi_read_data(spi_read_data),
  .spi_writeStrobe(spi_writeStrobe),
  .fpga_regs_rdStrobe(fpga_regs_rdStrobe)
);

//////////////////////////
// SPI INTERFACE        //            
//////////////////////////

spi_interface spi_interface_inst (
  .spi_read_write(spi_read_write),
  .spi_address(spi_address),
  .spi_data_len(spi_data_len),
  .spi_write_data(spi_write_data),
  .spi_read_data(spi_read_data),
  .spi_writeStrobe(spi_writeStrobe),
  .spi_readStrobe(fpga_regs_rdStrobe),
  .S_AXI_ACLK(S_AXI_ACLK),
  .S_AXI_ARESETN(S_AXI_ARESETN),
  .poci(poci),
  .pico(pico),
  .cs_b(cs_b),
  .spi_clk(spi_clk)
);

endmodule