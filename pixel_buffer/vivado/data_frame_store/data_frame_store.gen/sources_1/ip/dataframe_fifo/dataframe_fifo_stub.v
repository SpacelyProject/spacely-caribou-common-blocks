// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sat Mar 30 16:38:48 2024
// Host        : metal.fnal.gov running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /fasic_home/jchuenoh/fermi/spacely-caribou-common-blocks/pixel_buffer/vivado/data_frame_store/data_frame_store.gen/sources_1/ip/dataframe_fifo/dataframe_fifo_stub.v
// Design      : dataframe_fifo
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.1" *)
module dataframe_fifo(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, 
  empty, wr_rst_busy, rd_rst_busy)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[233:0],wr_en,rd_en,dout[233:0],full,empty,wr_rst_busy,rd_rst_busy" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [233:0]din;
  input wr_en;
  input rd_en;
  output [233:0]dout;
  output full;
  output empty;
  output wr_rst_busy;
  output rd_rst_busy;
endmodule
