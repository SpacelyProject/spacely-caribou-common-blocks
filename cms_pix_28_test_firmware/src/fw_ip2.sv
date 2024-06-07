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

  // TODO Add real logic for output signals below;
  // TODO If the output signal is not used by this module, leave assignment to zero.
//  assign fw_read_data32       = 32'h0;
//  assign fw_read_status32     = 32'h0;
//  assign fw_super_pixel_sel   = 1'b0;
  assign fw_config_clk        = 1'b0;
  assign fw_reset_not         = 1'b0;
  assign fw_config_in         = 1'b0;
  assign fw_config_load       = 1'b0;
//  assign fw_bxclk_ana         = 1'b0;
//  assign fw_bxclk             = 1'b0;
  assign fw_vin_test_trig_out = 1'b0;
  assign fw_scan_in           = 1'b0;
  assign fw_scan_load         = 1'b0;

  // Instantiate module com_op_code_decoder.sv
  logic op_code_w_reset;
  logic op_code_w_cfg_static_0;
  logic op_code_r_cfg_static_0;
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
  logic [255:0][15:0] w_cfg_array_0_reg;
  logic [255:0][15:0] w_cfg_array_1_reg;
  com_config_write_regs com_config_write_regs_inst (
    .fw_clk_100              (fw_axi_clk),                 // FW clock 100MHz       mapped to S_AXI_ACLK
    .fw_rst_n                (fw_rst_n),                   // FW reset, active low  mapped to S_AXI_ARESETN
    //
    .op_code_w_reset         (op_code_w_reset),
    .op_code_w_cfg_static_0  (op_code_w_cfg_static_0),
    .op_code_w_cfg_array_0   (op_code_w_cfg_array_0),
    .op_code_w_cfg_array_1   (op_code_w_cfg_array_1),
    .sw_write24_0            (sw_write24_0),               // feed-through bytes 2, 1, 0 of sw_write32_0 from SW to FW
    //
    .w_cfg_static_0_reg      (w_cfg_static_0_reg),         // on clock domain fw_axi_clk
    .w_cfg_array_0_reg       (w_cfg_array_0_reg),          // on clock domain fw_axi_clk
    .w_cfg_array_1_reg       (w_cfg_array_1_reg)           // on clock domain fw_axi_clk
  );

  // Combinatorial logic for SW readout data fw_read_data32
  logic [31:0] fw_read_data32_comb;                        // 32-bit read_data   from FW to SW
  always_comb begin : fw_read_data32_comb_proc
    if(op_code_r_cfg_static_0) begin
      // AXI SW will readout com_config_write_regs.sv output signal w_cfg_static_0_reg, which is 24-bits. Must pad with zero up to 32-bits.
      fw_read_data32_comb = {8'h0, w_cfg_static_0_reg};
    end else if(op_code_r_cfg_array_0) begin
      // AXI SW will readout com_config_write_regs.sv output signal w_cfg_array_0_reg, which is 16-bits for the requested address sw_write24_0[23:16].
      // For efficiency, read also w_cfg_array_0_reg at next address. CAUTION: SW must take care not to OVERFLOW addresses
      fw_read_data32_comb = {w_cfg_array_0_reg[sw_write24_0[23:16]+1], w_cfg_array_0_reg[sw_write24_0[23:16]]};
    end else if(op_code_r_cfg_array_1) begin
      // AXI SW will readout com_config_write_regs.sv output signal w_cfg_array_1_reg, which is 16-bits for the requested address sw_write24_0[23:16].
      // For efficiency, read also w_cfg_array_1_reg at next address. CAUTION: SW must take care not to OVERFLOW addresses
      fw_read_data32_comb = {w_cfg_array_1_reg[sw_write24_0[23:16]+1], w_cfg_array_1_reg[sw_write24_0[23:16]]};
    end else if(op_code_r_data_array_0) begin
      // TODO update code here with readout data coming from DUT
      fw_read_data32_comb = 32'b0;                         // incoming data on clock domain fw_pl_clk1
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
  always @(posedge fw_axi_clk) begin : fw_read_status32_reg_proc
    if(op_code_w_status_clear) begin
      fw_read_status32_reg <= 32'b0;                       // incoming data on clock domain fw_pl_clk1
    end else begin
      if(op_code_w_reset)        fw_read_status32_reg[ 0] <= 1'b1;
      if(op_code_w_cfg_static_0) fw_read_status32_reg[ 1] <= 1'b1;
      if(op_code_r_cfg_static_0) fw_read_status32_reg[ 2] <= 1'b1;
      if(op_code_w_cfg_array_0)  fw_read_status32_reg[ 3] <= 1'b1;
      if(op_code_r_cfg_array_0)  fw_read_status32_reg[ 4] <= 1'b1;
      if(op_code_w_cfg_array_1)  fw_read_status32_reg[ 5] <= 1'b1;
      if(op_code_r_cfg_array_1)  fw_read_status32_reg[ 6] <= 1'b1;
      if(op_code_r_data_array_0) fw_read_status32_reg[ 7] <= 1'b1;
      if(op_code_r_data_array_1) fw_read_status32_reg[ 8] <= 1'b1;
      if(op_code_w_execute)      fw_read_status32_reg[ 9] <= 1'b1;
      fw_read_status32_reg[31:10] <= 22'b0;
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

endmodule

`endif
