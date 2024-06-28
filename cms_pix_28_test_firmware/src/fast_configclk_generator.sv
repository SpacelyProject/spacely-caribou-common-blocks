// ------------------------------------------------------------------------------------
//              : Neha Kharwadkar       nehak@fnal.gov
// Created      : 2024-06-19
// ------------------------------------------------------------------------------------
// Copyright (c) 2024 by FNAL This model is the confidential and
// proprietary property of FNAL and the possession or use of this
// file requires a written license from FNAL.
// ------------------------------------------------------------------------------------
// Revisions  :
// Date        Author                 Description
// 2024-06-19  Neha Kharwadkar        Created template
// ------------------------------------------------------------------------------------
`ifndef __fast_configclk_generator__
`define __fast_configclk_generator__

`timescale 1 ns/ 1 ps

module fast_configclk_generator (
    input  logic        clk,                                // FW clock 100MHz       mapped to S_AXI_ACLK
    input  logic        reset,
    input  logic        enable,                             // up to 15 FW can be connected
    // Input signals: controls
    input  logic [6:0]  fast_configclk_period,
    // output ports
    output logic [6:0]  fast_clk_counter,
    output logic        fast_configclk
  );

  // Create helper counter clk_counter_ff (used to create signals fast_configclk_ff and fast_configclk_ff)
  // This is independent of what test         is enabled: see below signals test1_enable, test2_enable, test3_enable, test4_enable
  // This is independent of what state machine is active: see below signals sm_test1,     sm_test2,     sm_test3,     sm_test4
  logic [6:0] clk_counter_ff;
  always @(posedge clk) begin : clk_counter_ff_proc
    if(reset) begin
      clk_counter_ff <= 7'h0;
    end else begin
      if(enable) begin
        // this fw_ip1 device is active
        if (clk_counter_ff == fast_configclk_period) begin
          // reached maximum => rollover counter to ONE
          clk_counter_ff <= 7'h1;
        end else begin
          clk_counter_ff <= clk_counter_ff + 1;
        end
      end else begin
        // this fw_ip1 device is NOT active
        clk_counter_ff <= 7'h0;
      end
    end
  end
  assign clk_counter = clk_counter_ff;

  // Create and Assign output port signal fast_configclk
  // This is independent of what test         is enabled: see below signals test1_enable, test2_enable, test3_enable, test4_enable
  // This is independent of what state machine is active: see below signals sm_test1,     sm_test2,     sm_test3,     sm_test4
  logic fast_configclk_ff;
  always @(posedge clk) begin : fast_configclk_ff_proc
    if(clk_counter_ff == 7'h0) begin
      // keep fast_configclk_ana LOW while in RESET
      fast_configclk_ff <= 1'b0;
    end else begin
      if(enable) begin
        // this fw_ip1 device is active
        if(clk_counter_ff <= (fast_configclk_period>>1))  begin
          // keep fast_configclk_ana HIGH for first half of fast_configclk_period
          fast_configclk_ff <= 1'b1;
        end else begin
          // keep fast_configclk_ana LOW for second half of fast_configclk_period
          fast_configclk_ff <= 1'b0;
        end
      end else begin
        // this fw_ip1 device is NOT active
        fast_configclk_ff <= 1'b0;
      end
    end
  end
  assign fast_configclk = fast_configclk_ff;
endmodule

`endif

