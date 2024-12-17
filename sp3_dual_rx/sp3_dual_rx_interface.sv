
module sp3_dual_rx_interface #(
			    
	// Width of S_AXI data bus
  parameter integer C_S_AXI_DATA_WIDTH=32,
  // Width of S_AXI address bus
  parameter integer C_S_AXI_ADDR_WIDTH=11
) (

  input logic  SFP0_RX_P,
input logic  SFP0_RX_N,
input logic  SMA_MGT_REFCLK_P,
input logic  SMA_MGT_REFCLK_N,
input logic  USER_CLOCK_P,
input logic  USER_CLOCK_N,
input logic axi_clk,
output logic  clk20_o,
output logic  uplinkrdy_a_o,
output logic  uplinkFEC_a_o,
output logic [233:0] uplinkUserData_a,
output logic  uplinkrdy_b_o,
output logic  uplinkFEC_b_o,
output logic [233:0] uplinkUserData_b,


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
localparam integer FPGA_REGISTER_N = 12;

// Addresses of all AXI-mapped registers in this firmware block.

   localparam byte unsigned ADDRESS_uplinkEcData_a = 0;
localparam byte unsigned ADDRESS_uplinkIcData_a = 1;
localparam byte unsigned ADDRESS_uplinkEcData_b = 2;
localparam byte unsigned ADDRESS_uplinkIcData_b = 3;
localparam byte unsigned ADDRESS_mgt_rxpolarity_i = 4;
localparam byte unsigned ADDRESS_uplinkRst_i = 5;
localparam byte unsigned ADDRESS_interleaverBypass = 6;
localparam byte unsigned ADDRESS_fecBypass = 7;
localparam byte unsigned ADDRESS_scramblerBypass = 8;
localparam byte unsigned ADDRESS_pulse_bitslip_a = 9;
localparam byte unsigned ADDRESS_pulse_bitslip_b = 10;
localparam byte unsigned ADDRESS_status = 11;

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


   logic [1:0] fpga_reg_uplinkEcData_a;
logic [1:0] fpga_reg_uplinkIcData_a;
logic [1:0] fpga_reg_uplinkEcData_b;
logic [1:0] fpga_reg_uplinkIcData_b;
logic                  fpga_reg_mgt_rxpolarity_i;
logic                  fpga_reg_uplinkRst_i;
logic                  fpga_reg_interleaverBypass;
logic                  fpga_reg_fecBypass;
logic                  fpga_reg_scramblerBypass;
logic                  fpga_reg_pulse_bitslip_a;
logic                  fpga_reg_pulse_bitslip_b;
logic [7:0] fpga_reg_status;


   always_ff @(posedge S_AXI_ACLK) begin
    if (~S_AXI_ARESETN) begin
        fpga_reg_mgt_rxpolarity_i <= '0;
        fpga_reg_uplinkRst_i <= '0;
        fpga_reg_interleaverBypass <= '0;
        fpga_reg_fecBypass <= '0;
        fpga_reg_scramblerBypass <= '0;
        fpga_reg_pulse_bitslip_a <= '0;
        fpga_reg_pulse_bitslip_b <= '0;
    end
    else begin
        if (reg_wrByteStrobe[ADDRESS_mgt_rxpolarity_i] == 4'b1111)
            fpga_reg_mgt_rxpolarity_i <= reg_wrdout[0];
        if (reg_wrByteStrobe[ADDRESS_uplinkRst_i] == 4'b1111)
            fpga_reg_uplinkRst_i <= reg_wrdout[0];
        if (reg_wrByteStrobe[ADDRESS_interleaverBypass] == 4'b1111)
            fpga_reg_interleaverBypass <= reg_wrdout[0];
        if (reg_wrByteStrobe[ADDRESS_fecBypass] == 4'b1111)
            fpga_reg_fecBypass <= reg_wrdout[0];
        if (reg_wrByteStrobe[ADDRESS_scramblerBypass] == 4'b1111)
            fpga_reg_scramblerBypass <= reg_wrdout[0];
        if (reg_wrByteStrobe[ADDRESS_pulse_bitslip_a] == 4'b1111)
            fpga_reg_pulse_bitslip_a <= 1;
        else
            fpga_reg_pulse_bitslip_a <= 0;
        if (reg_wrByteStrobe[ADDRESS_pulse_bitslip_b] == 4'b1111)
            fpga_reg_pulse_bitslip_b <= 1;
        else
            fpga_reg_pulse_bitslip_b <= 0;
    end
end //always_ff 


   assign reg_rddin[ADDRESS_uplinkEcData_a] = fpga_reg_uplinkEcData_a;
assign reg_rddin[ADDRESS_uplinkIcData_a] = fpga_reg_uplinkIcData_a;
assign reg_rddin[ADDRESS_uplinkEcData_b] = fpga_reg_uplinkEcData_b;
assign reg_rddin[ADDRESS_uplinkIcData_b] = fpga_reg_uplinkIcData_b;
assign reg_rddin[ADDRESS_mgt_rxpolarity_i] = fpga_reg_mgt_rxpolarity_i;
assign reg_rddin[ADDRESS_uplinkRst_i] = fpga_reg_uplinkRst_i;
assign reg_rddin[ADDRESS_interleaverBypass] = fpga_reg_interleaverBypass;
assign reg_rddin[ADDRESS_fecBypass] = fpga_reg_fecBypass;
assign reg_rddin[ADDRESS_scramblerBypass] = fpga_reg_scramblerBypass;
assign reg_rddin[ADDRESS_pulse_bitslip_a] = fpga_reg_pulse_bitslip_a;
assign reg_rddin[ADDRESS_pulse_bitslip_b] = fpga_reg_pulse_bitslip_b;
assign reg_rddin[ADDRESS_status] = fpga_reg_status;


   sp3_dual_rx sp3_dual_rx_int (
.uplinkEcData_a(fpga_reg_uplinkEcData_a),
.uplinkIcData_a(fpga_reg_uplinkIcData_a),
.uplinkEcData_b(fpga_reg_uplinkEcData_b),
.uplinkIcData_b(fpga_reg_uplinkIcData_b),
.mgt_rxpolarity_i(fpga_reg_mgt_rxpolarity_i),
.uplinkRst_i(fpga_reg_uplinkRst_i),
.interleaverBypass(fpga_reg_interleaverBypass),
.fecBypass(fpga_reg_fecBypass),
.scramblerBypass(fpga_reg_scramblerBypass),
.pulse_bitslip_a(fpga_reg_pulse_bitslip_a),
.pulse_bitslip_b(fpga_reg_pulse_bitslip_b),
.status(fpga_reg_status),
.SFP0_RX_P(SFP0_RX_P),
.SFP0_RX_N(SFP0_RX_N),
.SMA_MGT_REFCLK_P(SMA_MGT_REFCLK_P),
.SMA_MGT_REFCLK_N(SMA_MGT_REFCLK_N),
.USER_CLOCK_P(USER_CLOCK_P),
.USER_CLOCK_N(USER_CLOCK_N),
.clk20_o(clk20_o),
.uplinkrdy_a_o(uplinkrdy_a_o),
.uplinkFEC_a_o(uplinkFEC_a_o),
.uplinkUserData_a(uplinkUserData_a),
.uplinkrdy_b_o(uplinkrdy_b_o),
.uplinkFEC_b_o(uplinkFEC_b_o),
.uplinkUserData_b(uplinkUserData_b),
.axi_clk(axi_clk));

   

  
endmodule
