// ------------------------------------------------------------------------------------
//              : Cristian Gingu       gingu@fnal.gov
// Created      : 2024-05-31
// ------------------------------------------------------------------------------------
// Copyright (c) 2024 by FNAL This model is the confidential and
// proprietary property of FNAL and the possession or use of this
// file requires a written license from FNAL.
// ------------------------------------------------------------------------------------
// Revisions  :
// Date        Author                 Description
// 2024-05-31  Cristian  Gingu        Created
// ------------------------------------------------------------------------------------
`ifndef __com_op_code_decoder__
`define __com_op_code_decoder__

`timescale 1 ns/ 1 ps

module com_op_code_decoder (
    input  logic fw_dev_id_enable,
    input  logic fw_op_code_w_reset,
    input  logic fw_op_code_w_cfg_static_0,
    input  logic fw_op_code_r_cfg_static_0,
    input  logic fw_op_code_w_cfg_static_1,
    input  logic fw_op_code_r_cfg_static_1,
    input  logic fw_op_code_w_cfg_array_0,
    input  logic fw_op_code_r_cfg_array_0,
    input  logic fw_op_code_w_cfg_array_1,
    input  logic fw_op_code_r_cfg_array_1,
    input  logic fw_op_code_r_data_array_0,
    input  logic fw_op_code_r_data_array_1,
    input  logic fw_op_code_w_status_clear,
    input  logic fw_op_code_w_execute,
    //
    output logic op_code_w_reset,
    output logic op_code_w_cfg_static_0,
    output logic op_code_r_cfg_static_0,
    output logic op_code_w_cfg_static_1,
    output logic op_code_r_cfg_static_1,
    output logic op_code_w_cfg_array_0,
    output logic op_code_r_cfg_array_0,
    output logic op_code_w_cfg_array_1,
    output logic op_code_r_cfg_array_1,
    output logic op_code_r_data_array_0,
    output logic op_code_r_data_array_1,
    output logic op_code_w_status_clear,
    output logic op_code_w_execute
  );

  assign op_code_w_reset          = fw_dev_id_enable & fw_op_code_w_reset;
  assign op_code_w_cfg_static_0   = fw_dev_id_enable & fw_op_code_w_cfg_static_0;
  assign op_code_r_cfg_static_0   = fw_dev_id_enable & fw_op_code_r_cfg_static_0;
  assign op_code_w_cfg_static_1   = fw_dev_id_enable & fw_op_code_w_cfg_static_1;
  assign op_code_r_cfg_static_1   = fw_dev_id_enable & fw_op_code_r_cfg_static_1;
  assign op_code_w_cfg_array_0    = fw_dev_id_enable & fw_op_code_w_cfg_array_0;
  assign op_code_r_cfg_array_0    = fw_dev_id_enable & fw_op_code_r_cfg_array_0;
  assign op_code_w_cfg_array_1    = fw_dev_id_enable & fw_op_code_w_cfg_array_1;
  assign op_code_r_cfg_array_1    = fw_dev_id_enable & fw_op_code_r_cfg_array_1;
  assign op_code_r_data_array_0   = fw_dev_id_enable & fw_op_code_r_data_array_0;
  assign op_code_r_data_array_1   = fw_dev_id_enable & fw_op_code_r_data_array_1;
  assign op_code_w_status_clear   = fw_dev_id_enable & fw_op_code_w_status_clear;
  assign op_code_w_execute        = fw_dev_id_enable & fw_op_code_w_execute;

endmodule

`endif
