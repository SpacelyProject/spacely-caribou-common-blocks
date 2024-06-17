// ------------------------------------------------------------------------------------
//              : Cristian Gingu       gingu@fnal.gov
// Created      : 2024-06-17
// ------------------------------------------------------------------------------------
// Copyright (c) 2024 by FNAL This model is the confidential and
// proprietary property of FNAL and the possession or use of this
// file requires a written license from FNAL.
// ------------------------------------------------------------------------------------
// Revisions  :
// Date        Author                 Description
// 2024-06-17  Cristian  Gingu        Created template
// ------------------------------------------------------------------------------------
`ifndef __bxclks_generators__
`define __bxclks_generators__

`timescale 1 ns/ 1 ps

module bxclks_generators (
    input  logic       clk,                                // FM clock 400MHz       mapped to pl_clk1
    input  logic       reset,
    input  logic       enable,                             // up to 15 FW can be connected
    // Input signals: controls
    input  logic [5:0] bxclk_period,
    input  logic [4:0] bxclk_delay,
    input  logic       bxclk_delay_sign,
    // output ports
    output logic [5:0] clk_counter,
    output logic       bxclk_ana,
    output logic       bxclk
  );

  // Create helper counter clk_counter_ff (used to create signals bxclk_ana_ff and bxclk_ff)
  // This is independent of what test         is enabled: see below signals test1_enable, test2_enable, test3_enable, test4_enable
  // This is independent of what state machine is active: see below signals sm_test1,     sm_test2,     sm_test3,     sm_test4
  logic [5:0] clk_counter_ff;
  always @(posedge clk) begin : clk_counter_ff_proc
    if(reset) begin
      clk_counter_ff <= 6'h0;
    end else begin
      if(enable) begin
        // this fw_ip2 device is active
        if (clk_counter_ff == bxclk_period) begin
          // reached maximum => rollover counter to ONE
          // example to generate 40MHs from 400 MHz => counting 1,2,3,4,5,6,7,8,9,10
          clk_counter_ff <= 6'h1;
        end else begin
          clk_counter_ff <= clk_counter_ff + 1;
        end
      end else begin
        // this fw_ip2 device is NOT active
        clk_counter_ff <= 6'h0;
      end
    end
  end
  assign clk_counter = clk_counter_ff;

  // Create and Assign output port signal bxclk_ana
  // This is independent of what test         is enabled: see below signals test1_enable, test2_enable, test3_enable, test4_enable
  // This is independent of what state machine is active: see below signals sm_test1,     sm_test2,     sm_test3,     sm_test4
  logic bxclk_ana_ff;
  always @(posedge clk) begin : bxclk_ana_ff_proc
    if(clk_counter_ff == 6'h0) begin
      // keep bxclk_ana LOW while in RESET
      bxclk_ana_ff <= 1'b0;
    end else begin
      if(enable) begin
        // this fw_ip2 device is active
        if(clk_counter_ff <= (bxclk_period>>1))  begin
          // keep bxclk_ana HIGH for first half of bxclk_period
          bxclk_ana_ff <= 1'b1;
        end else begin
          // keep bxclk_ana LOW for second half of bxclk_period
          bxclk_ana_ff <= 1'b0;
        end
      end else begin
        // this fw_ip2 device is NOT active
        bxclk_ana_ff <= 1'b0;
      end
    end
  end
  assign bxclk_ana = bxclk_ana_ff;

  // Create and Assign output port signal bxclk
  // This is independent of what test         is enabled: see below signals test1_enable, test2_enable, test3_enable, test4_enable
  // This is independent of what state machine is active: see below signals sm_test1,     sm_test2,     sm_test3,     sm_test4
  logic bxclk_ff;
  always @(posedge clk) begin : bxclk_ff_proc
    if(clk_counter_ff == 6'h0) begin
      // keep bxclk LOW while in RESET
      bxclk_ff <= 1'b0;
    end else begin
      if(enable) begin
        // this fw_ip2 device is active
        if(bxclk_delay_sign==1'b0) begin
          // bxclk_delay_sign is ZERO. The RE of bxclk is after RE of bxclk_ana by bxclk_delay ticks.
          // keep bxclk LOW for bxclk_delay; then HIGH for bxclk_period/2; then again LOW for bxclk_period/2-bxclk_delay
          if (clk_counter_ff <= bxclk_delay) begin
            bxclk_ff <= 1'b0;
          end else if (clk_counter_ff <= bxclk_delay + (bxclk_period>>1)) begin
            bxclk_ff <= 1'b1;
          end else begin
            bxclk_ff <= 1'b0;
          end
        end else begin
          // bxclk_delay_sign is ONE.  The FE of bxclk is after RE of bxclk_ana by bxclk_delay ticks
          // keep bxclk HIGH for bxclk_delay; then LOW for bxclk_period/2; then again HIGH for bxclk_period/2-bxclk_delay
          if (clk_counter_ff <= bxclk_delay) begin
            bxclk_ff <= 1'b1;
          end else if (clk_counter_ff <= bxclk_delay + (bxclk_period>>1)) begin
            bxclk_ff <= 1'b0;
          end else begin
            bxclk_ff <= 1'b1;
          end
        end
      end else begin
        // this fw_ip2 device is NOT active
        bxclk_ff <= 1'b0;
      end
    end
  end
  assign bxclk = bxclk_ff;

endmodule

`endif
