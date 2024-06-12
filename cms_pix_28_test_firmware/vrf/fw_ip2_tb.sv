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
  logic        fw_op_code_w_status_clear;
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
    .fw_op_code_w_status_clear    (fw_op_code_w_status_clear),
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
  localparam tb_err_index_op_code_r_cfg_array_0     = 4;
  localparam tb_err_index_op_code_r_cfg_array_1     = 5;
  localparam tb_err_index_op_code_r_data_array_0    = 6;
  localparam tb_err_index_op_code_r_data_array_1    = 7;
  //

  // Test SCAN-CHAIN-MODULE as a serial-in / serial-out shift-tegister. The test is configured using:
  // 1. byte#3=={fw_dev_id_enable, fw_op_code_w_execute}
  // 2. byte#2-to-byte#0==sw_write24_0 where each bit is defined as follows:
  localparam w_execute_cfg_test_delay_index_min  =  0;  //
  localparam w_execute_cfg_test_delay_index_max  =  5;  //
  localparam w_execute_cfg_test_sample_index_min =  6;  //
  localparam w_execute_cfg_test_sample_index_max = 11;  //
  localparam w_execute_cfg_test_number_index_min = 12;  //
  localparam w_execute_cfg_test_number_index_max = 15;  //
  localparam w_execute_cfg_test_loopback         = 16;  //
  localparam w_execute_cfg_spare_index_min       = 17;  //
  localparam w_execute_cfg_spare_index_max       = 23;  //
  //
  // Test Signals
  string  tb_testcase;
  integer tb_number;
  logic   tb_mismatch;
  integer tb_i_test;
  logic   tb_fw_pl_clk1_initial;
  logic   tb_fw_axi_clk_initial;
  logic [15:0] tb_err;
  real         tb_time_t1;
  real         tb_time_t2;
  // Signals related with w_cfg_static_0_reg
  logic [5:0]  tb_bxclk_period;
  logic [4:0]  tb_bxclk_delay;
  logic        tb_bxclk_delay_sign;
  logic        tb_super_pix_sel;
  // Signals related with w_cfg_array_0/1_reg
  logic [255:0][15:0] tb_w_cfg_array_counter;
  logic [255:0][15:0] tb_w_cfg_array_random;
  // Signals related with w_execute: test_number and test_delay
  logic [5:0]  tb_test_delay;                              // on clock domain fw_axi_clk
  logic [5:0]  tb_test_sample;                             // on clock domain fw_axi_clk
  logic [3:0]  tb_test_number;                             // on clock domain fw_axi_clk
  logic        tb_test_loopback;                           // on clock domain fw_axi_clk

  // Generate free running fw_pl_clk1;           // FM clock 400MHz       mapped to pl_clk1
  always begin: gen_fw_pl_clk1
    fw_pl_clk1 = tb_fw_pl_clk1_initial;          //1'b0;
    #(fw_pl_clk1_period / 2);
    fw_pl_clk1 = ~fw_pl_clk1;                    //1'b1;
    #(fw_pl_clk1_period / 2);
  end

  // Generate free running fw_axi_clk;           // FW clock 100MHz       mapped to S_AXI_ACLK
  always begin: gen_fw_axi_clk
    fw_axi_clk = tb_fw_axi_clk_initial;          //1'b0;
    #(fw_axi_clk_period / 2);
    fw_axi_clk = ~fw_axi_clk;                    //1'b1;
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
    fw_op_code_w_status_clear     = 1'b0;
    fw_op_code_w_execute          = 1'b0;
    sw_write24_0                  = 24'h0;
    // DUT side signals FROM com_fw_to_dut.sv
    fw_config_out                 = 1'b0;
    fw_scan_out                   = 1'b0;
    fw_dnn_output_0               = 1'b0;
    fw_dnn_output_1               = 1'b0;
    fw_dn_event_toggle            = 1'b0;
  endfunction

  function logic [255:0][15:0] conter_cfg_array();
    logic [255:0][15:0] my_cfg_array;
    for(int i=0; i<256; i++) begin
