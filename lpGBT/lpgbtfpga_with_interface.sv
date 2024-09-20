
module lpgbtfpga_with_interface #(
    // Width of S_AXI data bus
    parameter integer C_S_AXI_DATA_WIDTH  = 32,
    // Width of S_AXI address bus
    parameter integer C_S_AXI_ADDR_WIDTH  = 11
  )(

    // INPUT HIGH SPEED DATA AND CLOCKS
    input wire              SMA_MGT_REFCLK_P, SMA_MGT_REFCLK_N,
    input wire              USER_CLOCK_P, USER_CLOCK_N,
    input wire              SFP0_RX_P, SFP0_RX_N,

    // DEBUG
    output wire             dbg_uplinkMgtWordParity,
    output wire [31:0]      dbg_uplinkMgtWord,
    output wire             dbg_320mhz_lpgbtfpga_mgtrxclk,

    //  DATA OUT INTERFACE
    output wire             clk40_o,
    output logic            uplinkrdy_o,
    output wire [233:0]     uplinkUserData_o,
    output wire             uplinkFEC_o,

    //////////////////////////////
    //    AXI BUS SIGNALS       //
    //////////////////////////////
    //  Global Clock Signal
    input wire              S_AXI_ACLK,
    // Global Reset Signal. This Signal is Active LOW
    input wire              S_AXI_ARESETN,
    // Write address (issued by master, accepted by Slave)
    input wire [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_AWADDR,
    // Write channel Protection type. This signal indicates the
    // privilege and security level of the transaction, and whether
    // the transaction is a data access or an instruction access.
    input wire [2 : 0]            S_AXI_AWPROT,
    // Write address valid. This signal indicates that the master signaling
    // valid write address and control information.
    input wire              S_AXI_AWVALID,
    // Write address ready. This signal indicates that the slave is ready
    // to accept an address and associated control signals.
    output wire             S_AXI_AWREADY,
    // Write data (issued by master, accepted by Slave)
    input wire [C_S_AXI_DATA_WIDTH-1 : 0]     S_AXI_WDATA,
    // Write strobes. This signal indicates which byte lanes hold
    // valid data. There is one write strobe bit for each eight
    // bits of the write data bus.
    input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
    // Write valid. This signal indicates that valid write
    // data and strobes are available.
    input wire              S_AXI_WVALID,
    // Write ready. This signal indicates that the slave
    // can accept the write data.
    output wire             S_AXI_WREADY,
    // Write response. This signal indicates the status
    // of the write transaction.
    output wire [1 : 0]           S_AXI_BRESP,
    // Write response valid. This signal indicates that the channel
    // is signaling a valid write response.
    output wire             S_AXI_BVALID,
    // Response ready. This signal indicates that the master
    // can accept a write response.
    input wire              S_AXI_BREADY,
    // Read address (issued by master, accepted by Slave)
    input wire [C_S_AXI_ADDR_WIDTH-1 : 0]     S_AXI_ARADDR,
    // Protection type. This signal indicates the privilege
    // and security level of the transaction, and whether the
    // transaction is a data access or an instruction access.
    input wire [2 : 0]            S_AXI_ARPROT,
    // Read address valid. This signal indicates that the channel
    // is signaling valid read address and control information.
    input wire              S_AXI_ARVALID,
    // Read address ready. This signal indicates that the slave is
    // ready to accept an address and associated control signals.
    output wire             S_AXI_ARREADY,
    // Read data (issued by slave)
    output wire [C_S_AXI_DATA_WIDTH-1 : 0]    S_AXI_RDATA,
    // Read response. This signal indicates the status of the
    // read transfer.
    output wire [1 : 0]           S_AXI_RRESP,
    // Read valid. This signal indicates that the channel is
    // signaling the required read data.
    output wire             S_AXI_RVALID,
    // Read ready. This signal indicates that the master can
    // accept the read data and response information.
    input wire              S_AXI_RREADY
  );

  //NOTE: We don't actually need 2x registers for this block.
  //But if you try to instantiate a multi-bit array where it only has one bit,
  //it makes Vivado uncomfortable.

  wire [C_S_AXI_DATA_WIDTH-1:0]      reg_wrdout;
  reg [((C_S_AXI_DATA_WIDTH-1)/8):0] reg_wrByteStrobe [1:0];
  reg                                reg_rdStrobe [1:0];
  wire [C_S_AXI_DATA_WIDTH-1:0]      reg_rddin [1:0];


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
  wire        uplinkRst_i;
  wire        mgt_rxpolarity_i;
  //Signals that are supplied to AXI status register.
  wire [1:0] uplinkIcData_o;
  wire [1:0] uplinkEcData_o;
  wire [2:0] uplinkPhase_o;

  wire [31:0] uplinkMgtWord;
  wire        mgt_rx_rdy;
  wire [9:0]  dbg_bitslip_counter;
  wire        dbg_sta_headerLocked;
  wire        dbg_sta_gbRdy;
  wire        dbg_datapath_rst_s;
  wire        dbg_rst_pattsearch;
  wire        dbg_rst_gearbox;
  wire        dbg_sta_headerFlag;
  wire        dbg_uplinkReady;

  logic            uplinkrdy_s;
  logic [233:0]    uplinkUserData_s;
  logic            uplinkFEC_s;
  //Instantiate the core of the lpgbtfpga module.
  lpgbtfpga_zcu102_10g24_top lpgbtfpga_zcu102_10g24_top_inst (

    // MGT(GTX) reference clock:
    .SMA_MGT_REFCLK_P(SMA_MGT_REFCLK_P),
    .SMA_MGT_REFCLK_N(SMA_MGT_REFCLK_N),

    // Fabric clock:
    .USER_CLOCK_P(USER_CLOCK_P),
    .USER_CLOCK_N(USER_CLOCK_N),

    // Serial lanes:
    .SFP0_RX_P(SFP0_RX_P),
    .SFP0_RX_N(SFP0_RX_N),

    // DEBUG SIGNALS:
    .uplinkEcData_o(uplinkEcData_o),
    .uplinkIcData_o(uplinkIcData_o),
    .uplinkPhase_o(uplinkPhase_o),
    .mgt_txaligned_o(),  //Tx is unused, don't care about alignment or phase.
    .mgt_txphase_o(),
    .uplinkMgtWordDbg(uplinkMgtWord),
    .mgt_rx_rdy(mgt_rx_rdy),
    .dbg_bitslip_counter(dbg_bitslip_counter),
    .dbg_sta_headerLocked(dbg_sta_headerLocked),
    .dbg_sta_gbRdy(dbg_sta_gbRdy),
    .dbg_datapath_rst_s(dbg_datapath_rst_s),
    .dbg_rst_pattsearch(dbg_rst_pattsearch),
    .dbg_rst_gearbox(dbg_rst_gearbox),
    .dbg_sta_headerFlag(dbg_sta_headerFlag),
    .dbg_uplinkReady(dbg_uplinkReady),
    .dbg_320mhz_lpgbtfpga_mgtrxclk(dbg_320mhz_lpgbtfpga_mgtrxclk),   // CG debug ILA clock signals (3)

    // REGULAR DATA SIGNALS:
    .clk40_o(clk40_o),
    .uplinkrdy_o(uplinkrdy_s),
    .uplinkUserData_o(uplinkUserData_s),
    .uplinkRst_i(uplinkRst_i),
    .uplinkFEC_o(uplinkFEC_s),
    .mgt_rxpolarity_i(mgt_rxpolarity_i)
  );


  //lpgbtfpga control registers
  reg [C_S_AXI_DATA_WIDTH-1:0]  control;
  reg [C_S_AXI_DATA_WIDTH-1:0]  status;


  //register read/write logic.
  always @(posedge S_AXI_ACLK) begin
    if (~S_AXI_ARESETN) begin
      control <= 0;
    end
    else begin
      if(reg_wrByteStrobe[0] > 0)
        control <= reg_wrdout;
    end
  end

  //Allow readback of control
  assign reg_rddin[0] = control;
  assign reg_rddin[1] = status;

  //assign status[0]     = uplinkrdy_o;
  //assign status[1]     = uplinkFEC_o;
  //assign status[3:2]   = uplinkEcData_o;
  //assign status[5:4]   = uplinkIcData_o;
  //assign status[8:6]   = uplinkPhase_o;
  //assign status[9]     = mgt_rx_rdy;
  //assign status[19:10] = dbg_bitslip_counter;
  //assign status[20]    = dbg_sta_headerLocked;
  //assign status[21]    = dbg_sta_gbRdy;
  //assign status[22]    = dbg_datapath_rst_s;
  //assign status[23]    = dbg_rst_pattsearch;
  //assign status[24]    = dbg_rst_gearbox;
  //assign status[25]    = dbg_sta_headerFlag;
  //assign status[26]    = dbg_uplinkReady;

  //Generate control signals from control register.
  //assign uplinkRst_i      = control[0];
  //assign mgt_rxpolarity_i = control[1];

  // Add pipeline registers for all debug signals
  logic [9:0]  dbg_bitslip_counter_320_p1;
  logic        dbg_sta_headerLocked_320_p1;
  logic        dbg_sta_gbRdy_320_p1;
  logic        dbg_datapath_rst_s_320_p1;
  logic        dbg_rst_pattsearch_320_p1;
  logic        dbg_rst_gearbox_320_p1;
  logic        dbg_sta_headerFlag_320_p1;
  logic        dbg_uplinkReady_320_p1;
  logic [9:0]  dbg_bitslip_counter_320_p2;
  logic        dbg_sta_headerLocked_320_p2;
  logic        dbg_sta_gbRdy_320_p2;
  logic        dbg_datapath_rst_s_320_p2;
  logic        dbg_rst_pattsearch_320_p2;
  logic        dbg_rst_gearbox_320_p2;
  logic        dbg_sta_headerFlag_320_p2;
  logic        dbg_uplinkReady_320_p2;
  always_ff @(posedge dbg_320mhz_lpgbtfpga_mgtrxclk) begin
    dbg_bitslip_counter_320_p1  <= dbg_bitslip_counter;
    dbg_sta_headerLocked_320_p1 <= dbg_sta_headerLocked;
    dbg_sta_gbRdy_320_p1        <= dbg_sta_gbRdy;
    dbg_datapath_rst_s_320_p1   <= dbg_datapath_rst_s;
    dbg_rst_pattsearch_320_p1   <= dbg_rst_pattsearch;
    dbg_rst_gearbox_320_p1      <= dbg_rst_gearbox;
    dbg_sta_headerFlag_320_p1   <= dbg_sta_headerFlag;
    dbg_uplinkReady_320_p1      <= dbg_uplinkReady;
    //
    dbg_bitslip_counter_320_p2  <= dbg_bitslip_counter_320_p1;
    dbg_sta_headerLocked_320_p2 <= dbg_sta_headerLocked_320_p1;
    dbg_sta_gbRdy_320_p2        <= dbg_sta_gbRdy_320_p1;
    dbg_datapath_rst_s_320_p2   <= dbg_datapath_rst_s_320_p1;
    dbg_rst_pattsearch_320_p2   <= dbg_rst_pattsearch_320_p1;
    dbg_rst_gearbox_320_p2      <= dbg_rst_gearbox_320_p1;
    dbg_sta_headerFlag_320_p2   <= dbg_sta_headerFlag_320_p1;
    dbg_uplinkReady_320_p2      <= dbg_uplinkReady_320_p1;
  end
  //
  //
  logic         uplinkrdy_p1;
  logic         uplinkFEC_p1;
  logic [233:0] uplinkUserData_p1;
  logic   [1:0] uplinkEcData_p1;
  logic   [1:0] uplinkIcData_p1;
  logic   [2:0] uplinkPhase_p1;
  //
  logic         uplinkrdy_p2;
  logic         uplinkFEC_p2;
  logic [233:0] uplinkUserData_p2;
  logic   [1:0] uplinkEcData_p2;
  logic   [1:0] uplinkIcData_p2;
  logic   [2:0] uplinkPhase_p2;
  always_ff @(posedge clk40_o) begin
    uplinkrdy_p1      <= uplinkrdy_s;
    uplinkFEC_p1      <= uplinkFEC_s;
    uplinkUserData_p1 <= uplinkUserData_s;
    uplinkEcData_p1   <= uplinkEcData_o;
    uplinkIcData_p1   <= uplinkIcData_o;
    uplinkPhase_p1    <= uplinkPhase_o;
    //
    uplinkrdy_p2      <= uplinkrdy_p1;
    uplinkFEC_p2      <= uplinkFEC_p1;
    uplinkUserData_p2 <= uplinkUserData_p1;
    uplinkEcData_p2   <= uplinkEcData_p1;
    uplinkIcData_p2   <= uplinkIcData_p1;
    uplinkPhase_p2    <= uplinkPhase_p1;
  end
  assign uplinkrdy_o      = uplinkrdy_p2;
  assign uplinkFEC_o      = uplinkFEC_p2;
  assign uplinkUserData_o = uplinkUserData_p2;
  //
  //
  logic [31:0] uplinkMgtWord_p1;
  logic        mgt_rx_rdy_p1;
  //
  logic [31:0] uplinkMgtWord_p2;
  logic        mgt_rx_rdy_p2;
  always_ff @(posedge dbg_320mhz_lpgbtfpga_mgtrxclk) begin
    uplinkMgtWord_p1 <= uplinkMgtWord;
    mgt_rx_rdy_p1    <= mgt_rx_rdy;
    //
    uplinkMgtWord_p2 <= uplinkMgtWord_p1;
    mgt_rx_rdy_p2    <= mgt_rx_rdy_p1;
  end
  assign dbg_uplinkMgtWordParity = ^uplinkMgtWord_p2;
  assign dbg_uplinkMgtWord       = uplinkMgtWord_p2;


  //CDC Structures for status register
  xpm_cdc_single cdc_uplinkrdy (
    .dest_out(status[0]),
    .dest_clk(S_AXI_ACLK),
    .src_in(uplinkrdy_p2),
    .src_clk(clk40_o));

  xpm_cdc_single cdc_uplinkFEC (
    .dest_out(status[1]),
    .dest_clk(S_AXI_ACLK),
    .src_in(uplinkFEC_p2),
    .src_clk(clk40_o));

  xpm_cdc_array_single #(.WIDTH(2)) cdc_uplinkEc (
    .dest_out(status[3:2]),
    .dest_clk(S_AXI_ACLK),
    .src_in(uplinkEcData_p2),
    .src_clk(clk40_o));

  xpm_cdc_array_single #(.WIDTH(2)) cdc_uplinkIc (
    .dest_out(status[5:4]),
    .dest_clk(S_AXI_ACLK),
    .src_in(uplinkIcData_p2),
    .src_clk(clk40_o));

  xpm_cdc_array_single #(.WIDTH(3)) cdc_uplinkPhase (
    .dest_out(status[8:6]),
    .dest_clk(S_AXI_ACLK),
    .src_in(uplinkPhase_p2),
    .src_clk(clk40_o));

  xpm_cdc_single cdc_mgt_rx_rdy (
    .dest_out(status[9]),
    .dest_clk(S_AXI_ACLK),
    .src_in(mgt_rx_rdy_p2),
    .src_clk(dbg_320mhz_lpgbtfpga_mgtrxclk));

  xpm_cdc_array_single #(.WIDTH(20)) cdc_dbg_bitslip_counter (
    .dest_out(status[19:10]),
    .dest_clk(S_AXI_ACLK),
    .src_in(dbg_bitslip_counter_320_p2),
    .src_clk(dbg_320mhz_lpgbtfpga_mgtrxclk));

  xpm_cdc_single cdc_dbg_sta_headerLocked (
    .dest_out(status[20]),
    .dest_clk(S_AXI_ACLK),
    .src_in(dbg_sta_headerLocked_320_p2),
    .src_clk(dbg_320mhz_lpgbtfpga_mgtrxclk));

  xpm_cdc_single cdc_dbg_sta_gbRdy (
    .dest_out(status[21]),
    .dest_clk(S_AXI_ACLK),
    .src_in(dbg_sta_gbRdy_320_p2),
    .src_clk(dbg_320mhz_lpgbtfpga_mgtrxclk));

  xpm_cdc_single cdc_dbg_datapath_rst_s (
    .dest_out(status[22]),
    .dest_clk(S_AXI_ACLK),
    .src_in(dbg_datapath_rst_s_320_p2),
    .src_clk(dbg_320mhz_lpgbtfpga_mgtrxclk));

  xpm_cdc_single cdc_dbg_rst_pattsearch (
    .dest_out(status[23]),
    .dest_clk(S_AXI_ACLK),
    .src_in(dbg_rst_pattsearch_320_p2),
    .src_clk(dbg_320mhz_lpgbtfpga_mgtrxclk));

  xpm_cdc_single cdc_dbg_rst_gearbox (
    .dest_out(status[24]),
    .dest_clk(S_AXI_ACLK),
    .src_in(dbg_rst_gearbox_320_p2),
    .src_clk(dbg_320mhz_lpgbtfpga_mgtrxclk));

  xpm_cdc_single cdc_dbg_sta_headerFlagh (
    .dest_out(status[25]),
    .dest_clk(S_AXI_ACLK),
    .src_in(dbg_sta_headerFlag_320_p2),
    .src_clk(dbg_320mhz_lpgbtfpga_mgtrxclk));

  xpm_cdc_single cdc_dbg_uplinkReady (
    .dest_out(status[26]),
    .dest_clk(S_AXI_ACLK),
    .src_in(dbg_uplinkReady_320_p2),
    .src_clk(dbg_320mhz_lpgbtfpga_mgtrxclk));


  //CDC Structures for control register
  /*xpm_cdc_single cdc_uplinkRst (.dest_out(uplinkRst_i),
   .dest_clk(clk40_o),
   .src_clk(S_AXI_ACLK),
   .src_in(control[0]));
   */
  //Avoid CDC for uplinkRst to avoid Catch-22 situation
  assign uplinkRst_i = control[0];

  xpm_cdc_single cdc_mgt_rxpolarity (.dest_out(mgt_rxpolarity_i),
    .dest_clk(clk40_o),
    .src_clk(S_AXI_ACLK),
    .src_in(control[1]));

endmodule // lpgbtfpga_top

