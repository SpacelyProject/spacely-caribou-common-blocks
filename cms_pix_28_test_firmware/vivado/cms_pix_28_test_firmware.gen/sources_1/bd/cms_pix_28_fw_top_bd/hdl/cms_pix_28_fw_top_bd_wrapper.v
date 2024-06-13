//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Thu Jun 13 13:55:36 2024
//Host        : fasic-beast2.fnal.gov running 64-bit Scientific Linux release 7.9 (Nitrogen)
//Command     : generate_target cms_pix_28_fw_top_bd_wrapper.bd
//Design      : cms_pix_28_fw_top_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module cms_pix_28_fw_top_bd_wrapper
   (bxclk,
    bxclk_ana,
    config_clk,
    config_in,
    config_load,
    config_out,
    dn_event_toggle,
    dnn_output_0,
    dnn_output_1,
    reset_not,
    scan_in,
    scan_load,
    scan_out,
    super_pixel_sel,
    vin_test_trig_out);
  output bxclk;
  output bxclk_ana;
  output config_clk;
  output config_in;
  output config_load;
  input config_out;
  input dn_event_toggle;
  input dnn_output_0;
  input dnn_output_1;
  output reset_not;
  output scan_in;
  output scan_load;
  input scan_out;
  output super_pixel_sel;
  output vin_test_trig_out;

  wire bxclk;
  wire bxclk_ana;
  wire config_clk;
  wire config_in;
  wire config_load;
  wire config_out;
  wire dn_event_toggle;
  wire dnn_output_0;
  wire dnn_output_1;
  wire reset_not;
  wire scan_in;
  wire scan_load;
  wire scan_out;
  wire super_pixel_sel;
  wire vin_test_trig_out;

  cms_pix_28_fw_top_bd cms_pix_28_fw_top_bd_i
       (.bxclk(bxclk),
        .bxclk_ana(bxclk_ana),
        .config_clk(config_clk),
        .config_in(config_in),
        .config_load(config_load),
        .config_out(config_out),
        .dn_event_toggle(dn_event_toggle),
        .dnn_output_0(dnn_output_0),
        .dnn_output_1(dnn_output_1),
        .reset_not(reset_not),
        .scan_in(scan_in),
        .scan_load(scan_load),
        .scan_out(scan_out),
        .super_pixel_sel(super_pixel_sel),
        .vin_test_trig_out(vin_test_trig_out));
endmodule
