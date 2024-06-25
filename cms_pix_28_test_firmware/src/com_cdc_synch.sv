// ------------------------------------------------------------------------------------
//              : Cristian Gingu       gingu@fnal.gov
// Created      : 2024-06-03
// ------------------------------------------------------------------------------------
// Copyright (c) 2024 by FNAL This model is the confidential and
// proprietary property of FNAL and the possession or use of this
// file requires a written license from FNAL.
// ------------------------------------------------------------------------------------
// Revisions  :
// Date        Author                 Description
// 2024-06-03  Cristian  Gingu        Created
// ------------------------------------------------------------------------------------
`ifndef __com_cdc_synch__
`define __com_cdc_synch__

`timescale 1 ns/ 1 ps

module com_cdc_synch #(
    parameter NUM_STAGES = 2) (
    input logic i_data,
    input logic i_clk,
    output logic o_data);

  // if (NUM_STAGES < 2) $fatal;

  logic [NUM_STAGES-1:0] shift_register;

  always_ff @(posedge i_clk) begin
    shift_register <= {i_data, shift_register} >> 1;
  end
  assign o_data = shift_register[0];

endmodule

`endif
