// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Fri Jun 14 17:52:48 2024
// Host        : fasic-137645.fnal.gov running 64-bit Scientific Linux release 7.9 (Nitrogen)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cms_pix_28_fw_top_bd_fw_top_v_0_0_sim_netlist.v
// Design      : cms_pix_28_fw_top_bd_fw_top_v_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top
   (axi_arready_reg,
    SR,
    axi_awready_reg,
    S_AXI_WREADY,
    S_AXI_BVALID,
    S_AXI_RVALID,
    S_AXI_RDATA,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_BREADY,
    S_AXI_ARVALID,
    S_AXI_RREADY,
    S_AXI_ARADDR);
  output axi_arready_reg;
  output [0:0]SR;
  output axi_awready_reg;
  output S_AXI_WREADY;
  output S_AXI_BVALID;
  output S_AXI_RVALID;
  output [0:0]S_AXI_RDATA;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_BREADY;
  input S_AXI_ARVALID;
  input S_AXI_RREADY;
  input [8:0]S_AXI_ARADDR;

  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [8:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARVALID;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [0:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire axi_arready_reg;
  wire axi_awready_reg;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_slave_interface axi4_slave_inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(SR),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .axi_arready_reg_0(axi_arready_reg),
        .axi_awready_reg_0(axi_awready_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top_for_pix28_fw
   (S_AXI_ARREADY,
    p_0_in,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_BVALID,
    S_AXI_RVALID,
    S_AXI_RDATA,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_BREADY,
    S_AXI_ARVALID,
    S_AXI_RREADY,
    S_AXI_ARADDR);
  output S_AXI_ARREADY;
  output p_0_in;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_BVALID;
  output S_AXI_RVALID;
  output [0:0]S_AXI_RDATA;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_BREADY;
  input S_AXI_ARVALID;
  input S_AXI_RREADY;
  input [8:0]S_AXI_ARADDR;

  wire S_AXI_ACLK;
  wire [8:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [0:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire p_0_in;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top axi4lite_interface_inst
       (.SR(p_0_in),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .axi_arready_reg(S_AXI_ARREADY),
        .axi_awready_reg(S_AXI_AWREADY));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_slave_interface
   (axi_arready_reg_0,
    S_AXI_ARESETN_0,
    axi_awready_reg_0,
    S_AXI_WREADY,
    S_AXI_BVALID,
    S_AXI_RVALID,
    S_AXI_RDATA,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_BREADY,
    S_AXI_ARVALID,
    S_AXI_RREADY,
    S_AXI_ARADDR);
  output axi_arready_reg_0;
  output S_AXI_ARESETN_0;
  output axi_awready_reg_0;
  output S_AXI_WREADY;
  output S_AXI_BVALID;
  output S_AXI_RVALID;
  output [0:0]S_AXI_RDATA;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_BREADY;
  input S_AXI_ARVALID;
  input S_AXI_RREADY;
  input [8:0]S_AXI_ARADDR;

  wire S_AXI_ACLK;
  wire [8:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARESETN_0;
  wire S_AXI_ARVALID;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [0:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire axi_awready0__0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire [8:0]axi_mem_rdAddr;
  wire axi_mem_rdStrobe;
  wire \axi_rdata[1]_i_1_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0__0;

  LUT6 #(
    .INIT(64'hF7FFF700F700F700)) 
    aw_en_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(S_AXI_ARESETN_0));
  FDRE \axi_araddr_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[8]),
        .Q(axi_mem_rdAddr[8]),
        .R(S_AXI_ARESETN_0));
  FDRE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[0]),
        .Q(axi_mem_rdAddr[0]),
        .R(S_AXI_ARESETN_0));
  FDRE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[1]),
        .Q(axi_mem_rdAddr[1]),
        .R(S_AXI_ARESETN_0));
  FDRE \axi_araddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[2]),
        .Q(axi_mem_rdAddr[2]),
        .R(S_AXI_ARESETN_0));
  FDRE \axi_araddr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[3]),
        .Q(axi_mem_rdAddr[3]),
        .R(S_AXI_ARESETN_0));
  FDRE \axi_araddr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[4]),
        .Q(axi_mem_rdAddr[4]),
        .R(S_AXI_ARESETN_0));
  FDRE \axi_araddr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[5]),
        .Q(axi_mem_rdAddr[5]),
        .R(S_AXI_ARESETN_0));
  FDRE \axi_araddr_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[6]),
        .Q(axi_mem_rdAddr[6]),
        .R(S_AXI_ARESETN_0));
  FDRE \axi_araddr_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready0),
        .D(S_AXI_ARADDR[7]),
        .Q(axi_mem_rdAddr[7]),
        .R(S_AXI_ARESETN_0));
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
        .R(S_AXI_ARESETN_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready0
       (.I0(aw_en_reg_n_0),
        .I1(axi_awready_reg_0),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .O(axi_awready0__0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(S_AXI_ARESETN_0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready0__0),
        .Q(axi_awready_reg_0),
        .R(S_AXI_ARESETN_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_WVALID),
        .I2(axi_awready_reg_0),
        .I3(S_AXI_WREADY),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(S_AXI_ARESETN_0));
  LUT6 #(
    .INIT(64'h0400FFFF04000000)) 
    \axi_rdata[1]_i_1 
       (.I0(axi_mem_rdAddr[1]),
        .I1(\axi_rdata[1]_i_2_n_0 ),
        .I2(axi_mem_rdAddr[8]),
        .I3(axi_mem_rdAddr[0]),
        .I4(axi_mem_rdStrobe),
        .I5(S_AXI_RDATA),
        .O(\axi_rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \axi_rdata[1]_i_2 
       (.I0(axi_mem_rdAddr[6]),
        .I1(axi_mem_rdAddr[2]),
        .I2(axi_mem_rdAddr[3]),
        .I3(axi_mem_rdAddr[4]),
        .I4(axi_mem_rdAddr[5]),
        .I5(axi_mem_rdAddr[7]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  FDRE \axi_rdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_rdata[1]_i_1_n_0 ),
        .Q(S_AXI_RDATA),
        .R(S_AXI_ARESETN_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_RVALID),
        .I3(S_AXI_RREADY),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(S_AXI_RVALID),
        .R(S_AXI_ARESETN_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    axi_wready0
       (.I0(aw_en_reg_n_0),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .O(axi_wready0__0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready0__0),
        .Q(S_AXI_WREADY),
        .R(S_AXI_ARESETN_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    slv_reg_rden
       (.I0(S_AXI_ARVALID),
        .I1(axi_arready_reg_0),
        .I2(S_AXI_RVALID),
        .O(axi_mem_rdStrobe));
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
  wire [10:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [1:1]\^S_AXI_RDATA ;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_WREADY;
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
  assign S_AXI_RDATA[1] = \^S_AXI_RDATA [1];
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
        .S_AXI_ARADDR(S_AXI_ARADDR[10:2]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(\^S_AXI_RDATA ),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .bxclk(bxclk),
        .bxclk_ana(bxclk_ana),
        .pl_clk1(pl_clk1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_com_config_write_regs
   (\fw_pl_clk1_cnt_reg[3] ,
    \w_cfg_static_0_reg_reg[3]_0 ,
    SR,
    S_AXI_ACLK,
    p_0_in,
    Q,
    fw_bxclk_ff_reg,
    fw_bxclk_ff_reg_0);
  output \fw_pl_clk1_cnt_reg[3] ;
  output \w_cfg_static_0_reg_reg[3]_0 ;
  output [0:0]SR;
  input S_AXI_ACLK;
  input p_0_in;
  input [2:0]Q;
  input fw_bxclk_ff_reg;
  input fw_bxclk_ff_reg_0;

  wire [2:0]Q;
  wire [0:0]SR;
  wire S_AXI_ACLK;
  wire [3:3]bxclk_period;
  wire fw_bxclk_ff_reg;
  wire fw_bxclk_ff_reg_0;
  wire \fw_pl_clk1_cnt_reg[3] ;
  wire p_0_in;
  wire \w_cfg_static_0_reg_reg[3]_0 ;

  LUT6 #(
    .INIT(64'h0002000202020200)) 
    fw_bxclk_ana_ff_i_1
       (.I0(bxclk_period),
        .I1(Q[2]),
        .I2(fw_bxclk_ff_reg_0),
        .I3(Q[0]),
        .I4(fw_bxclk_ff_reg),
        .I5(Q[1]),
        .O(\w_cfg_static_0_reg_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0000000054002200)) 
    fw_bxclk_ff_i_1
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(fw_bxclk_ff_reg),
        .I3(bxclk_period),
        .I4(Q[1]),
        .I5(fw_bxclk_ff_reg_0),
        .O(\fw_pl_clk1_cnt_reg[3] ));
  LUT6 #(
    .INIT(64'h0004000000000001)) 
    \fw_pl_clk1_cnt[5]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(fw_bxclk_ff_reg),
        .I3(fw_bxclk_ff_reg_0),
        .I4(Q[2]),
        .I5(bxclk_period),
        .O(SR));
  FDCE \w_cfg_static_0_reg_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(1'b1),
        .Q(bxclk_period));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_com_fw_to_dut
   (bxclk_ana,
    bxclk,
    fw_bxclk_ana,
    pl_clk1,
    fw_bxclk);
  output bxclk_ana;
  output bxclk;
  input [0:0]fw_bxclk_ana;
  input pl_clk1;
  input [0:0]fw_bxclk;

  wire bxclk;
  wire bxclk_ana;
  wire [0:0]fw_bxclk;
  wire [0:0]fw_bxclk_ana;
  wire pl_clk1;

  FDRE bxclk_ana_iob_reg
       (.C(pl_clk1),
        .CE(1'b1),
        .D(fw_bxclk_ana),
        .Q(bxclk_ana),
        .R(1'b0));
  FDRE bxclk_iob_reg
       (.C(pl_clk1),
        .CE(1'b1),
        .D(fw_bxclk),
        .Q(bxclk),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_ip2
   (fw_bxclk_ana,
    fw_bxclk,
    S_AXI_ACLK,
    p_0_in,
    pl_clk1);
  output [0:0]fw_bxclk_ana;
  output [0:0]fw_bxclk;
  input S_AXI_ACLK;
  input p_0_in;
  input pl_clk1;

  wire S_AXI_ACLK;
  wire com_config_write_regs_inst_n_0;
  wire com_config_write_regs_inst_n_1;
  wire [0:0]fw_bxclk;
  wire [0:0]fw_bxclk_ana;
  wire fw_pl_clk1_cnt1;
  wire \fw_pl_clk1_cnt[0]_i_1_n_0 ;
  wire \fw_pl_clk1_cnt[1]_i_1_n_0 ;
  wire \fw_pl_clk1_cnt[2]_i_1_n_0 ;
  wire \fw_pl_clk1_cnt[3]_i_1_n_0 ;
  wire \fw_pl_clk1_cnt[4]_i_1_n_0 ;
  wire \fw_pl_clk1_cnt[5]_i_2_n_0 ;
  wire \fw_pl_clk1_cnt[5]_i_3_n_0 ;
  wire \fw_pl_clk1_cnt_reg_n_0_[0] ;
  wire \fw_pl_clk1_cnt_reg_n_0_[1] ;
  wire \fw_pl_clk1_cnt_reg_n_0_[2] ;
  wire \fw_pl_clk1_cnt_reg_n_0_[3] ;
  wire \fw_pl_clk1_cnt_reg_n_0_[4] ;
  wire \fw_pl_clk1_cnt_reg_n_0_[5] ;
  wire p_0_in;
  wire pl_clk1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_com_config_write_regs com_config_write_regs_inst
       (.Q({\fw_pl_clk1_cnt_reg_n_0_[3] ,\fw_pl_clk1_cnt_reg_n_0_[2] ,\fw_pl_clk1_cnt_reg_n_0_[1] }),
        .SR(fw_pl_clk1_cnt1),
        .S_AXI_ACLK(S_AXI_ACLK),
        .fw_bxclk_ff_reg(\fw_pl_clk1_cnt_reg_n_0_[0] ),
        .fw_bxclk_ff_reg_0(\fw_pl_clk1_cnt[5]_i_3_n_0 ),
        .\fw_pl_clk1_cnt_reg[3] (com_config_write_regs_inst_n_0),
        .p_0_in(p_0_in),
        .\w_cfg_static_0_reg_reg[3]_0 (com_config_write_regs_inst_n_1));
  FDRE fw_bxclk_ana_ff_reg
       (.C(pl_clk1),
        .CE(1'b1),
        .D(com_config_write_regs_inst_n_1),
        .Q(fw_bxclk_ana),
        .R(1'b0));
  FDRE fw_bxclk_ff_reg
       (.C(pl_clk1),
        .CE(1'b1),
        .D(com_config_write_regs_inst_n_0),
        .Q(fw_bxclk),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \fw_pl_clk1_cnt[0]_i_1 
       (.I0(\fw_pl_clk1_cnt_reg_n_0_[0] ),
        .O(\fw_pl_clk1_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fw_pl_clk1_cnt[1]_i_1 
       (.I0(\fw_pl_clk1_cnt_reg_n_0_[0] ),
        .I1(\fw_pl_clk1_cnt_reg_n_0_[1] ),
        .O(\fw_pl_clk1_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \fw_pl_clk1_cnt[2]_i_1 
       (.I0(\fw_pl_clk1_cnt_reg_n_0_[2] ),
        .I1(\fw_pl_clk1_cnt_reg_n_0_[1] ),
        .I2(\fw_pl_clk1_cnt_reg_n_0_[0] ),
        .O(\fw_pl_clk1_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \fw_pl_clk1_cnt[3]_i_1 
       (.I0(\fw_pl_clk1_cnt_reg_n_0_[3] ),
        .I1(\fw_pl_clk1_cnt_reg_n_0_[2] ),
        .I2(\fw_pl_clk1_cnt_reg_n_0_[0] ),
        .I3(\fw_pl_clk1_cnt_reg_n_0_[1] ),
        .O(\fw_pl_clk1_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \fw_pl_clk1_cnt[5]_i_2 
       (.I0(\fw_pl_clk1_cnt_reg_n_0_[5] ),
        .I1(\fw_pl_clk1_cnt_reg_n_0_[2] ),
        .I2(\fw_pl_clk1_cnt_reg_n_0_[0] ),
        .I3(\fw_pl_clk1_cnt_reg_n_0_[1] ),
        .I4(\fw_pl_clk1_cnt_reg_n_0_[3] ),
        .I5(\fw_pl_clk1_cnt_reg_n_0_[4] ),
        .O(\fw_pl_clk1_cnt[5]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \fw_pl_clk1_cnt[5]_i_3 
       (.I0(\fw_pl_clk1_cnt_reg_n_0_[5] ),
        .I1(\fw_pl_clk1_cnt_reg_n_0_[4] ),
        .O(\fw_pl_clk1_cnt[5]_i_3_n_0 ));
  FDRE \fw_pl_clk1_cnt_reg[0] 
       (.C(pl_clk1),
        .CE(1'b1),
        .D(\fw_pl_clk1_cnt[0]_i_1_n_0 ),
        .Q(\fw_pl_clk1_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \fw_pl_clk1_cnt_reg[1] 
       (.C(pl_clk1),
        .CE(1'b1),
        .D(\fw_pl_clk1_cnt[1]_i_1_n_0 ),
        .Q(\fw_pl_clk1_cnt_reg_n_0_[1] ),
        .R(fw_pl_clk1_cnt1));
  FDRE \fw_pl_clk1_cnt_reg[2] 
       (.C(pl_clk1),
        .CE(1'b1),
        .D(\fw_pl_clk1_cnt[2]_i_1_n_0 ),
        .Q(\fw_pl_clk1_cnt_reg_n_0_[2] ),
        .R(fw_pl_clk1_cnt1));
  FDRE \fw_pl_clk1_cnt_reg[3] 
       (.C(pl_clk1),
        .CE(1'b1),
        .D(\fw_pl_clk1_cnt[3]_i_1_n_0 ),
        .Q(\fw_pl_clk1_cnt_reg_n_0_[3] ),
        .R(fw_pl_clk1_cnt1));
  FDRE \fw_pl_clk1_cnt_reg[4] 
       (.C(pl_clk1),
        .CE(1'b1),
        .D(\fw_pl_clk1_cnt[4]_i_1_n_0 ),
        .Q(\fw_pl_clk1_cnt_reg_n_0_[4] ),
        .R(fw_pl_clk1_cnt1));
  FDRE \fw_pl_clk1_cnt_reg[5] 
       (.C(pl_clk1),
        .CE(1'b1),
        .D(\fw_pl_clk1_cnt[5]_i_2_n_0 ),
        .Q(\fw_pl_clk1_cnt_reg_n_0_[5] ),
        .R(fw_pl_clk1_cnt1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_ipx_wrap
   (bxclk_ana,
    bxclk,
    S_AXI_ACLK,
    p_0_in,
    pl_clk1);
  output bxclk_ana;
  output bxclk;
  input S_AXI_ACLK;
  input p_0_in;
  input pl_clk1;

  wire S_AXI_ACLK;
  wire bxclk;
  wire bxclk_ana;
  wire [1:1]fw_bxclk;
  wire [1:1]fw_bxclk_ana;
  wire p_0_in;
  wire pl_clk1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_com_fw_to_dut com_fw_to_dut_inst
       (.bxclk(bxclk),
        .bxclk_ana(bxclk_ana),
        .fw_bxclk(fw_bxclk),
        .fw_bxclk_ana(fw_bxclk_ana),
        .pl_clk1(pl_clk1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_ip2 fw_ip2_inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .fw_bxclk(fw_bxclk),
        .fw_bxclk_ana(fw_bxclk_ana),
        .p_0_in(p_0_in),
        .pl_clk1(pl_clk1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_top
   (S_AXI_ARREADY,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    bxclk_ana,
    bxclk,
    S_AXI_RVALID,
    S_AXI_BVALID,
    S_AXI_RDATA,
    S_AXI_ARESETN,
    S_AXI_ACLK,
    pl_clk1,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output S_AXI_ARREADY;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output bxclk_ana;
  output bxclk;
  output S_AXI_RVALID;
  output S_AXI_BVALID;
  output [0:0]S_AXI_RDATA;
  input S_AXI_ARESETN;
  input S_AXI_ACLK;
  input pl_clk1;
  input [8:0]S_AXI_ARADDR;
  input S_AXI_ARVALID;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_BREADY;
  input S_AXI_RREADY;

  wire S_AXI_ACLK;
  wire [8:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [0:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire bxclk;
  wire bxclk_ana;
  wire p_0_in;
  wire pl_clk1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi4lite_interface_top_for_pix28_fw axi4lite_interface_top_for_pix28_fw_inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .p_0_in(p_0_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_ipx_wrap fw_ipx_wrap_inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .bxclk(bxclk),
        .bxclk_ana(bxclk_ana),
        .p_0_in(p_0_in),
        .pl_clk1(pl_clk1));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_top_v
   (S_AXI_ARREADY,
    S_AXI_AWREADY,
    S_AXI_WREADY,
    bxclk_ana,
    bxclk,
    S_AXI_RVALID,
    S_AXI_BVALID,
    S_AXI_RDATA,
    S_AXI_ARESETN,
    S_AXI_ACLK,
    pl_clk1,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output S_AXI_ARREADY;
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output bxclk_ana;
  output bxclk;
  output S_AXI_RVALID;
  output S_AXI_BVALID;
  output [0:0]S_AXI_RDATA;
  input S_AXI_ARESETN;
  input S_AXI_ACLK;
  input pl_clk1;
  input [8:0]S_AXI_ARADDR;
  input S_AXI_ARVALID;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_BREADY;
  input S_AXI_RREADY;

  wire S_AXI_ACLK;
  wire [8:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [0:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire bxclk;
  wire bxclk_ana;
  wire pl_clk1;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fw_top fw_top_inst
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WREADY(S_AXI_WREADY),
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
