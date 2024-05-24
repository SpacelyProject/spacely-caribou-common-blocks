// ------------------------------------------------------------------------------------
// Author       : Cristian Gingu       gingu@fnal.gov
// Created      : 2024-05-23
// ------------------------------------------------------------------------------------
// Copyright (c) 2024 by FNAL This model is the confidential and
// proprietary property of FNAL and the possession or use of this
// file requires a written license from FNAL.
// ------------------------------------------------------------------------------------
// Revisions  :
// Date        Author                 Description
// 2024-05-23  Cristian  Gingu        Created; based on https://github.com/SpacelyProject/spacely-caribou-common-blocks/blob/main/ExampleBlock/ExampleBlock.sv
// ------------------------------------------------------------------------------------
`ifndef __axi4lite_interface_top_for_pix28_fw__
`define __axi4lite_interface_top_for_pix28_fw__

`timescale 1 ns/ 1 ps

module axi4lite_interface_top_for_pix28_fw #(
    parameter integer C_S_AXI_DATA_WIDTH  = 32,            // Width of S_AXI data bus
    parameter integer C_S_AXI_ADDR_WIDTH  = 11             // Width of S_AXI address bus
  )(
    //////////////////////////////
    //    AXI BUS SIGNALS       //
    //////////////////////////////
    //  Global Clock Signal
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
    input wire  S_AXI_RREADY,
    ///////////////////////////
    // FIRMWARE SIDE SIGNALS //
    ///////////////////////////
    output logic [C_S_AXI_DATA_WIDTH-1 : 0] sw_write32_0,                      // register#0 32-bit write from SW to FW
    input  logic [C_S_AXI_DATA_WIDTH-1 : 0] sw_read32_0,                       // register#0 32-bit read  from FW to SW
    input  logic [C_S_AXI_DATA_WIDTH-1 : 0] sw_read32_1                        // register#1 32-bit read  from FW to SW
  );

  ///////////////////////////
  // REG INTERFACE SIGNALS //
  ///////////////////////////
  localparam FPGA_REGISTER_N = 2;
  logic [C_S_AXI_DATA_WIDTH-1:0]       reg_wrdout;                             // 32-bit data from AXI interface
  logic [((C_S_AXI_DATA_WIDTH-1)/8):0] reg_wrByteStrobe [FPGA_REGISTER_N-1:0]; // write strobe per byte of reg_wrdout per FPGA register
  logic                                reg_rdStrobe     [FPGA_REGISTER_N-1:0]; // read strobe per FPGA register
  logic  [C_S_AXI_DATA_WIDTH-1:0]      reg_rddin        [FPGA_REGISTER_N-1:0]; // 32-bit read only registers
  // Instantiate the AXI Interface
  // NOTE: This block should be included from spacely-caribou-common-blocks/axi4lite_interface
  axi4lite_interface_top #(
    .FPGA_REGISTER_N         (FPGA_REGISTER_N),
    .C_S_AXI_DATA_WIDTH      (C_S_AXI_DATA_WIDTH),
    .C_S_AXI_ADDR_WIDTH      (C_S_AXI_ADDR_WIDTH)
  ) axi4lite_interface_inst (
    .reg_wrdout              (reg_wrdout),
    .reg_wrByteStrobe        (reg_wrByteStrobe),
    .reg_rdStrobe            (reg_rdStrobe),
    .reg_rddin               (reg_rddin),

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

  ////////////////////////////////////////////////////////////////////
  // FIRMWARE SIDE LOGIC interfacing with AXI REG INTERFACE SIGNALS //
  ////////////////////////////////////////////////////////////////////
  // 1. WRITE registers interface
  always_ff @(posedge S_AXI_ACLK) begin
    if (~S_AXI_ARESETN) begin
      sw_write32_0 <= 32'h0;                                                   // register#0 32-bit write from SW to FW
    end else begin
      // AXI output 32-bit reg_wrdout is transferred to FW input 32-bit sw_write32_0
      if(reg_wrByteStrobe[0][0] == 1) sw_write32_0[7:0]   <= reg_wrdout[7:0];
      if(reg_wrByteStrobe[0][1] == 1) sw_write32_0[15:8]  <= reg_wrdout[15:8];
      if(reg_wrByteStrobe[0][2] == 1) sw_write32_0[23:16] <= reg_wrdout[23:16];
      if(reg_wrByteStrobe[0][3] == 1) sw_write32_0[31:24] <= reg_wrdout[31:24];
    end
  end;
  // 2. READ registers interface                                               // TODO CG this is new logic w.r.t. ExampleBlock.sv
  always_ff @(posedge S_AXI_ACLK) begin
    if (~S_AXI_ARESETN) begin
      reg_rddin[0] <= 32'h0;                                                   // register#0 32-bit read from FW to SW
      reg_rddin[1] <= 32'h0;                                                   // register#1 32-bit read from FW to SW
    end else begin
      // FW output 32-bit read_data is transferred to AXI input 32-bit reg_rddin
      if(reg_rdStrobe[0] == 1) reg_rddin[0] <= sw_read32_0;
      if(reg_rdStrobe[1] == 1) reg_rddin[1] <= sw_read32_1;
    end
  end

endmodule

`endif
