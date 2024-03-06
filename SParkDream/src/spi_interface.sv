// SPI Interface wrapper that contains spi_controller, mem_regs, 

// Author: Luc Ah-Hot
// Last updated: 03/05/24

`include "axi_globals.sv"

module spi_interface (

    // fpga_regs ports for spi_controller
    input   logic   spi_read_write,
    input   logic   [9:0] spi_address,
    input   logic   [7:0] spi_data_len,
    input   logic   [C_S_AXI_DATA_WIDTH-1:0] spi_write_data,
    output  logic   [C_S_AXI_DATA_WIDTH-1:0] spi_read_data,

    // Read amd write strobes from axi_memory_map/mem_regs to know when to toggle read/write enable signals for the SPI FIFOs
    // NOTE: spi_writeStrobe is delayed by 1 cycle to accomodate for fpga_regs taking a cycle to latch new value begin written by AXI
    input   logic   [((C_S_AXI_DATA_WIDTH-1)/8)-1:0] spi_writeStrobe [FPGA_REGISTER_N-1:0],
    input   logic   spi_readStrobe [FPGA_REGISTER_N-1:0],

    // Clock input from AXI bus
    input   logic   S_AXI_ACLK,
    // Reset input from AXI bus
    input   logic   S_AXI_ARESETN,

    // Ports for spi_controller
    input   logic   poci,
    output  logic   pico,
    output  logic   cs_b,
    output  logic   spi_clk
    
);

// [lucahhot]: AXI reset (active low) signal will be used to also reset the FIFO buffers (they have active high reset signals)
assign spi_command_reset = ~S_AXI_ARESETN;
assign spi_read_reset = ~S_AXI_ARESETN;

// [lucahhot]: Wire to connect spi_read_dout back to axi_memory_map to be assigned to fpga_regs_spi_read_data
logic [C_S_AXI_DATA_WIDTH-1:0] spi_read_data;

assign spi_read_data = spi_read_dout;

// SPI command FIFO signals
logic spi_command_reset;
logic spi_command_full;
logic spi_command_wr_en;
logic [C_S_AXI_DATA_WIDTH-1:0] spi_command_din;
logic spi_command_empty;
logic spi_command_rd_en;
logic [C_S_AXI_DATA_WIDTH-1:0] spi_command_dout; 

// SPI read FIFO signals
logic spi_read_reset;
logic spi_read_full;
logic spi_read_wr_en;
logic [C_S_AXI_DATA_WIDTH-1:0] spi_read_din;
logic spi_read_empty;
logic spi_read_rd_en;
logic [C_S_AXI_DATA_WIDTH-1:0] spi_read_dout;

// [lucahhot]: FIFO instantiation to hold SPI command data coming in from AXI bus (excluding R/W bit and SPI address)
fifo #(
  .FIFO_BUFFER_SIZE(FIFO_BUFFER_SIZE),
  .FIFO_DATA_WIDTH(C_S_AXI_DATA_WIDTH)
) spi_command_buffer (
  .reset(spi_command_reset),
  .wr_clk(S_AXI_ACLK),
  .wr_en(spi_command_wr_en),
  .din(spi_command_din),
  .full(spi_command_full),
  .rd_clk(S_AXI_ACLK),
  .rd_en(spi_command_rd_en),
  .dout(spi_command_dout),
  .empty(spi_command_empty)
);

// [lucahhot]: FIFO instantiation to hold SPI read data coming in from the SPI peripheral through spi_controller 
fifo #(
  .FIFO_BUFFER_SIZE(FIFO_BUFFER_SIZE),
  .FIFO_DATA_WIDTH(C_S_AXI_DATA_WIDTH)
) spi_read_buffer (
  .reset(spi_read_reset),
  .wr_clk(S_AXI_ACLK),
  .wr_en(spi_read_wr_en),
  .din(spi_read_din),
  .full(spi_read_full),
  .rd_clk(S_AXI_ACLK),
  .rd_en(spi_read_rd_en),
  .dout(spi_read_dout),
  .empty(spi_read_empty)
);

// Registers to hold values of fpga_reg_spi_read_write, fpga_reg_spi_address, and fpga_reg_spi_data_len after a SPI transaction is 
// triggered so another AXI command sent to SPI does not corrupt the current SPI transaction being completed (these are passed to spi_controller)
logic reg_WnR, reg_WnR_c;
logic [9:0] reg_spi_address, reg_spi_address_c;
logic [7:0] reg_spi_data_len, reg_spi_data_len_c;

// [lucahhot]: Flag to indicate if spi_controller is currently in the process of going through a SPI transaction
logic spi_busy, spi_busy_c;

// [lucahhot]: Wire to connect done signal from spi_controller
logic done;

// [lucahhot]: Clocking values from combinational variables to registered variables
always_ff @(posedge S_AXI_ACLK) begin
  if (~S_AXI_ARESETN) begin
    // Reset spi_busy
    spi_busy <= 0;
    // Reset internal SPI registers
    reg_WnR <= 1'b0;
    reg_spi_address <= '0;
    reg_spi_data_len <= '0;
  end else begin
    spi_busy <= spi_busy_c;
    reg_WnR <= reg_WnR_c;
    reg_spi_address <= reg_spi_address_c;
    reg_spi_data_len <= reg_spi_data_len_c;
  end
end

// [lucahhot]: Using a combinational process to handle AXI read/writes to the spi_controller
always_comb begin
  // Default enable signal assignment
  spi_command_wr_en = 1'b0;
  spi_read_rd_en = 1'b0;
  spi_command_din = '0;
  // Default combinational value assignment to registered value
  spi_busy_c = spi_busy;
  reg_WnR_c = reg_WnR;
  reg_spi_address_c = reg_spi_address;
  reg_spi_data_len_c = reg_spi_data_len;

  // [lucahhot]: Logic to load in AXI SPI values into internal registers once spi_data_len is non-zero and if spi_busy == 1'b0.
  //             spi_controller only reads these registered values so even if AXI is writing new SPI parameters during a SPI 
  //             transaction, the current SPI transaction will not be corrupted.
  if (spi_data_len != '0 && spi_busy == 1'b0) begin
    spi_busy_c = 1'b1;
    reg_WnR_c = spi_read_write;
    reg_spi_address_c = spi_address;
    reg_spi_data_len_c = spi_data_len;
  end

  // [lucahhot]: For now, a new SPI command can only be written after a SPI command has been fully transmitted so spi_busy
  //             serve as an enable signal to take in new SPI parameters from the AXI interface. If it is not zero (reset value),
  //             AXI data being written to the SPI registers will not transmitted to the internal registers and to the spi_controller. 
  //             spi_busy will be set to 1'b1 after spi_data_len receives a value and will only be set back to 1'b0 once the "done" 
  //             signal from spi_controller is set to high. 
  //             For SPI reads, the spi_controller has to send the SPI command AND receive back the data from the SPI peripheral
  //             so spi_busy will remain high until the entire SPI transaction has completed. 

  // [lucahhot]: Resetting spi_busy back to 0 once the "done" signal from spi_controller has been asserted
  if (spi_busy == 1'b1 && done == 1'b1) begin
    spi_busy_c = 1'b0;
    // [lucahhot]: Need to reset reg_spi_data_len to 0 so spi_controller doesn't start sending new commands over pico
    reg_spi_data_len_c = '0;
    // [lucahhot]: When a SPI read command has finished writing all the read data to spi_read_buffer, we need to load in 
    //             the head of the FIFO immediately into fpga_regs_din because AXI reads are combinational. This means that
    //             if we wait for an AXI read before assigning fpga_regs_din, then AXI will transmit the old value of fpga_regs_din 
    //             which would not be correct. When a read strobe corresponding to the SPI read register is set to high ie. 
    //             AXI is trying to read from spi_read_buffer, the next value in spi_read_buffer will be popped off and stored
    //             in fpga_regs_din for the subsequent AXI read (THIS WILL TAKE 2 CYCLES OF S_AXI_ACLK)
    if (reg_WnR == 1'b0) begin
      // [lucahhot]: spi_read_buffer should never be empty at this point
      if (spi_read_empty == 1'b0) 
        // [lucahhot]: fpga_regs_din has to be assigned combinationally so we only toggle spi_read_rd_en for fpga_reg_spi_read_data
        //             to be assigned to the correct value (fpga_reg_spi_read_data is assigned to spi_read_dout in axi_memory_map)
        spi_read_rd_en = 1'b1;
    end
  end

  // *** SPI READS *** 

  // [lucahhot]: After a SPI read command is sent over by AXI, the resulting data from the SPI peripheral will sit in a data buffer, spi_read_buffer,
  //             until AXI attempts to read from the register address that corresponds to FPGA_SPI_READ_DATA. When this read address is set by AXI,
  //             the topmost data word from the spi_read_buffer FIFO will be popped off and send to the Peary Server through AXI. This means that 
  //             if the SPI read transaction is supposed to read 192 bits of data, the user will need to instantiate 6 AXI reads to receive all 
  //             6 32-bit data words back. 

  // [lucahhot]: Check for the correct fpga_regs_rdStrobe value and that spi_busy is low (means that the SPI read transaction has been completed in
  //             spi_controller and all the data has been successfully pushed into spi_read_buffer ie. spi_read_empty == 1'b0)
  if (spi_readStrobe[FPGA_SPI_READ_DATA] == 1'b1 && spi_busy == 1'b0) begin
    // [lucahhot]: spi_read_buffer should never be empty at this point except for the last AXI read command where the last value in spi_read_buffer has
    //             already been assigned to fpga_reg_spi_read_data so that value is not over-written since there is nothing in the FIFO and spi_read_empty == 1'b1.
    if (spi_read_empty == 1'b0) 
      spi_read_rd_en = 1'b1;
  end

  // *** SPI WRITES ***

  // [lucahhot]: For the actual SPI command data, push each data word into spi_command_buffer
  if (spi_writeStrobe[FPGA_SPI_WRITE_DATA] == 4'b1111 && spi_busy == 1'b0) begin
    // [lucahhot]: spi_command_buffer should never be full at this point
    if (spi_command_full == 1'b0) begin
      spi_command_din = spi_write_data; 
      spi_command_wr_en = 1'b1;
    end
  end
end


// [lucahhot]: Instantiate SPI master controller to send configuration instructions to SPI slave on SP3A/SP3 chip
spi_controller spi_controller_inst (
  .axi_clk(S_AXI_ACLK),
  .reset_b(S_AXI_ARESETN),
  .WnR(reg_WnR),
  .spi_address(reg_spi_address),
  .spi_data_len(reg_spi_data_len),
  .spi_command_rd_en(spi_command_rd_en),
  .spi_command_empty(spi_command_empty),
  .spi_command_dout(spi_command_dout),
  .spi_read_wr_en(spi_read_wr_en),
  .spi_read_full(spi_read_full),
  .spi_read_din(spi_read_din),
  .pico(pico),
  .cs_b(cs_b),
  .spi_clk(spi_clk),
  .poci(poci),
  .done(done)
);

endmodule