module ExampleBlock #(
	// Width of S_AXI data bus
    parameter integer C_S_AXI_DATA_WIDTH  = 32,
    // Width of S_AXI address bus
    parameter integer C_S_AXI_ADDR_WIDTH  = 11,
	)(
	
	integer FPGA_REGISTER_N = 2
	
	output [7:0] output_leds, 
	
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
	
	logic [C_S_AXI_DATA_WIDTH-1:0] reg_wrdout,
    logic [((C_S_AXI_DATA_WIDTH-1)/8):0] reg_wrByteStrobe [FPGA_REGISTER_N-1:0],
    logic  reg_rdStrobe [FPGA_REGISTER_N-1:0],
    logic  [C_S_AXI_DATA_WIDTH-1:0] reg_rddin [REGISTER_N-1:0],
	
	// Instantiate the AXI Interface
	// NOTE: This block should be included from spacely-caribou-common-blocks/axi4lite_interface
	axi4lite_interface_top #(
	.FPGA_REGISTER_N(FPGA_REGISTER_N),
	.C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH),
	.C_S_AXI_ADDR_WIDTH(C_S_AXI_DATA_WIDTH)
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
	

	logic  [C_S_AXI_DATA_WIDTH-1:0] reg1;
	logic  [C_S_AXI_DATA_WIDTH-1:0] reg2;
	
	always_ff @(posedge S_AXI_ACLK) begin
	
		if (~S_AXI_ARESETN) begin
			reg1 <= 0;
			reg2 <= 0;
		end
		else begin
			//Allow writes to reg1 only.
			if(reg_wrByteStrobe[0][0] == 1) reg1[7:0] <= reg_wrdout;
			if(reg_wrByteStrobe[0][1] == 1) reg1[15:8] <= reg_wrdout;
			if(reg_wrByteStrobe[0][2] == 1) reg1[23:16] <= reg_wrdout;
			if(reg_wrByteStrobe[0][3] == 1) reg1[31:24] <= reg_wrdout;
		end
	end
	
	
	//Output LEDs should display the first byte of reg1.
	assign output_leds = reg1[7:0]
	
	//Both registers are readable.
	assign reg_rddin[0] = reg1;
	assign reg_rddin[1] = reg2;
	
	//Reg2 combinationally gets the value of reg1 * 2. 
	assign reg2 = reg1 << 1;
	

endmodule
