// ------------------------------------------------------------------------------------
// Author       : Cristian Gingu       gingu@fnal.gov
// Created      : 2024-05-24
// ------------------------------------------------------------------------------------
// Copyright (c) 2024 by FNAL This model is the confidential and
// proprietary property of FNAL and the possession or use of this
// file requires a written license from FNAL.
// ------------------------------------------------------------------------------------
// Revisions  :
// Date        Author                 Description
// 2024-05-24  Cristian  Gingu        Created
// ------------------------------------------------------------------------------------
`ifndef __cms_pix_28_fw_top__
`define __cms_pix_28_fw_top__

`timescale 1 ns/ 1 ps

module cms_pix_28_fw_top #(
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
    output logic config_clk,
    output logic reset_not,
    output logic config_in,
    output logic config_load,
    output logic bxclk_ana,
    output logic bxclk,
    output logic vin_test_trig_out,
    output logic scan_in,
    output logic scan_load,
    input  logic config_out,
    input  logic scan_out,
    input  logic dnn_output_0,
    input  logic dnn_output_1,
    input  logic dn_event_toggle
  );

  // Instantiate axi4lite_interface_top_for_pix28_fw
  logic [C_S_AXI_DATA_WIDTH-1 : 0] sw_write32_0;                     // register#0 32-bit write from SW to FW
  logic [C_S_AXI_DATA_WIDTH-1 : 0] sw_read32_0;                      // register#0 32-bit read  from FW to SW
  logic [C_S_AXI_DATA_WIDTH-1 : 0] sw_read32_1;                      // register#1 32-bit read  from FW to SW
  axi4lite_interface_top_for_pix28_fw #(
    .C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH),
    .C_S_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH)
  ) axi4lite_interface_top_for_pix28_fw_inst (
    //////////////////////////////
    //    AXI BUS SIGNALS       //
    //////////////////////////////
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
    .S_AXI_RREADY(S_AXI_RREADY),
    ///////////////////////////
    // FIRMWARE SIDE SIGNALS //
    ///////////////////////////
    .sw_write32_0(sw_write32_0),                                     // register#0 32-bit write from SW to FW
    .sw_read32_0(sw_read32_0),                                       // register#0 32-bit read  from FW to SW
    .sw_read32_1(sw_read32_1)                                        // register#1 32-bit read  from FW to SW
  );

  // Instantiate common_sw_to_fw_side
  logic [3:0]  fw_dev_id_enable;                                     // up to 15 FW can be connected;
  logic        fw_op_code_w_reset;
  logic        fw_op_code_w_cfg_static_0;
  logic        fw_op_code_r_cfg_static_0;
  logic        fw_op_code_w_cfg_array_0;
  logic        fw_op_code_r_cfg_array_0;
  logic        fw_op_code_w_cfg_array_1;
  logic        fw_op_code_r_cfg_array_1;
  logic        fw_op_code_r_data_array_0;
  logic        fw_op_code_r_data_array_1;
  logic        fw_op_code_r_status;
  logic        fw_op_code_w_execute;
  logic [23:0]      sw_write24_0;                                    // feed-through bytes 2, 1, 0 of sw_write32_0 from SW to FW
  logic [3:0][31:0] fw_read_data32;                                  // 32-bit read_data   from FW to SW
  logic [3:0][31:0] fw_read_status32;                                // 32-bit read_status from FW to SW
  common_sw_to_fw_side common_sw_to_fw_side_inst (
    // SW side ports:
    .sw_write32_0              (sw_write32_0),                       // register#0 32-bit write from SW to FW
    .sw_read32_0               (sw_read32_0),                        // register#0 32-bit read  from FW to SW
    .sw_read32_1               (sw_read32_1),                        // register#0 32-bit read  from FW to SW
    // FW side ports
    .fw_dev_id_enable          (fw_dev_id_enable),                   // up to 15 FW can be connected;
    .fw_op_code_w_reset        (fw_op_code_w_reset),
    .fw_op_code_w_cfg_static_0 (fw_op_code_w_cfg_static_0),
    .fw_op_code_r_cfg_static_0 (fw_op_code_r_cfg_static_0),
    .fw_op_code_w_cfg_array_0  (fw_op_code_w_cfg_array_0),
    .fw_op_code_r_cfg_array_0  (fw_op_code_r_cfg_array_0),
    .fw_op_code_w_cfg_array_1  (fw_op_code_w_cfg_array_1),
    .fw_op_code_r_cfg_array_1  (fw_op_code_r_cfg_array_1),
    .fw_op_code_r_data_array_0 (fw_op_code_r_data_array_0),
    .fw_op_code_r_data_array_1 (fw_op_code_r_data_array_1),
    .fw_op_code_r_status       (fw_op_code_r_status),
    .fw_op_code_w_execute      (fw_op_code_w_execute),
    .sw_write24_0              (sw_write24_0),                       // feed-through bytes 2, 1, 0 of sw_write32_0 from SW to FW
    .fw_read_data32            (fw_read_data32),                     // 32-bit read_data   from FW to SW
    .fw_read_status32          (fw_read_status32)                    // 32-bit read_status from FW to SW
  );

  // Instantiate common_fw_to_dut_side                               // up to 15 FWs can be connected;
  // output signals from FW
  logic [3:0] fw_config_clk;
  logic [3:0] fw_reset_not;
  logic [3:0] fw_config_in;
  logic [3:0] fw_config_load;
  logic [3:0] fw_bxclk_ana;
  logic [3:0] fw_bxclk;
  logic [3:0] fw_vin_test_trig_out;
  logic [3:0] fw_scan_in;
  logic [3:0] fw_scan_load;
  // input signals to FW
  logic [3:0] fw_config_out;
  logic [3:0] fw_scan_out;
  logic [3:0] fw_dnn_output_0;
  logic [3:0] fw_dnn_output_1;
  logic [3:0] fw_dn_event_toggle;
  common_fw_to_dut_side common_fw_to_dut_side_inst (
    .fw_clk                  (S_AXI_ACLK),                           // FW clock              mapped to S_AXI_ACLK
    .fw_rst_n                (S_AXI_ARESETN),                        // FW reset, active low  mapped to S_AXI_ARESETN
    .fw_dev_id_enable        (fw_dev_id_enable),                     // up to 15 FWs can be connected;
    // FW side ports
    .fw_config_clk           (fw_config_clk),                        // up to 15 FWs can be connected;
    // output signals from FW
    .fw_reset_not            (fw_reset_not),
    .fw_config_in            (fw_config_in),
    .fw_config_load          (fw_config_load),
    .fw_bxclk_ana            (fw_bxclk_ana),
    .fw_bxclk                (fw_bxclk),
    .fw_vin_test_trig_out    (fw_vin_test_trig_out),
    .fw_scan_in              (fw_scan_in),
    .fw_scan_load            (fw_scan_load),
    // input signals to FW
    .fw_config_out           (fw_config_out),
    .fw_scan_out             (fw_scan_out),
    .fw_dnn_output_0         (fw_dnn_output_0),
    .fw_dnn_output_1         (fw_dnn_output_1),
    .fw_dn_event_toggle      (fw_dn_event_toggle),
    // DUT side ports == FPGA pins:
    // Output IOB FF
    .config_clk              (config_clk),
    .reset_not               (reset_not),
    .config_in,
    .config_load             (config_load),
    .bxclk_ana               (bxclk_ana),
    .bxclk                   (bxclk),
    .vin_test_trig_out       (vin_test_trig_out),
    .scan_in                 (scan_in),
    .scan_load               (scan_load),
    // Input IOB FF
    .config_out              (config_out),
    .scan_out                (scan_out),
    .dnn_output_0            (dnn_output_0),
    .dnn_output_1            (dnn_output_1),
    .dn_event_toggle         (dn_event_toggle)
    );

  // Instantiate FW_IP1: pix_28_fw_ip1_inst                                  // up to 15 FWs can be connected;
  cms_pix_28_fw_ip1 pix_28_fw_ip1_inst (
    .fw_clk                    (S_AXI_ACLK),                         // FW clock              mapped to S_AXI_ACLK
    .fw_rst_n                  (S_AXI_ARESETN),                      // FW reset, active low  mapped to S_AXI_ARESETN
    // SW side signals from/to common_sw_to_fw_side
    .fw_dev_id_enable          (fw_dev_id_enable[0]),                // up to 15 FW can be connected
    .fw_op_code_w_reset        (fw_op_code_w_reset),
    .fw_op_code_w_cfg_static_0 (fw_op_code_w_cfg_static_0),
    .fw_op_code_r_cfg_static_0 (fw_op_code_r_cfg_static_0),
    .fw_op_code_w_cfg_array_0  (fw_op_code_w_cfg_array_0),
    .fw_op_code_r_cfg_array_0  (fw_op_code_r_cfg_array_0),
    .fw_op_code_w_cfg_array_1  (fw_op_code_w_cfg_array_1),
    .fw_op_code_r_cfg_array_1  (fw_op_code_r_cfg_array_1),
    .fw_op_code_r_data_array_0 (fw_op_code_r_data_array_0),
    .fw_op_code_r_data_array_1 (fw_op_code_r_data_array_1),
    .fw_op_code_r_status       (fw_op_code_r_status),
    .fw_op_code_w_execute      (fw_op_code_w_execute),
    .sw_write24_0              (sw_write24_0),                       // feed-through bytes 2, 1, 0 of sw_write32_0 from SW to FW
    .fw_read_data32            (fw_read_data32[0]),                  // 32-bit read_data   from FW to SW
    .fw_read_status32          (fw_read_status32[0]),                // 32-bit read_status from FW to SW
    // DUT side signals to/from common_fw_to_dut_side                // up to 15 FWs can be connected;
    // output signals from FW
    .fw_config_clk             (fw_config_clk[0]),
    .fw_reset_not              (fw_reset_not[0]),
    .fw_config_in              (fw_config_in[0]),
    .fw_config_load            (fw_config_load[0]),
    .fw_bxclk_ana              (fw_bxclk_ana[0]),
    .fw_bxclk                  (fw_bxclk[0]),
    .fw_vin_test_trig_out      (fw_vin_test_trig_out[0]),
    .fw_scan_in                (fw_scan_in[0]),
    .fw_scan_load              (fw_scan_load[0]),
    // input signals to FW
    .fw_config_out             (fw_config_out[0]),
    .fw_scan_out               (fw_scan_out[0]),
    .fw_dnn_output_0           (fw_dnn_output_0[0]),
    .fw_dnn_output_1           (fw_dnn_output_1[0]),
    .fw_dn_event_toggle        (fw_dn_event_toggle[0])
  );

  // Instantiate FW_IP2: pix_28_fw_ip1_inst                                  // up to 15 FWs can be connected;
  cms_pix_28_fw_ip2 pix_28_fw_ip2_inst (
    .fw_clk                    (S_AXI_ACLK),                         // FW clock              mapped to S_AXI_ACLK
    .fw_rst_n                  (S_AXI_ARESETN),                      // FW reset, active low  mapped to S_AXI_ARESETN
    // SW side signals from/to common_sw_to_fw_side
    .fw_dev_id_enable          (fw_dev_id_enable[1]),                // up to 15 FW can be connected
    .fw_op_code_w_reset        (fw_op_code_w_reset),
    .fw_op_code_w_cfg_static_0 (fw_op_code_w_cfg_static_0),
    .fw_op_code_r_cfg_static_0 (fw_op_code_r_cfg_static_0),
    .fw_op_code_w_cfg_array_0  (fw_op_code_w_cfg_array_0),
    .fw_op_code_r_cfg_array_0  (fw_op_code_r_cfg_array_0),
    .fw_op_code_w_cfg_array_1  (fw_op_code_w_cfg_array_1),
    .fw_op_code_r_cfg_array_1  (fw_op_code_r_cfg_array_1),
    .fw_op_code_r_data_array_0 (fw_op_code_r_data_array_0),
    .fw_op_code_r_data_array_1 (fw_op_code_r_data_array_1),
    .fw_op_code_r_status       (fw_op_code_r_status),
    .fw_op_code_w_execute      (fw_op_code_w_execute),
    .sw_write24_0              (sw_write24_0),                       // feed-through bytes 2, 1, 0 of sw_write32_0 from SW to FW
    .fw_read_data32            (fw_read_data32[1]),                  // 32-bit read_data   from FW to SW
    .fw_read_status32          (fw_read_status32[1]),                // 32-bit read_status from FW to SW
    // DUT side signals to/from common_fw_to_dut_side                // up to 15 FWs can be connected;
    // output signals from FW
    .fw_config_clk             (fw_config_clk[1]),
    .fw_reset_not              (fw_reset_not[1]),
    .fw_config_in              (fw_config_in[1]),
    .fw_config_load            (fw_config_load[1]),
    .fw_bxclk_ana              (fw_bxclk_ana[1]),
    .fw_bxclk                  (fw_bxclk[1]),
    .fw_vin_test_trig_out      (fw_vin_test_trig_out[1]),
    .fw_scan_in                (fw_scan_in[1]),
    .fw_scan_load              (fw_scan_load[1]),
    // input signals to FW
    .fw_config_out             (fw_config_out[1]),
    .fw_scan_out               (fw_scan_out[1]),
    .fw_dnn_output_0           (fw_dnn_output_0[1]),
    .fw_dnn_output_1           (fw_dnn_output_1[1]),
    .fw_dn_event_toggle        (fw_dn_event_toggle[1])
  );

  // Instantiate pix_28_fw_ip2_inst                                  // up to 15 FWs can be connected;
  cms_pix_28_fw_ip3 pix_28_fw_ip3_inst (
    .fw_clk                    (S_AXI_ACLK),                         // FW clock              mapped to S_AXI_ACLK
    .fw_rst_n                  (S_AXI_ARESETN),                      // FW reset, active low  mapped to S_AXI_ARESETN
    // SW side signals from/to common_sw_to_fw_side
    .fw_dev_id_enable          (fw_dev_id_enable[2]),                // up to 15 FW can be connected
    .fw_op_code_w_reset        (fw_op_code_w_reset),
    .fw_op_code_w_cfg_static_0 (fw_op_code_w_cfg_static_0),
    .fw_op_code_r_cfg_static_0 (fw_op_code_r_cfg_static_0),
    .fw_op_code_w_cfg_array_0  (fw_op_code_w_cfg_array_0),
    .fw_op_code_r_cfg_array_0  (fw_op_code_r_cfg_array_0),
    .fw_op_code_w_cfg_array_1  (fw_op_code_w_cfg_array_1),
    .fw_op_code_r_cfg_array_1  (fw_op_code_r_cfg_array_1),
    .fw_op_code_r_data_array_0 (fw_op_code_r_data_array_0),
    .fw_op_code_r_data_array_1 (fw_op_code_r_data_array_1),
    .fw_op_code_r_status       (fw_op_code_r_status),
    .fw_op_code_w_execute      (fw_op_code_w_execute),
    .sw_write24_0              (sw_write24_0),                       // feed-through bytes 2, 1, 0 of sw_write32_0 from SW to FW
    .fw_read_data32            (fw_read_data32[2]),                  // 32-bit read_data   from FW to SW
    .fw_read_status32          (fw_read_status32[2]),                // 32-bit read_status from FW to SW
    // DUT side signals to/from common_fw_to_dut_side                // up to 15 FWs can be connected;
    // output signals from FW
    .fw_config_clk             (fw_config_clk[2]),
    .fw_reset_not              (fw_reset_not[2]),
    .fw_config_in              (fw_config_in[2]),
    .fw_config_load            (fw_config_load[2]),
    .fw_bxclk_ana              (fw_bxclk_ana[2]),
    .fw_bxclk                  (fw_bxclk[2]),
    .fw_vin_test_trig_out      (fw_vin_test_trig_out[2]),
    .fw_scan_in                (fw_scan_in[2]),
    .fw_scan_load              (fw_scan_load[2]),
    // input signals to FW
    .fw_config_out             (fw_config_out[2]),
    .fw_scan_out               (fw_scan_out[2]),
    .fw_dnn_output_0           (fw_dnn_output_0[2]),
    .fw_dnn_output_1           (fw_dnn_output_1[2]),
    .fw_dn_event_toggle        (fw_dn_event_toggle[2])
  );

endmodule

`endif
