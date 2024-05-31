// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri May 31 14:45:29 2024
// Host        : fasic-beast2.fnal.gov running 64-bit Scientific Linux release 7.9 (Nitrogen)
// Command     : write_verilog -force -mode synth_stub
//               /asic/projects/C/CMS_PIX_28/gingu/spacely/spacely-caribou-common-blocks/cms_pix_28_test_firmware/vivado/cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ip/cms_pix_28_fw_top_bd_xpm_cdc_gen_0_0/cms_pix_28_fw_top_bd_xpm_cdc_gen_0_0_stub.v
// Design      : cms_pix_28_fw_top_bd_xpm_cdc_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xpm_cdc_gen_v1_0_1,Vivado 2022.1" *)
module cms_pix_28_fw_top_bd_xpm_cdc_gen_0_0(src_clk, dest_clk, src_in, dest_out)
/* synthesis syn_black_box black_box_pad_pin="src_clk,dest_clk,src_in[1:0],dest_out[1:0]" */;
  input src_clk;
  input dest_clk;
  input [1:0]src_in;
  output [1:0]dest_out;
endmodule
