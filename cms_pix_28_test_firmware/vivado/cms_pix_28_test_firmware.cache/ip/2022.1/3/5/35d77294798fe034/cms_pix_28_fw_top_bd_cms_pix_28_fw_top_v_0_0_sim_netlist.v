// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Wed May 29 14:53:29 2024
// Host        : fasic-beast2.fnal.gov running 64-bit Scientific Linux release 7.9 (Nitrogen)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cms_pix_28_fw_top_bd_cms_pix_28_fw_top_v_0_0_sim_netlist.v
// Design      : cms_pix_28_fw_top_bd_cms_pix_28_fw_top_v_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top
   (axi_arready_reg,
    SR,
    axi_awready_reg,
    axi_wready_reg,
    S_AXI_BVALID,
    axi_rvalid_reg,
    S_AXI_RDATA,
    E,
    axi_arready_reg_0,
    \axi_awaddr_reg[2] ,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_BREADY,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_RREADY,
    S_AXI_ARVALID,
    S_AXI_ARADDR,
    S_AXI_AWADDR,
    Q,
    \axi_rdata_reg[31] ,
    S_AXI_WSTRB);
  output axi_arready_reg;
  output [0:0]SR;
  output axi_awready_reg;
  output axi_wready_reg;
  output S_AXI_BVALID;
  output axi_rvalid_reg;
  output [31:0]S_AXI_RDATA;
  output [0:0]E;
  output [0:0]axi_arready_reg_0;
  output [3:0]\axi_awaddr_reg[2] ;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input S_AXI_BREADY;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_RREADY;
  input S_AXI_ARVALID;
  input [8:0]S_AXI_ARADDR;
  input [8:0]S_AXI_AWADDR;
  input [31:0]Q;
  input [31:0]\axi_rdata_reg[31] ;
  input [3:0]S_AXI_WSTRB;

  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [8:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARVALID;
  wire [8:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire axi_arready_reg;
  wire [0:0]axi_arready_reg_0;
  wire [3:0]\axi_awaddr_reg[2] ;
  wire axi_awready_reg;
  wire [31:0]\axi_rdata_reg[31] ;
  wire axi_rvalid_reg;
  wire axi_wready_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_slave_interface axi4_slave_inst
       (.E(E),
        .Q(Q),
        .SR(SR),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_arready_reg_1(axi_arready_reg_0),
        .\axi_awaddr_reg[2]_0 (\axi_awaddr_reg[2] ),
        .axi_awready_reg_0(axi_awready_reg),
        .\axi_rdata_reg[31]_0 (\axi_rdata_reg[31] ),
        .axi_rvalid_reg_0(axi_rvalid_reg),
        .axi_wready_reg_0(axi_wready_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top_for_pix28_fw
   (axi_arready_reg,
    p_0_in,
    axi_awready_reg,
    axi_wready_reg,
    S_AXI_BVALID,
    axi_rvalid_reg,
    Q,
    fw_op_code_w_execute,
    fw_op_code_r_cfg_array_1,
    fw_op_code_r_cfg_static_0,
    fw_op_code_w_reset,
    fw_op_code_w_cfg_static_0,
    fw_op_code_w_cfg_array_0,
    fw_op_code_r_data_array_0,
    S_AXI_RDATA,
    fw_dev_id_enable,
    D,
    \sw_write32_0_reg[29]_0 ,
    \sw_write32_0_reg[29]_1 ,
    \sw_write32_0_reg[29]_2 ,
    \sw_write32_0_reg[29]_3 ,
    \sw_write32_0_reg[29]_4 ,
    \sw_write32_0_reg[29]_5 ,
    \sw_write32_0_reg[29]_6 ,
    \sw_write32_0_reg[29]_7 ,
    \sw_write32_0_reg[29]_8 ,
    \sw_write32_0_reg[29]_9 ,
    \sw_write32_0_reg[31]_0 ,
    \sw_write32_0_reg[31]_1 ,
    \sw_write32_0_reg[31]_2 ,
    \sw_write32_0_reg[31]_3 ,
    E,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_BREADY,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_RREADY,
    S_AXI_ARVALID,
    S_AXI_ARADDR,
    S_AXI_AWADDR,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    p_0_in_0,
    fw_scan_load,
    fw_scan_in,
    fw_vin_test_trig_out,
    fw_bxclk,
    fw_bxclk_ana,
    fw_config_load,
    fw_config_in,
    fw_reset_not,
    fw_config_clk,
    fw_super_pixel_sel,
    dnn_output_1_iob,
    dnn_output_0_iob,
    scan_out_iob,
    p_3_in,
    fw_read_status32,
    \reg_rddin_reg[1][31]_0 ,
    \reg_rddin_reg[1][31]_1 ,
    fw_read_data32,
    \reg_rddin_reg[0][31]_0 ,
    \reg_rddin_reg[0][31]_1 );
  output axi_arready_reg;
  output p_0_in;
  output axi_awready_reg;
  output axi_wready_reg;
  output S_AXI_BVALID;
  output axi_rvalid_reg;
  output [27:0]Q;
  output fw_op_code_w_execute;
  output fw_op_code_r_cfg_array_1;
  output fw_op_code_r_cfg_static_0;
  output fw_op_code_w_reset;
  output fw_op_code_w_cfg_static_0;
  output fw_op_code_w_cfg_array_0;
  output fw_op_code_r_data_array_0;
  output [31:0]S_AXI_RDATA;
  output [2:0]fw_dev_id_enable;
  output [2:0]D;
  output \sw_write32_0_reg[29]_0 ;
  output \sw_write32_0_reg[29]_1 ;
  output \sw_write32_0_reg[29]_2 ;
  output \sw_write32_0_reg[29]_3 ;
  output \sw_write32_0_reg[29]_4 ;
  output \sw_write32_0_reg[29]_5 ;
  output \sw_write32_0_reg[29]_6 ;
  output \sw_write32_0_reg[29]_7 ;
  output \sw_write32_0_reg[29]_8 ;
  output \sw_write32_0_reg[29]_9 ;
  output [2:0]\sw_write32_0_reg[31]_0 ;
  output [2:0]\sw_write32_0_reg[31]_1 ;
  output [2:0]\sw_write32_0_reg[31]_2 ;
  output [2:0]\sw_write32_0_reg[31]_3 ;
  output [2:0]E;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input S_AXI_BREADY;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_RREADY;
  input S_AXI_ARVALID;
  input [8:0]S_AXI_ARADDR;
  input [8:0]S_AXI_AWADDR;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input [0:0]p_0_in_0;
  input [2:0]fw_scan_load;
  input [2:0]fw_scan_in;
  input [2:0]fw_vin_test_trig_out;
  input [2:0]fw_bxclk;
  input [2:0]fw_bxclk_ana;
  input [2:0]fw_config_load;
  input [2:0]fw_config_in;
  input [2:0]fw_reset_not;
  input [2:0]fw_config_clk;
  input [2:0]fw_super_pixel_sel;
  input dnn_output_1_iob;
  input dnn_output_0_iob;
  input scan_out_iob;
  input [0:0]p_3_in;
  input [31:0]fw_read_status32;
  input [31:0]\reg_rddin_reg[1][31]_0 ;
  input [31:0]\reg_rddin_reg[1][31]_1 ;
  input [31:0]fw_read_data32;
  input [31:0]\reg_rddin_reg[0][31]_0 ;
  input [31:0]\reg_rddin_reg[0][31]_1 ;

  wire [2:0]D;
  wire [2:0]E;
  wire [27:0]Q;
  wire S_AXI_ACLK;
  wire [8:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARVALID;
  wire [8:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire [31:0]S_AXI_WDATA;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire axi_arready_reg;
  wire axi_awready_reg;
  wire axi_rvalid_reg;
  wire axi_wready_reg;
  wire dnn_output_0_iob;
  wire dnn_output_1_iob;
  wire [2:0]fw_bxclk;
  wire [2:0]fw_bxclk_ana;
  wire [2:0]fw_config_clk;
  wire [2:0]fw_config_in;
  wire [2:0]fw_config_load;
  wire \fw_config_out_reg[2]_i_3_n_0 ;
  wire [2:0]fw_dev_id_enable;
  wire [3:3]fw_dev_id_enable__0;
  wire fw_op_code_r_cfg_array_1;
  wire fw_op_code_r_cfg_static_0;
  wire fw_op_code_r_data_array_0;
  wire fw_op_code_w_cfg_array_0;
  wire fw_op_code_w_cfg_static_0;
  wire fw_op_code_w_execute;
  wire fw_op_code_w_reset;
  wire [31:0]fw_read_data32;
  wire [31:0]fw_read_status32;
  wire [2:0]fw_reset_not;
  wire [2:0]fw_scan_in;
  wire [2:0]fw_scan_load;
  wire [2:0]fw_super_pixel_sel;
  wire [2:0]fw_vin_test_trig_out;
  wire p_0_in;
  wire [0:0]p_0_in_0;
  wire [0:0]p_3_in;
  wire \reg_rdStrobe[0]_7 ;
  wire \reg_rdStrobe[1]_6 ;
  wire \reg_rddin[0][0]_i_1_n_0 ;
  wire \reg_rddin[0][10]_i_1_n_0 ;
  wire \reg_rddin[0][11]_i_1_n_0 ;
  wire \reg_rddin[0][12]_i_1_n_0 ;
  wire \reg_rddin[0][13]_i_1_n_0 ;
  wire \reg_rddin[0][14]_i_1_n_0 ;
  wire \reg_rddin[0][15]_i_1_n_0 ;
  wire \reg_rddin[0][16]_i_1_n_0 ;
  wire \reg_rddin[0][17]_i_1_n_0 ;
  wire \reg_rddin[0][18]_i_1_n_0 ;
  wire \reg_rddin[0][19]_i_1_n_0 ;
  wire \reg_rddin[0][1]_i_1_n_0 ;
  wire \reg_rddin[0][20]_i_1_n_0 ;
  wire \reg_rddin[0][21]_i_1_n_0 ;
  wire \reg_rddin[0][22]_i_1_n_0 ;
  wire \reg_rddin[0][23]_i_1_n_0 ;
  wire \reg_rddin[0][24]_i_1_n_0 ;
  wire \reg_rddin[0][25]_i_1_n_0 ;
  wire \reg_rddin[0][26]_i_1_n_0 ;
  wire \reg_rddin[0][27]_i_1_n_0 ;
  wire \reg_rddin[0][28]_i_1_n_0 ;
  wire \reg_rddin[0][29]_i_1_n_0 ;
  wire \reg_rddin[0][2]_i_1_n_0 ;
  wire \reg_rddin[0][30]_i_1_n_0 ;
  wire \reg_rddin[0][31]_i_2_n_0 ;
  wire \reg_rddin[0][31]_i_3_n_0 ;
  wire \reg_rddin[0][31]_i_4_n_0 ;
  wire \reg_rddin[0][31]_i_5_n_0 ;
  wire \reg_rddin[0][3]_i_1_n_0 ;
  wire \reg_rddin[0][4]_i_1_n_0 ;
  wire \reg_rddin[0][5]_i_1_n_0 ;
  wire \reg_rddin[0][6]_i_1_n_0 ;
  wire \reg_rddin[0][7]_i_1_n_0 ;
  wire \reg_rddin[0][8]_i_1_n_0 ;
  wire \reg_rddin[0][9]_i_1_n_0 ;
  wire \reg_rddin[1][0]_i_1_n_0 ;
  wire \reg_rddin[1][10]_i_1_n_0 ;
  wire \reg_rddin[1][11]_i_1_n_0 ;
  wire \reg_rddin[1][12]_i_1_n_0 ;
  wire \reg_rddin[1][13]_i_1_n_0 ;
  wire \reg_rddin[1][14]_i_1_n_0 ;
  wire \reg_rddin[1][15]_i_1_n_0 ;
  wire \reg_rddin[1][16]_i_1_n_0 ;
  wire \reg_rddin[1][17]_i_1_n_0 ;
  wire \reg_rddin[1][18]_i_1_n_0 ;
  wire \reg_rddin[1][19]_i_1_n_0 ;
  wire \reg_rddin[1][1]_i_1_n_0 ;
  wire \reg_rddin[1][20]_i_1_n_0 ;
  wire \reg_rddin[1][21]_i_1_n_0 ;
  wire \reg_rddin[1][22]_i_1_n_0 ;
  wire \reg_rddin[1][23]_i_1_n_0 ;
  wire \reg_rddin[1][24]_i_1_n_0 ;
  wire \reg_rddin[1][25]_i_1_n_0 ;
  wire \reg_rddin[1][26]_i_1_n_0 ;
  wire \reg_rddin[1][27]_i_1_n_0 ;
  wire \reg_rddin[1][28]_i_1_n_0 ;
  wire \reg_rddin[1][29]_i_1_n_0 ;
  wire \reg_rddin[1][2]_i_1_n_0 ;
  wire \reg_rddin[1][30]_i_1_n_0 ;
  wire \reg_rddin[1][31]_i_2_n_0 ;
  wire \reg_rddin[1][3]_i_1_n_0 ;
  wire \reg_rddin[1][4]_i_1_n_0 ;
  wire \reg_rddin[1][5]_i_1_n_0 ;
  wire \reg_rddin[1][6]_i_1_n_0 ;
  wire \reg_rddin[1][7]_i_1_n_0 ;
  wire \reg_rddin[1][8]_i_1_n_0 ;
  wire \reg_rddin[1][9]_i_1_n_0 ;
  wire [31:0]\reg_rddin_reg[0] ;
  wire [31:0]\reg_rddin_reg[0][31]_0 ;
  wire [31:0]\reg_rddin_reg[0][31]_1 ;
  wire [31:0]\reg_rddin_reg[1] ;
  wire [31:0]\reg_rddin_reg[1][31]_0 ;
  wire [31:0]\reg_rddin_reg[1][31]_1 ;
  wire [3:0]\reg_wrByteStrobe[0]_8 ;
  wire scan_out_iob;
  wire super_pixel_sel_iob_i_2_n_0;
  wire super_pixel_sel_iob_i_3_n_0;
  wire super_pixel_sel_iob_i_4_n_0;
  wire [31:28]sw_write32_0;
  wire \sw_write32_0_reg[29]_0 ;
  wire \sw_write32_0_reg[29]_1 ;
  wire \sw_write32_0_reg[29]_2 ;
  wire \sw_write32_0_reg[29]_3 ;
  wire \sw_write32_0_reg[29]_4 ;
  wire \sw_write32_0_reg[29]_5 ;
  wire \sw_write32_0_reg[29]_6 ;
  wire \sw_write32_0_reg[29]_7 ;
  wire \sw_write32_0_reg[29]_8 ;
  wire \sw_write32_0_reg[29]_9 ;
  wire [2:0]\sw_write32_0_reg[31]_0 ;
  wire [2:0]\sw_write32_0_reg[31]_1 ;
  wire [2:0]\sw_write32_0_reg[31]_2 ;
  wire [2:0]\sw_write32_0_reg[31]_3 ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top axi4lite_interface_inst
       (.E(\reg_rdStrobe[1]_6 ),
        .Q(\reg_rddin_reg[1] ),
        .SR(p_0_in),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .axi_arready_reg(axi_arready_reg),
        .axi_arready_reg_0(\reg_rdStrobe[0]_7 ),
        .\axi_awaddr_reg[2] (\reg_wrByteStrobe[0]_8 ),
        .axi_awready_reg(axi_awready_reg),
        .\axi_rdata_reg[31] (\reg_rddin_reg[0] ),
        .axi_rvalid_reg(axi_rvalid_reg),
        .axi_wready_reg(axi_wready_reg));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    bxclk_ana_iob_i_1
       (.I0(super_pixel_sel_iob_i_2_n_0),
        .I1(fw_bxclk_ana[0]),
        .I2(super_pixel_sel_iob_i_3_n_0),
        .I3(fw_bxclk_ana[1]),
        .I4(fw_bxclk_ana[2]),
        .I5(super_pixel_sel_iob_i_4_n_0),
        .O(\sw_write32_0_reg[29]_4 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    bxclk_iob_i_1
       (.I0(super_pixel_sel_iob_i_2_n_0),
        .I1(fw_bxclk[0]),
        .I2(super_pixel_sel_iob_i_3_n_0),
        .I3(fw_bxclk[1]),
        .I4(fw_bxclk[2]),
        .I5(super_pixel_sel_iob_i_4_n_0),
        .O(\sw_write32_0_reg[29]_3 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    config_clk_iob_i_1
       (.I0(super_pixel_sel_iob_i_2_n_0),
        .I1(fw_config_clk[0]),
        .I2(super_pixel_sel_iob_i_3_n_0),
        .I3(fw_config_clk[1]),
        .I4(fw_config_clk[2]),
        .I5(super_pixel_sel_iob_i_4_n_0),
        .O(\sw_write32_0_reg[29]_8 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    config_in_iob_i_1
       (.I0(super_pixel_sel_iob_i_2_n_0),
        .I1(fw_config_in[0]),
        .I2(super_pixel_sel_iob_i_3_n_0),
        .I3(fw_config_in[1]),
        .I4(fw_config_in[2]),
        .I5(super_pixel_sel_iob_i_4_n_0),
        .O(\sw_write32_0_reg[29]_6 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    config_load_iob_i_1
       (.I0(super_pixel_sel_iob_i_2_n_0),
        .I1(fw_config_load[0]),
        .I2(super_pixel_sel_iob_i_3_n_0),
        .I3(fw_config_load[1]),
        .I4(fw_config_load[2]),
        .I5(super_pixel_sel_iob_i_4_n_0),
        .O(\sw_write32_0_reg[29]_5 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \fw_config_out_reg[0]_i_1 
       (.I0(\fw_config_out_reg[2]_i_3_n_0 ),
        .I1(sw_write32_0[31]),
        .I2(sw_write32_0[28]),
        .I3(sw_write32_0[30]),
        .I4(sw_write32_0[29]),
        .I5(p_3_in),
        .O(\sw_write32_0_reg[31]_3 [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFEEB)) 
    \fw_config_out_reg[0]_i_2 
       (.I0(sw_write32_0[28]),
        .I1(sw_write32_0[31]),
        .I2(sw_write32_0[29]),
        .I3(sw_write32_0[30]),
        .O(E[0]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \fw_config_out_reg[1]_i_1 
       (.I0(sw_write32_0[31]),
        .I1(\fw_config_out_reg[2]_i_3_n_0 ),
        .I2(sw_write32_0[28]),
        .I3(sw_write32_0[29]),
        .I4(sw_write32_0[30]),
        .I5(p_3_in),
        .O(\sw_write32_0_reg[31]_3 [1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFEEB)) 
    \fw_config_out_reg[1]_i_2 
       (.I0(sw_write32_0[29]),
        .I1(sw_write32_0[30]),
        .I2(sw_write32_0[28]),
        .I3(sw_write32_0[31]),
        .O(E[1]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \fw_config_out_reg[2]_i_1 
       (.I0(sw_write32_0[31]),
        .I1(\fw_config_out_reg[2]_i_3_n_0 ),
        .I2(sw_write32_0[28]),
        .I3(sw_write32_0[30]),
        .I4(sw_write32_0[29]),
        .I5(p_3_in),
        .O(\sw_write32_0_reg[31]_3 [2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFEEB)) 
    \fw_config_out_reg[2]_i_2 
       (.I0(sw_write32_0[30]),
        .I1(sw_write32_0[29]),
        .I2(sw_write32_0[28]),
        .I3(sw_write32_0[31]),
        .O(E[2]));
  LUT4 #(
    .INIT(16'h0116)) 
    \fw_config_out_reg[2]_i_3 
       (.I0(fw_dev_id_enable[0]),
        .I1(fw_dev_id_enable[1]),
        .I2(fw_dev_id_enable[2]),
        .I3(fw_dev_id_enable__0),
        .O(\fw_config_out_reg[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \fw_config_out_reg[2]_i_4 
       (.I0(sw_write32_0[28]),
        .I1(sw_write32_0[31]),
        .I2(sw_write32_0[30]),
        .I3(sw_write32_0[29]),
        .O(fw_dev_id_enable__0));
  LUT6 #(
    .INIT(64'h55550000555D0000)) 
    \fw_dn_event_toggle_reg[0]_i_1 
       (.I0(\fw_config_out_reg[2]_i_3_n_0 ),
        .I1(sw_write32_0[28]),
        .I2(sw_write32_0[30]),
        .I3(sw_write32_0[29]),
        .I4(p_0_in_0),
        .I5(sw_write32_0[31]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \fw_dn_event_toggle_reg[1]_i_1 
       (.I0(sw_write32_0[31]),
        .I1(\fw_config_out_reg[2]_i_3_n_0 ),
        .I2(sw_write32_0[28]),
        .I3(sw_write32_0[29]),
        .I4(sw_write32_0[30]),
        .I5(p_0_in_0),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \fw_dn_event_toggle_reg[1]_i_2 
       (.I0(sw_write32_0[30]),
        .I1(sw_write32_0[29]),
        .I2(sw_write32_0[31]),
        .I3(sw_write32_0[28]),
        .O(fw_dev_id_enable[1]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \fw_dn_event_toggle_reg[2]_i_1 
       (.I0(sw_write32_0[31]),
        .I1(\fw_config_out_reg[2]_i_3_n_0 ),
        .I2(sw_write32_0[28]),
        .I3(sw_write32_0[30]),
        .I4(sw_write32_0[29]),
        .I5(p_0_in_0),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \fw_dn_event_toggle_reg[2]_i_2 
       (.I0(sw_write32_0[29]),
        .I1(sw_write32_0[30]),
        .I2(sw_write32_0[31]),
        .I3(sw_write32_0[28]),
        .O(fw_dev_id_enable[2]));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \fw_dnn_output_0_reg[0]_i_1 
       (.I0(\fw_config_out_reg[2]_i_3_n_0 ),
        .I1(sw_write32_0[31]),
        .I2(sw_write32_0[28]),
        .I3(sw_write32_0[30]),
        .I4(sw_write32_0[29]),
        .I5(dnn_output_0_iob),
        .O(\sw_write32_0_reg[31]_1 [0]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \fw_dnn_output_0_reg[1]_i_1 
       (.I0(sw_write32_0[31]),
        .I1(\fw_config_out_reg[2]_i_3_n_0 ),
        .I2(sw_write32_0[28]),
        .I3(sw_write32_0[29]),
        .I4(sw_write32_0[30]),
        .I5(dnn_output_0_iob),
        .O(\sw_write32_0_reg[31]_1 [1]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \fw_dnn_output_0_reg[2]_i_1 
       (.I0(sw_write32_0[31]),
        .I1(\fw_config_out_reg[2]_i_3_n_0 ),
        .I2(sw_write32_0[28]),
        .I3(sw_write32_0[30]),
        .I4(sw_write32_0[29]),
        .I5(dnn_output_0_iob),
        .O(\sw_write32_0_reg[31]_1 [2]));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \fw_dnn_output_1_reg[0]_i_1 
       (.I0(\fw_config_out_reg[2]_i_3_n_0 ),
        .I1(sw_write32_0[31]),
        .I2(sw_write32_0[28]),
        .I3(sw_write32_0[30]),
        .I4(sw_write32_0[29]),
        .I5(dnn_output_1_iob),
        .O(\sw_write32_0_reg[31]_0 [0]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \fw_dnn_output_1_reg[1]_i_1 
       (.I0(sw_write32_0[31]),
        .I1(\fw_config_out_reg[2]_i_3_n_0 ),
        .I2(sw_write32_0[28]),
        .I3(sw_write32_0[29]),
        .I4(sw_write32_0[30]),
        .I5(dnn_output_1_iob),
        .O(\sw_write32_0_reg[31]_0 [1]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \fw_dnn_output_1_reg[2]_i_1 
       (.I0(sw_write32_0[31]),
        .I1(\fw_config_out_reg[2]_i_3_n_0 ),
        .I2(sw_write32_0[28]),
        .I3(sw_write32_0[30]),
        .I4(sw_write32_0[29]),
        .I5(dnn_output_1_iob),
        .O(\sw_write32_0_reg[31]_0 [2]));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \fw_scan_out_reg[0]_i_1 
       (.I0(\fw_config_out_reg[2]_i_3_n_0 ),
        .I1(sw_write32_0[31]),
        .I2(sw_write32_0[28]),
        .I3(sw_write32_0[30]),
        .I4(sw_write32_0[29]),
        .I5(scan_out_iob),
        .O(\sw_write32_0_reg[31]_2 [0]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \fw_scan_out_reg[1]_i_1 
       (.I0(sw_write32_0[31]),
        .I1(\fw_config_out_reg[2]_i_3_n_0 ),
        .I2(sw_write32_0[28]),
        .I3(sw_write32_0[29]),
        .I4(sw_write32_0[30]),
        .I5(scan_out_iob),
        .O(\sw_write32_0_reg[31]_2 [1]));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \fw_scan_out_reg[2]_i_1 
       (.I0(sw_write32_0[31]),
        .I1(\fw_config_out_reg[2]_i_3_n_0 ),
        .I2(sw_write32_0[28]),
        .I3(sw_write32_0[30]),
        .I4(sw_write32_0[29]),
        .I5(scan_out_iob),
        .O(\sw_write32_0_reg[31]_2 [2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    pix_28_fw_ip1_inst_i_1
       (.I0(sw_write32_0[29]),
        .I1(sw_write32_0[30]),
        .I2(sw_write32_0[28]),
        .I3(sw_write32_0[31]),
        .O(fw_dev_id_enable[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    pix_28_fw_ip1_inst_i_2
       (.I0(Q[27]),
        .I1(Q[26]),
        .I2(Q[24]),
        .I3(Q[25]),
        .O(fw_op_code_w_reset));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    pix_28_fw_ip1_inst_i_3
       (.I0(Q[27]),
        .I1(Q[26]),
        .I2(Q[25]),
        .I3(Q[24]),
        .O(fw_op_code_w_cfg_static_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    pix_28_fw_ip1_inst_i_4
       (.I0(Q[27]),
        .I1(Q[26]),
        .I2(Q[24]),
        .I3(Q[25]),
        .O(fw_op_code_r_cfg_static_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    pix_28_fw_ip1_inst_i_5
       (.I0(Q[27]),
        .I1(Q[24]),
        .I2(Q[26]),
        .I3(Q[25]),
        .O(fw_op_code_w_cfg_array_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    pix_28_fw_ip1_inst_i_6
       (.I0(Q[26]),
        .I1(Q[27]),
        .I2(Q[24]),
        .I3(Q[25]),
        .O(fw_op_code_r_cfg_array_1));
  LUT4 #(
    .INIT(16'h0010)) 
    pix_28_fw_ip1_inst_i_7
       (.I0(Q[24]),
        .I1(Q[26]),
        .I2(Q[27]),
        .I3(Q[25]),
        .O(fw_op_code_r_data_array_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    pix_28_fw_ip1_inst_i_8
       (.I0(Q[27]),
        .I1(Q[26]),
        .I2(Q[24]),
        .I3(Q[25]),
        .O(fw_op_code_w_execute));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][0]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[0]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [0]),
        .I4(\reg_rddin_reg[0][31]_1 [0]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][10]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[10]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [10]),
        .I4(\reg_rddin_reg[0][31]_1 [10]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][11]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[11]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [11]),
        .I4(\reg_rddin_reg[0][31]_1 [11]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][12]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[12]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [12]),
        .I4(\reg_rddin_reg[0][31]_1 [12]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][13]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[13]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [13]),
        .I4(\reg_rddin_reg[0][31]_1 [13]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][14]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[14]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [14]),
        .I4(\reg_rddin_reg[0][31]_1 [14]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][15]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[15]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [15]),
        .I4(\reg_rddin_reg[0][31]_1 [15]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][16]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[16]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [16]),
        .I4(\reg_rddin_reg[0][31]_1 [16]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][17]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[17]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [17]),
        .I4(\reg_rddin_reg[0][31]_1 [17]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][18]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[18]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [18]),
        .I4(\reg_rddin_reg[0][31]_1 [18]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][19]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[19]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [19]),
        .I4(\reg_rddin_reg[0][31]_1 [19]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][1]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[1]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [1]),
        .I4(\reg_rddin_reg[0][31]_1 [1]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][20]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[20]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [20]),
        .I4(\reg_rddin_reg[0][31]_1 [20]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][21]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[21]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [21]),
        .I4(\reg_rddin_reg[0][31]_1 [21]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][22]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[22]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [22]),
        .I4(\reg_rddin_reg[0][31]_1 [22]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][23]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[23]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [23]),
        .I4(\reg_rddin_reg[0][31]_1 [23]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][24]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[24]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [24]),
        .I4(\reg_rddin_reg[0][31]_1 [24]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][25]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[25]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [25]),
        .I4(\reg_rddin_reg[0][31]_1 [25]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][26]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[26]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [26]),
        .I4(\reg_rddin_reg[0][31]_1 [26]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][27]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[27]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [27]),
        .I4(\reg_rddin_reg[0][31]_1 [27]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][28]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[28]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [28]),
        .I4(\reg_rddin_reg[0][31]_1 [28]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][29]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[29]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [29]),
        .I4(\reg_rddin_reg[0][31]_1 [29]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][2]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[2]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [2]),
        .I4(\reg_rddin_reg[0][31]_1 [2]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][30]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[30]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [30]),
        .I4(\reg_rddin_reg[0][31]_1 [30]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][31]_i_2 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[31]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [31]),
        .I4(\reg_rddin_reg[0][31]_1 [31]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \reg_rddin[0][31]_i_3 
       (.I0(sw_write32_0[28]),
        .I1(sw_write32_0[29]),
        .I2(sw_write32_0[30]),
        .I3(sw_write32_0[31]),
        .O(\reg_rddin[0][31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \reg_rddin[0][31]_i_4 
       (.I0(sw_write32_0[28]),
        .I1(sw_write32_0[29]),
        .I2(sw_write32_0[30]),
        .I3(sw_write32_0[31]),
        .O(\reg_rddin[0][31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \reg_rddin[0][31]_i_5 
       (.I0(sw_write32_0[28]),
        .I1(sw_write32_0[29]),
        .I2(sw_write32_0[30]),
        .I3(sw_write32_0[31]),
        .O(\reg_rddin[0][31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][3]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[3]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [3]),
        .I4(\reg_rddin_reg[0][31]_1 [3]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][4]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[4]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [4]),
        .I4(\reg_rddin_reg[0][31]_1 [4]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][5]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[5]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [5]),
        .I4(\reg_rddin_reg[0][31]_1 [5]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][6]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[6]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [6]),
        .I4(\reg_rddin_reg[0][31]_1 [6]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][7]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[7]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [7]),
        .I4(\reg_rddin_reg[0][31]_1 [7]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][8]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[8]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [8]),
        .I4(\reg_rddin_reg[0][31]_1 [8]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[0][9]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_data32[9]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[0][31]_0 [9]),
        .I4(\reg_rddin_reg[0][31]_1 [9]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[0][9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][0]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[0]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [0]),
        .I4(\reg_rddin_reg[1][31]_1 [0]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][10]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[10]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [10]),
        .I4(\reg_rddin_reg[1][31]_1 [10]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][11]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[11]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [11]),
        .I4(\reg_rddin_reg[1][31]_1 [11]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][12]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[12]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [12]),
        .I4(\reg_rddin_reg[1][31]_1 [12]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][13]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[13]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [13]),
        .I4(\reg_rddin_reg[1][31]_1 [13]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][14]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[14]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [14]),
        .I4(\reg_rddin_reg[1][31]_1 [14]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][15]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[15]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [15]),
        .I4(\reg_rddin_reg[1][31]_1 [15]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][16]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[16]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [16]),
        .I4(\reg_rddin_reg[1][31]_1 [16]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][17]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[17]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [17]),
        .I4(\reg_rddin_reg[1][31]_1 [17]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][18]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[18]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [18]),
        .I4(\reg_rddin_reg[1][31]_1 [18]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][19]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[19]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [19]),
        .I4(\reg_rddin_reg[1][31]_1 [19]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][1]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[1]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [1]),
        .I4(\reg_rddin_reg[1][31]_1 [1]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][20]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[20]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [20]),
        .I4(\reg_rddin_reg[1][31]_1 [20]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][21]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[21]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [21]),
        .I4(\reg_rddin_reg[1][31]_1 [21]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][22]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[22]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [22]),
        .I4(\reg_rddin_reg[1][31]_1 [22]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][23]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[23]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [23]),
        .I4(\reg_rddin_reg[1][31]_1 [23]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][24]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[24]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [24]),
        .I4(\reg_rddin_reg[1][31]_1 [24]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][25]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[25]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [25]),
        .I4(\reg_rddin_reg[1][31]_1 [25]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][26]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[26]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [26]),
        .I4(\reg_rddin_reg[1][31]_1 [26]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][27]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[27]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [27]),
        .I4(\reg_rddin_reg[1][31]_1 [27]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][28]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[28]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [28]),
        .I4(\reg_rddin_reg[1][31]_1 [28]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][29]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[29]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [29]),
        .I4(\reg_rddin_reg[1][31]_1 [29]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][2]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[2]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [2]),
        .I4(\reg_rddin_reg[1][31]_1 [2]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][30]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[30]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [30]),
        .I4(\reg_rddin_reg[1][31]_1 [30]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][31]_i_2 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[31]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [31]),
        .I4(\reg_rddin_reg[1][31]_1 [31]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][3]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[3]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [3]),
        .I4(\reg_rddin_reg[1][31]_1 [3]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][4]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[4]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [4]),
        .I4(\reg_rddin_reg[1][31]_1 [4]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][5]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[5]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [5]),
        .I4(\reg_rddin_reg[1][31]_1 [5]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][6]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[6]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [6]),
        .I4(\reg_rddin_reg[1][31]_1 [6]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][7]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[7]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [7]),
        .I4(\reg_rddin_reg[1][31]_1 [7]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][8]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[8]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [8]),
        .I4(\reg_rddin_reg[1][31]_1 [8]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \reg_rddin[1][9]_i_1 
       (.I0(\reg_rddin[0][31]_i_3_n_0 ),
        .I1(fw_read_status32[9]),
        .I2(\reg_rddin[0][31]_i_4_n_0 ),
        .I3(\reg_rddin_reg[1][31]_0 [9]),
        .I4(\reg_rddin_reg[1][31]_1 [9]),
        .I5(\reg_rddin[0][31]_i_5_n_0 ),
        .O(\reg_rddin[1][9]_i_1_n_0 ));
  FDRE \reg_rddin_reg[0][0] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][0]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [0]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][10] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][10]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [10]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][11] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][11]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [11]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][12] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][12]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [12]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][13] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][13]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [13]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][14] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][14]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [14]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][15] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][15]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [15]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][16] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][16]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [16]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][17] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][17]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [17]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][18] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][18]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [18]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][19] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][19]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [19]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][1] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][1]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [1]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][20] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][20]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [20]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][21] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][21]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [21]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][22] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][22]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [22]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][23] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][23]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [23]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][24] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][24]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [24]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][25] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][25]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [25]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][26] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][26]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [26]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][27] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][27]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [27]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][28] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][28]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [28]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][29] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][29]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [29]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][2] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][2]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [2]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][30] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][30]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [30]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][31] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][31]_i_2_n_0 ),
        .Q(\reg_rddin_reg[0] [31]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][3] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][3]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [3]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][4] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][4]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [4]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][5] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][5]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [5]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][6] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][6]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [6]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][7] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][7]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [7]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][8] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][8]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [8]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[0][9] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[0]_7 ),
        .D(\reg_rddin[0][9]_i_1_n_0 ),
        .Q(\reg_rddin_reg[0] [9]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][0] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][0]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [0]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][10] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][10]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [10]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][11] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][11]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [11]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][12] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][12]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [12]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][13] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][13]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [13]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][14] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][14]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [14]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][15] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][15]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [15]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][16] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][16]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [16]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][17] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][17]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [17]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][18] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][18]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [18]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][19] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][19]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [19]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][1] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][1]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [1]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][20] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][20]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [20]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][21] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][21]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [21]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][22] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][22]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [22]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][23] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][23]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [23]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][24] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][24]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [24]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][25] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][25]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [25]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][26] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][26]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [26]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][27] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][27]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [27]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][28] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][28]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [28]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][29] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][29]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [29]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][2] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][2]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [2]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][30] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][30]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [30]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][31] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][31]_i_2_n_0 ),
        .Q(\reg_rddin_reg[1] [31]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][3] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][3]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [3]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][4] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][4]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [4]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][5] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][5]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [5]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][6] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][6]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [6]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][7] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][7]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [7]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][8] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][8]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [8]),
        .R(p_0_in));
  FDRE \reg_rddin_reg[1][9] 
       (.C(S_AXI_ACLK),
        .CE(\reg_rdStrobe[1]_6 ),
        .D(\reg_rddin[1][9]_i_1_n_0 ),
        .Q(\reg_rddin_reg[1] [9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    reset_not_iob_i_1
       (.I0(super_pixel_sel_iob_i_2_n_0),
        .I1(fw_reset_not[0]),
        .I2(super_pixel_sel_iob_i_3_n_0),
        .I3(fw_reset_not[1]),
        .I4(fw_reset_not[2]),
        .I5(super_pixel_sel_iob_i_4_n_0),
        .O(\sw_write32_0_reg[29]_7 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    scan_in_iob_i_1
       (.I0(super_pixel_sel_iob_i_2_n_0),
        .I1(fw_scan_in[0]),
        .I2(super_pixel_sel_iob_i_3_n_0),
        .I3(fw_scan_in[1]),
        .I4(fw_scan_in[2]),
        .I5(super_pixel_sel_iob_i_4_n_0),
        .O(\sw_write32_0_reg[29]_1 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    scan_load_iob_i_1
       (.I0(super_pixel_sel_iob_i_2_n_0),
        .I1(fw_scan_load[0]),
        .I2(super_pixel_sel_iob_i_3_n_0),
        .I3(fw_scan_load[1]),
        .I4(fw_scan_load[2]),
        .I5(super_pixel_sel_iob_i_4_n_0),
        .O(\sw_write32_0_reg[29]_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    super_pixel_sel_iob_i_1
       (.I0(super_pixel_sel_iob_i_2_n_0),
        .I1(fw_super_pixel_sel[0]),
        .I2(super_pixel_sel_iob_i_3_n_0),
        .I3(fw_super_pixel_sel[1]),
        .I4(fw_super_pixel_sel[2]),
        .I5(super_pixel_sel_iob_i_4_n_0),
        .O(\sw_write32_0_reg[29]_9 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    super_pixel_sel_iob_i_2
       (.I0(sw_write32_0[29]),
        .I1(sw_write32_0[30]),
        .I2(sw_write32_0[28]),
        .I3(sw_write32_0[31]),
        .I4(\fw_config_out_reg[2]_i_3_n_0 ),
        .O(super_pixel_sel_iob_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    super_pixel_sel_iob_i_3
       (.I0(sw_write32_0[30]),
        .I1(sw_write32_0[29]),
        .I2(sw_write32_0[28]),
        .I3(\fw_config_out_reg[2]_i_3_n_0 ),
        .I4(sw_write32_0[31]),
        .O(super_pixel_sel_iob_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    super_pixel_sel_iob_i_4
       (.I0(sw_write32_0[29]),
        .I1(sw_write32_0[30]),
        .I2(sw_write32_0[28]),
        .I3(\fw_config_out_reg[2]_i_3_n_0 ),
        .I4(sw_write32_0[31]),
        .O(super_pixel_sel_iob_i_4_n_0));
  FDRE \sw_write32_0_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [0]),
        .D(S_AXI_WDATA[0]),
        .Q(Q[0]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [1]),
        .D(S_AXI_WDATA[10]),
        .Q(Q[10]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [1]),
        .D(S_AXI_WDATA[11]),
        .Q(Q[11]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [1]),
        .D(S_AXI_WDATA[12]),
        .Q(Q[12]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [1]),
        .D(S_AXI_WDATA[13]),
        .Q(Q[13]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [1]),
        .D(S_AXI_WDATA[14]),
        .Q(Q[14]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [1]),
        .D(S_AXI_WDATA[15]),
        .Q(Q[15]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [2]),
        .D(S_AXI_WDATA[16]),
        .Q(Q[16]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [2]),
        .D(S_AXI_WDATA[17]),
        .Q(Q[17]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [2]),
        .D(S_AXI_WDATA[18]),
        .Q(Q[18]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [2]),
        .D(S_AXI_WDATA[19]),
        .Q(Q[19]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [0]),
        .D(S_AXI_WDATA[1]),
        .Q(Q[1]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [2]),
        .D(S_AXI_WDATA[20]),
        .Q(Q[20]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [2]),
        .D(S_AXI_WDATA[21]),
        .Q(Q[21]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [2]),
        .D(S_AXI_WDATA[22]),
        .Q(Q[22]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [2]),
        .D(S_AXI_WDATA[23]),
        .Q(Q[23]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [3]),
        .D(S_AXI_WDATA[24]),
        .Q(Q[24]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [3]),
        .D(S_AXI_WDATA[25]),
        .Q(Q[25]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [3]),
        .D(S_AXI_WDATA[26]),
        .Q(Q[26]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [3]),
        .D(S_AXI_WDATA[27]),
        .Q(Q[27]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [3]),
        .D(S_AXI_WDATA[28]),
        .Q(sw_write32_0[28]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [3]),
        .D(S_AXI_WDATA[29]),
        .Q(sw_write32_0[29]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [0]),
        .D(S_AXI_WDATA[2]),
        .Q(Q[2]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [3]),
        .D(S_AXI_WDATA[30]),
        .Q(sw_write32_0[30]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [3]),
        .D(S_AXI_WDATA[31]),
        .Q(sw_write32_0[31]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [0]),
        .D(S_AXI_WDATA[3]),
        .Q(Q[3]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [0]),
        .D(S_AXI_WDATA[4]),
        .Q(Q[4]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [0]),
        .D(S_AXI_WDATA[5]),
        .Q(Q[5]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [0]),
        .D(S_AXI_WDATA[6]),
        .Q(Q[6]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [0]),
        .D(S_AXI_WDATA[7]),
        .Q(Q[7]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [1]),
        .D(S_AXI_WDATA[8]),
        .Q(Q[8]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_8 [1]),
        .D(S_AXI_WDATA[9]),
        .Q(Q[9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    vin_test_trig_out_iob_i_1
       (.I0(super_pixel_sel_iob_i_2_n_0),
        .I1(fw_vin_test_trig_out[0]),
        .I2(super_pixel_sel_iob_i_3_n_0),
        .I3(fw_vin_test_trig_out[1]),
        .I4(fw_vin_test_trig_out[2]),
        .I5(super_pixel_sel_iob_i_4_n_0),
        .O(\sw_write32_0_reg[29]_2 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_slave_interface
   (axi_arready_reg_0,
    SR,
    axi_awready_reg_0,
    axi_wready_reg_0,
    S_AXI_BVALID,
    axi_rvalid_reg_0,
    S_AXI_RDATA,
    E,
    axi_arready_reg_1,
    \axi_awaddr_reg[2]_0 ,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_BREADY,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_RREADY,
    S_AXI_ARVALID,
    S_AXI_ARADDR,
    S_AXI_AWADDR,
    Q,
    \axi_rdata_reg[31]_0 ,
    S_AXI_WSTRB);
  output axi_arready_reg_0;
  output [0:0]SR;
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output S_AXI_BVALID;
  output axi_rvalid_reg_0;
  output [31:0]S_AXI_RDATA;
  output [0:0]E;
  output [0:0]axi_arready_reg_1;
  output [3:0]\axi_awaddr_reg[2]_0 ;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input S_AXI_BREADY;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_RREADY;
  input S_AXI_ARVALID;
  input [8:0]S_AXI_ARADDR;
  input [8:0]S_AXI_AWADDR;
  input [31:0]Q;
  input [31:0]\axi_rdata_reg[31]_0 ;
  input [3:0]S_AXI_WSTRB;

  wire [0:0]E;
  wire [31:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [8:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARVALID;
  wire [8:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire [0:0]axi_arready_reg_1;
  wire [3:0]\axi_awaddr_reg[2]_0 ;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire [8:0]axi_mem_rdAddr;
  wire axi_mem_rdStrobe;
  wire [8:0]axi_mem_wrAddr;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[31]_i_4_n_0 ;
  wire [31:0]\axi_rdata_reg[31]_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire [31:0]mem_rddout_i;
  wire p_10_in;
  wire \sw_write32_0[31]_i_3_n_0 ;

  LUT6 #(
    .INIT(64'hFFFF88880FFF8888)) 
    aw_en_i_1
       (.I0(S_AXI_BREADY),
        .I1(S_AXI_BVALID),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .I4(aw_en_reg_n_0),
        .I5(axi_awready_reg_0),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(SR));
  FDRE \axi_araddr_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[8]),
        .Q(axi_mem_rdAddr[8]),
        .R(SR));
  FDRE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[0]),
        .Q(axi_mem_rdAddr[0]),
        .R(SR));
  FDRE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[1]),
        .Q(axi_mem_rdAddr[1]),
        .R(SR));
  FDRE \axi_araddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[2]),
        .Q(axi_mem_rdAddr[2]),
        .R(SR));
  FDRE \axi_araddr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[3]),
        .Q(axi_mem_rdAddr[3]),
        .R(SR));
  FDRE \axi_araddr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[4]),
        .Q(axi_mem_rdAddr[4]),
        .R(SR));
  FDRE \axi_araddr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[5]),
        .Q(axi_mem_rdAddr[5]),
        .R(SR));
  FDRE \axi_araddr_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[6]),
        .Q(axi_mem_rdAddr[6]),
        .R(SR));
  FDRE \axi_araddr_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[7]),
        .Q(axi_mem_rdAddr[7]),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(SR));
  FDRE \axi_awaddr_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[8]),
        .Q(axi_mem_wrAddr[8]),
        .R(SR));
  FDRE \axi_awaddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[0]),
        .Q(axi_mem_wrAddr[0]),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[1]),
        .Q(axi_mem_wrAddr[1]),
        .R(SR));
  FDRE \axi_awaddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[2]),
        .Q(axi_mem_wrAddr[2]),
        .R(SR));
  FDRE \axi_awaddr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[3]),
        .Q(axi_mem_wrAddr[3]),
        .R(SR));
  FDRE \axi_awaddr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[4]),
        .Q(axi_mem_wrAddr[4]),
        .R(SR));
  FDRE \axi_awaddr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[5]),
        .Q(axi_mem_wrAddr[5]),
        .R(SR));
  FDRE \axi_awaddr_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[6]),
        .Q(axi_mem_wrAddr[6]),
        .R(SR));
  FDRE \axi_awaddr_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[7]),
        .Q(axi_mem_wrAddr[7]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(SR));
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_2
       (.I0(axi_awready_reg_0),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h55555555C0000000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_BREADY),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWVALID),
        .I3(axi_wready_reg_0),
        .I4(axi_awready_reg_0),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(SR));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[0]_i_1 
       (.I0(Q[0]),
        .I1(\axi_rdata_reg[31]_0 [0]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[0]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[10]_i_1 
       (.I0(Q[10]),
        .I1(\axi_rdata_reg[31]_0 [10]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[10]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[11]_i_1 
       (.I0(Q[11]),
        .I1(\axi_rdata_reg[31]_0 [11]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[11]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[12]_i_1 
       (.I0(Q[12]),
        .I1(\axi_rdata_reg[31]_0 [12]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[12]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[13]_i_1 
       (.I0(Q[13]),
        .I1(\axi_rdata_reg[31]_0 [13]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[13]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[14]_i_1 
       (.I0(Q[14]),
        .I1(\axi_rdata_reg[31]_0 [14]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[14]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[15]_i_1 
       (.I0(Q[15]),
        .I1(\axi_rdata_reg[31]_0 [15]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[15]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[16]_i_1 
       (.I0(Q[16]),
        .I1(\axi_rdata_reg[31]_0 [16]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[16]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[17]_i_1 
       (.I0(Q[17]),
        .I1(\axi_rdata_reg[31]_0 [17]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[17]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[18]_i_1 
       (.I0(Q[18]),
        .I1(\axi_rdata_reg[31]_0 [18]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[18]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[19]_i_1 
       (.I0(Q[19]),
        .I1(\axi_rdata_reg[31]_0 [19]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[19]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[1]_i_1 
       (.I0(Q[1]),
        .I1(\axi_rdata_reg[31]_0 [1]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[1]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[20]_i_1 
       (.I0(Q[20]),
        .I1(\axi_rdata_reg[31]_0 [20]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[20]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[21]_i_1 
       (.I0(Q[21]),
        .I1(\axi_rdata_reg[31]_0 [21]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[21]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[22]_i_1 
       (.I0(Q[22]),
        .I1(\axi_rdata_reg[31]_0 [22]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[22]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[23]_i_1 
       (.I0(Q[23]),
        .I1(\axi_rdata_reg[31]_0 [23]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[23]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[24]_i_1 
       (.I0(Q[24]),
        .I1(\axi_rdata_reg[31]_0 [24]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[24]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[25]_i_1 
       (.I0(Q[25]),
        .I1(\axi_rdata_reg[31]_0 [25]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[25]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[26]_i_1 
       (.I0(Q[26]),
        .I1(\axi_rdata_reg[31]_0 [26]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[26]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[27]_i_1 
       (.I0(Q[27]),
        .I1(\axi_rdata_reg[31]_0 [27]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[27]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[28]_i_1 
       (.I0(Q[28]),
        .I1(\axi_rdata_reg[31]_0 [28]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[28]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[29]_i_1 
       (.I0(Q[29]),
        .I1(\axi_rdata_reg[31]_0 [29]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[29]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[2]_i_1 
       (.I0(Q[2]),
        .I1(\axi_rdata_reg[31]_0 [2]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[2]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[30]_i_1 
       (.I0(Q[30]),
        .I1(\axi_rdata_reg[31]_0 [30]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[30]));
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata[31]_i_1 
       (.I0(axi_rvalid_reg_0),
        .I1(S_AXI_ARVALID),
        .I2(axi_arready_reg_0),
        .O(axi_mem_rdStrobe));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[31]_i_2 
       (.I0(Q[31]),
        .I1(\axi_rdata_reg[31]_0 [31]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[31]));
  LUT4 #(
    .INIT(16'h0001)) 
    \axi_rdata[31]_i_3 
       (.I0(axi_mem_rdAddr[8]),
        .I1(axi_mem_rdAddr[7]),
        .I2(axi_mem_rdAddr[6]),
        .I3(axi_mem_rdAddr[5]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \axi_rdata[31]_i_4 
       (.I0(axi_mem_rdAddr[4]),
        .I1(axi_mem_rdAddr[3]),
        .I2(axi_mem_rdAddr[2]),
        .I3(axi_mem_rdAddr[1]),
        .O(\axi_rdata[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[3]_i_1 
       (.I0(Q[3]),
        .I1(\axi_rdata_reg[31]_0 [3]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[3]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[4]_i_1 
       (.I0(Q[4]),
        .I1(\axi_rdata_reg[31]_0 [4]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[4]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[5]_i_1 
       (.I0(Q[5]),
        .I1(\axi_rdata_reg[31]_0 [5]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[5]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[6]_i_1 
       (.I0(Q[6]),
        .I1(\axi_rdata_reg[31]_0 [6]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[6]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[7]_i_1 
       (.I0(Q[7]),
        .I1(\axi_rdata_reg[31]_0 [7]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[7]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[8]_i_1 
       (.I0(Q[8]),
        .I1(\axi_rdata_reg[31]_0 [8]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[8]));
  LUT5 #(
    .INIT(32'hA000C000)) 
    \axi_rdata[9]_i_1 
       (.I0(Q[9]),
        .I1(\axi_rdata_reg[31]_0 [9]),
        .I2(\axi_rdata[31]_i_3_n_0 ),
        .I3(\axi_rdata[31]_i_4_n_0 ),
        .I4(axi_mem_rdAddr[0]),
        .O(mem_rddout_i[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[0]),
        .Q(S_AXI_RDATA[0]),
        .R(SR));
  FDRE \axi_rdata_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[10]),
        .Q(S_AXI_RDATA[10]),
        .R(SR));
  FDRE \axi_rdata_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[11]),
        .Q(S_AXI_RDATA[11]),
        .R(SR));
  FDRE \axi_rdata_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[12]),
        .Q(S_AXI_RDATA[12]),
        .R(SR));
  FDRE \axi_rdata_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[13]),
        .Q(S_AXI_RDATA[13]),
        .R(SR));
  FDRE \axi_rdata_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[14]),
        .Q(S_AXI_RDATA[14]),
        .R(SR));
  FDRE \axi_rdata_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[15]),
        .Q(S_AXI_RDATA[15]),
        .R(SR));
  FDRE \axi_rdata_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[16]),
        .Q(S_AXI_RDATA[16]),
        .R(SR));
  FDRE \axi_rdata_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[17]),
        .Q(S_AXI_RDATA[17]),
        .R(SR));
  FDRE \axi_rdata_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[18]),
        .Q(S_AXI_RDATA[18]),
        .R(SR));
  FDRE \axi_rdata_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[19]),
        .Q(S_AXI_RDATA[19]),
        .R(SR));
  FDRE \axi_rdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[1]),
        .Q(S_AXI_RDATA[1]),
        .R(SR));
  FDRE \axi_rdata_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[20]),
        .Q(S_AXI_RDATA[20]),
        .R(SR));
  FDRE \axi_rdata_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[21]),
        .Q(S_AXI_RDATA[21]),
        .R(SR));
  FDRE \axi_rdata_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[22]),
        .Q(S_AXI_RDATA[22]),
        .R(SR));
  FDRE \axi_rdata_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[23]),
        .Q(S_AXI_RDATA[23]),
        .R(SR));
  FDRE \axi_rdata_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[24]),
        .Q(S_AXI_RDATA[24]),
        .R(SR));
  FDRE \axi_rdata_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[25]),
        .Q(S_AXI_RDATA[25]),
        .R(SR));
  FDRE \axi_rdata_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[26]),
        .Q(S_AXI_RDATA[26]),
        .R(SR));
  FDRE \axi_rdata_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[27]),
        .Q(S_AXI_RDATA[27]),
        .R(SR));
  FDRE \axi_rdata_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[28]),
        .Q(S_AXI_RDATA[28]),
        .R(SR));
  FDRE \axi_rdata_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[29]),
        .Q(S_AXI_RDATA[29]),
        .R(SR));
  FDRE \axi_rdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[2]),
        .Q(S_AXI_RDATA[2]),
        .R(SR));
  FDRE \axi_rdata_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[30]),
        .Q(S_AXI_RDATA[30]),
        .R(SR));
  FDRE \axi_rdata_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[31]),
        .Q(S_AXI_RDATA[31]),
        .R(SR));
  FDRE \axi_rdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[3]),
        .Q(S_AXI_RDATA[3]),
        .R(SR));
  FDRE \axi_rdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[4]),
        .Q(S_AXI_RDATA[4]),
        .R(SR));
  FDRE \axi_rdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[5]),
        .Q(S_AXI_RDATA[5]),
        .R(SR));
  FDRE \axi_rdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[6]),
        .Q(S_AXI_RDATA[6]),
        .R(SR));
  FDRE \axi_rdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[7]),
        .Q(S_AXI_RDATA[7]),
        .R(SR));
  FDRE \axi_rdata_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[8]),
        .Q(S_AXI_RDATA[8]),
        .R(SR));
  FDRE \axi_rdata_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(axi_mem_rdStrobe),
        .D(mem_rddout_i[9]),
        .Q(S_AXI_RDATA[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h55C0)) 
    axi_rvalid_i_1
       (.I0(S_AXI_RREADY),
        .I1(axi_arready_reg_0),
        .I2(S_AXI_ARVALID),
        .I3(axi_rvalid_reg_0),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(axi_wready_reg_0),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \reg_rddin[0][31]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(S_AXI_ARVALID),
        .I2(axi_rvalid_reg_0),
        .I3(axi_mem_rdAddr[0]),
        .I4(\axi_rdata[31]_i_4_n_0 ),
        .I5(\axi_rdata[31]_i_3_n_0 ),
        .O(axi_arready_reg_1));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \reg_rddin[1][31]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(S_AXI_ARVALID),
        .I2(axi_rvalid_reg_0),
        .I3(axi_mem_rdAddr[0]),
        .I4(\axi_rdata[31]_i_4_n_0 ),
        .I5(\axi_rdata[31]_i_3_n_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \sw_write32_0[15]_i_1 
       (.I0(p_10_in),
        .I1(\sw_write32_0[31]_i_3_n_0 ),
        .I2(axi_mem_wrAddr[0]),
        .I3(axi_mem_wrAddr[1]),
        .I4(axi_mem_wrAddr[2]),
        .I5(S_AXI_WSTRB[1]),
        .O(\axi_awaddr_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \sw_write32_0[23]_i_1 
       (.I0(p_10_in),
        .I1(\sw_write32_0[31]_i_3_n_0 ),
        .I2(axi_mem_wrAddr[0]),
        .I3(axi_mem_wrAddr[1]),
        .I4(axi_mem_wrAddr[2]),
        .I5(S_AXI_WSTRB[2]),
        .O(\axi_awaddr_reg[2]_0 [2]));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \sw_write32_0[31]_i_1 
       (.I0(p_10_in),
        .I1(\sw_write32_0[31]_i_3_n_0 ),
        .I2(axi_mem_wrAddr[0]),
        .I3(axi_mem_wrAddr[1]),
        .I4(axi_mem_wrAddr[2]),
        .I5(S_AXI_WSTRB[3]),
        .O(\axi_awaddr_reg[2]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \sw_write32_0[31]_i_2 
       (.I0(axi_wready_reg_0),
        .I1(axi_awready_reg_0),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_WVALID),
        .O(p_10_in));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \sw_write32_0[31]_i_3 
       (.I0(axi_mem_wrAddr[3]),
        .I1(axi_mem_wrAddr[4]),
        .I2(axi_mem_wrAddr[5]),
        .I3(axi_mem_wrAddr[6]),
        .I4(axi_mem_wrAddr[8]),
        .I5(axi_mem_wrAddr[7]),
        .O(\sw_write32_0[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \sw_write32_0[7]_i_1 
       (.I0(p_10_in),
        .I1(\sw_write32_0[31]_i_3_n_0 ),
        .I2(axi_mem_wrAddr[0]),
        .I3(axi_mem_wrAddr[1]),
        .I4(axi_mem_wrAddr[2]),
        .I5(S_AXI_WSTRB[0]),
        .O(\axi_awaddr_reg[2]_0 [0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_ip1
   (fw_clk,
    fw_rst_n,
    fw_dev_id_enable,
    fw_op_code_w_reset,
    fw_op_code_w_cfg_static_0,
    fw_op_code_r_cfg_static_0,
    fw_op_code_w_cfg_array_0,
    fw_op_code_r_cfg_array_0,
    fw_op_code_w_cfg_array_1,
    fw_op_code_r_cfg_array_1,
    fw_op_code_r_data_array_0,
    fw_op_code_r_data_array_1,
    fw_op_code_r_status,
    fw_op_code_w_execute,
    sw_write24_0,
    fw_read_data32,
    fw_read_status32,
    fw_super_pixel_sel,
    fw_config_clk,
    fw_reset_not,
    fw_config_in,
    fw_config_load,
    fw_bxclk_ana,
    fw_bxclk,
    fw_vin_test_trig_out,
    fw_scan_in,
    fw_scan_load,
    fw_config_out,
    fw_scan_out,
    fw_dnn_output_0,
    fw_dnn_output_1,
    fw_dn_event_toggle);
  input fw_clk;
  input fw_rst_n;
  input fw_dev_id_enable;
  input fw_op_code_w_reset;
  input fw_op_code_w_cfg_static_0;
  input fw_op_code_r_cfg_static_0;
  input fw_op_code_w_cfg_array_0;
  input fw_op_code_r_cfg_array_0;
  input fw_op_code_w_cfg_array_1;
  input fw_op_code_r_cfg_array_1;
  input fw_op_code_r_data_array_0;
  input fw_op_code_r_data_array_1;
  input fw_op_code_r_status;
  input fw_op_code_w_execute;
  input [23:0]sw_write24_0;
  output [31:0]fw_read_data32;
  output [31:0]fw_read_status32;
  output fw_super_pixel_sel;
  output fw_config_clk;
  output fw_reset_not;
  output fw_config_in;
  output fw_config_load;
  output fw_bxclk_ana;
  output fw_bxclk;
  output fw_vin_test_trig_out;
  output fw_scan_in;
  output fw_scan_load;
  input fw_config_out;
  input fw_scan_out;
  input fw_dnn_output_0;
  input fw_dnn_output_1;
  input fw_dn_event_toggle;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_ip2
   (fw_clk,
    fw_rst_n,
    fw_dev_id_enable,
    fw_op_code_w_reset,
    fw_op_code_w_cfg_static_0,
    fw_op_code_r_cfg_static_0,
    fw_op_code_w_cfg_array_0,
    fw_op_code_r_cfg_array_0,
    fw_op_code_w_cfg_array_1,
    fw_op_code_r_cfg_array_1,
    fw_op_code_r_data_array_0,
    fw_op_code_r_data_array_1,
    fw_op_code_r_status,
    fw_op_code_w_execute,
    sw_write24_0,
    fw_read_data32,
    fw_read_status32,
    fw_super_pixel_sel,
    fw_config_clk,
    fw_reset_not,
    fw_config_in,
    fw_config_load,
    fw_bxclk_ana,
    fw_bxclk,
    fw_vin_test_trig_out,
    fw_scan_in,
    fw_scan_load,
    fw_config_out,
    fw_scan_out,
    fw_dnn_output_0,
    fw_dnn_output_1,
    fw_dn_event_toggle);
  input fw_clk;
  input fw_rst_n;
  input fw_dev_id_enable;
  input fw_op_code_w_reset;
  input fw_op_code_w_cfg_static_0;
  input fw_op_code_r_cfg_static_0;
  input fw_op_code_w_cfg_array_0;
  input fw_op_code_r_cfg_array_0;
  input fw_op_code_w_cfg_array_1;
  input fw_op_code_r_cfg_array_1;
  input fw_op_code_r_data_array_0;
  input fw_op_code_r_data_array_1;
  input fw_op_code_r_status;
  input fw_op_code_w_execute;
  input [23:0]sw_write24_0;
  output [31:0]fw_read_data32;
  output [31:0]fw_read_status32;
  output fw_super_pixel_sel;
  output fw_config_clk;
  output fw_reset_not;
  output fw_config_in;
  output fw_config_load;
  output fw_bxclk_ana;
  output fw_bxclk;
  output fw_vin_test_trig_out;
  output fw_scan_in;
  output fw_scan_load;
  input fw_config_out;
  input fw_scan_out;
  input fw_dnn_output_0;
  input fw_dnn_output_1;
  input fw_dn_event_toggle;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_ip3
   (fw_clk,
    fw_rst_n,
    fw_dev_id_enable,
    fw_op_code_w_reset,
    fw_op_code_w_cfg_static_0,
    fw_op_code_r_cfg_static_0,
    fw_op_code_w_cfg_array_0,
    fw_op_code_r_cfg_array_0,
    fw_op_code_w_cfg_array_1,
    fw_op_code_r_cfg_array_1,
    fw_op_code_r_data_array_0,
    fw_op_code_r_data_array_1,
    fw_op_code_r_status,
    fw_op_code_w_execute,
    sw_write24_0,
    fw_read_data32,
    fw_read_status32,
    fw_super_pixel_sel,
    fw_config_clk,
    fw_reset_not,
    fw_config_in,
    fw_config_load,
    fw_bxclk_ana,
    fw_bxclk,
    fw_vin_test_trig_out,
    fw_scan_in,
    fw_scan_load,
    fw_config_out,
    fw_scan_out,
    fw_dnn_output_0,
    fw_dnn_output_1,
    fw_dn_event_toggle);
  input fw_clk;
  input fw_rst_n;
  input fw_dev_id_enable;
  input fw_op_code_w_reset;
  input fw_op_code_w_cfg_static_0;
  input fw_op_code_r_cfg_static_0;
  input fw_op_code_w_cfg_array_0;
  input fw_op_code_r_cfg_array_0;
  input fw_op_code_w_cfg_array_1;
  input fw_op_code_r_cfg_array_1;
  input fw_op_code_r_data_array_0;
  input fw_op_code_r_data_array_1;
  input fw_op_code_r_status;
  input fw_op_code_w_execute;
  input [23:0]sw_write24_0;
  output [31:0]fw_read_data32;
  output [31:0]fw_read_status32;
  output fw_super_pixel_sel;
  output fw_config_clk;
  output fw_reset_not;
  output fw_config_in;
  output fw_config_load;
  output fw_bxclk_ana;
  output fw_bxclk;
  output fw_vin_test_trig_out;
  output fw_scan_in;
  output fw_scan_load;
  input fw_config_out;
  input fw_scan_out;
  input fw_dnn_output_0;
  input fw_dnn_output_1;
  input fw_dn_event_toggle;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_top
   (S_AXI_ARREADY,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_RDATA,
    super_pixel_sel,
    config_clk,
    reset_not,
    config_in,
    config_load,
    bxclk_ana,
    bxclk,
    vin_test_trig_out,
    scan_in,
    scan_load,
    axi_rvalid_reg,
    S_AXI_BVALID,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_ARADDR,
    S_AXI_AWADDR,
    S_AXI_WDATA,
    config_out,
    scan_out,
    dnn_output_0,
    dnn_output_1,
    dn_event_toggle,
    S_AXI_ARVALID,
    S_AXI_WSTRB,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output S_AXI_ARREADY;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [31:0]S_AXI_RDATA;
  output super_pixel_sel;
  output config_clk;
  output reset_not;
  output config_in;
  output config_load;
  output bxclk_ana;
  output bxclk;
  output vin_test_trig_out;
  output scan_in;
  output scan_load;
  output axi_rvalid_reg;
  output S_AXI_BVALID;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [8:0]S_AXI_ARADDR;
  input [8:0]S_AXI_AWADDR;
  input [31:0]S_AXI_WDATA;
  input config_out;
  input scan_out;
  input dnn_output_0;
  input dnn_output_1;
  input dn_event_toggle;
  input S_AXI_ARVALID;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_BREADY;
  input S_AXI_RREADY;

  wire S_AXI_ACLK;
  wire [8:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [8:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_100;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_101;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_102;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_103;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_76;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_77;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_78;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_79;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_80;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_81;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_82;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_83;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_84;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_85;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_86;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_87;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_88;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_89;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_90;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_91;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_92;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_93;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_94;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_95;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_96;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_97;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_98;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_99;
  wire axi_rvalid_reg;
  wire bxclk;
  wire bxclk_ana;
  wire config_clk;
  wire config_in;
  wire config_load;
  wire config_out;
  wire dn_event_toggle;
  wire dnn_output_0;
  wire dnn_output_0_iob;
  wire dnn_output_1;
  wire dnn_output_1_iob;
  wire [2:0]fw_bxclk;
  wire [2:0]fw_bxclk_ana;
  wire [2:0]fw_config_clk;
  wire [2:0]fw_config_in;
  wire [2:0]fw_config_load;
  wire [2:0]fw_config_out;
  wire [2:0]fw_dev_id_enable;
  wire [2:0]fw_dn_event_toggle;
  wire [2:0]fw_dnn_output_0;
  wire [2:0]fw_dnn_output_1;
  wire fw_op_code_r_cfg_array_0;
  wire fw_op_code_r_cfg_array_1;
  wire fw_op_code_r_cfg_static_0;
  wire fw_op_code_r_data_array_0;
  wire fw_op_code_r_data_array_1;
  wire fw_op_code_r_status;
  wire fw_op_code_w_cfg_array_0;
  wire fw_op_code_w_cfg_array_1;
  wire fw_op_code_w_cfg_static_0;
  wire fw_op_code_w_execute;
  wire fw_op_code_w_reset;
  wire [31:0]\fw_read_data32[0]_1 ;
  wire [31:0]\fw_read_data32[1]_3 ;
  wire [31:0]\fw_read_data32[2]_5 ;
  wire [31:0]\fw_read_status32[0]_0 ;
  wire [31:0]\fw_read_status32[1]_2 ;
  wire [31:0]\fw_read_status32[2]_4 ;
  wire [2:0]fw_reset_not;
  wire [2:0]fw_scan_in;
  wire [2:0]fw_scan_load;
  wire [2:0]fw_scan_out;
  wire [2:0]fw_super_pixel_sel;
  wire [2:0]fw_vin_test_trig_out;
  wire p_0_in;
  wire [0:0]p_0_in_0;
  wire [0:0]p_3_in;
  wire reset_not;
  wire scan_in;
  wire scan_load;
  wire scan_out;
  wire scan_out_iob;
  wire super_pixel_sel;
  wire [27:0]sw_write32_0;
  wire vin_test_trig_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top_for_pix28_fw axi4lite_interface_top_for_pix28_fw_inst
       (.D({axi4lite_interface_top_for_pix28_fw_inst_n_76,axi4lite_interface_top_for_pix28_fw_inst_n_77,axi4lite_interface_top_for_pix28_fw_inst_n_78}),
        .E({axi4lite_interface_top_for_pix28_fw_inst_n_101,axi4lite_interface_top_for_pix28_fw_inst_n_102,axi4lite_interface_top_for_pix28_fw_inst_n_103}),
        .Q(sw_write32_0),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .axi_arready_reg(S_AXI_ARREADY),
        .axi_awready_reg(S_AXI_AWREADY),
        .axi_rvalid_reg(axi_rvalid_reg),
        .axi_wready_reg(S_AXI_WREADY),
        .dnn_output_0_iob(dnn_output_0_iob),
        .dnn_output_1_iob(dnn_output_1_iob),
        .fw_bxclk(fw_bxclk),
        .fw_bxclk_ana(fw_bxclk_ana),
        .fw_config_clk(fw_config_clk),
        .fw_config_in(fw_config_in),
        .fw_config_load(fw_config_load),
        .fw_dev_id_enable(fw_dev_id_enable),
        .fw_op_code_r_cfg_array_1(fw_op_code_r_cfg_array_1),
        .fw_op_code_r_cfg_static_0(fw_op_code_r_cfg_static_0),
        .fw_op_code_r_data_array_0(fw_op_code_r_data_array_0),
        .fw_op_code_w_cfg_array_0(fw_op_code_w_cfg_array_0),
        .fw_op_code_w_cfg_static_0(fw_op_code_w_cfg_static_0),
        .fw_op_code_w_execute(fw_op_code_w_execute),
        .fw_op_code_w_reset(fw_op_code_w_reset),
        .fw_read_data32(\fw_read_data32[2]_5 ),
        .fw_read_status32(\fw_read_status32[2]_4 ),
        .fw_reset_not(fw_reset_not),
        .fw_scan_in(fw_scan_in),
        .fw_scan_load(fw_scan_load),
        .fw_super_pixel_sel(fw_super_pixel_sel),
        .fw_vin_test_trig_out(fw_vin_test_trig_out),
        .p_0_in(p_0_in),
        .p_0_in_0(p_0_in_0),
        .p_3_in(p_3_in),
        .\reg_rddin_reg[0][31]_0 (\fw_read_data32[1]_3 ),
        .\reg_rddin_reg[0][31]_1 (\fw_read_data32[0]_1 ),
        .\reg_rddin_reg[1][31]_0 (\fw_read_status32[1]_2 ),
        .\reg_rddin_reg[1][31]_1 (\fw_read_status32[0]_0 ),
        .scan_out_iob(scan_out_iob),
        .\sw_write32_0_reg[29]_0 (axi4lite_interface_top_for_pix28_fw_inst_n_79),
        .\sw_write32_0_reg[29]_1 (axi4lite_interface_top_for_pix28_fw_inst_n_80),
        .\sw_write32_0_reg[29]_2 (axi4lite_interface_top_for_pix28_fw_inst_n_81),
        .\sw_write32_0_reg[29]_3 (axi4lite_interface_top_for_pix28_fw_inst_n_82),
        .\sw_write32_0_reg[29]_4 (axi4lite_interface_top_for_pix28_fw_inst_n_83),
        .\sw_write32_0_reg[29]_5 (axi4lite_interface_top_for_pix28_fw_inst_n_84),
        .\sw_write32_0_reg[29]_6 (axi4lite_interface_top_for_pix28_fw_inst_n_85),
        .\sw_write32_0_reg[29]_7 (axi4lite_interface_top_for_pix28_fw_inst_n_86),
        .\sw_write32_0_reg[29]_8 (axi4lite_interface_top_for_pix28_fw_inst_n_87),
        .\sw_write32_0_reg[29]_9 (axi4lite_interface_top_for_pix28_fw_inst_n_88),
        .\sw_write32_0_reg[31]_0 ({axi4lite_interface_top_for_pix28_fw_inst_n_89,axi4lite_interface_top_for_pix28_fw_inst_n_90,axi4lite_interface_top_for_pix28_fw_inst_n_91}),
        .\sw_write32_0_reg[31]_1 ({axi4lite_interface_top_for_pix28_fw_inst_n_92,axi4lite_interface_top_for_pix28_fw_inst_n_93,axi4lite_interface_top_for_pix28_fw_inst_n_94}),
        .\sw_write32_0_reg[31]_2 ({axi4lite_interface_top_for_pix28_fw_inst_n_95,axi4lite_interface_top_for_pix28_fw_inst_n_96,axi4lite_interface_top_for_pix28_fw_inst_n_97}),
        .\sw_write32_0_reg[31]_3 ({axi4lite_interface_top_for_pix28_fw_inst_n_98,axi4lite_interface_top_for_pix28_fw_inst_n_99,axi4lite_interface_top_for_pix28_fw_inst_n_100}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_common_fw_to_dut_side common_fw_to_dut_side_inst
       (.D({axi4lite_interface_top_for_pix28_fw_inst_n_98,axi4lite_interface_top_for_pix28_fw_inst_n_99,axi4lite_interface_top_for_pix28_fw_inst_n_100}),
        .E({axi4lite_interface_top_for_pix28_fw_inst_n_101,axi4lite_interface_top_for_pix28_fw_inst_n_102,axi4lite_interface_top_for_pix28_fw_inst_n_103}),
        .Q(fw_config_out),
        .S_AXI_ACLK(S_AXI_ACLK),
        .bxclk(bxclk),
        .bxclk_ana(bxclk_ana),
        .bxclk_ana_iob_reg_0(axi4lite_interface_top_for_pix28_fw_inst_n_83),
        .bxclk_iob_reg_0(axi4lite_interface_top_for_pix28_fw_inst_n_82),
        .config_clk(config_clk),
        .config_clk_iob_reg_0(axi4lite_interface_top_for_pix28_fw_inst_n_87),
        .config_in(config_in),
        .config_in_iob_reg_0(axi4lite_interface_top_for_pix28_fw_inst_n_85),
        .config_load(config_load),
        .config_load_iob_reg_0(axi4lite_interface_top_for_pix28_fw_inst_n_84),
        .config_out(config_out),
        .dn_event_toggle(dn_event_toggle),
        .dnn_output_0(dnn_output_0),
        .dnn_output_0_iob(dnn_output_0_iob),
        .dnn_output_1(dnn_output_1),
        .dnn_output_1_iob(dnn_output_1_iob),
        .p_0_in(p_0_in),
        .p_0_in_0(p_0_in_0),
        .p_3_in(p_3_in),
        .pix_28_fw_ip3_inst({axi4lite_interface_top_for_pix28_fw_inst_n_95,axi4lite_interface_top_for_pix28_fw_inst_n_96,axi4lite_interface_top_for_pix28_fw_inst_n_97}),
        .pix_28_fw_ip3_inst_0({axi4lite_interface_top_for_pix28_fw_inst_n_92,axi4lite_interface_top_for_pix28_fw_inst_n_93,axi4lite_interface_top_for_pix28_fw_inst_n_94}),
        .pix_28_fw_ip3_inst_1({axi4lite_interface_top_for_pix28_fw_inst_n_89,axi4lite_interface_top_for_pix28_fw_inst_n_90,axi4lite_interface_top_for_pix28_fw_inst_n_91}),
        .pix_28_fw_ip3_inst_2({axi4lite_interface_top_for_pix28_fw_inst_n_76,axi4lite_interface_top_for_pix28_fw_inst_n_77,axi4lite_interface_top_for_pix28_fw_inst_n_78}),
        .pix_28_fw_ip3_inst_3(fw_dev_id_enable[2:1]),
        .reset_not(reset_not),
        .reset_not_iob_reg_0(axi4lite_interface_top_for_pix28_fw_inst_n_86),
        .scan_in(scan_in),
        .scan_in_iob_reg_0(axi4lite_interface_top_for_pix28_fw_inst_n_80),
        .scan_load(scan_load),
        .scan_load_iob_reg_0(axi4lite_interface_top_for_pix28_fw_inst_n_79),
        .scan_out(scan_out),
        .scan_out_iob(scan_out_iob),
        .super_pixel_sel(super_pixel_sel),
        .super_pixel_sel_iob_reg_0(axi4lite_interface_top_for_pix28_fw_inst_n_88),
        .\sw_write32_0_reg[31] (fw_scan_out),
        .\sw_write32_0_reg[31]_0 (fw_dnn_output_0),
        .\sw_write32_0_reg[31]_1 (fw_dnn_output_1),
        .\sw_write32_0_reg[31]_2 (fw_dn_event_toggle),
        .vin_test_trig_out(vin_test_trig_out),
        .vin_test_trig_out_iob_reg_0(axi4lite_interface_top_for_pix28_fw_inst_n_81));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_common_sw_to_fw_side common_sw_to_fw_side_inst
       (.Q(sw_write32_0[27:24]),
        .fw_op_code_r_cfg_array_0(fw_op_code_r_cfg_array_0),
        .fw_op_code_r_data_array_1(fw_op_code_r_data_array_1),
        .fw_op_code_r_status(fw_op_code_r_status),
        .fw_op_code_w_cfg_array_1(fw_op_code_w_cfg_array_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_ip1 pix_28_fw_ip1_inst
       (.fw_bxclk(fw_bxclk[0]),
        .fw_bxclk_ana(fw_bxclk_ana[0]),
        .fw_clk(S_AXI_ACLK),
        .fw_config_clk(fw_config_clk[0]),
        .fw_config_in(fw_config_in[0]),
        .fw_config_load(fw_config_load[0]),
        .fw_config_out(fw_config_out[0]),
        .fw_dev_id_enable(fw_dev_id_enable[0]),
        .fw_dn_event_toggle(fw_dn_event_toggle[0]),
        .fw_dnn_output_0(fw_dnn_output_0[0]),
        .fw_dnn_output_1(fw_dnn_output_1[0]),
        .fw_op_code_r_cfg_array_0(fw_op_code_r_cfg_array_0),
        .fw_op_code_r_cfg_array_1(fw_op_code_r_cfg_array_1),
        .fw_op_code_r_cfg_static_0(fw_op_code_r_cfg_static_0),
        .fw_op_code_r_data_array_0(fw_op_code_r_data_array_0),
        .fw_op_code_r_data_array_1(fw_op_code_r_data_array_1),
        .fw_op_code_r_status(fw_op_code_r_status),
        .fw_op_code_w_cfg_array_0(fw_op_code_w_cfg_array_0),
        .fw_op_code_w_cfg_array_1(fw_op_code_w_cfg_array_1),
        .fw_op_code_w_cfg_static_0(fw_op_code_w_cfg_static_0),
        .fw_op_code_w_execute(fw_op_code_w_execute),
        .fw_op_code_w_reset(fw_op_code_w_reset),
        .fw_read_data32(\fw_read_data32[0]_1 ),
        .fw_read_status32(\fw_read_status32[0]_0 ),
        .fw_reset_not(fw_reset_not[0]),
        .fw_rst_n(S_AXI_ARESETN),
        .fw_scan_in(fw_scan_in[0]),
        .fw_scan_load(fw_scan_load[0]),
        .fw_scan_out(fw_scan_out[0]),
        .fw_super_pixel_sel(fw_super_pixel_sel[0]),
        .fw_vin_test_trig_out(fw_vin_test_trig_out[0]),
        .sw_write24_0(sw_write32_0[23:0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_ip2 pix_28_fw_ip2_inst
       (.fw_bxclk(fw_bxclk[1]),
        .fw_bxclk_ana(fw_bxclk_ana[1]),
        .fw_clk(S_AXI_ACLK),
        .fw_config_clk(fw_config_clk[1]),
        .fw_config_in(fw_config_in[1]),
        .fw_config_load(fw_config_load[1]),
        .fw_config_out(fw_config_out[1]),
        .fw_dev_id_enable(fw_dev_id_enable[1]),
        .fw_dn_event_toggle(fw_dn_event_toggle[1]),
        .fw_dnn_output_0(fw_dnn_output_0[1]),
        .fw_dnn_output_1(fw_dnn_output_1[1]),
        .fw_op_code_r_cfg_array_0(fw_op_code_r_cfg_array_0),
        .fw_op_code_r_cfg_array_1(fw_op_code_r_cfg_array_1),
        .fw_op_code_r_cfg_static_0(fw_op_code_r_cfg_static_0),
        .fw_op_code_r_data_array_0(fw_op_code_r_data_array_0),
        .fw_op_code_r_data_array_1(fw_op_code_r_data_array_1),
        .fw_op_code_r_status(fw_op_code_r_status),
        .fw_op_code_w_cfg_array_0(fw_op_code_w_cfg_array_0),
        .fw_op_code_w_cfg_array_1(fw_op_code_w_cfg_array_1),
        .fw_op_code_w_cfg_static_0(fw_op_code_w_cfg_static_0),
        .fw_op_code_w_execute(fw_op_code_w_execute),
        .fw_op_code_w_reset(fw_op_code_w_reset),
        .fw_read_data32(\fw_read_data32[1]_3 ),
        .fw_read_status32(\fw_read_status32[1]_2 ),
        .fw_reset_not(fw_reset_not[1]),
        .fw_rst_n(S_AXI_ARESETN),
        .fw_scan_in(fw_scan_in[1]),
        .fw_scan_load(fw_scan_load[1]),
        .fw_scan_out(fw_scan_out[1]),
        .fw_super_pixel_sel(fw_super_pixel_sel[1]),
        .fw_vin_test_trig_out(fw_vin_test_trig_out[1]),
        .sw_write24_0(sw_write32_0[23:0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_ip3 pix_28_fw_ip3_inst
       (.fw_bxclk(fw_bxclk[2]),
        .fw_bxclk_ana(fw_bxclk_ana[2]),
        .fw_clk(S_AXI_ACLK),
        .fw_config_clk(fw_config_clk[2]),
        .fw_config_in(fw_config_in[2]),
        .fw_config_load(fw_config_load[2]),
        .fw_config_out(fw_config_out[2]),
        .fw_dev_id_enable(fw_dev_id_enable[2]),
        .fw_dn_event_toggle(fw_dn_event_toggle[2]),
        .fw_dnn_output_0(fw_dnn_output_0[2]),
        .fw_dnn_output_1(fw_dnn_output_1[2]),
        .fw_op_code_r_cfg_array_0(fw_op_code_r_cfg_array_0),
        .fw_op_code_r_cfg_array_1(fw_op_code_r_cfg_array_1),
        .fw_op_code_r_cfg_static_0(fw_op_code_r_cfg_static_0),
        .fw_op_code_r_data_array_0(fw_op_code_r_data_array_0),
        .fw_op_code_r_data_array_1(fw_op_code_r_data_array_1),
        .fw_op_code_r_status(fw_op_code_r_status),
        .fw_op_code_w_cfg_array_0(fw_op_code_w_cfg_array_0),
        .fw_op_code_w_cfg_array_1(fw_op_code_w_cfg_array_1),
        .fw_op_code_w_cfg_static_0(fw_op_code_w_cfg_static_0),
        .fw_op_code_w_execute(fw_op_code_w_execute),
        .fw_op_code_w_reset(fw_op_code_w_reset),
        .fw_read_data32(\fw_read_data32[2]_5 ),
        .fw_read_status32(\fw_read_status32[2]_4 ),
        .fw_reset_not(fw_reset_not[2]),
        .fw_rst_n(S_AXI_ARESETN),
        .fw_scan_in(fw_scan_in[2]),
        .fw_scan_load(fw_scan_load[2]),
        .fw_scan_out(fw_scan_out[2]),
        .fw_super_pixel_sel(fw_super_pixel_sel[2]),
        .fw_vin_test_trig_out(fw_vin_test_trig_out[2]),
        .sw_write24_0(sw_write32_0[23:0]));
endmodule

(* CHECK_LICENSE_TYPE = "cms_pix_28_fw_top_bd_cms_pix_28_fw_top_v_0_0,cms_pix_28_fw_top_v,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "cms_pix_28_fw_top_v,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY,
    super_pixel_sel,
    config_clk,
    reset_not,
    config_in,
    config_load,
    bxclk_ana,
    bxclk,
    vin_test_trig_out,
    scan_in,
    scan_load,
    config_out,
    scan_out,
    dnn_output_0,
    dnn_output_1,
    dn_event_toggle);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 99990005, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cms_pix_28_fw_top_bd_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [10:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [10:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99990005, ID_WIDTH 0, ADDR_WIDTH 11, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN cms_pix_28_fw_top_bd_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S_AXI_RREADY;
  output super_pixel_sel;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 config_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME config_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cms_pix_28_fw_top_bd_cms_pix_28_fw_top_v_0_0_config_clk, INSERT_VIP 0" *) output config_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_not RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_not, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output reset_not;
  output config_in;
  output config_load;
  output bxclk_ana;
  output bxclk;
  output vin_test_trig_out;
  output scan_in;
  output scan_load;
  input config_out;
  input scan_out;
  input dnn_output_0;
  input dnn_output_1;
  input dn_event_toggle;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [10:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [10:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire bxclk;
  wire bxclk_ana;
  wire config_clk;
  wire config_in;
  wire config_load;
  wire config_out;
  wire dn_event_toggle;
  wire dnn_output_0;
  wire dnn_output_1;
  wire reset_not;
  wire scan_in;
  wire scan_load;
  wire scan_out;
  wire super_pixel_sel;
  wire vin_test_trig_out;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_top_v inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[10:2]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[10:2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .axi_rvalid_reg(S_AXI_RVALID),
        .bxclk(bxclk),
        .bxclk_ana(bxclk_ana),
        .config_clk(config_clk),
        .config_in(config_in),
        .config_load(config_load),
        .config_out(config_out),
        .dn_event_toggle(dn_event_toggle),
        .dnn_output_0(dnn_output_0),
        .dnn_output_1(dnn_output_1),
        .reset_not(reset_not),
        .scan_in(scan_in),
        .scan_load(scan_load),
        .scan_out(scan_out),
        .super_pixel_sel(super_pixel_sel),
        .vin_test_trig_out(vin_test_trig_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_top_v
   (S_AXI_ARREADY,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_RDATA,
    super_pixel_sel,
    config_clk,
    reset_not,
    config_in,
    config_load,
    bxclk_ana,
    bxclk,
    vin_test_trig_out,
    scan_in,
    scan_load,
    axi_rvalid_reg,
    S_AXI_BVALID,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_ARADDR,
    S_AXI_AWADDR,
    S_AXI_WDATA,
    config_out,
    scan_out,
    dnn_output_0,
    dnn_output_1,
    dn_event_toggle,
    S_AXI_ARVALID,
    S_AXI_WSTRB,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output S_AXI_ARREADY;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output [31:0]S_AXI_RDATA;
  output super_pixel_sel;
  output config_clk;
  output reset_not;
  output config_in;
  output config_load;
  output bxclk_ana;
  output bxclk;
  output vin_test_trig_out;
  output scan_in;
  output scan_load;
  output axi_rvalid_reg;
  output S_AXI_BVALID;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [8:0]S_AXI_ARADDR;
  input [8:0]S_AXI_AWADDR;
  input [31:0]S_AXI_WDATA;
  input config_out;
  input scan_out;
  input dnn_output_0;
  input dnn_output_1;
  input dn_event_toggle;
  input S_AXI_ARVALID;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_BREADY;
  input S_AXI_RREADY;

  wire S_AXI_ACLK;
  wire [8:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [8:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire axi_rvalid_reg;
  wire bxclk;
  wire bxclk_ana;
  wire config_clk;
  wire config_in;
  wire config_load;
  wire config_out;
  wire dn_event_toggle;
  wire dnn_output_0;
  wire dnn_output_1;
  wire reset_not;
  wire scan_in;
  wire scan_load;
  wire scan_out;
  wire super_pixel_sel;
  wire vin_test_trig_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cms_pix_28_fw_top cms_pix_28_fw_top_inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .axi_rvalid_reg(axi_rvalid_reg),
        .bxclk(bxclk),
        .bxclk_ana(bxclk_ana),
        .config_clk(config_clk),
        .config_in(config_in),
        .config_load(config_load),
        .config_out(config_out),
        .dn_event_toggle(dn_event_toggle),
        .dnn_output_0(dnn_output_0),
        .dnn_output_1(dnn_output_1),
        .reset_not(reset_not),
        .scan_in(scan_in),
        .scan_load(scan_load),
        .scan_out(scan_out),
        .super_pixel_sel(super_pixel_sel),
        .vin_test_trig_out(vin_test_trig_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_common_fw_to_dut_side
   (super_pixel_sel,
    config_clk,
    reset_not,
    config_in,
    config_load,
    bxclk_ana,
    bxclk,
    vin_test_trig_out,
    scan_in,
    scan_load,
    p_3_in,
    scan_out_iob,
    dnn_output_0_iob,
    dnn_output_1_iob,
    p_0_in_0,
    Q,
    \sw_write32_0_reg[31] ,
    \sw_write32_0_reg[31]_0 ,
    \sw_write32_0_reg[31]_1 ,
    \sw_write32_0_reg[31]_2 ,
    p_0_in,
    super_pixel_sel_iob_reg_0,
    S_AXI_ACLK,
    config_clk_iob_reg_0,
    reset_not_iob_reg_0,
    config_in_iob_reg_0,
    config_load_iob_reg_0,
    bxclk_ana_iob_reg_0,
    bxclk_iob_reg_0,
    vin_test_trig_out_iob_reg_0,
    scan_in_iob_reg_0,
    scan_load_iob_reg_0,
    config_out,
    scan_out,
    dnn_output_0,
    dnn_output_1,
    dn_event_toggle,
    D,
    E,
    pix_28_fw_ip3_inst,
    pix_28_fw_ip3_inst_0,
    pix_28_fw_ip3_inst_1,
    pix_28_fw_ip3_inst_2,
    pix_28_fw_ip3_inst_3);
  output super_pixel_sel;
  output config_clk;
  output reset_not;
  output config_in;
  output config_load;
  output bxclk_ana;
  output bxclk;
  output vin_test_trig_out;
  output scan_in;
  output scan_load;
  output [0:0]p_3_in;
  output scan_out_iob;
  output dnn_output_0_iob;
  output dnn_output_1_iob;
  output [0:0]p_0_in_0;
  output [2:0]Q;
  output [2:0]\sw_write32_0_reg[31] ;
  output [2:0]\sw_write32_0_reg[31]_0 ;
  output [2:0]\sw_write32_0_reg[31]_1 ;
  output [2:0]\sw_write32_0_reg[31]_2 ;
  input p_0_in;
  input super_pixel_sel_iob_reg_0;
  input S_AXI_ACLK;
  input config_clk_iob_reg_0;
  input reset_not_iob_reg_0;
  input config_in_iob_reg_0;
  input config_load_iob_reg_0;
  input bxclk_ana_iob_reg_0;
  input bxclk_iob_reg_0;
  input vin_test_trig_out_iob_reg_0;
  input scan_in_iob_reg_0;
  input scan_load_iob_reg_0;
  input config_out;
  input scan_out;
  input dnn_output_0;
  input dnn_output_1;
  input dn_event_toggle;
  input [2:0]D;
  input [2:0]E;
  input [2:0]pix_28_fw_ip3_inst;
  input [2:0]pix_28_fw_ip3_inst_0;
  input [2:0]pix_28_fw_ip3_inst_1;
  input [2:0]pix_28_fw_ip3_inst_2;
  input [1:0]pix_28_fw_ip3_inst_3;

  wire [2:0]D;
  wire [2:0]E;
  wire [2:0]Q;
  wire S_AXI_ACLK;
  wire bxclk;
  wire bxclk_ana;
  wire bxclk_ana_iob_reg_0;
  wire bxclk_iob_reg_0;
  wire config_clk;
  wire config_clk_iob_reg_0;
  wire config_in;
  wire config_in_iob_reg_0;
  wire config_load;
  wire config_load_iob_reg_0;
  wire config_out;
  wire dn_event_toggle;
  wire dnn_output_0;
  wire dnn_output_0_iob;
  wire dnn_output_1;
  wire dnn_output_1_iob;
  wire p_0_in;
  wire [0:0]p_0_in_0;
  wire [0:0]p_3_in;
  wire [2:0]pix_28_fw_ip3_inst;
  wire [2:0]pix_28_fw_ip3_inst_0;
  wire [2:0]pix_28_fw_ip3_inst_1;
  wire [2:0]pix_28_fw_ip3_inst_2;
  wire [1:0]pix_28_fw_ip3_inst_3;
  wire reset_not;
  wire reset_not_iob_reg_0;
  wire scan_in;
  wire scan_in_iob_reg_0;
  wire scan_load;
  wire scan_load_iob_reg_0;
  wire scan_out;
  wire scan_out_iob;
  wire super_pixel_sel;
  wire super_pixel_sel_iob_reg_0;
  wire [2:0]\sw_write32_0_reg[31] ;
  wire [2:0]\sw_write32_0_reg[31]_0 ;
  wire [2:0]\sw_write32_0_reg[31]_1 ;
  wire [2:0]\sw_write32_0_reg[31]_2 ;
  wire vin_test_trig_out;
  wire vin_test_trig_out_iob_reg_0;

  FDRE bxclk_ana_iob_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(bxclk_ana_iob_reg_0),
        .Q(bxclk_ana),
        .R(p_0_in));
  FDRE bxclk_iob_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(bxclk_iob_reg_0),
        .Q(bxclk),
        .R(p_0_in));
  FDRE config_clk_iob_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(config_clk_iob_reg_0),
        .Q(config_clk),
        .R(p_0_in));
  FDRE config_in_iob_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(config_in_iob_reg_0),
        .Q(config_in),
        .R(p_0_in));
  FDRE config_load_iob_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(config_load_iob_reg_0),
        .Q(config_load),
        .R(p_0_in));
  FDRE config_out_iob_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(config_out),
        .Q(p_3_in),
        .R(p_0_in));
  FDRE dn_event_toggle_iob_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(dn_event_toggle),
        .Q(p_0_in_0),
        .R(p_0_in));
  FDRE dnn_output_0_iob_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(dnn_output_0),
        .Q(dnn_output_0_iob),
        .R(p_0_in));
  FDRE dnn_output_1_iob_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(dnn_output_1),
        .Q(dnn_output_1_iob),
        .R(p_0_in));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fw_config_out_reg[0] 
       (.CLR(1'b0),
        .D(D[0]),
        .G(E[0]),
        .GE(1'b1),
        .Q(Q[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fw_config_out_reg[1] 
       (.CLR(1'b0),
        .D(D[1]),
        .G(E[1]),
        .GE(1'b1),
        .Q(Q[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fw_config_out_reg[2] 
       (.CLR(1'b0),
        .D(D[2]),
        .G(E[2]),
        .GE(1'b1),
        .Q(Q[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fw_dn_event_toggle_reg[0] 
       (.CLR(1'b0),
        .D(pix_28_fw_ip3_inst_2[0]),
        .G(E[0]),
        .GE(1'b1),
        .Q(\sw_write32_0_reg[31]_2 [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fw_dn_event_toggle_reg[1] 
       (.CLR(1'b0),
        .D(pix_28_fw_ip3_inst_2[1]),
        .G(pix_28_fw_ip3_inst_3[0]),
        .GE(1'b1),
        .Q(\sw_write32_0_reg[31]_2 [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fw_dn_event_toggle_reg[2] 
       (.CLR(1'b0),
        .D(pix_28_fw_ip3_inst_2[2]),
        .G(pix_28_fw_ip3_inst_3[1]),
        .GE(1'b1),
        .Q(\sw_write32_0_reg[31]_2 [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fw_dnn_output_0_reg[0] 
       (.CLR(1'b0),
        .D(pix_28_fw_ip3_inst_0[0]),
        .G(E[0]),
        .GE(1'b1),
        .Q(\sw_write32_0_reg[31]_0 [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fw_dnn_output_0_reg[1] 
       (.CLR(1'b0),
        .D(pix_28_fw_ip3_inst_0[1]),
        .G(E[1]),
        .GE(1'b1),
        .Q(\sw_write32_0_reg[31]_0 [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fw_dnn_output_0_reg[2] 
       (.CLR(1'b0),
        .D(pix_28_fw_ip3_inst_0[2]),
        .G(E[2]),
        .GE(1'b1),
        .Q(\sw_write32_0_reg[31]_0 [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fw_dnn_output_1_reg[0] 
       (.CLR(1'b0),
        .D(pix_28_fw_ip3_inst_1[0]),
        .G(E[0]),
        .GE(1'b1),
        .Q(\sw_write32_0_reg[31]_1 [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fw_dnn_output_1_reg[1] 
       (.CLR(1'b0),
        .D(pix_28_fw_ip3_inst_1[1]),
        .G(E[1]),
        .GE(1'b1),
        .Q(\sw_write32_0_reg[31]_1 [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fw_dnn_output_1_reg[2] 
       (.CLR(1'b0),
        .D(pix_28_fw_ip3_inst_1[2]),
        .G(E[2]),
        .GE(1'b1),
        .Q(\sw_write32_0_reg[31]_1 [2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fw_scan_out_reg[0] 
       (.CLR(1'b0),
        .D(pix_28_fw_ip3_inst[0]),
        .G(E[0]),
        .GE(1'b1),
        .Q(\sw_write32_0_reg[31] [0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fw_scan_out_reg[1] 
       (.CLR(1'b0),
        .D(pix_28_fw_ip3_inst[1]),
        .G(E[1]),
        .GE(1'b1),
        .Q(\sw_write32_0_reg[31] [1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \fw_scan_out_reg[2] 
       (.CLR(1'b0),
        .D(pix_28_fw_ip3_inst[2]),
        .G(E[2]),
        .GE(1'b1),
        .Q(\sw_write32_0_reg[31] [2]));
  FDRE reset_not_iob_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(reset_not_iob_reg_0),
        .Q(reset_not),
        .R(p_0_in));
  FDRE scan_in_iob_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(scan_in_iob_reg_0),
        .Q(scan_in),
        .R(p_0_in));
  FDRE scan_load_iob_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(scan_load_iob_reg_0),
        .Q(scan_load),
        .R(p_0_in));
  FDRE scan_out_iob_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(scan_out),
        .Q(scan_out_iob),
        .R(p_0_in));
  FDRE super_pixel_sel_iob_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(super_pixel_sel_iob_reg_0),
        .Q(super_pixel_sel),
        .R(p_0_in));
  FDRE vin_test_trig_out_iob_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(vin_test_trig_out_iob_reg_0),
        .Q(vin_test_trig_out),
        .R(p_0_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_common_sw_to_fw_side
   (fw_op_code_r_cfg_array_0,
    fw_op_code_w_cfg_array_1,
    fw_op_code_r_data_array_1,
    fw_op_code_r_status,
    Q);
  output fw_op_code_r_cfg_array_0;
  output fw_op_code_w_cfg_array_1;
  output fw_op_code_r_data_array_1;
  output fw_op_code_r_status;
  input [3:0]Q;

  wire [3:0]Q;
  wire fw_op_code_r_cfg_array_0;
  wire fw_op_code_r_data_array_1;
  wire fw_op_code_r_status;
  wire fw_op_code_w_cfg_array_1;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    fw_op_code_r_cfg_array_0__0
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(fw_op_code_r_cfg_array_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    fw_op_code_r_data_array_1__0
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(fw_op_code_r_data_array_1));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    fw_op_code_r_status__0
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(fw_op_code_r_status));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    fw_op_code_w_cfg_array_1__0
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(fw_op_code_w_cfg_array_1));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
