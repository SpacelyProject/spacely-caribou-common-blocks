// Generic axi memory map that maps AXI read/write requests to fpga_regs through mem_regs

// Author: Luc Ah-Hot
// Last updated: 03/02/24

`include "axi_globals.sv"

module axi_memory_map (

  // Ports for the mem_regs module to/from the AXI interface
  output  logic   [C_S_AXI_DATA_WIDTH-1:0] axi_mem_rdata,
  input   logic   [C_S_AXI_DATA_WIDTH-1:0] axi_mem_wdata,
  input   logic   [$clog2(FPGA_REGISTER_N)-1:0] axi_mem_rdAddr,
  input   logic   [$clog2(FPGA_REGISTER_N)-1:0] axi_mem_wrAddr,
  input   logic   [((FPGA_REGISTER_N-1)/8):0] axi_mem_wrByteStrobe,
  input   logic   axi_mem_rdStrobe,
  
  // Clock input from AXI bus
  input   logic   S_AXI_ACLK,
  // Reset input from AXI bus
  input   logic   S_AXI_ARESETN,

  // Inputs and outputs to spi_interface
  output  logic   spi_read_write,
  output  logic   [9:0] spi_address,
  output  logic   [7:0] spi_data_len,
  output  logic   [C_S_AXI_DATA_WIDTH-1:0] spi_write_data,
  input   logic   [C_S_AXI_DATA_WIDTH-1:0] spi_read_data,
  output  logic   [((C_S_AXI_DATA_WIDTH-1)/8)-1:0] spi_writeStrobe [FPGA_REGISTER_N-1:0],
  output  logic   fpga_regs_rdStrobe [FPGA_REGISTER_N-1:0]
 
);

// Register Demultiplexer
mem_regs #(
  .REGISTER_N(FPGA_REGISTER_N),
  .REG_DATA_WIDTH(C_S_AXI_DATA_WIDTH)
) mem_regs_inst (

  // REG INTERFACE:

  // Output to the register being written to from mem_wrdin from the AXI master
  .reg_wrdout(fpga_regs_dout),
  // This is the value of mem_wrByteStrobe when axi_wren_fpgaregs is high, else all zeros
  .reg_wrByteStrobe(fpga_regs_wrByteStrobe), 
  // Read enable signal for every single FPGA register
  .reg_rdStrobe(fpga_regs_rdStrobe), 
  // Input for the registers to be passed to mem_rddout and sent back to the AXI master
  .reg_rddin(fpga_regs_din),

  // MEM INTERFACE

  // Write enable signal for axi_mem_wrByteStrobe to be passed to fpga_regs_wrByteStrobe
  .mem_wrSelect(axi_wren_fpgaregs),
  // Read enable for axi_mem_rdStrobe to be passed to fpga_regs_rdStrobe
  .mem_rdSelect(axi_rden_fpgaregs),
  // This data is what the AXI interface is requesting to read (an AXI read instruction from the peary server) 
  .mem_rddout(axi_mem_rdata), 
  // This data is what the AXI interface is requesting to write (an AXI write instruction from the peary server)
  .mem_wrdin(axi_mem_wdata), 
  // Read address requested by the master
  .mem_rdAddr(axi_mem_rdAddr[$clog2(FPGA_REGISTER_N)-1:0]), 
  // Write address requested by the master
  .mem_wrAddr(axi_mem_wrAddr[$clog2(FPGA_REGISTER_N)-1:0]), 
  // This signal indicate which byte lanes hold valid data (one write strobe for every byte) (should be 4 bits wide for data width of 32 bits)
  .mem_wrByteStrobe(axi_mem_wrByteStrobe), 
  // Equivalent to the slave register read enable signal (when valid read address is available and the slave
  // is ready to accept the read address) (Set for a corresponding axi_mem_rdAddr)
  .mem_rdStrobe(axi_mem_rdStrobe) 

);

// [lucahhot]: 

// [lucahhot]: Wires connecting AXI registers from mem_regs to other logic
logic axi_wren_fpgaregs;
logic axi_rden_fpgaregs;
logic [C_S_AXI_DATA_WIDTH-1:0]        fpga_regs_dout;
logic [((C_S_AXI_DATA_WIDTH-1)/8):0]  fpga_regs_wrByteStrobe [FPGA_REGISTER_N-1:0]
// logic                                 fpga_regs_rdStrobe     [FPGA_REGISTER_N-1:0]
logic [C_S_AXI_DATA_WIDTH-1:0]        fpga_regs_din          [FPGA_REGISTER_N-1:0]

//////////////////////////
// FPGA REGISTER        //            
//////////////////////////

logic [31:0] fpga_reg_error_counter;
logic fpga_reg_spi_read_write;
logic [9:0] fpga_reg_spi_address;
logic [7:0] fpga_reg_spi_data_len;
logic [C_S_AXI_DATA_WIDTH-1:0] fpga_reg_spi_write_data;
logic [C_S_AXI_DATA_WIDTH-1:0] fpga_reg_spi_read_data;


// Select write to FPGA registers (registers controlled by the AXI interface)
always_comb begin
  if (~|axi_mem_wrAddr[AXI_REG_ADDR_WIDTH-1:FPGA_REG_ADDR_WIDTH]) axi_wren_fpgaregs = 1'b1;
  else axi_wren_fpgaregs = 1'b0;
end

// Select read to FPGA registers (registers controlled by the AXI interface)
always_comb begin
  if (~|axi_mem_rdAddr[AXI_REG_ADDR_WIDTH-1:FPGA_REG_ADDR_WIDTH]) axi_rden_fpgaregs = 1'b1;
  else axi_rden_fpgaregs = 1'b0;
end

//////////////////////////
// AXI READS            //            
//////////////////////////

// [lucahhot]: AXI reads are combinational so we can just combinationally assigned fpga_regs_din to the correct register and the 
//             mem_regs module will take care of transmitting the right fpga_reg value to the AXI bus
assign fpga_regs_din[FPGA_ERROR_COUNTER] = fpga_reg_error_counter;
assign fpga_regs_din[FPGA_SPI_WR] = fpga_reg_spi_read_write;
assign fpga_regs_din[FPGA_SPI_ADDRESS] = fpga_reg_spi_address;
assign fpga_regs_din[FPGA_SPI_DATA_LEN] = fpga_reg_spi_data_len;
assign fpga_regs_din[FPGA_SPI_WRITE_DATA] = fpga_reg_spi_write_data;
assign fpga_reg_din[FPGA_SPI_READ_DATA] = fpga_reg_spi_read_data;

//////////////////////////
// AXI WRITES           //            
//////////////////////////

// [lucahhot]: AXI writes the correct fpga_regs_wrByteStrobe to be equal to 4'b111 (we're only concernced about writing full words through AXI for now)
//             Some registers will not be able to written to since they are driven by a custom module

always_ff @(posedge S_AXI_ACLK or negedge S_AXI_ARESETN) begin
  // [lucahhot]: Reset all fpga_reg values to 0
  if (~S_AXI_ARESETN) begin
    fpga_reg_error_counter <= '0;
    fpga_reg_spi_read_write <= '0;
    fpga_reg_spi_address <= '0;
    fpga_reg_spi_data_len <= '0;
    fpga_reg_spi_write_data <= '0;
    fpga_reg_spi_read_data <= '0;
  end else begin

    // [lucahhot]: Assign spi_writeStrobe to fpga_regs_wrByteStrobe coming out of mem_regs
    spi_writeStrobe <= fpga_regs_wrByteStrobe;

    // [lucahhot]: Error counter is assigned from custom block so not through AXI write
    fpga_reg_error_counter <= error_counter_input;

    // [lucahhot]: SPI read data is assigned from spi_interface so not through AXI write
    fpga_reg_read_data <= spi_read_data;

    if (fpga_regs_wrByteStrobe[FPGA_SPI_WR] == 4'b1111) begin
      fpga_reg_spi_read_write <= fpga_regs_dout[0]; // fpga_dout should only be 1 or 0 so we can truncate the upper 31 bits
    end

    if (fpga_regs_wrByteStrobe[FPGA_SPI_ADDRESS] == 4'b1111) begin
      fpga_reg_spi_address <= fpga_regs_dout; 
    end

    if (fpga_regs_wrByteStrobe[FPGA_SPI_DATA_LENGTH] == 4'b1111) begin
      fpga_reg_spi_data_len <= fpga_regs_dout; 
    end

    if (fpga_regs_wrByteStrobe[FPGA_SPI_WRITE_DATA] == 4'b1111) begin
      fpga_reg_spi_write_data <= fpga_regs_dout; 
    end

  end
end


endmodule