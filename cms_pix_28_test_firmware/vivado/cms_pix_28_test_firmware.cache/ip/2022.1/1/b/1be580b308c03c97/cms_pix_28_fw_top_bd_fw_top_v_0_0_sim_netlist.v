// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Mon Jun  3 12:25:38 2024
// Host        : fasic-beast2.fnal.gov running 64-bit Scientific Linux release 7.9 (Nitrogen)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cms_pix_28_fw_top_bd_fw_top_v_0_0_sim_netlist.v
// Design      : cms_pix_28_fw_top_bd_fw_top_v_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top
   (S_AXI_ARREADY,
    S_AXI_ARESETN_0,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_BVALID,
    S_AXI_RVALID,
    E,
    S_AXI_ACLK,
    S_AXI_ARVALID,
    S_AXI_ARESETN,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_RREADY,
    S_AXI_AWADDR,
    S_AXI_WSTRB);
  output S_AXI_ARREADY;
  output S_AXI_ARESETN_0;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_BVALID;
  output S_AXI_RVALID;
  output [2:0]E;
  input S_AXI_ACLK;
  input S_AXI_ARVALID;
  input S_AXI_ARESETN;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_RREADY;
  input [8:0]S_AXI_AWADDR;
  input [2:0]S_AXI_WSTRB;

  wire [2:0]E;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARESETN_0;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [8:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_WREADY;
  wire [2:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_slave_interface axi4_slave_inst
       (.E(E),
        .SR(S_AXI_ARESETN_0),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .axi_awready_reg_0(S_AXI_AWREADY),
        .axi_wready_reg_0(S_AXI_WREADY));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top_for_pix28_fw
   (E,
    fw_bxclk_ana_ff_reg,
    fw_bxclk_ff_reg,
    D,
    op_code_w_reset,
    S_AXI_ARREADY,
    p_0_in,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_BVALID,
    S_AXI_RVALID,
    fw_bxclk_ana,
    fw_bxclk,
    S_AXI_ACLK,
    S_AXI_AWADDR,
    S_AXI_WDATA,
    S_AXI_ARVALID,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_WSTRB,
    S_AXI_ARESETN,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output [0:0]E;
  output fw_bxclk_ana_ff_reg;
  output fw_bxclk_ff_reg;
  output [11:0]D;
  output op_code_w_reset;
  output S_AXI_ARREADY;
  output p_0_in;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_BVALID;
  output S_AXI_RVALID;
  input [0:0]fw_bxclk_ana;
  input [0:0]fw_bxclk;
  input S_AXI_ACLK;
  input [8:0]S_AXI_AWADDR;
  input [19:0]S_AXI_WDATA;
  input S_AXI_ARVALID;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input [2:0]S_AXI_WSTRB;
  input S_AXI_ARESETN;
  input S_AXI_BREADY;
  input S_AXI_RREADY;

  wire [11:0]D;
  wire [0:0]E;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [8:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [19:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [2:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire bxclk_ana_iob_i_2_n_0;
  wire [0:0]fw_bxclk;
  wire [0:0]fw_bxclk_ana;
  wire fw_bxclk_ana_ff_reg;
  wire fw_bxclk_ff_reg;
  wire [3:0]fw_dev_id_enable;
  wire op_code_w_reset;
  wire p_0_in;
  wire [3:0]\reg_wrByteStrobe[0]_0 ;
  wire [31:0]sw_write32_0;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top axi4lite_interface_inst
       (.E({\reg_wrByteStrobe[0]_0 [3],\reg_wrByteStrobe[0]_0 [1:0]}),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(p_0_in),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    bxclk_ana_iob_i_1
       (.I0(bxclk_ana_iob_i_2_n_0),
        .I1(fw_bxclk_ana),
        .I2(sw_write32_0[31]),
        .I3(sw_write32_0[30]),
        .I4(sw_write32_0[29]),
        .I5(sw_write32_0[28]),
        .O(fw_bxclk_ana_ff_reg));
  LUT4 #(
    .INIT(16'h0116)) 
    bxclk_ana_iob_i_2
       (.I0(fw_dev_id_enable[0]),
        .I1(fw_dev_id_enable[1]),
        .I2(fw_dev_id_enable[2]),
        .I3(fw_dev_id_enable[3]),
        .O(bxclk_ana_iob_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    bxclk_ana_iob_i_3
       (.I0(sw_write32_0[31]),
        .I1(sw_write32_0[30]),
        .I2(sw_write32_0[28]),
        .I3(sw_write32_0[29]),
        .O(fw_dev_id_enable[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    bxclk_ana_iob_i_4
       (.I0(sw_write32_0[31]),
        .I1(sw_write32_0[28]),
        .I2(sw_write32_0[30]),
        .I3(sw_write32_0[29]),
        .O(fw_dev_id_enable[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    bxclk_ana_iob_i_5
       (.I0(sw_write32_0[28]),
        .I1(sw_write32_0[30]),
        .I2(sw_write32_0[31]),
        .I3(sw_write32_0[29]),
        .O(fw_dev_id_enable[3]));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    bxclk_iob_i_1
       (.I0(bxclk_ana_iob_i_2_n_0),
        .I1(fw_bxclk),
        .I2(sw_write32_0[31]),
        .I3(sw_write32_0[30]),
        .I4(sw_write32_0[29]),
        .I5(sw_write32_0[28]),
        .O(fw_bxclk_ff_reg));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \config_static_0[0]_i_1 
       (.I0(sw_write32_0[0]),
        .I1(op_code_w_reset),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \config_static_0[10]_i_1 
       (.I0(sw_write32_0[10]),
        .I1(op_code_w_reset),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h01100000)) 
    \config_static_0[11]_i_1 
       (.I0(sw_write32_0[27]),
        .I1(sw_write32_0[26]),
        .I2(sw_write32_0[25]),
        .I3(sw_write32_0[24]),
        .I4(fw_dev_id_enable[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \config_static_0[11]_i_2 
       (.I0(sw_write32_0[11]),
        .I1(op_code_w_reset),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \config_static_0[11]_i_3 
       (.I0(sw_write32_0[31]),
        .I1(sw_write32_0[30]),
        .I2(sw_write32_0[29]),
        .I3(sw_write32_0[28]),
        .O(fw_dev_id_enable[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \config_static_0[11]_i_4 
       (.I0(fw_dev_id_enable[1]),
        .I1(sw_write32_0[25]),
        .I2(sw_write32_0[24]),
        .I3(sw_write32_0[26]),
        .I4(sw_write32_0[27]),
        .O(op_code_w_reset));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \config_static_0[1]_i_1 
       (.I0(sw_write32_0[1]),
        .I1(op_code_w_reset),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \config_static_0[2]_i_1 
       (.I0(sw_write32_0[2]),
        .I1(op_code_w_reset),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \config_static_0[3]_i_1 
       (.I0(sw_write32_0[3]),
        .I1(op_code_w_reset),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \config_static_0[4]_i_1 
       (.I0(sw_write32_0[4]),
        .I1(op_code_w_reset),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \config_static_0[5]_i_1 
       (.I0(sw_write32_0[5]),
        .I1(op_code_w_reset),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \config_static_0[6]_i_1 
       (.I0(sw_write32_0[6]),
        .I1(op_code_w_reset),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \config_static_0[7]_i_1 
       (.I0(sw_write32_0[7]),
        .I1(op_code_w_reset),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \config_static_0[8]_i_1 
       (.I0(sw_write32_0[8]),
        .I1(op_code_w_reset),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \config_static_0[9]_i_1 
       (.I0(sw_write32_0[9]),
        .I1(op_code_w_reset),
        .O(D[9]));
  FDRE \sw_write32_0_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_0 [0]),
        .D(S_AXI_WDATA[0]),
        .Q(sw_write32_0[0]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_0 [1]),
        .D(S_AXI_WDATA[10]),
        .Q(sw_write32_0[10]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_0 [1]),
        .D(S_AXI_WDATA[11]),
        .Q(sw_write32_0[11]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_0 [0]),
        .D(S_AXI_WDATA[1]),
        .Q(sw_write32_0[1]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_0 [3]),
        .D(S_AXI_WDATA[12]),
        .Q(sw_write32_0[24]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_0 [3]),
        .D(S_AXI_WDATA[13]),
        .Q(sw_write32_0[25]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_0 [3]),
        .D(S_AXI_WDATA[14]),
        .Q(sw_write32_0[26]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_0 [3]),
        .D(S_AXI_WDATA[15]),
        .Q(sw_write32_0[27]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_0 [3]),
        .D(S_AXI_WDATA[16]),
        .Q(sw_write32_0[28]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_0 [3]),
        .D(S_AXI_WDATA[17]),
        .Q(sw_write32_0[29]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_0 [0]),
        .D(S_AXI_WDATA[2]),
        .Q(sw_write32_0[2]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_0 [3]),
        .D(S_AXI_WDATA[18]),
        .Q(sw_write32_0[30]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_0 [3]),
        .D(S_AXI_WDATA[19]),
        .Q(sw_write32_0[31]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_0 [0]),
        .D(S_AXI_WDATA[3]),
        .Q(sw_write32_0[3]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_0 [0]),
        .D(S_AXI_WDATA[4]),
        .Q(sw_write32_0[4]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_0 [0]),
        .D(S_AXI_WDATA[5]),
        .Q(sw_write32_0[5]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_0 [0]),
        .D(S_AXI_WDATA[6]),
        .Q(sw_write32_0[6]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_0 [0]),
        .D(S_AXI_WDATA[7]),
        .Q(sw_write32_0[7]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_0 [1]),
        .D(S_AXI_WDATA[8]),
        .Q(sw_write32_0[8]),
        .R(p_0_in));
  FDRE \sw_write32_0_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\reg_wrByteStrobe[0]_0 [1]),
        .D(S_AXI_WDATA[9]),
        .Q(sw_write32_0[9]),
        .R(p_0_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_slave_interface
   (S_AXI_ARREADY,
    SR,
    axi_awready_reg_0,
    axi_wready_reg_0,
    S_AXI_BVALID,
    S_AXI_RVALID,
    E,
    S_AXI_ACLK,
    S_AXI_ARVALID,
    S_AXI_ARESETN,
    S_AXI_BREADY,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_RREADY,
    S_AXI_AWADDR,
    S_AXI_WSTRB);
  output S_AXI_ARREADY;
  output [0:0]SR;
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output S_AXI_BVALID;
  output S_AXI_RVALID;
  output [2:0]E;
  input S_AXI_ACLK;
  input S_AXI_ARVALID;
  input S_AXI_ARESETN;
  input S_AXI_BREADY;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_RREADY;
  input [8:0]S_AXI_AWADDR;
  input [2:0]S_AXI_WSTRB;

  wire [2:0]E;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [8:0]S_AXI_AWADDR;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [2:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire [8:0]axi_mem_wrAddr;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire \mem_regs_inst/reg_wrSelect_i[0]__8 ;
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
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
    .INIT(64'h7444444444444444)) 
    axi_bvalid_i_1
       (.I0(S_AXI_BREADY),
        .I1(S_AXI_BVALID),
        .I2(axi_wready_reg_0),
        .I3(axi_awready_reg_0),
        .I4(S_AXI_AWVALID),
        .I5(S_AXI_WVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RVALID),
        .I3(S_AXI_RREADY),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(SR));
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
    .INIT(64'h8000000000000000)) 
    \sw_write32_0[11]_i_1 
       (.I0(S_AXI_WSTRB[1]),
        .I1(axi_wready_reg_0),
        .I2(axi_awready_reg_0),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_WVALID),
        .I5(\mem_regs_inst/reg_wrSelect_i[0]__8 ),
        .O(E[1]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sw_write32_0[31]_i_1 
       (.I0(S_AXI_WSTRB[2]),
        .I1(axi_wready_reg_0),
        .I2(axi_awready_reg_0),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_WVALID),
        .I5(\mem_regs_inst/reg_wrSelect_i[0]__8 ),
        .O(E[2]));
  LUT4 #(
    .INIT(16'h0002)) 
    \sw_write32_0[31]_i_2 
       (.I0(\sw_write32_0[31]_i_3_n_0 ),
        .I1(axi_mem_wrAddr[0]),
        .I2(axi_mem_wrAddr[1]),
        .I3(axi_mem_wrAddr[2]),
        .O(\mem_regs_inst/reg_wrSelect_i[0]__8 ));
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
    .INIT(64'h8000000000000000)) 
    \sw_write32_0[7]_i_1 
       (.I0(S_AXI_WSTRB[0]),
        .I1(axi_wready_reg_0),
        .I2(axi_awready_reg_0),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_WVALID),
        .I5(\mem_regs_inst/reg_wrSelect_i[0]__8 ),
        .O(E[0]));
endmodule

(* CHECK_LICENSE_TYPE = "cms_pix_28_fw_top_bd_fw_top_v_0_0,fw_top_v,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "fw_top_v,Vivado 2022.1" *) 
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
    pl_clk1,
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
  input pl_clk1;
  output super_pixel_sel;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 config_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME config_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cms_pix_28_fw_top_bd_fw_top_v_0_0_config_clk, INSERT_VIP 0" *) output config_clk;
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
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [10:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire bxclk;
  wire bxclk_ana;
  wire pl_clk1;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RDATA[31] = \<const0> ;
  assign S_AXI_RDATA[30] = \<const0> ;
  assign S_AXI_RDATA[29] = \<const0> ;
  assign S_AXI_RDATA[28] = \<const0> ;
  assign S_AXI_RDATA[27] = \<const0> ;
  assign S_AXI_RDATA[26] = \<const0> ;
  assign S_AXI_RDATA[25] = \<const0> ;
  assign S_AXI_RDATA[24] = \<const0> ;
  assign S_AXI_RDATA[23] = \<const0> ;
  assign S_AXI_RDATA[22] = \<const0> ;
  assign S_AXI_RDATA[21] = \<const0> ;
  assign S_AXI_RDATA[20] = \<const0> ;
  assign S_AXI_RDATA[19] = \<const0> ;
  assign S_AXI_RDATA[18] = \<const0> ;
  assign S_AXI_RDATA[17] = \<const0> ;
  assign S_AXI_RDATA[16] = \<const0> ;
  assign S_AXI_RDATA[15] = \<const0> ;
  assign S_AXI_RDATA[14] = \<const0> ;
  assign S_AXI_RDATA[13] = \<const0> ;
  assign S_AXI_RDATA[12] = \<const0> ;
  assign S_AXI_RDATA[11] = \<const0> ;
  assign S_AXI_RDATA[10] = \<const0> ;
  assign S_AXI_RDATA[9] = \<const0> ;
  assign S_AXI_RDATA[8] = \<const0> ;
  assign S_AXI_RDATA[7] = \<const0> ;
  assign S_AXI_RDATA[6] = \<const0> ;
  assign S_AXI_RDATA[5] = \<const0> ;
  assign S_AXI_RDATA[4] = \<const0> ;
  assign S_AXI_RDATA[3] = \<const0> ;
  assign S_AXI_RDATA[2] = \<const0> ;
  assign S_AXI_RDATA[1] = \<const0> ;
  assign S_AXI_RDATA[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  assign config_clk = \<const0> ;
  assign config_in = \<const0> ;
  assign config_load = \<const0> ;
  assign reset_not = \<const0> ;
  assign scan_in = \<const0> ;
  assign scan_load = \<const0> ;
  assign super_pixel_sel = \<const0> ;
  assign vin_test_trig_out = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_top_v inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[10:2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA({S_AXI_WDATA[31:24],S_AXI_WDATA[11:0]}),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB({S_AXI_WSTRB[3],S_AXI_WSTRB[1:0]}),
        .S_AXI_WVALID(S_AXI_WVALID),
        .bxclk(bxclk),
        .bxclk_ana(bxclk_ana),
        .pl_clk1(pl_clk1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_com_config_write_regs
   (\fw_pl_clk1_cnt_reg[0] ,
    fw_pl_clk1_cnt,
    \config_static_0_reg[11]_0 ,
    \fw_pl_clk1_cnt_reg[2] ,
    fw_bxclk_ana_ff_reg,
    fw_bxclk_ana_ff_reg_0,
    fw_bxclk_ana_ff_reg_1,
    \fw_pl_clk1_cnt_reg[0]_0 ,
    op_code_w_reset,
    fw_bxclk_ff_reg,
    fw_bxclk_ana_ff_reg_2,
    fw_bxclk_ana_ff_reg_3,
    \fw_pl_clk1_cnt_reg[3] ,
    E,
    D,
    S_AXI_ACLK,
    p_0_in);
  output \fw_pl_clk1_cnt_reg[0] ;
  output [0:0]fw_pl_clk1_cnt;
  output \config_static_0_reg[11]_0 ;
  output \fw_pl_clk1_cnt_reg[2] ;
  input fw_bxclk_ana_ff_reg;
  input fw_bxclk_ana_ff_reg_0;
  input fw_bxclk_ana_ff_reg_1;
  input \fw_pl_clk1_cnt_reg[0]_0 ;
  input op_code_w_reset;
  input fw_bxclk_ff_reg;
  input fw_bxclk_ana_ff_reg_2;
  input fw_bxclk_ana_ff_reg_3;
  input \fw_pl_clk1_cnt_reg[3] ;
  input [0:0]E;
  input [11:0]D;
  input S_AXI_ACLK;
  input p_0_in;

  wire [11:0]D;
  wire [0:0]E;
  wire S_AXI_ACLK;
  wire [11:11]config_static_0;
  wire \config_static_0_reg[11]_0 ;
  wire \config_static_0_reg_n_0_[0] ;
  wire \config_static_0_reg_n_0_[1] ;
  wire \config_static_0_reg_n_0_[2] ;
  wire \config_static_0_reg_n_0_[3] ;
  wire \config_static_0_reg_n_0_[4] ;
  wire \config_static_0_reg_n_0_[5] ;
  wire fw_bxclk_ana_ff_i_2_n_0;
  wire fw_bxclk_ana_ff_i_4_n_0;
  wire fw_bxclk_ana_ff_reg;
  wire fw_bxclk_ana_ff_reg_0;
  wire fw_bxclk_ana_ff_reg_1;
  wire fw_bxclk_ana_ff_reg_2;
  wire fw_bxclk_ana_ff_reg_3;
  wire [2:2]fw_bxclk_ff1__19;
  wire fw_bxclk_ff_i_10_n_0;
  wire fw_bxclk_ff_i_11_n_0;
  wire fw_bxclk_ff_i_2_n_0;
  wire fw_bxclk_ff_i_4_n_0;
  wire fw_bxclk_ff_i_5_n_0;
  wire fw_bxclk_ff_i_6_n_0;
  wire fw_bxclk_ff_i_7_n_0;
  wire fw_bxclk_ff_i_8_n_0;
  wire fw_bxclk_ff_reg;
  wire [0:0]fw_pl_clk1_cnt;
  wire \fw_pl_clk1_cnt[5]_i_3_n_0 ;
  wire \fw_pl_clk1_cnt[5]_i_4_n_0 ;
  wire \fw_pl_clk1_cnt_reg[0] ;
  wire \fw_pl_clk1_cnt_reg[0]_0 ;
  wire \fw_pl_clk1_cnt_reg[2] ;
  wire \fw_pl_clk1_cnt_reg[3] ;
  wire op_code_w_reset;
  wire p_0_in;
  wire [4:0]p_0_in1_in;

  FDCE \config_static_0_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(p_0_in),
        .D(D[0]),
        .Q(\config_static_0_reg_n_0_[0] ));
  FDCE \config_static_0_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(p_0_in),
        .D(D[10]),
        .Q(p_0_in1_in[4]));
  FDCE \config_static_0_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(p_0_in),
        .D(D[11]),
        .Q(config_static_0));
  FDCE \config_static_0_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(p_0_in),
        .D(D[1]),
        .Q(\config_static_0_reg_n_0_[1] ));
  FDCE \config_static_0_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(p_0_in),
        .D(D[2]),
        .Q(\config_static_0_reg_n_0_[2] ));
  FDCE \config_static_0_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(p_0_in),
        .D(D[3]),
        .Q(\config_static_0_reg_n_0_[3] ));
  FDCE \config_static_0_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(p_0_in),
        .D(D[4]),
        .Q(\config_static_0_reg_n_0_[4] ));
  FDCE \config_static_0_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(p_0_in),
        .D(D[5]),
        .Q(\config_static_0_reg_n_0_[5] ));
  FDCE \config_static_0_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(p_0_in),
        .D(D[6]),
        .Q(p_0_in1_in[0]));
  FDCE \config_static_0_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(p_0_in),
        .D(D[7]),
        .Q(p_0_in1_in[1]));
  FDCE \config_static_0_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(p_0_in),
        .D(D[8]),
        .Q(p_0_in1_in[2]));
  FDCE \config_static_0_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .CLR(p_0_in),
        .D(D[9]),
        .Q(p_0_in1_in[3]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA8A)) 
    fw_bxclk_ana_ff_i_1
       (.I0(fw_bxclk_ana_ff_i_2_n_0),
        .I1(fw_bxclk_ana_ff_reg_2),
        .I2(fw_bxclk_ana_ff_reg_3),
        .I3(fw_bxclk_ana_ff_reg_1),
        .I4(fw_bxclk_ana_ff_reg_0),
        .I5(fw_bxclk_ana_ff_reg),
        .O(\fw_pl_clk1_cnt_reg[2] ));
  LUT6 #(
    .INIT(64'h00000000B2BB22B2)) 
    fw_bxclk_ana_ff_i_2
       (.I0(\config_static_0_reg_n_0_[5] ),
        .I1(fw_bxclk_ana_ff_reg),
        .I2(\config_static_0_reg_n_0_[4] ),
        .I3(fw_bxclk_ana_ff_reg_0),
        .I4(fw_bxclk_ana_ff_i_4_n_0),
        .I5(fw_bxclk_ana_ff_reg_1),
        .O(fw_bxclk_ana_ff_i_2_n_0));
  LUT6 #(
    .INIT(64'hDF0DFFFF0000DF0D)) 
    fw_bxclk_ana_ff_i_4
       (.I0(\fw_pl_clk1_cnt_reg[0]_0 ),
        .I1(\config_static_0_reg_n_0_[1] ),
        .I2(\fw_pl_clk1_cnt_reg[3] ),
        .I3(\config_static_0_reg_n_0_[2] ),
        .I4(fw_bxclk_ana_ff_reg_2),
        .I5(\config_static_0_reg_n_0_[3] ),
        .O(fw_bxclk_ana_ff_i_4_n_0));
  LUT4 #(
    .INIT(16'h3102)) 
    fw_bxclk_ff_i_1
       (.I0(fw_bxclk_ff_i_2_n_0),
        .I1(fw_bxclk_ff_reg),
        .I2(fw_bxclk_ff_i_4_n_0),
        .I3(config_static_0),
        .O(\config_static_0_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hEEEEE888E8888888)) 
    fw_bxclk_ff_i_10
       (.I0(\config_static_0_reg_n_0_[3] ),
        .I1(p_0_in1_in[2]),
        .I2(\config_static_0_reg_n_0_[1] ),
        .I3(p_0_in1_in[0]),
        .I4(p_0_in1_in[1]),
        .I5(\config_static_0_reg_n_0_[2] ),
        .O(fw_bxclk_ff_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    fw_bxclk_ff_i_11
       (.I0(p_0_in1_in[3]),
        .I1(\config_static_0_reg_n_0_[4] ),
        .O(fw_bxclk_ff_i_11_n_0));
  LUT6 #(
    .INIT(64'hBF2F2F0B2F0B0B02)) 
    fw_bxclk_ff_i_2
       (.I0(fw_bxclk_ff_i_5_n_0),
        .I1(fw_bxclk_ana_ff_reg),
        .I2(fw_bxclk_ana_ff_reg_1),
        .I3(\config_static_0_reg_n_0_[5] ),
        .I4(p_0_in1_in[4]),
        .I5(fw_bxclk_ff_i_6_n_0),
        .O(fw_bxclk_ff_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000000B2BB22B2)) 
    fw_bxclk_ff_i_4
       (.I0(p_0_in1_in[4]),
        .I1(fw_bxclk_ana_ff_reg),
        .I2(p_0_in1_in[3]),
        .I3(fw_bxclk_ana_ff_reg_0),
        .I4(fw_bxclk_ff_i_7_n_0),
        .I5(fw_bxclk_ana_ff_reg_1),
        .O(fw_bxclk_ff_i_4_n_0));
  LUT6 #(
    .INIT(64'h00B2B2FFB2FF00B2)) 
    fw_bxclk_ff_i_5
       (.I0(fw_bxclk_ff_i_8_n_0),
        .I1(fw_bxclk_ana_ff_reg_2),
        .I2(fw_bxclk_ff1__19),
        .I3(fw_bxclk_ana_ff_reg_0),
        .I4(fw_bxclk_ff_i_10_n_0),
        .I5(fw_bxclk_ff_i_11_n_0),
        .O(fw_bxclk_ff_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    fw_bxclk_ff_i_6
       (.I0(\config_static_0_reg_n_0_[4] ),
        .I1(p_0_in1_in[3]),
        .I2(fw_bxclk_ff_i_10_n_0),
        .O(fw_bxclk_ff_i_6_n_0));
  LUT6 #(
    .INIT(64'hDF0DFFFF0000DF0D)) 
    fw_bxclk_ff_i_7
       (.I0(\fw_pl_clk1_cnt_reg[0]_0 ),
        .I1(p_0_in1_in[0]),
        .I2(\fw_pl_clk1_cnt_reg[3] ),
        .I3(p_0_in1_in[1]),
        .I4(fw_bxclk_ana_ff_reg_2),
        .I5(p_0_in1_in[2]),
        .O(fw_bxclk_ff_i_7_n_0));
  LUT6 #(
    .INIT(64'h73311FF71FF77331)) 
    fw_bxclk_ff_i_8
       (.I0(\fw_pl_clk1_cnt_reg[0]_0 ),
        .I1(\fw_pl_clk1_cnt_reg[3] ),
        .I2(p_0_in1_in[0]),
        .I3(\config_static_0_reg_n_0_[1] ),
        .I4(\config_static_0_reg_n_0_[2] ),
        .I5(p_0_in1_in[1]),
        .O(fw_bxclk_ff_i_8_n_0));
  LUT6 #(
    .INIT(64'hF880077F077FF880)) 
    fw_bxclk_ff_i_9
       (.I0(\config_static_0_reg_n_0_[1] ),
        .I1(p_0_in1_in[0]),
        .I2(p_0_in1_in[1]),
        .I3(\config_static_0_reg_n_0_[2] ),
        .I4(\config_static_0_reg_n_0_[3] ),
        .I5(p_0_in1_in[2]),
        .O(fw_bxclk_ff1__19));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h008F)) 
    \fw_pl_clk1_cnt[0]_i_1 
       (.I0(\fw_pl_clk1_cnt[5]_i_3_n_0 ),
        .I1(\fw_pl_clk1_cnt[5]_i_4_n_0 ),
        .I2(\fw_pl_clk1_cnt_reg[0]_0 ),
        .I3(op_code_w_reset),
        .O(\fw_pl_clk1_cnt_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \fw_pl_clk1_cnt[5]_i_1 
       (.I0(\fw_pl_clk1_cnt[5]_i_3_n_0 ),
        .I1(\fw_pl_clk1_cnt[5]_i_4_n_0 ),
        .I2(op_code_w_reset),
        .O(fw_pl_clk1_cnt));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \fw_pl_clk1_cnt[5]_i_3 
       (.I0(\fw_pl_clk1_cnt_reg[0]_0 ),
        .I1(\config_static_0_reg_n_0_[0] ),
        .I2(\config_static_0_reg_n_0_[2] ),
        .I3(fw_bxclk_ana_ff_reg_2),
        .I4(\config_static_0_reg_n_0_[1] ),
        .I5(\fw_pl_clk1_cnt_reg[3] ),
        .O(\fw_pl_clk1_cnt[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \fw_pl_clk1_cnt[5]_i_4 
       (.I0(fw_bxclk_ana_ff_reg_0),
        .I1(\config_static_0_reg_n_0_[3] ),
        .I2(\config_static_0_reg_n_0_[5] ),
        .I3(fw_bxclk_ana_ff_reg_1),
        .I4(\config_static_0_reg_n_0_[4] ),
        .I5(fw_bxclk_ana_ff_reg),
        .O(\fw_pl_clk1_cnt[5]_i_4_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_com_fw_to_dut
   (bxclk_ana,
    bxclk,
    p_0_in,
    bxclk_ana_iob_reg_0,
    S_AXI_ACLK,
    bxclk_iob_reg_0);
  output bxclk_ana;
  output bxclk;
  input p_0_in;
  input bxclk_ana_iob_reg_0;
  input S_AXI_ACLK;
  input bxclk_iob_reg_0;

  wire S_AXI_ACLK;
  wire bxclk;
  wire bxclk_ana;
  wire bxclk_ana_iob_reg_0;
  wire bxclk_iob_reg_0;
  wire p_0_in;

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
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_ip2
   (fw_bxclk_ana,
    fw_bxclk,
    pl_clk1,
    op_code_w_reset,
    E,
    D,
    S_AXI_ACLK,
    p_0_in);
  output [0:0]fw_bxclk_ana;
  output [0:0]fw_bxclk;
  input pl_clk1;
  input op_code_w_reset;
  input [0:0]E;
  input [11:0]D;
  input S_AXI_ACLK;
  input p_0_in;

  wire [11:0]D;
  wire [0:0]E;
  wire S_AXI_ACLK;
  wire com_config_write_regs_inst_n_0;
  wire com_config_write_regs_inst_n_2;
  wire com_config_write_regs_inst_n_3;
  wire [0:0]fw_bxclk;
  wire [0:0]fw_bxclk_ana;
  wire fw_bxclk_ana_ff_i_3_n_0;
  wire fw_bxclk_ff_i_3_n_0;
  wire [1:1]fw_pl_clk1_cnt;
  wire \fw_pl_clk1_cnt[1]_i_1_n_0 ;
  wire \fw_pl_clk1_cnt[2]_i_1_n_0 ;
  wire \fw_pl_clk1_cnt[3]_i_1_n_0 ;
  wire \fw_pl_clk1_cnt[4]_i_1_n_0 ;
  wire \fw_pl_clk1_cnt[5]_i_2_n_0 ;
  wire \fw_pl_clk1_cnt_reg_n_0_[0] ;
  wire \fw_pl_clk1_cnt_reg_n_0_[1] ;
  wire \fw_pl_clk1_cnt_reg_n_0_[2] ;
  wire \fw_pl_clk1_cnt_reg_n_0_[3] ;
  wire \fw_pl_clk1_cnt_reg_n_0_[4] ;
  wire \fw_pl_clk1_cnt_reg_n_0_[5] ;
  wire op_code_w_reset;
  wire p_0_in;
  wire pl_clk1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_com_config_write_regs com_config_write_regs_inst
       (.D(D),
        .E(E),
        .S_AXI_ACLK(S_AXI_ACLK),
        .\config_static_0_reg[11]_0 (com_config_write_regs_inst_n_2),
        .fw_bxclk_ana_ff_reg(\fw_pl_clk1_cnt_reg_n_0_[4] ),
        .fw_bxclk_ana_ff_reg_0(\fw_pl_clk1_cnt_reg_n_0_[3] ),
        .fw_bxclk_ana_ff_reg_1(\fw_pl_clk1_cnt_reg_n_0_[5] ),
        .fw_bxclk_ana_ff_reg_2(\fw_pl_clk1_cnt_reg_n_0_[2] ),
        .fw_bxclk_ana_ff_reg_3(fw_bxclk_ana_ff_i_3_n_0),
        .fw_bxclk_ff_reg(fw_bxclk_ff_i_3_n_0),
        .fw_pl_clk1_cnt(fw_pl_clk1_cnt),
        .\fw_pl_clk1_cnt_reg[0] (com_config_write_regs_inst_n_0),
        .\fw_pl_clk1_cnt_reg[0]_0 (\fw_pl_clk1_cnt_reg_n_0_[0] ),
        .\fw_pl_clk1_cnt_reg[2] (com_config_write_regs_inst_n_3),
        .\fw_pl_clk1_cnt_reg[3] (\fw_pl_clk1_cnt_reg_n_0_[1] ),
        .op_code_w_reset(op_code_w_reset),
        .p_0_in(p_0_in));
  LUT2 #(
    .INIT(4'h1)) 
    fw_bxclk_ana_ff_i_3
       (.I0(\fw_pl_clk1_cnt_reg_n_0_[0] ),
        .I1(\fw_pl_clk1_cnt_reg_n_0_[1] ),
        .O(fw_bxclk_ana_ff_i_3_n_0));
  FDRE fw_bxclk_ana_ff_reg
       (.C(pl_clk1),
        .CE(1'b1),
        .D(com_config_write_regs_inst_n_3),
        .Q(fw_bxclk_ana),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    fw_bxclk_ff_i_3
       (.I0(\fw_pl_clk1_cnt_reg_n_0_[5] ),
        .I1(\fw_pl_clk1_cnt_reg_n_0_[4] ),
        .I2(\fw_pl_clk1_cnt_reg_n_0_[0] ),
        .I3(\fw_pl_clk1_cnt_reg_n_0_[1] ),
        .I4(\fw_pl_clk1_cnt_reg_n_0_[3] ),
        .I5(\fw_pl_clk1_cnt_reg_n_0_[2] ),
        .O(fw_bxclk_ff_i_3_n_0));
  FDRE fw_bxclk_ff_reg
       (.C(pl_clk1),
        .CE(1'b1),
        .D(com_config_write_regs_inst_n_2),
        .Q(fw_bxclk),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fw_pl_clk1_cnt[1]_i_1 
       (.I0(\fw_pl_clk1_cnt_reg_n_0_[0] ),
        .I1(\fw_pl_clk1_cnt_reg_n_0_[1] ),
        .O(\fw_pl_clk1_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \fw_pl_clk1_cnt[2]_i_1 
       (.I0(\fw_pl_clk1_cnt_reg_n_0_[0] ),
        .I1(\fw_pl_clk1_cnt_reg_n_0_[1] ),
        .I2(\fw_pl_clk1_cnt_reg_n_0_[2] ),
        .O(\fw_pl_clk1_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \fw_pl_clk1_cnt[3]_i_1 
       (.I0(\fw_pl_clk1_cnt_reg_n_0_[1] ),
        .I1(\fw_pl_clk1_cnt_reg_n_0_[0] ),
        .I2(\fw_pl_clk1_cnt_reg_n_0_[2] ),
        .I3(\fw_pl_clk1_cnt_reg_n_0_[3] ),
        .O(\fw_pl_clk1_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \fw_pl_clk1_cnt[4]_i_1 
       (.I0(\fw_pl_clk1_cnt_reg_n_0_[2] ),
        .I1(\fw_pl_clk1_cnt_reg_n_0_[0] ),
        .I2(\fw_pl_clk1_cnt_reg_n_0_[1] ),
        .I3(\fw_pl_clk1_cnt_reg_n_0_[3] ),
        .I4(\fw_pl_clk1_cnt_reg_n_0_[4] ),
        .O(\fw_pl_clk1_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \fw_pl_clk1_cnt[5]_i_2 
       (.I0(\fw_pl_clk1_cnt_reg_n_0_[3] ),
        .I1(\fw_pl_clk1_cnt_reg_n_0_[1] ),
        .I2(\fw_pl_clk1_cnt_reg_n_0_[0] ),
        .I3(\fw_pl_clk1_cnt_reg_n_0_[2] ),
        .I4(\fw_pl_clk1_cnt_reg_n_0_[4] ),
        .I5(\fw_pl_clk1_cnt_reg_n_0_[5] ),
        .O(\fw_pl_clk1_cnt[5]_i_2_n_0 ));
  FDRE \fw_pl_clk1_cnt_reg[0] 
       (.C(pl_clk1),
        .CE(1'b1),
        .D(com_config_write_regs_inst_n_0),
        .Q(\fw_pl_clk1_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \fw_pl_clk1_cnt_reg[1] 
       (.C(pl_clk1),
        .CE(1'b1),
        .D(\fw_pl_clk1_cnt[1]_i_1_n_0 ),
        .Q(\fw_pl_clk1_cnt_reg_n_0_[1] ),
        .R(fw_pl_clk1_cnt));
  FDRE \fw_pl_clk1_cnt_reg[2] 
       (.C(pl_clk1),
        .CE(1'b1),
        .D(\fw_pl_clk1_cnt[2]_i_1_n_0 ),
        .Q(\fw_pl_clk1_cnt_reg_n_0_[2] ),
        .R(fw_pl_clk1_cnt));
  FDRE \fw_pl_clk1_cnt_reg[3] 
       (.C(pl_clk1),
        .CE(1'b1),
        .D(\fw_pl_clk1_cnt[3]_i_1_n_0 ),
        .Q(\fw_pl_clk1_cnt_reg_n_0_[3] ),
        .R(fw_pl_clk1_cnt));
  FDRE \fw_pl_clk1_cnt_reg[4] 
       (.C(pl_clk1),
        .CE(1'b1),
        .D(\fw_pl_clk1_cnt[4]_i_1_n_0 ),
        .Q(\fw_pl_clk1_cnt_reg_n_0_[4] ),
        .R(fw_pl_clk1_cnt));
  FDRE \fw_pl_clk1_cnt_reg[5] 
       (.C(pl_clk1),
        .CE(1'b1),
        .D(\fw_pl_clk1_cnt[5]_i_2_n_0 ),
        .Q(\fw_pl_clk1_cnt_reg_n_0_[5] ),
        .R(fw_pl_clk1_cnt));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_top
   (S_AXI_ARREADY,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_BVALID,
    S_AXI_RVALID,
    bxclk_ana,
    bxclk,
    S_AXI_ACLK,
    S_AXI_AWADDR,
    S_AXI_WDATA,
    S_AXI_ARVALID,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_WSTRB,
    S_AXI_ARESETN,
    S_AXI_BREADY,
    S_AXI_RREADY,
    pl_clk1);
  output S_AXI_ARREADY;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_BVALID;
  output S_AXI_RVALID;
  output bxclk_ana;
  output bxclk;
  input S_AXI_ACLK;
  input [8:0]S_AXI_AWADDR;
  input [19:0]S_AXI_WDATA;
  input S_AXI_ARVALID;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input [2:0]S_AXI_WSTRB;
  input S_AXI_ARESETN;
  input S_AXI_BREADY;
  input S_AXI_RREADY;
  input pl_clk1;

  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [8:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [19:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [2:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_0;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_1;
  wire axi4lite_interface_top_for_pix28_fw_inst_n_2;
  wire bxclk;
  wire bxclk_ana;
  wire [1:1]fw_bxclk;
  wire [1:1]fw_bxclk_ana;
  wire op_code_w_reset;
  wire p_0_in;
  wire [11:0]p_1_in;
  wire pl_clk1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top_for_pix28_fw axi4lite_interface_top_for_pix28_fw_inst
       (.D(p_1_in),
        .E(axi4lite_interface_top_for_pix28_fw_inst_n_0),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .fw_bxclk(fw_bxclk),
        .fw_bxclk_ana(fw_bxclk_ana),
        .fw_bxclk_ana_ff_reg(axi4lite_interface_top_for_pix28_fw_inst_n_1),
        .fw_bxclk_ff_reg(axi4lite_interface_top_for_pix28_fw_inst_n_2),
        .op_code_w_reset(op_code_w_reset),
        .p_0_in(p_0_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_com_fw_to_dut com_fw_to_dut_inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .bxclk(bxclk),
        .bxclk_ana(bxclk_ana),
        .bxclk_ana_iob_reg_0(axi4lite_interface_top_for_pix28_fw_inst_n_1),
        .bxclk_iob_reg_0(axi4lite_interface_top_for_pix28_fw_inst_n_2),
        .p_0_in(p_0_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_ip2 fw_ip2_inst
       (.D(p_1_in),
        .E(axi4lite_interface_top_for_pix28_fw_inst_n_0),
        .S_AXI_ACLK(S_AXI_ACLK),
        .fw_bxclk(fw_bxclk),
        .fw_bxclk_ana(fw_bxclk_ana),
        .op_code_w_reset(op_code_w_reset),
        .p_0_in(p_0_in),
        .pl_clk1(pl_clk1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_top_v
   (S_AXI_ARREADY,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_BVALID,
    S_AXI_RVALID,
    bxclk_ana,
    bxclk,
    S_AXI_ACLK,
    S_AXI_AWADDR,
    S_AXI_WDATA,
    S_AXI_ARVALID,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_WSTRB,
    S_AXI_ARESETN,
    S_AXI_BREADY,
    S_AXI_RREADY,
    pl_clk1);
  output S_AXI_ARREADY;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_BVALID;
  output S_AXI_RVALID;
  output bxclk_ana;
  output bxclk;
  input S_AXI_ACLK;
  input [8:0]S_AXI_AWADDR;
  input [19:0]S_AXI_WDATA;
  input S_AXI_ARVALID;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input [2:0]S_AXI_WSTRB;
  input S_AXI_ARESETN;
  input S_AXI_BREADY;
  input S_AXI_RREADY;
  input pl_clk1;

  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [8:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [19:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [2:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire bxclk;
  wire bxclk_ana;
  wire pl_clk1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_top fw_top_inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .bxclk(bxclk),
        .bxclk_ana(bxclk_ana),
        .pl_clk1(pl_clk1));
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
