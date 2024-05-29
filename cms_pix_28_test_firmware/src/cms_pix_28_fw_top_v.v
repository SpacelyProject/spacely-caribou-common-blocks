// ------------------------------------------------------------------------------------
// Author       : Cristian Gingu       gingu@fnal.gov
// Created      : 2024-05-29
// ------------------------------------------------------------------------------------
// Copyright (c) 2024 by FNAL This model is the confidential and
// proprietary property of FNAL and the possession or use of this
// file requires a written license from FNAL.
// ------------------------------------------------------------------------------------
// Revisions  :
// Date        Author                 Description
// 2024-05-29  Cristian  Gingu        Created; Verilog wrapper for usage in Board Diagram IP
// ------------------------------------------------------------------------------------
`ifndef __cms_pix_28_fw_top_v__
`define __cms_pix_28_fw_top_v__

`timescale 1 ns/ 1 ps

module cms_pix_28_fw_top_v #(
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
    //////////////////////////////////
    // DUT side ports == FPGA pins: //
    //////////////////////////////////
    output wire super_pixel_sel,
    output wire config_clk,
    output wire reset_not,
    output wire config_in,
    output wire config_load,
    output wire bxclk_ana,
    output wire bxclk,
    output wire vin_test_trig_out,
    output wire scan_in,
    output wire scan_load,
    input  wire config_out,
    input  wire scan_out,
    input  wire dnn_output_0,
    input  wire dnn_output_1,
    input  wire dn_event_toggle
  );

  // Instantiate SystemVerilog module cms_pix_28_fw_top
  cms_pix_28_fw_top #(
    .C_S_AXI_DATA_WIDTH (C_S_AXI_DATA_WIDTH),
    .C_S_AXI_ADDR_WIDTH (C_S_AXI_ADDR_WIDTH)
  ) cms_pix_28_fw_top_inst (
    //////////////////////////////
    //    AXI BUS SIGNALS       //
    //////////////////////////////
    .S_AXI_ACLK         (S_AXI_ACLK),
    .S_AXI_ARESETN      (S_AXI_ARESETN),
    .S_AXI_AWADDR       (S_AXI_AWADDR),
    .S_AXI_AWPROT       (S_AXI_AWPROT),
    .S_AXI_AWVALID      (S_AXI_AWVALID),
    .S_AXI_AWREADY      (S_AXI_AWREADY),
    .S_AXI_WDATA        (S_AXI_WDATA),
    .S_AXI_WSTRB        (S_AXI_WSTRB),
    .S_AXI_WVALID       (S_AXI_WVALID),
    .S_AXI_WREADY       (S_AXI_WREADY),
    .S_AXI_BRESP        (S_AXI_BRESP),
    .S_AXI_BVALID       (S_AXI_BVALID),
    .S_AXI_BREADY       (S_AXI_BREADY),
    .S_AXI_ARADDR       (S_AXI_ARADDR),
    .S_AXI_ARPROT       (S_AXI_ARPROT),
    .S_AXI_ARVALID      (S_AXI_ARVALID),
    .S_AXI_ARREADY      (S_AXI_ARREADY),
    .S_AXI_RDATA        (S_AXI_RDATA),
    .S_AXI_RRESP        (S_AXI_RRESP),
    .S_AXI_RVALID       (S_AXI_RVALID),
    .S_AXI_RREADY       (S_AXI_RREADY),
    //////////////////////////////////
    // DUT side ports == FPGA pins: //
    //////////////////////////////////
    .super_pixel_sel    (super_pixel_sel),
    .config_clk         (config_clk),
    .reset_not          (reset_not),
    .config_in          (config_in),
    .config_load        (config_load),
    .bxclk_ana          (bxclk_ana),
    .bxclk              (bxclk),
    .vin_test_trig_out  (vin_test_trig_out),
    .scan_in            (scan_in),
    .scan_load          (scan_load),
    .config_out         (config_out),
    .scan_out           (scan_out),
    .dnn_output_0       (dnn_output_0),
    .dnn_output_1       (dnn_output_1),
    .dn_event_toggle    (dn_event_toggle)
  );

endmodule

`endif
