
module generic_spi_controller_interface #(
			    parameter integer MEM_DEPTH=64,

	// Width of S_AXI data bus
  parameter integer C_S_AXI_DATA_WIDTH=32,
  // Width of S_AXI address bus
  parameter integer C_S_AXI_ADDR_WIDTH=11
) (

  input logic  axi_clk,
input logic  axi_resetn,
input logic  poci,
output logic  pico,
output logic  cs_b,
input logic  master_spi_clk,
output logic  spi_clk_gated,


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
localparam integer FPGA_REGISTER_N = 16;

// Addresses of all AXI-mapped registers in this firmware block.

   localparam byte unsigned ADDRESS_mem_write = 0;
localparam byte unsigned ADDRESS_mem_write_ptr = 1;
localparam byte unsigned ADDRESS_mem_write_ptr_reset = 2;
localparam byte unsigned ADDRESS_mem_read = 3;
localparam byte unsigned ADDRESS_mem_read_ptr = 4;
localparam byte unsigned ADDRESS_mem_read_ptr_reset = 5;
localparam byte unsigned ADDRESS_transaction_count = 6;
localparam byte unsigned ADDRESS_transaction_len = 7;
localparam byte unsigned ADDRESS_run = 8;
localparam byte unsigned ADDRESS_status = 9;
localparam byte unsigned ADDRESS_loop_pattern = 10;
localparam byte unsigned ADDRESS_loop_pattern_len = 11;
localparam byte unsigned ADDRESS_loop_iters = 12;
localparam byte unsigned ADDRESS_loop_mode = 13;
localparam byte unsigned ADDRESS_loop_counter = 14;
localparam byte unsigned ADDRESS_param_MEM_DEPTH = 15;

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

   logic 			      mem_write_strb = reg_wrByteStrobe[ADDRESS_mem_write][0];
   logic 			      mem_read_strb = reg_rdStrobe[ADDRESS_mem_read];


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


   logic [31:0] fpga_reg_mem_write;
logic [31:0] fpga_reg_mem_write_ptr;
logic                  fpga_reg_mem_write_ptr_reset;
logic [31:0] fpga_reg_mem_read;
logic [31:0] fpga_reg_mem_read_ptr;
logic                  fpga_reg_mem_read_ptr_reset;
logic [31:0] fpga_reg_transaction_count;
logic [31:0] fpga_reg_transaction_len;
logic                  fpga_reg_run;
logic [2:0] fpga_reg_status;
logic [31:0] fpga_reg_loop_pattern;
logic [7:0] fpga_reg_loop_pattern_len;
logic [31:0] fpga_reg_loop_iters;
logic [2:0] fpga_reg_loop_mode;
logic [31:0] fpga_reg_loop_counter;
logic [31:0] fpga_reg_param_MEM_DEPTH;


   always_ff @(posedge S_AXI_ACLK) begin
    if (~S_AXI_ARESETN) begin
        fpga_reg_mem_write <= '0;
        fpga_reg_mem_write_ptr_reset <= '0;
        fpga_reg_mem_read_ptr_reset <= '0;
        fpga_reg_transaction_len <= '0;
        fpga_reg_run <= '0;
        fpga_reg_loop_pattern <= '0;
        fpga_reg_loop_pattern_len <= '0;
        fpga_reg_loop_iters <= '0;
        fpga_reg_loop_mode <= '0;
    end
    else begin
        if (reg_wrByteStrobe[ADDRESS_mem_write] == 4'b1111)
            fpga_reg_mem_write <= reg_wrdout[31:0];
        if (reg_wrByteStrobe[ADDRESS_mem_write_ptr_reset] == 4'b1111)
            fpga_reg_mem_write_ptr_reset <= 1;
        else
            fpga_reg_mem_write_ptr_reset <= 0;
        if (reg_wrByteStrobe[ADDRESS_mem_read_ptr_reset] == 4'b1111)
            fpga_reg_mem_read_ptr_reset <= 1;
        else
            fpga_reg_mem_read_ptr_reset <= 0;
        if (reg_wrByteStrobe[ADDRESS_transaction_len] == 4'b1111)
            fpga_reg_transaction_len <= reg_wrdout[31:0];
        if (reg_wrByteStrobe[ADDRESS_run] == 4'b1111)
            fpga_reg_run <= 1;
        else
            fpga_reg_run <= 0;
        if (reg_wrByteStrobe[ADDRESS_loop_pattern] == 4'b1111)
            fpga_reg_loop_pattern <= reg_wrdout[31:0];
        if (reg_wrByteStrobe[ADDRESS_loop_pattern_len] == 4'b1111)
            fpga_reg_loop_pattern_len <= reg_wrdout[7:0];
        if (reg_wrByteStrobe[ADDRESS_loop_iters] == 4'b1111)
            fpga_reg_loop_iters <= reg_wrdout[31:0];
        if (reg_wrByteStrobe[ADDRESS_loop_mode] == 4'b1111)
            fpga_reg_loop_mode <= reg_wrdout[2:0];
    end
end //always_ff 


   assign reg_rddin[ADDRESS_mem_write] = fpga_reg_mem_write;
assign reg_rddin[ADDRESS_mem_write_ptr] = fpga_reg_mem_write_ptr;
assign reg_rddin[ADDRESS_mem_write_ptr_reset] = fpga_reg_mem_write_ptr_reset;
assign reg_rddin[ADDRESS_mem_read] = fpga_reg_mem_read;
assign reg_rddin[ADDRESS_mem_read_ptr] = fpga_reg_mem_read_ptr;
assign reg_rddin[ADDRESS_mem_read_ptr_reset] = fpga_reg_mem_read_ptr_reset;
assign reg_rddin[ADDRESS_transaction_count] = fpga_reg_transaction_count;
assign reg_rddin[ADDRESS_transaction_len] = fpga_reg_transaction_len;
assign reg_rddin[ADDRESS_run] = fpga_reg_run;
assign reg_rddin[ADDRESS_status] = fpga_reg_status;
assign reg_rddin[ADDRESS_loop_pattern] = fpga_reg_loop_pattern;
assign reg_rddin[ADDRESS_loop_pattern_len] = fpga_reg_loop_pattern_len;
assign reg_rddin[ADDRESS_loop_iters] = fpga_reg_loop_iters;
assign reg_rddin[ADDRESS_loop_mode] = fpga_reg_loop_mode;
assign reg_rddin[ADDRESS_loop_counter] = fpga_reg_loop_counter;
assign reg_rddin[ADDRESS_param_MEM_DEPTH] = fpga_reg_param_MEM_DEPTH;


   generic_spi_controller #(
.MEM_DEPTH(MEM_DEPTH))generic_spi_controller_int (
.mem_write(fpga_reg_mem_write),
.mem_write_ptr(fpga_reg_mem_write_ptr),
.mem_write_ptr_reset(fpga_reg_mem_write_ptr_reset),
.mem_read(fpga_reg_mem_read),
.mem_read_ptr(fpga_reg_mem_read_ptr),
.mem_read_ptr_reset(fpga_reg_mem_read_ptr_reset),
.transaction_count(fpga_reg_transaction_count),
.transaction_len(fpga_reg_transaction_len),
.run(fpga_reg_run),
.status(fpga_reg_status),
.loop_pattern(fpga_reg_loop_pattern),
.loop_pattern_len(fpga_reg_loop_pattern_len),
.loop_iters(fpga_reg_loop_iters),
.loop_mode(fpga_reg_loop_mode),
.loop_counter(fpga_reg_loop_counter),
.axi_clk(axi_clk),
.axi_resetn(axi_resetn),
.poci(poci),
.pico(pico),
.cs_b(cs_b),
						  .mem_write_strb(mem_write_strb),
.mem_read_strb(mem_read_strb),
.master_spi_clk(master_spi_clk),
.spi_clk_gated(spi_clk_gated));

   assign fpga_reg_param_MEM_DEPTH = MEM_DEPTH;


  
endmodule
