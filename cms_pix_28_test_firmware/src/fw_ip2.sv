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
`ifndef __fw_ip2__
`define __fw_ip2__

`timescale 1 ns/ 1 ps

module fw_ip2 (
    input  logic        fw_pl_clk1,                        // FM clock 400MHz       mapped to pl_clk1
    input  logic        fw_axi_clk,                        // FW clock 100MHz       mapped to S_AXI_ACLK
    input  logic        fw_rst_n,                          // FW reset, active low  mapped to S_AXI_ARESETN
    // SW side signals from/to com_sw_to_fw.sv
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
    // DUT side signals to/from com_fw_to_dut.sv           // up to 15 FWs can be connected
    // output signals from FW to DUT
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
    // input signals to FW from DUT
    input  logic fw_config_out,
    input  logic fw_scan_out,
    input  logic fw_dnn_output_0,
    input  logic fw_dnn_output_1,
    input  logic fw_dn_event_toggle
  );

  // Instantiate module com_op_code_decoder.sv
  logic op_code_w_reset;
  logic op_code_w_cfg_static_0;
  logic op_code_r_cfg_static_0;
  logic op_code_w_cfg_static_1;
  logic op_code_r_cfg_static_1;
  logic op_code_w_cfg_array_0;
  logic op_code_r_cfg_array_0;
  logic op_code_w_cfg_array_1;
  logic op_code_r_cfg_array_1;
  logic op_code_r_data_array_0;
  logic op_code_r_data_array_1;
  logic op_code_w_status_clear;
  logic op_code_w_execute;
  com_op_code_decoder com_op_code_decoder_inst(
    .fw_dev_id_enable          (fw_dev_id_enable),
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
    //
    .op_code_w_reset         (op_code_w_reset),
    .op_code_w_cfg_static_0  (op_code_w_cfg_static_0),
    .op_code_r_cfg_static_0  (op_code_r_cfg_static_0),
    .op_code_w_cfg_static_1  (op_code_w_cfg_static_1),
    .op_code_r_cfg_static_1  (op_code_r_cfg_static_1),
    .op_code_w_cfg_array_0   (op_code_w_cfg_array_0),
    .op_code_r_cfg_array_0   (op_code_r_cfg_array_0),
    .op_code_w_cfg_array_1   (op_code_w_cfg_array_1),
    .op_code_r_cfg_array_1   (op_code_r_cfg_array_1),
    .op_code_r_data_array_0  (op_code_r_data_array_0),
    .op_code_r_data_array_1  (op_code_r_data_array_1),
    .op_code_w_status_clear  (op_code_w_status_clear),
    .op_code_w_execute       (op_code_w_execute)
  );

  // Instantiate module com_config_write_regs.sv
  logic [23:0]        w_cfg_static_0_reg;
  logic [23:0]        w_cfg_static_1_reg;
  logic [255:0][15:0] w_cfg_array_0_reg;
  logic [255:0][15:0] w_cfg_array_1_reg;
  com_config_write_regs com_config_write_regs_inst (
    .fw_clk_100              (fw_axi_clk),                 // FW clock 100MHz       mapped to S_AXI_ACLK
    .fw_rst_n                (fw_rst_n),                   // FW reset, active low  mapped to S_AXI_ARESETN
    //
    .op_code_w_reset         (op_code_w_reset),
    .op_code_w_cfg_static_0  (op_code_w_cfg_static_0),
    .op_code_w_cfg_static_1  (op_code_w_cfg_static_1),
    .op_code_w_cfg_array_0   (op_code_w_cfg_array_0),
    .op_code_w_cfg_array_1   (op_code_w_cfg_array_1),
    .sw_write24_0            (sw_write24_0),               // feed-through bytes 2, 1, 0 of sw_write32_0 from SW to FW
    //
    .w_cfg_static_0_reg      (w_cfg_static_0_reg),         // on clock domain fw_axi_clk
    .w_cfg_static_1_reg      (w_cfg_static_1_reg),         // on clock domain fw_axi_clk
    .w_cfg_array_0_reg       (w_cfg_array_0_reg),          // on clock domain fw_axi_clk
    .w_cfg_array_1_reg       (w_cfg_array_1_reg)           // on clock domain fw_axi_clk
  );

  // Combinatorial logic for SW readout data fw_read_data32
  logic [31:0] fw_read_data32_comb;                        // 32-bit read_data   from FW to SW
  localparam                                          sm_testx_o_scanchain_reg_width = 768;
  logic [sm_testx_o_scanchain_reg_width-1   :0]       sm_testx_o_scanchain_reg;                    // 768-bits shift register; bit#767 receives DUT scan_out; used by all tests 1,2,3
  logic [sm_testx_o_scanchain_reg_width/32-1:0][31:0] sm_testx_o_scanchain_reg_array32;            // remap the 768-bits register into one array of 32-bits; array depth is 768/32=24 words
  for(genvar i = 0; i < sm_testx_o_scanchain_reg_width/32; i++) begin: sm_testx_o_scanchain_reg_array32_gen
    assign sm_testx_o_scanchain_reg_array32[i] = sm_testx_o_scanchain_reg[(i+1)*32-1 : i*32];
  end
  always_comb begin : fw_read_data32_comb_proc
    if(op_code_r_cfg_static_0) begin
      // AXI SW will readout com_config_write_regs.sv output signal w_cfg_static_0_reg, which is 24-bits. Must pad with zero up to 32-bits.
      fw_read_data32_comb = {8'h0, w_cfg_static_0_reg};
    end else if(op_code_r_cfg_static_1) begin
      // AXI SW will readout com_config_write_regs.sv output signal w_cfg_static_1_reg, which is 24-bits. Must pad with zero up to 32-bits.
      fw_read_data32_comb = {8'h0, w_cfg_static_1_reg};
    end else if(op_code_r_cfg_array_0) begin
      // AXI SW will readout com_config_write_regs.sv output signal w_cfg_array_0_reg, which is 16-bits for the requested address sw_write24_0[23:16].
      // For efficiency, read also w_cfg_array_0_reg at next address. CAUTION: SW must take care not to OVERFLOW addresses
      fw_read_data32_comb = {w_cfg_array_0_reg[sw_write24_0[23:16]+1], w_cfg_array_0_reg[sw_write24_0[23:16]]};
    end else if(op_code_r_cfg_array_1) begin
      // AXI SW will readout com_config_write_regs.sv output signal w_cfg_array_1_reg, which is 16-bits for the requested address sw_write24_0[23:16].
      // For efficiency, read also w_cfg_array_1_reg at next address. CAUTION: SW must take care not to OVERFLOW addresses
      fw_read_data32_comb = {w_cfg_array_1_reg[sw_write24_0[23:16]+1], w_cfg_array_1_reg[sw_write24_0[23:16]]};
    end else if(op_code_r_data_array_0) begin
      // AXI SW will readout sm_testx_o_scanchain_reg signal which is 768-bits for the requested address sw_write24_0[23:16].
      // CAUTION: SW must take care not to OVERFLOW addresses: valid are 0-to-23 (768/32=24 words, 32-bits each)
      if(sw_write24_0[23:16]<24) begin
        fw_read_data32_comb = sm_testx_o_scanchain_reg_array32[sw_write24_0[23:16]];
      end else begin
        fw_read_data32_comb = 32'b0;                       // pad with ZERO
      end
    end else if(op_code_r_data_array_1) begin
      // TODO update code here with readout data coming from DUT
      fw_read_data32_comb = 32'b0;                         // incoming data on clock domain fw_pl_clk1
    end else begin
      fw_read_data32_comb = 32'b0;
    end
  end
  assign fw_read_data32 = fw_read_data32_comb;

  // Logic for SW readout data fw_read_status32
  logic [31:0] fw_read_status32_reg;                       // 32-bit read_status from FW to SW
  logic sm_test1_o_status_done;
  logic sm_test2_o_status_done; assign sm_test2_o_status_done = 1'b0;
  logic sm_test3_o_status_done; assign sm_test3_o_status_done = 1'b0;
  logic sm_test4_o_status_done; assign sm_test4_o_status_done = 1'b0;
  logic error_w_execute_cfg;
  always @(posedge fw_axi_clk) begin : fw_read_status32_reg_proc
    if(op_code_w_status_clear) begin
      fw_read_status32_reg <= 32'b0;                       // incoming data on clock domain fw_pl_clk1
    end else begin
      if(op_code_w_reset)        fw_read_status32_reg[ 0] <= 1'b1;
      if(op_code_w_cfg_static_0) fw_read_status32_reg[ 1] <= 1'b1;
      if(op_code_r_cfg_static_0) fw_read_status32_reg[ 2] <= 1'b1;
      if(op_code_w_cfg_static_1) fw_read_status32_reg[ 3] <= 1'b1;
      if(op_code_r_cfg_static_1) fw_read_status32_reg[ 4] <= 1'b1;
      if(op_code_w_cfg_array_0)  fw_read_status32_reg[ 5] <= 1'b1;
      if(op_code_r_cfg_array_0)  fw_read_status32_reg[ 6] <= 1'b1;
      if(op_code_w_cfg_array_1)  fw_read_status32_reg[ 7] <= 1'b1;
      if(op_code_r_cfg_array_1)  fw_read_status32_reg[ 8] <= 1'b1;
      if(op_code_r_data_array_0) fw_read_status32_reg[ 9] <= 1'b1;
      if(op_code_r_data_array_1) fw_read_status32_reg[10] <= 1'b1;
      if(op_code_w_execute)      fw_read_status32_reg[11] <= 1'b1;
      fw_read_status32_reg[12]    <= sm_test1_o_status_done;
      fw_read_status32_reg[13]    <= sm_test2_o_status_done;
      fw_read_status32_reg[14]    <= sm_test3_o_status_done;
      fw_read_status32_reg[15]    <= sm_test4_o_status_done;
      fw_read_status32_reg[30:16] <= 15'b0;
      fw_read_status32_reg[31]    <= error_w_execute_cfg;
    end
  end
  assign fw_read_status32 = fw_read_status32_reg;

//  // Instantiate module com_cdc_synch.sv
//  logic synch_op_code_w_reset;
//  com_cdc_synch com_cdc_synch_op_code_w_reset (
//    .i_data        (op_code_w_reset),
//    .i_clk         (fw_pl_clk1),
//    .o_data        (synch_op_code_w_reset)
//    );

  localparam w_cfg_static_0_reg_bxclk_period_index_min =  0;  // USAGE of first 6-bits: bit#0-to-5. USE to set clock PERIOD
  localparam w_cfg_static_0_reg_bxclk_period_index_max =  5;  // example for setting bxclk==40MHz derived from fw_pl_clk1==400MHz: write 6'h0A => 10*2.5ns=25ns;
  localparam w_cfg_static_0_reg_bxclk_delay_index_min  =  6;  // USAGE of next  5-bits: bit#6-to-10. Use to set clock DELAY (maximum is half clock PERIOD as set by bits 0-to-5)
  localparam w_cfg_static_0_reg_bxclk_delay_index_max  = 10;  //
  localparam w_cfg_static_0_reg_bxclk_delay_sign_index = 11;  // USAGE of next 1-bit: bit#11. Use it to set clock value (Lor H) in the first bxclk_delay clocks within a bxclk_period
  // 00.00.00.01.02.03.04.05.06.07.08.09.10.01.02.03.04.05.06.07.08.09.10.               fw_pl_clk1_cnt
  // LL.LL.LL.LL.HH.HH.HH.HH.HH.LL.LL.LL.LL.LL.HH.HH.HH.HH.HH.LL.LL.LL.LL.LL.            fw_bxclk_ana_ff
  // LL.LL.LL.LL.LL.LL.HH.HH.HH.HH.HH.LL.LL.LL.LL.LL.HH.HH.HH.HH.HH.LL.LL.LL.LL.LL.      fw_bxclk_ff when bxclk_delay_sign==0 and bxclk_delay==2
  // LL.LL.LL.LL.HH.HH.HH.LL.LL.LL.LL.LL.HH.HH.HH.HH.HH.LL.LL.LL.LL.LL.                  fw_bxclk_ff when bxclk_delay_sign==1 and bxclk_delay==2
  localparam w_cfg_static_0_reg_super_pix_sel_index    = 12;
  //
  logic [5:0] bxclk_period;                                // on clock domain fw_axi_clk
  logic [4:0] bxclk_delay;                                 // on clock domain fw_axi_clk
  logic       bxclk_delay_sign;                            // on clock domain fw_axi_clk
  logic       super_pix_sel;                               // on clock domain fw_axi_clk

  assign bxclk_period     = w_cfg_static_0_reg[w_cfg_static_0_reg_bxclk_period_index_max : w_cfg_static_0_reg_bxclk_period_index_min];
  assign bxclk_delay      = w_cfg_static_0_reg[w_cfg_static_0_reg_bxclk_delay_index_max  : w_cfg_static_0_reg_bxclk_delay_index_min ];
  assign bxclk_delay_sign = w_cfg_static_0_reg[w_cfg_static_0_reg_bxclk_delay_sign_index];
  assign super_pix_sel    = w_cfg_static_0_reg[w_cfg_static_0_reg_super_pix_sel_index];

  // Create helper counter fw_pl_clk1_cnt (used to create signals fw_bxclk_ana_ff and fw_bxclk_ff)
  // TODO The following three processes may be factorized (for code clarity/reuse) into a separate hierarchical module.
  logic [5:0] fw_pl_clk1_cnt;
  always @(posedge fw_pl_clk1) begin : fw_pl_clk1_cnt_proc
    if(op_code_w_reset) begin
      fw_pl_clk1_cnt <= 6'h0;
    end else begin
      if(fw_dev_id_enable) begin
        // this fw_ip2 device is active
        if (fw_pl_clk1_cnt == bxclk_period) begin
          // reached maximum => rollover counter to ONE
          // example to generate 40MHs from 400 MHz => counting 1,2,3,4,5,6,7,8,9,10
          fw_pl_clk1_cnt <= 6'h1;
        end else begin
          fw_pl_clk1_cnt <= fw_pl_clk1_cnt + 1;
        end
      end else begin
        // this fw_ip2 device is NOT active
        fw_pl_clk1_cnt <= 6'h0;
      end
    end
  end

  // Create and Assign output port signal fw_bxclk_ana
  logic fw_bxclk_ana_ff;
  always @(posedge fw_pl_clk1) begin : fw_bxclk_ana_ff_proc
    if(fw_pl_clk1_cnt == 6'h0) begin
      // keep bxclk_ana LOW while in RESET
      fw_bxclk_ana_ff <= 1'b0;
    end else begin
      if(fw_dev_id_enable) begin
        // this fw_ip2 device is active
        if(fw_pl_clk1_cnt <= (bxclk_period>>1))  begin
          // keep bxclk_ana HIGH for first half of bxclk_period
          fw_bxclk_ana_ff <= 1'b1;
        end else begin
          // keep bxclk_ana LOW for second half of bxclk_period
          fw_bxclk_ana_ff <= 1'b0;
        end
      end else begin
        // this fw_ip2 device is NOT active
        fw_bxclk_ana_ff <= 1'b0;
      end
    end
  end
  assign fw_bxclk_ana = fw_bxclk_ana_ff;

  // Create and Assign output port signal fw_bxclk
  logic fw_bxclk_ff;
  always @(posedge fw_pl_clk1) begin : fw_bxclk_ff_proc
    if(fw_pl_clk1_cnt == 6'h0) begin
      // keep bxclk LOW while in RESET
      fw_bxclk_ff <= 1'b0;
    end else begin
      if(fw_dev_id_enable) begin
        // this fw_ip2 device is active
        if(bxclk_delay_sign==1'b0) begin
          // bxclk_delay_sign is ZERO. The RE of bxclk is after RE of bxclk_ana by bxclk_delay ticks.
          // keep bxclk LOW for bxclk_delay; then HIGH for bxclk_period/2; then again LOW for bxclk_period/2-bxclk_delay
          if (fw_pl_clk1_cnt <= bxclk_delay) begin
            fw_bxclk_ff <= 1'b0;
          end else if (fw_pl_clk1_cnt <= bxclk_delay + (bxclk_period>>1)) begin
            fw_bxclk_ff <= 1'b1;
          end else begin
            fw_bxclk_ff <= 1'b0;
          end
        end else begin
          // bxclk_delay_sign is ONE.  The FE of bxclk is after RE of bxclk_ana by bxclk_delay ticks
          // keep bxclk HIGH for bxclk_delay; then LOW for bxclk_period/2; then again HIGH for bxclk_period/2-bxclk_delay
          if (fw_pl_clk1_cnt <= bxclk_delay) begin
            fw_bxclk_ff <= 1'b1;
          end else if (fw_pl_clk1_cnt <= bxclk_delay + (bxclk_period>>1)) begin
            fw_bxclk_ff <= 1'b0;
          end else begin
            fw_bxclk_ff <= 1'b1;
          end
        end
      end else begin
        // this fw_ip2 device is NOT active
        fw_bxclk_ff <= 1'b0;
      end
    end
  end
  assign fw_bxclk = fw_bxclk_ff;

  // Create and Assign output port signal fw_super_pixel_sel
  logic fw_super_pixel_sel_ff;
  always @(posedge fw_pl_clk1) begin : fw_super_pixel_sel_ff_proc
    if(op_code_w_reset) begin
      fw_super_pixel_sel_ff <= 1'b0;
    end else begin
      if(fw_dev_id_enable)begin
        // this fw_ip2 device is active
        fw_super_pixel_sel_ff <= super_pix_sel;
      end else begin
        // this fw_ip2 device is NOT active
        fw_super_pixel_sel_ff <= 1'b0;
      end
    end
  end
  assign fw_super_pixel_sel = fw_super_pixel_sel_ff;



  //
  // Test SCAN-CHAIN-MODULE as a serial-in / serial-out shift-tegister. The test is configured using:
  // 1. byte#3=={fw_dev_id_enable, fw_op_code_w_execute}
  // 2. byte#2-to-byte#0==sw_write24_0 where each bit defined as follows:
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
  logic [5:0] test_delay;                                  // on clock domain fw_axi_clk
  logic [5:0] test_sample;                                 // on clock domain fw_axi_clk
  logic [3:0] test_number;                                 // on clock domain fw_axi_clk
  logic       test_loopback;                               // on clock domain fw_axi_clk
  assign test_delay    = sw_write24_0[w_execute_cfg_test_delay_index_max  : w_execute_cfg_test_delay_index_min ];
  assign test_sample   = sw_write24_0[w_execute_cfg_test_sample_index_max : w_execute_cfg_test_sample_index_min];
  assign test_number   = sw_write24_0[w_execute_cfg_test_number_index_max : w_execute_cfg_test_number_index_min];
  assign test_loopback = sw_write24_0[w_execute_cfg_test_loopback];
  //
  logic test1_enable; logic test1_enable_del; logic test1_enable_re;
  logic test2_enable; logic test2_enable_del; logic test2_enable_re;
  logic test3_enable; logic test3_enable_del; logic test3_enable_re;
  logic test4_enable; logic test4_enable_del; logic test4_enable_re;
  always @(posedge fw_pl_clk1) begin
    if(op_code_w_reset) begin
      test1_enable  <= 1'b0;
      test2_enable  <= 1'b0;
      test3_enable  <= 1'b0;
      test4_enable  <= 1'b0;
    end else begin
      if(op_code_w_execute==1'b1 && test_number==4'h1) begin
        test1_enable <= 1'b1;
      end else begin
        test1_enable <= 1'b0;
      end
      //
      if(op_code_w_execute==1'b1 && test_number==4'h2) begin
        test2_enable <= 1'b1;
      end else begin
        test2_enable <= 1'b0;
      end
      //
      if(op_code_w_execute==1'b1 && test_number==4'h4) begin
        test3_enable <= 1'b1;
      end else begin
        test3_enable <= 1'b0;
      end
      //
      if(op_code_w_execute==1'b1 && test_number==4'h8) begin
        test4_enable <= 1'b1;
      end else begin
        test4_enable <= 1'b0;
      end
    end
  end
  always @(posedge fw_pl_clk1) begin
    test1_enable_del <= test1_enable;
    test2_enable_del <= test2_enable;
    test3_enable_del <= test3_enable;
    test4_enable_del <= test4_enable;
  end
  assign test1_enable_re = test1_enable & ~test1_enable_del;
  assign test2_enable_re = test2_enable & ~test2_enable_del;
  assign test3_enable_re = test3_enable & ~test3_enable_del;
  assign test4_enable_re = test4_enable & ~test4_enable_del;
  //
  // Create signal error_w_execute_cfg; used as a bit in fw_read_status32 to flag wrong user settings
  always @(posedge fw_axi_clk) begin
    if(test1_enable) begin
      if(test_delay==6'h0 |test_delay==6'h1 | test_delay==6'h2 | (test_delay>bxclk_period)) begin
        // inferred from state machine sm_test1 logic
        error_w_execute_cfg <= 1'b1;
      end else begin
        error_w_execute_cfg <= 1'b0;
      end
    end else if(test2_enable) begin
      // use data specific for test case test2
      error_w_execute_cfg <= 1'b0;     // TODO
    end else if(test3_enable) begin
      // use data specific for test case test3
      error_w_execute_cfg <= 1'b0;     // TODO
    end else if(test4_enable) begin
      // use data specific for test case test4
      error_w_execute_cfg <= 1'b0;     // TODO
    end  else begin
      // keep old value;
      error_w_execute_cfg <= error_w_execute_cfg;
    end
  end
  //
  // Define enumerated type scan_chain_mode: LOW==shift-register, HIGH==parallel-load-asic-internal-comparators; default=HIGH
  typedef enum logic {
    SHIFT_REG = 1'b0,
    LOAD_COMP = 1'b1
  } scan_chain_mode;
  // State Machine Output signals to DUT
  logic           sm_test1_o_config_clk;
  logic           sm_test1_o_reset_not;
  logic           sm_test1_o_config_in;
  logic           sm_test1_o_config_load;
  logic           sm_test1_o_vin_test_trig_out;
  logic           sm_test1_o_scan_in;
  scan_chain_mode sm_test1_o_scan_load;
  logic           sm_test2_o_config_clk;         assign sm_test2_o_config_clk        = 1'b0;       // TODO to be driven by sm_test2
  logic           sm_test2_o_reset_not;          assign sm_test2_o_reset_not         = 1'b0;       // TODO to be driven by sm_test2
  logic           sm_test2_o_config_in;          assign sm_test2_o_config_in         = 1'b0;       // TODO to be driven by sm_test2
  logic           sm_test2_o_config_load;        assign sm_test2_o_config_load       = 1'b0;       // TODO to be driven by sm_test2
  logic           sm_test2_o_vin_test_trig_out;  assign sm_test2_o_vin_test_trig_out = 1'b0;       // TODO to be driven by sm_test2
  logic           sm_test2_o_scan_in;            assign sm_test2_o_scan_in           = 1'b0;       // TODO to be driven by sm_test2
  scan_chain_mode sm_test2_o_scan_load;          assign sm_test2_o_scan_load         = LOAD_COMP;  // TODO to be driven by sm_test2
  logic           sm_test3_o_config_clk;         assign sm_test3_o_config_clk        = 1'b0;       // TODO to be driven by sm_test3
  logic           sm_test3_o_reset_not;          assign sm_test3_o_reset_not         = 1'b0;       // TODO to be driven by sm_test3
  logic           sm_test3_o_config_in;          assign sm_test3_o_config_in         = 1'b0;       // TODO to be driven by sm_test3
  logic           sm_test3_o_config_load;        assign sm_test3_o_config_load       = 1'b0;       // TODO to be driven by sm_test3
  logic           sm_test3_o_vin_test_trig_out;  assign sm_test3_o_vin_test_trig_out = 1'b0;       // TODO to be driven by sm_test3
  logic           sm_test3_o_scan_in;            assign sm_test3_o_scan_in           = 1'b0;       // TODO to be driven by sm_test3
  scan_chain_mode sm_test3_o_scan_load;          assign sm_test3_o_scan_load         = LOAD_COMP;  // TODO to be driven by sm_test3
  logic           sm_test4_o_config_clk;         assign sm_test4_o_config_clk        = 1'b0;       // TODO to be driven by sm_test4
  logic           sm_test4_o_reset_not;          assign sm_test4_o_reset_not         = 1'b0;       // TODO to be driven by sm_test4
  logic           sm_test4_o_config_in;          assign sm_test4_o_config_in         = 1'b0;       // TODO to be driven by sm_test4
  logic           sm_test4_o_config_load;        assign sm_test4_o_config_load       = 1'b0;       // TODO to be driven by sm_test4
  logic           sm_test4_o_vin_test_trig_out;  assign sm_test4_o_vin_test_trig_out = 1'b0;       // TODO to be driven by sm_test4
  logic           sm_test4_o_scan_in;            assign sm_test4_o_scan_in           = 1'b0;       // TODO to be driven by sm_test4
  scan_chain_mode sm_test4_o_scan_load;          assign sm_test4_o_scan_load         = LOAD_COMP;  // TODO to be driven by sm_test4
  // State Machine Input signals from DUT
  logic           sm_testx_i_config_out;
  logic           sm_testx_i_scan_out;
  logic           sm_testx_i_dnn_output_0;
  logic           sm_testx_i_dnn_output_1;
  logic           sm_testx_i_dn_event_toggle;
  // State Machine Control signals from logic/configuration
  localparam                                     sm_testx_i_scanchain_reg_width = 768;
  logic [sm_testx_i_scanchain_reg_width-1 : 0]   sm_testx_i_scanchain_reg;               // 768-bits shift register; bit#0 drives DUT scan_in; used by all tests 1,2,3
  logic [9 : 0]                                  sm_testx_i_scanchain_reg_shift_cnt;     // counting from 0 to sm_testx_i_scanchain_reg_width = 768
  logic                                          sm_test1_o_scanchain_reg_load;          // LOAD  control for shift register; independent control by each test 1,2,3
  logic                                          sm_test1_o_scanchain_reg_shift_right;   // SHIFT control for shift register; independent control by each test 1,2,3
  logic                                          sm_test2_o_scanchain_reg_load;          assign sm_test2_o_scanchain_reg_load        = 1'b0;    // TODO to be driven by sm_test2
  logic                                          sm_test2_o_scanchain_reg_shift_right;   assign sm_test2_o_scanchain_reg_shift_right = 1'b0;    // TODO to be driven by sm_test2
  logic                                          sm_test3_o_scanchain_reg_load;          assign sm_test3_o_scanchain_reg_load        = 1'b0;    // TODO to be driven by sm_test3
  logic                                          sm_test3_o_scanchain_reg_shift_right;   assign sm_test3_o_scanchain_reg_shift_right = 1'b0;    // TODO to be driven by sm_test3
  logic                                          sm_test4_o_scanchain_reg_load;          assign sm_test4_o_scanchain_reg_load        = 1'b0;    // TODO to be driven by sm_test4
  logic                                          sm_test4_o_scanchain_reg_shift_right;   assign sm_test4_o_scanchain_reg_shift_right = 1'b0;    // TODO to be driven by sm_test4
  always @(posedge fw_pl_clk1) begin : sm_testx_i_scanchain_reg_proc
    if(sm_test1_o_scanchain_reg_load | sm_test2_o_scanchain_reg_load | sm_test3_o_scanchain_reg_load | sm_test4_o_scanchain_reg_load) begin
      sm_testx_i_scanchain_reg           <= w_cfg_array_0_reg[sm_testx_i_scanchain_reg_width/16-1 : 0];
      sm_testx_i_scanchain_reg_shift_cnt <= 10'h0;
    end else if(sm_test1_o_scanchain_reg_shift_right | sm_test2_o_scanchain_reg_shift_right | sm_test3_o_scanchain_reg_shift_right | sm_test4_o_scanchain_reg_shift_right) begin
      sm_testx_i_scanchain_reg           <= {1'b0, sm_testx_i_scanchain_reg[sm_testx_i_scanchain_reg_width-1 : 1]};
      sm_testx_i_scanchain_reg_shift_cnt <= sm_testx_i_scanchain_reg_shift_cnt + 1'b1;
    end
  end
  // ------------------------------------------------------------------------------------------------------------------
  // State Machine for "test1". Test SCAN-CHAIN-MODULE as a serial-in / serial-out shift-tegister.
  typedef enum logic [2:0] {
    IDLE           = 3'b000,
    DELAY_TEST     = 3'b001,
    RESET_NOT      = 3'b010,
    SHIFT_IN_0     = 3'b011,
    SHIFT_IN       = 3'b100,
    DONE           = 3'b101
  } state_t_sm_test1;
  state_t_sm_test1 sm_test1;
  //
  assign sm_test1_o_config_clk        = 1'b0;       // signal not used-in / diven-by sm_test1_proc
  assign sm_test1_o_config_in         = 1'b0;       // signal not used-in / diven-by sm_test1_proc
  assign sm_test1_o_config_load       = 1'b0;       // signal not used-in / diven-by sm_test1_proc
  assign sm_test1_o_vin_test_trig_out = 1'b0;       // signal not used-in / diven-by sm_test1_proc
  always @(posedge fw_pl_clk1) begin : sm_test1_proc
    if(~fw_dev_id_enable | op_code_w_reset) begin
      sm_test1 <= IDLE;
    end else begin
      case(sm_test1)
        IDLE : begin
          // next state machine state logic
          if(test1_enable_re) begin
            sm_test1 <= DELAY_TEST;
          end else begin
            sm_test1 <= IDLE;
          end
          // output state machine signal assignment
          sm_test1_o_reset_not                   <= 1'b1;                      // active LOW signal; default is inactive
          sm_test1_o_scan_in                     <= 1'b0;                      // arbitrary chosen default LOW
          sm_test1_o_scan_load                   <= LOAD_COMP;                 // scan-chain-mode: LOW==shift-register, HIGH==parallel-load-asic-internal-comparators; default=HIGH
          sm_test1_o_scanchain_reg_load          <= 1'b0;                      //
          sm_test1_o_scanchain_reg_shift_right   <= 1'b0;                      // LOW==do-not-shift, HIGH==do-shift-right
          sm_test1_o_status_done                 <= sm_test1_o_status_done;    // state machine STATUS flag
        end
        DELAY_TEST : begin
          // next state machine state logic
          if(test_delay==fw_pl_clk1_cnt) begin
            sm_test1 <= RESET_NOT;
          end else begin
            sm_test1 <= DELAY_TEST;
          end
          // output state machine signal assignment
          if(test_delay==fw_pl_clk1_cnt) begin
            sm_test1_o_reset_not                 <= 1'b0;
            sm_test1_o_scan_load                 <= SHIFT_REG;
          end else begin
            sm_test1_o_reset_not                 <= 1'b1;
            sm_test1_o_scan_load                 <= LOAD_COMP;
          end
          sm_test1_o_scan_in                     <= 1'b0;
          sm_test1_o_scanchain_reg_load          <= 1'b1;
          sm_test1_o_scanchain_reg_shift_right   <= 1'b0;
          sm_test1_o_status_done                 <= 1'b0;
        end
        RESET_NOT : begin
          // next state machine state logic
          if(test_delay==fw_pl_clk1_cnt) begin
            sm_test1 <= SHIFT_IN_0;
          end else begin
            sm_test1 <= RESET_NOT;
          end
          // output state machine signal assignment
          if(test_delay==fw_pl_clk1_cnt) begin
            sm_test1_o_reset_not                 <= 1'b1;
            sm_test1_o_scan_in                   <= sm_testx_i_scanchain_reg[0];
          end else begin
            sm_test1_o_reset_not                 <= 1'b0;
            sm_test1_o_scan_in                   <= 1'b0;
          end
          sm_test1_o_scan_load                   <= SHIFT_REG;
          sm_test1_o_scanchain_reg_load          <= 1'b0;
          sm_test1_o_scanchain_reg_shift_right   <= 1'b0;
          sm_test1_o_status_done                 <= 1'b0;
        end
        SHIFT_IN_0 : begin
          // next state machine state logic
          if(test_delay==fw_pl_clk1_cnt) begin
            sm_test1 <= SHIFT_IN;
          end else begin
            sm_test1 <= SHIFT_IN_0;
          end
          // output state machine signal assignment
          if(test_delay-2==fw_pl_clk1_cnt) begin
            // latency sm_test1_o_scanchain_reg_shift_right to sm_testx_i_scanchain_reg is TWO fw_pl_clk1 clocks:
            // * one clk latency due to this process for asserting signal sm_test1_o_scanchain_reg_shift_right
            // * one clk latency due to process sm_testx_i_scanchain_reg_proc to execute the shift-right
            sm_test1_o_scanchain_reg_shift_right <= 1'b1;
          end else begin
            sm_test1_o_scanchain_reg_shift_right <= 1'b0;
          end
          sm_test1_o_reset_not                   <= 1'b1;
          sm_test1_o_scan_in                     <= sm_testx_i_scanchain_reg[0];
          sm_test1_o_scan_load                   <= SHIFT_REG;
          sm_test1_o_scanchain_reg_load          <= 1'b0;
          sm_test1_o_status_done                 <= 1'b0;
        end
        SHIFT_IN : begin
          // next state machine state logic
          if(sm_testx_i_scanchain_reg_shift_cnt==sm_testx_i_scanchain_reg_width) begin
            // done shifting all 768 bits;
            sm_test1 <= DONE;
            sm_test1_o_scan_load                 <= LOAD_COMP;
            sm_test1_o_status_done               <= 1'b1;
          end else begin
            // continue shifting
            sm_test1 <= SHIFT_IN;
            sm_test1_o_scan_load                 <= SHIFT_REG;
            sm_test1_o_status_done               <= 1'b0;
          end
          // output state machine signal assignment
          if(test_delay-2==fw_pl_clk1_cnt) begin
            // latency sm_test1_o_scanchain_reg_shift_right to sm_testx_i_scanchain_reg is TWO fw_pl_clk1 clocks:
            // * one clk latency due to this process for asserting signal sm_test1_o_scanchain_reg_shift_right
            // * one clk latency due to process sm_testx_i_scanchain_reg_proc to execute the shift-right
            sm_test1_o_scanchain_reg_shift_right <= 1'b1;
          end else begin
            sm_test1_o_scanchain_reg_shift_right <= 1'b0;
          end
          sm_test1_o_reset_not                   <= 1'b1;
          sm_test1_o_scan_in                     <= sm_testx_i_scanchain_reg[0];
          sm_test1_o_scanchain_reg_load          <= 1'b0;
        end
        DONE : begin
          // next state machine state logic
          sm_test1 <= IDLE;
          // output state machine signal assignment
          sm_test1_o_reset_not                   <= 1'b1;
          sm_test1_o_scan_in                     <= 1'b0;
          sm_test1_o_scan_load                   <= LOAD_COMP;
          sm_test1_o_scanchain_reg_load          <= 1'b0;
          sm_test1_o_scanchain_reg_shift_right   <= 1'b0;
          sm_test1_o_status_done                 <= 1'b1;
        end
        default : begin
          sm_test1 <= IDLE;
        end
      endcase
    end
  end
  // State Machine for "test1". Logic related with readout data from DUT.
  always @(posedge fw_pl_clk1) begin : sm_testx_o_scanchain_reg_proc
    if(test1_enable) begin
      // use data specific for test case test1
      if(sm_test1==SHIFT_IN_0 | sm_test1==SHIFT_IN) begin
        if(test_sample==fw_pl_clk1_cnt) begin
          if(test_loopback) begin
            // shift-in new bit using loop-back data from sm_test1_o_scan_in
            sm_testx_o_scanchain_reg <= {sm_test1_o_scan_in, sm_testx_o_scanchain_reg[sm_testx_o_scanchain_reg_width-1 : 1]};
          end else begin
            // shift-in new bit using readout-data from DUT
            sm_testx_o_scanchain_reg <= {fw_scan_out,        sm_testx_o_scanchain_reg[sm_testx_o_scanchain_reg_width-1 : 1]};
          end
        end else begin
          // keep old value
          sm_testx_o_scanchain_reg   <= sm_testx_o_scanchain_reg;
        end
      end else begin
        // keep old value
        sm_testx_o_scanchain_reg     <= sm_testx_o_scanchain_reg;
      end
    end else if(test2_enable) begin
      // use data specific for test case test2
      sm_testx_o_scanchain_reg <= {sm_testx_o_scanchain_reg_width*{1'b0}};     // TODO
    end else if(test3_enable) begin
      // use data specific for test case test3
      sm_testx_o_scanchain_reg <= {sm_testx_o_scanchain_reg_width*{1'b0}};     // TODO
    end else if(test4_enable) begin
      // use data specific for test case test4
      sm_testx_o_scanchain_reg <= {sm_testx_o_scanchain_reg_width*{1'b0}};     // TODO
    end else begin
      // keep old value; need to do this way to preserve sm_testx_o_scanchain_reg after any of test1,2,3,4 are done
      // and the operation code is no more "op_code_w_execute" but instead "op_code_r_data_array_0" for the purpose of AXI readout
      sm_testx_o_scanchain_reg <= sm_testx_o_scanchain_reg;
    end
  end
  // ------------------------------------------------------------------------------------------------------------------

  // assign module output signals from State Machine sm_test1, sm_test2, sm_test3
  always_comb begin
    if(test1_enable) begin
      fw_config_clk          = sm_test1_o_config_clk;           // signal not used-in / diven-by sm_test1_proc
      fw_reset_not           = sm_test1_o_reset_not;
      fw_config_in           = sm_test1_o_config_in;            // signal not used-in / diven-by sm_test1_proc
      fw_config_load         = sm_test1_o_config_load;          // signal not used-in / diven-by sm_test1_proc
      fw_vin_test_trig_out   = sm_test1_o_vin_test_trig_out;    // signal not used-in / diven-by sm_test1_proc
      fw_scan_in             = sm_test1_o_scan_in;
      fw_scan_load           = sm_test1_o_scan_load;
    end else if(test2_enable) begin
      fw_config_clk          = sm_test2_o_config_clk;
      fw_reset_not           = sm_test2_o_reset_not;
      fw_config_in           = sm_test2_o_config_in;
      fw_config_load         = sm_test2_o_config_load;
      fw_vin_test_trig_out   = sm_test2_o_vin_test_trig_out;
      fw_scan_in             = sm_test2_o_scan_in;
      fw_scan_load           = sm_test2_o_scan_load;
    end else if(test3_enable) begin
      fw_config_clk          = sm_test3_o_config_clk;
      fw_reset_not           = sm_test3_o_reset_not;
      fw_config_in           = sm_test3_o_config_in;
      fw_config_load         = sm_test3_o_config_load;
      fw_vin_test_trig_out   = sm_test3_o_vin_test_trig_out;
      fw_scan_in             = sm_test3_o_scan_in;
      fw_scan_load           = sm_test3_o_scan_load;
    end else if(test4_enable) begin
      fw_config_clk          = sm_test4_o_config_clk;
      fw_reset_not           = sm_test4_o_reset_not;
      fw_config_in           = sm_test4_o_config_in;
      fw_config_load         = sm_test4_o_config_load;
      fw_vin_test_trig_out   = sm_test4_o_vin_test_trig_out;
      fw_scan_in             = sm_test4_o_scan_in;
      fw_scan_load           = sm_test4_o_scan_load;
    end else begin
      fw_config_clk          = 1'b0;
      fw_reset_not           = 1'b0;
      fw_config_in           = 1'b0;
      fw_config_load         = 1'b0;
      fw_vin_test_trig_out   = 1'b0;
      fw_scan_in             = 1'b0;
      fw_scan_load           = 1'b0;
    end
  end


endmodule

`endif
