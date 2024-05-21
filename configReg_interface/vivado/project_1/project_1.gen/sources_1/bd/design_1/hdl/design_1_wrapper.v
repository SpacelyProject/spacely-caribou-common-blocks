//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Tue May 21 11:52:18 2024
//Host        : fasic-beast1.fnal.gov running 64-bit Scientific Linux release 7.9 (Nitrogen)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (ConfigClk_0,
    ConfigIn_0,
    ConfigLoad_0,
    ConfigOut_0,
    Reset_not_0,
    SuperpixSel_0);
  output ConfigClk_0;
  output ConfigIn_0;
  output ConfigLoad_0;
  input ConfigOut_0;
  output Reset_not_0;
  output SuperpixSel_0;

  wire ConfigClk_0;
  wire ConfigIn_0;
  wire ConfigLoad_0;
  wire ConfigOut_0;
  wire Reset_not_0;
  wire SuperpixSel_0;

  design_1 design_1_i
       (.ConfigClk_0(ConfigClk_0),
        .ConfigIn_0(ConfigIn_0),
        .ConfigLoad_0(ConfigLoad_0),
        .ConfigOut_0(ConfigOut_0),
        .Reset_not_0(Reset_not_0),
        .SuperpixSel_0(SuperpixSel_0));
endmodule
