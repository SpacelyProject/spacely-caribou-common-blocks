// ------------------------------------------------------------------------------------
// Author       : Cristian Gingu (gingul.gov
// Created      : 2024-05-22
// ------------------------------------------------------------------------------------
// Copyright (c) 2024 by FNAL This model is the confidential and
// proprietary property of FNAL and the possession or use of this
// file requires a written license from FNAL.
// ------------------------------------------------------------------------------------
// Revisions  :
// Date        Author                 Description
// 2024-05-22  Cristian  Gingu        Created
// ------------------------------------------------------------------------------------
`timescale 1 ns/ 1 ps

module common_fw_to_dut_side(
    input  [3:0] fw_superpix_sel,
    input  [3:0] fw_config_clk,
    input  [3:0] fw_reset_not,
    input  [3:0] fw_config_in,
    input  [3:0] fw_config_load,
    output [3:0] fw_config_out,
    //
    output dut_superpix_sel,
    output dut_config_clk,
    output dut_reset_not,
    output dut_config_in,
    output dut_config_load,
    input  dut_config_out
    );
endmodule
