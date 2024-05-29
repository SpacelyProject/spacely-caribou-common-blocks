//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Wed May 29 12:12:12 2024
//Host        : fasic-beast2.fnal.gov running 64-bit Scientific Linux release 7.9 (Nitrogen)
//Command     : generate_target cms_pix_28_fw_top_bd_wrapper.bd
//Design      : cms_pix_28_fw_top_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module cms_pix_28_fw_top_bd_wrapper
   (ConfigClk,
    ConfigIn,
    ConfigLoad,
    ConfigOut,
    Reset_not,
    SuperpixSel);
  output ConfigClk;
  output ConfigIn;
  output ConfigLoad;
  input ConfigOut;
  output Reset_not;
  output SuperpixSel;

  wire ConfigClk;
  wire ConfigIn;
  wire ConfigLoad;
  wire ConfigOut;
  wire Reset_not;
  wire SuperpixSel;

  cms_pix_28_fw_top_bd cms_pix_28_fw_top_bd_i
       (.ConfigClk(ConfigClk),
        .ConfigIn(ConfigIn),
        .ConfigLoad(ConfigLoad),
        .ConfigOut(ConfigOut),
        .Reset_not(Reset_not),
        .SuperpixSel(SuperpixSel));
endmodule
