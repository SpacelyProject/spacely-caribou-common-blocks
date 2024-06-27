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
// 2024-06-19  Neha Kharwadkar        Created
// ------------------------------------------------------------------------------------
`ifndef __ip1_test1__
`define __ip1_test1__

`timescale 1 ns/ 1 ps

module ip1_test1 (
    input  logic        clk,                                // FM clock 100MHz       mapped to S_AXI_ACLK
    input  logic        reset,
    input  logic        enable,                             // up to 15 FW can be connected
    // Control signals:
    input  logic [6:0] clk_counter,
    input  logic [5:0]  test_delay,
    input  logic        test1_enable_re,
    input  logic        sm_testx_i_shift_reg_reg_bit0,
    input  logic [12:0] sm_testx_i_shift_reg_reg_shift_cnt,
    input  logic [12:0] sm_testx_i_shift_reg_reg_shift_cnt_max,
    output logic        sm_test1_o_shift_reg_load,
    output logic        sm_test1_o_shift_reg,
    output logic        sm_test1_o_status_done,
    // output ports
    output logic [2:0]  sm_test1_state,
    output logic        sm_test1_o_config_clk,
    output logic        sm_test1_o_reset_not,
    output logic        sm_test1_o_config_in,
    output logic        sm_test1_o_config_load,
    output logic        sm_test1_o_vin_test_trig_out,
    output logic        sm_test1_o_config_in,
    output logic        sm_test1_o_config_load
  );
  // ------------------------------------------------------------------------------------------------------------------
  // State Machine for "test1". Test SCAN-CHAIN-MODULE as a serial-in / serial-out shift-tegister.
  typedef enum logic [2:0] {
    IDLE_T1           = 3'b000,
    DELAY_TEST_T1     = 3'b001,
    RESET_NOT_T1      = 3'b010,
    SHIFT_IN_0_T1     = 3'b011,
    SHIFT_IN_T1       = 3'b100,
    DONE_T1           = 3'b101
  } state_t_sm_test1;
  state_t_sm_test1 sm_test1;
  assign sm_test1_state = sm_test1;
  //
  // Define enumerated type shift_reg_mode: LOW==shift-register, HIGH==parallel-load-asic-internal-comparators; default=HIGH
  typedef enum logic {
    SHIFT_REG = 1'b0,
    LOAD_CONFIG = 1'b1
  } shift_reg_mode;
  //
  assign sm_test1_o_scan_in           = 1'b0;       // signal not used-in / driven-by sm_test1_proc
  assign sm_test1_o_scan_load         = 1'b0;       // signal not used-in / driven-by sm_test1_proc
  assign sm_test1_o_vin_test_trig_out = 1'b0;       // signal not used-in / diven-by sm_test1_proc
  always @(posedge clk) begin : sm_test1_proc
    if(~enable | reset) begin
      sm_test1 <= IDLE_T1;
    end else begin
      case(sm_test1)
        IDLE_T1 : begin
          // next state machine state logic
          if(test1_enable_re) begin
            sm_test1 <= DELAY_TEST_T1;
          end else begin
            sm_test1 <= IDLE_T1;
          end
          // output state machine signal assignment
          sm_test1_o_reset_not                   <= 1'b1;                      // active LOW signal; default is inactive
          sm_test1_o_config_in                   <= 1'b0;                      // arbitrary chosen default LOW
          sm_test1_o_config_load                 <= LOAD_CONFIG;               // scan-chain-mode: LOW==shift-register, HIGH==parallel-load-asic-internal-comparators; default=HIGH
          sm_test1_o_shift_reg_load          <= 1'b0;                      //
          sm_test1_o_shift_reg         <= 1'b0;                      // LOW==do-not-shift, HIGH==do-shift-right
          sm_test1_o_status_done                 <= sm_test1_o_status_done;    // state machine STATUS flag
        end
        DELAY_TEST_T1 : begin
          // next state machine state logic
          if(test_delay==clk_counter) begin
            sm_test1 <= RESET_NOT_T1;
          end else begin
            sm_test1 <= DELAY_TEST_T1;
          end
          // output state machine signal assignment
          if(test_delay==clk_counter) begin
            sm_test1_o_reset_not                 <= 1'b0;
            sm_test1_o_config_load               <= SHIFT_REG;
          end else begin
            sm_test1_o_reset_not                 <= 1'b1;
            sm_test1_o_config_load               <= LOAD_CONFIG;
          end
          sm_test1_o_config_in                   <= 1'b0;
          sm_test1_o_shift_reg_load          <= 1'b1;
          sm_test1_o_shift_reg         <= 1'b0;
          sm_test1_o_status_done                 <= 1'b0;
        end
        RESET_NOT_T1 : begin
          // next state machine state logic
          if(test_delay==clk_counter) begin
            sm_test1 <= SHIFT_IN_0_T1;
          end else begin
            sm_test1 <= RESET_NOT_T1;
          end
          // output state machine signal assignment
          if(test_delay==clk_counter) begin
            sm_test1_o_reset_not                 <= 1'b1;
            sm_test1_o_config_in                 <= sm_testx_i_shift_reg_reg_bit0;
          end else begin
            sm_test1_o_reset_not                 <= 1'b0;
            sm_test1_o_config_in                 <= 1'b0;
          end
          sm_test1_o_config_load                 <= SHIFT_REG;
          sm_test1_o_shift_reg_load          <= 1'b0;
          sm_test1_o_shift_reg         <= 1'b0;
          sm_test1_o_status_done                 <= 1'b0;
        end
        SHIFT_IN_0_T1 : begin
          // next state machine state logic
          if(test_delay==clk_counter) begin
            sm_test1 <= SHIFT_IN_T1;
          end else begin
            sm_test1 <= SHIFT_IN_0_T1;
          end
          // output state machine signal assignment
          if(test_delay-2==clk_counter) begin
            // latency sm_test1_o_shift_reg to sm_testx_i_shift_reg_reg is TWO clk clocks:
            // * one clk latency due to this process for asserting signal sm_test1_o_shift_reg
            // * one clk latency due to process sm_testx_i_shift_reg_reg_proc to execute the shift-right
            sm_test1_o_shift_reg       <= 1'b1;
          end else begin
            sm_test1_o_shift_reg       <= 1'b0;
          end
          sm_test1_o_reset_not                   <= 1'b1;
          sm_test1_o_config_in                   <= sm_testx_i_shift_reg_reg_bit0;
          sm_test1_o_config_load                 <= SHIFT_REG;
          sm_test1_o_shift_reg_load              <= 1'b0;
          sm_test1_o_status_done                 <= 1'b0;
        end
        SHIFT_IN_T1 : begin
          // next state machine state logic
          if(sm_testx_i_shift_reg_reg_shift_cnt==sm_testx_i_shift_reg_reg_shift_cnt_max) begin
            // done shifting all 768 bits;
            sm_test1 <= DONE_T1;
            sm_test1_o_config_load               <= LOAD_CONFIG;
            sm_test1_o_status_done               <= 1'b1;
          end else begin
            // continue shifting
            sm_test1 <= SHIFT_IN_T1;
            sm_test1_o_config_load               <= SHIFT_REG;
            sm_test1_o_status_done               <= 1'b0;
          end
          // output state machine signal assignment
          if(test_delay-2==clk_counter) begin
            // latency sm_test1_o_shift_reg to sm_testx_i_shift_reg_reg is TWO clk clocks:
            // * one clk latency due to this process for asserting signal sm_test1_o_shift_reg
            // * one clk latency due to process sm_testx_i_shift_reg_reg_proc to execute the shift-right
            sm_test1_o_shift_reg       <= 1'b1;
          end else begin
            sm_test1_o_shift_reg       <= 1'b0;
          end
          sm_test1_o_reset_not                   <= 1'b1;
          sm_test1_o_config_in                   <= sm_testx_i_shift_reg_reg_bit0;
          sm_test1_o_shift_reg_load          <= 1'b0;
        end
        DONE_T1 : begin
          // next state machine state logic
          sm_test1 <= IDLE_T1;
          // output state machine signal assignment
          sm_test1_o_reset_not                     <= 1'b1;
          sm_test1_o_config_in                     <= 1'b0;
          sm_test1_o_config_load                   <= LOAD_CONFIG;
          sm_test1_o_shift_reg_load            <= 1'b0;
          sm_test1_o_shift_reg           <= 1'b0;
          sm_test1_o_status_done                   <= 1'b1;
        end
        default : begin
          sm_test1 <= IDLE_T1;
        end
      endcase
    end
  end
  // ------------------------------------------------------------------------------------------------------------------

endmodule

`endif

