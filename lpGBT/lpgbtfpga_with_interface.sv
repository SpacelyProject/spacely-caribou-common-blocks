
module lpgbtfpga_with_interface #(
    // Width of S_AXI data bus
    parameter integer C_S_AXI_DATA_WIDTH  = 32,
    // Width of S_AXI address bus
    parameter integer C_S_AXI_ADDR_WIDTH  = 11
)(


    // INPUT HIGH SPEED DATA AND CLOCKS
    input wire 				      SMA_MGT_REFCLK_P, SMA_MGT_REFCLK_N,
    input wire 				      USER_CLOCK_P, USER_CLOCK_N,
    input wire 				      SFP0_RX_P, SFP0_RX_N,


  // DEBUG
  output wire                                 dbg_uplinkMgtWordParity,

    //  DATA OUT INTERFACE

    output wire 			      clk40_o,
    output wire 			      uplinkrdy_o,
    output wire [233:0] 		      uplinkUserData_o,
    output wire 			      uplinkFEC_o,



    //////////////////////////////
    //    AXI BUS SIGNALS       //
    //////////////////////////////

    //	Global Clock Signal
    input wire 				      S_AXI_ACLK,
    // Global Reset Signal. This Signal is Active LOW
    input wire 				      S_AXI_ARESETN,
    // Write address (issued by master, accepted by Slave)
    input wire [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_AWADDR,
    // Write channel Protection type. This signal indicates the
    // privilege and security level of the transaction, and whether
    // the transaction is a data access or an instruction access.
    input wire [2 : 0] 			      S_AXI_AWPROT,
    // Write address valid. This signal indicates that the master signaling
    // valid write address and control information.
    input wire 				      S_AXI_AWVALID,
    // Write address ready. This signal indicates that the slave is ready
    // to accept an address and associated control signals.
    output wire 			      S_AXI_AWREADY,
    // Write data (issued by master, accepted by Slave)
    input wire [C_S_AXI_DATA_WIDTH-1 : 0]     S_AXI_WDATA,
    // Write strobes. This signal indicates which byte lanes hold
    // valid data. There is one write strobe bit for each eight
    // bits of the write data bus.
    input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
    // Write valid. This signal indicates that valid write
    // data and strobes are available.
    input wire 				      S_AXI_WVALID,
    // Write ready. This signal indicates that the slave
    // can accept the write data.
    output wire 			      S_AXI_WREADY,
    // Write response. This signal indicates the status
    // of the write transaction.
    output wire [1 : 0] 		      S_AXI_BRESP,
    // Write response valid. This signal indicates that the channel
    // is signaling a valid write response.
    output wire 			      S_AXI_BVALID,
    // Response ready. This signal indicates that the master
    // can accept a write response.
    input wire 				      S_AXI_BREADY,
    // Read address (issued by master, accepted by Slave)
    input wire [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_ARADDR,
    // Protection type. This signal indicates the privilege
    // and security level of the transaction, and whether the
    // transaction is a data access or an instruction access.
    input wire [2 : 0] 			      S_AXI_ARPROT,
    // Read address valid. This signal indicates that the channel
    // is signaling valid read address and control information.
    input wire 				      S_AXI_ARVALID,
    // Read address ready. This signal indicates that the slave is
    // ready to accept an address and associated control signals.
    output wire 			      S_AXI_ARREADY,
    // Read data (issued by slave)
    output wire [C_S_AXI_DATA_WIDTH-1 : 0]    S_AXI_RDATA,
    // Read response. This signal indicates the status of the
    // read transfer.
    output wire [1 : 0] 		      S_AXI_RRESP,
    // Read valid. This signal indicates that the channel is
    // signaling the required read data.
    output wire 			      S_AXI_RVALID,
    // Read ready. This signal indicates that the master can
    // accept the read data and response information.
    input wire 				      S_AXI_RREADY


);

    //NOTE: We don't actually need 2x registers for this block. 
    //But if you try to instantiate a multi-bit array where it only has one bit,
    //it makes Vivado uncomfortable. 

    wire [C_S_AXI_DATA_WIDTH-1:0] reg_wrdout;

    reg [((C_S_AXI_DATA_WIDTH-1)/8):0] reg_wrByteStrobe [1:0];

    reg 				reg_rdStrobe [1:0];

    wire [C_S_AXI_DATA_WIDTH-1:0] 	reg_rddin [1:0];


    // Instantiate the AXI Interface
    // NOTE: This block should be included from spacely-caribou-common-blocks/axi4lite_interface
    axi4lite_interface_top #(
    .FPGA_REGISTER_N(2),
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

    /////////////////////////////////
    //  LPGBTFPGA CORE LOGIC       //
    /////////////////////////////////

   //Signals that are supplied from AXI control register.
   wire 				uplinkRst_i;
   wire 				mgt_rxpolarity_i;
   
   
   wire [1:0] uplinkIcData_o;
   wire [1:0] uplinkEcData_o;
   wire [2:0] uplinkPhase_o;

   wire [31:0] uplinkMgtWord;
   wire        mgt_rx_rdy;
   
   


    //Instantiate the core of the lpgbtfpga module.
    lpgbtfpga_zcu102_10g24_top (.SMA_MGT_REFCLK_P(SMA_MGT_REFCLK_P),
        .SMA_MGT_REFCLK_N(SMA_MGT_REFCLK_N),
        .USER_CLOCK_P(USER_CLOCK_P),
        .USER_CLOCK_N(USER_CLOCK_N),
        .SFP0_RX_P(SFP0_RX_P),
        .SFP0_RX_N(SFP0_RX_N),
        .clk40_o(clk40_o),
        .uplinkrdy_o(uplinkrdy_o),
        .uplinkUserData_o(uplinkUserData_o),
        .uplinkRst_i(uplinkRst_i),
        .uplinkFEC_o(uplinkFEC_o),
        .mgt_rxpolarity_i(mgt_rxpolarity_i),
        .uplinkIcData_o(uplinkIcData_o),
        .uplinkEcData_o(uplinkEcData_o),
        .uplinkPhase_o(uplinkPhase_o),
	.mgt_rx_rdy(mgt_rx_rdy),
	.uplinkMgtWordDbg(uplinkMgtWord));

   
   assign dbg_uplinkMgtWordParity = ^uplinkMgtWord;
   

    //lpgbtfpga control registers
    reg [C_S_AXI_DATA_WIDTH-1:0] 	control;
   reg [C_S_AXI_DATA_WIDTH-1:0] 	status;
   

    //register read/write logic.
    always @(posedge S_AXI_ACLK) begin
        if (~S_AXI_ARESETN) begin
            control <= 0;
        end
        else begin
            if(reg_wrByteStrobe[0] > 0) control <= reg_wrdout;
        end
    end

    //Allow readback of control
    assign reg_rddin[0] = control;
   assign reg_rddin[1] = status;


   assign status[0] = uplinkrdy_o;
   assign status[1] = uplinkFEC_o;
   assign status[3:2] = uplinkEcData_o;
   assign status[5:4] = uplinkIcData_o;
   assign status[8:6] = uplinkPhase_o;
   assign status[9] = mgt_rx_rdy;
   


    //Generate control signals from control register.
    //assign uplinkRst_i = control[0];
    //assign mgt_rxpolarity_i = control[1];


    xpm_cdc_single cdc_uplinkRst (.dest_out(uplinkRst_i),
                                  .dest_clk(clk40_o),
                                  .src_clk(S_AXI_ACLK),
                                  .src_in(control[0]));

    xpm_cdc_single cdc_mgt_rxpolarity (.dest_out(mgt_rxpolarity_i),
                                  .dest_clk(clk40_o),
                                  .src_clk(S_AXI_ACLK),
                                  .src_in(control[1]));



endmodule // lpgbtfpga_top

