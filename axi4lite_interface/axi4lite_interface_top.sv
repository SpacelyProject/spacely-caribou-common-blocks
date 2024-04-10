//
// axi4lite_interface_top
//

module axi4lite_interface_top #(
	// Width of S_AXI data bus
    parameter integer C_S_AXI_DATA_WIDTH  = 32,
    // Width of S_AXI address bus
    parameter integer C_S_AXI_ADDR_WIDTH  = 11,
	// Number of 
	parameter integer FPGA_REGISTER_N = 6
	)(
	
	///////////////////////////
	// REG INTERFACE SIGNALS //
	///////////////////////////
	
    output [C_S_AXI_DATA_WIDTH-1:0] reg_wrdout,
    output [((C_S_AXI_DATA_WIDTH-1)/8):0] reg_wrByteStrobe [FPGA_REGISTER_N-1:0],
    output  reg_rdStrobe [FPGA_REGISTER_N-1:0],
    input  [C_S_AXI_DATA_WIDTH-1:0] reg_rddin [FPGA_REGISTER_N-1:0],
	
	//////////////////////////////
	//    AXI BUS SIGNALS       //
	//////////////////////////////
	
	//	Global Clock Signal
    input wire  S_AXI_ACLK,
    // Global Reset Signal. This Signal is Active LOW
    input wire  S_AXI_ARESETN,
    // Write address (issued by master, accepted by Slave)
    input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
    // Write channel Protection type. This signal indicates the
        // privilege and security level of the transaction, and whether
        // the transaction is a data access or an instruction access.
    input wire [2 : 0] S_AXI_AWPROT,
    // Write address valid. This signal indicates that the master signaling
        // valid write address and control information.
    input wire  S_AXI_AWVALID,
    // Write address ready. This signal indicates that the slave is ready
        // to accept an address and associated control signals.
    output wire  S_AXI_AWREADY,
    // Write data (issued by master, accepted by Slave)
    input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
    // Write strobes. This signal indicates which byte lanes hold
        // valid data. There is one write strobe bit for each eight
        // bits of the write data bus.
    input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
    // Write valid. This signal indicates that valid write
        // data and strobes are available.
    input wire  S_AXI_WVALID,
    // Write ready. This signal indicates that the slave
        // can accept the write data.
    output wire  S_AXI_WREADY,
    // Write response. This signal indicates the status
        // of the write transaction.
    output wire [1 : 0] S_AXI_BRESP,
    // Write response valid. This signal indicates that the channel
        // is signaling a valid write response.
    output wire  S_AXI_BVALID,
    // Response ready. This signal indicates that the master
        // can accept a write response.
    input wire  S_AXI_BREADY,
    // Read address (issued by master, accepted by Slave)
    input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
    // Protection type. This signal indicates the privilege
        // and security level of the transaction, and whether the
        // transaction is a data access or an instruction access.
    input wire [2 : 0] S_AXI_ARPROT,
    // Read address valid. This signal indicates that the channel
        // is signaling valid read address and control information.
    input wire  S_AXI_ARVALID,
    // Read address ready. This signal indicates that the slave is
        // ready to accept an address and associated control signals.
    output wire  S_AXI_ARREADY,
    // Read data (issued by slave)
    output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
    // Read response. This signal indicates the status of the
        // read transfer.
    output wire [1 : 0] S_AXI_RRESP,
    // Read valid. This signal indicates that the channel is
        // signaling the required read data.
    output wire  S_AXI_RVALID,
    // Read ready. This signal indicates that the master can
        // accept the read data and response information.
    input wire  S_AXI_RREADY


	);
	
    localparam AXI_DATA_BYTES = ((C_S_AXI_DATA_WIDTH-1)/8)+1;
    localparam AXI_ADDR_LSB = ($clog2(C_S_AXI_DATA_WIDTH)-3); // 2
    localparam AXI_REG_ADDR_WIDTH = C_S_AXI_ADDR_WIDTH-AXI_ADDR_LSB; // 9
    
	localparam byte unsigned FPGA_REG_ADDR_WIDTH = ($clog2(FPGA_REGISTER_N)); // 3

	logic [C_S_AXI_DATA_WIDTH-1:0]  axi_mem_rdata;
	logic [C_S_AXI_DATA_WIDTH-1:0]  axi_mem_wdata;
	logic [AXI_REG_ADDR_WIDTH-1:0]  axi_mem_rdAddr;
	logic [AXI_REG_ADDR_WIDTH-1:0]  axi_mem_wrAddr; // [lucahhot]: This has already been modified for 4-byte addressable registers (0x4 = 1, 0x8 = 2, etc), 9 bits wide
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
	
	logic axi_wren_fpgaregs;
	logic axi_rden_fpgaregs;

	// Select write to FPGA registers (registers controlled by the AXI interface)
	always_comb begin		 // axi_mem_wrAddr[8:3] has to be zeros or else axi_wren_fpgaregs is set to 0
		if (~|axi_mem_wrAddr[AXI_REG_ADDR_WIDTH-1:FPGA_REG_ADDR_WIDTH]) axi_wren_fpgaregs = 1'b1;
		else axi_wren_fpgaregs = 1'b0;
	end

	// Select read to FPGA registers (registers controlled by the AXI interface)
	always_comb begin	    
		if (~|axi_mem_rdAddr[AXI_REG_ADDR_WIDTH-1:FPGA_REG_ADDR_WIDTH]) axi_rden_fpgaregs = 1'b1;
		else axi_rden_fpgaregs = 1'b0;
	end
	
	
	// Register Demultiplexer
	mem_regs #(
	.REGISTER_N(FPGA_REGISTER_N),
	.REG_DATA_WIDTH(C_S_AXI_DATA_WIDTH)
	) mem_regs_inst (

	// REG INTERFACE:

	// Output to the register being written to from mem_wrdin from the AXI master
	.reg_wrdout(reg_wrdout),
	// This is the value of mem_wrByteStrobe when axi_wren_fpgaregs is high, else all zeros
	.reg_wrByteStrobe(reg_wrByteStrobe), 
	// Read enable signal for every single FPGA register
	.reg_rdStrobe(reg_rdStrobe), 
	// Input for the registers to be passed to mem_rddout and sent back to the AXI master
	.reg_rddin(reg_rddin),

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
	.mem_rdAddr(axi_mem_rdAddr[AXI_REG_ADDR_WIDTH-1:0]), 
	// Write address requested by the master
	.mem_wrAddr(axi_mem_wrAddr[AXI_REG_ADDR_WIDTH-1:0]), 
	// This signal indicate which byte lanes hold valid data (one write strobe for every byte) (should be 4 bits wide for data width of 32 bits)
	.mem_wrByteStrobe(axi_mem_wrByteStrobe), 
	// Equivalent to the slave register read enable signal (when valid read address is available and the slave
	// is ready to accept the read address) (Set for a corresponding axi_mem_rdAddr)
	.mem_rdStrobe(axi_mem_rdStrobe) 

	);


endmodule
	
