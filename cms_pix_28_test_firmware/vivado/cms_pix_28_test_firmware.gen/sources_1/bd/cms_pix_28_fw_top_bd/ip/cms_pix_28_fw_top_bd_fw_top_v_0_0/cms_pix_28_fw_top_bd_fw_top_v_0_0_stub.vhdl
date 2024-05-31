-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Fri May 31 14:58:02 2024
-- Host        : fasic-beast2.fnal.gov running 64-bit Scientific Linux release 7.9 (Nitrogen)
-- Command     : write_vhdl -force -mode synth_stub
--               /asic/projects/C/CMS_PIX_28/gingu/spacely/spacely-caribou-common-blocks/cms_pix_28_test_firmware/vivado/cms_pix_28_test_firmware.gen/sources_1/bd/cms_pix_28_fw_top_bd/ip/cms_pix_28_fw_top_bd_fw_top_v_0_0/cms_pix_28_fw_top_bd_fw_top_v_0_0_stub.vhdl
-- Design      : cms_pix_28_fw_top_bd_fw_top_v_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cms_pix_28_fw_top_bd_fw_top_v_0_0 is
  Port ( 
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 10 downto 0 );
    S_AXI_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 10 downto 0 );
    S_AXI_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    pl_clk1 : in STD_LOGIC;
    super_pixel_sel : out STD_LOGIC;
    config_clk : out STD_LOGIC;
    reset_not : out STD_LOGIC;
    config_in : out STD_LOGIC;
    config_load : out STD_LOGIC;
    bxclk_ana : out STD_LOGIC;
    bxclk : out STD_LOGIC;
    vin_test_trig_out : out STD_LOGIC;
    scan_in : out STD_LOGIC;
    scan_load : out STD_LOGIC;
    config_out : in STD_LOGIC;
    scan_out : in STD_LOGIC;
    dnn_output_0 : in STD_LOGIC;
    dnn_output_1 : in STD_LOGIC;
    dn_event_toggle : in STD_LOGIC
  );

end cms_pix_28_fw_top_bd_fw_top_v_0_0;

architecture stub of cms_pix_28_fw_top_bd_fw_top_v_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "S_AXI_ACLK,S_AXI_ARESETN,S_AXI_AWADDR[10:0],S_AXI_AWPROT[2:0],S_AXI_AWVALID,S_AXI_AWREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,S_AXI_WREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_BREADY,S_AXI_ARADDR[10:0],S_AXI_ARPROT[2:0],S_AXI_ARVALID,S_AXI_ARREADY,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_RREADY,pl_clk1,super_pixel_sel,config_clk,reset_not,config_in,config_load,bxclk_ana,bxclk,vin_test_trig_out,scan_in,scan_load,config_out,scan_out,dnn_output_0,dnn_output_1,dn_event_toggle";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fw_top_v,Vivado 2022.1";
begin
end;
