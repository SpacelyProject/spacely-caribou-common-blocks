//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Tue Apr  9 15:37:50 2024
//Host        : metal.fnal.gov running 64-bit unknown
//Command     : generate_target demo2_led_wrapper.bd
//Design      : demo2_led_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module demo2_led_wrapper
   (led_8bits_tri_o,
    push_buttons_5bits_tri_i);
  output [7:0]led_8bits_tri_o;
  input [4:0]push_buttons_5bits_tri_i;

  wire [7:0]led_8bits_tri_o;
  wire [4:0]push_buttons_5bits_tri_i;

  demo2_led demo2_led_i
       (.led_8bits_tri_o(led_8bits_tri_o),
        .push_buttons_5bits_tri_i(push_buttons_5bits_tri_i));
endmodule
