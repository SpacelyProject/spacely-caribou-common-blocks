// ------------------------------------------------------------------------------------
// Author       : Cristian Gingu       gingu@fnal.gov
// Created      : 2024-05-22
// ------------------------------------------------------------------------------------
// Copyright (c) 2024 by FNAL This model is the confidential and
// proprietary property of FNAL and the possession or use of this
// file requires a written license from FNAL.
// ------------------------------------------------------------------------------------
// Revisions  :
// Date        Author                 Description
// 2024-05-22  Cristian  Gingu        Created; this is a combinatorial module
// ------------------------------------------------------------------------------------
`ifndef __common_sw_to_fw_side__
`define __common_sw_to_fw_side__
`timescale 1 ns/ 1 ps

module common_sw_to_fw_side(
    // SW side ports:
    input  logic [31:0] sw_write32_0,                      // register#0 32-bit write       from SW to FW
    output logic [31:0] sw_read32_0,                       // register#0 32-bit read_data   from FW to SW
    output logic [31:0] sw_read32_1,                       // register#1 32-bit read_status from FW to SW
    // FW side ports
    output logic [3:0]  fw_dev_id_enable,                  // up to 15 FW can be connected;
    output logic        fw_op_code_w_reset,
    output logic        fw_op_code_w_cfg_static_0,
    output logic        fw_op_code_r_cfg_static_0,
    output logic        fw_op_code_w_cfg_array_0,
    output logic        fw_op_code_r_cfg_array_0,
    output logic        fw_op_code_w_cfg_array_1,
    output logic        fw_op_code_r_cfg_array_1,
    output logic        fw_op_code_r_data_array_0,
    output logic        fw_op_code_r_data_array_1,
    output logic        fw_op_code_r_status,
    output logic        fw_op_code_w_execute,
    output logic [23:0]      sw_write24_0,                 // feed-through bytes 2, 1, 0 of sw_write32_0 from SW to FW
    input  logic [3:0][31:0] fw_read_data32,               // 32-bit read_data   from FW to SW
    input  logic [3:0][31:0] fw_read_status32              // 32-bit read_status from FW to SW
  );

  localparam windex_device_id_max  = 31;                   // write index for device_id       (upper)
  localparam windex_device_id_min  = 28;                   // write index for device_id       (lower)
  localparam windex_op_code_max    = 27;                   // write index for operation_code  (upper)
  localparam windex_op_code_mmin   = 24;                   // write index for operation_code  (lower)
  localparam windex_body_max       = 23;                   // write index for body_data       (upper)
  localparam windex_body_min       =  0;                   // write index for body_data       (lower)

  typedef enum logic [3:0] {                               // operation_code enumerated type
    OP_CODE_NOOP             = 4'h0,
    OP_CODE_W_RST_FW         = 4'h1,
    OP_CODE_W_CFG_STATIC_0   = 4'h2,
    OP_CODE_R_CFG_STATIC_0   = 4'h3,
    OP_CODE_W_CFG_ARRAY_0    = 4'h4,
    OP_CODE_R_CFG_ARRAY_0    = 4'h5,
    OP_CODE_W_CFG_ARRAY_1    = 4'h6,
    OP_CODE_R_CFG_ARRAY_1    = 4'h7,
    OP_CODE_R_DATA_ARRAY_0   = 4'h8,
    OP_CODE_R_DATA_ARRAY_1   = 4'h9,
    OP_CODE_R_STATUS_FW      = 4'hA,
    OP_CODE_W_EXECUTE        = 4'hB
  } op_code;

  // Device ID decoder: this is used to enable one-and-only-one firmware at a time.
  // The following is using hot bit encoding. If more than FOUR firmwares will be used, change the decoding below.
  // Simultaneously use the same always_comb to encode the sw_read32_0 and sw_read32_1
  always_comb begin
    if         (sw_write32_0[windex_device_id_max:windex_device_id_min]==4'h1) begin
      fw_dev_id_enable  = 4'h1;
      sw_read32_0       = fw_read_data32[0];
      sw_read32_1       = fw_read_status32[0];
    end else if(sw_write32_0[windex_device_id_max:windex_device_id_min]==4'h2) begin
      fw_dev_id_enable  = 4'h2;
      sw_read32_0       = fw_read_data32[1];
      sw_read32_1       = fw_read_status32[1];
    end else if(sw_write32_0[windex_device_id_max:windex_device_id_min]==4'h4) begin
      fw_dev_id_enable  = 4'h4;
      sw_read32_0       = fw_read_data32[2];
      sw_read32_1       = fw_read_status32[2];
    end else if(sw_write32_0[windex_device_id_max:windex_device_id_min]==4'h8) begin
      fw_dev_id_enable  = 4'h8;
      sw_read32_0       = fw_read_data32[3];
      sw_read32_1       = fw_read_status32[3];
    end else begin
      fw_dev_id_enable  = 4'h0;
      sw_read32_0       = 32'h0;
      sw_read32_1       = 32'h0;
    end
  end

  // Operation Code decoder:
  assign fw_op_code_w_reset        = (sw_write32_0[windex_op_code_max:windex_op_code_mmin]==OP_CODE_W_RST_FW      ) ? 1'b1 : 1'b0;
  assign fw_op_code_w_cfg_static_0 = (sw_write32_0[windex_op_code_max:windex_op_code_mmin]==OP_CODE_W_CFG_STATIC_0) ? 1'b1 : 1'b0;
  assign fw_op_code_r_cfg_static_0 = (sw_write32_0[windex_op_code_max:windex_op_code_mmin]==OP_CODE_R_CFG_STATIC_0) ? 1'b1 : 1'b0;
  assign fw_op_code_w_cfg_array_0  = (sw_write32_0[windex_op_code_max:windex_op_code_mmin]==OP_CODE_W_CFG_ARRAY_0 ) ? 1'b1 : 1'b0;
  assign fw_op_code_r_cfg_array_0  = (sw_write32_0[windex_op_code_max:windex_op_code_mmin]==OP_CODE_R_CFG_ARRAY_0 ) ? 1'b1 : 1'b0;
  assign fw_op_code_w_cfg_array_1  = (sw_write32_0[windex_op_code_max:windex_op_code_mmin]==OP_CODE_W_CFG_ARRAY_1 ) ? 1'b1 : 1'b0;
  assign fw_op_code_r_cfg_array_1  = (sw_write32_0[windex_op_code_max:windex_op_code_mmin]==OP_CODE_R_CFG_ARRAY_1 ) ? 1'b1 : 1'b0;
  assign fw_op_code_r_data_array_0 = (sw_write32_0[windex_op_code_max:windex_op_code_mmin]==OP_CODE_R_DATA_ARRAY_0) ? 1'b1 : 1'b0;
  assign fw_op_code_r_data_array_1 = (sw_write32_0[windex_op_code_max:windex_op_code_mmin]==OP_CODE_R_DATA_ARRAY_1) ? 1'b1 : 1'b0;
  assign fw_op_code_r_status       = (sw_write32_0[windex_op_code_max:windex_op_code_mmin]==OP_CODE_R_STATUS_FW   ) ? 1'b1 : 1'b0;
  assign fw_op_code_w_execute      = (sw_write32_0[windex_op_code_max:windex_op_code_mmin]==OP_CODE_W_EXECUTE     ) ? 1'b1 : 1'b0;

  // Body data feed through: bytes 2, 1, 0
  assign sw_write24_0 = sw_write32_0[windex_body_max:windex_body_min];

endmodule

`endif
