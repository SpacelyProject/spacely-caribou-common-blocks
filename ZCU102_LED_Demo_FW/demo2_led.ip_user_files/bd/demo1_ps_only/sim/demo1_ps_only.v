//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
//Date        : Tue Feb 27 08:45:52 2024
//Host        : metal.fnal.gov running 64-bit unknown
//Command     : generate_target demo1_ps_only.bd
//Design      : demo1_ps_only
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "demo1_ps_only,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=demo1_ps_only,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_zynq_ultra_ps_e_cnt=1,synth_mode=Global}" *) (* HW_HANDOFF = "demo1_ps_only.hwdef" *) 
module demo1_ps_only
   ();


  demo1_ps_only_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.pl_ps_irq0(1'b0));
endmodule
