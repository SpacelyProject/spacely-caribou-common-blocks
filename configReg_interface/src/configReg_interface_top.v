// ------------------------------------------------------------------------------------
// Author       : Neha Kharwadkar (nehak@fnal.gov)
// Created      : 2024-04-xx
// ------------------------------------------------------------------------------------
// ------------------------------------------------------------------------------------
// Copyright (c) 2024 by FNAL This model is the confidential and
// proprietary property of FNAL and the possession or use of this
// file requires a written license from FNAL.
// ------------------------------------------------------------------------------------
// Revisions  :
// Date        Author                 Description
// 2025-05-12  Neha Kharwadkar        Created
// ------------------------------------------------------------------------------------


module configReg_interface_top #(
  parameter integer C_S_AXI_DATA_WIDTH  = 32,         // Width of S_AXI data bus
  parameter integer C_S_ADDR_WIDTH  = 11,             // Width of S_AXI address bus
  parameter integer CONFIG_REG_WIDTH = 5164,          // Width of Config/Shift Register
  parameter integer CLK_DIVIDER = 100                 // Clock divider
)(

  /////////////////////////////////////////////////////
  // INTERNAL SIGNALS MAPPED TO FPGA PINS VIA .XDC   //
  /////////////////////////////////////////////////////

  output reg SuperpixSel,                             // From FPGA - Logic 0 selects Superpixel_v1, logic 1 selects Superpixel_v2
  output reg ConfigClk,                               // From FPGA - Clock signal - from 1Hz to 1MHz.
  output reg Reset_not,                               // From FPGA - Active low reset
  output reg ConfigIn,                                // From FPGA - Shift-register serial data in. ConfigClk domain
  output reg ConfigLoad,                              // From FPGA - The shift register state is loaded to ParallelOut
  input  reg ConfigOut,                               // To FPGA - Shift-register serial data out.

  /////////////////////////////////////////////////////
  //    AXI BUS SIGNALS                              //
  /////////////////////////////////////////////////////

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

  // Instantiate ConfigRegOut
  configReg_interface #(
    .C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH),
    .C_S_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH),
    .CONFIG_REG_WIDTH(CONFIG_REG_WIDTH),
    .CLK_DIVIDER(CLK_DIVIDER)
  ) configReg_interface_inst (
    .SuperPixSel(SuperPixSel),
    .ConfigClk(ConfigClk),
    .Reset_not(Reset_not),
    .ConfigIn(ConfigIn),
    .ConfigLoad(ConfigLoad),
    .ConfigOut(ConfigOut),
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
  endmodule
