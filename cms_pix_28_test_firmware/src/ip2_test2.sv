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
// 2024-06-18  Cristian  Gingu        Created template
// ------------------------------------------------------------------------------------
`ifndef __ip2_test2__
`define __ip2_test2__

`timescale 1 ns/ 1 ps

module ip2_test2 (
    input  logic       clk,                                // FM clock 400MHz       mapped to pl_clk1
    input  logic       reset,
    input  logic       enable,                             // up to 15 FW can be connected
    // Control signals:
    input  logic [5:0] clk_counter,
    input  logic [5:0] test_delay,
    input  logic [5:0] test_trig_out_phase,
    input  logic       test1_enable_re,
    input  logic       sm_testx_i_scanchain_reg_bit0,
    input  logic [9:0] sm_testx_i_scanchain_reg_shift_cnt,
    input  logic [9:0] sm_testx_i_scanchain_reg_shift_cnt_max,
    output logic       sm_test2_o_scanchain_reg_load,
    output logic       sm_test2_o_scanchain_reg_shift,
    output logic       sm_test2_o_status_done,
    // output ports
    output logic [2:0] sm_test2_state,
    output logic       sm_test2_o_config_clk,
    output logic       sm_test2_o_reset_not,
    output logic       sm_test2_o_config_in,
    output logic       sm_test2_o_config_load,
    output logic       sm_test2_o_vin_test_trig_out,
    output logic       sm_test2_o_scan_in,
    output logic       sm_test2_o_scan_load
  );
  // ------------------------------------------------------------------------------------------------------------------
  // State Machine for "test1". Test SCAN-CHAIN-MODULE as a serial-in / serial-out shift-tegister.
  typedef enum logic [2:0] {
    IDLE_T2            = 3'b000,
    DELAY_TEST_T2      = 3'b001,
    RESET_NOT_T2       = 3'b010,
    SCANLOAD_HIGH_1_T2 = 3'b011,
    SCANLOAD_HIGH_2_T2 = 3'b100,
    SHIFT_IN_0_T2      = 3'b101,
    SHIFT_IN_T2        = 3'b110,
    DONE_T2            = 3'b111
  } state_t_sm_test2;
  state_t_sm_test2 sm_test2;
  assign sm_test2_state = sm_test2;
  //
  // Define enumerated type scan_chain_mode: LOW==shift-register, HIGH==parallel-load-asic-internal-comparators; default=HIGH
  typedef enum logic {
    SHIFT_REG = 1'b0,
    LOAD_COMP = 1'b1
  } scan_chain_mode;
  //
  assign sm_test2_o_config_clk        = 1'b0;       // signal not used-in / diven-by sm_test2_proc
  assign sm_test2_o_config_in         = 1'b0;       // signal not used-in / diven-by sm_test2_proc
  assign sm_test2_o_config_load       = 1'b0;       // signal not used-in / diven-by sm_test2_proc
  always @(posedge clk) begin : vin_test_trig_out_proc
    if(~enable | reset) begin
      sm_test2_o_vin_test_trig_out     <= 1'b0;
    end else begin
      if(sm_test2==SCANLOAD_HIGH_1_T2 && clk_counter==test_trig_out_phase) begin
        sm_test2_o_vin_test_trig_out   <= 1'b1;
      end else if(sm_test2==SCANLOAD_HIGH_2_T2 && clk_counter==test_trig_out_phase) begin
        sm_test2_o_vin_test_trig_out   <= 1'b0;
      end
    end
  end
  always @(posedge clk) begin : sm_test2_proc
    if(~enable | reset) begin
      sm_test2 <= IDLE_T2;
    end else begin
      case(sm_test2)
        IDLE_T2 : begin
          // next state machine state logic
          if(test1_enable_re) begin
            sm_test2 <= DELAY_TEST_T2;
          end else begin
            sm_test2 <= IDLE_T2;
          end
          // output state machine signal assignment
          sm_test2_o_reset_not                   <= 1'b1;                      // active  LOW signal; default is inactive
          sm_test2_o_scan_in                     <= 1'b0;                      // arbitrary chosen default LOW
          sm_test2_o_scan_load                   <= LOAD_COMP;                 // scan-chain-mode: LOW==shift-register, HIGH==parallel-load-asic-internal-comparators; default=HIGH
          sm_test2_o_scanchain_reg_load          <= 1'b0;                      //
          sm_test2_o_scanchain_reg_shift         <= 1'b0;                      // LOW==do-not-shift, HIGH==do-shift-right
          sm_test2_o_status_done                 <= sm_test2_o_status_done;    // state machine STATUS flag
        end
        DELAY_TEST_T2 : begin
          // next state machine state logic
          if(test_delay==clk_counter) begin
            sm_test2 <= RESET_NOT_T2;
          end else begin
            sm_test2 <= DELAY_TEST_T2;
          end
          // output state machine signal assignment
          if(test_delay==clk_counter) begin
            sm_test2_o_reset_not                 <= 1'b0;
            sm_test2_o_scan_load                 <= SHIFT_REG;
          end else begin
            sm_test2_o_reset_not                 <= 1'b1;
            sm_test2_o_scan_load                 <= LOAD_COMP;
          end
          sm_test2_o_scan_in                     <= 1'b0;
          sm_test2_o_scanchain_reg_load          <= 1'b1;
          sm_test2_o_scanchain_reg_shift         <= 1'b0;
          sm_test2_o_status_done                 <= 1'b0;
        end
        RESET_NOT_T2 : begin
          // next state machine state logic
          if(test_delay==clk_counter) begin
            sm_test2 <= SCANLOAD_HIGH_1_T2;
          end else begin
            sm_test2 <= RESET_NOT_T2;
          end
          // output state machine signal assignment
          if(test_delay==clk_counter) begin
            sm_test2_o_reset_not                 <= 1'b1;
            sm_test2_o_scan_load                 <= LOAD_COMP;
          end else begin
            sm_test2_o_reset_not                 <= 1'b0;
            sm_test2_o_scan_load                 <= SHIFT_REG;
          end
          sm_test2_o_scan_in                     <= 1'b0;
          sm_test2_o_scanchain_reg_load          <= 1'b0;
          sm_test2_o_scanchain_reg_shift         <= 1'b0;
          sm_test2_o_status_done                 <= 1'b0;
        end
        //
        SCANLOAD_HIGH_1_T2 : begin
          // next state machine state logic
          if(test_delay==clk_counter) begin
            sm_test2 <= SCANLOAD_HIGH_2_T2;
          end else begin
            sm_test2 <= SCANLOAD_HIGH_1_T2;
          end
          // output state machine signal assignment
          sm_test2_o_reset_not                   <= 1'b1;
          sm_test2_o_scan_load                   <= LOAD_COMP;
          sm_test2_o_scan_in                     <= 1'b0;
          sm_test2_o_scanchain_reg_load          <= 1'b0;
          sm_test2_o_scanchain_reg_shift         <= 1'b0;
          sm_test2_o_status_done                 <= 1'b0;
        end
        SCANLOAD_HIGH_2_T2 : begin
          // next state machine state logic
          if(test_delay==clk_counter) begin
            sm_test2 <= SHIFT_IN_0_T2;
          end else begin
            sm_test2 <= SCANLOAD_HIGH_2_T2;
          end
          if(test_delay==clk_counter) begin
            sm_test2_o_scan_in                   <= sm_testx_i_scanchain_reg_bit0;
            sm_test2_o_scan_load                 <= SHIFT_REG;
          end else begin
            sm_test2_o_scan_in                   <= 1'b0;
            sm_test2_o_scan_load                 <= LOAD_COMP;
          end
          // output state machine signal assignment
          sm_test2_o_reset_not                   <= 1'b1;
          sm_test2_o_scanchain_reg_load          <= 1'b0;
          sm_test2_o_scanchain_reg_shift         <= 1'b0;
          sm_test2_o_status_done                 <= 1'b0;
        end
        //
        SHIFT_IN_0_T2 : begin
          // next state machine state logic
          if(test_delay==clk_counter) begin
            sm_test2 <= SHIFT_IN_T2;
          end else begin
            sm_test2 <= SHIFT_IN_0_T2;
          end
          // output state machine signal assignment
          if(test_delay-2==clk_counter) begin
            // latency sm_test2_o_scanchain_reg_shift to sm_testx_i_scanchain_reg is TWO clk clocks:
            // * one clk latency due to this process for asserting signal sm_test2_o_scanchain_reg_shift
            // * one clk latency due to process sm_testx_i_scanchain_reg_proc to execute the shift-right
            sm_test2_o_scanchain_reg_shift       <= 1'b1;
          end else begin
            sm_test2_o_scanchain_reg_shift       <= 1'b0;
          end
          sm_test2_o_reset_not                   <= 1'b1;
          sm_test2_o_scan_in                     <= sm_testx_i_scanchain_reg_bit0;
          sm_test2_o_scan_load                   <= SHIFT_REG;
          sm_test2_o_scanchain_reg_load          <= 1'b0;
          sm_test2_o_status_done                 <= 1'b0;
        end
        SHIFT_IN_T2 : begin
          // next state machine state logic
          if(sm_testx_i_scanchain_reg_shift_cnt==sm_testx_i_scanchain_reg_shift_cnt_max) begin
            // done shifting all 768 bits;
            sm_test2 <= DONE_T2;
            sm_test2_o_scan_load                 <= LOAD_COMP;
            sm_test2_o_status_done               <= 1'b1;
          end else begin
            // continue shifting
            sm_test2 <= SHIFT_IN_T2;
            sm_test2_o_scan_load                 <= SHIFT_REG;
            sm_test2_o_status_done               <= 1'b0;
          end
          // output state machine signal assignment
          if(test_delay-2==clk_counter) begin
            // latency sm_test2_o_scanchain_reg_shift to sm_testx_i_scanchain_reg is TWO clk clocks:
            // * one clk latency due to this process for asserting signal sm_test2_o_scanchain_reg_shift
            // * one clk latency due to process sm_testx_i_scanchain_reg_proc to execute the shift-right
            sm_test2_o_scanchain_reg_shift       <= 1'b1;
          end else begin
            sm_test2_o_scanchain_reg_shift       <= 1'b0;
          end
          sm_test2_o_reset_not                   <= 1'b1;
          sm_test2_o_scan_in                     <= sm_testx_i_scanchain_reg_bit0;
          sm_test2_o_scanchain_reg_load          <= 1'b0;
        end
        DONE_T2 : begin
          // next state machine state logic
          sm_test2 <= IDLE_T2;
          // output state machine signal assignment
          sm_test2_o_reset_not                   <= 1'b1;
          sm_test2_o_scan_in                     <= 1'b0;
          sm_test2_o_scan_load                   <= LOAD_COMP;
          sm_test2_o_scanchain_reg_load          <= 1'b0;
          sm_test2_o_scanchain_reg_shift         <= 1'b0;
          sm_test2_o_status_done                 <= 1'b1;
        end
        default : begin
          sm_test2 <= IDLE_T2;
        end
      endcase
    end
  end
  // ------------------------------------------------------------------------------------------------------------------

endmodule

`endif
