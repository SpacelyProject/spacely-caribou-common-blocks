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
`ifndef __com_config_write_regs__
`define __com_config_write_regs__

`timescale 1 ns/ 1 ps

module com_config_write_regs (
    input  logic        fw_clk_100,                        // FW clock 100MHz       mapped to S_AXI_ACLK
    input  logic        fw_rst_n,                          // FW reset, active low  mapped to S_AXI_ARESETN
    //
    input  logic        op_code_w_reset,
    input  logic        op_code_w_cfg_static_0,
    input  logic        op_code_w_cfg_static_1,
    input  logic        op_code_w_cfg_array_0,
    input  logic        op_code_w_cfg_array_1,
    input  logic [23:0] sw_write24_0,                      // feed-through bytes 2, 1, 0 of sw_write32_0 from SW to FW
    //
    output logic        [23:0] w_cfg_static_0_reg,
    output logic        [23:0] w_cfg_static_1_reg,
    output logic [255:0][15:0] w_cfg_array_0_reg,
    output logic [255:0][15:0] w_cfg_array_1_reg
  );

  always @(posedge fw_clk_100 or negedge fw_rst_n) begin   // mapped to S_AXI_ACLK, S_AXI_ARESETN
    if(~fw_rst_n) begin
      w_cfg_static_0_reg <= 24'b0;
    end else begin
      if(op_code_w_reset) begin
        w_cfg_static_0_reg <= 24'b0;
      end else if(op_code_w_cfg_static_0) begin
        w_cfg_static_0_reg <= sw_write24_0;
      end
    end
  end

  always @(posedge fw_clk_100 or negedge fw_rst_n) begin   // mapped to S_AXI_ACLK, S_AXI_ARESETN
    if(~fw_rst_n) begin
      w_cfg_static_1_reg <= 24'b0;
    end else begin
      if(op_code_w_reset) begin
        w_cfg_static_1_reg <= 24'b0;
      end else if(op_code_w_cfg_static_1) begin
        w_cfg_static_1_reg <= sw_write24_0;
      end
    end
  end

  always @(posedge fw_clk_100 or negedge fw_rst_n) begin   // mapped to S_AXI_ACLK, S_AXI_ARESETN
    if(~fw_rst_n) begin
      w_cfg_array_0_reg <= 4096'b0;
    end else begin
      if(op_code_w_reset) begin
        w_cfg_array_0_reg <= 4096'b0;
      end else if(op_code_w_cfg_array_0) begin
        w_cfg_array_0_reg[sw_write24_0[23:16]] <= sw_write24_0[15:0];
      end
    end
  end

  always @(posedge fw_clk_100 or negedge fw_rst_n) begin   // mapped to S_AXI_ACLK, S_AXI_ARESETN
    if(~fw_rst_n) begin
      w_cfg_array_1_reg <= 4096'b0;
    end else begin
      if(op_code_w_reset) begin
        w_cfg_array_1_reg <= 4096'b0;
      end else if(op_code_w_cfg_array_1) begin
        w_cfg_array_1_reg[sw_write24_0[23:16]] <= sw_write24_0[15:0];
      end
    end
  end

endmodule

`endif