//      my_cfg_array[i][ 7:0] = i       & 8'hFF;
//      my_cfg_array[i][15:8] = (255-i) & 8'hFF;
//      my_cfg_array[i][ 7:0] = (i+1) & 8'hFF;
      my_cfg_array[i][ 7:0]   = 8'h01;
      if(i==768/16-1) begin
        my_cfg_array[i][15:8] = 8'h80;
      end else begin
        my_cfg_array[i][15:8] = 8'h00;
      end
    end
    return my_cfg_array;
  endfunction

  function logic [255:0][15:0] random_cfg_array();
    logic [255:0][15:0] my_cfg_array;
    for(int i=0; i<256; i++) begin
      my_cfg_array[i] = $urandom_range(2**16-1, 0) & 16'hFFFF;
    end
    return my_cfg_array;
  endfunction

  task w_cfg_static_0_random();
    @(negedge fw_axi_clk);             // ensure enter on FE of AXI CLK
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

  task w_cfg_static_0_fixed();
    @(negedge fw_axi_clk);             // ensure enter on FE of AXI CLK
    fw_op_code_w_cfg_static_0  = 1'b1;
    sw_write24_0               = {11'b0, tb_super_pix_sel, tb_bxclk_delay_sign, tb_bxclk_delay, tb_bxclk_period};
    #(1*fw_axi_clk_period);
    $display("time=%06.2f tb_bxclk_period=%02d tb_bxclk_delay=%02d tb_bxclk_delay_sign=%01d tb_super_pix_sel=%01d", $realtime(), tb_bxclk_period, tb_bxclk_delay, tb_bxclk_delay_sign, tb_super_pix_sel);
    fw_op_code_w_cfg_static_0 = 1'b0;
    sw_write24_0              = {11'b0, 1'b0, 1'b0, 5'h0, 6'h0};
  endtask

  task w_cfg_array_0_counter();
    @(negedge fw_axi_clk);             // ensure enter on FE of AXI CLK
    fw_op_code_w_cfg_array_0  = 1'b1;
    sw_write24_0              = 24'h0;
    #(5*fw_axi_clk_period);
    for(int i_addr=0; i_addr<256; i_addr++) begin
      sw_write24_0[23:16] = i_addr & 8'hFF;
      sw_write24_0[15: 0] = tb_w_cfg_array_counter[i_addr];
      #(1*fw_axi_clk_period);
    end
    fw_op_code_w_cfg_array_0  = 1'b0;
  endtask

  task w_cfg_array_1_random();
    @(negedge fw_axi_clk);             // ensure enter on FE of AXI CLK
    fw_op_code_w_cfg_array_1  = 1'b1;
    sw_write24_0              = 24'h0;
    #(5*fw_axi_clk_period);
    for(int i_addr=0; i_addr<256; i_addr++) begin
      sw_write24_0[23:16] = i_addr & 8'hFF;
      sw_write24_0[15: 0] = tb_w_cfg_array_random[i_addr];
      #(1*fw_axi_clk_period);
    end
    fw_op_code_w_cfg_array_1  = 1'b0;
  endtask

  task w_status_clear();
    @(negedge fw_axi_clk);             // ensure enter on FE of AXI CLK
    fw_op_code_w_status_clear = 1'b1;
    sw_write24_0              = 24'h0;
    #(1*fw_axi_clk_period);
    fw_op_code_w_status_clear = 1'b0;
  endtask

  task w_reset();
    @(negedge fw_axi_clk);             // ensure enter on FE of AXI CLK
    fw_op_code_w_reset        = 1'b1;
    sw_write24_0              = 24'h0;
    #(1*fw_axi_clk_period);
    fw_op_code_w_reset        = 1'b0;
  endtask

  task w_execute();
    @(negedge fw_axi_clk);             // ensure enter on FE of AXI CLK
    fw_op_code_w_execute     = 1'b1;
    sw_write24_0[w_execute_cfg_test_delay_index_max  : w_execute_cfg_test_delay_index_min ] = tb_test_delay;
    sw_write24_0[w_execute_cfg_test_sample_index_max : w_execute_cfg_test_sample_index_min] = tb_test_sample;
    sw_write24_0[w_execute_cfg_test_number_index_max : w_execute_cfg_test_number_index_min] = tb_test_number;
    sw_write24_0[w_execute_cfg_test_loopback                                              ] = tb_test_loopback;
    sw_write24_0[w_execute_cfg_spare_index_max       : w_execute_cfg_spare_index_min      ] = 7'h00;
    #(1*fw_axi_clk_period);
    $display("time=%06.2f tb_test_number=%02d tb_test_delay=%02d tb_test_sample=%02d tb_test_loopback=%02d", $realtime(), tb_test_number, tb_test_delay, tb_test_sample, tb_test_loopback);
    //fw_op_code_w_execute     = 1'b0;
    //sw_write24_0             = 24'h0;
  endtask

  task check_bxclk_period_and_delay();
    begin
      // $time returns the current simulation time as a 64-bit unsigned integer
      // $stime returns the lower 32-bits of the current simulationt time as an unsigned integer.
      // $realtime returns the current simulation time as a real number.
      // 1. CHECK fw_bxclk_ana PERIOD
      @(posedge fw_bxclk_ana); tb_time_t1 = $realtime();
      @(posedge fw_bxclk_ana); tb_time_t2 = $realtime();
      if(tb_time_t2-tb_time_t1 != tb_bxclk_period * fw_pl_clk1_period) begin
        $display("time=%06.2f FAIL PERIOD fw_bxclk_ana: tb_time_t1=%06.2f tb_time_t2=%06.2f tb_time_t2-tb_time_t1=%06.2f bxclk_period=%02d", $realtime(), tb_time_t1, tb_time_t2, tb_time_t2-tb_time_t1, tb_bxclk_period);
        tb_err[tb_err_index_bxclk_ana_period]=1'b1;
      end
      // 2. CHECK fw_bxclk PERIOD
      @(posedge fw_bxclk); tb_time_t1 = $realtime();
      @(posedge fw_bxclk); tb_time_t2 = $realtime();
      if(tb_time_t2-tb_time_t1 != tb_bxclk_period * fw_pl_clk1_period) begin
        $display("time=%06.2f FAIL PERIOD fw_bxclk: tb_time_t1=%06.2f tb_time_t2=%06.2f tb_time_t2-tb_time_t1=%06.2f bxclk_period=%02d", $realtime(), tb_time_t1, tb_time_t2, tb_time_t2-tb_time_t1, tb_bxclk_period);
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
          $display("time=%06.2f FAIL DELAY fw_bxclk: tb_time_t1=%06.2f tb_time_t2=%06.2f tb_time_t2-tb_time_t1=%06.2f tb_bxclk_delay=%02d tb_bxclk_delay_sign=%01d", $realtime(), tb_time_t1, tb_time_t2, tb_time_t2-tb_time_t1, tb_bxclk_delay, tb_bxclk_delay_sign);
          tb_err[tb_err_index_bxclk_phase]=1'b1;
        end
      end else begin
        if(tb_time_t2-tb_time_t1 != tb_bxclk_delay * fw_pl_clk1_period) begin
          $display("time=%06.2f FAIL DELAY fw_bxclk: tb_time_t1=%06.2f tb_time_t2=%06.2f tb_time_t2-tb_time_t1=%06.2f tb_bxclk_delay=%02d tb_bxclk_delay_sign=%01d", $realtime(), tb_time_t1, tb_time_t2, tb_time_t2-tb_time_t1, tb_bxclk_delay, tb_bxclk_delay_sign);
          tb_err[tb_err_index_bxclk_phase]=1'b1;
        end
      end
      @(negedge fw_axi_clk);           // ensure exit on FE of AXI CLK
    end
  endtask

  task check_r_cfg_static_0();
    @(negedge fw_axi_clk);             // ensure enter on FE of AXI CLK
    fw_op_code_r_cfg_static_0  = 1'b1;
    #(1*fw_axi_clk_period);
    if(fw_read_data32 != {11'h0, tb_super_pix_sel, tb_bxclk_delay_sign, tb_bxclk_delay, tb_bxclk_period}) begin
      $display("time=%06.2f FAIL op_code_r_cfg_static_0 fw_read_data32=0x%08h expected 0x%08h", $realtime(), fw_read_data32, {11'h0, tb_super_pix_sel, tb_bxclk_delay_sign, tb_bxclk_delay, tb_bxclk_period});
      tb_err[tb_err_index_op_code_r_cfg_static_0]=1'b1;
    end
    fw_op_code_r_cfg_static_0  = 1'b0;
  endtask

  task check_r_cfg_array_0_counter();
    @(negedge fw_axi_clk);             // ensure enter on FE of AXI CLK
    fw_op_code_r_cfg_array_0  = 1'b1;
    sw_write24_0              = 24'h0;
    #(5*fw_axi_clk_period);
    for(int i_addr=0; i_addr<256; i_addr=i_addr+2) begin
      sw_write24_0[23:16] = i_addr & 8'hFF;
      sw_write24_0[15: 0] = 16'hFFFF;
      @(posedge fw_axi_clk);
      if(fw_read_data32 != {tb_w_cfg_array_counter[i_addr+1], tb_w_cfg_array_counter[i_addr]}) begin
        $display("time=%06.2f FAIL op_code_r_cfg_array_0 i_addr=%03d fw_read_data32=0x%08h expected {0x%04h 0x%04h}", $realtime(), i_addr, fw_read_data32, tb_w_cfg_array_counter[i_addr+1], tb_w_cfg_array_counter[i_addr]);
        tb_err[tb_err_index_op_code_r_cfg_array_0]=1'b1;
      end
      @(negedge fw_axi_clk);
    end
    fw_op_code_r_cfg_array_0  = 1'b0;
  endtask

  task check_r_cfg_array_1_random();
    @(negedge fw_axi_clk);             // ensure enter on FE of AXI CLK
    fw_op_code_r_cfg_array_1  = 1'b1;
    sw_write24_0              = 24'h0;
    #(5*fw_axi_clk_period);
    for(int i_addr=0; i_addr<256; i_addr=i_addr+2) begin
      sw_write24_0[23:16] = i_addr & 8'hFF;
      sw_write24_0[15: 0] = 16'hFFFF;
      @(posedge fw_axi_clk);
      if(fw_read_data32 != {tb_w_cfg_array_random[i_addr+1], tb_w_cfg_array_random[i_addr]}) begin
        $display("time=%06.2f FAIL op_code_r_cfg_array_1 i_addr=%03d fw_read_data32=0x%08h expected {0x%04h 0x%04h}", $realtime(), i_addr, fw_read_data32, tb_w_cfg_array_random[i_addr+1], tb_w_cfg_array_random[i_addr]);
        tb_err[tb_err_index_op_code_r_cfg_array_1]=1'b1;
      end
      @(negedge fw_axi_clk);
    end
    fw_op_code_r_cfg_array_1  = 1'b0;
  endtask

  task check_r_data_array_0_counter_loopback(
      integer read_n_32bit_words
    );
    @(negedge fw_axi_clk);             // ensure enter on FE of AXI CLK
    fw_op_code_r_data_array_0  = 1'b1;
    sw_write24_0              = 24'h0;
    #(5*fw_axi_clk_period);
    for(int i_addr=0; i_addr<read_n_32bit_words; i_addr++) begin
      sw_write24_0[23:16] = i_addr & 8'hFF;
      sw_write24_0[15: 0] = 16'hFFFF;
      @(posedge fw_axi_clk);
      if(fw_read_data32 != {tb_w_cfg_array_counter[2*i_addr+1], tb_w_cfg_array_counter[2*i_addr]}) begin
        $display("time=%06.2f FAIL op_code_r_cfg_array_0 i_addr=%03d fw_read_data32=0x%08h expected {0x%04h 0x%04h}", $realtime(), i_addr, fw_read_data32, tb_w_cfg_array_counter[2*i_addr+1], tb_w_cfg_array_counter[2*i_addr]);
        tb_err[tb_err_index_op_code_r_data_array_0]=1'b1;
      end
      @(negedge fw_axi_clk);
    end
    fw_op_code_r_data_array_0  = 1'b0;
  endtask

  initial begin
    //---------------------------------------------------------------------------------------------
    initialize();
    tb_testcase = "T0. initialize";
    tb_number = 0;
    tb_mismatch = 0;
    tb_err = 16'b0;
    tb_w_cfg_array_counter = {256{16'h0}};
    tb_w_cfg_array_random  = {256{16'hFFFF}};
    tb_fw_pl_clk1_initial  = $urandom_range(1, 0) & 1'b1;
    tb_fw_axi_clk_initial  = $urandom_range(1, 0) & 1'b1;
    $display("time %06.2f done: tb_testcase=%s\n%s", $realtime, tb_testcase, {80{"-"}});
    //---------------------------------------------------------------------------------------------
    // Test 1: axi_reset
    tb_testcase = "T1. axi_reset";
    tb_number   = 1;
    axi_reset();
    $display("time %06.2f done: tb_testcase=%s\n%s", $realtime, tb_testcase, {80{"-"}});
    #(10*fw_axi_clk_period);
    //---------------------------------------------------------------------------------------------
    // Test 2: w_status_clear
    tb_testcase = "T2. w_status_clear";
    tb_number   = 2;
    fw_dev_id_enable = 1'b1;
    w_status_clear();
    $display("time %06.2f done: tb_testcase=%s\n%s", $realtime, tb_testcase, {80{"-"}});
    //---------------------------------------------------------------------------------------------
    // Test 3: BXCLK/ANA random period and delay test write/read
    tb_testcase = "T3. BXCLK/ANA random period and delay test write/read";
    tb_number   = 3;
    for (tb_i_test = 0; tb_i_test < 50; tb_i_test++) begin
      fw_dev_id_enable = 1'b1;
      // Randomize sw_write24_0 content and issue fw_op_code_w_cfg_static_0 for ONE fw_axi_clk_period
      w_cfg_static_0_random();
      // Dummy wait before doing check_bxclk_period_and_delay()
      #(5*fw_axi_clk_period);
      check_bxclk_period_and_delay();
      // Dummy wait before doing check_r_cfg_static_0()
      #(5*fw_axi_clk_period);
      check_r_cfg_static_0();
      // Dummy wait before disable fw_dev_id_enable => clocks will become ZERO
      #(5*fw_axi_clk_period);
      fw_dev_id_enable = 1'b0;
      // Dummy wait before next tb_i_test
      #(5*fw_axi_clk_period);
    end
    $display("time %06.2f done: tb_testcase=%s\n%s", $realtime, tb_testcase, {80{"-"}});
    //---------------------------------------------------------------------------------------------
    // Test 4: cfg_array_0/1 write/read counter/random
    tb_testcase = "T4. cfg_array_0/1 write/read counter/random";
    tb_number   = 4;
    tb_w_cfg_array_counter = conter_cfg_array();
    tb_w_cfg_array_random  = random_cfg_array();
    fw_dev_id_enable       = 1'b1;
    #(5*fw_axi_clk_period);
    w_reset();
    // WRITE fw_op_code_w_cfg_array_0
    w_cfg_array_0_counter();
    // WRITE fw_op_code_w_cfg_array_1
    w_cfg_array_1_random();
    // READ fw_op_code_r_cfg_array_0
    check_r_cfg_array_0_counter();
    // READ fw_op_code_r_cfg_array_1
    check_r_cfg_array_1_random();
    fw_dev_id_enable         = 1'b0;
    #(5*fw_axi_clk_period);
    $display("time %06.2f done: tb_testcase=%s\n%s", $realtime, tb_testcase, {80{"-"}});
    //---------------------------------------------------------------------------------------------
    // Test 5: Test SCAN-CHAIN-MODULE as a serial-in / serial-out shift-tegister.
    tb_testcase = "T5. SCAN-CHAIN-MODULE as a serial-in / serial-out shift-tegister";
    tb_number   = 5;
    fw_dev_id_enable         = 1'b1;
//    w_reset();
    tb_number   = 501;
    #(5*fw_axi_clk_period);
    // Use predefined BXCLK/ANA 40MHz with 5ns delay
    tb_bxclk_period          = 6'h0A;                      // on clock domain fw_axi_clk
    tb_bxclk_delay           = 5'h2;                       // on clock domain fw_axi_clk
    tb_bxclk_delay_sign      = 1'h0;                       // on clock domain fw_axi_clk
    tb_super_pix_sel         = 1'h0;                       // on clock domain fw_axi_clk
    w_cfg_static_0_fixed();
    tb_number   = 502;                                     // BXCLK/ANA is programmed
    #(64*fw_axi_clk_period);                               // dummy wait to ensure BXCLK/ANA are started (the fw_pl_clk1_cnt did roll over)
    tb_test_delay            = 6'h08;                      // on clock domain fw_axi_clk
    tb_test_sample           = 6'h03;                      // on clock domain fw_axi_clk
    tb_test_loopback         = 1'b1;                       // on clock domain fw_axi_clk
    tb_test_number           = 4'h1;                       // on clock domain fw_axi_clk
    w_execute();
    tb_number   = 503;
    #(770*tb_bxclk_period*fw_pl_clk1_period);              // execution: wait for at least 768+1 BXCLK cycles; alternatively check when bit#10 is set in fw_read_status32_reg[10] <= sm_test1_o_status_done;
    if(fw_read_status32[10]!=1'b1) begin
      $display("time=%06.2f test1 in loopback mode done; starting to check readout data: calling check_r_data_array_0_counter_loopback()...", $realtime());
    end else begin
      $display("time=%06.2f test1 in loopback mode NOT done", $realtime());
    end
    #(10*fw_axi_clk_period);
    tb_number   = 504;
    // READ fw_op_code_r_data_array_0
    check_r_data_array_0_counter_loopback(.read_n_32bit_words(24));  // readout: number of 32-bit words is 24 for tb_test_number==1 and tb_test_loopback==HIGH
    #(30*fw_axi_clk_period);                                         // readout: wait for at least 24 AXI clock cycles
    fw_dev_id_enable = 1'b1;
    #(5*fw_axi_clk_period);
    $display("time %06.2f done: tb_testcase=%s\n%s", $realtime, tb_testcase, {80{"-"}});
    //---------------------------------------------------------------------------------------------

    $display("%s", {80{"-"}});
    $display("simulation done: time %06.2f tb_err = %016b", $realtime, tb_err);
    $display("%s", {80{"-"}});

    #(10*fw_axi_clk_period);
    $finish;

  end

endmodule

`endif
