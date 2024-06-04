// ------------------------------------------------------------------------------------
// Author       : Cristian Gingu       gingu@fnal.gov
// Created      : 2024-06-04
// ------------------------------------------------------------------------------------
// Copyright (c) 2024 by FNAL This model is the confidential and
// proprietary property of FNAL and the possession or use of this
// file requires a written license from FNAL.
// ------------------------------------------------------------------------------------
// Revisions  :
// Date        Author                 Description
// 2024-06-04  Cristian  Gingu        Created template
// ------------------------------------------------------------------------------------
`ifndef __fw_ip2_tb__
`define __fw_ip2_tb__

`timescale 1 ns/ 1 ps

module fw_ip2_tb ();

  // DUT signals
  logic        fw_pl_clk1;                        // FM clock 400MHz       mapped to pl_clk1
  logic        fw_axi_clk;                        // FW clock 100MHz       mapped to S_AXI_ACLK
  logic        fw_rst_n;                          // FW reset, active low  mapped to S_AXI_ARESETN
  // SW side signals from/to common_sw_to_fw_side
  logic        fw_dev_id_enable;                  // up to 15 FW can be connected
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
  logic [23:0] sw_write24_0;                      // feed-through bytes 2, 1, 0 of sw_write32_0 from SW to FW
  logic [31:0] fw_read_data32;                    // 32-bit read_data   from FW to SW
  logic [31:0] fw_read_status32;                  // 32-bit read_status from FW to SW
  // DUT side signals to/from common_fw_to_dut_side      // up to 15 FWs can be connected
  // signals from FW
  logic fw_super_pixel_sel;
  logic fw_config_clk;
  logic fw_reset_not;
  logic fw_config_in;
  logic fw_config_load;
  logic fw_bxclk_ana;
  logic fw_bxclk;
  logic fw_vin_test_trig_out;
  logic fw_scan_in;
  logic fw_scan_load;
  // input signals to FW
  logic fw_config_out;
  logic fw_scan_out;
  logic fw_dnn_output_0;
  logic fw_dnn_output_1;
  logic fw_dn_event_toggle;

  fw_ip2 DUT (
    .fw_pl_clk1                   (fw_pl_clk1),                        // FM clock 400MHz       mapped to pl_clk1
    .fw_axi_clk                   (fw_axi_clk),                        // FW clock 100MHz       mapped to S_AXI_ACLK
    .fw_rst_n                     (fw_rst_n),                          // FW reset, active low  mapped to S_AXI_ARESETN
    // SW side signals from/to common_sw_to_fw_side
    .fw_dev_id_enable             (fw_dev_id_enable),                  // up to 15 FW can be connected
    .fw_op_code_w_reset           (fw_op_code_w_reset),
    .fw_op_code_w_cfg_static_0    (fw_op_code_w_cfg_static_0),
    .fw_op_code_r_cfg_static_0    (fw_op_code_r_cfg_static_0),
    .fw_op_code_w_cfg_array_0     (fw_op_code_w_cfg_array_0),
    .fw_op_code_r_cfg_array_0     (fw_op_code_r_cfg_array_0),
    .fw_op_code_w_cfg_array_1     (fw_op_code_w_cfg_array_1),
    .fw_op_code_r_cfg_array_1     (fw_op_code_r_cfg_array_1),
    .fw_op_code_r_data_array_0    (fw_op_code_r_data_array_0),
    .fw_op_code_r_data_array_1    (fw_op_code_r_data_array_1),
    .fw_op_code_r_status          (fw_op_code_r_status),
    .fw_op_code_w_execute         (fw_op_code_w_execute),
    .sw_write24_0                 (sw_write24_0),                      // feed-through bytes 2, 1, 0 of sw_write32_0 from SW to FW
    .fw_read_data32               (fw_read_data32),                    // 32-bit read_data   from FW to SW
    .fw_read_status32             (fw_read_status32),                  // 32-bit read_status from FW to SW
    // DUT side signals to/from common_fw_to_dut_side      // up to 15 FWs can be connected
    // output signals from FW
    .fw_super_pixel_sel           (fw_super_pixel_sel),
    .fw_config_clk                (fw_config_clk),
    .fw_reset_not                 (fw_reset_not),
    .fw_config_in                 (fw_config_in),
    .fw_config_load               (fw_config_load),
    .fw_bxclk_ana                 (fw_bxclk_ana),
    .fw_bxclk                     (fw_bxclk),
    .fw_vin_test_trig_out         (fw_vin_test_trig_out),
    .fw_scan_in                   (fw_scan_in),
    .fw_scan_load                 (fw_scan_load),
    // input signals to FW
    .fw_config_out                (fw_config_out),
    .fw_scan_out                  (fw_scan_out),
    .fw_dnn_output_0              (fw_dnn_output_0),
    .fw_dnn_output_1              (fw_dnn_output_1),
    .fw_dn_event_toggle           (fw_dn_event_toggle)
  );

  // Constants
  localparam fw_pl_clk1_period =  2.5;           // FM clock 400MHz       mapped to pl_clk1
  localparam fw_axi_clk_period = 10.0;           // FW clock 100MHz       mapped to S_AXI_ACLK
  //
  localparam config_static_0_bxclk_period_index_min =  0;  // USAGE of first 6-bits: bit#0-to-5. USE to set clock PERIOD
  localparam config_static_0_bxclk_period_index_max =  5;  // example for setting bxclk==40MHz derived from fw_pl_clk1==400MHz: write 6'h0A => 10*2.5ns=25ns;
  localparam config_static_0_bxclk_delay_index_min  =  6;  // USAGE of next  5-bits: bit#6-to-10. Use to set clock DELAY (maximum is half clock PERIOD as set by bits 0-to-5)
  localparam config_static_0_bxclk_delay_index_max  = 10;  //
  localparam config_static_0_bxclk_delay_sign_index = 11;  // USAGE of next 1-bit: bit#11. Use it to set clock value (Lor H) in the first bxclk_delay clocks within a bxclk_period
//  logic [5:0] bxclk_period     = config_static_0[config_static_0_bxclk_period_index_max : config_static_0_bxclk_period_index_min];
//  logic [4:0] bxclk_delay      = config_static_0[config_static_0_bxclk_delay_index_max  : config_static_0_bxclk_delay_index_min ];
//  logic       bxclk_delay_sign = config_static_0[config_static_0_bxclk_delay_sign_index];
  // 00.00.00.01.02.03.04.05.06.07.08.09.10.01.02.03.04.05.06.07.08.09.10.               fw_pl_clk1_cnt
  // LL.LL.LL.LL.HH.HH.HH.HH.HH.LL.LL.LL.LL.LL.HH.HH.HH.HH.HH.LL.LL.LL.LL.LL.            fw_bxclk_ana_ff
  // LL.LL.LL.LL.LL.LL.HH.HH.HH.HH.HH.LL.LL.LL.LL.LL.HH.HH.HH.HH.HH.LL.LL.LL.LL.LL.      fw_bxclk_ff when bxclk_delay_sign==0 and bxclk_delay==2
  // LL.LL.LL.LL.HH.HH.HH.LL.LL.LL.LL.LL.HH.HH.HH.HH.HH.LL.LL.LL.LL.LL.                  fw_bxclk_ff when bxclk_delay_sign==1 and bxclk_delay==2
  localparam config_static_0_super_pix_sel_index    = 12;

  // Test Signals
  string  tb_testcase;
  integer tb_number;
  logic   tb_mismatch;
  logic [15:0] tb_err;

  // Generate free running fw_pl_clk1;           // FM clock 400MHz       mapped to pl_clk1
  always begin: gen_fw_pl_clk1
    fw_pl_clk1 = 1'b0;
    #(fw_pl_clk1_period / 2);
    fw_pl_clk1 = 1'b1;
    #(fw_pl_clk1_period / 2);
  end

  // Generate free running fw_axi_clk;           // FW clock 100MHz       mapped to S_AXI_ACLK
  always begin: gen_fw_axi_clk
    fw_axi_clk = 1'b0;
    #(fw_axi_clk_period / 2);
    fw_axi_clk = 1'b1;
    #(fw_axi_clk_period / 2);
  end

  // Generate fw_rst_n;                          // FW reset, active low  mapped to S_AXI_ARESETN
  task axi_reset;
    begin
      @(negedge fw_axi_clk);
      fw_rst_n = 1'b0;
      #(fw_axi_clk_period*$urandom_range(5, 1));
      fw_rst_n = 1'b1;
      #(fw_axi_clk_period*$urandom_range(5, 1));
    end
  endtask

  function void initialize();
    // SW side signals FROM com_sw_to_fw.sv
    fw_dev_id_enable              = 1'b0;
    fw_op_code_w_reset            = 1'b0;
    fw_op_code_w_cfg_static_0     = 1'b0;
    fw_op_code_r_cfg_static_0     = 1'b0;
    fw_op_code_w_cfg_array_0      = 1'b0;
    fw_op_code_r_cfg_array_0      = 1'b0;
    fw_op_code_w_cfg_array_1      = 1'b0;
    fw_op_code_r_cfg_array_1      = 1'b0;
    fw_op_code_r_data_array_0     = 1'b0;
    fw_op_code_r_data_array_1     = 1'b0;
    fw_op_code_r_status           = 1'b0;
    fw_op_code_w_execute          = 1'b0;
    sw_write24_0                  = 24'h0;
    // DUT side signals FROM com_fw_to_dut.sv
    fw_config_out                 = 1'b0;
    fw_scan_out                   = 1'b0;
    fw_dnn_output_0               = 1'b0;
    fw_dnn_output_1               = 1'b0;
    fw_dn_event_toggle            = 1'b0;
  endfunction

  initial begin

    initialize();
    tb_testcase = "T0. initialize";
    tb_number = 0;
    tb_mismatch = 0;
    tb_err = 16'b0;
    $display("time %p done: tb_testcase=%s", $time, tb_testcase);

    // Test 1: axi_reset
    tb_testcase = "T1. axi_reset";
    tb_number = 1;
    axi_reset();
    $display("time %p done: tb_testcase=%s", $time, tb_testcase);
    #(10*fw_axi_clk_period);

    // Test 2: brutal test
    tb_testcase = "T2. brutal config_static_0";
    tb_number = 2;
    fw_dev_id_enable          = 1'b1;
    fw_op_code_w_cfg_static_0 = 1'b1;
    sw_write24_0              = {11'b0, 1'b0, 1'b0, 5'h2, 6'hA};
    #(20*fw_axi_clk_period);

    $display("time %p done: tb_testcase=%s", $time, tb_testcase);
    #(10*fw_axi_clk_period);

    $display("%s", {80{"-"}});
    $display("simulation done: time %p tb_err              = %016b", $time, tb_err);
    $display("%s", {80{"-"}});

    #(10*fw_axi_clk_period);
    $finish;

  end





endmodule

`endif
