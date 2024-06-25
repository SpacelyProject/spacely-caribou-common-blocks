// ------------------------------------------------------------------------------------
// Author       : Neha Kharwadkar      nehak@fnal.gov
//              : Cristian Gingu       gingu@fnal.gov
// Created      : 2024-05-22
// ------------------------------------------------------------------------------------
// Copyright (c) 2024 by FNAL This model is the confidential and
// proprietary property of FNAL and the possession or use of this
// file requires a written license from FNAL.
// ------------------------------------------------------------------------------------
// Revisions  :
// Date        Author                 Description
// 2024-05-24  Cristian  Gingu        Created template
// ------------------------------------------------------------------------------------
`ifndef __fw_ip3__
`define __fw_ip3__

`timescale 1 ns/ 1 ps

module fw_ip3 (
    input  logic        fw_clk,                            // FW clock              mapped to S_AXI_ACLK
    input  logic        fw_rst_n,                          // FW reset, active low  mapped to S_AXI_ARESETN
    // SW side signals from/to common_sw_to_fw_side
    input  logic        fw_dev_id_enable,                  // up to 15 FW can be connected
    input  logic        fw_op_code_w_reset,
    input  logic        fw_op_code_w_cfg_static_0,
    input  logic        fw_op_code_r_cfg_static_0,
    input  logic        fw_op_code_w_cfg_static_1,
    input  logic        fw_op_code_r_cfg_static_1,
    input  logic        fw_op_code_w_cfg_array_0,
    input  logic        fw_op_code_r_cfg_array_0,
    input  logic        fw_op_code_w_cfg_array_1,
    input  logic        fw_op_code_r_cfg_array_1,
    input  logic        fw_op_code_r_data_array_0,
    input  logic        fw_op_code_r_data_array_1,
    input  logic        fw_op_code_w_status_clear,
    input  logic        fw_op_code_w_execute,
    input  logic [23:0] sw_write24_0,                      // feed-through bytes 2, 1, 0 of sw_write32_0 from SW to FW
    output logic [31:0] fw_read_data32,                    // 32-bit read_data   from FW to SW
    output logic [31:0] fw_read_status32,                  // 32-bit read_status from FW to SW
    // DUT side signals to/from common_fw_to_dut_side      // up to 15 FWs can be connected
    // output signals from FW
    output logic fw_super_pixel_sel,
    output logic fw_config_clk,
    output logic fw_reset_not,
    output logic fw_config_in,
    output logic fw_config_load,
    output logic fw_bxclk_ana,
    output logic fw_bxclk,
    output logic fw_vin_test_trig_out,
    output logic fw_scan_in,
    output logic fw_scan_load,
    // input signals to FW
    input  logic fw_config_out,
    input  logic fw_scan_out,
    input  logic fw_dnn_output_0,
    input  logic fw_dnn_output_1,
    input  logic fw_dn_event_toggle
  );

  // TODO Add real logic for output signals below;
  // TODO If the output signal is not used by this module, leave assignment to zero.
  assign fw_read_data32       = 32'h0;
  assign fw_read_status32     = 32'h0;
  assign fw_super_pixel_sel   = 1'b0;
  assign fw_config_clk        = 1'b0;
  assign fw_reset_not         = 1'b0;
  assign fw_config_in         = 1'b0;
  assign fw_config_load       = 1'b0;
  assign fw_bxclk_ana         = 1'b0;
  assign fw_bxclk             = 1'b0;
  assign fw_vin_test_trig_out = 1'b0;
  assign fw_scan_in           = 1'b0;
  assign fw_scan_load         = 1'b0;

endmodule

`endif
