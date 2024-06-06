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
  // DUT side signals to/from common_logic [63:0]fw_to_dut_side      // up to 15 FWs can be connected
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
  // LL.LL.LL.LL.LL.LL.HH.HH.HH.HH.HHlogic [63:0].LL.LL.LL.LL.LL.HH.HH.HH.HH.HH.LL.LL.LL.LL.LL.      fw_bxclk_ff when bxclk_delay_sign==0 and bxclk_delay==2
  // LL.LL.LL.LL.HH.HH.HH.LL.LL.LL.LL.LL.HH.HH.HH.HH.HH.LL.LL.LL.LL.LL.                  fw_bxclk_ff when bxclk_delay_sign==1 and bxclk_delay==2
  localparam config_static_0_super_pix_sel_index    = 12;
  //
  localparam tb_err_index_bxclk_ana_period          = 0;
  localparam tb_err_index_bxclk_period              = 1;
  localparam tb_err_index_bxclk_phase               = 2;
  localparam tb_err_index_op_code_r_cfg_static_0    = 3;

  // Test Signals
  string  tb_testcase;
  integer tb_number;
  logic   tb_mismatch;
  integer tb_i_test;
  logic [15:0] tb_err;
  real         tb_time_t1;
  real         tb_time_t2;
  logic [5:0]  tb_bxclk_period;
  logic [4:0]  tb_bxclk_delay;
  logic        tb_bxclk_delay_sign;
  logic        tb_super_pix_sel;

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

  task randomize_bxclk_period_and_delay();
    fw_op_code_w_cfg_static_0  = 1'b1;
    //if(tb_i_test%3==0) tb_bxclk_period = 6'h0A;                    //(400/10=40MHz)
    //if(tb_i_test%3==1) tb_bxclk_period = 6'h14;                    //(400/20=20MHz)
    //if(tb_i_test%3==2) tb_bxclk_period = 6'h28;                    //(400/40=10MHz)
    //tb_bxclk_period                    = 6'h0A;
    tb_bxclk_period            = $urandom_range(40, 10)               & 6'h3F;   //6'h0A => 40MHz
    tb_bxclk_delay             = $urandom_range(tb_bxclk_period/2, 0) & 5'h1F;   //5'h2;
    tb_bxclk_delay_sign        = $urandom_range(1, 0)                 & 1'h1;
    tb_super_pix_sel           = $urandom_range(1, 0)                 & 1'h1;
    sw_write24_0               = {11'b0, tb_super_pix_sel, tb_bxclk_delay_sign, tb_bxclk_delay, tb_bxclk_period};
    #(1*fw_axi_clk_period);
    $display("time=%06.2f tb_i_test=%02d tb_bxclk_period=%02d tb_bxclk_delay=%02d tb_bxclk_delay_sign=%01d tb_super_pix_sel=%01d", $realtime(), tb_i_test, tb_bxclk_period, tb_bxclk_delay, tb_bxclk_delay_sign, tb_super_pix_sel);
    fw_op_code_w_cfg_static_0 = 1'b0;
    sw_write24_0              = {11'b0, 1'b0, 1'b0, 5'h0, 6'h0};
  endtask

  task check_bxclk_period_and_delay();
    begin
      //
      // $time returns the current simulation time as a 64-bit unsigned integer
      // $stime returns the lower 32-bits of the current simulationt time as an unsigned integer.
      // $realtime returns the current simulation time as a real number.
      // 1. CHECK fw_bxclk_ana PERIOD
      @(posedge fw_bxclk_ana); tb_time_t1 = $realtime();
      @(posedge fw_bxclk_ana); tb_time_t2 = $realtime();
      if(tb_time_t2-tb_time_t1 != tb_bxclk_period * fw_pl_clk1_period) begin
        $display("time=%06.2f fw_bxclk_ana FAIL PERIOD: tb_time_t1=%06.2f tb_time_t2=%06.2f tb_time_t2-tb_time_t1=%06.2f bxclk_period=%02d", $realtime(), tb_time_t1, tb_time_t2, tb_time_t2-tb_time_t1, tb_bxclk_period);
        tb_err[tb_err_index_bxclk_ana_period]=1'b1;
      end
      // 2. CHECK fw_bxclk PERIOD
      @(posedge fw_bxclk); tb_time_t1 = $realtime();
      @(posedge fw_bxclk); tb_time_t2 = $realtime();
      if(tb_time_t2-tb_time_t1 != tb_bxclk_period * fw_pl_clk1_period) begin
        $display("time=%06.2f fw_bxclk FAIL PERIOD: tb_time_t1=%06.2f tb_time_t2=%06.2f tb_time_t2-tb_time_t1=%06.2f bxclk_period=%02d", $realtime(), tb_time_t1, tb_time_t2, tb_time_t2-tb_time_t1, tb_bxclk_period);
        tb_err[tb_err_index_bxclk_period]=1'b1;
      end
      // 3. CHECK fw_bxclk vs fw_bxclk_ana PHASE DELAY
      if(tb_bxclk_delay_sign==1'b0) begin
        @(posedge fw_bxclk_ana); tb_time_t1 = $realtime();
        @(posedge fw_bxclk    ); tb_time_t2 = $realtime();
        // bxclk_delay_sign is ZERO. The RE of bxclk is after RE of bxclk_ana by bxclk_delay ticks.
        // keep bxclk LOW for bxclk_delay; then HIGH for bxclk_period/2; then again LOW for bxclk_period/2-bxclk_delay
      end
      if(tb_bxclk_delay_sign==1'b1) begin
        @(posedge fw_bxclk_ana); tb_time_t1 = $realtime();
        @(negedge fw_bxclk    ); tb_time_t2 = $realtime();
        // bxclk_delay_sign is ONE. The FE of bxclk is after RE of bxclk_ana by bxclk_delay ticks
        // keep bxclk HIGH for bxclk_delay; then LOW for bxclk_period/2; then again HIGH for bxclk_period/2-bxclk_delay
      end
      if(tb_bxclk_delay==0) begin
        // in this case the signals are either in phase (if tb_bxclk_delay_sign==1'b0) or inverted (if tb_bxclk_delay_sign==1'b1)
        if(tb_time_t2-tb_time_t1 != tb_bxclk_period * fw_pl_clk1_period) begin
          $display("time=%06.2f FAIL DELAY: tb_time_t1=%06.2f tb_time_t2=%06.2f tb_time_t2-tb_time_t1=%06.2f tb_bxclk_delay=%02d tb_bxclk_delay_sign=%01d", $realtime(), tb_time_t1, tb_time_t2, tb_time_t2-tb_time_t1, tb_bxclk_delay, tb_bxclk_delay_sign);
          tb_err[tb_err_index_bxclk_phase]=1'b1;
        end
      end else begin
        if(tb_time_t2-tb_time_t1 != tb_bxclk_delay * fw_pl_clk1_period) begin
          $display("time=%06.2f FAIL DELAY: tb_time_t1=%06.2f tb_time_t2=%06.2f tb_time_t2-tb_time_t1=%06.2f tb_bxclk_delay=%02d tb_bxclk_delay_sign=%01d", $realtime(), tb_time_t1, tb_time_t2, tb_time_t2-tb_time_t1, tb_bxclk_delay, tb_bxclk_delay_sign);
          tb_err[tb_err_index_bxclk_phase]=1'b1;
        end
      end
      // ensure exit on FE of AXI CLK
      @(negedge fw_axi_clk);
    end
  endtask

  task check_op_code_r_cfg_static_0();
    fw_op_code_r_cfg_static_0  = 1'b1;
    #(1*fw_axi_clk_period);
    if(fw_read_data32 != {11'h0, tb_super_pix_sel, tb_bxclk_delay_sign, tb_bxclk_delay, tb_bxclk_period}) begin
      $display("time=%06.2f FAIL fw_read_data32=0x%08h expected 0x%08h", $realtime(), fw_read_data32, {11'h0, tb_super_pix_sel, tb_bxclk_delay_sign, tb_bxclk_delay, tb_bxclk_period});
      tb_err[tb_err_index_op_code_r_cfg_static_0]=1'b1;
    end
    fw_op_code_r_cfg_static_0  = 1'b0;
    // ensure exit on FE of AXI CLK
    @(negedge fw_axi_clk);
  endtask

  initial begin

    initialize();
    tb_testcase = "T0. initialize";
    tb_number = 0;
    tb_mismatch = 0;
    tb_err = 16'b0;
    $display("time %06.2f done: tb_testcase=%s", $realtime, tb_testcase);

    // Test 1: axi_reset
    tb_testcase = "T1. axi_reset";
    tb_number = 1;
    axi_reset();
    $display("time %06.2f done: tb_testcase=%s", $realtime, tb_testcase);
    #(10*fw_axi_clk_period);

    // Test 2: BXCLK/ANA random period and delay test write/read
    tb_testcase = "T2. BXCLK/ANA random period and delay test write/read";
    tb_number = 2;
    for (tb_i_test = 0; tb_i_test < 50; tb_i_test++) begin
      fw_dev_id_enable = 1'b1;
      // Randomize sw_write24_0 content and issue fw_op_code_w_cfg_static_0 for ONE fw_axi_clk_period
      randomize_bxclk_period_and_delay();
      // Dummy wait before doing check_bxclk_period_and_delay()
      #(5*fw_axi_clk_period);
      check_bxclk_period_and_delay();
      // Dummy wait before doing check_op_code_r_cfg_static_0()
      #(5*fw_axi_clk_period);
      check_op_code_r_cfg_static_0();
      // Dummy wait before disable fw_dev_id_enable => clocks will become ZERO
      #(5*fw_axi_clk_period);
      fw_dev_id_enable = 1'b0;
      // Dummy wait before next tb_i_test
      #(5*fw_axi_clk_period);
    end
    $display("time %06.2f done: tb_testcase=%s", $realtime, tb_testcase);

    // Test 3: TODO

    $display("%s", {80{"-"}});
    $display("simulation done: time %06.2f tb_err = %016b", $realtime, tb_err);
    $display("%s", {80{"-"}});

    #(10*fw_axi_clk_period);
    $finish;

  end

endmodule

`endif
