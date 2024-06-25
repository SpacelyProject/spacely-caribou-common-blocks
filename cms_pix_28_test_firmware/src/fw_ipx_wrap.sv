// ------------------------------------------------------------------------------------
// Author       : Cristian Gingu       gingu@fnal.gov
// Created      : 2024-06-13
// ------------------------------------------------------------------------------------
// Copyright (c) 2024 by FNAL This model is the confidential and
// proprietary property of FNAL and the possession or use of this
// file requires a written license from FNAL.
// ------------------------------------------------------------------------------------
// Revisions  :
// Date        Author                 Description
// 2024-06-13  Cristian  Gingu        Created
// ------------------------------------------------------------------------------------
`ifndef __fw_ipx_wrap__
`define __fw_ipx_wrap__

`timescale 1 ns/ 1 ps

module fw_ipx_wrap (
    //////////////////////////////
    //    AXI BUS SIGNALS       //
    //////////////////////////////
    input  logic S_AXI_ACLK,
    input  logic S_AXI_ARESETN,
    input  logic [31:0] sw_write32_0,                                // register#0 32-bit write from SW to FW
    output logic [31:0] sw_read32_0,                                 // register#0 32-bit read  from FW to SW
    output logic [31:0] sw_read32_1,                                 // register#1 32-bit read  from FW to SW
    //////////////////////////////////
    // DUT side ports == FPGA pins: //
    //////////////////////////////////
    input  logic pl_clk1,
    // Outputs to DUT
    output logic super_pixel_sel,
    output logic config_clk,
    output logic reset_not,
    output logic config_in,
    output logic config_load,
    output logic bxclk_ana,
    output logic bxclk,
    output logic vin_test_trig_out,
    output logic scan_in,
    output logic scan_load,
    // Inputs from DUT
    input  logic config_out,
    input  logic scan_out,
    input  logic dnn_output_0,
    input  logic dnn_output_1,
    input  logic dn_event_toggle
  );

  // Instantiate com_sw_to_fw
  logic [3:0]  fw_dev_id_enable;                                     // up to 15 FW can be connected;
  logic        fw_op_code_w_reset;
  logic        fw_op_code_w_cfg_static_0;
  logic        fw_op_code_r_cfg_static_0;
  logic        fw_op_code_w_cfg_static_1;
  logic        fw_op_code_r_cfg_static_1;
  logic        fw_op_code_w_cfg_array_0;
  logic        fw_op_code_r_cfg_array_0;
  logic        fw_op_code_w_cfg_array_1;
  logic        fw_op_code_r_cfg_array_1;
  logic        fw_op_code_r_data_array_0;
  logic        fw_op_code_r_data_array_1;
  logic        fw_op_code_w_status_clear;
  logic        fw_op_code_w_execute;
  logic [23:0]      sw_write24_0;                                    // feed-through bytes 2, 1, 0 of sw_write32_0 from SW to FW
  logic [3:0][31:0] fw_read_data32;                                  // 32-bit read_data   from FW to SW
  logic [3:0][31:0] fw_read_status32;                                // 32-bit read_status from FW to SW
  com_sw_to_fw com_sw_to_fw_inst (
    // SW side ports:
    .sw_write32_0              (sw_write32_0),                       // register#0 32-bit write from SW to FW
    .sw_read32_0               (sw_read32_0),                        // register#0 32-bit read  from FW to SW
    .sw_read32_1               (sw_read32_1),                        // register#0 32-bit read  from FW to SW
    // FW side ports
    .fw_dev_id_enable          (fw_dev_id_enable),                   // up to 15 FW can be connected;
    .fw_op_code_w_reset        (fw_op_code_w_reset),
    .fw_op_code_w_cfg_static_0 (fw_op_code_w_cfg_static_0),
    .fw_op_code_r_cfg_static_0 (fw_op_code_r_cfg_static_0),
    .fw_op_code_w_cfg_static_1 (fw_op_code_w_cfg_static_1),
    .fw_op_code_r_cfg_static_1 (fw_op_code_r_cfg_static_1),
    .fw_op_code_w_cfg_array_0  (fw_op_code_w_cfg_array_0),
    .fw_op_code_r_cfg_array_0  (fw_op_code_r_cfg_array_0),
    .fw_op_code_w_cfg_array_1  (fw_op_code_w_cfg_array_1),
    .fw_op_code_r_cfg_array_1  (fw_op_code_r_cfg_array_1),
    .fw_op_code_r_data_array_0 (fw_op_code_r_data_array_0),
    .fw_op_code_r_data_array_1 (fw_op_code_r_data_array_1),
    .fw_op_code_w_status_clear (fw_op_code_w_status_clear),
    .fw_op_code_w_execute      (fw_op_code_w_execute),
    .sw_write24_0              (sw_write24_0),                       // feed-through bytes 2, 1, 0 of sw_write32_0 from SW to FW
    .fw_read_data32            (fw_read_data32),                     // 32-bit read_data   from FW to SW
    .fw_read_status32          (fw_read_status32)                    // 32-bit read_status from FW to SW
  );

  // Instantiate com_fw_to_dut                                       // up to 15 FWs can be connected;
  // output signals from FW
  logic [3:0] fw_super_pixel_sel;
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
  com_fw_to_dut com_fw_to_dut_inst (
    .iob_clk                 (pl_clk1),                              // FM clock 400MHz       mapped to pl_clk1
    .fw_dev_id_enable        (fw_dev_id_enable),                     // up to 15 FWs can be connected;
    // FW side ports
    // output signals from FW
    .fw_super_pixel_sel      (fw_super_pixel_sel),
    .fw_config_clk           (fw_config_clk),
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
    .super_pixel_sel         (super_pixel_sel),
    .config_clk              (config_clk),
    .reset_not               (reset_not),
    .config_in               (config_in),
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

  // Instantiate FW_IP1:                                             // up to 15 FWs can be connected;
  fw_ip1 fw_ip1_inst (
    .fw_clk                    (S_AXI_ACLK),                         // FW clock              mapped to S_AXI_ACLK
    .fw_rst_n                  (S_AXI_ARESETN),                      // FW reset, active low  mapped to S_AXI_ARESETN
    // SW side signals from/to com_sw_to_fw
    .fw_dev_id_enable          (fw_dev_id_enable[0]),                // up to 15 FW can be connected
    .fw_op_code_w_reset        (fw_op_code_w_reset),
    .fw_op_code_w_cfg_static_0 (fw_op_code_w_cfg_static_0),
    .fw_op_code_r_cfg_static_0 (fw_op_code_r_cfg_static_0),
    .fw_op_code_w_cfg_static_1 (fw_op_code_w_cfg_static_1),
    .fw_op_code_r_cfg_static_1 (fw_op_code_r_cfg_static_1),
    .fw_op_code_w_cfg_array_0  (fw_op_code_w_cfg_array_0),
    .fw_op_code_r_cfg_array_0  (fw_op_code_r_cfg_array_0),
    .fw_op_code_w_cfg_array_1  (fw_op_code_w_cfg_array_1),
    .fw_op_code_r_cfg_array_1  (fw_op_code_r_cfg_array_1),
    .fw_op_code_r_data_array_0 (fw_op_code_r_data_array_0),
    .fw_op_code_r_data_array_1 (fw_op_code_r_data_array_1),
    .fw_op_code_w_status_clear (fw_op_code_w_status_clear),
    .fw_op_code_w_execute      (fw_op_code_w_execute),
    .sw_write24_0              (sw_write24_0),                       // feed-through bytes 2, 1, 0 of sw_write32_0 from SW to FW
    .fw_read_data32            (fw_read_data32[0]),                  // 32-bit read_data   from FW to SW
    .fw_read_status32          (fw_read_status32[0]),                // 32-bit read_status from FW to SW
    // DUT side signals to/from com_fw_to_dut                        // up to 15 FWs can be connected;
    // output signals from FW
    .fw_super_pixel_sel        (fw_super_pixel_sel[0]),
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

  // Instantiate FW_IP2:                                             // up to 15 FWs can be connected;
  fw_ip2 fw_ip2_inst (
    .fw_pl_clk1                (pl_clk1),                            // FM clock 400MHz       mapped to pl_clk1
    .fw_axi_clk                (S_AXI_ACLK),                         // FW clock 100MHz       mapped to S_AXI_ACLK
    .fw_rst_n                  (S_AXI_ARESETN),                      // FW reset, active low  mapped to S_AXI_ARESETN
    // SW side signals from/to com_sw_to_fw
    .fw_dev_id_enable          (fw_dev_id_enable[1]),                // up to 15 FW can be connected
    .fw_op_code_w_reset        (fw_op_code_w_reset),
    .fw_op_code_w_cfg_static_0 (fw_op_code_w_cfg_static_0),
    .fw_op_code_r_cfg_static_0 (fw_op_code_r_cfg_static_0),
    .fw_op_code_w_cfg_static_1 (fw_op_code_w_cfg_static_1),
    .fw_op_code_r_cfg_static_1 (fw_op_code_r_cfg_static_1),
    .fw_op_code_w_cfg_array_0  (fw_op_code_w_cfg_array_0),
    .fw_op_code_r_cfg_array_0  (fw_op_code_r_cfg_array_0),
    .fw_op_code_w_cfg_array_1  (fw_op_code_w_cfg_array_1),
    .fw_op_code_r_cfg_array_1  (fw_op_code_r_cfg_array_1),
    .fw_op_code_r_data_array_0 (fw_op_code_r_data_array_0),
    .fw_op_code_r_data_array_1 (fw_op_code_r_data_array_1),
    .fw_op_code_w_status_clear (fw_op_code_w_status_clear),
    .fw_op_code_w_execute      (fw_op_code_w_execute),
    .sw_write24_0              (sw_write24_0),                       // feed-through bytes 2, 1, 0 of sw_write32_0 from SW to FW
    .fw_read_data32            (fw_read_data32[1]),                  // 32-bit read_data   from FW to SW
    .fw_read_status32          (fw_read_status32[1]),                // 32-bit read_status from FW to SW
    // DUT side signals to/from com_fw_to_dut                        // up to 15 FWs can be connected;
    // output signals from FW
    .fw_super_pixel_sel        (fw_super_pixel_sel[1]),
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

  // Instantiate FW_IP3:                                             // up to 15 FWs can be connected;
  fw_ip3 fw_ip3_inst (
    .fw_clk                    (S_AXI_ACLK),                         // FW clock              mapped to S_AXI_ACLK
    .fw_rst_n                  (S_AXI_ARESETN),                      // FW reset, active low  mapped to S_AXI_ARESETN
    // SW side signals from/to com_sw_to_fw
    .fw_dev_id_enable          (fw_dev_id_enable[2]),                // up to 15 FW can be connected
    .fw_op_code_w_reset        (fw_op_code_w_reset),
    .fw_op_code_w_cfg_static_0 (fw_op_code_w_cfg_static_0),
    .fw_op_code_r_cfg_static_0 (fw_op_code_r_cfg_static_0),
    .fw_op_code_w_cfg_static_1 (fw_op_code_w_cfg_static_1),
    .fw_op_code_r_cfg_static_1 (fw_op_code_r_cfg_static_1),
    .fw_op_code_w_cfg_array_0  (fw_op_code_w_cfg_array_0),
    .fw_op_code_r_cfg_array_0  (fw_op_code_r_cfg_array_0),
    .fw_op_code_w_cfg_array_1  (fw_op_code_w_cfg_array_1),
    .fw_op_code_r_cfg_array_1  (fw_op_code_r_cfg_array_1),
    .fw_op_code_r_data_array_0 (fw_op_code_r_data_array_0),
    .fw_op_code_r_data_array_1 (fw_op_code_r_data_array_1),
    .fw_op_code_w_status_clear (fw_op_code_w_status_clear),
    .fw_op_code_w_execute      (fw_op_code_w_execute),
    .sw_write24_0              (sw_write24_0),                       // feed-through bytes 2, 1, 0 of sw_write32_0 from SW to FW
    .fw_read_data32            (fw_read_data32[2]),                  // 32-bit read_data   from FW to SW
    .fw_read_status32          (fw_read_status32[2]),                // 32-bit read_status from FW to SW
    // DUT side signals to/from com_fw_to_dut                        // up to 15 FWs can be connected;
    // output signals from FW
    .fw_super_pixel_sel        (fw_super_pixel_sel[2]),
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

  // Instantiate FW_IP4:                                             // up to 15 FWs can be connected;
  fw_ip4 fw_ip4_inst (
    .fw_clk                    (S_AXI_ACLK),                         // FW clock              mapped to S_AXI_ACLK
    .fw_rst_n                  (S_AXI_ARESETN),                      // FW reset, active low  mapped to S_AXI_ARESETN
    // SW side signals from/to com_sw_to_fw
    .fw_dev_id_enable          (fw_dev_id_enable[3]),                // up to 15 FW can be connected
    .fw_op_code_w_reset        (fw_op_code_w_reset),
    .fw_op_code_w_cfg_static_0 (fw_op_code_w_cfg_static_0),
    .fw_op_code_r_cfg_static_0 (fw_op_code_r_cfg_static_0),
    .fw_op_code_w_cfg_static_1 (fw_op_code_w_cfg_static_1),
    .fw_op_code_r_cfg_static_1 (fw_op_code_r_cfg_static_1),
    .fw_op_code_w_cfg_array_0  (fw_op_code_w_cfg_array_0),
    .fw_op_code_r_cfg_array_0  (fw_op_code_r_cfg_array_0),
    .fw_op_code_w_cfg_array_1  (fw_op_code_w_cfg_array_1),
    .fw_op_code_r_cfg_array_1  (fw_op_code_r_cfg_array_1),
    .fw_op_code_r_data_array_0 (fw_op_code_r_data_array_0),
    .fw_op_code_r_data_array_1 (fw_op_code_r_data_array_1),
    .fw_op_code_w_status_clear (fw_op_code_w_status_clear),
    .fw_op_code_w_execute      (fw_op_code_w_execute),
    .sw_write24_0              (sw_write24_0),                       // feed-through bytes 2, 1, 0 of sw_write32_0 from SW to FW
    .fw_read_data32            (fw_read_data32[3]),                  // 32-bit read_data   from FW to SW
    .fw_read_status32          (fw_read_status32[3]),                // 32-bit read_status from FW to SW
    // DUT side signals to/from com_fw_to_dut                        // up to 15 FWs can be connected;
    // output signals from FW
    .fw_super_pixel_sel        (fw_super_pixel_sel[3]),
    .fw_config_clk             (fw_config_clk[3]),
    .fw_reset_not              (fw_reset_not[3]),
    .fw_config_in              (fw_config_in[3]),
    .fw_config_load            (fw_config_load[3]),
    .fw_bxclk_ana              (fw_bxclk_ana[3]),
    .fw_bxclk                  (fw_bxclk[3]),
    .fw_vin_test_trig_out      (fw_vin_test_trig_out[3]),
    .fw_scan_in                (fw_scan_in[3]),
    .fw_scan_load              (fw_scan_load[3]),
    // input signals to FW
    .fw_config_out             (fw_config_out[3]),
    .fw_scan_out               (fw_scan_out[3]),
    .fw_dnn_output_0           (fw_dnn_output_0[3]),
    .fw_dnn_output_1           (fw_dnn_output_1[3]),
    .fw_dn_event_toggle        (fw_dn_event_toggle[3])
  );

endmodule

`endif
