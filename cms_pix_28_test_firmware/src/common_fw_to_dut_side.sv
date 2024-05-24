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
// 2024-05-23  Cristian  Gingu        Created; contains IOB FF
// ------------------------------------------------------------------------------------
`ifndef __common_fw_to_dut_side__
`define __common_fw_to_dut_side__

`timescale 1 ns/ 1 ps

module common_fw_to_dut_side(
    input  logic       fw_clk,                            // FW clock              mapped to S_AXI_ACLK
    input  logic       fw_rst_n,                          // FW reset, active low  mapped to S_AXI_ARESETN
    input  logic [3:0] fw_dev_id_enable,                  // up to 15 FWs can be connected;
    // FW side ports                                      // up to 15 FWs can be connected;
    // output signals from FW
    input  logic [3:0] fw_config_clk,
    input  logic [3:0] fw_reset_not,
    input  logic [3:0] fw_config_in,
    input  logic [3:0] fw_config_load,
    input  logic [3:0] fw_bxclk_ana,
    input  logic [3:0] fw_bxclk,
    input  logic [3:0] fw_vin_test_trig_out,
    input  logic [3:0] fw_scan_in,
    input  logic [3:0] fw_scan_load,
    // input signals to FW
    output logic [3:0] fw_config_out,
    output logic [3:0] fw_scan_out,
    output logic [3:0] fw_dnn_output_0,
    output logic [3:0] fw_dnn_output_1,
    output logic [3:0] fw_dn_event_toggle,
    // DUT side ports == FPGA pins:
    // Output IOB FF
    output logic config_clk,
    output logic reset_not,
    output logic config_in,
    output logic config_load,
    output logic bxclk_ana,
    output logic bxclk,
    output logic vin_test_trig_out,
    output logic scan_in,
    output logic scan_load,
    // Input  IOB FF
    input  logic config_out,
    input  logic scan_out,
    input  logic dnn_output_0,
    input  logic dnn_output_1,
    input  logic dn_event_toggle
  );
  //
  logic config_clk_mux;
  logic reset_not_mux;
  logic config_in_mux;
  logic config_load_mux;
  logic bxclk_ana_mux;
  logic bxclk_mux;
  logic vin_test_trig_out_mux;
  logic scan_in_mux;
  logic scan_load_mux;
  //
  logic config_clk_iob;                // Output IOB FF
  logic reset_not_iob;                 // Output IOB FF
  logic config_in_iob;                 // Output IOB FF
  logic config_load_iob;               // Output IOB FF
  logic bxclk_ana_iob;                 // Output IOB FF
  logic bxclk_iob;                     // Output IOB FF
  logic vin_test_trig_out_iob;         // Output IOB FF
  logic scan_in_iob;                   // Output IOB FF
  logic scan_load_iob;                 // Output IOB FF
  //
  logic config_out_iob;                // Input  IOB FF
  logic scan_out_iob;                  // Input  IOB FF
  logic dnn_output_0_iob;              // Input  IOB FF
  logic dnn_output_1_iob;              // Input  IOB FF
  logic dn_event_toggle_iob;           // Input  IOB FF

  // MUX and FANOUT combinatorial logic.
  // The following is assuming hot bit encoding for fw_dev_id_enable. If more than FOUR firmwares will be used, change the equations below.
  always_comb begin
    if         (fw_dev_id_enable==4'h1) begin
      config_clk_mux         = fw_config_clk       [0];
      reset_not_mux          = fw_reset_not        [0];
      config_in_mux          = fw_config_in        [0];
      config_load_mux        = fw_config_load      [0];
      bxclk_ana_mux          = fw_bxclk_ana        [0];
      bxclk_mux              = fw_bxclk            [0];
      vin_test_trig_out_mux  = fw_vin_test_trig_out[0];
      scan_in_mux            = fw_scan_in          [0];
      scan_load_mux          = fw_scan_load        [0];
      fw_config_out      [0] = config_out_iob;
      fw_scan_out        [0] = scan_out_iob;
      fw_dnn_output_0    [0] = dnn_output_0_iob;
      fw_dnn_output_1    [0] = dnn_output_1_iob;
      fw_dn_event_toggle [0] = dn_event_toggle_iob;
    end else if(fw_dev_id_enable==4'h2) begin
      config_clk_mux         = fw_config_clk       [1];
      reset_not_mux          = fw_reset_not        [1];
      config_in_mux          = fw_config_in        [1];
      config_load_mux        = fw_config_load      [1];
      bxclk_ana_mux          = fw_bxclk_ana        [1];
      bxclk_mux              = fw_bxclk            [1];
      vin_test_trig_out_mux  = fw_vin_test_trig_out[1];
      scan_in_mux            = fw_scan_in          [1];
      scan_load_mux          = fw_scan_load        [1];
      fw_config_out      [1] = config_out_iob;
      fw_scan_out        [1] = scan_out_iob;
      fw_dnn_output_0    [1] = dnn_output_0_iob;
      fw_dnn_output_1    [1] = dnn_output_1_iob;
      fw_dn_event_toggle [1] = dn_event_toggle_iob;
    end else if(fw_dev_id_enable==4'h4) begin
      config_clk_mux         = fw_config_clk       [2];
      reset_not_mux          = fw_reset_not        [2];
      config_in_mux          = fw_config_in        [2];
      config_load_mux        = fw_config_load      [2];
      bxclk_ana_mux          = fw_bxclk_ana        [2];
      bxclk_mux              = fw_bxclk            [2];
      vin_test_trig_out_mux  = fw_vin_test_trig_out[2];
      scan_in_mux            = fw_scan_in          [2];
      scan_load_mux          = fw_scan_load        [2];
      fw_config_out      [2] = config_out_iob;
      fw_scan_out        [2] = scan_out_iob;
      fw_dnn_output_0    [2] = dnn_output_0_iob;
      fw_dnn_output_1    [2] = dnn_output_1_iob;
      fw_dn_event_toggle [2] = dn_event_toggle_iob;
    end else if(fw_dev_id_enable==4'h8) begin
      config_clk_mux         = fw_config_clk       [3];
      reset_not_mux          = fw_reset_not        [3];
      config_in_mux          = fw_config_in        [3];
      config_load_mux        = fw_config_load      [3];
      bxclk_ana_mux          = fw_bxclk_ana        [3];
      bxclk_mux              = fw_bxclk            [3];
      vin_test_trig_out_mux  = fw_vin_test_trig_out[3];
      scan_in_mux            = fw_scan_in          [3];
      scan_load_mux          = fw_scan_load        [3];
      fw_config_out      [3] = config_out_iob;
      fw_scan_out        [3] = scan_out_iob;
      fw_dnn_output_0    [3] = dnn_output_0_iob;
      fw_dnn_output_1    [3] = dnn_output_1_iob;
      fw_dn_event_toggle [3] = dn_event_toggle_iob;
    end else begin
      config_clk_mux         = 1'b0;
      reset_not_mux          = 1'b0;
      config_in_mux          = 1'b0;
      config_load_mux        = 1'b0;
      bxclk_ana_mux          = 1'b0;
      bxclk_mux              = 1'b0;
      vin_test_trig_out_mux  = 1'b0;
      scan_in_mux            = 1'b0;
      scan_load_mux          = 1'b0;
      fw_config_out          = 4'b0;
      fw_scan_out            = 4'b0;
      fw_dnn_output_0        = 4'b0;
      fw_dnn_output_1        = 4'b0;
      fw_dn_event_toggle [0] = dn_event_toggle_iob;
    end
  end

  // Output IOB FF
  always_ff @(posedge fw_clk) begin
    if (~fw_rst_n) begin
      config_clk_iob         <= 1'b0;
      reset_not_iob          <= 1'b0;
      config_in_iob          <= 1'b0;
      config_load_iob        <= 1'b0;
      bxclk_ana_iob          <= 1'b0;
      bxclk_iob              <= 1'b0;
      vin_test_trig_out_iob  <= 1'b0;
      scan_in_iob            <= 1'b0;
      scan_load_iob          <= 1'b0;
    end else begin
      config_clk_iob         <= config_clk_mux;
      reset_not_iob          <= reset_not_mux;
      config_in_iob          <= config_in_mux;
      config_load_iob        <= config_load_mux;
      bxclk_ana_iob          <= bxclk_ana_mux;
      bxclk_iob              <= bxclk_mux;
      vin_test_trig_out_iob  <= vin_test_trig_out_mux;
      scan_in_iob            <= scan_in_mux;
      scan_load_iob          <= scan_load_mux;
    end
  end;
  assign config_clk          = config_clk_iob;
  assign reset_not           = reset_not_iob;
  assign config_in           = config_in_iob;
  assign config_load         = config_load_iob;
  assign bxclk_ana           = bxclk_ana_iob;
  assign bxclk               = bxclk_iob;
  assign vin_test_trig_out   = vin_test_trig_out_iob;
  assign scan_in             = scan_in_iob;
  assign scan_load           = scan_load_iob;

  // Input IOB FF
  always_ff @(posedge fw_clk) begin
    if (~fw_rst_n) begin
      config_out_iob         <= 1'b0;
      scan_out_iob           <= 1'b0;
      dnn_output_0_iob       <= 1'b0;
      dnn_output_1_iob       <= 1'b0;
      dn_event_toggle_iob    <= 1'b0;
    end else begin
      config_out_iob         <= config_out;
      scan_out_iob           <= scan_out;
      dnn_output_0_iob       <= dnn_output_0;
      dnn_output_1_iob       <= dnn_output_1;
      dn_event_toggle_iob    <= dn_event_toggle;
    end
  end;

endmodule

`endif
