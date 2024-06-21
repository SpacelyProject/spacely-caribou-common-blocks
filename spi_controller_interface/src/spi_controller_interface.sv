// SPI Interface that contains spi_controller and the spi_command/read_command buffers

// Author: Luc Ah-Hot
// Last updated: 04/23/24

module spi_controller_interface #(
	// Width of S_AXI data bus
  parameter integer C_S_AXI_DATA_WIDTH=32,
  // Width of S_AXI address bus
  parameter integer C_S_AXI_ADDR_WIDTH=11,
  //Size of FIFO Buffer
 parameter integer FIFO_BUFFER_SIZE=10
) (

  // Ports to/from spi_controller to lpgtbFpga
  input logic 				    poci,
  output logic 				    pico,
  output logic 				    cs_b,
  output logic 				    spi_clk,

  // Optional external SPI Clock
  input logic 				    ext_spi_clk,
  
  output logic [2:0] dbg_state,

        //////////////////////////////
	//    AXI BUS SIGNALS       //
	//////////////////////////////
	
	//	Global Clock Signal
  input wire 				    S_AXI_ACLK,
  // Global Reset Signal. This Signal is Active LOW
  input wire 				    S_AXI_ARESETN,
  // Write address (issued by master, accepted by Slave)
  input wire [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_AWADDR,
  // Write channel Protection type. This signal indicates the
  // privilege and security level of the transaction, and whether
  // the transaction is a data access or an instruction access.
  input wire [2 : 0] 			    S_AXI_AWPROT,
  // Write address valid. This signal indicates that the master signaling
  // valid write address and control information.
  input wire 				    S_AXI_AWVALID,
  // Write address ready. This signal indicates that the slave is ready
  // to accept an address and associated control signals.
  output wire 				    S_AXI_AWREADY,
  // Write data (issued by master, accepted by Slave)
  input wire [C_S_AXI_DATA_WIDTH-1 : 0]     S_AXI_WDATA,
  // Write strobes. This signal indicates which byte lanes hold
  // valid data. There is one write strobe bit for each eight
  // bits of the write data bus.
  input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
  // Write valid. This signal indicates that valid write
  // data and strobes are available.
  input wire 				    S_AXI_WVALID,
  // Write ready. This signal indicates that the slave
  // can accept the write data.
  output wire 				    S_AXI_WREADY,
  // Write response. This signal indicates the status
  // of the write transaction.
  output wire [1 : 0] 			    S_AXI_BRESP,
  // Write response valid. This signal indicates that the channel
  // is signaling a valid write response.
  output wire 				    S_AXI_BVALID,
  // Response ready. This signal indicates that the master
  // can accept a write response.
  input wire 				    S_AXI_BREADY,
  // Read address (issued by master, accepted by Slave)
  input wire [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_ARADDR,
  // Protection type. This signal indicates the privilege
  // and security level of the transaction, and whether the
  // transaction is a data access or an instruction access.
  input wire [2 : 0] 			    S_AXI_ARPROT,
  // Read address valid. This signal indicates that the channel
  // is signaling valid read address and control information.
  input wire 				    S_AXI_ARVALID,
  // Read address ready. This signal indicates that the slave is
  // ready to accept an address and associated control signals.
  output wire 				    S_AXI_ARREADY,
  // Read data (issued by slave)
  output wire [C_S_AXI_DATA_WIDTH-1 : 0]    S_AXI_RDATA,
  // Read response. This signal indicates the status of the
  // read transfer.
  output wire [1 : 0] 			    S_AXI_RRESP,
  // Read valid. This signal indicates that the channel is
  // signaling the required read data.
  output wire 				    S_AXI_RVALID,
  // Read ready. This signal indicates that the master can
  // accept the read data and response information.
  input wire 				    S_AXI_RREADY
  
);

   /////////////////////////////////////////////
   // AXI-Mapped Registers Address Definition //
   /////////////////////////////////////////////

   //Total number of AXI-mapped registers in this firmware block.
localparam integer FPGA_REGISTER_N = 9;

// Addresses of all AXI-mapped registers in this firmware block.
localparam byte unsigned FPGA_SPI_WR = 0;
localparam byte unsigned FPGA_SPI_ADDRESS = 1;
localparam byte unsigned FPGA_SPI_DATA_LEN = 2;
localparam byte unsigned FPGA_SPI_OPCODE_GROUP = 3;
localparam byte unsigned FPGA_SPI_WRITE_DATA = 4;
localparam byte unsigned FPGA_SPI_READ_DATA = 5;
localparam byte unsigned FPGA_CLOCK_DIVIDE_FACTOR = 6;
localparam byte unsigned FPGA_USE_EXT_SPI_CLK = 7;
localparam byte unsigned FPGA_SPI_DONE = 8;

   
logic [C_S_AXI_DATA_WIDTH-1:0]        reg_wrdout;
logic [((C_S_AXI_DATA_WIDTH-1)/8):0]  reg_wrByteStrobe [FPGA_REGISTER_N-1:0];
logic                                 reg_rdStrobe [FPGA_REGISTER_N-1:0];
logic [C_S_AXI_DATA_WIDTH-1:0] 	      reg_rddin [FPGA_REGISTER_N-1:0];
   

// Instantiate the AXI Interface
// NOTE: This block should be included from spacely-caribou-common-blocks/axi4lite_interface
axi4lite_interface_top #(
.FPGA_REGISTER_N(FPGA_REGISTER_N),
.C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH),
.C_S_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH)
) axi4lite_interface_inst (
  
  .reg_wrdout(reg_wrdout),
  .reg_wrByteStrobe(reg_wrByteStrobe),
  .reg_rdStrobe(reg_rdStrobe),
  .reg_rddin(reg_rddin),

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

// [lucahhot]: Register instantiation for spi_interace
// [lucahhot]: Will be taking in inputs combinationally in order to correctly assign FIFO signals so we need a set of combinational registers that map to fpga_regs
logic                          fpga_reg_spi_read_write, fpga_reg_spi_read_write_c;
logic [9:0]                    fpga_reg_spi_address, fpga_reg_spi_address_c;
logic [7:0]                    fpga_reg_spi_data_len, fpga_reg_spi_data_len_c;
logic [1:0]                    fpga_reg_spi_opcode_group, fpga_reg_spi_opcode_group_c;
logic [C_S_AXI_DATA_WIDTH-1:0] fpga_reg_spi_write_data, fpga_reg_spi_write_data_c;
logic [C_S_AXI_DATA_WIDTH-1:0] fpga_reg_spi_read_data;
logic [4:0]                    fpga_reg_clock_divide_factor, fpga_reg_clock_divide_factor_c; // [lucahhot]: Shouldn't need to divide by more than 2^31 = 2.1 billion
logic 		               fpga_reg_use_ext_spi_clk, fpga_reg_use_ext_spi_clk_c;
logic                          fpga_reg_spi_done, fpga_reg_spi_done_c; // [lucahhot]: Flag to indicate when a SPI transaction has completed (cannot be written to)

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

// [lucahhot]: AXI reset (active low) signal will be used to also reset the FIFO buffers (they have active high reset signals)
assign spi_command_reset = ~S_AXI_ARESETN;
assign spi_read_reset = ~S_AXI_ARESETN;

// [lucahhot]: Registers to hold values of fpga_reg_spi_read_write, fpga_reg_spi_address, and fpga_reg_spi_data_len after a SPI transaction is 
// triggered so another AXI command sent to SPI does not corrupt the current SPI transaction being completed (these are passed to spi_controller)
logic temp_WnR, temp_WnR_c;
logic [9:0] temp_spi_address, temp_spi_address_c;
logic [7:0] temp_spi_data_len, temp_spi_data_len_c;
logic [1:0] temp_spi_opcode_group, temp_spi_opcode_group_c;

// [lucahhot]: Temp register so that the clock divider factor can be set after a SPI transaction is complete
logic [4:0] temp_clock_divide_factor, temp_clock_divide_factor_c;

// [lucahhot]: Flag to indicate if spi_controller is currently in the process of going through a SPI transaction
logic spi_busy, spi_busy_c;


//This always_ff block will assign the values of AXI-mapped registers on every AXI clock cycle.
always_ff @(posedge S_AXI_ACLK) begin
  if (~S_AXI_ARESETN) begin
    // [lucahhot]: Reseting spi_interface fpga_regs
    fpga_reg_spi_read_write <= '0;
    fpga_reg_spi_address <= '0;
    fpga_reg_spi_data_len <= '0;
    fpga_reg_spi_write_data <= '0;
    fpga_reg_spi_opcode_group <= '0;
    fpga_reg_clock_divide_factor <= '0;
    fpga_reg_use_ext_spi_clk <= '0;
    fpga_reg_spi_done <= '0;
    // [lucahhot]: Reseting temporary registers
    temp_WnR <= '0;
    temp_spi_address <= '0;
    temp_spi_data_len <= '0;
    temp_spi_opcode_group <= '0;
    temp_clock_divide_factor <= '0;
    // [lucahhot]: Reseting spi_busy flag
    spi_busy <= '0;
    // [lucahhot]: Reseting the divider_reset
    divider_reset <= '0;
  end
  else begin
    // [lucahhot]: Assigning spi fpga_regs except for fpga_reg_spi_read_data (assigned from spi_read_buffer directly)
    fpga_reg_spi_read_write <= fpga_reg_spi_read_write_c;
    fpga_reg_spi_address <= fpga_reg_spi_address_c;
    fpga_reg_spi_data_len <= fpga_reg_spi_data_len_c;
    fpga_reg_spi_write_data <= fpga_reg_spi_write_data_c;
    fpga_reg_spi_opcode_group <= fpga_reg_spi_opcode_group_c;
    fpga_reg_clock_divide_factor <= fpga_reg_clock_divide_factor_c;
    fpga_reg_use_ext_spi_clk <= fpga_reg_use_ext_spi_clk_c;
    fpga_reg_spi_done <= fpga_reg_spi_done_c; // [lucahhot]: This will be assigned by logic in this module so it cannot be written to by a Spacely user

    temp_WnR <= temp_WnR_c;
    temp_spi_address <= temp_spi_address_c;
    temp_spi_data_len <= temp_spi_data_len_c;
    temp_spi_opcode_group <= temp_spi_opcode_group_c;
    temp_clock_divide_factor <= temp_clock_divide_factor_c;

    spi_busy <= spi_busy_c;
    divider_reset <= divider_reset_c;
  end
end

// [lucahhot]: Assign fpga_regs combinationally (all registers are readable)
assign reg_rddin[FPGA_SPI_WR] = fpga_reg_spi_read_write;
assign reg_rddin[FPGA_SPI_ADDRESS] = fpga_reg_spi_address;
assign reg_rddin[FPGA_SPI_DATA_LEN] = fpga_reg_spi_data_len;
assign reg_rddin[FPGA_SPI_WRITE_DATA] = fpga_reg_spi_write_data;
assign reg_rddin[FPGA_SPI_READ_DATA] = fpga_reg_spi_read_data;
assign reg_rddin[FPGA_SPI_OPCODE_GROUP] = fpga_reg_spi_opcode_group;
assign reg_rddin[FPGA_CLOCK_DIVIDE_FACTOR] = fpga_reg_clock_divide_factor;
assign reg_rddin[FPGA_USE_EXT_SPI_CLK] = fpga_reg_use_ext_spi_clk;   
assign reg_rddin[FPGA_SPI_DONE] = fpga_reg_spi_done;

// [lucahhot]: fpga_reg_spi_read_data is driven by the head of spi_read_buffer FIFO (read enable set in the combinational loop below)
assign fpga_reg_spi_read_data = spi_read_dout;

// [lucahhot]: Wire to connect done signal from spi_controller
logic done;

// [lucahhot]: Divide reset signal to reset the clock_divider when the clock divide factor is changed
logic divider_reset, divider_reset_c;

// [lucahhot]: Using a combinational process to handle AXI read/writes to the spi_controller
always_comb begin
  // Default enable FIFO signal assignment
  spi_command_wr_en = 1'b0;
  spi_read_rd_en = 1'b0;
  spi_command_din = '0;

  // Default combinational value assignment to registered value (i.e. keep current stored value)
  spi_busy_c = spi_busy;
  temp_WnR_c = temp_WnR;
  temp_spi_address_c = temp_spi_address;
  temp_spi_data_len_c = temp_spi_data_len;
  temp_spi_opcode_group_c = temp_spi_opcode_group;
  temp_clock_divide_factor_c = temp_clock_divide_factor;

  fpga_reg_spi_read_write_c = fpga_reg_spi_read_write;
  fpga_reg_spi_address_c = fpga_reg_spi_address;
  fpga_reg_spi_data_len_c = fpga_reg_spi_data_len;
  fpga_reg_spi_write_data_c = fpga_reg_spi_write_data;
  fpga_reg_spi_opcode_group_c = fpga_reg_spi_opcode_group;
  fpga_reg_clock_divide_factor_c = fpga_reg_clock_divide_factor;
  fpga_reg_use_ext_spi_clk_c = fpga_reg_use_ext_spi_clk; 
  fpga_reg_spi_done_c = fpga_reg_spi_done;

  // [lucahhot]: divider_reset should by default be 0
  divider_reset_c = 1'b0;

  // [lucahhot]: Reset spi_busy after "done" signal from spi_controller has been asserted
  if (spi_busy == 1'b1 && done == 1'b1) begin
    spi_busy_c = 1'b0;
    temp_spi_data_len_c = '0; // Need to reset this or else SPI will get triggered again
    fpga_reg_spi_data_len_c = '0; // [lucahhot]: Need to resest this to 0 so the AXI user knows when a SPI transaction has finished
    fpga_reg_spi_done_c = 1'b1; // [lucahhot]: This is so that we know when a SPI transaction has finished on the Spacely level

    // [lucahhot]: At this point, if it is a SPI read, the head of the FIFO buffer is already at spi_read_dout so there is no need to 
    //             pre-load a value at spi_read_dout since it's already there and currently being assigned to fpga_reg_spi_read_data.

    // [lucahhot]: Assign temp_clock_divide_factor_c to fpga_reg_clock_divide_factor once SPI transaction is complete (only if 
    //             temp_clock_divide_factor != fpga_reg_clock_divide_factor)
    if (temp_clock_divide_factor_c != fpga_reg_clock_divide_factor) begin
      fpga_reg_clock_divide_factor_c = temp_clock_divide_factor;
      divider_reset_c = 1'b1;
    end
  end

  // [lucahhot]: AXI writes to fpga_regs
  if (reg_wrByteStrobe[FPGA_SPI_WR] == 4'b1111) begin
    fpga_reg_spi_read_write_c = reg_wrdout[0]; 
    if (spi_busy == 1'b0)
      temp_WnR_c = reg_wrdout[0];
  end

  if (reg_wrByteStrobe[FPGA_SPI_ADDRESS] == 4'b1111) begin
    fpga_reg_spi_address_c = reg_wrdout[9:0]; 
    if (spi_busy == 1'b0)
      temp_spi_address_c = reg_wrdout[9:0];
  end

  if (reg_wrByteStrobe[FPGA_SPI_DATA_LEN] == 4'b1111) begin
    fpga_reg_spi_data_len_c = reg_wrdout[7:0]; 
    if (spi_busy == 1'b0 && reg_wrdout[7:0] != '0) begin
      temp_spi_data_len_c = reg_wrdout[7:0];
      spi_busy_c = 1'b1; // [lucahhot]: When this register is written to, trigger SPI transaction
      fpga_reg_spi_done_c = 1'b0; // [lucahhot]: When SPI is busy, the fpga done register should have a 0 inside
    end
  end

  if (reg_wrByteStrobe[FPGA_SPI_OPCODE_GROUP] == 4'b1111) begin
    fpga_reg_spi_opcode_group_c = reg_wrdout[1:0];
    if (spi_busy == 1'b0)
      temp_spi_opcode_group_c = reg_wrdout[1:0];
  end

  if (reg_wrByteStrobe[FPGA_SPI_WRITE_DATA] == 4'b1111) begin
    fpga_reg_spi_write_data_c = reg_wrdout; 
    // [lucahhot]: Write data to spi_command_buffer in addition to the fpga_reg (spi_command_buffer should not be full)
    if (spi_command_full == 1'b0) begin
      spi_command_din = reg_wrdout;
      spi_command_wr_en = 1'b1;
    end
  end

  if (reg_wrByteStrobe[FPGA_CLOCK_DIVIDE_FACTOR] == 4'b1111) begin
    fpga_reg_clock_divide_factor_c = reg_wrdout[4:0];
    if (spi_busy == 1'b0) begin
      temp_clock_divide_factor_c = reg_wrdout[4:0];
      // [lucahhot]: Reset the clock divider when the clock divide factor is changed
      divider_reset_c = 1'b1;
    end
  end

  if (reg_wrByteStrobe[FPGA_USE_EXT_SPI_CLK] == 4'b1111) begin
     fpga_reg_use_ext_spi_clk_c = reg_wrdout[0];
  end

  // *** SPI READS ***

  // [lucahhot]: We need to pop a new value from the spi_read_buffer FIFO everytime AXI tries to read fpga_reg_read_data
  //       Note: This can only go through if the SPI read has completed as spi_controller may still be reading into a data element that has not yet been pushed into spi_read_buffer
  if (reg_rdStrobe[FPGA_SPI_READ_DATA] == 1'b1 && spi_busy == 1'b0) begin
    // [lucahhot]: If spi_read_empty == 1'b1 it means we have read the entire buffer (all the data has been transmitted) and nothing will happen
    if (spi_read_empty == 1'b0)
      spi_read_rd_en = 1'b1;
  end

end


   ///////////////////////////////////////////
   ///////////////////////////////////////////
   // SPI Controller Core Instantiation   ////
   ///////////////////////////////////////////
   ///////////////////////////////////////////
   
// [lucahhot]: Instantiate SPI controller to send configuration instructions to SPI peripheral on SP3 chip
// spi_controller_SP3 #(
// .C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH)
// )  spi_controller_inst  (
//   .reset_b(S_AXI_ARESETN),
//   .WnR(temp_WnR),
//   .spi_address(temp_spi_address),
//   .spi_data_len(temp_spi_data_len),
//   .spi_command_rd_en(spi_command_rd_en),
//   .spi_command_empty(spi_command_empty),
//   .spi_command_dout(spi_command_dout),
//   .spi_read_wr_en(spi_read_wr_en),
//   .spi_read_full(spi_read_full),
//   .spi_read_din(spi_read_din),
//   .pico(pico),
//   .cs_b(cs_b),
//   .spi_clk(spi_clk),
//   .poci(poci),
//   .done(done)
// );

// [lucahhot]: Instantiate SPI controller to send configuration instructions to SPI peripheral on SP3A chip
spi_controller_SP3A #(
.C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH)
)  spi_controller_inst  (
  .reset_b(S_AXI_ARESETN),
  .WnR(temp_WnR),
  .spi_address(temp_spi_address),
  .spi_data_len(temp_spi_data_len),
  .spi_opcode_group(temp_spi_opcode_group),
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
  .dbg_state(dbg_state),
  .done(done)
);

   logic clock_divider_source;
   

   always_comb begin
      if (fpga_reg_use_ext_spi_clk == 1'b1) clock_divider_source = ext_spi_clk;
      else clock_divider_source = S_AXI_ACLK;
   end
   

// [lucahhot]: Instantiate clock divider for spi_clk
clock_divider clock_divider_inst (
  .input_clock(clock_divider_source),
  .reset(S_AXI_ARESETN),
  .divider_reset(divider_reset),
  .clock_divider_factor(temp_clock_divide_factor),
  .output_clock(spi_clk)
);

endmodule
