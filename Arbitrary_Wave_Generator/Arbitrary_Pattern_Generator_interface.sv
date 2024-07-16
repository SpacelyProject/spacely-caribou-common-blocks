
module Arbitrary_Pattern_Generator_interface #(
			    parameter integer NUM_SIG=8,
parameter integer NUM_SAMP=128,

	// Width of S_AXI data bus
  parameter integer C_S_AXI_DATA_WIDTH=32,
  // Width of S_AXI address bus
  parameter integer C_S_AXI_ADDR_WIDTH=11
) (

  input logic  wave_clk,
input logic  axi_clk,
input logic  axi_resetn,
output logic [7:0] output_signals,
input logic [7:0] input_signals,


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

   localparam byte unsigned ADDRESS_run = 0;
localparam byte unsigned ADDRESS_write_channel = 1;
localparam byte unsigned ADDRESS_read_channel = 2;
localparam byte unsigned ADDRESS_sample_count = 3;
localparam byte unsigned ADDRESS_n_samples = 4;
localparam byte unsigned ADDRESS_write_buffer_len = 5;
localparam byte unsigned ADDRESS_next_read_sample = 6;
localparam byte unsigned ADDRESS_wave_ptr = 7;
localparam byte unsigned ADDRESS_status = 8;

/*localparam byte unsigned FPGA_SPI_WR = 0;
localparam byte unsigned FPGA_SPI_ADDRESS = 1;
localparam byte unsigned FPGA_SPI_DATA_LEN = 2;
localparam byte unsigned FPGA_SPI_OPCODE_GROUP = 3;
localparam byte unsigned FPGA_SPI_WRITE_DATA = 4;
localparam byte unsigned FPGA_SPI_READ_DATA = 5;
localparam byte unsigned FPGA_CLOCK_DIVIDE_FACTOR = 6;
localparam byte unsigned FPGA_USE_EXT_SPI_CLK = 7;
localparam byte unsigned FPGA_SPI_DONE = 8;*/

   
logic [C_S_AXI_DATA_WIDTH-1:0]        reg_wrdout;
logic [((C_S_AXI_DATA_WIDTH-1)/8):0]  reg_wrByteStrobe [FPGA_REGISTER_N-1:0];
logic                                 reg_rdStrobe [FPGA_REGISTER_N-1:0];
logic [C_S_AXI_DATA_WIDTH-1:0] 	      reg_rddin [FPGA_REGISTER_N-1:0];

   logic 			      write_channel_wrStrobe;
   logic 			      read_channel_rdStrobe;
   
   assign write_channel_wrStrobe = reg_wrByteStrobe[ADDRESS_write_channel][0];
   assign read_channel_rdStrobe = reg_rdStrobe[ADDRESS_read_channel];

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


   logic                  fpga_reg_run;
logic [7:0] fpga_reg_write_channel;
logic [7:0] fpga_reg_read_channel;
logic [31:0] fpga_reg_sample_count;
logic [31:0] fpga_reg_n_samples;
logic [31:0] fpga_reg_write_buffer_len;
logic [31:0] fpga_reg_next_read_sample;
logic [31:0] fpga_reg_wave_ptr;
logic [2:0] fpga_reg_status;


   always_ff @(posedge S_AXI_ACLK) begin
    if (~S_AXI_ARESETN) begin
        fpga_reg_run <= '0;
        fpga_reg_write_channel <= '0;
        fpga_reg_n_samples <= '0;
    end
    else begin
        if (reg_wrByteStrobe[ADDRESS_run] == 4'b1111)
            fpga_reg_run <= 1;
        else
            fpga_reg_run <= 0;
        if (reg_wrByteStrobe[ADDRESS_write_channel] == 4'b1111)
            fpga_reg_write_channel <= reg_wrdout[7:0];
        if (reg_wrByteStrobe[ADDRESS_n_samples] == 4'b1111)
            fpga_reg_n_samples <= reg_wrdout[31:0];
    end
end //always_ff 


   assign reg_rddin[ADDRESS_run] = fpga_reg_run;
assign reg_rddin[ADDRESS_write_channel] = fpga_reg_write_channel;
assign reg_rddin[ADDRESS_read_channel] = fpga_reg_read_channel;
assign reg_rddin[ADDRESS_sample_count] = fpga_reg_sample_count;
assign reg_rddin[ADDRESS_n_samples] = fpga_reg_n_samples;
assign reg_rddin[ADDRESS_write_buffer_len] = fpga_reg_write_buffer_len;
assign reg_rddin[ADDRESS_next_read_sample] = fpga_reg_next_read_sample;
assign reg_rddin[ADDRESS_wave_ptr] = fpga_reg_wave_ptr;
assign reg_rddin[ADDRESS_status] = fpga_reg_status;


   Arbitrary_Pattern_Generator #(
.NUM_SIG(NUM_SIG),
.NUM_SAMP(NUM_SAMP))Arbitrary_Pattern_Generator_int (
.run(fpga_reg_run),
.write_channel(fpga_reg_write_channel),
.read_channel(fpga_reg_read_channel),
.sample_count(fpga_reg_sample_count),
.n_samples(fpga_reg_n_samples),
.write_buffer_len(fpga_reg_write_buffer_len),
.next_read_sample(fpga_reg_next_read_sample),
.wave_ptr(fpga_reg_wave_ptr),
.status(fpga_reg_status),
.wave_clk(wave_clk),
.axi_clk(axi_clk),
.axi_resetn(axi_resetn),
.output_signals(output_signals),
.input_signals(input_signals),
.write_channel_wrStrobe(write_channel_wrStrobe),
.read_channel_rdStrobe(read_channel_rdStrobe));

  
endmodule
